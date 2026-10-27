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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240001: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240001, the canonical program `A240001.P145074708384494669` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240001 has offset 1).

The definition of A240001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240001.P9746656623691211561

`∑[∑[n+2]+3]`
-/

namespace A240001.P9746656623691211561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240001.P9746656623691211561

namespace A240001

/-- `∑[∑[n+2]+3]` -/
def P9746656623691211561.Spec : Prop :=
  ∀ n, (P9746656623691211561.a n : ℤ) = A240001 (n + 1)

end A240001

/-! ## A240001.P15722909959220664371

`Δ[n²]+C(n+4, 3)`
-/

namespace A240001.P15722909959220664371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (n + 4) 3 : ℤ)

end

end A240001.P15722909959220664371

namespace A240001

/-- `Δ[n²]+C(n+4, 3)` -/
def P15722909959220664371.Spec : Prop :=
  ∀ n, P15722909959220664371.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P3094827248721871294

`2*n+C(n+4, 3)+1`
-/

namespace A240001.P3094827248721871294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (n + 4) 3 + 1)

end

end A240001.P3094827248721871294

namespace A240001

/-- `2*n+C(n+4, 3)+1` -/
def P3094827248721871294.Spec : Prop :=
  ∀ n, (P3094827248721871294.a n : ℤ) = A240001 (n + 1)

end A240001

/-! ## A240001.P4578347079060998250

`C(n+4, 3)+1+n+n`
-/

namespace A240001.P4578347079060998250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3 + 1 + n + n

end

end A240001.P4578347079060998250

namespace A240001

/-- `C(n+4, 3)+1+n+n` -/
def P4578347079060998250.Spec : Prop :=
  ∀ n, (P4578347079060998250.a n : ℤ) = A240001 (n + 1)

end A240001

/-! ## A240001.P8532568989360037879

`∑[record[(n-3)²]-(n-1)]/2`
-/

namespace A240001.P8532568989360037879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A240001.P8532568989360037879

namespace A240001

/-- `∑[record[(n-3)²]-(n-1)]/2` -/
def P8532568989360037879.Spec : Prop :=
  ∀ n, P8532568989360037879.a n = (A240001 (n + 1) : ℚ)

end A240001

/-! ## A240001.P11957303267144725743

`floor(∑[3-∑[a(n-1)-1]])` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A240001.P11957303267144725743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240001.P11957303267144725743

namespace A240001

/-- `floor(∑[3-∑[a(n-1)-1]])` -/
def P11957303267144725743.Spec : Prop :=
  ∀ n, P11957303267144725743.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P145074708384494669

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=5, a(1)=13, a(2)=25, a(3)=42`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A240001

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P145074708384494669.Spec : Prop :=
  ∀ n, P145074708384494669.a n = A240001 (n + 1)

theorem P145074708384494669.correct : P145074708384494669.Spec := by
  intro n
  simp only [A240001, Nat.add_sub_cancel]

end A240001

/-! ## A240001.P3130055976898441858

`A255993(n+1)-3`
-/

namespace A240001.P3130055976898441858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255993 (n + 1) - 3

end

end A240001.P3130055976898441858

namespace A240001

/-- `A255993(n+1)-3` -/
def P3130055976898441858.Spec : Prop :=
  ∀ n, P3130055976898441858.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P3200314234637566919

`A026041(n+4)-7`
-/

namespace A240001.P3200314234637566919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026041 (n + 4) - 7

end

end A240001.P3200314234637566919

namespace A240001

/-- `A026041(n+4)-7` -/
def P3200314234637566919.Spec : Prop :=
  ∀ n, P3200314234637566919.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P4519518908954180119

`A341209(n+1)+n`
-/

namespace A240001.P4519518908954180119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 (n + 1) + (n : ℤ)

end

end A240001.P4519518908954180119

namespace A240001

/-- `A341209(n+1)+n` -/
def P4519518908954180119.Spec : Prop :=
  ∀ n, P4519518908954180119.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P13206699868917900163

`floor(sqrt(A104474(n))-∑[n])`
-/

namespace A240001.P13206699868917900163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A104474 n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A240001.P13206699868917900163

namespace A240001

/-- `floor(sqrt(A104474(n))-∑[n])` -/
def P13206699868917900163.Spec : Prop :=
  ∀ n, P13206699868917900163.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P687756409040857925

`A062748(n)+2*(n+1)`
-/

namespace A240001.P687756409040857925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + (2 * (n + 1) : ℤ)

end

end A240001.P687756409040857925

namespace A240001

/-- `A062748(n)+2*(n+1)` -/
def P687756409040857925.Spec : Prop :=
  ∀ n, P687756409040857925.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P638625557431837028

`A092286(n)+2*n+5`
-/

namespace A240001.P638625557431837028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + (2 * n + 5 : ℤ)

end

end A240001.P638625557431837028

namespace A240001

/-- `A092286(n)+2*n+5` -/
def P638625557431837028.Spec : Prop :=
  ∀ n, P638625557431837028.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P7623330090230374512

`A023545(n+1)-(n+1)²`
-/

namespace A240001.P7623330090230374512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A240001.P7623330090230374512

namespace A240001

/-- `A023545(n+1)-(n+1)²` -/
def P7623330090230374512.Spec : Prop :=
  ∀ n, P7623330090230374512.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P16842422358654012440

`A060488(n+3)+1-n²`
-/

namespace A240001.P16842422358654012440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + (1 - (n ^ 2 : ℤ))

end

end A240001.P16842422358654012440

namespace A240001

/-- `A060488(n+3)+1-n²` -/
def P16842422358654012440.Spec : Prop :=
  ∀ n, P16842422358654012440.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P12177806516129047531

`A055831(n+4)-(n²+n)`
-/

namespace A240001.P12177806516129047531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4) - (n ^ 2 + n : ℤ)

end

end A240001.P12177806516129047531

namespace A240001

/-- `A055831(n+4)-(n²+n)` -/
def P12177806516129047531.Spec : Prop :=
  ∀ n, P12177806516129047531.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P2908024606143333104

`A027378(n)+A016897(n)`
-/

namespace A240001.P2908024606143333104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n + A016897 n

end

end A240001.P2908024606143333104

namespace A240001

/-- `A027378(n)+A016897(n)` -/
def P2908024606143333104.Spec : Prop :=
  ∀ n, P2908024606143333104.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P10149869177430952415

`A096941(n)-A045943(n)`
-/

namespace A240001.P10149869177430952415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n - A045943 n

end

end A240001.P10149869177430952415

namespace A240001

/-- `A096941(n)-A045943(n)` -/
def P10149869177430952415.Spec : Prop :=
  ∀ n, P10149869177430952415.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P10870025390374133533

`A016897(n)+∑[A027379(n)]`
-/

namespace A240001.P10870025390374133533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240001.P10870025390374133533

namespace A240001

/-- `A016897(n)+∑[A027379(n)]` -/
def P10870025390374133533.Spec : Prop :=
  ∀ n, P10870025390374133533.a n = A240001 (n + 1)

end A240001

/-! ## A240001.P5184243355055148046

`A108195(n+1)+A005581(n)`
-/

namespace A240001.P5184243355055148046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108195 (n + 1) + A005581 n

end

end A240001.P5184243355055148046

namespace A240001

/-- `A108195(n+1)+A005581(n)` -/
def P5184243355055148046.Spec : Prop :=
  ∀ n, P5184243355055148046.a n = A240001 (n + 1)

end A240001

/-!
# A240002: Number of 3 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240002, there is no canonical definition to state claims against.
-/

/-! ## A240002.P6949148210303301443

`A240000(∑[n+2]+4)`
-/

namespace A240002.P6949148210303301443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240002.P6949148210303301443

/-! ## A240002.P2275873043706175268

`A240000(A167614(n+1))+A025469(n)`
-/

namespace A240002.P2275873043706175268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 1)).toNat + A025469 n

end

end A240002.P2275873043706175268

/-! ## A240002.P4957851614594131816

`A240000(A167614(n+1))+A185238(n)`
-/

namespace A240002.P4957851614594131816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 1)).toNat + A185238 n

end

end A240002.P4957851614594131816

/-! ## A240002.P14026105009395015053

`A240000(A167614(n+1))+A185274(n)`
-/

namespace A240002.P14026105009395015053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 1)).toNat + A185274 n

end

end A240002.P14026105009395015053

/-! ## A240002.P12405555887105876272

`A240000(A167614(n+1))+A185284(n)`
-/

namespace A240002.P12405555887105876272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 1)).toNat + A185284 n

end

end A240002.P12405555887105876272

/-!
# A240003: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240003, there is no canonical definition to state claims against.
-/

/-! ## A240003.P1300622132521287619

`A240000(∑[n+3]+7)`
-/

namespace A240003.P1300622132521287619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240003.P1300622132521287619

/-!
# A240004: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240004, there is no canonical definition to state claims against.
-/

/-! ## A240004.P7078275845479454346

`A240000(A167499(n+3))`
-/

namespace A240004.P7078275845479454346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167499 (n + 3)).toNat

end

end A240004.P7078275845479454346

/-! ## A240004.P6311262253603067833

`A240000(A155212(n)+13)`
-/

namespace A240004.P6311262253603067833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A155212 n + 13).toNat

end

end A240004.P6311262253603067833

/-! ## A240004.P10934006354632746069

`A240000(A056000(n)+15)`
-/

namespace A240004.P10934006354632746069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A056000 n + 15).toNat

end

end A240004.P10934006354632746069

/-! ## A240004.P15240477839485019503

`A240000(eq[7, A066657(n)])`
-/

namespace A240004.P15240477839485019503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240004.P15240477839485019503

/-! ## A240004.P4400088244528982270

`A240000(A167614(n+3)+2)`
-/

namespace A240004.P4400088244528982270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 3) + 2).toNat

end

end A240004.P4400088244528982270

/-!
# A240005: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240005, there is no canonical definition to state claims against.
-/

/-! ## A240005.P713031688523462704

`A240000(A166136(n+4))`
-/

namespace A240005.P713031688523462704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A166136 (n + 4)).toNat

end

end A240005.P713031688523462704

/-! ## A240005.P17515359793419173216

`A240000(A056115(n)+21)`
-/

namespace A240005.P17515359793419173216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A056115 n + 21).toNat

end

end A240005.P17515359793419173216

/-! ## A240005.P14114803243726511208

`A240000(A167499(n+4)+1)`
-/

namespace A240005.P14114803243726511208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167499 (n + 4) + 1).toNat

end

end A240005.P14114803243726511208

/-! ## A240005.P3469184536784475107

`A240000(A167614(n+4)+3)`
-/

namespace A240005.P3469184536784475107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167614 (n + 4) + 3).toNat

end

end A240005.P3469184536784475107

/-! ## A240005.P12076459441885117501

`A240000(A000096(n+4)+7)`
-/

namespace A240005.P12076459441885117501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A000096 (n + 4) + 7).toNat

end

end A240005.P12076459441885117501

/-!
# A240006: Number of 7 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240006, there is no canonical definition to state claims against.
-/

/-! ## A240006.P15516952224049601810

`A240000(A056119(n)+28)`
-/

namespace A240006.P15516952224049601810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A056119 n + 28).toNat

end

end A240006.P15516952224049601810

/-! ## A240006.P1351905918645368964

`A240000(eq[11, A066657(n)])`
-/

namespace A240006.P1351905918645368964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240006.P1351905918645368964

/-! ## A240006.P13576115627179609933

`A240000(A167499(n+5)+2)`
-/

namespace A240006.P13576115627179609933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A167499 (n + 5) + 2).toNat

end

end A240006.P13576115627179609933

/-! ## A240006.P12784411247040528100

`A240000(A000217(n+6)+7)`
-/

namespace A240006.P12784411247040528100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A000217 (n + 6) + 7).toNat

end

end A240006.P12784411247040528100

/-!
# A240007: Smallest k such that the number of groups of order k is equal to prime(n), or 0 if no such k exists.

The programs for A240007, there is no canonical definition to state claims against.
-/

/-! ## A240007.P11091235814843822133

`A046057(A000040(n+1))`
-/

namespace A240007.P11091235814843822133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046057 (A000040 (n + 1)).toNat

end

end A240007.P11091235814843822133

/-! ## A240007.P17095748328108950114

`A046057(A181325(n))`
-/

namespace A240007.P17095748328108950114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046057 (A181325 n).toNat

end

end A240007.P17095748328108950114

/-! ## A240007.P4589200296767100021

`A046057(A390240(n))`
-/

namespace A240007.P4589200296767100021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046057 (A390240 n).toNat

end

end A240007.P4589200296767100021

/-! ## A240007.P4968664389284090754

`A046057(A030291(n+1))`
-/

namespace A240007.P4968664389284090754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046057 (A030291 (n + 1)).toNat

end

end A240007.P4968664389284090754

/-! ## A240007.P2948488246385445347

`A046057(A030475(n+1))`
-/

namespace A240007.P2948488246385445347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046057 (A030475 (n + 1)).toNat

end

end A240007.P2948488246385445347

/-!
# A240008: Number of Dyck paths of semilength 2n such that the area between the x-axis and the path is 4n.

The programs for A240008, there is no canonical definition to state claims against.
-/

/-! ## A240008.P16273207433192892769

`A047998(∑[9*n]-n)`
-/

namespace A240008.P16273207433192892769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A240008.P16273207433192892769

/-! ## A240008.P315352585746531276

`A239927((2*n+1)*4*n)`
-/

namespace A240008.P315352585746531276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239927 ((2 * n + 1) * (4 * n))

end

end A240008.P315352585746531276

/-! ## A240008.P17251120875355077748

`A129176(A035597(n))`
-/

namespace A240008.P17251120875355077748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129176 (A035597 n).toNat

end

end A240008.P17251120875355077748

/-! ## A240008.P15407206920469707536

`A129176(A000447(n)+n)`
-/

namespace A240008.P15407206920469707536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129176 (A000447 n + (n : ℤ)).toNat

end

end A240008.P15407206920469707536

/-! ## A240008.P15810223797338842936

`A129176(floor(floor(A019560(n)/4)/4))`
-/

namespace A240008.P15810223797338842936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129176 ⌊(⌊(A019560 n : ℚ) / 4⌋ : ℚ) / 4⌋.toNat

end

end A240008.P15810223797338842936

/-!
# A240009: Number T(n,k) of partitions of n, where k is the difference between the number of odd parts and the number of even parts; triangle T(n,k), n>=0, -floor(n/2)+(n mod 2)<=k<=n, read by rows.

The programs for A240009, there is no canonical definition to state claims against.
-/

/-! ## A240009.P16833090494711133947

`A135929(A048720(n+4))^A260333(n+2)`
-/

namespace A240009.P16833090494711133947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135929 (A048720 (n + 4)).toNat : ℚ) ^ (A260333 (n + 2) : ℤ)

end

end A240009.P16833090494711133947

/-!
# A240010: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 1.

The programs for A240010, there is no canonical definition to state claims against.
-/

/-! ## A240010.P13326729325510831347

`A239833(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A240010.P13326729325510831347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239833 (n + 1) - a (n - 1)

end

end A240010.P13326729325510831347

/-! ## A240010.P10717775970049232166

`A108950(n+3)-A130780(n+2)`
-/

namespace A240010.P10717775970049232166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 3) - A130780 (n + 2)

end

end A240010.P10717775970049232166

/-! ## A240010.P6006714639335775080

`A239835(n+1)-(A045931(n+1)+a(n-1))` with `a(0)=1`
-/

namespace A240010.P6006714639335775080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239835 (n + 1) - (A045931 (n + 1) + a (n - 1))

end

end A240010.P6006714639335775080

/-! ## A240010.P18280604231813598520

`A239835(n+1)+A108950(n+1)-A108950(n+2)`
-/

namespace A240010.P18280604231813598520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 (n + 1) + (A108950 (n + 1) - A108950 (n + 2))

end

end A240010.P18280604231813598520

/-! ## A240010.P12916713411521469297

`A240009(A194073(n+1))`
-/

namespace A240010.P12916713411521469297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 1)).toNat

end

end A240010.P12916713411521469297

/-! ## A240010.P215586012534222266

`A239832(n)+Δ[A239833(n)]`
-/

namespace A240010.P215586012534222266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 n + (f1 (n + 1) - f1 n)

end

end A240010.P215586012534222266

/-! ## A240010.P13543832971594789525

`A239833(n+1)-A239832(n+1)`
-/

namespace A240010.P13543832971594789525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 (n + 1) - A239832 (n + 1)

end

end A240010.P13543832971594789525

/-! ## A240010.P13407852681852881188

`A239835(n+1)-(A239832(n+1)+A045931(n+1))`
-/

namespace A240010.P13407852681852881188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 (n + 1) - (A239832 (n + 1) + A045931 (n + 1))

end

end A240010.P13407852681852881188

/-! ## A240010.P8843475900227374798

`A239832(n+2)`
-/

namespace A240010.P8843475900227374798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 (n + 2)

end

end A240010.P8843475900227374798

/-!
# A240011: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 2.

The programs for A240011, there is no canonical definition to state claims against.
-/

/-! ## A240011.P358569301764312853

`A239835(n+5)-A239833(n+6)`
-/

namespace A240011.P358569301764312853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 (n + 5) - A239833 (n + 6)

end

end A240011.P358569301764312853

/-! ## A240011.P11840906795081147554

`A045931(n+5)-Δ[A239833(n+5)]`
-/

namespace A240011.P11840906795081147554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 (n + 5) - (f1 (n + 1) - f1 n)

end

end A240011.P11840906795081147554

/-! ## A240011.P2373404135557086411

`(A239835(n+5)+A045931(n+6))%A239835(n+6)`
-/

namespace A240011.P2373404135557086411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239835 (n + 5) + A045931 (n + 6)) (A239835 (n + 6))

end

end A240011.P2373404135557086411

/-! ## A240011.P9524889831591282765

`A108950(n+7)%(A239835(n+6)+A108950(n+5))`
-/

namespace A240011.P9524889831591282765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108950 (n + 7)) (A239835 (n + 6) + A108950 (n + 5))

end

end A240011.P9524889831591282765

/-! ## A240011.P1292938039454732055

`A240009(A194073(n+2)+1)`
-/

namespace A240011.P1292938039454732055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 2) + 1).toNat

end

end A240011.P1292938039454732055

/-!
# A240012: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 3.

The programs for A240012, there is no canonical definition to state claims against.
-/

/-! ## A240012.P3844504959284595930

`A240009(A194073(n+3)+2)`
-/

namespace A240012.P3844504959284595930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 3) + 2).toNat

end

end A240012.P3844504959284595930

/-! ## A240012.P2606248015276578976

`Δ[A288156(record[A128664(n)])]`
-/

namespace A240012.P2606248015276578976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240012.P2606248015276578976

/-! ## A240012.P7005575911987728355

`A162351(A110618(n))+A112053(n+1)`
-/

namespace A240012.P7005575911987728355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A110618 n).toNat + A112053 (n + 1)

end

end A240012.P7005575911987728355

/-! ## A240012.P13116866890834529560

`xor(A060029(n), A102677(A060050(n+2)))`
-/

namespace A240012.P13116866890834529560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060029 n) (A102677 (A060050 (n + 2)).toNat)

end

end A240012.P13116866890834529560

/-!
# A240013: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 4.

The programs for A240013, there is no canonical definition to state claims against.
-/

/-! ## A240013.P17425208780699461308

`A240009(A194073(n+4)+3)`
-/

namespace A240013.P17425208780699461308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 4) + 3).toNat

end

end A240013.P17425208780699461308

/-! ## A240013.P10085798430437795289

`A240009(A242477(n+4)+4)`
-/

namespace A240013.P10085798430437795289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A242477 (n + 4) + 4).toNat

end

end A240013.P10085798430437795289

/-! ## A240013.P5480459151846371670

`A123580(Δ[A008484(2*(n+1))])`
-/

namespace A240013.P5480459151846371670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (f1 (n + 1) - f1 n).toNat

end

end A240013.P5480459151846371670

/-! ## A240013.P4330332173647033613

`A002865(n)-A125688(A214370(A029749(n)))`
-/

namespace A240013.P4330332173647033613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A125688 (A214370 (A029749 n).toNat).toNat

end

end A240013.P4330332173647033613

/-! ## A240013.P354414266341404286

`A002865(n)-A340988(A027342(n))`
-/

namespace A240013.P354414266341404286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A340988 ((A027342 n).toNat + 91)

end

end A240013.P354414266341404286

/-!
# A240014: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 5.

The programs for A240014, there is no canonical definition to state claims against.
-/

/-! ## A240014.P8981818226286993769

`A240009(A194073(n+5)+4)`
-/

namespace A240014.P8981818226286993769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 5) + 4).toNat

end

end A240014.P8981818226286993769

/-! ## A240014.P1432028322255740909

`A002865(n)-A333382(A198315(n)²)`
-/

namespace A240014.P1432028322255740909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A333382 (A198315 n ^ 2).toNat

end

end A240014.P1432028322255740909

/-! ## A240014.P4333884392309347890

`A002865(n)-A025457(A147021(n+1))`
-/

namespace A240014.P4333884392309347890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A025457 (A147021 (n + 1)).toNat

end

end A240014.P4333884392309347890

/-! ## A240014.P7293816559265544139

`A002865(n)-A107846(A076992(n+1))`
-/

namespace A240014.P7293816559265544139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A107846 (A076992 (n + 1)).toNat

end

end A240014.P7293816559265544139

/-! ## A240014.P10286639816002949133

`A002865(n)-A292946(A325709(n+1))`
-/

namespace A240014.P10286639816002949133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A292946 (A325709 (n + 1)).toNat

end

end A240014.P10286639816002949133

/-!
# A240015: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 6.

The programs for A240015, there is no canonical definition to state claims against.
-/

/-! ## A240015.P2047348598224160405

`A002865(n)-A044941(A114226(n))`
-/

namespace A240015.P2047348598224160405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A044941 (A114226 n).toNat

end

end A240015.P2047348598224160405

/-! ## A240015.P9748404201610163339

`A002865(n)-A333382(A198315(n))`
-/

namespace A240015.P9748404201610163339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A333382 (A198315 n).toNat

end

end A240015.P9748404201610163339

/-! ## A240015.P15167972458268667653

`A002865(n)-A052344(A015070(n+2))`
-/

namespace A240015.P15167972458268667653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A052344 (A015070 (n + 2)).toNat

end

end A240015.P15167972458268667653

/-! ## A240015.P7182315117955528032

`A002865(n)-A025427(A185036(n+2))`
-/

namespace A240015.P7182315117955528032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A025427 (A185036 (n + 2)).toNat

end

end A240015.P7182315117955528032

/-! ## A240015.P18424784540719387170

`A240016(n+7)-A284256(A003179(n))`
-/

namespace A240015.P18424784540719387170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240016 (n + 7) - A284256 (A003179 n).toNat

end

end A240015.P18424784540719387170

/-!
# A240016: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 7.

The programs for A240016, there is no canonical definition to state claims against.
-/

/-! ## A240016.P4888591034220733354

`A002865(n)-A052344(A015070(n))`
-/

namespace A240016.P4888591034220733354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A052344 (A015070 n).toNat

end

end A240016.P4888591034220733354

/-! ## A240016.P4210451629766741929

`A002865(n)-A025427(A185036(n))`
-/

namespace A240016.P4210451629766741929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A025427 (A185036 n).toNat

end

end A240016.P4210451629766741929

/-! ## A240016.P10894626507542488726

`A002865(n)-A025427(A185236(n))`
-/

namespace A240016.P10894626507542488726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A025427 (A185236 n).toNat

end

end A240016.P10894626507542488726

/-! ## A240016.P12984973122684191140

`A240019(n)-A052344(A015070(n))`
-/

namespace A240016.P12984973122684191140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240019 (n + 10) - A052344 (A015070 n).toNat

end

end A240016.P12984973122684191140

/-! ## A240016.P925432307811324728

`A240019(n)-A025427(A185036(n))`
-/

namespace A240016.P925432307811324728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240019 (n + 10) - A025427 (A185036 n).toNat

end

end A240016.P925432307811324728

/-!
# A240017: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 8.

The programs for A240017, there is no canonical definition to state claims against.
-/

/-! ## A240017.P14045911288701323977

`A002865(n)-A332898(A000009(A186746(n)))`
-/

namespace A240017.P14045911288701323977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A332898 (A000009 (A186746 n).toNat).toNat

end

end A240017.P14045911288701323977

/-! ## A240017.P1681234288359592317

`A002865(n)-A321936(A038614(n+1))`
-/

namespace A240017.P1681234288359592317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A321936 (A038614 (n + 1)).toNat

end

end A240017.P1681234288359592317

/-! ## A240017.P3906527269408378953

`A002865(n)-A321936(A061022(n+3))`
-/

namespace A240017.P3906527269408378953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A321936 (A061022 (n + 3)).toNat

end

end A240017.P3906527269408378953

/-! ## A240017.P4615117557827660347

`A014189(A067553(n))+A002865(n)`
-/

namespace A240017.P4615117557827660347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014189 (A067553 n).toNat + A002865 n

end

end A240017.P4615117557827660347

/-! ## A240017.P1922837968057130503

`A002865(n)-A014036(A000032(n))`
-/

namespace A240017.P1922837968057130503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A014036 (A000032 n).toNat

end

end A240017.P1922837968057130503

/-!
# A240018: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 9.

The programs for A240018, there is no canonical definition to state claims against.
-/

/-! ## A240018.P15934750910630762726

`A002865(n)-(A025469(A004695(n))+A011734(n))`
-/

namespace A240018.P15934750910630762726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A025469 (A004695 n).toNat + A011734 n)

end

end A240018.P15934750910630762726

/-! ## A240018.P17136190344693226444

`A002865(n)-(A011734(n)+A001842(A058343(n)))`
-/

namespace A240018.P17136190344693226444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A011734 n + A001842 (A058343 n).toNat)

end

end A240018.P17136190344693226444

/-! ## A240018.P13412766416095929414

`A002865(n)-(A011734(n)+A011734(A185044(n)))`
-/

namespace A240018.P13412766416095929414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A011734 n + A011734 (A185044 n).toNat)

end

end A240018.P13412766416095929414

/-! ## A240018.P3180486010548573497

`A002865(n)-A321936(A000040(n+1))`
-/

namespace A240018.P3180486010548573497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A321936 (A000040 (n + 1)).toNat

end

end A240018.P3180486010548573497

/-! ## A240018.P2546284710716924330

`A002865(n)-A321936(A061022(n+1))`
-/

namespace A240018.P2546284710716924330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A321936 (A061022 (n + 1)).toNat

end

end A240018.P2546284710716924330

/-!
# A240019: Number of partitions of n, where the difference between the number of odd parts and the number of even parts is 10.

The programs for A240019, there is no canonical definition to state claims against.
-/

/-! ## A240019.P16198130691888918390

`A002865(n)-A124760(A186746(n))`
-/

namespace A240019.P16198130691888918390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A124760 (A186746 n).toNat

end

end A240019.P16198130691888918390

/-! ## A240019.P3470325177675252989

`A002865(n)-A340998(A030272(n))`
-/

namespace A240019.P3470325177675252989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A340998 ((A030272 n).toNat + 140)

end

end A240019.P3470325177675252989

/-! ## A240019.P13894586331458370439

`A002865(n)-A216601(A077105(3*n+5))`
-/

namespace A240019.P13894586331458370439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A216601 (A077105 (3 * n + 5)).toNat

end

end A240019.P13894586331458370439

/-! ## A240019.P6521916185826785691

`A002865(n)-A025469(A004695(n))`
-/

namespace A240019.P6521916185826785691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A025469 (A004695 n).toNat

end

end A240019.P6521916185826785691

/-! ## A240019.P1678090756280402889

`A002865(n)-A001842(A058343(n))`
-/

namespace A240019.P1678090756280402889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A001842 (A058343 n).toNat

end

end A240019.P1678090756280402889

/-!
# A240020: Triangle read by rows in which row n lists the parts of the symmetric representation of sigma(2n-1).

The programs for A240020, there is no canonical definition to state claims against.
-/

/-! ## A240020.P3958324010734093483

`A050500(A005843(n+4))-A175834(2*(n+2))`
-/

namespace A240020.P3958324010734093483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (A005843 (n + 4)).toNat - A175834 (2 * (n + 2))

end

end A240020.P3958324010734093483

/-! ## A240020.P2085423725403349757

`A072749(3*n+4)-A000122(A003387(n+2))`
-/

namespace A240020.P2085423725403349757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072749 (3 * n + 4) - A000122 (A003387 (n + 2)).toNat

end

end A240020.P2085423725403349757

/-! ## A240020.P13875748454022567597

`A084556(A050165(A004273(n))+A023106(n))`
-/

namespace A240020.P13875748454022567597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A050165 (A004273 n).toNat + A023106 n).toNat

end

end A240020.P13875748454022567597

/-! ## A240020.P18333269111573071308

`A344838(lt[A246051(n), A000041(n)])`
-/

namespace A240020.P18333269111573071308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240020.P18333269111573071308

/-! ## A240020.P12125577128126181595

`A000195(A297884(n+1)-A258855(n))`
-/

namespace A240020.P12125577128126181595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A297884 (n + 1) - A258855 n).toNat

end

end A240020.P12125577128126181595

/-!
# A240022: Total number of digits in palindromes with n digits.

The programs for A240022, the canonical program `A240022.P9851182340327463633` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240022 has offset 1).

The definition of A240022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240022.P9851182340327463633

`(n+1)*A070252(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A240022

/-- `(n+1)*A070252(n+1)` -/
def P9851182340327463633.Spec : Prop :=
  ∀ n, P9851182340327463633.a n = A240022 (n + 1)

theorem P9851182340327463633.correct : P9851182340327463633.Spec := by
  intro n
  simp only [A240022, Nat.add_sub_cancel]

end A240022

/-! ## A240022.P15859602407700689801

`(A050683(n+1)+A000007(n))*(n+1)`
-/

namespace A240022.P15859602407700689801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050683 (n + 1) + A000007 n) * (n + 1 : ℤ)

end

end A240022.P15859602407700689801

namespace A240022

/-- `(A050683(n+1)+A000007(n))*(n+1)` -/
def P15859602407700689801.Spec : Prop :=
  ∀ n, P15859602407700689801.a n = A240022 (n + 1)

end A240022

/-! ## A240022.P8687483316787328264

`(n+1)*(A000007(n)+lcm(9, A004663(n)))`
-/

namespace A240022.P8687483316787328264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000007 n + (Int.lcm 9 (A004663 n) : ℤ))

end

end A240022.P8687483316787328264

namespace A240022

/-- `(n+1)*(A000007(n)+lcm(9, A004663(n)))` -/
def P8687483316787328264.Spec : Prop :=
  ∀ n, P8687483316787328264.a n = A240022 (n + 1)

end A240022

/-! ## A240022.P4305595687786076835

`C(2, n+2)+(n+1)*A037124(A168419(n+2))`
-/

namespace A240022.P4305595687786076835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (n + 1 : ℤ) * A037124 (A168419 (n + 2)).toNat

end

end A240022.P4305595687786076835

namespace A240022

/-- `C(2, n+2)+(n+1)*A037124(A168419(n+2))` -/
def P4305595687786076835.Spec : Prop :=
  ∀ n, P4305595687786076835.a n = A240022 (n + 1)

end A240022

/-! ## A240022.P11492201346747722886

`A070252(A266285(2*n))*A266285(2*n)`
-/

namespace A240022.P11492201346747722886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A266285 (2 * n)).toNat * A266285 (2 * n)

end

end A240022.P11492201346747722886

namespace A240022

/-- `A070252(A266285(2*n))*A266285(2*n)` -/
def P11492201346747722886.Spec : Prop :=
  ∀ n, P11492201346747722886.a n = A240022 (n + 1)

end A240022

/-! ## A240022.P718989282229872512

`(n+1)*(A050683(n+1)+A014586(A030193(n))^n)`
-/

namespace A240022.P718989282229872512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A050683 (n + 1) + A014586 (A030193 n).toNat ^ n)

end

end A240022.P718989282229872512

namespace A240022

/-- `(n+1)*(A050683(n+1)+A014586(A030193(n))^n)` -/
def P718989282229872512.Spec : Prop :=
  ∀ n, P718989282229872512.a n = A240022 (n + 1)

end A240022

/-!
# A240023: Product of factorials of prime divisors of n (with multiplicity).

The programs for A240023, there is no canonical definition to state claims against.
-/

/-! ## A240023.P18138509651601777689

`∏{p}[n+1, #!^val(n+1, #)]`
-/

namespace A240023.P18138509651601777689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial p ^ SequenceMachineLib.valuation (n + 1) p

end

end A240023.P18138509651601777689

/-! ## A240023.P9933764428955763055

`∏{d}[n+1, A014963(#)!]`
-/

namespace A240023.P9933764428955763055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A014963 d).toNat

end

end A240023.P9933764428955763055

/-! ## A240023.P15331284945257452882

`∏{e}[A181821(n+1), A000040(#)!]`
-/

namespace A240023.P15331284945257452882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A240023.P15331284945257452882

/-! ## A240023.P18394476358625873678

`∏{d}[A000027(n+1), A000142(A014963(#))]`
-/

namespace A240023.P18394476358625873678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000142 (A014963 d).toNat

end

end A240023.P18394476358625873678

/-! ## A240023.P13554511393029340244

`∏{d}[A087156(n+1), A000142(A014963(#))]`
-/

namespace A240023.P13554511393029340244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000142 (A014963 d).toNat

end

end A240023.P13554511393029340244

/-!
# A240024: Nonprime EKG sequence, cf. A064413: a(1) = 1, a(2) = 4 and for n > 2, a(n) = smallest composite number not already used which shares a factor with a(n-1).

The programs for A240024, there is no canonical definition to state claims against.
-/

/-! ## A240024.P16054450292317582816

`A018252(A238862(n+1))`
-/

namespace A240024.P16054450292317582816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A238862 (n + 1)).toNat

end

end A240024.P16054450292317582816

/-! ## A240024.P16396025775152291829

`A141468(A238862(n+1)+1)`
-/

namespace A240024.P16396025775152291829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A238862 (n + 1) + 1).toNat

end

end A240024.P16396025775152291829

/-! ## A240024.P5687371006537738313

`A140209(A238862(n+1)%A189119(n+1))`
-/

namespace A240024.P5687371006537738313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (Int.tmod (A238862 (n + 1)) (A189119 (n + 1))).toNat

end

end A240024.P5687371006537738313

/-! ## A240024.P12442180889564365263

`A140209(A238862(n+1))%A140209(2*n+3)`
-/

namespace A240024.P12442180889564365263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140209 (A238862 (n + 1)).toNat) (A140209 (2 * n + 3))

end

end A240024.P12442180889564365263

/-!
# A240025: Characteristic function of quarter squares, cf. A002620.

The programs for A240025, the canonical program `A240025.P6086676864116806394` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240025 has offset 0).

The definition of A240025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240025.P6093089657108589891

`char[floor((n/2)²)]`
-/

namespace A240025.P6093089657108589891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A240025.P6093089657108589891

namespace A240025

/-- `char[floor((n/2)²)]` -/
def P6093089657108589891.Spec : Prop :=
  ∀ n, (P6093089657108589891.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P12337753205870801038

`and(1, char[∑[floor(n/2)]])`
-/

namespace A240025.P12337753205870801038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A240025.P12337753205870801038

namespace A240025

/-- `and(1, char[∑[floor(n/2)]])` -/
def P12337753205870801038.Spec : Prop :=
  ∀ n, (P12337753205870801038.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P17887058580735374823

`or(char[∑[2*n]], char[n²])`
-/

namespace A240025.P17887058580735374823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

end

end A240025.P17887058580735374823

namespace A240025

/-- `or(char[∑[2*n]], char[n²])` -/
def P17887058580735374823.Spec : Prop :=
  ∀ n, (P17887058580735374823.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P14906486443514267422

`C(char[round((n/2)²)]+4, 5)`
-/

namespace A240025.P14906486443514267422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 4) 5

end

end A240025.P14906486443514267422

namespace A240025

/-- `C(char[round((n/2)²)]+4, 5)` -/
def P14906486443514267422.Spec : Prop :=
  ∀ n, (P14906486443514267422.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P14088229142146618987

`val(char[∑[ceil(n/2)]]+1, 2)`
-/

namespace A240025.P14088229142146618987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) 2

end

end A240025.P14088229142146618987

namespace A240025

/-- `val(char[∑[ceil(n/2)]]+1, 2)` -/
def P14088229142146618987.Spec : Prop :=
  ∀ n, (P14088229142146618987.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P18249806780781760620

`1-Δ[floor((sin(11)+sqrt(n))²)]`
-/

namespace A240025.P18249806780781760620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (11 : ℝ) + Real.sqrt (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A240025.P18249806780781760620

namespace A240025

/-- `1-Δ[floor((sin(11)+sqrt(n))²)]` -/
def P18249806780781760620.Spec : Prop :=
  ∀ n, P18249806780781760620.a n = A240025 n

end A240025

/-! ## A240025.P18377906997779194332

`xor(char[(n+1)²], char[n²+n])`
-/

namespace A240025.P18377906997779194332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A240025.P18377906997779194332

namespace A240025

/-- `xor(char[(n+1)²], char[n²+n])` -/
def P18377906997779194332.Spec : Prop :=
  ∀ n, (P18377906997779194332.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P480243995031096811

`char[(n+1)²]+char[lcm(n, n+1)]`
-/

namespace A240025.P480243995031096811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A240025.P480243995031096811

namespace A240025

/-- `char[(n+1)²]+char[lcm(n, n+1)]` -/
def P480243995031096811.Spec : Prop :=
  ∀ n, (P480243995031096811.a n : ℤ) = A240025 n

end A240025

/-! ## A240025.P12279168310852076656

`1-xor(1, char[ogf(x/(1-2x+2x^3-x^4))])`
-/

namespace A240025.P12279168310852076656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 2, -1] n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℤ)

end

end A240025.P12279168310852076656

namespace A240025

/-- `1-xor(1, char[ogf(x/(1-2x+2x^3-x^4))])` -/
def P12279168310852076656.Spec : Prop :=
  ∀ n, P12279168310852076656.a n = A240025 n

end A240025

/-! ## A240025.P7626838315525621600

`Δ[A080037(n)]-1`
-/

namespace A240025.P7626838315525621600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A240025.P7626838315525621600

namespace A240025

/-- `Δ[A080037(n)]-1` -/
def P7626838315525621600.Spec : Prop :=
  ∀ n, P7626838315525621600.a n = A240025 n

end A240025

/-! ## A240025.P7573367508358527080

`floor((1/A132460(n))²)`
-/

namespace A240025.P7573367508358527080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / (A132460 n : ℚ)) ^ 2⌋

end

end A240025.P7573367508358527080

namespace A240025

/-- `floor((1/A132460(n))²)` -/
def P7573367508358527080.Spec : Prop :=
  ∀ n, P7573367508358527080.a n = A240025 n

end A240025

/-! ## A240025.P6086676864116806394

`A000007(A055087(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A240025

/-- `A000007(A055087(n))` -/
def P6086676864116806394.Spec : Prop :=
  ∀ n, P6086676864116806394.a n = A240025 n

theorem P6086676864116806394.correct : P6086676864116806394.Spec := by
  intro n
  simp only [A240025]

end A240025

/-! ## A240025.P11714976488414475184

`A010052(A173517(n))`
-/

namespace A240025.P11714976488414475184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A173517 n).toNat

end

end A240025.P11714976488414475184

namespace A240025

/-- `A010052(A173517(n))` -/
def P11714976488414475184.Spec : Prop :=
  ∀ n, P11714976488414475184.a n = A240025 n

end A240025

/-! ## A240025.P1905043135076601455

`A063524(A055087(n)+1)`
-/

namespace A240025.P1905043135076601455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A055087 n + 1).toNat

end

end A240025.P1905043135076601455

namespace A240025

/-- `A063524(A055087(n)+1)` -/
def P1905043135076601455.Spec : Prop :=
  ∀ n, P1905043135076601455.a n = A240025 n

end A240025

/-! ## A240025.P13893346450274472323

`A008683(A126114(n+1))`
-/

namespace A240025.P13893346450274472323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A126114 (n + 1)).toNat

end

end A240025.P13893346450274472323

namespace A240025

/-- `A008683(A126114(n+1))` -/
def P13893346450274472323.Spec : Prop :=
  ∀ n, P13893346450274472323.a n = A240025 n

end A240025

/-! ## A240025.P5826919497283233703

`A037213(A038760(n)²+1)`
-/

namespace A240025.P5826919497283233703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A038760 n ^ 2 + 1).toNat

end

end A240025.P5826919497283233703

namespace A240025

/-- `A037213(A038760(n)²+1)` -/
def P5826919497283233703.Spec : Prop :=
  ∀ n, P5826919497283233703.a n = A240025 n

end A240025

/-! ## A240025.P16605496189094062268

`A010051(2*A122197(n+1))`
-/

namespace A240025.P16605496189094062268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A122197 (n + 1)).toNat

end

end A240025.P16605496189094062268

namespace A240025

/-- `A010051(2*A122197(n+1))` -/
def P16605496189094062268.Spec : Prop :=
  ∀ n, P16605496189094062268.a n = A240025 n

end A240025

/-! ## A240025.P10133158587015325683

`A049068(n+1)-A080037(n)`
-/

namespace A240025.P10133158587015325683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1) - A080037 n

end

end A240025.P10133158587015325683

namespace A240025

/-- `A049068(n+1)-A080037(n)` -/
def P10133158587015325683.Spec : Prop :=
  ∀ n, P10133158587015325683.a n = A240025 n

theorem P10133158587015325683.correct : P10133158587015325683.Spec := by
  intro n
  simp only [A240025, Nat.add_sub_cancel, A240025.P10133158587015325683.a, A240025.P6086676864116806394.a, A000007, A000007.P6599383543502402472.a, A049068, A049068.P6609318107156725997.a, A055087, A055087.P17964067358640094815.a, A080037, A080037.P7803047585790766488.a, A000037, A000037.P3199287792184117507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A240025

/-!
# A240026: Number of partitions of n such that the successive differences of consecutive parts are nondecreasing.

The programs for A240026, there is no canonical definition to state claims against.
-/

/-! ## A240026.P1456347366824331455

`A303708(A154638(floor(n/3)))+A000726(n)`
-/

namespace A240026.P1456347366824331455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A154638 ⌊(n : ℚ) / 3⌋.toNat).toNat + A000726 n

end

end A240026.P1456347366824331455

/-! ## A240026.P17705584015766981895

`A117143(A028310(n))-A060952(A334689(n))`
-/

namespace A240026.P17705584015766981895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (A028310 n).toNat - A060952 (A334689 n).toNat

end

end A240026.P17705584015766981895

/-!
# A240028: Numbers with primitive root 11.

The programs for A240028, there is no canonical definition to state claims against.
-/

/-! ## A240028.P6632959970757090882

`eq[Δ[A002088(n)], A070680(n+1)]+1`
-/

namespace A240028.P6632959970757090882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A240028.P6632959970757090882

/-! ## A240028.P17530480077732460536

`eq[A000010(n+1), A070680(n+1)]+1`
-/

namespace A240028.P17530480077732460536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A240028.P17530480077732460536

/-! ## A240028.P142002869542369782

`eq[A070680(A008706(n)), A225530(n)]`
-/

namespace A240028.P142002869542369782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240028.P142002869542369782

/-! ## A240028.P11442134014144864091

`eq[A070680(A028310(n)), A225530(n)]`
-/

namespace A240028.P11442134014144864091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240028.P11442134014144864091

/-! ## A240028.P2229852412078991575

`eq[A070680(A123108(2*n)), A225530(n)]`
-/

namespace A240028.P2229852412078991575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240028.P2229852412078991575

/-!
# A240030: Numbers with primitive root 12.

The programs for A240030, there is no canonical definition to state claims against.
-/

/-! ## A240030.P10661241783450073529

`A005408(eq[A037225(n), A070683(n)])`
-/

namespace A240030.P10661241783450073529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240030.P10661241783450073529

/-! ## A240030.P282362969601286920

`A144396(eq[A037225(n), A070683(n)])`
-/

namespace A240030.P282362969601286920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240030.P282362969601286920

/-! ## A240030.P17361780743243890850

`A267872(eq[A037225(n), A070683(n)])`
-/

namespace A240030.P17361780743243890850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240030.P17361780743243890850

/-! ## A240030.P13747195906551374934

`A005408(eq[A000010(2*n+1), A070683(n)])`
-/

namespace A240030.P13747195906551374934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240030.P13747195906551374934

/-! ## A240030.P8008751895145544702

`record[A246004(2*n+5)+A052126(2*n+5)]`
-/

namespace A240030.P8008751895145544702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (2 * n + 5) + A052126 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240030.P8008751895145544702

/-!
# A240031: Numbers with primitive root -12.

The programs for A240031, there is no canonical definition to state claims against.
-/

/-! ## A240031.P2878614359614201696

`record[A367580(3*n+5)%A286781(3*(n+1))]`
-/

namespace A240031.P2878614359614201696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367580 (3 * n + 5)) (A286781 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240031.P2878614359614201696

/-! ## A240031.P11848274978146276259

`A066938(n+1)-A004016(A014644(n+1))`
-/

namespace A240031.P11848274978146276259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066938 (n + 1) - A004016 (A014644 (n + 1)).toNat

end

end A240031.P11848274978146276259

/-!
# A240033: Number of n X n 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240033, there is no canonical definition to state claims against.
-/

/-! ## A240033.P17875422110861370639

`A240039(∑[4*n]+1)`
-/

namespace A240033.P17875422110861370639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240033.P17875422110861370639

/-! ## A240033.P12312061612704685788

`lcm(2, A240039(A001844(n)))`
-/

namespace A240033.P12312061612704685788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240039 (A001844 n).toNat)

end

end A240033.P12312061612704685788

/-! ## A240033.P11388403455908259524

`A240039(A001844(n))+A185255(n)`
-/

namespace A240033.P11388403455908259524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A001844 n).toNat + A185255 n

end

end A240033.P11388403455908259524

/-! ## A240033.P14399417434561168656

`A326678(n)+A240039(A001844(n))`
-/

namespace A240033.P14399417434561168656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A240039 (A001844 n).toNat

end

end A240033.P14399417434561168656

/-! ## A240033.P7209655441696501329

`A240039(A001844(n))%A041362(n)`
-/

namespace A240033.P7209655441696501329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240039 (A001844 n).toNat) (A041362 n)

end

end A240033.P7209655441696501329

/-!
# A240034: Number of n X 3 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240034, the canonical program `A240034.P9031001120643243665` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240034 has offset 1).

The definition of A240034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240034.P9031001120643243665

`4*a(n-2)-3*a(n-4)-a(n-6)` with `a(0)=4, a(1)=6, a(2)=16, a(3)=16, a(4)=42, a(5)=44, a(6)=114`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A240034

/-- `4*a(n-2)-3*a(n-4)-a(n-6)` -/
def P9031001120643243665.Spec : Prop :=
  ∀ n, P9031001120643243665.a n = A240034 (n + 1)

theorem P9031001120643243665.correct : P9031001120643243665.Spec := by
  intro n
  simp only [A240034, Nat.add_sub_cancel]

end A240034

/-! ## A240034.P10577563926402332583

`A240039(∑[n+2]+4)`
-/

namespace A240034.P10577563926402332583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240034.P10577563926402332583

namespace A240034

/-- `A240039(∑[n+2]+4)` -/
def P10577563926402332583.Spec : Prop :=
  ∀ n, P10577563926402332583.a n = A240034 (n + 1)

end A240034

/-! ## A240034.P15787864000043815297

`lcm(2, A240039(A167614(n+1)))`
-/

namespace A240034.P15787864000043815297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240039 (A167614 (n + 1)).toNat)

end

end A240034.P15787864000043815297

namespace A240034

/-- `lcm(2, A240039(A167614(n+1)))` -/
def P15787864000043815297.Spec : Prop :=
  ∀ n, (P15787864000043815297.a n : ℤ) = A240034 (n + 1)

end A240034

/-! ## A240034.P6099119442286295458

`and(-2, A240039(A152950(n+3)))`
-/

namespace A240034.P6099119442286295458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A240039 (A152950 (n + 3)).toNat)

end

end A240034.P6099119442286295458

namespace A240034

/-- `and(-2, A240039(A152950(n+3)))` -/
def P6099119442286295458.Spec : Prop :=
  ∀ n, P6099119442286295458.a n = A240034 (n + 1)

end A240034

/-! ## A240034.P11155742607849865389

`A240039(A167614(n+1))%A240037(n+1)`
-/

namespace A240034.P11155742607849865389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240039 (A167614 (n + 1)).toNat) (A240037 (n + 1))

end

end A240034.P11155742607849865389

namespace A240034

/-- `A240039(A167614(n+1))%A240037(n+1)` -/
def P11155742607849865389.Spec : Prop :=
  ∀ n, P11155742607849865389.a n = A240034 (n + 1)

end A240034

/-!
# A240035: Number of nX4 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240035, there is no canonical definition to state claims against.
-/

/-! ## A240035.P14819879121765519444

`A240039(∑[n+3]+7)`
-/

namespace A240035.P14819879121765519444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240035.P14819879121765519444

/-! ## A240035.P10957246086267842273

`lcm(2, A240039(A055999(n)+10))`
-/

namespace A240035.P10957246086267842273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240039 (A055999 n + 10).toNat)

end

end A240035.P10957246086267842273

/-! ## A240035.P4490223684068821411

`A007318(C(n, 2))*A240039(A055999(n)+10)`
-/

namespace A240035.P4490223684068821411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A240039 (A055999 n + 10).toNat

end

end A240035.P4490223684068821411

/-! ## A240035.P9511814659577319532

`A240039(A055999(n)+10)+A000045(C(n, 64))`
-/

namespace A240035.P9511814659577319532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A055999 n + 10).toNat + A000045 (Nat.choose n 64)

end

end A240035.P9511814659577319532

/-! ## A240035.P9846708001793472094

`A007318(floor(n/27))*A240039(A055999(n)+10)`
-/

namespace A240035.P9846708001793472094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 27⌋.toNat * A240039 (A055999 n + 10).toNat

end

end A240035.P9846708001793472094

/-!
# A240036: Number of nX5 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240036, there is no canonical definition to state claims against.
-/

/-! ## A240036.P14060522071103327375

`A240039(A167499(n+3))`
-/

namespace A240036.P14060522071103327375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A167499 (n + 3)).toNat

end

end A240036.P14060522071103327375

/-! ## A240036.P3221762027118708836

`A240039(A155212(n)+13)`
-/

namespace A240036.P3221762027118708836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A155212 n + 13).toNat

end

end A240036.P3221762027118708836

/-! ## A240036.P896157971830041259

`A240039(A056000(n)+15)`
-/

namespace A240036.P896157971830041259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A056000 n + 15).toNat

end

end A240036.P896157971830041259

/-! ## A240036.P2157788680177697598

`A240039(A167614(n+3)+2)`
-/

namespace A240036.P2157788680177697598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A167614 (n + 3) + 2).toNat

end

end A240036.P2157788680177697598

/-! ## A240036.P4400837174070732060

`A240039(A000217(n+4)+5)`
-/

namespace A240036.P4400837174070732060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A000217 (n + 4) + 5).toNat

end

end A240036.P4400837174070732060

/-!
# A240037: Number of nX6 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240037, there is no canonical definition to state claims against.
-/

/-! ## A240037.P6249661757870492467

`A240039(A056115(n)+21)`
-/

namespace A240037.P6249661757870492467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A056115 n + 21).toNat

end

end A240037.P6249661757870492467

/-! ## A240037.P15810858896123171623

`A240039(A167614(n+4)+3)`
-/

namespace A240037.P15810858896123171623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A167614 (n + 4) + 3).toNat

end

end A240037.P15810858896123171623

/-! ## A240037.P8788489181500463457

`A240039(A000096(n+4)+7)`
-/

namespace A240037.P8788489181500463457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A000096 (n + 4) + 7).toNat

end

end A240037.P8788489181500463457

/-! ## A240037.P4939983639019162021

`A240039(A000217(n+5)+6)`
-/

namespace A240037.P4939983639019162021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A000217 (n + 5) + 6).toNat

end

end A240037.P4939983639019162021

/-! ## A240037.P11819730741554317565

`A240039(A179865(n+6)+6)`
-/

namespace A240037.P11819730741554317565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A179865 (n + 6) + 6).toNat

end

end A240037.P11819730741554317565

/-!
# A240038: Number of nX7 0..2 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A240038, there is no canonical definition to state claims against.
-/

/-! ## A240038.P12996636746872946414

`A240039(A056119(n)+28)`
-/

namespace A240038.P12996636746872946414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A056119 n + 28).toNat

end

end A240038.P12996636746872946414

/-! ## A240038.P11760622650916236873

`A240039(eq[11, A066657(n)])`
-/

namespace A240038.P11760622650916236873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240038.P11760622650916236873

/-! ## A240038.P12208448407740019271

`record[A240039(A052905(n)+12)]`
-/

namespace A240038.P12208448407740019271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A052905 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240038.P12208448407740019271

/-! ## A240038.P7363962775056508456

`A240039(A167499(n+5)+2)`
-/

namespace A240038.P7363962775056508456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A167499 (n + 5) + 2).toNat

end

end A240038.P7363962775056508456

/-! ## A240038.P14335059104289034934

`A240039(A167614(n+5)+4)`
-/

namespace A240038.P14335059104289034934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240039 (A167614 (n + 5) + 4).toNat

end

end A240038.P14335059104289034934

/-!
# A240040: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240040, there is no canonical definition to state claims against.
-/

/-! ## A240040.P14357402396120275497

`A240046(∑[4*n]+1)`
-/

namespace A240040.P14357402396120275497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240040.P14357402396120275497

/-! ## A240040.P12964489320282867865

`A240046(n²+(n+1)²)+n-∏{digits}[n, #]`
-/

namespace A240040.P12964489320282867865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (n ^ 2 + (n + 1) ^ 2) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A240040.P12964489320282867865

/-! ## A240040.P17274379182852466223

`and(-1, A240046(A001844(n)))`
-/

namespace A240040.P17274379182852466223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240046 (A001844 n).toNat)

end

end A240040.P17274379182852466223

/-! ## A240040.P2881459816193335728

`record[A240046(A330613(n+1))]`
-/

namespace A240040.P2881459816193335728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240040.P2881459816193335728

/-!
# A240041: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240041, there is no canonical definition to state claims against.
-/

/-! ## A240041.P10141192089034012313

`A240046(∑[n+2])`
-/

namespace A240041.P10141192089034012313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240041.P10141192089034012313

/-! ## A240041.P13253033606488466005

`record[A240046(∑[A152271(n)])]`
-/

namespace A240041.P13253033606488466005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240041.P13253033606488466005

/-! ## A240041.P16679235318486753490

`record[A240046(A117142(n+1))]`
-/

namespace A240041.P16679235318486753490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240041.P16679235318486753490

/-! ## A240041.P92231874661968769

`record[A240046(Δ[A003453(n+5)])]`
-/

namespace A240041.P92231874661968769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240041.P92231874661968769

/-! ## A240041.P1203370124851021082

`record[A097806(n)*A240046(n+1)]`
-/

namespace A240041.P1203370124851021082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A240046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240041.P1203370124851021082

/-!
# A240042: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240042, there is no canonical definition to state claims against.
-/

/-! ## A240042.P11704492542795624727

`A240046(∑[n+3]+1)`
-/

namespace A240042.P11704492542795624727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240042.P11704492542795624727

/-! ## A240042.P10703725676472355712

`record[A240046(A198464(n+1))]`
-/

namespace A240042.P10703725676472355712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240042.P10703725676472355712

/-!
# A240043: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240043, there is no canonical definition to state claims against.
-/

/-! ## A240043.P16865283418989903732

`A240046(∑[n+4]+3)`
-/

namespace A240043.P16865283418989903732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240043.P16865283418989903732

/-! ## A240043.P334809905701150449

`A057427(n+1)*A240046(A141214(n+1))`
-/

namespace A240043.P334809905701150449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A240046 (A141214 (n + 1)).toNat

end

end A240043.P334809905701150449

/-!
# A240044: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240044, there is no canonical definition to state claims against.
-/

/-! ## A240044.P10702578814228138326

`A240046(∑[n+5]+6)`
-/

namespace A240044.P10702578814228138326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240044.P10702578814228138326

/-! ## A240044.P2693298299093265269

`A240046(A046691(n+3))%A057009(2*n+5)`
-/

namespace A240044.P2693298299093265269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240046 (A046691 (n + 3)).toNat) (A057009 (2 * n + 5))

end

end A240044.P2693298299093265269

/-!
# A240045: Number of n X 6 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240045, there is no canonical definition to state claims against.
-/

/-! ## A240045.P6021915662931107616

`A240046(A052905(n+3))`
-/

namespace A240045.P6021915662931107616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A052905 (n + 3)).toNat

end

end A240045.P6021915662931107616

/-! ## A240045.P10079990614870797230

`A240046(eq[3, A219347(n)])`
-/

namespace A240045.P10079990614870797230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240045.P10079990614870797230

/-! ## A240045.P76406457694072878

`A240046(eq[5, A193592(n)])`
-/

namespace A240045.P76406457694072878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240045.P76406457694072878

/-! ## A240045.P7846264621083627329

`A240046(eq[8, A258709(n)])`
-/

namespace A240045.P7846264621083627329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240045.P7846264621083627329

/-! ## A240045.P4966495472352135673

`A240046(A055999(n+3)+1)`
-/

namespace A240045.P4966495472352135673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A055999 (n + 3) + 1).toNat

end

end A240045.P4966495472352135673

/-!
# A240047: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240047, there is no canonical definition to state claims against.
-/

/-! ## A240047.P6136473930830125123

`A240046(∑[n+1]+2)`
-/

namespace A240047.P6136473930830125123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240047.P6136473930830125123

/-! ## A240047.P10534928432946043459

`record[root(A240046(n+1), A193554(n))]`
-/

namespace A240047.P10534928432946043459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240046 (n + 1) : ℝ) ^ (1 / (A193554 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240047.P10534928432946043459

/-! ## A240047.P17402835273802775037

`record[gcd(A002262(n), A240046(n+2))]`
-/

namespace A240047.P17402835273802775037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A240046 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240047.P17402835273802775037

/-! ## A240047.P3537695838521197903

`record[C(A240046(n+2), A282629(n))]`
-/

namespace A240047.P3537695838521197903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240046 (n + 2)).toNat (A282629 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240047.P3537695838521197903

/-! ## A240047.P12665579781363476200

`A240046(A252460(2*(n+2)))+char[15]`
-/

namespace A240047.P12665579781363476200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A252460 (2 * (n + 2))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240047.P12665579781363476200

/-!
# A240048: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240048, there is no canonical definition to state claims against.
-/

/-! ## A240048.P2767618893533132958

`A240046(∑[n+2]+4)`
-/

namespace A240048.P2767618893533132958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240048.P2767618893533132958

/-! ## A240048.P1948642525677890943

`record[A240046(n+4)/A091965(n)]`
-/

namespace A240048.P1948642525677890943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240046 (n + 4) : ℚ) / (A091965 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240048.P1948642525677890943

/-! ## A240048.P6612115658236280898

`record[gcd(A025581(n), A240046(n+4))]`
-/

namespace A240048.P6612115658236280898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A240046 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240048.P6612115658236280898

/-! ## A240048.P11276878754819627820

`lcm((-1)^n, A240046(A167614(n+1)))`
-/

namespace A240048.P11276878754819627820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A240046 (A167614 (n + 1)).toNat)

end

end A240048.P11276878754819627820

/-! ## A240048.P14490994221001202361

`record[root(A240046(n+4), A133611(n+1))]`
-/

namespace A240048.P14490994221001202361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240046 (n + 4) : ℝ) ^ (1 / (A133611 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240048.P14490994221001202361

/-!
# A240049: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240049, there is no canonical definition to state claims against.
-/

/-! ## A240049.P11650938536409684442

`A240046(∑[n+3]+7)`
-/

namespace A240049.P11650938536409684442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240049.P11650938536409684442

/-!
# A240050: Number of 5 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240050, there is no canonical definition to state claims against.
-/

/-! ## A240050.P11867710902512977024

`A240046(A167499(n+3))`
-/

namespace A240050.P11867710902512977024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A167499 (n + 3)).toNat

end

end A240050.P11867710902512977024

/-! ## A240050.P4809935547485131560

`A240046(A155212(n)+13)`
-/

namespace A240050.P4809935547485131560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A155212 n + 13).toNat

end

end A240050.P4809935547485131560

/-! ## A240050.P16578139676478725668

`A240046(A056000(n)+15)`
-/

namespace A240050.P16578139676478725668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A056000 n + 15).toNat

end

end A240050.P16578139676478725668

/-! ## A240050.P14620043333418455594

`A240046(eq[7, A066657(n)])`
-/

namespace A240050.P14620043333418455594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240050.P14620043333418455594

/-! ## A240050.P2899984815836371816

`A240046(A167614(n+3)+2)`
-/

namespace A240050.P2899984815836371816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A167614 (n + 3) + 2).toNat

end

end A240050.P2899984815836371816

/-!
# A240051: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240051, there is no canonical definition to state claims against.
-/

/-! ## A240051.P279396476952508018

`A240046(A056115(n)+21)`
-/

namespace A240051.P279396476952508018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A056115 n + 21).toNat

end

end A240051.P279396476952508018

/-! ## A240051.P4650604443347426342

`A240046(Δ[A264443(n)]+10)`
-/

namespace A240051.P4650604443347426342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (f1 (n + 1) - f1 n + 10).toNat

end

end A240051.P4650604443347426342

/-! ## A240051.P5707177211926133147

`A240046(A167499(n+4)+1)`
-/

namespace A240051.P5707177211926133147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A167499 (n + 4) + 1).toNat

end

end A240051.P5707177211926133147

/-! ## A240051.P13035663114320764794

`A240046(A167614(n+4)+3)`
-/

namespace A240051.P13035663114320764794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A167614 (n + 4) + 3).toNat

end

end A240051.P13035663114320764794

/-! ## A240051.P10894906164699481234

`A240046(A000217(n+5)+6)`
-/

namespace A240051.P10894906164699481234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (A000217 (n + 5) + 6).toNat

end

end A240051.P10894906164699481234

/-!
# A240052: 2nd arithmetic derivative of products of 2 successive prime numbers (A006094).

The programs for A240052, the canonical program `A240052.P5517115470621218941` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240052 has offset 1).

The definition of A240052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240052.P5517115470621218941

`A068346(A006094(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A240052

/-- `A068346(A006094(n+1))` -/
def P5517115470621218941.Spec : Prop :=
  ∀ n, P5517115470621218941.a n = A240052 (n + 1)

theorem P5517115470621218941.correct : P5517115470621218941.Spec := by
  intro n
  simp only [A240052, Nat.add_sub_cancel]

end A240052

/-! ## A240052.P12371885586059440105

`A068719(A162735(n+1))`
-/

namespace A240052.P12371885586059440105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A162735 (n + 1)).toNat

end

end A240052.P12371885586059440105

namespace A240052

/-- `A068719(A162735(n+1))` -/
def P12371885586059440105.Spec : Prop :=
  ∀ n, P12371885586059440105.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P10570733448827964771

`A003415(Δ[A061802(n)])`
-/

namespace A240052.P10570733448827964771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A240052.P10570733448827964771

namespace A240052

/-- `A003415(Δ[A061802(n)])` -/
def P10570733448827964771.Spec : Prop :=
  ∀ n, P10570733448827964771.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P2726613599293800094

`A003415(A001043(n+1))`
-/

namespace A240052.P2726613599293800094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001043 (n + 1)).toNat

end

end A240052.P2726613599293800094

namespace A240052

/-- `A003415(A001043(n+1))` -/
def P2726613599293800094.Spec : Prop :=
  ∀ n, P2726613599293800094.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P6511222083260696775

`A003415(A011974(n+2))`
-/

namespace A240052.P6511222083260696775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A011974 (n + 2)).toNat

end

end A240052.P6511222083260696775

namespace A240052

/-- `A003415(A011974(n+2))` -/
def P6511222083260696775.Spec : Prop :=
  ∀ n, P6511222083260696775.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P1905707827950577856

`A003415(A076273(n+2)+1)`
-/

namespace A240052.P1905707827950577856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A076273 (n + 2) + 1).toNat

end

end A240052.P1905707827950577856

namespace A240052

/-- `A003415(A076273(n+2)+1)` -/
def P1905707827950577856.Spec : Prop :=
  ∀ n, P1905707827950577856.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P16774227982915950641

`A003415(A092949(n+1)-1)`
-/

namespace A240052.P16774227982915950641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A092949 (n + 1) - 1).toNat

end

end A240052.P16774227982915950641

namespace A240052

/-- `A003415(A092949(n+1)-1)` -/
def P16774227982915950641.Spec : Prop :=
  ∀ n, P16774227982915950641.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P17071771914279585320

`A003415(A061802(n+1)-A061802(n))`
-/

namespace A240052.P17071771914279585320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A061802 (n + 1) - A061802 n).toNat

end

end A240052.P17071771914279585320

namespace A240052

/-- `A003415(A061802(n+1)-A061802(n))` -/
def P17071771914279585320.Spec : Prop :=
  ∀ n, P17071771914279585320.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P732939247160441755

`A003415(A000040(n+2)+A000040(n+1))`
-/

namespace A240052.P732939247160441755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 2) + A000040 (n + 1)).toNat

end

end A240052.P732939247160441755

namespace A240052

/-- `A003415(A000040(n+2)+A000040(n+1))` -/
def P732939247160441755.Spec : Prop :=
  ∀ n, P732939247160441755.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P12510188463805767423

`A003415(A006094(n+1)-A037165(n+1))`
-/

namespace A240052.P12510188463805767423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006094 (n + 1) - A037165 (n + 1)).toNat

end

end A240052.P12510188463805767423

namespace A240052

/-- `A003415(A006094(n+1)-A037165(n+1))` -/
def P12510188463805767423.Spec : Prop :=
  ∀ n, P12510188463805767423.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P10601110366884916023

`A003415(A126199(n+1)-A006094(n+1))`
-/

namespace A240052.P10601110366884916023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A126199 (n + 1) - A006094 (n + 1)).toNat

end

end A240052.P10601110366884916023

namespace A240052

/-- `A003415(A126199(n+1)-A006094(n+1))` -/
def P10601110366884916023.Spec : Prop :=
  ∀ n, P10601110366884916023.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P17234938261906044128

`A003415(A008578(n+2)+A008578(n+3))`
-/

namespace A240052.P17234938261906044128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008578 (n + 2) + A008578 (n + 3)).toNat

end

end A240052.P17234938261906044128

namespace A240052

/-- `A003415(A008578(n+2)+A008578(n+3))` -/
def P17234938261906044128.Spec : Prop :=
  ∀ n, P17234938261906044128.a n = A240052 (n + 1)

end A240052

/-! ## A240052.P4722307668098816635

`A003415(∑{p}[A006094(n+1), #])`
-/

namespace A240052.P4722307668098816635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A240052.P4722307668098816635

namespace A240052

/-- `A003415(∑{p}[A006094(n+1), #])` -/
def P4722307668098816635.Spec : Prop :=
  ∀ n, P4722307668098816635.a n = A240052 (n + 1)

end A240052

/-!
# A240053: 3rd arithmetic derivation of products of 2 successive prime numbers (A006094).

The programs for A240053, the canonical program `A240053.P14038067904992536959` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240053 has offset 1).

The definition of A240053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A240052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240053.P14038067904992536959

`A003415(A240052(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A240053

/-- `A003415(A240052(n+1))` -/
def P14038067904992536959.Spec : Prop :=
  ∀ n, P14038067904992536959.a n = A240053 (n + 1)

theorem P14038067904992536959.correct : P14038067904992536959.Spec := by
  intro n
  simp only [A240053, Nat.add_sub_cancel]

end A240053

/-! ## A240053.P3941177612135240459

`A099306(A006094(n+1))`
-/

namespace A240053.P3941177612135240459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A006094 (n + 1)).toNat

end

end A240053.P3941177612135240459

namespace A240053

/-- `A099306(A006094(n+1))` -/
def P3941177612135240459.Spec : Prop :=
  ∀ n, P3941177612135240459.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P9424724160969360211

`A068346(Δ[A061802(n)])`
-/

namespace A240053.P9424724160969360211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (f1 (n + 1) - f1 n).toNat

end

end A240053.P9424724160969360211

namespace A240053

/-- `A068346(Δ[A061802(n)])` -/
def P9424724160969360211.Spec : Prop :=
  ∀ n, P9424724160969360211.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P12066164533580072490

`A068346(A001043(n+1))`
-/

namespace A240053.P12066164533580072490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A001043 (n + 1)).toNat

end

end A240053.P12066164533580072490

namespace A240053

/-- `A068346(A001043(n+1))` -/
def P12066164533580072490.Spec : Prop :=
  ∀ n, P12066164533580072490.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P2274960174259274758

`A068346(A011974(n+2))`
-/

namespace A240053.P2274960174259274758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A011974 (n + 2)).toNat

end

end A240053.P2274960174259274758

namespace A240053

/-- `A068346(A011974(n+2))` -/
def P2274960174259274758.Spec : Prop :=
  ∀ n, P2274960174259274758.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P551283586083747418

`A068346(A061802(n+1)-A061802(n))`
-/

namespace A240053.P551283586083747418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A061802 (n + 1) - A061802 n).toNat

end

end A240053.P551283586083747418

namespace A240053

/-- `A068346(A061802(n+1)-A061802(n))` -/
def P551283586083747418.Spec : Prop :=
  ∀ n, P551283586083747418.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P1000679969608393661

`A068346(A065091(n+1)+A000040(n+1))`
-/

namespace A240053.P1000679969608393661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A240053.P1000679969608393661

namespace A240053

/-- `A068346(A065091(n+1)+A000040(n+1))` -/
def P1000679969608393661.Spec : Prop :=
  ∀ n, P1000679969608393661.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P10932615091398632646

`A068346(A000040(n+1)+A000040(n+2))`
-/

namespace A240053.P10932615091398632646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A240053.P10932615091398632646

namespace A240053

/-- `A068346(A000040(n+1)+A000040(n+2))` -/
def P10932615091398632646.Spec : Prop :=
  ∀ n, P10932615091398632646.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P16398502244122025720

`A068346(A001748(n+1)-A062234(n+1))`
-/

namespace A240053.P16398502244122025720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A001748 (n + 1) - A062234 (n + 1)).toNat

end

end A240053.P16398502244122025720

namespace A240053

/-- `A068346(A001748(n+1)-A062234(n+1))` -/
def P16398502244122025720.Spec : Prop :=
  ∀ n, P16398502244122025720.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P18372920172618261422

`A068346(A008578(n+2)+A008578(n+3))`
-/

namespace A240053.P18372920172618261422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A008578 (n + 2) + A008578 (n + 3)).toNat

end

end A240053.P18372920172618261422

namespace A240053

/-- `A068346(A008578(n+2)+A008578(n+3))` -/
def P18372920172618261422.Spec : Prop :=
  ∀ n, P18372920172618261422.a n = A240053 (n + 1)

end A240053

/-! ## A240053.P15447819878808998179

`A068346(∑{p}[A006094(n+1), #])`
-/

namespace A240053.P15447819878808998179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A240053.P15447819878808998179

namespace A240053

/-- `A068346(∑{p}[A006094(n+1), #])` -/
def P15447819878808998179.Spec : Prop :=
  ∀ n, P15447819878808998179.a n = A240053 (n + 1)

end A240053

/-!
# A240054: 4th arithmetic derivative of products of 2 successive prime numbers (A006094).

The programs for A240054, the canonical program `A240054.P9237913273188116088` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240054 has offset 1).

The definition of A240054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240054.P9237913273188116088

`A099306(Δ[A061802(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A240054

/-- `A099306(Δ[A061802(n)])` -/
def P9237913273188116088.Spec : Prop :=
  ∀ n, P9237913273188116088.a n = A240054 (n + 1)

theorem P9237913273188116088.correct : P9237913273188116088.Spec := by
  intro n
  simp only [A240054, Nat.add_sub_cancel]

end A240054

/-! ## A240054.P1741669617163991524

`A099306(A001043(n+1))`
-/

namespace A240054.P1741669617163991524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A001043 (n + 1)).toNat

end

end A240054.P1741669617163991524

namespace A240054

/-- `A099306(A001043(n+1))` -/
def P1741669617163991524.Spec : Prop :=
  ∀ n, P1741669617163991524.a n = A240054 (n + 1)

end A240054

/-! ## A240054.P7334174302162310144

`A099306(A011974(n+2))`
-/

namespace A240054.P7334174302162310144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A011974 (n + 2)).toNat

end

end A240054.P7334174302162310144

namespace A240054

/-- `A099306(A011974(n+2))` -/
def P7334174302162310144.Spec : Prop :=
  ∀ n, P7334174302162310144.a n = A240054 (n + 1)

end A240054

/-! ## A240054.P11510106631096928466

`A099306(A061802(n+1)-A061802(n))`
-/

namespace A240054.P11510106631096928466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A061802 (n + 1) - A061802 n).toNat

end

end A240054.P11510106631096928466

namespace A240054

/-- `A099306(A061802(n+1)-A061802(n))` -/
def P11510106631096928466.Spec : Prop :=
  ∀ n, P11510106631096928466.a n = A240054 (n + 1)

theorem P11510106631096928466.correct : P11510106631096928466.Spec := by
  intro n
  simp only [A240054, Nat.add_sub_cancel, A240054.P11510106631096928466.a, A240054.P9237913273188116088.f1, A240054.P9237913273188116088.a, SequenceMachineLib.memo_apply]

end A240054

/-! ## A240054.P18011622245988357441

`A099306(A000040(n+1)+A000040(n+2))`
-/

namespace A240054.P18011622245988357441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A240054.P18011622245988357441

namespace A240054

/-- `A099306(A000040(n+1)+A000040(n+2))` -/
def P18011622245988357441.Spec : Prop :=
  ∀ n, P18011622245988357441.a n = A240054 (n + 1)

end A240054

/-! ## A240054.P9536263158982043056

`A068346(A240052(n+1))`
-/

namespace A240054.P9536263158982043056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A240052 (n + 1)).toNat

end

end A240054.P9536263158982043056

namespace A240054

/-- `A068346(A240052(n+1))` -/
def P9536263158982043056.Spec : Prop :=
  ∀ n, P9536263158982043056.a n = A240054 (n + 1)

end A240054

/-! ## A240054.P11780529167820415148

`A003415(A240053(n+1))`
-/

namespace A240054.P11780529167820415148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A240053 (n + 1)).toNat

end

end A240054.P11780529167820415148

namespace A240054

/-- `A003415(A240053(n+1))` -/
def P11780529167820415148.Spec : Prop :=
  ∀ n, P11780529167820415148.a n = A240054 (n + 1)

end A240054

/-! ## A240054.P2439477655286956979

`A099306(A008472(A006094(n+1)))`
-/

namespace A240054.P2439477655286956979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A008472 (A006094 (n + 1)).toNat).toNat

end

end A240054.P2439477655286956979

namespace A240054

/-- `A099306(A008472(A006094(n+1)))` -/
def P2439477655286956979.Spec : Prop :=
  ∀ n, P2439477655286956979.a n = A240054 (n + 1)

end A240054

/-!
# A240056: Number of partitions of n such that m(1) > m(2), where m = multiplicity.

The programs for A240056, there is no canonical definition to state claims against.
-/

/-! ## A240056.P16136640890490225257

`A000041(n)-A182713(n+3)`
-/

namespace A240056.P16136640890490225257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A182713 (n + 3)

end

end A240056.P16136640890490225257

/-! ## A240056.P7323907288539757979

`∑[A174455(abs(1-n))]`
-/

namespace A240056.P7323907288539757979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174455 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240056.P7323907288539757979

/-! ## A240056.P1532010769091746001

`A174455(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A240056.P1532010769091746001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174455 (n - 1) + a (n - 1)

end

end A240056.P1532010769091746001

/-! ## A240056.P12603516405233998104

`A182713(n+1)+A182713(n+2)`
-/

namespace A240056.P12603516405233998104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1) + A182713 (n + 2)

end

end A240056.P12603516405233998104

/-! ## A240056.P6623666287414832703

`∑[A174455(n)]-A174455(n)`
-/

namespace A240056.P6623666287414832703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174455 n

end

end A240056.P6623666287414832703

/-! ## A240056.P17713018345309498548

`A024787(n+2)-A024787(abs(1-n)+1)`
-/

namespace A240056.P17713018345309498548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 2) - A024787 (|1 - (n : ℤ)| + 1).toNat

end

end A240056.P17713018345309498548

/-! ## A240056.P14877272149412512180

`A000041(n)-Δ[A024787(n+2)]`
-/

namespace A240056.P14877272149412512180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (f1 (n + 1) - f1 n)

end

end A240056.P14877272149412512180

/-!
# A240057: Number of partitions of n such that (greatest part) is not = (multiplicity of greatest part).

The programs for A240057, there is no canonical definition to state claims against.
-/

/-! ## A240057.P5312172577868341476

`A039899(n+1)+A003106(n+1)`
-/

namespace A240057.P5312172577868341476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 (n + 1) + A003106 (n + 1)

end

end A240057.P5312172577868341476

/-! ## A240057.P8738402948828453490

`A000041(n+1)-A006141(n+1)`
-/

namespace A240057.P8738402948828453490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A006141 (n + 1)

end

end A240057.P8738402948828453490

/-! ## A240057.P10987809116467096660

`A000070(n+1)-(A006141(n+1)+A000070(n))`
-/

namespace A240057.P10987809116467096660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A006141 (n + 1) + A000070 n)

end

end A240057.P10987809116467096660

/-! ## A240057.P7593141960817946263

`A003106(n+1)+A325342(n+1)+A064173(n+1)`
-/

namespace A240057.P7593141960817946263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A325342 (n + 1) + A064173 (n + 1))

end

end A240057.P7593141960817946263

/-! ## A240057.P16909075618140470540

`A000041(n+1)+A003106(n+1)-A003114(n+1)`
-/

namespace A240057.P16909075618140470540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A003106 (n + 1) - A003114 (n + 1))

end

end A240057.P16909075618140470540

/-! ## A240057.P14487619136025341108

`A003113(n+1)+A039899(n+1)-A003114(n+1)`
-/

namespace A240057.P14487619136025341108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 (n + 1) + (A039899 (n + 1) - A003114 (n + 1))

end

end A240057.P14487619136025341108

/-! ## A240057.P8705042536788183249

`A003106(n+1)+A039900(n+1)-A006141(n+1)`
-/

namespace A240057.P8705042536788183249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A006141 (n + 1))

end

end A240057.P8705042536788183249

/-! ## A240057.P10507219690359614964

`A003114(n+1)+A039899(n+1)-A006141(n+1)`
-/

namespace A240057.P10507219690359614964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A039899 (n + 1) - A006141 (n + 1))

end

end A240057.P10507219690359614964

/-! ## A240057.P14059364543737269335

`A026804(n+1)+A026805(n+1)-A006141(n+1)`
-/

namespace A240057.P14059364543737269335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A026805 (n + 1) - A006141 (n + 1))

end

end A240057.P14059364543737269335

/-! ## A240057.P12070702524673872274

`A000041(n+1)+A039899(n+1)-A039900(n+1)`
-/

namespace A240057.P12070702524673872274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A039899 (n + 1) - A039900 (n + 1))

end

end A240057.P12070702524673872274

/-! ## A240057.P10465903710571186337

`A064173(n+1)+A064174(n+1)-A006141(n+1)`
-/

namespace A240057.P10465903710571186337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A064174 (n + 1) - A006141 (n + 1))

end

end A240057.P10465903710571186337

/-! ## A240057.P13668858248124319114

`A237751(n+1)+A237755(n+1)-A006141(n+1)`
-/

namespace A240057.P13668858248124319114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237751 (n + 1) + (A237755 (n + 1) - A006141 (n + 1))

end

end A240057.P13668858248124319114

/-! ## A240057.P10316365303094728357

`A239948(n+1)+A239952(n+1)-A006141(n+1)`
-/

namespace A240057.P10316365303094728357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239948 (n + 1) + (A239952 (n + 1) - A006141 (n + 1))

end

end A240057.P10316365303094728357

/-! ## A240057.P463111094633698663

`A239949(n+1)+A239951(n+1)-A006141(n+1)`
-/

namespace A240057.P463111094633698663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 (n + 1) + (A239951 (n + 1) - A006141 (n + 1))

end

end A240057.P463111094633698663

/-! ## A240057.P4562669579033754313

`A000041(n+1)+A325342(n+1)-A325343(n+1)`
-/

namespace A240057.P4562669579033754313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A325342 (n + 1) - A325343 (n + 1))

end

end A240057.P4562669579033754313

/-!
# A240058: Number of partitions of n such that m(1) = m(3), where m = multiplicity.

The programs for A240058, there is no canonical definition to state claims against.
-/

/-! ## A240058.P16016776128285049149

`A182714(n+4)-A182714(n+1)`
-/

namespace A240058.P16016776128285049149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 4) - A182714 (n + 1)

end

end A240058.P16016776128285049149

/-! ## A240058.P7243584372424680385

`A240059(n+1)-A240059(n)`
-/

namespace A240058.P7243584372424680385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240059 (n + 1) - A240059 n

end

end A240058.P7243584372424680385

/-! ## A240058.P16198098942203554568

`Δ[A182712(n+1)]+Δ[A182714(n+2)]`
-/

namespace A240058.P16198098942203554568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A240058.P16198098942203554568

/-! ## A240058.P5965101973843608597

`A092295(n)-A182712(n+1)`
-/

namespace A240058.P5965101973843608597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092295 n - A182712 (n + 1)

end

end A240058.P5965101973843608597

/-! ## A240058.P15863566706636110904

`Δ[A240059(n)]`
-/

namespace A240058.P15863566706636110904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240058.P15863566706636110904

/-! ## A240058.P14376677111247940155

`Δ[A182714(n+2)+A182712(n+1)]`
-/

namespace A240058.P14376677111247940155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 2) + A182712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240058.P14376677111247940155

/-! ## A240058.P11904567604716336207

`A087787(n)+A092295(n)-A000041(n)`
-/

namespace A240058.P11904567604716336207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n + (A092295 n - A000041 n)

end

end A240058.P11904567604716336207

/-! ## A240058.P6234758083461684188

`Δ[A000041(n)-A182714(n+4)]`
-/

namespace A240058.P6234758083461684188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A182714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240058.P6234758083461684188

/-! ## A240058.P13365748614570012544

`Δ[A000065(n)-A182714(n+4)]`
-/

namespace A240058.P13365748614570012544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A182714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240058.P13365748614570012544

/-!
# A240059: Number of partitions of n such that m(1) > m(3), where m = multiplicity.

The programs for A240059, there is no canonical definition to state claims against.
-/

/-! ## A240059.P17783171119985781030

`A240058(n)+a(n-1)` with `a(0)=0`
-/

namespace A240059.P17783171119985781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A240058 n + a (n - 1)

end

end A240059.P17783171119985781030

/-! ## A240059.P13942612994244720868

`∑[A240058(A028310(n))]-1`
-/

namespace A240059.P13942612994244720868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A240059.P13942612994244720868

/-! ## A240059.P118282222851781502

`∑[A240058(A000038(n)+n)]`
-/

namespace A240059.P118282222851781502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240059.P118282222851781502

/-! ## A240059.P9444797610195551016

`A182714(n+2)+A182712(n+1)`
-/

namespace A240059.P9444797610195551016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 2) + A182712 (n + 1)

end

end A240059.P9444797610195551016

/-! ## A240059.P1219942574852239920

`∑[A240058(n+1)]-A240058(n+1)`
-/

namespace A240059.P1219942574852239920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240058 (n + 1)

end

end A240059.P1219942574852239920

/-! ## A240059.P7039230335891672776

`A000041(n)-A182714(n+4)`
-/

namespace A240059.P7039230335891672776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A182714 (n + 4)

end

end A240059.P7039230335891672776

/-! ## A240059.P10628156951063334765

`A000065(n)-A182714(n+4)+1`
-/

namespace A240059.P10628156951063334765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A182714 (n + 4) + 1

end

end A240059.P10628156951063334765

/-! ## A240059.P1642259908388223620

`Δ[A024788(n+1)+∑[A182712(n)]]`
-/

namespace A240059.P1642259908388223620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240059.P1642259908388223620

/-! ## A240059.P17509453471186808483

`A182712(n+1)+Δ[A024788(n+1)]`
-/

namespace A240059.P17509453471186808483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + (f1 (n + 1) - f1 n)

end

end A240059.P17509453471186808483

/-! ## A240059.P17625296936121518192

`A182712(n+1)+A024788(n+2)-A024788(n+1)`
-/

namespace A240059.P17625296936121518192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + (A024788 (n + 2) - A024788 (n + 1))

end

end A240059.P17625296936121518192

/-! ## A240059.P4374599696928516508

`A000041(n)-A182703(A052905(n)+9)`
-/

namespace A240059.P4374599696928516508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A182703 (A052905 n + 9).toNat

end

end A240059.P4374599696928516508

/-!
# A240060: Triangle read by rows, n>=1, 1<=k<=n. T(n,n-k+1) = number of cells in the k-th row = number of cells in the k-th column of the diagram of the symmetric representation of sigma(n) in the first quadrant.

The programs for A240060, there is no canonical definition to state claims against.
-/

/-! ## A240060.P14317631562318888414

`A240061(∑[char[∑[n]]]²-n)`
-/

namespace A240060.P14317631562318888414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240061 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A240060.P14317631562318888414

/-! ## A240060.P11973273485285332350

`dr(A240061(A038722(n+1)))`
-/

namespace A240060.P11973273485285332350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A240061 (A038722 (n + 1)).toNat)

end

end A240060.P11973273485285332350

/-! ## A240060.P16960015684499919456

`Δ[A240061(A038722(n))+a(n-1)]` with `a(0)=1`
-/

namespace A240060.P16960015684499919456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A240061 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240060.P16960015684499919456

/-! ## A240060.P14925550013543280004

`A240061(A038722(n+1))^A275062(n)`
-/

namespace A240060.P14925550013543280004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240061 (A038722 (n + 1)).toNat : ℚ) ^ (A275062 n : ℤ)

end

end A240060.P14925550013543280004

/-! ## A240060.P12209962771334807975

`lcm(A020985(n), A240061(A038722(n+1)))`
-/

namespace A240060.P12209962771334807975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A240061 (A038722 (n + 1)).toNat)

end

end A240060.P12209962771334807975

/-! ## A240060.P5569501141431054843

`A033999(n)²*A240061(A038722(n+1))`
-/

namespace A240060.P5569501141431054843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A240061 (A038722 (n + 1)).toNat

end

end A240060.P5569501141431054843

/-! ## A240060.P3707601640793934323

`A087960(n)²*A240061(A038722(n+1))`
-/

namespace A240060.P3707601640793934323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A240061 (A038722 (n + 1)).toNat

end

end A240060.P3707601640793934323

/-! ## A240060.P289380707684095125

`A000041(C(2, n+2))*A240061(A038722(n+1))`
-/

namespace A240060.P289380707684095125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A240061 (A038722 (n + 1)).toNat

end

end A240060.P289380707684095125

/-! ## A240060.P7933752253664374636

`A000010(ceil(1/(n+1)))*A240061(A038722(n+1))`
-/

namespace A240060.P7933752253664374636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A240061 (A038722 (n + 1)).toNat

end

end A240060.P7933752253664374636

/-! ## A240060.P2086558700715147397

`A000045(ceil(1/(n+1)))*A240061(A038722(n+1))`
-/

namespace A240060.P2086558700715147397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈1 / (n + 1 : ℚ)⌉.toNat * A240061 (A038722 (n + 1)).toNat

end

end A240060.P2086558700715147397

/-!
# A240061: Triangle read by rows, n>=1, 1<=k<=n. T(n,k) = number of cells in k-th row = number of cells in the k-th column of the diagram of the symmetric representation of sigma(n) in the first quadrant.

The programs for A240061, there is no canonical definition to state claims against.
-/

/-! ## A240061.P16640410618394998124

`A240060(∑[char[∑[n]]]²-n)`
-/

namespace A240061.P16640410618394998124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240060 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A240061.P16640410618394998124

/-! ## A240061.P8919298160758186445

`A240060(A038722(n+1))%8`
-/

namespace A240061.P8919298160758186445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240060 (A038722 (n + 1)).toNat) 8

end

end A240061.P8919298160758186445

/-! ## A240061.P17283285457522473463

`and(7, A240060(A038722(1-char[1]+n)))`
-/

namespace A240061.P17283285457522473463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A240060 (A038722 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat)

end

end A240061.P17283285457522473463

/-! ## A240061.P5828553282632690694

`Δ[A240060(A038722(n))+a(n-1)]` with `a(0)=0`
-/

namespace A240061.P5828553282632690694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A240060 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240061.P5828553282632690694

/-! ## A240061.P10440290157979931198

`gcd(A180969(n), A240060(A038722(n+1)))`
-/

namespace A240061.P10440290157979931198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180969 n) (A240060 (A038722 (n + 1)).toNat)

end

end A240061.P10440290157979931198

/-! ## A240061.P2895958597334419667

`lcm(A033999(n), A240060(A038722(n+1)))`
-/

namespace A240061.P2895958597334419667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240060 (A038722 (n + 1)).toNat)

end

end A240061.P2895958597334419667

/-! ## A240061.P7074669938149891016

`and(A240060(A038722(n+1)), A285560(n))`
-/

namespace A240061.P7074669938149891016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A240060 (A038722 (n + 1)).toNat) (A285560 n)

end

end A240061.P7074669938149891016

/-! ## A240061.P3579232785010445394

`and(A240060(A038722(n+1)), A285562(n))`
-/

namespace A240061.P3579232785010445394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A240060 (A038722 (n + 1)).toNat) (A285562 n)

end

end A240061.P3579232785010445394

/-! ## A240061.P17507978466254808954

`A008683(A005117(n+1))²*A240060(A038722(n+1))`
-/

namespace A240061.P17507978466254808954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A240060 (A038722 (n + 1)).toNat

end

end A240061.P17507978466254808954

/-!
# A240063: Number of partitions of n such that m(2) < m(3), where m = multiplicity.

The programs for A240063, there is no canonical definition to state claims against.
-/

/-! ## A240063.P11064200282332093047

`A206555(n+1)+A206555(n+2)`
-/

namespace A240063.P11064200282332093047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206555 (n + 1) + A206555 (n + 2)

end

end A240063.P11064200282332093047

/-! ## A240063.P17806315489437266044

`A240065(n)-A206555(n+3)`
-/

namespace A240063.P17806315489437266044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240065 n - A206555 (n + 3)

end

end A240063.P17806315489437266044

/-! ## A240063.P10083359665567077034

`A000041(n)-A240065(n+2)`
-/

namespace A240063.P10083359665567077034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240065 (n + 2)

end

end A240063.P10083359665567077034

/-! ## A240063.P5787716483078790281

`A000041(n)-A240064(n)-A240065(n)`
-/

namespace A240063.P5787716483078790281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240064 n - A240065 n

end

end A240063.P5787716483078790281

/-! ## A240063.P9249429875886344875

`A035363(2*n)-A240065(n+2)`
-/

namespace A240063.P9249429875886344875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A240065 (n + 2)

end

end A240063.P9249429875886344875

/-! ## A240063.P13124442488245210437

`A119620(2*n)-A240065(n+2)`
-/

namespace A240063.P13124442488245210437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A240065 (n + 2)

end

end A240063.P13124442488245210437

/-! ## A240063.P9941691794623210625

`A024789(n+2)-A024789(A028310(n))`
-/

namespace A240063.P9941691794623210625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 2) - A024789 (A028310 n).toNat

end

end A240063.P9941691794623210625

/-! ## A240063.P176298060114389921

`Δ[A024789(n+1)+A024789(A028310(n))]`
-/

namespace A240063.P176298060114389921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) + A024789 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240063.P176298060114389921

/-! ## A240063.P17232110801147987463

`A024789(n+2)-A024789(A065033(2*n))`
-/

namespace A240063.P17232110801147987463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 2) - A024789 (A065033 (2 * n)).toNat

end

end A240063.P17232110801147987463

/-!
# A240064: Number of partitions of n such that m(2) = m(3), where m = multiplicity.

The programs for A240064, there is no canonical definition to state claims against.
-/

/-! ## A240064.P16072148859705340595

`A240063(n+3)-A240063(n)`
-/

namespace A240064.P16072148859705340595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240063 (n + 3) - A240063 n

end

end A240064.P16072148859705340595

/-! ## A240064.P8798193247579085068

`A240065(n+2)-A240065(n)`
-/

namespace A240064.P8798193247579085068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240065 (n + 2) - A240065 n

end

end A240064.P8798193247579085068

/-! ## A240064.P11489333567885398524

`A000041(n)-A240063(n)-A240065(n)`
-/

namespace A240064.P11489333567885398524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240063 n - A240065 n

end

end A240064.P11489333567885398524

/-! ## A240064.P14638671821435768724

`Δ[A240065(n+1)+A240065(n)]`
-/

namespace A240064.P14638671821435768724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240065 (n + 1) + A240065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240064.P14638671821435768724

/-! ## A240064.P1410864221316762574

`A240063(n+3)+A240063(n)/A033999(2*n+1)`
-/

namespace A240064.P1410864221316762574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240063 (n + 3) : ℚ) + (A240063 n : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A240064.P1410864221316762574

/-!
# A240065: Number of partitions of n such that m(2) > m(3), where m = multiplicity.

The programs for A240065, there is no canonical definition to state claims against.
-/

/-! ## A240065.P3040828675850493781

`A240063(n)+A206555(n+3)`
-/

namespace A240065.P3040828675850493781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240063 n + A206555 (n + 3)

end

end A240065.P3040828675850493781

/-! ## A240065.P17662802191391792162

`A206555(n+1)+A206555(n+2)+A206555(n+3)`
-/

namespace A240065.P17662802191391792162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206555 (n + 1) + (A206555 (n + 2) + A206555 (n + 3))

end

end A240065.P17662802191391792162

/-! ## A240065.P10959494917796886544

`A000041(n)-A240063(n+3)`
-/

namespace A240065.P10959494917796886544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240063 (n + 3)

end

end A240065.P10959494917796886544

/-! ## A240065.P16293442089727395034

`A000041(n)-A240063(n)-A240064(n)`
-/

namespace A240065.P16293442089727395034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240063 n - A240064 n

end

end A240065.P16293442089727395034

/-! ## A240065.P11914949849475797549

`A240063(n)+Δ[A024789(n+2)]`
-/

namespace A240065.P11914949849475797549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240063 n + (f1 (n + 1) - f1 n)

end

end A240065.P11914949849475797549

/-!
# A240066: Twice prime nonnegative octonion integers shown as 8-vectors sorted by norm and then real and 7 imaginary components.

The programs for A240066, there is no canonical definition to state claims against.
-/

/-! ## A240066.P7212475774289235046

`A240067(∑[∑[A151622(n)]])`
-/

namespace A240066.P7212475774289235046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240066.P7212475774289235046

/-! ## A240066.P8377271858363270437

`A240067(A151622(n)+1+n)`
-/

namespace A240066.P8377271858363270437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (A151622 n + 1 + (n : ℤ)).toNat

end

end A240066.P8377271858363270437

/-! ## A240066.P4941176288017343201

`A240067(and(1, A090799(n+1))+n)`
-/

namespace A240066.P4941176288017343201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (Int.land 1 (A090799 (n + 1)) + (n : ℤ)).toNat

end

end A240066.P4941176288017343201

/-! ## A240066.P3182020065329423010

`A240067(and(1, A109291(n+1))+n)`
-/

namespace A240066.P3182020065329423010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240067 (Int.land 1 (A109291 (n + 1)) + (n : ℤ)).toNat

end

end A240066.P3182020065329423010

/-! ## A240066.P6931003668343134106

`and(A158713(n+1), A240067(n+1))`
-/

namespace A240066.P6931003668343134106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158713 (n + 1)) (A240067 (n + 1))

end

end A240066.P6931003668343134106

/-!
# A240067: Twice prime octonion integers shown as 8-vectors sorted by norm and then real and 7 imaginary components.

The programs for A240067, there is no canonical definition to state claims against.
-/

/-! ## A240067.P15667795452579711534

`A240066(lt[A000700(n+4), A056539(2*n+1)])`
-/

namespace A240067.P15667795452579711534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240066 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240067.P15667795452579711534

/-!
# A240068: Number of prime Lipschitz quaternions having norm prime(n).

The programs for A240068, the canonical program `A240068.P6814075163463490224` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240068 has offset 1).

The definition of A240068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240068.P6814075163463490224

`8*A008864(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240068

/-- `8*A008864(n+1)` -/
def P6814075163463490224.Spec : Prop :=
  ∀ n, P6814075163463490224.a n = A240068 (n + 1)

theorem P6814075163463490224.correct : P6814075163463490224.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel]

end A240068

/-! ## A240068.P10990513575299005403

`8*(A000040(n+1)+1)`
-/

namespace A240068.P10990513575299005403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A000040 (n + 1) + 1)

end

end A240068.P10990513575299005403

namespace A240068

/-- `8*(A000040(n+1)+1)` -/
def P10990513575299005403.Spec : Prop :=
  ∀ n, P10990513575299005403.a n = A240068 (n + 1)

end A240068

/-! ## A240068.P13916031671774259179

`A129074(n+1)-1`
-/

namespace A240068.P13916031671774259179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129074 (n + 1) - 1

end

end A240068.P13916031671774259179

namespace A240068

/-- `A129074(n+1)-1` -/
def P13916031671774259179.Spec : Prop :=
  ∀ n, P13916031671774259179.a n = A240068 (n + 1)

theorem P13916031671774259179.correct : P13916031671774259179.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P13916031671774259179.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A129074, A129074.P7178816935936618635.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P4663890788750202893

`4*A089241(n+1)`
-/

namespace A240068.P4663890788750202893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089241 (n + 1)

end

end A240068.P4663890788750202893

namespace A240068

/-- `4*A089241(n+1)` -/
def P4663890788750202893.Spec : Prop :=
  ∀ n, P4663890788750202893.a n = A240068 (n + 1)

theorem P4663890788750202893.correct : P4663890788750202893.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P4663890788750202893.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P10223025858585562757

`8*A028815(n+1)`
-/

namespace A240068.P10223025858585562757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A028815 (n + 1)

end

end A240068.P10223025858585562757

namespace A240068

/-- `8*A028815(n+1)` -/
def P10223025858585562757.Spec : Prop :=
  ∀ n, P10223025858585562757.a n = A240068 (n + 1)

end A240068

/-! ## A240068.P1162949254393245706

`∑[8*A125266(n+1)]`
-/

namespace A240068.P1162949254393245706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240068.P1162949254393245706

namespace A240068

/-- `∑[8*A125266(n+1)]` -/
def P1162949254393245706.Spec : Prop :=
  ∀ n, P1162949254393245706.a n = A240068 (n + 1)

end A240068

/-! ## A240068.P16031409051007483162

`8*(Δ[A007504(n)]+1)`
-/

namespace A240068.P16031409051007483162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (n + 1) - f1 n + 1)

end

end A240068.P16031409051007483162

namespace A240068

/-- `8*(Δ[A007504(n)]+1)` -/
def P16031409051007483162.Spec : Prop :=
  ∀ n, P16031409051007483162.a n = A240068 (n + 1)

end A240068

/-! ## A240068.P6203403497491743577

`2*(A129070(n+1)-1)`
-/

namespace A240068.P6203403497491743577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A129070 (n + 1) - 1)

end

end A240068.P6203403497491743577

namespace A240068

/-- `2*(A129070(n+1)-1)` -/
def P6203403497491743577.Spec : Prop :=
  ∀ n, P6203403497491743577.a n = A240068 (n + 1)

theorem P6203403497491743577.correct : P6203403497491743577.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P6203403497491743577.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A129070, A129070.P1599856947045960151.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P2013276759013078772

`4*(A072055(n+1)+1)`
-/

namespace A240068.P2013276759013078772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A072055 (n + 1) + 1)

end

end A240068.P2013276759013078772

namespace A240068

/-- `4*(A072055(n+1)+1)` -/
def P2013276759013078772.Spec : Prop :=
  ∀ n, P2013276759013078772.a n = A240068 (n + 1)

theorem P2013276759013078772.correct : P2013276759013078772.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P2013276759013078772.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P3911506230928103061

`2*(A001749(n+1)+4)`
-/

namespace A240068.P3911506230928103061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001749 (n + 1) + 4)

end

end A240068.P3911506230928103061

namespace A240068

/-- `2*(A001749(n+1)+4)` -/
def P3911506230928103061.Spec : Prop :=
  ∀ n, P3911506230928103061.a n = A240068 (n + 1)

theorem P3911506230928103061.correct : P3911506230928103061.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P3911506230928103061.a, A240068.P6814075163463490224.a, A001749, A001749.P16106244962881767471.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P17252854979324618728

`4*(A100484(n+1)+2)`
-/

namespace A240068.P17252854979324618728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A100484 (n + 1) + 2)

end

end A240068.P17252854979324618728

namespace A240068

/-- `4*(A100484(n+1)+2)` -/
def P17252854979324618728.Spec : Prop :=
  ∀ n, P17252854979324618728.a n = A240068 (n + 1)

theorem P17252854979324618728.correct : P17252854979324618728.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P17252854979324618728.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P4547814756428908006

`4*(A129069(n+1)-1)`
-/

namespace A240068.P4547814756428908006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A129069 (n + 1) - 1)

end

end A240068.P4547814756428908006

namespace A240068

/-- `4*(A129069(n+1)-1)` -/
def P4547814756428908006.Spec : Prop :=
  ∀ n, P4547814756428908006.a n = A240068 (n + 1)

theorem P4547814756428908006.correct : P4547814756428908006.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P4547814756428908006.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A129069, A129069.P1730810587281407252.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P2756034587419689051

`4*(A037168(n+1)+4)`
-/

namespace A240068.P2756034587419689051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A037168 (n + 1) + 4)

end

end A240068.P2756034587419689051

namespace A240068

/-- `4*(A037168(n+1)+4)` -/
def P2756034587419689051.Spec : Prop :=
  ∀ n, P2756034587419689051.a n = A240068 (n + 1)

theorem P2756034587419689051.correct : P2756034587419689051.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P2756034587419689051.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A037168, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P18195984234405419072

`4*(A131426(n+1)+5)`
-/

namespace A240068.P18195984234405419072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A131426 (n + 1) + 5)

end

end A240068.P18195984234405419072

namespace A240068

/-- `4*(A131426(n+1)+5)` -/
def P18195984234405419072.Spec : Prop :=
  ∀ n, P18195984234405419072.a n = A240068 (n + 1)

theorem P18195984234405419072.correct : P18195984234405419072.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P18195984234405419072.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A131426, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P11836161341109680770

`8*(A040976(n+1)+3)`
-/

namespace A240068.P11836161341109680770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A040976 (n + 1) + 3)

end

end A240068.P11836161341109680770

namespace A240068

/-- `8*(A040976(n+1)+3)` -/
def P11836161341109680770.Spec : Prop :=
  ∀ n, P11836161341109680770.a n = A240068 (n + 1)

theorem P11836161341109680770.correct : P11836161341109680770.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P11836161341109680770.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P5943741124589649300

`A055669(n+1)/A122553(n)`
-/

namespace A240068.P5943741124589649300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055669 (n + 1) : ℚ) / (A122553 n : ℚ)

end

end A240068.P5943741124589649300

namespace A240068

/-- `A055669(n+1)/A122553(n)` -/
def P5943741124589649300.Spec : Prop :=
  ∀ n, P5943741124589649300.a n = (A240068 (n + 1) : ℚ)

end A240068

/-! ## A240068.P1169754916876483758

`A129073(n+1)+A000040(n+1)`
-/

namespace A240068.P1169754916876483758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) + A000040 (n + 1)

end

end A240068.P1169754916876483758

namespace A240068

/-- `A129073(n+1)+A000040(n+1)` -/
def P1169754916876483758.Spec : Prop :=
  ∀ n, P1169754916876483758.a n = A240068 (n + 1)

theorem P1169754916876483758.correct : P1169754916876483758.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P1169754916876483758.a, A240068.P6814075163463490224.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A129073, A129073.P9510338880644237870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P3681470855909297454

`A129071(n+1)+A072055(n+1)`
-/

namespace A240068.P3681470855909297454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) + A072055 (n + 1)

end

end A240068.P3681470855909297454

namespace A240068

/-- `A129071(n+1)+A072055(n+1)` -/
def P3681470855909297454.Spec : Prop :=
  ∀ n, P3681470855909297454.a n = A240068 (n + 1)

theorem P3681470855909297454.correct : P3681470855909297454.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P3681470855909297454.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P8252801676711237860.a, A129071, A129071.P12117128813833994904.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P1655286666989006721

`A272470(n+1)+A175224(n+1)`
-/

namespace A240068.P1655286666989006721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) + A175224 (n + 1)

end

end A240068.P1655286666989006721

namespace A240068

/-- `A272470(n+1)+A175224(n+1)` -/
def P1655286666989006721.Spec : Prop :=
  ∀ n, P1655286666989006721.a n = A240068 (n + 1)

theorem P1655286666989006721.correct : P1655286666989006721.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P1655286666989006721.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A175224, A175224.P1386793928636688251.a, A272470, A272470.P18354335613044509669.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-! ## A240068.P17705693260686733728

`A129072(n+1)-A129070(n+1)`
-/

namespace A240068.P17705693260686733728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129072 (n + 1) - A129070 (n + 1)

end

end A240068.P17705693260686733728

namespace A240068

/-- `A129072(n+1)-A129070(n+1)` -/
def P17705693260686733728.Spec : Prop :=
  ∀ n, P17705693260686733728.a n = A240068 (n + 1)

theorem P17705693260686733728.correct : P17705693260686733728.Spec := by
  intro n
  simp only [A240068, Nat.add_sub_cancel, A240068.P17705693260686733728.a, A240068.P6814075163463490224.a, A008864, A008864.P9177617808325052279.a, A129070, A129070.P1599856947045960151.a, A129072, A129072.P1710607417791433833.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240068

/-!
# A240069: The number n^k has all 10 decimal digits starting at k = a(n), or a(n) = 0 if 10 digits are not possible.

The programs for A240069, there is no canonical definition to state claims against.
-/

/-! ## A240069.P7261019070475498285

`A326178(A062518(n+1))`
-/

namespace A240069.P7261019070475498285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A062518 (n + 1)).toNat

end

end A240069.P7261019070475498285

/-! ## A240069.P659365498521615075

`A087156(A062518(n+1)+1)`
-/

namespace A240069.P659365498521615075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A062518 (n + 1) + 1).toNat

end

end A240069.P659365498521615075

/-! ## A240069.P6425623546279348435

`A184985(A062518(n+1)+1)`
-/

namespace A240069.P6425623546279348435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A062518 (n + 1) + 1).toNat

end

end A240069.P6425623546279348435

/-! ## A240069.P13616678899082315644

`∑{d}[A062518(n+1), A225530(#)]`
-/

namespace A240069.P13616678899082315644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A225530 d

end

end A240069.P13616678899082315644

/-! ## A240069.P6178968834985343059

`floor(A062518(n+1)+atan(A090493(n+1)))`
-/

namespace A240069.P6178968834985343059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062518 (n + 1) : ℝ) + Real.arctan (A090493 (n + 1) : ℝ)⌋

end

end A240069.P6178968834985343059

/-! ## A240069.P10084814668457846913

`∑{d}[A131738(A062518(n+1)), A000010(#)]`
-/

namespace A240069.P10084814668457846913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A062518 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A240069.P10084814668457846913

/-! ## A240069.P6940418378682990451

`lcm(A000040(n+1)%2, A131738(A062518(n+1)))`
-/

namespace A240069.P6940418378682990451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000040 (n + 1)) 2) (A131738 (A062518 (n + 1)).toNat)

end

end A240069.P6940418378682990451

/-! ## A240069.P8962575338975054017

`gcd(A008683(12*n+8), A131738(A062518(n+1)))`
-/

namespace A240069.P8962575338975054017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (12 * n + 8)) (A131738 (A062518 (n + 1)).toNat)

end

end A240069.P8962575338975054017

/-! ## A240069.P6499220322414793708

`floor(A062518(n+1)+atan(A320572(n+1)))`
-/

namespace A240069.P6499220322414793708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062518 (n + 1) : ℝ) + Real.arctan (A320572 (n + 1) : ℝ)⌋

end

end A240069.P6499220322414793708

/-!
# A240071: Irregular triangle of the simple continued fraction of sqrt(n).

The programs for A240071, there is no canonical definition to state claims against.
-/

/-! ## A240071.P14169451344526872937

`A000010(A001222(A259962(2*(n+3))+4))`
-/

namespace A240071.P14169451344526872937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001222 (A259962 (2 * (n + 3)) + 4).toNat).toNat

end

end A240071.P14169451344526872937

/-!
# A240072: Least number k with continued fraction of sqrt(k) having periodic part of length 2*n.

The programs for A240072, there is no canonical definition to state claims against.
-/

/-! ## A240072.P7035888271516526077

`A013646(2*(n+1))`
-/

namespace A240072.P7035888271516526077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * (n + 1))

end

end A240072.P7035888271516526077

/-! ## A240072.P13450449141296813615

`A013646(n+2+n)%A079704(n+1)`
-/

namespace A240072.P13450449141296813615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013646 (n + 2 + n)) (A079704 (n + 1))

end

end A240072.P13450449141296813615

/-! ## A240072.P13282749132610694978

`A013646(A103517(n))+A000007(n)`
-/

namespace A240072.P13282749132610694978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A103517 n).toNat + A000007 n

end

end A240072.P13282749132610694978

/-! ## A240072.P1502695732061035810

`A013646(A163300(n+1))+A000038(n)`
-/

namespace A240072.P1502695732061035810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A163300 (n + 1)).toNat + A000038 n

end

end A240072.P1502695732061035810

/-! ## A240072.P17838426203287899436

`lcm(A013646(A005408(n)+1), A020985(n))`
-/

namespace A240072.P17838426203287899436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013646 (A005408 n + 1).toNat) (A020985 n)

end

end A240072.P17838426203287899436

/-! ## A240072.P10776114932649667168

`A013646(n+2+n)/A008615((-1)^A007318(n)+5)`
-/

namespace A240072.P10776114932649667168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013646 (n + 2 + n) : ℚ) / (A008615 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ) + 5)).toNat : ℚ)

end

end A240072.P10776114932649667168

/-! ## A240072.P12294480684022522744

`A013646(A103517(n))+A010052(A005180(n+1))`
-/

namespace A240072.P12294480684022522744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A103517 n).toNat + A010052 (A005180 (n + 1)).toNat

end

end A240072.P12294480684022522744

/-! ## A240072.P8641662171217446594

`A013646(A103517(n))+A010052(A006530(n+1))`
-/

namespace A240072.P8641662171217446594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A103517 n).toNat + A010052 (A006530 (n + 1)).toNat

end

end A240072.P8641662171217446594

/-! ## A240072.P10255076016851382760

`filter[A013646(2*n), A368625(#)]`
-/

namespace A240072.P10255076016851382760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368625 (f1 j).toNat = 1) n)

end

end A240072.P10255076016851382760

/-! ## A240072.P5368682203185658128

`filter[A013646(2*n), A014306(#)]`
-/

namespace A240072.P5368682203185658128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A240072.P5368682203185658128

/-! ## A240072.P6659937462745948874

`filter[A013646(2*n), A049240(#)]`
-/

namespace A240072.P6659937462745948874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A240072.P6659937462745948874

/-! ## A240072.P3234406899832393368

`filter[A013646(2*n), A295309(#)]`
-/

namespace A240072.P3234406899832393368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A240072.P3234406899832393368

/-! ## A240072.P7102091602007347174

`filter[A013646(2*n), A343219(#)]`
-/

namespace A240072.P7102091602007347174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A240072.P7102091602007347174

/-! ## A240072.P11859599045489949667

`filter[A013646(2*n), A347523(#)]`
-/

namespace A240072.P11859599045489949667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A240072.P11859599045489949667

/-! ## A240072.P3468102726183827845

`filter[A013646(2*n), A354807(#)]`
-/

namespace A240072.P3468102726183827845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A240072.P3468102726183827845

/-! ## A240072.P11432448030697603527

`A013646(A103517(n))+A010052(A013646(n))`
-/

namespace A240072.P11432448030697603527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A103517 n).toNat + A010052 (A013646 n).toNat

end

end A240072.P11432448030697603527

/-! ## A240072.P9078844791597289899

`A267635(n²)+A013646(A103517(n))`
-/

namespace A240072.P9078844791597289899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (n ^ 2) + A013646 (A103517 n).toNat

end

end A240072.P9078844791597289899

/-!
# A240074: Index of the first superabundant number k having abundance >= n.

The programs for A240074, there is no canonical definition to state claims against.
-/

/-! ## A240074.P8339442581437331583

`A285304(floor(sqrt(A126375(n))))`
-/

namespace A240074.P8339442581437331583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (Int.sqrt (A126375 n)).toNat

end

end A240074.P8339442581437331583

/-! ## A240074.P9311119289504621004

`∑[A333227(∑[A306665(n+1)])]`
-/

namespace A240074.P9311119289504621004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306665 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240074.P9311119289504621004

/-!
# A240075: Lexicographically earliest nonnegative increasing sequence such that no four terms have constant second differences.

The programs for A240075, there is no canonical definition to state claims against.
-/

/-! ## A240075.P9856623755204680393

`A240555(n+1)-1`
-/

namespace A240075.P9856623755204680393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240555 (n + 1) - 1

end

end A240075.P9856623755204680393

/-! ## A240075.P13457045668537429307

`A260196(2*(n+1))+A240555(n+1)`
-/

namespace A240075.P13457045668537429307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 1)) + A240555 (n + 1)

end

end A240075.P13457045668537429307

/-! ## A240075.P11270631592693552819

`abs(A240555(n+1)+A153881(2*n+5))`
-/

namespace A240075.P11270631592693552819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240555 (n + 1) + A153881 (2 * n + 5)|

end

end A240075.P11270631592693552819

/-! ## A240075.P9285783354226437497

`A326410(A000040(n+1))+A240555(n+1)`
-/

namespace A240075.P9285783354226437497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326410 (A000040 (n + 1)).toNat + A240555 (n + 1)

end

end A240075.P9285783354226437497

/-! ## A240075.P15866280268299204538

`A346242(A241659(n+1))+A240555(n+1)`
-/

namespace A240075.P15866280268299204538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A241659 (n + 1)).toNat + A240555 (n + 1)

end

end A240075.P15866280268299204538

/-! ## A240075.P3245025990807463173

`A346242(A309587(n+1))+A240555(n+1)`
-/

namespace A240075.P3245025990807463173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A309587 (n + 1)).toNat + A240555 (n + 1)

end

end A240075.P3245025990807463173

/-! ## A240075.P15455770273210081541

`A318657(A106856(n+3))+A240555(n+1)`
-/

namespace A240075.P15455770273210081541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A106856 (n + 3)).toNat + A240555 (n + 1)

end

end A240075.P15455770273210081541

/-! ## A240075.P13340184169039224342

`abs(A260196(A059404(n+1))+A240555(n+1))`
-/

namespace A240075.P13340184169039224342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A059404 (n + 1)).toNat + A240555 (n + 1)|

end

end A240075.P13340184169039224342

/-! ## A240075.P8283586035541645740

`abs(A260196(A000203(n+3))+A240555(n+1))`
-/

namespace A240075.P8283586035541645740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A000203 (n + 3)).toNat + A240555 (n + 1)|

end

end A240075.P8283586035541645740

/-! ## A240075.P10876991177817682785

`abs(A260196(A290843(n+1))+A240555(n+1))`
-/

namespace A240075.P10876991177817682785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A290843 (n + 1)).toNat + A240555 (n + 1)|

end

end A240075.P10876991177817682785

/-! ## A240075.P16852530280667031106

`A359169(A092101(n+1))+A240555(n+1)`
-/

namespace A240075.P16852530280667031106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359169 (A092101 (n + 1)).toNat + A240555 (n + 1)

end

end A240075.P16852530280667031106

/-! ## A240075.P4365657408855165240

`abs(A260196(A065906(n+1))+A240555(n+1))`
-/

namespace A240075.P4365657408855165240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A065906 (n + 1)).toNat + A240555 (n + 1)|

end

end A240075.P4365657408855165240

/-! ## A240075.P13822597971101597215

`A023443(A240555(n+1))`
-/

namespace A240075.P13822597971101597215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A240555 (n + 1)).toNat

end

end A240075.P13822597971101597215

/-! ## A240075.P11782990765792538496

`A023447(A240555(n+1)+4)`
-/

namespace A240075.P11782990765792538496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A240555 (n + 1) + 4).toNat

end

end A240075.P11782990765792538496

/-!
# A240076: Number of partitions of n such that m(greatest part) < m(1), where m = multiplicity.

The programs for A240076, there is no canonical definition to state claims against.
-/

/-! ## A240076.P4195976648870402528

`A240077(abs(1-n))-1`
-/

namespace A240076.P4195976648870402528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240077 |1 - (n : ℤ)|.toNat - 1

end

end A240076.P4195976648870402528

/-! ## A240076.P11830086383035004692

`∑[A240078(abs(1-n))-1]`
-/

namespace A240076.P11830086383035004692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240078 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240076.P11830086383035004692

/-! ## A240076.P12845765881570295134

`A000041(n)-A240080(n)`
-/

namespace A240076.P12845765881570295134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240080 n

end

end A240076.P12845765881570295134

/-! ## A240076.P7655153966513947380

`A213598(n)-A240080(n)`
-/

namespace A240076.P7655153966513947380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240080 n

end

end A240076.P7655153966513947380

/-! ## A240076.P6953635024424040438

`sqrt(A001255(n))-A240080(n)`
-/

namespace A240076.P6953635024424040438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240080 n : ℝ)

end

end A240076.P6953635024424040438

/-!
# A240077: Number of partitions of n such that m(greatest part) <= m(1), where m = multiplicity.

The programs for A240077, there is no canonical definition to state claims against.
-/

/-! ## A240077.P12401346675143830542

`A240076(n)+A240078(n)`
-/

namespace A240077.P12401346675143830542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240076 n + A240078 n

end

end A240077.P12401346675143830542

/-! ## A240077.P12000201975833876899

`A240076(n+1)+1`
-/

namespace A240077.P12000201975833876899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240076 (n + 1) + 1

end

end A240077.P12000201975833876899

/-! ## A240077.P1925161411297239934

`Δ[A058884(n)]+n%2`
-/

namespace A240077.P1925161411297239934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n % 2 : ℕ) : ℤ)

end

end A240077.P1925161411297239934

/-! ## A240077.P13386115573054100970

`∑[A240078(n)+A057428(n)]`
-/

namespace A240077.P13386115573054100970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240078 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240077.P13386115573054100970

/-! ## A240077.P15803673043598853277

`A000035(n)+Δ[A058884(n)]`
-/

namespace A240077.P15803673043598853277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n)

end

end A240077.P15803673043598853277

/-!
# A240078: Number of partitions of n such that m(greatest part) = m(1), where m = multiplicity.

The programs for A240078, there is no canonical definition to state claims against.
-/

/-! ## A240078.P1995256433256214017

`2*A002865(n)-floor(cos(2)^n)-A117995(n+1)`
-/

namespace A240078.P1995256433256214017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002865 n - ⌊Real.cos (2 : ℝ) ^ n⌋ - A117995 (n + 1)

end

end A240078.P1995256433256214017

/-! ## A240078.P9735229993211948800

`2*A002865(n)-floor(cos(2)^n)-(A117298(n+1)-1)`
-/

namespace A240078.P9735229993211948800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002865 n - ⌊Real.cos (2 : ℝ) ^ n⌋ - (A117298 (n + 1) - 1)

end

end A240078.P9735229993211948800

/-! ## A240078.P1999278484060434477

`A232697(n)-Δ[A212551(A128918(n))]`
-/

namespace A240078.P1999278484060434477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A128918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - (f1 (n + 1) - f1 n)

end

end A240078.P1999278484060434477

/-! ## A240078.P1218681936426594094

`A232697(n)+Δ[A040001(n)-A232697(n)]`
-/

namespace A240078.P1218681936426594094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n + (f1 (n + 1) - f1 n)

end

end A240078.P1218681936426594094

/-! ## A240078.P6691608181531138150

`2*A232697(n)-A040001(n)-Δ[A058984(n)]`
-/

namespace A240078.P6691608181531138150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232697 n - A040001 n - (f1 (n + 1) - f1 n)

end

end A240078.P6691608181531138150

/-! ## A240078.P6604124098804950765

`Δ[A133041(n)-(2*A232697(n)-A040001(n))]`
-/

namespace A240078.P6604124098804950765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (2 * A232697 n - A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240078.P6604124098804950765

/-! ## A240078.P17891767731860165171

`2*A232697(n)-A040001(n)-A117995(n+1)`
-/

namespace A240078.P17891767731860165171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232697 n - A040001 n - A117995 (n + 1)

end

end A240078.P17891767731860165171

/-! ## A240078.P7692833472247673807

`A117995(A028310(n))+A232697(n)-A117995(n+1)`
-/

namespace A240078.P7692833472247673807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (A028310 n).toNat + (A232697 n - A117995 (n + 1))

end

end A240078.P7692833472247673807

/-! ## A240078.P17532808127958973682

`2*A232697(n)-A040001(n)-(A002865(n+1)-A000035(n))`
-/

namespace A240078.P17532808127958973682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232697 n - A040001 n - (A002865 (n + 1) - A000035 n)

end

end A240078.P17532808127958973682

/-!
# A240079: Number of partitions p of n such that mean(p) >= multiplicity(min(p)).

The programs for A240079, there is no canonical definition to state claims against.
-/

/-! ## A240079.P16644400453558950419

`A240206(n)+A240205(n)`
-/

namespace A240079.P16644400453558950419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240206 n + A240205 n

end

end A240079.P16644400453558950419

/-! ## A240079.P14232086728258292712

`A052810(n)-(A240203(n)+1)`
-/

namespace A240079.P14232086728258292712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240203 n + 1)

end

end A240079.P14232086728258292712

/-! ## A240079.P16671641805090213567

`record[A035377(n+1)]-A240203(n)`
-/

namespace A240079.P16671641805090213567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240203 n

end

end A240079.P16671641805090213567

/-! ## A240079.P12600858715458647345

`(A000041(n)-A240203(n))%(2^n)`
-/

namespace A240079.P12600858715458647345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n - A240203 n) (2 ^ n : ℤ)

end

end A240079.P12600858715458647345

/-! ## A240079.P17978623037282990112

`A240204(n)+A240206(n)-A240203(n)`
-/

namespace A240079.P17978623037282990112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240204 n + (A240206 n - A240203 n)

end

end A240079.P17978623037282990112

/-!
# A240080: Number of partitions of n such that m(greatest part) >= m(1), where m = multiplicity.

The programs for A240080, there is no canonical definition to state claims against.
-/

/-! ## A240080.P8038236325230983855

`A240078(n)+A117995(n+1)`
-/

namespace A240080.P8038236325230983855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240078 n + A117995 (n + 1)

end

end A240080.P8038236325230983855

/-! ## A240080.P12886228080858866908

`2*A002865(n)-floor(cos(2)^n)`
-/

namespace A240080.P12886228080858866908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002865 n - ⌊Real.cos (2 : ℝ) ^ n⌋

end

end A240080.P12886228080858866908

/-! ## A240080.P7226437119640210674

`A240078(n)+Δ[A058984(n)]`
-/

namespace A240080.P7226437119640210674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240078 n + (f1 (n + 1) - f1 n)

end

end A240080.P7226437119640210674

/-! ## A240080.P5989818759191939573

`2*A232697(n)-A040001(n)`
-/

namespace A240080.P5989818759191939573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232697 n - A040001 n

end

end A240080.P5989818759191939573

/-! ## A240080.P17135893304551778627

`A117298(n+1)+A240078(n)-1`
-/

namespace A240080.P17135893304551778627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (n + 1) + (A240078 n - 1)

end

end A240080.P17135893304551778627

/-! ## A240080.P17817851907830662178

`A232697(n)+A117995(A028310(n))`
-/

namespace A240080.P17817851907830662178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n + A117995 (A028310 n).toNat

end

end A240080.P17817851907830662178

/-! ## A240080.P5820295621432280732

`A232697(n)+A212551(A128918(n))`
-/

namespace A240080.P5820295621432280732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n + A212551 (A128918 n).toNat

end

end A240080.P5820295621432280732

/-! ## A240080.P2242478243808751127

`A240078(n)+A000041(n+1)-(and(1, n)+A000041(n))`
-/

namespace A240080.P2242478243808751127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240078 n + (A000041 (n + 1) - ((Nat.land 1 n : ℤ) + A000041 n))

end

end A240080.P2242478243808751127

/-!
# A240082: Numbers m such that k^m - (k-1)^m - ... - 3^m - 2^m - 1 is prime for some k.

The programs for A240082, there is no canonical definition to state claims against.
-/

/-! ## A240082.P8323701218783804858

`lt[0, A240081(n+1)]+1`
-/

namespace A240082.P8323701218783804858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240082.P8323701218783804858

/-! ## A240082.P5376213893376422462

`eq[0, A333964(A240081(n+1)+1)%4]+1`
-/

namespace A240082.P5376213893376422462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333964 (A240081 (n + 1) + 1).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240082.P5376213893376422462

/-! ## A240082.P12337962276300616604

`eq[A024160(n+1), A182270(A024164(3*(n+1)))]`
-/

namespace A240082.P12337962276300616604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 (A024164 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240082.P12337962276300616604

/-!
# A240083: Numbers m such that k^m - (k-1)^m - ... - 3^m - 2^m is prime for some k.

The programs for A240083, there is no canonical definition to state claims against.
-/

/-! ## A240083.P7046275254824240443

`lt[0, A239472(n+1)]+1`
-/

namespace A240083.P7046275254824240443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240083.P7046275254824240443

/-!
# A240084: Primes p such that p^4-p^3-p^2-p-1 is prime.

The programs for A240084, there is no canonical definition to state claims against.
-/

/-! ## A240084.P9277230276809751666

`p?[A173179(n+1)]`
-/

namespace A240084.P9277230276809751666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240084.P9277230276809751666

/-! ## A240084.P5106908555975332193

`∩[A040028(n+1), A173179(n+1)]`
-/

namespace A240084.P5106908555975332193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P5106908555975332193

/-! ## A240084.P4973237053365135643

`∩[A040036(n+1), A173179(n+1)]`
-/

namespace A240084.P4973237053365135643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P4973237053365135643

/-! ## A240084.P1590073166650987678

`∩[A040044(n+1), A173179(n+1)]`
-/

namespace A240084.P1590073166650987678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P1590073166650987678

/-! ## A240084.P17527927623150726769

`∩[A040046(n+1), A173179(n+1)]`
-/

namespace A240084.P17527927623150726769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P17527927623150726769

/-! ## A240084.P10978697033079576001

`∩[A040049(n+1), A173179(n+1)]`
-/

namespace A240084.P10978697033079576001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P10978697033079576001

/-! ## A240084.P10307995789269996102

`∩[A040054(n+1), A173179(n+1)]`
-/

namespace A240084.P10307995789269996102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P10307995789269996102

/-! ## A240084.P18261942115681148937

`∩[A040060(n+1), A173179(n+1)]`
-/

namespace A240084.P18261942115681148937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P18261942115681148937

/-! ## A240084.P220018572899631749

`∩[A040062(n+1), A173179(n+1)]`
-/

namespace A240084.P220018572899631749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P220018572899631749

/-! ## A240084.P4312146245627705426

`∩[A040065(n+1), A173179(n+1)]`
-/

namespace A240084.P4312146245627705426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P4312146245627705426

/-! ## A240084.P5751004606582918082

`∩[A040078(n+1), A173179(n+1)]`
-/

namespace A240084.P5751004606582918082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P5751004606582918082

/-! ## A240084.P16625766789660506548

`∩[A040083(n+1), A173179(n+1)]`
-/

namespace A240084.P16625766789660506548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P16625766789660506548

/-! ## A240084.P1588983094657450253

`∩[A040085(n+1), A173179(n+1)]`
-/

namespace A240084.P1588983094657450253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P1588983094657450253

/-! ## A240084.P4638398101403584110

`∩[A040087(n+1), A173179(n+1)]`
-/

namespace A240084.P4638398101403584110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P4638398101403584110

/-! ## A240084.P13078734877064231615

`∩[A040089(n+1), A173179(n+1)]`
-/

namespace A240084.P13078734877064231615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P13078734877064231615

/-! ## A240084.P9628598697118251529

`∩[A040095(n+1), A173179(n+1)]`
-/

namespace A240084.P9628598697118251529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P9628598697118251529

/-! ## A240084.P8579003473592292085

`∩[A045309(n+1), A173179(n+1)]`
-/

namespace A240084.P8579003473592292085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P8579003473592292085

/-! ## A240084.P3393986226902917312

`∩[A049596(n+1), A173179(n+1)]`
-/

namespace A240084.P3393986226902917312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P3393986226902917312

/-! ## A240084.P11651764028497895231

`∩[A045320(n+1), A173179(n+1)]`
-/

namespace A240084.P11651764028497895231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P11651764028497895231

/-! ## A240084.P13106308517471692330

`∩[A025584(n+1), A173179(n+1)]`
-/

namespace A240084.P13106308517471692330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240084.P13106308517471692330

/-!
# A240085: Number of compositions of n in which no part is unique (every part appears at least twice).

The programs for A240085, there is no canonical definition to state claims against.
-/

/-! ## A240085.P419772690237436432

`A011782(n)-A242451(∑[n]+1)`
-/

namespace A240085.P419772690237436432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A242451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240085.P419772690237436432

/-! ## A240085.P2353891627458586982

`Δ[A056469(n)]-A242451(A000124(n))`
-/

namespace A240085.P2353891627458586982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A242451 (A000124 n).toNat

end

end A240085.P2353891627458586982

/-! ## A240085.P11030945856854655717

`∑[A034008(n)]-A242451(A342939(n+1))`
-/

namespace A240085.P11030945856854655717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A242451 (A342939 (n + 1)).toNat

end

end A240085.P11030945856854655717

/-! ## A240085.P14064931009232304350

`A000010(A000079(n))-A242451(∑[n]+1)`
-/

namespace A240085.P14064931009232304350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A242451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240085.P14064931009232304350

/-!
# A240086: a(n) = Sum_{prime p|n} phi(gcd(p, n/p)) where phi is Euler's totient function.

The programs for A240086, the canonical program `A240086.P8018606740492469687` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240086 has offset 1).

The definition of A240086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240086.P11979171350034787654

`∑{p}[n+1, A000010(gcd(#, (n+1)/#))]`
-/

namespace A240086.P11979171350034787654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))))

end

end A240086.P11979171350034787654

namespace A240086

/-- `∑{p}[n+1, A000010(gcd(#, (n+1)/#))]` -/
def P11979171350034787654.Spec : Prop :=
  ∀ n, P11979171350034787654.a n = A240086 (n + 1)

end A240086

/-! ## A240086.P8944330928505374437

`A345266(n+1)-A056170(n+1)`
-/

namespace A240086.P8944330928505374437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345266 (n + 1) - A056170 (n + 1)

end

end A240086.P8944330928505374437

namespace A240086

/-- `A345266(n+1)-A056170(n+1)` -/
def P8944330928505374437.Spec : Prop :=
  ∀ n, P8944330928505374437.a n = A240086 (n + 1)

end A240086

/-! ## A240086.P8018606740492469687

`A056169(n+1)+A055631(A085731(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A240086

/-- `A056169(n+1)+A055631(A085731(n+1))` -/
def P8018606740492469687.Spec : Prop :=
  ∀ n, P8018606740492469687.a n = A240086 (n + 1)

theorem P8018606740492469687.correct : P8018606740492469687.Spec := by
  intro n
  simp only [A240086, Nat.add_sub_cancel]

end A240086

/-! ## A240086.P4718638996828806223

`A056169(n+1)+A063958(n+1)-A056170(n+1)`
-/

namespace A240086.P4718638996828806223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + (A063958 (n + 1) - A056170 (n + 1))

end

end A240086.P4718638996828806223

namespace A240086

/-- `A056169(n+1)+A063958(n+1)-A056170(n+1)` -/
def P4718638996828806223.Spec : Prop :=
  ∀ n, P4718638996828806223.a n = A240086 (n + 1)

end A240086

/-! ## A240086.P15391623931239443653

`A056169(n+1)+A345266(n+1)-A001221(n+1)`
-/

namespace A240086.P15391623931239443653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + (A345266 (n + 1) - A001221 (n + 1))

end

end A240086.P15391623931239443653

namespace A240086

/-- `A056169(n+1)+A345266(n+1)-A001221(n+1)` -/
def P15391623931239443653.Spec : Prop :=
  ∀ n, P15391623931239443653.a n = A240086 (n + 1)

end A240086

/-!
# A240089: Number of partitions of n having integer root mean square.

The programs for A240089, there is no canonical definition to state claims against.
-/

/-! ## A240089.P12151017484442380510

`A395159(A095343(n+1))+A322390(n+1)`
-/

namespace A240089.P12151017484442380510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395159 (A095343 (n + 1)).toNat + A322390 (n + 1)

end

end A240089.P12151017484442380510

/-! ## A240089.P13485037530182958700

`A333382(A267667(n+1))+A300247(n+1)`
-/

namespace A240089.P13485037530182958700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A267667 (n + 1)).toNat + A300247 (n + 1)

end

end A240089.P13485037530182958700

/-! ## A240089.P4990833189459211278

`A322390(n+1)+A118914(A001248(n+3))`
-/

namespace A240089.P4990833189459211278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (n + 1) + A118914 (A001248 (n + 3)).toNat

end

end A240089.P4990833189459211278

/-! ## A240089.P1185175378262130480

`A322390(n+1)+A005361(A135530(3*n)+1)`
-/

namespace A240089.P1185175378262130480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (n + 1) + A005361 (A135530 (3 * n) + 1).toNat

end

end A240089.P1185175378262130480

/-! ## A240089.P11775272596271064803

`A353382(2*n+3)+A082343(A225546(n+1))`
-/

namespace A240089.P11775272596271064803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353382 (2 * n + 3) + A082343 (A225546 (n + 1)).toNat

end

end A240089.P11775272596271064803

/-!
# A240091: 

The programs for A240091, there is no canonical definition to state claims against.
-/

/-! ## A240091.P7651985808036217440

`(10^n-1)^n`
-/

namespace A240091.P7651985808036217440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) ^ n

end

end A240091.P7651985808036217440

/-! ## A240091.P2136691686531658569

`or(1, A002283(n)^n)`
-/

namespace A240091.P2136691686531658569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002283 n ^ n)

end

end A240091.P2136691686531658569

/-! ## A240091.P17432844626636316560

`3^n*A002277(n)^n`
-/

namespace A240091.P17432844626636316560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002277 n ^ n

end

end A240091.P17432844626636316560

/-! ## A240091.P8894891633722881879

`9^n*A002275(n)^n`
-/

namespace A240091.P8894891633722881879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A002275 n ^ n

end

end A240091.P8894891633722881879

/-! ## A240091.P16226415103103519882

`abs((-floor(sqrt(A169601(n))))^n)`
-/

namespace A240091.P16226415103103519882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-Int.sqrt (A169601 n)) ^ n|

end

end A240091.P16226415103103519882

/-!
# A240092: Sequence of numbers starting at 1 and giving a new maximum record for sigma(n) modulo n (A054024), where sigma(n) is the sum of divisors of n (A000203).

The programs for A240092, there is no canonical definition to state claims against.
-/

/-! ## A240092.P4593894025199271659

`record[gcd(A025905(n), A237120(2*n))]`
-/

namespace A240092.P4593894025199271659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025905 n) (A237120 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240092.P4593894025199271659

/-! ## A240092.P14762546939006147674

`record[and(A160163(n+1), A188048(n))]`
-/

namespace A240092.P14762546939006147674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160163 (n + 1)) (A188048 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240092.P14762546939006147674

/-! ## A240092.P11591196520690170460

`lt[A000203(A005117(n+1)), A014458(n)]`
-/

namespace A240092.P11591196520690170460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240092.P11591196520690170460

/-! ## A240092.P18220574615045506049

`eq[A341809(n), A366750(n)]`
-/

namespace A240092.P18220574615045506049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341809 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240092.P18220574615045506049

/-! ## A240092.P7281394585291331731

`eq[A366750(n), A394261(n)]`
-/

namespace A240092.P7281394585291331731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240092.P7281394585291331731

/-!
# A240098: Product of the greatest common divisors of n and k! over k=0..n-1.

The programs for A240098, there is no canonical definition to state claims against.
-/

/-! ## A240098.P1174241439961957775

`(n+1)^(n+1)/A058067(n+1)`
-/

namespace A240098.P1174241439961957775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (A058067 (n + 1) : ℚ)

end

end A240098.P1174241439961957775

/-! ## A240098.P15652087190150113953

`A327939(A048671(n+1)^A154443(n))`
-/

namespace A240098.P15652087190150113953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (SequenceMachineLib.roundAway ((A048671 (n + 1) : ℚ) ^ (A154443 n : ℤ))).toNat

end

end A240098.P15652087190150113953

/-! ## A240098.P1146565940256617570

`A327939(A048671(n+1)^A175298(n))`
-/

namespace A240098.P1146565940256617570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (SequenceMachineLib.roundAway ((A048671 (n + 1) : ℚ) ^ (A175298 n : ℤ))).toNat

end

end A240098.P1146565940256617570

/-! ## A240098.P1606660760240372588

`A327939(A048671(n+1)^A222254(n))`
-/

namespace A240098.P1606660760240372588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (SequenceMachineLib.roundAway ((A048671 (n + 1) : ℚ) ^ (A222254 n : ℤ))).toNat

end

end A240098.P1606660760240372588

/-! ## A240098.P5695884521884957970

`A327939(A019554(n+1)^A283106(n))`
-/

namespace A240098.P5695884521884957970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) ^ (A283106 n : ℤ))).toNat

end

end A240098.P5695884521884957970

