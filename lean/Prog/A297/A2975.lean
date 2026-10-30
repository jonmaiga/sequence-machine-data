import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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

/-!
# A297500: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1's.

The programs for A297500, there is no canonical definition to state claims against.
-/

/-! ## A297500.P10986342320322925118

`A297506(∑[4*n]+1)`
-/

namespace A297500.P10986342320322925118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297500.P10986342320322925118

/-! ## A297500.P8646488856107674003

`gcd(A000038(n), A297506(A001844(n)))`
-/

namespace A297500.P8646488856107674003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297506 (A001844 n).toNat)

end

end A297500.P8646488856107674003

/-! ## A297500.P9646201406538116973

`A297506(A001844(n))^A000041(gcd(n, n+1))`
-/

namespace A297500.P9646201406538116973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297506 (A001844 n).toNat : ℚ) ^ (A000041 (Nat.gcd n (n + 1)) : ℤ)

end

end A297500.P9646201406538116973

/-! ## A297500.P7918509686275885587

`A297506(A001844(n))^A007318(A007318(n))`
-/

namespace A297500.P7918509686275885587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297506 (A001844 n).toNat : ℚ) ^ (A007318 (A007318 n).toNat : ℤ)

end

end A297500.P7918509686275885587

/-! ## A297500.P12472805382904269235

`A297506(A001844(n))^A014963(6*A006530(n+2))`
-/

namespace A297500.P12472805382904269235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297506 (A001844 n).toNat : ℚ) ^ (A014963 (6 * A006530 (n + 2)).toNat : ℤ)

end

end A297500.P12472805382904269235

/-!
# A297501: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297501, there is no canonical definition to state claims against.
-/

/-! ## A297501.P11238807046000972692

`A297506(∑[n+3]+1)`
-/

namespace A297501.P11238807046000972692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297501.P11238807046000972692

/-!
# A297502: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297502, there is no canonical definition to state claims against.
-/

/-! ## A297502.P3073524433809423355

`A297506(A141214(n+1))`
-/

namespace A297502.P3073524433809423355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A141214 (n + 1)).toNat

end

end A297502.P3073524433809423355

/-! ## A297502.P9577429737901848146

`A297506(A027379(n+2))`
-/

namespace A297502.P9577429737901848146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A027379 (n + 2)).toNat

end

end A297502.P9577429737901848146

/-! ## A297502.P13552024216057503889

`A297506(A055998(n+2))`
-/

namespace A297502.P13552024216057503889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A055998 (n + 2)).toNat

end

end A297502.P13552024216057503889

/-! ## A297502.P4853637431145752896

`A297506(A056000(n)+7)`
-/

namespace A297502.P4853637431145752896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A056000 n + 7).toNat

end

end A297502.P4853637431145752896

/-! ## A297502.P5525567869081568039

`A297506(A052905(n+1)+2)`
-/

namespace A297502.P5525567869081568039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A052905 (n + 1) + 2).toNat

end

end A297502.P5525567869081568039

/-!
# A297503: Number of n X 5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1's.

The programs for A297503, there is no canonical definition to state claims against.
-/

/-! ## A297503.P14966165951389987450

`A297506(Δ[A264443(n)])`
-/

namespace A297503.P14966165951389987450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (f1 (n + 1) - f1 n).toNat

end

end A297503.P14966165951389987450

/-! ## A297503.P4690810165102672418

`A297506(A046691(n+3))`
-/

namespace A297503.P4690810165102672418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A046691 (n + 3)).toNat

end

end A297503.P4690810165102672418

/-! ## A297503.P2694510147720624771

`A297506(eq[4, A193592(n)])`
-/

namespace A297503.P2694510147720624771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297503.P2694510147720624771

/-! ## A297503.P3587966569546632139

`A297506(Δ[A023545(n+1)])`
-/

namespace A297503.P3587966569546632139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (f1 (n + 1) - f1 n).toNat

end

end A297503.P3587966569546632139

/-! ## A297503.P7497155505218306543

`A297506(eq[5, A200370(n+1)])`
-/

namespace A297503.P7497155505218306543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297503.P7497155505218306543

/-!
# A297504: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297504, there is no canonical definition to state claims against.
-/

/-! ## A297504.P11969316270036533935

`A297506(A052905(n+3))`
-/

namespace A297504.P11969316270036533935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A052905 (n + 3)).toNat

end

end A297504.P11969316270036533935

/-! ## A297504.P460746531476143332

`A297506(A056119(n)+16)`
-/

namespace A297504.P460746531476143332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A056119 n + 16).toNat

end

end A297504.P460746531476143332

/-! ## A297504.P1484606199600906265

`A297506(eq[3, A219347(n)])`
-/

namespace A297504.P1484606199600906265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297504.P1484606199600906265

/-! ## A297504.P5291253313396659297

`A297506(eq[6, A200370(n+1)])`
-/

namespace A297504.P5291253313396659297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297504.P5291253313396659297

/-! ## A297504.P7384667446006400998

`A297506(eq[8, A185782(n+1)])`
-/

namespace A297504.P7384667446006400998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297504.P7384667446006400998

/-!
# A297505: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297505, there is no canonical definition to state claims against.
-/

/-! ## A297505.P4704180888439337160

`A297506(A055999(n+4))`
-/

namespace A297505.P4704180888439337160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A055999 (n + 4)).toNat

end

end A297505.P4704180888439337160

/-! ## A297505.P1903746942893811977

`A297506(eq[4, A219347(n)])`
-/

namespace A297505.P1903746942893811977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297505.P1903746942893811977

/-! ## A297505.P1088448174412554441

`A297506(eq[6, A193592(n)])`
-/

namespace A297505.P1088448174412554441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297505.P1088448174412554441

/-! ## A297505.P6637840529797810288

`A297506(A052905(n+4)-1)`
-/

namespace A297505.P6637840529797810288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A052905 (n + 4) - 1).toNat

end

end A297505.P6637840529797810288

/-! ## A297505.P11050026299640438887

`A297506(eq[7, A200370(n+1)])`
-/

namespace A297505.P11050026299640438887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297505.P11050026299640438887

/-!
# A297507: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297507, the canonical program `A297507.P5511944491851248974` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297507 has offset 1).

The definition of A297507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297507.P5511944491851248974

`ogf((1+7x+3x^2-14x^3-8x^4)/(1-3x+2x^2-9x^3+6x^4+8x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297507

/-- `ogf((1+7x+3x^2-14x^3-8x^4)/(1-3x+2x^2-9x^3+6x^4+8x^5))` -/
def P5511944491851248974.Spec : Prop :=
  ∀ n, P5511944491851248974.a n = A297507 (n + 1)

theorem P5511944491851248974.correct : P5511944491851248974.Spec := by
  intro n
  simp only [A297507, Nat.add_sub_cancel]

end A297507

/-! ## A297507.P10490025235661044743

`A297506(∑[n+1]+2)`
-/

namespace A297507.P10490025235661044743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297507.P10490025235661044743

namespace A297507

/-- `A297506(∑[n+1]+2)` -/
def P10490025235661044743.Spec : Prop :=
  ∀ n, P10490025235661044743.a n = A297507 (n + 1)

end A297507

/-! ## A297507.P16601915515559732254

`A297506(A000217(n+1)+2)+A025443(n)`
-/

namespace A297507.P16601915515559732254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000217 (n + 1) + 2).toNat + A025443 n

end

end A297507.P16601915515559732254

namespace A297507

/-- `A297506(A000217(n+1)+2)+A025443(n)` -/
def P16601915515559732254.Spec : Prop :=
  ∀ n, P16601915515559732254.a n = A297507 (n + 1)

end A297507

/-! ## A297507.P4931886533662678733

`A297506(A000217(n+1)+2)%A297501(n+1)`
-/

namespace A297507.P4931886533662678733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297506 (A000217 (n + 1) + 2).toNat) (A297501 (n + 1))

end

end A297507.P4931886533662678733

namespace A297507

/-- `A297506(A000217(n+1)+2)%A297501(n+1)` -/
def P4931886533662678733.Spec : Prop :=
  ∀ n, P4931886533662678733.a n = A297507 (n + 1)

end A297507

/-! ## A297507.P13847280324827921267

`A072491(A020639(n+1))*A297506(A000217(n+1)+2)`
-/

namespace A297507.P13847280324827921267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A020639 (n + 1)).toNat * A297506 (A000217 (n + 1) + 2).toNat

end

end A297507.P13847280324827921267

namespace A297507

/-- `A072491(A020639(n+1))*A297506(A000217(n+1)+2)` -/
def P13847280324827921267.Spec : Prop :=
  ∀ n, P13847280324827921267.a n = A297507 (n + 1)

end A297507

/-!
# A297508: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297508, there is no canonical definition to state claims against.
-/

/-! ## A297508.P13990170086511471331

`A297506(∑[n+2]+4)`
-/

namespace A297508.P13990170086511471331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297508.P13990170086511471331

/-! ## A297508.P11063061124373637224

`A297506(A167614(n+1))+A185284(n)`
-/

namespace A297508.P11063061124373637224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A167614 (n + 1)).toNat + A185284 n

end

end A297508.P11063061124373637224

/-! ## A297508.P6206675355067109645

`A297506(A167614(n+1))^A178334(n)`
-/

namespace A297508.P6206675355067109645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297506 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297508.P6206675355067109645

/-! ## A297508.P1019688573659016728

`lcm(A020985(n), A297506(A167614(n+1)))`
-/

namespace A297508.P1019688573659016728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A297506 (A167614 (n + 1)).toNat)

end

end A297508.P1019688573659016728

/-! ## A297508.P10179333528672233871

`or(A000007(n), A297506(A167614(n+1)))`
-/

namespace A297508.P10179333528672233871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297506 (A167614 (n + 1)).toNat)

end

end A297508.P10179333528672233871

/-!
# A297509: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297509, there is no canonical definition to state claims against.
-/

/-! ## A297509.P10330691619344775337

`A297506(A141214(n)+7)`
-/

namespace A297509.P10330691619344775337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A141214 n + 7).toNat

end

end A297509.P10330691619344775337

/-! ## A297509.P15777411053233216080

`A297506(A052905(n)+9)`
-/

namespace A297509.P15777411053233216080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A052905 n + 9).toNat

end

end A297509.P15777411053233216080

/-! ## A297509.P6747160125769303119

`A297506(A055999(n)+10)`
-/

namespace A297509.P6747160125769303119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A055999 n + 10).toNat

end

end A297509.P6747160125769303119

/-! ## A297509.P986429282924938112

`A297506(A167614(n+2)+1)`
-/

namespace A297509.P986429282924938112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A167614 (n + 2) + 1).toNat

end

end A297509.P986429282924938112

/-! ## A297509.P9151206359333489883

`A297506(A166136(n+2)-2)`
-/

namespace A297509.P9151206359333489883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A166136 (n + 2) - 2).toNat

end

end A297509.P9151206359333489883

/-!
# A297510: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297510, there is no canonical definition to state claims against.
-/

/-! ## A297510.P3552339219736847042

`A297506(A167499(n+3))`
-/

namespace A297510.P3552339219736847042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A167499 (n + 3)).toNat

end

end A297510.P3552339219736847042

/-! ## A297510.P5672753313266475511

`A297506(A155212(n)+13)`
-/

namespace A297510.P5672753313266475511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A155212 n + 13).toNat

end

end A297510.P5672753313266475511

/-! ## A297510.P4090405516985312976

`A297506(A056000(n)+15)`
-/

namespace A297510.P4090405516985312976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A056000 n + 15).toNat

end

end A297510.P4090405516985312976

/-! ## A297510.P11714989291321345444

`A297506(eq[6, A131818(n+1)])`
-/

namespace A297510.P11714989291321345444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297510.P11714989291321345444

/-! ## A297510.P7300078623872198944

`A297506(A000124(n+5)-(n+1))`
-/

namespace A297510.P7300078623872198944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A297510.P7300078623872198944

/-!
# A297511: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297511, there is no canonical definition to state claims against.
-/

/-! ## A297511.P16955932356280923284

`A297506(Δ[A264443(n)]+10)`
-/

namespace A297511.P16955932356280923284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (f1 (n + 1) - f1 n + 10).toNat

end

end A297511.P16955932356280923284

/-! ## A297511.P1159561476841443176

`A297506(A000124(n+5)+5)`
-/

namespace A297511.P1159561476841443176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000124 (n + 5) + 5).toNat

end

end A297511.P1159561476841443176

/-! ## A297511.P15744125743998300999

`A297506(A000217(n+5)+6)`
-/

namespace A297511.P15744125743998300999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000217 (n + 5) + 6).toNat

end

end A297511.P15744125743998300999

/-! ## A297511.P2569659940018035247

`A297506(A246172(n+1)+20)`
-/

namespace A297511.P2569659940018035247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A246172 (n + 1) + 20).toNat

end

end A297511.P2569659940018035247

/-! ## A297511.P5963934214276042122

`A297506(eq[7, A131818(n+1)])`
-/

namespace A297511.P5963934214276042122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297511.P5963934214276042122

/-!
# A297512: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297512, there is no canonical definition to state claims against.
-/

/-! ## A297512.P16434424450394479541

`A297506(eq[11, A066657(n)])`
-/

namespace A297512.P16434424450394479541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297512.P16434424450394479541

/-! ## A297512.P12225601571653783270

`A297506(A000124(n+6)+6)`
-/

namespace A297512.P12225601571653783270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000124 (n + 6) + 6).toNat

end

end A297512.P12225601571653783270

/-! ## A297512.P2717759453984562186

`A297506(A000217(n+6)+7)`
-/

namespace A297512.P2717759453984562186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A000217 (n + 6) + 7).toNat

end

end A297512.P2717759453984562186

/-! ## A297512.P13352229966548668442

`A297506(A056000(n+2)+17)`
-/

namespace A297512.P13352229966548668442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (A056000 (n + 2) + 17).toNat

end

end A297512.P13352229966548668442

/-! ## A297512.P4257182057697685972

`A297506(eq[8, A131818(n+1)])`
-/

namespace A297512.P4257182057697685972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297512.P4257182057697685972

/-!
# A297513: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1's.

The programs for A297513, there is no canonical definition to state claims against.
-/

/-! ## A297513.P14323052290804495206

`A297519(∑[4*n]+1)`
-/

namespace A297513.P14323052290804495206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297513.P14323052290804495206

/-! ## A297513.P1869857948420688453

`record[A297519(Δ[A235355(n)])]`
-/

namespace A297513.P1869857948420688453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297513.P1869857948420688453

/-! ## A297513.P4222723678862314004

`or(A000007(n), A297519(A001844(n)))`
-/

namespace A297513.P4222723678862314004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297519 (A001844 n).toNat)

end

end A297513.P4222723678862314004

/-! ## A297513.P11358078545110823089

`or(A005369(n), A297519(A001844(n)))`
-/

namespace A297513.P11358078545110823089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A297519 (A001844 n).toNat)

end

end A297513.P11358078545110823089

/-! ## A297513.P18146517546133877390

`or(A279278(n), A297519(A001844(n)))`
-/

namespace A297513.P18146517546133877390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279278 n) (A297519 (A001844 n).toNat)

end

end A297513.P18146517546133877390

/-!
# A297514: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297514, there is no canonical definition to state claims against.
-/

/-! ## A297514.P14603882022288207774

`A297519(∑[n+3]+1)`
-/

namespace A297514.P14603882022288207774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297514.P14603882022288207774

/-! ## A297514.P3205537879056174992

`record[A297519(A198464(n+1))]`
-/

namespace A297514.P3205537879056174992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297514.P3205537879056174992

/-!
# A297515: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297515, there is no canonical definition to state claims against.
-/

/-! ## A297515.P12318493007335145844

`A297519(A141214(n+1))`
-/

namespace A297515.P12318493007335145844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A141214 (n + 1)).toNat

end

end A297515.P12318493007335145844

/-! ## A297515.P14798042467525395546

`A297519(A027379(n+2))`
-/

namespace A297515.P14798042467525395546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A027379 (n + 2)).toNat

end

end A297515.P14798042467525395546

/-! ## A297515.P14466521716059008847

`A297519(A055998(n+2))`
-/

namespace A297515.P14466521716059008847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055998 (n + 2)).toNat

end

end A297515.P14466521716059008847

/-! ## A297515.P13518375455961847273

`A297519(A056000(n)+7)`
-/

namespace A297515.P13518375455961847273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A056000 n + 7).toNat

end

end A297515.P13518375455961847273

/-! ## A297515.P251362849906333680

`A297519(eq[3, A193592(n)])`
-/

namespace A297515.P251362849906333680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297515.P251362849906333680

/-!
# A297516: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297516, there is no canonical definition to state claims against.
-/

/-! ## A297516.P17564144929848788026

`A297519(Δ[A264443(n)])`
-/

namespace A297516.P17564144929848788026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n).toNat

end

end A297516.P17564144929848788026

/-! ## A297516.P155486957883241866

`A297519(A046691(n+3))`
-/

namespace A297516.P155486957883241866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A046691 (n + 3)).toNat

end

end A297516.P155486957883241866

/-! ## A297516.P255670205609209011

`A297519(Δ[A023545(n+1)])`
-/

namespace A297516.P255670205609209011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n).toNat

end

end A297516.P255670205609209011

/-! ## A297516.P10707932674370731242

`A297519(A246172(n+1)+10)`
-/

namespace A297516.P10707932674370731242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A246172 (n + 1) + 10).toNat

end

end A297516.P10707932674370731242

/-! ## A297516.P2534323392129669848

`A297519(A166136(n+4)-10)`
-/

namespace A297516.P2534323392129669848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A166136 (n + 4) - 10).toNat

end

end A297516.P2534323392129669848

/-!
# A297517: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297517, there is no canonical definition to state claims against.
-/

/-! ## A297517.P7623805160566693515

`A297519(A052905(n+3))`
-/

namespace A297517.P7623805160566693515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A052905 (n + 3)).toNat

end

end A297517.P7623805160566693515

/-! ## A297517.P8595103446214810088

`A297519(eq[3, A219347(n)])`
-/

namespace A297517.P8595103446214810088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297517.P8595103446214810088

/-! ## A297517.P6949345853616427242

`A297519(eq[5, A193592(n)])`
-/

namespace A297517.P6949345853616427242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297517.P6949345853616427242

/-! ## A297517.P5987676464614730075

`A297519(eq[8, A185782(n+1)])`
-/

namespace A297517.P5987676464614730075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297517.P5987676464614730075

/-! ## A297517.P16344251407421958835

`A297519(Δ[Δ[A006504(n+1)]])`
-/

namespace A297517.P16344251407421958835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n).toNat

end

end A297517.P16344251407421958835

/-!
# A297518: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297518, there is no canonical definition to state claims against.
-/

/-! ## A297518.P1742508996326866082

`A297519(A055999(n+4))`
-/

namespace A297518.P1742508996326866082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055999 (n + 4)).toNat

end

end A297518.P1742508996326866082

/-! ## A297518.P405411196771076531

`A297519(eq[4, A219347(n)])`
-/

namespace A297518.P405411196771076531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297518.P405411196771076531

/-! ## A297518.P12996336474800657890

`A297519(eq[6, A193592(n)])`
-/

namespace A297518.P12996336474800657890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297518.P12996336474800657890

/-! ## A297518.P11097088602025390635

`A297519(A155212(n+3)+2)`
-/

namespace A297518.P11097088602025390635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A155212 (n + 3) + 2).toNat

end

end A297518.P11097088602025390635

/-! ## A297518.P5651087401632268135

`A297519(eq[7, A200370(n+1)])`
-/

namespace A297518.P5651087401632268135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297518.P5651087401632268135

/-!
# A297519: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297519, there is no canonical definition to state claims against.
-/

/-! ## A297519.P5937768364711388813

`A183110(A324683(n)+A225117(n))`
-/

namespace A297519.P5937768364711388813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A324683 n + A225117 n).toNat

end

end A297519.P5937768364711388813

/-!
# A297520: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297520, the canonical program `A297520.P8880054331469029939` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297520 has offset 1).

The definition of A297520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297520.P8880054331469029939

`a(n-1)+4*a(n-3)+12*a(n-4)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=33`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297520

/-- `a(n-1)+4*a(n-3)+12*a(n-4)` -/
def P8880054331469029939.Spec : Prop :=
  ∀ n, (P8880054331469029939.a n : ℤ) = A297520 (n + 1)

theorem P8880054331469029939.correct : P8880054331469029939.Spec := by
  intro n
  simp only [A297520, Nat.add_sub_cancel]

end A297520

/-! ## A297520.P13921130350533821818

`ogf((1+4x+12x^2+12x^3)/(1-x-4x^3-12x^4))`
-/

namespace A297520.P13921130350533821818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 12, 12] [1, -1, 0, -4, -12] n

end

end A297520.P13921130350533821818

namespace A297520

/-- `ogf((1+4x+12x^2+12x^3)/(1-x-4x^3-12x^4))` -/
def P13921130350533821818.Spec : Prop :=
  ∀ n, P13921130350533821818.a n = A297520 (n + 1)

end A297520

/-! ## A297520.P3381389774007515233

`A297519(∑[n+1]+2)`
-/

namespace A297520.P3381389774007515233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297520.P3381389774007515233

namespace A297520

/-- `A297519(∑[n+1]+2)` -/
def P3381389774007515233.Spec : Prop :=
  ∀ n, P3381389774007515233.a n = A297520 (n + 1)

end A297520

/-! ## A297520.P12308986968979114104

`or(1, A297519(A133263(n+1)))`
-/

namespace A297520.P12308986968979114104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297519 (A133263 (n + 1)).toNat)

end

end A297520.P12308986968979114104

namespace A297520

/-- `or(1, A297519(A133263(n+1)))` -/
def P12308986968979114104.Spec : Prop :=
  ∀ n, P12308986968979114104.a n = A297520 (n + 1)

end A297520

/-! ## A297520.P147457373636802163

`Δ[A064289(n)]²*A297519(A133263(n+1))`
-/

namespace A297520.P147457373636802163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A297519 (A133263 (n + 1)).toNat

end

end A297520.P147457373636802163

namespace A297520

/-- `Δ[A064289(n)]²*A297519(A133263(n+1))` -/
def P147457373636802163.Spec : Prop :=
  ∀ n, P147457373636802163.a n = A297520 (n + 1)

end A297520

/-!
# A297521: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297521, there is no canonical definition to state claims against.
-/

/-! ## A297521.P13326572371858140756

`A297519(∑[n+2]+4)`
-/

namespace A297521.P13326572371858140756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297521.P13326572371858140756

/-! ## A297521.P5044771520952068823

`A297519(A167614(n+1))%A198852(n)`
-/

namespace A297521.P5044771520952068823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297519 (A167614 (n + 1)).toNat) (A198852 n)

end

end A297521.P5044771520952068823

/-! ## A297521.P1754772197331906427

`gcd(A000038(n), A297519(A167614(n+1)))`
-/

namespace A297521.P1754772197331906427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297519 (A167614 (n + 1)).toNat)

end

end A297521.P1754772197331906427

/-! ## A297521.P4034368608448619011

`lcm(A020985(n), A297519(A167614(n+1)))`
-/

namespace A297521.P4034368608448619011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A297519 (A167614 (n + 1)).toNat)

end

end A297521.P4034368608448619011

/-! ## A297521.P3711957714745465319

`or(A000007(n), A297519(A167614(n+1)))`
-/

namespace A297521.P3711957714745465319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297519 (A167614 (n + 1)).toNat)

end

end A297521.P3711957714745465319

/-!
# A297522: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297522, there is no canonical definition to state claims against.
-/

/-! ## A297522.P11719619034593698066

`A297519(A141214(n)+7)`
-/

namespace A297522.P11719619034593698066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A141214 n + 7).toNat

end

end A297522.P11719619034593698066

/-! ## A297522.P6544383171200588970

`A297519(A052905(n)+9)`
-/

namespace A297522.P6544383171200588970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A052905 n + 9).toNat

end

end A297522.P6544383171200588970

/-! ## A297522.P8626704615146845579

`A297519(A055999(n)+10)`
-/

namespace A297522.P8626704615146845579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055999 n + 10).toNat

end

end A297522.P8626704615146845579

/-! ## A297522.P5820060485400657202

`A297519(Δ[A008778(n)]+6)`
-/

namespace A297522.P5820060485400657202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n + 6).toNat

end

end A297522.P5820060485400657202

/-! ## A297522.P3556075659032923833

`A297519(A167614(n+2)+1)`
-/

namespace A297522.P3556075659032923833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A167614 (n + 2) + 1).toNat

end

end A297522.P3556075659032923833

/-!
# A297523: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297523, there is no canonical definition to state claims against.
-/

/-! ## A297523.P782106020199008636

`A297519(A000217(n+4)+5)`
-/

namespace A297523.P782106020199008636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A000217 (n + 4) + 5).toNat

end

end A297523.P782106020199008636

/-! ## A297523.P9542703576050286674

`A297519(A055998(n+2)+8)`
-/

namespace A297523.P9542703576050286674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055998 (n + 2) + 8).toNat

end

end A297523.P9542703576050286674

/-! ## A297523.P11629602040593146310

`A297519(eq[25, A133819(n+1)]+1)`
-/

namespace A297523.P11629602040593146310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297523.P11629602040593146310

/-! ## A297523.P6797703814946694999

`A297519(A055999(n+3)-2*n)`
-/

namespace A297523.P6797703814946694999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A297523.P6797703814946694999

/-! ## A297523.P11207289814990494434

`A297519(Δ[Δ[A095667(n)]]-2*n)`
-/

namespace A297523.P11207289814990494434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A297523.P11207289814990494434

/-!
# A297524: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297524, there is no canonical definition to state claims against.
-/

/-! ## A297524.P17483002893610720211

`A297519(A166136(n+4))`
-/

namespace A297524.P17483002893610720211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A166136 (n + 4)).toNat

end

end A297524.P17483002893610720211

/-! ## A297524.P5620801355294739506

`A297519(A056115(n)+21)`
-/

namespace A297524.P5620801355294739506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A056115 n + 21).toNat

end

end A297524.P5620801355294739506

/-! ## A297524.P1361233311253507548

`A297519(Δ[A264443(n)]+10)`
-/

namespace A297524.P1361233311253507548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (f1 (n + 1) - f1 n + 10).toNat

end

end A297524.P1361233311253507548

/-! ## A297524.P252432458867592440

`A297519(A000124(n+5)+5)`
-/

namespace A297524.P252432458867592440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A000124 (n + 5) + 5).toNat

end

end A297524.P252432458867592440

/-! ## A297524.P15054967656390746592

`A297519(eq[6, A130270(n+1)])`
-/

namespace A297524.P15054967656390746592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297524.P15054967656390746592

/-!
# A297525: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A297525, there is no canonical definition to state claims against.
-/

/-! ## A297525.P15465809328717970108

`A297519(eq[11, A066657(n)])`
-/

namespace A297525.P15465809328717970108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297525.P15465809328717970108

/-! ## A297525.P878001160803229497

`A297519(A167499(n+5)+2)`
-/

namespace A297525.P878001160803229497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A167499 (n + 5) + 2).toNat

end

end A297525.P878001160803229497

/-! ## A297525.P15202272931636260697

`A297519(A167614(n+5)+4)`
-/

namespace A297525.P15202272931636260697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A167614 (n + 5) + 4).toNat

end

end A297525.P15202272931636260697

/-! ## A297525.P1882857315084247519

`A297519(A000096(n+5)+8)`
-/

namespace A297525.P1882857315084247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A000096 (n + 5) + 8).toNat

end

end A297525.P1882857315084247519

/-! ## A297525.P12034208017012548348

`A297519(A141214(n+3)+10)`
-/

namespace A297525.P12034208017012548348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297519 (A141214 (n + 3) + 10).toNat

end

end A297525.P12034208017012548348

/-!
# A297526: Number of binary words w of length n such that the number of distinct blocks of length k that w contains is <= k+2 for all k.

The programs for A297526, there is no canonical definition to state claims against.
-/

/-! ## A297526.P3452945944230571682

`record[(2^floor(n/2))%A302656(3*n+4)]`
-/

namespace A297526.P3452945944230571682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A302656 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297526.P3452945944230571682

/-! ## A297526.P11618496680894618546

`A061392(A099857(n))`
-/

namespace A297526.P11618496680894618546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A099857 n).toNat

end

end A297526.P11618496680894618546

/-! ## A297526.P16306450230095258804

`A322382(A066535(n))+1`
-/

namespace A297526.P16306450230095258804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A066535 n).toNat + 1

end

end A297526.P16306450230095258804

/-! ## A297526.P8220703933446749600

`A061392(A116850(n+2))`
-/

namespace A297526.P8220703933446749600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A116850 (n + 2)).toNat

end

end A297526.P8220703933446749600

/-! ## A297526.P7222670405541983496

`A225878(A363246(n+2))`
-/

namespace A297526.P7222670405541983496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (A363246 (n + 2)).toNat

end

end A297526.P7222670405541983496

/-!
# A297527: Number of maximum matchings in the complete tripartite graph K_{n,n,n}.

The programs for A297527, the canonical program `A297527.P532196898674371014` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297527 has offset 1).

The definition of A297527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297527.P532196898674371014

`C(n+1, floor((n+1)/2))^3*floor((n+1)/2)!*ceil((n+1)/2)!²*(2-(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297527

/-- `C(n+1, floor((n+1)/2))^3*floor((n+1)/2)!*ceil((n+1)/2)!²*(2-(-1)^(n+1))` -/
def P532196898674371014.Spec : Prop :=
  ∀ n, P532196898674371014.a n = A297527 (n + 1)

theorem P532196898674371014.correct : P532196898674371014.Spec := by
  intro n
  simp only [A297527, Nat.add_sub_cancel]

end A297527

/-!
# A297529: Number of maximum matchings in the n-Mycielski graph.

The programs for A297529, there is no canonical definition to state claims against.
-/

/-! ## A297529.P8728685426907157199

`A029471(n+4)%A056371(A196161(n+1))`
-/

namespace A297529.P8728685426907157199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029471 (n + 4)) (A056371 (A196161 (n + 1)).toNat)

end

end A297529.P8728685426907157199

/-!
# A297531: Subword complexity (number of distinct blocks) of length n occurring in the "twisted" Thue-Morse sequence.

The programs for A297531, there is no canonical definition to state claims against.
-/

/-! ## A297531.P2742948669930188481

`A303975(A237770(n))+A005942(n)`
-/

namespace A297531.P2742948669930188481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A237770 n).toNat + A005942 n

end

end A297531.P2742948669930188481

/-! ## A297531.P12417894222739821345

`A303975(A237770(n))+A214214(n)+1-A214212(n)`
-/

namespace A297531.P12417894222739821345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A237770 n).toNat + (A214214 n + (1 - A214212 n))

end

end A297531.P12417894222739821345

/-!
# A297535: Number of maximum matchings in the n-Andrásfai graph.

The programs for A297535, there is no canonical definition to state claims against.
-/

/-! ## A297535.P12970038273942444959

`or(1, A127054(∑[A047550(n+1)]+1))`
-/

namespace A297535.P12970038273942444959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127054 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A297535.P12970038273942444959

/-!
# A297537: Number of maximum independent vertex sets in the n-triangular honeycomb grid graph.

The programs for A297537, there is no canonical definition to state claims against.
-/

/-! ## A297537.P17480105946489446448

`n^A307752(a(n-1))` with `a(0)=1`
-/

namespace A297537.P17480105946489446448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (A307752 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A297537.P17480105946489446448

/-! ## A297537.P12480929445059821702

`n^A158674(a(n-1)²)` with `a(0)=1`
-/

namespace A297537.P12480929445059821702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (A158674 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℤ)

end

end A297537.P12480929445059821702

/-!
# A297538: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1's.

The programs for A297538, there is no canonical definition to state claims against.
-/

/-! ## A297538.P2970980840727566076

`A297544(∑[4*n]+1)`
-/

namespace A297538.P2970980840727566076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297538.P2970980840727566076

/-! ## A297538.P11461743692799333084

`and(-1, A297544(n²+(n+1)²))`
-/

namespace A297538.P11461743692799333084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297544 (n ^ 2 + (n + 1) ^ 2))

end

end A297538.P11461743692799333084

/-! ## A297538.P13602454128486735405

`record[gcd(A214292(n), A297544(n+1))]`
-/

namespace A297538.P13602454128486735405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A297544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297538.P13602454128486735405

/-! ## A297538.P14284748753581691203

`record[A203994(n+1)*A297544(n+1)]`
-/

namespace A297538.P14284748753581691203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A297544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297538.P14284748753581691203

/-! ## A297538.P6602609275858978057

`A152828(n)*A297544(n²+(n+1)²)`
-/

namespace A297538.P6602609275858978057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 n * A297544 (n ^ 2 + (n + 1) ^ 2)

end

end A297538.P6602609275858978057

/-!
# A297539: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297539, there is no canonical definition to state claims against.
-/

/-! ## A297539.P4465878404872979285

`A297544(∑[n+3]+1)`
-/

namespace A297539.P4465878404872979285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297539.P4465878404872979285

/-! ## A297539.P9948558299712350908

`record[A297544(A128373(n+2))]`
-/

namespace A297539.P9948558299712350908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297539.P9948558299712350908

/-! ## A297539.P5108646911327277051

`A152851(n)*A297544(A055999(n)+4)`
-/

namespace A297539.P5108646911327277051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A297544 (A055999 n + 4).toNat

end

end A297539.P5108646911327277051

/-! ## A297539.P13661773221441559262

`A297544(A055999(n)+4)^A178334(n)`
-/

namespace A297539.P13661773221441559262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297544 (A055999 n + 4).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297539.P13661773221441559262

/-! ## A297539.P8514681724590012623

`lcm(A119963(n), A297544(A055999(n)+4))`
-/

namespace A297539.P8514681724590012623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119963 n) (A297544 (A055999 n + 4).toNat)

end

end A297539.P8514681724590012623

/-!
# A297540: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297540, there is no canonical definition to state claims against.
-/

/-! ## A297540.P9617349583030131347

`A297544(A141214(n+1))`
-/

namespace A297540.P9617349583030131347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A141214 (n + 1)).toNat

end

end A297540.P9617349583030131347

/-! ## A297540.P10932870593702525019

`A297544(A055998(n+2))`
-/

namespace A297540.P10932870593702525019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A055998 (n + 2)).toNat

end

end A297540.P10932870593702525019

/-! ## A297540.P2061222267146358880

`A297544(A155212(n)+5)`
-/

namespace A297540.P2061222267146358880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A155212 n + 5).toNat

end

end A297540.P2061222267146358880

/-! ## A297540.P14191269989133985048

`A297544(A056000(n)+7)`
-/

namespace A297540.P14191269989133985048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A056000 n + 7).toNat

end

end A297540.P14191269989133985048

/-! ## A297540.P6156978540373524566

`A297544(eq[2, A152157(n)])`
-/

namespace A297540.P6156978540373524566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297540.P6156978540373524566

/-!
# A297541: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297541, there is no canonical definition to state claims against.
-/

/-! ## A297541.P2686908192345865486

`A297544(A046691(n+3))`
-/

namespace A297541.P2686908192345865486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A046691 (n + 3)).toNat

end

end A297541.P2686908192345865486

/-! ## A297541.P2198431377597801170

`A297544(eq[3, A152157(n)])`
-/

namespace A297541.P2198431377597801170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297541.P2198431377597801170

/-! ## A297541.P1655124964619451886

`A297544(eq[4, A193592(n)])`
-/

namespace A297541.P1655124964619451886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297541.P1655124964619451886

/-! ## A297541.P2190109415490297471

`A297544(Δ[A023545(n+1)])`
-/

namespace A297541.P2190109415490297471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (f1 (n + 1) - f1 n).toNat

end

end A297541.P2190109415490297471

/-! ## A297541.P12545286165926946602

`A297544(A055999(n+2)+2)`
-/

namespace A297541.P12545286165926946602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A055999 (n + 2) + 2).toNat

end

end A297541.P12545286165926946602

/-!
# A297542: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297542, there is no canonical definition to state claims against.
-/

/-! ## A297542.P14028023208779300002

`A297544(A052905(n+3))`
-/

namespace A297542.P14028023208779300002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A052905 (n + 3)).toNat

end

end A297542.P14028023208779300002

/-! ## A297542.P12245125088104744548

`A297544(A056119(n)+16)`
-/

namespace A297542.P12245125088104744548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A056119 n + 16).toNat

end

end A297542.P12245125088104744548

/-! ## A297542.P15068109649448289574

`A297544(eq[3, A219347(n)])`
-/

namespace A297542.P15068109649448289574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297542.P15068109649448289574

/-! ## A297542.P5025021707513243357

`A297544(eq[5, A193592(n)])`
-/

namespace A297542.P5025021707513243357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297542.P5025021707513243357

/-! ## A297542.P18166566164869629213

`A297544(eq[8, A258709(n)])`
-/

namespace A297542.P18166566164869629213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297542.P18166566164869629213

/-!
# A297543: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297543, there is no canonical definition to state claims against.
-/

/-! ## A297543.P1287028771468678784

`A297544(A055999(n+4))`
-/

namespace A297543.P1287028771468678784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A055999 (n + 4)).toNat

end

end A297543.P1287028771468678784

/-! ## A297543.P14216881540415621509

`A297544(eq[4, A219347(n)])`
-/

namespace A297543.P14216881540415621509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297543.P14216881540415621509

/-! ## A297543.P2245008011599284358

`A297544(eq[6, A193592(n)])`
-/

namespace A297543.P2245008011599284358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297543.P2245008011599284358

/-! ## A297543.P1753107986446436277

`A297544(eq[7, A200370(n+1)])`
-/

namespace A297543.P1753107986446436277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297543.P1753107986446436277

/-! ## A297543.P13656311157935745442

`A297544(eq[10, A185782(n+1)])`
-/

namespace A297543.P13656311157935745442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297543.P13656311157935745442

/-!
# A297544: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297544, there is no canonical definition to state claims against.
-/

/-! ## A297544.P2030487793753821256

`A297802(n+1)-A137579(A297802(n+1))`
-/

namespace A297544.P2030487793753821256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (n + 1) - A137579 (A297802 (n + 1)).toNat

end

end A297544.P2030487793753821256

/-! ## A297544.P10158534275243909819

`A297802(n+1)-A033886(A059922(n))`
-/

namespace A297544.P10158534275243909819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (n + 1) - A033886 (A059922 n).toNat

end

end A297544.P10158534275243909819

/-! ## A297544.P8311358258237969468

`A297802(n+1)-A051516(A157630(n))`
-/

namespace A297544.P8311358258237969468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (n + 1) - A051516 (A157630 n).toNat

end

end A297544.P8311358258237969468

/-! ## A297544.P14429060788776300512

`A297802(n+1)-A170957(A113413(n))`
-/

namespace A297544.P14429060788776300512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (n + 1) - A170957 (A113413 n).toNat

end

end A297544.P14429060788776300512

/-! ## A297544.P17236960693990232982

`A297802(n+1)-A174875(A168288(n))`
-/

namespace A297544.P17236960693990232982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (n + 1) - A174875 (A168288 n).toNat

end

end A297544.P17236960693990232982

/-!
# A297545: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297545, the canonical program `A297545.P6940634250052237576` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297545 has offset 1).

The definition of A297545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297545.P6940634250052237576

`ogf((1-x+7x^2-10x^3-28x^4-12x^5)/(1-3x+2x^2-5x^3-6x^4+16x^5+12x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297545

/-- `ogf((1-x+7x^2-10x^3-28x^4-12x^5)/(1-3x+2x^2-5x^3-6x^4+16x^5+12x^6))` -/
def P6940634250052237576.Spec : Prop :=
  ∀ n, P6940634250052237576.a n = A297545 (n + 1)

theorem P6940634250052237576.correct : P6940634250052237576.Spec := by
  intro n
  simp only [A297545, Nat.add_sub_cancel]

end A297545

/-! ## A297545.P17586296737668092250

`record[ratio[A297544(n+1)]]`
-/

namespace A297545.P17586296737668092250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297545.P17586296737668092250

namespace A297545

/-- `record[ratio[A297544(n+1)]]` -/
def P17586296737668092250.Spec : Prop :=
  ∀ n, P17586296737668092250.a n = (A297545 (n + 1) : ℚ)

end A297545

/-! ## A297545.P13878003951027212423

`A297544(∑[n+1]+2)`
-/

namespace A297545.P13878003951027212423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297545.P13878003951027212423

namespace A297545

/-- `A297544(∑[n+1]+2)` -/
def P13878003951027212423.Spec : Prop :=
  ∀ n, P13878003951027212423.a n = A297545 (n + 1)

end A297545

/-! ## A297545.P15446687170164107662

`record[A297544(n+2)/A297544(n+1)]`
-/

namespace A297545.P15446687170164107662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297544 (n + 2) : ℚ) / (A297544 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297545.P15446687170164107662

namespace A297545

/-- `record[A297544(n+2)/A297544(n+1)]` -/
def P15446687170164107662.Spec : Prop :=
  ∀ n, P15446687170164107662.a n = (A297545 (n + 1) : ℚ)

end A297545

/-! ## A297545.P5855555056095032662

`record[gcd(A297544(n+1), A298368(n+1))]`
-/

namespace A297545.P5855555056095032662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297544 (n + 1)) (A298368 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297545.P5855555056095032662

namespace A297545

/-- `record[gcd(A297544(n+1), A298368(n+1))]` -/
def P5855555056095032662.Spec : Prop :=
  ∀ n, (P5855555056095032662.a n : ℤ) = A297545 (n + 1)

end A297545

/-!
# A297546: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297546, there is no canonical definition to state claims against.
-/

/-! ## A297546.P15908967625895508571

`A297544(∑[n+2]+4)`
-/

namespace A297546.P15908967625895508571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297546.P15908967625895508571

/-! ## A297546.P10253303114161878917

`record[A297544(A128373(n+2)+2)]`
-/

namespace A297546.P10253303114161878917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A128373 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297546.P10253303114161878917

/-! ## A297546.P4260767972055304984

`or(char[4], A297544(A167614(n+1)))`
-/

namespace A297546.P4260767972055304984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297544 (A167614 (n + 1)).toNat)

end

end A297546.P4260767972055304984

/-! ## A297546.P16437701493309599484

`lcm(log2(1/2), A297544(A046691(n)+7))`
-/

namespace A297546.P16437701493309599484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A297544 (A046691 n + 7).toNat)

end

end A297546.P16437701493309599484

/-! ## A297546.P1728126006338282761

`or(A000007(n), A297544(A016028(n+5)))`
-/

namespace A297546.P1728126006338282761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297544 (A016028 (n + 5)).toNat)

end

end A297546.P1728126006338282761

/-!
# A297547: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297547, there is no canonical definition to state claims against.
-/

/-! ## A297547.P834530690804029104

`A297544(A141214(n)+7)`
-/

namespace A297547.P834530690804029104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A141214 n + 7).toNat

end

end A297547.P834530690804029104

/-! ## A297547.P14137534984142359447

`A297544(A052905(n)+9)`
-/

namespace A297547.P14137534984142359447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A052905 n + 9).toNat

end

end A297547.P14137534984142359447

/-! ## A297547.P16394520012730001047

`A297544(A055999(n)+10)`
-/

namespace A297547.P16394520012730001047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A055999 n + 10).toNat

end

end A297547.P16394520012730001047

/-! ## A297547.P2748669676943420641

`A297544(A167614(n+2)+1)`
-/

namespace A297547.P2748669676943420641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A167614 (n + 2) + 1).toNat

end

end A297547.P2748669676943420641

/-! ## A297547.P4236807504844129804

`A297544(A166136(n+2)-2)`
-/

namespace A297547.P4236807504844129804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A166136 (n + 2) - 2).toNat

end

end A297547.P4236807504844129804

/-!
# A297548: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297548, there is no canonical definition to state claims against.
-/

/-! ## A297548.P3487868486200462250

`A297544(A167499(n+3))`
-/

namespace A297548.P3487868486200462250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A167499 (n + 3)).toNat

end

end A297548.P3487868486200462250

/-! ## A297548.P6119962350346447923

`A297544(A155212(n)+13)`
-/

namespace A297548.P6119962350346447923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A155212 n + 13).toNat

end

end A297548.P6119962350346447923

/-! ## A297548.P16208412837660809606

`A297544(A056000(n)+15)`
-/

namespace A297548.P16208412837660809606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A056000 n + 15).toNat

end

end A297548.P16208412837660809606

/-! ## A297548.P13299515290374568838

`A297544(A141214(n+1)+8)`
-/

namespace A297548.P13299515290374568838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A141214 (n + 1) + 8).toNat

end

end A297548.P13299515290374568838

/-! ## A297548.P14695942934758855326

`A297544(eq[6, A131818(n+1)])`
-/

namespace A297548.P14695942934758855326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297548.P14695942934758855326

/-!
# A297549: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297549, there is no canonical definition to state claims against.
-/

/-! ## A297549.P10504377004212731662

`A297544(A166136(n+4))`
-/

namespace A297549.P10504377004212731662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A166136 (n + 4)).toNat

end

end A297549.P10504377004212731662

/-! ## A297549.P17115033711921865296

`A297544(A056115(n)+21)`
-/

namespace A297549.P17115033711921865296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A056115 n + 21).toNat

end

end A297549.P17115033711921865296

/-! ## A297549.P8637095294799543700

`A297544(eq[6, A256910(n)])`
-/

namespace A297549.P8637095294799543700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297549.P8637095294799543700

/-! ## A297549.P16229969799481369100

`A297544(A000217(n+5)+6)`
-/

namespace A297549.P16229969799481369100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A000217 (n + 5) + 6).toNat

end

end A297549.P16229969799481369100

/-! ## A297549.P7575988087589400817

`A297544(A141214(n+2)+9)`
-/

namespace A297549.P7575988087589400817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A141214 (n + 2) + 9).toNat

end

end A297549.P7575988087589400817

/-!
# A297550: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A297550, there is no canonical definition to state claims against.
-/

/-! ## A297550.P9158957067487335537

`A297544(eq[11, A066657(n)])`
-/

namespace A297550.P9158957067487335537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297550.P9158957067487335537

/-! ## A297550.P15475968557059031143

`A297544(A167614(n+5)+4)`
-/

namespace A297550.P15475968557059031143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A167614 (n + 5) + 4).toNat

end

end A297550.P15475968557059031143

/-! ## A297550.P13848473878711793860

`A297544(A000217(n+6)+7)`
-/

namespace A297550.P13848473878711793860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A000217 (n + 6) + 7).toNat

end

end A297550.P13848473878711793860

/-! ## A297550.P2954164442580274719

`A297544(eq[8, A131818(n+1)])`
-/

namespace A297550.P2954164442580274719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297550.P2954164442580274719

/-! ## A297550.P4268637717039163122

`A297544(A167499(n+6)-(n+5))`
-/

namespace A297550.P4268637717039163122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (A167499 (n + 6) - (n + 5 : ℤ)).toNat

end

end A297550.P4268637717039163122

/-!
# A297554: a(n) = a(n-2) + 4*a(n-3) - 4*a(n-5), where a(0) = 1, a(1) = 4, a(2) = 7, a(3) = 12, a(4) = 19, a(5) = 28.

The programs for A297554, the canonical program `A297554.P12922136060562677654` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297554 has offset 0).

The definition of A297554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+4*a(n-3)-4*a(n-5)` (program `A297554.P12922136060562677654`, by `A297554.P12922136060562677654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297554.P12922136060562677654

`a(n-2)+4*a(n-3)-4*a(n-5)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=12, a(4)=19, a(5)=28`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297554

/-- `a(n-2)+4*a(n-3)-4*a(n-5)` -/
def P12922136060562677654.Spec : Prop :=
  ∀ n, P12922136060562677654.a n = A297554 n

theorem P12922136060562677654.correct : P12922136060562677654.Spec := by
  intro n
  simp only [A297554]

end A297554

/-! ## A297554.P12065631862789346102

`ogf((1+4x+6x^2+4x^3-4x^4-8x^5)/(1-x^2-4x^3+4x^5))`
-/

namespace A297554.P12065631862789346102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 4, -4, -8] [1, 0, -1, -4, 0, 4] n

end

end A297554.P12065631862789346102

namespace A297554

/-- `ogf((1+4x+6x^2+4x^3-4x^4-8x^5)/(1-x^2-4x^3+4x^5))` -/
def P12065631862789346102.Spec : Prop :=
  ∀ n, P12065631862789346102.a n = A297554 n

end A297554

/-! ## A297554.P4648366609502144439

`A297551(∑[n+1])`
-/

namespace A297554.P4648366609502144439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297554.P4648366609502144439

namespace A297554

/-- `A297551(∑[n+1])` -/
def P4648366609502144439.Spec : Prop :=
  ∀ n, P4648366609502144439.a n = A297554 n

end A297554

/-! ## A297554.P4751547799801368665

`record[A297551(A133825(n))]`
-/

namespace A297554.P4751547799801368665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297551 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297554.P4751547799801368665

namespace A297554

/-- `record[A297551(A133825(n))]` -/
def P4751547799801368665.Spec : Prop :=
  ∀ n, P4751547799801368665.a n = A297554 n

end A297554

/-! ## A297554.P8716151037421677883

`record[A297551(∑[A108354(n)])]`
-/

namespace A297554.P8716151037421677883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297551 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297554.P8716151037421677883

namespace A297554

/-- `record[A297551(∑[A108354(n)])]` -/
def P8716151037421677883.Spec : Prop :=
  ∀ n, P8716151037421677883.a n = A297554 n

end A297554

/-!
# A297555: a(n) = a(n-1) + 16*a(n-3) - 16*a(n-4), where a(0) = 1, a(1) = 4, a(2) = 8, a(3) = 12, a(4) = 76.

The programs for A297555, the canonical program `A297555.P5849419323928937319` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297555 has offset 0).

The definition of A297555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+16*a(n-3)-16*a(n-4)` (program `A297555.P5849419323928937319`, by `A297555.P5849419323928937319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297555.P11641508853530613830

`ogf((1+3x+4x^2-12x^3+16x^4)/(1-x-16x^3+16x^4))`
-/

namespace A297555.P11641508853530613830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, -12, 16] [1, -1, 0, -16, 16] n

end

end A297555.P11641508853530613830

namespace A297555

/-- `ogf((1+3x+4x^2-12x^3+16x^4)/(1-x-16x^3+16x^4))` -/
def P11641508853530613830.Spec : Prop :=
  ∀ n, P11641508853530613830.a n = A297555 n

end A297555

/-! ## A297555.P5849419323928937319

`a(n-1)+16*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=12, a(4)=76`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297555

/-- `a(n-1)+16*a(n-3)-16*a(n-4)` -/
def P5849419323928937319.Spec : Prop :=
  ∀ n, P5849419323928937319.a n = A297555 n

theorem P5849419323928937319.correct : P5849419323928937319.Spec := by
  intro n
  simp only [A297555]

end A297555

/-! ## A297555.P11508966597465417877

`record[-(4*(a(n-4)+1))]` with `a(0)=1, a(1)=-3, a(2)=0, a(3)=4, a(4)=-3, a(5)=1`
-/

namespace A297555.P11508966597465417877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 0, 4, -3, 1] fun n f1 =>
  -(4 * (f1 (n - 4) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297555.P11508966597465417877

namespace A297555

/-- `record[-(4*(a(n-4)+1))]` -/
def P11508966597465417877.Spec : Prop :=
  ∀ n, P11508966597465417877.a n = A297555 n

end A297555

/-! ## A297555.P9049844685186404771

`record[and(3*2^n-2, ∑[(-4)^n])]`
-/

namespace A297555.P9049844685186404771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((3 * 2 ^ n : ℤ) - 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297555.P9049844685186404771

namespace A297555

/-- `record[and(3*2^n-2, ∑[(-4)^n])]` -/
def P9049844685186404771.Spec : Prop :=
  ∀ n, P9049844685186404771.a n = A297555 n

end A297555

/-! ## A297555.P273674422073710791

`record[a(n-1)-A000079(n)/A138380(n)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A297555.P273674422073710791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) - (A000079 n : ℚ) / (A138380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297555.P273674422073710791

namespace A297555

/-- `record[a(n-1)-A000079(n)/A138380(n)]` -/
def P273674422073710791.Spec : Prop :=
  ∀ n, P273674422073710791.a n = (A297555 n : ℚ)

end A297555

/-!
# A297556: a(n) = a(n-1) + 16*a(n-3) - 16*a(n-4), where a(0) = 1, a(1) = 4, a(2) = 7, a(3) = 19.

The programs for A297556, the canonical program `A297556.P5625780856379587844` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297556 has offset 0).

The definition of A297556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+16*a(n-3)-16*a(n-4)` (program `A297556.P5625780856379587844`, by `A297556.P5625780856379587844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297556.P5625780856379587844

`a(n-1)+16*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=19`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297556

/-- `a(n-1)+16*a(n-3)-16*a(n-4)` -/
def P5625780856379587844.Spec : Prop :=
  ∀ n, P5625780856379587844.a n = A297556 n

theorem P5625780856379587844.correct : P5625780856379587844.Spec := by
  intro n
  simp only [A297556]

end A297556

/-! ## A297556.P5038708620752343986

`ogf((1+5x+x^2-4x^3)/(1-x-16x^3+16x^4))`
-/

namespace A297556.P5038708620752343986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1, -4] [1, -1, 0, -16, 16] n

end

end A297556.P5038708620752343986

namespace A297556

/-- `ogf((1+5x+x^2-4x^3)/(1-x-16x^3+16x^4))` -/
def P5038708620752343986.Spec : Prop :=
  ∀ n, P5038708620752343986.a n = A297556 n

end A297556

/-! ## A297556.P6962540474615065270

`4*4*a(n-3)+3` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A297556.P6962540474615065270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 7] fun n a =>
  4 * (4 * a (n - 3)) + 3

end

end A297556.P6962540474615065270

namespace A297556

/-- `4*4*a(n-3)+3` -/
def P6962540474615065270.Spec : Prop :=
  ∀ n, (P6962540474615065270.a n : ℤ) = A297556 n

end A297556

/-! ## A297556.P7377109769737259897

`or(3, 4*4*a(n-3))` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A297556.P7377109769737259897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 7] fun n a =>
  Nat.lor 3 (4 * (4 * a (n - 3)))

end

end A297556.P7377109769737259897

namespace A297556

/-- `or(3, 4*4*a(n-3))` -/
def P7377109769737259897.Spec : Prop :=
  ∀ n, (P7377109769737259897.a n : ℤ) = A297556 n

end A297556

/-! ## A297556.P11909317057685567830

`xor(3, 4*4*a(n-3))` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A297556.P11909317057685567830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 7] fun n a =>
  Nat.xor 3 (4 * (4 * a (n - 3)))

end

end A297556.P11909317057685567830

namespace A297556

/-- `xor(3, 4*4*a(n-3))` -/
def P11909317057685567830.Spec : Prop :=
  ∀ n, (P11909317057685567830.a n : ℤ) = A297556 n

end A297556

/-! ## A297556.P2720095822717154239

`record[A138377(n)+∑[A137429(n)]]`
-/

namespace A297556.P2720095822717154239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297556.P2720095822717154239

namespace A297556

/-- `record[A138377(n)+∑[A137429(n)]]` -/
def P2720095822717154239.Spec : Prop :=
  ∀ n, P2720095822717154239.a n = A297556 n

end A297556

/-! ## A297556.P10123413945206907467

`record[A137426(n)+Δ[A137399(n)]]`
-/

namespace A297556.P10123413945206907467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137426 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297556.P10123413945206907467

namespace A297556

/-- `record[A137426(n)+Δ[A137399(n)]]` -/
def P10123413945206907467.Spec : Prop :=
  ∀ n, P10123413945206907467.a n = A297556 n

end A297556

/-!
# A297559: Number of maximum matchings in the n X n black bishop graph.

The programs for A297559, there is no canonical definition to state claims against.
-/

/-! ## A297559.P4911638585103103327

`A014242(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=8`
-/

namespace A297559.P4911638585103103327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 8] fun n a =>
  A014242 (a (n - 1) + a (n - 2)).toNat

end

end A297559.P4911638585103103327

/-!
# A297562: Number of maximum matchings in the n-halved cube graph.

The programs for A297562, there is no canonical definition to state claims against.
-/

/-! ## A297562.P16218749894525922262

`A208760(A132611(n)+1)`
-/

namespace A297562.P16218749894525922262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208760 (A132611 n + 1).toNat

end

end A297562.P16218749894525922262

/-!
# A297564: Number of maximum matchings in the n-Hanoi graph.

The programs for A297564, there is no canonical definition to state claims against.
-/

/-! ## A297564.P1159617175544084143

`A058582(3^n)`
-/

namespace A297564.P1159617175544084143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (3 ^ n)

end

end A297564.P1159617175544084143

/-!
# A297565: Number of maximum matchings in the n-triangular graph.

The programs for A297565, there is no canonical definition to state claims against.
-/

/-! ## A297565.P1691632273564201157

`A016095(eq[A003558(n), A135044(n+1)])`
-/

namespace A297565.P1691632273564201157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297565.P1691632273564201157

/-!
# A297566: Number of maximum matchings in the n X n white bishop graph.

The programs for A297566, there is no canonical definition to state claims against.
-/

/-! ## A297566.P8877030664760277287

`A286070(n+2)/A297559(n+2)`
-/

namespace A297566.P8877030664760277287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286070 (n + 2) : ℚ) / (A297559 (n + 2) : ℚ)

end

end A297566.P8877030664760277287

/-!
# A297568: Number of nonisomorphic proper colorings of partition star graph using four colors.

The programs for A297568, there is no canonical definition to state claims against.
-/

/-! ## A297568.P2587461505695649201

`A117659(A131883(n+1)*A162688(n+1))`
-/

namespace A297568.P2587461505695649201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117659 (A131883 (n + 1) * A162688 (n + 1)).toNat

end

end A297568.P2587461505695649201

/-! ## A297568.P9022615363193211990

`A211437(A149011(n+1))`
-/

namespace A297568.P9022615363193211990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211437 (A149011 (n + 1)).toNat

end

end A297568.P9022615363193211990

/-!
# A297569: Number of nonisomorphic proper colorings of partition star graph using five colors.

The programs for A297569, there is no canonical definition to state claims against.
-/

/-! ## A297569.P4138252110185739894

`A083950(A104721(2*n+1))*A104721(n)`
-/

namespace A297569.P4138252110185739894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (A104721 (2 * n + 1)).toNat * A104721 n

end

end A297569.P4138252110185739894

/-! ## A297569.P14654275766155736149

`∩[A069872(n+1), A003339(A178878(n+1))]`
-/

namespace A297569.P14654275766155736149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (A178878 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297569.P14654275766155736149

/-!
# A297571: Matula-Goebel numbers of fully unbalanced rooted trees.

The programs for A297571, there is no canonical definition to state claims against.
-/

/-! ## A297571.P15005016568327036234

`A276625(comp[39*n])`
-/

namespace A297571.P15005016568327036234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A297571.P15005016568327036234

/-! ## A297571.P744959875719816887

`∩[A276625(n+1), A326535(n+1)]`
-/

namespace A297571.P744959875719816887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297571.P744959875719816887

/-! ## A297571.P12543591324892799206

`∩[A276625(n+1), A390364(n+1)]`
-/

namespace A297571.P12543591324892799206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297571.P12543591324892799206

/-! ## A297571.P3594226756052436668

`record[A348066(n+1)%A321069(n+3)]`
-/

namespace A297571.P3594226756052436668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348066 (n + 1)) (A321069 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297571.P3594226756052436668

/-! ## A297571.P15009385337102585179

`record[A189023(2*n+5)*A276625(n+1)]`
-/

namespace A297571.P15009385337102585179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (2 * n + 5) * A276625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297571.P15009385337102585179

/-! ## A297571.P2951803772322337418

`record[A348066(A257175(A348553(n)))]`
-/

namespace A297571.P2951803772322337418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A257175 (A348553 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297571.P2951803772322337418

/-! ## A297571.P320808890227932283

`record[A348066(n+1)-A112315(A292505(n+2))]`
-/

namespace A297571.P320808890227932283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1) - A112315 (A292505 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297571.P320808890227932283

/-!
# A297573: Least positive integer m such that m*n divides F(m+n), where F(k) denotes the k-th Fibonacci number A000045(k).

The programs for A297573, there is no canonical definition to state claims against.
-/

/-! ## A297573.P11044067805964117016

`A002984(∑[floor(n²/6)]^5)`
-/

namespace A297573.P11044067805964117016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5).toNat

end

end A297573.P11044067805964117016

/-!
# A297575: Numbers whose sum of divisors is divisible by 10.

The programs for A297575, the canonical program `A297575.P5293567509015063131` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297575 has offset 1).

The definition of A297575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297575.P5293567509015063131

`eq[9, A039653(n)%10]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A297575

/-- `eq[9, A039653(n)%10]` -/
def P5293567509015063131.Spec : Prop :=
  ∀ n, (P5293567509015063131.a n : ℤ) = A297575 (n + 1)

theorem P5293567509015063131.correct : P5293567509015063131.Spec := by
  intro n
  simp only [A297575, Nat.add_sub_cancel]

end A297575

/-! ## A297575.P17397419666839657302

`eq[1, A105853(n+1)+1]+1`
-/

namespace A297575.P17397419666839657302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A297575.P17397419666839657302

namespace A297575

/-- `eq[1, A105853(n+1)+1]+1` -/
def P17397419666839657302.Spec : Prop :=
  ∀ n, (P17397419666839657302.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P3969388090001393896

`lt[A000203(n+1)%10, 1]+1`
-/

namespace A297575.P3969388090001393896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A297575.P3969388090001393896

namespace A297575

/-- `lt[A000203(n+1)%10, 1]+1` -/
def P3969388090001393896.Spec : Prop :=
  ∀ n, (P3969388090001393896.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P12456403582138382753

`eq[1, A105853(A028310(n))+1]`
-/

namespace A297575.P12456403582138382753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297575.P12456403582138382753

namespace A297575

/-- `eq[1, A105853(A028310(n))+1]` -/
def P12456403582138382753.Spec : Prop :=
  ∀ n, (P12456403582138382753.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P15179288287512521365

`eq[A037213(2*n), A227216(n)]`
-/

namespace A297575.P15179288287512521365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297575.P15179288287512521365

namespace A297575

/-- `eq[A037213(2*n), A227216(n)]` -/
def P15179288287512521365.Spec : Prop :=
  ∀ n, (P15179288287512521365.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P14738472014136807685

`eq[2*A227216(n), A093709(n)]`
-/

namespace A297575.P14738472014136807685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297575.P14738472014136807685

namespace A297575

/-- `eq[2*A227216(n), A093709(n)]` -/
def P14738472014136807685.Spec : Prop :=
  ∀ n, (P14738472014136807685.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P2521858735733036178

`∩[A028983(n+1), A274397(n+1)]`
-/

namespace A297575.P2521858735733036178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297575.P2521858735733036178

namespace A297575

/-- `∩[A028983(n+1), A274397(n+1)]` -/
def P2521858735733036178.Spec : Prop :=
  ∀ n, (P2521858735733036178.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P7266254805855131407

`∩[A183300(n+1), A274397(n+1)]`
-/

namespace A297575.P7266254805855131407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297575.P7266254805855131407

namespace A297575

/-- `∩[A183300(n+1), A274397(n+1)]` -/
def P7266254805855131407.Spec : Prop :=
  ∀ n, (P7266254805855131407.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P8180292780485615493

`eq[A227216(n)², A037213(A005843(n))]`
-/

namespace A297575.P8180292780485615493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297575.P8180292780485615493

namespace A297575

/-- `eq[A227216(n)², A037213(A005843(n))]` -/
def P8180292780485615493.Spec : Prop :=
  ∀ n, (P8180292780485615493.a n : ℤ) = A297575 (n + 1)

end A297575

/-! ## A297575.P2097251866168673072

`lt[A020485(A000203(n+1)), 1]+1`
-/

namespace A297575.P2097251866168673072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A297575.P2097251866168673072

namespace A297575

/-- `lt[A020485(A000203(n+1)), 1]+1` -/
def P2097251866168673072.Spec : Prop :=
  ∀ n, (P2097251866168673072.a n : ℤ) = A297575 (n + 1)

end A297575

/-!
# A297576: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1's.

The programs for A297576, there is no canonical definition to state claims against.
-/

/-! ## A297576.P17028158168817084413

`A297582(∑[4*n]+1)`
-/

namespace A297576.P17028158168817084413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297576.P17028158168817084413

/-! ## A297576.P6007136608415298204

`A297582(A001844(n))+A054900(n)`
-/

namespace A297576.P6007136608415298204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A001844 n).toNat + A054900 n

end

end A297576.P6007136608415298204

/-! ## A297576.P8542652830185222139

`gcd(A000038(n), A297582(A001844(n)))`
-/

namespace A297576.P8542652830185222139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297582 (A001844 n).toNat)

end

end A297576.P8542652830185222139

/-! ## A297576.P3922294579487478865

`lcm(A121238(n), A297582(A001844(n)))`
-/

namespace A297576.P3922294579487478865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121238 n) (A297582 (A001844 n).toNat)

end

end A297576.P3922294579487478865

/-! ## A297576.P14644676128632329655

`or(A000007(n), A297582(A001844(n)))`
-/

namespace A297576.P14644676128632329655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297582 (A001844 n).toNat)

end

end A297576.P14644676128632329655

/-!
# A297577: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297577, the canonical program `A297577.P12828897829185604383` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297577 has offset 1).

The definition of A297577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297577.P12828897829185604383

`ogf((3+8x+19x^2-13x^3-25x^4-8x^5)/(1-x-2x^2-19x^3-4x^4+17x^5+8x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297577

/-- `ogf((3+8x+19x^2-13x^3-25x^4-8x^5)/(1-x-2x^2-19x^3-4x^4+17x^5+8x^6))` -/
def P12828897829185604383.Spec : Prop :=
  ∀ n, P12828897829185604383.a n = A297577 (n + 1)

theorem P12828897829185604383.correct : P12828897829185604383.Spec := by
  intro n
  simp only [A297577, Nat.add_sub_cancel]

end A297577

/-! ## A297577.P16434532270758999676

`A297582(∑[n+3]+1)`
-/

namespace A297577.P16434532270758999676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297577.P16434532270758999676

namespace A297577

/-- `A297582(∑[n+3]+1)` -/
def P16434532270758999676.Spec : Prop :=
  ∀ n, P16434532270758999676.a n = A297577 (n + 1)

end A297577

/-! ## A297577.P1392659721510446419

`A297582(A034856(n+2))%A297581(n+1)`
-/

namespace A297577.P1392659721510446419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297582 (A034856 (n + 2)).toNat) (A297581 (n + 1))

end

end A297577.P1392659721510446419

namespace A297577

/-- `A297582(A034856(n+2))%A297581(n+1)` -/
def P1392659721510446419.Spec : Prop :=
  ∀ n, P1392659721510446419.a n = A297577 (n + 1)

end A297577

/-! ## A297577.P12904931961675215491

`A297582(A055999(n)+4)%A047911(n+3)`
-/

namespace A297577.P12904931961675215491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297582 (A055999 n + 4).toNat) (A047911 (n + 3))

end

end A297577.P12904931961675215491

namespace A297577

/-- `A297582(A055999(n)+4)%A047911(n+3)` -/
def P12904931961675215491.Spec : Prop :=
  ∀ n, P12904931961675215491.a n = A297577 (n + 1)

end A297577

/-! ## A297577.P5110869653364442010

`lcm(A153881(n+1), A297582(A055999(n)+4))`
-/

namespace A297577.P5110869653364442010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A297582 (A055999 n + 4).toNat)

end

end A297577.P5110869653364442010

namespace A297577

/-- `lcm(A153881(n+1), A297582(A055999(n)+4))` -/
def P5110869653364442010.Spec : Prop :=
  ∀ n, (P5110869653364442010.a n : ℤ) = A297577 (n + 1)

end A297577

/-!
# A297578: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297578, there is no canonical definition to state claims against.
-/

/-! ## A297578.P15108304344254917767

`A297582(A141214(n+1))`
-/

namespace A297578.P15108304344254917767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A141214 (n + 1)).toNat

end

end A297578.P15108304344254917767

/-! ## A297578.P11275333848959246922

`A297582(A027379(n+2))`
-/

namespace A297578.P11275333848959246922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A027379 (n + 2)).toNat

end

end A297578.P11275333848959246922

/-! ## A297578.P8614477240328936759

`A297582(A055998(n+2))`
-/

namespace A297578.P8614477240328936759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A055998 (n + 2)).toNat

end

end A297578.P8614477240328936759

/-! ## A297578.P1882742565273320720

`A297582(A056000(n)+7)`
-/

namespace A297578.P1882742565273320720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A056000 n + 7).toNat

end

end A297578.P1882742565273320720

/-! ## A297578.P1098313616344943298

`A297582(A046691(n+2)+1)`
-/

namespace A297578.P1098313616344943298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A046691 (n + 2) + 1).toNat

end

end A297578.P1098313616344943298

/-!
# A297579: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297579, there is no canonical definition to state claims against.
-/

/-! ## A297579.P135934392814684727

`A297582(A046691(n+3))`
-/

namespace A297579.P135934392814684727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A046691 (n + 3)).toNat

end

end A297579.P135934392814684727

/-! ## A297579.P2971817719624815584

`A297582(A060577(n+4))`
-/

namespace A297579.P2971817719624815584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A060577 (n + 4)).toNat

end

end A297579.P2971817719624815584

/-! ## A297579.P13967848277611654945

`A297582(eq[4, A193592(n)])`
-/

namespace A297579.P13967848277611654945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297579.P13967848277611654945

/-! ## A297579.P12308094172797357174

`A297582(A055999(n+2)+2)`
-/

namespace A297579.P12308094172797357174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A055999 (n + 2) + 2).toNat

end

end A297579.P12308094172797357174

/-! ## A297579.P9930301589534831528

`A297582(A000124(n+5)-5)`
-/

namespace A297579.P9930301589534831528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000124 (n + 5) - 5).toNat

end

end A297579.P9930301589534831528

/-!
# A297580: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297580, there is no canonical definition to state claims against.
-/

/-! ## A297580.P14046771270283686378

`A297582(A052905(n+3))`
-/

namespace A297580.P14046771270283686378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A052905 (n + 3)).toNat

end

end A297580.P14046771270283686378

/-! ## A297580.P8923834797862006127

`A297582(eq[3, A219347(n)])`
-/

namespace A297580.P8923834797862006127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297580.P8923834797862006127

/-! ## A297580.P11855264710550776389

`A297582(eq[5, A193592(n)])`
-/

namespace A297580.P11855264710550776389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297580.P11855264710550776389

/-! ## A297580.P2700218165498041824

`A297582(eq[8, A185782(n+1)])`
-/

namespace A297580.P2700218165498041824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297580.P2700218165498041824

/-! ## A297580.P6620554406895556063

`A297582(Δ[Δ[A006504(n+1)]])`
-/

namespace A297580.P6620554406895556063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (f1 (n + 1) - f1 n).toNat

end

end A297580.P6620554406895556063

/-!
# A297581: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297581, there is no canonical definition to state claims against.
-/

/-! ## A297581.P11555071468703129500

`A297582(A055999(n+4))`
-/

namespace A297581.P11555071468703129500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A055999 (n + 4)).toNat

end

end A297581.P11555071468703129500

/-! ## A297581.P13341481470758333474

`A297582(eq[4, A219347(n)])`
-/

namespace A297581.P13341481470758333474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297581.P13341481470758333474

/-! ## A297581.P7765915433044285539

`A297582(eq[6, A193592(n)])`
-/

namespace A297581.P7765915433044285539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297581.P7765915433044285539

/-! ## A297581.P2579275069643471407

`A297582(A155212(n+4)-(n+6))`
-/

namespace A297581.P2579275069643471407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A155212 (n + 4) - (n + 6 : ℤ)).toNat

end

end A297581.P2579275069643471407

/-! ## A297581.P10898139762980420532

`A297582(A167499(n+4)+2*(n+1))`
-/

namespace A297581.P10898139762980420532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A297581.P10898139762980420532

/-!
# A297583: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297583, the canonical program `A297583.P17213916977199837631` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297583 has offset 1).

The definition of A297583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297583.P7982272101237613514

`ogf((1+4x+6x^2+2x^3)/(1-x-4x^3-2x^4))`
-/

namespace A297583.P7982272101237613514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 2] [1, -1, 0, -4, -2] n

end

end A297583.P7982272101237613514

namespace A297583

/-- `ogf((1+4x+6x^2+2x^3)/(1-x-4x^3-2x^4))` -/
def P7982272101237613514.Spec : Prop :=
  ∀ n, P7982272101237613514.a n = A297583 (n + 1)

end A297583

/-! ## A297583.P17213916977199837631

`a(n-1)+4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=17`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297583

/-- `a(n-1)+4*a(n-3)+2*a(n-4)` -/
def P17213916977199837631.Spec : Prop :=
  ∀ n, (P17213916977199837631.a n : ℤ) = A297583 (n + 1)

theorem P17213916977199837631.correct : P17213916977199837631.Spec := by
  intro n
  simp only [A297583, Nat.add_sub_cancel]

end A297583

/-! ## A297583.P17385227567985109343

`A297582(∑[n+1]+2)`
-/

namespace A297583.P17385227567985109343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297583.P17385227567985109343

namespace A297583

/-- `A297582(∑[n+1]+2)` -/
def P17385227567985109343.Spec : Prop :=
  ∀ n, P17385227567985109343.a n = A297583 (n + 1)

end A297583

/-! ## A297583.P15769033483250644662

`or(1, A297582(A133263(n+1)))`
-/

namespace A297583.P15769033483250644662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297582 (A133263 (n + 1)).toNat)

end

end A297583.P15769033483250644662

namespace A297583

/-- `or(1, A297582(A133263(n+1)))` -/
def P15769033483250644662.Spec : Prop :=
  ∀ n, P15769033483250644662.a n = A297583 (n + 1)

end A297583

/-! ## A297583.P9253116571294602018

`record[gcd(1-A002262(n), A297582(n+1))]`
-/

namespace A297583.P9253116571294602018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002262 n) (A297582 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297583.P9253116571294602018

namespace A297583

/-- `record[gcd(1-A002262(n), A297582(n+1))]` -/
def P9253116571294602018.Spec : Prop :=
  ∀ n, (P9253116571294602018.a n : ℤ) = A297583 (n + 1)

end A297583

/-!
# A297584: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1's.

The programs for A297584, the canonical program `A297584.P5825181811726887904` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297584 has offset 1).

The definition of A297584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297584.P5825181811726887904

`ogf((1+8x+26x^2+19x^3-10x^4-23x^5-13x^6-x^7)/(1-x-x^2-8x^3-18x^4-x^5+11x^6+12x^7+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297584

/-- `ogf((1+8x+26x^2+19x^3-10x^4-23x^5-13x^6-x^7)/(1-x-x^2-8x^3-18x^4-x^5+11x^6+12x^7+x^8))` -/
def P5825181811726887904.Spec : Prop :=
  ∀ n, P5825181811726887904.a n = A297584 (n + 1)

theorem P5825181811726887904.correct : P5825181811726887904.Spec := by
  intro n
  simp only [A297584, Nat.add_sub_cancel]

end A297584

/-! ## A297584.P16921949139531101402

`A297582(∑[n+2]+4)`
-/

namespace A297584.P16921949139531101402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297584.P16921949139531101402

namespace A297584

/-- `A297582(∑[n+2]+4)` -/
def P16921949139531101402.Spec : Prop :=
  ∀ n, P16921949139531101402.a n = A297584 (n + 1)

end A297584

/-! ## A297584.P3753513980253491239

`A297582(A167614(n+1))^ceil(acot(n))`
-/

namespace A297584.P3753513980253491239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297582 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A297584.P3753513980253491239

namespace A297584

/-- `A297582(A167614(n+1))^ceil(acot(n))` -/
def P3753513980253491239.Spec : Prop :=
  ∀ n, P3753513980253491239.a n = (A297584 (n + 1) : ℚ)

end A297584

/-! ## A297584.P3613603200767938439

`A297582(A167614(n+1))+A191928(n)`
-/

namespace A297584.P3613603200767938439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167614 (n + 1)).toNat + A191928 n

end

end A297584.P3613603200767938439

namespace A297584

/-- `A297582(A167614(n+1))+A191928(n)` -/
def P3613603200767938439.Spec : Prop :=
  ∀ n, P3613603200767938439.a n = A297584 (n + 1)

end A297584

/-! ## A297584.P9150327580110393902

`A139551(n)*A297582(A167614(n+1))`
-/

namespace A297584.P9150327580110393902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A297582 (A167614 (n + 1)).toNat

end

end A297584.P9150327580110393902

namespace A297584

/-- `A139551(n)*A297582(A167614(n+1))` -/
def P9150327580110393902.Spec : Prop :=
  ∀ n, P9150327580110393902.a n = A297584 (n + 1)

end A297584

/-!
# A297585: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297585, there is no canonical definition to state claims against.
-/

/-! ## A297585.P9010310350033204448

`A297582(A141214(n)+7)`
-/

namespace A297585.P9010310350033204448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A141214 n + 7).toNat

end

end A297585.P9010310350033204448

/-! ## A297585.P16780271845319474870

`A297582(A052905(n)+9)`
-/

namespace A297585.P16780271845319474870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A052905 n + 9).toNat

end

end A297585.P16780271845319474870

/-! ## A297585.P13955653601932965383

`A297582(A055999(n)+10)`
-/

namespace A297585.P13955653601932965383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A055999 n + 10).toNat

end

end A297585.P13955653601932965383

/-! ## A297585.P17438247879649794584

`A297582(A167614(n+2)+1)`
-/

namespace A297585.P17438247879649794584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167614 (n + 2) + 1).toNat

end

end A297585.P17438247879649794584

/-! ## A297585.P5296425003172748101

`A297582(A166136(n+2)-2)`
-/

namespace A297585.P5296425003172748101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A166136 (n + 2) - 2).toNat

end

end A297585.P5296425003172748101

/-!
# A297586: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297586, there is no canonical definition to state claims against.
-/

/-! ## A297586.P5889182694487319319

`A297582(A167499(n+3))`
-/

namespace A297586.P5889182694487319319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167499 (n + 3)).toNat

end

end A297586.P5889182694487319319

/-! ## A297586.P7613390609673294069

`A297582(A056000(n)+15)`
-/

namespace A297586.P7613390609673294069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A056000 n + 15).toNat

end

end A297586.P7613390609673294069

/-! ## A297586.P3587805705807508188

`A297582(A000124(n+4)+4)`
-/

namespace A297586.P3587805705807508188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000124 (n + 4) + 4).toNat

end

end A297586.P3587805705807508188

/-! ## A297586.P18144173315461348722

`A297582(A000217(n+4)+5)`
-/

namespace A297586.P18144173315461348722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000217 (n + 4) + 5).toNat

end

end A297586.P18144173315461348722

/-! ## A297586.P13788780766834020552

`A297582(A034856(n+3)+7)`
-/

namespace A297586.P13788780766834020552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A034856 (n + 3) + 7).toNat

end

end A297586.P13788780766834020552

/-!
# A297587: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297587, there is no canonical definition to state claims against.
-/

/-! ## A297587.P5110191129735698634

`A297582(A166136(n+4))`
-/

namespace A297587.P5110191129735698634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A166136 (n + 4)).toNat

end

end A297587.P5110191129735698634

/-! ## A297587.P1717181336098725033

`A297582(A133263(n+5)+4)`
-/

namespace A297587.P1717181336098725033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A133263 (n + 5) + 4).toNat

end

end A297587.P1717181336098725033

/-! ## A297587.P10509474510333890874

`A297582(A000217(n+5)+6)`
-/

namespace A297587.P10509474510333890874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000217 (n + 5) + 6).toNat

end

end A297587.P10509474510333890874

/-! ## A297587.P17546115283033793826

`A297582(A000096(n+5)-(n-1))`
-/

namespace A297587.P17546115283033793826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A297587.P17546115283033793826

/-! ## A297587.P5818265852975625415

`A297582(A000124(n+6)-(n+1))`
-/

namespace A297587.P5818265852975625415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A297587.P5818265852975625415

/-!
# A297588: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 4 neighboring 1s.

The programs for A297588, there is no canonical definition to state claims against.
-/

/-! ## A297588.P8114101939220765538

`A297582(eq[11, A066657(n)])`
-/

namespace A297588.P8114101939220765538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297588.P8114101939220765538

/-! ## A297588.P15064971434429633234

`A297582(A167499(n+5)+2)`
-/

namespace A297588.P15064971434429633234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167499 (n + 5) + 2).toNat

end

end A297588.P15064971434429633234

/-! ## A297588.P141677531911933636

`A297582(A167614(n+5)+4)`
-/

namespace A297588.P141677531911933636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A167614 (n + 5) + 4).toNat

end

end A297588.P141677531911933636

/-! ## A297588.P1742648335480260464

`A297582(eq[8, A131818(n+1)])`
-/

namespace A297588.P1742648335480260464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297588.P1742648335480260464

/-! ## A297588.P12809837631326710663

`A297582(A155212(n+4)-2*n)`
-/

namespace A297588.P12809837631326710663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297582 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A297588.P12809837631326710663

/-!
# A297589: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1's.

The programs for A297589, there is no canonical definition to state claims against.
-/

/-! ## A297589.P5495233152209209923

`A297595(∑[4*n]+1)`
-/

namespace A297589.P5495233152209209923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297589.P5495233152209209923

/-! ## A297589.P11988532491772235485

`record[gcd(A114327(n), A297595(n+1))]`
-/

namespace A297589.P11988532491772235485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297595 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297589.P11988532491772235485

/-! ## A297589.P6442168286369308286

`A326540(n)+A297595(A001844(n))`
-/

namespace A297589.P6442168286369308286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n + A297595 (A001844 n).toNat

end

end A297589.P6442168286369308286

/-! ## A297589.P9874234023507862122

`A297595(A001844(n))%A000187(n)`
-/

namespace A297589.P9874234023507862122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297595 (A001844 n).toNat) (A000187 n)

end

end A297589.P9874234023507862122

/-! ## A297589.P18222234100273069080

`gcd(A000038(n), A297595(A001844(n)))`
-/

namespace A297589.P18222234100273069080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297595 (A001844 n).toNat)

end

end A297589.P18222234100273069080

/-!
# A297590: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297590, the canonical program `A297590.P3451501224092702226` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297590 has offset 0).

The definition of A297590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297590.P3451501224092702226

`ogf((1+2x+4x^2-8x^4-8x^5)/(1-x-2x^2-10x^3-4x^4+8x^5+8x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297590

/-- `ogf((1+2x+4x^2-8x^4-8x^5)/(1-x-2x^2-10x^3-4x^4+8x^5+8x^6))` -/
def P3451501224092702226.Spec : Prop :=
  ∀ n, P3451501224092702226.a n = A297590 n

theorem P3451501224092702226.correct : P3451501224092702226.Spec := by
  intro n
  simp only [A297590]

end A297590

/-! ## A297590.P7639092281436512498

`A297595(∑[n+2]-1)`
-/

namespace A297590.P7639092281436512498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A297590.P7639092281436512498

namespace A297590

/-- `A297595(∑[n+2]-1)` -/
def P7639092281436512498.Spec : Prop :=
  ∀ n, P7639092281436512498.a n = A297590 n

end A297590

/-! ## A297590.P7006939936328257075

`A297595(A034856(n+1))%A041768(n)`
-/

namespace A297590.P7006939936328257075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297595 (A034856 (n + 1)).toNat) (A041768 n)

end

end A297590.P7006939936328257075

namespace A297590

/-- `A297595(A034856(n+1))%A041768(n)` -/
def P7006939936328257075.Spec : Prop :=
  ∀ n, P7006939936328257075.a n = A297590 n

end A297590

/-! ## A297590.P1686386934708322229

`A285373(2*n+1)*A297595(A034856(n+1))`
-/

namespace A297590.P1686386934708322229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (2 * n + 1) * A297595 (A034856 (n + 1)).toNat

end

end A297590.P1686386934708322229

namespace A297590

/-- `A285373(2*n+1)*A297595(A034856(n+1))` -/
def P1686386934708322229.Spec : Prop :=
  ∀ n, P1686386934708322229.a n = A297590 n

end A297590

/-! ## A297590.P16432301459459631056

`A007318(A000217(n))*A297595(A034856(n+1))`
-/

namespace A297590.P16432301459459631056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A297595 (A034856 (n + 1)).toNat

end

end A297590.P16432301459459631056

namespace A297590

/-- `A007318(A000217(n))*A297595(A034856(n+1))` -/
def P16432301459459631056.Spec : Prop :=
  ∀ n, P16432301459459631056.a n = A297590 n

end A297590

/-!
# A297591: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297591, the canonical program `A297591.P2715894768592421558` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297591 has offset 0).

The definition of A297591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297591.P2715894768592421558

`ogf((1+3x+3x^2+2x^3-16x^4-4x^6-4x^7-x^8)/(1-x-6x^2-10x^3-3x^4+13x^5-3x^6+3x^7+4x^8+x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297591

/-- `ogf((1+3x+3x^2+2x^3-16x^4-4x^6-4x^7-x^8)/(1-x-6x^2-10x^3-3x^4+13x^5-3x^6+3x^7+4x^8+x^9))` -/
def P2715894768592421558.Spec : Prop :=
  ∀ n, P2715894768592421558.a n = A297591 n

theorem P2715894768592421558.correct : P2715894768592421558.Spec := by
  intro n
  simp only [A297591]

end A297591

/-! ## A297591.P13785884029767543228

`A297595(∑[n+3])`
-/

namespace A297591.P13785884029767543228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297591.P13785884029767543228

namespace A297591

/-- `A297595(∑[n+3])` -/
def P13785884029767543228.Spec : Prop :=
  ∀ n, P13785884029767543228.a n = A297591 n

end A297591

/-! ## A297591.P7187067906859111456

`record[A297595(A055998(A002260(n+1)))]`
-/

namespace A297591.P7187067906859111456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A055998 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297591.P7187067906859111456

namespace A297591

/-- `record[A297595(A055998(A002260(n+1)))]` -/
def P7187067906859111456.Spec : Prop :=
  ∀ n, P7187067906859111456.a n = A297591 n

end A297591

/-! ## A297591.P8203498028008660485

`record[A297595(A055998(A256440(n+1)))]`
-/

namespace A297591.P8203498028008660485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A055998 (A256440 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297591.P8203498028008660485

namespace A297591

/-- `record[A297595(A055998(A256440(n+1)))]` -/
def P8203498028008660485.Spec : Prop :=
  ∀ n, P8203498028008660485.a n = A297591 n

end A297591

/-! ## A297591.P7299706076049111348

`record[A297595(A055998(A269526(n+1)))]`
-/

namespace A297591.P7299706076049111348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A055998 (A269526 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297591.P7299706076049111348

namespace A297591

/-- `record[A297595(A055998(A269526(n+1)))]` -/
def P7299706076049111348.Spec : Prop :=
  ∀ n, P7299706076049111348.a n = A297591 n

end A297591

/-!
# A297592: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297592, there is no canonical definition to state claims against.
-/

/-! ## A297592.P193816011430443218

`A297595(∑[n+5]+6)`
-/

namespace A297592.P193816011430443218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A297592.P193816011430443218

/-! ## A297592.P11793943278415590186

`or(char[1], A297595(A046691(n+3)))`
-/

namespace A297592.P11793943278415590186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297595 (A046691 (n + 3)).toNat)

end

end A297592.P11793943278415590186

/-! ## A297592.P3301957208701917845

`A297595(A046691(n+3))+A000007(n+1)`
-/

namespace A297592.P3301957208701917845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A297592.P3301957208701917845

/-! ## A297592.P8045775037609974249

`A297595(A046691(n+3))+A000038(n+1)`
-/

namespace A297592.P8045775037609974249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A046691 (n + 3)).toNat + A000038 (n + 1)

end

end A297592.P8045775037609974249

/-! ## A297592.P13384954558711715392

`A297595(A046691(n+3))+char[A000217(n+11)]`
-/

namespace A297592.P13384954558711715392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 11)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A297592.P13384954558711715392

/-!
# A297593: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297593, there is no canonical definition to state claims against.
-/

/-! ## A297593.P10698383888932480526

`A297595(∑[n+6]+10)`
-/

namespace A297593.P10698383888932480526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A297593.P10698383888932480526

/-! ## A297593.P16956071603220400667

`or(char[1], A297595(A000096(n+5)-4))`
-/

namespace A297593.P16956071603220400667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297595 (A000096 (n + 5) - 4).toNat)

end

end A297593.P16956071603220400667

/-! ## A297593.P5007672890638124790

`A297595(A000096(n+5)-4)+A185037(n)`
-/

namespace A297593.P5007672890638124790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A000096 (n + 5) - 4).toNat + A185037 n

end

end A297593.P5007672890638124790

/-! ## A297593.P17304830441136142320

`A001221(A005384(n+1))*A297595(A000096(n+5)-4)`
-/

namespace A297593.P17304830441136142320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005384 (n + 1)).toNat * A297595 (A000096 (n + 5) - 4).toNat

end

end A297593.P17304830441136142320

/-! ## A297593.P3383385099616920609

`A014963(30*(n+1)²)*A297595(A000096(n+5)-4)`
-/

namespace A297593.P3383385099616920609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * (n + 1) ^ 2) * A297595 (A000096 (n + 5) - 4).toNat

end

end A297593.P3383385099616920609

/-!
# A297594: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297594, there is no canonical definition to state claims against.
-/

/-! ## A297594.P14229692899627378863

`A297595(A055999(n+4))`
-/

namespace A297594.P14229692899627378863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A055999 (n + 4)).toNat

end

end A297594.P14229692899627378863

/-! ## A297594.P15559858951803904001

`A297595(eq[6, A193592(n)])`
-/

namespace A297594.P15559858951803904001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297594.P15559858951803904001

/-! ## A297594.P1813883546032103634

`A297595(eq[10, A185782(n+1)])`
-/

namespace A297594.P1813883546032103634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297594.P1813883546032103634

/-! ## A297594.P5561146188439536061

`A297595(eq[32, A057728(n+1)])`
-/

namespace A297594.P5561146188439536061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297594.P5561146188439536061

/-! ## A297594.P12022485273186201660

`A297595(eq[7, A200370(n+1)])`
-/

namespace A297594.P12022485273186201660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297594.P12022485273186201660

/-!
# A297595: T(n,k) = Number of n X k 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297595, there is no canonical definition to state claims against.
-/

/-! ## A297595.P9075292258613952300

`A297395(n+1)+A115859(A331315(n))`
-/

namespace A297595.P9075292258613952300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (n + 1) + A115859 (A331315 n).toNat

end

end A297595.P9075292258613952300

/-! ## A297595.P3704542450539058117

`A269172(A297395(n+1)^Δ[A269172(n+1)])`
-/

namespace A297595.P3704542450539058117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (SequenceMachineLib.roundAway ((A297395 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A297595.P3704542450539058117

/-! ## A297595.P3376282386976240296

`A269172(A297395(n+1))^A007318(A001497(n))`
-/

namespace A297595.P3376282386976240296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269172 (A297395 (n + 1)).toNat : ℚ) ^ (A007318 (A001497 n).toNat : ℤ)

end

end A297595.P3376282386976240296

/-! ## A297595.P8092631840532668745

`A269172(A297395(n+1))^A007318(A189804(n))`
-/

namespace A297595.P8092631840532668745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269172 (A297395 (n + 1)).toNat : ℚ) ^ (A007318 (A189804 n).toNat : ℤ)

end

end A297595.P8092631840532668745

/-!
# A297596: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297596, the canonical program `A297596.P15619187806610532691` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297596 has offset 1).

The definition of A297596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297596.P15619187806610532691

`ogf((1+8x+15x^2+7x^3-8x^4-14x^5-6x^6)/(1-x-x^2-8x^3-7x^4+8x^6+6x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A297596

/-- `ogf((1+8x+15x^2+7x^3-8x^4-14x^5-6x^6)/(1-x-x^2-8x^3-7x^4+8x^6+6x^7))` -/
def P15619187806610532691.Spec : Prop :=
  ∀ n, P15619187806610532691.a n = A297596 (n + 1)

theorem P15619187806610532691.correct : P15619187806610532691.Spec := by
  intro n
  simp only [A297596, Nat.add_sub_cancel]

end A297596

/-! ## A297596.P3532086551745854049

`A297595(∑[n+2]+4)`
-/

namespace A297596.P3532086551745854049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297596.P3532086551745854049

namespace A297596

/-- `A297595(∑[n+2]+4)` -/
def P3532086551745854049.Spec : Prop :=
  ∀ n, P3532086551745854049.a n = A297596 (n + 1)

end A297596

/-! ## A297596.P10833569114222763381

`or(1, A297595(A167614(n+1)))`
-/

namespace A297596.P10833569114222763381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297595 (A167614 (n + 1)).toNat)

end

end A297596.P10833569114222763381

namespace A297596

/-- `or(1, A297595(A167614(n+1)))` -/
def P10833569114222763381.Spec : Prop :=
  ∀ n, P10833569114222763381.a n = A297596 (n + 1)

end A297596

/-! ## A297596.P15803577432957231398

`A297595(A167614(n+1))+A185246(n)`
-/

namespace A297596.P15803577432957231398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A167614 (n + 1)).toNat + A185246 n

end

end A297596.P15803577432957231398

namespace A297596

/-- `A297595(A167614(n+1))+A185246(n)` -/
def P15803577432957231398.Spec : Prop :=
  ∀ n, P15803577432957231398.a n = A297596 (n + 1)

end A297596

/-! ## A297596.P6182912394233356340

`A297595(A167614(n+1))%A041768(n)`
-/

namespace A297596.P6182912394233356340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297595 (A167614 (n + 1)).toNat) (A041768 n)

end

end A297596.P6182912394233356340

namespace A297596

/-- `A297595(A167614(n+1))%A041768(n)` -/
def P6182912394233356340.Spec : Prop :=
  ∀ n, P6182912394233356340.a n = A297596 (n + 1)

end A297596

/-!
# A297597: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297597, there is no canonical definition to state claims against.
-/

/-! ## A297597.P10597772125672655000

`A297595(A141214(n)+7)`
-/

namespace A297597.P10597772125672655000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A141214 n + 7).toNat

end

end A297597.P10597772125672655000

/-! ## A297597.P2638838676163090970

`A297595(A052905(n)+9)`
-/

namespace A297597.P2638838676163090970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A052905 n + 9).toNat

end

end A297597.P2638838676163090970

/-! ## A297597.P9712332915587390053

`A297595(A055999(n)+10)`
-/

namespace A297597.P9712332915587390053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A055999 n + 10).toNat

end

end A297597.P9712332915587390053

/-! ## A297597.P13025006640606217932

`A297595(A167614(n+2)+1)`
-/

namespace A297597.P13025006640606217932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A167614 (n + 2) + 1).toNat

end

end A297597.P13025006640606217932

/-! ## A297597.P17416696531687756167

`A297595(A080036(A167614(n+1)))`
-/

namespace A297597.P17416696531687756167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A297597.P17416696531687756167

/-!
# A297598: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297598, there is no canonical definition to state claims against.
-/

/-! ## A297598.P2599069181930083695

`A297595(A167499(n+3))`
-/

namespace A297598.P2599069181930083695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A167499 (n + 3)).toNat

end

end A297598.P2599069181930083695

/-! ## A297598.P974179250410672939

`A297595(A288937(n+7))`
-/

namespace A297598.P974179250410672939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A288937 (n + 7)).toNat

end

end A297598.P974179250410672939

/-! ## A297598.P10665329781574761130

`A297595(A056000(n)+15)`
-/

namespace A297598.P10665329781574761130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A056000 n + 15).toNat

end

end A297598.P10665329781574761130

/-! ## A297598.P9808121909460708958

`A297595(∑[A020705(n)]+11)`
-/

namespace A297598.P9808121909460708958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A297598.P9808121909460708958

/-! ## A297598.P12099622638534363795

`A297595(A034856(n+3)+7)`
-/

namespace A297598.P12099622638534363795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A034856 (n + 3) + 7).toNat

end

end A297598.P12099622638534363795

/-!
# A297599: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 or 5 neighboring 1s.

The programs for A297599, there is no canonical definition to state claims against.
-/

/-! ## A297599.P11444083295248646154

`A297595(A133263(n+5)+4)`
-/

namespace A297599.P11444083295248646154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A133263 (n + 5) + 4).toNat

end

end A297599.P11444083295248646154

/-! ## A297599.P16019954183427542317

`A297595(A000124(n+5)+5)`
-/

namespace A297599.P16019954183427542317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A000124 (n + 5) + 5).toNat

end

end A297599.P16019954183427542317

/-! ## A297599.P9785046234903755059

`A297595(A000217(n+5)+6)`
-/

namespace A297599.P9785046234903755059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A000217 (n + 5) + 6).toNat

end

end A297599.P9785046234903755059

/-! ## A297599.P16234898757427388496

`A297595(A161680(n+6)+6)`
-/

namespace A297599.P16234898757427388496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A161680 (n + 6) + 6).toNat

end

end A297599.P16234898757427388496

/-! ## A297599.P6488685383258737901

`A297595(A000096(n+5)-(n-1))`
-/

namespace A297599.P6488685383258737901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A297599.P6488685383258737901

