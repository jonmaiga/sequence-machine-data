import SequenceMachineLib.Basic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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

/-!
# A276300: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276300, the canonical program `A276300.P14579686435379745387` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276300 has offset 1).

The definition of A276300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276300.P14579686435379745387

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=5, a(1)=11, a(2)=45, a(3)=173`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276300

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P14579686435379745387.Spec : Prop :=
  ∀ n, P14579686435379745387.a n = A276300 (n + 1)

theorem P14579686435379745387.correct : P14579686435379745387.Spec := by
  intro n
  simp only [A276300, Nat.add_sub_cancel]

end A276300

/-! ## A276300.P7842444912598248503

`2-(a(n-1)-A208428(n+1))` with `a(0)=5`
-/

namespace A276300.P7842444912598248503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 - (a (n - 1) - A208428 (n + 1))

end

end A276300.P7842444912598248503

namespace A276300

/-- `2-(a(n-1)-A208428(n+1))` -/
def P7842444912598248503.Spec : Prop :=
  ∀ n, P7842444912598248503.a n = A276300 (n + 1)

end A276300

/-! ## A276300.P2728428460249962035

`A077854(2*n+1)+A123344(2*n)+A040001(n)`
-/

namespace A276300.P2728428460249962035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (2 * n + 1) + (A123344 (2 * n) + A040001 n)

end

end A276300.P2728428460249962035

namespace A276300

/-- `A077854(2*n+1)+A123344(2*n)+A040001(n)` -/
def P2728428460249962035.Spec : Prop :=
  ∀ n, P2728428460249962035.a n = A276300 (n + 1)

end A276300

/-! ## A276300.P8556378882777995296

`C(3, C(3, n²))+Δ[A122229(n)]`
-/

namespace A276300.P8556378882777995296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (Nat.choose 3 (n ^ 2)) : ℤ) + (f1 (n + 1) - f1 n)

end

end A276300.P8556378882777995296

namespace A276300

/-- `C(3, C(3, n²))+Δ[A122229(n)]` -/
def P8556378882777995296.Spec : Prop :=
  ∀ n, P8556378882777995296.a n = A276300 (n + 1)

end A276300

/-! ## A276300.P5295341268483368022

`A153881(n+1)+Δ[A122229(n)]+2`
-/

namespace A276300.P5295341268483368022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A276300.P5295341268483368022

namespace A276300

/-- `A153881(n+1)+Δ[A122229(n)]+2` -/
def P5295341268483368022.Spec : Prop :=
  ∀ n, P5295341268483368022.a n = A276300 (n + 1)

end A276300

/-!
# A276301: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276301, there is no canonical definition to state claims against.
-/

/-! ## A276301.P8191151433954514641

`A276299(A052905(n)+9)`
-/

namespace A276301.P8191151433954514641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A052905 n + 9).toNat

end

end A276301.P8191151433954514641

/-! ## A276301.P8182753878025835740

`A276299(A167614(n+2)+1)`
-/

namespace A276301.P8182753878025835740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167614 (n + 2) + 1).toNat

end

end A276301.P8182753878025835740

/-! ## A276301.P2039129988820883724

`A276299(A167499(n+2)-1)`
-/

namespace A276301.P2039129988820883724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167499 (n + 2) - 1).toNat

end

end A276301.P2039129988820883724

/-! ## A276301.P5754197045541906062

`A276299(A133263(n+3)+2)`
-/

namespace A276301.P5754197045541906062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A133263 (n + 3) + 2).toNat

end

end A276301.P5754197045541906062

/-! ## A276301.P5358916109702779751

`A276299(A000217(n+3)+4)`
-/

namespace A276301.P5358916109702779751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A000217 (n + 3) + 4).toNat

end

end A276301.P5358916109702779751

/-!
# A276302: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276302, there is no canonical definition to state claims against.
-/

/-! ## A276302.P6422838513561584753

`A276299(A167499(n+3))`
-/

namespace A276302.P6422838513561584753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167499 (n + 3)).toNat

end

end A276302.P6422838513561584753

/-! ## A276302.P5762391276235497513

`A276299(A155212(n)+13)`
-/

namespace A276302.P5762391276235497513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A155212 n + 13).toNat

end

end A276302.P5762391276235497513

/-! ## A276302.P9860306149344715960

`A276299(A056000(n)+15)`
-/

namespace A276302.P9860306149344715960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A056000 n + 15).toNat

end

end A276302.P9860306149344715960

/-! ## A276302.P15129431521391610815

`A276299(eq[7, A066657(n)])`
-/

namespace A276302.P15129431521391610815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276302.P15129431521391610815

/-! ## A276302.P7245105348669274790

`A276299(eq[6, A131818(n+1)])`
-/

namespace A276302.P7245105348669274790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276302.P7245105348669274790

/-!
# A276303: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276303, there is no canonical definition to state claims against.
-/

/-! ## A276303.P4155306850072484064

`A276299(A167499(n+4)+1)`
-/

namespace A276303.P4155306850072484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167499 (n + 4) + 1).toNat

end

end A276303.P4155306850072484064

/-! ## A276303.P2290497882243746199

`A276299(A167614(n+4)+3)`
-/

namespace A276303.P2290497882243746199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167614 (n + 4) + 3).toNat

end

end A276303.P2290497882243746199

/-! ## A276303.P7444458384785770764

`A276299(A000124(n+5)+5)`
-/

namespace A276303.P7444458384785770764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A000124 (n + 5) + 5).toNat

end

end A276303.P7444458384785770764

/-! ## A276303.P8260447221875427901

`A276299(A000217(n+5)+6)`
-/

namespace A276303.P8260447221875427901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A000217 (n + 5) + 6).toNat

end

end A276303.P8260447221875427901

/-! ## A276303.P1184070801674529332

`A276299(eq[7, A131818(n+1)])`
-/

namespace A276303.P1184070801674529332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276303.P1184070801674529332

/-!
# A276304: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-1,1) or (0,-1) and new values introduced in order 0..2.

The programs for A276304, there is no canonical definition to state claims against.
-/

/-! ## A276304.P5697135884323203797

`A276299(eq[11, A066657(n)])`
-/

namespace A276304.P5697135884323203797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276304.P5697135884323203797

/-! ## A276304.P3069087183039607267

`A276299(A167499(n+5)+2)`
-/

namespace A276304.P3069087183039607267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A167499 (n + 5) + 2).toNat

end

end A276304.P3069087183039607267

/-! ## A276304.P8881565235693558034

`A276299(A000096(n+5)+8)`
-/

namespace A276304.P8881565235693558034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A000096 (n + 5) + 8).toNat

end

end A276304.P8881565235693558034

/-! ## A276304.P7418497569287875114

`A276299(A155212(n+2)+15)`
-/

namespace A276304.P7418497569287875114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (A155212 (n + 2) + 15).toNat

end

end A276304.P7418497569287875114

/-! ## A276304.P13558723141214108625

`A276299(eq[8, A131818(n+1)])`
-/

namespace A276304.P13558723141214108625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276304.P13558723141214108625

/-!
# A276305: Primes p such that d(p*(2p+1)) = 12 where d(n) is the number of divisors of n (A000005).

The programs for A276305, the canonical program `A276305.P15088986145936003847` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276305 has offset 1).

The definition of A276305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276305.P15088986145936003847

`p?[floor(A054753(n+1)/2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276305

/-- `p?[floor(A054753(n+1)/2)]` -/
def P15088986145936003847.Spec : Prop :=
  ∀ n, P15088986145936003847.a n = A276305 (n + 1)

theorem P15088986145936003847.correct : P15088986145936003847.Spec := by
  intro n
  simp only [A276305, Nat.add_sub_cancel]

end A276305

/-! ## A276305.P4124320820042581146

`p?[floor(A030515(n+1)/2)]`
-/

namespace A276305.P4124320820042581146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030515 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P4124320820042581146

namespace A276305

/-- `p?[floor(A030515(n+1)/2)]` -/
def P4124320820042581146.Spec : Prop :=
  ∀ n, P4124320820042581146.a n = A276305 (n + 1)

end A276305

/-! ## A276305.P10597392154646532927

`p?[floor(A080258(n+1)/2)]`
-/

namespace A276305.P10597392154646532927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080258 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P10597392154646532927

namespace A276305

/-- `p?[floor(A080258(n+1)/2)]` -/
def P10597392154646532927.Spec : Prop :=
  ∀ n, P10597392154646532927.a n = A276305 (n + 1)

end A276305

/-! ## A276305.P12129255547201905998

`p?[floor(A230577(n+1)/2)]`
-/

namespace A276305.P12129255547201905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230577 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P12129255547201905998

namespace A276305

/-- `p?[floor(A230577(n+1)/2)]` -/
def P12129255547201905998.Spec : Prop :=
  ∀ n, P12129255547201905998.a n = A276305 (n + 1)

end A276305

/-! ## A276305.P13999323917959410236

`p?[eq[6, A305973(n+1)]]`
-/

namespace A276305.P13999323917959410236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276305.P13999323917959410236

namespace A276305

/-- `p?[eq[6, A305973(n+1)]]` -/
def P13999323917959410236.Spec : Prop :=
  ∀ n, (P13999323917959410236.a n : ℤ) = A276305 (n + 1)

end A276305

/-! ## A276305.P7268368394269100178

`p?[eq[6, A000005(2*n+1)]]`
-/

namespace A276305.P7268368394269100178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276305.P7268368394269100178

namespace A276305

/-- `p?[eq[6, A000005(2*n+1)]]` -/
def P7268368394269100178.Spec : Prop :=
  ∀ n, (P7268368394269100178.a n : ℤ) = A276305 (n + 1)

end A276305

/-! ## A276305.P13591024817352341280

`p?[eq[6, A101296(2*n+1)]]`
-/

namespace A276305.P13591024817352341280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276305.P13591024817352341280

namespace A276305

/-- `p?[eq[6, A101296(2*n+1)]]` -/
def P13591024817352341280.Spec : Prop :=
  ∀ n, (P13591024817352341280.a n : ℤ) = A276305 (n + 1)

end A276305

/-! ## A276305.P10752864533416169513

`p?[A072480(A230115(n+1))]`
-/

namespace A276305.P10752864533416169513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A230115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P10752864533416169513

namespace A276305

/-- `p?[A072480(A230115(n+1))]` -/
def P10752864533416169513.Spec : Prop :=
  ∀ n, P10752864533416169513.a n = A276305 (n + 1)

end A276305

/-! ## A276305.P8464220465258552293

`p?[eq[6, A099774(n+1)]]`
-/

namespace A276305.P8464220465258552293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276305.P8464220465258552293

namespace A276305

/-- `p?[eq[6, A099774(n+1)]]` -/
def P8464220465258552293.Spec : Prop :=
  ∀ n, (P8464220465258552293.a n : ℤ) = A276305 (n + 1)

end A276305

/-! ## A276305.P11983542587879103929

`p?[n*(A193773(n)-2)]`
-/

namespace A276305.P11983542587879103929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A193773 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P11983542587879103929

namespace A276305

/-- `p?[n*(A193773(n)-2)]` -/
def P11983542587879103929.Spec : Prop :=
  ∀ n, P11983542587879103929.a n = A276305 (n + 1)

end A276305

/-! ## A276305.P14909607574869403711

`p?[eq[5, A294926(2*n+1)]]`
-/

namespace A276305.P14909607574869403711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276305.P14909607574869403711

namespace A276305

/-- `p?[eq[5, A294926(2*n+1)]]` -/
def P14909607574869403711.Spec : Prop :=
  ∀ n, (P14909607574869403711.a n : ℤ) = A276305 (n + 1)

end A276305

/-!
# A276306: Number of pairs of integers (k, m) with k < m < n such that (k, m, n) is an abc-triple.

The programs for A276306, there is no canonical definition to state claims against.
-/

/-! ## A276306.P2610235083647015815

`floor((n+1)/A147298(n+3))`
-/

namespace A276306.P2610235083647015815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A147298 (n + 3) : ℚ)⌋

end

end A276306.P2610235083647015815

/-! ## A276306.P15114230308224218098

`∑{digits}[n, floor(#/6)]%A112538(n+3)`
-/

namespace A276306.P15114230308224218098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum (A112538 (n + 3))

end

end A276306.P15114230308224218098

/-! ## A276306.P14315910881107103470

`Δ[A257417(n+1)]%A089723(n+3)`
-/

namespace A276306.P14315910881107103470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A089723 (n + 3))

end

end A276306.P14315910881107103470

/-! ## A276306.P5464738888011472207

`A043049(3*n+1)%A294336(n+3)`
-/

namespace A276306.P5464738888011472207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043049 (3 * n + 1)) (A294336 (n + 3))

end

end A276306.P5464738888011472207

/-! ## A276306.P9850663804189108613

`∑{digits}[n, floor(#/6)]*A000122(A084740(n+3))`
-/

namespace A276306.P9850663804189108613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum * A000122 (A084740 (n + 3)).toNat

end

end A276306.P9850663804189108613

/-! ## A276306.P52194306268399581

`A036702(A320495(n))%A089723(n+3)`
-/

namespace A276306.P52194306268399581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036702 (A320495 n).toNat) (A089723 (n + 3))

end

end A276306.P52194306268399581

/-! ## A276306.P3361818463918346364

`A106566(A067085(n+1))%A089723(n+3)`
-/

namespace A276306.P3361818463918346364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106566 (A067085 (n + 1)).toNat) (A089723 (n + 3))

end

end A276306.P3361818463918346364

/-! ## A276306.P2687010952555905793

`A060457(n+1)%A166333(A188585(n+3))`
-/

namespace A276306.P2687010952555905793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060457 (n + 1)) (A166333 (A188585 (n + 3)).toNat)

end

end A276306.P2687010952555905793

/-! ## A276306.P10459800642789318842

`val(A220562(A145051(n+1)), A007947(n+3))`
-/

namespace A276306.P10459800642789318842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A220562 (A145051 (n + 1)).toNat).toNat (A007947 (n + 3)).toNat

end

end A276306.P10459800642789318842

/-! ## A276306.P6892982335756052961

`val(A336957(n+1), A073736(A006530(n+3)))`
-/

namespace A276306.P6892982335756052961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336957 (n + 1)).toNat (A073736 (A006530 (n + 3)).toNat).toNat

end

end A276306.P6892982335756052961

/-!
# A276307: Primes p such that d(p*(2p+1)) = 16 where d(n) is the number of divisors of n (A000005).

The programs for A276307, the canonical program `A276307.P8997433821484487146` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276307 has offset 1).

The definition of A276307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276307.P9342427517553586181

`p?[eq[8, A000005(2*n+1)]]`
-/

namespace A276307.P9342427517553586181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276307.P9342427517553586181

namespace A276307

/-- `p?[eq[8, A000005(2*n+1)]]` -/
def P9342427517553586181.Spec : Prop :=
  ∀ n, (P9342427517553586181.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P5785534500530448751

`p?[A072480(A063446(n+1))]`
-/

namespace A276307.P5785534500530448751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A063446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P5785534500530448751

namespace A276307

/-- `p?[A072480(A063446(n+1))]` -/
def P5785534500530448751.Spec : Prop :=
  ∀ n, P5785534500530448751.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P8997433821484487146

`p?[floor(A267891(n+1)/2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276307

/-- `p?[floor(A267891(n+1)/2)]` -/
def P8997433821484487146.Spec : Prop :=
  ∀ n, P8997433821484487146.a n = A276307 (n + 1)

theorem P8997433821484487146.correct : P8997433821484487146.Spec := by
  intro n
  simp only [A276307, Nat.add_sub_cancel]

end A276307

/-! ## A276307.P13518788141022054080

`p?[A072480(A230654(n+1))]`
-/

namespace A276307.P13518788141022054080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P13518788141022054080

namespace A276307

/-- `p?[A072480(A230654(n+1))]` -/
def P13518788141022054080.Spec : Prop :=
  ∀ n, P13518788141022054080.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P13789957161912947446

`p?[A087625(A230654(n+2))]`
-/

namespace A276307.P13789957161912947446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087625 (A230654 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P13789957161912947446

namespace A276307

/-- `p?[A087625(A230654(n+2))]` -/
def P13789957161912947446.Spec : Prop :=
  ∀ n, P13789957161912947446.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P18346124076574821004

`p?[A300251(A230654(n+6))]`
-/

namespace A276307.P18346124076574821004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (A230654 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P18346124076574821004

namespace A276307

/-- `p?[A300251(A230654(n+6))]` -/
def P18346124076574821004.Spec : Prop :=
  ∀ n, P18346124076574821004.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P13400869050233813768

`p?[eq[7, A294926(2*n+1)]]`
-/

namespace A276307.P13400869050233813768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276307.P13400869050233813768

namespace A276307

/-- `p?[eq[7, A294926(2*n+1)]]` -/
def P13400869050233813768.Spec : Prop :=
  ∀ n, (P13400869050233813768.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P17085255339396488127

`eq[A005127(n)², A359290(n+1)]`
-/

namespace A276307.P17085255339396488127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P17085255339396488127

namespace A276307

/-- `eq[A005127(n)², A359290(n+1)]` -/
def P17085255339396488127.Spec : Prop :=
  ∀ n, (P17085255339396488127.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P17704171451934169599

`eq[A005128(n)², A359290(n+1)]`
-/

namespace A276307.P17704171451934169599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P17704171451934169599

namespace A276307

/-- `eq[A005128(n)², A359290(n+1)]` -/
def P17704171451934169599.Spec : Prop :=
  ∀ n, (P17704171451934169599.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P3858023126450673759

`eq[A062830(n)², A359290(n+1)]`
-/

namespace A276307.P3858023126450673759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P3858023126450673759

namespace A276307

/-- `eq[A062830(n)², A359290(n+1)]` -/
def P3858023126450673759.Spec : Prop :=
  ∀ n, (P3858023126450673759.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P1005410832417848782

`eq[A322366(n)², A359290(n+1)]`
-/

namespace A276307.P1005410832417848782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P1005410832417848782

namespace A276307

/-- `eq[A322366(n)², A359290(n+1)]` -/
def P1005410832417848782.Spec : Prop :=
  ∀ n, (P1005410832417848782.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P13332573546939869965

`eq[A323161(n+1), A359290(n+1)]`
-/

namespace A276307.P13332573546939869965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P13332573546939869965

namespace A276307

/-- `eq[A323161(n+1), A359290(n+1)]` -/
def P13332573546939869965.Spec : Prop :=
  ∀ n, (P13332573546939869965.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P6732519584206462594

`eq[A341982(n+2)², A359290(n+1)]`
-/

namespace A276307.P6732519584206462594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P6732519584206462594

namespace A276307

/-- `eq[A341982(n+2)², A359290(n+1)]` -/
def P6732519584206462594.Spec : Prop :=
  ∀ n, (P6732519584206462594.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P14043199181648148115

`eq[8*(n+1), A128261(2*n+1)]`
-/

namespace A276307.P14043199181648148115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128261 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276307.P14043199181648148115

namespace A276307

/-- `eq[8*(n+1), A128261(2*n+1)]` -/
def P14043199181648148115.Spec : Prop :=
  ∀ n, (P14043199181648148115.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P3275137228134405267

`p?[A300068(A267891(n+1))]`
-/

namespace A276307.P3275137228134405267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A267891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P3275137228134405267

namespace A276307

/-- `p?[A300068(A267891(n+1))]` -/
def P3275137228134405267.Spec : Prop :=
  ∀ n, P3275137228134405267.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P7923456444883257766

`p?[A008619(A230654(n+1)-1)]`
-/

namespace A276307.P7923456444883257766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A230654 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P7923456444883257766

namespace A276307

/-- `p?[A008619(A230654(n+1)-1)]` -/
def P7923456444883257766.Spec : Prop :=
  ∀ n, P7923456444883257766.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P16589811144625894241

`eq[A128261(2*n+1), A273315(n)]`
-/

namespace A276307.P16589811144625894241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128261 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P16589811144625894241

namespace A276307

/-- `eq[A128261(2*n+1), A273315(n)]` -/
def P16589811144625894241.Spec : Prop :=
  ∀ n, (P16589811144625894241.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P16031448618343133184

`eq[A284289(2*n)+2, A001842(2*n+1)]`
-/

namespace A276307.P16031448618343133184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P16031448618343133184

namespace A276307

/-- `eq[A284289(2*n)+2, A001842(2*n+1)]` -/
def P16031448618343133184.Spec : Prop :=
  ∀ n, (P16031448618343133184.a n : ℤ) = A276307 (n + 1)

end A276307

/-! ## A276307.P8625166124000292179

`A047814(p?[A029578(A230654(n+1))])`
-/

namespace A276307.P8625166124000292179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276307.P8625166124000292179

namespace A276307

/-- `A047814(p?[A029578(A230654(n+1))])` -/
def P8625166124000292179.Spec : Prop :=
  ∀ n, P8625166124000292179.a n = A276307 (n + 1)

end A276307

/-! ## A276307.P4972289863666900996

`eq[A053204(n)², A193773(n)]`
-/

namespace A276307.P4972289863666900996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276307.P4972289863666900996

namespace A276307

/-- `eq[A053204(n)², A193773(n)]` -/
def P4972289863666900996.Spec : Prop :=
  ∀ n, (P4972289863666900996.a n : ℤ) = A276307 (n + 1)

end A276307

/-!
# A276308: a(n) = (a(n-1)+1)*(a(n-3)+1)/a(n-4) for n > 3, a(0) = a(1) = a(2) = a(3) = 1.

The programs for A276308, the canonical program `A276308.P5708593929557877615` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276308 has offset 0).

The definition of A276308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276308.P5708593929557877615

`35*a(n-3)-35*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=10, a(6)=22, a(7)=115, a(8)=319`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276308

/-- `35*a(n-3)-35*a(n-6)+a(n-9)` -/
def P5708593929557877615.Spec : Prop :=
  ∀ n, P5708593929557877615.a n = A276308 n

theorem P5708593929557877615.correct : P5708593929557877615.Spec := by
  intro n
  simp only [A276308]

end A276308

/-! ## A276308.P17415481659743549711

`(a(n-1)+1)*(a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276308.P17415481659743549711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) + 1) * (a (n - 3) + 1) / a (n - 4)

end

end A276308.P17415481659743549711

namespace A276308

/-- `(a(n-1)+1)*(a(n-3)+1)/a(n-4)` -/
def P17415481659743549711.Spec : Prop :=
  ∀ n, P17415481659743549711.a n = (A276308 n : ℚ)

end A276308

/-! ## A276308.P18318492992426510242

`A304717(A037952(n)+A025475(n+1))`
-/

namespace A276308.P18318492992426510242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304717 (A037952 n + A025475 (n + 1)).toNat

end

end A276308.P18318492992426510242

namespace A276308

/-- `A304717(A037952(n)+A025475(n+1))` -/
def P18318492992426510242.Spec : Prop :=
  ∀ n, P18318492992426510242.a n = A276308 n

end A276308

/-! ## A276308.P15876330790210702290

`A220413(A284600(3*n+4)+A177482(n))`
-/

namespace A276308.P15876330790210702290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A284600 (3 * n + 4) + A177482 n).toNat

end

end A276308.P15876330790210702290

namespace A276308

/-- `A220413(A284600(3*n+4)+A177482(n))` -/
def P15876330790210702290.Spec : Prop :=
  ∀ n, P15876330790210702290.a n = A276308 n

end A276308

/-!
# A276309: Integer part of the ratio of alternate consecutive prime gaps.

The programs for A276309, the canonical program `A276309.P8818592185255775317` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276309 has offset 1).

The definition of A276309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276309.P8818592185255775317

`floor(A001223(n+3)/A001223(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276309

/-- `floor(A001223(n+3)/A001223(n+1))` -/
def P8818592185255775317.Spec : Prop :=
  ∀ n, P8818592185255775317.a n = A276309 (n + 1)

theorem P8818592185255775317.correct : P8818592185255775317.Spec := by
  intro n
  simp only [A276309, Nat.add_sub_cancel]

end A276309

/-! ## A276309.P7114266599269423029

`floor(ratio[A083550(n+1)])`
-/

namespace A276309.P7114266599269423029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A276309.P7114266599269423029

namespace A276309

/-- `floor(ratio[A083550(n+1)])` -/
def P7114266599269423029.Spec : Prop :=
  ∀ n, P7114266599269423029.a n = A276309 (n + 1)

end A276309

/-! ## A276309.P18224215170229554872

`floor(A083550(n+2)/A083550(n+1))`
-/

namespace A276309.P18224215170229554872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083550 (n + 2) : ℚ) / (A083550 (n + 1) : ℚ)⌋

end

end A276309.P18224215170229554872

namespace A276309

/-- `floor(A083550(n+2)/A083550(n+1))` -/
def P18224215170229554872.Spec : Prop :=
  ∀ n, P18224215170229554872.a n = A276309 (n + 1)

end A276309

/-! ## A276309.P9317281689814077448

`val(A140299(n+2), A140299(n))`
-/

namespace A276309.P9317281689814077448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140299 (n + 2)).toNat (A140299 n).toNat

end

end A276309.P9317281689814077448

namespace A276309

/-- `val(A140299(n+2), A140299(n))` -/
def P9317281689814077448.Spec : Prop :=
  ∀ n, (P9317281689814077448.a n : ℤ) = A276309 (n + 1)

end A276309

/-! ## A276309.P7327485205206205211

`val(A218075(n+3), A218075(n+1))`
-/

namespace A276309.P7327485205206205211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A218075 (n + 3)).toNat (A218075 (n + 1)).toNat

end

end A276309.P7327485205206205211

namespace A276309

/-- `val(A218075(n+3), A218075(n+1))` -/
def P7327485205206205211.Spec : Prop :=
  ∀ n, (P7327485205206205211.a n : ℤ) = A276309 (n + 1)

end A276309

/-! ## A276309.P4772494261183541954

`floor(A125266(n+4)/Δ[A000040(n+1)])`
-/

namespace A276309.P4772494261183541954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125266 (n + 4) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A276309.P4772494261183541954

namespace A276309

/-- `floor(A125266(n+4)/Δ[A000040(n+1)])` -/
def P4772494261183541954.Spec : Prop :=
  ∀ n, P4772494261183541954.a n = A276309 (n + 1)

end A276309

/-! ## A276309.P5008626809753536437

`floor(A054541(n+4)/(A000040(n+2)-A000040(n+1)))`
-/

namespace A276309.P5008626809753536437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054541 (n + 4) : ℚ) / (A000040 (n + 2) - A000040 (n + 1) : ℚ)⌋

end

end A276309.P5008626809753536437

namespace A276309

/-- `floor(A054541(n+4)/(A000040(n+2)-A000040(n+1)))` -/
def P5008626809753536437.Spec : Prop :=
  ∀ n, P5008626809753536437.a n = A276309 (n + 1)

end A276309

/-! ## A276309.P8275612139121039120

`floor(A125266(n+4)/(A000040(n+2)-A000040(n+1)))`
-/

namespace A276309.P8275612139121039120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125266 (n + 4) : ℚ) / (A000040 (n + 2) - A000040 (n + 1) : ℚ)⌋

end

end A276309.P8275612139121039120

namespace A276309

/-- `floor(A125266(n+4)/(A000040(n+2)-A000040(n+1)))` -/
def P8275612139121039120.Spec : Prop :=
  ∀ n, P8275612139121039120.a n = A276309 (n + 1)

end A276309

/-! ## A276309.P6571216713106595477

`floor(A286634(n+1)/A285851(n+1))`
-/

namespace A276309.P6571216713106595477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286634 (n + 1) : ℚ) / (A285851 (n + 1) : ℚ)⌋

end

end A276309.P6571216713106595477

namespace A276309

/-- `floor(A286634(n+1)/A285851(n+1))` -/
def P6571216713106595477.Spec : Prop :=
  ∀ n, P6571216713106595477.a n = A276309 (n + 1)

end A276309

/-!
# A276310: G.f. A(x) satisfies: x = A(x)-2*A(x)^2-2*A(x)^3.

The programs for A276310, there is no canonical definition to state claims against.
-/

/-! ## A276310.P4048481187705752116

`A073387(∑[4*n])/(n+1)`
-/

namespace A276310.P4048481187705752116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073387 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A276310.P4048481187705752116

/-! ## A276310.P11387143721472057812

`A208759(∑[4*n]+1)/(n+1)`
-/

namespace A276310.P11387143721472057812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208759 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A276310.P11387143721472057812

/-! ## A276310.P13006738299528423165

`floor(A208759(4*A000217(n)+1)/(n+1))`
-/

namespace A276310.P13006738299528423165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208759 (4 * A000217 n + 1).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A276310.P13006738299528423165

/-!
# A276312: Number of up-down sequences of length n and values in {1,2,...,n}.

The programs for A276312, there is no canonical definition to state claims against.
-/

/-! ## A276312.P15399733356563255821

`A050447((1-n)²+n²)`
-/

namespace A276312.P15399733356563255821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A276312.P15399733356563255821

/-! ## A276312.P5438739849772724864

`A050446(A004273(n²-n))`
-/

namespace A276312.P5438739849772724864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A004273 (n ^ 2 - n)).toNat

end

end A276312.P5438739849772724864

/-! ## A276312.P12861138638895259201

`A050446(eq[A050446(n+2), A050447(n)])`
-/

namespace A276312.P12861138638895259201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276312.P12861138638895259201

/-! ## A276312.P1313384367800151460

`A050446(eq[A157634(n+2), A157634(n)])`
-/

namespace A276312.P1313384367800151460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157634 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276312.P1313384367800151460

/-! ## A276312.P9296822740029084006

`A050446(lt[A105070(2*(n+2)), A187769(n+4)])`
-/

namespace A276312.P9296822740029084006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276312.P9296822740029084006

/-!
# A276313: Number of weak up-down sequences of length n and values in {1,2,...,n}.

The programs for A276313, there is no canonical definition to state claims against.
-/

/-! ## A276313.P1846794197233293688

`A050447(2*n²)`
-/

namespace A276313.P1846794197233293688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (2 * n ^ 2)

end

end A276313.P1846794197233293688

/-! ## A276313.P13413968256990437317

`gcd(A000038(n), A050447(A001105(n)))`
-/

namespace A276313.P13413968256990437317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A050447 (A001105 n).toNat)

end

end A276313.P13413968256990437317

/-! ## A276313.P6687386423117527155

`or(A000007(n), A050447(A001105(n)))`
-/

namespace A276313.P6687386423117527155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A050447 (A001105 n).toNat)

end

end A276313.P6687386423117527155

/-! ## A276313.P2435675612129191963

`A050447(A001105(n))+A000007(n+1)`
-/

namespace A276313.P2435675612129191963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A001105 n).toNat + A000007 (n + 1)

end

end A276313.P2435675612129191963

/-! ## A276313.P12874166807517757425

`A050447(A001105(n))+A000038(n+1)`
-/

namespace A276313.P12874166807517757425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A001105 n).toNat + A000038 (n + 1)

end

end A276313.P12874166807517757425

/-! ## A276313.P15647090444658522507

`A050447(A001105(n))-A000038(A050447(n))²`
-/

namespace A276313.P15647090444658522507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A001105 n).toNat - A000038 (A050447 n).toNat ^ 2

end

end A276313.P15647090444658522507

/-! ## A276313.P1103049076660993271

`A050446(A004273(n²))`
-/

namespace A276313.P1103049076660993271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A004273 (n ^ 2)).toNat

end

end A276313.P1103049076660993271

/-! ## A276313.P16622033095147796497

`A050446(A061579(2*n²))`
-/

namespace A276313.P16622033095147796497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A061579 (2 * n ^ 2)).toNat

end

end A276313.P16622033095147796497

/-!
# A276314: G.f. A(x) satisfies: x = A(x)-A(x)^2-3*A(x)^3.

The programs for A276314, there is no canonical definition to state claims against.
-/

/-! ## A276314.P7382018700461656479

`A088167(A047863(n))*A202453(n+1)`
-/

namespace A276314.P7382018700461656479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088167 (A047863 n).toNat * A202453 (n + 1)

end

end A276314.P7382018700461656479

/-!
# A276315: G.f. A(x) satisfies: x = A(x)-3*A(x)^2-2*A(x)^3.

The programs for A276315, there is no canonical definition to state claims against.
-/

/-! ## A276315.P5044315818182308400

`A120592(n+1)/2`
-/

namespace A276315.P5044315818182308400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120592 (n + 1) : ℚ) / 2

end

end A276315.P5044315818182308400

/-! ## A276315.P6745293223754332428

`Δ[∑[A120592(n)]/2]`
-/

namespace A276315.P6745293223754332428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120592 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276315.P6745293223754332428

/-! ## A276315.P8051030417387584618

`record[ratio[A120592(A152271(n))]]`
-/

namespace A276315.P8051030417387584618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120592 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276315.P8051030417387584618

/-! ## A276315.P11649713772366960226

`record[ratio[A120592(A193592(n))]]`
-/

namespace A276315.P11649713772366960226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120592 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276315.P11649713772366960226

/-! ## A276315.P5605636676670427369

`record[ratio[A120592(A077028(n))]]`
-/

namespace A276315.P5605636676670427369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120592 (A077028 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276315.P5605636676670427369

/-!
# A276316: G.f. A(x) satisfies: x = A(x)-4*A(x)^2+A(x)^3.

The programs for A276316, there is no canonical definition to state claims against.
-/

/-! ## A276316.P830366038817634274

`A207823(∑[4*n])/(n+1)`
-/

namespace A276316.P830366038817634274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207823 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A276316.P830366038817634274

/-! ## A276316.P14887745293683970938

`A393420(n)/A000079(n)`
-/

namespace A276316.P14887745293683970938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393420 n : ℚ) / (A000079 n : ℚ)

end

end A276316.P14887745293683970938

/-!
# A276317: a(n) = b(n)/c(n) where b(n) = smallest positive k such that (2*k)^2 + 2*n - 1 is prime and c(n) = gcd(n,3) = A109007(n).

The programs for A276317, there is no canonical definition to state claims against.
-/

/-! ## A276317.P15426012406804890139

`A109047(A085099(2*n+1))/6`
-/

namespace A276317.P15426012406804890139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 (A085099 (2 * n + 1)).toNat : ℚ) / 6

end

end A276317.P15426012406804890139

/-! ## A276317.P14331892015214944122

`A283443(A109047(A085099(2*n+1)))`
-/

namespace A276317.P14331892015214944122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A109047 (A085099 (2 * n + 1)).toNat).toNat

end

end A276317.P14331892015214944122

/-! ## A276317.P13666445309583137385

`A003557(A085099(2*n+1)%A046048(n+1))`
-/

namespace A276317.P13666445309583137385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.tmod (A085099 (2 * n + 1)) (A046048 (n + 1))).toNat

end

end A276317.P13666445309583137385

/-! ## A276317.P1227577944495482112

`A003557(A085099(2*n+1))%A268396(n+1)`
-/

namespace A276317.P1227577944495482112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003557 (A085099 (2 * n + 1)).toNat) (A268396 (n + 1))

end

end A276317.P1227577944495482112

/-!
# A276321: List of B-spline interpolation matrices M(n,i,j) of orders n >= 1 read by rows (0 <= i < n, 0 <= j < n).

The programs for A276321, there is no canonical definition to state claims against.
-/

/-! ## A276321.P5827353153368688458

`A321920(n+1)*A327899(A309973(n))`
-/

namespace A276321.P5827353153368688458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321920 (n + 1) * A327899 (A309973 n).toNat

end

end A276321.P5827353153368688458

/-! ## A276321.P15374759437131431096

`A317529(A192090(n)+A167170(3*n+8))`
-/

namespace A276321.P15374759437131431096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A192090 n + A167170 (3 * n + 8)).toNat

end

end A276321.P15374759437131431096

/-! ## A276321.P10430505675770199223

`A265870(A064989(n+1))*A321894(A151766(n+2))`
-/

namespace A276321.P10430505675770199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A064989 (n + 1)).toNat * A321894 (A151766 (n + 2)).toNat

end

end A276321.P10430505675770199223

/-!
# A276324: Antidiagonal indices of Greedy Queens (see A065188).

The programs for A276324, there is no canonical definition to state claims against.
-/

/-! ## A276324.P14638468714756335892

`comp[A276784(n+1)]+1`
-/

namespace A276324.P14638468714756335892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276324.P14638468714756335892

/-! ## A276324.P3862108310733164918

`A275901(n)+A275902(n)+1`
-/

namespace A276324.P3862108310733164918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + (A275902 n + 1)

end

end A276324.P3862108310733164918

/-! ## A276324.P9309133697573471333

`A275902(n)+A276325(n+1)+A275902(n)+1`
-/

namespace A276324.P9309133697573471333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + (A276325 (n + 1) + A275902 n) + 1

end

end A276324.P9309133697573471333

/-! ## A276324.P6868798303681577464

`A275901(n)-A276325(n+1)+A275901(n)+1`
-/

namespace A276324.P6868798303681577464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n - A276325 (n + 1) + (A275901 n + 1)

end

end A276324.P6868798303681577464

/-! ## A276324.P7411473124160133783

`A275902(n)+A065189(A275902(n)+1)`
-/

namespace A276324.P7411473124160133783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + A065189 (A275902 n + 1).toNat

end

end A276324.P7411473124160133783

/-! ## A276324.P8158977942570951955

`A275901(n)+A065188(A275901(n)+1)`
-/

namespace A276324.P8158977942570951955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A065188 (A275901 n + 1).toNat

end

end A276324.P8158977942570951955

/-! ## A276324.P10252366556797770676

`A275901(n)+A275900(n+1)`
-/

namespace A276324.P10252366556797770676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A275900 (n + 1)

end

end A276324.P10252366556797770676

/-! ## A276324.P10514989657095653935

`A275902(n)+A275899(n+1)`
-/

namespace A276324.P10514989657095653935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + A275899 (n + 1)

end

end A276324.P10514989657095653935

/-! ## A276324.P8780300840807248148

`A275899(n+1)+A275900(n+1)-1`
-/

namespace A276324.P8780300840807248148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) + (A275900 (n + 1) - 1)

end

end A276324.P8780300840807248148

/-! ## A276324.P15694114636290107332

`A275899(n+1)+A275895(A275901(n))`
-/

namespace A276324.P15694114636290107332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) + A275895 (A275901 n).toNat

end

end A276324.P15694114636290107332

/-! ## A276324.P8724418343667870073

`A275900(n+1)+A275896(A275902(n))`
-/

namespace A276324.P8724418343667870073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1) + A275896 (A275902 n).toNat

end

end A276324.P8724418343667870073

/-! ## A276324.P6217212184017551928

`A275899(n+1)+A275895(A275899(n+1)-1)`
-/

namespace A276324.P6217212184017551928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) + A275895 (A275899 (n + 1) - 1).toNat

end

end A276324.P6217212184017551928

/-! ## A276324.P1939318852118445036

`A275900(n+1)+A275896(A275900(n+1)-1)`
-/

namespace A276324.P1939318852118445036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1) + A275896 (A275900 (n + 1) - 1).toNat

end

end A276324.P1939318852118445036

/-!
# A276325: Diagonal indices of Greedy Queens (see A065188).

The programs for A276325, there is no canonical definition to state claims against.
-/

/-! ## A276325.P9929752548281914685

`A275901(n)-A275902(n)`
-/

namespace A276325.P9929752548281914685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n - A275902 n

end

end A276325.P9929752548281914685

/-! ## A276325.P5370253259093000591

`A276324(n+1)-(A275902(n)+1)-A275902(n)`
-/

namespace A276325.P5370253259093000591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - (A275902 n + 1) - A275902 n

end

end A276325.P5370253259093000591

/-! ## A276325.P15979964876873215013

`A275901(n)+1-(A276324(n+1)-A275901(n))`
-/

namespace A276325.P15979964876873215013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + 1 - (A276324 (n + 1) - A275901 n)

end

end A276325.P15979964876873215013

/-! ## A276325.P16217160078649021944

`A275901(n)-A023443(A276324(n+1)-A275901(n))`
-/

namespace A276325.P16217160078649021944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n - A023443 (A276324 (n + 1) - A275901 n).toNat

end

end A276325.P16217160078649021944

/-! ## A276325.P17507709664770372614

`A275901(n)+1-A065188(A275901(n)+1)`
-/

namespace A276325.P17507709664770372614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + 1 - A065188 (A275901 n + 1).toNat

end

end A276325.P17507709664770372614

/-! ## A276325.P12509285711952500115

`A023443(A276324(n+1)-A275902(n))-A275902(n)`
-/

namespace A276325.P12509285711952500115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276324 (n + 1) - A275902 n).toNat - A275902 n

end

end A276325.P12509285711952500115

/-! ## A276325.P8326855625457778393

`-A065185(A275899(n+1))`
-/

namespace A276325.P8326855625457778393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065185 (A275899 (n + 1)).toNat

end

end A276325.P8326855625457778393

/-! ## A276325.P6215553760687667610

`A275899(n+1)-A275900(n+1)`
-/

namespace A276325.P6215553760687667610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) - A275900 (n + 1)

end

end A276325.P6215553760687667610

/-! ## A276325.P1813128306243164051

`A275899(n+1)-(A275902(n)+1)`
-/

namespace A276325.P1813128306243164051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) - (A275902 n + 1)

end

end A276325.P1813128306243164051

/-! ## A276325.P7670337497048740199

`A275901(n)+1-A275900(n+1)`
-/

namespace A276325.P7670337497048740199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + (1 - A275900 (n + 1))

end

end A276325.P7670337497048740199

/-! ## A276325.P1110299258784625382

`A065189(A275900(n+1))-(A275902(n)+1)`
-/

namespace A276325.P1110299258784625382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A275900 (n + 1)).toNat - (A275902 n + 1)

end

end A276325.P1110299258784625382

/-!
# A276326: Numbers expressed in greedy A001563-base.

The programs for A276326, there is no canonical definition to state claims against.
-/

/-! ## A276326.P17403745757528450286

`lt[A007095(A048385(n)), A008541(3*n+2)]`
-/

namespace A276326.P17403745757528450286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A048385 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276326.P17403745757528450286

/-! ## A276326.P8513265817668998401

`lt[A086066(n), A277116(A308385(n+1))]`
-/

namespace A276326.P8513265817668998401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 (A308385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276326.P8513265817668998401

/-! ## A276326.P4658060234689790046

`lt[A045503(n), A009101(A008288(n))]`
-/

namespace A276326.P4658060234689790046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 (A008288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276326.P4658060234689790046

/-! ## A276326.P2862097673198612583

`lt[A045512(n), A009101(A008288(n))]`
-/

namespace A276326.P2862097673198612583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 (A008288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276326.P2862097673198612583

/-! ## A276326.P13814614428135383890

`lt[A100953(A003132(n)), A003679(2*(n+2))]`
-/

namespace A276326.P13814614428135383890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100953 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276326.P13814614428135383890

/-!
# A276327: The least significant nonzero digit in greedy A001563-base (A276326), a(0) = 0.

The programs for A276327, there is no canonical definition to state claims against.
-/

/-! ## A276327.P3239319450852917608

`A342410(A030439(n))%7`
-/

namespace A276327.P3239319450852917608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342410 (A030439 n).toNat) 7

end

end A276327.P3239319450852917608

/-! ## A276327.P2902180120086106897

`and(A214392(n), A281680(A293059(n+1)))`
-/

namespace A276327.P2902180120086106897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214392 n) (A281680 (A293059 (n + 1)).toNat)

end

end A276327.P2902180120086106897

/-!
# A276328: Digit sum when n is expressed in greedy A001563-base (A276326).

The programs for A276328, there is no canonical definition to state claims against.
-/

/-! ## A276328.P16792403166308338688

`A276333(n)+a(A276335(n))` with `a(0)=0, a(1)=1`
-/

namespace A276328.P16792403166308338688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276333 n + a (A276335 n).toNat

end

end A276328.P16792403166308338688

/-! ## A276328.P17138736636189603986

`1+a(n-A258199(n))` with `a(0)=0, a(1)=1`
-/

namespace A276328.P17138736636189603986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A258199 n).toNat

end

end A276328.P17138736636189603986

/-! ## A276328.P464488252452220694

`∑{digits}[A276326(n), #]`
-/

namespace A276328.P464488252452220694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276328.P464488252452220694

/-! ## A276328.P12156330424308416017

`A326746(A276326(n))`
-/

namespace A276328.P12156330424308416017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A276326 n).toNat

end

end A276328.P12156330424308416017

/-! ## A276328.P9005747607566416890

`A007953(A276326(n)%A000124(n))`
-/

namespace A276328.P9005747607566416890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A276326 n) (A000124 n)).toNat

end

end A276328.P9005747607566416890

/-! ## A276328.P17201999867995724950

`A007953(A276326(n))%A005408(n)`
-/

namespace A276328.P17201999867995724950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A276326 n).toNat) (A005408 n)

end

end A276328.P17201999867995724950

/-! ## A276328.P8956302169162747389

`A007953(or(A000035(n), A276326(n)))`
-/

namespace A276328.P8956302169162747389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.lor (A000035 n) (A276326 n)).toNat

end

end A276328.P8956302169162747389

/-! ## A276328.P15961514686404722255

`A007953(10*A276326(n))`
-/

namespace A276328.P15961514686404722255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (10 * A276326 n).toNat

end

end A276328.P15961514686404722255

/-!
# A276329: a(n) = largest k such that A001563(k) divides n.

The programs for A276329, there is no canonical definition to state claims against.
-/

/-! ## A276329.P18214707282125894123

`A030298(n+1-A276331(n+1))`
-/

namespace A276329.P18214707282125894123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 ((n + 1 : ℤ) - A276331 (n + 1)).toNat

end

end A276329.P18214707282125894123

/-! ## A276329.P14280119160430544282

`A034968(n+1-A276331(n+1))`
-/

namespace A276329.P14280119160430544282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n + 1 : ℤ) - A276331 (n + 1)).toNat

end

end A276329.P14280119160430544282

/-! ## A276329.P7990026119481932643

`A258198(n+1-A276331(n+1))`
-/

namespace A276329.P7990026119481932643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 ((n + 1 : ℤ) - A276331 (n + 1)).toNat

end

end A276329.P7990026119481932643

/-! ## A276329.P1508739917907141448

`A030298(A276330(n+1))`
-/

namespace A276329.P1508739917907141448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A276330 (n + 1)).toNat

end

end A276329.P1508739917907141448

/-! ## A276329.P14622362613473022310

`A258198(A276330(n+1)+1)`
-/

namespace A276329.P14622362613473022310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A276330 (n + 1) + 1).toNat

end

end A276329.P14622362613473022310

/-! ## A276329.P6818619592007091903

`A034968(2*A276330(n+1))`
-/

namespace A276329.P6818619592007091903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (2 * A276330 (n + 1)).toNat

end

end A276329.P6818619592007091903

/-! ## A276329.P10358601786410165817

`A276337(A276334(n+1)-(A276331(n+1)-n))`
-/

namespace A276329.P10358601786410165817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A276334 (n + 1) - (A276331 (n + 1) - (n : ℤ))).toNat

end

end A276329.P10358601786410165817

/-! ## A276329.P7997555973202822407

`A060130(A276330(n+1)²)`
-/

namespace A276329.P7997555973202822407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A276330 (n + 1) ^ 2).toNat

end

end A276329.P7997555973202822407

/-! ## A276329.P14821275839272556294

`A001222(3*A275972(A276330(n+1)))`
-/

namespace A276329.P14821275839272556294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * A275972 (A276330 (n + 1)).toNat).toNat

end

end A276329.P14821275839272556294

/-! ## A276329.P1642099817636129756

`A276337(A276326(n+2-A276331(n+1)))`
-/

namespace A276329.P1642099817636129756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A276326 ((n + 2 : ℤ) - A276331 (n + 1)).toNat).toNat

end

end A276329.P1642099817636129756

/-! ## A276329.P5633203065639380140

`A001222(A030427(a(n-1))*A116925(A276330(n+1)))` with `a(0)=1`
-/

namespace A276329.P5633203065639380140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (A030427 (a (n - 1)).toNat * A116925 (A276330 (n + 1)).toNat).toNat

end

end A276329.P5633203065639380140

/-!
# A276330: a(n) = largest term of A001563 that divides n, a(0) = 0.

The programs for A276330, there is no canonical definition to state claims against.
-/

/-! ## A276330.P9583515608094828156

`n-A276331(n)`
-/

namespace A276330.P9583515608094828156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276331 n

end

end A276330.P9583515608094828156

/-! ## A276330.P13307500268919974798

`gcd(A009531(n), A276331(n))`
-/

namespace A276330.P13307500268919974798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009531 n) (A276331 n)

end

end A276330.P13307500268919974798

/-! ## A276330.P12888588352231691943

`gcd(n, A276331(A028310(n)))`
-/

namespace A276330.P12888588352231691943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276331 (A028310 n).toNat)

end

end A276330.P12888588352231691943

/-! ## A276330.P17569824825041395726

`A057428(n)*A276331(n)+n`
-/

namespace A276330.P17569824825041395726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A276331 n + (n : ℤ)

end

end A276330.P17569824825041395726

/-! ## A276330.P10320184815803368400

`Δ[A276331(n)]^(A231550(n+1)%2)`
-/

namespace A276330.P10320184815803368400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A231550 (n + 1)) 2 : ℤ)

end

end A276330.P10320184815803368400

/-! ## A276330.P16163625924585787028

`A326055(Δ[A276331(n)]^((n+1)%2)+1)`
-/

namespace A276330.P16163625924585787028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 ((f1 (n + 1) - f1 n) ^ ((n + 1) % 2) + 1).toNat

end

end A276330.P16163625924585787028

/-! ## A276330.P5425980400608489558

`A008683(A020484(n))*A276331(n)+n`
-/

namespace A276330.P5425980400608489558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat * A276331 n + (n : ℤ)

end

end A276330.P5425980400608489558

/-!
# A276331: a(0) = 0 and for n >= 1, a(n) = n minus the largest term of A001563 that divides n.

The programs for A276331, there is no canonical definition to state claims against.
-/

/-! ## A276331.P5607015933063546111

`n-A276330(n)`
-/

namespace A276331.P5607015933063546111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276330 n

end

end A276331.P5607015933063546111

/-! ## A276331.P4306593202804331668

`abs(A276330(n)+A001489(n))`
-/

namespace A276331.P4306593202804331668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276330 n + A001489 n|

end

end A276331.P4306593202804331668

/-! ## A276331.P9747478653850286331

`A008706(n)%(A276330(n)+A008574(n))`
-/

namespace A276331.P9747478653850286331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 n) (A276330 n + A008574 n)

end

end A276331.P9747478653850286331

/-! ## A276331.P18024799084802031405

`lcm(A276330(n)+A001489(n), A057979(n))`
-/

namespace A276331.P18024799084802031405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276330 n + A001489 n) (A057979 n)

end

end A276331.P18024799084802031405

/-! ## A276331.P12049114160276296941

`A057979(2*n+1)+A001489(A276330(n))`
-/

namespace A276331.P12049114160276296941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n + 1) + A001489 (A276330 n).toNat

end

end A276331.P12049114160276296941

/-! ## A276331.P9108068770070558888

`A061579(A061579(n))+A001489(A276330(n))`
-/

namespace A276331.P9108068770070558888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 n).toNat + A001489 (A276330 n).toNat

end

end A276331.P9108068770070558888

/-! ## A276331.P222095865630781978

`A222250(A222250(n))+A001489(A276330(n))`
-/

namespace A276331.P222095865630781978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222250 n).toNat + A001489 (A276330 n).toNat

end

end A276331.P222095865630781978

/-! ## A276331.P6023531535605343858

`A222253(A222253(n))+A001489(A276330(n))`
-/

namespace A276331.P6023531535605343858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222253 n).toNat + A001489 (A276330 n).toNat

end

end A276331.P6023531535605343858

/-! ## A276331.P14060923012353516612

`A025581(A276330(n)+∑[n])`
-/

namespace A276331.P14060923012353516612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A276330 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A276331.P14060923012353516612

/-!
# A276332: a(n) = number of terms of A001563 needed to sum to n when always choosing the largest term that divides the remaining n, a(0) = 0.

The programs for A276332, there is no canonical definition to state claims against.
-/

/-! ## A276332.P5967527959271821990

`1+a(A276331(n))` with `a(0)=0`
-/

namespace A276332.P5967527959271821990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A276331 n).toNat

end

end A276332.P5967527959271821990

/-! ## A276332.P16685136690484681262

`1+a(n-A276330(n))` with `a(0)=0, a(1)=1`
-/

namespace A276332.P16685136690484681262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A276330 n).toNat

end

end A276332.P16685136690484681262

/-! ## A276332.P5452720413195379919

`a(A276331(n))-A057428(n)` with `a(0)=0, a(1)=1`
-/

namespace A276332.P5452720413195379919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A276331 n).toNat - A057428 n

end

end A276332.P5452720413195379919

/-! ## A276332.P14451768168900620607

`a(A276331(n))-A062157(2*n)` with `a(0)=0, a(1)=1`
-/

namespace A276332.P14451768168900620607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A276331 n).toNat - A062157 (2 * n)

end

end A276332.P14451768168900620607

/-! ## A276332.P13745537104016676843

`a(A276331(n))-(n-A008619(2*n))` with `a(0)=0, a(1)=1`
-/

namespace A276332.P13745537104016676843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A276331 n).toNat - ((n : ℤ) - A008619 (2 * n))

end

end A276332.P13745537104016676843

/-! ## A276332.P7067095038816507750

`a(A276331(n))-A008683(A020484(n))` with `a(0)=0, a(1)=1`
-/

namespace A276332.P7067095038816507750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A276331 n).toNat - A008683 (A020484 n).toNat

end

end A276332.P7067095038816507750

/-!
# A276333: The most significant digit in greedy A001563-base (A276326): a(n) = floor(n/A258199(n)), a(0) = 0.

The programs for A276333, there is no canonical definition to state claims against.
-/

/-! ## A276333.P13426038869979788456

`A276327(A276334(n))`
-/

namespace A276333.P13426038869979788456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276327 (A276334 n).toNat

end

end A276333.P13426038869979788456

/-! ## A276333.P15322141924317221032

`A276327(n-A276335(n))`
-/

namespace A276333.P15322141924317221032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276327 ((n : ℤ) - A276335 n).toNat

end

end A276333.P15322141924317221032

/-! ## A276333.P18269729420904722039

`A276328(n-A276335(n))`
-/

namespace A276333.P18269729420904722039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 ((n : ℤ) - A276335 n).toNat

end

end A276333.P18269729420904722039

/-! ## A276333.P10308759101866536362

`A276332(n-A276335(n))`
-/

namespace A276333.P10308759101866536362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 ((n : ℤ) - A276335 n).toNat

end

end A276333.P10308759101866536362

/-! ## A276333.P1726839503940288869

`A276336(n-A276335(n))`
-/

namespace A276333.P1726839503940288869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 ((n : ℤ) - A276335 n).toNat

end

end A276333.P1726839503940288869

/-! ## A276333.P8062516399590277841

`A276328(A276334(2*n-n))`
-/

namespace A276333.P8062516399590277841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 (A276334 (2 * n - n)).toNat

end

end A276333.P8062516399590277841

/-! ## A276333.P386069653716880913

`A276332(2*A276334(n)-A276334(n))`
-/

namespace A276333.P386069653716880913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 (2 * A276334 n - A276334 n).toNat

end

end A276333.P386069653716880913

/-! ## A276333.P12096291216370097417

`A276336(2*A276334(n)-A276334(n))`
-/

namespace A276333.P12096291216370097417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 (2 * A276334 n - A276334 n).toNat

end

end A276333.P12096291216370097417

/-! ## A276333.P7827386966873380526

`A276328(n)-A276328(n-A276334(n))`
-/

namespace A276333.P7827386966873380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 n - A276328 ((n : ℤ) - A276334 n).toNat

end

end A276333.P7827386966873380526

/-! ## A276333.P14884955686090401598

`A276327(A276338(n))`
-/

namespace A276333.P14884955686090401598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276327 (A276338 n).toNat

end

end A276333.P14884955686090401598

/-! ## A276333.P6589357771018901337

`A276328(A276338(2*n-n))`
-/

namespace A276333.P6589357771018901337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 (A276338 (2 * n - n)).toNat

end

end A276333.P6589357771018901337

/-! ## A276333.P11021511432065646795

`A276332(2*A276338(n)-A276338(n))`
-/

namespace A276333.P11021511432065646795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 (2 * A276338 n - A276338 n).toNat

end

end A276333.P11021511432065646795

/-! ## A276333.P4675659969297051615

`A276336(2*A276338(n)-A276338(n))`
-/

namespace A276333.P4675659969297051615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 (2 * A276338 n - A276338 n).toNat

end

end A276333.P4675659969297051615

/-! ## A276333.P8568129087980699431

`A000030(A276326(n))`
-/

namespace A276333.P8568129087980699431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A276326 n).toNat

end

end A276333.P8568129087980699431

/-! ## A276333.P6336006298334705444

`A276332(A276334(A276340(n)))`
-/

namespace A276333.P6336006298334705444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 (A276334 (A276340 n).toNat).toNat

end

end A276333.P6336006298334705444

/-! ## A276333.P13684228691447201722

`A276332(A276338(n)+1)-1`
-/

namespace A276333.P13684228691447201722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 (A276338 n + 1).toNat - 1

end

end A276333.P13684228691447201722

/-! ## A276333.P8827265691505199038

`A276336(A276338(n)+A258199(n))`
-/

namespace A276333.P8827265691505199038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 (A276338 n + A258199 n).toNat

end

end A276333.P8827265691505199038

/-! ## A276333.P8672449962744641473

`A276332(A276334(A276338(n)+n))`
-/

namespace A276333.P8672449962744641473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276332 (A276334 (A276338 n + (n : ℤ)).toNat).toNat

end

end A276333.P8672449962744641473

/-! ## A276333.P1319985440446802621

`A276336(A276338(n)+A276334(n))`
-/

namespace A276333.P1319985440446802621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 (A276338 n + A276334 n).toNat

end

end A276333.P1319985440446802621

/-! ## A276333.P10499659326560807311

`A276338(n)/A258199(A276338(n)+1)`
-/

namespace A276333.P10499659326560807311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276338 n : ℚ) / (A258199 (A276338 n + 1).toNat : ℚ)

end

end A276333.P10499659326560807311

/-!
# A276334: a(n) = A258199(n) * A276333(n).

The programs for A276334, there is no canonical definition to state claims against.
-/

/-! ## A276334.P2155823180282611751

`A258199(n)*A276333(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276334.P2155823180282611751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258199 n * A276333 n

end

end A276334.P2155823180282611751

/-! ## A276334.P17927381894524774348

`n-A276335(n)`
-/

namespace A276334.P17927381894524774348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276335 n

end

end A276334.P17927381894524774348

/-! ## A276334.P6723049359067091428

`abs(A276335(n)+A001489(n))`
-/

namespace A276334.P6723049359067091428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276335 n + A001489 n|

end

end A276334.P6723049359067091428

/-! ## A276334.P11358793277567212277

`n-n%A258199(or(1, n))`
-/

namespace A276334.P11358793277567212277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A258199 (Nat.lor 1 n))

end

end A276334.P11358793277567212277

/-! ## A276334.P6799654309378391267

`A258199(n)*A276327(A276338(n))`
-/

namespace A276334.P6799654309378391267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258199 n * A276327 (A276338 n).toNat

end

end A276334.P6799654309378391267

/-! ## A276334.P11184703028937792279

`A000030(A276326(n))*A258199(n)`
-/

namespace A276334.P11184703028937792279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A276326 n).toNat * A258199 n

end

end A276334.P11184703028937792279

/-! ## A276334.P7893689882342647943

`A025581(A276335(n)+A167614(n+2))`
-/

namespace A276334.P7893689882342647943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A276335 n + A167614 (n + 2)).toNat

end

end A276334.P7893689882342647943

/-!
# A276335: Discard the most significant digit when n is expressed in greedy A001563-base (A276326), then convert back to decimal: a(n) = n - A276334(n).

The programs for A276335, there is no canonical definition to state claims against.
-/

/-! ## A276335.P15166719328689184583

`n-A276334(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276335.P15166719328689184583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276334 n

end

end A276335.P15166719328689184583

/-! ## A276335.P7137909006861853297

`A061601(A276334(n)+A061601(n))`
-/

namespace A276335.P7137909006861853297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A276334 n + A061601 n).toNat

end

end A276335.P7137909006861853297

/-! ## A276335.P7081852720200709290

`A028310(n)%A276334(A028310(n))`
-/

namespace A276335.P7081852720200709290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A276334 (A028310 n).toNat)

end

end A276335.P7081852720200709290

/-! ## A276335.P3560612420845553410

`A061579(A061579(n))+A001489(A276334(n))`
-/

namespace A276335.P3560612420845553410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 n).toNat + A001489 (A276334 n).toNat

end

end A276335.P3560612420845553410

/-! ## A276335.P9909495951603606781

`A222231(A222231(n))+A001489(A276334(n))`
-/

namespace A276335.P9909495951603606781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222231 n).toNat + A001489 (A276334 n).toNat

end

end A276335.P9909495951603606781

/-! ## A276335.P13117621496510679514

`n%A258199(A109613(n))`
-/

namespace A276335.P13117621496510679514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A258199 (A109613 n).toNat)

end

end A276335.P13117621496510679514

/-! ## A276335.P11221053523015330271

`n-A258199(n)*A276333(n)`
-/

namespace A276335.P11221053523015330271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A258199 n * A276333 n

end

end A276335.P11221053523015330271

/-!
# A276336: The largest digit used when n is written in greedy A001563-base (A276326).

The programs for A276336, there is no canonical definition to state claims against.
-/

/-! ## A276336.P10977897894235937886

`A054055(A276326(n))`
-/

namespace A276336.P10977897894235937886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A276326 n).toNat

end

end A276336.P10977897894235937886

/-! ## A276336.P16604235095562604778

`A190594(lt[A164509(n), A137850(n+1)])`
-/

namespace A276336.P16604235095562604778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276336.P16604235095562604778

/-! ## A276336.P2878176396316550388

`A054055(A007090(n)%A122529(n+1))`
-/

namespace A276336.P2878176396316550388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (Int.tmod (A007090 n) (A122529 (n + 1))).toNat

end

end A276336.P2878176396316550388

/-! ## A276336.P4975609624356386846

`A246359(A246393(n)%A246335(3*n))`
-/

namespace A276336.P4975609624356386846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (Int.tmod (A246393 n) (A246335 (3 * n))).toNat

end

end A276336.P4975609624356386846

/-! ## A276336.P13583888588381198759

`A246359(A008588(n)^(A304571(n+1)+1))`
-/

namespace A276336.P13583888588381198759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (SequenceMachineLib.roundAway ((A008588 n : ℚ) ^ (A304571 (n + 1) + 1 : ℤ))).toNat

end

end A276336.P13583888588381198759

/-!
# A276337: Number of nonzero digits in greedy A001563-base representation of n (A276326).

The programs for A276337, there is no canonical definition to state claims against.
-/

/-! ## A276337.P11935119012494298155

`1+a(A276335(n))` with `a(0)=0, a(1)=1`
-/

namespace A276337.P11935119012494298155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A276335 n).toNat

end

end A276337.P11935119012494298155

/-! ## A276337.P9031026891178005194

`A049448(a(A276335(n)))` with `a(0)=0`
-/

namespace A276337.P9031026891178005194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049448 (a (A276335 n).toNat).toNat

end

end A276337.P9031026891178005194

/-! ## A276337.P9819016556828652666

`A252753(a(A276335(n)))` with `a(0)=0`
-/

namespace A276337.P9819016556828652666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252753 (a (A276335 n).toNat).toNat

end

end A276337.P9819016556828652666

/-! ## A276337.P3258454210675633298

`∑{digits}[A276326(n), A078510(#)]`
-/

namespace A276337.P3258454210675633298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A078510 x).sum

end

end A276337.P3258454210675633298

/-! ## A276337.P11971678698632011744

`∑{digits}[A276326(n), A030308(#²)]`
-/

namespace A276337.P11971678698632011744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030308 (x ^ 2)).sum

end

end A276337.P11971678698632011744

/-! ## A276337.P17036114621245355528

`∑{digits}[A276326(n), A275806(A059590(#))]`
-/

namespace A276337.P17036114621245355528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A275806 (A059590 x).toNat).sum

end

end A276337.P17036114621245355528

/-! ## A276337.P8248444235711270874

`∑{digits}[A276326(n), A060502(A276091(#))]`
-/

namespace A276337.P8248444235711270874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A060502 (A276091 x).toNat).sum

end

end A276337.P8248444235711270874

/-! ## A276337.P7334452236163784242

`A055640(A276326(n))`
-/

namespace A276337.P7334452236163784242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A276326 n).toNat

end

end A276337.P7334452236163784242

/-!
# A276338: a(n) = A276333(n) * A001563(1+A258198(n)).

The programs for A276338, there is no canonical definition to state claims against.
-/

/-! ## A276338.P4570704893407098525

`A276340(A276334(n))`
-/

namespace A276338.P4570704893407098525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 (A276334 n).toNat

end

end A276338.P4570704893407098525

/-! ## A276338.P9826211691135543646

`A276333(n)*A001563(1+A258198(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276338.P9826211691135543646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 n * A001563 (1 + A258198 n).toNat

end

end A276338.P9826211691135543646

/-! ## A276338.P2081290147978209872

`A276340(n-A276335(n))`
-/

namespace A276338.P2081290147978209872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 ((n : ℤ) - A276335 n).toNat

end

end A276338.P2081290147978209872

/-! ## A276338.P16227472399784696653

`A276334(A255411(n)-A276339(n))`
-/

namespace A276338.P16227472399784696653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276334 (A255411 n - A276339 n).toNat

end

end A276338.P16227472399784696653

/-! ## A276338.P1164742507030729935

`A276334(eq[1, A257079(n)]-A276339(n))`
-/

namespace A276338.P1164742507030729935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276334 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n).toNat

end

end A276338.P1164742507030729935

/-! ## A276338.P9581476902216646449

`A258199(A276340(n))*A276333(n)`
-/

namespace A276338.P9581476902216646449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258199 (A276340 n).toNat * A276333 n

end

end A276338.P9581476902216646449

/-!
# A276339: a(n) = A255411(n) - A276340(n).

The programs for A276339, there is no canonical definition to state claims against.
-/

/-! ## A276339.P8389849700195051495

`A255411(n)-A276340(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276339.P8389849700195051495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - A276340 n

end

end A276339.P8389849700195051495

/-! ## A276339.P14842659569800634000

`eq[1, A275732(n)]-A276340(n)`
-/

namespace A276339.P14842659569800634000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P14842659569800634000

/-! ## A276339.P11574305914706117483

`A255411(n)%A276340(A028310(n))`
-/

namespace A276339.P11574305914706117483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255411 n) (A276340 (A028310 n).toNat)

end

end A276339.P11574305914706117483

/-! ## A276339.P2222190011488947852

`eq[0, A257081(n)]-A276340(n)`
-/

namespace A276339.P2222190011488947852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P2222190011488947852

/-! ## A276339.P12623936730227929040

`eq[0, A257261(n)]-A276340(n)`
-/

namespace A276339.P12623936730227929040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P12623936730227929040

/-! ## A276339.P2829019799215337811

`eq[0, A257511(n)]-A276340(n)`
-/

namespace A276339.P2829019799215337811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P2829019799215337811

/-! ## A276339.P4615158332474226446

`eq[0, A257680(n)]-A276340(n)`
-/

namespace A276339.P4615158332474226446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P4615158332474226446

/-! ## A276339.P1875549027236596737

`eq[1, A257079(n)]-A276340(n)`
-/

namespace A276339.P1875549027236596737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P1875549027236596737

/-! ## A276339.P12070085470856394048

`eq[n, A257080(n)]-A276340(n)`
-/

namespace A276339.P12070085470856394048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276340 n

end

end A276339.P12070085470856394048

/-! ## A276339.P17463358198465156982

`A275845(A153880(n))-A276340(n)`
-/

namespace A276339.P17463358198465156982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275845 (A153880 n).toNat - A276340 n

end

end A276339.P17463358198465156982

/-!
# A276340: Shift left the greedy A001563-base (A276326) representation of n (append 0 to the right, then convert back to decimal).

The programs for A276340, there is no canonical definition to state claims against.
-/

/-! ## A276340.P17923522238240683380

`A276338(n)+a(A276335(n))` with `a(0)=0`
-/

namespace A276340.P17923522238240683380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276338 n + a (A276335 n).toNat

end

end A276340.P17923522238240683380

/-! ## A276340.P12449412999274719091

`A255411(n)-A276339(n)`
-/

namespace A276340.P12449412999274719091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - A276339 n

end

end A276340.P12449412999274719091

/-! ## A276340.P11251692088024427914

`eq[1, A275732(n)]-A276339(n)`
-/

namespace A276340.P11251692088024427914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P11251692088024427914

/-! ## A276340.P6828433035664143358

`A255411(n)+A057428(n)*A276339(n)`
-/

namespace A276340.P6828433035664143358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n + A057428 n * A276339 n

end

end A276340.P6828433035664143358

/-! ## A276340.P12301560848954648478

`eq[0, A257261(n)]-A276339(n)`
-/

namespace A276340.P12301560848954648478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P12301560848954648478

/-! ## A276340.P14105591842986710468

`eq[0, A257511(n)]-A276339(n)`
-/

namespace A276340.P14105591842986710468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P14105591842986710468

/-! ## A276340.P15429716630831530620

`eq[0, A257680(n)]-A276339(n)`
-/

namespace A276340.P15429716630831530620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P15429716630831530620

/-! ## A276340.P13818055065754723724

`eq[1, A257079(n)]-A276339(n)`
-/

namespace A276340.P13818055065754723724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P13818055065754723724

/-! ## A276340.P11500437841184016728

`lt[A257081(n), 1]-A276339(n)`
-/

namespace A276340.P11500437841184016728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A276339 n

end

end A276340.P11500437841184016728

/-! ## A276340.P6345135791544649886

`eq[n, A257080(n)]-A276339(n)`
-/

namespace A276340.P6345135791544649886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276339 n

end

end A276340.P6345135791544649886

/-! ## A276340.P11394034663751811092

`A275845(A153880(n))-A276339(n)`
-/

namespace A276340.P11394034663751811092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275845 (A153880 n).toNat - A276339 n

end

end A276340.P11394034663751811092

/-! ## A276340.P17151076423876002218

`eq[A275846(n), A276009(n)]-A276339(n)`
-/

namespace A276340.P17151076423876002218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A276339 n

end

end A276340.P17151076423876002218

/-!
# A276341: Complement of A276340.

The programs for A276341, there is no canonical definition to state claims against.
-/

/-! ## A276341.P5771827522734408358

`comp[A276340(n)]`
-/

namespace A276341.P5771827522734408358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P5771827522734408358

/-! ## A276341.P10228567593129545943

`∑[char[A276340(n+1)-(n+1)]+1]`
-/

namespace A276341.P10228567593129545943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276341.P10228567593129545943

/-! ## A276341.P4981098412141894696

`comp[A255411(n)-A276339(n)]`
-/

namespace A276341.P4981098412141894696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P4981098412141894696

/-! ## A276341.P14041629884189584265

`comp[eq[0, A257081(n)]-A276339(n)]`
-/

namespace A276341.P14041629884189584265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P14041629884189584265

/-! ## A276341.P11766275716957070426

`comp[eq[0, A257261(n)]-A276339(n)]`
-/

namespace A276341.P11766275716957070426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P11766275716957070426

/-! ## A276341.P12145938390158808757

`comp[eq[0, A257680(n)]-A276339(n)]`
-/

namespace A276341.P12145938390158808757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P12145938390158808757

/-! ## A276341.P14988174226268068061

`comp[eq[1, A257079(n)]-A276339(n)]`
-/

namespace A276341.P14988174226268068061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P14988174226268068061

/-! ## A276341.P2193790314932744026

`comp[eq[1, A275732(n)]-A276339(n)]`
-/

namespace A276341.P2193790314932744026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P2193790314932744026

/-! ## A276341.P10420624371261138171

`comp[A275845(A153880(n))-A276339(n)]`
-/

namespace A276341.P10420624371261138171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275845 (A153880 n).toNat - A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276341.P10420624371261138171

/-! ## A276341.P11945390369111917355

`A118759(2*n+1)-A004523(A195120(4*n+1))`
-/

namespace A276341.P11945390369111917355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * n + 1) - A004523 (A195120 (4 * n + 1)).toNat

end

end A276341.P11945390369111917355

/-!
# A276342: Left inverse of A274647.

The programs for A276342, there is no canonical definition to state claims against.
-/

/-! ## A276342.P6229877625196468597

`A208052(a(n-1))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A276342.P6229877625196468597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 2] fun n a =>
  A208052 (a (n - 1)).toNat

end

end A276342.P6229877625196468597

/-!
# A276343: Permutation of natural numbers: a(1) = 1, a(A087686(1+n)) = A005187(1+a(n)), a(A088359(n)) = A055938(a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276343, there is no canonical definition to state claims against.
-/

/-! ## A276343.P6840578296644763141

`A233276(A267111(n+1))`
-/

namespace A276343.P6840578296644763141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A267111 (n + 1)).toNat

end

end A276343.P6840578296644763141

/-! ## A276343.P14022518065670137016

`A233278(A276441(n+1))`
-/

namespace A276343.P14022518065670137016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A276441 (n + 1)).toNat

end

end A276343.P14022518065670137016

/-! ## A276343.P6029852497901028059

`A276345(A276344(A276345(n+1)))`
-/

namespace A276343.P6029852497901028059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276345 (A276344 (A276345 (n + 1)).toNat).toNat

end

end A276343.P6029852497901028059

/-! ## A276343.P11390437952419221005

`A276345(A276446(A276443(n+1)))`
-/

namespace A276343.P11390437952419221005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276345 (A276446 (A276443 (n + 1)).toNat).toNat

end

end A276343.P11390437952419221005

/-! ## A276343.P8127516449695563761

`A276345(A276444(A276445(n+1)))`
-/

namespace A276343.P8127516449695563761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276345 (A276444 (A276445 (n + 1)).toNat).toNat

end

end A276343.P8127516449695563761

/-! ## A276343.P5772210900954586271

`A233278(xor(A092323(n+1), A267111(n+1)))`
-/

namespace A276343.P5772210900954586271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (Int.xor (A092323 (n + 1)) (A267111 (n + 1))).toNat

end

end A276343.P5772210900954586271

/-! ## A276343.P127708949770802089

`A233276(xor(A092323(n+1), A276441(n+1)))`
-/

namespace A276343.P127708949770802089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (Int.xor (A092323 (n + 1)) (A276441 (n + 1))).toNat

end

end A276343.P127708949770802089

/-!
# A276344: Permutation of natural numbers: a(1) = 1; a(A005187(1+n)) = A087686(1+a(n)), a(A055938(n)) = A088359(a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276344, there is no canonical definition to state claims against.
-/

/-! ## A276344.P9552285556214011562

`A267112(A233275(n+1))`
-/

namespace A276344.P9552285556214011562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A233275 (n + 1)).toNat

end

end A276344.P9552285556214011562

/-! ## A276344.P3505724725387836832

`A276442(A233277(n+1))`
-/

namespace A276344.P3505724725387836832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A233277 (n + 1)).toNat

end

end A276344.P3505724725387836832

/-! ## A276344.P12570186423104406165

`A267112(A276441(A276346(n+1)))`
-/

namespace A276344.P12570186423104406165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A276441 (A276346 (n + 1)).toNat).toNat

end

end A276344.P12570186423104406165

/-! ## A276344.P8889958095340291299

`A276346(A276343(A276346(A276346(A276345(n+1)))))`
-/

namespace A276344.P8889958095340291299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276346 (A276343 (A276346 (A276346 (A276345 (n + 1)).toNat).toNat).toNat).toNat

end

end A276344.P8889958095340291299

/-! ## A276344.P16117112333881033173

`A276446(A276443(A276346(A276442(A276441(n+1)))))`
-/

namespace A276344.P16117112333881033173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276346 (A276442 (A276441 (n + 1)).toNat).toNat).toNat).toNat

end

end A276344.P16117112333881033173

/-! ## A276344.P13147571603719774655

`A276446(A276443(A276346(A276444(A276443(n+1)))))`
-/

namespace A276344.P13147571603719774655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276346 (A276444 (A276443 (n + 1)).toNat).toNat).toNat).toNat

end

end A276344.P13147571603719774655

/-!
# A276345: Permutation of natural numbers: a(1) = 1, a(A087686(1+n)) = A055938(a(n)), a(A088359(n)) = A005187(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276345, there is no canonical definition to state claims against.
-/

/-! ## A276345.P8011272070339807468

`A233278(A267111(n+1))`
-/

namespace A276345.P8011272070339807468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A267111 (n + 1)).toNat

end

end A276345.P8011272070339807468

/-! ## A276345.P17143686726757767560

`A233276(A276441(n+1))`
-/

namespace A276345.P17143686726757767560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A276441 (n + 1)).toNat

end

end A276345.P17143686726757767560

/-! ## A276345.P15578858667577224800

`A233276(A233277(A276343(n+1)))`
-/

namespace A276345.P15578858667577224800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A233277 (A276343 (n + 1)).toNat).toNat

end

end A276345.P15578858667577224800

/-! ## A276345.P14393470756955360749

`A276343(A276446(A276443(n+1)))`
-/

namespace A276345.P14393470756955360749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276343 (A276446 (A276443 (n + 1)).toNat).toNat

end

end A276345.P14393470756955360749

/-! ## A276345.P13514068657740906527

`A276343(A276444(A276445(n+1)))`
-/

namespace A276345.P13514068657740906527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276343 (A276444 (A276445 (n + 1)).toNat).toNat

end

end A276345.P13514068657740906527

/-! ## A276345.P6455076236252685282

`A233276(xor(A092323(n+1), A267111(n+1)))`
-/

namespace A276345.P6455076236252685282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (Int.xor (A092323 (n + 1)) (A267111 (n + 1))).toNat

end

end A276345.P6455076236252685282

/-! ## A276345.P3303113049993215306

`A233278(xor(A092323(n+1), A276441(n+1)))`
-/

namespace A276345.P3303113049993215306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (Int.xor (A092323 (n + 1)) (A276441 (n + 1))).toNat

end

end A276345.P3303113049993215306

/-! ## A276345.P4546944811103102799

`A276343(A276346(A276343(A276343(A276344(n+1)))))`
-/

namespace A276345.P4546944811103102799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276343 (A276346 (A276343 (A276343 (A276344 (n + 1)).toNat).toNat).toNat).toNat

end

end A276345.P4546944811103102799

/-!
# A276346: Permutation of natural numbers: a(1) = 1; a(A005187(1+n)) = A088359(a(n)), a(A055938(n)) = A087686(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276346, there is no canonical definition to state claims against.
-/

/-! ## A276346.P14477582019951675785

`A267112(A233277(n+1))`
-/

namespace A276346.P14477582019951675785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A233277 (n + 1)).toNat

end

end A276346.P14477582019951675785

/-! ## A276346.P3695425772657984361

`A276442(A233275(n+1))`
-/

namespace A276346.P3695425772657984361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A233275 (n + 1)).toNat

end

end A276346.P3695425772657984361

/-! ## A276346.P2918845066291800307

`A276442(A267111(A276344(n+1)))`
-/

namespace A276346.P2918845066291800307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A267111 (A276344 (n + 1)).toNat).toNat

end

end A276346.P2918845066291800307

/-! ## A276346.P12861855799406708753

`A276446(A276443(A276344(A276442(A276441(n+1)))))`
-/

namespace A276346.P12861855799406708753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276344 (A276442 (A276441 (n + 1)).toNat).toNat).toNat).toNat

end

end A276346.P12861855799406708753

/-! ## A276346.P4907288293195038695

`A276446(A276443(A276344(A276444(A276443(n+1)))))`
-/

namespace A276346.P4907288293195038695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276344 (A276444 (A276443 (n + 1)).toNat).toNat).toNat).toNat

end

end A276346.P4907288293195038695

/-!
# A276347: Numbers n for which A020639(n) = A272565(n).

The programs for A276347, there is no canonical definition to state claims against.
-/

/-! ## A276347.P16739370394828461847

`∑[char[A276437(n+1)-(n+1)]+1]`
-/

namespace A276347.P16739370394828461847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276347.P16739370394828461847

/-! ## A276347.P7351585143560468415

`eq[A020639(n+1), A272565(n+1)]+1`
-/

namespace A276347.P7351585143560468415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276347.P7351585143560468415

/-! ## A276347.P3278421187425103027

`eq[char[A276437(n+1)], A000007(n)]`
-/

namespace A276347.P3278421187425103027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276347.P3278421187425103027

/-! ## A276347.P6413465199831069414

`comp[A276437(A322587(n+1))-1]+1`
-/

namespace A276347.P6413465199831069414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (A322587 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276347.P6413465199831069414

/-! ## A276347.P5055077709052513976

`comp[A276437(A026366(n+1))-1]+1`
-/

namespace A276347.P5055077709052513976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (A026366 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276347.P5055077709052513976

/-! ## A276347.P3015008713651552836

`∑[A340102(∑[gcd(3, 1-n)])]`
-/

namespace A276347.P3015008713651552836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276347.P3015008713651552836

/-! ## A276347.P6986310228510222650

`∑[A340102(Δ[A194275(n)])]`
-/

namespace A276347.P6986310228510222650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276347.P6986310228510222650

/-! ## A276347.P7605395077662098961

`∑[A340102(∑[A006530(a(n-3))])]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A276347.P7605395077662098961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f2 =>
  A006530 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276347.P7605395077662098961

/-!
# A276348: a(n) = the smallest number k such that k*n is a number with a string of 1's followed by a string of 0's.

The programs for A276348, there is no canonical definition to state claims against.
-/

/-! ## A276348.P9027977699405936420

`A052983(n+1)/(n+1)`
-/

namespace A276348.P9027977699405936420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052983 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A276348.P9027977699405936420

/-! ## A276348.P689582456414437733

`lcm(10, A244859(n+1))/(n+1)`
-/

namespace A276348.P689582456414437733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A244859 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A276348.P689582456414437733

/-! ## A276348.P10924584865239642721

`A244927(n+1)+9*A190301(n+1)`
-/

namespace A276348.P10924584865239642721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244927 (n + 1) + 9 * A190301 (n + 1)

end

end A276348.P10924584865239642721

/-! ## A276348.P4193674286260161226

`(n+1)^A008683(A006489(n+1))*A052983(n+1)`
-/

namespace A276348.P4193674286260161226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A006489 (n + 1)).toNat : ℤ) * (A052983 (n + 1) : ℚ)

end

end A276348.P4193674286260161226

/-! ## A276348.P13718915254952316302

`A007088(A306544(n+1))/(n+1)`
-/

namespace A276348.P13718915254952316302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A306544 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A276348.P13718915254952316302

/-!
# A276349: Numbers consisting of a nonempty string of 1's followed by a nonempty string of 0's.

The programs for A276349, the canonical program `A276349.P10108756407215495079` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276349 has offset 1).

The definition of A276349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276349.P11915816327300905366

`10*A309761(n+1)`
-/

namespace A276349.P11915816327300905366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A309761 (n + 1)

end

end A276349.P11915816327300905366

namespace A276349

/-- `10*A309761(n+1)` -/
def P11915816327300905366.Spec : Prop :=
  ∀ n, P11915816327300905366.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P10108756407215495079

`A002275(A002260(n+1))*10^A004736(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276349

/-- `A002275(A002260(n+1))*10^A004736(n+1)` -/
def P10108756407215495079.Spec : Prop :=
  ∀ n, P10108756407215495079.a n = (A276349 (n + 1) : ℚ)

end A276349

/-! ## A276349.P7120128432308408640

`A309761(comp[∑[n]])`
-/

namespace A276349.P7120128432308408640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276349.P7120128432308408640

namespace A276349

/-- `A309761(comp[∑[n]])` -/
def P7120128432308408640.Spec : Prop :=
  ∀ n, P7120128432308408640.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P1396922490612499458

`∩[A273245(n+1), A064222(n)]`
-/

namespace A276349.P1396922490612499458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276349.P1396922490612499458

namespace A276349

/-- `∩[A273245(n+1), A064222(n)]` -/
def P1396922490612499458.Spec : Prop :=
  ∀ n, (P1396922490612499458.a n : ℤ) = A276349 (n + 1)

end A276349

/-! ## A276349.P13462544616026664887

`∩[A273245(n+1), A309761(n+1)]`
-/

namespace A276349.P13462544616026664887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276349.P13462544616026664887

namespace A276349

/-- `∩[A273245(n+1), A309761(n+1)]` -/
def P13462544616026664887.Spec : Prop :=
  ∀ n, (P13462544616026664887.a n : ℤ) = A276349 (n + 1)

end A276349

/-! ## A276349.P3493818036717921796

`2*5*A007088(∑[A057728(n+1)])`
-/

namespace A276349.P3493818036717921796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A276349.P3493818036717921796

namespace A276349

/-- `2*5*A007088(∑[A057728(n+1)])` -/
def P3493818036717921796.Spec : Prop :=
  ∀ n, P3493818036717921796.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P17260493607773871075

`A007088(A043569(n+1))`
-/

namespace A276349.P17260493607773871075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A043569 (n + 1)).toNat

end

end A276349.P17260493607773871075

namespace A276349

/-- `A007088(A043569(n+1))` -/
def P17260493607773871075.Spec : Prop :=
  ∀ n, P17260493607773871075.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P17700948011433877282

`A007088(A081118(n+1)+1)`
-/

namespace A276349.P17700948011433877282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081118 (n + 1) + 1).toNat

end

end A276349.P17700948011433877282

namespace A276349

/-- `A007088(A081118(n+1)+1)` -/
def P17700948011433877282.Spec : Prop :=
  ∀ n, P17700948011433877282.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P15768522859689764650

`A007088(A224195(n+1)-1)`
-/

namespace A276349.P15768522859689764650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A224195 (n + 1) - 1).toNat

end

end A276349.P15768522859689764650

namespace A276349

/-- `A007088(A224195(n+1)-1)` -/
def P15768522859689764650.Spec : Prop :=
  ∀ n, P15768522859689764650.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P2556712624573203169

`A007088(2*(A089633(n)+1))`
-/

namespace A276349.P2556712624573203169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * (A089633 n + 1)).toNat

end

end A276349.P2556712624573203169

namespace A276349

/-- `A007088(2*(A089633(n)+1))` -/
def P2556712624573203169.Spec : Prop :=
  ∀ n, P2556712624573203169.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P4975103693942282071

`A007088(2*A023758(n+2))`
-/

namespace A276349.P4975103693942282071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A023758 (n + 2)).toNat

end

end A276349.P4975103693942282071

namespace A276349

/-- `A007088(2*A023758(n+2))` -/
def P4975103693942282071.Spec : Prop :=
  ∀ n, P4975103693942282071.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P14923649999050313090

`A007088(∑[2*A057728(n+1)])`
-/

namespace A276349.P14923649999050313090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276349.P14923649999050313090

namespace A276349

/-- `A007088(∑[2*A057728(n+1)])` -/
def P14923649999050313090.Spec : Prop :=
  ∀ n, P14923649999050313090.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P15894687435156724280

`A007088(A089633(n)+A089633(n)+2)`
-/

namespace A276349.P15894687435156724280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A089633 n + (A089633 n + 2)).toNat

end

end A276349.P15894687435156724280

namespace A276349

/-- `A007088(A089633(n)+A089633(n)+2)` -/
def P15894687435156724280.Spec : Prop :=
  ∀ n, P15894687435156724280.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P6149346568868229380

`A007088(2*(A140513(n)-A130321(n)))`
-/

namespace A276349.P6149346568868229380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * (A140513 n - A130321 n)).toNat

end

end A276349.P6149346568868229380

namespace A276349

/-- `A007088(2*(A140513(n)-A130321(n)))` -/
def P6149346568868229380.Spec : Prop :=
  ∀ n, P6149346568868229380.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P13461087307913344233

`A007088(A023758(n+2)+A023758(n+2))`
-/

namespace A276349.P13461087307913344233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023758 (n + 2) + A023758 (n + 2)).toNat

end

end A276349.P13461087307913344233

namespace A276349

/-- `A007088(A023758(n+2)+A023758(n+2))` -/
def P13461087307913344233.Spec : Prop :=
  ∀ n, P13461087307913344233.a n = A276349 (n + 1)

end A276349

/-! ## A276349.P16373534788324225354

`record[10*A139709(n+1)]`
-/

namespace A276349.P16373534788324225354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A139709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276349.P16373534788324225354

namespace A276349

/-- `record[10*A139709(n+1)]` -/
def P16373534788324225354.Spec : Prop :=
  ∀ n, P16373534788324225354.a n = A276349 (n + 1)

end A276349

/-!
# A276351: a(n) = 2*(3 + 2 n + 3 n^2 + 3 n^3 + 3 n^4 + n^5 + n^6).

The programs for A276351, the canonical program `A276351.P15875027185146219011` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276351 has offset 0).

The definition of A276351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(3+2*n+3*n²+3*n^3+3*n^4+n^5+n^6)` (program `A276351.P15875027185146219011`, by `A276351.P15875027185146219011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276351.P15875027185146219011

`2*(3+2*n+3*n²+3*n^3+3*n^4+n^5+n^6)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276351

/-- `2*(3+2*n+3*n²+3*n^3+3*n^4+n^5+n^6)` -/
def P15875027185146219011.Spec : Prop :=
  ∀ n, (P15875027185146219011.a n : ℤ) = A276351 n

theorem P15875027185146219011.correct : P15875027185146219011.Spec := by
  intro n
  simp only [A276351]

end A276351

/-!
# A276352: a(n) = 100^n - 10^n.

The programs for A276352, the canonical program `A276352.P16541983587302487839` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276352 has offset 0).

The definition of A276352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100^n-10^n` (program `A276352.P16541983587302487839`, by `A276352.P16541983587302487839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276352.P16541983587302487839

`100^n-10^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276352

/-- `100^n-10^n` -/
def P16541983587302487839.Spec : Prop :=
  ∀ n, P16541983587302487839.a n = A276352 n

theorem P16541983587302487839.correct : P16541983587302487839.Spec := by
  intro n
  simp only [A276352]

end A276352

/-! ## A276352.P13165668755201636260

`A002283(n)*A011557(n)`
-/

namespace A276352.P13165668755201636260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A011557 n

end

end A276352.P13165668755201636260

namespace A276352

/-- `A002283(n)*A011557(n)` -/
def P13165668755201636260.Spec : Prop :=
  ∀ n, P13165668755201636260.a n = A276352 n

end A276352

/-! ## A276352.P12605299497688064266

`10^n*A002283(2*n)/(10^n+1)`
-/

namespace A276352.P12605299497688064266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) * A002283 (2 * n) : ℚ) / (10 ^ n + 1 : ℚ)

end

end A276352.P12605299497688064266

namespace A276352

/-- `10^n*A002283(2*n)/(10^n+1)` -/
def P12605299497688064266.Spec : Prop :=
  ∀ n, P12605299497688064266.a n = (A276352 n : ℚ)

end A276352

/-! ## A276352.P13479294344361076422

`floor(10^n/9)*Δ[or(1, 10^n)]`
-/

namespace A276352.P13479294344361076422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A276352.P13479294344361076422

namespace A276352

/-- `floor(10^n/9)*Δ[or(1, 10^n)]` -/
def P13479294344361076422.Spec : Prop :=
  ∀ n, P13479294344361076422.a n = A276352 n

end A276352

/-!
# A276355: Sum of primes between 100*n and 100*n + 99.

The programs for A276355, there is no canonical definition to state claims against.
-/

/-! ## A276355.P12182083431334526179

`Δ[A007504(A028505(n+1)-A038822(n))]`
-/

namespace A276355.P12182083431334526179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A028505 (n + 1) - A038822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P12182083431334526179

/-! ## A276355.P16226009849671916316

`Δ[A034387(A008706(4*5*n))]`
-/

namespace A276355.P16226009849671916316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A008706 (4 * (5 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P16226009849671916316

/-! ## A276355.P13279404693594469285

`Δ[A066911(A218255(10*n))]`
-/

namespace A276355.P13279404693594469285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A218255 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P13279404693594469285

/-! ## A276355.P8750551710699733311

`Δ[A034387(A218255(10*n)-1)]`
-/

namespace A276355.P8750551710699733311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A218255 (10 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P8750551710699733311

/-! ## A276355.P12947564526581732252

`Δ[A007504(A230980(10*10*n))]`
-/

namespace A276355.P12947564526581732252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A230980 (10 * (10 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276355.P12947564526581732252

/-!
# A276356: Number of Hamiltonian cycles in the Cartesian product graph K_2 times K_n.

The programs for A276356, there is no canonical definition to state claims against.
-/

/-! ## A276356.P12194117235057498096

`n!/2*(A001040(n)+A001053(n+1))`
-/

namespace A276356.P12194117235057498096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 * (A001040 n + A001053 (n + 1) : ℚ)

end

end A276356.P12194117235057498096

/-! ## A276356.P15176565593178648018

`floor(A089039(n+1)/2)`
-/

namespace A276356.P15176565593178648018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089039 (n + 1) : ℚ) / 2⌋

end

end A276356.P15176565593178648018

/-! ## A276356.P2510978142501012254

`lcm(ceil(A089039(n+1)/2), A353381(n+1))`
-/

namespace A276356.P2510978142501012254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(A089039 (n + 1) : ℚ) / 2⌉ (A353381 (n + 1))

end

end A276356.P2510978142501012254

/-! ## A276356.P8896401614084332653

`A089039(n+1)%A341498(n+1)/2`
-/

namespace A276356.P8896401614084332653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A089039 (n + 1)) (A341498 (n + 1)) : ℚ) / 2

end

end A276356.P8896401614084332653

/-!
# A276357: Primes of the form (p*2^x-1)/3, where p is also prime and x is a positive integer.

The programs for A276357, there is no canonical definition to state claims against.
-/

/-! ## A276357.P9350781193099198041

`p?[A006083(A192868(n+1))]`
-/

namespace A276357.P9350781193099198041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A192868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276357.P9350781193099198041

/-! ## A276357.P7153670029873458050

`p?[(n+1)*A257990(A166517(n))]`
-/

namespace A276357.P7153670029873458050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257990 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276357.P7153670029873458050

/-! ## A276357.P10087108153763541678

`p?[A340371(A016789(n))+2*n]`
-/

namespace A276357.P10087108153763541678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A016789 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276357.P10087108153763541678

/-! ## A276357.P6786398796596787034

`eq[A053204(n), A087039(3*n+1)]`
-/

namespace A276357.P6786398796596787034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276357.P6786398796596787034

/-! ## A276357.P15095478446752113289

`eq[A053204(n), A322813(3*n+1)]`
-/

namespace A276357.P15095478446752113289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276357.P15095478446752113289

/-! ## A276357.P3479149666345729430

`eq[A107279(n), A279051(3*n+1)]`
-/

namespace A276357.P3479149666345729430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279051 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276357.P3479149666345729430

/-! ## A276357.P17872490083151878967

`record[A014963(A133310(A038550(n+1)))]`
-/

namespace A276357.P17872490083151878967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A133310 (A038550 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276357.P17872490083151878967

/-! ## A276357.P3533207292811687673

`p?[A006083(A004273(A093641(n+1)))]`
-/

namespace A276357.P3533207292811687673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A004273 (A093641 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276357.P3533207292811687673

/-! ## A276357.P15849315862024807772

`record[A020639(A002264(A192868(n+4)))]`
-/

namespace A276357.P15849315862024807772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002264 (A192868 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276357.P15849315862024807772

/-! ## A276357.P7444182447403638611

`p?[A005408(n)*A340371(A016789(n))]`
-/

namespace A276357.P7444182447403638611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A340371 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276357.P7444182447403638611

/-!
# A276358: G.f. A(x) satisfies: A(x - x*A(x)) = x + x*A(x).

The programs for A276358, there is no canonical definition to state claims against.
-/

/-! ## A276358.P125966135303573753

`A276409(A276416(n))+A276367(n+1)`
-/

namespace A276358.P125966135303573753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276409 (A276416 n).toNat + A276367 (n + 1)

end

end A276358.P125966135303573753

/-! ## A276358.P17790321452036704924

`A028310(2*(A067318(n+1)-A212395(n)))`
-/

namespace A276358.P17790321452036704924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (A067318 (n + 1) - A212395 n)).toNat

end

end A276358.P17790321452036704924

/-!
# A276360: G.f. satisfies: A(x - A(x)^2) = x + 2*A(x)^2.

The programs for A276360, there is no canonical definition to state claims against.
-/

/-! ## A276360.P2803136043883786053

`lcm(A126324(n), A247315(A213794(n)))`
-/

namespace A276360.P2803136043883786053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A126324 n) (A247315 (A213794 n).toNat)

end

end A276360.P2803136043883786053

/-!
# A276361: G.f. satisfies: A(x - 2*A(x)^2) = x + A(x)^2.

The programs for A276361, there is no canonical definition to state claims against.
-/

/-! ## A276361.P7461518519147122761

`A008545(n)+A004826(A278687(n+1))`
-/

namespace A276361.P7461518519147122761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008545 n + A004826 (A278687 (n + 1)).toNat

end

end A276361.P7461518519147122761

/-!
# A276364: G.f. A(x) satisfies: A(x - A(x)^3) = x + A(x)^3, where A(x) = Sum_{n>=1} a(n)*x^(2*n-1).

The programs for A276364, there is no canonical definition to state claims against.
-/

/-! ## A276364.P10454463994459704606

`A133488(A064960(n+1))`
-/

namespace A276364.P10454463994459704606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133488 (A064960 (n + 1)).toNat

end

end A276364.P10454463994459704606

/-!
# A276365: G.f. A(x) satisfies: A(x - 2*A(x)^2) = x - A(x)^2.

The programs for A276365, there is no canonical definition to state claims against.
-/

/-! ## A276365.P14053347875665943887

`A366843(5*C(n, 2)+n+1)`
-/

namespace A276365.P14053347875665943887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366843 (5 * Nat.choose n 2 + n + 1)

end

end A276365.P14053347875665943887

/-!
# A276366: G.f. A(x) satisfies: A(x - A(x)^3) = x + A(x)^2.

The programs for A276366, there is no canonical definition to state claims against.
-/

/-! ## A276366.P14237835368353917031

`A166991(n)+A060356(A061992(n))`
-/

namespace A276366.P14237835368353917031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166991 n + A060356 (A061992 n).toNat

end

end A276366.P14237835368353917031

/-! ## A276366.P13246303804780716265

`A341025(A006261(n))+A166991(n)`
-/

namespace A276366.P13246303804780716265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A006261 n).toNat + 120) + A166991 n

end

end A276366.P13246303804780716265

/-! ## A276366.P5734022791973390099

`A330657(A330677(n))+A166991(n)`
-/

namespace A276366.P5734022791973390099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330657 (A330677 n).toNat + A166991 n

end

end A276366.P5734022791973390099

/-!
# A276367: G.f.: A(x) = Sum_{n>=1} Product_{k=0..n-1} (x + k*A(x)).

The programs for A276367, there is no canonical definition to state claims against.
-/

/-! ## A276367.P1900111229977017852

`A326351(n+1)-floor(n/4)`
-/

namespace A276367.P1900111229977017852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326351 (n + 1) - ⌊(n : ℚ) / 4⌋

end

end A276367.P1900111229977017852

/-! ## A276367.P11230775202227549679

`record[and(1-3%(n²+1), A326351(n))]`
-/

namespace A276367.P11230775202227549679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - ((3 % (n ^ 2 + 1) : ℕ) : ℤ)) (A326351 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276367.P11230775202227549679

/-!
# A276368: G.f. A(x) satisfies: A(x - 3*x^3) = 1/(1 - 3*x).

The programs for A276368, the canonical program `A276368.P15727639332310724622` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276368 has offset 0).

The definition of A276368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276368.P14655544311971356978

`a(n-1)/n*∑[A172989(a(n-1)+2)]` with `a(0)=1`
-/

namespace A276368.P14655544311971356978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A172989 (f1 (n - 1) + 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A276368.P14655544311971356978

namespace A276368

/-- `a(n-1)/n*∑[A172989(a(n-1)+2)]` -/
def P14655544311971356978.Spec : Prop :=
  ∀ n, P14655544311971356978.a n = (A276368 n : ℚ)

end A276368

/-! ## A276368.P15727639332310724622

`A056449(n)*A065942(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276368

/-- `A056449(n)*A065942(n)` -/
def P15727639332310724622.Spec : Prop :=
  ∀ n, P15727639332310724622.a n = A276368 n

theorem P15727639332310724622.correct : P15727639332310724622.Spec := by
  intro n
  simp only [A276368]

end A276368

/-! ## A276368.P3501143257416409469

`lcm(A065942(n), A125824(n))`
-/

namespace A276368.P3501143257416409469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065942 n) (A125824 n)

end

end A276368.P3501143257416409469

namespace A276368

/-- `lcm(A065942(n), A125824(n))` -/
def P3501143257416409469.Spec : Prop :=
  ∀ n, (P3501143257416409469.a n : ℤ) = A276368 n

end A276368

/-! ## A276368.P3992662128889231625

`∏[A010684(n)]*A065942(n)`
-/

namespace A276368.P3992662128889231625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A065942 n

end

end A276368.P3992662128889231625

namespace A276368

/-- `∏[A010684(n)]*A065942(n)` -/
def P3992662128889231625.Spec : Prop :=
  ∀ n, P3992662128889231625.a n = A276368 n

end A276368

/-! ## A276368.P12287680421798244580

`∏[A298033(n)/A004277(n)]`
-/

namespace A276368.P12287680421798244580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298033 n : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276368.P12287680421798244580

namespace A276368

/-- `∏[A298033(n)/A004277(n)]` -/
def P12287680421798244580.Spec : Prop :=
  ∀ n, P12287680421798244580.a n = (A276368 n : ℚ)

end A276368

/-!
# A276370: G.f. A(x) satisfies: A( x - A(x) ) = x^2.

The programs for A276370, there is no canonical definition to state claims against.
-/

/-! ## A276370.P5010666411207320624

`A292809(n+2)`
-/

namespace A276370.P5010666411207320624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292809 (n + 2)

end

end A276370.P5010666411207320624

/-! ## A276370.P5112135638441629634

`abs(A138740(n+2))`
-/

namespace A276370.P5112135638441629634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138740 (n + 2)|

end

end A276370.P5112135638441629634

/-! ## A276370.P15375403415505917065

`record[A292809(A008619(A103221(n)))]`
-/

namespace A276370.P15375403415505917065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292809 (A008619 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276370.P15375403415505917065

/-! ## A276370.P3572276554613434709

`record[A292809(A220604(A005408(n)))]`
-/

namespace A276370.P3572276554613434709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292809 (A220604 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276370.P3572276554613434709

/-! ## A276370.P718040383227000383

`record[A292809(A220604(A016777(n)))]`
-/

namespace A276370.P718040383227000383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292809 (A220604 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276370.P718040383227000383

/-! ## A276370.P14416608664109145914

`record[A292809(A220604(A016789(n)))]`
-/

namespace A276370.P14416608664109145914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292809 (A220604 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276370.P14416608664109145914

/-!
# A276371: Expansion of e.g.f. exp(x/2)/(2 - exp(2*x))^(1/4).

The programs for A276371, there is no canonical definition to state claims against.
-/

/-! ## A276371.P16801270085647655915

`A229558(n)/2^n`
-/

namespace A276371.P16801270085647655915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229558 n : ℚ) / (2 ^ n : ℚ)

end

end A276371.P16801270085647655915

/-! ## A276371.P13215917572471940889

`floor(A229558(n)/A000079(n))`
-/

namespace A276371.P13215917572471940889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229558 n : ℚ) / (A000079 n : ℚ)⌋

end

end A276371.P13215917572471940889

/-! ## A276371.P13344922407808138531

`A025444(n)+A229558(n)/A000079(n)`
-/

namespace A276371.P13344922407808138531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) + (A229558 n : ℚ) / (A000079 n : ℚ)

end

end A276371.P13344922407808138531

/-! ## A276371.P1964017496087703865

`abs(A229558(n)/A000079(n)*A033999(n))`
-/

namespace A276371.P1964017496087703865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A229558 n : ℚ) / (A000079 n : ℚ) * (A033999 n : ℚ)|

end

end A276371.P1964017496087703865

/-! ## A276371.P11937796173681004818

`1/(A014210(n)-A013597(n))*A229558(n)`
-/

namespace A276371.P11937796173681004818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A014210 n - A013597 n : ℚ) * (A229558 n : ℚ)

end

end A276371.P11937796173681004818

/-! ## A276371.P7881729203311120702

`A229558(n)/A000079(n)*A007318(A000217(n))`
-/

namespace A276371.P7881729203311120702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229558 n : ℚ) / (A000079 n : ℚ) * (A007318 (A000217 n).toNat : ℚ)

end

end A276371.P7881729203311120702

/-! ## A276371.P10426391146560974406

`A229558(n)/A000079(n)*A007318(A000045(n²%(n+1)))`
-/

namespace A276371.P10426391146560974406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229558 n : ℚ) / (A000079 n : ℚ) * (A007318 (A000045 (n ^ 2 % (n + 1))).toNat : ℚ)

end

end A276371.P10426391146560974406

/-!
# A276372: Numbers n such that, in the prime factorization of n, the list of the exponents is a rotation of the list of the prime factors.

The programs for A276372, there is no canonical definition to state claims against.
-/

/-! ## A276372.P1805668178036484452

`A122406(A052040(n+1))%A228421(n+1)`
-/

namespace A276372.P1805668178036484452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122406 (A052040 (n + 1)).toNat) (A228421 (n + 1))

end

end A276372.P1805668178036484452

/-!
# A276373: Least k such that phi(k*n-1) = phi(k*n+1), or -1 if no such k exists.

The programs for A276373, there is no canonical definition to state claims against.
-/

/-! ## A276373.P6786685130972130395

`gcd(A276052(n+1), A279048(A129981(n)))`
-/

namespace A276373.P6786685130972130395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276052 (n + 1)) (A279048 (A129981 n).toNat)

end

end A276373.P6786685130972130395

/-! ## A276373.P2572737298930157825

`A272283(A241703(n+1)!)-n`
-/

namespace A276373.P2572737298930157825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272283 (Nat.factorial (A241703 (n + 1)).toNat) - (n : ℤ)

end

end A276373.P2572737298930157825

/-!
# A276374: Numbers n such that A240024(n) = A002808(n).

The programs for A276374, there is no canonical definition to state claims against.
-/

/-! ## A276374.P3828034818182673474

`eq[n, A239965(n+1)]`
-/

namespace A276374.P3828034818182673474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276374.P3828034818182673474

/-! ## A276374.P2234181101065739353

`eq[n+2, A238862(n+1)]+1`
-/

namespace A276374.P2234181101065739353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276374.P2234181101065739353

/-! ## A276374.P4007855310658074588

`A065475(eq[n+2, A238862(n+1)])`
-/

namespace A276374.P4007855310658074588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276374.P4007855310658074588

/-! ## A276374.P10994815846270351988

`A326178(eq[n+2, A238862(n+1)])`
-/

namespace A276374.P10994815846270351988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276374.P10994815846270351988

/-! ## A276374.P2832093769874779336

`eq[A002808(n+1), A240024(n+1)]+1`
-/

namespace A276374.P2832093769874779336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276374.P2832093769874779336

/-!
# A276375: Numbers n such that A240024(n + 1) = A002808(n).

The programs for A276375, there is no canonical definition to state claims against.
-/

/-! ## A276375.P1316884435937723827

`A239943(n+2)-1`
-/

namespace A276375.P1316884435937723827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239943 (n + 2) - 1

end

end A276375.P1316884435937723827

/-! ## A276375.P617112382805199034

`eq[n+2, A238862(n+2)]+1`
-/

namespace A276375.P617112382805199034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276375.P617112382805199034

/-! ## A276375.P6632493659756866553

`eq[n+2, A239965(n+2)]+1`
-/

namespace A276375.P6632493659756866553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239965 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276375.P6632493659756866553

/-! ## A276375.P5280996876628209045

`eq[A087156(n+1), A238862(n+1)]`
-/

namespace A276375.P5280996876628209045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276375.P5280996876628209045

/-! ## A276375.P7274868946805255098

`eq[A087156(n+1), A239965(n+1)]`
-/

namespace A276375.P7274868946805255098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276375.P7274868946805255098

/-! ## A276375.P13023280227316509187

`eq[A018252(n+2), A240024(n+2)]+1`
-/

namespace A276375.P13023280227316509187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240024 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276375.P13023280227316509187

/-! ## A276375.P2049262062959317084

`record[gcd(n+1, A240024(n+2)-A002808(n+1))]`
-/

namespace A276375.P2049262062959317084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A240024 (n + 2) - A002808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276375.P2049262062959317084

/-! ## A276375.P11589791610238897900

`A023443(A239943(n+2))`
-/

namespace A276375.P11589791610238897900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A239943 (n + 2)).toNat

end

end A276375.P11589791610238897900

/-!
# A276376: Exponent of highest power of 3 dividing product of composite numbers between n-th prime and (n+1)-st prime.

The programs for A276376, the canonical program `A276376.P13650551449517136747` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276376 has offset 1).

The definition of A276376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276376.P13650551449517136747

`Δ[A054861(or(1, A000040(n+1)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276376

/-- `Δ[A054861(or(1, A000040(n+1)))]` -/
def P13650551449517136747.Spec : Prop :=
  ∀ n, P13650551449517136747.a n = A276376 (n + 1)

theorem P13650551449517136747.correct : P13650551449517136747.Spec := by
  intro n
  simp only [A276376, Nat.add_sub_cancel]

end A276376

/-! ## A276376.P16829327957996060069

`Δ[A054861(A000040(abs(1-n)+2))]`
-/

namespace A276376.P16829327957996060069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A000040 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P16829327957996060069

namespace A276376

/-- `Δ[A054861(A000040(abs(1-n)+2))]` -/
def P16829327957996060069.Spec : Prop :=
  ∀ n, P16829327957996060069.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P2024850492323069999

`Δ[A054861(A006530(A001748(n+1)))]`
-/

namespace A276376.P2024850492323069999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A006530 (A001748 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P2024850492323069999

namespace A276376

/-- `Δ[A054861(A006530(A001748(n+1)))]` -/
def P2024850492323069999.Spec : Prop :=
  ∀ n, P2024850492323069999.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P9971502244442235277

`Δ[A054861(A006530(A001750(n+1)))]`
-/

namespace A276376.P9971502244442235277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A006530 (A001750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P9971502244442235277

namespace A276376

/-- `Δ[A054861(A006530(A001750(n+1)))]` -/
def P9971502244442235277.Spec : Prop :=
  ∀ n, P9971502244442235277.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P15720257272086825244

`Δ[A054861(A109613(A000040(n+1)))]`
-/

namespace A276376.P15720257272086825244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A109613 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P15720257272086825244

namespace A276376

/-- `Δ[A054861(A109613(A000040(n+1)))]` -/
def P15720257272086825244.Spec : Prop :=
  ∀ n, P15720257272086825244.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P2274248434943662909

`Δ[A054861(A000040(n+1)+A000007(n))]`
-/

namespace A276376.P2274248434943662909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A000040 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P2274248434943662909

namespace A276376

/-- `Δ[A054861(A000040(n+1)+A000007(n))]` -/
def P2274248434943662909.Spec : Prop :=
  ∀ n, P2274248434943662909.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P8737937598005860581

`Δ[A054861(A000040(n+1))]%A000041(n)`
-/

namespace A276376.P8737937598005860581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 n)

end

end A276376.P8737937598005860581

namespace A276376

/-- `Δ[A054861(A000040(n+1))]%A000041(n)` -/
def P8737937598005860581.Spec : Prop :=
  ∀ n, P8737937598005860581.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P8183463957691463497

`Δ[A054861(A000040(n+1))+A014963(4*n+2)]`
-/

namespace A276376.P8183463957691463497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A000040 (n + 1)).toNat + A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P8183463957691463497

namespace A276376

/-- `Δ[A054861(A000040(n+1))+A014963(4*n+2)]` -/
def P8183463957691463497.Spec : Prop :=
  ∀ n, P8183463957691463497.a n = A276376 (n + 1)

end A276376

/-! ## A276376.P3577442131497698236

`val(A061214(n+1), 3)`
-/

namespace A276376.P3577442131497698236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061214 (n + 1)).toNat 3

end

end A276376.P3577442131497698236

namespace A276376

/-- `val(A061214(n+1), 3)` -/
def P3577442131497698236.Spec : Prop :=
  ∀ n, (P3577442131497698236.a n : ℤ) = A276376 (n + 1)

end A276376

/-! ## A276376.P10424070588066751713

`Δ[A054861(A006530(A034953(n+1)))]`
-/

namespace A276376.P10424070588066751713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A006530 (A034953 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P10424070588066751713

namespace A276376

/-- `Δ[A054861(A006530(A034953(n+1)))]` -/
def P10424070588066751713.Spec : Prop :=
  ∀ n, P10424070588066751713.a n = A276376 (n + 1)

end A276376

/-!
# A276377: 

The programs for A276377, there is no canonical definition to state claims against.
-/

/-! ## A276377.P7754535417849454697

`n^60`
-/

namespace A276377.P7754535417849454697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 60

end

end A276377.P7754535417849454697

/-!
# A276378: Numbers k such that 6*k is squarefree.

The programs for A276378, the canonical program `A276378.P5512391112950635308` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276378 has offset 1).

The definition of A276378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276378.P5512391112950635308

`2*A097702(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A276378

/-- `2*A097702(n+1)+1` -/
def P5512391112950635308.Spec : Prop :=
  ∀ n, P5512391112950635308.a n = A276378 (n + 1)

theorem P5512391112950635308.correct : P5512391112950635308.Spec := by
  intro n
  simp only [A276378, Nat.add_sub_cancel]

end A276378

/-! ## A276378.P4035746298141163879

`eq[1, A373154(n+1)]+1`
-/

namespace A276378.P4035746298141163879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276378.P4035746298141163879

namespace A276378

/-- `eq[1, A373154(n+1)]+1` -/
def P4035746298141163879.Spec : Prop :=
  ∀ n, (P4035746298141163879.a n : ℤ) = A276378 (n + 1)

end A276378

/-! ## A276378.P13065423580310248815

`eq[1, A355688(n+1)²]+1`
-/

namespace A276378.P13065423580310248815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276378.P13065423580310248815

namespace A276378

/-- `eq[1, A355688(n+1)²]+1` -/
def P13065423580310248815.Spec : Prop :=
  ∀ n, (P13065423580310248815.a n : ℤ) = A276378 (n + 1)

end A276378

/-! ## A276378.P4218837159417158412

`record[A007913(or(1, 3*n+1))]`
-/

namespace A276378.P4218837159417158412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 1 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276378.P4218837159417158412

namespace A276378

/-- `record[A007913(or(1, 3*n+1))]` -/
def P4218837159417158412.Spec : Prop :=
  ∀ n, P4218837159417158412.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P6713453104135813904

`∩[or(1, 3*n+1), A005117(n+1)]`
-/

namespace A276378.P6713453104135813904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276378.P6713453104135813904

namespace A276378

/-- `∩[or(1, 3*n+1), A005117(n+1)]` -/
def P6713453104135813904.Spec : Prop :=
  ∀ n, (P6713453104135813904.a n : ℤ) = A276378 (n + 1)

end A276378

/-! ## A276378.P11371818222244402452

`2*lt[0, A008683(6*n+3)²]+1`
-/

namespace A276378.P11371818222244402452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A276378.P11371818222244402452

namespace A276378

/-- `2*lt[0, A008683(6*n+3)²]+1` -/
def P11371818222244402452.Spec : Prop :=
  ∀ n, (P11371818222244402452.a n : ℤ) = A276378 (n + 1)

end A276378

/-! ## A276378.P3978050356353163922

`record[(2*n+1)*A008683(3*(2*n+1))²]`
-/

namespace A276378.P3978050356353163922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008683 (3 * (2 * n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276378.P3978050356353163922

namespace A276378

/-- `record[(2*n+1)*A008683(3*(2*n+1))²]` -/
def P3978050356353163922.Spec : Prop :=
  ∀ n, P3978050356353163922.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P16101588953944136290

`record[A007913(2*n+1)/A020639(2*n+1)]`
-/

namespace A276378.P16101588953944136290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (2 * n + 1) : ℚ) / (A020639 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276378.P16101588953944136290

namespace A276378

/-- `record[A007913(2*n+1)/A020639(2*n+1)]` -/
def P16101588953944136290.Spec : Prop :=
  ∀ n, P16101588953944136290.a n = (A276378 (n + 1) : ℚ)

end A276378

/-! ## A276378.P5670583668079828135

`record[A007947(2*n+1)/A020639(2*n+1)]`
-/

namespace A276378.P5670583668079828135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (2 * n + 1) : ℚ) / (A020639 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276378.P5670583668079828135

namespace A276378

/-- `record[A007947(2*n+1)/A020639(2*n+1)]` -/
def P5670583668079828135.Spec : Prop :=
  ∀ n, P5670583668079828135.a n = (A276378 (n + 1) : ℚ)

end A276378

/-! ## A276378.P14185166772991491031

`filter[A219016(n+1), A008966(#)]`
-/

namespace A276378.P14185166772991491031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A276378.P14185166772991491031

namespace A276378

/-- `filter[A219016(n+1), A008966(#)]` -/
def P14185166772991491031.Spec : Prop :=
  ∀ n, P14185166772991491031.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P15894550194507766046

`filter[A219016(n+1), A295316(#)]`
-/

namespace A276378.P15894550194507766046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A276378.P15894550194507766046

namespace A276378

/-- `filter[A219016(n+1), A295316(#)]` -/
def P15894550194507766046.Spec : Prop :=
  ∀ n, P15894550194507766046.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P6171072882035035412

`filter[A219016(n+1), A320106(#)]`
-/

namespace A276378.P6171072882035035412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A276378.P6171072882035035412

namespace A276378

/-- `filter[A219016(n+1), A320106(#)]` -/
def P6171072882035035412.Spec : Prop :=
  ∀ n, P6171072882035035412.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P8621886522938007330

`filter[A219016(n+1), A323154(#)]`
-/

namespace A276378.P8621886522938007330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A276378.P8621886522938007330

namespace A276378

/-- `filter[A219016(n+1), A323154(#)]` -/
def P8621886522938007330.Spec : Prop :=
  ∀ n, P8621886522938007330.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P7195963141842939782

`filter[A219016(n+1), A323239(#)]`
-/

namespace A276378.P7195963141842939782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A276378.P7195963141842939782

namespace A276378

/-- `filter[A219016(n+1), A323239(#)]` -/
def P7195963141842939782.Spec : Prop :=
  ∀ n, P7195963141842939782.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P2478877394356923325

`filter[A219016(n+1), A353519(#)]`
-/

namespace A276378.P2478877394356923325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A276378.P2478877394356923325

namespace A276378

/-- `filter[A219016(n+1), A353519(#)]` -/
def P2478877394356923325.Spec : Prop :=
  ∀ n, P2478877394356923325.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P10908868136487667821

`filter[A219016(n+1), A353559(#)]`
-/

namespace A276378.P10908868136487667821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A276378.P10908868136487667821

namespace A276378

/-- `filter[A219016(n+1), A353559(#)]` -/
def P10908868136487667821.Spec : Prop :=
  ∀ n, P10908868136487667821.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P16424954245765222232

`filter[A219016(n+1), A353627(#)]`
-/

namespace A276378.P16424954245765222232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A276378.P16424954245765222232

namespace A276378

/-- `filter[A219016(n+1), A353627(#)]` -/
def P16424954245765222232.Spec : Prop :=
  ∀ n, P16424954245765222232.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P11615486412130917234

`filter[A219016(n+1), A353628(#)]`
-/

namespace A276378.P11615486412130917234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A276378.P11615486412130917234

namespace A276378

/-- `filter[A219016(n+1), A353628(#)]` -/
def P11615486412130917234.Spec : Prop :=
  ∀ n, P11615486412130917234.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P5024092885389183874

`filter[A219016(n+1), A354354(#)]`
-/

namespace A276378.P5024092885389183874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A276378.P5024092885389183874

namespace A276378

/-- `filter[A219016(n+1), A354354(#)]` -/
def P5024092885389183874.Spec : Prop :=
  ∀ n, P5024092885389183874.a n = A276378 (n + 1)

end A276378

/-! ## A276378.P14160929784954408166

`filter[A219016(n+1), A359377(#)]`
-/

namespace A276378.P14160929784954408166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A276378.P14160929784954408166

namespace A276378

/-- `filter[A219016(n+1), A359377(#)]` -/
def P14160929784954408166.Spec : Prop :=
  ∀ n, P14160929784954408166.a n = A276378 (n + 1)

end A276378

/-!
# A276379: Write a "1" for each distinct prime divisor p of n in the (pi(p) - 1)-th place, ignoring multiplicity.

The programs for A276379, the canonical program `A276379.P10581108024537777216` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276379 has offset 1).

The definition of A276379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276379.P10682678837372474568

`A054841(A007947(n+1))`
-/

namespace A276379.P10682678837372474568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A007947 (n + 1)).toNat

end

end A276379.P10682678837372474568

namespace A276379

/-- `A054841(A007947(n+1))` -/
def P10682678837372474568.Spec : Prop :=
  ∀ n, P10682678837372474568.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P10581108024537777216

`A007088(A087207(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276379

/-- `A007088(A087207(n+1))` -/
def P10581108024537777216.Spec : Prop :=
  ∀ n, P10581108024537777216.a n = A276379 (n + 1)

theorem P10581108024537777216.correct : P10581108024537777216.Spec := by
  intro n
  simp only [A276379, Nat.add_sub_cancel]

end A276379

/-! ## A276379.P16937933935389495157

`∑{p}[n+1, A054841(#)]`
-/

namespace A276379.P16937933935389495157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A054841 p

end

end A276379.P16937933935389495157

namespace A276379

/-- `∑{p}[n+1, A054841(#)]` -/
def P16937933935389495157.Spec : Prop :=
  ∀ n, P16937933935389495157.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P3433253825028673247

`∑{p}[n+1, A290308(#)]`
-/

namespace A276379.P3433253825028673247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A290308 p

end

end A276379.P3433253825028673247

namespace A276379

/-- `∑{p}[n+1, A290308(#)]` -/
def P3433253825028673247.Spec : Prop :=
  ∀ n, P3433253825028673247.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P637586963563704584

`∑{p}[n+1, A394906(#)]`
-/

namespace A276379.P637586963563704584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A394906 p

end

end A276379.P637586963563704584

namespace A276379

/-- `∑{p}[n+1, A394906(#)]` -/
def P637586963563704584.Spec : Prop :=
  ∀ n, P637586963563704584.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P17828452945044993614

`A054841(∏{p}[n+1, #])`
-/

namespace A276379.P17828452945044993614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A276379.P17828452945044993614

namespace A276379

/-- `A054841(∏{p}[n+1, #])` -/
def P17828452945044993614.Spec : Prop :=
  ∀ n, P17828452945044993614.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P15304339947117247389

`A054841(A343033(∑[n+2]))`
-/

namespace A276379.P15304339947117247389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A343033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276379.P15304339947117247389

namespace A276379

/-- `A054841(A343033(∑[n+2]))` -/
def P15304339947117247389.Spec : Prop :=
  ∀ n, P15304339947117247389.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P2602525154673069367

`A000433(A384816(n+1))`
-/

namespace A276379.P2602525154673069367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 (A384816 (n + 1)).toNat

end

end A276379.P2602525154673069367

namespace A276379

/-- `A000433(A384816(n+1))` -/
def P2602525154673069367.Spec : Prop :=
  ∀ n, P2602525154673069367.a n = A276379 (n + 1)

end A276379

/-! ## A276379.P4942537206064731398

`A007088(A345298(n+1)/2)`
-/

namespace A276379.P4942537206064731398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A345298 (n + 1) : ℚ) / 2)).toNat

end

end A276379.P4942537206064731398

namespace A276379

/-- `A007088(A345298(n+1)/2)` -/
def P4942537206064731398.Spec : Prop :=
  ∀ n, P4942537206064731398.a n = A276379 (n + 1)

end A276379

/-!
# A276380: Irregular triangle where row n contains terms k of the partition of n produced by greedy algorithm such that all elements are in A003586.

The programs for A276380, there is no canonical definition to state claims against.
-/

/-! ## A276380.P5906398804553338346

`Δ[lt[A350945(n+1), A257252(n+1)]]`
-/

namespace A276380.P5906398804553338346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276380.P5906398804553338346

/-!
# A276381: Numbers n such that there exist a number k with A007953(n) = A007953(k*n) and 1 < k < 10.

The programs for A276381, there is no canonical definition to state claims against.
-/

/-! ## A276381.P9944374416779948923

`lt[A180011(A028310(n)), 10]`
-/

namespace A276381.P9944374416779948923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276381.P9944374416779948923

/-! ## A276381.P6283765496496679038

`lt[A180011(n+2), A180011(2*(n+1))]+2`
-/

namespace A276381.P6283765496496679038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A276381.P6283765496496679038

/-! ## A276381.P11761928238673094927

`lt[A180011(A233583(n+1)), 8]`
-/

namespace A276381.P11761928238673094927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276381.P11761928238673094927

/-! ## A276381.P12571620756557390583

`lt[A180011(A008706(2*n)), 8]`
-/

namespace A276381.P12571620756557390583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (A008706 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276381.P12571620756557390583

/-! ## A276381.P14416650240849223992

`A372810(A259728(n+2))`
-/

namespace A276381.P14416650240849223992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372810 (A259728 (n + 2)).toNat

end

end A276381.P14416650240849223992

/-!
# A276382: a(1) = 1, and a(n) = a(n-1) + floor(3*n/2) + 1 for n >= 2.

The programs for A276382, the canonical program `A276382.P4486216189601212105` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276382 has offset 1).

The definition of A276382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(3*(n+1)/2)+1` (program `A276382.P4486216189601212105`, by `A276382.P4486216189601212105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276382.P6831867070906840267

`floor((3*(n+2)²-7)/4)`
-/

namespace A276382.P6831867070906840267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * (n + 2) ^ 2 : ℤ) - 7 : ℚ) / 4⌋

end

end A276382.P6831867070906840267

namespace A276382

/-- `floor((3*(n+2)²-7)/4)` -/
def P6831867070906840267.Spec : Prop :=
  ∀ n, P6831867070906840267.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P4486216189601212105

`a(n-1)+floor(3*(n+1)/2)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276382

/-- `a(n-1)+floor(3*(n+1)/2)+1` -/
def P4486216189601212105.Spec : Prop :=
  ∀ n, P4486216189601212105.a n = A276382 (n + 1)

theorem P4486216189601212105.correct : P4486216189601212105.Spec := by
  intro n
  simp only [A276382, Nat.add_sub_cancel]

end A276382

/-! ## A276382.P13908312849853293200

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=17`
-/

namespace A276382.P13908312849853293200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10, 17] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A276382.P13908312849853293200

namespace A276382

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13908312849853293200.Spec : Prop :=
  ∀ n, P13908312849853293200.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P9099137690897010168

`∑[∑[ceil(ratio[or(1, n)])]]`
-/

namespace A276382.P9099137690897010168
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f3 (n + 1) : ℚ) / (f3 n : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P9099137690897010168

namespace A276382

/-- `∑[∑[ceil(ratio[or(1, n)])]]` -/
def P9099137690897010168.Spec : Prop :=
  ∀ n, P9099137690897010168.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P10079384492182691973

`∑[∑[n%2+1]]+n`
-/

namespace A276382.P10079384492182691973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276382.P10079384492182691973

namespace A276382

/-- `∑[∑[n%2+1]]+n` -/
def P10079384492182691973.Spec : Prop :=
  ∀ n, (P10079384492182691973.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P5126635585028563418

`∑[∑[gcd(2, n+1)]]+n`
-/

namespace A276382.P5126635585028563418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276382.P5126635585028563418

namespace A276382

/-- `∑[∑[gcd(2, n+1)]]+n` -/
def P5126635585028563418.Spec : Prop :=
  ∀ n, (P5126635585028563418.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P17518605488548494608

`∑[∑[and(1, n)+1]]+n`
-/

namespace A276382.P17518605488548494608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A276382.P17518605488548494608

namespace A276382

/-- `∑[∑[and(1, n)+1]]+n` -/
def P17518605488548494608.Spec : Prop :=
  ∀ n, (P17518605488548494608.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P17914842551109716989

`∑[a(n-2)+3]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A276382.P17914842551109716989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P17914842551109716989

namespace A276382

/-- `∑[a(n-2)+3]` -/
def P17914842551109716989.Spec : Prop :=
  ∀ n, (P17914842551109716989.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P6962028572397511927

`∑[lt[lcm(2, n+1), lcm(3, n)]]`
-/

namespace A276382.P6962028572397511927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P6962028572397511927

namespace A276382

/-- `∑[lt[lcm(2, n+1), lcm(3, n)]]` -/
def P6962028572397511927.Spec : Prop :=
  ∀ n, (P6962028572397511927.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P15657641529214435460

`n-∑[∑[or(n+1, -2)]]`
-/

namespace A276382.P15657641529214435460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P15657641529214435460

namespace A276382

/-- `n-∑[∑[or(n+1, -2)]]` -/
def P15657641529214435460.Spec : Prop :=
  ∀ n, P15657641529214435460.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P1558892707685841240

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A276382.P1558892707685841240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P1558892707685841240

namespace A276382

/-- `∑[∑[3-a(n-1)]]` -/
def P1558892707685841240.Spec : Prop :=
  ∀ n, P1558892707685841240.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P12792005189201419872

`∑[∑[ogf((1+3x-x^3)/(1-x^2))]]`
-/

namespace A276382.P12792005189201419872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -1] [1, 0, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P12792005189201419872

namespace A276382

/-- `∑[∑[ogf((1+3x-x^3)/(1-x^2))]]` -/
def P12792005189201419872.Spec : Prop :=
  ∀ n, P12792005189201419872.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P4912635551207342179

`ogf((1+3x-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A276382.P4912635551207342179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -1] [1, -2, 0, 2, -1] n

end

end A276382.P4912635551207342179

namespace A276382

/-- `ogf((1+3x-x^3)/(1-2x+2x^3-x^4))` -/
def P4912635551207342179.Spec : Prop :=
  ∀ n, P4912635551207342179.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P14171331454441979607

`a(n-2)+3*(n+1)` with `a(0)=1, a(1)=5`
-/

namespace A276382.P14171331454441979607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 3 * (n + 1)

end

end A276382.P14171331454441979607

namespace A276382

/-- `a(n-2)+3*(n+1)` -/
def P14171331454441979607.Spec : Prop :=
  ∀ n, (P14171331454441979607.a n : ℤ) = A276382 (n + 1)

end A276382

/-! ## A276382.P8372919059551050448

`∑[∑[A084642(n)]]`
-/

namespace A276382.P8372919059551050448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P8372919059551050448

namespace A276382

/-- `∑[∑[A084642(n)]]` -/
def P8372919059551050448.Spec : Prop :=
  ∀ n, P8372919059551050448.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P484145476288748813

`∑[A049636(n)-1]`
-/

namespace A276382.P484145476288748813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P484145476288748813

namespace A276382

/-- `∑[A049636(n)-1]` -/
def P484145476288748813.Spec : Prop :=
  ∀ n, P484145476288748813.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P1191585583178511898

`∑[record[A106610(n+3)]]`
-/

namespace A276382.P1191585583178511898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P1191585583178511898

namespace A276382

/-- `∑[record[A106610(n+3)]]` -/
def P1191585583178511898.Spec : Prop :=
  ∀ n, P1191585583178511898.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P5849926934999915993

`Δ[A045947(n)+n²]`
-/

namespace A276382.P5849926934999915993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276382.P5849926934999915993

namespace A276382

/-- `Δ[A045947(n)+n²]` -/
def P5849926934999915993.Spec : Prop :=
  ∀ n, P5849926934999915993.a n = A276382 (n + 1)

end A276382

/-! ## A276382.P8865843606689414452

`∑[∑[A000005(a(n-2))]]` with `a(0)=1, a(1)=3`
-/

namespace A276382.P8865843606689414452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000005 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276382.P8865843606689414452

namespace A276382

/-- `∑[∑[A000005(a(n-2))]]` -/
def P8865843606689414452.Spec : Prop :=
  ∀ n, P8865843606689414452.a n = A276382 (n + 1)

end A276382

/-!
# A276383: Complement of A158919: complementary Beatty sequence to the Beatty sequence defined by the tribonacci constant tau = A058265.

The programs for A276383, the canonical program `A276383.P7168359170263239698` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276383 has offset 1).

The definition of A276383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276383.P15452565278277652570

`comp[A158919(n)]`
-/

namespace A276383.P15452565278277652570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276383.P15452565278277652570

namespace A276383

/-- `comp[A158919(n)]` -/
def P15452565278277652570.Spec : Prop :=
  ∀ n, (P15452565278277652570.a n : ℤ) = A276383 (n + 1)

end A276383

/-! ## A276383.P3814810351259791744

`comp[A277723(n)]+1+n`
-/

namespace A276383.P3814810351259791744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A276383.P3814810351259791744

namespace A276383

/-- `comp[A277723(n)]+1+n` -/
def P3814810351259791744.Spec : Prop :=
  ∀ n, (P3814810351259791744.a n : ℤ) = A276383 (n + 1)

end A276383

/-! ## A276383.P12277982680391918320

`A385532(A108173(n+2))`
-/

namespace A276383.P12277982680391918320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385532 (A108173 (n + 2)).toNat

end

end A276383.P12277982680391918320

namespace A276383

/-- `A385532(A108173(n+2))` -/
def P12277982680391918320.Spec : Prop :=
  ∀ n, P12277982680391918320.a n = A276383 (n + 1)

end A276383

/-! ## A276383.P7168359170263239698

`A004526(A277722(n+1)+1+n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276383

/-- `A004526(A277722(n+1)+1+n)` -/
def P7168359170263239698.Spec : Prop :=
  ∀ n, P7168359170263239698.a n = A276383 (n + 1)

theorem P7168359170263239698.correct : P7168359170263239698.Spec := by
  intro n
  simp only [A276383, Nat.add_sub_cancel]

end A276383

/-! ## A276383.P1932926314096091916

`A172278(A010051((2*n+1)²)+n+1)`
-/

namespace A276383.P1932926314096091916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172278 (A010051 ((2 * n + 1) ^ 2) + (n + 1 : ℤ)).toNat

end

end A276383.P1932926314096091916

namespace A276383

/-- `A172278(A010051((2*n+1)²)+n+1)` -/
def P1932926314096091916.Spec : Prop :=
  ∀ n, P1932926314096091916.a n = A276383 (n + 1)

end A276383

/-! ## A276383.P15194669511736096385

`A172278(A073424(∑[n+1])+n)`
-/

namespace A276383.P15194669511736096385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172278 (A073424 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A276383.P15194669511736096385

namespace A276383

/-- `A172278(A073424(∑[n+1])+n)` -/
def P15194669511736096385.Spec : Prop :=
  ∀ n, P15194669511736096385.a n = A276383 (n + 1)

end A276383

/-! ## A276383.P6043924365077465837

`A172278(n+1)+A010051(A172278(n+1)²)`
-/

namespace A276383.P6043924365077465837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172278 (n + 1) + A010051 (A172278 (n + 1) ^ 2).toNat

end

end A276383.P6043924365077465837

namespace A276383

/-- `A172278(n+1)+A010051(A172278(n+1)²)` -/
def P6043924365077465837.Spec : Prop :=
  ∀ n, P6043924365077465837.a n = A276383 (n + 1)

end A276383

/-! ## A276383.P9232413815325065505

`A038124(n+1)+A172278(n+1)-A172273(n+1)`
-/

namespace A276383.P9232413815325065505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (n + 1) + (A172278 (n + 1) - A172273 (n + 1))

end

end A276383.P9232413815325065505

namespace A276383

/-- `A038124(n+1)+A172278(n+1)-A172273(n+1)` -/
def P9232413815325065505.Spec : Prop :=
  ∀ n, P9232413815325065505.a n = A276383 (n + 1)

end A276383

/-!
# A276386: Write A003511(n) in the base {1, 3, 4, 11, 15, 41, 56, 153, 209, ...} (see A002530).

The programs for A276386, there is no canonical definition to state claims against.
-/

/-! ## A276386.P6919476177376343240

`A276388(A003511(n+1))`
-/

namespace A276386.P6919476177376343240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A003511 (n + 1)).toNat

end

end A276386.P6919476177376343240

/-! ## A276386.P599328411668294904

`A276388(A188070(n+1)-1)`
-/

namespace A276386.P599328411668294904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A188070 (n + 1) - 1).toNat

end

end A276386.P599328411668294904

/-! ## A276386.P8716351655363348683

`A276388(A054406(n+1)-(n+1))`
-/

namespace A276386.P8716351655363348683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A054406 (n + 1) - (n + 1 : ℤ)).toNat

end

end A276386.P8716351655363348683

/-! ## A276386.P17769226249317787392

`A276388(A016789(n)-A182772(n+1))`
-/

namespace A276386.P17769226249317787392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A016789 n - A182772 (n + 1)).toNat

end

end A276386.P17769226249317787392

/-! ## A276386.P1084390413742492630

`A276388(record[(n+1)/val(A276387(n+1), 2)])`
-/

namespace A276386.P1084390413742492630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.valuation (A276387 (n + 1)).toNat 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276386.P1084390413742492630

/-!
# A276387: Write A003512(n) in the base {1, 3, 4, 11, 15, 41, 56, 153, 209, ...} (see A002530).

The programs for A276387, there is no canonical definition to state claims against.
-/

/-! ## A276387.P8765277716717429286

`A276388(A003512(n+1))`
-/

namespace A276387.P8765277716717429286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A003512 (n + 1)).toNat

end

end A276387.P8765277716717429286

/-! ## A276387.P1413531291075645472

`A276388(∑[A276865(n+1)])`
-/

namespace A276387.P1413531291075645472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276387.P1413531291075645472

/-! ## A276387.P3703352300630549030

`A276388(A180123(n+1)+1)`
-/

namespace A276387.P3703352300630549030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A180123 (n + 1) + 1).toNat

end

end A276387.P3703352300630549030

/-! ## A276387.P13482784095630120883

`A276388(A182778(n+1)-(n+1))`
-/

namespace A276387.P13482784095630120883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A182778 (n + 1) - (n + 1 : ℤ)).toNat

end

end A276387.P13482784095630120883

/-! ## A276387.P8029050170871503843

`A276388(A188070(2*(n+1))+n)`
-/

namespace A276387.P8029050170871503843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A188070 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A276387.P8029050170871503843

/-! ## A276387.P14937801191914437853

`A276388(A054086(2*n+n+2))`
-/

namespace A276387.P14937801191914437853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A054086 (2 * n + (n + 2))).toNat

end

end A276387.P14937801191914437853

/-! ## A276387.P9032299683988632579

`A276388(A003511(2*(n+1))+n+1)`
-/

namespace A276387.P9032299683988632579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A003511 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A276387.P9032299683988632579

/-! ## A276387.P1271457500813269318

`A276388(A189469(n+1)-A003151(n+1))`
-/

namespace A276387.P1271457500813269318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (A189469 (n + 1) - A003151 (n + 1)).toNat

end

end A276387.P1271457500813269318

/-! ## A276387.P18238314431829026593

`A276388(eq[A007538(n+1), A036453(n+1)])`
-/

namespace A276387.P18238314431829026593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276387.P18238314431829026593

/-!
# A276388: Write n in the P-base {1, 3, 4, 11, 15, 41, 56, 153, 209, ...} corresponding to (1+sqrt(3))/2 (see A002530).

The programs for A276388, there is no canonical definition to state claims against.
-/

/-! ## A276388.P11745202345689628314

`A007089(A037463(n)%A091230(n))`
-/

namespace A276388.P11745202345689628314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (Int.tmod (A037463 n) (A091230 n)).toNat

end

end A276388.P11745202345689628314

/-! ## A276388.P11966202478898195365

`lt[A007953(n), A043532(A000040(3*n+4))]`
-/

namespace A276388.P11966202478898195365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A000040 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276388.P11966202478898195365

/-! ## A276388.P13649857022414674503

`A007089(A037463(n*A040790(n)))`
-/

namespace A276388.P13649857022414674503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A037463 ((n : ℤ) * A040790 n).toNat).toNat

end

end A276388.P13649857022414674503

/-! ## A276388.P2570642029650428175

`∩[A072958(n+1), A265747(n)]`
-/

namespace A276388.P2570642029650428175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276388.P2570642029650428175

/-!
# A276389: Numbers n such that n! ends in the same number of 0's in both base 10 and base 16.

The programs for A276389, the canonical program `A276389.P3834930374717209442` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276389 has offset 1).

The definition of A276389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276389.P3834930374717209442

`eq[0, A027868(n)-A090621(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276389

/-- `eq[0, A027868(n)-A090621(n)]` -/
def P3834930374717209442.Spec : Prop :=
  ∀ n, (P3834930374717209442.a n : ℤ) = A276389 (n + 1)

theorem P3834930374717209442.correct : P3834930374717209442.Spec := by
  intro n
  simp only [A276389, Nat.add_sub_cancel]

end A276389

/-! ## A276389.P5921658038050616574

`eq[A027868(n), A053832(A090621(n))]`
-/

namespace A276389.P5921658038050616574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A090621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276389.P5921658038050616574

namespace A276389

/-- `eq[A027868(n), A053832(A090621(n))]` -/
def P5921658038050616574.Spec : Prop :=
  ∀ n, (P5921658038050616574.a n : ℤ) = A276389 (n + 1)

end A276389

/-! ## A276389.P15990097553838174478

`eq[(n-A053824(n))/4, A190600(A090621(n))]`
-/

namespace A276389.P15990097553838174478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053824 n : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A090621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A276389.P15990097553838174478

namespace A276389

/-- `eq[(n-A053824(n))/4, A190600(A090621(n))]` -/
def P15990097553838174478.Spec : Prop :=
  ∀ n, (P15990097553838174478.a n : ℤ) = A276389 (n + 1)

end A276389

/-!
# A276390: Bisection of A115716.

The programs for A276390, the canonical program `A276390.P11821832504603089140` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276390 has offset 0).

The definition of A276390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276390.P11821832504603089140

`A276391(A006257(n)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276390

/-- `A276391(A006257(n)+1)` -/
def P11821832504603089140.Spec : Prop :=
  ∀ n, P11821832504603089140.a n = A276390 n

theorem P11821832504603089140.correct : P11821832504603089140.Spec := by
  intro n
  simp only [A276390]

end A276390

/-! ## A276390.P9457341898866190411

`A139250(gcd((n+1)*A151566(n), A001316(n)))`
-/

namespace A276390.P9457341898866190411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Int.gcd ((n + 1 : ℤ) * A151566 n) (A001316 n))

end

end A276390.P9457341898866190411

namespace A276390

/-- `A139250(gcd((n+1)*A151566(n), A001316(n)))` -/
def P9457341898866190411.Spec : Prop :=
  ∀ n, P9457341898866190411.a n = A276390 n

end A276390

/-! ## A276390.P5311632940315104170

`A276391(A152423(n+1))`
-/

namespace A276390.P5311632940315104170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A152423 (n + 1)).toNat

end

end A276390.P5311632940315104170

namespace A276390

/-- `A276391(A152423(n+1))` -/
def P5311632940315104170.Spec : Prop :=
  ∀ n, P5311632940315104170.a n = A276390 n

end A276390

/-! ## A276390.P9119876060632110860

`A276391(A256263(n)+1)`
-/

namespace A276390.P9119876060632110860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A256263 n + 1).toNat

end

end A276390.P9119876060632110860

namespace A276390

/-- `A276391(A256263(n)+1)` -/
def P9119876060632110860.Spec : Prop :=
  ∀ n, P9119876060632110860.a n = A276390 n

end A276390

/-! ## A276390.P11536421043441695304

`A007583(A014701(2*n+1)-A014701(n+1))`
-/

namespace A276390.P11536421043441695304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A014701 (2 * n + 1) - A014701 (n + 1)).toNat

end

end A276390.P11536421043441695304

namespace A276390

/-- `A007583(A014701(2*n+1)-A014701(n+1))` -/
def P11536421043441695304.Spec : Prop :=
  ∀ n, P11536421043441695304.a n = A276390 n

end A276390

/-! ## A276390.P3752347852571230070

`A115716(2*n)`
-/

namespace A276390.P3752347852571230070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (2 * n)

end

end A276390.P3752347852571230070

namespace A276390

/-- `A115716(2*n)` -/
def P3752347852571230070.Spec : Prop :=
  ∀ n, P3752347852571230070.a n = A276390 n

end A276390

/-! ## A276390.P10909469435044323445

`or(1, A115716(n+n))`
-/

namespace A276390.P10909469435044323445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115716 (n + n))

end

end A276390.P10909469435044323445

namespace A276390

/-- `or(1, A115716(n+n))` -/
def P10909469435044323445.Spec : Prop :=
  ∀ n, P10909469435044323445.a n = A276390 n

end A276390

/-! ## A276390.P5846119663676868143

`A008747(A135521(2*n+1))`
-/

namespace A276390.P5846119663676868143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (A135521 (2 * n + 1)).toNat

end

end A276390.P5846119663676868143

namespace A276390

/-- `A008747(A135521(2*n+1))` -/
def P5846119663676868143.Spec : Prop :=
  ∀ n, P5846119663676868143.a n = A276390 n

end A276390

/-! ## A276390.P11117308498593074998

`A276391(A359506(2*n+1))`
-/

namespace A276390.P11117308498593074998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A359506 (2 * n + 1)).toNat

end

end A276390.P11117308498593074998

namespace A276390

/-- `A276391(A359506(2*n+1))` -/
def P11117308498593074998.Spec : Prop :=
  ∀ n, P11117308498593074998.a n = A276390 n

end A276390

/-! ## A276390.P6969572033999447383

`A048702(A135517(2*n+1))`
-/

namespace A276390.P6969572033999447383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (A135517 (2 * n + 1)).toNat

end

end A276390.P6969572033999447383

namespace A276390

/-- `A048702(A135517(2*n+1))` -/
def P6969572033999447383.Spec : Prop :=
  ∀ n, P6969572033999447383.a n = A276390 n

end A276390

/-! ## A276390.P9850974225585432760

`A276391(A009195(2*(n+1)))`
-/

namespace A276390.P9850974225585432760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A009195 (2 * (n + 1))).toNat

end

end A276390.P9850974225585432760

namespace A276390

/-- `A276391(A009195(2*(n+1)))` -/
def P9850974225585432760.Spec : Prop :=
  ∀ n, P9850974225585432760.a n = A276390 n

end A276390

/-! ## A276390.P12180357348625388448

`A276391(A048671(2*(n+1)))`
-/

namespace A276390.P12180357348625388448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A048671 (2 * (n + 1))).toNat

end

end A276390.P12180357348625388448

namespace A276390

/-- `A276391(A048671(2*(n+1)))` -/
def P12180357348625388448.Spec : Prop :=
  ∀ n, P12180357348625388448.a n = A276390 n

end A276390

/-! ## A276390.P4026114422558918877

`A276391(A052126(2*(n+1)))`
-/

namespace A276390.P4026114422558918877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A052126 (2 * (n + 1))).toNat

end

end A276390.P4026114422558918877

namespace A276390

/-- `A276391(A052126(2*(n+1)))` -/
def P4026114422558918877.Spec : Prop :=
  ∀ n, P4026114422558918877.a n = A276390 n

end A276390

/-! ## A276390.P17099731160249107473

`A276391(A054429(2*n+1))`
-/

namespace A276390.P17099731160249107473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A054429 (2 * n + 1)).toNat

end

end A276390.P17099731160249107473

namespace A276390

/-- `A276391(A054429(2*n+1))` -/
def P17099731160249107473.Spec : Prop :=
  ∀ n, P17099731160249107473.a n = A276390 n

end A276390

/-! ## A276390.P16549821391057427700

`A276391(A062050(2*n+1))`
-/

namespace A276390.P16549821391057427700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A062050 (2 * n + 1)).toNat

end

end A276390.P16549821391057427700

namespace A276390

/-- `A276391(A062050(2*n+1))` -/
def P16549821391057427700.Spec : Prop :=
  ∀ n, P16549821391057427700.a n = A276390 n

end A276390

/-! ## A276390.P9653179365733236601

`A276391(A094521(2*(n+1)))`
-/

namespace A276390.P9653179365733236601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A094521 (2 * (n + 1))).toNat

end

end A276390.P9653179365733236601

namespace A276390

/-- `A276391(A094521(2*(n+1)))` -/
def P9653179365733236601.Spec : Prop :=
  ∀ n, P9653179365733236601.a n = A276390 n

end A276390

/-! ## A276390.P18023803072796262007

`A276391(A162751(2*n+1))`
-/

namespace A276390.P18023803072796262007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A162751 (2 * n + 1)).toNat

end

end A276390.P18023803072796262007

namespace A276390

/-- `A276391(A162751(2*n+1))` -/
def P18023803072796262007.Spec : Prop :=
  ∀ n, P18023803072796262007.a n = A276390 n

end A276390

/-! ## A276390.P8607556034909716854

`A276391(A253550(2*(n+1)))`
-/

namespace A276390.P8607556034909716854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A253550 (2 * (n + 1))).toNat

end

end A276390.P8607556034909716854

namespace A276390

/-- `A276391(A253550(2*(n+1)))` -/
def P8607556034909716854.Spec : Prop :=
  ∀ n, P8607556034909716854.a n = A276390 n

end A276390

/-! ## A276390.P13315805829695197135

`A007583(A091090(2*n+1)-1)`
-/

namespace A276390.P13315805829695197135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A091090 (2 * n + 1) - 1).toNat

end

end A276390.P13315805829695197135

namespace A276390

/-- `A007583(A091090(2*n+1)-1)` -/
def P13315805829695197135.Spec : Prop :=
  ∀ n, P13315805829695197135.a n = A276390 n

end A276390

/-! ## A276390.P14900560340159961715

`(A147992(2*(n+1))-A147992(2*n+1))/2`
-/

namespace A276390.P14900560340159961715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147992 (2 * (n + 1)) - A147992 (2 * n + 1) : ℚ) / 2

end

end A276390.P14900560340159961715

namespace A276390

/-- `(A147992(2*(n+1))-A147992(2*n+1))/2` -/
def P14900560340159961715.Spec : Prop :=
  ∀ n, P14900560340159961715.a n = (A276390 n : ℚ)

end A276390

/-!
# A276391: G.f. satisfies A(x) - 4*A(x^2) = x/(1+x).

The programs for A276391, the canonical program `A276391.P10040952499910227078` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276391 has offset 1).

The definition of A276391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276391.P10040952499910227078

`(2+4^A001511(n+1))/6`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276391

/-- `(2+4^A001511(n+1))/6` -/
def P10040952499910227078.Spec : Prop :=
  ∀ n, P10040952499910227078.a n = (A276391 (n + 1) : ℚ)

end A276391

/-! ## A276391.P15992691226401422057

`A000695(n+1)-A000695(n)`
-/

namespace A276391.P15992691226401422057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1) - A000695 n

end

end A276391.P15992691226401422057

namespace A276391

/-- `A000695(n+1)-A000695(n)` -/
def P15992691226401422057.Spec : Prop :=
  ∀ n, P15992691226401422057.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P2713423668389721177

`ceil((xor(n, n+1)+1)²/6)`
-/

namespace A276391.P2713423668389721177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor n (n + 1) + 1) ^ 2 : ℚ) / 6⌉

end

end A276391.P2713423668389721177

namespace A276391

/-- `ceil((xor(n, n+1)+1)²/6)` -/
def P2713423668389721177.Spec : Prop :=
  ∀ n, P2713423668389721177.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P13786720227918080552

`(∑{d}[2^val(n+1, 2), #²]+1)/2`
-/

namespace A276391.P13786720227918080552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 + 1 : ℕ) : ℚ) / 2

end

end A276391.P13786720227918080552

namespace A276391

/-- `(∑{d}[2^val(n+1, 2), #²]+1)/2` -/
def P13786720227918080552.Spec : Prop :=
  ∀ n, P13786720227918080552.a n = (A276391 (n + 1) : ℚ)

end A276391

/-! ## A276391.P12909773612166583011

`Δ[a(and(n, n-1))+and(n, -n)²]` with `a(0)=0`
-/

namespace A276391.P12909773612166583011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276391.P12909773612166583011

namespace A276391

/-- `Δ[a(and(n, n-1))+and(n, -n)²]` -/
def P12909773612166583011.Spec : Prop :=
  ∀ n, P12909773612166583011.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P6244156341039843249

`Δ[A062880(n)/2]`
-/

namespace A276391.P6244156341039843249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276391.P6244156341039843249

namespace A276391

/-- `Δ[A062880(n)/2]` -/
def P6244156341039843249.Spec : Prop :=
  ∀ n, P6244156341039843249.a n = (A276391 (n + 1) : ℚ)

end A276391

/-! ## A276391.P6357502646927649243

`Δ[A001196(n)/3]`
-/

namespace A276391.P6357502646927649243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276391.P6357502646927649243

namespace A276391

/-- `Δ[A001196(n)/3]` -/
def P6357502646927649243.Spec : Prop :=
  ∀ n, P6357502646927649243.a n = (A276391 (n + 1) : ℚ)

end A276391

/-! ## A276391.P12800031379420200945

`A007583(val(n+1, 2))`
-/

namespace A276391.P12800031379420200945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (SequenceMachineLib.valuation (n + 1) 2)

end

end A276391.P12800031379420200945

namespace A276391

/-- `A007583(val(n+1, 2))` -/
def P12800031379420200945.Spec : Prop :=
  ∀ n, P12800031379420200945.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P4874353586780925392

`ceil(A296306(n+1)/2)`
-/

namespace A276391.P4874353586780925392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296306 (n + 1) : ℚ) / 2⌉

end

end A276391.P4874353586780925392

namespace A276391

/-- `ceil(A296306(n+1)/2)` -/
def P4874353586780925392.Spec : Prop :=
  ∀ n, P4874353586780925392.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P3497622662538055152

`(A379007(n+1)+2)/3`
-/

namespace A276391.P3497622662538055152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379007 (n + 1) + 2 : ℚ) / 3

end

end A276391.P3497622662538055152

namespace A276391

/-- `(A379007(n+1)+2)/3` -/
def P3497622662538055152.Spec : Prop :=
  ∀ n, P3497622662538055152.a n = (A276391 (n + 1) : ℚ)

end A276391

/-! ## A276391.P17742828090474635458

`A077925(2*val(n+1, 2))`
-/

namespace A276391.P17742828090474635458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (2 * SequenceMachineLib.valuation (n + 1) 2)

end

end A276391.P17742828090474635458

namespace A276391

/-- `A077925(2*val(n+1, 2))` -/
def P17742828090474635458.Spec : Prop :=
  ∀ n, P17742828090474635458.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P17856982689891239378

`A276390(A135481(n))`
-/

namespace A276391.P17856982689891239378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (A135481 n).toNat

end

end A276391.P17856982689891239378

namespace A276391

/-- `A276390(A135481(n))` -/
def P17856982689891239378.Spec : Prop :=
  ∀ n, P17856982689891239378.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P11583624731088826999

`A007583(A007814(n+1))`
-/

namespace A276391.P11583624731088826999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A007814 (n + 1)).toNat

end

end A276391.P11583624731088826999

namespace A276391

/-- `A007583(A007814(n+1))` -/
def P11583624731088826999.Spec : Prop :=
  ∀ n, P11583624731088826999.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P6360599857375585811

`A001045(A037227(n+1))`
-/

namespace A276391.P6360599857375585811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A037227 (n + 1)).toNat

end

end A276391.P6360599857375585811

namespace A276391

/-- `A001045(A037227(n+1))` -/
def P6360599857375585811.Spec : Prop :=
  ∀ n, P6360599857375585811.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P14179597848167961810

`A048702(A006519(n+1))`
-/

namespace A276391.P14179597848167961810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (A006519 (n + 1)).toNat

end

end A276391.P14179597848167961810

namespace A276391

/-- `A048702(A006519(n+1))` -/
def P14179597848167961810.Spec : Prop :=
  ∀ n, P14179597848167961810.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P7347443257929589148

`A007583(A001511(n+1)-1)`
-/

namespace A276391.P7347443257929589148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A001511 (n + 1) - 1).toNat

end

end A276391.P7347443257929589148

namespace A276391

/-- `A007583(A001511(n+1)-1)` -/
def P7347443257929589148.Spec : Prop :=
  ∀ n, P7347443257929589148.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P3378782983116870156

`A007583(1-A088705(n+1))`
-/

namespace A276391.P3378782983116870156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (1 - A088705 (n + 1)).toNat

end

end A276391.P3378782983116870156

namespace A276391

/-- `A007583(1-A088705(n+1))` -/
def P3378782983116870156.Spec : Prop :=
  ∀ n, P3378782983116870156.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P6627922482419613936

`A077925(2*A007814(n+1))`
-/

namespace A276391.P6627922482419613936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (2 * A007814 (n + 1)).toNat

end

end A276391.P6627922482419613936

namespace A276391

/-- `A077925(2*A007814(n+1))` -/
def P6627922482419613936.Spec : Prop :=
  ∀ n, P6627922482419613936.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P11858464727919471553

`A131588(2*A007814(n+1))`
-/

namespace A276391.P11858464727919471553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131588 (2 * A007814 (n + 1)).toNat

end

end A276391.P11858464727919471553

namespace A276391

/-- `A131588(2*A007814(n+1))` -/
def P11858464727919471553.Spec : Prop :=
  ∀ n, P11858464727919471553.a n = A276391 (n + 1)

end A276391

/-! ## A276391.P12041659713481429344

`A139250(A171977(n+1)/2)`
-/

namespace A276391.P12041659713481429344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (SequenceMachineLib.roundAway ((A171977 (n + 1) : ℚ) / 2)).toNat

end

end A276391.P12041659713481429344

namespace A276391

/-- `A139250(A171977(n+1)/2)` -/
def P12041659713481429344.Spec : Prop :=
  ∀ n, P12041659713481429344.a n = A276391 (n + 1)

end A276391

/-!
# A276392: Records in A067581.

The programs for A276392, there is no canonical definition to state claims against.
-/

/-! ## A276392.P3027836164517423978

`record[A067581(n)]`
-/

namespace A276392.P3027836164517423978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276392.P3027836164517423978

/-! ## A276392.P14475198300070079544

`A067581(A276393(n+1)-1)`
-/

namespace A276392.P14475198300070079544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 (A276393 (n + 1) - 1).toNat

end

end A276392.P14475198300070079544

/-!
# A276394: Characteristic word associated with the fraction 36/25.

The programs for A276394, the canonical program `A276394.P4060090656437195326` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276394 has offset 0).

The definition of A276394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276394.P4060090656437195326

`floor(36*(n+2)/25)-floor(36*(n+1)/25)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276394

/-- `floor(36*(n+2)/25)-floor(36*(n+1)/25)-1` -/
def P4060090656437195326.Spec : Prop :=
  ∀ n, P4060090656437195326.a n = A276394 n

theorem P4060090656437195326.correct : P4060090656437195326.Spec := by
  intro n
  simp only [A276394]

end A276394

/-!
# A276395: Characteristic function of floor(36*n/25).

The programs for A276395, the canonical program `A276395.P13234382630465203208` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276395 has offset 1).

The definition of A276395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276395.P13234382630465203208

`Δ[floor(A158226(n+1)/A158272(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276395

/-- `Δ[floor(A158226(n+1)/A158272(n+1))]` -/
def P13234382630465203208.Spec : Prop :=
  ∀ n, P13234382630465203208.a n = A276395 (n + 1)

theorem P13234382630465203208.correct : P13234382630465203208.Spec := by
  intro n
  simp only [A276395, Nat.add_sub_cancel]

end A276395

/-!
# A276396: Pisot sequence E(30,989), a(n) = floor(a(n-1)^2/a(n-2) + 1/2).

The programs for A276396, the canonical program `A276396.P8140531235939964131` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276396 has offset 0).

The definition of A276396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A276396.P8140531235939964131`, by `A276396.P8140531235939964131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276396.P8140531235939964131

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=30, a(1)=989`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276396

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P8140531235939964131.Spec : Prop :=
  ∀ n, P8140531235939964131.a n = A276396 n

theorem P8140531235939964131.correct : P8140531235939964131.Spec := by
  intro n
  simp only [A276396]

end A276396

/-!
# A276397: Trajectory of 0 under the morphism 0 -> 001, 1 -> 0010.

The programs for A276397, the canonical program `A276397.P8421453054304162173` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276397 has offset 0).

The definition of A276397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276397.P10784274864852481345

`A003589(n)-2`
-/

namespace A276397.P10784274864852481345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003589 n - 2

end

end A276397.P10784274864852481345

namespace A276397

/-- `A003589(n)-2` -/
def P10784274864852481345.Spec : Prop :=
  ∀ n, P10784274864852481345.a n = A276397 n

end A276397

/-! ## A276397.P8421453054304162173

`A188590(n+1)-3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276397

/-- `A188590(n+1)-3` -/
def P8421453054304162173.Spec : Prop :=
  ∀ n, P8421453054304162173.a n = A276397 n

theorem P8421453054304162173.correct : P8421453054304162173.Spec := by
  intro n
  simp only [A276397]

end A276397

/-! ## A276397.P4003452132851874298

`A010715(n)%A003589(n)`
-/

namespace A276397.P4003452132851874298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010715 n) (A003589 n)

end

end A276397.P4003452132851874298

namespace A276397

/-- `A010715(n)%A003589(n)` -/
def P4003452132851874298.Spec : Prop :=
  ∀ n, P4003452132851874298.a n = A276397 n

end A276397

/-! ## A276397.P9028348172489784844

`A016934(n)%A003589(n)`
-/

namespace A276397.P9028348172489784844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016934 n) (A003589 n)

end

end A276397.P9028348172489784844

namespace A276397

/-- `A016934(n)%A003589(n)` -/
def P9028348172489784844.Spec : Prop :=
  ∀ n, P9028348172489784844.a n = A276397 n

end A276397

/-! ## A276397.P8625790089806635994

`A016936(n)%A003589(n)`
-/

namespace A276397.P8625790089806635994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016936 n) (A003589 n)

end

end A276397.P8625790089806635994

namespace A276397

/-- `A016936(n)%A003589(n)` -/
def P8625790089806635994.Spec : Prop :=
  ∀ n, P8625790089806635994.a n = A276397 n

end A276397

/-! ## A276397.P3619155818042386354

`A016938(n)%A003589(n)`
-/

namespace A276397.P3619155818042386354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016938 n) (A003589 n)

end

end A276397.P3619155818042386354

namespace A276397

/-- `A016938(n)%A003589(n)` -/
def P3619155818042386354.Spec : Prop :=
  ∀ n, P3619155818042386354.a n = A276397 n

end A276397

/-! ## A276397.P204327814024075013

`A016957(n)%A003589(n)`
-/

namespace A276397.P204327814024075013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 n) (A003589 n)

end

end A276397.P204327814024075013

namespace A276397

/-- `A016957(n)%A003589(n)` -/
def P204327814024075013.Spec : Prop :=
  ∀ n, P204327814024075013.a n = A276397 n

end A276397

/-! ## A276397.P12560528335743981660

`A016958(n)%A003589(n)`
-/

namespace A276397.P12560528335743981660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016958 n) (A003589 n)

end

end A276397.P12560528335743981660

namespace A276397

/-- `A016958(n)%A003589(n)` -/
def P12560528335743981660.Spec : Prop :=
  ∀ n, P12560528335743981660.a n = A276397 n

end A276397

/-! ## A276397.P15697840793041022684

`A016959(n)%A003589(n)`
-/

namespace A276397.P15697840793041022684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016959 n) (A003589 n)

end

end A276397.P15697840793041022684

namespace A276397

/-- `A016959(n)%A003589(n)` -/
def P15697840793041022684.Spec : Prop :=
  ∀ n, P15697840793041022684.a n = A276397 n

end A276397

/-! ## A276397.P6771665922731005847

`A016960(n)%A003589(n)`
-/

namespace A276397.P6771665922731005847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016960 n) (A003589 n)

end

end A276397.P6771665922731005847

namespace A276397

/-- `A016960(n)%A003589(n)` -/
def P6771665922731005847.Spec : Prop :=
  ∀ n, P6771665922731005847.a n = A276397 n

end A276397

/-! ## A276397.P9689730552342997505

`A016961(n)%A003589(n)`
-/

namespace A276397.P9689730552342997505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016961 n) (A003589 n)

end

end A276397.P9689730552342997505

namespace A276397

/-- `A016961(n)%A003589(n)` -/
def P9689730552342997505.Spec : Prop :=
  ∀ n, P9689730552342997505.a n = A276397 n

end A276397

/-! ## A276397.P905692881290695533

`A016962(n)%A003589(n)`
-/

namespace A276397.P905692881290695533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016962 n) (A003589 n)

end

end A276397.P905692881290695533

namespace A276397

/-- `A016962(n)%A003589(n)` -/
def P905692881290695533.Spec : Prop :=
  ∀ n, P905692881290695533.a n = A276397 n

end A276397

/-! ## A276397.P14925119634713262134

`A016963(n)%A003589(n)`
-/

namespace A276397.P14925119634713262134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016963 n) (A003589 n)

end

end A276397.P14925119634713262134

namespace A276397

/-- `A016963(n)%A003589(n)` -/
def P14925119634713262134.Spec : Prop :=
  ∀ n, P14925119634713262134.a n = A276397 n

end A276397

/-! ## A276397.P5285466029404104081

`A017546(n)%A003589(n)`
-/

namespace A276397.P5285466029404104081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017546 n) (A003589 n)

end

end A276397.P5285466029404104081

namespace A276397

/-- `A017546(n)%A003589(n)` -/
def P5285466029404104081.Spec : Prop :=
  ∀ n, P5285466029404104081.a n = A276397 n

end A276397

/-! ## A276397.P7441664735240628955

`A017548(n)%A003589(n)`
-/

namespace A276397.P7441664735240628955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017548 n) (A003589 n)

end

end A276397.P7441664735240628955

namespace A276397

/-- `A017548(n)%A003589(n)` -/
def P7441664735240628955.Spec : Prop :=
  ∀ n, P7441664735240628955.a n = A276397 n

end A276397

/-! ## A276397.P16707389694323626436

`A017550(n)%A003589(n)`
-/

namespace A276397.P16707389694323626436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017550 n) (A003589 n)

end

end A276397.P16707389694323626436

namespace A276397

/-- `A017550(n)%A003589(n)` -/
def P16707389694323626436.Spec : Prop :=
  ∀ n, P16707389694323626436.a n = A276397 n

end A276397

/-! ## A276397.P5695408399757062330

`A017569(n)%A003589(n)`
-/

namespace A276397.P5695408399757062330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017569 n) (A003589 n)

end

end A276397.P5695408399757062330

namespace A276397

/-- `A017569(n)%A003589(n)` -/
def P5695408399757062330.Spec : Prop :=
  ∀ n, P5695408399757062330.a n = A276397 n

end A276397

/-! ## A276397.P9866067411632960937

`A017570(n)%A003589(n)`
-/

namespace A276397.P9866067411632960937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017570 n) (A003589 n)

end

end A276397.P9866067411632960937

namespace A276397

/-- `A017570(n)%A003589(n)` -/
def P9866067411632960937.Spec : Prop :=
  ∀ n, P9866067411632960937.a n = A276397 n

end A276397

/-! ## A276397.P15462991255658636740

`A017571(n)%A003589(n)`
-/

namespace A276397.P15462991255658636740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017571 n) (A003589 n)

end

end A276397.P15462991255658636740

namespace A276397

/-- `A017571(n)%A003589(n)` -/
def P15462991255658636740.Spec : Prop :=
  ∀ n, P15462991255658636740.a n = A276397 n

end A276397

/-!
# A276398: Limit S_oo where S_0 = 0, S_i = S_{i-1} 1^(4^i) S_{i-1} for i > 0.

The programs for A276398, the canonical program `A276398.P4201254693178825880` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276398 has offset 0).

The definition of A276398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276398.P4201254693178825880

`char[char[∑[and(n, -n)²]]+n]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276398

/-- `char[char[∑[and(n, -n)²]]+n]` -/
def P4201254693178825880.Spec : Prop :=
  ∀ n, (P4201254693178825880.a n : ℤ) = A276398 n

theorem P4201254693178825880.correct : P4201254693178825880.Spec := by
  intro n
  simp only [A276398]

end A276398

/-! ## A276398.P12646016013135366683

`∑[char[∑[4^val(n+1, 2)]]]%2`
-/

namespace A276398.P12646016013135366683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A276398.P12646016013135366683

namespace A276398

/-- `∑[char[∑[4^val(n+1, 2)]]]%2` -/
def P12646016013135366683.Spec : Prop :=
  ∀ n, (P12646016013135366683.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P12570679967601271004

`1-∑[char[∑[and(n, -n)²]]]%2`
-/

namespace A276398.P12570679967601271004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A276398.P12570679967601271004

namespace A276398

/-- `1-∑[char[∑[and(n, -n)²]]]%2` -/
def P12570679967601271004.Spec : Prop :=
  ∀ n, P12570679967601271004.a n = A276398 n

end A276398

/-! ## A276398.P12048144343529433102

`(∑[char[∑[or(n, -n)²]]]+1)%2`
-/

namespace A276398.P12048144343529433102
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A276398.P12048144343529433102

namespace A276398

/-- `(∑[char[∑[or(n, -n)²]]]+1)%2` -/
def P12048144343529433102.Spec : Prop :=
  ∀ n, (P12048144343529433102.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P14761743438903525895

`∑[char[∑[(or(n, n+1)-n)²]]]%2`
-/

namespace A276398.P14761743438903525895
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A276398.P14761743438903525895

namespace A276398

/-- `∑[char[∑[(or(n, n+1)-n)²]]]%2` -/
def P14761743438903525895.Spec : Prop :=
  ∀ n, (P14761743438903525895.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P18238379769773533115

`∑[char[∑[(or(n, n+1)%(n+1)+1)²]]]%2`
-/

namespace A276398.P18238379769773533115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) % (n + 1) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A276398.P18238379769773533115

namespace A276398

/-- `∑[char[∑[(or(n, n+1)%(n+1)+1)²]]]%2` -/
def P18238379769773533115.Spec : Prop :=
  ∀ n, (P18238379769773533115.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P15625309405769436143

`char[comp[A224915(2*n)]]`
-/

namespace A276398.P15625309405769436143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A276398.P15625309405769436143

namespace A276398

/-- `char[comp[A224915(2*n)]]` -/
def P15625309405769436143.Spec : Prop :=
  ∀ n, (P15625309405769436143.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P10970714231370793770

`char[char[A224915(n)]+n]`
-/

namespace A276398.P10970714231370793770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A276398.P10970714231370793770

namespace A276398

/-- `char[char[A224915(n)]+n]` -/
def P10970714231370793770.Spec : Prop :=
  ∀ n, (P10970714231370793770.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P530526661311167898

`Δ[A152754(n+1)]%2`
-/

namespace A276398.P530526661311167898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A276398.P530526661311167898

namespace A276398

/-- `Δ[A152754(n+1)]%2` -/
def P530526661311167898.Spec : Prop :=
  ∀ n, P530526661311167898.a n = A276398 n

end A276398

/-! ## A276398.P13864729408865206634

`A000045(and(1, Δ[A152754(n+1)]))`
-/

namespace A276398.P13864729408865206634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A276398.P13864729408865206634

namespace A276398

/-- `A000045(and(1, Δ[A152754(n+1)]))` -/
def P13864729408865206634.Spec : Prop :=
  ∀ n, P13864729408865206634.a n = A276398 n

end A276398

/-! ## A276398.P16692513144180718540

`and(1, A020639(Δ[A152754(n+1)]))`
-/

namespace A276398.P16692513144180718540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020639 (f1 (n + 1) - f1 n).toNat)

end

end A276398.P16692513144180718540

namespace A276398

/-- `and(1, A020639(Δ[A152754(n+1)]))` -/
def P16692513144180718540.Spec : Prop :=
  ∀ n, P16692513144180718540.a n = A276398 n

end A276398

/-! ## A276398.P18354070237798434380

`and(1, A001222(Δ[A152754(n+1)])!)`
-/

namespace A276398.P18354070237798434380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (A001222 (f1 (n + 1) - f1 n).toNat).toNat)

end

end A276398.P18354070237798434380

namespace A276398

/-- `and(1, A001222(Δ[A152754(n+1)])!)` -/
def P18354070237798434380.Spec : Prop :=
  ∀ n, (P18354070237798434380.a n : ℤ) = A276398 n

end A276398

/-! ## A276398.P7056024366753483841

`A001221(and(1, Δ[A152754(n+1)])+1)`
-/

namespace A276398.P7056024366753483841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land 1 (f1 (n + 1) - f1 n) + 1).toNat

end

end A276398.P7056024366753483841

namespace A276398

/-- `A001221(and(1, Δ[A152754(n+1)])+1)` -/
def P7056024366753483841.Spec : Prop :=
  ∀ n, P7056024366753483841.a n = A276398 n

end A276398

/-! ## A276398.P7211243156877699900

`A001222(and(1, Δ[A152754(n+1)])+1)`
-/

namespace A276398.P7211243156877699900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 1 (f1 (n + 1) - f1 n) + 1).toNat

end

end A276398.P7211243156877699900

namespace A276398

/-- `A001222(and(1, Δ[A152754(n+1)])+1)` -/
def P7211243156877699900.Spec : Prop :=
  ∀ n, P7211243156877699900.a n = A276398 n

end A276398

/-! ## A276398.P18379250888624845063

`2-A000032(and(1, Δ[A152754(n+1)]))`
-/

namespace A276398.P18379250888624845063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000032 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A276398.P18379250888624845063

namespace A276398

/-- `2-A000032(and(1, Δ[A152754(n+1)]))` -/
def P18379250888624845063.Spec : Prop :=
  ∀ n, P18379250888624845063.a n = A276398 n

end A276398

/-! ## A276398.P16123636383621886693

`and(1, A000040(n+2)*Δ[A152754(n+1)])`
-/

namespace A276398.P16123636383621886693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2) * (f1 (n + 1) - f1 n))

end

end A276398.P16123636383621886693

namespace A276398

/-- `and(1, A000040(n+2)*Δ[A152754(n+1)])` -/
def P16123636383621886693.Spec : Prop :=
  ∀ n, P16123636383621886693.a n = A276398 n

end A276398

/-! ## A276398.P59699339026495688

`A000005(val(Δ[A152754(n+1)]+1, 2)+1)-1`
-/

namespace A276398.P59699339026495688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2 + 1) - 1

end

end A276398.P59699339026495688

namespace A276398

/-- `A000005(val(Δ[A152754(n+1)]+1, 2)+1)-1` -/
def P59699339026495688.Spec : Prop :=
  ∀ n, P59699339026495688.a n = A276398 n

end A276398

/-!
# A276399: Numerator of n!/(n^n-n).

The programs for A276399, there is no canonical definition to state claims against.
-/

/-! ## A276399.P2057660052965038379

`gcd(n!, A119464(2^n))`
-/

namespace A276399.P2057660052965038379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A119464 (2 ^ n))

end

end A276399.P2057660052965038379

/-! ## A276399.P10945193860684535779

`A001783(∏{p}[(n+1)^n, #])`
-/

namespace A276399.P10945193860684535779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A276399.P10945193860684535779

/-! ## A276399.P9028840400243914426

`A213936(∑[n]+∑{e}[n+1, #]!²)`
-/

namespace A276399.P9028840400243914426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213936 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2)

end

end A276399.P9028840400243914426

