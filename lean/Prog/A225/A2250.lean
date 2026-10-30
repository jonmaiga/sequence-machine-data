import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A225004: a(n) is the largest multiple of n with fewer than twice as many divisors as n.

The programs for A225004, there is no canonical definition to state claims against.
-/

/-! ## A225004.P13802059215917384959

`(n+1)*(A106708(A322320(n+1))+A034699(n+1))`
-/

namespace A225004.P13802059215917384959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A106708 (A322320 (n + 1)).toNat + A034699 (n + 1))

end

end A225004.P13802059215917384959

/-! ## A225004.P15521499667061532499

`(n+1)*(A106708(A270000(n+2))+A034699(n+1))`
-/

namespace A225004.P15521499667061532499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A106708 (A270000 (n + 2)).toNat + A034699 (n + 1))

end

end A225004.P15521499667061532499

/-! ## A225004.P7295187710285872682

`A034699(n+1)*A095201(2*n+3)`
-/

namespace A225004.P7295187710285872682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) * A095201 (2 * n + 3)

end

end A225004.P7295187710285872682

/-! ## A225004.P7268690967483502606

`((n+1)*A034699(n+1))%A034698(n+1)`
-/

namespace A225004.P7268690967483502606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A034699 (n + 1)) (A034698 (n + 1))

end

end A225004.P7268690967483502606

/-! ## A225004.P2654994441539543953

`(n+1)*A305325(A336816(A034699(n+1)))`
-/

namespace A225004.P2654994441539543953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305325 (A336816 (A034699 (n + 1)).toNat).toNat

end

end A225004.P2654994441539543953

/-!
# A225005: Number of Carmichael numbers (A002997) less than 2^n.

The programs for A225005, there is no canonical definition to state claims against.
-/

/-! ## A225005.P11306508531256563500

`∑[A182490(C(2, n)+n)]`
-/

namespace A225005.P11306508531256563500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225005.P11306508531256563500

/-! ## A225005.P10916692489077450220

`A182490(n)+a(n-1)` with `a(0)=0`
-/

namespace A225005.P10916692489077450220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182490 n + a (n - 1)

end

end A225005.P10916692489077450220

/-! ## A225005.P2330973656578079037

`∑[A182490(abs(1-n)+1)]`
-/

namespace A225005.P2330973656578079037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225005.P2330973656578079037

/-! ## A225005.P10752375755948416

`∑[A182490(A065033(2*n))]%(3^n)`
-/

namespace A225005.P10752375755948416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (3 ^ n : ℤ)

end

end A225005.P10752375755948416

/-! ## A225005.P17349207544182591032

`A000007(n+1)+∑[A182490(A065033(2*n))]`
-/

namespace A225005.P17349207544182591032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225005.P17349207544182591032

/-! ## A225005.P15179155804757111068

`∑[A182490(A065033(2*n))%A145297(n+1)]`
-/

namespace A225005.P15179155804757111068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182490 (A065033 (2 * n)).toNat) (A145297 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225005.P15179155804757111068

/-! ## A225005.P7727931244798972943

`A062157(n)^n*∑[A182490(A065033(2*n))]`
-/

namespace A225005.P7727931244798972943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225005.P7727931244798972943

/-! ## A225005.P12019372871993146883

`∑[A182490(n+1)]-A182490(n+1)`
-/

namespace A225005.P12019372871993146883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182490 (n + 1)

end

end A225005.P12019372871993146883

/-!
# A225006: Number of n X n 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225006, the canonical program `A225006.P11560316330843326122` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225006 has offset 0).

The definition of A225006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225006.P11560316330843326122

`∑{#}[n, (-2)^#*C(3*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225006

/-- `∑{#}[n, (-2)^#*C(3*n+#+1, n-#)]` -/
def P11560316330843326122.Spec : Prop :=
  ∀ n, P11560316330843326122.a n = A225006 n

theorem P11560316330843326122.correct : P11560316330843326122.Spec := by
  intro n
  simp only [A225006]

end A225006

/-! ## A225006.P9145815313210787910

`A071922(∑[4*n])`
-/

namespace A225006.P9145815313210787910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225006.P9145815313210787910

namespace A225006

/-- `A071922(∑[4*n])` -/
def P9145815313210787910.Spec : Prop :=
  ∀ n, P9145815313210787910.a n = A225006 n

end A225006

/-! ## A225006.P16297534081582214159

`A210219(A028310(2*n²))`
-/

namespace A225006.P16297534081582214159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A028310 (2 * n ^ 2)).toNat

end

end A225006.P16297534081582214159

namespace A225006

/-- `A210219(A028310(2*n²))` -/
def P16297534081582214159.Spec : Prop :=
  ∀ n, P16297534081582214159.a n = A225006 n

end A225006

/-! ## A225006.P3416138030599662561

`A210219(n²+A028310(n²))`
-/

namespace A225006.P3416138030599662561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A225006.P3416138030599662561

namespace A225006

/-- `A210219(n²+A028310(n²))` -/
def P3416138030599662561.Spec : Prop :=
  ∀ n, P3416138030599662561.a n = A225006 n

end A225006

/-! ## A225006.P7419185824705480587

`A210219(A028310(2*n)*A028310(n))`
-/

namespace A225006.P7419185824705480587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A028310 (2 * n) * A028310 n).toNat

end

end A225006.P7419185824705480587

namespace A225006

/-- `A210219(A028310(2*n)*A028310(n))` -/
def P7419185824705480587.Spec : Prop :=
  ∀ n, P7419185824705480587.a n = A225006 n

end A225006

/-! ## A225006.P11092964318329498331

`A071921((n+1)*(2*n+1)+n)`
-/

namespace A225006.P11092964318329498331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 ((n + 1) * (2 * n + 1) + n)

end

end A225006.P11092964318329498331

namespace A225006

/-- `A071921((n+1)*(2*n+1)+n)` -/
def P11092964318329498331.Spec : Prop :=
  ∀ n, P11092964318329498331.a n = A225006 n

end A225006

/-!
# A225007: Number of n X 5 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225007, the canonical program `A225007.P9213276259308995054` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225007 has offset 0).

The definition of A225007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225007.P9213276259308995054

`ogf((1+10x+5x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225007

/-- `ogf((1+10x+5x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P9213276259308995054.Spec : Prop :=
  ∀ n, P9213276259308995054.a n = A225007 n

theorem P9213276259308995054.correct : P9213276259308995054.Spec := by
  intro n
  simp only [A225007]

end A225007

/-! ## A225007.P6816310445061488669

`∑[C(2*(n+2), 4)]`
-/

namespace A225007.P6816310445061488669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225007.P6816310445061488669

namespace A225007

/-- `∑[C(2*(n+2), 4)]` -/
def P6816310445061488669.Spec : Prop :=
  ∀ n, (P6816310445061488669.a n : ℤ) = A225007 n

end A225007

/-! ## A225007.P6235952686470509646

`∑[∑[(n+1)²]*Δ[n²]]`
-/

namespace A225007.P6235952686470509646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225007.P6235952686470509646

namespace A225007

/-- `∑[∑[(n+1)²]*Δ[n²]]` -/
def P6235952686470509646.Spec : Prop :=
  ∀ n, P6235952686470509646.a n = A225007 n

end A225007

/-! ## A225007.P5566107806601119111

`a(n-1)+C(2*(n+2), 4)` with `a(0)=1`
-/

namespace A225007.P5566107806601119111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * (n + 2)) 4

end

end A225007.P5566107806601119111

namespace A225007

/-- `a(n-1)+C(2*(n+2), 4)` -/
def P5566107806601119111.Spec : Prop :=
  ∀ n, (P5566107806601119111.a n : ℤ) = A225007 n

end A225007

/-! ## A225007.P16100653371210515692

`a(n-1)+(2*n+1)*∑[(n+1)²]` with `a(0)=1`
-/

namespace A225007.P16100653371210515692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225007.P16100653371210515692

namespace A225007

/-- `a(n-1)+(2*n+1)*∑[(n+1)²]` -/
def P16100653371210515692.Spec : Prop :=
  ∀ n, (P16100653371210515692.a n : ℤ) = A225007 n

end A225007

/-! ## A225007.P16399871170075827460

`A051880(n)+A051843(n)`
-/

namespace A225007.P16399871170075827460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n + A051843 n

end

end A225007.P16399871170075827460

namespace A225007

/-- `A051880(n)+A051843(n)` -/
def P16399871170075827460.Spec : Prop :=
  ∀ n, P16399871170075827460.a n = A225007 n

end A225007

/-! ## A225007.P3295843780905395938

`A271870(n)+A033488(n)`
-/

namespace A225007.P3295843780905395938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n + A033488 n

end

end A225007.P3295843780905395938

namespace A225007

/-- `A271870(n)+A033488(n)` -/
def P3295843780905395938.Spec : Prop :=
  ∀ n, P3295843780905395938.a n = A225007 n

end A225007

/-! ## A225007.P13204561767575170402

`A108650(n)+∑[A005582(n)]`
-/

namespace A225007.P13204561767575170402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225007.P13204561767575170402

namespace A225007

/-- `A108650(n)+∑[A005582(n)]` -/
def P13204561767575170402.Spec : Prop :=
  ∀ n, P13204561767575170402.a n = A225007 n

end A225007

/-! ## A225007.P1246102545341600353

`A085461(n+1)+A004320(n)`
-/

namespace A225007.P1246102545341600353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + A004320 n

end

end A225007.P1246102545341600353

namespace A225007

/-- `A085461(n+1)+A004320(n)` -/
def P1246102545341600353.Spec : Prop :=
  ∀ n, P1246102545341600353.a n = A225007 n

end A225007

/-! ## A225007.P16735877017180637503

`A213556(n+1)-A004256(n)`
-/

namespace A225007.P16735877017180637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - A004256 n

end

end A225007.P16735877017180637503

namespace A225007

/-- `A213556(n+1)-A004256(n)` -/
def P16735877017180637503.Spec : Prop :=
  ∀ n, P16735877017180637503.a n = A225007 n

end A225007

/-! ## A225007.P9337255800569861118

`A027800(n)+A056118(n)-A002419(n+1)`
-/

namespace A225007.P9337255800569861118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A056118 n - A002419 (n + 1))

end

end A225007.P9337255800569861118

namespace A225007

/-- `A027800(n)+A056118(n)-A002419(n+1)` -/
def P9337255800569861118.Spec : Prop :=
  ∀ n, P9337255800569861118.a n = A225007 n

end A225007

/-! ## A225007.P17408178997922960414

`A034263(n)+A271567(n)-A002419(n+1)`
-/

namespace A225007.P17408178997922960414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A271567 n - A002419 (n + 1))

end

end A225007.P17408178997922960414

namespace A225007

/-- `A034263(n)+A271567(n)-A002419(n+1)` -/
def P17408178997922960414.Spec : Prop :=
  ∀ n, P17408178997922960414.a n = A225007 n

end A225007

/-! ## A225007.P11485557947102484505

`A277229(n+1)+A277229(n+1)-A000292(n+1)`
-/

namespace A225007.P11485557947102484505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (n + 1) + (A277229 (n + 1) - A000292 (n + 1))

end

end A225007.P11485557947102484505

namespace A225007

/-- `A277229(n+1)+A277229(n+1)-A000292(n+1)` -/
def P11485557947102484505.Spec : Prop :=
  ∀ n, P11485557947102484505.a n = A225007 n

end A225007

/-! ## A225007.P4091738696114606813

`A001753(2*n)`
-/

namespace A225007.P4091738696114606813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n)

end

end A225007.P4091738696114606813

namespace A225007

/-- `A001753(2*n)` -/
def P4091738696114606813.Spec : Prop :=
  ∀ n, P4091738696114606813.a n = A225007 n

end A225007

/-! ## A225007.P1539915117373826419

`record[A001753(A129760(n+1))]`
-/

namespace A225007.P1539915117373826419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225007.P1539915117373826419

namespace A225007

/-- `record[A001753(A129760(n+1))]` -/
def P1539915117373826419.Spec : Prop :=
  ∀ n, P1539915117373826419.a n = A225007 n

end A225007

/-! ## A225007.P7162574800618568098

`A000583(n+1)+∑[A000332(2*n+1)]`
-/

namespace A225007.P7162574800618568098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225007.P7162574800618568098

namespace A225007

/-- `A000583(n+1)+∑[A000332(2*n+1)]` -/
def P7162574800618568098.Spec : Prop :=
  ∀ n, P7162574800618568098.a n = A225007 n

end A225007

/-!
# A225008: Number of n X 6 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225008, the canonical program `A225008.P6431842502174487291` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225008 has offset 1).

The definition of A225008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225008.P6431842502174487291

`∑[C(1+2*(n+3), 5)]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225008

/-- `∑[C(1+2*(n+3), 5)]+1` -/
def P6431842502174487291.Spec : Prop :=
  ∀ n, (P6431842502174487291.a n : ℤ) = A225008 (n + 1)

theorem P6431842502174487291.correct : P6431842502174487291.Spec := by
  intro n
  simp only [A225008, Nat.add_sub_cancel]

end A225008

/-! ## A225008.P3234672498211358913

`ogf((22-6x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A225008.P3234672498211358913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, -6, 36, -35, 21, -7, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A225008.P3234672498211358913

namespace A225008

/-- `ogf((22-6x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3234672498211358913.Spec : Prop :=
  ∀ n, P3234672498211358913.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P6087258311855471912

`A228463(n+1)-A053126(n+4)`
-/

namespace A225008.P6087258311855471912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228463 (n + 1) - A053126 (n + 4)

end

end A225008.P6087258311855471912

namespace A225008

/-- `A228463(n+1)-A053126(n+4)` -/
def P6087258311855471912.Spec : Prop :=
  ∀ n, P6087258311855471912.a n = A225008 (n + 1)

theorem P6087258311855471912.correct : P6087258311855471912.Spec := by
  intro n
  simp only [A225008, Nat.add_sub_cancel, A225008.P6087258311855471912.a, A225008.P6431842502174487291.f1, A225008.P6431842502174487291.a, A053126, A053126.P6185349873871692043.a, A228463, A228463.P17573629568626594097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225008

/-! ## A225008.P15505631697779674866

`∑[A002299(n+1)]+1`
-/

namespace A225008.P15505631697779674866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225008.P15505631697779674866

namespace A225008

/-- `∑[A002299(n+1)]+1` -/
def P15505631697779674866.Spec : Prop :=
  ∀ n, P15505631697779674866.a n = A225008 (n + 1)

theorem P15505631697779674866.correct : P15505631697779674866.Spec := by
  intro n
  simp only [A225008, Nat.add_sub_cancel, A225008.P15505631697779674866.f1, A225008.P15505631697779674866.a, A225008.P6431842502174487291.f1, A225008.P6431842502174487291.a, A002299, A002299.P11477607172706309717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225008

/-! ## A225008.P8933118540453488657

`A001769(2*(n+1))`
-/

namespace A225008.P8933118540453488657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (2 * (n + 1))

end

end A225008.P8933118540453488657

namespace A225008

/-- `A001769(2*(n+1))` -/
def P8933118540453488657.Spec : Prop :=
  ∀ n, P8933118540453488657.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P16107597695604753734

`record[A001769(xor(1, n)+1)]`
-/

namespace A225008.P16107597695604753734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225008.P16107597695604753734

namespace A225008

/-- `record[A001769(xor(1, n)+1)]` -/
def P16107597695604753734.Spec : Prop :=
  ∀ n, P16107597695604753734.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P17293898121889815663

`record[A001769(abs(2*(1-n)))]`
-/

namespace A225008.P17293898121889815663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225008.P17293898121889815663

namespace A225008

/-- `record[A001769(abs(2*(1-n)))]` -/
def P17293898121889815663.Spec : Prop :=
  ∀ n, P17293898121889815663.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P6577236279332643743

`∑[A062988(2*n+1)]+n+2`
-/

namespace A225008.P6577236279332643743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A225008.P6577236279332643743

namespace A225008

/-- `∑[A062988(2*n+1)]+n+2` -/
def P6577236279332643743.Spec : Prop :=
  ∀ n, P6577236279332643743.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P10388037715799950973

`A001769(Δ[n²]+1)+A000007(n+1)`
-/

namespace A225008.P10388037715799950973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + A000007 (n + 1)

end

end A225008.P10388037715799950973

namespace A225008

/-- `A001769(Δ[n²]+1)+A000007(n+1)` -/
def P10388037715799950973.Spec : Prop :=
  ∀ n, P10388037715799950973.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P15886331675904487501

`A001769(2*n)-Δ[-A001769(2*n)]`
-/

namespace A225008.P15886331675904487501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001769 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (2 * n) - (f1 (n + 1) - f1 n)

end

end A225008.P15886331675904487501

namespace A225008

/-- `A001769(2*n)-Δ[-A001769(2*n)]` -/
def P15886331675904487501.Spec : Prop :=
  ∀ n, P15886331675904487501.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P1580312864145272779

`A001779(2*(n+1))-A001779(2*n+1)`
-/

namespace A225008.P1580312864145272779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (2 * (n + 1)) - A001779 (2 * n + 1)

end

end A225008.P1580312864145272779

namespace A225008

/-- `A001779(2*(n+1))-A001779(2*n+1)` -/
def P1580312864145272779.Spec : Prop :=
  ∀ n, P1580312864145272779.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P2096283085792784023

`A299335(2*n+1)+A299335(2*(n+1))`
-/

namespace A225008.P2096283085792784023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * n + 1) + A299335 (2 * (n + 1))

end

end A225008.P2096283085792784023

namespace A225008

/-- `A299335(2*n+1)+A299335(2*(n+1))` -/
def P2096283085792784023.Spec : Prop :=
  ∀ n, P2096283085792784023.a n = A225008 (n + 1)

end A225008

/-! ## A225008.P14816293761464576369

`∑[A000389(2*n+7)]+1`
-/

namespace A225008.P14816293761464576369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225008.P14816293761464576369

namespace A225008

/-- `∑[A000389(2*n+7)]+1` -/
def P14816293761464576369.Spec : Prop :=
  ∀ n, P14816293761464576369.a n = A225008 (n + 1)

theorem P14816293761464576369.correct : P14816293761464576369.Spec := by
  intro n
  simp only [A225008, Nat.add_sub_cancel, A225008.P14816293761464576369.f1, A225008.P14816293761464576369.a, A225008.P6431842502174487291.f1, A225008.P6431842502174487291.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225008

/-! ## A225008.P2158665270273687165

`A027939(n+4)-∑[A027955(n+3)]`
-/

namespace A225008.P2158665270273687165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027955 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027939 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225008.P2158665270273687165

namespace A225008

/-- `A027939(n+4)-∑[A027955(n+3)]` -/
def P2158665270273687165.Spec : Prop :=
  ∀ n, P2158665270273687165.a n = A225008 (n + 1)

end A225008

/-!
# A225009: Number of n X 7 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225009, the canonical program `A225009.P5914541179552531209` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225009 has offset 1).

The definition of A225009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225009.P5914541179552531209

`∑[C(2*(n+4), 6)]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225009

/-- `∑[C(2*(n+4), 6)]+1` -/
def P5914541179552531209.Spec : Prop :=
  ∀ n, (P5914541179552531209.a n : ℤ) = A225009 (n + 1)

theorem P5914541179552531209.correct : P5914541179552531209.Spec := by
  intro n
  simp only [A225009, Nat.add_sub_cancel]

end A225009

/-! ## A225009.P8452622377460993903

`ogf((29+7x+63x^2-70x^3+56x^4-28x^5+8x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A225009.P8452622377460993903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [29, 7, 63, -70, 56, -28, 8, -1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A225009.P8452622377460993903

namespace A225009

/-- `ogf((29+7x+63x^2-70x^3+56x^4-28x^5+8x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P8452622377460993903.Spec : Prop :=
  ∀ n, P8452622377460993903.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P623698622915691250

`∑[A053135(n+1)]+1`
-/

namespace A225009.P623698622915691250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225009.P623698622915691250

namespace A225009

/-- `∑[A053135(n+1)]+1` -/
def P623698622915691250.Spec : Prop :=
  ∀ n, P623698622915691250.a n = A225009 (n + 1)

theorem P623698622915691250.correct : P623698622915691250.Spec := by
  intro n
  simp only [A225009, Nat.add_sub_cancel, A225009.P623698622915691250.f1, A225009.P623698622915691250.a, A225009.P5914541179552531209.f1, A225009.P5914541179552531209.a, A053135, A053135.P5923564777890141982.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225009

/-! ## A225009.P15415940393360110958

`A001779(2*(n+1))`
-/

namespace A225009.P15415940393360110958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (2 * (n + 1))

end

end A225009.P15415940393360110958

namespace A225009

/-- `A001779(2*(n+1))` -/
def P15415940393360110958.Spec : Prop :=
  ∀ n, P15415940393360110958.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P10359625036931872627

`record[A001779(and(n, n+1)+2)]`
-/

namespace A225009.P10359625036931872627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225009.P10359625036931872627

namespace A225009

/-- `record[A001779(and(n, n+1)+2)]` -/
def P10359625036931872627.Spec : Prop :=
  ∀ n, P10359625036931872627.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P15359894523435661754

`record[A001779(A000265(n+1)+1)]`
-/

namespace A225009.P15359894523435661754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225009.P15359894523435661754

namespace A225009

/-- `record[A001779(A000265(n+1)+1)]` -/
def P15359894523435661754.Spec : Prop :=
  ∀ n, P15359894523435661754.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P11513852955053214544

`or(A000007(n), A001779(n+2+n))`
-/

namespace A225009.P11513852955053214544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001779 (n + 2 + n))

end

end A225009.P11513852955053214544

namespace A225009

/-- `or(A000007(n), A001779(n+2+n))` -/
def P11513852955053214544.Spec : Prop :=
  ∀ n, P11513852955053214544.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P18215852222510557058

`A001780(2*(n+1))-A001780(2*n+1)`
-/

namespace A225009.P18215852222510557058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 (2 * (n + 1)) - A001780 (2 * n + 1)

end

end A225009.P18215852222510557058

namespace A225009

/-- `A001780(2*(n+1))-A001780(2*n+1)` -/
def P18215852222510557058.Spec : Prop :=
  ∀ n, P18215852222510557058.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P17127716727007492178

`∑[A000579(2*(n+4))]+1`
-/

namespace A225009.P17127716727007492178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (2 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225009.P17127716727007492178

namespace A225009

/-- `∑[A000579(2*(n+4))]+1` -/
def P17127716727007492178.Spec : Prop :=
  ∀ n, P17127716727007492178.a n = A225009 (n + 1)

theorem P17127716727007492178.correct : P17127716727007492178.Spec := by
  intro n
  simp only [A225009, Nat.add_sub_cancel, A225009.P17127716727007492178.f1, A225009.P17127716727007492178.a, A225009.P5914541179552531209.f1, A225009.P5914541179552531209.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225009

/-! ## A225009.P12264940423787809841

`∑[A299338(4*(n+1))]+1`
-/

namespace A225009.P12264940423787809841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225009.P12264940423787809841

namespace A225009

/-- `∑[A299338(4*(n+1))]+1` -/
def P12264940423787809841.Spec : Prop :=
  ∀ n, P12264940423787809841.a n = A225009 (n + 1)

end A225009

/-! ## A225009.P7206793750696244625

`A225010(A055999(n+4))`
-/

namespace A225009.P7206793750696244625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A055999 (n + 4)).toNat

end

end A225009.P7206793750696244625

namespace A225009

/-- `A225010(A055999(n+4))` -/
def P7206793750696244625.Spec : Prop :=
  ∀ n, P7206793750696244625.a n = A225009 (n + 1)

end A225009

/-!
# A225010: T(n,k) = number of n X k 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225010, the canonical program `A225010.P9584022032620874307` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225010 has offset 1).

The definition of A225010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225010.P9584022032620874307

`A210219(A099375(n)+1+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225010

/-- `A210219(A099375(n)+1+n)` -/
def P9584022032620874307.Spec : Prop :=
  ∀ n, P9584022032620874307.a n = A225010 (n + 1)

theorem P9584022032620874307.correct : P9584022032620874307.Spec := by
  intro n
  simp only [A225010, Nat.add_sub_cancel]

end A225010

/-! ## A225010.P892589583615902020

`A210219(A114327(n)+∑[A035214(n)])`
-/

namespace A225010.P892589583615902020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225010.P892589583615902020

namespace A225010

/-- `A210219(A114327(n)+∑[A035214(n)])` -/
def P892589583615902020.Spec : Prop :=
  ∀ n, P892589583615902020.a n = A225010 (n + 1)

end A225010

/-! ## A225010.P11820787927262704735

`A210219(A114327(n)+A014132(n+1))`
-/

namespace A225010.P11820787927262704735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A114327 n + A014132 (n + 1)).toNat

end

end A225010.P11820787927262704735

namespace A225010

/-- `A210219(A114327(n)+A014132(n+1))` -/
def P11820787927262704735.Spec : Prop :=
  ∀ n, P11820787927262704735.a n = A225010 (n + 1)

end A225010

/-! ## A225010.P10241663343498041101

`A210219(A038722(n+1)+A002024(n+1))`
-/

namespace A225010.P10241663343498041101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A225010.P10241663343498041101

namespace A225010

/-- `A210219(A038722(n+1)+A002024(n+1))` -/
def P10241663343498041101.Spec : Prop :=
  ∀ n, P10241663343498041101.a n = A225010 (n + 1)

end A225010

/-! ## A225010.P4182366606048355058

`A210219(A140978(n+1)-A014132(n+1))`
-/

namespace A225010.P4182366606048355058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A140978 (n + 1) - A014132 (n + 1)).toNat

end

end A225010.P4182366606048355058

namespace A225010

/-- `A210219(A140978(n+1)-A014132(n+1))` -/
def P4182366606048355058.Spec : Prop :=
  ∀ n, P4182366606048355058.a n = A225010 (n + 1)

end A225010

/-! ## A225010.P9727073052612326743

`A071922(A140978(n+1)-n)`
-/

namespace A225010.P9727073052612326743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A225010.P9727073052612326743

namespace A225010

/-- `A071922(A140978(n+1)-n)` -/
def P9727073052612326743.Spec : Prop :=
  ∀ n, P9727073052612326743.a n = A225010 (n + 1)

end A225010

/-!
# A225011: Number of 4 X n 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225011, the canonical program `A225011.P12950675675901805526` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225011 has offset 1).

The definition of A225011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225011.P12950675675901805526

`C(n+8, 8)+∑[∑[∑[∑[∑[n+1]+1]]+1]]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225011

/-- `C(n+8, 8)+∑[∑[∑[∑[∑[n+1]+1]]+1]]+1` -/
def P12950675675901805526.Spec : Prop :=
  ∀ n, (P12950675675901805526.a n : ℤ) = A225011 (n + 1)

theorem P12950675675901805526.correct : P12950675675901805526.Spec := by
  intro n
  simp only [A225011, Nat.add_sub_cancel]

end A225011

/-! ## A225011.P10537421662840027355

`∑[∑[A223659(n+1)]]+1`
-/

namespace A225011.P10537421662840027355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225011.P10537421662840027355

namespace A225011

/-- `∑[∑[A223659(n+1)]]+1` -/
def P10537421662840027355.Spec : Prop :=
  ∀ n, P10537421662840027355.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P8686681154383652159

`∑[∑[∑[A257890(n)]+1]]+1`
-/

namespace A225011.P8686681154383652159
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225011.P8686681154383652159

namespace A225011

/-- `∑[∑[∑[A257890(n)]+1]]+1` -/
def P8686681154383652159.Spec : Prop :=
  ∀ n, P8686681154383652159.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P13764519585612337105

`A225012(n+1)-A001287(n)`
-/

namespace A225011.P13764519585612337105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1) - A001287 (n + 10)

end

end A225011.P13764519585612337105

namespace A225011

/-- `A225012(n+1)-A001287(n)` -/
def P13764519585612337105.Spec : Prop :=
  ∀ n, P13764519585612337105.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P15312301373811111850

`A223659(n+1)+A165618(n)+1`
-/

namespace A225011.P15312301373811111850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + (A165618 n + 1)

end

end A225011.P15312301373811111850

namespace A225011

/-- `A223659(n+1)+A165618(n)+1` -/
def P15312301373811111850.Spec : Prop :=
  ∀ n, P15312301373811111850.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P11222866589696482632

`A223659(n+1)+A000581(n+8)`
-/

namespace A225011.P11222866589696482632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + A000581 (n + 8)

end

end A225011.P11222866589696482632

namespace A225011

/-- `A223659(n+1)+A000581(n+8)` -/
def P11222866589696482632.Spec : Prop :=
  ∀ n, P11222866589696482632.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P15436830451053617148

`A000581(n+8)+sqrt(A223756(n+1))`
-/

namespace A225011.P15436830451053617148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℝ) + Real.sqrt (A223756 (n + 1) : ℝ)

end

end A225011.P15436830451053617148

namespace A225011

/-- `A000581(n+8)+sqrt(A223756(n+1))` -/
def P15436830451053617148.Spec : Prop :=
  ∀ n, P15436830451053617148.a n = (A225011 (n + 1) : ℝ)

end A225011

/-! ## A225011.P10476037021884158015

`A225012(n+1)-∑[A000582(n+9)]`
-/

namespace A225011.P10476037021884158015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225011.P10476037021884158015

namespace A225011

/-- `A225012(n+1)-∑[A000582(n+9)]` -/
def P10476037021884158015.Spec : Prop :=
  ∀ n, P10476037021884158015.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P9646431209654655413

`A225010(A167614(n+2)+1)`
-/

namespace A225011.P9646431209654655413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A167614 (n + 2) + 1).toNat

end

end A225011.P9646431209654655413

namespace A225011

/-- `A225010(A167614(n+2)+1)` -/
def P9646431209654655413.Spec : Prop :=
  ∀ n, P9646431209654655413.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P3491368990342984643

`A071920(A055999(n+4))`
-/

namespace A225011.P3491368990342984643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (A055999 (n + 4)).toNat

end

end A225011.P3491368990342984643

namespace A225011

/-- `A071920(A055999(n+4))` -/
def P3491368990342984643.Spec : Prop :=
  ∀ n, P3491368990342984643.a n = A225011 (n + 1)

end A225011

/-! ## A225011.P5224033341837525900

`A071920(A000124(n+7)-7)`
-/

namespace A225011.P5224033341837525900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (A000124 (n + 7) - 7).toNat

end

end A225011.P5224033341837525900

namespace A225011

/-- `A071920(A000124(n+7)-7)` -/
def P5224033341837525900.Spec : Prop :=
  ∀ n, P5224033341837525900.a n = A225011 (n + 1)

end A225011

/-!
# A225012: Number of 5 X n 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225012, the canonical program `A225012.P15978431968945880844` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225012 has offset 1).

The definition of A225012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225012.P15978431968945880844

`1+∑[∑[A225011(n+1)]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225012

/-- `1+∑[∑[A225011(n+1)]]` -/
def P15978431968945880844.Spec : Prop :=
  ∀ n, P15978431968945880844.a n = A225012 (n + 1)

theorem P15978431968945880844.correct : P15978431968945880844.Spec := by
  intro n
  simp only [A225012, Nat.add_sub_cancel]

end A225012

/-! ## A225012.P15468065774251985385

`A225011(n+1)+A001287(n)`
-/

namespace A225012.P15468065774251985385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225011 (n + 1) + A001287 (n + 10)

end

end A225012.P15468065774251985385

namespace A225012

/-- `A225011(n+1)+A001287(n)` -/
def P15468065774251985385.Spec : Prop :=
  ∀ n, P15468065774251985385.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P10477411281708036677

`A225013(n+1)-A010965(n)`
-/

namespace A225012.P10477411281708036677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1) - A010965 (n + 12)

end

end A225012.P10477411281708036677

namespace A225012

/-- `A225013(n+1)-A010965(n)` -/
def P10477411281708036677.Spec : Prop :=
  ∀ n, P10477411281708036677.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P4475473788380770268

`A225013(n+1)-∑[A001288(n)]`
-/

namespace A225012.P4475473788380770268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225012.P4475473788380770268

namespace A225012

/-- `A225013(n+1)-∑[A001288(n)]` -/
def P4475473788380770268.Spec : Prop :=
  ∀ n, P4475473788380770268.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P15414291524078023721

`A225011(n+1)+2*A001786(n)-A001781(n)`
-/

namespace A225012.P15414291524078023721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225011 (n + 1) + (2 * A001786 n - A001781 n)

end

end A225012.P15414291524078023721

namespace A225012

/-- `A225011(n+1)+2*A001786(n)-A001781(n)` -/
def P15414291524078023721.Spec : Prop :=
  ∀ n, P15414291524078023721.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P263797205078264838

`A225010(A000124(n+4)+4)`
-/

namespace A225012.P263797205078264838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A000124 (n + 4) + 4).toNat

end

end A225012.P263797205078264838

namespace A225012

/-- `A225010(A000124(n+4)+4)` -/
def P263797205078264838.Spec : Prop :=
  ∀ n, P263797205078264838.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P10649909854453333052

`A210219(Δ[A023551(n+1)]+1)`
-/

namespace A225012.P10649909854453333052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (f1 (n + 1) - f1 n + 1).toNat

end

end A225012.P10649909854453333052

namespace A225012

/-- `A210219(Δ[A023551(n+1)]+1)` -/
def P10649909854453333052.Spec : Prop :=
  ∀ n, P10649909854453333052.a n = A225012 (n + 1)

end A225012

/-! ## A225012.P15547384836889447125

`A071920(A000124(n+8)-8)`
-/

namespace A225012.P15547384836889447125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (A000124 (n + 8) - 8).toNat

end

end A225012.P15547384836889447125

namespace A225012

/-- `A071920(A000124(n+8)-8)` -/
def P15547384836889447125.Spec : Prop :=
  ∀ n, P15547384836889447125.a n = A225012 (n + 1)

end A225012

/-!
# A225013: Number of 6Xn 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225013, the canonical program `A225013.P15914430659359903742` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225013 has offset 1).

The definition of A225013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225013.P15914430659359903742

`∑[∑[A225012(n+1)]]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225013

/-- `∑[∑[A225012(n+1)]]+1` -/
def P15914430659359903742.Spec : Prop :=
  ∀ n, P15914430659359903742.a n = A225013 (n + 1)

theorem P15914430659359903742.correct : P15914430659359903742.Spec := by
  intro n
  simp only [A225013, Nat.add_sub_cancel]

end A225013

/-! ## A225013.P15673224211933002986

`A225012(n+1)+A010965(n)`
-/

namespace A225013.P15673224211933002986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1) + A010965 (n + 12)

end

end A225013.P15673224211933002986

namespace A225013

/-- `A225012(n+1)+A010965(n)` -/
def P15673224211933002986.Spec : Prop :=
  ∀ n, P15673224211933002986.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P3498439723366706993

`A225014(n+1)-A010967(n)`
-/

namespace A225013.P3498439723366706993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225014 (n + 1) - A010967 (n + 14)

end

end A225013.P3498439723366706993

namespace A225013

/-- `A225014(n+1)-A010967(n)` -/
def P3498439723366706993.Spec : Prop :=
  ∀ n, P3498439723366706993.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P3556214145263334711

`A225010(A000124(n+5)+5)`
-/

namespace A225013.P3556214145263334711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A000124 (n + 5) + 5).toNat

end

end A225013.P3556214145263334711

namespace A225013

/-- `A225010(A000124(n+5)+5)` -/
def P3556214145263334711.Spec : Prop :=
  ∀ n, P3556214145263334711.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P5354313692956451951

`A210219(Δ[A023551(n+2)])`
-/

namespace A225013.P5354313692956451951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (f1 (n + 1) - f1 n).toNat

end

end A225013.P5354313692956451951

namespace A225013

/-- `A210219(Δ[A023551(n+2)])` -/
def P5354313692956451951.Spec : Prop :=
  ∀ n, P5354313692956451951.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P12821691838236117483

`A210219(A000217(n+6)+n+1)`
-/

namespace A225013.P12821691838236117483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A225013.P12821691838236117483

namespace A225013

/-- `A210219(A000217(n+6)+n+1)` -/
def P12821691838236117483.Spec : Prop :=
  ∀ n, P12821691838236117483.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P2213918057437503416

`A071920(A000124(n+9)-9)`
-/

namespace A225013.P2213918057437503416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (A000124 (n + 9) - 9).toNat

end

end A225013.P2213918057437503416

namespace A225013

/-- `A071920(A000124(n+9)-9)` -/
def P2213918057437503416.Spec : Prop :=
  ∀ n, P2213918057437503416.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P8608945979490019785

`A071921(A000124(n+9)-9)`
-/

namespace A225013.P8608945979490019785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A000124 (n + 9) - 9).toNat

end

end A225013.P8608945979490019785

namespace A225013

/-- `A071921(A000124(n+9)-9)` -/
def P8608945979490019785.Spec : Prop :=
  ∀ n, P8608945979490019785.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P13046232062493973851

`A128176(A000096(n+11)+n+2)`
-/

namespace A225013.P13046232062493973851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A000096 (n + 11) + (n + 2 : ℤ)).toNat

end

end A225013.P13046232062493973851

namespace A225013

/-- `A128176(A000096(n+11)+n+2)` -/
def P13046232062493973851.Spec : Prop :=
  ∀ n, P13046232062493973851.a n = A225013 (n + 1)

end A225013

/-! ## A225013.P12265144355719068331

`A108561(A000217(n+15)-(n+3))`
-/

namespace A225013.P12265144355719068331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A000217 (n + 15) - (n + 3 : ℤ)).toNat

end

end A225013.P12265144355719068331

namespace A225013

/-- `A108561(A000217(n+15)-(n+3))` -/
def P12265144355719068331.Spec : Prop :=
  ∀ n, P12265144355719068331.a n = A225013 (n + 1)

end A225013

/-!
# A225014: Number of 7Xn 0..1 arrays with rows unimodal and columns nondecreasing.

The programs for A225014, the canonical program `A225014.P12267725668881702781` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225014 has offset 1).

The definition of A225014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225014.P12267725668881702781

`∑[∑[A225013(n+1)]]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225014

/-- `∑[∑[A225013(n+1)]]+1` -/
def P12267725668881702781.Spec : Prop :=
  ∀ n, P12267725668881702781.a n = A225014 (n + 1)

theorem P12267725668881702781.correct : P12267725668881702781.Spec := by
  intro n
  simp only [A225014, Nat.add_sub_cancel]

end A225014

/-! ## A225014.P10163685441299677796

`A225013(n+1)+A010967(n)`
-/

namespace A225014.P10163685441299677796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1) + A010967 (n + 14)

end

end A225014.P10163685441299677796

namespace A225014

/-- `A225013(n+1)+A010967(n)` -/
def P10163685441299677796.Spec : Prop :=
  ∀ n, P10163685441299677796.a n = A225014 (n + 1)

end A225014

/-! ## A225014.P13714396946151993072

`A225010(A000124(n+6)+6)`
-/

namespace A225014.P13714396946151993072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A000124 (n + 6) + 6).toNat

end

end A225014.P13714396946151993072

namespace A225014

/-- `A225010(A000124(n+6)+6)` -/
def P13714396946151993072.Spec : Prop :=
  ∀ n, P13714396946151993072.a n = A225014 (n + 1)

end A225014

/-! ## A225014.P14122467492059910348

`A225010(A000217(n+6)+7)`
-/

namespace A225014.P14122467492059910348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A000217 (n + 6) + 7).toNat

end

end A225014.P14122467492059910348

namespace A225014

/-- `A225010(A000217(n+6)+7)` -/
def P14122467492059910348.Spec : Prop :=
  ∀ n, P14122467492059910348.a n = A225014 (n + 1)

end A225014

/-! ## A225014.P15593597127770155461

`A071922(A000217(n+9)-8)`
-/

namespace A225014.P15593597127770155461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A000217 (n + 9) - 8).toNat

end

end A225014.P15593597127770155461

namespace A225014

/-- `A071922(A000217(n+9)-8)` -/
def P15593597127770155461.Spec : Prop :=
  ∀ n, P15593597127770155461.a n = A225014 (n + 1)

end A225014

/-! ## A225014.P7146211335970762710

`A071920(A000124(n+10)-10)`
-/

namespace A225014.P7146211335970762710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (A000124 (n + 10) - 10).toNat

end

end A225014.P7146211335970762710

namespace A225014

/-- `A071920(A000124(n+10)-10)` -/
def P7146211335970762710.Spec : Prop :=
  ∀ n, P7146211335970762710.a n = A225014 (n + 1)

end A225014

/-! ## A225014.P3210026957567454452

`A071921(A000124(n+10)-10)`
-/

namespace A225014.P3210026957567454452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A000124 (n + 10) - 10).toNat

end

end A225014.P3210026957567454452

namespace A225014

/-- `A071921(A000124(n+10)-10)` -/
def P3210026957567454452.Spec : Prop :=
  ∀ n, P3210026957567454452.a n = A225014 (n + 1)

end A225014

/-!
# A225015: Number of sawtooth patterns of length 1 in all Dyck paths of semilength n.

The programs for A225015, the canonical program `A225015.P13269201313438566272` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225015 has offset 0).

The definition of A225015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225015.P13269201313438566272

`(n-1)*(3*n-4)*(4*n-10)*a(n-1)/(n*(n-2)*(3*n-7))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225015

/-- `(n-1)*(3*n-4)*(4*n-10)*a(n-1)/(n*(n-2)*(3*n-7))` -/
def P13269201313438566272.Spec : Prop :=
  ∀ n, P13269201313438566272.a n = (A225015 n : ℚ)

end A225015

/-! ## A225015.P8317549436549120073

`A289122(or(n+1, A092184(n)))`
-/

namespace A225015.P8317549436549120073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.lor (n + 1 : ℤ) (A092184 n)).toNat

end

end A225015.P8317549436549120073

namespace A225015

/-- `A289122(or(n+1, A092184(n)))` -/
def P8317549436549120073.Spec : Prop :=
  ∀ n, P8317549436549120073.a n = A225015 n

end A225015

/-! ## A225015.P11927200671154712958

`A074795(A160325(n)+A000984(n))`
-/

namespace A225015.P11927200671154712958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074795 (A160325 n + A000984 n).toNat

end

end A225015.P11927200671154712958

namespace A225015

/-- `A074795(A160325(n)+A000984(n))` -/
def P11927200671154712958.Spec : Prop :=
  ∀ n, P11927200671154712958.a n = A225015 n

end A225015

/-! ## A225015.P743942007450447784

`A289122(or(A001075(n), A058281(n)))`
-/

namespace A225015.P743942007450447784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.lor (A001075 n) (A058281 n)).toNat

end

end A225015.P743942007450447784

namespace A225015

/-- `A289122(or(A001075(n), A058281(n)))` -/
def P743942007450447784.Spec : Prop :=
  ∀ n, P743942007450447784.a n = A225015 n

end A225015

/-!
# A225017: Odd part of digit sum of 5^n divided by maximal possible power of 5.

The programs for A225017, there is no canonical definition to state claims against.
-/

/-! ## A225017.P18436279147037880898

`A132740(A066001(n))`
-/

namespace A225017.P18436279147037880898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A066001 n).toNat

end

end A225017.P18436279147037880898

/-! ## A225017.P12178016602922873158

`A214685(A066001(n-char[1]))`
-/

namespace A225017.P12178016602922873158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A066001 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A225017.P12178016602922873158

/-! ## A225017.P16759174155645654673

`A214685(A066001(n)%A006512(n+1))`
-/

namespace A225017.P16759174155645654673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (Int.tmod (A066001 n) (A006512 (n + 1))).toNat

end

end A225017.P16759174155645654673

/-! ## A225017.P2208430417920410780

`A214685(A066001(n))%A065995(n+1)`
-/

namespace A225017.P2208430417920410780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214685 (A066001 n).toNat) (A065995 (n + 1))

end

end A225017.P2208430417920410780

/-! ## A225017.P9322148643813838915

`A214685(A066001(n))+A000007(2*(n+1))`
-/

namespace A225017.P9322148643813838915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A066001 n).toNat + A000007 (2 * (n + 1))

end

end A225017.P9322148643813838915

/-! ## A225017.P14793887168410224928

`A214685(lcm(2, A066001(n)))`
-/

namespace A225017.P14793887168410224928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (Int.lcm 2 (A066001 n))

end

end A225017.P14793887168410224928

/-! ## A225017.P7952483316709930736

`A214685(2*A066001(n))`
-/

namespace A225017.P7952483316709930736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (2 * A066001 n).toNat

end

end A225017.P7952483316709930736

/-! ## A225017.P359537799104016476

`A132740(∑{digits}[5*a(n-1), #])` with `a(0)=1`
-/

namespace A225017.P359537799104016476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A225017.P359537799104016476

/-! ## A225017.P11176742105372976033

`A132740(∑{digits}[A000351(n), #])`
-/

namespace A225017.P11176742105372976033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A225017.P11176742105372976033

/-!
# A225018: Number of cusps in a class of degree-3n complex algebraic surfaces.

The programs for A225018, the canonical program `A225018.P2876599494353905557` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225018 has offset 1).

The definition of A225018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225018.P2876599494353905557

`ogf((3+27x+88x^2+93x^3+64x^4+12x^5+x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225018

/-- `ogf((3+27x+88x^2+93x^3+64x^4+12x^5+x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P2876599494353905557.Spec : Prop :=
  ∀ n, P2876599494353905557.a n = A225018 (n + 1)

theorem P2876599494353905557.correct : P2876599494353905557.Spec := by
  intro n
  simp only [A225018, Nat.add_sub_cancel]

end A225018

/-!
# A225019: Number of (n+1)X(n+1) 0..2 matrices with each 2X2 permanent equal.

The programs for A225019, there is no canonical definition to state claims against.
-/

/-! ## A225019.P6023145599745725788

`A225027(∑[4*n]+1)`
-/

namespace A225019.P6023145599745725788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225019.P6023145599745725788

/-!
# A225020: Number of (n+1)X2 0..2 matrices with each 2X2 permanent equal.

The programs for A225020, there is no canonical definition to state claims against.
-/

/-! ## A225020.P2253633421263859224

`A225027(∑[n]+1)`
-/

namespace A225020.P2253633421263859224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225020.P2253633421263859224

/-! ## A225020.P13163816275762153485

`record[A010054(n)*A225027(n+1)]`
-/

namespace A225020.P13163816275762153485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A225027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225020.P13163816275762153485

/-! ## A225020.P6253681959340048521

`record[A103451(n)*A225027(n+1)]`
-/

namespace A225020.P6253681959340048521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A225027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225020.P6253681959340048521

/-! ## A225020.P4553452270420000390

`record[gcd(A028376(n), A225027(n+1))]`
-/

namespace A225020.P4553452270420000390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028376 n) (A225027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225020.P4553452270420000390

/-! ## A225020.P4422581976885913055

`lcm(A033999(n), A225027(A000124(n)))`
-/

namespace A225020.P4422581976885913055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A225027 (A000124 n).toNat)

end

end A225020.P4422581976885913055

/-!
# A225021: Number of (n+1)X3 0..2 matrices with each 2X2 permanent equal.

The programs for A225021, there is no canonical definition to state claims against.
-/

/-! ## A225021.P7140943198930246834

`A206466(n+1)+A204834(n+1)`
-/

namespace A225021.P7140943198930246834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206466 (n + 1) + A204834 (n + 1)

end

end A225021.P7140943198930246834

/-! ## A225021.P6290690169098917347

`A206472(A133263(n+1))+A204834(n+1)`
-/

namespace A225021.P6290690169098917347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A133263 (n + 1)).toNat + A204834 (n + 1)

end

end A225021.P6290690169098917347

/-! ## A225021.P10506405016011806649

`A225027(∑[n+1]+2)`
-/

namespace A225021.P10506405016011806649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A225021.P10506405016011806649

/-! ## A225021.P18444159131599521322

`record[A010054(n)*A225027(n+2)]`
-/

namespace A225021.P18444159131599521322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A225027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225021.P18444159131599521322

/-! ## A225021.P15009202185804010313

`record[gcd(A028376(n), A225027(n+2))]`
-/

namespace A225021.P15009202185804010313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028376 n) (A225027 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225021.P15009202185804010313

/-!
# A225022: Number of (n+1)X4 0..2 matrices with each 2X2 permanent equal.

The programs for A225022, there is no canonical definition to state claims against.
-/

/-! ## A225022.P15242438232865092992

`A206467(n+1)+A204835(n+1)`
-/

namespace A225022.P15242438232865092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206467 (n + 1) + A204835 (n + 1)

end

end A225022.P15242438232865092992

/-! ## A225022.P10357286585586228809

`A206472(A167614(n+1))+A204835(n+1)`
-/

namespace A225022.P10357286585586228809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A167614 (n + 1)).toNat + A204835 (n + 1)

end

end A225022.P10357286585586228809

/-! ## A225022.P7292715384482023800

`A225027(∑[n+2]+4)`
-/

namespace A225022.P7292715384482023800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A225022.P7292715384482023800

/-! ## A225022.P9490933585610052714

`or(1, A225027(A167614(n+1)))`
-/

namespace A225022.P9490933585610052714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A225027 (A167614 (n + 1)).toNat)

end

end A225022.P9490933585610052714

/-! ## A225022.P13826957070667111310

`A225027(A167614(n+1))+A185284(n)`
-/

namespace A225022.P13826957070667111310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A167614 (n + 1)).toNat + A185284 n

end

end A225022.P13826957070667111310

/-!
# A225023: Number of (n+1)X5 0..2 matrices with each 2X2 permanent equal.

The programs for A225023, there is no canonical definition to state claims against.
-/

/-! ## A225023.P18393910012954417518

`A225027(A374004(n+1))`
-/

namespace A225023.P18393910012954417518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A374004 (n + 1)).toNat

end

end A225023.P18393910012954417518

/-! ## A225023.P3890262390080847811

`A225027(A141214(n)+7)`
-/

namespace A225023.P3890262390080847811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A141214 n + 7).toNat

end

end A225023.P3890262390080847811

/-! ## A225023.P17570211626210458198

`A225027(A052905(n)+9)`
-/

namespace A225023.P17570211626210458198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A052905 n + 9).toNat

end

end A225023.P17570211626210458198

/-! ## A225023.P11645041145109338948

`A225027(A055999(n)+10)`
-/

namespace A225023.P11645041145109338948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A055999 n + 10).toNat

end

end A225023.P11645041145109338948

/-! ## A225023.P4458519601578272032

`A225027(A167614(n+2)+1)`
-/

namespace A225023.P4458519601578272032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A167614 (n + 2) + 1).toNat

end

end A225023.P4458519601578272032

/-!
# A225024: Number of (n+1)X6 0..2 matrices with each 2X2 permanent equal.

The programs for A225024, there is no canonical definition to state claims against.
-/

/-! ## A225024.P2150705215701593166

`A225027(A374005(n+1))`
-/

namespace A225024.P2150705215701593166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A374005 (n + 1)).toNat

end

end A225024.P2150705215701593166

/-! ## A225024.P15072671632409422397

`A225027(A167499(n+3))`
-/

namespace A225024.P15072671632409422397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A167499 (n + 3)).toNat

end

end A225024.P15072671632409422397

/-! ## A225024.P5457620161583537240

`A225027(A000217(n+4)+5)`
-/

namespace A225024.P5457620161583537240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A000217 (n + 4) + 5).toNat

end

end A225024.P5457620161583537240

/-! ## A225024.P79358036639221937

`A225027(eq[2, A054123(n)]+8)`
-/

namespace A225024.P79358036639221937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A225024.P79358036639221937

/-! ## A225024.P2263783593718914426

`A225027(Δ[A264443(n)])`
-/

namespace A225024.P2263783593718914426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (f1 (n + 1) - f1 n).toNat

end

end A225024.P2263783593718914426

/-!
# A225025: Number of (n+1) X 7 0..2 matrices with each 2 X 2 permanent equal.

The programs for A225025, there is no canonical definition to state claims against.
-/

/-! ## A225025.P1632155909171297207

`A225027(A374007(n+1))`
-/

namespace A225025.P1632155909171297207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A374007 (n + 1)).toNat

end

end A225025.P1632155909171297207

/-! ## A225025.P17831745880230886235

`A225027(A056115(n)+21)`
-/

namespace A225025.P17831745880230886235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A056115 n + 21).toNat

end

end A225025.P17831745880230886235

/-! ## A225025.P766003760121483356

`A225027(A141214(n+2)+9)`
-/

namespace A225025.P766003760121483356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A141214 (n + 2) + 9).toNat

end

end A225025.P766003760121483356

/-! ## A225025.P16678686441266829137

`A225027(eq[7, A131818(n+1)])`
-/

namespace A225025.P16678686441266829137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225025.P16678686441266829137

/-! ## A225025.P14648040413342440792

`A225027(A052905(n+3))`
-/

namespace A225025.P14648040413342440792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A052905 (n + 3)).toNat

end

end A225025.P14648040413342440792

/-!
# A225026: Number of (n+1)X8 0..2 matrices with each 2X2 permanent equal.

The programs for A225026, there is no canonical definition to state claims against.
-/

/-! ## A225026.P2759903245002096212

`A225027(A374008(n+1))`
-/

namespace A225026.P2759903245002096212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A374008 (n + 1)).toNat

end

end A225026.P2759903245002096212

/-! ## A225026.P5291028968806105512

`A225027(A167499(n+5)+2)`
-/

namespace A225026.P5291028968806105512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A167499 (n + 5) + 2).toNat

end

end A225026.P5291028968806105512

/-! ## A225026.P983011441352736423

`A225027(eq[4, A219347(n)])`
-/

namespace A225026.P983011441352736423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225026.P983011441352736423

/-! ## A225026.P9996973739682306817

`A225027(A052905(n+4)-1)`
-/

namespace A225026.P9996973739682306817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (A052905 (n + 4) - 1).toNat

end

end A225026.P9996973739682306817

/-! ## A225026.P8211642810627757501

`A225027(abs(A000096(n+6)-5))`
-/

namespace A225026.P8211642810627757501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 |A000096 (n + 6) - 5|.toNat

end

end A225026.P8211642810627757501

/-!
# A225027: T(n,k) is the number of (n+1) X (k+1) 0..2 matrices with each 2 X 2 permanent equal.

The programs for A225027, there is no canonical definition to state claims against.
-/

/-! ## A225027.P1295231605460796470

`A206472(n+1)+A204840(n+1)`
-/

namespace A225027.P1295231605460796470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (n + 1) + A204840 (n + 1)

end

end A225027.P1295231605460796470

/-!
# A225029: Non-crossing, non-nesting, 3-colored set partitions.

The programs for A225029, the canonical program `A225029.P17752103038951766729` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225029 has offset 0).

The definition of A225029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225029.P6221708548126505537

`ogf((1-10x+22x^2-x^3)/(1-14x+59x^2-74x^3+x^4))`
-/

namespace A225029.P6221708548126505537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10, 22, -1] [1, -14, 59, -74, 1] n

end

end A225029.P6221708548126505537

namespace A225029

/-- `ogf((1-10x+22x^2-x^3)/(1-14x+59x^2-74x^3+x^4))` -/
def P6221708548126505537.Spec : Prop :=
  ∀ n, P6221708548126505537.a n = A225029 n

end A225029

/-! ## A225029.P17752103038951766729

`14*a(n-1)-59*a(n-2)+74*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=103`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225029

/-- `14*a(n-1)-59*a(n-2)+74*a(n-3)-a(n-4)` -/
def P17752103038951766729.Spec : Prop :=
  ∀ n, P17752103038951766729.a n = A225029 n

theorem P17752103038951766729.correct : P17752103038951766729.Spec := by
  intro n
  simp only [A225029]

end A225029

/-!
# A225030: Non-crossing, non-nesting, 4-colored set partitions.

The programs for A225030, there is no canonical definition to state claims against.
-/

/-! ## A225030.P11300394195989453170

`A272565(n!*∑[n*(n+3)]+1)`
-/

namespace A225030.P11300394195989453170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A225030.P11300394195989453170

/-!
# A225031: Non-crossing, non-nesting, 5-colored set partitions.

The programs for A225031, there is no canonical definition to state claims against.
-/

/-! ## A225031.P15742514954465530916

`A321232(A344067(n+1)+2)`
-/

namespace A225031.P15742514954465530916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A344067 (n + 1) + 2).toNat

end

end A225031.P15742514954465530916

/-!
# A225032: Non-crossing, non-nesting, 6-colored set partitions.

The programs for A225032, there is no canonical definition to state claims against.
-/

/-! ## A225032.P3300846735456271696

`or(A000720(A239769(n)), A096307(n))`
-/

namespace A225032.P3300846735456271696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000720 (A239769 n).toNat) (A096307 n)

end

end A225032.P3300846735456271696

/-!
# A225034: a(n) is the number of binary words containing n 1's and at most n 0's that do not contain the substring 101.

The programs for A225034, the canonical program `A225034.P10390153056488090949` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225034 has offset 0).

The definition of A225034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225034.P7702666633628587771

`∑{#}[n, A239101(C(n+1, 2)+#)]`
-/

namespace A225034.P7702666633628587771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A239101 (Nat.choose (n + 1) 2 + k)

end

end A225034.P7702666633628587771

namespace A225034

/-- `∑{#}[n, A239101(C(n+1, 2)+#)]` -/
def P7702666633628587771.Spec : Prop :=
  ∀ n, P7702666633628587771.a n = A225034 n

end A225034

/-! ## A225034.P17945231472136867762

`A369359(n)+A002426(n)`
-/

namespace A225034.P17945231472136867762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369359 n + A002426 n

end

end A225034.P17945231472136867762

namespace A225034

/-- `A369359(n)+A002426(n)` -/
def P17945231472136867762.Spec : Prop :=
  ∀ n, P17945231472136867762.a n = A225034 n

theorem P17945231472136867762.correct : P17945231472136867762.Spec := by
  intro n
  simp only [A225034, Nat.add_sub_cancel, A225034.P17945231472136867762.a, A225034.P10390153056488090949.f1, A225034.P10390153056488090949.a, A002426, A002426.P18316219981098248731.a, A005773, A005773.P2300326801340372225.a, A085455, A085455.P11092561144214495539.a, A369359, A369359.P11914376555270565853.a, A025565, A025565.P15020973864699713191.a, A057427, A057427.P17645173493419391152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225034

/-! ## A225034.P10390153056488090949

`Δ[A005773(n)]+abs(A085455(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225034

/-- `Δ[A005773(n)]+abs(A085455(n))` -/
def P10390153056488090949.Spec : Prop :=
  ∀ n, P10390153056488090949.a n = A225034 n

theorem P10390153056488090949.correct : P10390153056488090949.Spec := by
  intro n
  simp only [A225034]

end A225034

/-! ## A225034.P10060005893088292380

`∑[A025566(n)+Δ[A005773(n)]]`
-/

namespace A225034.P10060005893088292380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225034.P10060005893088292380

namespace A225034

/-- `∑[A025566(n)+Δ[A005773(n)]]` -/
def P10060005893088292380.Spec : Prop :=
  ∀ n, P10060005893088292380.a n = A225034 n

end A225034

/-! ## A225034.P7396558879363416900

`Δ[A005773(n)]+∑[A105696(n)]`
-/

namespace A225034.P7396558879363416900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A225034.P7396558879363416900

namespace A225034

/-- `Δ[A005773(n)]+∑[A105696(n)]` -/
def P7396558879363416900.Spec : Prop :=
  ∀ n, P7396558879363416900.a n = A225034 n

end A225034

/-! ## A225034.P11479576343211826963

`A001006(n)+Δ[A025566(n+1)]`
-/

namespace A225034.P11479576343211826963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f1 (n + 1) - f1 n)

end

end A225034.P11479576343211826963

namespace A225034

/-- `A001006(n)+Δ[A025566(n+1)]` -/
def P11479576343211826963.Spec : Prop :=
  ∀ n, P11479576343211826963.a n = A225034 n

end A225034

/-! ## A225034.P4891037202086706635

`A025565(n+1)+Δ[A005773(n)]`
-/

namespace A225034.P4891037202086706635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1) + (f1 (n + 1) - f1 n)

end

end A225034.P4891037202086706635

namespace A225034

/-- `A025565(n+1)+Δ[A005773(n)]` -/
def P4891037202086706635.Spec : Prop :=
  ∀ n, P4891037202086706635.a n = A225034 n

end A225034

/-! ## A225034.P2624882701679966158

`A105696(n+1)-A168051(n+1)`
-/

namespace A225034.P2624882701679966158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 (n + 1) - A168051 (n + 1)

end

end A225034.P2624882701679966158

namespace A225034

/-- `A105696(n+1)-A168051(n+1)` -/
def P2624882701679966158.Spec : Prop :=
  ∀ n, P2624882701679966158.a n = A225034 n

end A225034

/-! ## A225034.P9373044720099257394

`A025565(n+2)-A025566(n+1)`
-/

namespace A225034.P9373044720099257394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 2) - A025566 (n + 1)

end

end A225034.P9373044720099257394

namespace A225034

/-- `A025565(n+2)-A025566(n+1)` -/
def P9373044720099257394.Spec : Prop :=
  ∀ n, P9373044720099257394.a n = A225034 n

end A225034

/-! ## A225034.P2177174113093038469

`2*A025565(n+1)-abs(A166587(n))`
-/

namespace A225034.P2177174113093038469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025565 (n + 1) - |A166587 n|

end

end A225034.P2177174113093038469

namespace A225034

/-- `2*A025565(n+1)-abs(A166587(n))` -/
def P2177174113093038469.Spec : Prop :=
  ∀ n, P2177174113093038469.a n = A225034 n

end A225034

/-! ## A225034.P4108124524239281174

`Δ[A025565(n+1)]-A168051(n+1)`
-/

namespace A225034.P4108124524239281174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A168051 (n + 1)

end

end A225034.P4108124524239281174

namespace A225034

/-- `Δ[A025565(n+1)]-A168051(n+1)` -/
def P4108124524239281174.Spec : Prop :=
  ∀ n, P4108124524239281174.a n = A225034 n

end A225034

/-! ## A225034.P423567082473613638

`2*A005773(n+1)-A025566(n+1)`
-/

namespace A225034.P423567082473613638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005773 (n + 1) - A025566 (n + 1)

end

end A225034.P423567082473613638

namespace A225034

/-- `2*A005773(n+1)-A025566(n+1)` -/
def P423567082473613638.Spec : Prop :=
  ∀ n, P423567082473613638.a n = A225034 n

end A225034

/-! ## A225034.P2865526607801022007

`A026135(n)+A001006(n)%A026135(n)`
-/

namespace A225034.P2865526607801022007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n + Int.tmod (A001006 n) (A026135 n)

end

end A225034.P2865526607801022007

namespace A225034

/-- `A026135(n)+A001006(n)%A026135(n)` -/
def P2865526607801022007.Spec : Prop :=
  ∀ n, P2865526607801022007.a n = A225034 n

end A225034

/-! ## A225034.P6001478955901597943

`A005773(n+1)+A005773(n)-A000007(n)`
-/

namespace A225034.P6001478955901597943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A005773 n - A000007 n)

end

end A225034.P6001478955901597943

namespace A225034

/-- `A005773(n+1)+A005773(n)-A000007(n)` -/
def P6001478955901597943.Spec : Prop :=
  ∀ n, P6001478955901597943.a n = A225034 n

end A225034

/-! ## A225034.P12553352407800330070

`A002426(n+1)+A002426(n)-A025566(n+1)`
-/

namespace A225034.P12553352407800330070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (A002426 n - A025566 (n + 1))

end

end A225034.P12553352407800330070

namespace A225034

/-- `A002426(n+1)+A002426(n)-A025566(n+1)` -/
def P12553352407800330070.Spec : Prop :=
  ∀ n, P12553352407800330070.a n = A225034 n

end A225034

/-! ## A225034.P1983080003253462240

`A005773(n+1)+A025565(n+1)-A005773(n)`
-/

namespace A225034.P1983080003253462240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A025565 (n + 1) - A005773 n)

end

end A225034.P1983080003253462240

namespace A225034

/-- `A005773(n+1)+A025565(n+1)-A005773(n)` -/
def P1983080003253462240.Spec : Prop :=
  ∀ n, P1983080003253462240.a n = A225034 n

end A225034

/-! ## A225034.P9962838564254166975

`A005773(n+1)+A005773(n)-A019590(n+2)`
-/

namespace A225034.P9962838564254166975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A005773 n - A019590 (n + 2))

end

end A225034.P9962838564254166975

namespace A225034

/-- `A005773(n+1)+A005773(n)-A019590(n+2)` -/
def P9962838564254166975.Spec : Prop :=
  ∀ n, P9962838564254166975.a n = A225034 n

end A225034

/-! ## A225034.P12503127241877851560

`A025566(n+2)+A001006(n)-A025566(n+1)`
-/

namespace A225034.P12503127241877851560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 2) + (A001006 n - A025566 (n + 1))

end

end A225034.P12503127241877851560

namespace A225034

/-- `A025566(n+2)+A001006(n)-A025566(n+1)` -/
def P12503127241877851560.Spec : Prop :=
  ∀ n, P12503127241877851560.a n = A225034 n

end A225034

/-! ## A225034.P5985069282940114770

`A025577(n+2)-(A025577(n+1)+A025566(n+1))`
-/

namespace A225034.P5985069282940114770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025577 (n + 2) - (A025577 (n + 1) + A025566 (n + 1))

end

end A225034.P5985069282940114770

namespace A225034

/-- `A025577(n+2)-(A025577(n+1)+A025566(n+1))` -/
def P5985069282940114770.Spec : Prop :=
  ∀ n, P5985069282940114770.a n = A225034 n

end A225034

/-! ## A225034.P10294573346734168848

`∑{#}[n, (-1)^(n-#)*C(n, #)*A079309(#+1)]`
-/

namespace A225034.P10294573346734168848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A079309 (k + 1) : ℚ)

end

end A225034.P10294573346734168848

namespace A225034

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A079309(#+1)]` -/
def P10294573346734168848.Spec : Prop :=
  ∀ n, P10294573346734168848.a n = (A225034 n : ℚ)

end A225034

/-!
# A225035: Primes such that there is a nontrivial rearrangement of the digits which is a prime.

The programs for A225035, there is no canonical definition to state claims against.
-/

/-! ## A225035.P16170677151246418869

`A055387(n+5)`
-/

namespace A225035.P16170677151246418869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 5)

end

end A225035.P16170677151246418869

/-! ## A225035.P5251268395414266376

`p?[A161401(n+1)]`
-/

namespace A225035.P5251268395414266376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225035.P5251268395414266376

/-! ## A225035.P3771269543283651237

`p?[(n+1)%(n^A039999(n+1))]`
-/

namespace A225035.P3771269543283651237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (A039999 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225035.P3771269543283651237

/-! ## A225035.P4848021779120804390

`filter[A161401(n+1), A001222(#)]`
-/

namespace A225035.P4848021779120804390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A225035.P4848021779120804390

/-! ## A225035.P2470927694491463856

`filter[A161401(n+1), A010051(#)]`
-/

namespace A225035.P2470927694491463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A225035.P2470927694491463856

/-! ## A225035.P9604967295258791299

`filter[A161401(n+1), A080339(#)]`
-/

namespace A225035.P9604967295258791299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A225035.P9604967295258791299

/-! ## A225035.P9512366272562430143

`filter[A161401(n+1), A080545(#)]`
-/

namespace A225035.P9512366272562430143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A225035.P9512366272562430143

/-! ## A225035.P14588526855354677502

`filter[A161401(n+1), A171387(#)]`
-/

namespace A225035.P14588526855354677502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A225035.P14588526855354677502

/-! ## A225035.P2757980456429313741

`filter[A161401(n+1), A323152(#)]`
-/

namespace A225035.P2757980456429313741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A225035.P2757980456429313741

/-! ## A225035.P10492829894153001276

`filter[A161401(n+1), A323153(#)]`
-/

namespace A225035.P10492829894153001276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A225035.P10492829894153001276

/-! ## A225035.P2583651785016836377

`record[A006530(2*A161401(n+1))]`
-/

namespace A225035.P2583651785016836377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A161401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225035.P2583651785016836377

/-! ## A225035.P5950071316053410170

`∩[A000040(n+1), A161401(n+1)]`
-/

namespace A225035.P5950071316053410170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P5950071316053410170

/-! ## A225035.P2602810623270369476

`∩[A004139(n+1), A161401(n+1)]`
-/

namespace A225035.P2602810623270369476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P2602810623270369476

/-! ## A225035.P3295161079967639098

`∩[A006005(n+1), A161401(n+1)]`
-/

namespace A225035.P3295161079967639098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P3295161079967639098

/-! ## A225035.P1874681062576360200

`∩[A008578(n+1), A161401(n+1)]`
-/

namespace A225035.P1874681062576360200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P1874681062576360200

/-! ## A225035.P12738649527370097613

`∩[A033946(n+1), A161401(n+1)]`
-/

namespace A225035.P12738649527370097613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P12738649527370097613

/-! ## A225035.P9160886233631366746

`∩[A045319(n+1), A161401(n+1)]`
-/

namespace A225035.P9160886233631366746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P9160886233631366746

/-! ## A225035.P447338246503712729

`∩[A045344(n+1), A161401(n+1)]`
-/

namespace A225035.P447338246503712729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P447338246503712729

/-! ## A225035.P8514632866042609825

`∩[A046022(n+1), A161401(n+1)]`
-/

namespace A225035.P8514632866042609825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P8514632866042609825

/-! ## A225035.P14005864151607245473

`∩[A051948(n+1), A161401(n+1)]`
-/

namespace A225035.P14005864151607245473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225035.P14005864151607245473

/-!
# A225038: Numbers n such that at least one member of Collatz (3x+1) trajectory of n is >= n^2.

The programs for A225038, there is no canonical definition to state claims against.
-/

/-! ## A225038.P10665127207260250796

`lt[n, A087262(n+1)]+1`
-/

namespace A225038.P10665127207260250796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A225038.P10665127207260250796

/-! ## A225038.P8093687061792837837

`lt[(n+1)², A056959(n+1)]+1`
-/

namespace A225038.P8093687061792837837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A225038.P8093687061792837837

/-! ## A225038.P17976038782041334495

`lt[n²+n, A025586(n+1)]+1`
-/

namespace A225038.P17976038782041334495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A225038.P17976038782041334495

/-! ## A225038.P6743475059047450899

`lt[A219190(n+1), A270570(2*(n+1))]+1`
-/

namespace A225038.P6743475059047450899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A225038.P6743475059047450899

/-! ## A225038.P14693018154658533945

`lt[A213926(n+1)/4, A213916(n+1)]+1`
-/

namespace A225038.P14693018154658533945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213926 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A225038.P14693018154658533945

/-!
# A225041: Number of lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1), H=(1,0) and S=(0,1).

The programs for A225041, there is no canonical definition to state claims against.
-/

/-! ## A225041.P14291970813583724558

`A122479(∑[n])`
-/

namespace A225041.P14291970813583724558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225041.P14291970813583724558

/-! ## A225041.P10609390853028404979

`or(1, A122479(A000217(n)))`
-/

namespace A225041.P10609390853028404979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122479 (A000217 n).toNat)

end

end A225041.P10609390853028404979

/-! ## A225041.P4024831176027160254

`or(1, A122479(A069700(n+1)))`
-/

namespace A225041.P4024831176027160254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122479 (A069700 (n + 1)).toNat)

end

end A225041.P4024831176027160254

/-! ## A225041.P1046258671778449994

`or(1, A122479(A179865(n+1)))`
-/

namespace A225041.P1046258671778449994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122479 (A179865 (n + 1)).toNat)

end

end A225041.P1046258671778449994

/-! ## A225041.P6601105610625599745

`A122479(A000217(n))+A025444(n)`
-/

namespace A225041.P6601105610625599745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122479 (A000217 n).toNat + A025444 n

end

end A225041.P6601105610625599745

/-!
# A225042: Number of lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1), H=(1,0) and S=(0,1).

The programs for A225042, there is no canonical definition to state claims against.
-/

/-! ## A225042.P17928504661811228120

`A122479(∑[n]+n)`
-/

namespace A225042.P17928504661811228120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122479 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A225042.P17928504661811228120

/-! ## A225042.P14688659273433804360

`record[char[∑[n-1]]*A122479(n)]`
-/

namespace A225042.P14688659273433804360
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A122479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225042.P14688659273433804360

/-! ## A225042.P5197389146687437920

`record[A122479(A061579(n))]`
-/

namespace A225042.P5197389146687437920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122479 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225042.P5197389146687437920

/-! ## A225042.P10963442301819388591

`record[A122479(n)/A038207(n)]`
-/

namespace A225042.P10963442301819388591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122479 n : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225042.P10963442301819388591

/-!
# A225043: Pascal's triangle with row n reduced modulo n+1.

The programs for A225043, the canonical program `A225043.P11914098846350569213` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225043 has offset 0).

The definition of A225043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225043.P11914098846350569213

`C(row(n), col(n))%(row(n)+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225043

/-- `C(row(n), col(n))%(row(n)+1)` -/
def P11914098846350569213.Spec : Prop :=
  ∀ n, (P11914098846350569213.a n : ℤ) = A225043 n

theorem P11914098846350569213.correct : P11914098846350569213.Spec := by
  intro n
  simp only [A225043]

end A225043

/-! ## A225043.P10157106914979775417

`A007318(n)%∑[char[∑[n]]]`
-/

namespace A225043.P10157106914979775417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225043.P10157106914979775417

namespace A225043

/-- `A007318(n)%∑[char[∑[n]]]` -/
def P10157106914979775417.Spec : Prop :=
  ∀ n, P10157106914979775417.a n = A225043 n

end A225043

/-! ## A225043.P1088551497937915530

`abs(A108086(n))%∑[A010054(n)]`
-/

namespace A225043.P1088551497937915530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A108086 n| (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225043.P1088551497937915530

namespace A225043

/-- `abs(A108086(n))%∑[A010054(n)]` -/
def P1088551497937915530.Spec : Prop :=
  ∀ n, P1088551497937915530.a n = A225043 n

end A225043

/-! ## A225043.P3223007993453069798

`abs(A117440(n))%∑[A010054(n)]`
-/

namespace A225043.P3223007993453069798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A117440 n| (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225043.P3223007993453069798

namespace A225043

/-- `abs(A117440(n))%∑[A010054(n)]` -/
def P3223007993453069798.Spec : Prop :=
  ∀ n, P3223007993453069798.a n = A225043 n

end A225043

/-! ## A225043.P5949085799679813665

`sqrt(A008459(n))%∑[A010054(n)]`
-/

namespace A225043.P5949085799679813665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225043.P5949085799679813665

namespace A225043

/-- `sqrt(A008459(n))%∑[A010054(n)]` -/
def P5949085799679813665.Spec : Prop :=
  ∀ n, P5949085799679813665.a n = A225043 n

end A225043

/-! ## A225043.P5637047913720561694

`Δ[A102363(n)]%∑[A010054(n)]`
-/

namespace A225043.P5637047913720561694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A225043.P5637047913720561694

namespace A225043

/-- `Δ[A102363(n)]%∑[A010054(n)]` -/
def P5637047913720561694.Spec : Prop :=
  ∀ n, P5637047913720561694.a n = A225043 n

end A225043

/-! ## A225043.P4213460021017861626

`(A014473(n)+1)%∑[A010054(n)]`
-/

namespace A225043.P4213460021017861626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225043.P4213460021017861626

namespace A225043

/-- `(A014473(n)+1)%∑[A010054(n)]` -/
def P4213460021017861626.Spec : Prop :=
  ∀ n, P4213460021017861626.a n = A225043 n

end A225043

/-! ## A225043.P17124676141665867973

`(A028326(n)/2)%∑[A010054(n)]`
-/

namespace A225043.P17124676141665867973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225043.P17124676141665867973

namespace A225043

/-- `(A028326(n)/2)%∑[A010054(n)]` -/
def P17124676141665867973.Spec : Prop :=
  ∀ n, P17124676141665867973.a n = A225043 n

end A225043

/-! ## A225043.P17290803304096347736

`ceil(A135087(n)/4)%A002024(n+1)`
-/

namespace A225043.P17290803304096347736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135087 n : ℚ) / 4⌉ (A002024 (n + 1))

end

end A225043.P17290803304096347736

namespace A225043

/-- `ceil(A135087(n)/4)%A002024(n+1)` -/
def P17290803304096347736.Spec : Prop :=
  ∀ n, P17290803304096347736.a n = A225043 n

end A225043

/-! ## A225043.P15135301968644285010

`ceil(A135089(n)/5)%A002024(n+1)`
-/

namespace A225043.P15135301968644285010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135089 n : ℚ) / 5⌉ (A002024 (n + 1))

end

end A225043.P15135301968644285010

namespace A225043

/-- `ceil(A135089(n)/5)%A002024(n+1)` -/
def P15135301968644285010.Spec : Prop :=
  ∀ n, P15135301968644285010.a n = A225043 n

end A225043

/-! ## A225043.P2289336644895096206

`(A285118(n)+A285116(n))%A002024(n+1)`
-/

namespace A225043.P2289336644895096206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285118 n + A285116 n) (A002024 (n + 1))

end

end A225043.P2289336644895096206

namespace A225043

/-- `(A285118(n)+A285116(n))%A002024(n+1)` -/
def P2289336644895096206.Spec : Prop :=
  ∀ n, P2289336644895096206.a n = A225043 n

end A225043

/-! ## A225043.P944544731953105840

`gcd(A124927(n), A124928(n))%A002024(n+1)`
-/

namespace A225043.P944544731953105840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A124927 n) (A124928 n) : ℤ) (A002024 (n + 1))

end

end A225043.P944544731953105840

namespace A225043

/-- `gcd(A124927(n), A124928(n))%A002024(n+1)` -/
def P944544731953105840.Spec : Prop :=
  ∀ n, P944544731953105840.a n = A225043 n

end A225043

/-! ## A225043.P4505780884932607696

`C(A003056(n), A002262(n))%A002024(n+1)`
-/

namespace A225043.P4505780884932607696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P4505780884932607696

namespace A225043

/-- `C(A003056(n), A002262(n))%A002024(n+1)` -/
def P4505780884932607696.Spec : Prop :=
  ∀ n, P4505780884932607696.a n = A225043 n

end A225043

/-! ## A225043.P1758570704861945491

`C(A003056(n), A025581(n))%A002024(n+1)`
-/

namespace A225043.P1758570704861945491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P1758570704861945491

namespace A225043

/-- `C(A003056(n), A025581(n))%A002024(n+1)` -/
def P1758570704861945491.Spec : Prop :=
  ∀ n, P1758570704861945491.a n = A225043 n

end A225043

/-! ## A225043.P10880346151892852206

`C(A003056(n), A103822(n))%A002024(n+1)`
-/

namespace A225043.P10880346151892852206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A103822 n).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P10880346151892852206

namespace A225043

/-- `C(A003056(n), A103822(n))%A002024(n+1)` -/
def P10880346151892852206.Spec : Prop :=
  ∀ n, P10880346151892852206.a n = A225043 n

end A225043

/-! ## A225043.P8176538982845588501

`C(A003056(n), A002260(n+1)-1)%A002024(n+1)`
-/

namespace A225043.P8176538982845588501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P8176538982845588501

namespace A225043

/-- `C(A003056(n), A002260(n+1)-1)%A002024(n+1)` -/
def P8176538982845588501.Spec : Prop :=
  ∀ n, P8176538982845588501.a n = A225043 n

end A225043

/-! ## A225043.P15912780073034838662

`C(A003056(n), A004736(n+1)-1)%A002024(n+1)`
-/

namespace A225043.P15912780073034838662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P15912780073034838662

namespace A225043

/-- `C(A003056(n), A004736(n+1)-1)%A002024(n+1)` -/
def P15912780073034838662.Spec : Prop :=
  ∀ n, P15912780073034838662.a n = A225043 n

end A225043

/-! ## A225043.P8372857468618271815

`(A123578(n+1)+A007318(n))%A123578(n+1)`
-/

namespace A225043.P8372857468618271815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (n + 1) + A007318 n) (A123578 (n + 1))

end

end A225043.P8372857468618271815

namespace A225043

/-- `(A123578(n+1)+A007318(n))%A123578(n+1)` -/
def P8372857468618271815.Spec : Prop :=
  ∀ n, P8372857468618271815.a n = A225043 n

end A225043

/-! ## A225043.P4301365225234302952

`A193554(lt[1, A124927(n)])%A002024(n+1)`
-/

namespace A225043.P4301365225234302952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002024 (n + 1))

end

end A225043.P4301365225234302952

namespace A225043

/-- `A193554(lt[1, A124927(n)])%A002024(n+1)` -/
def P4301365225234302952.Spec : Prop :=
  ∀ n, P4301365225234302952.a n = A225043 n

end A225043

/-! ## A225043.P13788107884194561880

`A193554(lt[1, A209518(n)])%A002024(n+1)`
-/

namespace A225043.P13788107884194561880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002024 (n + 1))

end

end A225043.P13788107884194561880

namespace A225043

/-- `A193554(lt[1, A209518(n)])%A002024(n+1)` -/
def P13788107884194561880.Spec : Prop :=
  ∀ n, P13788107884194561880.a n = A225043 n

end A225043

/-!
# A225044: Number of partitions of n into non-triangular numbers, cf. A014132.

The programs for A225044, there is no canonical definition to state claims against.
-/

/-! ## A225044.P10776455103456529482

`A263234(∑[n])`
-/

namespace A225044.P10776455103456529482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225044.P10776455103456529482

/-! ## A225044.P9403095116268618841

`and(-1, A263234(A000217(n)))`
-/

namespace A225044.P9403095116268618841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263234 (A000217 n).toNat)

end

end A225044.P9403095116268618841

/-! ## A225044.P1900739737251904357

`or(A000007(n), A263234((n²+n)/2))`
-/

namespace A225044.P1900739737251904357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263234 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A225044.P1900739737251904357

/-! ## A225044.P2169155567558242666

`A010685(2*n)*A263234((n²+n)/2)`
-/

namespace A225044.P2169155567558242666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A263234 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A225044.P2169155567558242666

/-! ## A225044.P7509960727880336284

`A263234(A000217(n))%A000032(n)`
-/

namespace A225044.P7509960727880336284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263234 (A000217 n).toNat) (A000032 n)

end

end A225044.P7509960727880336284

/-! ## A225044.P4848676930277254949

`gcd(A000038(n), A263234(A000217(n)))`
-/

namespace A225044.P4848676930277254949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263234 (A000217 n).toNat)

end

end A225044.P4848676930277254949

/-! ## A225044.P1259573031723093286

`A000041(C(2, n))*A263234(A000217(n))`
-/

namespace A225044.P1259573031723093286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A263234 (A000217 n).toNat

end

end A225044.P1259573031723093286

/-! ## A225044.P17872245246588736884

`A007318(C(2, n))*A263234(A000217(n))`
-/

namespace A225044.P17872245246588736884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263234 (A000217 n).toNat

end

end A225044.P17872245246588736884

/-! ## A225044.P13750452635662620744

`A000010(C(2, n)!)*A263234(A000217(n))`
-/

namespace A225044.P13750452635662620744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A263234 (A000217 n).toNat

end

end A225044.P13750452635662620744

/-! ## A225044.P7088068075099960020

`A263234(A000217(n))/A000041(C(n, n²))`
-/

namespace A225044.P7088068075099960020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263234 (A000217 n).toNat : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A225044.P7088068075099960020

/-! ## A225044.P16256047519556436143

`gcd(2, A000040(n+2))*A263234(A000217(n))`
-/

namespace A225044.P16256047519556436143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A263234 (A000217 n).toNat

end

end A225044.P16256047519556436143

/-! ## A225044.P5348752455730318291

`A000108(C(2, n+2))*A263234(A000217(n))`
-/

namespace A225044.P5348752455730318291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A263234 (A000217 n).toNat

end

end A225044.P5348752455730318291

/-! ## A225044.P5093274589483225293

`A007318(gcd(n, n+1))*A263234(A000217(n))`
-/

namespace A225044.P5093274589483225293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A263234 (A000217 n).toNat

end

end A225044.P5093274589483225293

/-! ## A225044.P147482312925892219

`A284683(A091088(n))+A263234(A000217(n))`
-/

namespace A225044.P147482312925892219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A091088 n).toNat + A263234 (A000217 n).toNat

end

end A225044.P147482312925892219

/-! ## A225044.P9412214604429675216

`A263234(A000217(n))*A267813(A129756(n))`
-/

namespace A225044.P9412214604429675216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263234 (A000217 n).toNat * A267813 (A129756 n).toNat

end

end A225044.P9412214604429675216

/-! ## A225044.P11999463827313350034

`A000010(A014963(2*(n+2)))*A263234(A000217(n))`
-/

namespace A225044.P11999463827313350034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 2))).toNat * A263234 (A000217 n).toNat

end

end A225044.P11999463827313350034

/-!
# A225045: Number of partitions of n into distinct non-triangular numbers, cf. A014132.

The programs for A225045, there is no canonical definition to state claims against.
-/

/-! ## A225045.P10475822162698102730

`A003056(A017827(2*n)%A146205(n+1))`
-/

namespace A225045.P10475822162698102730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A017827 (2 * n)) (A146205 (n + 1))).toNat

end

end A225045.P10475822162698102730

/-! ## A225045.P14132818753757999004

`floor(A037827(A329908(n+2))+acot(n))`
-/

namespace A225045.P14132818753757999004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037827 (A329908 (n + 2)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A225045.P14132818753757999004

/-! ## A225045.P3425013856996355418

`A193606(3*n+4)%A061375(n+5)`
-/

namespace A225045.P3425013856996355418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193606 (3 * n + 4)) (A061375 (n + 5))

end

end A225045.P3425013856996355418

/-! ## A225045.P3696803643548233914

`A282971(n)-A340998(A000124(n))`
-/

namespace A225045.P3696803643548233914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282971 n - A340998 ((A000124 n).toNat + 140)

end

end A225045.P3696803643548233914

/-! ## A225045.P10795924160141080812

`gcd(A008720(n), A225541(A279603(n)))`
-/

namespace A225045.P10795924160141080812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008720 n) (A225541 (A279603 n).toNat)

end

end A225045.P10795924160141080812

/-!
# A225047: Inverse permutation to A121216.

The programs for A225047, there is no canonical definition to state claims against.
-/

/-! ## A225047.P6675407024555419777

`1-A353707(n+1)+n`
-/

namespace A225047.P6675407024555419777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353707 (n + 1) + (n : ℤ)

end

end A225047.P6675407024555419777

/-! ## A225047.P3332523184312733639

`abs(A353707(n+1)+A001478(n+1))`
-/

namespace A225047.P3332523184312733639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353707 (n + 1) + A001478 (n + 1)|

end

end A225047.P3332523184312733639

/-! ## A225047.P14953488715660544987

`abs(A353707(n+1)+A001489(n))+1`
-/

namespace A225047.P14953488715660544987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353707 (n + 1) + A001489 n| + 1

end

end A225047.P14953488715660544987

/-! ## A225047.P7979930671403958802

`n+1-A353707(A077168(n))`
-/

namespace A225047.P7979930671403958802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A353707 (A077168 n).toNat

end

end A225047.P7979930671403958802

/-!
# A225048: Numbers that cannot be expressed as k plus the sum of the squared digits of k for any integer k.

The programs for A225048, the canonical program `A225048.P15967828934244146803` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225048 has offset 1).

The definition of A225048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225048.P14920895500285568448

`comp[∑{digits}[n, #²]+n]`
-/

namespace A225048.P14920895500285568448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A225048.P14920895500285568448

namespace A225048

/-- `comp[∑{digits}[n, #²]+n]` -/
def P14920895500285568448.Spec : Prop :=
  ∀ n, (P14920895500285568448.a n : ℤ) = A225048 (n + 1)

end A225048

/-! ## A225048.P15967828934244146803

`eq[0, char[∑{digits}[n, #²]+n]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225048

/-- `eq[0, char[∑{digits}[n, #²]+n]]` -/
def P15967828934244146803.Spec : Prop :=
  ∀ n, (P15967828934244146803.a n : ℤ) = A225048 (n + 1)

theorem P15967828934244146803.correct : P15967828934244146803.Spec := by
  intro n
  simp only [A225048, Nat.add_sub_cancel]

end A225048

/-! ## A225048.P15953589498028420045

`lt[char[∑{digits}[n, #²]+n], 1]`
-/

namespace A225048.P15953589498028420045
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A225048.P15953589498028420045

namespace A225048

/-- `lt[char[∑{digits}[n, #²]+n], 1]` -/
def P15953589498028420045.Spec : Prop :=
  ∀ n, (P15953589498028420045.a n : ℤ) = A225048 (n + 1)

end A225048

/-! ## A225048.P12868305663360624407

`comp[A003132(n)+n]`
-/

namespace A225048.P12868305663360624407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225048.P12868305663360624407

namespace A225048

/-- `comp[A003132(n)+n]` -/
def P12868305663360624407.Spec : Prop :=
  ∀ n, (P12868305663360624407.a n : ℤ) = A225048 (n + 1)

end A225048

/-! ## A225048.P16350507625431087900

`comp[A258881(n)]`
-/

namespace A225048.P16350507625431087900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A225048.P16350507625431087900

namespace A225048

/-- `comp[A258881(n)]` -/
def P16350507625431087900.Spec : Prop :=
  ∀ n, (P16350507625431087900.a n : ℤ) = A225048 (n + 1)

end A225048

/-!
# A225050: Number of shortest paths from one vertex of a cube (side = n units) to farthest vertex, along the grid on 3 surfaces meeting at another vertex.

The programs for A225050, the canonical program `A225050.P5868256292011025146` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225050 has offset 0).

The definition of A225050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225050.P5868256292011025146

`2*C(3*n, n)-C(2*n, n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225050

/-- `2*C(3*n, n)-C(2*n, n)` -/
def P5868256292011025146.Spec : Prop :=
  ∀ n, P5868256292011025146.a n = A225050 n

theorem P5868256292011025146.correct : P5868256292011025146.Spec := by
  intro n
  simp only [A225050]

end A225050

/-! ## A225050.P15921848631900088569

`(n+1)*A007857(n+1)`
-/

namespace A225050.P15921848631900088569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007857 (n + 1)

end

end A225050.P15921848631900088569

namespace A225050

/-- `(n+1)*A007857(n+1)` -/
def P15921848631900088569.Spec : Prop :=
  ∀ n, P15921848631900088569.a n = A225050 n

end A225050

/-! ## A225050.P13836911429540854211

`A005809(n)+A000846(n)`
-/

namespace A225050.P13836911429540854211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + A000846 n

end

end A225050.P13836911429540854211

namespace A225050

/-- `A005809(n)+A000846(n)` -/
def P13836911429540854211.Spec : Prop :=
  ∀ n, P13836911429540854211.a n = A225050 n

theorem P13836911429540854211.correct : P13836911429540854211.Spec := by
  intro n
  simp only [A225050, Nat.add_sub_cancel, A225050.P13836911429540854211.a, A225050.P5868256292011025146.a, A000846, A000846.P3216828975379126423.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225050

/-! ## A225050.P9422248282712403378

`A000846(n)+record[A264772(n)]`
-/

namespace A225050.P9422248282712403378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000846 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225050.P9422248282712403378

namespace A225050

/-- `A000846(n)+record[A264772(n)]` -/
def P9422248282712403378.Spec : Prop :=
  ∀ n, P9422248282712403378.a n = A225050 n

end A225050

/-! ## A225050.P7334106141659503973

`A000984(n)+2*A000846(n)`
-/

namespace A225050.P7334106141659503973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A000846 n

end

end A225050.P7334106141659503973

namespace A225050

/-- `A000984(n)+2*A000846(n)` -/
def P7334106141659503973.Spec : Prop :=
  ∀ n, P7334106141659503973.a n = A225050 n

theorem P7334106141659503973.correct : P7334106141659503973.Spec := by
  intro n
  simp only [A225050, Nat.add_sub_cancel, A225050.P7334106141659503973.a, A225050.P5868256292011025146.a, A000846, A000846.P3216828975379126423.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225050

/-! ## A225050.P18297696052246848178

`A065942(2*n)+A000846(n)`
-/

namespace A225050.P18297696052246848178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) + A000846 n

end

end A225050.P18297696052246848178

namespace A225050

/-- `A065942(2*n)+A000846(n)` -/
def P18297696052246848178.Spec : Prop :=
  ∀ n, P18297696052246848178.a n = A225050 n

end A225050

/-! ## A225050.P6569440602864028768

`2*A005809(n)-A000984(n)`
-/

namespace A225050.P6569440602864028768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A000984 n

end

end A225050.P6569440602864028768

namespace A225050

/-- `2*A005809(n)-A000984(n)` -/
def P6569440602864028768.Spec : Prop :=
  ∀ n, P6569440602864028768.a n = A225050 n

end A225050

/-!
# A225051: Numbers of the form x^3 + SumOfCubedDigits(x).

The programs for A225051, the canonical program `A225051.P9988902653333140305` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225051 has offset 0).

The definition of A225051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225051.P9988902653333140305

`A000578(n)+A055012(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225051

/-- `A000578(n)+A055012(n)` -/
def P9988902653333140305.Spec : Prop :=
  ∀ n, P9988902653333140305.a n = A225051 n

theorem P9988902653333140305.correct : P9988902653333140305.Spec := by
  intro n
  simp only [A225051]

end A225051

/-! ## A225051.P15151556999526472334

`∑{digits}[n, #^3]+n^3`
-/

namespace A225051.P15151556999526472334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum + n ^ 3

end

end A225051.P15151556999526472334

namespace A225051

/-- `∑{digits}[n, #^3]+n^3` -/
def P15151556999526472334.Spec : Prop :=
  ∀ n, (P15151556999526472334.a n : ℤ) = A225051 n

theorem P15151556999526472334.correct : P15151556999526472334.Spec := by
  intro n
  simp only [A225051, Nat.add_sub_cancel, A225051.P15151556999526472334.f1, A225051.P15151556999526472334.a, A225051.P9988902653333140305.a, A000578, A000578.P12162961755414704816.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225051

/-! ## A225051.P7589724331350737831

`2*n^3-(n^3-∑{digits}[n, #^3])`
-/

namespace A225051.P7589724331350737831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℤ) - ((n ^ 3 : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℤ))

end

end A225051.P7589724331350737831

namespace A225051

/-- `2*n^3-(n^3-∑{digits}[n, #^3])` -/
def P7589724331350737831.Spec : Prop :=
  ∀ n, P7589724331350737831.a n = A225051 n

theorem P7589724331350737831.correct : P7589724331350737831.Spec := by
  intro n
  simp only [A225051, Nat.add_sub_cancel, A225051.P7589724331350737831.f1, A225051.P7589724331350737831.a, A225051.P9988902653333140305.a, A000578, A000578.P12162961755414704816.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225051

/-! ## A225051.P15203140249012389926

`A055012(n)+n^3`
-/

namespace A225051.P15203140249012389926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n + (n ^ 3 : ℤ)

end

end A225051.P15203140249012389926

namespace A225051

/-- `A055012(n)+n^3` -/
def P15203140249012389926.Spec : Prop :=
  ∀ n, P15203140249012389926.a n = A225051 n

theorem P15203140249012389926.correct : P15203140249012389926.Spec := by
  intro n
  simp only [A225051, Nat.add_sub_cancel, A225051.P15203140249012389926.a, A225051.P9988902653333140305.a, A000578, A000578.P12162961755414704816.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225051

/-! ## A225051.P9208590485599924439

`A000578(n)+∑{digits}[n, #^3]`
-/

namespace A225051.P9208590485599924439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℤ)

end

end A225051.P9208590485599924439

namespace A225051

/-- `A000578(n)+∑{digits}[n, #^3]` -/
def P9208590485599924439.Spec : Prop :=
  ∀ n, P9208590485599924439.a n = A225051 n

end A225051

/-! ## A225051.P5123905386456240457

`n^3-A001489(∑{digits}[n, #^3])`
-/

namespace A225051.P5123905386456240457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A001489 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum

end

end A225051.P5123905386456240457

namespace A225051

/-- `n^3-A001489(∑{digits}[n, #^3])` -/
def P5123905386456240457.Spec : Prop :=
  ∀ n, P5123905386456240457.a n = A225051 n

theorem P5123905386456240457.correct : P5123905386456240457.Spec := by
  intro n
  simp only [A225051, Nat.add_sub_cancel, A225051.P5123905386456240457.f1, A225051.P5123905386456240457.a, A225051.P9988902653333140305.a, A000578, A000578.P12162961755414704816.a, A001489, A001489.P15233530513763566776.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A225051

/-!
# A225052: E.g.f. satisfies: A(x) = exp( Integral 1/(1 - x*A(x)) dx ).

The programs for A225052, there is no canonical definition to state claims against.
-/

/-! ## A225052.P7555138159099209921

`A278061(2^C(n, 2))`
-/

namespace A225052.P7555138159099209921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278061 (2 ^ Nat.choose n 2)

end

end A225052.P7555138159099209921

/-! ## A225052.P2916963065723163443

`A278061(∏[ceil(2^(n-1))])`
-/

namespace A225052.P2916963065723163443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278061 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225052.P2916963065723163443

/-!
# A225054: Triangle read by rows: Eulerian numbers T(n, k) = A173018(n + 1, k) reduced mod n + 1.

The programs for A225054, the canonical program `A225054.P5234788269662475507` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225054 has offset 0).

The definition of A225054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225054.P5234788269662475507

`A008292(n+1)%∑[char[∑[n]]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225054

/-- `A008292(n+1)%∑[char[∑[n]]]` -/
def P5234788269662475507.Spec : Prop :=
  ∀ n, P5234788269662475507.a n = A225054 n

theorem P5234788269662475507.correct : P5234788269662475507.Spec := by
  intro n
  simp only [A225054]

end A225054

/-! ## A225054.P14733138670850348506

`A123125(comp[∑[n]])%∑[char[∑[n]]]`
-/

namespace A225054.P14733138670850348506
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
  Int.tmod (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A225054.P14733138670850348506

namespace A225054

/-- `A123125(comp[∑[n]])%∑[char[∑[n]]]` -/
def P14733138670850348506.Spec : Prop :=
  ∀ n, P14733138670850348506.a n = A225054 n

end A225054

/-! ## A225054.P4423993942917975891

`A173018(comp[∑[n-1]])%∑[char[∑[n]]]`
-/

namespace A225054.P4423993942917975891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
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
  Int.tmod (A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A225054.P4423993942917975891

namespace A225054

/-- `A173018(comp[∑[n-1]])%∑[char[∑[n]]]` -/
def P4423993942917975891.Spec : Prop :=
  ∀ n, P4423993942917975891.a n = A225054 n

end A225054

/-! ## A225054.P10475284145955815702

`((A176204(n)+3)/4)%∑[char[∑[n]]]`
-/

namespace A225054.P10475284145955815702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A176204 n + 3 : ℚ) / 4)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225054.P10475284145955815702

namespace A225054

/-- `((A176204(n)+3)/4)%∑[char[∑[n]]]` -/
def P10475284145955815702.Spec : Prop :=
  ∀ n, P10475284145955815702.a n = A225054 n

end A225054

/-! ## A225054.P7817087452321455443

`(A141686(n+1)/A007318(n))%round(sqrt(2*n+1))`
-/

namespace A225054.P7817087452321455443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A141686 (n + 1) : ℚ) / (A007318 n : ℚ))) (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)))

end

end A225054.P7817087452321455443

namespace A225054

/-- `(A141686(n+1)/A007318(n))%round(sqrt(2*n+1))` -/
def P7817087452321455443.Spec : Prop :=
  ∀ n, P7817087452321455443.a n = A225054 n

end A225054

/-! ## A225054.P13343186690024018135

`A264902(n+1)%∑[char[∑[n]]]`
-/

namespace A225054.P13343186690024018135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264902 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225054.P13343186690024018135

namespace A225054

/-- `A264902(n+1)%∑[char[∑[n]]]` -/
def P13343186690024018135.Spec : Prop :=
  ∀ n, P13343186690024018135.a n = A225054 n

end A225054

/-! ## A225054.P1502579079996811892

`A155163(n+1)%∑[char[∑[n]]]`
-/

namespace A225054.P1502579079996811892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155163 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225054.P1502579079996811892

namespace A225054

/-- `A155163(n+1)%∑[char[∑[n]]]` -/
def P1502579079996811892.Spec : Prop :=
  ∀ n, P1502579079996811892.a n = A225054 n

end A225054

/-! ## A225054.P4672258587002360722

`A156653(n+1)%∑[char[∑[n]]]`
-/

namespace A225054.P4672258587002360722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156653 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A225054.P4672258587002360722

namespace A225054

/-- `A156653(n+1)%∑[char[∑[n]]]` -/
def P4672258587002360722.Spec : Prop :=
  ∀ n, P4672258587002360722.a n = A225054 n

end A225054

/-! ## A225054.P5300081503277840411

`A027537(n+1)%A002024(n+1)`
-/

namespace A225054.P5300081503277840411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027537 (n + 1)) (A002024 (n + 1))

end

end A225054.P5300081503277840411

namespace A225054

/-- `A027537(n+1)%A002024(n+1)` -/
def P5300081503277840411.Spec : Prop :=
  ∀ n, P5300081503277840411.a n = A225054 n

end A225054

/-! ## A225054.P18419713035203409647

`A027538(n+1)%A002024(n+1)`
-/

namespace A225054.P18419713035203409647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027538 (n + 1)) (A002024 (n + 1))

end

end A225054.P18419713035203409647

namespace A225054

/-- `A027538(n+1)%A002024(n+1)` -/
def P18419713035203409647.Spec : Prop :=
  ∀ n, P18419713035203409647.a n = A225054 n

end A225054

/-!
# A225055: Irregular triangle which lists the three positions of 2*n-1 in A060819 in row n.

The programs for A225055, the canonical program `A225055.P17108857820729196145` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225055 has offset 1).

The definition of A225055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225055.P15895608451044750682

`(2*floor(n/3)+1)*2^(n%3)`
-/

namespace A225055.P15895608451044750682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊(n : ℚ) / 3⌋ + 1) * (2 ^ (n % 3) : ℤ)

end

end A225055.P15895608451044750682

namespace A225055

/-- `(2*floor(n/3)+1)*2^(n%3)` -/
def P15895608451044750682.Spec : Prop :=
  ∀ n, P15895608451044750682.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P17108857820729196145

`a(n-3)+2*gcd(4, a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225055

/-- `a(n-3)+2*gcd(4, a(n-3))` -/
def P17108857820729196145.Spec : Prop :=
  ∀ n, (P17108857820729196145.a n : ℤ) = A225055 (n + 1)

theorem P17108857820729196145.correct : P17108857820729196145.Spec := by
  intro n
  simp only [A225055, Nat.add_sub_cancel]

end A225055

/-! ## A225055.P247149563056951074

`A247555(∑[1-n²%3]+n)`
-/

namespace A225055.P247149563056951074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A225055.P247149563056951074

namespace A225055

/-- `A247555(∑[1-n²%3]+n)` -/
def P247149563056951074.Spec : Prop :=
  ∀ n, P247149563056951074.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P4873040887508426549

`A247555(∑[∑[n+1]%3]+n)`
-/

namespace A225055.P4873040887508426549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A225055.P4873040887508426549

namespace A225055

/-- `A247555(∑[∑[n+1]%3]+n)` -/
def P4873040887508426549.Spec : Prop :=
  ∀ n, P4873040887508426549.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P17186831601579500000

`A265667(A222257(n))`
-/

namespace A225055.P17186831601579500000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A222257 n).toNat

end

end A225055.P17186831601579500000

namespace A225055

/-- `A265667(A222257(n))` -/
def P17186831601579500000.Spec : Prop :=
  ∀ n, P17186831601579500000.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P11760310238195142392

`A247555(A042968(n+1))`
-/

namespace A225055.P11760310238195142392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A042968 (n + 1)).toNat

end

end A225055.P11760310238195142392

namespace A225055

/-- `A247555(A042968(n+1))` -/
def P11760310238195142392.Spec : Prop :=
  ∀ n, P11760310238195142392.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P15984113199833389935

`A247555(A059557(n+1))`
-/

namespace A225055.P15984113199833389935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A059557 (n + 1)).toNat

end

end A225055.P15984113199833389935

namespace A225055

/-- `A247555(A059557(n+1))` -/
def P15984113199833389935.Spec : Prop :=
  ∀ n, P15984113199833389935.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P10418367053703650621

`A222259(A265667(n+1))`
-/

namespace A225055.P10418367053703650621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222259 (A265667 (n + 1)).toNat

end

end A225055.P10418367053703650621

namespace A225055

/-- `A222259(A265667(n+1))` -/
def P10418367053703650621.Spec : Prop :=
  ∀ n, P10418367053703650621.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P1051413756083296691

`lcm(A069705(n), A226122(n))`
-/

namespace A225055.P1051413756083296691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069705 n) (A226122 n)

end

end A225055.P1051413756083296691

namespace A225055

/-- `lcm(A069705(n), A226122(n))` -/
def P1051413756083296691.Spec : Prop :=
  ∀ n, (P1051413756083296691.a n : ℤ) = A225055 (n + 1)

end A225055

/-! ## A225055.P9159369555774562120

`filter[A247555(n), A168181(#)]`
-/

namespace A225055.P9159369555774562120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A225055.P9159369555774562120

namespace A225055

/-- `filter[A247555(n), A168181(#)]` -/
def P9159369555774562120.Spec : Prop :=
  ∀ n, P9159369555774562120.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P12988603051526891090

`A247555(A004396(2*n+1))`
-/

namespace A225055.P12988603051526891090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A004396 (2 * n + 1)).toNat

end

end A225055.P12988603051526891090

namespace A225055

/-- `A247555(A004396(2*n+1))` -/
def P12988603051526891090.Spec : Prop :=
  ∀ n, P12988603051526891090.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P10491291171774291148

`A069705(n)*A130823(n+1)`
-/

namespace A225055.P10491291171774291148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n * A130823 (n + 1)

end

end A225055.P10491291171774291148

namespace A225055

/-- `A069705(n)*A130823(n+1)` -/
def P10491291171774291148.Spec : Prop :=
  ∀ n, P10491291171774291148.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P552515127853416636

`A146325(n+3)*A226122(n)`
-/

namespace A225055.P552515127853416636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146325 (n + 3) * A226122 n

end

end A225055.P552515127853416636

namespace A225055

/-- `A146325(n+3)*A226122(n)` -/
def P552515127853416636.Spec : Prop :=
  ∀ n, P552515127853416636.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P4618214118002706792

`lcm(A130823(n+1), A132954(n))`
-/

namespace A225055.P4618214118002706792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130823 (n + 1)) (A132954 n)

end

end A225055.P4618214118002706792

namespace A225055

/-- `lcm(A130823(n+1), A132954(n))` -/
def P4618214118002706792.Spec : Prop :=
  ∀ n, (P4618214118002706792.a n : ℤ) = A225055 (n + 1)

end A225055

/-! ## A225055.P368872174549349304

`A247555(lt[A247555(n), 2*n])`
-/

namespace A225055.P368872174549349304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225055.P368872174549349304

namespace A225055

/-- `A247555(lt[A247555(n), 2*n])` -/
def P368872174549349304.Spec : Prop :=
  ∀ n, P368872174549349304.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P12950156068846242281

`A247555(lt[A247555(n)/2, n])`
-/

namespace A225055.P12950156068846242281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247555 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A225055.P12950156068846242281

namespace A225055

/-- `A247555(lt[A247555(n)/2, n])` -/
def P12950156068846242281.Spec : Prop :=
  ∀ n, P12950156068846242281.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P2099479395379607529

`A247555(lt[A247555(n)-n, n])`
-/

namespace A225055.P2099479395379607529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225055.P2099479395379607529

namespace A225055

/-- `A247555(lt[A247555(n)-n, n])` -/
def P2099479395379607529.Spec : Prop :=
  ∀ n, P2099479395379607529.a n = A225055 (n + 1)

end A225055

/-! ## A225055.P8640305824658860490

`A247555(A004396(n+1)+A004396(n))`
-/

namespace A225055.P8640305824658860490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A004396 (n + 1) + A004396 n).toNat

end

end A225055.P8640305824658860490

namespace A225055

/-- `A247555(A004396(n+1)+A004396(n))` -/
def P8640305824658860490.Spec : Prop :=
  ∀ n, P8640305824658860490.a n = A225055 (n + 1)

end A225055

/-!
# A225058: a(4*n) = n-1. a(2*n+1) = a(4*n+2) = 2*n+1.

The programs for A225058, the canonical program `A225058.P6550590898536505240` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225058 has offset 0).

The definition of A225058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225058.P6550590898536505240

`2*a(n-4)-a(n-8)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=3, a(4)=0, a(5)=5, a(6)=3, a(7)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A225058

/-- `2*a(n-4)-a(n-8)` -/
def P6550590898536505240.Spec : Prop :=
  ∀ n, P6550590898536505240.a n = A225058 n

theorem P6550590898536505240.correct : P6550590898536505240.Spec := by
  intro n
  simp only [A225058]

end A225058

/-! ## A225058.P8260235286004997567

`ogf((-1+x+x^2+3x^3+2x^4+3x^5+x^6+x^7)/(1-2x^4+x^8))`
-/

namespace A225058.P8260235286004997567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 1, 3, 2, 3, 1, 1] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A225058.P8260235286004997567

namespace A225058

/-- `ogf((-1+x+x^2+3x^3+2x^4+3x^5+x^6+x^7)/(1-2x^4+x^8))` -/
def P8260235286004997567.Spec : Prop :=
  ∀ n, P8260235286004997567.a n = A225058 n

end A225058

/-! ## A225058.P13192077798214484802

`round((n+1)/gcd(4, n))-1`
-/

namespace A225058.P13192077798214484802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 4 n : ℚ)) - 1

end

end A225058.P13192077798214484802

namespace A225058

/-- `round((n+1)/gcd(4, n))-1` -/
def P13192077798214484802.Spec : Prop :=
  ∀ n, P13192077798214484802.a n = A225058 n

end A225058

/-! ## A225058.P14686581241709117767

`A339913(lcm(2, n)+2)-2`
-/

namespace A225058.P14686581241709117767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (Nat.lcm 2 n + 2) - 2

end

end A225058.P14686581241709117767

namespace A225058

/-- `A339913(lcm(2, n)+2)-2` -/
def P14686581241709117767.Spec : Prop :=
  ∀ n, P14686581241709117767.a n = A225058 n

end A225058

/-! ## A225058.P15212888921722717532

`A145051(A026741(n)+1)-2`
-/

namespace A225058.P15212888921722717532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A026741 n + 1).toNat - 2

end

end A225058.P15212888921722717532

namespace A225058

/-- `A145051(A026741(n)+1)-2` -/
def P15212888921722717532.Spec : Prop :=
  ∀ n, P15212888921722717532.a n = A225058 n

end A225058

/-! ## A225058.P9748127011634951468

`A026741(n)-A027656(A004525(n))`
-/

namespace A225058.P9748127011634951468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - A027656 (A004525 n).toNat

end

end A225058.P9748127011634951468

namespace A225058

/-- `A026741(n)-A027656(A004525(n))` -/
def P9748127011634951468.Spec : Prop :=
  ∀ n, P9748127011634951468.a n = A225058 n

end A225058

/-! ## A225058.P5615775588152901483

`A014682(n)-A027656(A029578(n))`
-/

namespace A225058.P5615775588152901483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n - A027656 (A029578 n).toNat

end

end A225058.P5615775588152901483

namespace A225058

/-- `A014682(n)-A027656(A029578(n))` -/
def P5615775588152901483.Spec : Prop :=
  ∀ n, P5615775588152901483.a n = A225058 n

end A225058

/-! ## A225058.P1169583968586598293

`A026741(A026741(n))-A121262(n)`
-/

namespace A225058.P1169583968586598293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat - A121262 n

end

end A225058.P1169583968586598293

namespace A225058

/-- `A026741(A026741(n))-A121262(n)` -/
def P1169583968586598293.Spec : Prop :=
  ∀ n, P1169583968586598293.a n = A225058 n

end A225058

/-! ## A225058.P7595160226509548321

`A026741(A026741(n))+A166486(n)-1`
-/

namespace A225058.P7595160226509548321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat + (A166486 n - 1)

end

end A225058.P7595160226509548321

namespace A225058

/-- `A026741(A026741(n))+A166486(n)-1` -/
def P7595160226509548321.Spec : Prop :=
  ∀ n, P7595160226509548321.a n = A225058 n

end A225058

/-! ## A225058.P103474862447171380

`A065423(A026741(n)+2)-1`
-/

namespace A225058.P103474862447171380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A026741 n + 2).toNat - 1

end

end A225058.P103474862447171380

namespace A225058

/-- `A065423(A026741(n)+2)-1` -/
def P103474862447171380.Spec : Prop :=
  ∀ n, P103474862447171380.a n = A225058 n

end A225058

/-! ## A225058.P4406690414228505186

`A026741(A026741(n)+2)-2`
-/

namespace A225058.P4406690414228505186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n + 2).toNat - 2

end

end A225058.P4406690414228505186

namespace A225058

/-- `A026741(A026741(n)+2)-2` -/
def P4406690414228505186.Spec : Prop :=
  ∀ n, P4406690414228505186.a n = A225058 n

end A225058

/-! ## A225058.P7900654393382584710

`A060819(∑[2-a(n-1)]+1)-2` with `a(0)=3`
-/

namespace A225058.P7900654393382584710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 2

end

end A225058.P7900654393382584710

namespace A225058

/-- `A060819(∑[2-a(n-1)]+1)-2` -/
def P7900654393382584710.Spec : Prop :=
  ∀ n, P7900654393382584710.a n = A225058 n

end A225058

/-! ## A225058.P15077228042764550144

`A212831(A225975(n))-1`
-/

namespace A225058.P15077228042764550144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A225975 n).toNat - 1

end

end A225058.P15077228042764550144

namespace A225058

/-- `A212831(A225975(n))-1` -/
def P15077228042764550144.Spec : Prop :=
  ∀ n, P15077228042764550144.a n = A225058 n

end A225058

/-! ## A225058.P10287649450784274678

`A173234(A109043(n)+1)-2`
-/

namespace A225058.P10287649450784274678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (A109043 n + 1).toNat - 2

end

end A225058.P10287649450784274678

namespace A225058

/-- `A173234(A109043(n)+1)-2` -/
def P10287649450784274678.Spec : Prop :=
  ∀ n, P10287649450784274678.a n = A225058 n

end A225058

/-! ## A225058.P12246595594268935409

`A004524(A145979(n))-1`
-/

namespace A225058.P12246595594268935409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A145979 n).toNat - 1

end

end A225058.P12246595594268935409

namespace A225058

/-- `A004524(A145979(n))-1` -/
def P12246595594268935409.Spec : Prop :=
  ∀ n, P12246595594268935409.a n = A225058 n

end A225058

/-! ## A225058.P7991756967758533017

`A060819(n+4)-A109008(2*(n+1))`
-/

namespace A225058.P7991756967758533017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 4) - A109008 (2 * (n + 1))

end

end A225058.P7991756967758533017

namespace A225058

/-- `A060819(n+4)-A109008(2*(n+1))` -/
def P7991756967758533017.Spec : Prop :=
  ∀ n, P7991756967758533017.a n = A225058 n

end A225058

/-! ## A225058.P9208410201095647909

`A065262(n+2)%A065262(A065262(n+2)+1)-1`
-/

namespace A225058.P9208410201095647909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065262 (n + 2)) (A065262 (A065262 (n + 2) + 1).toNat) - 1

end

end A225058.P9208410201095647909

namespace A225058

/-- `A065262(n+2)%A065262(A065262(n+2)+1)-1` -/
def P9208410201095647909.Spec : Prop :=
  ∀ n, P9208410201095647909.a n = A225058 n

end A225058

/-! ## A225058.P17569831319924619481

`floor((A060819(3*n+4)+1)/3)-1`
-/

namespace A225058.P17569831319924619481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060819 (3 * n + 4) + 1 : ℚ) / 3⌋ - 1

end

end A225058.P17569831319924619481

namespace A225058

/-- `floor((A060819(3*n+4)+1)/3)-1` -/
def P17569831319924619481.Spec : Prop :=
  ∀ n, P17569831319924619481.a n = A225058 n

end A225058

/-! ## A225058.P6840690160427258798

`n+1-A242112(A027656(3*n+2))`
-/

namespace A225058.P6840690160427258798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A242112 (A027656 (3 * n + 2)).toNat

end

end A225058.P6840690160427258798

namespace A225058

/-- `n+1-A242112(A027656(3*n+2))` -/
def P6840690160427258798.Spec : Prop :=
  ∀ n, P6840690160427258798.a n = A225058 n

end A225058

/-! ## A225058.P10682585670857362823

`A026741(A026741(n))-A056594(A026741(n)²)`
-/

namespace A225058.P10682585670857362823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat - A056594 (A026741 n ^ 2).toNat

end

end A225058.P10682585670857362823

namespace A225058

/-- `A026741(A026741(n))-A056594(A026741(n)²)` -/
def P10682585670857362823.Spec : Prop :=
  ∀ n, P10682585670857362823.a n = A225058 n

end A225058

/-!
# A225060: Discriminants D < 0 such that h(D) > h(D') for D < D' < 0, negated.

The programs for A225060, there is no canonical definition to state claims against.
-/

/-! ## A225060.P18410426048958968471

`A060649(A225061(n+1))`
-/

namespace A225060.P18410426048958968471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (A225061 (n + 1)).toNat

end

end A225060.P18410426048958968471

/-! ## A225060.P338402911423803740

`A060649(record[A321440(n)])`
-/

namespace A225060.P338402911423803740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P338402911423803740

/-! ## A225060.P2465636049686609610

`A060649(record[A014599(n+1)])`
-/

namespace A225060.P2465636049686609610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P2465636049686609610

/-! ## A225060.P1963831371902679633

`A060649(record[A238872(2*n)])`
-/

namespace A225060.P1963831371902679633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P1963831371902679633

/-! ## A225060.P2947899412160517281

`A060649(record[A006641(n+1)])`
-/

namespace A225060.P2947899412160517281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P2947899412160517281

/-! ## A225060.P8132261259920702820

`A060649(record[A014600(n)])`
-/

namespace A225060.P8132261259920702820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P8132261259920702820

/-! ## A225060.P14594891999239241001

`A060649(record[A191410(n+3)])`
-/

namespace A225060.P14594891999239241001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P14594891999239241001

/-! ## A225060.P10592390632015076791

`A060649(record[-A292511(n+1)])`
-/

namespace A225060.P10592390632015076791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P10592390632015076791

/-! ## A225060.P2484979476874008935

`A060649(record[abs(A292511(2*n+1))])`
-/

namespace A225060.P2484979476874008935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292511 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225060.P2484979476874008935

/-!
# A225061: Record class numbers of discriminants of imaginary quadratic fields: h(-A225060(n)).

The programs for A225061, there is no canonical definition to state claims against.
-/

/-! ## A225061.P16586943440560840026

`A165601(floor(A225060(n+1)/4))`
-/

namespace A225061.P16586943440560840026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 ⌊(A225060 (n + 1) : ℚ) / 4⌋.toNat

end

end A225061.P16586943440560840026

/-! ## A225061.P12386452770525037887

`record[A165601(2*n+1)]`
-/

namespace A225061.P12386452770525037887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P12386452770525037887

/-! ## A225061.P14689506401373867665

`record[A321440(n)]`
-/

namespace A225061.P14689506401373867665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P14689506401373867665

/-! ## A225061.P3414755868176840640

`record[A006642(n+1)]`
-/

namespace A225061.P3414755868176840640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P3414755868176840640

/-! ## A225061.P15877053418070541108

`record[A003637(n+1)*A003641(n+1)]`
-/

namespace A225061.P15877053418070541108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003637 (n + 1) * A003641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P15877053418070541108

/-! ## A225061.P10519323952617929096

`record[A014599(n+1)]`
-/

namespace A225061.P10519323952617929096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P10519323952617929096

/-! ## A225061.P4641389591946224890

`record[A238872(2*n)]`
-/

namespace A225061.P4641389591946224890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P4641389591946224890

/-! ## A225061.P16160055663582775242

`record[A006641(n+1)]`
-/

namespace A225061.P16160055663582775242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P16160055663582775242

/-! ## A225061.P1322112731755008569

`record[A014600(n)]`
-/

namespace A225061.P1322112731755008569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P1322112731755008569

/-! ## A225061.P7469327984920381724

`record[A006371(n+1)]`
-/

namespace A225061.P7469327984920381724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225061.P7469327984920381724

/-!
# A225071: Number of Gaussian primes at taxicab distance 2n-1 from the origin.

The programs for A225071, there is no canonical definition to state claims against.
-/

/-! ## A225071.P8822276039550851037

`4*A225072(n+1)`
-/

namespace A225071.P8822276039550851037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A225072 (n + 1)

end

end A225071.P8822276039550851037

/-! ## A225071.P8647929297416335535

`A008586(A225072(n+1))`
-/

namespace A225071.P8647929297416335535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A225072 (n + 1)).toNat

end

end A225071.P8647929297416335535

/-! ## A225071.P2507552724325512996

`A218858(Δ[n²])`
-/

namespace A225071.P2507552724325512996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225071.P2507552724325512996

/-! ## A225071.P17008077634920517093

`4*A218859(Δ[n²])`
-/

namespace A225071.P17008077634920517093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A218859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225071.P17008077634920517093

/-! ## A225071.P12889632963729809387

`lcm(2, A218858(2*n+1))`
-/

namespace A225071.P12889632963729809387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218858 (2 * n + 1))

end

end A225071.P12889632963729809387

/-! ## A225071.P16354476273105955684

`2*2*A218859(2*n+1)`
-/

namespace A225071.P16354476273105955684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A218859 (2 * n + 1))

end

end A225071.P16354476273105955684

/-! ## A225071.P14618578377123224509

`A008586(A218859(2*n+1))`
-/

namespace A225071.P14618578377123224509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A218859 (2 * n + 1)).toNat

end

end A225071.P14618578377123224509

/-! ## A225071.P11728838542539718556

`A005843(2*A218859(2*n+1))`
-/

namespace A225071.P11728838542539718556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A218859 (2 * n + 1)).toNat

end

end A225071.P11728838542539718556

/-!
# A225072: Number of first-quadrant Gaussian primes at taxicab distance 2n-1 from the origin.

The programs for A225072, there is no canonical definition to state claims against.
-/

/-! ## A225072.P8885431981159382785

`A225071(n+1)/4`
-/

namespace A225072.P8885431981159382785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225071 (n + 1) : ℚ) / 4

end

end A225072.P8885431981159382785

/-! ## A225072.P5510080944766567798

`A002265(A225071(1+n))`
-/

namespace A225072.P5510080944766567798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A225071 (1 + n)).toNat

end

end A225072.P5510080944766567798

/-! ## A225072.P9542856494055935482

`A218859(Δ[n²])`
-/

namespace A225072.P9542856494055935482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225072.P9542856494055935482

/-! ## A225072.P15896924674422518011

`A218858(Δ[n²])/4`
-/

namespace A225072.P15896924674422518011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4

end

end A225072.P15896924674422518011

/-! ## A225072.P1198853078163821157

`xor(2, A218858(2*n+1)+2)/4`
-/

namespace A225072.P1198853078163821157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A218858 (2 * n + 1) + 2) : ℚ) / 4

end

end A225072.P1198853078163821157

/-! ## A225072.P12778523965108957736

`lcm(-Δ[(1+T(n-2,k-1))%(col(n)+1)], A218859(2*n+1))` with `a(0)=-2`
-/

namespace A225072.P12778523965108957736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  Int.tmod (1 + SequenceMachineLib.triUp2Left f1 n) (SequenceMachineLib.triCol n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(f1 (n + 1) - f1 n)) (A218859 (2 * n + 1))

end

end A225072.P12778523965108957736

/-! ## A225072.P13219168354471530909

`A002265(A218858(2*n+1))`
-/

namespace A225072.P13219168354471530909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A218858 (2 * n + 1)).toNat

end

end A225072.P13219168354471530909

/-! ## A225072.P14897515206418374161

`A025480(A218858(2*n+1)+1)`
-/

namespace A225072.P14897515206418374161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A218858 (2 * n + 1) + 1).toNat

end

end A225072.P14897515206418374161

/-! ## A225072.P14763082245595416719

`and(A007679(2*n+1)-1, A218859(2*n+1))`
-/

namespace A225072.P14763082245595416719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007679 (2 * n + 1) - 1) (A218859 (2 * n + 1))

end

end A225072.P14763082245595416719

/-! ## A225072.P128859568540162813

`and(A095121(2*n)+1, A218859(2*n+1))`
-/

namespace A225072.P128859568540162813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 (2 * n) + 1) (A218859 (2 * n + 1))

end

end A225072.P128859568540162813

/-!
# A225074: Location x of the first n x n square of composite Gaussian integers in the first quadrant.

The programs for A225074, there is no canonical definition to state claims against.
-/

/-! ## A225074.P8946074271033790450

`A225073(Δ[n²])`
-/

namespace A225074.P8946074271033790450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225074.P8946074271033790450

/-! ## A225074.P6339418553632382589

`and(-1, A225073(2*n+1))`
-/

namespace A225074.P6339418553632382589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A225073 (2 * n + 1))

end

end A225074.P6339418553632382589

/-! ## A225074.P15504656766036356601

`A057427(n)*A225073(2*n+1)`
-/

namespace A225074.P15504656766036356601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A225073 (2 * n + 1)

end

end A225074.P15504656766036356601

/-! ## A225074.P1435065163344854642

`A225073(2*n+1)%A002457(n)`
-/

namespace A225074.P1435065163344854642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225073 (2 * n + 1)) (A002457 n)

end

end A225074.P1435065163344854642

/-! ## A225074.P4182905470534748878

`A225043(∑[n])*A225073(2*n+1)`
-/

namespace A225074.P4182905470534748878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225043 (∑ j ∈ Finset.range (n + 1), f1 j) * A225073 (2 * n + 1)

end

end A225074.P4182905470534748878

/-!
# A225075: Location y of the first n x n square of composite Gaussian integers in the first quadrant.

The programs for A225075, there is no canonical definition to state claims against.
-/

/-! ## A225075.P1420713932172494819

`A225073(2*(n+1))`
-/

namespace A225075.P1420713932172494819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225073 (2 * (n + 1))

end

end A225075.P1420713932172494819

/-! ## A225075.P16548153008944484102

`abs(A225073(A103517(n)))`
-/

namespace A225075.P16548153008944484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225073 (A103517 n).toNat|

end

end A225075.P16548153008944484102

/-! ## A225075.P1827744512589175288

`abs(A225073(Δ[A002378(n)]))`
-/

namespace A225075.P1827744512589175288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225073 (f1 (n + 1) - f1 n).toNat|

end

end A225075.P1827744512589175288

/-! ## A225075.P354781835324680839

`abs(A225073(Δ[A014206(n)]))`
-/

namespace A225075.P354781835324680839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225073 (f1 (n + 1) - f1 n).toNat|

end

end A225075.P354781835324680839

/-!
# A225076: Triangle read by rows: absolute values of odd-numbered rows of A225356.

The programs for A225076, there is no canonical definition to state claims against.
-/

/-! ## A225076.P17620920004145599646

`abs(A225356(A161983(n)))`
-/

namespace A225076.P17620920004145599646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225356 (A161983 n).toNat|

end

end A225076.P17620920004145599646

/-! ## A225076.P8386110110624823995

`abs(A225356(A116942(2*n)))`
-/

namespace A225076.P8386110110624823995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225356 (A116942 (2 * n)).toNat|

end

end A225076.P8386110110624823995

/-! ## A225076.P3937465468222016052

`gcd(A000038(n), A225356(A161983(n)))`
-/

namespace A225076.P3937465468222016052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225356 (A161983 n).toNat)

end

end A225076.P3937465468222016052

/-! ## A225076.P3851054345235965205

`abs(A225356(A061887(n)+A000196(n)))`
-/

namespace A225076.P3851054345235965205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225356 (A061887 n + A000196 n).toNat|

end

end A225076.P3851054345235965205

/-! ## A225076.P11301528838339574448

`lcm(A057979(2*n), A225356(A161983(n)))`
-/

namespace A225076.P11301528838339574448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057979 (2 * n)) (A225356 (A161983 n).toNat)

end

end A225076.P11301528838339574448

/-!
# A225077: Smaller of the two consecutive primes whose sum is a triangular number.

The programs for A225077, there is no canonical definition to state claims against.
-/

/-! ## A225077.P13114635620802782239

`A151799(A111163(1+n)/2)`
-/

namespace A225077.P13114635620802782239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway ((A111163 (1 + n) : ℚ) / 2)).toNat

end

end A225077.P13114635620802782239

/-! ## A225077.P13191147352931352243

`A000040(A000720(A111163(n+1)/2))`
-/

namespace A225077.P13191147352931352243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (SequenceMachineLib.roundAway ((A111163 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A225077.P13191147352931352243

/-! ## A225077.P1507967956128670111

`A078587(A111163(n+1)/2)`
-/

namespace A225077.P1507967956128670111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (SequenceMachineLib.roundAway ((A111163 (n + 1) : ℚ) / 2)).toNat

end

end A225077.P1507967956128670111

/-! ## A225077.P11911571938259323751

`A002374(A111163(n+1)/2)`
-/

namespace A225077.P11911571938259323751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (SequenceMachineLib.roundAway ((A111163 (n + 1) : ℚ) / 2)).toNat

end

end A225077.P11911571938259323751

/-! ## A225077.P6089512654152948603

`A035031(A111163(n+1)/2)`
-/

namespace A225077.P6089512654152948603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (SequenceMachineLib.roundAway ((A111163 (n + 1) : ℚ) / 2)).toNat

end

end A225077.P6089512654152948603

/-!
# A225078: Numbers n such that n^2+1 and (n+1)^2-2 are both prime.

The programs for A225078, there is no canonical definition to state claims against.
-/

/-! ## A225078.P6902144419537308195

`∩[A005574(n+1), A089623(n+1)]`
-/

namespace A225078.P6902144419537308195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225078.P6902144419537308195

/-! ## A225078.P6888345581284204625

`∩[A005574(n+1), A028870(n+1)-1]`
-/

namespace A225078.P6888345581284204625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225078.P6888345581284204625

/-! ## A225078.P16258030442665624114

`filter[A089623(n+1), A295405(#)]`
-/

namespace A225078.P16258030442665624114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A225078.P16258030442665624114

/-! ## A225078.P9558012236118981314

`record[A247339(A089623(n+1))]`
-/

namespace A225078.P9558012236118981314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A089623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225078.P9558012236118981314

/-! ## A225078.P5795917679961085632

`∩[A005574(n+1), A023443(A028870(n+1))]`
-/

namespace A225078.P5795917679961085632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028870 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225078.P5795917679961085632

/-!
# A225080: Number of ON cells in n-th row of space-time diagram for Thue-Morse sequence.

The programs for A225080, there is no canonical definition to state claims against.
-/

/-! ## A225080.P2214965553219166828

`A250263(A218654(3*n+1))%A089278(3*n+2)`
-/

namespace A225080.P2214965553219166828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250263 (A218654 (3 * n + 1)).toNat) (A089278 (3 * n + 2))

end

end A225080.P2214965553219166828

/-!
# A225081: Gray code variant of A048896.

The programs for A225081, the canonical program `A225081.P6319409890311663631` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225081 has offset 0).

The definition of A225081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225081.P6319409890311663631

`2^(A005811(n+1)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A225081

/-- `2^(A005811(n+1)-1)` -/
def P6319409890311663631.Spec : Prop :=
  ∀ n, P6319409890311663631.a n = (A225081 n : ℚ)

end A225081

/-! ## A225081.P3351862394355333293

`2^(∑[Δ[xor(n, 2*n)]%2]-1)`
-/

namespace A225081.P3351862394355333293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ)

end

end A225081.P3351862394355333293

namespace A225081

/-- `2^(∑[Δ[xor(n, 2*n)]%2]-1)` -/
def P3351862394355333293.Spec : Prop :=
  ∀ n, P3351862394355333293.a n = (A225081 n : ℚ)

end A225081

/-! ## A225081.P717363356854084848

`gcd(2, C(n, 2))*a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A225081.P717363356854084848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (Nat.choose n 2) * a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A225081.P717363356854084848

namespace A225081

/-- `gcd(2, C(n, 2))*a(ceil(n/2)-1)` -/
def P717363356854084848.Spec : Prop :=
  ∀ n, (P717363356854084848.a n : ℤ) = A225081 n

end A225081

/-! ## A225081.P14114314226406633610

`(∑[n+1]%2+1)*a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A225081.P14114314226406633610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1) * a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A225081.P14114314226406633610

namespace A225081

/-- `(∑[n+1]%2+1)*a(ceil(n/2)-1)` -/
def P14114314226406633610.Spec : Prop :=
  ∀ n, (P14114314226406633610.a n : ℤ) = A225081 n

end A225081

/-! ## A225081.P5321233431497704713

`2^A037834(n+1)`
-/

namespace A225081.P5321233431497704713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A037834 (n + 1) : ℤ)

end

end A225081.P5321233431497704713

namespace A225081

/-- `2^A037834(n+1)` -/
def P5321233431497704713.Spec : Prop :=
  ∀ n, P5321233431497704713.a n = (A225081 n : ℚ)

end A225081

/-! ## A225081.P6421243190450453003

`2^(A088748(n+1)-2)`
-/

namespace A225081.P6421243190450453003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088748 (n + 1) - 2 : ℤ)

end

end A225081.P6421243190450453003

namespace A225081

/-- `2^(A088748(n+1)-2)` -/
def P6421243190450453003.Spec : Prop :=
  ∀ n, P6421243190450453003.a n = (A225081 n : ℚ)

end A225081

/-! ## A225081.P1623016740535016580

`2^(n-A236840(n+1))`
-/

namespace A225081.P1623016740535016580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A236840 (n + 1) : ℤ)

end

end A225081.P1623016740535016580

namespace A225081

/-- `2^(n-A236840(n+1))` -/
def P1623016740535016580.Spec : Prop :=
  ∀ n, P1623016740535016580.a n = (A225081 n : ℚ)

end A225081

/-! ## A225081.P3750752763577665621

`A000010(2^∑[Δ[xor(n, 2*n)]%2])`
-/

namespace A225081.P3750752763577665621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A225081.P3750752763577665621

namespace A225081

/-- `A000010(2^∑[Δ[xor(n, 2*n)]%2])` -/
def P3750752763577665621.Spec : Prop :=
  ∀ n, P3750752763577665621.a n = A225081 n

end A225081

/-!
# A225082: Centrally deletable primes.

The programs for A225082, there is no canonical definition to state claims against.
-/

/-! ## A225082.P4782083380436530220

`p?[A135761(A077359(n+2))]`
-/

namespace A225082.P4782083380436530220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (A077359 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225082.P4782083380436530220

/-! ## A225082.P2757238025190736869

`∩[A077359(n+1), A135761(2*n+3)]`
-/

namespace A225082.P2757238025190736869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225082.P2757238025190736869

/-! ## A225082.P501558131152100948

`∩[A135761(A077359(n+1)), A077359(n+3)]`
-/

namespace A225082.P501558131152100948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (A077359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225082.P501558131152100948

/-! ## A225082.P4849154623207374758

`p?[A077359(n+1)%A231588(n+1)]`
-/

namespace A225082.P4849154623207374758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077359 (n + 1)) (A231588 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225082.P4849154623207374758

/-! ## A225082.P12194767066026152177

`∏{p}[A045707(n+5)², #]`
-/

namespace A225082.P12194767066026152177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A225082.P12194767066026152177

/-!
# A225083: Non-Pillai primes: primes p such that for all m such either p is 1 mod m or m!+1 is not 0 mod p.

The programs for A225083, there is no canonical definition to state claims against.
-/

/-! ## A225083.P4652195690455706526

`lt[A107463(n), A023416(A247824(3*n+1))]`
-/

namespace A225083.P4652195690455706526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A247824 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225083.P4652195690455706526

/-! ## A225083.P17414814562616475652

`eq[A097794(n+1), A198067(n+1)]`
-/

namespace A225083.P17414814562616475652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225083.P17414814562616475652

/-! ## A225083.P5067877995925212926

`A332977(2^A007094(n))`
-/

namespace A225083.P5067877995925212926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332977 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007094 n : ℤ))).toNat

end

end A225083.P5067877995925212926

/-! ## A225083.P14433763434809899787

`A000040(record[A330237(n+2)])`
-/

namespace A225083.P14433763434809899787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225083.P14433763434809899787

/-! ## A225083.P5125203070044509503

`A000040(∑[∏{e}[A000108(n)+1, #]])`
-/

namespace A225083.P5125203070044509503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225083.P5125203070044509503

/-!
# A225084: Triangle read by rows: T(n,k) is the number of compositions of n with maximal up-step k; n>=1, 0<=k<n.

The programs for A225084, there is no canonical definition to state claims against.
-/

/-! ## A225084.P8184632736375009596

`A168020(n+1)+A082117(A337409(n+1))`
-/

namespace A225084.P8184632736375009596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168020 (n + 1) + A082117 (A337409 (n + 1)).toNat

end

end A225084.P8184632736375009596

/-!
# A225085: Triangle read by rows: T(n,k) is the number of compositions of n with maximal up-step <= k; n>=1, 0<=k<n.

The programs for A225085, there is no canonical definition to state claims against.
-/

/-! ## A225085.P9288446305497692000

`ceil(A006257(∑[A225084(n+1)])/2)`
-/

namespace A225085.P9288446305497692000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A225085.P9288446305497692000

/-! ## A225085.P2689293640395000934

`round(A006257(∑[A225084(2*n-n+1)])/2)`
-/

namespace A225085.P2689293640395000934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2)

end

end A225085.P2689293640395000934

/-! ## A225085.P17162259869292317675

`(A006257(∑[A225084(n+1)])+1)/A040000(n+1)`
-/

namespace A225085.P17162259869292317675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 : ℚ) / (A040000 (n + 1) : ℚ)

end

end A225085.P17162259869292317675

/-! ## A225085.P14628447942517485260

`A003602(A006257(∑[A225084(n+1)]))`
-/

namespace A225085.P14628447942517485260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A225085.P14628447942517485260

/-!
# A225086: Floor(ksexp(n,11/10)) where ksexp(n, z) = n^ksexp(n, z-1) is Kneser's superexponential.

The programs for A225086, there is no canonical definition to state claims against.
-/

/-! ## A225086.P13147855313980938882

`A056556(∑[∑[(A330977(n+1)^(n%2))²]])`
-/

namespace A225086.P13147855313980938882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330977 (n + 1) ^ (n % 2)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225086.P13147855313980938882

/-! ## A225086.P508851188456898239

`A300287(∑[∑[A300305(3*n+1)]])`
-/

namespace A225086.P508851188456898239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300305 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225086.P508851188456898239

/-! ## A225086.P16288359744411003198

`A090532(A000710(n+1))`
-/

namespace A225086.P16288359744411003198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A000710 (n + 1)).toNat

end

end A225086.P16288359744411003198

/-! ## A225086.P11071333839180464396

`∑[A261913(∑[A026007(n)])]`
-/

namespace A225086.P11071333839180464396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225086.P11071333839180464396

/-! ## A225086.P11017456837895751476

`∑[A351014(∑[A026300(n)])]`
-/

namespace A225086.P11017456837895751476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225086.P11017456837895751476

/-!
# A225087: Floor(ksexp(n,12/10)) where ksexp(n, z) = n^ksexp(n, z-1) is Kneser's superexponential.

The programs for A225087, there is no canonical definition to state claims against.
-/

/-! ## A225087.P3138389045766387157

`A137735(A111208(∑[A064996(n+1)]))`
-/

namespace A225087.P3138389045766387157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A111208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A225087.P3138389045766387157

/-! ## A225087.P10946235625009822146

`∑[∑[A141743(A032925(n+1))]]`
-/

namespace A225087.P10946235625009822146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A032925 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225087.P10946235625009822146

/-! ## A225087.P17917439724309670045

`∑[∑[A285208(A182993(n+1))]]`
-/

namespace A225087.P17917439724309670045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A182993 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225087.P17917439724309670045

/-! ## A225087.P5766478509135681703

`∑[A178487(or(2*n, A010445(n+1))²+1)]`
-/

namespace A225087.P5766478509135681703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (Int.lor (2 * n : ℤ) (A010445 (n + 1)) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225087.P5766478509135681703

/-! ## A225087.P14371295089837875216

`∑[∑[A355655(A022098(n))]]`
-/

namespace A225087.P14371295089837875216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (A022098 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225087.P14371295089837875216

/-!
# A225088: Floor(ksexp(n, 13/10)) where ksexp(n, z) = n^ksexp(n, z-1) is Kneser's superexponential.

The programs for A225088, there is no canonical definition to state claims against.
-/

/-! ## A225088.P12512482133519035235

`A257639(A178138(n+1)-A048250(n+1))`
-/

namespace A225088.P12512482133519035235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A178138 (n + 1) - A048250 (n + 1)).toNat

end

end A225088.P12512482133519035235

/-! ## A225088.P11785849463500764886

`∑[n]+A048766(A036423(n))+1`
-/

namespace A225088.P11785849463500764886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A048766 (A036423 n).toNat + 1)

end

end A225088.P11785849463500764886

/-! ## A225088.P2262738937205797058

`A048766(A036423(n))+A000124(n)`
-/

namespace A225088.P2262738937205797058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A036423 n).toNat + A000124 n

end

end A225088.P2262738937205797058

/-! ## A225088.P16934671177769732015

`A048766(A036423(n))+∑[A028310(n)]`
-/

namespace A225088.P16934671177769732015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A036423 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225088.P16934671177769732015

/-! ## A225088.P4590270788950435802

`A048766(A036423(n))+Δ[A004006(n)]`
-/

namespace A225088.P4590270788950435802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A036423 n).toNat + (f1 (n + 1) - f1 n)

end

end A225088.P4590270788950435802

/-!
# A225089: a(n) = floor(2^A006666(m)/3^A006667(m)) - m, where m = 2n + 1.

The programs for A225089, there is no canonical definition to state claims against.
-/

/-! ## A225089.P11137957395012148158

`A302175(n+1)-(n+1)`
-/

namespace A225089.P11137957395012148158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302175 (n + 1) - (n + 1 : ℤ)

end

end A225089.P11137957395012148158

/-! ## A225089.P9082580460199713599

`A302175(n+1)%A030640(n)`
-/

namespace A225089.P9082580460199713599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302175 (n + 1)) (A030640 n)

end

end A225089.P9082580460199713599

/-! ## A225089.P10879917340014869855

`(A302175(n+1)+1)%A057544(n)`
-/

namespace A225089.P10879917340014869855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302175 (n + 1) + 1) (A057544 n)

end

end A225089.P10879917340014869855

/-! ## A225089.P15543609627889600757

`floor(2^A006666(n+1)/3^A006667(n+1))%A030640(n)`
-/

namespace A225089.P15543609627889600757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 : ℚ) ^ (A006666 (n + 1) : ℤ) / (3 : ℚ) ^ (A006667 (n + 1) : ℤ)⌋ (A030640 n)

end

end A225089.P15543609627889600757

/-! ## A225089.P1465256307126322681

`A302175(A004526(2*(n+1)))%A004526(2*(n+1))`
-/

namespace A225089.P1465256307126322681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302175 (A004526 (2 * (n + 1))).toNat) (A004526 (2 * (n + 1)))

end

end A225089.P1465256307126322681

/-!
# A225090: Minimal sum of entries of the character table of a group of order n.

The programs for A225090, there is no canonical definition to state claims against.
-/

/-! ## A225090.P11234258932911530867

`n+1-A007859(n+1)%A002973(n+1)`
-/

namespace A225090.P11234258932911530867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A007859 (n + 1)) (A002973 (n + 1))

end

end A225090.P11234258932911530867

/-! ## A225090.P2146885517292941299

`A110654(A274346(n)+A187829(n+1))`
-/

namespace A225090.P2146885517292941299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A274346 n + A187829 (n + 1)).toNat

end

end A225090.P2146885517292941299

/-! ## A225090.P11168363866273891461

`A004526(A187829(n+1)+A274346(n)+1)`
-/

namespace A225090.P11168363866273891461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187829 (n + 1) + (A274346 n + 1)).toNat

end

end A225090.P11168363866273891461

/-! ## A225090.P16168119367256903612

`A110654(A327393(n+1)+A187829(n+1))`
-/

namespace A225090.P16168119367256903612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A327393 (n + 1) + A187829 (n + 1)).toNat

end

end A225090.P16168119367256903612

/-! ## A225090.P10581305893119488883

`A008619(A187829(n+1)+A274346(n)-1)`
-/

namespace A225090.P10581305893119488883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A187829 (n + 1) + (A274346 n - 1)).toNat

end

end A225090.P10581305893119488883

/-!
# A225091: The odd part of the digit sum of 7^n.

The programs for A225091, the canonical program `A225091.P1547395261014293833` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225091 has offset 0).

The definition of A225091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225091.P1547395261014293833

`A000265(A066003(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A225091

/-- `A000265(A066003(n))` -/
def P1547395261014293833.Spec : Prop :=
  ∀ n, P1547395261014293833.a n = A225091 n

theorem P1547395261014293833.correct : P1547395261014293833.Spec := by
  intro n
  simp only [A225091]

end A225091

/-! ## A225091.P16489630908725966760

`A093411(A066003(n)+A000007(n))`
-/

namespace A225091.P16489630908725966760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A066003 n + A000007 n).toNat

end

end A225091.P16489630908725966760

namespace A225091

/-- `A093411(A066003(n)+A000007(n))` -/
def P16489630908725966760.Spec : Prop :=
  ∀ n, P16489630908725966760.a n = A225091 n

end A225091

/-! ## A225091.P3833407051661071427

`A093411(or(A000007(n), A066003(n)))`
-/

namespace A225091.P3833407051661071427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (Int.lor (A000007 n) (A066003 n)).toNat

end

end A225091.P3833407051661071427

namespace A225091

/-- `A093411(or(A000007(n), A066003(n)))` -/
def P3833407051661071427.Spec : Prop :=
  ∀ n, P3833407051661071427.a n = A225091 n

end A225091

/-! ## A225091.P10561704518094283369

`A093411(lcm(2, A066003(n)))`
-/

namespace A225091.P10561704518094283369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (Int.lcm 2 (A066003 n))

end

end A225091.P10561704518094283369

namespace A225091

/-- `A093411(lcm(2, A066003(n)))` -/
def P10561704518094283369.Spec : Prop :=
  ∀ n, P10561704518094283369.a n = A225091 n

end A225091

/-! ## A225091.P10816863525461404711

`A093411(2*A066003(n))`
-/

namespace A225091.P10816863525461404711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A066003 n).toNat

end

end A225091.P10816863525461404711

namespace A225091

/-- `A093411(2*A066003(n))` -/
def P10816863525461404711.Spec : Prop :=
  ∀ n, P10816863525461404711.a n = A225091 n

end A225091

/-! ## A225091.P16976168638849859694

`A139391(2*A066003(n))`
-/

namespace A225091.P16976168638849859694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A066003 n).toNat

end

end A225091.P16976168638849859694

namespace A225091

/-- `A139391(2*A066003(n))` -/
def P16976168638849859694.Spec : Prop :=
  ∀ n, P16976168638849859694.a n = A225091 n

end A225091

/-! ## A225091.P6118492890770555306

`A066003(n)/gcd(A000079(n), A066003(n))`
-/

namespace A225091.P6118492890770555306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066003 n : ℚ) / (Int.gcd (A000079 n) (A066003 n) : ℚ)

end

end A225091.P6118492890770555306

namespace A225091

/-- `A066003(n)/gcd(A000079(n), A066003(n))` -/
def P6118492890770555306.Spec : Prop :=
  ∀ n, P6118492890770555306.a n = (A225091 n : ℚ)

end A225091

/-! ## A225091.P10437239087067474658

`A276234(A151934(n)+A066003(n))`
-/

namespace A225091.P10437239087067474658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276234 (A151934 n + A066003 n).toNat

end

end A225091.P10437239087067474658

namespace A225091

/-- `A276234(A151934(n)+A066003(n))` -/
def P10437239087067474658.Spec : Prop :=
  ∀ n, P10437239087067474658.a n = A225091 n

end A225091

/-!
# A225095: The number of new maxima over all length n sequences on {1,2,...,n}.

The programs for A225095, there is no canonical definition to state claims against.
-/

/-! ## A225095.P10182760942786182597

`A028391(A128318(n)+A052888(n))`
-/

namespace A225095.P10182760942786182597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A128318 n + A052888 n).toNat

end

end A225095.P10182760942786182597

/-!
# A225096: Number of lattice paths without interior points from {3}^n to {0}^n using steps that decrement one component by 1.

The programs for A225096, there is no canonical definition to state claims against.
-/

/-! ## A225096.P12077361879427345653

`A225094(A167614(n+2))`
-/

namespace A225096.P12077361879427345653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A167614 (n + 2)).toNat

end

end A225096.P12077361879427345653

/-! ## A225096.P4090801457090528457

`A225094(A141214(n)+6)`
-/

namespace A225096.P4090801457090528457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A141214 n + 6).toNat

end

end A225096.P4090801457090528457

/-! ## A225096.P9137649176773894810

`A225094(A052905(n)+8)`
-/

namespace A225096.P9137649176773894810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A052905 n + 8).toNat

end

end A225096.P9137649176773894810

/-! ## A225096.P16459934150147900705

`A225094(A055999(n)+9)`
-/

namespace A225096.P16459934150147900705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (A055999 n + 9).toNat

end

end A225096.P16459934150147900705

/-! ## A225096.P4094923132130301872

`A225094(eq[3, A002262(n)])`
-/

namespace A225096.P4094923132130301872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225096.P4094923132130301872

/-!
# A225097: Numbers n such that (13^n + 12^n)/25 is prime.

The programs for A225097, there is no canonical definition to state claims against.
-/

/-! ## A225097.P15194551886541853399

`A134969(∑[A125563(n²)])`
-/

namespace A225097.P15194551886541853399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125563 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225097.P15194551886541853399

/-! ## A225097.P15539535238142889229

`∩[A031402(n+1), A396105(n+1)]`
-/

namespace A225097.P15539535238142889229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225097.P15539535238142889229

/-!
# A225098: Numbers k such that k^2 - 2 and 2*k^2 - 1 are both prime.

The programs for A225098, there is no canonical definition to state claims against.
-/

/-! ## A225098.P15068319009295501755

`∩[A028870(n+1), A066049(n+1)]`
-/

namespace A225098.P15068319009295501755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225098.P15068319009295501755

/-! ## A225098.P15769631902870495988

`∩[A028870(n+1), A160697(n+1)]`
-/

namespace A225098.P15769631902870495988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225098.P15769631902870495988

/-! ## A225098.P11380098557552205137

`round(sqrt(∩[A023204(n+1), (n+2)²-2]+1))`
-/

namespace A225098.P11380098557552205137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1 : ℝ))

end

end A225098.P11380098557552205137

/-!
# A225099: Number of ways n can be represented as a sum of two distinct nontrivial prime powers (numbers of the form p^k where p is a prime number and k >= 2).

The programs for A225099, there is no canonical definition to state claims against.
-/

/-! ## A225099.P13873466108457389961

`char[A225102(n+1)]+char[A225103(n+1)]`
-/

namespace A225099.P13873466108457389961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A225099.P13873466108457389961

/-! ## A225099.P14566586593065818541

`and(char[A225102(n+1)], A325089(n+5))`
-/

namespace A225099.P14566586593065818541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A325089 (n + 5))

end

end A225099.P14566586593065818541

/-! ## A225099.P12175127651164130780

`and(char[A225102(n+1)], A348748(2*(n+1)))`
-/

namespace A225099.P12175127651164130780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348748 (2 * (n + 1)))

end

end A225099.P12175127651164130780

/-! ## A225099.P4509062456816085192

`char[A225102(n+1)]*A366833(A345170(n)+1)`
-/

namespace A225099.P4509062456816085192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A366833 (A345170 n + 1).toNat

end

end A225099.P4509062456816085192

