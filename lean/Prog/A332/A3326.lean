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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A332600: Triangle read by rows: T(n,k) = number of edges in a "frame" of size n X k (see Comments in A331457 for definition).

The programs for A332600, there is no canonical definition to state claims against.
-/

/-! ## A332600.P4839540926429046190

`A331454(n+1)-A112802(A006318(n))`
-/

namespace A332600.P4839540926429046190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (n + 1) - A112802 (A006318 n).toNat

end

end A332600.P4839540926429046190

/-!
# A332601: An RNA-type Riordan lower-triangular matrix, read by rows.

The programs for A332601, there is no canonical definition to state claims against.
-/

/-! ## A332601.P10588422585157926279

`A002024(A003056(A290319(n)))`
-/

namespace A332601.P10588422585157926279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A003056 (A290319 n).toNat).toNat

end

end A332601.P10588422585157926279

/-! ## A332601.P6674468466782224288

`A188187(A102702(n))+A128175(n+1)`
-/

namespace A332601.P6674468466782224288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A102702 n).toNat + A128175 (n + 1)

end

end A332601.P6674468466782224288

/-! ## A332601.P1480399665060798756

`or(A128175(n+1), A316829(A036647(n)))`
-/

namespace A332601.P1480399665060798756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128175 (n + 1)) (A316829 (A036647 n).toNat)

end

end A332601.P1480399665060798756

/-! ## A332601.P5634596137939572090

`or(A095076(A286781(n)), A128175(n+1))`
-/

namespace A332601.P5634596137939572090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095076 (A286781 n).toNat) (A128175 (n + 1))

end

end A332601.P5634596137939572090

/-! ## A332601.P8087534813578405074

`or(A128175(n+1), A275305(A284182(n)))`
-/

namespace A332601.P8087534813578405074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128175 (n + 1)) (A275305 (A284182 n).toNat)

end

end A332601.P8087534813578405074

/-!
# A332602: Tridiagonal matrix M read by antidiagonals: main diagonal is 1,2,2,2,2,..., two adjacent diagonals are 1,1,1,1,1,...

The programs for A332602, the canonical program `A332602.P15077841748379890722` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332602 has offset 0).

The definition of A332602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332602.P3141249337227269259

`C(2, ceil(sqrt(2*n))²-2*n)`
-/

namespace A332602.P3141249337227269259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (⌈Real.sqrt (2 * n : ℝ)⌉ ^ 2 - (2 * n : ℤ)).toNat

end

end A332602.P3141249337227269259

namespace A332602

/-- `C(2, ceil(sqrt(2*n))²-2*n)` -/
def P3141249337227269259.Spec : Prop :=
  ∀ n, (P3141249337227269259.a n : ℤ) = A332602 n

end A332602

/-! ## A332602.P15077841748379890722

`dr(C(2, A350962(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332602

/-- `dr(C(2, A350962(n)))` -/
def P15077841748379890722.Spec : Prop :=
  ∀ n, (P15077841748379890722.a n : ℤ) = A332602 n

theorem P15077841748379890722.correct : P15077841748379890722.Spec := by
  intro n
  simp only [A332602]

end A332602

/-! ## A332602.P3095760006878188462

`abs(Δ[A397085(2*n)])`
-/

namespace A332602.P3095760006878188462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397085 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332602.P3095760006878188462

namespace A332602

/-- `abs(Δ[A397085(2*n)])` -/
def P3095760006878188462.Spec : Prop :=
  ∀ n, P3095760006878188462.a n = A332602 n

end A332602

/-! ## A332602.P9194196418184823642

`round(acot(A145895(2*n)))`
-/

namespace A332602.P9194196418184823642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A145895 (2 * n) : ℝ))

end

end A332602.P9194196418184823642

namespace A332602

/-- `round(acot(A145895(2*n)))` -/
def P9194196418184823642.Spec : Prop :=
  ∀ n, P9194196418184823642.a n = A332602 n

end A332602

/-! ## A332602.P472909802810412389

`dr(C(2, A068527(2*n)))`
-/

namespace A332602.P472909802810412389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose 2 (A068527 (2 * n)).toNat : ℤ)

end

end A332602.P472909802810412389

namespace A332602

/-- `dr(C(2, A068527(2*n)))` -/
def P472909802810412389.Spec : Prop :=
  ∀ n, (P472909802810412389.a n : ℤ) = A332602 n

end A332602

/-! ## A332602.P2525567756417915682

`floor((3-acot(n))/A143182(n))`
-/

namespace A332602.P2525567756417915682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - SequenceMachineLib.acot (n : ℝ)) / (A143182 n : ℝ)⌋

end

end A332602.P2525567756417915682

namespace A332602

/-- `floor((3-acot(n))/A143182(n))` -/
def P2525567756417915682.Spec : Prop :=
  ∀ n, P2525567756417915682.a n = A332602 n

end A332602

/-! ## A332602.P14681399309771528011

`A007877(A115284(n))`
-/

namespace A332602.P14681399309771528011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A115284 n).toNat

end

end A332602.P14681399309771528011

namespace A332602

/-- `A007877(A115284(n))` -/
def P14681399309771528011.Spec : Prop :=
  ∀ n, P14681399309771528011.a n = A332602 n

end A332602

/-! ## A332602.P12305087806331681388

`A130713(A350962(n))`
-/

namespace A332602.P12305087806331681388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A350962 n).toNat

end

end A332602.P12305087806331681388

namespace A332602

/-- `A130713(A350962(n))` -/
def P12305087806331681388.Spec : Prop :=
  ∀ n, P12305087806331681388.a n = A332602 n

end A332602

/-! ## A332602.P16063023411675462644

`and(A115284(n), A115381(n))`
-/

namespace A332602.P16063023411675462644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115284 n) (A115381 n)

end

end A332602.P16063023411675462644

namespace A332602

/-- `and(A115284(n), A115381(n))` -/
def P16063023411675462644.Spec : Prop :=
  ∀ n, P16063023411675462644.a n = A332602 n

end A332602

/-! ## A332602.P2656873516421177594

`A035002(n+1)%A040003(n)`
-/

namespace A332602.P2656873516421177594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035002 (n + 1)) (A040003 n)

end

end A332602.P2656873516421177594

namespace A332602

/-- `A035002(n+1)%A040003(n)` -/
def P2656873516421177594.Spec : Prop :=
  ∀ n, P2656873516421177594.a n = A332602 n

end A332602

/-! ## A332602.P15404033040461032637

`and(A035002(n+1), A115381(n))`
-/

namespace A332602.P15404033040461032637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035002 (n + 1)) (A115381 n)

end

end A332602.P15404033040461032637

namespace A332602

/-- `and(A035002(n+1), A115381(n))` -/
def P15404033040461032637.Spec : Prop :=
  ∀ n, P15404033040461032637.a n = A332602 n

end A332602

/-! ## A332602.P3726022787452623480

`and(A035002(n+1), A176040(n))`
-/

namespace A332602.P3726022787452623480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035002 (n + 1)) (A176040 n)

end

end A332602.P3726022787452623480

namespace A332602

/-- `and(A035002(n+1), A176040(n))` -/
def P3726022787452623480.Spec : Prop :=
  ∀ n, P3726022787452623480.a n = A332602 n

end A332602

/-! ## A332602.P12176487937543453793

`A001222(2^C(2, A068527(2*n)))`
-/

namespace A332602.P12176487937543453793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ Nat.choose 2 (A068527 (2 * n)).toNat)

end

end A332602.P12176487937543453793

namespace A332602

/-- `A001222(2^C(2, A068527(2*n)))` -/
def P12176487937543453793.Spec : Prop :=
  ∀ n, P12176487937543453793.a n = A332602 n

end A332602

/-! ## A332602.P14224437567307650840

`and(A035002(n+1), A153284(n+1))`
-/

namespace A332602.P14224437567307650840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035002 (n + 1)) (A153284 (n + 1))

end

end A332602.P14224437567307650840

namespace A332602

/-- `and(A035002(n+1), A153284(n+1))` -/
def P14224437567307650840.Spec : Prop :=
  ∀ n, P14224437567307650840.a n = A332602 n

end A332602

/-! ## A332602.P4588415695407844277

`Δ[A316355(A316355(n²))]`
-/

namespace A332602.P4588415695407844277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A316355 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332602.P4588415695407844277

namespace A332602

/-- `Δ[A316355(A316355(n²))]` -/
def P4588415695407844277.Spec : Prop :=
  ∀ n, P4588415695407844277.a n = A332602 n

end A332602

/-!
# A332603: Working over the alphabet {1,2,3}, start with a(1) = 1; then a(n+1) is made by inserting a letter into a(n) at the rightmost possible position which makes a squarefree word (and the smallest letter if multiple letters are possible at that place).

The programs for A332603, there is no canonical definition to state claims against.
-/

/-! ## A332603.P6904423805903675087

`A129308(5^n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A332603.P6904423805903675087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129308 (5 ^ n + 1) + 10 * a (n - 1)

end

end A332603.P6904423805903675087

/-! ## A332603.P11686187945293492758

`A000027(A007814(n+1)+10*a(n-1)+1)` with `a(0)=1`
-/

namespace A332603.P11686187945293492758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A007814 (n + 1) + (10 * a (n - 1) + 1)).toNat

end

end A332603.P11686187945293492758

/-!
# A332604: Limiting word over the alphabet {1,2,3} defined by the process in A332603, or, in case that process terminates, the final term in A332603.

The programs for A332604, there is no canonical definition to state claims against.
-/

/-! ## A332604.P14731759550056752396

`A356680(n+3)+A057021(A181741(n+1))`
-/

namespace A332604.P14731759550056752396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 3) + A057021 (A181741 (n + 1)).toNat

end

end A332604.P14731759550056752396

/-! ## A332604.P7298384407909129734

`A356680(n+3)+A053589(A339126(n+5))`
-/

namespace A332604.P7298384407909129734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 3) + A053589 (A339126 (n + 5)).toNat

end

end A332604.P7298384407909129734

/-! ## A332604.P5941881388656861968

`A356680(n+3)+A000120(A016116(n))`
-/

namespace A332604.P5941881388656861968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 3) + A000120 (A016116 n).toNat

end

end A332604.P5941881388656861968

/-! ## A332604.P3699520080029492716

`A356680(n+3)+A152719(A329315(3*(n+1)))`
-/

namespace A332604.P3699520080029492716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 3) + A152719 (A329315 (3 * (n + 1))).toNat

end

end A332604.P3699520080029492716

/-! ## A332604.P182867787259051196

`A356680(n+3)+A346100(A176997(n+2))`
-/

namespace A332604.P182867787259051196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 3) + A346100 (A176997 (n + 2)).toNat

end

end A332604.P182867787259051196

/-!
# A332606: Number of triangles in the graph formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A332606, there is no canonical definition to state claims against.
-/

/-! ## A332606.P17210303134909644020

`record[A335701(n+1)]`
-/

namespace A332606.P17210303134909644020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332606.P17210303134909644020

/-! ## A332606.P3260280617442719955

`A332610(∑[n]+2)`
-/

namespace A332606.P3260280617442719955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332606.P3260280617442719955

/-! ## A332606.P18397895270353374891

`record[A332610(n+2)/A212943(n+1)]`
-/

namespace A332606.P18397895270353374891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332610 (n + 2) : ℚ) / (A212943 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332606.P18397895270353374891

/-! ## A332606.P1885372911058975028

`A324042(n+1)+record[Δ[A332610(n+1)]]`
-/

namespace A332606.P1885372911058975028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324042 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332606.P1885372911058975028

/-! ## A332606.P16955717527050616353

`record[A332610(A024000(n)+A008805(n))]`
-/

namespace A332606.P16955717527050616353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332610 (A024000 n + A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332606.P16955717527050616353

/-!
# A332607: Number of quadrilaterals in the graph formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A332607, there is no canonical definition to state claims against.
-/

/-! ## A332607.P6945680236964795251

`record[A335701(n+2)%(A335701(n+1)+2)]`
-/

namespace A332607.P6945680236964795251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335701 (n + 2)) (A335701 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332607.P6945680236964795251

/-! ## A332607.P3395852310195008542

`A332611(∑[n]+2)`
-/

namespace A332607.P3395852310195008542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332611 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332607.P3395852310195008542

/-! ## A332607.P13900136336876012601

`record[A010054(n)*A332611(n+2)]`
-/

namespace A332607.P13900136336876012601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A332611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332607.P13900136336876012601

/-! ## A332607.P16651114738626174545

`record[A332611(n+2)/A013609(n)]`
-/

namespace A332607.P16651114738626174545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332611 (n + 2) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332607.P16651114738626174545

/-! ## A332607.P8516961878673652585

`record[A332611(n+2)/A080852(n)]`
-/

namespace A332607.P8516961878673652585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332611 (n + 2) : ℚ) / (A080852 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332607.P8516961878673652585

/-!
# A332608: Number of pentagons in the graph formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A332608, there is no canonical definition to state claims against.
-/

/-! ## A332608.P8432540670771488413

`∑[A211008(∑[A140690(n+1)])]`
-/

namespace A332608.P8432540670771488413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140690 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211008 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332608.P8432540670771488413

/-!
# A332612: a(n) = Sum_{ i=2..n-1, j=1..i-1, gcd(i,j)=1 } (n-i)*(n-j).

The programs for A332612, there is no canonical definition to state claims against.
-/

/-! ## A332612.P5894270492516524228

`A344993(n)/4-∑[n]`
-/

namespace A332612.P5894270492516524228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n : ℚ) / 4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A332612.P5894270492516524228

/-! ## A332612.P12907427661730063606

`A290131(n+1)/2-n²`
-/

namespace A332612.P12907427661730063606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290131 (n + 1) : ℚ) / 2 - (n ^ 2 : ℚ)

end

end A332612.P12907427661730063606

/-! ## A332612.P2897069236677693885

`(A344993(n)-A046092(n))/4`
-/

namespace A332612.P2897069236677693885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n - A046092 n : ℚ) / 4

end

end A332612.P2897069236677693885

/-! ## A332612.P2295319704891511846

`A306302(n)/2-(n²+n)`
-/

namespace A332612.P2295319704891511846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306302 n : ℚ) / 2 - (n ^ 2 + n : ℚ)

end

end A332612.P2295319704891511846

/-! ## A332612.P10892974979122680501

`(A115005(n+1)-n)/2-n²`
-/

namespace A332612.P10892974979122680501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115005 (n + 1) - (n : ℤ) : ℚ) / 2 - (n ^ 2 : ℚ)

end

end A332612.P10892974979122680501

/-! ## A332612.P1718349712418758988

`A001489(n)-(n²-A306302(n)/2)`
-/

namespace A332612.P1718349712418758988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) - ((n ^ 2 : ℚ) - (A306302 n : ℚ) / 2)

end

end A332612.P1718349712418758988

/-! ## A332612.P7575924677711674228

`A331754(n+1)-n²`
-/

namespace A332612.P7575924677711674228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) - (n ^ 2 : ℤ)

end

end A332612.P7575924677711674228

/-! ## A332612.P15034252100683084647

`A331756(n)-(n²+n)`
-/

namespace A332612.P15034252100683084647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331756 n - (n ^ 2 + n : ℤ)

end

end A332612.P15034252100683084647

/-! ## A332612.P12420843944280794989

`A355902(n)-A005563(n)`
-/

namespace A332612.P12420843944280794989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355902 n - A005563 n

end

end A332612.P12420843944280794989

/-! ## A332612.P1015839399671498869

`A306302(n)-(A355902(n)+n²)`
-/

namespace A332612.P1015839399671498869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n - (A355902 n + (n ^ 2 : ℤ))

end

end A332612.P1015839399671498869

/-!
# A332616: a(n) = value of the cubic form A^3 + B^3 + C^3 - 3ABC evaluated at row n of the table in A331195.

The programs for A332616, the canonical program `A332616.P3784539761157873667` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332616 has offset 0).

The definition of A332616 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332616.P3784539761157873667

`A056556(n)^3+A056557(n)^3+A056558(n)^3-3*A056556(n)*A056557(n)*A056558(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A332616

/-- `A056556(n)^3+A056557(n)^3+A056558(n)^3-3*A056556(n)*A056557(n)*A056558(n)` -/
def P3784539761157873667.Spec : Prop :=
  ∀ n, P3784539761157873667.a n = A332616 n

theorem P3784539761157873667.correct : P3784539761157873667.Spec := by
  intro n
  simp only [A332616]

end A332616

/-!
# A332617: a(n) = Sum_{k=1..n} J_n(k), where J is the Jordan function, J_n(k) = k^n * Product_{p|k, p prime} (1 - 1/p^n).

The programs for A332617, there is no canonical definition to state claims against.
-/

/-! ## A332617.P15811243105453440973

`A004526(A298347(∑[n+1]))`
-/

namespace A332617.P15811243105453440973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298347 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332617.P15811243105453440973

/-!
# A332618: a(n) = Sum_{d|n} lcm(d, n/d) / gcd(d, n/d).

The programs for A332618, the canonical program `A332618.P1436896410974946715` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332618 has offset 1).

The definition of A332618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332618.P6378507186616629856

`∑{d}[n+1, (n+1)/gcd(#, (n+1)/#)²]`
-/

namespace A332618.P6378507186616629856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) ^ 2 : ℚ)

end

end A332618.P6378507186616629856

namespace A332618

/-- `∑{d}[n+1, (n+1)/gcd(#, (n+1)/#)²]` -/
def P6378507186616629856.Spec : Prop :=
  ∀ n, P6378507186616629856.a n = (A332618 (n + 1) : ℚ)

end A332618

/-! ## A332618.P5692756275660546440

`∑{d}[n+1, (n+1)/A008833(#)]`
-/

namespace A332618.P5692756275660546440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A008833 d : ℚ)

end

end A332618.P5692756275660546440

namespace A332618

/-- `∑{d}[n+1, (n+1)/A008833(#)]` -/
def P5692756275660546440.Spec : Prop :=
  ∀ n, P5692756275660546440.a n = (A332618 (n + 1) : ℚ)

end A332618

/-! ## A332618.P9127030210996977257

`∑{d}[n+1, (n+1)/A000188(#)²]`
-/

namespace A332618.P9127030210996977257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A000188 d ^ 2 : ℚ)

end

end A332618.P9127030210996977257

namespace A332618

/-- `∑{d}[n+1, (n+1)/A000188(#)²]` -/
def P9127030210996977257.Spec : Prop :=
  ∀ n, P9127030210996977257.a n = (A332618 (n + 1) : ℚ)

end A332618

/-! ## A332618.P889850453131664193

`∑{d}[n+1, #*A007913((n+1)/#)]`
-/

namespace A332618.P889850453131664193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P889850453131664193

namespace A332618

/-- `∑{d}[n+1, #*A007913((n+1)/#)]` -/
def P889850453131664193.Spec : Prop :=
  ∀ n, P889850453131664193.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P5905024029798791488

`∑{d}[n+1, A000010(#)*A069088((n+1)/#)]`
-/

namespace A332618.P5905024029798791488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P5905024029798791488

namespace A332618

/-- `∑{d}[n+1, A000010(#)*A069088((n+1)/#)]` -/
def P5905024029798791488.Spec : Prop :=
  ∀ n, P5905024029798791488.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P10138926312832321866

`∑{d}[n+1, A046951(#)*A078439((n+1)/#)]`
-/

namespace A332618.P10138926312832321866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P10138926312832321866

namespace A332618

/-- `∑{d}[n+1, A046951(#)*A078439((n+1)/#)]` -/
def P10138926312832321866.Spec : Prop :=
  ∀ n, P10138926312832321866.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P1436896410974946715

`∑{d}[n+1, A048250(#)*A206369((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332618

/-- `∑{d}[n+1, A048250(#)*A206369((n+1)/#)]` -/
def P1436896410974946715.Spec : Prop :=
  ∀ n, P1436896410974946715.a n = A332618 (n + 1)

theorem P1436896410974946715.correct : P1436896410974946715.Spec := by
  intro n
  simp only [A332618, Nat.add_sub_cancel]

end A332618

/-! ## A332618.P6872697959173493259

`∑{d}[n+1, A008836(#)*A357938((n+1)/#)]`
-/

namespace A332618.P6872697959173493259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P6872697959173493259

namespace A332618

/-- `∑{d}[n+1, A008836(#)*A357938((n+1)/#)]` -/
def P6872697959173493259.Spec : Prop :=
  ∀ n, P6872697959173493259.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P14747651614141430313

`∑{d}[n+1, A064950(#)*A323363((n+1)/#)]`
-/

namespace A332618.P14747651614141430313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064950 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P14747651614141430313

namespace A332618

/-- `∑{d}[n+1, A064950(#)*A323363((n+1)/#)]` -/
def P14747651614141430313.Spec : Prop :=
  ∀ n, P14747651614141430313.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P2630875781781402245

`∑{d}[n+1, A074722(#)*A319132((n+1)/#)]`
-/

namespace A332618.P2630875781781402245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P2630875781781402245

namespace A332618

/-- `∑{d}[n+1, A074722(#)*A319132((n+1)/#)]` -/
def P2630875781781402245.Spec : Prop :=
  ∀ n, P2630875781781402245.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P7093838771070918204

`∑{d}[n+1, A072861(#)*A328639((n+1)/#)]`
-/

namespace A332618.P7093838771070918204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P7093838771070918204

namespace A332618

/-- `∑{d}[n+1, A072861(#)*A328639((n+1)/#)]` -/
def P7093838771070918204.Spec : Prop :=
  ∀ n, P7093838771070918204.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P4438251425663809919

`∑{d}[n+1, A332619(#)*A346612((n+1)/#)]`
-/

namespace A332618.P4438251425663809919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332619 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P4438251425663809919

namespace A332618

/-- `∑{d}[n+1, A332619(#)*A346612((n+1)/#)]` -/
def P4438251425663809919.Spec : Prop :=
  ∀ n, P4438251425663809919.a n = A332618 (n + 1)

end A332618

/-! ## A332618.P9975251505539573821

`∑{d}[n+1, A349374(#)*A349432((n+1)/#)]`
-/

namespace A332618.P9975251505539573821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349374 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332618.P9975251505539573821

namespace A332618

/-- `∑{d}[n+1, A349374(#)*A349432((n+1)/#)]` -/
def P9975251505539573821.Spec : Prop :=
  ∀ n, P9975251505539573821.a n = A332618 (n + 1)

end A332618

/-!
# A332619: a(n) = Sum_{d|n} lcm(d, n/d) / d.

The programs for A332619, the canonical program `A332619.P1097188764430396742` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332619 has offset 1).

The definition of A332619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332619.P6246933012095852910

`∑{d}[n+1, #/gcd(#, (n+1)/#)]`
-/

namespace A332619.P6246933012095852910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) : ℚ)

end

end A332619.P6246933012095852910

namespace A332619

/-- `∑{d}[n+1, #/gcd(#, (n+1)/#)]` -/
def P6246933012095852910.Spec : Prop :=
  ∀ n, P6246933012095852910.a n = (A332619 (n + 1) : ℚ)

end A332619

/-! ## A332619.P15851761746771494633

`∑{d}[n+1, lcm(#, (n+1)/#)/#]`
-/

namespace A332619.P15851761746771494633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.lcm (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) : ℚ) / (d : ℚ)

end

end A332619.P15851761746771494633

namespace A332619

/-- `∑{d}[n+1, lcm(#, (n+1)/#)/#]` -/
def P15851761746771494633.Spec : Prop :=
  ∀ n, P15851761746771494633.a n = (A332619 (n + 1) : ℚ)

end A332619

/-! ## A332619.P17857113375375343318

`∑{d}[n+1, A010052(#)*A034448((n+1)/#)]`
-/

namespace A332619.P17857113375375343318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P17857113375375343318

namespace A332619

/-- `∑{d}[n+1, A010052(#)*A034448((n+1)/#)]` -/
def P17857113375375343318.Spec : Prop :=
  ∀ n, P17857113375375343318.a n = A332619 (n + 1)

end A332619

/-! ## A332619.P15008649607578495319

`∑{d}[n+1, A007913(#)*A055210((n+1)/#)]`
-/

namespace A332619.P15008649607578495319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A055210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P15008649607578495319

namespace A332619

/-- `∑{d}[n+1, A007913(#)*A055210((n+1)/#)]` -/
def P15008649607578495319.Spec : Prop :=
  ∀ n, P15008649607578495319.a n = A332619 (n + 1)

end A332619

/-! ## A332619.P17347440914514970781

`∑{d}[n+1, A046951(#)*A254503((n+1)/#)]`
-/

namespace A332619.P17347440914514970781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P17347440914514970781

namespace A332619

/-- `∑{d}[n+1, A046951(#)*A254503((n+1)/#)]` -/
def P17347440914514970781.Spec : Prop :=
  ∀ n, P17347440914514970781.a n = A332619 (n + 1)

end A332619

/-! ## A332619.P545687887714146976

`∑{d}[n+1, A008836(#)*A328485((n+1)/#)]`
-/

namespace A332619.P545687887714146976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P545687887714146976

namespace A332619

/-- `∑{d}[n+1, A008836(#)*A328485((n+1)/#)]` -/
def P545687887714146976.Spec : Prop :=
  ∀ n, P545687887714146976.a n = A332619 (n + 1)

end A332619

/-! ## A332619.P7643074808968399702

`∑{d}[n+1, A064840(#)*A323363((n+1)/#)]`
-/

namespace A332619.P7643074808968399702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P7643074808968399702

namespace A332619

/-- `∑{d}[n+1, A064840(#)*A323363((n+1)/#)]` -/
def P7643074808968399702.Spec : Prop :=
  ∀ n, P7643074808968399702.a n = A332619 (n + 1)

end A332619

/-! ## A332619.P1097188764430396742

`∑{d}[n+1, A206369(#)*A344326((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A332619

/-- `∑{d}[n+1, A206369(#)*A344326((n+1)/#)]` -/
def P1097188764430396742.Spec : Prop :=
  ∀ n, P1097188764430396742.a n = A332619 (n + 1)

theorem P1097188764430396742.correct : P1097188764430396742.Spec := by
  intro n
  simp only [A332619, Nat.add_sub_cancel]

end A332619

/-! ## A332619.P1996849339012987299

`∑{d}[n+1, A107749(#)*A258998((n+1)/#)]`
-/

namespace A332619.P1996849339012987299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A107749 d * A258998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332619.P1996849339012987299

namespace A332619

/-- `∑{d}[n+1, A107749(#)*A258998((n+1)/#)]` -/
def P1996849339012987299.Spec : Prop :=
  ∀ n, P1996849339012987299.a n = A332619 (n + 1)

end A332619

/-!
# A332620: a(n) = Sum_{k=1..n} n^(n/gcd(n, k)).

The programs for A332620, there is no canonical definition to state claims against.
-/

/-! ## A332620.P9421151351947772314

`(n+1)*A332621(n+1)`
-/

namespace A332620.P9421151351947772314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332621 (n + 1)

end

end A332620.P9421151351947772314

/-! ## A332620.P11313001225469903398

`lcm(n+1, A332621(n-log2(1/2)))`
-/

namespace A332620.P11313001225469903398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A332621 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A332620.P11313001225469903398

/-! ## A332620.P5979825817201628395

`∑{d}[n+1, (n+1)^#*A000010(#)]`
-/

namespace A332620.P5979825817201628395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ d : ℤ) * A000010 d

end

end A332620.P5979825817201628395

/-! ## A332620.P2591739492109456492

`lcm(A332621(n+1), A337195(A000079(n)))`
-/

namespace A332620.P2591739492109456492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A332621 (n + 1)) (A337195 (A000079 n).toNat)

end

end A332620.P2591739492109456492

/-! ## A332620.P6820054969361520609

`lcm(A332621(A032555(n+1)), A348553(n))`
-/

namespace A332620.P6820054969361520609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A332621 (A032555 (n + 1)).toNat) (A348553 n)

end

end A332620.P6820054969361520609

/-!
# A332621: a(n) = (1/n) * Sum_{k=1..n} n^(n/gcd(n, k)).

The programs for A332621, there is no canonical definition to state claims against.
-/

/-! ## A332621.P4626182078239262608

`A332620(n+1)/(n+1)`
-/

namespace A332621.P4626182078239262608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332620 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A332621.P4626182078239262608

/-! ## A332621.P5029147065536902079

`∑{d}[n+1, (n+1)^#*A000010(#)]/(n+1)`
-/

namespace A332621.P5029147065536902079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ d : ℤ) * A000010 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A332621.P5029147065536902079

/-!
# A332622: Numbers where records occur for the product of exponential divisors function (A157488).

The programs for A332622, there is no canonical definition to state claims against.
-/

/-! ## A332622.P2080701120419000939

`record[A345199(∑[A046816(n)²])]`
-/

namespace A332622.P2080701120419000939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332622.P2080701120419000939

/-! ## A332622.P5836179439590144747

`record[A000005(∑[A292086(2*n+3)])]`
-/

namespace A332622.P5836179439590144747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332622.P5836179439590144747

/-! ## A332622.P8943384549052148335

`eq[gcd(n, A039163(n+1)), A110655(n)]`
-/

namespace A332622.P8943384549052148335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A039163 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332622.P8943384549052148335

/-!
# A332623: a(n) = Sum_{k=1..n} ceiling(n/k)^2.

The programs for A332623, the canonical program `A332623.P15828207625324670651` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332623 has offset 1).

The definition of A332623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332623.P15828207625324670651

`∑[∑{d}[n, 2*#+1]+1]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332623

/-- `∑[∑{d}[n, 2*#+1]+1]` -/
def P15828207625324670651.Spec : Prop :=
  ∀ n, (P15828207625324670651.a n : ℤ) = A332623 (n + 1)

theorem P15828207625324670651.correct : P15828207625324670651.Spec := by
  intro n
  simp only [A332623, Nat.add_sub_cancel]

end A332623

/-! ## A332623.P2195628942469728307

`∑[∑{d}[n, #+1+#]]+n+1`
-/

namespace A332623.P2195628942469728307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + 1 + d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A332623.P2195628942469728307

namespace A332623

/-- `∑[∑{d}[n, #+1+#]]+n+1` -/
def P2195628942469728307.Spec : Prop :=
  ∀ n, (P2195628942469728307.a n : ℤ) = A332623 (n + 1)

end A332623

/-! ## A332623.P6720440094212816320

`a(n-1)+∑{d}[n, #+1+#]+1` with `a(0)=1`
-/

namespace A332623.P6720440094212816320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), (d + 1 + d) + 1)

end

end A332623.P6720440094212816320

namespace A332623

/-- `a(n-1)+∑{d}[n, #+1+#]+1` -/
def P6720440094212816320.Spec : Prop :=
  ∀ n, (P6720440094212816320.a n : ℤ) = A332623 (n + 1)

end A332623

/-! ## A332623.P795303474317803476

`n-1+A257644(n)+A160664(n)`
-/

namespace A332623.P795303474317803476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A257644 n + A160664 n)

end

end A332623.P795303474317803476

namespace A332623

/-- `n-1+A257644(n)+A160664(n)` -/
def P795303474317803476.Spec : Prop :=
  ∀ n, P795303474317803476.a n = A332623 (n + 1)

end A332623

/-! ## A332623.P5517591991011648736

`∑[A008619(∑{d}[n, A016825(#)])]`
-/

namespace A332623.P5517591991011648736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ d ∈ Nat.divisors (f2 n), A016825 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332623.P5517591991011648736

namespace A332623

/-- `∑[A008619(∑{d}[n, A016825(#)])]` -/
def P5517591991011648736.Spec : Prop :=
  ∀ n, P5517591991011648736.a n = A332623 (n + 1)

end A332623

/-! ## A332623.P6789698387229858916

`2*A257644(n)-A320226(n)`
-/

namespace A332623.P6789698387229858916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257644 n - A320226 n

end

end A332623.P6789698387229858916

namespace A332623

/-- `2*A257644(n)-A320226(n)` -/
def P6789698387229858916.Spec : Prop :=
  ∀ n, P6789698387229858916.a n = A332623 (n + 1)

end A332623

/-! ## A332623.P5448858619297582566

`A005843(A257644(n))-A320226(n)`
-/

namespace A332623.P5448858619297582566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A257644 n).toNat - A320226 n

end

end A332623.P5448858619297582566

namespace A332623

/-- `A005843(A257644(n))-A320226(n)` -/
def P5448858619297582566.Spec : Prop :=
  ∀ n, P5448858619297582566.a n = A332623 (n + 1)

end A332623

/-!
# A332625: Number of simple graphs on n unlabeled nodes with domination number 2.

The programs for A332625, there is no canonical definition to state claims against.
-/

/-! ## A332625.P17448268244176562823

`A263284(∑[char[1]+n]+1)%A000666(n)`
-/

namespace A332625.P17448268244176562823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263284 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A000666 n)

end

end A332625.P17448268244176562823

/-! ## A332625.P6077745433889081417

`A263284(A133263(n))-A000007(n)`
-/

namespace A332625.P6077745433889081417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (A133263 n).toNat - A000007 n

end

end A332625.P6077745433889081417

/-! ## A332625.P16546668274730783854

`A263284(A133263(n))-A010894(n)`
-/

namespace A332625.P16546668274730783854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (A133263 n).toNat - A010894 (n + 21)

end

end A332625.P16546668274730783854

/-! ## A332625.P3692613757749960340

`A263284(A133263(n))-A014382(n)`
-/

namespace A332625.P3692613757749960340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (A133263 n).toNat - A014382 n

end

end A332625.P3692613757749960340

/-! ## A332625.P16727055359953300807

`A263284(A133263(n))%A046662(n)`
-/

namespace A332625.P16727055359953300807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263284 (A133263 n).toNat) (A046662 n)

end

end A332625.P16727055359953300807

/-!
# A332626: Sum of least integers of prime signatures over all partitions of n into distinct parts.

The programs for A332626, there is no canonical definition to state claims against.
-/

/-! ## A332626.P6572573842316470849

`record[gcd(2*n, A121725(n))]`
-/

namespace A332626.P6572573842316470849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A121725 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332626.P6572573842316470849

/-! ## A332626.P10958567339488267913

`∏{e}[∏[or(1, 2^n)], A132736(#)]`
-/

namespace A332626.P10958567339488267913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A132736 (Nat.factorization (f1 n) p)

end

end A332626.P10958567339488267913

/-!
# A332627: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * k! * k^n.

The programs for A332627, there is no canonical definition to state claims against.
-/

/-! ## A332627.P9244331693643442588

`A115845(A112940(n))+ceil(2^(n-1))`
-/

namespace A332627.P9244331693643442588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (A112940 n).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A332627.P9244331693643442588

/-!
# A332635: a(n) = n!! mod prime(n).

The programs for A332635, the canonical program `A332635.P10474287959970127323` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332635 has offset 1).

The definition of A332635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332635.P16460297863284029917

`A006882(n+1)%p?[A007989(n)]`
-/

namespace A332635.P16460297863284029917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A332635.P16460297863284029917

namespace A332635

/-- `A006882(n+1)%p?[A007989(n)]` -/
def P16460297863284029917.Spec : Prop :=
  ∀ n, P16460297863284029917.a n = A332635 (n + 1)

end A332635

/-! ## A332635.P10474287959970127323

`and(abs(1-n)-n, A006882(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332635

/-- `and(abs(1-n)-n, A006882(n+1))%A000040(n+1)` -/
def P10474287959970127323.Spec : Prop :=
  ∀ n, P10474287959970127323.a n = A332635 (n + 1)

theorem P10474287959970127323.correct : P10474287959970127323.Spec := by
  intro n
  simp only [A332635, Nat.add_sub_cancel]

end A332635

/-! ## A332635.P3512702659632058801

`(A008578(n+2)+A006882(n+1))%A008578(n+2)`
-/

namespace A332635.P3512702659632058801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) + A006882 (n + 1)) (A008578 (n + 2))

end

end A332635.P3512702659632058801

namespace A332635

/-- `(A008578(n+2)+A006882(n+1))%A008578(n+2)` -/
def P3512702659632058801.Spec : Prop :=
  ∀ n, P3512702659632058801.a n = A332635 (n + 1)

end A332635

/-! ## A332635.P9419350336342891188

`A248809(∑[n])%A000040(n+1)`
-/

namespace A332635.P9419350336342891188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000040 (n + 1))

end

end A332635.P9419350336342891188

namespace A332635

/-- `A248809(∑[n])%A000040(n+1)` -/
def P9419350336342891188.Spec : Prop :=
  ∀ n, P9419350336342891188.a n = A332635 (n + 1)

end A332635

/-! ## A332635.P10909091870396702941

`A230698(∑[n+1])%A000040(n+1)`
-/

namespace A332635.P10909091870396702941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000040 (n + 1))

end

end A332635.P10909091870396702941

namespace A332635

/-- `A230698(∑[n+1])%A000040(n+1)` -/
def P10909091870396702941.Spec : Prop :=
  ∀ n, P10909091870396702941.a n = A332635 (n + 1)

end A332635

/-!
# A332636: Two-parameter family of recursively defined triangles, T(m,t), whose rows right-padded with zeros appear in the limiting sequence of families of certain linear recursive sequences. The data presents the sequence of triangles T(2,t) by ascending antidiagonals.

The programs for A332636, there is no canonical definition to state claims against.
-/

/-! ## A332636.P8511828479583258093

`A131851(A029099(A257257(n+1))²)`
-/

namespace A332636.P8511828479583258093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A029099 (A257257 (n + 1)).toNat ^ 2).toNat

end

end A332636.P8511828479583258093

/-! ## A332636.P13359869839736271916

`A118404(A166350(n+1)%A118391(n+2))`
-/

namespace A332636.P13359869839736271916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (Int.tmod (A166350 (n + 1)) (A118391 (n + 2))).toNat

end

end A332636.P13359869839736271916

/-! ## A332636.P6356011056375059856

`A118404(or(A024360(n+1), A166350(n+1)))`
-/

namespace A332636.P6356011056375059856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (Int.lor (A024360 (n + 1)) (A166350 (n + 1))).toNat

end

end A332636.P6356011056375059856

/-! ## A332636.P7886906960761454127

`A118404(xor(A024360(n+1), A166350(n+1)))`
-/

namespace A332636.P7886906960761454127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (Int.xor (A024360 (n + 1)) (A166350 (n + 1))).toNat

end

end A332636.P7886906960761454127

/-! ## A332636.P9016548002380385068

`A118404(A166350(n+1)+A024360(n+1)*A118404(n))`
-/

namespace A332636.P9016548002380385068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (A166350 (n + 1) + A024360 (n + 1) * A118404 n).toNat

end

end A332636.P9016548002380385068

/-!
# A332637: The number of n X n replace matrices: binary matrices A where the i-th row contains exactly i zeros and A[i,j] >= A[j,i] for all i < j.

The programs for A332637, there is no canonical definition to state claims against.
-/

/-! ## A332637.P3474170242509718385

`A098235(A222523(n)+1)`
-/

namespace A332637.P3474170242509718385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (A222523 n + 1).toNat

end

end A332637.P3474170242509718385

/-!
# A332638: Number of integer partitions of n whose negated run-lengths are unimodal.

The programs for A332638, there is no canonical definition to state claims against.
-/

/-! ## A332638.P17568287639775599096

`A000041(n)-A332639(n)`
-/

namespace A332638.P17568287639775599096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332639 n

end

end A332638.P17568287639775599096

/-! ## A332638.P11883846140298573145

`A213598(n)-A332639(n)`
-/

namespace A332638.P11883846140298573145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332639 n

end

end A332638.P11883846140298573145

/-! ## A332638.P5669917317411949798

`sqrt(A001255(n))-A332639(n)`
-/

namespace A332638.P5669917317411949798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332639 n : ℝ)

end

end A332638.P5669917317411949798

/-! ## A332638.P3409591993656116231

`∑[A002865(n)]-A332639(n)`
-/

namespace A332638.P3409591993656116231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332639 n

end

end A332638.P3409591993656116231

/-! ## A332638.P14076497935902281448

`A000065(n)+1-A332639(n)`
-/

namespace A332638.P14076497935902281448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A332639 n)

end

end A332638.P14076497935902281448

/-!
# A332639: Number of integer partitions of n whose negated run-lengths are not unimodal.

The programs for A332639, there is no canonical definition to state claims against.
-/

/-! ## A332639.P8606156284128443962

`A332640(n)+A332641(n)-A332281(n)`
-/

namespace A332639.P8606156284128443962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 n + (A332641 n - A332281 n)

end

end A332639.P8606156284128443962

/-! ## A332639.P6239404402993336501

`A000041(n)-A332638(n)`
-/

namespace A332639.P6239404402993336501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332638 n

end

end A332639.P6239404402993336501

/-! ## A332639.P17307349872167473308

`A213598(n)-A332638(n)`
-/

namespace A332639.P17307349872167473308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332638 n

end

end A332639.P17307349872167473308

/-! ## A332639.P18436550535441351972

`sqrt(A001255(n))-A332638(n)`
-/

namespace A332639.P18436550535441351972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332638 n : ℝ)

end

end A332639.P18436550535441351972

/-! ## A332639.P9017268721697981902

`∑[A002865(n)]-A332638(n)`
-/

namespace A332639.P9017268721697981902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332638 n

end

end A332639.P9017268721697981902

/-!
# A332640: Number of integer partitions of n such that neither the run-lengths nor the negated run-lengths are unimodal.

The programs for A332640, there is no canonical definition to state claims against.
-/

/-! ## A332640.P18439447036522801914

`A332281(n)+A332639(n)-A332641(n)`
-/

namespace A332640.P18439447036522801914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + (A332639 n - A332641 n)

end

end A332640.P18439447036522801914

/-! ## A332640.P13357886989663689456

`A332281(n)+A332745(n)-A332638(n)`
-/

namespace A332640.P13357886989663689456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + (A332745 n - A332638 n)

end

end A332640.P13357886989663689456

/-! ## A332640.P6589341689578679087

`A332639(n)+A332745(n)-A332280(n)`
-/

namespace A332640.P6589341689578679087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332639 n + (A332745 n - A332280 n)

end

end A332640.P6589341689578679087

/-! ## A332640.P1923776499421168503

`A000041(n)-A332746(n)`
-/

namespace A332640.P1923776499421168503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332746 n

end

end A332640.P1923776499421168503

/-! ## A332640.P7766574983147165384

`A213598(n)-A332746(n)`
-/

namespace A332640.P7766574983147165384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332746 n

end

end A332640.P7766574983147165384

/-!
# A332641: Number of integer partitions of n whose run-lengths are neither weakly increasing nor weakly decreasing.

The programs for A332641, there is no canonical definition to state claims against.
-/

/-! ## A332641.P6158579227758958471

`A332281(n)+A332639(n)-A332640(n)`
-/

namespace A332641.P6158579227758958471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + (A332639 n - A332640 n)

end

end A332641.P6158579227758958471

/-! ## A332641.P16272373864299520132

`A000041(n)-A332745(n)`
-/

namespace A332641.P16272373864299520132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332745 n

end

end A332641.P16272373864299520132

/-! ## A332641.P12757525509785784401

`A213598(n)-A332745(n)`
-/

namespace A332641.P12757525509785784401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A332745 n

end

end A332641.P12757525509785784401

/-! ## A332641.P4983036734991887847

`sqrt(A001255(n))-A332745(n)`
-/

namespace A332641.P4983036734991887847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332745 n : ℝ)

end

end A332641.P4983036734991887847

/-! ## A332641.P12231904016039090263

`∑[A002865(n)]-A332745(n)`
-/

namespace A332641.P12231904016039090263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332745 n

end

end A332641.P12231904016039090263

/-!
# A332642: Numbers whose negated unsorted prime signature is not unimodal.

The programs for A332642, there is no canonical definition to state claims against.
-/

/-! ## A332642.P18131179037848115100

`record[A243074(A332831(n+1))]`
-/

namespace A332642.P18131179037848115100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A332831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332642.P18131179037848115100

/-! ## A332642.P11312947088912714614

`∩[A332725(n+1), A332831(n+1)]`
-/

namespace A332642.P11312947088912714614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332642.P11312947088912714614

/-! ## A332642.P1206275116846116742

`A332831(A097010(n+1)%A007766(3*n+5))`
-/

namespace A332642.P1206275116846116742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (Int.tmod (A097010 (n + 1)) (A007766 (3 * n + 5))).toNat

end

end A332642.P1206275116846116742

/-! ## A332642.P4768784875707778816

`A332831(round(log(A332338(2*(n+1)))))`
-/

namespace A332642.P4768784875707778816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (SequenceMachineLib.roundAway (Real.log (A332338 (2 * (n + 1)) : ℝ))).toNat

end

end A332642.P4768784875707778816

/-!
# A332644: Largest of the least integers of prime signatures over all partitions of n into distinct parts.

The programs for A332644, the canonical program `A332644.P7124613951883106852` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332644 has offset 0).

The definition of A332644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332644.P7124613951883106852

`a(n-1)*A037126(n)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A332644

/-- `a(n-1)*A037126(n)` -/
def P7124613951883106852.Spec : Prop :=
  ∀ n, P7124613951883106852.a n = A332644 n

theorem P7124613951883106852.correct : P7124613951883106852.Spec := by
  intro n
  simp only [A332644]

end A332644

/-! ## A332644.P6799765667023717917

`∏[A008578(A131818(n+1))]`
-/

namespace A332644.P6799765667023717917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A131818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A332644.P6799765667023717917

namespace A332644

/-- `∏[A008578(A131818(n+1))]` -/
def P6799765667023717917.Spec : Prop :=
  ∀ n, P6799765667023717917.a n = A332644 n

end A332644

/-! ## A332644.P13203577916288757504

`a(n-1)*A000040(A002260(n))` with `a(0)=1`
-/

namespace A332644.P13203577916288757504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (A002260 n).toNat

end

end A332644.P13203577916288757504

namespace A332644

/-- `a(n-1)*A000040(A002260(n))` -/
def P13203577916288757504.Spec : Prop :=
  ∀ n, P13203577916288757504.a n = A332644 n

end A332644

/-! ## A332644.P750495577454833311

`a(n-1)*A000040(A004736(A056943(n)+1))` with `a(0)=1`
-/

namespace A332644.P750495577454833311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (A004736 (A056943 n + 1).toNat).toNat

end

end A332644.P750495577454833311

namespace A332644

/-- `a(n-1)*A000040(A004736(A056943(n)+1))` -/
def P750495577454833311.Spec : Prop :=
  ∀ n, P750495577454833311.a n = A332644 n

end A332644

/-! ## A332644.P16375324966700243262

`∏[A037126(n+1)]/A037126(n+1)`
-/

namespace A332644.P16375324966700243262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A037126 (n + 1) : ℚ)

end

end A332644.P16375324966700243262

namespace A332644

/-- `∏[A037126(n+1)]/A037126(n+1)` -/
def P16375324966700243262.Spec : Prop :=
  ∀ n, P16375324966700243262.a n = (A332644 n : ℚ)

end A332644

/-! ## A332644.P8360190330187262447

`record[A362227(n)]`
-/

namespace A332644.P8360190330187262447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332644.P8360190330187262447

namespace A332644

/-- `record[A362227(n)]` -/
def P8360190330187262447.Spec : Prop :=
  ∀ n, P8360190330187262447.a n = A332644 n

end A332644

/-! ## A332644.P7840763842081434478

`A362227(A089633(n))`
-/

namespace A332644.P7840763842081434478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A089633 n).toNat

end

end A332644.P7840763842081434478

namespace A332644

/-- `A362227(A089633(n))` -/
def P7840763842081434478.Spec : Prop :=
  ∀ n, P7840763842081434478.a n = A332644 n

end A332644

/-! ## A332644.P14304711475742861527

`∏[A015919(A000120(A209492(n)))]`
-/

namespace A332644.P14304711475742861527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A000120 (A209492 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A332644.P14304711475742861527

namespace A332644

/-- `∏[A015919(A000120(A209492(n)))]` -/
def P14304711475742861527.Spec : Prop :=
  ∀ n, P14304711475742861527.a n = A332644 n

end A332644

/-!
# A332646: Numbers m with a divisor d such that d^tau(d) = m.

The programs for A332646, there is no canonical definition to state claims against.
-/

/-! ## A332646.P16559135335976462834

`eq[1, char[∏{d}[n, #]]]²`
-/

namespace A332646.P16559135335976462834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A332646.P16559135335976462834

/-! ## A332646.P17455326683060224653

`A174895(n+1)²`
-/

namespace A332646.P17455326683060224653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 (n + 1) ^ 2

end

end A332646.P17455326683060224653

/-! ## A332646.P16739690626276171071

`A174895(Δ[n²]-n)^2`
-/

namespace A332646.P16739690626276171071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A332646.P16739690626276171071

/-! ## A332646.P13172648256416303753

`(eq[0, A174898(n+1)]+1)²`
-/

namespace A332646.P13172648256416303753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A332646.P13172648256416303753

/-! ## A332646.P17078976922783425840

`(lt[0, A174897(n+1)]+1)²`
-/

namespace A332646.P17078976922783425840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A332646.P17078976922783425840

/-!
# A332647: a(n) = 2*a(n-1) + a(n-3) with a(0) = 3, a(1) = 2, a(2) = 4.

The programs for A332647, the canonical program `A332647.P17706881803089414025` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332647 has offset 0).

The definition of A332647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A332647.P17706881803089414025`, by `A332647.P17706881803089414025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332647.P17706881803089414025

`2*a(n-1)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332647

/-- `2*a(n-1)+a(n-3)` -/
def P17706881803089414025.Spec : Prop :=
  ∀ n, (P17706881803089414025.a n : ℤ) = A332647 n

theorem P17706881803089414025.correct : P17706881803089414025.Spec := by
  intro n
  simp only [A332647]

end A332647

/-! ## A332647.P17680773249611946993

`ogf((-3+4x)/(-1+2x+x^3))`
-/

namespace A332647.P17680773249611946993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2, 0, -1] n

end

end A332647.P17680773249611946993

namespace A332647

/-- `ogf((-3+4x)/(-1+2x+x^3))` -/
def P17680773249611946993.Spec : Prop :=
  ∀ n, P17680773249611946993.a n = A332647 n

end A332647

/-! ## A332647.P15877648551988011319

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A332647.P15877648551988011319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A332647.P15877648551988011319

namespace A332647

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P15877648551988011319.Spec : Prop :=
  ∀ n, (P15877648551988011319.a n : ℤ) = A332647 n

theorem P15877648551988011319.correct : P15877648551988011319.Spec := by
  intro n
  simp only [A332647, Nat.add_sub_cancel, A332647.P15877648551988011319.a, A332647.P17706881803089414025.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A332647

/-! ## A332647.P15940990553892713791

`A008998(n)+A332491(n)-A052980(n)`
-/

namespace A332647.P15940990553892713791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n + (A332491 n - A052980 n)

end

end A332647.P15940990553892713791

namespace A332647

/-- `A008998(n)+A332491(n)-A052980(n)` -/
def P15940990553892713791.Spec : Prop :=
  ∀ n, P15940990553892713791.a n = A332647 n

end A332647

/-! ## A332647.P4806165057693204677

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=3, a(1)=2, a(2)=4`
-/

namespace A332647.P4806165057693204677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A332647.P4806165057693204677

namespace A332647

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P4806165057693204677.Spec : Prop :=
  ∀ n, P4806165057693204677.a n = A332647 n

end A332647

/-! ## A332647.P8693376726001828492

`A193641(n+1)+A332491(n)-A052980(n+1)`
-/

namespace A332647.P8693376726001828492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A332491 n - A052980 (n + 1))

end

end A332647.P8693376726001828492

namespace A332647

/-- `A193641(n+1)+A332491(n)-A052980(n+1)` -/
def P8693376726001828492.Spec : Prop :=
  ∀ n, P8693376726001828492.a n = A332647 n

end A332647

/-! ## A332647.P10934544189734499647

`Δ[A080204(n+2)]-1-A080204(n+2)`
-/

namespace A332647.P10934544189734499647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 - A080204 (n + 2)

end

end A332647.P10934544189734499647

namespace A332647

/-- `Δ[A080204(n+2)]-1-A080204(n+2)` -/
def P10934544189734499647.Spec : Prop :=
  ∀ n, P10934544189734499647.a n = A332647 n

end A332647

/-!
# A332648: Array read by antidiagonals: T(n,k) is the number of rooted unlabeled k-gonal cacti having n polygons.

The programs for A332648, there is no canonical definition to state claims against.
-/

/-! ## A332648.P8844453200193440666

`A002223(n+1)%A206916(A257493(n))`
-/

namespace A332648.P8844453200193440666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002223 (n + 1)) (A206916 (A257493 n).toNat)

end

end A332648.P8844453200193440666

/-! ## A332648.P13609276424641896767

`A070939(C(A257493(n), A006928(n+1)))`
-/

namespace A332648.P13609276424641896767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A257493 n).toNat (A006928 (n + 1)).toNat)

end

end A332648.P13609276424641896767

/-! ## A332648.P2053006855280033432

`or(A225099(A189435(n+1)), A295679(n))`
-/

namespace A332648.P2053006855280033432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225099 (A189435 (n + 1)).toNat) (A295679 n)

end

end A332648.P2053006855280033432

/-! ## A332648.P8471521067265933575

`or(A059841(A171275(2*(n+2))), A287216(n))`
-/

namespace A332648.P8471521067265933575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A171275 (2 * (n + 2))).toNat) (A287216 n)

end

end A332648.P8471521067265933575

/-! ## A332648.P14914321381880329183

`or(A188014(∏{d}[n+1, #]/(n+1)), A295679(n))`
-/

namespace A332648.P14914321381880329183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188014 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat) (A295679 n)

end

end A332648.P14914321381880329183

/-!
# A332649: Array read by antidiagonals: T(n,k) is the number of unlabeled k-gonal cacti having n polygons.

The programs for A332649, there is no canonical definition to state claims against.
-/

/-! ## A332649.P10112159085270212273

`A303694(n)-A038146(A303694(n))`
-/

namespace A332649.P10112159085270212273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 n - A038146 (A303694 n).toNat

end

end A332649.P10112159085270212273

/-! ## A332649.P3601419376795224440

`A303694(n)-A335446(A145515(n))`
-/

namespace A332649.P3601419376795224440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 n - A335446 (A145515 n).toNat

end

end A332649.P3601419376795224440

/-! ## A332649.P12208046447431189143

`A369929(n)+A051731(A060948(n+1))`
-/

namespace A332649.P12208046447431189143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369929 n + A051731 (A060948 (n + 1)).toNat

end

end A332649.P12208046447431189143

/-! ## A332649.P3910927963939551378

`A285481(A341033(n))-char[A096819(n+1)²]`
-/

namespace A332649.P3910927963939551378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096819 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A341033 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332649.P3910927963939551378

/-! ## A332649.P7881066496737680090

`A010888(A303694(n)^A335162(n))`
-/

namespace A332649.P7881066496737680090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (SequenceMachineLib.roundAway ((A303694 n : ℚ) ^ (A335162 n : ℤ))).toNat

end

end A332649.P7881066496737680090

/-!
# A332650: Number of polygonal cacti on 2n-1 unlabeled nodes with every polygon having an odd prime number of edges.

The programs for A332650, there is no canonical definition to state claims against.
-/

/-! ## A332650.P14665371431541808867

`A194640(A240611(n))+A046079(n+1)`
-/

namespace A332650.P14665371431541808867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A240611 n).toNat + A046079 (n + 1)

end

end A332650.P14665371431541808867

/-! ## A332650.P2950623087250136834

`A184402(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A332650.P2950623087250136834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A184402 (a (n - 1)).toNat

end

end A332650.P2950623087250136834

/-! ## A332650.P9952018320268291463

`A051889(A002212(n))`
-/

namespace A332650.P9952018320268291463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A002212 n).toNat

end

end A332650.P9952018320268291463

/-!
# A332652: a(n) = Sum_{k=1..n} n^(k/gcd(n, k)).

The programs for A332652, there is no canonical definition to state claims against.
-/

/-! ## A332652.P12989270912057378414

`(n+1)*A332653(n+1)`
-/

namespace A332652.P12989270912057378414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A332653 (n + 1)

end

end A332652.P12989270912057378414

/-!
# A332653: a(n) = (1/n) * Sum_{k=1..n} n^(k/gcd(n, k)).

The programs for A332653, there is no canonical definition to state claims against.
-/

/-! ## A332653.P5500905380079176354

`A332652(n+1)/(n+1)`
-/

namespace A332653.P5500905380079176354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332652 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A332653.P5500905380079176354

/-! ## A332653.P18142432376650485145

`A007913((n+1)*A332652(n+1))`
-/

namespace A332653.P18142432376650485145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A332652 (n + 1)).toNat

end

end A332653.P18142432376650485145

/-!
# A332654: a(n) = Sum_{k=1..n} (k/gcd(n, k))^2.

The programs for A332654, the canonical program `A332654.P10679004288047729511` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332654 has offset 1).

The definition of A332654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332654.P10679004288047729511

`∑{d}[n+1, A053818(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332654

/-- `∑{d}[n+1, A053818(#)]` -/
def P10679004288047729511.Spec : Prop :=
  ∀ n, P10679004288047729511.a n = A332654 (n + 1)

theorem P10679004288047729511.correct : P10679004288047729511.Spec := by
  intro n
  simp only [A332654, Nat.add_sub_cancel]

end A332654

/-! ## A332654.P9652828595213197568

`∑{d}[n+1, A000330(#)*A046970((n+1)/#)]`
-/

namespace A332654.P9652828595213197568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000330 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332654.P9652828595213197568

namespace A332654

/-- `∑{d}[n+1, A000330(#)*A046970((n+1)/#)]` -/
def P9652828595213197568.Spec : Prop :=
  ∀ n, P9652828595213197568.a n = A332654 (n + 1)

end A332654

/-! ## A332654.P18151089603679131220

`∑{d}[n+1, A023900(#)*A344509((n+1)/#)]`
-/

namespace A332654.P18151089603679131220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332654.P18151089603679131220

namespace A332654

/-- `∑{d}[n+1, A023900(#)*A344509((n+1)/#)]` -/
def P18151089603679131220.Spec : Prop :=
  ∀ n, P18151089603679131220.a n = A332654 (n + 1)

end A332654

/-! ## A332654.P1625636676650944575

`∑{d}[n+1, A320941(#)*A334657((n+1)/#)]`
-/

namespace A332654.P1625636676650944575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320941 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332654.P1625636676650944575

namespace A332654

/-- `∑{d}[n+1, A320941(#)*A334657((n+1)/#)]` -/
def P1625636676650944575.Spec : Prop :=
  ∀ n, P1625636676650944575.a n = A332654 (n + 1)

end A332654

/-!
# A332655: a(n) = Sum_{k=1..n} (k/gcd(n, k))^n.

The programs for A332655, there is no canonical definition to state claims against.
-/

/-! ## A332655.P16734000815260611664

`A361645(∑[A361607(n)])`
-/

namespace A332655.P16734000815260611664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361645 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332655.P16734000815260611664

/-!
# A332656: Number of decompositions of 2n into unordered sums of two odd primes, including at least one twin prime.

The programs for A332656, there is no canonical definition to state claims against.
-/

/-! ## A332656.P3532074048031844480

`A002375(n+1)-A010054(A183422(3*n+2))`
-/

namespace A332656.P3532074048031844480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A010054 (A183422 (3 * n + 2)).toNat

end

end A332656.P3532074048031844480

/-! ## A332656.P13051025952839765300

`A002375(n+1)-A023533(A345915(2*n+3))`
-/

namespace A332656.P13051025952839765300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A023533 (A345915 (2 * n + 3)).toNat

end

end A332656.P13051025952839765300

/-! ## A332656.P8526545429535889599

`A014041(A228165(n+1))+A045917(n+1)*A060576(n)`
-/

namespace A332656.P8526545429535889599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 (A228165 (n + 1)).toNat + A045917 (n + 1) * A060576 n

end

end A332656.P8526545429535889599

/-! ## A332656.P7304492518601484435

`A002375(n+1)-A010051(A258231(n+1))`
-/

namespace A332656.P7304492518601484435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A010051 (A258231 (n + 1)).toNat

end

end A332656.P7304492518601484435

/-! ## A332656.P17528400029852428804

`A002375(n+1)-A010051(A003370(n+4))`
-/

namespace A332656.P17528400029852428804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A010051 (A003370 (n + 4)).toNat

end

end A332656.P17528400029852428804

/-!
# A332657: Alternate adding and multiplying prime numbers: a(2n) = a(2n-1) * prime(2n+1) and a(2n-1) = a(2n) + prime(2n-2) for n >= 1.

The programs for A332657, there is no canonical definition to state claims against.
-/

/-! ## A332657.P11245774336833551846

`A248633(A274062(n+1)-char[3])`
-/

namespace A332657.P11245774336833551846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248633 (A274062 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A332657.P11245774336833551846

/-!
# A332658: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * lcm(n, k) / gcd(n, k).

The programs for A332658, the canonical program `A332658.P8837612117912986795` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332658 has offset 1).

The definition of A332658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332658.P8837612117912986795

`∑{d}[n+1, A007427(#)*A056789((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A332658

/-- `∑{d}[n+1, A007427(#)*A056789((n+1)/#)]` -/
def P8837612117912986795.Spec : Prop :=
  ∀ n, P8837612117912986795.a n = A332658 (n + 1)

theorem P8837612117912986795.correct : P8837612117912986795.Spec := by
  intro n
  simp only [A332658, Nat.add_sub_cancel]

end A332658

/-! ## A332658.P1013407679279759083

`∑{d}[n+1, A046692(#)*A051193((n+1)/#)]`
-/

namespace A332658.P1013407679279759083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A051193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332658.P1013407679279759083

namespace A332658

/-- `∑{d}[n+1, A046692(#)*A051193((n+1)/#)]` -/
def P1013407679279759083.Spec : Prop :=
  ∀ n, P1013407679279759083.a n = A332658 (n + 1)

end A332658

/-! ## A332658.P6073562699586745338

`∑{d}[n+1, A002411(#)*A053822((n+1)/#)]`
-/

namespace A332658.P6073562699586745338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002411 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332658.P6073562699586745338

namespace A332658

/-- `∑{d}[n+1, A002411(#)*A053822((n+1)/#)]` -/
def P6073562699586745338.Spec : Prop :=
  ∀ n, P6073562699586745338.a n = A332658 (n + 1)

end A332658

/-!
# A332660: Alternate adding and multiplying Fibonacci numbers: a(0) = F(0) + F(1), for n >= 0, a(2n+1) = a(2n) * F(2n+2), a(2n+2) = a(2n+1) + F(2n+3).

The programs for A332660, there is no canonical definition to state claims against.
-/

/-! ## A332660.P16206352209319091971

`∏[or(1, n)]%A124129(n+1)`
-/

namespace A332660.P16206352209319091971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A124129 (n + 1))

end

end A332660.P16206352209319091971

/-! ## A332660.P15792780813418894768

`Δ[A165915(∑[n!+3]+n)]`
-/

namespace A332660.P15792780813418894768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165915 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332660.P15792780813418894768

/-!
# A332661: a(1)=1; a(n+1) is the smallest palindrome not already in the sequence such that the product of a(n+1) and a(n) is also a palindrome.

The programs for A332661, there is no canonical definition to state claims against.
-/

/-! ## A332661.P3137644923686622836

`A064216(n+1)+A002262(A203715(n+1))`
-/

namespace A332661.P3137644923686622836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) + A002262 (A203715 (n + 1)).toNat

end

end A332661.P3137644923686622836

/-!
# A332662: Put-and-count: An enumeration of N X N where N = {0, 1, 2, ...}. The terms are interleaved x and y coordinates. Or: A row-wise storage scheme for sequences of regular triangles.

The programs for A332662, there is no canonical definition to state claims against.
-/

/-! ## A332662.P10690718092924681128

`A292638(A234286(n+1))%A000196(n+3)`
-/

namespace A332662.P10690718092924681128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292638 (A234286 (n + 1)).toNat) (A000196 (n + 3))

end

end A332662.P10690718092924681128

/-! ## A332662.P8726138899669788785

`A086967(A361971(n+2))`
-/

namespace A332662.P8726138899669788785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086967 (A361971 (n + 2)).toNat

end

end A332662.P8726138899669788785

/-! ## A332662.P12818161794749717574

`val(A319528(A261392(n+1)), 3)`
-/

namespace A332662.P12818161794749717574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319528 (A261392 (n + 1)).toNat).toNat 3

end

end A332662.P12818161794749717574

/-! ## A332662.P15435813731277709094

`A007949(∑{d}[A261392(n+1), #])`
-/

namespace A332662.P15435813731277709094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332662.P15435813731277709094

/-! ## A332662.P2956671065068078071

`A182988(n+3)%A001221(A182988(n+3))`
-/

namespace A332662.P2956671065068078071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182988 (n + 3)) (A001221 (A182988 (n + 3)).toNat)

end

end A332662.P2956671065068078071

/-!
# A332663: Even bisection of A332662: the x-coordinates of an enumeration of N X N.

The programs for A332663, the canonical program `A332663.P9658537387938696632` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332663 has offset 0).

The definition of A332663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332663.P9658537387938696632

`A124171(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332663

/-- `A124171(n+1)-1` -/
def P9658537387938696632.Spec : Prop :=
  ∀ n, P9658537387938696632.a n = A332663 n

theorem P9658537387938696632.correct : P9658537387938696632.Spec := by
  intro n
  simp only [A332663]

end A332663

/-! ## A332663.P3656421683786416318

`n-C(∑[char[C(n, 3)]]+1, 3)`
-/

namespace A332663.P3656421683786416318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 3 : ℤ)

end

end A332663.P3656421683786416318

namespace A332663

/-- `n-C(∑[char[C(n, 3)]]+1, 3)` -/
def P3656421683786416318.Spec : Prop :=
  ∀ n, P3656421683786416318.a n = A332663 n

end A332663

/-! ## A332663.P14609815352707895284

`(a(n-1)+1)*char[comp[C(n, 3)]]` with `a(0)=0`
-/

namespace A332663.P14609815352707895284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A332663.P14609815352707895284

namespace A332663

/-- `(a(n-1)+1)*char[comp[C(n, 3)]]` -/
def P14609815352707895284.Spec : Prop :=
  ∀ n, (P14609815352707895284.a n : ℤ) = A332663 n

end A332663

/-! ## A332663.P15018657020544350225

`(a(n-1)+1)*A014306(n)` with `a(0)=0`
-/

namespace A332663.P15018657020544350225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A014306 n

end

end A332663.P15018657020544350225

namespace A332663

/-- `(a(n-1)+1)*A014306(n)` -/
def P15018657020544350225.Spec : Prop :=
  ∀ n, P15018657020544350225.a n = A332663 n

end A332663

/-! ## A332663.P209831494037461862

`n-A000292(∑[char[C(n, 3)]]-1)`
-/

namespace A332663.P209831494037461862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000292 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A332663.P209831494037461862

namespace A332663

/-- `n-A000292(∑[char[C(n, 3)]]-1)` -/
def P209831494037461862.Spec : Prop :=
  ∀ n, P209831494037461862.a n = A332663 n

end A332663

/-! ## A332663.P13413774920534521478

`n-A000292(A056556(n))`
-/

namespace A332663.P13413774920534521478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000292 (A056556 n).toNat

end

end A332663.P13413774920534521478

namespace A332663

/-- `n-A000292(A056556(n))` -/
def P13413774920534521478.Spec : Prop :=
  ∀ n, P13413774920534521478.a n = A332663 n

end A332663

/-! ## A332663.P7583555265712275107

`A332662(2*n)`
-/

namespace A332663.P7583555265712275107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n)

end

end A332663.P7583555265712275107

namespace A332663

/-- `A332662(2*n)` -/
def P7583555265712275107.Spec : Prop :=
  ∀ n, P7583555265712275107.a n = A332663 n

end A332663

/-! ## A332663.P6609501237295092596

`A079071(A014311(n+1))`
-/

namespace A332663.P6609501237295092596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A014311 (n + 1)).toNat

end

end A332663.P6609501237295092596

namespace A332663

/-- `A079071(A014311(n+1))` -/
def P6609501237295092596.Spec : Prop :=
  ∀ n, P6609501237295092596.a n = A332663 n

end A332663

/-! ## A332663.P2892886697402084877

`A079071(A379267(n+1))`
-/

namespace A332663.P2892886697402084877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A379267 (n + 1)).toNat

end

end A332663.P2892886697402084877

namespace A332663

/-- `A079071(A379267(n+1))` -/
def P2892886697402084877.Spec : Prop :=
  ∀ n, P2892886697402084877.a n = A332663 n

end A332663

/-! ## A332663.P14726042320702759249

`A070198(n)%A124171(n+1)`
-/

namespace A332663.P14726042320702759249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A124171 (n + 1))

end

end A332663.P14726042320702759249

namespace A332663

/-- `A070198(n)%A124171(n+1)` -/
def P14726042320702759249.Spec : Prop :=
  ∀ n, P14726042320702759249.a n = A332663 n

end A332663

/-! ## A332663.P15103292463013417902

`A079782(n+1)%A124171(n+1)`
-/

namespace A332663.P15103292463013417902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A124171 (n + 1))

end

end A332663.P15103292463013417902

namespace A332663

/-- `A079782(n+1)%A124171(n+1)` -/
def P15103292463013417902.Spec : Prop :=
  ∀ n, P15103292463013417902.a n = A332663 n

end A332663

/-! ## A332663.P2772771632128774960

`A083685(n+1)%A124171(n+1)`
-/

namespace A332663.P2772771632128774960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A124171 (n + 1))

end

end A332663.P2772771632128774960

namespace A332663

/-- `A083685(n+1)%A124171(n+1)` -/
def P2772771632128774960.Spec : Prop :=
  ∀ n, P2772771632128774960.a n = A332663 n

end A332663

/-! ## A332663.P14370418340882368645

`A121934(n+1)%A124171(n+1)`
-/

namespace A332663.P14370418340882368645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A124171 (n + 1))

end

end A332663.P14370418340882368645

namespace A332663

/-- `A121934(n+1)%A124171(n+1)` -/
def P14370418340882368645.Spec : Prop :=
  ∀ n, P14370418340882368645.a n = A332663 n

end A332663

/-! ## A332663.P3063561289127590872

`A030494(n+1)%A124171(n+1)`
-/

namespace A332663.P3063561289127590872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A124171 (n + 1))

end

end A332663.P3063561289127590872

namespace A332663

/-- `A030494(n+1)%A124171(n+1)` -/
def P3063561289127590872.Spec : Prop :=
  ∀ n, P3063561289127590872.a n = A332663 n

end A332663

/-! ## A332663.P8732140128442313754

`A072828(n+1)%A124171(n+1)`
-/

namespace A332663.P8732140128442313754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A124171 (n + 1))

end

end A332663.P8732140128442313754

namespace A332663

/-- `A072828(n+1)%A124171(n+1)` -/
def P8732140128442313754.Spec : Prop :=
  ∀ n, P8732140128442313754.a n = A332663 n

end A332663

/-!
# A332664: a(n) = number of nonnegative integers that are not the sum of {2 squares, a nonnegative 5th power, and a nonnegative n-th power}.

The programs for A332664, there is no canonical definition to state claims against.
-/

/-! ## A332664.P15711362073853310298

`Δ[A130359(A121357(n))]`
-/

namespace A332664.P15711362073853310298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A121357 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332664.P15711362073853310298

/-!
# A332666: Denominators of higher order Bernoulli numbers.

The programs for A332666, there is no canonical definition to state claims against.
-/

/-! ## A332666.P3237751908134446624

`A002790(Δ[n²])`
-/

namespace A332666.P3237751908134446624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A332666.P3237751908134446624

/-! ## A332666.P9813861863062154647

`lcm(2, A002790(2*n+1))`
-/

namespace A332666.P9813861863062154647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002790 (2 * n + 1))

end

end A332666.P9813861863062154647

/-! ## A332666.P10531153544962996843

`and(-2, A002790((n+1)²-n²))`
-/

namespace A332666.P10531153544962996843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A002790 ((n + 1) ^ 2 - n ^ 2))

end

end A332666.P10531153544962996843

/-! ## A332666.P7539612811461242272

`2*(n+1)*A165299(2*n+1)`
-/

namespace A332666.P7539612811461242272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A165299 (2 * n + 1)

end

end A332666.P7539612811461242272

/-! ## A332666.P10170299879529005661

`A025439(n)+A002790(2*n+1)`
-/

namespace A332666.P10170299879529005661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A002790 (2 * n + 1)

end

end A332666.P10170299879529005661

/-!
# A332668: Number of strict integer partitions of n without three consecutive parts in arithmetic progression.

The programs for A332668, there is no canonical definition to state claims against.
-/

/-! ## A332668.P1144353139545390756

`A325852(n)+A235127(A002991(n))`
-/

namespace A332668.P1144353139545390756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n + A235127 (A002991 n).toNat

end

end A332668.P1144353139545390756

/-! ## A332668.P5129894201518789993

`A341613(A000055(n))+A325852(n)`
-/

namespace A332668.P5129894201518789993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (A000055 n).toNat + A325852 n

end

end A332668.P5129894201518789993

/-! ## A332668.P3767906512928807442

`A157242(n+1)+A325852(n)-A107279(A213003(n))`
-/

namespace A332668.P3767906512928807442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157242 (n + 1) + (A325852 n - A107279 (A213003 n).toNat)

end

end A332668.P3767906512928807442

/-! ## A332668.P12643055315862923048

`A157242(n+1)+A325852(n)-A326291(A016885(n))`
-/

namespace A332668.P12643055315862923048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157242 (n + 1) + (A325852 n - A326291 (A016885 n).toNat)

end

end A332668.P12643055315862923048

/-! ## A332668.P13818992892232643944

`A325852(n)+A316865(A287206(n))`
-/

namespace A332668.P13818992892232643944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n + A316865 (A287206 n).toNat

end

end A332668.P13818992892232643944

/-!
# A332669: Number of compositions of n whose negation is not unimodal.

The programs for A332669, there is no canonical definition to state claims against.
-/

/-! ## A332669.P18134733053861740280

`A011782(n)-A332578(n)`
-/

namespace A332669.P18134733053861740280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332578 n

end

end A332669.P18134733053861740280

/-! ## A332669.P2966862338133592838

`∑[A034008(n)]-A332578(n)`
-/

namespace A332669.P2966862338133592838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332578 n

end

end A332669.P2966862338133592838

/-! ## A332669.P9662912559733971612

`A016116(A004273(n))-A332578(n)`
-/

namespace A332669.P9662912559733971612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - A332578 n

end

end A332669.P9662912559733971612

/-! ## A332669.P2693313854214793060

`A001523(n)+A115981(n)-A332578(n)`
-/

namespace A332669.P2693313854214793060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + (A115981 n - A332578 n)

end

end A332669.P2693313854214793060

/-! ## A332669.P12424078455932895300

`A332834(n)+A332870(n)-A115981(n)`
-/

namespace A332669.P12424078455932895300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332834 n + (A332870 n - A115981 n)

end

end A332669.P12424078455932895300

/-! ## A332669.P3526023120814010787

`A332726(n)+A332727(n)-A332578(n)`
-/

namespace A332669.P3526023120814010787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A332578 n)

end

end A332669.P3526023120814010787

/-! ## A332669.P12434390287463782069

`Δ[A056469(n)]-A332578(n)`
-/

namespace A332669.P12434390287463782069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332578 n

end

end A332669.P12434390287463782069

/-! ## A332669.P8056498538358182001

`Δ[A094373(n)]-A332578(n)`
-/

namespace A332669.P8056498538358182001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332578 n

end

end A332669.P8056498538358182001

/-! ## A332669.P11880218539437212367

`Δ[A131577(n)]-A332578(n)`
-/

namespace A332669.P11880218539437212367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332578 n

end

end A332669.P11880218539437212367

/-!
# A332670: Triangle read by rows where T(n,k) is the number of length-k compositions of n whose negation is unimodal.

The programs for A332670, there is no canonical definition to state claims against.
-/

/-! ## A332670.P14412043688158732890

`A374995(A321615(n))`
-/

namespace A332670.P14412043688158732890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A321615 n).toNat

end

end A332670.P14412043688158732890

/-! ## A332670.P1414128283692463918

`A001222(A253563(A269945(n)))`
-/

namespace A332670.P1414128283692463918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A253563 (A269945 n).toNat).toNat

end

end A332670.P1414128283692463918

/-! ## A332670.P13388909584224402093

`A000120(A048993(n)^A137420(n))`
-/

namespace A332670.P13388909584224402093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A137420 n : ℤ))).toNat

end

end A332670.P13388909584224402093

/-! ## A332670.P1898133521312574

`A000120(A048993(n)^A184257(n+1))`
-/

namespace A332670.P1898133521312574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A332670.P1898133521312574

/-! ## A332670.P10205029756792988613

`A000120(A048993(n)^A052307(n))`
-/

namespace A332670.P10205029756792988613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A052307 n : ℤ))).toNat

end

end A332670.P10205029756792988613

/-!
# A332671: Number of non-unimodal permutations of the multiset of prime indices of n.

The programs for A332671, there is no canonical definition to state claims against.
-/

/-! ## A332671.P14978594305377066192

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A332288(n+1)`
-/

namespace A332671.P14978594305377066192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A332288 (n + 1) : ℚ)

end

end A332671.P14978594305377066192

/-! ## A332671.P11989654843843719761

`A333146(A069799(n+1))`
-/

namespace A332671.P11989654843843719761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A069799 (n + 1)).toNat

end

end A332671.P11989654843843719761

/-! ## A332671.P557932818237152124

`A333146(A105119(n+1))`
-/

namespace A332671.P557932818237152124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A105119 (n + 1)).toNat

end

end A332671.P557932818237152124

/-! ## A332671.P9861703334924828284

`A333146(A137502(n+1))`
-/

namespace A332671.P9861703334924828284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A137502 (n + 1)).toNat

end

end A332671.P9861703334924828284

/-! ## A332671.P14818217286981359702

`A333146(A225891(n+1))`
-/

namespace A332671.P14818217286981359702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A225891 (n + 1)).toNat

end

end A332671.P14818217286981359702

/-! ## A332671.P10541811466605610524

`A333146(A242419(n+1))`
-/

namespace A332671.P10541811466605610524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A242419 (n + 1)).toNat

end

end A332671.P10541811466605610524

/-! ## A332671.P9514935893151084550

`A333146(A293448(n+1))`
-/

namespace A332671.P9514935893151084550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (A293448 (n + 1)).toNat

end

end A332671.P9514935893151084550

/-! ## A332671.P5386226631447218376

`A008480(n+1)-A332288(n+1)`
-/

namespace A332671.P5386226631447218376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A332288 (n + 1)

end

end A332671.P5386226631447218376

/-! ## A332671.P8236369501144190394

`or(A335453(n+1), A349797(n+1))`
-/

namespace A332671.P8236369501144190394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335453 (n + 1)) (A349797 (n + 1))

end

end A332671.P8236369501144190394

/-! ## A332671.P5054069552613015291

`A335447(n+1)+1-A332288(n+1)`
-/

namespace A332671.P5054069552613015291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + (1 - A332288 (n + 1))

end

end A332671.P5054069552613015291

/-!
# A332672: Number of non-unimodal permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A332672, there is no canonical definition to state claims against.
-/

/-! ## A332672.P15293732430590654547

`A318762(n+1)-A332294(n+1)`
-/

namespace A332672.P15293732430590654547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A332294 (n + 1)

end

end A332672.P15293732430590654547

/-! ## A332672.P13475595421725384256

`A318808(2*(n+1))-A332294(n+1)`
-/

namespace A332672.P13475595421725384256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * (n + 1)) - A332294 (n + 1)

end

end A332672.P13475595421725384256

/-! ## A332672.P18239962244513713731

`A318810(2*(n+1))-A332294(n+1)`
-/

namespace A332672.P18239962244513713731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * (n + 1)) - A332294 (n + 1)

end

end A332672.P18239962244513713731

/-! ## A332672.P5368965549643183181

`A318762(n+1)-A064553(A032742(n+1))`
-/

namespace A332672.P5368965549643183181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A064553 (A032742 (n + 1)).toNat

end

end A332672.P5368965549643183181

/-! ## A332672.P3074783783977221361

`A318762(n+1)-A064553(A054576(2*(n+1)))`
-/

namespace A332672.P3074783783977221361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (n + 1) - A064553 (A054576 (2 * (n + 1))).toNat

end

end A332672.P3074783783977221361

/-! ## A332672.P16557681001071058500

`A112624(n+1)*A124794(n+1)-A332294(n+1)`
-/

namespace A332672.P16557681001071058500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) * A124794 (n + 1) - A332294 (n + 1)

end

end A332672.P16557681001071058500

/-! ## A332672.P9318731154614413973

`A112624(n+1)*A124794(n+1)-A064553(A032742(n+1))`
-/

namespace A332672.P9318731154614413973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) * A124794 (n + 1) - A064553 (A032742 (n + 1)).toNat

end

end A332672.P9318731154614413973

/-! ## A332672.P12898877934699940392

`A332741(n+1)+A332742(n+1)-A332294(n+1)`
-/

namespace A332672.P12898877934699940392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (n + 1) + (A332742 (n + 1) - A332294 (n + 1))

end

end A332672.P12898877934699940392

/-!
# A332673: Triangle read by rows where T(n,k) is the number of length-k ordered set partitions of {1..n} whose non-adjacent blocks are pairwise increasing.

The programs for A332673, there is no canonical definition to state claims against.
-/

/-! ## A332673.P4464481157984933546

`A330960(A304336(n))`
-/

namespace A332673.P4464481157984933546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A304336 n).toNat

end

end A332673.P4464481157984933546

/-! ## A332673.P11401549260796329398

`A121314(n)+A102351(A294609(n))`
-/

namespace A332673.P11401549260796329398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 n + A102351 (A294609 n).toNat

end

end A332673.P11401549260796329398

/-! ## A332673.P10428458255795763298

`A131689(n)-A082859(A037954(n))`
-/

namespace A332673.P10428458255795763298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n - A082859 (A037954 n).toNat

end

end A332673.P10428458255795763298

/-! ## A332673.P11806150041656794569

`A131689(n)-A151755(A269939(n))`
-/

namespace A332673.P11806150041656794569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n - A151755 (A269939 n).toNat

end

end A332673.P11806150041656794569

/-! ## A332673.P3268986616933566191

`A131689(n)/A373387(A080140(2*(n+1)))`
-/

namespace A332673.P3268986616933566191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A373387 (A080140 (2 * (n + 1))).toNat : ℚ)

end

end A332673.P3268986616933566191

/-!
# A332674: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 9 (mod 10).

The programs for A332674, the canonical program `A332674.P11479518678889470787` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332674 has offset 1).

The definition of A332674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332674.P871574039353763652

`∩[A017281(n), A253970(n+1)]`
-/

namespace A332674.P871574039353763652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P871574039353763652

namespace A332674

/-- `∩[A017281(n), A253970(n+1)]` -/
def P871574039353763652.Spec : Prop :=
  ∀ n, (P871574039353763652.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P2433486506993834538

`∩[A004615(n+1), A253970(n+1)]`
-/

namespace A332674.P2433486506993834538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P2433486506993834538

namespace A332674

/-- `∩[A004615(n+1), A253970(n+1)]` -/
def P2433486506993834538.Spec : Prop :=
  ∀ n, (P2433486506993834538.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P12585306661473779389

`∩[A030430(n+1), A253970(n+1)]`
-/

namespace A332674.P12585306661473779389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P12585306661473779389

namespace A332674

/-- `∩[A030430(n+1), A253970(n+1)]` -/
def P12585306661473779389.Spec : Prop :=
  ∀ n, (P12585306661473779389.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P11479518678889470787

`∩[A045453(n+1), A253970(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332674

/-- `∩[A045453(n+1), A253970(n+1)]` -/
def P11479518678889470787.Spec : Prop :=
  ∀ n, (P11479518678889470787.a n : ℤ) = A332674 (n + 1)

theorem P11479518678889470787.correct : P11479518678889470787.Spec := by
  intro n
  simp only [A332674, Nat.add_sub_cancel]

end A332674

/-! ## A332674.P16208096588408862754

`∩[A090756(n+1), A253970(n+1)]`
-/

namespace A332674.P16208096588408862754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P16208096588408862754

namespace A332674

/-- `∩[A090756(n+1), A253970(n+1)]` -/
def P16208096588408862754.Spec : Prop :=
  ∀ n, (P16208096588408862754.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P10416853284706837080

`∩[A105179(n+1), A253970(n+1)]`
-/

namespace A332674.P10416853284706837080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P10416853284706837080

namespace A332674

/-- `∩[A105179(n+1), A253970(n+1)]` -/
def P10416853284706837080.Spec : Prop :=
  ∀ n, (P10416853284706837080.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P11501972970465401553

`∩[A225297(n+1), A253970(n+1)]`
-/

namespace A332674.P11501972970465401553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P11501972970465401553

namespace A332674

/-- `∩[A225297(n+1), A253970(n+1)]` -/
def P11501972970465401553.Spec : Prop :=
  ∀ n, (P11501972970465401553.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P3552896463147898966

`∩[A253970(n+1), A277588(n+1)]`
-/

namespace A332674.P3552896463147898966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P3552896463147898966

namespace A332674

/-- `∩[A253970(n+1), A277588(n+1)]` -/
def P3552896463147898966.Spec : Prop :=
  ∀ n, (P3552896463147898966.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P3849743705449759958

`∩[A253970(n+1), A327752(n+1)]`
-/

namespace A332674.P3849743705449759958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P3849743705449759958

namespace A332674

/-- `∩[A253970(n+1), A327752(n+1)]` -/
def P3849743705449759958.Spec : Prop :=
  ∀ n, (P3849743705449759958.a n : ℤ) = A332674 (n + 1)

end A332674

/-! ## A332674.P10852007987733925587

`∩[A253970(n+1), A331194(n+1)]`
-/

namespace A332674.P10852007987733925587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P10852007987733925587

namespace A332674

/-- `∩[A253970(n+1), A331194(n+1)]` -/
def P10852007987733925587.Spec : Prop :=
  ∀ n, (P10852007987733925587.a n : ℤ) = A332674 (n + 1)

end A332674

/-!
# A332675: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 1 (mod 10).

The programs for A332675, there is no canonical definition to state claims against.
-/

/-! ## A332675.P2968867417527689494

`∩[5*n+8, A129809(n+2)]`
-/

namespace A332675.P2968867417527689494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332675.P2968867417527689494

/-! ## A332675.P7995581456230969659

`filter[A129809(n+2), A185706(#)]`
-/

namespace A332675.P7995581456230969659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A332675.P7995581456230969659

/-! ## A332675.P9302874161786629710

`∩[A129809(n+2), A017305(n)]`
-/

namespace A332675.P9302874161786629710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332675.P9302874161786629710

/-! ## A332675.P4559612780166190244

`∩[A129809(n+2), A277588(n+2)+2]`
-/

namespace A332675.P4559612780166190244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332675.P4559612780166190244

/-! ## A332675.P17608321075553662289

`∩[A129809(n+1), A004617(A065475(n+1))]`
-/

namespace A332675.P17608321075553662289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (A065475 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332675.P17608321075553662289

/-!
# A332676: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 3 (mod 10).

The programs for A332676, the canonical program `A332676.P3385004995648683764` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332676 has offset 1).

The definition of A332676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332676.P11666885781245406504

`∩[A030431(n+1), A290450(n+1)]`
-/

namespace A332676.P11666885781245406504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P11666885781245406504

namespace A332676

/-- `∩[A030431(n+1), A290450(n+1)]` -/
def P11666885781245406504.Spec : Prop :=
  ∀ n, (P11666885781245406504.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P15506467091013270214

`∩[A045414(n+1), A290450(n+1)]`
-/

namespace A332676.P15506467091013270214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P15506467091013270214

namespace A332676

/-- `∩[A045414(n+1), A290450(n+1)]` -/
def P15506467091013270214.Spec : Prop :=
  ∀ n, (P15506467091013270214.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P3385004995648683764

`∩[5*A024896(n+1)-2, A290450(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A332676

/-- `∩[5*A024896(n+1)-2, A290450(n+1)]` -/
def P3385004995648683764.Spec : Prop :=
  ∀ n, (P3385004995648683764.a n : ℤ) = A332676 (n + 1)

theorem P3385004995648683764.correct : P3385004995648683764.Spec := by
  intro n
  simp only [A332676, Nat.add_sub_cancel]

end A332676

/-! ## A332676.P12887205877835801680

`∩[A004617(n+1), A290450(n+1)]`
-/

namespace A332676.P12887205877835801680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P12887205877835801680

namespace A332676

/-- `∩[A004617(n+1), A290450(n+1)]` -/
def P12887205877835801680.Spec : Prop :=
  ∀ n, (P12887205877835801680.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P8507403314542338823

`∩[A000040(A049508(n+1)), A290450(n+1)]`
-/

namespace A332676.P8507403314542338823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049508 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P8507403314542338823

namespace A332676

/-- `∩[A000040(A049508(n+1)), A290450(n+1)]` -/
def P8507403314542338823.Spec : Prop :=
  ∀ n, (P8507403314542338823.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P10869680512983156756

`A000040(∩[A049508(n+1)-1, A049508(n+1)])`
-/

namespace A332676.P10869680512983156756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A332676.P10869680512983156756

namespace A332676

/-- `A000040(∩[A049508(n+1)-1, A049508(n+1)])` -/
def P10869680512983156756.Spec : Prop :=
  ∀ n, P10869680512983156756.a n = A332676 (n + 1)

end A332676

/-! ## A332676.P15159961907270663023

`∩[A290450(n+1), A017305(n)]`
-/

namespace A332676.P15159961907270663023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P15159961907270663023

namespace A332676

/-- `∩[A290450(n+1), A017305(n)]` -/
def P15159961907270663023.Spec : Prop :=
  ∀ n, (P15159961907270663023.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P16741663382012577967

`∩[A290450(n+1), A017281(n)+2]`
-/

namespace A332676.P16741663382012577967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P16741663382012577967

namespace A332676

/-- `∩[A290450(n+1), A017281(n)+2]` -/
def P16741663382012577967.Spec : Prop :=
  ∀ n, (P16741663382012577967.a n : ℤ) = A332676 (n + 1)

end A332676

/-! ## A332676.P11885204737593799032

`filter[A290450(n+1), A185706(#)]`
-/

namespace A332676.P11885204737593799032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A332676.P11885204737593799032

namespace A332676

/-- `filter[A290450(n+1), A185706(#)]` -/
def P11885204737593799032.Spec : Prop :=
  ∀ n, P11885204737593799032.a n = A332676 (n + 1)

end A332676

/-!
# A332677: a(n) is the number of ways n can be obtained by adding some digit of a number k to k.

The programs for A332677, there is no canonical definition to state claims against.
-/

/-! ## A332677.P11964556321860624002

`floor(A074323(n)/A018452(n+1))`
-/

namespace A332677.P11964556321860624002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074323 n : ℚ) / (A018452 (n + 1) : ℚ)⌋

end

end A332677.P11964556321860624002

/-! ## A332677.P12480887128705105035

`A004216(A027693(A029191(n)²))`
-/

namespace A332677.P12480887128705105035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A027693 (A029191 n ^ 2).toNat).toNat

end

end A332677.P12480887128705105035

/-! ## A332677.P1744915290603215989

`C(A008615(n), A276150(A276085(n+1)))`
-/

namespace A332677.P1744915290603215989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008615 n).toNat (A276150 (A276085 (n + 1)).toNat).toNat

end

end A332677.P1744915290603215989

/-! ## A332677.P14529507581696516203

`A029244(n)+A016389(A022166(n))`
-/

namespace A332677.P14529507581696516203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n + A016389 (A022166 n).toNat

end

end A332677.P14529507581696516203

/-! ## A332677.P11401853073777717548

`A115579(A238391(n))-A000035(n)`
-/

namespace A332677.P11401853073777717548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115579 (A238391 n).toNat - A000035 n

end

end A332677.P11401853073777717548

/-!
# A332679: a(n) = (-1)^n * n! * Laguerre(n, 4*n).

The programs for A332679, there is no canonical definition to state claims against.
-/

/-! ## A332679.P3233928971437073072

`A000142(n)*A194960(A186446(n))`
-/

namespace A332679.P3233928971437073072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A194960 (A186446 n).toNat

end

end A332679.P3233928971437073072

/-!
# A332680: a(n) = -(-1)^n * n! * hypergeometric1F1(1 - n, 2, 4*n).

The programs for A332680, there is no canonical definition to state claims against.
-/

/-! ## A332680.P11953247141663093034

`A329398(A165136(n+1))-A386987(n+2)`
-/

namespace A332680.P11953247141663093034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329398 (A165136 (n + 1)).toNat - A386987 (n + 2)

end

end A332680.P11953247141663093034

/-!
# A332681: a(n) = Sum_{k=1..n} mu(k) * ceiling(n/k)^2.

The programs for A332681, the canonical program `A332681.P15735275970095107601` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332681 has offset 1).

The definition of A332681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332681.P15735275970095107601

`A049691(n)+∑[round(∏{p}[n+1, -#]/(n+2))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A332681

/-- `A049691(n)+∑[round(∏{p}[n+1, -#]/(n+2))]` -/
def P15735275970095107601.Spec : Prop :=
  ∀ n, P15735275970095107601.a n = A332681 (n + 1)

theorem P15735275970095107601.correct : P15735275970095107601.Spec := by
  intro n
  simp only [A332681, Nat.add_sub_cancel]

end A332681

/-! ## A332681.P7975831288480724424

`A049691(n)+A002321(n+1)`
-/

namespace A332681.P7975831288480724424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + A002321 (n + 1)

end

end A332681.P7975831288480724424

namespace A332681

/-- `A049691(n)+A002321(n+1)` -/
def P7975831288480724424.Spec : Prop :=
  ∀ n, P7975831288480724424.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P5567421733344010163

`A049691(n)+∑[A008683(n+1)]`
-/

namespace A332681.P5567421733344010163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P5567421733344010163

namespace A332681

/-- `A049691(n)+∑[A008683(n+1)]` -/
def P5567421733344010163.Spec : Prop :=
  ∀ n, P5567421733344010163.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P11275047472782938807

`A049691(n)+∑[A007423(n+1)-1]`
-/

namespace A332681.P11275047472782938807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P11275047472782938807

namespace A332681

/-- `A049691(n)+∑[A007423(n+1)-1]` -/
def P11275047472782938807.Spec : Prop :=
  ∀ n, P11275047472782938807.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P11091945498488786873

`A049632(n)-∑[A157658(n+1)]`
-/

namespace A332681.P11091945498488786873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P11091945498488786873

namespace A332681

/-- `A049632(n)-∑[A157658(n+1)]` -/
def P11091945498488786873.Spec : Prop :=
  ∀ n, P11091945498488786873.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P2859385496775753805

`∑[A008683(n+1)]+A049632(n)-1`
-/

namespace A332681.P2859385496775753805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A049632 n - 1)

end

end A332681.P2859385496775753805

namespace A332681

/-- `∑[A008683(n+1)]+A049632(n)-1` -/
def P2859385496775753805.Spec : Prop :=
  ∀ n, P2859385496775753805.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P415189595138189704

`A206297(n+1)+A002321(n+1)%(n+1)`
-/

namespace A332681.P415189595138189704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1) + Int.tmod (A002321 (n + 1)) (n + 1 : ℤ)

end

end A332681.P415189595138189704

namespace A332681

/-- `A206297(n+1)+A002321(n+1)%(n+1)` -/
def P415189595138189704.Spec : Prop :=
  ∀ n, P415189595138189704.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P12461326091333963486

`A004273(A049643(n))+A002321(n+1)`
-/

namespace A332681.P12461326091333963486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049643 n).toNat + A002321 (n + 1)

end

end A332681.P12461326091333963486

namespace A332681

/-- `A004273(A049643(n))+A002321(n+1)` -/
def P12461326091333963486.Spec : Prop :=
  ∀ n, P12461326091333963486.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P6233445027597897990

`A004273(A049643(n))+∑[A008683(n+1)]`
-/

namespace A332681.P6233445027597897990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049643 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P6233445027597897990

namespace A332681

/-- `A004273(A049643(n))+∑[A008683(n+1)]` -/
def P6233445027597897990.Spec : Prop :=
  ∀ n, P6233445027597897990.a n = A332681 (n + 1)

end A332681

/-! ## A332681.P13398408891518174638

`A103517(A002088(n))-∑[A157658(n+1)]`
-/

namespace A332681.P13398408891518174638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A002088 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P13398408891518174638

namespace A332681

/-- `A103517(A002088(n))-∑[A157658(n+1)]` -/
def P13398408891518174638.Spec : Prop :=
  ∀ n, P13398408891518174638.a n = A332681 (n + 1)

end A332681

/-!
# A332682: a(n) = Sum_{k=1..n} (-1)^(k+1) * ceiling(n/k).

The programs for A332682, the canonical program `A332682.P7283793099848226627` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332682 has offset 1).

The definition of A332682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332682.P7283793099848226627

`∑[(-1)^n-∑{d}[n, (-1)^#]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332682

/-- `∑[(-1)^n-∑{d}[n, (-1)^#]]` -/
def P7283793099848226627.Spec : Prop :=
  ∀ n, P7283793099848226627.a n = A332682 (n + 1)

theorem P7283793099848226627.correct : P7283793099848226627.Spec := by
  intro n
  simp only [A332682, Nat.add_sub_cancel]

end A332682

/-! ## A332682.P15352307557814610725

`∑[∑{d}[n, -(-1)^#]+(-1)^n]`
-/

namespace A332682.P15352307557814610725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332682.P15352307557814610725

namespace A332682

/-- `∑[∑{d}[n, -(-1)^#]+(-1)^n]` -/
def P15352307557814610725.Spec : Prop :=
  ∀ n, P15352307557814610725.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P7188219575535918231

`∑[∑{d}[n, #-xor(1, #)]]+(n+1)%2`
-/

namespace A332682.P7188219575535918231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (Nat.xor 1 d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) % 2 : ℕ) : ℤ)

end

end A332682.P7188219575535918231

namespace A332682

/-- `∑[∑{d}[n, #-xor(1, #)]]+(n+1)%2` -/
def P7188219575535918231.Spec : Prop :=
  ∀ n, P7188219575535918231.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P8659423961221091015

`gcd(2, n)+n-∑[∑{d}[n, (-1)^#]+1]`
-/

namespace A332682.P8659423961221091015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332682.P8659423961221091015

namespace A332682

/-- `gcd(2, n)+n-∑[∑{d}[n, (-1)^#]+1]` -/
def P8659423961221091015.Spec : Prop :=
  ∀ n, P8659423961221091015.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P2847623643440007249

`or(1, n)-A075997(n)`
-/

namespace A332682.P2847623643440007249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A075997 n

end

end A332682.P2847623643440007249

namespace A332682

/-- `or(1, n)-A075997(n)` -/
def P2847623643440007249.Spec : Prop :=
  ∀ n, P2847623643440007249.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P12737053408847003085

`A059851(n)+log2(gcd(2, n))`
-/

namespace A332682.P12737053408847003085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059851 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A332682.P12737053408847003085

namespace A332682

/-- `A059851(n)+log2(gcd(2, n))` -/
def P12737053408847003085.Spec : Prop :=
  ∀ n, P12737053408847003085.a n = (A332682 (n + 1) : ℝ)

end A332682

/-! ## A332682.P293772606513335786

`A325937(n)+a(n-1)` with `a(0)=1`
-/

namespace A332682.P293772606513335786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325937 n + a (n - 1)

end

end A332682.P293772606513335786

namespace A332682

/-- `A325937(n)+a(n-1)` -/
def P293772606513335786.Spec : Prop :=
  ∀ n, P293772606513335786.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P13858137233302761088

`∑[A325937(abs(1-n)+1)]`
-/

namespace A332682.P13858137233302761088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332682.P13858137233302761088

namespace A332682

/-- `∑[A325937(abs(1-n)+1)]` -/
def P13858137233302761088.Spec : Prop :=
  ∀ n, P13858137233302761088.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P276008614541117828

`A059841(n)-∑[∑{d}[n, (-1)^#]]`
-/

namespace A332682.P276008614541117828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332682.P276008614541117828

namespace A332682

/-- `A059841(n)-∑[∑{d}[n, (-1)^#]]` -/
def P276008614541117828.Spec : Prop :=
  ∀ n, P276008614541117828.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P12551996280454820466

`∑[A033999(n)]-∑[∑{d}[n, (-1)^#]]`
-/

namespace A332682.P12551996280454820466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A332682.P12551996280454820466

namespace A332682

/-- `∑[A033999(n)]-∑[∑{d}[n, (-1)^#]]` -/
def P12551996280454820466.Spec : Prop :=
  ∀ n, P12551996280454820466.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P291463071403562210

`A059851(n)+A059841(n)`
-/

namespace A332682.P291463071403562210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + A059841 n

end

end A332682.P291463071403562210

namespace A332682

/-- `A059851(n)+A059841(n)` -/
def P291463071403562210.Spec : Prop :=
  ∀ n, P291463071403562210.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P2601058459022114170

`A109613(n)-A075997(n)`
-/

namespace A332682.P2601058459022114170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A075997 n

end

end A332682.P2601058459022114170

namespace A332682

/-- `A109613(n)-A075997(n)` -/
def P2601058459022114170.Spec : Prop :=
  ∀ n, P2601058459022114170.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P17901372467403569283

`A059851(n)+∑[A033999(n)]`
-/

namespace A332682.P17901372467403569283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332682.P17901372467403569283

namespace A332682

/-- `A059851(n)+∑[A033999(n)]` -/
def P17901372467403569283.Spec : Prop :=
  ∀ n, P17901372467403569283.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P7912937745389872794

`A059851(n)+Δ[A110654(n)]`
-/

namespace A332682.P7912937745389872794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + (f1 (n + 1) - f1 n)

end

end A332682.P7912937745389872794

namespace A332682

/-- `A059851(n)+Δ[A110654(n)]` -/
def P7912937745389872794.Spec : Prop :=
  ∀ n, P7912937745389872794.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P2286593588348037286

`A059851(n)+char[A005843(n)]`
-/

namespace A332682.P2286593588348037286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332682.P2286593588348037286

namespace A332682

/-- `A059851(n)+char[A005843(n)]` -/
def P2286593588348037286.Spec : Prop :=
  ∀ n, P2286593588348037286.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P9983920766836108782

`A059851(n)+1-A000035(n)`
-/

namespace A332682.P9983920766836108782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + (1 - A000035 n)

end

end A332682.P9983920766836108782

namespace A332682

/-- `A059851(n)+1-A000035(n)` -/
def P9983920766836108782.Spec : Prop :=
  ∀ n, P9983920766836108782.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P7982597526704785160

`A275495(n+1)+1-A325937(n+1)`
-/

namespace A332682.P7982597526704785160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (n + 1) + (1 - A325937 (n + 1))

end

end A332682.P7982597526704785160

namespace A332682

/-- `A275495(n+1)+1-A325937(n+1)` -/
def P7982597526704785160.Spec : Prop :=
  ∀ n, P7982597526704785160.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P6235669300009854758

`A059851(n+1)+A059851(n)-A275495(n+1)`
-/

namespace A332682.P6235669300009854758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) + (A059851 n - A275495 (n + 1))

end

end A332682.P6235669300009854758

namespace A332682

/-- `A059851(n+1)+A059851(n)-A275495(n+1)` -/
def P6235669300009854758.Spec : Prop :=
  ∀ n, P6235669300009854758.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P6189074977917598654

`A059851(n)+A000035(n+1)`
-/

namespace A332682.P6189074977917598654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n + A000035 (n + 1)

end

end A332682.P6189074977917598654

namespace A332682

/-- `A059851(n)+A000035(n+1)` -/
def P6189074977917598654.Spec : Prop :=
  ∀ n, P6189074977917598654.a n = A332682 (n + 1)

end A332682

/-! ## A332682.P12517878092241099239

`A325939(n+1)+A275495(n+2)-A048272(n+2)`
-/

namespace A332682.P12517878092241099239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1) + (A275495 (n + 2) - A048272 (n + 2))

end

end A332682.P12517878092241099239

namespace A332682

/-- `A325939(n+1)+A275495(n+2)-A048272(n+2)` -/
def P12517878092241099239.Spec : Prop :=
  ∀ n, P12517878092241099239.a n = A332682 (n + 1)

end A332682

/-!
# A332683: a(n) = Sum_{k=1..n, gcd(n, k) = 1} ceiling(n/k).

The programs for A332683, the canonical program `A332683.P11173983188310399264` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332683 has offset 1).

The definition of A332683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332683.P10016731811092419577

`A116477(n+1)+A109606(n+1)`
-/

namespace A332683.P10016731811092419577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (n + 1) + A109606 (n + 1)

end

end A332683.P10016731811092419577

namespace A332683

/-- `A116477(n+1)+A109606(n+1)` -/
def P10016731811092419577.Spec : Prop :=
  ∀ n, P10016731811092419577.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P3379289815730959820

`A116477(n+1)+Δ[A005728(n)]-1`
-/

namespace A332683.P3379289815730959820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A332683.P3379289815730959820

namespace A332683

/-- `A116477(n+1)+Δ[A005728(n)]-1` -/
def P3379289815730959820.Spec : Prop :=
  ∀ n, P3379289815730959820.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P14970043768767477251

`A000010(n+1)+A116477(n+1)-1`
-/

namespace A332683.P14970043768767477251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A116477 (n + 1) - 1)

end

end A332683.P14970043768767477251

namespace A332683

/-- `A000010(n+1)+A116477(n+1)-1` -/
def P14970043768767477251.Spec : Prop :=
  ∀ n, P14970043768767477251.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P157968017689087593

`A039649(n+1)+A116477(n+1)-2`
-/

namespace A332683.P157968017689087593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A116477 (n + 1) - 2)

end

end A332683.P157968017689087593

namespace A332683

/-- `A039649(n+1)+A116477(n+1)-2` -/
def P157968017689087593.Spec : Prop :=
  ∀ n, P157968017689087593.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P15931641626157433394

`A116477(n+1)-A051953(n+1)+n`
-/

namespace A332683.P15931641626157433394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (n + 1) - A051953 (n + 1) + (n : ℤ)

end

end A332683.P15931641626157433394

namespace A332683

/-- `A116477(n+1)-A051953(n+1)+n` -/
def P15931641626157433394.Spec : Prop :=
  ∀ n, P15931641626157433394.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P3121451333060282808

`∑{d}[n+1, A006590(#)*A008683((n+1)/#)]`
-/

namespace A332683.P3121451333060282808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006590 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332683.P3121451333060282808

namespace A332683

/-- `∑{d}[n+1, A006590(#)*A008683((n+1)/#)]` -/
def P3121451333060282808.Spec : Prop :=
  ∀ n, P3121451333060282808.a n = A332683 (n + 1)

end A332683

/-! ## A332683.P11173983188310399264

`∑{d}[n+1, A055615(#)*A333465((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A332683

/-- `∑{d}[n+1, A055615(#)*A333465((n+1)/#)]` -/
def P11173983188310399264.Spec : Prop :=
  ∀ n, P11173983188310399264.a n = A332683 (n + 1)

theorem P11173983188310399264.correct : P11173983188310399264.Spec := by
  intro n
  simp only [A332683, Nat.add_sub_cancel]

end A332683

/-! ## A332683.P9208201085433825092

`A116477(n+1)-A024000(A000010(n+1))`
-/

namespace A332683.P9208201085433825092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (n + 1) - A024000 (A000010 (n + 1)).toNat

end

end A332683.P9208201085433825092

namespace A332683

/-- `A116477(n+1)-A024000(A000010(n+1))` -/
def P9208201085433825092.Spec : Prop :=
  ∀ n, P9208201085433825092.a n = A332683 (n + 1)

end A332683

/-!
# A332684: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * floor(n/k).

The programs for A332684, the canonical program `A332684.P8972618175803108793` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332684 has offset 1).

The definition of A332684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332684.P11098178986936929240

`∑{d}[n+1, A006218(#)*A007427((n+1)/#)]`
-/

namespace A332684.P11098178986936929240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006218 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332684.P11098178986936929240

namespace A332684

/-- `∑{d}[n+1, A006218(#)*A007427((n+1)/#)]` -/
def P11098178986936929240.Spec : Prop :=
  ∀ n, P11098178986936929240.a n = A332684 (n + 1)

end A332684

/-! ## A332684.P7531912849342168655

`∑{d}[n+1, A008683(#)*A116477((n+1)/#)]`
-/

namespace A332684.P7531912849342168655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A116477 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332684.P7531912849342168655

namespace A332684

/-- `∑{d}[n+1, A008683(#)*A116477((n+1)/#)]` -/
def P7531912849342168655.Spec : Prop :=
  ∀ n, P7531912849342168655.a n = A332684 (n + 1)

end A332684

/-! ## A332684.P8972618175803108793

`∑{d}[n+1, A007428(#)*A143356((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332684

/-- `∑{d}[n+1, A007428(#)*A143356((n+1)/#)]` -/
def P8972618175803108793.Spec : Prop :=
  ∀ n, P8972618175803108793.a n = A332684 (n + 1)

theorem P8972618175803108793.correct : P8972618175803108793.Spec := by
  intro n
  simp only [A332684, Nat.add_sub_cancel]

end A332684

/-! ## A332684.P17672660926878531344

`∑{d}[n+1, A046692(#)*A333463((n+1)/#)]`
-/

namespace A332684.P17672660926878531344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A333463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332684.P17672660926878531344

namespace A332684

/-- `∑{d}[n+1, A046692(#)*A333463((n+1)/#)]` -/
def P17672660926878531344.Spec : Prop :=
  ∀ n, P17672660926878531344.a n = A332684 (n + 1)

end A332684

/-!
# A332685: a(n) = Sum_{k=1..n} mu(k/gcd(n, k)).

The programs for A332685, there is no canonical definition to state claims against.
-/

/-! ## A332685.P4374103295792338393

`∑{d}[n+1, A112399(#)]`
-/

namespace A332685.P4374103295792338393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112399 d

end

end A332685.P4374103295792338393

/-!
# A332686: a(n) = Sum_{k=1..n} phi(k/gcd(n, k)).

The programs for A332686, there is no canonical definition to state claims against.
-/

/-! ## A332686.P14691142514204820845

`∑{d}[n+1, A053570(#)]`
-/

namespace A332686.P14691142514204820845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053570 d

end

end A332686.P14691142514204820845

/-!
# A332687: a(n) = Sum_{k=1..n} ceiling(n/prime(k)).

The programs for A332687, the canonical program `A332687.P17057081320270552118` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332687 has offset 1).

The definition of A332687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332687.P17057081320270552118

`∑[∑{e}[∏{p}[n, #], #]+1]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332687

/-- `∑[∑{e}[∏{p}[n, #], #]+1]` -/
def P17057081320270552118.Spec : Prop :=
  ∀ n, (P17057081320270552118.a n : ℤ) = A332687 (n + 1)

theorem P17057081320270552118.correct : P17057081320270552118.Spec := by
  intro n
  simp only [A332687, Nat.add_sub_cancel]

end A332687

/-! ## A332687.P7923000354231338200

`∑[∑{e}[2*∏{p}[n, #], #]]`
-/

namespace A332687.P7923000354231338200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P7923000354231338200

namespace A332687

/-- `∑[∑{e}[2*∏{p}[n, #], #]]` -/
def P7923000354231338200.Spec : Prop :=
  ∀ n, (P7923000354231338200.a n : ℤ) = A332687 (n + 1)

end A332687

/-! ## A332687.P18029388117085044406

`∑[∑{p}[n, floor(atan(#))]+1]`
-/

namespace A332687.P18029388117085044406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊Real.arctan (p : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P18029388117085044406

namespace A332687

/-- `∑[∑{p}[n, floor(atan(#))]+1]` -/
def P18029388117085044406.Spec : Prop :=
  ∀ n, P18029388117085044406.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P14760923438128129082

`∑[1-∑{p}[n, or(#, -1)]]`
-/

namespace A332687.P14760923438128129082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f2 n), Int.lor (p : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P14760923438128129082

namespace A332687

/-- `∑[1-∑{p}[n, or(#, -1)]]` -/
def P14760923438128129082.Spec : Prop :=
  ∀ n, P14760923438128129082.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P12714932329328275161

`∑[∑{p}[n, ceil(1/#)]+1]`
-/

namespace A332687.P12714932329328275161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (p : ℚ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P12714932329328275161

namespace A332687

/-- `∑[∑{p}[n, ceil(1/#)]+1]` -/
def P12714932329328275161.Spec : Prop :=
  ∀ n, P12714932329328275161.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P60877666815829614

`∑{e}[2*∏{p}[n, #], #]+a(n-1)` with `a(0)=1`
-/

namespace A332687.P60877666815829614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 1)

end

end A332687.P60877666815829614

namespace A332687

/-- `∑{e}[2*∏{p}[n, #], #]+a(n-1)` -/
def P60877666815829614.Spec : Prop :=
  ∀ n, (P60877666815829614.a n : ℤ) = A332687 (n + 1)

end A332687

/-! ## A332687.P16846421633537193961

`∑[∏{e}[∏{p}[n, (#%2)!+1], #+1]]`
-/

namespace A332687.P16846421633537193961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorial (p % 2) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P16846421633537193961

namespace A332687

/-- `∑[∏{e}[∏{p}[n, (#%2)!+1], #+1]]` -/
def P16846421633537193961.Spec : Prop :=
  ∀ n, (P16846421633537193961.a n : ℤ) = A332687 (n + 1)

end A332687

/-! ## A332687.P5330224138462405398

`∑[∑{p}[n+1, ((-1)^#)^10]+1]-∑{p}[n+1, ((-1)^#)^10]`
-/

namespace A332687.P5330224138462405398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((-1) ^ p) ^ 10 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ p ∈ Nat.primeFactors (f3 n), ((-1) ^ p) ^ 10

end

end A332687.P5330224138462405398

namespace A332687

/-- `∑[∑{p}[n+1, ((-1)^#)^10]+1]-∑{p}[n+1, ((-1)^#)^10]` -/
def P5330224138462405398.Spec : Prop :=
  ∀ n, P5330224138462405398.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P18432893224509361724

`∑[A010553(∏{p}[n, #])]`
-/

namespace A332687.P18432893224509361724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P18432893224509361724

namespace A332687

/-- `∑[A010553(∏{p}[n, #])]` -/
def P18432893224509361724.Spec : Prop :=
  ∀ n, P18432893224509361724.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P17631387709375136125

`∑[A073093(∏{p}[n, #])]`
-/

namespace A332687.P17631387709375136125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P17631387709375136125

namespace A332687

/-- `∑[A073093(∏{p}[n, #])]` -/
def P17631387709375136125.Spec : Prop :=
  ∀ n, P17631387709375136125.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P11978671390281983396

`A083399(n)+a(n-1)` with `a(0)=1`
-/

namespace A332687.P11978671390281983396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083399 n + a (n - 1)

end

end A332687.P11978671390281983396

namespace A332687

/-- `A083399(n)+a(n-1)` -/
def P11978671390281983396.Spec : Prop :=
  ∀ n, P11978671390281983396.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P7605952287030964349

`∑[A001221(A028310(n))+1]`
-/

namespace A332687.P7605952287030964349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332687.P7605952287030964349

namespace A332687

/-- `∑[A001221(A028310(n))+1]` -/
def P7605952287030964349.Spec : Prop :=
  ∀ n, P7605952287030964349.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P8256388354936393870

`A092494(n+1)+A062298(n+1)`
-/

namespace A332687.P8256388354936393870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + A062298 (n + 1)

end

end A332687.P8256388354936393870

namespace A332687

/-- `A092494(n+1)+A062298(n+1)` -/
def P8256388354936393870.Spec : Prop :=
  ∀ n, P8256388354936393870.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P15677784017532128215

`A378993(n+1)+A013939(n+1)`
-/

namespace A332687.P15677784017532128215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) + A013939 (n + 1)

end

end A332687.P15677784017532128215

namespace A332687

/-- `A378993(n+1)+A013939(n+1)` -/
def P15677784017532128215.Spec : Prop :=
  ∀ n, P15677784017532128215.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P15824960415938103581

`A082767(n+1)-A001221(n+1)`
-/

namespace A332687.P15824960415938103581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082767 (n + 1) - A001221 (n + 1)

end

end A332687.P15824960415938103581

namespace A332687

/-- `A082767(n+1)-A001221(n+1)` -/
def P15824960415938103581.Spec : Prop :=
  ∀ n, P15824960415938103581.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P13006728214695059121

`∑[A001221(A079892(n+1))]-A001221(n+1)`
-/

namespace A332687.P13006728214695059121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (n + 1)

end

end A332687.P13006728214695059121

namespace A332687

/-- `∑[A001221(A079892(n+1))]-A001221(n+1)` -/
def P13006728214695059121.Spec : Prop :=
  ∀ n, P13006728214695059121.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P3473164474714290374

`A005843(n+1)+A355538(n+1)-A083399(n+1)`
-/

namespace A332687.P3473164474714290374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A355538 (n + 1) - A083399 (n + 1))

end

end A332687.P3473164474714290374

namespace A332687

/-- `A005843(n+1)+A355538(n+1)-A083399(n+1)` -/
def P3473164474714290374.Spec : Prop :=
  ∀ n, P3473164474714290374.a n = A332687 (n + 1)

end A332687

/-! ## A332687.P7575077366335701447

`A082767(n+1)-A106404(2*(n+1))`
-/

namespace A332687.P7575077366335701447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082767 (n + 1) - A106404 (2 * (n + 1))

end

end A332687.P7575077366335701447

namespace A332687

/-- `A082767(n+1)-A106404(2*(n+1))` -/
def P7575077366335701447.Spec : Prop :=
  ∀ n, P7575077366335701447.a n = A332687 (n + 1)

end A332687

/-!
# A332688: Reduced division polynomials associated with elliptic curve y^2 = x^3 + 17 and multiples of point (-2, 3).

The programs for A332688, there is no canonical definition to state claims against.
-/

/-! ## A332688.P14393694668536872756

`A069777(A165896(n))-A293049(n)`
-/

namespace A332688.P14393694668536872756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A165896 n).toNat - A293049 n

end

end A332688.P14393694668536872756

/-! ## A332688.P3116159244961692956

`A322058(A098995(n+1))-A292889(n)`
-/

namespace A332688.P3116159244961692956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (A098995 (n + 1)).toNat - A292889 n

end

end A332688.P3116159244961692956

/-!
# A332689: Number of distinct areas of integer-sided triangles whose area equals n times their perimeter.

The programs for A332689, there is no canonical definition to state claims against.
-/

/-! ## A332689.P1600476513786470231

`A103146(or(A067080(3*(n+1)), A215366(n+1)))`
-/

namespace A332689.P1600476513786470231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103146 (Int.lor (A067080 (3 * (n + 1))) (A215366 (n + 1))).toNat

end

end A332689.P1600476513786470231

/-! ## A332689.P9794149831448629482

`A000040(or(A352917(n+1), A352921(3*(n+1))))`
-/

namespace A332689.P9794149831448629482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor (A352917 (n + 1)) (A352921 (3 * (n + 1)))).toNat

end

end A332689.P9794149831448629482

/-!
# A332690: Sum of all numbers in bijective base-9 numeration with digit sum n.

The programs for A332690, there is no canonical definition to state claims against.
-/

/-! ## A332690.P321031499242707967

`floor(5^n/4)*A171181(2^n)`
-/

namespace A332690.P321031499242707967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ * A171181 (2 ^ n)

end

end A332690.P321031499242707967

/-! ## A332690.P15485918974152984612

`floor(5^n/4)*A074206(3^n)`
-/

namespace A332690.P15485918974152984612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ * A074206 (3 ^ n)

end

end A332690.P15485918974152984612

/-! ## A332690.P8221593105558249739

`floor(5^n/4)*A081134(round(2^(n-1)+3^(n-1)))`
-/

namespace A332690.P8221593105558249739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ * A081134 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A332690.P8221593105558249739

/-! ## A332690.P8755108356900255590

`floor(5^n/4)*A124731(A161680(n))`
-/

namespace A332690.P8755108356900255590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ * A124731 (A161680 n).toNat

end

end A332690.P8755108356900255590

/-! ## A332690.P4078088717701326044

`2^(n-1)*A003463(A004904(n+1))`
-/

namespace A332690.P4078088717701326044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A003463 (A004904 (n + 1)).toNat : ℚ)

end

end A332690.P4078088717701326044

/-!
# A332692: a(n) = n! * Laguerre(n, 2*n).

The programs for A332692, there is no canonical definition to state claims against.
-/

/-! ## A332692.P9521038730080483890

`A295381(A062725(n))`
-/

namespace A332692.P9521038730080483890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A062725 n).toNat

end

end A332692.P9521038730080483890

/-! ## A332692.P7478350313698281742

`A295381(A062728(n)-n)`
-/

namespace A332692.P7478350313698281742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A062728 n - (n : ℤ)).toNat

end

end A332692.P7478350313698281742

/-! ## A332692.P2877777287504982436

`A295381(A002943(n)+∑[n])`
-/

namespace A332692.P2877777287504982436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A002943 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A332692.P2877777287504982436

/-! ## A332692.P3224795709357084460

`A295381(A027379(n)+A016742(n))`
-/

namespace A332692.P3224795709357084460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A027379 n + A016742 n).toNat

end

end A332692.P3224795709357084460

/-! ## A332692.P7583048538030560732

`A295381(A055998(n)+A016742(n))`
-/

namespace A332692.P7583048538030560732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A055998 n + A016742 n).toNat

end

end A332692.P7583048538030560732

/-!
# A332693: a(n) = n! * Laguerre(n, 3*n).

The programs for A332693, there is no canonical definition to state claims against.
-/

/-! ## A332693.P12853461336530017300

`A295381(A139276(n))`
-/

namespace A332693.P12853461336530017300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A139276 n).toNat

end

end A332693.P12853461336530017300

/-! ## A332693.P1310308195534095725

`A295381(A033586(n)-n)`
-/

namespace A332693.P1310308195534095725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A033586 n - (n : ℤ)).toNat

end

end A332693.P1310308195534095725

/-! ## A332693.P14831801250847126658

`A295381(n*A017101(n))`
-/

namespace A332693.P14831801250847126658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 ((n : ℤ) * A017101 n).toNat

end

end A332693.P14831801250847126658

/-! ## A332693.P10759149969346084929

`A295381(2*A002943(n)-n)`
-/

namespace A332693.P10759149969346084929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (2 * A002943 n - (n : ℤ)).toNat

end

end A332693.P10759149969346084929

/-! ## A332693.P10752055775331118052

`A295381(A046092(2*n)-n)`
-/

namespace A332693.P10752055775331118052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A046092 (2 * n) - (n : ℤ)).toNat

end

end A332693.P10752055775331118052

/-!
# A332696: Sum of the proper divisors of n such that d, n/d and n-d are all squarefree.

The programs for A332696, there is no canonical definition to state claims against.
-/

/-! ## A332696.P4084630638372279818

`and(A050473(n+1), A196287(A133406(n+1)))`
-/

namespace A332696.P4084630638372279818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050473 (n + 1)) (A196287 (A133406 (n + 1)).toNat)

end

end A332696.P4084630638372279818

/-! ## A332696.P16202554158634928228

`and(A220522(A123065(n+1)), A325249(n+1))`
-/

namespace A332696.P16202554158634928228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220522 (A123065 (n + 1)).toNat) (A325249 (n + 1))

end

end A332696.P16202554158634928228

/-!
# A332697: a(n) = (n^4 + 5*n^3 + 11*n^2 + 7*n)/6.

The programs for A332697, the canonical program `A332697.P9898383746457771733` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332697 has offset 0).

The definition of A332697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332697.P9898383746457771733

`(5*n^3+11*n²+7*n+n^4)/6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332697

/-- `(5*n^3+11*n²+7*n+n^4)/6` -/
def P9898383746457771733.Spec : Prop :=
  ∀ n, P9898383746457771733.a n = (A332697 n : ℚ)

end A332697

/-! ## A332697.P6872290223930306869

`(n^4+5*n^3+11*n²+7*n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332697.P6872290223930306869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 5 * n ^ 3 + 11 * n ^ 2 + 7 * n : ℚ) / 6

end

end A332697.P6872290223930306869

namespace A332697

/-- `(n^4+5*n^3+11*n²+7*n)/6` -/
def P6872290223930306869.Spec : Prop :=
  ∀ n, P6872290223930306869.a n = (A332697 n : ℚ)

end A332697

/-! ## A332697.P14747547615548962434

`∑[∑[C(Δ[n²], 2)]+n]`
-/

namespace A332697.P14747547615548962434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332697.P14747547615548962434

namespace A332697

/-- `∑[∑[C(Δ[n²], 2)]+n]` -/
def P14747547615548962434.Spec : Prop :=
  ∀ n, (P14747547615548962434.a n : ℤ) = A332697 n

end A332697

/-! ## A332697.P1568656485568803281

`∑[n]+(n+2)*C(n+2, 3)`
-/

namespace A332697.P1568656485568803281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * Nat.choose (n + 2) 3

end

end A332697.P1568656485568803281

namespace A332697

/-- `∑[n]+(n+2)*C(n+2, 3)` -/
def P1568656485568803281.Spec : Prop :=
  ∀ n, (P1568656485568803281.a n : ℤ) = A332697 n

end A332697

/-! ## A332697.P5391321123255025844

`∑[∑[n*or(1, 2*n)]]+∑[n]`
-/

namespace A332697.P5391321123255025844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A332697.P5391321123255025844

namespace A332697

/-- `∑[∑[n*or(1, 2*n)]]+∑[n]` -/
def P5391321123255025844.Spec : Prop :=
  ∀ n, (P5391321123255025844.a n : ℤ) = A332697 n

end A332697

/-! ## A332697.P605154970773994097

`∑[∑[n*xor(1, 2*n)]]+∑[n]`
-/

namespace A332697.P605154970773994097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A332697.P605154970773994097

namespace A332697

/-- `∑[∑[n*xor(1, 2*n)]]+∑[n]` -/
def P605154970773994097.Spec : Prop :=
  ∀ n, (P605154970773994097.a n : ℤ) = A332697 n

end A332697

/-! ## A332697.P3642333910447767325

`∑[∑[∑[a(n-1)+4]]]-(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A332697.P3642333910447767325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A332697.P3642333910447767325

namespace A332697

/-- `∑[∑[∑[a(n-1)+4]]]-(n+1)` -/
def P3642333910447767325.Spec : Prop :=
  ∀ n, P3642333910447767325.a n = A332697 n

end A332697

/-! ## A332697.P38269047266217064

`(C(n+3, 3)+n+2)*(n-1)+n+3`
-/

namespace A332697.P38269047266217064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 + (n + 2) : ℤ) * ((n : ℤ) - 1) + (n + 3 : ℤ)

end

end A332697.P38269047266217064

namespace A332697

/-- `(C(n+3, 3)+n+2)*(n-1)+n+3` -/
def P38269047266217064.Spec : Prop :=
  ∀ n, P38269047266217064.a n = A332697 n

end A332697

/-! ## A332697.P8812960391709355911

`A004320(n)+∑[n]`
-/

namespace A332697.P8812960391709355911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332697.P8812960391709355911

namespace A332697

/-- `A004320(n)+∑[n]` -/
def P8812960391709355911.Spec : Prop :=
  ∀ n, P8812960391709355911.a n = A332697 n

end A332697

/-! ## A332697.P6584287250355432010

`∑[A016061(n)+n]`
-/

namespace A332697.P6584287250355432010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332697.P6584287250355432010

namespace A332697

/-- `∑[A016061(n)+n]` -/
def P6584287250355432010.Spec : Prop :=
  ∀ n, P6584287250355432010.a n = A332697 n

end A332697

/-! ## A332697.P660720300057902592

`∑[A174723(n+1)-1]`
-/

namespace A332697.P660720300057902592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332697.P660720300057902592

namespace A332697

/-- `∑[A174723(n+1)-1]` -/
def P660720300057902592.Spec : Prop :=
  ∀ n, P660720300057902592.a n = A332697 n

end A332697

/-! ## A332697.P17619753827883145422

`∑[∑[A000217(2*n)]]+∑[n]`
-/

namespace A332697.P17619753827883145422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A332697.P17619753827883145422

namespace A332697

/-- `∑[∑[A000217(2*n)]]+∑[n]` -/
def P17619753827883145422.Spec : Prop :=
  ∀ n, P17619753827883145422.a n = A332697 n

end A332697

/-! ## A332697.P11651055433355990365

`∑[∑[A014105(n)+1]]-(n+1)`
-/

namespace A332697.P11651055433355990365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A332697.P11651055433355990365

namespace A332697

/-- `∑[∑[A014105(n)+1]]-(n+1)` -/
def P11651055433355990365.Spec : Prop :=
  ∀ n, P11651055433355990365.a n = A332697 n

end A332697

/-! ## A332697.P15996447172796463259

`A071239(n)+A016061(n)`
-/

namespace A332697.P15996447172796463259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n + A016061 n

end

end A332697.P15996447172796463259

namespace A332697

/-- `A071239(n)+A016061(n)` -/
def P15996447172796463259.Spec : Prop :=
  ∀ n, P15996447172796463259.a n = A332697 n

end A332697

/-! ## A332697.P9023982536647131728

`A162148(n)+A008911(n)`
-/

namespace A332697.P9023982536647131728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A008911 n

end

end A332697.P9023982536647131728

namespace A332697

/-- `A162148(n)+A008911(n)` -/
def P9023982536647131728.Spec : Prop :=
  ∀ n, P9023982536647131728.a n = A332697 n

end A332697

/-! ## A332697.P1286083225586886095

`A147656(n)+A071244(n)`
-/

namespace A332697.P1286083225586886095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A071244 n

end

end A332697.P1286083225586886095

namespace A332697

/-- `A147656(n)+A071244(n)` -/
def P1286083225586886095.Spec : Prop :=
  ∀ n, P1286083225586886095.a n = A332697 n

end A332697

/-! ## A332697.P15365441160870846358

`A255211(n)+A006484(n)`
-/

namespace A332697.P15365441160870846358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n + A006484 n

end

end A332697.P15365441160870846358

namespace A332697

/-- `A255211(n)+A006484(n)` -/
def P15365441160870846358.Spec : Prop :=
  ∀ n, P15365441160870846358.a n = A332697 n

end A332697

/-! ## A332697.P13841590506208026164

`A257055(n)+A162147(n)`
-/

namespace A332697.P13841590506208026164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n + A162147 n

end

end A332697.P13841590506208026164

namespace A332697

/-- `A257055(n)+A162147(n)` -/
def P13841590506208026164.Spec : Prop :=
  ∀ n, P13841590506208026164.a n = A332697 n

end A332697

/-! ## A332697.P16243370682728602990

`A002417(n+1)-A167875(n)`
-/

namespace A332697.P16243370682728602990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) - A167875 n

end

end A332697.P16243370682728602990

namespace A332697

/-- `A002417(n+1)-A167875(n)` -/
def P16243370682728602990.Spec : Prop :=
  ∀ n, P16243370682728602990.a n = A332697 n

end A332697

/-! ## A332697.P16916722490931294794

`A132366(n)-A254749(n+1)`
-/

namespace A332697.P16916722490931294794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n - A254749 (n + 1)

end

end A332697.P16916722490931294794

namespace A332697

/-- `A132366(n)-A254749(n+1)` -/
def P16916722490931294794.Spec : Prop :=
  ∀ n, P16916722490931294794.a n = A332697 n

end A332697

/-!
# A332698: a(n) = (8*n^3 + 15*n^2 + 13*n)/6.

The programs for A332698, the canonical program `A332698.P15566740099388016085` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332698 has offset 0).

The definition of A332698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n^3+15*n²+13*n)/6` (program `A332698.P1950770895372549450`, by `A332698.P1950770895372549450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332698.P1950770895372549450

`(8*n^3+15*n²+13*n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332698.P1950770895372549450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 3 + 15 * n ^ 2 + 13 * n : ℚ) / 6

end

end A332698.P1950770895372549450

namespace A332698

/-- `(8*n^3+15*n²+13*n)/6` -/
def P1950770895372549450.Spec : Prop :=
  ∀ n, P1950770895372549450.a n = (A332698 n : ℚ)

theorem P1950770895372549450.correct : P1950770895372549450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A332698, Nat.add_sub_cancel, A332698.P1950770895372549450.a, A332698.P15566740099388016085.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A332698, Nat.add_sub_cancel, A332698.P1950770895372549450.a, A332698.P15566740099388016085.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A332698

/-! ## A332698.P15566740099388016085

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=25, a(3)=65`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332698

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15566740099388016085.Spec : Prop :=
  ∀ n, P15566740099388016085.a n = A332698 n

theorem P15566740099388016085.correct : P15566740099388016085.Spec := by
  intro n
  simp only [A332698]

end A332698

/-! ## A332698.P10257883551502359342

`A331987(n)+n`
-/

namespace A332698.P10257883551502359342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n + (n : ℤ)

end

end A332698.P10257883551502359342

namespace A332698

/-- `A331987(n)+n` -/
def P10257883551502359342.Spec : Prop :=
  ∀ n, P10257883551502359342.a n = A332698 n

end A332698

/-! ## A332698.P16827202993788501054

`∑[∑[a(n-1)+8]]-1` with `a(0)=1, a(1)=5`
-/

namespace A332698.P16827202993788501054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A332698.P16827202993788501054

namespace A332698

/-- `∑[∑[a(n-1)+8]]-1` -/
def P16827202993788501054.Spec : Prop :=
  ∀ n, P16827202993788501054.a n = A332698 n

end A332698

/-! ## A332698.P9069231770435875098

`(2*n)²+a(n-1)+n+1` with `a(0)=0`
-/

namespace A332698.P9069231770435875098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n) ^ 2 + (a (n - 1) + (n + 1))

end

end A332698.P9069231770435875098

namespace A332698

/-- `(2*n)²+a(n-1)+n+1` -/
def P9069231770435875098.Spec : Prop :=
  ∀ n, (P9069231770435875098.a n : ℤ) = A332698 n

end A332698

/-! ## A332698.P2610223897738487254

`a(n-1)+(2*n+1)*2*n-(n-1)` with `a(0)=0`
-/

namespace A332698.P2610223897738487254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((2 * n + 1) * (2 * n) : ℤ) - ((n : ℤ) - 1))

end

end A332698.P2610223897738487254

namespace A332698

/-- `a(n-1)+(2*n+1)*2*n-(n-1)` -/
def P2610223897738487254.Spec : Prop :=
  ∀ n, P2610223897738487254.a n = A332698 n

end A332698

/-! ## A332698.P3026253925007459282

`floor(A114254(n)/4)`
-/

namespace A332698.P3026253925007459282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114254 n : ℚ) / 4⌋

end

end A332698.P3026253925007459282

namespace A332698

/-- `floor(A114254(n)/4)` -/
def P3026253925007459282.Spec : Prop :=
  ∀ n, P3026253925007459282.a n = A332698 n

end A332698

/-! ## A332698.P2442686338006405915

`∑[A007742(n)]+n`
-/

namespace A332698.P2442686338006405915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A332698.P2442686338006405915

namespace A332698

/-- `∑[A007742(n)]+n` -/
def P2442686338006405915.Spec : Prop :=
  ∀ n, P2442686338006405915.a n = A332698 n

end A332698

/-! ## A332698.P16082928886639218690

`A050533(n)+∑[n]`
-/

namespace A332698.P16082928886639218690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332698.P16082928886639218690

namespace A332698

/-- `A050533(n)+∑[n]` -/
def P16082928886639218690.Spec : Prop :=
  ∀ n, P16082928886639218690.a n = A332698 n

end A332698

/-! ## A332698.P12512163844669386058

`∑[A033954(n)]-n²`
-/

namespace A332698.P12512163844669386058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A332698.P12512163844669386058

namespace A332698

/-- `∑[A033954(n)]-n²` -/
def P12512163844669386058.Spec : Prop :=
  ∀ n, P12512163844669386058.a n = A332698 n

end A332698

/-! ## A332698.P14809525498254242735

`∑[A054567(n+1)]-1`
-/

namespace A332698.P14809525498254242735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A332698.P14809525498254242735

namespace A332698

/-- `∑[A054567(n+1)]-1` -/
def P14809525498254242735.Spec : Prop :=
  ∀ n, P14809525498254242735.a n = A332698 n

end A332698

/-! ## A332698.P8043971498472526532

`∑[A005899(n)-1+n]`
-/

namespace A332698.P8043971498472526532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332698.P8043971498472526532

namespace A332698

/-- `∑[A005899(n)-1+n]` -/
def P8043971498472526532.Spec : Prop :=
  ∀ n, P8043971498472526532.a n = A332698 n

end A332698

/-! ## A332698.P11343064154361424424

`A200431(n+1)/4+n`
-/

namespace A332698.P11343064154361424424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200431 (n + 1) : ℚ) / 4 + (n : ℚ)

end

end A332698.P11343064154361424424

namespace A332698

/-- `A200431(n+1)/4+n` -/
def P11343064154361424424.Spec : Prop :=
  ∀ n, P11343064154361424424.a n = (A332698 n : ℚ)

end A332698

/-! ## A332698.P2501060232334757694

`∑[∑[A086570(n)+1]-2]`
-/

namespace A332698.P2501060232334757694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332698.P2501060232334757694

namespace A332698

/-- `∑[∑[A086570(n)+1]-2]` -/
def P2501060232334757694.Spec : Prop :=
  ∀ n, P2501060232334757694.a n = A332698 n

end A332698

/-! ## A332698.P1811332814053545560

`∑[xor(1, A004277(n)²)+n]`
-/

namespace A332698.P1811332814053545560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004277 n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332698.P1811332814053545560

namespace A332698

/-- `∑[xor(1, A004277(n)²)+n]` -/
def P1811332814053545560.Spec : Prop :=
  ∀ n, P1811332814053545560.a n = A332698 n

end A332698

/-! ## A332698.P2990774451033384283

`A177342(n+1)-∑[n+1]`
-/

namespace A332698.P2990774451033384283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177342 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332698.P2990774451033384283

namespace A332698

/-- `A177342(n+1)-∑[n+1]` -/
def P2990774451033384283.Spec : Prop :=
  ∀ n, P2990774451033384283.a n = A332698 n

end A332698

/-! ## A332698.P11436805249125107337

`∑[A296363(n+1)/(n+2)]`
-/

namespace A332698.P11436805249125107337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296363 (n + 1) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332698.P11436805249125107337

namespace A332698

/-- `∑[A296363(n+1)/(n+2)]` -/
def P11436805249125107337.Spec : Prop :=
  ∀ n, P11436805249125107337.a n = (A332698 n : ℚ)

end A332698

/-! ## A332698.P9136162277790662018

`A002492(n)+A000096(n)`
-/

namespace A332698.P9136162277790662018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + A000096 n

end

end A332698.P9136162277790662018

namespace A332698

/-- `A002492(n)+A000096(n)` -/
def P9136162277790662018.Spec : Prop :=
  ∀ n, P9136162277790662018.a n = A332698 n

end A332698

/-! ## A332698.P16440864993904575274

`A014106(n)+A007585(n)`
-/

namespace A332698.P16440864993904575274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + A007585 n

end

end A332698.P16440864993904575274

namespace A332698

/-- `A014106(n)+A007585(n)` -/
def P16440864993904575274.Spec : Prop :=
  ∀ n, P16440864993904575274.a n = A332698 n

end A332698

/-! ## A332698.P12775852659370249305

`A028895(n)+A000447(n)`
-/

namespace A332698.P12775852659370249305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + A000447 n

end

end A332698.P12775852659370249305

namespace A332698

/-- `A028895(n)+A000447(n)` -/
def P12775852659370249305.Spec : Prop :=
  ∀ n, P12775852659370249305.a n = A332698 n

end A332698

/-!
# A332699: First row of A332662, also main diagonal of A332667.

The programs for A332699, there is no canonical definition to state claims against.
-/

/-! ## A332699.P7401269471332852174

`∑[n*char[∑[n]]]+n`
-/

namespace A332699.P7401269471332852174
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A332699.P7401269471332852174

/-! ## A332699.P6691275893800566349

`∑[ceil(sqrt(∑[2*n]))^ceil(char[∑[n]]*acot(n))]`
-/

namespace A332699.P6691275893800566349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉ : ℚ) ^ (⌈((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332699.P6691275893800566349

/-! ## A332699.P4086559798915934759

`∑[C(ceil(sqrt(∑[2*n])), ceil(char[∑[n]]*acot(n)))]`
-/

namespace A332699.P4086559798915934759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉.toNat ⌈((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332699.P4086559798915934759

/-! ## A332699.P5202729108851017258

`(C(comp[∑[n]]-n, 3)+n)%(2*n+1)²`
-/

namespace A332699.P5202729108851017258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 3 + n) % (2 * n + 1) ^ 2

end

end A332699.P5202729108851017258

/-! ## A332699.P17328749413880716405

`eq[0, A056559(n)]`
-/

namespace A332699.P17328749413880716405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332699.P17328749413880716405

/-! ## A332699.P8579452525866201978

`lt[2, p?[A254338(n+1)]]`
-/

namespace A332699.P8579452525866201978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332699.P8579452525866201978

/-! ## A332699.P15820342007885429177

`∑[C(n+1, A073423(n))]`
-/

namespace A332699.P15820342007885429177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A073423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332699.P15820342007885429177

/-! ## A332699.P1542629270016303187

`eq[0, A332662(2*n+1)]`
-/

namespace A332699.P1542629270016303187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332699.P1542629270016303187

/-! ## A332699.P14002192327266110889

`∑[(n+1)%A066182(n+1)]`
-/

namespace A332699.P14002192327266110889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A066182 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332699.P14002192327266110889

/-! ## A332699.P15999290631715478314

`eq[A056556(n), A056557(n)]`
-/

namespace A332699.P15999290631715478314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332699.P15999290631715478314

