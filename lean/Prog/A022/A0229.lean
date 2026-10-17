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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A022900: Number of solutions to c(1)*prime(3) + ... + c(n)*prime(n+2) = 0, where c(i) = +-1 for i>1, c(1) = 1.

The programs for A022900, there is no canonical definition to state claims against.
-/

/-! ## A022900.P3988506925313273671

`A131516(A022895(n+1))`
-/

namespace A022900.P3988506925313273671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A022895 (n + 1)).toNat

end

end A022900.P3988506925313273671

/-! ## A022900.P14189825261066922055

`A130758(A022895(n+1)+1)`
-/

namespace A022900.P14189825261066922055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (A022895 (n + 1) + 1).toNat

end

end A022900.P14189825261066922055

/-! ## A022900.P574636559522837143

`A022895(n+1)/A063040(A047789(n))`
-/

namespace A022900.P574636559522837143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022895 (n + 1) : ℚ) / (A063040 (A047789 n).toNat : ℚ)

end

end A022900.P574636559522837143

/-! ## A022900.P4691426788273801073

`A022895(n+1)/A353486(A159328(n))`
-/

namespace A022900.P4691426788273801073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022895 (n + 1) : ℚ) / (A353486 (A159328 n).toNat : ℚ)

end

end A022900.P4691426788273801073

/-! ## A022900.P7808016661870358673

`A022895(n+1)^A016112(A129519(n))`
-/

namespace A022900.P7808016661870358673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022895 (n + 1) : ℚ) ^ (A016112 (A129519 n).toNat : ℤ)

end

end A022900.P7808016661870358673

/-!
# A022902: Number of solutions to c(1)*prime(3)+...+c(n)*prime(n+2) = 2, where c(i) = +-1 for i>1, c(1) = 1.

The programs for A022902, there is no canonical definition to state claims against.
-/

/-! ## A022902.P1507616413585488208

`A118759(Δ[A241087(A008794(n))])`
-/

namespace A022902.P1507616413585488208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (n + 1) - f1 n).toNat

end

end A022902.P1507616413585488208

/-! ## A022902.P7234996797082473376

`Δ[A241087(A008794(n))]*A211096(6*n)`
-/

namespace A022902.P7234996797082473376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A211096 (6 * n)

end

end A022902.P7234996797082473376

/-! ## A022902.P10981465389819558858

`A022897(n+1)-A225766(A022920(n+1))`
-/

namespace A022902.P10981465389819558858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (n + 1) - A225766 (A022920 (n + 1)).toNat

end

end A022902.P10981465389819558858

/-! ## A022902.P11594567155761583361

`A022896(n+2)/2-A225766(A022920(n+1))`
-/

namespace A022902.P11594567155761583361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022896 (n + 2) : ℚ) / 2 - (A225766 (A022920 (n + 1)).toNat : ℚ)

end

end A022902.P11594567155761583361

/-!
# A022904: Number of solutions to c(1)*prime(4) + ... + c(n)*prime(n+3) = 1, where c(i) = +-1 for i>1, c(1) = 1.

The programs for A022904, there is no canonical definition to state claims against.
-/

/-! ## A022904.P12927128019493228852

`Δ[A030581(p?[A326165(n+1)])]`
-/

namespace A022904.P12927128019493228852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030581 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022904.P12927128019493228852

/-!
# A022905: a(n) = M(n) + m(n) for n >= 2, where M(n) = max{ a(i) + a(n-i): i = 1..n-1 }, m(n) = min{ a(i) + a(n-i): i = 1..n-1 }.

The programs for A022905, the canonical program `A022905.P16932586740772776458` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022905 has offset 1).

The definition of A022905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033485, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022905.P16932586740772776458

`(3*A033485(2*n+1)-1)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022905

/-- `(3*A033485(2*n+1)-1)/2` -/
def P16932586740772776458.Spec : Prop :=
  ∀ n, P16932586740772776458.a n = (A022905 (n + 1) : ℚ)

end A022905

/-! ## A022905.P1786128978586227912

`∑[a(n-1)+a(floor(n/2))]` with `a(0)=1, a(1)=3`
-/

namespace A022905.P1786128978586227912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022905.P1786128978586227912

namespace A022905

/-- `∑[a(n-1)+a(floor(n/2))]` -/
def P1786128978586227912.Spec : Prop :=
  ∀ n, (P1786128978586227912.a n : ℤ) = A022905 (n + 1)

end A022905

/-! ## A022905.P15202949839033680058

`∑[A022907(n+1)+1]`
-/

namespace A022905.P15202949839033680058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022905.P15202949839033680058

namespace A022905

/-- `∑[A022907(n+1)+1]` -/
def P15202949839033680058.Spec : Prop :=
  ∀ n, P15202949839033680058.a n = A022905 (n + 1)

end A022905

/-! ## A022905.P13029101876690213324

`floor(3*A131205(n+1)/2)`
-/

namespace A022905.P13029101876690213324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A131205 (n + 1) : ℚ) / 2)⌋

end

end A022905.P13029101876690213324

namespace A022905

/-- `floor(3*A131205(n+1)/2)` -/
def P13029101876690213324.Spec : Prop :=
  ∀ n, P13029101876690213324.a n = A022905 (n + 1)

end A022905

/-! ## A022905.P14535351628278676711

`a(n-1)+3*A033485(n)` with `a(0)=1`
-/

namespace A022905.P14535351628278676711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A033485 n

end

end A022905.P14535351628278676711

namespace A022905

/-- `a(n-1)+3*A033485(n)` -/
def P14535351628278676711.Spec : Prop :=
  ∀ n, P14535351628278676711.a n = A022905 (n + 1)

end A022905

/-! ## A022905.P1924189890689505617

`A022908(n+2)-1`
-/

namespace A022905.P1924189890689505617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022908 (n + 2) - 1

end

end A022905.P1924189890689505617

namespace A022905

/-- `A022908(n+2)-1` -/
def P1924189890689505617.Spec : Prop :=
  ∀ n, P1924189890689505617.a n = A022905 (n + 1)

end A022905

/-! ## A022905.P14171079641943707476

`A022907(2*(n+1))/2`
-/

namespace A022905.P14171079641943707476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022907 (2 * (n + 1)) : ℚ) / 2

end

end A022905.P14171079641943707476

namespace A022905

/-- `A022907(2*(n+1))/2` -/
def P14171079641943707476.Spec : Prop :=
  ∀ n, P14171079641943707476.a n = (A022905 (n + 1) : ℚ)

end A022905

/-! ## A022905.P11127139433878736208

`A033485(2*n+1)+A102379(2*n+1)/2`
-/

namespace A022905.P11127139433878736208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033485 (2 * n + 1) : ℚ) + (A102379 (2 * n + 1) : ℚ) / 2

end

end A022905.P11127139433878736208

namespace A022905

/-- `A033485(2*n+1)+A102379(2*n+1)/2` -/
def P11127139433878736208.Spec : Prop :=
  ∀ n, P11127139433878736208.a n = (A022905 (n + 1) : ℚ)

end A022905

/-! ## A022905.P7396298104319794656

`∑[∑[A007494(A018819(n))]-1]`
-/

namespace A022905.P7396298104319794656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A018819 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022905.P7396298104319794656

namespace A022905

/-- `∑[∑[A007494(A018819(n))]-1]` -/
def P7396298104319794656.Spec : Prop :=
  ∀ n, P7396298104319794656.a n = A022905 (n + 1)

end A022905

/-! ## A022905.P7041882928815044309

`∑[A032766(A000123(n))]`
-/

namespace A022905.P7041882928815044309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A000123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022905.P7041882928815044309

namespace A022905

/-- `∑[A032766(A000123(n))]` -/
def P7041882928815044309.Spec : Prop :=
  ∀ n, P7041882928815044309.a n = A022905 (n + 1)

end A022905

/-!
# A022906: a(n) = M(n) - m(n) for n >= 2, where M(n) = max{ a(i) + a(n-i): i = 1..n-1 }, m(n) = min{ a(i) + a(n-i): i = 1..n-1 }.

The programs for A022906, there is no canonical definition to state claims against.
-/

/-! ## A022906.P13853963598743303294

`A028310(A022910(n+1))-A022909(n+1)`
-/

namespace A022906.P13853963598743303294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022910 (n + 1)).toNat - A022909 (n + 1)

end

end A022906.P13853963598743303294

/-!
# A022907: The sequence m(n) in A022905.

The programs for A022907, the canonical program `A022907.P16549698735255924048` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022907 has offset 1).

The definition of A022907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022907.P16549698735255924048

`a(n-1)+a(floor(n/2))+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022907

/-- `a(n-1)+a(floor(n/2))+1` -/
def P16549698735255924048.Spec : Prop :=
  ∀ n, (P16549698735255924048.a n : ℤ) = A022907 (n + 1)

theorem P16549698735255924048.correct : P16549698735255924048.Spec := by
  intro n
  simp only [A022907, Nat.add_sub_cancel]

end A022907

/-! ## A022907.P12561250910642535489

`∑[a(n-1)+a(∑[n]%n)]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A022907.P12561250910642535489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022907.P12561250910642535489

namespace A022907

/-- `∑[a(n-1)+a(∑[n]%n)]` -/
def P12561250910642535489.Spec : Prop :=
  ∀ n, (P12561250910642535489.a n : ℤ) = A022907 (n + 1)

end A022907

/-! ## A022907.P6261319403026293685

`A022905(n+1)-(A022908(n+1)+A000007(n))`
-/

namespace A022907.P6261319403026293685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 1) - (A022908 (n + 1) + A000007 n)

end

end A022907.P6261319403026293685

namespace A022907

/-- `A022905(n+1)-(A022908(n+1)+A000007(n))` -/
def P6261319403026293685.Spec : Prop :=
  ∀ n, P6261319403026293685.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P16823801007160707673

`(A022905(n+1)-A022908(n+1))%A131205(n+1)`
-/

namespace A022907.P16823801007160707673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022905 (n + 1) - A022908 (n + 1)) (A131205 (n + 1))

end

end A022907.P16823801007160707673

namespace A022907

/-- `(A022905(n+1)-A022908(n+1))%A131205(n+1)` -/
def P16823801007160707673.Spec : Prop :=
  ∀ n, P16823801007160707673.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P2460788571914643733

`Δ[A022908(n+1)+A000007(n)]-1`
-/

namespace A022907.P2460788571914643733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022908 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A022907.P2460788571914643733

namespace A022907

/-- `Δ[A022908(n+1)+A000007(n)]-1` -/
def P2460788571914643733.Spec : Prop :=
  ∀ n, P2460788571914643733.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P7182500797183456251

`Δ[A001478(n+1)+A022908(n+1)+A000007(n)]`
-/

namespace A022907.P7182500797183456251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A022908 (n + 1) + A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022907.P7182500797183456251

namespace A022907

/-- `Δ[A001478(n+1)+A022908(n+1)+A000007(n)]` -/
def P7182500797183456251.Spec : Prop :=
  ∀ n, P7182500797183456251.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P13886918829740592898

`∑[A007494(A018819(n))]-2`
-/

namespace A022907.P13886918829740592898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A018819 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A022907.P13886918829740592898

namespace A022907

/-- `∑[A007494(A018819(n))]-2` -/
def P13886918829740592898.Spec : Prop :=
  ∀ n, P13886918829740592898.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P3586879887776170815

`∑[A007494(A018819(n)%A000123(n))]`
-/

namespace A022907.P3586879887776170815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (Int.tmod (A018819 n) (A000123 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022907.P3586879887776170815

namespace A022907

/-- `∑[A007494(A018819(n)%A000123(n))]` -/
def P3586879887776170815.Spec : Prop :=
  ∀ n, P3586879887776170815.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P10273853885236768024

`A014682(A000123(n)-1)`
-/

namespace A022907.P10273853885236768024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000123 n - 1).toNat

end

end A022907.P10273853885236768024

namespace A022907

/-- `A014682(A000123(n)-1)` -/
def P10273853885236768024.Spec : Prop :=
  ∀ n, P10273853885236768024.a n = A022907 (n + 1)

end A022907

/-! ## A022907.P12914672533934763668

`A014682(∑[A018819(n)]-1)`
-/

namespace A022907.P12914672533934763668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A022907.P12914672533934763668

namespace A022907

/-- `A014682(∑[A018819(n)]-1)` -/
def P12914672533934763668.Spec : Prop :=
  ∀ n, P12914672533934763668.a n = A022907 (n + 1)

end A022907

/-!
# A022908: The sequence M(n) in A022905.

The programs for A022908, the canonical program `A022908.P16210768473374232054` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022908 has offset 1).

The definition of A022908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022908.P16210768473374232054

`∑[a(n-1)+a(∑[n%2])]` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022908

/-- `∑[a(n-1)+a(∑[n%2])]` -/
def P16210768473374232054.Spec : Prop :=
  ∀ n, (P16210768473374232054.a n : ℤ) = A022908 (n + 1)

theorem P16210768473374232054.correct : P16210768473374232054.Spec := by
  intro n
  simp only [A022908, Nat.add_sub_cancel]

end A022908

/-! ## A022908.P9875103517555751577

`(A022905(n+1)-A022907(n+1))%A022905(n+1)`
-/

namespace A022908.P9875103517555751577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022905 (n + 1) - A022907 (n + 1)) (A022905 (n + 1))

end

end A022908.P9875103517555751577

namespace A022908

/-- `(A022905(n+1)-A022907(n+1))%A022905(n+1)` -/
def P9875103517555751577.Spec : Prop :=
  ∀ n, P9875103517555751577.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P13283351009596418250

`A022907(2*n+1)+1-A022905(n+1)`
-/

namespace A022908.P13283351009596418250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (2 * n + 1) + (1 - A022905 (n + 1))

end

end A022908.P13283351009596418250

namespace A022908

/-- `A022907(2*n+1)+1-A022905(n+1)` -/
def P13283351009596418250.Spec : Prop :=
  ∀ n, P13283351009596418250.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P7711519260934815621

`(A022907(2*n+1)+A001511(2*n+1))%A022905(n+1)`
-/

namespace A022908.P7711519260934815621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022907 (2 * n + 1) + A001511 (2 * n + 1)) (A022905 (n + 1))

end

end A022908.P7711519260934815621

namespace A022908

/-- `(A022907(2*n+1)+A001511(2*n+1))%A022905(n+1)` -/
def P7711519260934815621.Spec : Prop :=
  ∀ n, P7711519260934815621.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P12588457458701376795

`(A035263(2*n+1)+A022907(2*n+1))%A022905(n+1)`
-/

namespace A022908.P12588457458701376795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035263 (2 * n + 1) + A022907 (2 * n + 1)) (A022905 (n + 1))

end

end A022908.P12588457458701376795

namespace A022908

/-- `(A035263(2*n+1)+A022907(2*n+1))%A022905(n+1)` -/
def P12588457458701376795.Spec : Prop :=
  ∀ n, P12588457458701376795.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P17276985156022050747

`∑[A007494(A000123(n)-A018819(n))]`
-/

namespace A022908.P17276985156022050747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A000123 n - A018819 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022908.P17276985156022050747

namespace A022908

/-- `∑[A007494(A000123(n)-A018819(n))]` -/
def P17276985156022050747.Spec : Prop :=
  ∀ n, P17276985156022050747.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P3065441274657405826

`A014682(record[A042951(n+1)])`
-/

namespace A022908.P3065441274657405826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022908.P3065441274657405826

namespace A022908

/-- `A014682(record[A042951(n+1)])` -/
def P3065441274657405826.Spec : Prop :=
  ∀ n, P3065441274657405826.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P4946152448682718596

`A014682(∑[A000123(n)]-A000123(n))`
-/

namespace A022908.P4946152448682718596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - A000123 n).toNat

end

end A022908.P4946152448682718596

namespace A022908

/-- `A014682(∑[A000123(n)]-A000123(n))` -/
def P4946152448682718596.Spec : Prop :=
  ∀ n, P4946152448682718596.a n = A022908 (n + 1)

end A022908

/-! ## A022908.P10977502435839689732

`A014682(∑[∑[A018819(n)]]-A018819(2*n))`
-/

namespace A022908.P10977502435839689732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - A018819 (2 * n)).toNat

end

end A022908.P10977502435839689732

namespace A022908

/-- `A014682(∑[∑[A018819(n)]]-A018819(2*n))` -/
def P10977502435839689732.Spec : Prop :=
  ∀ n, P10977502435839689732.a n = A022908 (n + 1)

end A022908

/-!
# A022909: The sequence m(n) in A022906.

The programs for A022909, there is no canonical definition to state claims against.
-/

/-! ## A022909.P15881249279261500951

`A022910(n+1)-A022906(A028310(n)+1)`
-/

namespace A022909.P15881249279261500951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022910 (n + 1) - A022906 (A028310 n + 1).toNat

end

end A022909.P15881249279261500951

/-! ## A022909.P6538072099287260308

`A022910(n+1)-A022906(n+1)%A005893(n)`
-/

namespace A022909.P6538072099287260308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022910 (n + 1) - Int.tmod (A022906 (n + 1)) (A005893 n)

end

end A022909.P6538072099287260308

/-! ## A022909.P9114905099672014262

`(A022910(n+1)-A022906(n+1))%A022905(n+1)`
-/

namespace A022909.P9114905099672014262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022910 (n + 1) - A022906 (n + 1)) (A022905 (n + 1))

end

end A022909.P9114905099672014262

/-! ## A022909.P7631681123359303287

`(A022910(n+1)-A022906(n+1))%A314827(n)`
-/

namespace A022909.P7631681123359303287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022910 (n + 1) - A022906 (n + 1)) (A314827 n)

end

end A022909.P7631681123359303287

/-!
# A022910: The sequence M(n) in A022906.

The programs for A022910, there is no canonical definition to state claims against.
-/

/-! ## A022910.P6847508659623410609

`A022909(n+1)+A022906(n+1)%(n+1)`
-/

namespace A022910.P6847508659623410609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022909 (n + 1) + Int.tmod (A022906 (n + 1)) (n + 1 : ℤ)

end

end A022910.P6847508659623410609

/-! ## A022910.P3337285580509112294

`A022909(n+1)+A022906(A348776(n+1))`
-/

namespace A022910.P3337285580509112294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022909 (n + 1) + A022906 (A348776 (n + 1)).toNat

end

end A022910.P3337285580509112294

/-! ## A022910.P4204107764973990373

`(A022909(n+1)+A022906(n+1))%A005408(n)`
-/

namespace A022910.P4204107764973990373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022909 (n + 1) + A022906 (n + 1)) (A005408 n)

end

end A022910.P4204107764973990373

/-!
# A022911: Arrange the nontrivial binomial coefficients C(m,k) (2 <= k <= m/2) in increasing order (not removing duplicates); record the sequence of m's.

The programs for A022911, there is no canonical definition to state claims against.
-/

/-! ## A022911.P4519574068005649273

`A319500(n+1)%A247442(n+4)`
-/

namespace A022911.P4519574068005649273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319500 (n + 1)) (A247442 (n + 4))

end

end A022911.P4519574068005649273

/-! ## A022911.P1212817754791867474

`A319500(n+1)+and(1, A095146(3*(n+1)))`
-/

namespace A022911.P1212817754791867474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319500 (n + 1) + Int.land 1 (A095146 (3 * (n + 1)))

end

end A022911.P1212817754791867474

/-! ## A022911.P9485838844665469808

`A319500(n+1)+A063725(A176078(n))`
-/

namespace A022911.P9485838844665469808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319500 (n + 1) + A063725 (A176078 n).toNat

end

end A022911.P9485838844665469808

/-! ## A022911.P13181704169029954102

`A329272(A277324(n))+A319500(n+1)`
-/

namespace A022911.P13181704169029954102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329272 (A277324 n).toNat + A319500 (n + 1)

end

end A022911.P13181704169029954102

/-! ## A022911.P5562536642230663968

`A000265(A000079(n))*A319500(n+1)`
-/

namespace A022911.P5562536642230663968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000079 n).toNat * A319500 (n + 1)

end

end A022911.P5562536642230663968

/-!
# A022912: Arrange the nontrivial binomial coefficients C(m,k) (2 <= k <= m/2) in increasing order (not removing duplicates); record the sequence of k's.

The programs for A022912, there is no canonical definition to state claims against.
-/

/-! ## A022912.P9807097644520577154

`A302242(xor(6, A247442(n+2)))`
-/

namespace A022912.P9807097644520577154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (Int.xor 6 (A247442 (n + 2))).toNat

end

end A022912.P9807097644520577154

/-! ## A022912.P15950215087351600707

`A001222(A014206(A345135(n)))`
-/

namespace A022912.P15950215087351600707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014206 (A345135 n).toNat).toNat

end

end A022912.P15950215087351600707

/-! ## A022912.P7871656798434271695

`A130192(A263931(n)%A127345(n+1))`
-/

namespace A022912.P7871656798434271695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (Int.tmod (A263931 n) (A127345 (n + 1))).toNat

end

end A022912.P7871656798434271695

/-! ## A022912.P12794164796763232558

`A257993(xor(A125272(n+1), A137703(n+1)))`
-/

namespace A022912.P12794164796763232558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (Int.xor (A125272 (n + 1)) (A137703 (n + 1))).toNat

end

end A022912.P12794164796763232558

/-! ## A022912.P15658764707477903875

`A130192(A263931(n))`
-/

namespace A022912.P15658764707477903875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A263931 n).toNat

end

end A022912.P15658764707477903875

/-!
# A022913: Arrange the nontrivial binomial coefficients C(m,k) (2 <= k <= m-2) in increasing order; record the positions of the central binomial coefficients.

The programs for A022913, there is no canonical definition to state claims against.
-/

/-! ## A022913.P16852290369206187570

`∑[A325129(A303939(2*n))]`
-/

namespace A022913.P16852290369206187570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (A303939 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022913.P16852290369206187570

/-! ## A022913.P16912929225680758799

`A000006(A090332(Δ[3^n]))`
-/

namespace A022913.P16912929225680758799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A090332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A022913.P16912929225680758799

/-! ## A022913.P6443493878659264190

`∑[A130823(A246988(n+1)+1)]`
-/

namespace A022913.P6443493878659264190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A246988 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022913.P6443493878659264190

/-!
# A022914: Multinomial coefficients(TOP, BOTTOM), where TOP = 2^n, BOTTOM = ( C(n,0) C(n,1) C(n,2) ... C(n,n) ).

The programs for A022914, there is no canonical definition to state claims against.
-/

/-! ## A022914.P13808021510856106382

`A000722(n)/A051459(n)`
-/

namespace A022914.P13808021510856106382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000722 n : ℚ) / (A051459 n : ℚ)

end

end A022914.P13808021510856106382

/-!
# A022915: Multinomial coefficients (0, 1, ..., n)! = C(n+1,2)!/(0!*1!*2!*...*n!).

The programs for A022915, the canonical program `A022915.P1390373990754282635` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022915 has offset 0).

The definition of A022915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022915.P11869839419798012927

`a(n-1)*A014068(n)` with `a(0)=1`
-/

namespace A022915.P11869839419798012927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014068 n

end

end A022915.P11869839419798012927

namespace A022915

/-- `a(n-1)*A014068(n)` -/
def P11869839419798012927.Spec : Prop :=
  ∀ n, P11869839419798012927.a n = A022915 n

end A022915

/-! ## A022915.P1390373990754282635

`A052295(n)/A000178(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022915

/-- `A052295(n)/A000178(n)` -/
def P1390373990754282635.Spec : Prop :=
  ∀ n, P1390373990754282635.a n = (A022915 n : ℚ)

end A022915

/-! ## A022915.P9341456271502256873

`∏[C(∑[n], n)]`
-/

namespace A022915.P9341456271502256873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022915.P9341456271502256873

namespace A022915

/-- `∏[C(∑[n], n)]` -/
def P9341456271502256873.Spec : Prop :=
  ∀ n, (P9341456271502256873.a n : ℤ) = A022915 n

end A022915

/-! ## A022915.P16876086280523398945

`2^∑[log2(C(∑[n], n))]`
-/

namespace A022915.P16876086280523398945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022915.P16876086280523398945

namespace A022915

/-- `2^∑[log2(C(∑[n], n))]` -/
def P16876086280523398945.Spec : Prop :=
  ∀ n, P16876086280523398945.a n = (A022915 n : ℝ)

end A022915

/-! ## A022915.P13171618691797668981

`C(∑[n], n)*a(n-1)` with `a(0)=1`
-/

namespace A022915.P13171618691797668981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n * a (n - 1)

end

end A022915.P13171618691797668981

namespace A022915

/-- `C(∑[n], n)*a(n-1)` -/
def P13171618691797668981.Spec : Prop :=
  ∀ n, (P13171618691797668981.a n : ℤ) = A022915 n

end A022915

/-!
# A022916: Multinomial coefficient n!/([n/3]![(n+1)/3]![(n+2)/3]!).

The programs for A022916, the canonical program `A022916.P18302845039449543127` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022916 has offset 0).

The definition of A022916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022916.P18302845039449543127

`n/ceil(n/3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022916

/-- `n/ceil(n/3)*a(n-1)` -/
def P18302845039449543127.Spec : Prop :=
  ∀ n, P18302845039449543127.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P8680399213441543765

`n*a(n-1)/floor((n+2)/3)` with `a(0)=1`
-/

namespace A022916.P8680399213441543765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (⌊(n + 2 : ℚ) / 3⌋ : ℚ))

end

end A022916.P8680399213441543765

namespace A022916

/-- `n*a(n-1)/floor((n+2)/3)` -/
def P8680399213441543765.Spec : Prop :=
  ∀ n, P8680399213441543765.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P10258867123001061303

`n*a(n-1)/∑[∑[n]%3]` with `a(0)=1`
-/

namespace A022916.P10258867123001061303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A022916.P10258867123001061303

namespace A022916

/-- `n*a(n-1)/∑[∑[n]%3]` -/
def P10258867123001061303.Spec : Prop :=
  ∀ n, P10258867123001061303.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P13887790886471318247

`n*a(n-1)/A002264(n+2)` with `a(0)=1`
-/

namespace A022916.P13887790886471318247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (A002264 (n + 2) : ℚ)

end

end A022916.P13887790886471318247

namespace A022916

/-- `n*a(n-1)/A002264(n+2)` -/
def P13887790886471318247.Spec : Prop :=
  ∀ n, P13887790886471318247.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P6107416808282082000

`n*a(n-1)/(n-A004523(n))` with `a(0)=1`
-/

namespace A022916.P6107416808282082000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / ((n : ℤ) - A004523 n : ℚ)

end

end A022916.P6107416808282082000

namespace A022916

/-- `n*a(n-1)/(n-A004523(n))` -/
def P6107416808282082000.Spec : Prop :=
  ∀ n, P6107416808282082000.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P17263510369572250178

`n*a(n-1)/∑[A022003(n+1)]` with `a(0)=1`
-/

namespace A022916.P17263510369572250178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A022916.P17263510369572250178

namespace A022916

/-- `n*a(n-1)/∑[A022003(n+1)]` -/
def P17263510369572250178.Spec : Prop :=
  ∀ n, P17263510369572250178.a n = (A022916 n : ℚ)

end A022916

/-! ## A022916.P16597050652512397830

`A107230(∑[∑[n%3]])`
-/

namespace A022916.P16597050652512397830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022916.P16597050652512397830

namespace A022916

/-- `A107230(∑[∑[n%3]])` -/
def P16597050652512397830.Spec : Prop :=
  ∀ n, P16597050652512397830.a n = A022916 n

end A022916

/-! ## A022916.P11488131501279244252

`A089627(A171452(n+1))`
-/

namespace A022916.P11488131501279244252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (A171452 (n + 1)).toNat

end

end A022916.P11488131501279244252

namespace A022916

/-- `A089627(A171452(n+1))` -/
def P11488131501279244252.Spec : Prop :=
  ∀ n, P11488131501279244252.a n = A022916 n

end A022916

/-!
# A022917: Multinomial coefficient n!/ ([n/4]!, [(n+1)/4]!, [(n+2)/4]!, [(n+3)/4]!).

The programs for A022917, the canonical program `A022917.P1264194993428589448` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022917 has offset 0).

The definition of A022917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022917.P1264194993428589448

`n*a(n-1)/floor((n+3)/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022917

/-- `n*a(n-1)/floor((n+3)/4)` -/
def P1264194993428589448.Spec : Prop :=
  ∀ n, P1264194993428589448.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P10068071387662684395

`n/A110655(n)*a(n-1)` with `a(0)=1`
-/

namespace A022917.P10068071387662684395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A110655 n : ℚ) * a (n - 1)

end

end A022917.P10068071387662684395

namespace A022917

/-- `n/A110655(n)*a(n-1)` -/
def P10068071387662684395.Spec : Prop :=
  ∀ n, P10068071387662684395.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P16726278972735868410

`n/A002265(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A022917.P16726278972735868410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A002265 (n + 3) : ℚ) * a (n - 1)

end

end A022917.P16726278972735868410

namespace A022917

/-- `n/A002265(n+3)*a(n-1)` -/
def P16726278972735868410.Spec : Prop :=
  ∀ n, P16726278972735868410.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P13761327882333082406

`n/A004526(A080513(n))*a(n-1)` with `a(0)=1`
-/

namespace A022917.P13761327882333082406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A004526 (A080513 n).toNat : ℚ) * a (n - 1)

end

end A022917.P13761327882333082406

namespace A022917

/-- `n/A004526(A080513(n))*a(n-1)` -/
def P13761327882333082406.Spec : Prop :=
  ∀ n, P13761327882333082406.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P3295208258264255709

`n/A065033(A065033(n))*a(n-1)` with `a(0)=1`
-/

namespace A022917.P3295208258264255709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A065033 (A065033 n).toNat : ℚ) * a (n - 1)

end

end A022917.P3295208258264255709

namespace A022917

/-- `n/A065033(A065033(n))*a(n-1)` -/
def P3295208258264255709.Spec : Prop :=
  ∀ n, P3295208258264255709.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P16202313662355010331

`n/A110654(A110654(n))*a(n-1)` with `a(0)=1`
-/

namespace A022917.P16202313662355010331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A110654 (A110654 n).toNat : ℚ) * a (n - 1)

end

end A022917.P16202313662355010331

namespace A022917

/-- `n/A110654(A110654(n))*a(n-1)` -/
def P16202313662355010331.Spec : Prop :=
  ∀ n, P16202313662355010331.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P9346365322869591513

`∏[A008486(n)/A008486(A110655(n))]`
-/

namespace A022917.P9346365322869591513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A110655 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022917.P9346365322869591513

namespace A022917

/-- `∏[A008486(n)/A008486(A110655(n))]` -/
def P9346365322869591513.Spec : Prop :=
  ∀ n, P9346365322869591513.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P14846970759140520430

`∏[A187180(4*n+1)/A187180(A187180(2*(n+1)))]`
-/

namespace A022917.P14846970759140520430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187180 (4 * n + 1) : ℚ) / (A187180 (A187180 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022917.P14846970759140520430

namespace A022917

/-- `∏[A187180(4*n+1)/A187180(A187180(2*(n+1)))]` -/
def P14846970759140520430.Spec : Prop :=
  ∀ n, P14846970759140520430.a n = (A022917 n : ℚ)

end A022917

/-! ## A022917.P12427772123130664117

`A000142(n)/∏[A065033(A065033(n))]`
-/

namespace A022917.P12427772123130664117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A022917.P12427772123130664117

namespace A022917

/-- `A000142(n)/∏[A065033(A065033(n))]` -/
def P12427772123130664117.Spec : Prop :=
  ∀ n, P12427772123130664117.a n = (A022917 n : ℚ)

end A022917

/-!
# A022918: 

The programs for A022918, there is no canonical definition to state claims against.
-/

/-! ## A022918.P5130306094711744598

`∏[C(∑[(n+1)²], ∑[n²])]`
-/

namespace A022918.P5130306094711744598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022918.P5130306094711744598

/-! ## A022918.P15551890847024595228

`C(∑[(n+1)²], (n+1)²)*a(n-1)` with `a(0)=1`
-/

namespace A022918.P15551890847024595228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2) * a (n - 1)

end

end A022918.P15551890847024595228

/-!
# A022919: Multinomial coefficients(TOP, BOTTOM), where TOP = n^2, BOTTOM = ( 1 3 5 ... 2n-1 ).

The programs for A022919, there is no canonical definition to state claims against.
-/

/-! ## A022919.P5335323455566799207

`a(n-1)*A070781(n-1)` with `a(0)=1`
-/

namespace A022919.P5335323455566799207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A070781 (n - 1)

end

end A022919.P5335323455566799207

/-! ## A022919.P11843361925574462251

`∏[C(n², comp[2*(n+1)])]`
-/

namespace A022919.P11843361925574462251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022919.P11843361925574462251

/-! ## A022919.P16859866558310171505

`C(n², (n-1)²)*a(n-1)` with `a(0)=1`
-/

namespace A022919.P16859866558310171505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n ^ 2) (((n : ℤ) - 1) ^ 2).toNat * a (n - 1)

end

end A022919.P16859866558310171505

/-! ## A022919.P996976241767361502

`∏[A070781(n)]/A070781(n)`
-/

namespace A022919.P996976241767361502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070781 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A070781 n : ℚ)

end

end A022919.P996976241767361502

/-!
# A022921: Number of integers m such that 3^n < 2^m < 3^(n+1).

The programs for A022921, the canonical program `A022921.P464049656730584454` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022921 has offset 0).

The definition of A022921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022921.P464049656730584454

`floor((n+1)*log2(3))-floor(n*log2(3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022921

/-- `floor((n+1)*log2(3))-floor(n*log2(3))` -/
def P464049656730584454.Spec : Prop :=
  ∀ n, P464049656730584454.a n = A022921 n

theorem P464049656730584454.correct : P464049656730584454.Spec := by
  intro n
  simp only [A022921]

end A022921

/-!
# A022922: Number of integers m such that 5^n < 2^m < 5^(n+1).

The programs for A022922, the canonical program `A022922.P13332490768464008968` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022922 has offset 0).

The definition of A022922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022922.P13332490768464008968

`Δ[floor(n*log2(5))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022922

/-- `Δ[floor(n*log2(5))]` -/
def P13332490768464008968.Spec : Prop :=
  ∀ n, P13332490768464008968.a n = A022922 n

theorem P13332490768464008968.correct : P13332490768464008968.Spec := by
  intro n
  simp only [A022922]

end A022922

/-! ## A022922.P12483676139597110503

`A129344(n+1)-A054977(n)`
-/

namespace A022922.P12483676139597110503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1) - A054977 n

end

end A022922.P12483676139597110503

namespace A022922

/-- `A129344(n+1)-A054977(n)` -/
def P12483676139597110503.Spec : Prop :=
  ∀ n, P12483676139597110503.a n = A022922 n

end A022922

/-! ## A022922.P2492885836972974874

`A089682(n+1)%A129344(n+1)`
-/

namespace A022922.P2492885836972974874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089682 (n + 1)) (A129344 (n + 1))

end

end A022922.P2492885836972974874

namespace A022922

/-- `A089682(n+1)%A129344(n+1)` -/
def P2492885836972974874.Spec : Prop :=
  ∀ n, P2492885836972974874.a n = A022922 n

end A022922

/-! ## A022922.P11236727243244801624

`A106974(n+1)%A129344(n+1)`
-/

namespace A022922.P11236727243244801624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106974 (n + 1)) (A129344 (n + 1))

end

end A022922.P11236727243244801624

namespace A022922

/-- `A106974(n+1)%A129344(n+1)` -/
def P11236727243244801624.Spec : Prop :=
  ∀ n, P11236727243244801624.a n = A022922 n

end A022922

/-! ## A022922.P1199200265669611216

`A139831(n+1)%A129344(n+1)`
-/

namespace A022922.P1199200265669611216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139831 (n + 1)) (A129344 (n + 1))

end

end A022922.P1199200265669611216

namespace A022922

/-- `A139831(n+1)%A129344(n+1)` -/
def P1199200265669611216.Spec : Prop :=
  ∀ n, P1199200265669611216.a n = A022922 n

end A022922

/-! ## A022922.P3531804147776769071

`A139839(n+1)%A129344(n+1)`
-/

namespace A022922.P3531804147776769071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139839 (n + 1)) (A129344 (n + 1))

end

end A022922.P3531804147776769071

namespace A022922

/-- `A139839(n+1)%A129344(n+1)` -/
def P3531804147776769071.Spec : Prop :=
  ∀ n, P3531804147776769071.a n = A022922 n

end A022922

/-! ## A022922.P15586911241771547567

`A139867(n+1)%A129344(n+1)`
-/

namespace A022922.P15586911241771547567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139867 (n + 1)) (A129344 (n + 1))

end

end A022922.P15586911241771547567

namespace A022922

/-- `A139867(n+1)%A129344(n+1)` -/
def P15586911241771547567.Spec : Prop :=
  ∀ n, P15586911241771547567.a n = A022922 n

end A022922

/-! ## A022922.P1719691318754527653

`A139942(n+1)%A129344(n+1)`
-/

namespace A022922.P1719691318754527653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139942 (n + 1)) (A129344 (n + 1))

end

end A022922.P1719691318754527653

namespace A022922

/-- `A139942(n+1)%A129344(n+1)` -/
def P1719691318754527653.Spec : Prop :=
  ∀ n, P1719691318754527653.a n = A022922 n

end A022922

/-! ## A022922.P940309398790042451

`A140014(n+1)%A129344(n+1)`
-/

namespace A022922.P940309398790042451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140014 (n + 1)) (A129344 (n + 1))

end

end A022922.P940309398790042451

namespace A022922

/-- `A140014(n+1)%A129344(n+1)` -/
def P940309398790042451.Spec : Prop :=
  ∀ n, P940309398790042451.a n = A022922 n

end A022922

/-! ## A022922.P16946234264708541989

`A200846(n+1)%A129344(n+1)`
-/

namespace A022922.P16946234264708541989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200846 (n + 1)) (A129344 (n + 1))

end

end A022922.P16946234264708541989

namespace A022922

/-- `A200846(n+1)%A129344(n+1)` -/
def P16946234264708541989.Spec : Prop :=
  ∀ n, P16946234264708541989.a n = A022922 n

end A022922

/-! ## A022922.P16184688370620997821

`A066343(n+1)-A123384(n)`
-/

namespace A022922.P16184688370620997821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) - A123384 n

end

end A022922.P16184688370620997821

namespace A022922

/-- `A066343(n+1)-A123384(n)` -/
def P16184688370620997821.Spec : Prop :=
  ∀ n, P16184688370620997821.a n = A022922 n

end A022922

/-! ## A022922.P14797190641473942539

`Δ[A123384(n)]-1`
-/

namespace A022922.P14797190641473942539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A022922.P14797190641473942539

namespace A022922

/-- `Δ[A123384(n)]-1` -/
def P14797190641473942539.Spec : Prop :=
  ∀ n, P14797190641473942539.a n = A022922 n

end A022922

/-! ## A022922.P8605045275590014716

`A025639(A123384(n+1)-A123384(n))`
-/

namespace A022922.P8605045275590014716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025639 (A123384 (n + 1) - A123384 n).toNat

end

end A022922.P8605045275590014716

namespace A022922

/-- `A025639(A123384(n+1)-A123384(n))` -/
def P8605045275590014716.Spec : Prop :=
  ∀ n, P8605045275590014716.a n = A022922 n

end A022922

/-! ## A022922.P14806323198278286543

`A115374(n+1)%A129344(n+1)`
-/

namespace A022922.P14806323198278286543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115374 (n + 1)) (A129344 (n + 1))

end

end A022922.P14806323198278286543

namespace A022922

/-- `A115374(n+1)%A129344(n+1)` -/
def P14806323198278286543.Spec : Prop :=
  ∀ n, P14806323198278286543.a n = A022922 n

end A022922

/-! ## A022922.P7595970809653591571

`A133489(n+1)%A129344(n+1)`
-/

namespace A022922.P7595970809653591571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133489 (n + 1)) (A129344 (n + 1))

end

end A022922.P7595970809653591571

namespace A022922

/-- `A133489(n+1)%A129344(n+1)` -/
def P7595970809653591571.Spec : Prop :=
  ∀ n, P7595970809653591571.a n = A022922 n

end A022922

/-! ## A022922.P6435345649358125594

`A153893(n)%A129344(n+1)`
-/

namespace A022922.P6435345649358125594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153893 n) (A129344 (n + 1))

end

end A022922.P6435345649358125594

namespace A022922

/-- `A153893(n)%A129344(n+1)` -/
def P6435345649358125594.Spec : Prop :=
  ∀ n, P6435345649358125594.a n = A022922 n

end A022922

/-!
# A022923: Number of integers m such that 7^n < 2^m < 7^(n+1).

The programs for A022923, the canonical program `A022923.P8451679618393413432` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022923 has offset 0).

The definition of A022923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022923.P8451679618393413432

`Δ[floor(n*log2(7))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022923

/-- `Δ[floor(n*log2(7))]` -/
def P8451679618393413432.Spec : Prop :=
  ∀ n, P8451679618393413432.a n = A022923 n

theorem P8451679618393413432.correct : P8451679618393413432.Spec := by
  intro n
  simp only [A022923]

end A022923

/-! ## A022923.P734951942708254177

`A010693(A091773(n)+A059928(n+1))`
-/

namespace A022923.P734951942708254177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A091773 n + A059928 (n + 1)).toNat

end

end A022923.P734951942708254177

namespace A022923

/-- `A010693(A091773(n)+A059928(n+1))` -/
def P734951942708254177.Spec : Prop :=
  ∀ n, P734951942708254177.a n = A022923 n

end A022923

/-! ## A022923.P3493590634248606688

`or(A130782(2*(n+1)), A353841(A153147(n+1)))`
-/

namespace A022923.P3493590634248606688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130782 (2 * (n + 1))) (A353841 (A153147 (n + 1)).toNat)

end

end A022923.P3493590634248606688

namespace A022923

/-- `or(A130782(2*(n+1)), A353841(A153147(n+1)))` -/
def P3493590634248606688.Spec : Prop :=
  ∀ n, P3493590634248606688.a n = A022923 n

end A022923

/-! ## A022923.P556858611415965478

`A131670(∑[(n+1)²])+2`
-/

namespace A022923.P556858611415965478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131670 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A022923.P556858611415965478

namespace A022923

/-- `A131670(∑[(n+1)²])+2` -/
def P556858611415965478.Spec : Prop :=
  ∀ n, P556858611415965478.a n = A022923 n

end A022923

/-!
# A022924: Number of 3^m between 2^n and 2^(n+1).

The programs for A022924, the canonical program `A022924.P3236427169308716577` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022924 has offset 0).

The definition of A022924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022924.P3236427169308716577

`Δ[floor(n/log2(3))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022924

/-- `Δ[floor(n/log2(3))]` -/
def P3236427169308716577.Spec : Prop :=
  ∀ n, P3236427169308716577.a n = A022924 n

theorem P3236427169308716577.correct : P3236427169308716577.Spec := by
  intro n
  simp only [A022924]

end A022924

/-!
# A022925: Number of 5^m between 2^n and 2^(n+1).

The programs for A022925, the canonical program `A022925.P2700849016761946750` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022925 has offset 0).

The definition of A022925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022925.P2700849016761946750

`Δ[floor(n/log2(5))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022925

/-- `Δ[floor(n/log2(5))]` -/
def P2700849016761946750.Spec : Prop :=
  ∀ n, P2700849016761946750.a n = A022925 n

theorem P2700849016761946750.correct : P2700849016761946750.Spec := by
  intro n
  simp only [A022925]

end A022925

/-!
# A022926: Number of powers of 7 between 2^n and 2^(n+1).

The programs for A022926, the canonical program `A022926.P16774545798916695975` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022926 has offset 0).

The definition of A022926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022926.P16774545798916695975

`Δ[floor(n/log2(7))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022926

/-- `Δ[floor(n/log2(7))]` -/
def P16774545798916695975.Spec : Prop :=
  ∀ n, P16774545798916695975.a n = A022926 n

theorem P16774545798916695975.correct : P16774545798916695975.Spec := by
  intro n
  simp only [A022926]

end A022926

/-! ## A022926.P15121437547479254385

`Δ[ceil(n/log2(7))]%(n+1)`
-/

namespace A022926.P15121437547479254385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A022926.P15121437547479254385

namespace A022926

/-- `Δ[ceil(n/log2(7))]%(n+1)` -/
def P15121437547479254385.Spec : Prop :=
  ∀ n, P15121437547479254385.a n = A022926 n

end A022926

/-! ## A022926.P1232370943327458404

`char[∑[A022923(n)]]`
-/

namespace A022926.P1232370943327458404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A022926.P1232370943327458404

namespace A022926

/-- `char[∑[A022923(n)]]` -/
def P1232370943327458404.Spec : Prop :=
  ∀ n, (P1232370943327458404.a n : ℤ) = A022926 n

end A022926

/-! ## A022926.P14288782683236851002

`Δ[ceil(n/log2(7))]-A000007(n)`
-/

namespace A022926.P14288782683236851002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A022926.P14288782683236851002

namespace A022926

/-- `Δ[ceil(n/log2(7))]-A000007(n)` -/
def P14288782683236851002.Spec : Prop :=
  ∀ n, P14288782683236851002.a n = A022926 n

end A022926

/-! ## A022926.P6064372984811421794

`char[floor(n*log2(7))]*A057427(n)`
-/

namespace A022926.P6064372984811421794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057427 n

end

end A022926.P6064372984811421794

namespace A022926

/-- `char[floor(n*log2(7))]*A057427(n)` -/
def P6064372984811421794.Spec : Prop :=
  ∀ n, P6064372984811421794.a n = A022926 n

end A022926

/-! ## A022926.P14032699014760809981

`A019429(2*n*Δ[ceil(n/log2(7))])`
-/

namespace A022926.P14032699014760809981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 ((2 * n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A022926.P14032699014760809981

namespace A022926

/-- `A019429(2*n*Δ[ceil(n/log2(7))])` -/
def P14032699014760809981.Spec : Prop :=
  ∀ n, P14032699014760809981.a n = A022926 n

end A022926

/-!
# A022927: Number of integers m such that 5^n < 3^m < 5^(n+1).

The programs for A022927, there is no canonical definition to state claims against.
-/

/-! ## A022927.P4859989890062325710

`Δ[A008621(A121901(n²))]`
-/

namespace A022927.P4859989890062325710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A121901 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022927.P4859989890062325710

/-! ## A022927.P10933883498156558406

`A014963(Δ[A335354(5*n+3)])`
-/

namespace A022927.P10933883498156558406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A022927.P10933883498156558406

/-! ## A022927.P12797528177883366637

`3-A001221(Δ[A335354(5*n+3)])`
-/

namespace A022927.P12797528177883366637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001221 (f1 (n + 1) - f1 n).toNat

end

end A022927.P12797528177883366637

/-! ## A022927.P9822378171441241231

`4-A001222(Δ[A335354(5*n+3)])`
-/

namespace A022927.P9822378171441241231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A001222 (f1 (n + 1) - f1 n).toNat

end

end A022927.P9822378171441241231

/-! ## A022927.P15093862355484668026

`A001222(Δ[A335354(5*n+3)]+5)`
-/

namespace A022927.P15093862355484668026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 5).toNat

end

end A022927.P15093862355484668026

/-! ## A022927.P15782092618840233729

`4-A006530(Δ[A335354(5*n+3)])`
-/

namespace A022927.P15782092618840233729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A006530 (f1 (n + 1) - f1 n).toNat

end

end A022927.P15782092618840233729

/-! ## A022927.P13557775758141959592

`4/A000010(Δ[A335354(5*n+3)])`
-/

namespace A022927.P13557775758141959592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A022927.P13557775758141959592

/-! ## A022927.P5815554515361668489

`6/A000005(Δ[A335354(5*n+3)])`
-/

namespace A022927.P5815554515361668489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335354 (5 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A000005 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A022927.P5815554515361668489

/-!
# A022928: Number of 5^m between 3^n and 3^(n+1).

The programs for A022928, there is no canonical definition to state claims against.
-/

/-! ## A022928.P15942027253088110524

`char[∑[A022927(n)]]`
-/

namespace A022928.P15942027253088110524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A022928.P15942027253088110524

/-! ## A022928.P15814117473004832763

`A000484(n+2)^A014206(A303303(n))`
-/

namespace A022928.P15814117473004832763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000484 (n + 2) : ℚ) ^ (A014206 (A303303 n).toNat : ℤ)

end

end A022928.P15814117473004832763

/-! ## A022928.P5264423675256458638

`A000007(A276112(n+1))+char[A110118(n+1)]`
-/

namespace A022928.P5264423675256458638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A276112 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022928.P5264423675256458638

/-! ## A022928.P1268858893469478587

`A000484(n+2)^A050520(A002322(2*n+3))`
-/

namespace A022928.P1268858893469478587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000484 (n + 2) : ℚ) ^ (A050520 (A002322 (2 * n + 3)).toNat : ℤ)

end

end A022928.P1268858893469478587

/-! ## A022928.P14615292112964065141

`A000484(n+2)^A050520(A062401(n+3))`
-/

namespace A022928.P14615292112964065141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000484 (n + 2) : ℚ) ^ (A050520 (A062401 (n + 3)).toNat : ℤ)

end

end A022928.P14615292112964065141

/-! ## A022928.P9571352242869485107

`A000484(n+2)^A001223(A002327(2*(n+2)))`
-/

namespace A022928.P9571352242869485107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000484 (n + 2) : ℚ) ^ (A001223 (A002327 (2 * (n + 2))).toNat : ℤ)

end

end A022928.P9571352242869485107

/-! ## A022928.P9181742615417357482

`A000484(n+2)^A001223(A095904(n+3))`
-/

namespace A022928.P9181742615417357482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000484 (n + 2) : ℚ) ^ (A001223 (A095904 (n + 3)).toNat : ℤ)

end

end A022928.P9181742615417357482

/-! ## A022928.P2480496935049597996

`A000007(A221463(n+1)+1)+char[A110118(n+1)]`
-/

namespace A022928.P2480496935049597996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A221463 (n + 1) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022928.P2480496935049597996

/-! ## A022928.P16029626335480790845

`A000007(A304149(n+1)+1)+char[A110118(n+1)]`
-/

namespace A022928.P16029626335480790845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A304149 (n + 1) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022928.P16029626335480790845

/-!
# A022929: Number of 3^m between 4^n and 4^(n+1).

The programs for A022929, the canonical program `A022929.P4202533793575816525` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022929 has offset 0).

The definition of A022929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022929.P4202533793575816525

`Δ[floor(2*n/log2(3))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022929

/-- `Δ[floor(2*n/log2(3))]` -/
def P4202533793575816525.Spec : Prop :=
  ∀ n, P4202533793575816525.a n = A022929 n

theorem P4202533793575816525.correct : P4202533793575816525.Spec := by
  intro n
  simp only [A022929]

end A022929

/-!
# A022930: Number of 4^m between 3^n and 3^(n+1).

The programs for A022930, the canonical program `A022930.P16989374351501445067` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022930 has offset 0).

The definition of A022930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022930.P16989374351501445067

`Δ[floor(n*log2(sqrt(3)))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022930

/-- `Δ[floor(n*log2(sqrt(3)))]` -/
def P16989374351501445067.Spec : Prop :=
  ∀ n, P16989374351501445067.a n = A022930 n

theorem P16989374351501445067.correct : P16989374351501445067.Spec := by
  intro n
  simp only [A022930]

end A022930

/-!
# A022931: Number of e^m between Pi^n and Pi^(n+1).

The programs for A022931, the canonical program `A022931.P15322625871257903484` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022931 has offset 0).

The definition of A022931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022931.P15322625871257903484

`Δ[floor(n*log(π))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022931

/-- `Δ[floor(n*log(π))]` -/
def P15322625871257903484.Spec : Prop :=
  ∀ n, P15322625871257903484.a n = A022931 n

theorem P15322625871257903484.correct : P15322625871257903484.Spec := by
  intro n
  simp only [A022931]

end A022931

/-! ## A022931.P1051159734124185193

`Δ[A059561(A028310(n))]!`
-/

namespace A022931.P1051159734124185193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A022931.P1051159734124185193

namespace A022931

/-- `Δ[A059561(A028310(n))]!` -/
def P1051159734124185193.Spec : Prop :=
  ∀ n, (P1051159734124185193.a n : ℤ) = A022931 n

end A022931

/-! ## A022931.P3492932146826207516

`A059561(n+1)-comp[A059562(n+1)]`
-/

namespace A022931.P3492932146826207516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022931.P3492932146826207516

namespace A022931

/-- `A059561(n+1)-comp[A059562(n+1)]` -/
def P3492932146826207516.Spec : Prop :=
  ∀ n, P3492932146826207516.a n = A022931 n

end A022931

/-! ## A022931.P10235250575252582792

`A000007(n)+Δ[A059561(A028310(n))]`
-/

namespace A022931.P10235250575252582792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A022931.P10235250575252582792

namespace A022931

/-- `A000007(n)+Δ[A059561(A028310(n))]` -/
def P10235250575252582792.Spec : Prop :=
  ∀ n, P10235250575252582792.a n = A022931 n

end A022931

/-! ## A022931.P16454207368545209862

`Δ[A059561(A123108(2*n))]!`
-/

namespace A022931.P16454207368545209862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A022931.P16454207368545209862

namespace A022931

/-- `Δ[A059561(A123108(2*n))]!` -/
def P16454207368545209862.Spec : Prop :=
  ∀ n, (P16454207368545209862.a n : ℤ) = A022931 n

end A022931

/-! ## A022931.P2162366345675737631

`Δ[A059561(A233583(n+1))]!`
-/

namespace A022931.P2162366345675737631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A022931.P2162366345675737631

namespace A022931

/-- `Δ[A059561(A233583(n+1))]!` -/
def P2162366345675737631.Spec : Prop :=
  ∀ n, (P2162366345675737631.a n : ℤ) = A022931 n

end A022931

/-!
# A022932: a(n) is the number of powers Pi^m between e^n and e^(n+1).

The programs for A022932, the canonical program `A022932.P13308766260925806092` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022932 has offset 0).

The definition of A022932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022932.P13308766260925806092

`Δ[floor(n/log(π))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022932

/-- `Δ[floor(n/log(π))]` -/
def P13308766260925806092.Spec : Prop :=
  ∀ n, P13308766260925806092.a n = A022932 n

theorem P13308766260925806092.correct : P13308766260925806092.Spec := by
  intro n
  simp only [A022932]

end A022932

/-!
# A022933: Number of e^m between 2^n and 2^(n+1).

The programs for A022933, the canonical program `A022933.P15200820070622578600` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022933 has offset 0).

The definition of A022933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022933.P15200820070622578600

`Δ[floor(n*log(2))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022933

/-- `Δ[floor(n*log(2))]` -/
def P15200820070622578600.Spec : Prop :=
  ∀ n, P15200820070622578600.a n = A022933 n

theorem P15200820070622578600.correct : P15200820070622578600.Spec := by
  intro n
  simp only [A022933]

end A022933

/-! ## A022933.P409665785493037311

`char[∑[A022934(n)]]`
-/

namespace A022933.P409665785493037311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A022933.P409665785493037311

namespace A022933

/-- `char[∑[A022934(n)]]` -/
def P409665785493037311.Spec : Prop :=
  ∀ n, (P409665785493037311.a n : ℤ) = A022933 n

end A022933

/-! ## A022933.P5465829250943809741

`char[A307513(n+1)]`
-/

namespace A022933.P5465829250943809741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A022933.P5465829250943809741

namespace A022933

/-- `char[A307513(n+1)]` -/
def P5465829250943809741.Spec : Prop :=
  ∀ n, (P5465829250943809741.a n : ℤ) = A022933 n

end A022933

/-! ## A022933.P8339527989134720752

`char[floor((A057353(n)+1)/log(2))]`
-/

namespace A022933.P8339527989134720752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057353 n + 1 : ℝ) / Real.log (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A022933.P8339527989134720752

namespace A022933

/-- `char[floor((A057353(n)+1)/log(2))]` -/
def P8339527989134720752.Spec : Prop :=
  ∀ n, (P8339527989134720752.a n : ℤ) = A022933 n

end A022933

/-! ## A022933.P6027182554612349794

`A265133(n+1)-A265133(A028310(n))`
-/

namespace A022933.P6027182554612349794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (n + 1) - A265133 (A028310 n).toNat

end

end A022933.P6027182554612349794

namespace A022933

/-- `A265133(n+1)-A265133(A028310(n))` -/
def P6027182554612349794.Spec : Prop :=
  ∀ n, P6027182554612349794.a n = A022933 n

end A022933

/-! ## A022933.P17072970090956299390

`A144610(A243138(n+1))`
-/

namespace A022933.P17072970090956299390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 (A243138 (n + 1)).toNat

end

end A022933.P17072970090956299390

namespace A022933

/-- `A144610(A243138(n+1))` -/
def P17072970090956299390.Spec : Prop :=
  ∀ n, P17072970090956299390.a n = A022933 n

end A022933

/-! ## A022933.P16594220343954084936

`A114986(A141107(n+2)-n)`
-/

namespace A022933.P16594220343954084936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A141107 (n + 2) - (n : ℤ)).toNat

end

end A022933.P16594220343954084936

namespace A022933

/-- `A114986(A141107(n+2)-n)` -/
def P16594220343954084936.Spec : Prop :=
  ∀ n, P16594220343954084936.a n = A022933 n

end A022933

/-! ## A022933.P6904199051754340782

`A144610(A239124(2*n+1)+A239124(n+2))`
-/

namespace A022933.P6904199051754340782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 (A239124 (2 * n + 1) + A239124 (n + 2)).toNat

end

end A022933.P6904199051754340782

namespace A022933

/-- `A144610(A239124(2*n+1)+A239124(n+2))` -/
def P6904199051754340782.Spec : Prop :=
  ∀ n, P6904199051754340782.a n = A022933 n

end A022933

/-!
# A022934: Number of 2^m between e^n and e^(n+1).

The programs for A022934, the canonical program `A022934.P5970198111378044051` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022934 has offset 0).

The definition of A022934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022934.P5970198111378044051

`Δ[floor(n/log(2))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022934

/-- `Δ[floor(n/log(2))]` -/
def P5970198111378044051.Spec : Prop :=
  ∀ n, P5970198111378044051.a n = A022934 n

theorem P5970198111378044051.correct : P5970198111378044051.Spec := by
  intro n
  simp only [A022934]

end A022934

/-! ## A022934.P8666432527272193569

`Δ[floor(n*log2(e))]!`
-/

namespace A022934.P8666432527272193569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A022934.P8666432527272193569

namespace A022934

/-- `Δ[floor(n*log2(e))]!` -/
def P8666432527272193569.Spec : Prop :=
  ∀ n, (P8666432527272193569.a n : ℤ) = A022934 n

end A022934

/-! ## A022934.P8157679736229075816

`gcd(2, Δ[floor(n*log2(e))])`
-/

namespace A022934.P8157679736229075816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A022934.P8157679736229075816

namespace A022934

/-- `gcd(2, Δ[floor(n*log2(e))])` -/
def P8157679736229075816.Spec : Prop :=
  ∀ n, (P8157679736229075816.a n : ℤ) = A022934 n

end A022934

/-! ## A022934.P8542952531379698644

`Δ[floor(n*log2(e))]%3`
-/

namespace A022934.P8542952531379698644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A022934.P8542952531379698644

namespace A022934

/-- `Δ[floor(n*log2(e))]%3` -/
def P8542952531379698644.Spec : Prop :=
  ∀ n, P8542952531379698644.a n = A022934 n

end A022934

/-! ## A022934.P18120475211325749973

`and(3, Δ[floor(n*log2(e))])`
-/

namespace A022934.P18120475211325749973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A022934.P18120475211325749973

namespace A022934

/-- `and(3, Δ[floor(n*log2(e))])` -/
def P18120475211325749973.Spec : Prop :=
  ∀ n, P18120475211325749973.a n = A022934 n

end A022934

/-! ## A022934.P17984826968573164921

`∏{d}[Δ[floor(n*log2(e))], #]`
-/

namespace A022934.P17984826968573164921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A022934.P17984826968573164921

namespace A022934

/-- `∏{d}[Δ[floor(n*log2(e))], #]` -/
def P17984826968573164921.Spec : Prop :=
  ∀ n, (P17984826968573164921.a n : ℤ) = A022934 n

end A022934

/-! ## A022934.P8174636299293432688

`∏{p}[Δ[floor(n*log2(e))], #]`
-/

namespace A022934.P8174636299293432688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A022934.P8174636299293432688

namespace A022934

/-- `∏{p}[Δ[floor(n*log2(e))], #]` -/
def P8174636299293432688.Spec : Prop :=
  ∀ n, (P8174636299293432688.a n : ℤ) = A022934 n

end A022934

/-! ## A022934.P2652140158116839586

`A000005(Δ[floor(n*log2(e))])`
-/

namespace A022934.P2652140158116839586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A022934.P2652140158116839586

namespace A022934

/-- `A000005(Δ[floor(n*log2(e))])` -/
def P2652140158116839586.Spec : Prop :=
  ∀ n, P2652140158116839586.a n = A022934 n

end A022934

/-! ## A022934.P1270229016322583044

`A000041(Δ[floor(n*log2(e))])`
-/

namespace A022934.P1270229016322583044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A022934.P1270229016322583044

namespace A022934

/-- `A000041(Δ[floor(n*log2(e))])` -/
def P1270229016322583044.Spec : Prop :=
  ∀ n, P1270229016322583044.a n = A022934 n

end A022934

/-! ## A022934.P9060493339976518394

`A006530(Δ[floor(n*log2(e))])`
-/

namespace A022934.P9060493339976518394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A022934.P9060493339976518394

namespace A022934

/-- `A006530(Δ[floor(n*log2(e))])` -/
def P9060493339976518394.Spec : Prop :=
  ∀ n, P9060493339976518394.a n = A022934 n

end A022934

/-! ## A022934.P13397735831512926956

`A014963(Δ[floor(n*log2(e))])`
-/

namespace A022934.P13397735831512926956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A022934.P13397735831512926956

namespace A022934

/-- `A014963(Δ[floor(n*log2(e))])` -/
def P13397735831512926956.Spec : Prop :=
  ∀ n, P13397735831512926956.a n = A022934 n

end A022934

/-! ## A022934.P17797829149860956957

`A000010(Δ[floor(n*log2(e))]²)`
-/

namespace A022934.P17797829149860956957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A022934.P17797829149860956957

namespace A022934

/-- `A000010(Δ[floor(n*log2(e))]²)` -/
def P17797829149860956957.Spec : Prop :=
  ∀ n, P17797829149860956957.a n = A022934 n

end A022934

/-!
# A022935: a(n) = a(n-1) + c(n-1) for n >= 2, a( ) increasing, given a(1)=3, where c( ) is complement of a( ).

The programs for A022935, there is no canonical definition to state claims against.
-/

/-! ## A022935.P16526433211685273419

`∑[A047201(n+1)%A128772(n+1)+1]+2`
-/

namespace A022935.P16526433211685273419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047201 (n + 1)) (A128772 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A022935.P16526433211685273419

/-! ## A022935.P493468412565682403

`A092460(a(n-1)+n)` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A022935.P493468412565682403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  A092460 (a (n - 1) + (n : ℤ)).toNat

end

end A022935.P493468412565682403

/-! ## A022935.P5663909554288716385

`eq[A002262(A093697(n+1)), A077606(n+1)]`
-/

namespace A022935.P5663909554288716385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A093697 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022935.P5663909554288716385

/-! ## A022935.P12747554521332987360

`∑[record[A139326(3*n+5)]-3]+4`
-/

namespace A022935.P12747554521332987360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139326 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A022935.P12747554521332987360

/-! ## A022935.P1219834460835669049

`∑[∑[A182937(A017221(n))]]-(n-2)`
-/

namespace A022935.P1219834460835669049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182937 (A017221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2)

end

end A022935.P1219834460835669049

/-!
# A022936: a(n) = a(n-1) + c(n-1) for n >= 2, a( ) increasing, given a(1)=4; where c( ) is complement of a( ).

The programs for A022936, there is no canonical definition to state claims against.
-/

/-! ## A022936.P15572292451077194037

`A232749(A022937(n+2)-A157928(n))`
-/

namespace A022936.P15572292451077194037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (A022937 (n + 2) - A157928 n).toNat

end

end A022936.P15572292451077194037

/-! ## A022936.P16670919358668436946

`A232749(A030124(A022937(n+2)-(n+2)))`
-/

namespace A022936.P16670919358668436946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (A030124 (A022937 (n + 2) - (n + 2 : ℤ)).toNat).toNat

end

end A022936.P16670919358668436946

/-!
# A022937: a(n) = a(n-1) + c(n-1) for n >= 2, a( ) increasing, given a(1)=5; where c( ) is complement of a( ).

The programs for A022937, there is no canonical definition to state claims against.
-/

/-! ## A022937.P12589679399941961767

`record[A022938(n+1)-A187829(n+1)]`
-/

namespace A022937.P12589679399941961767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022938 (n + 1) - A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022937.P12589679399941961767

/-! ## A022937.P179765247823910630

`A022938(n+2)-A022912(A022913(n+1))`
-/

namespace A022937.P179765247823910630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022938 (n + 2) - A022912 (A022913 (n + 1)).toNat

end

end A022937.P179765247823910630

/-! ## A022937.P7812670928950299851

`A030124(A232749(A022938(n+2)-(n+2)))`
-/

namespace A022937.P7812670928950299851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (A232749 (A022938 (n + 2) - (n + 2 : ℤ)).toNat).toNat

end

end A022937.P7812670928950299851

/-!
# A022938: a(n) = a(n-1) + c(n-1) for n >= 2, a( ) increasing, given a(1)=6; where c( ) is complement of a( ).

The programs for A022938, there is no canonical definition to state claims against.
-/

/-! ## A022938.P14798276124354723637

`∑[A112310(A002426(a(n-5)+6))]` with `a(0)=6, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A022938.P14798276124354723637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, 2, 3, 4, 5] fun n f1 =>
  A112310 (A002426 (f1 (n - 5) + 6).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022938.P14798276124354723637

/-! ## A022938.P10312415092630030991

`ceil(A225086(A007635(n+1))/6)+1`
-/

namespace A022938.P10312415092630030991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225086 (A007635 (n + 1)).toNat : ℚ) / 6⌉ + 1

end

end A022938.P10312415092630030991

/-! ## A022938.P1522724021380295760

`∑[A000196(A094727(3^n+1))]+5`
-/

namespace A022938.P1522724021380295760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094727 (3 ^ n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A022938.P1522724021380295760

/-! ## A022938.P1483361120771592417

`∑[A247935(n)%A094679(3*n+5)]+5`
-/

namespace A022938.P1483361120771592417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247935 n) (A094679 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A022938.P1483361120771592417

/-!
# A022939: Unique increasing sequence satisfying a(n) = a(n-2) + c(n-2); where c( ) is complement of a( ).

The programs for A022939, there is no canonical definition to state claims against.
-/

/-! ## A022939.P8811580156928211671

`A294476(n-A057427(n))+A057427(n)`
-/

namespace A022939.P8811580156928211671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A022939.P8811580156928211671

/-! ## A022939.P16433737288363866902

`A294476(A057428(n)+n)-A057428(n)`
-/

namespace A022939.P16433737288363866902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (A057428 n + (n : ℤ)).toNat - A057428 n

end

end A022939.P16433737288363866902

/-! ## A022939.P954601935162044938

`A294476(log2(A011782(n)))+A057427(n)`
-/

namespace A022939.P954601935162044938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A057427 n

end

end A022939.P954601935162044938

/-! ## A022939.P5623086477375445313

`A294476(log2(A011782(n)))-A057428(n)`
-/

namespace A022939.P5623086477375445313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A057428 n

end

end A022939.P5623086477375445313

/-! ## A022939.P16878415308495052468

`A294476(log2(A011782(n)))+A062157(n)²`
-/

namespace A022939.P16878415308495052468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A062157 n ^ 2

end

end A022939.P16878415308495052468

/-! ## A022939.P2037507651351364574

`A294476(log2(A011782(n)))+2-A054977(n)`
-/

namespace A022939.P2037507651351364574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + (2 - A054977 n)

end

end A022939.P2037507651351364574

/-! ## A022939.P6241607923279751961

`A294476(log2(A011782(n)))+A000051(n)%2`
-/

namespace A022939.P6241607923279751961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + Int.tmod (A000051 n) 2

end

end A022939.P6241607923279751961

/-! ## A022939.P13487720759810299571

`A294476(log2(A011782(n)))+A165573(n²)`
-/

namespace A022939.P13487720759810299571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A165573 (n ^ 2)

end

end A022939.P13487720759810299571

/-!
# A022940: a(n) = a(n-1) + b(n-2) for n >= 3, a( ) increasing, given a(1) = 1, a(2) = 3; where b( ) is complement of a( ).

The programs for A022940, there is no canonical definition to state claims against.
-/

/-! ## A022940.P14516829490129324194

`A022941(n+1)+char[1]`
-/

namespace A022940.P14516829490129324194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A022940.P14516829490129324194

/-! ## A022940.P1849386706568791791

`A143344(n)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A022940.P1849386706568791791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A143344 n + a (n - 1)

end

end A022940.P1849386706568791791

/-! ## A022940.P3104827215328975076

`A063524(n)+A022941(n+1)`
-/

namespace A022940.P3104827215328975076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A022941 (n + 1)

end

end A022940.P3104827215328975076

/-! ## A022940.P734986732964724336

`A257000(2*n)+A022941(n+1)`
-/

namespace A022940.P734986732964724336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * n) + A022941 (n + 1)

end

end A022940.P734986732964724336

/-! ## A022940.P14587665252304735182

`or(A010054(A000040(n+1)), A022941(n+1))`
-/

namespace A022940.P14587665252304735182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A000040 (n + 1)).toNat) (A022941 (n + 1))

end

end A022940.P14587665252304735182

/-! ## A022940.P13698633206479095317

`record[A156031(char[1]+1+n)]`
-/

namespace A022940.P13698633206479095317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022940.P13698633206479095317

/-! ## A022940.P2489373828866404441

`A156031(A092535(n+1))`
-/

namespace A022940.P2489373828866404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A092535 (n + 1)).toNat

end

end A022940.P2489373828866404441

/-! ## A022940.P15881398877306597514

`A156031(A058992(n+2))`
-/

namespace A022940.P15881398877306597514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A058992 (n + 2)).toNat

end

end A022940.P15881398877306597514

/-! ## A022940.P2536571166457946192

`record[A156031(n+2)-A003602(n+1)]+n`
-/

namespace A022940.P2536571166457946192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 2) - A003602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A022940.P2536571166457946192

/-! ## A022940.P12583478759075478153

`A156031(2*(n+1))-Δ[record[A156031(n+2)]]`
-/

namespace A022940.P12583478759075478153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A022940.P12583478759075478153

/-! ## A022940.P11501982981245123166

`A073424(A106483(n+1))+A022941(n+1)`
-/

namespace A022940.P11501982981245123166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A106483 (n + 1)).toNat + A022941 (n + 1)

end

end A022940.P11501982981245123166

/-! ## A022940.P2954037495707692043

`A178333(A022941(n+1)-1)+A022941(n+1)`
-/

namespace A022940.P2954037495707692043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A022941 (n + 1) - 1).toNat + A022941 (n + 1)

end

end A022940.P2954037495707692043

/-! ## A022940.P3659850228112683909

`A178333(∑[A245300(n)])+A022941(n+1)`
-/

namespace A022940.P3659850228112683909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A022941 (n + 1)

end

end A022940.P3659850228112683909

/-!
# A022941: a(n) = a(n-1) + c(n-2) for n >= 3, a( ) increasing, given a(1)=1, a(2)=2; where c( ) is complement of a( ).

The programs for A022941, there is no canonical definition to state claims against.
-/

/-! ## A022941.P3517646326593992744

`A022940(n+1)-char[1]`
-/

namespace A022941.P3517646326593992744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A022941.P3517646326593992744

/-! ## A022941.P2983240170865132736

`A143344(n)+a(n-1)` with `a(0)=1`
-/

namespace A022941.P2983240170865132736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143344 n + a (n - 1)

end

end A022941.P2983240170865132736

/-! ## A022941.P16693128456759866043

`A159075(n)+A022940(n+1)`
-/

namespace A022941.P16693128456759866043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A022940 (n + 1)

end

end A022941.P16693128456759866043

/-! ## A022941.P1601710303595464008

`xor(A022940(n+1), A063524(n))`
-/

namespace A022941.P1601710303595464008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022940 (n + 1)) (A063524 n)

end

end A022941.P1601710303595464008

/-! ## A022941.P2687098173583282752

`∑[A143344(n+1)]+1-A143344(n+1)`
-/

namespace A022941.P2687098173583282752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A143344 (n + 1))

end

end A022941.P2687098173583282752

/-! ## A022941.P17355307779161438006

`record[A156031(n+1)-char[2]]`
-/

namespace A022941.P17355307779161438006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022941.P17355307779161438006

/-! ## A022941.P668952542705767110

`A156031(A004277(n))`
-/

namespace A022941.P668952542705767110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A004277 n).toNat

end

end A022941.P668952542705767110

/-! ## A022941.P14357951745452698467

`A156031(A004275(n+1))`
-/

namespace A022941.P14357951745452698467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A004275 (n + 1)).toNat

end

end A022941.P14357951745452698467

/-! ## A022941.P10671240574756634218

`A156031(A004273(n)+1)`
-/

namespace A022941.P10671240574756634218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A004273 n + 1).toNat

end

end A022941.P10671240574756634218

/-! ## A022941.P7891695552437173819

`A156031(A058992(n+2)-char[1])`
-/

namespace A022941.P7891695552437173819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A058992 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A022941.P7891695552437173819

/-! ## A022941.P7153575774222783162

`A156031(record[A266664(n+1)-n])`
-/

namespace A022941.P7153575774222783162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022941.P7153575774222783162

/-! ## A022941.P18242563824251211716

`A156031(A351412(2*n+1)-n)`
-/

namespace A022941.P18242563824251211716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A351412 (2 * n + 1) - (n : ℤ)).toNat

end

end A022941.P18242563824251211716

/-! ## A022941.P8639008146327878073

`record[Δ[A156031(n+1)]]`
-/

namespace A022941.P8639008146327878073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022941.P8639008146327878073

/-! ## A022941.P10116638944409678912

`A156031(2*(n+1))-A143344(n+1)`
-/

namespace A022941.P10116638944409678912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - A143344 (n + 1)

end

end A022941.P10116638944409678912

/-! ## A022941.P6343813935979651586

`A156031(2*(n+1))-A156031(2*n+1)`
-/

namespace A022941.P6343813935979651586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - A156031 (2 * n + 1)

end

end A022941.P6343813935979651586

/-! ## A022941.P7652921068060444650

`and(A022940(n+1), A267596(n))`
-/

namespace A022941.P7652921068060444650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022940 (n + 1)) (A267596 n)

end

end A022941.P7652921068060444650

/-! ## A022941.P4170291363598915054

`and(A022940(n+1), A267888(n))`
-/

namespace A022941.P4170291363598915054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022940 (n + 1)) (A267888 n)

end

end A022941.P4170291363598915054

/-! ## A022941.P10128818259886041556

`and(A022940(n+1), A267890(n))`
-/

namespace A022941.P10128818259886041556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022940 (n + 1)) (A267890 n)

end

end A022941.P10128818259886041556

/-!
# A022942: a(n) = a(n-2) + c(n-1) for n >= 3, a( ) increasing, given a(1)=1, a(2)=2; where c( ) is complement of a( ).

The programs for A022942, there is no canonical definition to state claims against.
-/

/-! ## A022942.P4689190435946880459

`A003056(A070735(n+1)-A133806(n))`
-/

namespace A022942.P4689190435946880459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A070735 (n + 1) - A133806 n).toNat

end

end A022942.P4689190435946880459

/-! ## A022942.P17847312130446215451

`A000196(∑[A032516(C(2*(n+1), 2))])`
-/

namespace A022942.P17847312130446215451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032516 (Nat.choose (2 * (n + 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022942.P17847312130446215451

/-! ## A022942.P9898556535287255975

`∑[A054725(record[A125662(n)])]`
-/

namespace A022942.P9898556535287255975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022942.P9898556535287255975

/-! ## A022942.P17799569876018897332

`A239517(n+1)+A227308(n+1)`
-/

namespace A022942.P17799569876018897332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239517 (n + 1) + A227308 (n + 1)

end

end A022942.P17799569876018897332

/-! ## A022942.P11167485878405211467

`A227308(n+1)+A057366(A000124(n))`
-/

namespace A022942.P11167485878405211467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227308 (n + 1) + A057366 (A000124 n).toNat

end

end A022942.P11167485878405211467

/-!
# A022943: a(n) = a(n-2) + c(n-1) for n >= 3, a( ) increasing, given a(1)=2, a(2)=3, where c( ) is complement of a( ).

The programs for A022943, there is no canonical definition to state claims against.
-/

/-! ## A022943.P12371819293733910865

`A294861(n)+1`
-/

namespace A022943.P12371819293733910865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294861 n + 1

end

end A022943.P12371819293733910865

/-! ## A022943.P15547670765428825249

`A325564(2*A294861(n))`
-/

namespace A022943.P15547670765428825249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (2 * A294861 n).toNat

end

end A022943.P15547670765428825249

/-! ## A022943.P16743196164093005428

`A020725(A294861(n))`
-/

namespace A022943.P16743196164093005428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A294861 n).toNat

end

end A022943.P16743196164093005428

/-! ## A022943.P1001079491969089716

`A008619(2*A294861(n))`
-/

namespace A022943.P1001079491969089716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A294861 n).toNat

end

end A022943.P1001079491969089716

/-! ## A022943.P13147546429430352924

`A028242(2*A294861(n))`
-/

namespace A022943.P13147546429430352924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A294861 n).toNat

end

end A022943.P13147546429430352924

/-! ## A022943.P4655908683475676280

`A029579(2*A294861(n))`
-/

namespace A022943.P4655908683475676280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A294861 n).toNat

end

end A022943.P4655908683475676280

/-! ## A022943.P12379575652580022348

`A052938(2*A294861(n))`
-/

namespace A022943.P12379575652580022348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A294861 n).toNat

end

end A022943.P12379575652580022348

/-! ## A022943.P17853289877327667828

`A008611(3*A294861(n))`
-/

namespace A022943.P17853289877327667828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A294861 n).toNat

end

end A022943.P17853289877327667828

/-! ## A022943.P14585480688159436750

`A008620(3*A294861(n))`
-/

namespace A022943.P14585480688159436750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A294861 n).toNat

end

end A022943.P14585480688159436750

/-!
# A022944: a(n) = a(n-2) + c(n-1) for n >= 3, a( ) increasing, given a(1)=2, a(2)=4; where c( ) is complement of a( ).

The programs for A022944, there is no canonical definition to state claims against.
-/

/-! ## A022944.P12975002098358723195

`A294863(n+1)-comp[A294863(n)]`
-/

namespace A022944.P12975002098358723195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294863 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294863 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022944.P12975002098358723195

/-! ## A022944.P10445194659028824118

`A360924(A061259(n+1)-A176912(n+5))`
-/

namespace A022944.P10445194659028824118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A061259 (n + 1) - A176912 (n + 5)).toNat

end

end A022944.P10445194659028824118

/-! ## A022944.P14524182405870811636

`eq[(-1)^n, A109466(A261611(n))]`
-/

namespace A022944.P14524182405870811636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A261611 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022944.P14524182405870811636

/-! ## A022944.P10568425500548315888

`A355748(A010351(n+1))+A185064(n+1)`
-/

namespace A022944.P10568425500548315888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 (A010351 (n + 1)).toNat + A185064 (n + 1)

end

end A022944.P10568425500548315888

/-! ## A022944.P14996358162653012716

`A005766(n+2)-A010815(A104350(n+1))`
-/

namespace A022944.P14996358162653012716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005766 (n + 2) - A010815 (A104350 (n + 1)).toNat

end

end A022944.P14996358162653012716

/-!
# A022946: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=1 a(2)=2; where c( ) is complement of a( ).

The programs for A022946, there is no canonical definition to state claims against.
-/

/-! ## A022946.P3165567102953912758

`∑[A064736(2*(n+1))%A342516(3*n+2)+1]`
-/

namespace A022946.P3165567102953912758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064736 (2 * (n + 1))) (A342516 (3 * n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022946.P3165567102953912758

/-! ## A022946.P11890315131451309440

`∑[A108852(A227681(n)+A008836(n+2))]`
-/

namespace A022946.P11890315131451309440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A227681 n + A008836 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022946.P11890315131451309440

/-! ## A022946.P5046686471073903744

`∑[comp[A005139(A005139(n+2))]]+1`
-/

namespace A022946.P5046686471073903744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005139 (A005139 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022946.P5046686471073903744

/-! ## A022946.P4533840130692275140

`∑[A189891(n+3)%A377031(n+1)]`
-/

namespace A022946.P4533840130692275140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189891 (n + 3)) (A377031 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022946.P4533840130692275140

/-! ## A022946.P17857301101801603460

`A165240(a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A022946.P17857301101801603460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A165240 (a (n - 1) + (n : ℤ)).toNat

end

end A022946.P17857301101801603460

/-!
# A022947: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=1 a(2)=3; where c( ) is complement of a( ).

The programs for A022947, there is no canonical definition to state claims against.
-/

/-! ## A022947.P1564762409827805610

`A022951(n+1)^C(n, C(n, n²))`
-/

namespace A022947.P1564762409827805610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022951 (n + 1) ^ Nat.choose n (Nat.choose n (n ^ 2))

end

end A022947.P1564762409827805610

/-! ## A022947.P3656249415926315599

`A022951(n+1)-A000007(n)`
-/

namespace A022947.P3656249415926315599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022951 (n + 1) - A000007 n

end

end A022947.P3656249415926315599

/-! ## A022947.P8442614698908914832

`A022951(n+1)/A054977(n)`
-/

namespace A022947.P8442614698908914832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022951 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A022947.P8442614698908914832

/-! ## A022947.P5583261147514425705

`A022951(n+1)^A129982(C(2, n²))`
-/

namespace A022947.P5583261147514425705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022951 (n + 1) : ℚ) ^ (A129982 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A022947.P5583261147514425705

/-! ## A022947.P374003286141992189

`A022951(n+1)/gcd(2, A038874(n+1))`
-/

namespace A022947.P374003286141992189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022951 (n + 1) : ℚ) / (Int.gcd 2 (A038874 (n + 1)) : ℚ)

end

end A022947.P374003286141992189

/-! ## A022947.P14844695487503834679

`A022951(n+1)/A342255(C(2, n+1)+1)`
-/

namespace A022947.P14844695487503834679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022951 (n + 1) : ℚ) / (A342255 (Nat.choose 2 (n + 1) + 1) : ℚ)

end

end A022947.P14844695487503834679

/-! ## A022947.P7559673148395191001

`A022951(n+1)/A099636(floor(1/(n+1))+1)`
-/

namespace A022947.P7559673148395191001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022951 (n + 1) : ℚ) / (A099636 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat : ℚ)

end

end A022947.P7559673148395191001

/-! ## A022947.P5806698817757024275

`A181440(A022951(n+1))`
-/

namespace A022947.P5806698817757024275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A022951 (n + 1)).toNat

end

end A022947.P5806698817757024275

/-!
# A022949: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=1 a(2)=6; where c( ) is complement of a( ).

The programs for A022949, there is no canonical definition to state claims against.
-/

/-! ## A022949.P4335136705499709233

`A022952(n+1)-A000038(n)`
-/

namespace A022949.P4335136705499709233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022952 (n + 1) - A000038 n

end

end A022949.P4335136705499709233

/-! ## A022949.P14018224464954860040

`A022952(n+1)%A000176(n+1)`
-/

namespace A022949.P14018224464954860040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022952 (n + 1)) (A000176 (n + 1))

end

end A022949.P14018224464954860040

/-! ## A022949.P16889982079469068996

`and(A022952(n+1), A153881(n+1))`
-/

namespace A022949.P16889982079469068996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A153881 (n + 1))

end

end A022949.P16889982079469068996

/-! ## A022949.P16818326556545041598

`A022952(n+1)-floor(4/A000096(n+1))`
-/

namespace A022949.P16818326556545041598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022952 (n + 1) - ⌊4 / (A000096 (n + 1) : ℚ)⌋

end

end A022949.P16818326556545041598

/-! ## A022949.P13052296531095292038

`A022952(n+1)/A156724(floor(4/(n+1))+1)`
-/

namespace A022949.P13052296531095292038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022952 (n + 1) : ℚ) / (A156724 (⌊4 / (n + 1 : ℚ)⌋ + 1).toNat : ℚ)

end

end A022949.P13052296531095292038

/-! ## A022949.P7557076891849685944

`A022952(A224893(and(1, a(n-1))+1)+n+1)` with `a(0)=1`
-/

namespace A022949.P7557076891849685944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022952 (A224893 (Int.land 1 (a (n - 1)) + 1).toNat + (n : ℤ) + 1).toNat

end

end A022949.P7557076891849685944

/-! ## A022949.P8129345895444993521

`A022952(n*A053589(and(2, a(n-1))+1)+1)` with `a(0)=1`
-/

namespace A022949.P8129345895444993521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022952 ((n : ℤ) * A053589 (Int.land 2 (a (n - 1)) + 1).toNat + 1).toNat

end

end A022949.P8129345895444993521

/-! ## A022949.P14996286020869132209

`A022952(n+1)+A022953(n+1)-A005228(n+2)`
-/

namespace A022949.P14996286020869132209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022952 (n + 1) + (A022953 (n + 1) - A005228 (n + 2))

end

end A022949.P14996286020869132209

/-! ## A022949.P8824841831649828819

`A022952(n+1)+A022953(n+1)-A061577(n+2)`
-/

namespace A022949.P8824841831649828819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022952 (n + 1) + (A022953 (n + 1) - A061577 (n + 2))

end

end A022949.P8824841831649828819

/-! ## A022949.P12283875516608229052

`A022952(n+1)%A027655(n)`
-/

namespace A022949.P12283875516608229052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022952 (n + 1)) (A027655 n)

end

end A022949.P12283875516608229052

/-! ## A022949.P6340142464202697577

`and(A022952(n+1), A055580(n))`
-/

namespace A022949.P6340142464202697577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A055580 n)

end

end A022949.P6340142464202697577

/-! ## A022949.P11605722693782480555

`and(A022952(n+1), A083420(n))`
-/

namespace A022949.P11605722693782480555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A083420 n)

end

end A022949.P11605722693782480555

/-! ## A022949.P9889191384763425176

`and(A022952(n+1), A267890(n))`
-/

namespace A022949.P9889191384763425176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A267890 n)

end

end A022949.P9889191384763425176

/-! ## A022949.P7903104917006620210

`and(A022952(n+1), A140529(n))`
-/

namespace A022949.P7903104917006620210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A140529 n)

end

end A022949.P7903104917006620210

/-! ## A022949.P2246675475403634279

`and(A022952(n+1), A206372(n))`
-/

namespace A022949.P2246675475403634279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022952 (n + 1)) (A206372 n)

end

end A022949.P2246675475403634279

/-! ## A022949.P5701381388683346911

`A028253(A022952(n+1))`
-/

namespace A022949.P5701381388683346911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A022952 (n + 1)).toNat

end

end A022949.P5701381388683346911

/-!
# A022950: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=1 a(2)=7; where c( ) is complement of a( ).

The programs for A022950, there is no canonical definition to state claims against.
-/

/-! ## A022950.P1467921460926244259

`record[gcd(A245099(n+1), A287770(n+5))]`
-/

namespace A022950.P1467921460926244259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A245099 (n + 1)) (A287770 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022950.P1467921460926244259

/-! ## A022950.P8514962117246009509

`A168587(n²+4)+A001840(2*n+1)`
-/

namespace A022950.P8514962117246009509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168587 (n ^ 2 + 4) + A001840 (2 * n + 1)

end

end A022950.P8514962117246009509

/-! ## A022950.P9952026768484619291

`A085736(A022954(n+1)-n)`
-/

namespace A022950.P9952026768484619291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A022954 (n + 1) - (n : ℤ)).toNat

end

end A022950.P9952026768484619291

/-! ## A022950.P12165450837062488757

`filter[A330500(2*(n+1)), A103842(#)]`
-/

namespace A022950.P12165450837062488757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330500 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A022950.P12165450837062488757

/-! ## A022950.P16954643840423225892

`∑[A293630(A298590(n+1))*A298606(n+1)]`
-/

namespace A022950.P16954643840423225892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (A298590 (n + 1)).toNat * A298606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022950.P16954643840423225892

/-!
# A022951: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=2, a(2)=3; where c( ) is complement of a( ).

The programs for A022951, there is no canonical definition to state claims against.
-/

/-! ## A022951.P17669017419485985753

`A022947(n+1)+A000007(n)`
-/

namespace A022951.P17669017419485985753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + A000007 n

end

end A022951.P17669017419485985753

/-! ## A022951.P14746184178102719446

`A022947(n+1)*A054977(n)`
-/

namespace A022951.P14746184178102719446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) * A054977 n

end

end A022951.P14746184178102719446

/-! ## A022951.P10888196270548746464

`A022947(n+1)+A008574(n)%2`
-/

namespace A022951.P10888196270548746464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + Int.tmod (A008574 n) 2

end

end A022951.P10888196270548746464

/-! ## A022951.P9501031280825393595

`A022947(n+1)+A061393(n)%2`
-/

namespace A022951.P9501031280825393595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + Int.tmod (A061393 n) 2

end

end A022951.P9501031280825393595

/-! ## A022951.P2072453060659752091

`A133943(2*n+1)+A022947(n+1)`
-/

namespace A022951.P2072453060659752091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (2 * n + 1) + A022947 (n + 1)

end

end A022951.P2072453060659752091

/-! ## A022951.P5926075193416983392

`A022947(n+1)+A007814(A000010(n+2)+1)`
-/

namespace A022951.P5926075193416983392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + A007814 (A000010 (n + 2) + 1).toNat

end

end A022951.P5926075193416983392

/-! ## A022951.P2365342760147318520

`A022947(n+1)+A061577(n+1)-A005228(n+1)`
-/

namespace A022951.P2365342760147318520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + (A061577 (n + 1) - A005228 (n + 1))

end

end A022951.P2365342760147318520

/-! ## A022951.P3736083076077418746

`A022947(n+1)+A030124(n+1)-A061578(n+1)`
-/

namespace A022951.P3736083076077418746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + (A030124 (n + 1) - A061578 (n + 1))

end

end A022951.P3736083076077418746

/-! ## A022951.P6683551610961065229

`A022947(n+1)+C(A007732(n+1), A022947(n+1))`
-/

namespace A022951.P6683551610961065229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + (Nat.choose (A007732 (n + 1)).toNat (A022947 (n + 1)).toNat : ℤ)

end

end A022951.P6683551610961065229

/-! ## A022951.P14286037014187929813

`A022947(n+1)+C(A059964(n+1), A022947(n+1))`
-/

namespace A022951.P14286037014187929813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + (Nat.choose (A059964 (n + 1)).toNat (A022947 (n + 1)).toNat : ℤ)

end

end A022951.P14286037014187929813

/-! ## A022951.P16835270577657434959

`A022947(n+1)+A022940(n+2)-A022941(n+2)`
-/

namespace A022951.P16835270577657434959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022947 (n + 1) + (A022940 (n + 2) - A022941 (n + 2))

end

end A022951.P16835270577657434959

/-! ## A022951.P13408085042463735025

`A205006(A022947(n+1))`
-/

namespace A022951.P13408085042463735025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (A022947 (n + 1)).toNat

end

end A022951.P13408085042463735025

/-! ## A022951.P16223209311844472196

`A181440(A022947(n+1)+n)-n`
-/

namespace A022951.P16223209311844472196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A022947 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A022951.P16223209311844472196

/-!
# A022952: a(n) = a(n-1) + c(n) for n >= 3, a( ) increasing, given a(1)=3 a(2)=6; where c( ) is complement of a( ).

The programs for A022952, there is no canonical definition to state claims against.
-/

/-! ## A022952.P11103176801454785356

`A022949(n+1)+A000038(n)`
-/

namespace A022952.P11103176801454785356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022949 (n + 1) + A000038 n

end

end A022952.P11103176801454785356

/-! ## A022952.P13375736054382923098

`lcm(A022949(n+1), A261143(n))`
-/

namespace A022952.P13375736054382923098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022949 (n + 1)) (A261143 n)

end

end A022952.P13375736054382923098

/-! ## A022952.P16135353339172762448

`floor(A022949(n+1)+2/A000330(n+1))`
-/

namespace A022952.P16135353339172762448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022949 (n + 1) : ℚ) + 2 / (A000330 (n + 1) : ℚ)⌋

end

end A022952.P16135353339172762448

/-! ## A022952.P5117021490980615195

`floor(A022949(n+1)+2/A145444(n+1))`
-/

namespace A022952.P5117021490980615195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022949 (n + 1) : ℚ) + 2 / (A145444 (n + 1) : ℚ)⌋

end

end A022952.P5117021490980615195

/-! ## A022952.P15187446949278354336

`A053186(floor(3/(n+1)))+A022949(n+1)`
-/

namespace A022952.P15187446949278354336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ⌊3 / (n + 1 : ℚ)⌋.toNat + A022949 (n + 1)

end

end A022952.P15187446949278354336

/-! ## A022952.P1370195672545660158

`A022949(n+1)*A261143(n*A261143(n))`
-/

namespace A022952.P1370195672545660158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022949 (n + 1) * A261143 ((n : ℤ) * A261143 n).toNat

end

end A022952.P1370195672545660158

/-! ## A022952.P5337321900058349522

`A022949(n+1)*A261143(3*n)`
-/

namespace A022952.P5337321900058349522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022949 (n + 1) * A261143 (3 * n)

end

end A022952.P5337321900058349522

/-! ## A022952.P7224444491685313601

`A022949(n+1)-A120086(A000005((n+1)²))`
-/

namespace A022952.P7224444491685313601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022949 (n + 1) - A120086 (A000005 ((n + 1) ^ 2)).toNat

end

end A022952.P7224444491685313601

/-!
# A022953: a(n) = a(n-1) + c(n+1) for n >= 3, a( ) increasing, given a(1)=1, a(2)=7; where c( ) is complement of a( ).

The programs for A022953, there is no canonical definition to state claims against.
-/

/-! ## A022953.P10124530710011843297

`A005228((n+1)%(2*n+1)+1)`
-/

namespace A022953.P10124530710011843297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 ((n + 1) % (2 * n + 1) + 1)

end

end A022953.P10124530710011843297

/-! ## A022953.P12171516579650984370

`A005228(C(n+1, C(2, C(2, n)))+1)`
-/

namespace A022953.P12171516579650984370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (Nat.choose (n + 1) (Nat.choose 2 (Nat.choose 2 n)) + 1)

end

end A022953.P12171516579650984370

/-! ## A022953.P3787795460064838133

`A005228(n+2)-abs(1-n)+n-1`
-/

namespace A022953.P3787795460064838133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - |1 - (n : ℤ)| + ((n : ℤ) - 1)

end

end A022953.P3787795460064838133

/-! ## A022953.P5652313036695887654

`A005228(A065475(n+1))`
-/

namespace A022953.P5652313036695887654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A065475 (n + 1)).toNat

end

end A022953.P5652313036695887654

/-! ## A022953.P8371954398709817107

`A005228(A057427(n)+1+n)`
-/

namespace A022953.P8371954398709817107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A057427 n + 1 + (n : ℤ)).toNat

end

end A022953.P8371954398709817107

/-! ## A022953.P18237511280877742078

`A005228(1-A057428(n)+n)`
-/

namespace A022953.P18237511280877742078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (1 - A057428 n + (n : ℤ)).toNat

end

end A022953.P18237511280877742078

/-! ## A022953.P13792421586246931991

`A005228(2-A000007(n)+n)`
-/

namespace A022953.P13792421586246931991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (2 - A000007 n + (n : ℤ)).toNat

end

end A022953.P13792421586246931991

/-! ## A022953.P13938991835148623370

`A005228(1-(A057428(n)-n))`
-/

namespace A022953.P13938991835148623370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (1 - (A057428 n - (n : ℤ))).toNat

end

end A022953.P13938991835148623370

/-! ## A022953.P7130989910283087712

`A005228(2-(A000007(n)-n))`
-/

namespace A022953.P7130989910283087712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (2 - (A000007 n - (n : ℤ))).toNat

end

end A022953.P7130989910283087712

/-! ## A022953.P17439172978510452846

`A005228(3-A054977(n)+n)`
-/

namespace A022953.P17439172978510452846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (3 - A054977 n + (n : ℤ)).toNat

end

end A022953.P17439172978510452846

/-! ## A022953.P2218572580990191625

`A005228(2/A054977(n)+n)`
-/

namespace A022953.P2218572580990191625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (SequenceMachineLib.roundAway (2 / (A054977 n : ℚ) + (n : ℚ))).toNat

end

end A022953.P2218572580990191625

/-! ## A022953.P1697073921044289033

`A114637(n+1)+A056738(n+1)`
-/

namespace A022953.P1697073921044289033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A056738 (n + 1)

end

end A022953.P1697073921044289033

/-! ## A022953.P16247619507445348817

`A005228(and(1, A000040(n+1))+n+1)`
-/

namespace A022953.P16247619507445348817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (Int.land 1 (A000040 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A022953.P16247619507445348817

/-! ## A022953.P1636516062725142419

`C(A005228(n+2), A328672(∑{e}[n+1, #]))`
-/

namespace A022953.P1636516062725142419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005228 (n + 2)).toNat (A328672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A022953.P1636516062725142419

/-! ## A022953.P1050857175348743004

`A022949(n+1)+A005228(n+2)-A022952(n+1)`
-/

namespace A022953.P1050857175348743004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022949 (n + 1) + (A005228 (n + 2) - A022952 (n + 1))

end

end A022953.P1050857175348743004

/-! ## A022953.P14969571122652442400

`A005228(A181440(n+2))`
-/

namespace A022953.P14969571122652442400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A181440 (n + 2)).toNat

end

end A022953.P14969571122652442400

/-! ## A022953.P2909996207695058783

`A005228(A184985(n+2))`
-/

namespace A022953.P2909996207695058783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A184985 (n + 2)).toNat

end

end A022953.P2909996207695058783

/-! ## A022953.P14129469925376055956

`A061577(n+2)-2*A000007(n)`
-/

namespace A022953.P14129469925376055956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 2) - 2 * A000007 n

end

end A022953.P14129469925376055956

/-!
# A022954: a(n) = a(n-1) + c(n+1) for n >= 3, a( ) increasing, given a(1)=1, a(2)=8; where c( ) is complement of a( ).

The programs for A022954, there is no canonical definition to state claims against.
-/

/-! ## A022954.P6845066611246321432

`A005228(n+1)+(n+4)%A119535(n+1)`
-/

namespace A022954.P6845066611246321432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + Int.tmod (n + 4 : ℤ) (A119535 (n + 1))

end

end A022954.P6845066611246321432

/-! ## A022954.P5762789024743154861

`eq[A025671(n+1), A120336(n+1)]`
-/

namespace A022954.P5762789024743154861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022954.P5762789024743154861

/-! ## A022954.P18047870085404018667

`A182659(A056000(n+1)-A176995(n+1))`
-/

namespace A022954.P18047870085404018667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182659 (A056000 (n + 1) - A176995 (n + 1)).toNat

end

end A022954.P18047870085404018667

/-!
# A022955: Unique increasing sequence satisfying a(n) = a(n-3) + c(n-3); where c( ) is complement of a( ).

The programs for A022955, there is no canonical definition to state claims against.
-/

/-! ## A022955.P5194967040965424168

`A117910(n)+record[A338796(n+1)]`
-/

namespace A022955.P5194967040965424168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022955.P5194967040965424168

/-! ## A022955.P9894540421823528719

`A344646(A000217(n))+A117910(n)`
-/

namespace A022955.P9894540421823528719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A000217 n).toNat + A117910 n

end

end A022955.P9894540421823528719

/-! ## A022955.P1345809225492070257

`A338796(A000217(n+1))+A117910(n)`
-/

namespace A022955.P1345809225492070257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (A000217 (n + 1)).toNat + A117910 n

end

end A022955.P1345809225492070257

/-! ## A022955.P2786900574293612777

`A117910(n)+record[A238158(n+1)]`
-/

namespace A022955.P2786900574293612777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022955.P2786900574293612777

/-! ## A022955.P8864160182302621916

`A056827(2*(n+2))-A089869(A056838(2*(n+2)))`
-/

namespace A022955.P8864160182302621916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (2 * (n + 2)) - A089869 (A056838 (2 * (n + 2))).toNat

end

end A022955.P8864160182302621916

/-!
# A022956: Unique increasing sequence satisfying a(n) = a(n-4) + c(n-4); where c( ) is complement of a( ).

The programs for A022956, there is no canonical definition to state claims against.
-/

/-! ## A022956.P16891977983699609834

`A394994(A001972(n))`
-/

namespace A022956.P16891977983699609834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394994 (A001972 n).toNat

end

end A022956.P16891977983699609834

/-! ## A022956.P8666302816899861306

`A394994(A328325(n))`
-/

namespace A022956.P8666302816899861306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394994 (A328325 n).toNat

end

end A022956.P8666302816899861306

/-! ## A022956.P15796850322166402944

`round(log2(A153903(Δ[n²])))`
-/

namespace A022956.P15796850322166402944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A153903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ))

end

end A022956.P15796850322166402944

/-! ## A022956.P12161428959080723212

`A012265(floor(∑[ϕ*(n+1)]))`
-/

namespace A022956.P12161428959080723212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A022956.P12161428959080723212

/-! ## A022956.P9491968901568108197

`A060144(∑[A187829(n+1)])+1`
-/

namespace A022956.P9491968901568108197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A022956.P9491968901568108197

/-!
# A022957: Unique increasing sequence satisfying a(n) = a(n-5) + c(n-5); where c( ) is complement of a( ).

The programs for A022957, there is no canonical definition to state claims against.
-/

/-! ## A022957.P3126488219653663375

`A291693(n)-A030190(A357290(n))`
-/

namespace A022957.P3126488219653663375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291693 n - A030190 (A357290 n).toNat

end

end A022957.P3126488219653663375

/-! ## A022957.P11908441451197772204

`∑[A214973(A214973(n+1)+A084184(n))]`
-/

namespace A022957.P11908441451197772204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A214973 (n + 1) + A084184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022957.P11908441451197772204

/-!
# A022958: a(n) = 2 - n.

The programs for A022958, the canonical program `A022958.P1044776346471009207` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022958 has offset 0).

The definition of A022958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-n` (program `A022958.P1044776346471009207`, by `A022958.P1044776346471009207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022958.P1044776346471009207

`2-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022958

/-- `2-n` -/
def P1044776346471009207.Spec : Prop :=
  ∀ n, P1044776346471009207.a n = A022958 n

theorem P1044776346471009207.correct : P1044776346471009207.Spec := by
  intro n
  simp only [A022958]

end A022958

/-!
# A022959: a(n) = 3-n.

The programs for A022959, the canonical program `A022959.P11065877920924967018` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022959 has offset 0).

The definition of A022959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3-n` (program `A022959.P11065877920924967018`, by `A022959.P11065877920924967018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022959.P11065877920924967018

`3-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022959

/-- `3-n` -/
def P11065877920924967018.Spec : Prop :=
  ∀ n, P11065877920924967018.a n = A022959 n

theorem P11065877920924967018.correct : P11065877920924967018.Spec := by
  intro n
  simp only [A022959]

end A022959

/-!
# A022960: a(n) = 4-n.

The programs for A022960, the canonical program `A022960.P7847487172736351835` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022960 has offset 0).

The definition of A022960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4-n` (program `A022960.P7847487172736351835`, by `A022960.P7847487172736351835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022960.P7847487172736351835

`4-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022960

/-- `4-n` -/
def P7847487172736351835.Spec : Prop :=
  ∀ n, P7847487172736351835.a n = A022960 n

theorem P7847487172736351835.correct : P7847487172736351835.Spec := by
  intro n
  simp only [A022960]

end A022960

/-!
# A022961: a(n) = 5-n.

The programs for A022961, the canonical program `A022961.P17065016578754778583` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022961 has offset 0).

The definition of A022961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5-n` (program `A022961.P17065016578754778583`, by `A022961.P17065016578754778583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022961.P17065016578754778583

`5-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022961

/-- `5-n` -/
def P17065016578754778583.Spec : Prop :=
  ∀ n, P17065016578754778583.a n = A022961 n

theorem P17065016578754778583.correct : P17065016578754778583.Spec := by
  intro n
  simp only [A022961]

end A022961

/-!
# A022962: a(n) = 6-n.

The programs for A022962, the canonical program `A022962.P4172630476285874916` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022962 has offset 0).

The definition of A022962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6-n` (program `A022962.P4172630476285874916`, by `A022962.P4172630476285874916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022962.P4172630476285874916

`6-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022962

/-- `6-n` -/
def P4172630476285874916.Spec : Prop :=
  ∀ n, P4172630476285874916.a n = A022962 n

theorem P4172630476285874916.correct : P4172630476285874916.Spec := by
  intro n
  simp only [A022962]

end A022962

/-!
# A022963: a(n) = 7-n.

The programs for A022963, the canonical program `A022963.P13387572160202953513` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022963 has offset 0).

The definition of A022963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7-n` (program `A022963.P13387572160202953513`, by `A022963.P13387572160202953513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022963.P13387572160202953513

`7-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022963

/-- `7-n` -/
def P13387572160202953513.Spec : Prop :=
  ∀ n, P13387572160202953513.a n = A022963 n

theorem P13387572160202953513.correct : P13387572160202953513.Spec := by
  intro n
  simp only [A022963]

end A022963

/-!
# A022964: a(n) = 8-n.

The programs for A022964, the canonical program `A022964.P10926556689608304372` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022964 has offset 0).

The definition of A022964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8-n` (program `A022964.P10926556689608304372`, by `A022964.P10926556689608304372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022964.P10926556689608304372

`8-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022964

/-- `8-n` -/
def P10926556689608304372.Spec : Prop :=
  ∀ n, P10926556689608304372.a n = A022964 n

theorem P10926556689608304372.correct : P10926556689608304372.Spec := by
  intro n
  simp only [A022964]

end A022964

/-!
# A022965: a(n) = 9-n.

The programs for A022965, the canonical program `A022965.P10341752570683700963` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022965 has offset 0).

The definition of A022965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9-n` (program `A022965.P10341752570683700963`, by `A022965.P10341752570683700963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022965.P10341752570683700963

`9-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022965

/-- `9-n` -/
def P10341752570683700963.Spec : Prop :=
  ∀ n, P10341752570683700963.a n = A022965 n

theorem P10341752570683700963.correct : P10341752570683700963.Spec := by
  intro n
  simp only [A022965]

end A022965

/-!
# A022966: a(n) = 10-n.

The programs for A022966, the canonical program `A022966.P4427188668348917034` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022966 has offset 0).

The definition of A022966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10-n` (program `A022966.P4427188668348917034`, by `A022966.P4427188668348917034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022966.P4427188668348917034

`10-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022966

/-- `10-n` -/
def P4427188668348917034.Spec : Prop :=
  ∀ n, P4427188668348917034.a n = A022966 n

theorem P4427188668348917034.correct : P4427188668348917034.Spec := by
  intro n
  simp only [A022966]

end A022966

/-!
# A022967: a(n) = 11-n.

The programs for A022967, the canonical program `A022967.P103826889751989676` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022967 has offset 0).

The definition of A022967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11-n` (program `A022967.P103826889751989676`, by `A022967.P103826889751989676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022967.P103826889751989676

`11-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022967

/-- `11-n` -/
def P103826889751989676.Spec : Prop :=
  ∀ n, P103826889751989676.a n = A022967 n

theorem P103826889751989676.correct : P103826889751989676.Spec := by
  intro n
  simp only [A022967]

end A022967

/-!
# A022968: a(n) = 12-n.

The programs for A022968, the canonical program `A022968.P12481636955399392468` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022968 has offset 0).

The definition of A022968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12-n` (program `A022968.P12481636955399392468`, by `A022968.P12481636955399392468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022968.P12481636955399392468

`12-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022968

/-- `12-n` -/
def P12481636955399392468.Spec : Prop :=
  ∀ n, P12481636955399392468.a n = A022968 n

theorem P12481636955399392468.correct : P12481636955399392468.Spec := by
  intro n
  simp only [A022968]

end A022968

/-!
# A022969: a(n) = 13-n.

The programs for A022969, the canonical program `A022969.P11976671692879548942` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022969 has offset 0).

The definition of A022969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13-n` (program `A022969.P11976671692879548942`, by `A022969.P11976671692879548942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022969.P11976671692879548942

`13-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022969

/-- `13-n` -/
def P11976671692879548942.Spec : Prop :=
  ∀ n, P11976671692879548942.a n = A022969 n

theorem P11976671692879548942.correct : P11976671692879548942.Spec := by
  intro n
  simp only [A022969]

end A022969

/-!
# A022970: a(n) = 14-n.

The programs for A022970, the canonical program `A022970.P14686319457213141712` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022970 has offset 0).

The definition of A022970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14-n` (program `A022970.P14686319457213141712`, by `A022970.P14686319457213141712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022970.P14686319457213141712

`14-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022970

/-- `14-n` -/
def P14686319457213141712.Spec : Prop :=
  ∀ n, P14686319457213141712.a n = A022970 n

theorem P14686319457213141712.correct : P14686319457213141712.Spec := by
  intro n
  simp only [A022970]

end A022970

/-!
# A022971: a(n) = 15-n.

The programs for A022971, the canonical program `A022971.P312173633140377465` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022971 has offset 0).

The definition of A022971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15-n` (program `A022971.P312173633140377465`, by `A022971.P312173633140377465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022971.P312173633140377465

`15-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022971

/-- `15-n` -/
def P312173633140377465.Spec : Prop :=
  ∀ n, P312173633140377465.a n = A022971 n

theorem P312173633140377465.correct : P312173633140377465.Spec := by
  intro n
  simp only [A022971]

end A022971

/-!
# A022972: a(n) = 16-n.

The programs for A022972, the canonical program `A022972.P17304298854066651627` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022972 has offset 0).

The definition of A022972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16-n` (program `A022972.P17304298854066651627`, by `A022972.P17304298854066651627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022972.P17304298854066651627

`16-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022972

/-- `16-n` -/
def P17304298854066651627.Spec : Prop :=
  ∀ n, P17304298854066651627.a n = A022972 n

theorem P17304298854066651627.correct : P17304298854066651627.Spec := by
  intro n
  simp only [A022972]

end A022972

/-!
# A022973: a(n) = 17-n.

The programs for A022973, the canonical program `A022973.P177688902324720155` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022973 has offset 0).

The definition of A022973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17-n` (program `A022973.P177688902324720155`, by `A022973.P177688902324720155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022973.P177688902324720155

`17-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022973

/-- `17-n` -/
def P177688902324720155.Spec : Prop :=
  ∀ n, P177688902324720155.a n = A022973 n

theorem P177688902324720155.correct : P177688902324720155.Spec := by
  intro n
  simp only [A022973]

end A022973

/-!
# A022974: a(n) = 18-n.

The programs for A022974, the canonical program `A022974.P14645839109965910227` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022974 has offset 0).

The definition of A022974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18-n` (program `A022974.P14645839109965910227`, by `A022974.P14645839109965910227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022974.P14645839109965910227

`18-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022974

/-- `18-n` -/
def P14645839109965910227.Spec : Prop :=
  ∀ n, P14645839109965910227.a n = A022974 n

theorem P14645839109965910227.correct : P14645839109965910227.Spec := by
  intro n
  simp only [A022974]

end A022974

/-!
# A022975: a(n) = 19 - n.

The programs for A022975, the canonical program `A022975.P12161615463166693099` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022975 has offset 0).

The definition of A022975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19-n` (program `A022975.P12161615463166693099`, by `A022975.P12161615463166693099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022975.P12161615463166693099

`19-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022975

/-- `19-n` -/
def P12161615463166693099.Spec : Prop :=
  ∀ n, P12161615463166693099.a n = A022975 n

theorem P12161615463166693099.correct : P12161615463166693099.Spec := by
  intro n
  simp only [A022975]

end A022975

/-!
# A022976: a(n) = 20-n.

The programs for A022976, the canonical program `A022976.P2620393510104819087` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022976 has offset 0).

The definition of A022976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20-n` (program `A022976.P2620393510104819087`, by `A022976.P2620393510104819087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022976.P2620393510104819087

`20-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022976

/-- `20-n` -/
def P2620393510104819087.Spec : Prop :=
  ∀ n, P2620393510104819087.a n = A022976 n

theorem P2620393510104819087.correct : P2620393510104819087.Spec := by
  intro n
  simp only [A022976]

end A022976

/-!
# A022977: a(n) = 21-n.

The programs for A022977, the canonical program `A022977.P2585556289305778050` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022977 has offset 0).

The definition of A022977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21-n` (program `A022977.P2585556289305778050`, by `A022977.P2585556289305778050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022977.P2585556289305778050

`21-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022977

/-- `21-n` -/
def P2585556289305778050.Spec : Prop :=
  ∀ n, P2585556289305778050.a n = A022977 n

theorem P2585556289305778050.correct : P2585556289305778050.Spec := by
  intro n
  simp only [A022977]

end A022977

/-!
# A022978: a(n) = 22-n.

The programs for A022978, the canonical program `A022978.P7798956966995509176` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022978 has offset 0).

The definition of A022978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22-n` (program `A022978.P7798956966995509176`, by `A022978.P7798956966995509176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022978.P7798956966995509176

`22-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022978

/-- `22-n` -/
def P7798956966995509176.Spec : Prop :=
  ∀ n, P7798956966995509176.a n = A022978 n

theorem P7798956966995509176.correct : P7798956966995509176.Spec := by
  intro n
  simp only [A022978]

end A022978

/-!
# A022979: a(n) = 23-n.

The programs for A022979, the canonical program `A022979.P15520270600372878675` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022979 has offset 0).

The definition of A022979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23-n` (program `A022979.P15520270600372878675`, by `A022979.P15520270600372878675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022979.P15520270600372878675

`23-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022979

/-- `23-n` -/
def P15520270600372878675.Spec : Prop :=
  ∀ n, P15520270600372878675.a n = A022979 n

theorem P15520270600372878675.correct : P15520270600372878675.Spec := by
  intro n
  simp only [A022979]

end A022979

/-!
# A022980: a(n) = 24-n.

The programs for A022980, the canonical program `A022980.P15382154699226623714` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022980 has offset 0).

The definition of A022980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24-n` (program `A022980.P15382154699226623714`, by `A022980.P15382154699226623714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022980.P15382154699226623714

`24-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022980

/-- `24-n` -/
def P15382154699226623714.Spec : Prop :=
  ∀ n, P15382154699226623714.a n = A022980 n

theorem P15382154699226623714.correct : P15382154699226623714.Spec := by
  intro n
  simp only [A022980]

end A022980

/-!
# A022981: a(n) = 25-n.

The programs for A022981, the canonical program `A022981.P17733187533992011680` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022981 has offset 0).

The definition of A022981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25-n` (program `A022981.P17733187533992011680`, by `A022981.P17733187533992011680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022981.P17733187533992011680

`25-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022981

/-- `25-n` -/
def P17733187533992011680.Spec : Prop :=
  ∀ n, P17733187533992011680.a n = A022981 n

theorem P17733187533992011680.correct : P17733187533992011680.Spec := by
  intro n
  simp only [A022981]

end A022981

/-!
# A022982: a(n) = 26-n.

The programs for A022982, the canonical program `A022982.P1531564633473124981` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022982 has offset 0).

The definition of A022982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26-n` (program `A022982.P1531564633473124981`, by `A022982.P1531564633473124981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022982.P1531564633473124981

`26-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022982

/-- `26-n` -/
def P1531564633473124981.Spec : Prop :=
  ∀ n, P1531564633473124981.a n = A022982 n

theorem P1531564633473124981.correct : P1531564633473124981.Spec := by
  intro n
  simp only [A022982]

end A022982

/-!
# A022983: a(n) = 27 - n.

The programs for A022983, the canonical program `A022983.P15058296267657843813` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022983 has offset 0).

The definition of A022983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27-n` (program `A022983.P15058296267657843813`, by `A022983.P15058296267657843813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022983.P15058296267657843813

`27-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022983

/-- `27-n` -/
def P15058296267657843813.Spec : Prop :=
  ∀ n, P15058296267657843813.a n = A022983 n

theorem P15058296267657843813.correct : P15058296267657843813.Spec := by
  intro n
  simp only [A022983]

end A022983

/-!
# A022984: a(n) = 28-n.

The programs for A022984, the canonical program `A022984.P17646649472400696378` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022984 has offset 0).

The definition of A022984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28-n` (program `A022984.P17646649472400696378`, by `A022984.P17646649472400696378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022984.P17646649472400696378

`28-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022984

/-- `28-n` -/
def P17646649472400696378.Spec : Prop :=
  ∀ n, P17646649472400696378.a n = A022984 n

theorem P17646649472400696378.correct : P17646649472400696378.Spec := by
  intro n
  simp only [A022984]

end A022984

/-!
# A022985: a(n) = 29 - n.

The programs for A022985, the canonical program `A022985.P609474672756334250` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022985 has offset 0).

The definition of A022985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29-n` (program `A022985.P609474672756334250`, by `A022985.P609474672756334250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022985.P609474672756334250

`29-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022985

/-- `29-n` -/
def P609474672756334250.Spec : Prop :=
  ∀ n, P609474672756334250.a n = A022985 n

theorem P609474672756334250.correct : P609474672756334250.Spec := by
  intro n
  simp only [A022985]

end A022985

/-!
# A022986: a(n) = 30 - n.

The programs for A022986, the canonical program `A022986.P8007786646049885011` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022986 has offset 0).

The definition of A022986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30-n` (program `A022986.P8007786646049885011`, by `A022986.P8007786646049885011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022986.P8007786646049885011

`30-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022986

/-- `30-n` -/
def P8007786646049885011.Spec : Prop :=
  ∀ n, P8007786646049885011.a n = A022986 n

theorem P8007786646049885011.correct : P8007786646049885011.Spec := by
  intro n
  simp only [A022986]

end A022986

/-!
# A022987: a(n) = 31 - n.

The programs for A022987, the canonical program `A022987.P1163793926473358850` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022987 has offset 0).

The definition of A022987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31-n` (program `A022987.P1163793926473358850`, by `A022987.P1163793926473358850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022987.P1163793926473358850

`31-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022987

/-- `31-n` -/
def P1163793926473358850.Spec : Prop :=
  ∀ n, P1163793926473358850.a n = A022987 n

theorem P1163793926473358850.correct : P1163793926473358850.Spec := by
  intro n
  simp only [A022987]

end A022987

/-!
# A022988: a(n) = 32 - n.

The programs for A022988, the canonical program `A022988.P17335558389887086909` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022988 has offset 0).

The definition of A022988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32-n` (program `A022988.P17335558389887086909`, by `A022988.P17335558389887086909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022988.P17335558389887086909

`32-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022988

/-- `32-n` -/
def P17335558389887086909.Spec : Prop :=
  ∀ n, P17335558389887086909.a n = A022988 n

theorem P17335558389887086909.correct : P17335558389887086909.Spec := by
  intro n
  simp only [A022988]

end A022988

/-!
# A022989: a(n) = 33-n.

The programs for A022989, the canonical program `A022989.P12512196170675786554` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022989 has offset 0).

The definition of A022989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `33-n` (program `A022989.P12512196170675786554`, by `A022989.P12512196170675786554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022989.P12512196170675786554

`33-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022989

/-- `33-n` -/
def P12512196170675786554.Spec : Prop :=
  ∀ n, P12512196170675786554.a n = A022989 n

theorem P12512196170675786554.correct : P12512196170675786554.Spec := by
  intro n
  simp only [A022989]

end A022989

/-!
# A022990: a(n) = 34-n.

The programs for A022990, the canonical program `A022990.P17459458215123580339` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022990 has offset 0).

The definition of A022990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34-n` (program `A022990.P17459458215123580339`, by `A022990.P17459458215123580339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022990.P17459458215123580339

`34-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022990

/-- `34-n` -/
def P17459458215123580339.Spec : Prop :=
  ∀ n, P17459458215123580339.a n = A022990 n

theorem P17459458215123580339.correct : P17459458215123580339.Spec := by
  intro n
  simp only [A022990]

end A022990

/-!
# A022991: a(n) = 35-n.

The programs for A022991, the canonical program `A022991.P11863100576752474424` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022991 has offset 0).

The definition of A022991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35-n` (program `A022991.P11863100576752474424`, by `A022991.P11863100576752474424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022991.P11863100576752474424

`35-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022991

/-- `35-n` -/
def P11863100576752474424.Spec : Prop :=
  ∀ n, P11863100576752474424.a n = A022991 n

theorem P11863100576752474424.correct : P11863100576752474424.Spec := by
  intro n
  simp only [A022991]

end A022991

/-!
# A022992: a(n) = 36-n.

The programs for A022992, the canonical program `A022992.P15571307519045723919` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022992 has offset 0).

The definition of A022992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36-n` (program `A022992.P15571307519045723919`, by `A022992.P15571307519045723919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022992.P15571307519045723919

`36-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022992

/-- `36-n` -/
def P15571307519045723919.Spec : Prop :=
  ∀ n, P15571307519045723919.a n = A022992 n

theorem P15571307519045723919.correct : P15571307519045723919.Spec := by
  intro n
  simp only [A022992]

end A022992

/-!
# A022993: a(n) = 37 - n.

The programs for A022993, the canonical program `A022993.P158035326040483607` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022993 has offset 0).

The definition of A022993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `37-n` (program `A022993.P158035326040483607`, by `A022993.P158035326040483607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022993.P158035326040483607

`37-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022993

/-- `37-n` -/
def P158035326040483607.Spec : Prop :=
  ∀ n, P158035326040483607.a n = A022993 n

theorem P158035326040483607.correct : P158035326040483607.Spec := by
  intro n
  simp only [A022993]

end A022993

/-!
# A022994: a(n) = 38 - n.

The programs for A022994, the canonical program `A022994.P3454668366728232382` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022994 has offset 0).

The definition of A022994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38-n` (program `A022994.P3454668366728232382`, by `A022994.P3454668366728232382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022994.P3454668366728232382

`38-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022994

/-- `38-n` -/
def P3454668366728232382.Spec : Prop :=
  ∀ n, P3454668366728232382.a n = A022994 n

theorem P3454668366728232382.correct : P3454668366728232382.Spec := by
  intro n
  simp only [A022994]

end A022994

/-!
# A022995: a(n) = 39 - n.

The programs for A022995, the canonical program `A022995.P11361645364339375436` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022995 has offset 0).

The definition of A022995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `39-n` (program `A022995.P11361645364339375436`, by `A022995.P11361645364339375436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022995.P11361645364339375436

`39-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022995

/-- `39-n` -/
def P11361645364339375436.Spec : Prop :=
  ∀ n, P11361645364339375436.a n = A022995 n

theorem P11361645364339375436.correct : P11361645364339375436.Spec := by
  intro n
  simp only [A022995]

end A022995

/-!
# A022996: a(n) = 40-n.

The programs for A022996, the canonical program `A022996.P10288891930018905135` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022996 has offset 0).

The definition of A022996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40-n` (program `A022996.P10288891930018905135`, by `A022996.P10288891930018905135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022996.P10288891930018905135

`40-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022996

/-- `40-n` -/
def P10288891930018905135.Spec : Prop :=
  ∀ n, P10288891930018905135.a n = A022996 n

theorem P10288891930018905135.correct : P10288891930018905135.Spec := by
  intro n
  simp only [A022996]

end A022996

/-!
# A022997: Numerator of n*(n-2)*(2*n-1)/(2*(n-1)).

The programs for A022997, the canonical program `A022997.P15495391549649658560` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022997 has offset 2).

The definition of A022997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022997.P15495391549649658560

`lcm(∑[4*n]+n, n+2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022997

/-- `lcm(∑[4*n]+n, n+2)` -/
def P15495391549649658560.Spec : Prop :=
  ∀ n, (P15495391549649658560.a n : ℤ) = A022997 (n + 2)

theorem P15495391549649658560.correct : P15495391549649658560.Spec := by
  intro n
  simp only [A022997, Nat.add_sub_cancel]

end A022997

/-! ## A022997.P17923611568530844404

`(2*n+3)*(n+2)*gcd(n, ∑[n])`
-/

namespace A022997.P17923611568530844404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * ((n + 2) * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A022997.P17923611568530844404

namespace A022997

/-- `(2*n+3)*(n+2)*gcd(n, ∑[n])` -/
def P17923611568530844404.Spec : Prop :=
  ∀ n, (P17923611568530844404.a n : ℤ) = A022997 (n + 2)

end A022997

/-! ## A022997.P11070758886932418043

`(2*n+3)*lcm(n, C(n+2, n+1))`
-/

namespace A022997.P11070758886932418043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.lcm n (Nat.choose (n + 2) (n + 1))

end

end A022997.P11070758886932418043

namespace A022997

/-- `(2*n+3)*lcm(n, C(n+2, n+1))` -/
def P11070758886932418043.Spec : Prop :=
  ∀ n, (P11070758886932418043.a n : ℤ) = A022997 (n + 2)

end A022997

/-! ## A022997.P15654277536613175550

`Δ[(2*n+1)*lcm(n+1, n-1)]+a(n-1)` with `a(0)=0`
-/

namespace A022997.P15654277536613175550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A022997.P15654277536613175550

namespace A022997

/-- `Δ[(2*n+1)*lcm(n+1, n-1)]+a(n-1)` -/
def P15654277536613175550.Spec : Prop :=
  ∀ n, P15654277536613175550.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P17226664506727707823

`(2*n+3)*A066830(n+1)`
-/

namespace A022997.P17226664506727707823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A066830 (n + 1)

end

end A022997.P17226664506727707823

namespace A022997

/-- `(2*n+3)*A066830(n+1)` -/
def P17226664506727707823.Spec : Prop :=
  ∀ n, P17226664506727707823.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P12951272667566681448

`C(2*(n+2), 2)*A026741(n)`
-/

namespace A022997.P12951272667566681448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 2 : ℤ) * A026741 n

end

end A022997.P12951272667566681448

namespace A022997

/-- `C(2*(n+2), 2)*A026741(n)` -/
def P12951272667566681448.Spec : Prop :=
  ∀ n, P12951272667566681448.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P5021626627032315987

`A014106(n)*A145051(n+1)`
-/

namespace A022997.P5021626627032315987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n * A145051 (n + 1)

end

end A022997.P5021626627032315987

namespace A022997

/-- `A014106(n)*A145051(n+1)` -/
def P5021626627032315987.Spec : Prop :=
  ∀ n, P5021626627032315987.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P3038267815198122536

`A066830(n+1)*A144396(n+1)`
-/

namespace A022997.P3038267815198122536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (n + 1) * A144396 (n + 1)

end

end A022997.P3038267815198122536

namespace A022997

/-- `A066830(n+1)*A144396(n+1)` -/
def P3038267815198122536.Spec : Prop :=
  ∀ n, P3038267815198122536.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P132119597984112906

`A000217(2*n+3)*A026741(n)`
-/

namespace A022997.P132119597984112906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 3) * A026741 n

end

end A022997.P132119597984112906

namespace A022997

/-- `A000217(2*n+3)*A026741(n)` -/
def P132119597984112906.Spec : Prop :=
  ∀ n, P132119597984112906.a n = A022997 (n + 2)

end A022997

/-! ## A022997.P7852541868782268062

`n*(2*n+3)*(n+2)/Δ[comp[3*(n+1)]]`
-/

namespace A022997.P7852541868782268062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 3) : ℚ) * ((n + 2 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A022997.P7852541868782268062

namespace A022997

/-- `n*(2*n+3)*(n+2)/Δ[comp[3*(n+1)]]` -/
def P7852541868782268062.Spec : Prop :=
  ∀ n, P7852541868782268062.a n = (A022997 (n + 2) : ℚ)

end A022997

/-! ## A022997.P8805865156656390664

`A160050(2*n+1)*A265283(2*n+1)/2`
-/

namespace A022997.P8805865156656390664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160050 (2 * n + 1) * A265283 (2 * n + 1) : ℚ) / 2

end

end A022997.P8805865156656390664

namespace A022997

/-- `A160050(2*n+1)*A265283(2*n+1)/2` -/
def P8805865156656390664.Spec : Prop :=
  ∀ n, P8805865156656390664.a n = (A022997 (n + 2) : ℚ)

end A022997

/-!
# A022998: If n is odd then n, otherwise 2n.

The programs for A022998, the canonical program `A022998.P12220843300282308948` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022998 has offset 0).

The definition of A022998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022998.P12220843300282308948

`n*(1+(n+1)%2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022998

/-- `n*(1+(n+1)%2)` -/
def P12220843300282308948.Spec : Prop :=
  ∀ n, (P12220843300282308948.a n : ℤ) = A022998 n

theorem P12220843300282308948.correct : P12220843300282308948.Spec := by
  intro n
  simp only [A022998]

end A022998

/-! ## A022998.P7330914703333411947

`((-1)^n+3)*n/2`
-/

namespace A022998.P7330914703333411947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 3 : ℚ) * ((n : ℚ) / 2)

end

end A022998.P7330914703333411947

namespace A022998

/-- `((-1)^n+3)*n/2` -/
def P7330914703333411947.Spec : Prop :=
  ∀ n, P7330914703333411947.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P14336237789006010950

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3`
-/

namespace A022998.P14336237789006010950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A022998.P14336237789006010950

namespace A022998

/-- `2*a(n-2)-a(n-4)` -/
def P14336237789006010950.Spec : Prop :=
  ∀ n, P14336237789006010950.a n = A022998 n

end A022998

/-! ## A022998.P8662932194941265111

`A043547(n+2)-2`
-/

namespace A022998.P8662932194941265111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 2) - 2

end

end A022998.P8662932194941265111

namespace A022998

/-- `A043547(n+2)-2` -/
def P8662932194941265111.Spec : Prop :=
  ∀ n, P8662932194941265111.a n = A022998 n

end A022998

/-! ## A022998.P18215073230678351589

`gcd(2*n, n²)`
-/

namespace A022998.P18215073230678351589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

end

end A022998.P18215073230678351589

namespace A022998

/-- `gcd(2*n, n²)` -/
def P18215073230678351589.Spec : Prop :=
  ∀ n, (P18215073230678351589.a n : ℤ) = A022998 n

end A022998

/-! ## A022998.P2132420480453955426

`3*n-lcm(2, n)`
-/

namespace A022998.P2132420480453955426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 2 n : ℤ)

end

end A022998.P2132420480453955426

namespace A022998

/-- `3*n-lcm(2, n)` -/
def P2132420480453955426.Spec : Prop :=
  ∀ n, P2132420480453955426.a n = A022998 n

end A022998

/-! ## A022998.P6097005248595105815

`abs(n*or(n, -2))`
-/

namespace A022998.P6097005248595105815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor (n : ℤ) (-2)|

end

end A022998.P6097005248595105815

namespace A022998

/-- `abs(n*or(n, -2))` -/
def P6097005248595105815.Spec : Prop :=
  ∀ n, P6097005248595105815.a n = A022998 n

end A022998

/-! ## A022998.P2511761365335103667

`-n*or(n, -2)`
-/

namespace A022998.P2511761365335103667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n : ℤ) (-2))

end

end A022998.P2511761365335103667

namespace A022998

/-- `-n*or(n, -2)` -/
def P2511761365335103667.Spec : Prop :=
  ∀ n, P2511761365335103667.a n = A022998 n

end A022998

/-! ## A022998.P13856912506866907917

`∑{d}[n, n*round(1/#)]`
-/

namespace A022998.P13856912506866907917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * SequenceMachineLib.roundAway (1 / (d : ℚ))

end

end A022998.P13856912506866907917

namespace A022998

/-- `∑{d}[n, n*round(1/#)]` -/
def P13856912506866907917.Spec : Prop :=
  ∀ n, P13856912506866907917.a n = A022998 n

end A022998

/-! ## A022998.P10657027440935343130

`2*n/(and(1, n)+1)`
-/

namespace A022998.P10657027440935343130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A022998.P10657027440935343130

namespace A022998

/-- `2*n/(and(1, n)+1)` -/
def P10657027440935343130.Spec : Prop :=
  ∀ n, P10657027440935343130.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P2574582903647437920

`n/2^((1-n)%2)`
-/

namespace A022998.P2574582903647437920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A022998.P2574582903647437920

namespace A022998

/-- `n/2^((1-n)%2)` -/
def P2574582903647437920.Spec : Prop :=
  ∀ n, P2574582903647437920.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P13363210057718592545

`n/2^(and(1, n)-1)`
-/

namespace A022998.P13363210057718592545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ ((Nat.land 1 n : ℤ) - 1 : ℤ)

end

end A022998.P13363210057718592545

namespace A022998

/-- `n/2^(and(1, n)-1)` -/
def P13363210057718592545.Spec : Prop :=
  ∀ n, P13363210057718592545.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P13869473668824813749

`2*n/2^and(1, n)`
-/

namespace A022998.P13869473668824813749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (2 ^ Nat.land 1 n : ℚ)

end

end A022998.P13869473668824813749

namespace A022998

/-- `2*n/2^and(1, n)` -/
def P13869473668824813749.Spec : Prop :=
  ∀ n, P13869473668824813749.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P15141615634776061446

`2*n/C(2, and(1, n))`
-/

namespace A022998.P15141615634776061446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose 2 (Nat.land 1 n) : ℚ)

end

end A022998.P15141615634776061446

namespace A022998

/-- `2*n/C(2, and(1, n))` -/
def P15141615634776061446.Spec : Prop :=
  ∀ n, P15141615634776061446.a n = (A022998 n : ℚ)

end A022998

/-! ## A022998.P11273450289067884468

`n*and(1, n+1)+n`
-/

namespace A022998.P11273450289067884468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1) + n

end

end A022998.P11273450289067884468

namespace A022998

/-- `n*and(1, n+1)+n` -/
def P11273450289067884468.Spec : Prop :=
  ∀ n, (P11273450289067884468.a n : ℤ) = A022998 n

theorem P11273450289067884468.correct : P11273450289067884468.Spec := by
  intro n
  simp only [A022998, Nat.add_sub_cancel, A022998.P11273450289067884468.a, A022998.P12220843300282308948.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A022998

/-! ## A022998.P3818900834016308300

`C(or(1, n), n)+n-1`
-/

namespace A022998.P3818900834016308300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) + ((n : ℤ) - 1)

end

end A022998.P3818900834016308300

namespace A022998

/-- `C(or(1, n), n)+n-1` -/
def P3818900834016308300.Spec : Prop :=
  ∀ n, P3818900834016308300.a n = A022998 n

end A022998

/-! ## A022998.P17232737888614980914

`and(n, and(1, n)-1)+n`
-/

namespace A022998.P17232737888614980914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 1 n : ℤ) - 1) + (n : ℤ)

end

end A022998.P17232737888614980914

namespace A022998

/-- `and(n, and(1, n)-1)+n` -/
def P17232737888614980914.Spec : Prop :=
  ∀ n, P17232737888614980914.a n = A022998 n

end A022998

/-! ## A022998.P1322512746633281575

`2*n-C(n, xor(1, n))`
-/

namespace A022998.P1322512746633281575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose n (Nat.xor 1 n) : ℤ)

end

end A022998.P1322512746633281575

namespace A022998

/-- `2*n-C(n, xor(1, n))` -/
def P1322512746633281575.Spec : Prop :=
  ∀ n, P1322512746633281575.a n = A022998 n

end A022998

/-! ## A022998.P1166886728117493732

`xor(1, a(n-2))+3` with `a(0)=0, a(1)=1`
-/

namespace A022998.P1166886728117493732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 1 (a (n - 2)) + 3

end

end A022998.P1166886728117493732

namespace A022998

/-- `xor(1, a(n-2))+3` -/
def P1166886728117493732.Spec : Prop :=
  ∀ n, (P1166886728117493732.a n : ℤ) = A022998 n

end A022998

/-! ## A022998.P15759766590505726103

`C(n, a(n-1))+n` with `a(0)=0, a(1)=1`
-/

namespace A022998.P15759766590505726103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose n (a (n - 1)) + n

end

end A022998.P15759766590505726103

namespace A022998

/-- `C(n, a(n-1))+n` -/
def P15759766590505726103.Spec : Prop :=
  ∀ n, (P15759766590505726103.a n : ℤ) = A022998 n

end A022998

/-!
# A022999: Areas for which ApSimon's diagonal point triangle problem has no solution.

The programs for A022999, there is no canonical definition to state claims against.
-/

/-! ## A022999.P12328340888461808779

`∑[A254339(Δ[A254329(n+5)])]`
-/

namespace A022999.P12328340888461808779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254329 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254339 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022999.P12328340888461808779

/-! ## A022999.P9394709240976874920

`A336388(A052226(n))+A332280(n)`
-/

namespace A022999.P9394709240976874920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336388 (A052226 n).toNat + A332280 n

end

end A022999.P9394709240976874920

/-! ## A022999.P8815411955376605810

`eq[A000290(A287640(n)), A097325(n)]`
-/

namespace A022999.P8815411955376605810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A287640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022999.P8815411955376605810

/-! ## A022999.P16767140658550760435

`A077105(A077128(n+1)+A064628(n))`
-/

namespace A022999.P16767140658550760435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (A077128 (n + 1) + A064628 n).toNat

end

end A022999.P16767140658550760435

