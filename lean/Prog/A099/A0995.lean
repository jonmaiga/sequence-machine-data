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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A099500: Number of distinct products of subsets of integers in the interval [n^2+1, (n+1)^2-1] which are twice a square.

The programs for A099500, there is no canonical definition to state claims against.
-/

/-! ## A099500.P10374572492788860007

`A120253(A328617(n+1))`
-/

namespace A099500.P10374572492788860007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120253 (A328617 (n + 1)).toNat

end

end A099500.P10374572492788860007

/-! ## A099500.P10832307496000014919

`A120253(A351831(n+2))`
-/

namespace A099500.P10832307496000014919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120253 (A351831 (n + 2)).toNat

end

end A099500.P10832307496000014919

/-! ## A099500.P17365844558049083984

`A120253(C(A260424(n+1), n))`
-/

namespace A099500.P17365844558049083984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120253 (Nat.choose (A260424 (n + 1)).toNat n)

end

end A099500.P17365844558049083984

/-! ## A099500.P5715848071021975335

`A120253(n+1)%∑[A120233(3*n+2)]`
-/

namespace A099500.P5715848071021975335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120233 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120253 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099500.P5715848071021975335

/-! ## A099500.P1954681824919472486

`gcd(Δ[A120253(2*(n+2))], A120253(n+1))`
-/

namespace A099500.P1954681824919472486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120253 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A120253 (n + 1))

end

end A099500.P1954681824919472486

/-!
# A099501: Least number of members in a subset of integers in the interval [n^2+1, (n+1)^2-1] whose product is twice a square.

The programs for A099501, there is no canonical definition to state claims against.
-/

/-! ## A099501.P87431607256312896

`A257993(A246479(n+1)+A138494(n+1))`
-/

namespace A099501.P87431607256312896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A246479 (n + 1) + A138494 (n + 1)).toNat

end

end A099501.P87431607256312896

/-! ## A099501.P18005720675629981379

`gcd(A276869(n+2)-2, A097509(A153478(2*(n+1))))`
-/

namespace A099501.P18005720675629981379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276869 (n + 2) - 2) (A097509 (A153478 (2 * (n + 1))).toNat)

end

end A099501.P18005720675629981379

/-! ## A099501.P9592288542743758837

`A326674(A078308(n+1))+A171588(n+1)`
-/

namespace A099501.P9592288542743758837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (A078308 (n + 1)).toNat + A171588 (n + 1)

end

end A099501.P9592288542743758837

/-! ## A099501.P5387082047079709782

`A091318(A262036(n+2))`
-/

namespace A099501.P5387082047079709782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (A262036 (n + 2)).toNat

end

end A099501.P5387082047079709782

/-! ## A099501.P3979293735078973979

`A293234(A004194(n+1)+A001897(n))`
-/

namespace A099501.P3979293735078973979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A004194 (n + 1) + A001897 n).toNat

end

end A099501.P3979293735078973979

/-!
# A099502: Numbers n such that A099501(n) = 3.

The programs for A099502, there is no canonical definition to state claims against.
-/

/-! ## A099502.P11947123614480001389

`eq[3, A099501(n+1)]+1`
-/

namespace A099502.P11947123614480001389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099502.P11947123614480001389

/-! ## A099502.P2279089649330628323

`eq[3, A099501(A028310(n))]`
-/

namespace A099502.P2279089649330628323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099502.P2279089649330628323

/-! ## A099502.P2895048857946082849

`A020725(eq[3, A099501(n+1)])`
-/

namespace A099502.P2895048857946082849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099502.P2895048857946082849

/-! ## A099502.P669535003052192478

`A065475(eq[3, A099501(n+1)])`
-/

namespace A099502.P669535003052192478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099502.P669535003052192478

/-! ## A099502.P246666119758706491

`eq[3, A099501(A233583(n+1))]`
-/

namespace A099502.P246666119758706491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099502.P246666119758706491

/-!
# A099503: Expansion of 1/(1-4*x+x^3).

The programs for A099503, the canonical program `A099503.P13352775416281218288` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099503 has offset 0).

The definition of A099503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+x^3))` (program `A099503.P13352775416281218288`, by `A099503.P13352775416281218288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099503.P13352775416281218288

`ogf(1/(1-4x+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099503

/-- `ogf(1/(1-4x+x^3))` -/
def P13352775416281218288.Spec : Prop :=
  ∀ n, P13352775416281218288.a n = A099503 n

theorem P13352775416281218288.correct : P13352775416281218288.Spec := by
  intro n
  simp only [A099503]

end A099503

/-! ## A099503.P14635593863105165186

`4*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A099503.P14635593863105165186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) - a (n - 3)

end

end A099503.P14635593863105165186

namespace A099503

/-- `4*a(n-1)-a(n-3)` -/
def P14635593863105165186.Spec : Prop :=
  ∀ n, P14635593863105165186.a n = A099503 n

end A099503

/-! ## A099503.P16218159768687397633

`∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*4^(n-3*#)]`
-/

namespace A099503.P16218159768687397633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℤ) * (-1) ^ k : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ)

end

end A099503.P16218159768687397633

namespace A099503

/-- `∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*4^(n-3*#)]` -/
def P16218159768687397633.Spec : Prop :=
  ∀ n, P16218159768687397633.a n = (A099503 n : ℚ)

end A099503

/-! ## A099503.P16856715482433478089

`∑[A088132(n)]`
-/

namespace A099503.P16856715482433478089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099503.P16856715482433478089

namespace A099503

/-- `∑[A088132(n)]` -/
def P16856715482433478089.Spec : Prop :=
  ∀ n, P16856715482433478089.a n = A099503 n

end A099503

/-! ## A099503.P9036979994592441564

`∑{#}[n, C(n, #)*A384648(#)]`
-/

namespace A099503.P9036979994592441564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A384648 k

end

end A099503.P9036979994592441564

namespace A099503

/-- `∑{#}[n, C(n, #)*A384648(#)]` -/
def P9036979994592441564.Spec : Prop :=
  ∀ n, P9036979994592441564.a n = A099503 n

end A099503

/-! ## A099503.P5081321970196151617

`Δ[A088132(n)]-A126392(n)`
-/

namespace A099503.P5081321970196151617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126392 n

end

end A099503.P5081321970196151617

namespace A099503

/-- `Δ[A088132(n)]-A126392(n)` -/
def P5081321970196151617.Spec : Prop :=
  ∀ n, P5081321970196151617.a n = A099503 n

end A099503

/-!
# A099504: Expansion of 1/(1-5*x+x^3).

The programs for A099504, the canonical program `A099504.P13147801146139849859` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099504 has offset 0).

The definition of A099504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+x^3))` (program `A099504.P13147801146139849859`, by `A099504.P13147801146139849859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099504.P13147801146139849859

`ogf(1/(1-5x+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099504

/-- `ogf(1/(1-5x+x^3))` -/
def P13147801146139849859.Spec : Prop :=
  ∀ n, P13147801146139849859.a n = A099504 n

theorem P13147801146139849859.correct : P13147801146139849859.Spec := by
  intro n
  simp only [A099504]

end A099504

/-! ## A099504.P16757553064585181030

`5*a(n-1)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A099504.P16757553064585181030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  5 * a (n - 1) - a (n - 3)

end

end A099504.P16757553064585181030

namespace A099504

/-- `5*a(n-1)-a(n-3)` -/
def P16757553064585181030.Spec : Prop :=
  ∀ n, P16757553064585181030.a n = A099504 n

end A099504

/-! ## A099504.P17066033477291924458

`∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*5^(n-3*#)]`
-/

namespace A099504.P17066033477291924458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℤ) * (-1) ^ k : ℚ) * (5 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ)

end

end A099504.P17066033477291924458

namespace A099504

/-- `∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*5^(n-3*#)]` -/
def P17066033477291924458.Spec : Prop :=
  ∀ n, P17066033477291924458.a n = (A099504 n : ℚ)

end A099504

/-! ## A099504.P7229960172539194846

`floor((a(n-1)²-1)/a(n-2))` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A099504.P7229960172539194846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A099504.P7229960172539194846

namespace A099504

/-- `floor((a(n-1)²-1)/a(n-2))` -/
def P7229960172539194846.Spec : Prop :=
  ∀ n, P7229960172539194846.a n = A099504 n

end A099504

/-! ## A099504.P7748781612074532423

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A099504.P7748781612074532423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A099504.P7748781612074532423

namespace A099504

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P7748781612074532423.Spec : Prop :=
  ∀ n, P7748781612074532423.a n = A099504 n

end A099504

/-!
# A099505: A transform of the Fibonacci numbers.

The programs for A099505, the canonical program `A099505.P2712030158026722847` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099505 has offset 0).

The definition of A099505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099505.P17206959990133799318

`ogf(x/(1-x-x^2+2x^3-x^4+x^6))`
-/

namespace A099505.P17206959990133799318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, 2, -1, 0, 1] n

end

end A099505.P17206959990133799318

namespace A099505

/-- `ogf(x/(1-x-x^2+2x^3-x^4+x^6))` -/
def P17206959990133799318.Spec : Prop :=
  ∀ n, P17206959990133799318.a n = A099505 n

end A099505

/-! ## A099505.P2712030158026722847

`a(n-1)+a(n-2)-2*a(n-3)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099505

/-- `a(n-1)+a(n-2)-2*a(n-3)+a(n-4)-a(n-6)` -/
def P2712030158026722847.Spec : Prop :=
  ∀ n, P2712030158026722847.a n = A099505 n

theorem P2712030158026722847.correct : P2712030158026722847.Spec := by
  intro n
  simp only [A099505]

end A099505

/-! ## A099505.P6508223867233335348

`∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*A000045(n-3*#)]`
-/

namespace A099505.P6508223867233335348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (2 * k : ℤ)).toNat k : ℤ) * (-1) ^ k * A000045 (n - 3 * k)

end

end A099505.P6508223867233335348

namespace A099505

/-- `∑{#}[floor(n/3), C(n-2*#, #)*(-1)^#*A000045(n-3*#)]` -/
def P6508223867233335348.Spec : Prop :=
  ∀ n, P6508223867233335348.a n = A099505 n

end A099505

/-! ## A099505.P17837418987579475896

`∑[A061680(A061672(n+1))-A035363(n)]`
-/

namespace A099505.P17837418987579475896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061680 (A061672 (n + 1)).toNat - A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099505.P17837418987579475896

namespace A099505

/-- `∑[A061680(A061672(n+1))-A035363(n)]` -/
def P17837418987579475896.Spec : Prop :=
  ∀ n, P17837418987579475896.a n = A099505 n

end A099505

/-!
# A099508: A transform of the Jacobsthal numbers.

The programs for A099508, the canonical program `A099508.P3880572915039908521` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099508 has offset 0).

The definition of A099508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099508.P11124995906239448101

`ogf(x/(1-x-2x^2+2x^3-x^4+x^6))`
-/

namespace A099508.P11124995906239448101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -2, 2, -1, 0, 1] n

end

end A099508.P11124995906239448101

namespace A099508

/-- `ogf(x/(1-x-2x^2+2x^3-x^4+x^6))` -/
def P11124995906239448101.Spec : Prop :=
  ∀ n, P11124995906239448101.a n = A099508 n

end A099508

/-! ## A099508.P3880572915039908521

`a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099508

/-- `a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)-a(n-6)` -/
def P3880572915039908521.Spec : Prop :=
  ∀ n, P3880572915039908521.a n = A099508 n

theorem P3880572915039908521.correct : P3880572915039908521.Spec := by
  intro n
  simp only [A099508]

end A099508

/-! ## A099508.P17497668095472424072

`floor((A020695(n)-A199804(n))/3)`
-/

namespace A099508.P17497668095472424072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020695 n - A199804 n : ℚ) / 3⌋

end

end A099508.P17497668095472424072

namespace A099508

/-- `floor((A020695(n)-A199804(n))/3)` -/
def P17497668095472424072.Spec : Prop :=
  ∀ n, P17497668095472424072.a n = A099508 n

end A099508

/-! ## A099508.P2545109275631466867

`(∑[A000045(n+1)]-A199804(n))/3`
-/

namespace A099508.P2545109275631466867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A199804 n : ℤ) : ℚ) / 3

end

end A099508.P2545109275631466867

namespace A099508

/-- `(∑[A000045(n+1)]-A199804(n))/3` -/
def P2545109275631466867.Spec : Prop :=
  ∀ n, P2545109275631466867.a n = (A099508 n : ℚ)

end A099508

/-! ## A099508.P7021393636324986735

`round((A020695(n)-A199804(n))/3*A057427(n))`
-/

namespace A099508.P7021393636324986735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020695 n - A199804 n : ℚ) / 3 * (A057427 n : ℚ))

end

end A099508.P7021393636324986735

namespace A099508

/-- `round((A020695(n)-A199804(n))/3*A057427(n))` -/
def P7021393636324986735.Spec : Prop :=
  ∀ n, P7021393636324986735.a n = A099508 n

end A099508

/-! ## A099508.P15691621175470205632

`ceil(A033999(2*n+1)+(A020695(n)-A199804(n))/3)`
-/

namespace A099508.P15691621175470205632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℚ) + (A020695 n - A199804 n : ℚ) / 3⌉

end

end A099508.P15691621175470205632

namespace A099508

/-- `ceil(A033999(2*n+1)+(A020695(n)-A199804(n))/3)` -/
def P15691621175470205632.Spec : Prop :=
  ∀ n, P15691621175470205632.a n = A099508 n

end A099508

/-! ## A099508.P2352876224044185262

`round((A020695(n)-A199804(n))/3)%A000051(n)`
-/

namespace A099508.P2352876224044185262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A020695 n - A199804 n : ℚ) / 3)) (A000051 n)

end

end A099508.P2352876224044185262

namespace A099508

/-- `round((A020695(n)-A199804(n))/3)%A000051(n)` -/
def P2352876224044185262.Spec : Prop :=
  ∀ n, P2352876224044185262.a n = A099508 n

end A099508

/-!
# A099509: Triangle, read by rows, of trinomial coefficients arranged so that there are n+1 terms in row n by setting T(n,k) equal to the coefficient of z^k in (1 + z + z^2)^(n-[k/2]), for n>=k>=0, where [k/2] is the integer floor of k/2.

The programs for A099509, the canonical program `A099509.P9214267481119793256` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099509 has offset 0).

The definition of A099509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099509.P9214267481119793256

`A027907(A194032(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099509

/-- `A027907(A194032(n+1))` -/
def P9214267481119793256.Spec : Prop :=
  ∀ n, P9214267481119793256.a n = A099509 n

theorem P9214267481119793256.correct : P9214267481119793256.Spec := by
  intro n
  simp only [A099509]

end A099509

/-! ## A099509.P3069431378801508955

`A082858(A212163(n+1))+A007318(n)`
-/

namespace A099509.P3069431378801508955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A212163 (n + 1)).toNat + A007318 n

end

end A099509.P3069431378801508955

namespace A099509

/-- `A082858(A212163(n+1))+A007318(n)` -/
def P3069431378801508955.Spec : Prop :=
  ∀ n, P3069431378801508955.a n = A099509 n

end A099509

/-! ## A099509.P15517608484517856771

`A082858(A212163(n+1))+sqrt(A008459(n))`
-/

namespace A099509.P15517608484517856771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A082858 (A212163 (n + 1)).toNat : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A099509.P15517608484517856771

namespace A099509

/-- `A082858(A212163(n+1))+sqrt(A008459(n))` -/
def P15517608484517856771.Spec : Prop :=
  ∀ n, P15517608484517856771.a n = (A099509 n : ℝ)

end A099509

/-! ## A099509.P16493071918723110370

`A374017(A326230(n+1))+A007318(n)`
-/

namespace A099509.P16493071918723110370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374017 (A326230 (n + 1)).toNat + A007318 n

end

end A099509.P16493071918723110370

namespace A099509

/-- `A374017(A326230(n+1))+A007318(n)` -/
def P16493071918723110370.Spec : Prop :=
  ∀ n, P16493071918723110370.a n = A099509 n

end A099509

/-! ## A099509.P13400107256689274463

`A343380(A278222(3*n+4))+A007318(n)`
-/

namespace A099509.P13400107256689274463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A278222 (3 * n + 4)).toNat + A007318 n

end

end A099509.P13400107256689274463

namespace A099509

/-- `A343380(A278222(3*n+4))+A007318(n)` -/
def P13400107256689274463.Spec : Prop :=
  ∀ n, P13400107256689274463.a n = A099509 n

end A099509

/-!
# A099510: Triangle, read by rows, of trinomial coefficients arranged so that there are n+1 terms in row n by setting T(n,k) equal to the coefficient of z^k in (1 + 2*z + z^2)^(n-[k/2]), for n>=k>=0, where [k/2] is the integer floor of k/2.

The programs for A099510, the canonical program `A099510.P4331747082263248372` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099510 has offset 0).

The definition of A099510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099510.P8526235836228408185

`A034870(A194032(n+1))`
-/

namespace A099510.P8526235836228408185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A194032 (n + 1)).toNat

end

end A099510.P8526235836228408185

namespace A099510

/-- `A034870(A194032(n+1))` -/
def P8526235836228408185.Spec : Prop :=
  ∀ n, P8526235836228408185.a n = A099510 n

end A099510

/-! ## A099510.P4331747082263248372

`C(A052928(A128076(n+1)), A002262(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099510

/-- `C(A052928(A128076(n+1)), A002262(n))` -/
def P4331747082263248372.Spec : Prop :=
  ∀ n, (P4331747082263248372.a n : ℤ) = A099510 n

theorem P4331747082263248372.correct : P4331747082263248372.Spec := by
  intro n
  simp only [A099510]

end A099510

/-! ## A099510.P14653651589272699190

`C(2*A110654(A294317(n)), A002262(n))`
-/

namespace A099510.P14653651589272699190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A110654 (A294317 n).toNat).toNat (A002262 n).toNat

end

end A099510.P14653651589272699190

namespace A099510

/-- `C(2*A110654(A294317(n)), A002262(n))` -/
def P14653651589272699190.Spec : Prop :=
  ∀ n, (P14653651589272699190.a n : ℤ) = A099510 n

end A099510

/-! ## A099510.P2314593648393631981

`C(2*A000196(A082156(n+1)), A002262(n))`
-/

namespace A099510.P2314593648393631981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000196 (A082156 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099510.P2314593648393631981

namespace A099510

/-- `C(2*A000196(A082156(n+1)), A002262(n))` -/
def P2314593648393631981.Spec : Prop :=
  ∀ n, (P2314593648393631981.a n : ℤ) = A099510 n

end A099510

/-! ## A099510.P16560319002452669002

`A103631(A185871(n+1)-A060510(n))`
-/

namespace A099510.P16560319002452669002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A185871 (n + 1) - A060510 n).toNat

end

end A099510.P16560319002452669002

namespace A099510

/-- `A103631(A185871(n+1)-A060510(n))` -/
def P16560319002452669002.Spec : Prop :=
  ∀ n, P16560319002452669002.a n = A099510 n

end A099510

/-! ## A099510.P17871797296873281839

`C(2*A000196(A163257(n+1)), A002262(n))`
-/

namespace A099510.P17871797296873281839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000196 (A163257 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099510.P17871797296873281839

namespace A099510

/-- `C(2*A000196(A163257(n+1)), A002262(n))` -/
def P17871797296873281839.Spec : Prop :=
  ∀ n, (P17871797296873281839.a n : ℤ) = A099510 n

end A099510

/-! ## A099510.P12257244006173476232

`C(2*A000196(A163253(n+1)), A002262(n))`
-/

namespace A099510.P12257244006173476232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000196 (A163253 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099510.P12257244006173476232

namespace A099510

/-- `C(2*A000196(A163253(n+1)), A002262(n))` -/
def P12257244006173476232.Spec : Prop :=
  ∀ n, (P12257244006173476232.a n : ℤ) = A099510 n

end A099510

/-!
# A099511: Row sums of triangle A099510, so that a(n) = Sum_{k=0..n} coefficient of z^k in (1 + 2*z + z^2)^(n-[k/2]), where [k/2] is the integer floor of k/2.

The programs for A099511, the canonical program `A099511.P15238530668580088634` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099511 has offset 0).

The definition of A099511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099511.P2336648496885717593

`ogf((1+x-x^2)/(1-2x-x^2-2x^3+x^4))`
-/

namespace A099511.P2336648496885717593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -1, -2, 1] n

end

end A099511.P2336648496885717593

namespace A099511

/-- `ogf((1+x-x^2)/(1-2x-x^2-2x^3+x^4))` -/
def P2336648496885717593.Spec : Prop :=
  ∀ n, P2336648496885717593.a n = A099511 n

end A099511

/-! ## A099511.P15238530668580088634

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099511

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P15238530668580088634.Spec : Prop :=
  ∀ n, P15238530668580088634.a n = A099511 n

theorem P15238530668580088634.correct : P15238530668580088634.Spec := by
  intro n
  simp only [A099511]

end A099511

/-! ## A099511.P3121002523706189880

`∑{#}[floor(n/2), C(2*n-2*#+1, 2*#+1)]`
-/

namespace A099511.P3121002523706189880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat (2 * k + 1)

end

end A099511.P3121002523706189880

namespace A099511

/-- `∑{#}[floor(n/2), C(2*n-2*#+1, 2*#+1)]` -/
def P3121002523706189880.Spec : Prop :=
  ∀ n, (P3121002523706189880.a n : ℤ) = A099511 n

end A099511

/-! ## A099511.P17921405401021219308

`xor(1, xor(1, 3*a(n-1))-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A099511.P17921405401021219308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (Int.xor 1 (3 * a (n - 1)) - a (n - 2))

end

end A099511.P17921405401021219308

namespace A099511

/-- `xor(1, xor(1, 3*a(n-1))-a(n-2))` -/
def P17921405401021219308.Spec : Prop :=
  ∀ n, P17921405401021219308.a n = A099511 n

end A099511

/-! ## A099511.P762140009194782275

`record[a(n-4)-(a(n-2)+2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A099511.P762140009194782275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 0] fun n f1 =>
  f1 (n - 4) - (f1 (n - 2) + 2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099511.P762140009194782275

namespace A099511

/-- `record[a(n-4)-(a(n-2)+2*a(n-1))]` -/
def P762140009194782275.Spec : Prop :=
  ∀ n, P762140009194782275.a n = A099511 n

end A099511

/-! ## A099511.P5275706974902597210

`xor(1, xor(1, a(n-1))+a(n-1)+a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A099511.P5275706974902597210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (Int.xor 1 (a (n - 1)) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A099511.P5275706974902597210

namespace A099511

/-- `xor(1, xor(1, a(n-1))+a(n-1)+a(n-1)-a(n-2))` -/
def P5275706974902597210.Spec : Prop :=
  ∀ n, P5275706974902597210.a n = A099511 n

end A099511

/-! ## A099511.P2233335002258289452

`record[A106511(n)]`
-/

namespace A099511.P2233335002258289452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099511.P2233335002258289452

namespace A099511

/-- `record[A106511(n)]` -/
def P2233335002258289452.Spec : Prop :=
  ∀ n, P2233335002258289452.a n = A099511 n

end A099511

/-! ## A099511.P11450126725155270518

`A093040(Δ[n²])`
-/

namespace A099511.P11450126725155270518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099511.P11450126725155270518

namespace A099511

/-- `A093040(Δ[n²])` -/
def P11450126725155270518.Spec : Prop :=
  ∀ n, P11450126725155270518.a n = A099511 n

end A099511

/-! ## A099511.P17217474276414064608

`A024490(2*(n+1))`
-/

namespace A099511.P17217474276414064608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (2 * (n + 1))

end

end A099511.P17217474276414064608

namespace A099511

/-- `A024490(2*(n+1))` -/
def P17217474276414064608.Spec : Prop :=
  ∀ n, P17217474276414064608.a n = A099511 n

end A099511

/-! ## A099511.P17661191214750625608

`A106511(2*(n+2))`
-/

namespace A099511.P17661191214750625608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * (n + 2))

end

end A099511.P17661191214750625608

namespace A099511

/-- `A106511(2*(n+2))` -/
def P17661191214750625608.Spec : Prop :=
  ∀ n, P17661191214750625608.a n = A099511 n

end A099511

/-! ## A099511.P7755110394550679695

`A174619(4*n+2)`
-/

namespace A099511.P7755110394550679695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (4 * n + 2)

end

end A099511.P7755110394550679695

namespace A099511

/-- `A174619(4*n+2)` -/
def P7755110394550679695.Spec : Prop :=
  ∀ n, P7755110394550679695.a n = A099511 n

end A099511

/-! ## A099511.P1263472147472169094

`A174618(4*(n+1)+1)`
-/

namespace A099511.P1263472147472169094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (4 * (n + 1) + 1)

end

end A099511.P1263472147472169094

namespace A099511

/-- `A174618(4*(n+1)+1)` -/
def P1263472147472169094.Spec : Prop :=
  ∀ n, P1263472147472169094.a n = A099511 n

end A099511

/-! ## A099511.P2048370268026319507

`A375372(2*n+3)+1`
-/

namespace A099511.P2048370268026319507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375372 (2 * n + 3) + 1

end

end A099511.P2048370268026319507

namespace A099511

/-- `A375372(2*n+3)+1` -/
def P2048370268026319507.Spec : Prop :=
  ∀ n, P2048370268026319507.a n = A099511 n

end A099511

/-! ## A099511.P10972543619723057262

`a(n-3)+2*A000045(2*n)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A099511.P10972543619723057262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 3) + 2 * A000045 (2 * n)

end

end A099511.P10972543619723057262

namespace A099511

/-- `a(n-3)+2*A000045(2*n)` -/
def P10972543619723057262.Spec : Prop :=
  ∀ n, P10972543619723057262.a n = A099511 n

end A099511

/-! ## A099511.P7760383244109925346

`record[A093040(A093048(n))]`
-/

namespace A099511.P7760383244109925346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (A093048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099511.P7760383244109925346

namespace A099511

/-- `record[A093040(A093048(n))]` -/
def P7760383244109925346.Spec : Prop :=
  ∀ n, P7760383244109925346.a n = A099511 n

end A099511

/-! ## A099511.P2863144178668459831

`A286350(2*n)+A001519(n)`
-/

namespace A099511.P2863144178668459831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (2 * n) + A001519 n

end

end A099511.P2863144178668459831

namespace A099511

/-- `A286350(2*n)+A001519(n)` -/
def P2863144178668459831.Spec : Prop :=
  ∀ n, P2863144178668459831.a n = A099511 n

end A099511

/-! ## A099511.P3677791862017020408

`A108479(n)+2*A182890(n)`
-/

namespace A099511.P3677791862017020408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n + 2 * A182890 n

end

end A099511.P3677791862017020408

namespace A099511

/-- `A108479(n)+2*A182890(n)` -/
def P3677791862017020408.Spec : Prop :=
  ∀ n, P3677791862017020408.a n = A099511 n

end A099511

/-! ## A099511.P1010245431898322255

`A099517(2*n)+A022003(n+1)`
-/

namespace A099511.P1010245431898322255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099517 (2 * n) + A022003 (n + 1)

end

end A099511.P1010245431898322255

namespace A099511

/-- `A099517(2*n)+A022003(n+1)` -/
def P1010245431898322255.Spec : Prop :=
  ∀ n, P1010245431898322255.a n = A099511 n

end A099511

/-! ## A099511.P8210441384751742493

`A226956(2*n)+A000045(2*n)`
-/

namespace A099511.P8210441384751742493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n) + A000045 (2 * n)

end

end A099511.P8210441384751742493

namespace A099511

/-- `A226956(2*n)+A000045(2*n)` -/
def P8210441384751742493.Spec : Prop :=
  ∀ n, P8210441384751742493.a n = A099511 n

end A099511

/-! ## A099511.P5281394877102362634

`A286350(2*n)+A212804(2*n)`
-/

namespace A099511.P5281394877102362634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (2 * n) + A212804 (2 * n)

end

end A099511.P5281394877102362634

namespace A099511

/-- `A286350(2*n)+A212804(2*n)` -/
def P5281394877102362634.Spec : Prop :=
  ∀ n, P5281394877102362634.a n = A099511 n

end A099511

/-!
# A099512: Triangle, read by rows, of trinomial coefficients arranged so that there are n+1 terms in row n by setting T(n,k) equal to the coefficient of z^k in (1 + 3*z + z^2)^(n-[k/2]), for n>=k>=0, where [k/2] is the integer floor of k/2.

The programs for A099512, there is no canonical definition to state claims against.
-/

/-! ## A099512.P12594994281461088804

`A272866(A194032(1+n))`
-/

namespace A099512.P12594994281461088804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (A194032 (1 + n)).toNat

end

end A099512.P12594994281461088804

/-!
# A099513: Row sums of triangle A099512, so that a(n) = Sum_{k=0..n} coefficient of z^k in (1 + 3*z + z^2)^(n-[k/2]), where [k/2] is the integer floor of k/2.

The programs for A099513, the canonical program `A099513.P7800511817842195673` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099513 has offset 0).

The definition of A099513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099513.P8781830841916578746

`ogf((1+2x-x^2)/(1-2x-x^2-7x^3+x^4))`
-/

namespace A099513.P8781830841916578746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -2, -1, -7, 1] n

end

end A099513.P8781830841916578746

namespace A099513

/-- `ogf((1+2x-x^2)/(1-2x-x^2-7x^3+x^4))` -/
def P8781830841916578746.Spec : Prop :=
  ∀ n, P8781830841916578746.a n = A099513 n

end A099513

/-! ## A099513.P7800511817842195673

`2*a(n-1)+a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=27`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099513

/-- `2*a(n-1)+a(n-2)+7*a(n-3)-a(n-4)` -/
def P7800511817842195673.Spec : Prop :=
  ∀ n, P7800511817842195673.a n = A099513 n

theorem P7800511817842195673.correct : P7800511817842195673.Spec := by
  intro n
  simp only [A099513]

end A099513

/-! ## A099513.P580335795416231275

`∑[A026385(2*n+5)%A026385(2*(n+1))]`
-/

namespace A099513.P580335795416231275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026385 (2 * n + 5)) (A026385 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099513.P580335795416231275

namespace A099513

/-- `∑[A026385(2*n+5)%A026385(2*(n+1))]` -/
def P580335795416231275.Spec : Prop :=
  ∀ n, P580335795416231275.a n = A099513 n

end A099513

/-!
# A099514: Triangle, read by rows, of trinomial coefficients arranged so that there are n+1 terms in row n by setting T(n,k) equal to the coefficient of z^k in (1 + z + 2*z^2)^(n-[k/2]), for n>=k>=0, where [k/2] is the integer floor of k/2.

The programs for A099514, there is no canonical definition to state claims against.
-/

/-! ## A099514.P14489720333672601343

`A084600(A194032(n+1))`
-/

namespace A099514.P14489720333672601343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A194032 (n + 1)).toNat

end

end A099514.P14489720333672601343

/-! ## A099514.P14662104817365147655

`A228368(A302830(n))+A228352(n+1)`
-/

namespace A099514.P14662104817365147655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228368 (A302830 n).toNat + A228352 (n + 1)

end

end A099514.P14662104817365147655

/-! ## A099514.P870362924514977837

`char[13]+A160232(n+1)%A071987(n)`
-/

namespace A099514.P870362924514977837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A160232 (n + 1)) (A071987 n)

end

end A099514.P870362924514977837

/-! ## A099514.P8467296578413506286

`A185284(A011971(n))+A026300(n)`
-/

namespace A099514.P8467296578413506286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A011971 n).toNat + A026300 n

end

end A099514.P8467296578413506286

/-! ## A099514.P1241928579059377688

`A078802(n)+A046098(A121207(n))`
-/

namespace A099514.P1241928579059377688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 n + A046098 (A121207 n).toNat

end

end A099514.P1241928579059377688

/-!
# A099515: Row sums of triangle A099514, so that a(n) = Sum_{k=0..n} coefficient of z^k in (1 + z + 2*z^2)^(n-[k/2]), where [k/2] is the integer floor of k/2.

The programs for A099515, the canonical program `A099515.P13446976826026050932` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099515 has offset 0).

The definition of A099515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099515.P13446976826026050932

`ogf((1-2x^2)/(1-2x-3x^2+3x^3+4x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099515

/-- `ogf((1-2x^2)/(1-2x-3x^2+3x^3+4x^4))` -/
def P13446976826026050932.Spec : Prop :=
  ∀ n, P13446976826026050932.a n = A099515 n

theorem P13446976826026050932.correct : P13446976826026050932.Spec := by
  intro n
  simp only [A099515]

end A099515

/-! ## A099515.P2752873661744330425

`or(A068739(n+1), A081153(A332745(n)))`
-/

namespace A099515.P2752873661744330425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068739 (n + 1)) (A081153 (A332745 n).toNat)

end

end A099515.P2752873661744330425

namespace A099515

/-- `or(A068739(n+1), A081153(A332745(n)))` -/
def P2752873661744330425.Spec : Prop :=
  ∀ n, P2752873661744330425.a n = A099515 n

end A099515

/-! ## A099515.P14014169489093556466

`A100196(A364907(n+1))`
-/

namespace A099515.P14014169489093556466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A364907 (n + 1)).toNat

end

end A099515.P14014169489093556466

namespace A099515

/-- `A100196(A364907(n+1))` -/
def P14014169489093556466.Spec : Prop :=
  ∀ n, P14014169489093556466.a n = A099515 n

end A099515

/-!
# A099516: A transform of the Pell numbers.

The programs for A099516, the canonical program `A099516.P14396270154390988618` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099516 has offset 0).

The definition of A099516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099516.P14167873546551742328

`ogf(x/(1-2x-x^2+2x^3-2x^4+x^6))`
-/

namespace A099516.P14167873546551742328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1, 2, -2, 0, 1] n

end

end A099516.P14167873546551742328

namespace A099516

/-- `ogf(x/(1-2x-x^2+2x^3-2x^4+x^6))` -/
def P14167873546551742328.Spec : Prop :=
  ∀ n, P14167873546551742328.a n = A099516 n

end A099516

/-! ## A099516.P14396270154390988618

`2*a(n-1)+a(n-2)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=10, a(5)=23`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099516

/-- `2*a(n-1)+a(n-2)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P14396270154390988618.Spec : Prop :=
  ∀ n, P14396270154390988618.a n = A099516 n

theorem P14396270154390988618.correct : P14396270154390988618.Spec := by
  intro n
  simp only [A099516]

end A099516

/-! ## A099516.P14191702534782911122

`A111853(A001787(n+1))+A000045(n)`
-/

namespace A099516.P14191702534782911122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (A001787 (n + 1)).toNat + A000045 n

end

end A099516.P14191702534782911122

namespace A099516

/-- `A111853(A001787(n+1))+A000045(n)` -/
def P14191702534782911122.Spec : Prop :=
  ∀ n, P14191702534782911122.a n = A099516 n

end A099516

/-! ## A099516.P7025301868859750055

`A194698(A196423(n+4)-n²)`
-/

namespace A099516.P7025301868859750055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A196423 (n + 4) - (n ^ 2 : ℤ)).toNat

end

end A099516.P7025301868859750055

namespace A099516

/-- `A194698(A196423(n+4)-n²)` -/
def P7025301868859750055.Spec : Prop :=
  ∀ n, P7025301868859750055.a n = A099516 n

end A099516

/-! ## A099516.P13893190720274196419

`A262689(A004254(n)+A001840(n))`
-/

namespace A099516.P13893190720274196419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A004254 n + A001840 n).toNat

end

end A099516.P13893190720274196419

namespace A099516

/-- `A262689(A004254(n)+A001840(n))` -/
def P13893190720274196419.Spec : Prop :=
  ∀ n, P13893190720274196419.a n = A099516 n

end A099516

/-!
# A099517: A transform of (1-x)/(1-2x).

The programs for A099517, the canonical program `A099517.P2725394052069516161` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099517 has offset 0).

The definition of A099517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099517.P7958183070987832242

`ogf((1-x+x^3)/(1-2x+2x^3-2x^4+x^6))`
-/

namespace A099517.P7958183070987832242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -2, 0, 2, -2, 0, 1] n

end

end A099517.P7958183070987832242

namespace A099517

/-- `ogf((1-x+x^3)/(1-2x+2x^3-2x^4+x^6))` -/
def P7958183070987832242.Spec : Prop :=
  ∀ n, P7958183070987832242.a n = A099517 n

end A099517

/-! ## A099517.P2725394052069516161

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099517

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P2725394052069516161.Spec : Prop :=
  ∀ n, P2725394052069516161.a n = A099517 n

theorem P2725394052069516161.correct : P2725394052069516161.Spec := by
  intro n
  simp only [A099517]

end A099517

/-! ## A099517.P12502698418254860388

`A057079(n+1)/6+A000045(n+3)/2-A010694(n)/6`
-/

namespace A099517.P12502698418254860388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (n + 1) : ℚ) / 6 + (A000045 (n + 3) : ℚ) / 2 - (A010694 n : ℚ) / 6

end

end A099517.P12502698418254860388

namespace A099517

/-- `A057079(n+1)/6+A000045(n+3)/2-A010694(n)/6` -/
def P12502698418254860388.Spec : Prop :=
  ∀ n, P12502698418254860388.a n = (A099517 n : ℚ)

end A099517

/-! ## A099517.P9425034888647978336

`A173433(n+3)-1`
-/

namespace A099517.P9425034888647978336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 3) - 1

end

end A099517.P9425034888647978336

namespace A099517

/-- `A173433(n+3)-1` -/
def P9425034888647978336.Spec : Prop :=
  ∀ n, P9425034888647978336.a n = A099517 n

end A099517

/-! ## A099517.P7474888994855486183

`∑[A000045(n)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A099517.P7474888994855486183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A000045 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099517.P7474888994855486183

namespace A099517

/-- `∑[A000045(n)-a(n-3)]` -/
def P7474888994855486183.Spec : Prop :=
  ∀ n, P7474888994855486183.a n = A099517 n

end A099517

/-! ## A099517.P17455692009114063546

`∑[or(and(1, n+1), A004695(n+1))]`
-/

namespace A099517.P17455692009114063546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 (n + 1) : ℤ) (A004695 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099517.P17455692009114063546

namespace A099517

/-- `∑[or(and(1, n+1), A004695(n+1))]` -/
def P17455692009114063546.Spec : Prop :=
  ∀ n, P17455692009114063546.a n = A099517 n

end A099517

/-! ## A099517.P12264438251154195807

`A000045(n+2)-(a(n-3)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A099517.P12264438251154195807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000045 (n + 2) - (a (n - 3) + 1)

end

end A099517.P12264438251154195807

namespace A099517

/-- `A000045(n+2)-(a(n-3)+1)` -/
def P12264438251154195807.Spec : Prop :=
  ∀ n, P12264438251154195807.a n = A099517 n

end A099517

/-! ## A099517.P8750637047782644727

`A279890(n)+A212804(n)`
-/

namespace A099517.P8750637047782644727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279890 n + A212804 n

end

end A099517.P8750637047782644727

namespace A099517

/-- `A279890(n)+A212804(n)` -/
def P8750637047782644727.Spec : Prop :=
  ∀ n, P8750637047782644727.a n = A099517 n

end A099517

/-! ## A099517.P11803420344339399521

`A131132(n)+A004697(n+1)`
-/

namespace A099517.P11803420344339399521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 n + A004697 (n + 1)

end

end A099517.P11803420344339399521

namespace A099517

/-- `A131132(n)+A004697(n+1)` -/
def P11803420344339399521.Spec : Prop :=
  ∀ n, P11803420344339399521.a n = A099517 n

end A099517

/-! ## A099517.P1843936397867299525

`A130578(n+1)+A088911(n)`
-/

namespace A099517.P1843936397867299525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1) + A088911 n

end

end A099517.P1843936397867299525

namespace A099517

/-- `A130578(n+1)+A088911(n)` -/
def P1843936397867299525.Spec : Prop :=
  ∀ n, P1843936397867299525.a n = A099517 n

end A099517

/-! ## A099517.P4626824901174628426

`∑[A174618(A047261(n+2)-2)]`
-/

namespace A099517.P4626824901174628426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047261 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099517.P4626824901174628426

namespace A099517

/-- `∑[A174618(A047261(n+2)-2)]` -/
def P4626824901174628426.Spec : Prop :=
  ∀ n, P4626824901174628426.a n = A099517 n

end A099517

/-! ## A099517.P301683143326972225

`∑[A293014(n)]+A000045(n+1)`
-/

namespace A099517.P301683143326972225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 (n + 1)

end

end A099517.P301683143326972225

namespace A099517

/-- `∑[A293014(n)]+A000045(n+1)` -/
def P301683143326972225.Spec : Prop :=
  ∀ n, P301683143326972225.a n = A099517 n

end A099517

/-! ## A099517.P13706794994531467354

`A173434(n+3)+A131531(n+3)`
-/

namespace A099517.P13706794994531467354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 3) + A131531 (n + 3)

end

end A099517.P13706794994531467354

namespace A099517

/-- `A173434(n+3)+A131531(n+3)` -/
def P13706794994531467354.Spec : Prop :=
  ∀ n, P13706794994531467354.a n = A099517 n

end A099517

/-! ## A099517.P4206930515803766040

`A079962(n+1)+A293552(n+1)-1`
-/

namespace A099517.P4206930515803766040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (n + 1) + (A293552 (n + 1) - 1)

end

end A099517.P4206930515803766040

namespace A099517

/-- `A079962(n+1)+A293552(n+1)-1` -/
def P4206930515803766040.Spec : Prop :=
  ∀ n, P4206930515803766040.a n = A099517 n

end A099517

/-! ## A099517.P1349386193484425701

`A000045(n+1)+A293553(n)+A004697(n)`
-/

namespace A099517.P1349386193484425701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A293553 n + A004697 n)

end

end A099517.P1349386193484425701

namespace A099517

/-- `A000045(n+1)+A293553(n)+A004697(n)` -/
def P1349386193484425701.Spec : Prop :=
  ∀ n, P1349386193484425701.a n = A099517 n

end A099517

/-! ## A099517.P17503204804050846178

`A004695(n+1)+A293553(n)+A079962(n)`
-/

namespace A099517.P17503204804050846178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A293553 n + A079962 n)

end

end A099517.P17503204804050846178

namespace A099517

/-- `A004695(n+1)+A293553(n)+A079962(n)` -/
def P17503204804050846178.Spec : Prop :=
  ∀ n, P17503204804050846178.a n = A099517 n

end A099517

/-! ## A099517.P11715411992128598612

`A000045(n+1)+A279890(n)-A000045(n)`
-/

namespace A099517.P11715411992128598612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A279890 n - A000045 n)

end

end A099517.P11715411992128598612

namespace A099517

/-- `A000045(n+1)+A279890(n)-A000045(n)` -/
def P11715411992128598612.Spec : Prop :=
  ∀ n, P11715411992128598612.a n = A099517 n

end A099517

/-! ## A099517.P1254954927540054074

`A074331(n+1)+A279890(n)-A062114(n)`
-/

namespace A099517.P1254954927540054074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 1) + (A279890 n - A062114 n)

end

end A099517.P1254954927540054074

namespace A099517

/-- `A074331(n+1)+A279890(n)-A062114(n)` -/
def P1254954927540054074.Spec : Prop :=
  ∀ n, P1254954927540054074.a n = A099517 n

end A099517

/-! ## A099517.P9984974810404292254

`A179006(n+1)+A131132(n)-A179006(n)`
-/

namespace A099517.P9984974810404292254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 (n + 1) + (A131132 n - A179006 n)

end

end A099517.P9984974810404292254

namespace A099517

/-- `A179006(n+1)+A131132(n)-A179006(n)` -/
def P9984974810404292254.Spec : Prop :=
  ∀ n, P9984974810404292254.a n = A099517 n

end A099517

/-! ## A099517.P5087297932921778459

`A131132(n+1)-(A293553(n+1)+A293552(n))`
-/

namespace A099517.P5087297932921778459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 (n + 1) - (A293553 (n + 1) + A293552 n)

end

end A099517.P5087297932921778459

namespace A099517

/-- `A131132(n+1)-(A293553(n+1)+A293552(n))` -/
def P5087297932921778459.Spec : Prop :=
  ∀ n, P5087297932921778459.a n = A099517 n

end A099517

/-!
# A099518: RECORDS transform of A099506.

The programs for A099518, there is no canonical definition to state claims against.
-/

/-! ## A099518.P4308404837180530373

`record[A099506(n+1)]`
-/

namespace A099518.P4308404837180530373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099518.P4308404837180530373

/-! ## A099518.P7826816710096461021

`A099506(A099519(n+1))`
-/

namespace A099518.P7826816710096461021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099506 (A099519 (n + 1)).toNat

end

end A099518.P7826816710096461021

/-! ## A099518.P4150738368562970582

`record[ratio[A099506(A152271(n))]]`
-/

namespace A099518.P4150738368562970582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099506 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099518.P4150738368562970582

/-! ## A099518.P7197690233310405617

`record[A099506(A152271(n))%A017233(n)]`
-/

namespace A099518.P7197690233310405617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099506 (A152271 n).toNat) (A017233 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099518.P7197690233310405617

/-! ## A099518.P12256430102821214901

`record[A099506(A152271(n))]%A042510(n)`
-/

namespace A099518.P12256430102821214901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099506 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A042510 n)

end

end A099518.P12256430102821214901

/-!
# A099519: Positions in A099506 of the values in the RECORDS transform of that sequence (A099518).

The programs for A099519, there is no canonical definition to state claims against.
-/

/-! ## A099519.P11089789645350282139

`A099507(A099518(n+1))`
-/

namespace A099519.P11089789645350282139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099507 (A099518 (n + 1)).toNat

end

end A099519.P11089789645350282139

/-! ## A099519.P10772754481396773100

`A099507(record[A099506(n+1)])`
-/

namespace A099519.P10772754481396773100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099519.P10772754481396773100

/-!
# A099522: RECORDS transform of A099520.

The programs for A099522, there is no canonical definition to state claims against.
-/

/-! ## A099522.P9131626120676159644

`record[A099520(n+1)]`
-/

namespace A099522.P9131626120676159644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099522.P9131626120676159644

/-! ## A099522.P10702345333857677925

`A099520(A099523(n+1))`
-/

namespace A099522.P10702345333857677925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099520 (A099523 (n + 1)).toNat

end

end A099522.P10702345333857677925

/-! ## A099522.P1970026873297380893

`record[ratio[A099520(A152271(n))]]`
-/

namespace A099522.P1970026873297380893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099520 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099522.P1970026873297380893

/-!
# A099523: Positions in sequence A099520 at which its records (as given in A099522) appear.

The programs for A099523, there is no canonical definition to state claims against.
-/

/-! ## A099523.P492919811868080748

`A099521(A099522(n+1))`
-/

namespace A099523.P492919811868080748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099521 (A099522 (n + 1)).toNat

end

end A099523.P492919811868080748

/-! ## A099523.P7267090166583969028

`A099521(record[A099520(n+1)])`
-/

namespace A099523.P7267090166583969028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099521 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099523.P7267090166583969028

/-!
# A099524: Expansion of 1/(1-5*x-x^3).

The programs for A099524, the canonical program `A099524.P4360997659319693649` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099524 has offset 0).

The definition of A099524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x-x^3))` (program `A099524.P4360997659319693649`, by `A099524.P4360997659319693649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099524.P4360997659319693649

`ogf(1/(1-5x-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099524

/-- `ogf(1/(1-5x-x^3))` -/
def P4360997659319693649.Spec : Prop :=
  ∀ n, P4360997659319693649.a n = A099524 n

theorem P4360997659319693649.correct : P4360997659319693649.Spec := by
  intro n
  simp only [A099524]

end A099524

/-! ## A099524.P1262333966677312559

`5*a(n-1)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A099524.P1262333966677312559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  5 * a (n - 1) + a (n - 3)

end

end A099524.P1262333966677312559

namespace A099524

/-- `5*a(n-1)+a(n-3)` -/
def P1262333966677312559.Spec : Prop :=
  ∀ n, (P1262333966677312559.a n : ℤ) = A099524 n

end A099524

/-!
# A099525: Expansion of 1/(1-2x-3x^3).

The programs for A099525, the canonical program `A099525.P7511113134970351632` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099525 has offset 0).

The definition of A099525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^3))` (program `A099525.P7511113134970351632`, by `A099525.P7511113134970351632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099525.P7511113134970351632

`ogf(1/(1-2x-3x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099525

/-- `ogf(1/(1-2x-3x^3))` -/
def P7511113134970351632.Spec : Prop :=
  ∀ n, P7511113134970351632.a n = A099525 n

theorem P7511113134970351632.correct : P7511113134970351632.Spec := by
  intro n
  simp only [A099525]

end A099525

/-! ## A099525.P3267726710188698266

`2*a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A099525.P3267726710188698266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + 3 * a (n - 3)

end

end A099525.P3267726710188698266

namespace A099525

/-- `2*a(n-1)+3*a(n-3)` -/
def P3267726710188698266.Spec : Prop :=
  ∀ n, (P3267726710188698266.a n : ℤ) = A099525 n

end A099525

/-! ## A099525.P6701587238707524532

`A255630(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099525.P6701587238707524532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A255630 n - a (n - 2)

end

end A099525.P6701587238707524532

namespace A099525

/-- `A255630(n)-a(n-2)` -/
def P6701587238707524532.Spec : Prop :=
  ∀ n, P6701587238707524532.a n = A099525 n

end A099525

/-! ## A099525.P2566969947990037944

`A100196(A034742(n+1)+A007582(n))`
-/

namespace A099525.P2566969947990037944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A034742 (n + 1) + A007582 n).toNat

end

end A099525.P2566969947990037944

namespace A099525

/-- `A100196(A034742(n+1)+A007582(n))` -/
def P2566969947990037944.Spec : Prop :=
  ∀ n, P2566969947990037944.a n = A099525 n

end A099525

/-!
# A099526: Expansion of 1/(1-2x-3x^4).

The programs for A099526, the canonical program `A099526.P8455677778497943553` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099526 has offset 0).

The definition of A099526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^4))` (program `A099526.P8455677778497943553`, by `A099526.P8455677778497943553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099526.P8455677778497943553

`ogf(1/(1-2x-3x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099526

/-- `ogf(1/(1-2x-3x^4))` -/
def P8455677778497943553.Spec : Prop :=
  ∀ n, P8455677778497943553.a n = A099526 n

theorem P8455677778497943553.correct : P8455677778497943553.Spec := by
  intro n
  simp only [A099526]

end A099526

/-! ## A099526.P5549532195121497857

`2*a(n-1)+3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A099526.P5549532195121497857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  2 * a (n - 1) + 3 * a (n - 4)

end

end A099526.P5549532195121497857

namespace A099526

/-- `2*a(n-1)+3*a(n-4)` -/
def P5549532195121497857.Spec : Prop :=
  ∀ n, (P5549532195121497857.a n : ℤ) = A099526 n

end A099526

/-! ## A099526.P14386762129711093743

`A137256(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A099526.P14386762129711093743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A137256 n - a (n - 3)

end

end A099526.P14386762129711093743

namespace A099526

/-- `A137256(n)-a(n-3)` -/
def P14386762129711093743.Spec : Prop :=
  ∀ n, P14386762129711093743.a n = A099526 n

end A099526

/-! ## A099526.P16913621994894422778

`A052103(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A099526.P16913621994894422778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052103 (n + 2) - a (n - 1)

end

end A099526.P16913621994894422778

namespace A099526

/-- `A052103(n+2)-a(n-1)` -/
def P16913621994894422778.Spec : Prop :=
  ∀ n, P16913621994894422778.a n = A099526 n

end A099526

/-! ## A099526.P7146858464851538463

`∑[A052101(n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099526.P7146858464851538463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A099526.P7146858464851538463

namespace A099526

/-- `∑[A052101(n)]+a(n-2)` -/
def P7146858464851538463.Spec : Prop :=
  ∀ n, P7146858464851538463.a n = A099526 n

end A099526

/-! ## A099526.P16308174669102947728

`A052102(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099526.P16308174669102947728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A052102 (n + 1) + a (n - 2)

end

end A099526.P16308174669102947728

namespace A099526

/-- `A052102(n+1)+a(n-2)` -/
def P16308174669102947728.Spec : Prop :=
  ∀ n, P16308174669102947728.a n = A099526 n

end A099526

/-! ## A099526.P18279778503746722710

`Δ[Δ[A137247(n+1)+a(n-2)]]` with `a(0)=0, a(1)=0`
-/

namespace A099526.P18279778503746722710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A137247 (n + 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099526.P18279778503746722710

namespace A099526

/-- `Δ[Δ[A137247(n+1)+a(n-2)]]` -/
def P18279778503746722710.Spec : Prop :=
  ∀ n, P18279778503746722710.a n = A099526 n

end A099526

/-!
# A099528: Row sums of triangle A099527, so that a(n) = Sum_{k=0..n} coefficient of z^k in (2 + 3*z + z^2)^(n-[k/2]), where [k/2] is the integer floor of k/2.

The programs for A099528, the canonical program `A099528.P13683702638449507703` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099528 has offset 0).

The definition of A099528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099528.P13683702638449507703

`ogf((1+x-x^2)/(1-4x+2x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099528

/-- `ogf((1+x-x^2)/(1-4x+2x^2-5x^3+x^4))` -/
def P13683702638449507703.Spec : Prop :=
  ∀ n, P13683702638449507703.a n = A099528 n

theorem P13683702638449507703.correct : P13683702638449507703.Spec := by
  intro n
  simp only [A099528]

end A099528

/-! ## A099528.P12475961799198535278

`A124370(2*n+1)+A124370(2*n)`
-/

namespace A099528.P12475961799198535278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124370 (2 * n + 1) + A124370 (2 * n)

end

end A099528.P12475961799198535278

namespace A099528

/-- `A124370(2*n+1)+A124370(2*n)` -/
def P12475961799198535278.Spec : Prop :=
  ∀ n, P12475961799198535278.a n = A099528 n

end A099528

/-!
# A099529: Expansion of (1+x)^2/((1+x)^2+x^3).

The programs for A099529, the canonical program `A099529.P7666111600368036702` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099529 has offset 0).

The definition of A099529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x+x^2+x^3))` (program `A099529.P7666111600368036702`, by `A099529.P7666111600368036702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099529.P7666111600368036702

`ogf((1+2x+x^2)/(1+2x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099529

/-- `ogf((1+2x+x^2)/(1+2x+x^2+x^3))` -/
def P7666111600368036702.Spec : Prop :=
  ∀ n, P7666111600368036702.a n = A099529 n

theorem P7666111600368036702.correct : P7666111600368036702.Spec := by
  intro n
  simp only [A099529]

end A099529

/-! ## A099529.P7754797928762001120

`a(n-2)+a(n-4)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A099529.P7754797928762001120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n a =>
  a (n - 2) + (a (n - 4) - a (n - 1))

end

end A099529.P7754797928762001120

namespace A099529

/-- `a(n-2)+a(n-4)-a(n-1)` -/
def P7754797928762001120.Spec : Prop :=
  ∀ n, P7754797928762001120.a n = A099529 n

end A099529

/-! ## A099529.P8984641170431892491

`floor(a(n-2)-(a(n-1)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A099529.P8984641170431892491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 4))

end

end A099529.P8984641170431892491

namespace A099529

/-- `floor(a(n-2)-(a(n-1)-a(n-4)))` -/
def P8984641170431892491.Spec : Prop :=
  ∀ n, P8984641170431892491.a n = A099529 n

end A099529

/-! ## A099529.P3759474087161684308

`(-1)^n*Δ[A005251(n)]`
-/

namespace A099529.P3759474087161684308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A099529.P3759474087161684308

namespace A099529

/-- `(-1)^n*Δ[A005251(n)]` -/
def P3759474087161684308.Spec : Prop :=
  ∀ n, P3759474087161684308.a n = A099529 n

end A099529

/-! ## A099529.P12428387522022349426

`(-1)^n*A000931(2*n)`
-/

namespace A099529.P12428387522022349426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000931 (2 * n)

end

end A099529.P12428387522022349426

namespace A099529

/-- `(-1)^n*A000931(2*n)` -/
def P12428387522022349426.Spec : Prop :=
  ∀ n, P12428387522022349426.a n = A099529 n

end A099529

/-! ## A099529.P16020046205614985527

`A078027(2*(n+1))/(-1)^n`
-/

namespace A099529.P16020046205614985527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078027 (2 * (n + 1)) : ℚ) / ((-1) ^ n : ℚ)

end

end A099529.P16020046205614985527

namespace A099529

/-- `A078027(2*(n+1))/(-1)^n` -/
def P16020046205614985527.Spec : Prop :=
  ∀ n, P16020046205614985527.a n = (A099529 n : ℚ)

end A099529

/-! ## A099529.P11451588433035853525

`A000931(2*n)*A033999(n)`
-/

namespace A099529.P11451588433035853525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) * A033999 n

end

end A099529.P11451588433035853525

namespace A099529

/-- `A000931(2*n)*A033999(n)` -/
def P11451588433035853525.Spec : Prop :=
  ∀ n, P11451588433035853525.a n = A099529 n

end A099529

/-! ## A099529.P3352046531939227455

`A033999(n)*A078027(2*(n+1))`
-/

namespace A099529.P3352046531939227455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078027 (2 * (n + 1))

end

end A099529.P3352046531939227455

namespace A099529

/-- `A033999(n)*A078027(2*(n+1))` -/
def P3352046531939227455.Spec : Prop :=
  ∀ n, P3352046531939227455.a n = A099529 n

end A099529

/-! ## A099529.P7157444151252184447

`A000931(2*n)*A056594(2*n)`
-/

namespace A099529.P7157444151252184447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) * A056594 (2 * n)

end

end A099529.P7157444151252184447

namespace A099529

/-- `A000931(2*n)*A056594(2*n)` -/
def P7157444151252184447.Spec : Prop :=
  ∀ n, P7157444151252184447.a n = A099529 n

end A099529

/-! ## A099529.P14597415687562461040

`A000931(2*n)*A057077(2*n)`
-/

namespace A099529.P14597415687562461040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) * A057077 (2 * n)

end

end A099529.P14597415687562461040

namespace A099529

/-- `A000931(2*n)*A057077(2*n)` -/
def P14597415687562461040.Spec : Prop :=
  ∀ n, P14597415687562461040.a n = A099529 n

end A099529

/-! ## A099529.P14123663724562807065

`Δ[A000931(n+1+n)]/A033999(n)`
-/

namespace A099529.P14123663724562807065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A033999 n : ℚ)

end

end A099529.P14123663724562807065

namespace A099529

/-- `Δ[A000931(n+1+n)]/A033999(n)` -/
def P14123663724562807065.Spec : Prop :=
  ∀ n, P14123663724562807065.a n = (A099529 n : ℚ)

end A099529

/-! ## A099529.P14633678674879236461

`A000931(2*n)*A101455(2*n+1)`
-/

namespace A099529.P14633678674879236461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) * A101455 (2 * n + 1)

end

end A099529.P14633678674879236461

namespace A099529

/-- `A000931(2*n)*A101455(2*n+1)` -/
def P14633678674879236461.Spec : Prop :=
  ∀ n, P14633678674879236461.a n = A099529 n

end A099529

/-!
# A099530: Expansion of 1/(1 - x + x^4).

The programs for A099530, the canonical program `A099530.P535924749151845623` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099530 has offset 0).

The definition of A099530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^4))` (program `A099530.P535924749151845623`, by `A099530.P535924749151845623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099530.P535924749151845623

`ogf(1/(1-x+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099530

/-- `ogf(1/(1-x+x^4))` -/
def P535924749151845623.Spec : Prop :=
  ∀ n, P535924749151845623.a n = A099530 n

theorem P535924749151845623.correct : P535924749151845623.Spec := by
  intro n
  simp only [A099530]

end A099530

/-! ## A099530.P1563732537124654158

`a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A099530.P1563732537124654158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) - a (n - 4)

end

end A099530.P1563732537124654158

namespace A099530

/-- `a(n-1)-a(n-4)` -/
def P1563732537124654158.Spec : Prop :=
  ∀ n, P1563732537124654158.a n = A099530 n

end A099530

/-! ## A099530.P5903740602875354485

`∑{#}[floor(n/4), C(n-3*#, #)*(-1)^#]`
-/

namespace A099530.P5903740602875354485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (3 * k : ℤ)).toNat k : ℤ) * (-1) ^ k

end

end A099530.P5903740602875354485

namespace A099530

/-- `∑{#}[floor(n/4), C(n-3*#, #)*(-1)^#]` -/
def P5903740602875354485.Spec : Prop :=
  ∀ n, P5903740602875354485.a n = A099530 n

end A099530

/-! ## A099530.P8396149171872633277

`Δ[A125629(n+1)+A125629(n+3)]`
-/

namespace A099530.P8396149171872633277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125629 (n + 1) + A125629 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099530.P8396149171872633277

namespace A099530

/-- `Δ[A125629(n+1)+A125629(n+3)]` -/
def P8396149171872633277.Spec : Prop :=
  ∀ n, P8396149171872633277.a n = A099530 n

end A099530

/-! ## A099530.P1830640154792316491

`A193884(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099530.P1830640154792316491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A193884 n + a (n - 2)

end

end A099530.P1830640154792316491

namespace A099530

/-- `A193884(n)+a(n-2)` -/
def P1830640154792316491.Spec : Prop :=
  ∀ n, P1830640154792316491.a n = A099530 n

end A099530

/-! ## A099530.P13740930272121851029

`∑{#}[floor(n/4), (-1)^#*C(n-3*#, #)]`
-/

namespace A099530.P13740930272121851029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose ((n : ℤ) - (3 * k : ℤ)).toNat k : ℤ)

end

end A099530.P13740930272121851029

namespace A099530

/-- `∑{#}[floor(n/4), (-1)^#*C(n-3*#, #)]` -/
def P13740930272121851029.Spec : Prop :=
  ∀ n, P13740930272121851029.a n = A099530 n

end A099530

/-!
# A099531: Expansion of (1+x)^3/((1+x)^3+x^4).

The programs for A099531, the canonical program `A099531.P12325230513616724631` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099531 has offset 0).

The definition of A099531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+3x^2+x^3)/(1+3x+3x^2+x^3+x^4))` (program `A099531.P12325230513616724631`, by `A099531.P12325230513616724631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099531.P12325230513616724631

`ogf((1+3x+3x^2+x^3)/(1+3x+3x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099531

/-- `ogf((1+3x+3x^2+x^3)/(1+3x+3x^2+x^3+x^4))` -/
def P12325230513616724631.Spec : Prop :=
  ∀ n, P12325230513616724631.a n = A099531 n

theorem P12325230513616724631.correct : P12325230513616724631.Spec := by
  intro n
  simp only [A099531]

end A099531

/-! ## A099531.P6310939162051162280

`A033999(n)*A124750(3*(n+1))`
-/

namespace A099531.P6310939162051162280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124750 (3 * (n + 1))

end

end A099531.P6310939162051162280

namespace A099531

/-- `A033999(n)*A124750(3*(n+1))` -/
def P6310939162051162280.Spec : Prop :=
  ∀ n, P6310939162051162280.a n = A099531 n

end A099531

/-! ## A099531.P13597361974200178537

`or((-1)^n*A124750(3*(n+1)), A000007(n))`
-/

namespace A099531.P13597361974200178537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n * A124750 (3 * (n + 1))) (A000007 n)

end

end A099531.P13597361974200178537

namespace A099531

/-- `or((-1)^n*A124750(3*(n+1)), A000007(n))` -/
def P13597361974200178537.Spec : Prop :=
  ∀ n, P13597361974200178537.a n = A099531 n

end A099531

/-! ## A099531.P14721357025706379547

`(A059841(n)-A059841(n+1))*A124750(3*(n+1))`
-/

namespace A099531.P14721357025706379547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n - A059841 (n + 1)) * A124750 (3 * (n + 1))

end

end A099531.P14721357025706379547

namespace A099531

/-- `(A059841(n)-A059841(n+1))*A124750(3*(n+1))` -/
def P14721357025706379547.Spec : Prop :=
  ∀ n, P14721357025706379547.a n = A099531 n

end A099531

/-! ## A099531.P14926921060204298993

`or((-1)^n, A074206(A107286(n)))*A124750(3*(n+1))`
-/

namespace A099531.P14926921060204298993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A074206 (A107286 n).toNat) * A124750 (3 * (n + 1))

end

end A099531.P14926921060204298993

namespace A099531

/-- `or((-1)^n, A074206(A107286(n)))*A124750(3*(n+1))` -/
def P14926921060204298993.Spec : Prop :=
  ∀ n, P14926921060204298993.a n = A099531 n

end A099531

/-! ## A099531.P15256789195253355493

`∑{#}[n, (-1)^(n-#)*C(n, #)*A099530(#)]`
-/

namespace A099531.P15256789195253355493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A099530 k : ℚ)

end

end A099531.P15256789195253355493

namespace A099531

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A099530(#)]` -/
def P15256789195253355493.Spec : Prop :=
  ∀ n, P15256789195253355493.a n = (A099531 n : ℚ)

end A099531

/-!
# A099532: Lesser of a,b where n^2 = a^3 + b^3; a,b > 0 and gcd(a,b)=1. The greater of a,b is the corresponding term in A099533 and n, which is used to order this sequence, is the corresponding term in A099426.

The programs for A099532, there is no canonical definition to state claims against.
-/

/-! ## A099532.P4709936974690205667

`A103255(or(A015929(n+1), A073788(n)))`
-/

namespace A099532.P4709936974690205667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103255 (Int.lor (A015929 (n + 1)) (A073788 n)).toNat

end

end A099532.P4709936974690205667

/-! ## A099532.P9779445928476379525

`A103255(or(A073788(n), A103254(n+1)))`
-/

namespace A099532.P9779445928476379525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103255 (Int.lor (A073788 n) (A103254 (n + 1))).toNat

end

end A099532.P9779445928476379525

/-!
# A099533: Greater of a,b where n^2 = a^3 + b^3; a,b>0 and gcd(a,b)=1. The lesser of a,b is the corresponding term in A099532 and n, which is used to order this sequence, is the corresponding term in A099426.

The programs for A099533, there is no canonical definition to state claims against.
-/

/-! ## A099533.P3434226172178516073

`A282639(or(A323533(n), A334436(n)))`
-/

namespace A099533.P3434226172178516073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282639 (Int.lor (A323533 n) (A334436 n)).toNat

end

end A099533.P3434226172178516073

/-! ## A099533.P9965300033976020340

`A282639(A334433(n)+A228911(n))`
-/

namespace A099533.P9965300033976020340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282639 (A334433 n + A228911 n).toNat

end

end A099533.P9965300033976020340

/-! ## A099533.P74641091019516386

`A282639(abs(A228911(n)-A334433(n)))`
-/

namespace A099533.P74641091019516386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282639 |A228911 n - A334433 n|.toNat

end

end A099533.P74641091019516386

/-! ## A099533.P8218073615621477526

`A282639(A114622(n+1)%A118560(n+3))`
-/

namespace A099533.P8218073615621477526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282639 (Int.tmod (A114622 (n + 1)) (A118560 (n + 3))).toNat

end

end A099533.P8218073615621477526

/-!
# A099534: a(n)=Sum of the first n decimal places of e.

The programs for A099534, there is no canonical definition to state claims against.
-/

/-! ## A099534.P2769877527450031662

`A046975(n+1)-2`
-/

namespace A099534.P2769877527450031662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 (n + 1) - 2

end

end A099534.P2769877527450031662

/-! ## A099534.P7991524590610846395

`∑[A001113(1+n)]`
-/

namespace A099534.P7991524590610846395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (1 + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P7991524590610846395

/-! ## A099534.P3574395868192695153

`∑[9-A153805(n)]`
-/

namespace A099534.P3574395868192695153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P3574395868192695153

/-! ## A099534.P5484219466131066487

`∑[A000796(n+1)-A187747(n+1)]`
-/

namespace A099534.P5484219466131066487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) - A187747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P5484219466131066487

/-! ## A099534.P17705426172971719041

`∑[A091131(n+1)]`
-/

namespace A099534.P17705426172971719041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P17705426172971719041

/-! ## A099534.P6853264733151277212

`∑[abs(Δ[A046975(n)])]`
-/

namespace A099534.P6853264733151277212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P6853264733151277212

/-! ## A099534.P4403514698441548286

`∑[A073212(n+1)-A000796(n+1)]`
-/

namespace A099534.P4403514698441548286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (n + 1) - A000796 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P4403514698441548286

/-! ## A099534.P11608165474678508764

`A197563(n+1)-(A046974(n+1)+2)`
-/

namespace A099534.P11608165474678508764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 (n + 1) - (A046974 (n + 1) + 2)

end

end A099534.P11608165474678508764

/-! ## A099534.P13745124953755052368

`∑[A001355(2*(n+2))]`
-/

namespace A099534.P13745124953755052368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P13745124953755052368

/-! ## A099534.P7124469400460710865

`A023444(A046975(n+1))`
-/

namespace A099534.P7124469400460710865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A046975 (n + 1)).toNat

end

end A099534.P7124469400460710865

/-! ## A099534.P6251413651684006621

`∑[abs(Δ[A338108(n+1)])]`
-/

namespace A099534.P6251413651684006621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P6251413651684006621

/-! ## A099534.P18023603208977276422

`A000720(A217329(n+2))-2`
-/

namespace A099534.P18023603208977276422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A217329 (n + 2)).toNat - 2

end

end A099534.P18023603208977276422

/-! ## A099534.P12702743122304986915

`A082513(A217329(n+2))`
-/

namespace A099534.P12702743122304986915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A217329 (n + 2)).toNat

end

end A099534.P12702743122304986915

/-! ## A099534.P17258969693457673663

`∑{digits}[A039920(n+1), #]`
-/

namespace A099534.P17258969693457673663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A099534.P17258969693457673663

/-! ## A099534.P4737126529547258688

`∑[∑[A095942(n+1)]+2]`
-/

namespace A099534.P4737126529547258688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095942 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099534.P4737126529547258688

/-!
# A099535: Sum of the first n decimal places of log(2).

The programs for A099535, there is no canonical definition to state claims against.
-/

/-! ## A099535.P7140265049006841231

`∑[A002162(n)]`
-/

namespace A099535.P7140265049006841231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099535.P7140265049006841231

/-! ## A099535.P17484970686068658173

`∑[A187832(n)]+5`
-/

namespace A099535.P17484970686068658173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A099535.P17484970686068658173

/-! ## A099535.P2326419843665223141

`∑[9-A244009(n)]`
-/

namespace A099535.P2326419843665223141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A244009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099535.P2326419843665223141

/-! ## A099535.P11803795423862349689

`a(n-1)+A002162(n)-A020761(n)` with `a(0)=6`
-/

namespace A099535.P11803795423862349689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A002162 n - A020761 n)

end

end A099535.P11803795423862349689

/-!
# A099536: Sum of the first n digits of Zeta(3) (Apery's constant), including the initial 1.

The programs for A099536, there is no canonical definition to state claims against.
-/

/-! ## A099536.P7751062447273394363

`∑[A002117(1+n)]`
-/

namespace A099536.P7751062447273394363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099536.P7751062447273394363

/-! ## A099536.P1072344439170310205

`A002117(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A099536.P1072344439170310205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002117 (n + 1) + a (n - 1)

end

end A099536.P1072344439170310205

/-! ## A099536.P1632781345859308154

`dr(A002117(n+1))+a(A023443(n))` with `a(0)=1`
-/

namespace A099536.P1632781345859308154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot (A002117 (n + 1)) + a (A023443 n).toNat

end

end A099536.P1632781345859308154

/-! ## A099536.P2580122975180246140

`A158388(n)+A099537(A028310(n))`
-/

namespace A099536.P2580122975180246140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A099537 (A028310 n).toNat

end

end A099536.P2580122975180246140

/-! ## A099536.P9678441410747765141

`A099537(A028310(n))+1-A000038(n)`
-/

namespace A099536.P9678441410747765141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099537 (A028310 n).toNat + (1 - A000038 n)

end

end A099536.P9678441410747765141

/-! ## A099536.P13802869084127298675

`A099537(A028310(n))%A001597(n+1)+1`
-/

namespace A099536.P13802869084127298675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099537 (A028310 n).toNat) (A001597 (n + 1)) + 1

end

end A099536.P13802869084127298675

/-!
# A099537: Sum of the first n decimal places of zeta(3) (Apery's constant). This does not include the initial "1." of zeta(3).

The programs for A099537, there is no canonical definition to state claims against.
-/

/-! ## A099537.P15532888914524994

`A099536(n+2)-1`
-/

namespace A099537.P15532888914524994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 2) - 1

end

end A099537.P15532888914524994

/-! ## A099537.P12148287664551930356

`∑[A002117(2+n)]`
-/

namespace A099537.P12148287664551930356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099537.P12148287664551930356

/-! ## A099537.P14331427480798081549

`∑[abs(Δ[A099536(n+1)])]`
-/

namespace A099537.P14331427480798081549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099537.P14331427480798081549

/-! ## A099537.P4479671970744303282

`A002117(n+2)+a(n-1)` with `a(0)=2`
-/

namespace A099537.P4479671970744303282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002117 (n + 2) + a (n - 1)

end

end A099537.P4479671970744303282

/-! ## A099537.P5622384842224188007

`∑[A003100(Δ[A099536(n+1)])]`
-/

namespace A099537.P5622384842224188007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099537.P5622384842224188007

/-! ## A099537.P17627844950394807751

`∑[A007953(Δ[A099536(n+1)])]`
-/

namespace A099537.P17627844950394807751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099537.P17627844950394807751

/-! ## A099537.P6678620409324739341

`A023443(A099536(n+2))`
-/

namespace A099537.P6678620409324739341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099536 (n + 2)).toNat

end

end A099537.P6678620409324739341

/-!
# A099538: Sum of the first n digits of sqrt(2), including the initial "1".

The programs for A099538, there is no canonical definition to state claims against.
-/

/-! ## A099538.P10991716902783886172

`∑[A002193(n)]`
-/

namespace A099538.P10991716902783886172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P10991716902783886172

/-! ## A099538.P2481029261946984380

`∑[A020807(n)]`
-/

namespace A099538.P2481029261946984380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P2481029261946984380

/-! ## A099538.P7352756563595810170

`∑[A014176(n)]-1`
-/

namespace A099538.P7352756563595810170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099538.P7352756563595810170

/-! ## A099538.P13066381782001083831

`∑[A188582(abs(1-n))]`
-/

namespace A099538.P13066381782001083831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P13066381782001083831

/-! ## A099538.P3656931991193524641

`A188582(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A099538.P3656931991193524641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188582 (n - 1) + a (n - 1)

end

end A099538.P3656931991193524641

/-! ## A099538.P3506545384491294854

`∑[A188582(n)]+1-A188582(n)`
-/

namespace A099538.P3506545384491294854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A188582 n)

end

end A099538.P3506545384491294854

/-! ## A099538.P17366923799602929947

`a(n-1)+A002193(n)+A000007(n)` with `a(0)=1`
-/

namespace A099538.P17366923799602929947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002193 (n + 1) + A000007 n)

end

end A099538.P17366923799602929947

/-! ## A099538.P3791753816234771141

`∑[A120731(n+1)]`
-/

namespace A099538.P3791753816234771141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P3791753816234771141

/-! ## A099538.P11220533403770748573

`∑[A110812(2*n+1)]`
-/

namespace A099538.P11220533403770748573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P11220533403770748573

/-! ## A099538.P13933778739933757188

`a(n-1)+A049084(2*(n+1))+A002193(n)` with `a(0)=1`
-/

namespace A099538.P13933778739933757188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A049084 (2 * (n + 1)) + A002193 (n + 1))

end

end A099538.P13933778739933757188

/-! ## A099538.P14087883632906257515

`∑[A098364(∑[n]+1)]`
-/

namespace A099538.P14087883632906257515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099538.P14087883632906257515

/-! ## A099538.P17959045496731124340

`∑{digits}[A011547(n), #]`
-/

namespace A099538.P17959045496731124340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011547 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A099538.P17959045496731124340

/-! ## A099538.P1168064621667314770

`∑{digits}[A083377(2*n+1), #]`
-/

namespace A099538.P1168064621667314770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A099538.P1168064621667314770

/-!
# A099539: Sum of the first n decimal places of sqrt(2).

The programs for A099539, there is no canonical definition to state claims against.
-/

/-! ## A099539.P11458137123400687682

`A099538(n+2)-1`
-/

namespace A099539.P11458137123400687682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 2) - 1

end

end A099539.P11458137123400687682

/-! ## A099539.P44282566986426920

`∑[A188582(n)]`
-/

namespace A099539.P44282566986426920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P44282566986426920

/-! ## A099539.P5995573192728290932

`∑[A002193(n+1)]`
-/

namespace A099539.P5995573192728290932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P5995573192728290932

/-! ## A099539.P16231213539916846187

`∑[A014176(n+1)]`
-/

namespace A099539.P16231213539916846187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P16231213539916846187

/-! ## A099539.P13176575854199900637

`∑[A020807(n+1)]`
-/

namespace A099539.P13176575854199900637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P13176575854199900637

/-! ## A099539.P8396926526965935031

`∑[abs(Δ[A099538(n+1)])]`
-/

namespace A099539.P8396926526965935031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P8396926526965935031

/-! ## A099539.P7082455330254759455

`∑[A007953(Δ[A099538(n+1)])]`
-/

namespace A099539.P7082455330254759455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P7082455330254759455

/-! ## A099539.P4316139700436979463

`∑[A130909(Δ[A099538(n+1)])]`
-/

namespace A099539.P4316139700436979463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P4316139700436979463

/-! ## A099539.P8730194374319831393

`∑[A120731(n+2)]`
-/

namespace A099539.P8730194374319831393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P8730194374319831393

/-! ## A099539.P7580943898404930017

`A023443(A099538(n+2))`
-/

namespace A099539.P7580943898404930017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099538 (n + 2)).toNat

end

end A099539.P7580943898404930017

/-! ## A099539.P18110723593148650257

`∑[A098364(A000124(n+1))]`
-/

namespace A099539.P18110723593148650257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P18110723593148650257

/-! ## A099539.P3477254781908536494

`∑[A098364(A253145(n+1))]`
-/

namespace A099539.P3477254781908536494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (A253145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099539.P3477254781908536494

/-!
# A099540: Sum of the first n digits of log(Pi)=1.14472988584940017...

The programs for A099540, there is no canonical definition to state claims against.
-/

/-! ## A099540.P225311547256614071

`∑[A053510(n)]`
-/

namespace A099540.P225311547256614071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099540.P225311547256614071

/-! ## A099540.P6742047315160143027

`A099541(A028310(n))+A057427(n)`
-/

namespace A099540.P6742047315160143027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099541 (A028310 n).toNat + A057427 n

end

end A099540.P6742047315160143027

/-! ## A099540.P4150103583895269508

`A099541(A028310(n))+1-A000007(n)`
-/

namespace A099540.P4150103583895269508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099541 (A028310 n).toNat + (1 - A000007 n)

end

end A099540.P4150103583895269508

/-! ## A099540.P17622042833749464564

`A099541(A028310(n))+A001221(A001316(n))`
-/

namespace A099540.P17622042833749464564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099541 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A099540.P17622042833749464564

/-! ## A099540.P4740592096696469062

`A134451(A004273(n))+A099541(A028310(n))`
-/

namespace A099540.P4740592096696469062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A004273 n).toNat + A099541 (A028310 n).toNat

end

end A099540.P4740592096696469062

/-! ## A099540.P3826028019936367543

`A099541(A028310(n))+A001222(A008578(n+1))`
-/

namespace A099540.P3826028019936367543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099541 (A028310 n).toNat + A001222 (A008578 (n + 1)).toNat

end

end A099540.P3826028019936367543

/-!
# A099541: Sum of the first n decimal places of log(Pi).

The programs for A099541, there is no canonical definition to state claims against.
-/

/-! ## A099541.P11940617129666193961

`A099540(n+2)-1`
-/

namespace A099541.P11940617129666193961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 2) - 1

end

end A099541.P11940617129666193961

/-! ## A099541.P16819930890455655452

`∑[A053510(n+1)]`
-/

namespace A099541.P16819930890455655452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053510 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P16819930890455655452

/-! ## A099541.P5921266655532474634

`∑[abs(Δ[A099540(n+1)])]`
-/

namespace A099541.P5921266655532474634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P5921266655532474634

/-! ## A099541.P3979519185442152846

`∑[A000030(Δ[A099540(n+1)])]`
-/

namespace A099541.P3979519185442152846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P3979519185442152846

/-! ## A099541.P13853261434786967443

`∑[A004086(Δ[A099540(n+1)])]`
-/

namespace A099541.P13853261434786967443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P13853261434786967443

/-! ## A099541.P3300606014839547718

`∑[A004185(Δ[A099540(n+1)])]`
-/

namespace A099541.P3300606014839547718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P3300606014839547718

/-! ## A099541.P17425106116139999933

`∑[A007953(Δ[A099540(n+1)])]`
-/

namespace A099541.P17425106116139999933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099541.P17425106116139999933

/-! ## A099541.P8472696318894112386

`A023443(A099540(n+2))`
-/

namespace A099541.P8472696318894112386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099540 (n + 2)).toNat

end

end A099541.P8472696318894112386

/-! ## A099541.P8466131922080366116

`A023481(A099540(n+2)+38)`
-/

namespace A099541.P8466131922080366116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023481 (A099540 (n + 2) + 38).toNat

end

end A099541.P8466131922080366116

/-! ## A099541.P8539679815881654110

`A023482(A099540(n+2)+39)`
-/

namespace A099541.P8539679815881654110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A099540 (n + 2) + 39).toNat

end

end A099541.P8539679815881654110

/-!
# A099542: Rhonda numbers to base 10.

The programs for A099542, there is no canonical definition to state claims against.
-/

/-! ## A099542.P1104805734220510144

`A291925(∑[n+5]+6)`
-/

namespace A099542.P1104805734220510144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A099542.P1104805734220510144

/-! ## A099542.P11052801986139083391

`A291925(A046691(n+3))/log2(4/2)`
-/

namespace A099542.P11052801986139083391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291925 (A046691 (n + 3)).toNat : ℝ) / Real.logb 2 ((4 : ℚ) / 2 : ℝ)

end

end A099542.P11052801986139083391

/-! ## A099542.P97750830328654696

`or(char[1], A291925(A056000(n+1)+6))`
-/

namespace A099542.P97750830328654696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291925 (A056000 (n + 1) + 6).toNat)

end

end A099542.P97750830328654696

/-! ## A099542.P7461605224456459385

`A291925(A046691(n+3))%A322693(n+1)`
-/

namespace A099542.P7461605224456459385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (A046691 (n + 3)).toNat) (A322693 (n + 1))

end

end A099542.P7461605224456459385

/-! ## A099542.P5502115313682997748

`A291925(A046691(n+3))+char[A202531(n+1)]`
-/

namespace A099542.P5502115313682997748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202531 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099542.P5502115313682997748

/-! ## A099542.P6469762755761842327

`A291925(A056000(n+1)+6)+A000035(2*n)`
-/

namespace A099542.P6469762755761842327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 1) + 6).toNat + A000035 (2 * n)

end

end A099542.P6469762755761842327

/-! ## A099542.P7313396423377746603

`A291925(A056000(n+1)+6)%A201092(n+2)`
-/

namespace A099542.P7313396423377746603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (A056000 (n + 1) + 6).toNat) (A201092 (n + 2))

end

end A099542.P7313396423377746603

/-! ## A099542.P13358993718169352735

`A007318(C(2, n))*A291925(A056000(n+1)+6)`
-/

namespace A099542.P13358993718169352735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291925 (A056000 (n + 1) + 6).toNat

end

end A099542.P13358993718169352735

/-! ## A099542.P10387992145784407435

`A291925(A046691(n+3))^A008683(gcd(n, n-1))`
-/

namespace A099542.P10387992145784407435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291925 (A046691 (n + 3)).toNat : ℚ) ^ (A008683 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) : ℤ)

end

end A099542.P10387992145784407435

/-! ## A099542.P5558685875552385095

`A291925(A056000(n+1)+6)+char[A017138(n)²]`
-/

namespace A099542.P5558685875552385095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 1) + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099542.P5558685875552385095

/-! ## A099542.P9318801432187028859

`ceil(1/A000041(n))*A291925(A056000(n+1)+6)`
-/

namespace A099542.P9318801432187028859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A291925 (A056000 (n + 1) + 6).toNat

end

end A099542.P9318801432187028859

/-! ## A099542.P8524334840154551037

`A000108(C(n, n²))*A291925(A056000(n+1)+6)`
-/

namespace A099542.P8524334840154551037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A291925 (A056000 (n + 1) + 6).toNat

end

end A099542.P8524334840154551037

/-! ## A099542.P2815073848763172616

`A291925(A056000(n+1)+6)/A007318(C(n, n²))`
-/

namespace A099542.P2815073848763172616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291925 (A056000 (n + 1) + 6).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A099542.P2815073848763172616

/-! ## A099542.P4019957794345702697

`A291925(A056000(n+1)+6)+A008683(9*(n+1))`
-/

namespace A099542.P4019957794345702697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 1) + 6).toNat + A008683 (9 * (n + 1))

end

end A099542.P4019957794345702697

/-! ## A099542.P10992860795287767030

`A014963(12*n+6)*A291925(A056000(n+1)+6)`
-/

namespace A099542.P10992860795287767030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A291925 (A056000 (n + 1) + 6).toNat

end

end A099542.P10992860795287767030

/-! ## A099542.P15398094634827936236

`A007318(val(n+1, 4))*A291925(A056000(n+1)+6)`
-/

namespace A099542.P15398094634827936236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A291925 (A056000 (n + 1) + 6).toNat

end

end A099542.P15398094634827936236

/-!
# A099543: Sums of the prime factors of the Rhonda numbers to base 10 (sequence A099542). The terms in this sequence are equal to (Product of digits of terms of A099542)/10, which is simply the definition of Rhonda numbers to base 10.

The programs for A099543, there is no canonical definition to state claims against.
-/

/-! ## A099543.P11526342762753378116

`A001414(A099542(n+1))`
-/

namespace A099543.P11526342762753378116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A099542 (n + 1)).toNat

end

end A099543.P11526342762753378116

/-! ## A099543.P3364870905901753175

`A076314(∏{digits}[A099542(n+1), #])`
-/

namespace A099543.P3364870905901753175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A099543.P3364870905901753175

/-! ## A099543.P9932453720868782773

`A076314(∏{digits}[A291925(∑[n+5]+6), #])`
-/

namespace A099543.P9932453720868782773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A099543.P9932453720868782773

/-! ## A099543.P1752852039528199315

`A001414(A291925(∑[n+5]+6))`
-/

namespace A099543.P1752852039528199315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 6)).toNat

end

end A099543.P1752852039528199315

/-!
# A099544: Odd part of n modulo 3.

The programs for A099544, the canonical program `A099544.P10584078921627320659` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099544 has offset 1).

The definition of A099544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099544.P10584078921627320659

`A010872(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099544

/-- `A010872(A000265(n+1))` -/
def P10584078921627320659.Spec : Prop :=
  ∀ n, P10584078921627320659.a n = A099544 (n + 1)

theorem P10584078921627320659.correct : P10584078921627320659.Spec := by
  intro n
  simp only [A099544, Nat.add_sub_cancel]

end A099544

/-! ## A099544.P12731197882623814169

`((n+1)*2^val(n+1, 2))%3`
-/

namespace A099544.P12731197882623814169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 2 % 3

end

end A099544.P12731197882623814169

namespace A099544

/-- `((n+1)*2^val(n+1, 2))%3` -/
def P12731197882623814169.Spec : Prop :=
  ∀ n, (P12731197882623814169.a n : ℤ) = A099544 (n + 1)

end A099544

/-! ## A099544.P17225341907064697916

`((n+1)/2^val(n+1, 2))%3`
-/

namespace A099544.P17225341907064697916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 3

end

end A099544.P17225341907064697916

namespace A099544

/-- `((n+1)/2^val(n+1, 2))%3` -/
def P17225341907064697916.Spec : Prop :=
  ∀ n, P17225341907064697916.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P967999029611167555

`((n+1)*(or(n, n+1)-n))%3`
-/

namespace A099544.P967999029611167555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))) 3

end

end A099544.P967999029611167555

namespace A099544

/-- `((n+1)*(or(n, n+1)-n))%3` -/
def P967999029611167555.Spec : Prop :=
  ∀ n, P967999029611167555.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P12158418526132605882

`((n+1)/(or(n, n+1)-n))%3`
-/

namespace A099544.P12158418526132605882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 3

end

end A099544.P12158418526132605882

namespace A099544

/-- `((n+1)/(or(n, n+1)-n))%3` -/
def P12158418526132605882.Spec : Prop :=
  ∀ n, P12158418526132605882.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P16915864092539853491

`((n+1)/xor(n, or(n, n+1)))%3`
-/

namespace A099544.P16915864092539853491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 3

end

end A099544.P16915864092539853491

namespace A099544

/-- `((n+1)/xor(n, or(n, n+1)))%3` -/
def P16915864092539853491.Spec : Prop :=
  ∀ n, P16915864092539853491.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P1170258300857237795

`(2^(log2(n+1)-val(n+1, 2)))%3`
-/

namespace A099544.P1170258300857237795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))) 3

end

end A099544.P1170258300857237795

namespace A099544

/-- `(2^(log2(n+1)-val(n+1, 2)))%3` -/
def P1170258300857237795.Spec : Prop :=
  ∀ n, P1170258300857237795.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P15842647178335866756

`((n+1)*and(n+1, -(n+1)))%3`
-/

namespace A099544.P15842647178335866756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3

end

end A099544.P15842647178335866756

namespace A099544

/-- `((n+1)*and(n+1, -(n+1)))%3` -/
def P15842647178335866756.Spec : Prop :=
  ∀ n, P15842647178335866756.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P6658995968127272696

`((n+1)/and(n+1, -(n+1)))%3`
-/

namespace A099544.P6658995968127272696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 3

end

end A099544.P6658995968127272696

namespace A099544

/-- `((n+1)/and(n+1, -(n+1)))%3` -/
def P6658995968127272696.Spec : Prop :=
  ∀ n, P6658995968127272696.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P16792756386030467659

`gcd(n+1, val(n+1, 2)*∑[n])%3`
-/

namespace A099544.P16792756386030467659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)) % 3

end

end A099544.P16792756386030467659

namespace A099544

/-- `gcd(n+1, val(n+1, 2)*∑[n])%3` -/
def P16792756386030467659.Spec : Prop :=
  ∀ n, (P16792756386030467659.a n : ℤ) = A099544 (n + 1)

end A099544

/-! ## A099544.P5843048005350194137

`A000265(n+1)%3`
-/

namespace A099544.P5843048005350194137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 3

end

end A099544.P5843048005350194137

namespace A099544

/-- `A000265(n+1)%3` -/
def P5843048005350194137.Spec : Prop :=
  ∀ n, P5843048005350194137.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P16239576133689070627

`A099547(n+1)%3`
-/

namespace A099544.P16239576133689070627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099547 (n + 1)) 3

end

end A099544.P16239576133689070627

namespace A099544

/-- `A099547(n+1)%3` -/
def P16239576133689070627.Spec : Prop :=
  ∀ n, P16239576133689070627.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P2473787873393604309

`A099550(n+1)%3`
-/

namespace A099544.P2473787873393604309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099550 (n + 1)) 3

end

end A099544.P2473787873393604309

namespace A099544

/-- `A099550(n+1)%3` -/
def P2473787873393604309.Spec : Prop :=
  ∀ n, P2473787873393604309.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P11432108492770526046

`A214682(n+1)%3`
-/

namespace A099544.P11432108492770526046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214682 (n + 1)) 3

end

end A099544.P11432108492770526046

namespace A099544

/-- `A214682(n+1)%3` -/
def P11432108492770526046.Spec : Prop :=
  ∀ n, P11432108492770526046.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P5350509763394463368

`A354092(n+1)%3`
-/

namespace A099544.P5350509763394463368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354092 (n + 1)) 3

end

end A099544.P5350509763394463368

namespace A099544

/-- `A354092(n+1)%3` -/
def P5350509763394463368.Spec : Prop :=
  ∀ n, P5350509763394463368.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P5911756419356206466

`(A166466(n+1)/3)%3`
-/

namespace A099544.P5911756419356206466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) 3

end

end A099544.P5911756419356206466

namespace A099544

/-- `(A166466(n+1)/3)%3` -/
def P5911756419356206466.Spec : Prop :=
  ∀ n, P5911756419356206466.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P9349499752597096509

`A088689(A065883(n+1))`
-/

namespace A099544.P9349499752597096509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A065883 (n + 1)).toNat

end

end A099544.P9349499752597096509

namespace A099544

/-- `A088689(A065883(n+1))` -/
def P9349499752597096509.Spec : Prop :=
  ∀ n, P9349499752597096509.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P11883587603871592399

`A088689(A259445(n+1))`
-/

namespace A099544.P11883587603871592399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A259445 (n + 1)).toNat

end

end A099544.P11883587603871592399

namespace A099544

/-- `A088689(A259445(n+1))` -/
def P11883587603871592399.Spec : Prop :=
  ∀ n, P11883587603871592399.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P6294559663145462093

`A010872(A354092(n+1))`
-/

namespace A099544.P6294559663145462093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A354092 (n + 1)).toNat

end

end A099544.P6294559663145462093

namespace A099544

/-- `A010872(A354092(n+1))` -/
def P6294559663145462093.Spec : Prop :=
  ∀ n, P6294559663145462093.a n = A099544 (n + 1)

end A099544

/-! ## A099544.P9841366821927493892

`A080425(A103391(n+2))`
-/

namespace A099544.P9841366821927493892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A103391 (n + 2)).toNat

end

end A099544.P9841366821927493892

namespace A099544

/-- `A080425(A103391(n+2))` -/
def P9841366821927493892.Spec : Prop :=
  ∀ n, P9841366821927493892.a n = A099544 (n + 1)

end A099544

/-!
# A099545: Odd part of n, modulo 4.

The programs for A099545, the canonical program `A099545.P3555190586653278803` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099545 has offset 1).

The definition of A099545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099545.P2935481769210604552

`and((n+1)/2^val(n+1, 2), 3)`
-/

namespace A099545.P2935481769210604552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 3

end

end A099545.P2935481769210604552

namespace A099545

/-- `and((n+1)/2^val(n+1, 2), 3)` -/
def P2935481769210604552.Spec : Prop :=
  ∀ n, P2935481769210604552.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P4082883488361330817

`2*A038189(n+1)+1`
-/

namespace A099545.P4082883488361330817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038189 (n + 1) + 1

end

end A099545.P4082883488361330817

namespace A099545

/-- `2*A038189(n+1)+1` -/
def P4082883488361330817.Spec : Prop :=
  ∀ n, P4082883488361330817.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P3555190586653278803

`A010873(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099545

/-- `A010873(A000265(n+1))` -/
def P3555190586653278803.Spec : Prop :=
  ∀ n, P3555190586653278803.a n = A099545 (n + 1)

theorem P3555190586653278803.correct : P3555190586653278803.Spec := by
  intro n
  simp only [A099545, Nat.add_sub_cancel]

end A099545

/-! ## A099545.P4516756230759318356

`2-Δ[xor(2*n, n)]%2`
-/

namespace A099545.P4516756230759318356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A099545.P4516756230759318356

namespace A099545

/-- `2-Δ[xor(2*n, n)]%2` -/
def P4516756230759318356.Spec : Prop :=
  ∀ n, P4516756230759318356.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P6493086320804329164

`or(1, ceil(ratio[acot(xor(n, 2*n))]))`
-/

namespace A099545.P6493086320804329164
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈f1 (n + 1) / f1 n⌉

end

end A099545.P6493086320804329164

namespace A099545

/-- `or(1, ceil(ratio[acot(xor(n, 2*n))]))` -/
def P6493086320804329164.Spec : Prop :=
  ∀ n, P6493086320804329164.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P5641299844288478391

`∑{d}[ceil(ratio[acot(xor(n, 2*n))]), #]`
-/

namespace A099545.P5641299844288478391
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) / f2 n⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A099545.P5641299844288478391

namespace A099545

/-- `∑{d}[ceil(ratio[acot(xor(n, 2*n))]), #]` -/
def P5641299844288478391.Spec : Prop :=
  ∀ n, (P5641299844288478391.a n : ℤ) = A099545 (n + 1)

end A099545

/-! ## A099545.P2162509547484027109

`2*char[or(n, n-1)+n]+1`
-/

namespace A099545.P2162509547484027109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A099545.P2162509547484027109

namespace A099545

/-- `2*char[or(n, n-1)+n]+1` -/
def P2162509547484027109.Spec : Prop :=
  ∀ n, (P2162509547484027109.a n : ℤ) = A099545 (n + 1)

end A099545

/-! ## A099545.P14639435367183534973

`((n+1)/2^val(n+1, 2))%4`
-/

namespace A099545.P14639435367183534973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 4

end

end A099545.P14639435367183534973

namespace A099545

/-- `((n+1)/2^val(n+1, 2))%4` -/
def P14639435367183534973.Spec : Prop :=
  ∀ n, P14639435367183534973.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P11402564780713520432

`and(3, (n+1)/and(n+1, -(n+1)))`
-/

namespace A099545.P11402564780713520432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A099545.P11402564780713520432

namespace A099545

/-- `and(3, (n+1)/and(n+1, -(n+1)))` -/
def P11402564780713520432.Spec : Prop :=
  ∀ n, P11402564780713520432.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P15480243768756081641

`or(1, A014709(n))`
-/

namespace A099545.P15480243768756081641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014709 n)

end

end A099545.P15480243768756081641

namespace A099545

/-- `or(1, A014709(n))` -/
def P15480243768756081641.Spec : Prop :=
  ∀ n, P15480243768756081641.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P13039535335310274503

`floor(3/A014710(n))`
-/

namespace A099545.P13039535335310274503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A014710 n : ℚ)⌋

end

end A099545.P13039535335310274503

namespace A099545

/-- `floor(3/A014710(n))` -/
def P13039535335310274503.Spec : Prop :=
  ∀ n, P13039535335310274503.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P9858454894099604022

`gcd(3, A343180(n)!)`
-/

namespace A099545.P9858454894099604022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.factorial (A343180 n).toNat)

end

end A099545.P9858454894099604022

namespace A099545

/-- `gcd(3, A343180(n)!)` -/
def P9858454894099604022.Spec : Prop :=
  ∀ n, (P9858454894099604022.a n : ℤ) = A099545 (n + 1)

end A099545

/-! ## A099545.P10348302173852647384

`2-Δ[A005811(n)]`
-/

namespace A099545.P10348302173852647384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A099545.P10348302173852647384

namespace A099545

/-- `2-Δ[A005811(n)]` -/
def P10348302173852647384.Spec : Prop :=
  ∀ n, P10348302173852647384.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P10586990362860456236

`2-Δ[A088748(n)]`
-/

namespace A099545.P10586990362860456236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A099545.P10586990362860456236

namespace A099545

/-- `2-Δ[A088748(n)]` -/
def P10586990362860456236.Spec : Prop :=
  ∀ n, P10586990362860456236.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P13869018574408949793

`2-A034947(n+1)`
-/

namespace A099545.P13869018574408949793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A034947 (n + 1)

end

end A099545.P13869018574408949793

namespace A099545

/-- `2-A034947(n+1)` -/
def P13869018574408949793.Spec : Prop :=
  ∀ n, P13869018574408949793.a n = A099545 (n + 1)

theorem P13869018574408949793.correct : P13869018574408949793.Spec := by
  intro n
  simp only [A099545, Nat.add_sub_cancel, A099545.P13869018574408949793.a, A099545.P3555190586653278803.a, A000265, A000265.P16482698636471710744.a, A010873, A010873.P1599048511093929465.a, A034947, A034947.P12901732433088194458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099545

/-! ## A099545.P18168573294035817449

`2-A112347(n+1)`
-/

namespace A099545.P18168573294035817449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A112347 (n + 1)

end

end A099545.P18168573294035817449

namespace A099545

/-- `2-A112347(n+1)` -/
def P18168573294035817449.Spec : Prop :=
  ∀ n, P18168573294035817449.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P16773894764908036403

`1+2*A014707(n)`
-/

namespace A099545.P16773894764908036403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A014707 n

end

end A099545.P16773894764908036403

namespace A099545

/-- `1+2*A014707(n)` -/
def P16773894764908036403.Spec : Prop :=
  ∀ n, P16773894764908036403.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P9029601414776958617

`3-2*A014577(n)`
-/

namespace A099545.P9029601414776958617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A014577 n

end

end A099545.P9029601414776958617

namespace A099545

/-- `3-2*A014577(n)` -/
def P9029601414776958617.Spec : Prop :=
  ∀ n, P9029601414776958617.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P7742602817458941424

`A000265(n+1)%4`
-/

namespace A099545.P7742602817458941424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 4

end

end A099545.P7742602817458941424

namespace A099545

/-- `A000265(n+1)%4` -/
def P7742602817458941424.Spec : Prop :=
  ∀ n, P7742602817458941424.a n = A099545 (n + 1)

end A099545

/-! ## A099545.P9742808850357275857

`A068963(n+1)%4`
-/

namespace A099545.P9742808850357275857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068963 (n + 1)) 4

end

end A099545.P9742808850357275857

namespace A099545

/-- `A068963(n+1)%4` -/
def P9742808850357275857.Spec : Prop :=
  ∀ n, P9742808850357275857.a n = A099545 (n + 1)

end A099545

/-!
# A099546: Odd part of n modulo 5.

The programs for A099546, the canonical program `A099546.P17212228547681319757` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099546 has offset 1).

The definition of A099546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099546.P17212228547681319757

`A010874(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099546

/-- `A010874(A000265(n+1))` -/
def P17212228547681319757.Spec : Prop :=
  ∀ n, P17212228547681319757.a n = A099546 (n + 1)

theorem P17212228547681319757.correct : P17212228547681319757.Spec := by
  intro n
  simp only [A099546, Nat.add_sub_cancel]

end A099546

/-! ## A099546.P17674326697836153107

`((n+1)/2^val(n+1, 2))%5`
-/

namespace A099546.P17674326697836153107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 5

end

end A099546.P17674326697836153107

namespace A099546

/-- `((n+1)/2^val(n+1, 2))%5` -/
def P17674326697836153107.Spec : Prop :=
  ∀ n, P17674326697836153107.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P16407259297926453269

`((n+1)*3^val(n+1, 2))%5`
-/

namespace A099546.P16407259297926453269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ SequenceMachineLib.valuation (n + 1) 2 % 5

end

end A099546.P16407259297926453269

namespace A099546

/-- `((n+1)*3^val(n+1, 2))%5` -/
def P16407259297926453269.Spec : Prop :=
  ∀ n, (P16407259297926453269.a n : ℤ) = A099546 (n + 1)

end A099546

/-! ## A099546.P6776984998667010138

`((n+1)/(or(n, n+1)-n))%5`
-/

namespace A099546.P6776984998667010138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 5

end

end A099546.P6776984998667010138

namespace A099546

/-- `((n+1)/(or(n, n+1)-n))%5` -/
def P6776984998667010138.Spec : Prop :=
  ∀ n, P6776984998667010138.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P9790945890351570352

`((n+1)/xor(n, or(n, n+1)))%5`
-/

namespace A099546.P9790945890351570352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 5

end

end A099546.P9790945890351570352

namespace A099546

/-- `((n+1)/xor(n, or(n, n+1)))%5` -/
def P9790945890351570352.Spec : Prop :=
  ∀ n, P9790945890351570352.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P13893577785951425586

`((n+1)/and(n+1, -(n+1)))%5`
-/

namespace A099546.P13893577785951425586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 5

end

end A099546.P13893577785951425586

namespace A099546

/-- `((n+1)/and(n+1, -(n+1)))%5` -/
def P13893577785951425586.Spec : Prop :=
  ∀ n, P13893577785951425586.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P11940756113376986525

`((n+1)/(n+1-and(n, n+1)))%5`
-/

namespace A099546.P11940756113376986525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))) 5

end

end A099546.P11940756113376986525

namespace A099546

/-- `((n+1)/(n+1-and(n, n+1)))%5` -/
def P11940756113376986525.Spec : Prop :=
  ∀ n, P11940756113376986525.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P12793158166909672114

`A000265(n+1)%5`
-/

namespace A099546.P12793158166909672114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 5

end

end A099546.P12793158166909672114

namespace A099546

/-- `A000265(n+1)%5` -/
def P12793158166909672114.Spec : Prop :=
  ∀ n, P12793158166909672114.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P17065006323377325648

`A037283(n+1)%5`
-/

namespace A099546.P17065006323377325648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037283 (n + 1)) 5

end

end A099546.P17065006323377325648

namespace A099546

/-- `A037283(n+1)%5` -/
def P17065006323377325648.Spec : Prop :=
  ∀ n, P17065006323377325648.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P16662652831320206820

`A099551(n+1)%5`
-/

namespace A099546.P16662652831320206820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099551 (n + 1)) 5

end

end A099546.P16662652831320206820

namespace A099546

/-- `A099551(n+1)%5` -/
def P16662652831320206820.Spec : Prop :=
  ∀ n, P16662652831320206820.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P13686065745892141279

`A327539(n+1)%5`
-/

namespace A099546.P13686065745892141279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327539 (n + 1)) 5

end

end A099546.P13686065745892141279

namespace A099546

/-- `A327539(n+1)%5` -/
def P13686065745892141279.Spec : Prop :=
  ∀ n, P13686065745892141279.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P2922229383945620406

`A171435(2*(n+1))%5`
-/

namespace A099546.P2922229383945620406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (2 * (n + 1))) 5

end

end A099546.P2922229383945620406

namespace A099546

/-- `A171435(2*(n+1))%5` -/
def P2922229383945620406.Spec : Prop :=
  ∀ n, P2922229383945620406.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P8155905503429260817

`(A166466(n+1)/3)%5`
-/

namespace A099546.P8155905503429260817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) 5

end

end A099546.P8155905503429260817

namespace A099546

/-- `(A166466(n+1)/3)%5` -/
def P8155905503429260817.Spec : Prop :=
  ∀ n, P8155905503429260817.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P17354351992555749074

`A010874(A327539(n+1))`
-/

namespace A099546.P17354351992555749074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A327539 (n + 1)).toNat

end

end A099546.P17354351992555749074

namespace A099546

/-- `A010874(A327539(n+1))` -/
def P17354351992555749074.Spec : Prop :=
  ∀ n, P17354351992555749074.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P5614900587645044114

`gcd(A166466(n+1), A270710(n))%5`
-/

namespace A099546.P5614900587645044114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n) % 5

end

end A099546.P5614900587645044114

namespace A099546

/-- `gcd(A166466(n+1), A270710(n))%5` -/
def P5614900587645044114.Spec : Prop :=
  ∀ n, (P5614900587645044114.a n : ℤ) = A099546 (n + 1)

end A099546

/-! ## A099546.P18338641988147558595

`A161151(2*n+1)%5`
-/

namespace A099546.P18338641988147558595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161151 (2 * n + 1)) 5

end

end A099546.P18338641988147558595

namespace A099546

/-- `A161151(2*n+1)%5` -/
def P18338641988147558595.Spec : Prop :=
  ∀ n, P18338641988147558595.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P12019515299223007869

`A351565(2*n+1)%5`
-/

namespace A099546.P12019515299223007869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351565 (2 * n + 1)) 5

end

end A099546.P12019515299223007869

namespace A099546

/-- `A351565(2*n+1)%5` -/
def P12019515299223007869.Spec : Prop :=
  ∀ n, P12019515299223007869.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P17658389312739389957

`A028234(2*(n+1))%5`
-/

namespace A099546.P17658389312739389957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (2 * (n + 1))) 5

end

end A099546.P17658389312739389957

namespace A099546

/-- `A028234(2*(n+1))%5` -/
def P17658389312739389957.Spec : Prop :=
  ∀ n, P17658389312739389957.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P6554984346628274733

`A086767(2*n+1)%5`
-/

namespace A099546.P6554984346628274733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086767 (2 * n + 1)) 5

end

end A099546.P6554984346628274733

namespace A099546

/-- `A086767(2*n+1)%5` -/
def P6554984346628274733.Spec : Prop :=
  ∀ n, P6554984346628274733.a n = A099546 (n + 1)

end A099546

/-! ## A099546.P3239375131534520237

`A093803(2*(n+1))%5`
-/

namespace A099546.P3239375131534520237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093803 (2 * (n + 1))) 5

end

end A099546.P3239375131534520237

namespace A099546

/-- `A093803(2*(n+1))%5` -/
def P3239375131534520237.Spec : Prop :=
  ∀ n, P3239375131534520237.a n = A099546 (n + 1)

end A099546

/-!
# A099547: Odd part of n modulo 6.

The programs for A099547, the canonical program `A099547.P15449459496181192209` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099547 has offset 1).

The definition of A099547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099547.P15449459496181192209

`A010875(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099547

/-- `A010875(A000265(n+1))` -/
def P15449459496181192209.Spec : Prop :=
  ∀ n, P15449459496181192209.a n = A099547 (n + 1)

theorem P15449459496181192209.correct : P15449459496181192209.Spec := by
  intro n
  simp only [A099547, Nat.add_sub_cancel]

end A099547

/-! ## A099547.P6531034596123374441

`((n+1)/2^val(n+1, 2))%6`
-/

namespace A099547.P6531034596123374441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 6

end

end A099547.P6531034596123374441

namespace A099547

/-- `((n+1)/2^val(n+1, 2))%6` -/
def P6531034596123374441.Spec : Prop :=
  ∀ n, P6531034596123374441.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P14223296630966956064

`((n+1)/(or(n, n+1)-n))%6`
-/

namespace A099547.P14223296630966956064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 6

end

end A099547.P14223296630966956064

namespace A099547

/-- `((n+1)/(or(n, n+1)-n))%6` -/
def P14223296630966956064.Spec : Prop :=
  ∀ n, P14223296630966956064.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P10214812054264972084

`((n+1)/xor(n, or(n, n+1)))%6`
-/

namespace A099547.P10214812054264972084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 6

end

end A099547.P10214812054264972084

namespace A099547

/-- `((n+1)/xor(n, or(n, n+1)))%6` -/
def P10214812054264972084.Spec : Prop :=
  ∀ n, P10214812054264972084.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P6980815660459517913

`((n+1)/and(n+1, -(n+1)))%6`
-/

namespace A099547.P6980815660459517913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 6

end

end A099547.P6980815660459517913

namespace A099547

/-- `((n+1)/and(n+1, -(n+1)))%6` -/
def P6980815660459517913.Spec : Prop :=
  ∀ n, P6980815660459517913.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P17082845911057991605

`((n+1)/(n+1-and(n, n+1)))%6`
-/

namespace A099547.P17082845911057991605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))) 6

end

end A099547.P17082845911057991605

namespace A099547

/-- `((n+1)/(n+1-and(n, n+1)))%6` -/
def P17082845911057991605.Spec : Prop :=
  ∀ n, P17082845911057991605.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P11646931035889550347

`A000265(n+1)%6`
-/

namespace A099547.P11646931035889550347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 6

end

end A099547.P11646931035889550347

namespace A099547

/-- `A000265(n+1)%6` -/
def P11646931035889550347.Spec : Prop :=
  ∀ n, P11646931035889550347.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P11218977672087579424

`A171435(2*(n+1))%6`
-/

namespace A099547.P11218977672087579424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (2 * (n + 1))) 6

end

end A099547.P11218977672087579424

namespace A099547

/-- `A171435(2*(n+1))%6` -/
def P11218977672087579424.Spec : Prop :=
  ∀ n, P11218977672087579424.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P478103527419547753

`(A166466(n+1)/3)%6`
-/

namespace A099547.P478103527419547753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) 6

end

end A099547.P478103527419547753

namespace A099547

/-- `(A166466(n+1)/3)%6` -/
def P478103527419547753.Spec : Prop :=
  ∀ n, P478103527419547753.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P17321746241766655141

`A130793(A025480(n))`
-/

namespace A099547.P17321746241766655141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130793 (A025480 n).toNat

end

end A099547.P17321746241766655141

namespace A099547

/-- `A130793(A025480(n))` -/
def P17321746241766655141.Spec : Prop :=
  ∀ n, P17321746241766655141.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P2015097386095647795

`A010885(A153733(n))`
-/

namespace A099547.P2015097386095647795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 (A153733 n).toNat

end

end A099547.P2015097386095647795

namespace A099547

/-- `A010885(A153733(n))` -/
def P2015097386095647795.Spec : Prop :=
  ∀ n, P2015097386095647795.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P5735896671955767552

`A130794(A000265(n+1)-1)`
-/

namespace A099547.P5735896671955767552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130794 (A000265 (n + 1) - 1).toNat

end

end A099547.P5735896671955767552

namespace A099547

/-- `A130794(A000265(n+1)-1)` -/
def P5735896671955767552.Spec : Prop :=
  ∀ n, P5735896671955767552.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P13468827190342578978

`gcd(A166466(n+1), A270710(n))%6`
-/

namespace A099547.P13468827190342578978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n) % 6

end

end A099547.P13468827190342578978

namespace A099547

/-- `gcd(A166466(n+1), A270710(n))%6` -/
def P13468827190342578978.Spec : Prop :=
  ∀ n, (P13468827190342578978.a n : ℤ) = A099547 (n + 1)

end A099547

/-! ## A099547.P3118093978773432262

`A161151(2*n+1)%6`
-/

namespace A099547.P3118093978773432262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161151 (2 * n + 1)) 6

end

end A099547.P3118093978773432262

namespace A099547

/-- `A161151(2*n+1)%6` -/
def P3118093978773432262.Spec : Prop :=
  ∀ n, P3118093978773432262.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P8714075434414329421

`A351565(2*n+1)%6`
-/

namespace A099547.P8714075434414329421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351565 (2 * n + 1)) 6

end

end A099547.P8714075434414329421

namespace A099547

/-- `A351565(2*n+1)%6` -/
def P8714075434414329421.Spec : Prop :=
  ∀ n, P8714075434414329421.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P8801813431859488277

`A028234(2*(n+1))%6`
-/

namespace A099547.P8801813431859488277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (2 * (n + 1))) 6

end

end A099547.P8801813431859488277

namespace A099547

/-- `A028234(2*(n+1))%6` -/
def P8801813431859488277.Spec : Prop :=
  ∀ n, P8801813431859488277.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P16258656854230628780

`A086767(2*n+1)%6`
-/

namespace A099547.P16258656854230628780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086767 (2 * n + 1)) 6

end

end A099547.P16258656854230628780

namespace A099547

/-- `A086767(2*n+1)%6` -/
def P16258656854230628780.Spec : Prop :=
  ∀ n, P16258656854230628780.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P9254037085858968423

`A093803(2*(n+1))%6`
-/

namespace A099547.P9254037085858968423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093803 (2 * (n + 1))) 6

end

end A099547.P9254037085858968423

namespace A099547

/-- `A093803(2*(n+1))%6` -/
def P9254037085858968423.Spec : Prop :=
  ∀ n, P9254037085858968423.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P3565213849051660463

`A139391(2*(n+1))%6`
-/

namespace A099547.P3565213849051660463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139391 (2 * (n + 1))) 6

end

end A099547.P3565213849051660463

namespace A099547

/-- `A139391(2*(n+1))%6` -/
def P3565213849051660463.Spec : Prop :=
  ∀ n, P3565213849051660463.a n = A099547 (n + 1)

end A099547

/-! ## A099547.P10810016030120370746

`A163575(2*(n+1))%6`
-/

namespace A099547.P10810016030120370746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163575 (2 * (n + 1))) 6

end

end A099547.P10810016030120370746

namespace A099547

/-- `A163575(2*(n+1))%6` -/
def P10810016030120370746.Spec : Prop :=
  ∀ n, P10810016030120370746.a n = A099547 (n + 1)

end A099547

/-!
# A099548: Odd part of n modulo 7.

The programs for A099548, the canonical program `A099548.P17170210059057855625` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099548 has offset 1).

The definition of A099548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099548.P17170210059057855625

`A010876(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099548

/-- `A010876(A000265(n+1))` -/
def P17170210059057855625.Spec : Prop :=
  ∀ n, P17170210059057855625.a n = A099548 (n + 1)

theorem P17170210059057855625.correct : P17170210059057855625.Spec := by
  intro n
  simp only [A099548, Nat.add_sub_cancel]

end A099548

/-! ## A099548.P2129046944652134873

`((n+1)/2^val(n+1, 2))%7`
-/

namespace A099548.P2129046944652134873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 7

end

end A099548.P2129046944652134873

namespace A099548

/-- `((n+1)/2^val(n+1, 2))%7` -/
def P2129046944652134873.Spec : Prop :=
  ∀ n, P2129046944652134873.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P472801789004520193

`((n+1)/(or(n, n+1)-n))%7`
-/

namespace A099548.P472801789004520193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 7

end

end A099548.P472801789004520193

namespace A099548

/-- `((n+1)/(or(n, n+1)-n))%7` -/
def P472801789004520193.Spec : Prop :=
  ∀ n, P472801789004520193.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P1967141447523192104

`((n+1)/xor(n, or(n, n+1)))%7`
-/

namespace A099548.P1967141447523192104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 7

end

end A099548.P1967141447523192104

namespace A099548

/-- `((n+1)/xor(n, or(n, n+1)))%7` -/
def P1967141447523192104.Spec : Prop :=
  ∀ n, P1967141447523192104.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P12060995293822016615

`((n+1)/and(n+1, -(n+1)))%7`
-/

namespace A099548.P12060995293822016615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 7

end

end A099548.P12060995293822016615

namespace A099548

/-- `((n+1)/and(n+1, -(n+1)))%7` -/
def P12060995293822016615.Spec : Prop :=
  ∀ n, P12060995293822016615.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P2023184110821550836

`((n+1)/ceil(xor(n, n+1)/2))%7`
-/

namespace A099548.P2023184110821550836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))) 7

end

end A099548.P2023184110821550836

namespace A099548

/-- `((n+1)/ceil(xor(n, n+1)/2))%7` -/
def P2023184110821550836.Spec : Prop :=
  ∀ n, P2023184110821550836.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P8791109396187410405

`((n+1)/round(xor(n, n+1)/2))%7`
-/

namespace A099548.P8791109396187410405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))) 7

end

end A099548.P8791109396187410405

namespace A099548

/-- `((n+1)/round(xor(n, n+1)/2))%7` -/
def P8791109396187410405.Spec : Prop :=
  ∀ n, P8791109396187410405.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P741762524325064942

`(2*(n+1)/(xor(n, n+1)+1))%7`
-/

namespace A099548.P741762524325064942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))) 7

end

end A099548.P741762524325064942

namespace A099548

/-- `(2*(n+1)/(xor(n, n+1)+1))%7` -/
def P741762524325064942.Spec : Prop :=
  ∀ n, P741762524325064942.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P13273744790498169095

`((n+1)/(n+1-and(n, n+1)))%7`
-/

namespace A099548.P13273744790498169095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))) 7

end

end A099548.P13273744790498169095

namespace A099548

/-- `((n+1)/(n+1-and(n, n+1)))%7` -/
def P13273744790498169095.Spec : Prop :=
  ∀ n, P13273744790498169095.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P3808121059725204269

`A000265(n+1)%7`
-/

namespace A099548.P3808121059725204269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 7

end

end A099548.P3808121059725204269

namespace A099548

/-- `A000265(n+1)%7` -/
def P3808121059725204269.Spec : Prop :=
  ∀ n, P3808121059725204269.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P8584110385519370288

`A171435(2*(n+1))%7`
-/

namespace A099548.P8584110385519370288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (2 * (n + 1))) 7

end

end A099548.P8584110385519370288

namespace A099548

/-- `A171435(2*(n+1))%7` -/
def P8584110385519370288.Spec : Prop :=
  ∀ n, P8584110385519370288.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P18222051125503602125

`A302034(2*(n+1))%7`
-/

namespace A099548.P18222051125503602125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302034 (2 * (n + 1))) 7

end

end A099548.P18222051125503602125

namespace A099548

/-- `A302034(2*(n+1))%7` -/
def P18222051125503602125.Spec : Prop :=
  ∀ n, P18222051125503602125.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P5468008001384007766

`A302044(2*(n+1))%7`
-/

namespace A099548.P5468008001384007766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302044 (2 * (n + 1))) 7

end

end A099548.P5468008001384007766

namespace A099548

/-- `A302044(2*(n+1))%7` -/
def P5468008001384007766.Spec : Prop :=
  ∀ n, P5468008001384007766.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P5261402086824378574

`(A166466(n+1)/3)%7`
-/

namespace A099548.P5261402086824378574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) 7

end

end A099548.P5261402086824378574

namespace A099548

/-- `(A166466(n+1)/3)%7` -/
def P5261402086824378574.Spec : Prop :=
  ∀ n, P5261402086824378574.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P18009756911072512995

`((n+1)/A000010(xor(n, n+1)+1))%7`
-/

namespace A099548.P18009756911072512995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))) 7

end

end A099548.P18009756911072512995

namespace A099548

/-- `((n+1)/A000010(xor(n, n+1)+1))%7` -/
def P18009756911072512995.Spec : Prop :=
  ∀ n, P18009756911072512995.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P6623517060080156793

`A004442(A153733(n))%7`
-/

namespace A099548.P6623517060080156793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A153733 n).toNat) 7

end

end A099548.P6623517060080156793

namespace A099548

/-- `A004442(A153733(n))%7` -/
def P6623517060080156793.Spec : Prop :=
  ∀ n, P6623517060080156793.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P13059767578599716598

`A003961(A064989(n+1))%7`
-/

namespace A099548.P13059767578599716598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A064989 (n + 1)).toNat) 7

end

end A099548.P13059767578599716598

namespace A099548

/-- `A003961(A064989(n+1))%7` -/
def P13059767578599716598.Spec : Prop :=
  ∀ n, P13059767578599716598.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P2450811883293453036

`gcd(A166466(n+1), A270710(n))%7`
-/

namespace A099548.P2450811883293453036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n) % 7

end

end A099548.P2450811883293453036

namespace A099548

/-- `gcd(A166466(n+1), A270710(n))%7` -/
def P2450811883293453036.Spec : Prop :=
  ∀ n, (P2450811883293453036.a n : ℤ) = A099548 (n + 1)

end A099548

/-! ## A099548.P15334886616212705068

`A161151(2*n+1)%7`
-/

namespace A099548.P15334886616212705068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161151 (2 * n + 1)) 7

end

end A099548.P15334886616212705068

namespace A099548

/-- `A161151(2*n+1)%7` -/
def P15334886616212705068.Spec : Prop :=
  ∀ n, P15334886616212705068.a n = A099548 (n + 1)

end A099548

/-! ## A099548.P951879758050743761

`A351565(2*n+1)%7`
-/

namespace A099548.P951879758050743761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351565 (2 * n + 1)) 7

end

end A099548.P951879758050743761

namespace A099548

/-- `A351565(2*n+1)%7` -/
def P951879758050743761.Spec : Prop :=
  ∀ n, P951879758050743761.a n = A099548 (n + 1)

end A099548

/-!
# A099549: Odd part of n modulo 8.

The programs for A099549, the canonical program `A099549.P4849231743765954176` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099549 has offset 1).

The definition of A099549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099549.P4849231743765954176

`A010877(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099549

/-- `A010877(A000265(n+1))` -/
def P4849231743765954176.Spec : Prop :=
  ∀ n, P4849231743765954176.a n = A099549 (n + 1)

theorem P4849231743765954176.correct : P4849231743765954176.Spec := by
  intro n
  simp only [A099549, Nat.add_sub_cancel]

end A099549

/-! ## A099549.P17060537721806798819

`((n+1)/2^val(n+1, 2))%8`
-/

namespace A099549.P17060537721806798819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 8

end

end A099549.P17060537721806798819

namespace A099549

/-- `((n+1)/2^val(n+1, 2))%8` -/
def P17060537721806798819.Spec : Prop :=
  ∀ n, P17060537721806798819.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P11173223795306128284

`and(7, (n+1)/2^val(n+1, 2))`
-/

namespace A099549.P11173223795306128284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A099549.P11173223795306128284

namespace A099549

/-- `and(7, (n+1)/2^val(n+1, 2))` -/
def P11173223795306128284.Spec : Prop :=
  ∀ n, P11173223795306128284.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P6285723678385849903

`((n+1)/(or(n, n+1)-n))%8`
-/

namespace A099549.P6285723678385849903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 8

end

end A099549.P6285723678385849903

namespace A099549

/-- `((n+1)/(or(n, n+1)-n))%8` -/
def P6285723678385849903.Spec : Prop :=
  ∀ n, P6285723678385849903.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P7639343861644908414

`((n+1)/xor(n, or(n, n+1)))%8`
-/

namespace A099549.P7639343861644908414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 8

end

end A099549.P7639343861644908414

namespace A099549

/-- `((n+1)/xor(n, or(n, n+1)))%8` -/
def P7639343861644908414.Spec : Prop :=
  ∀ n, P7639343861644908414.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P399063126022305289

`and(7, (n+1)/xor(n, or(n, n+1)))`
-/

namespace A099549.P399063126022305289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)))

end

end A099549.P399063126022305289

namespace A099549

/-- `and(7, (n+1)/xor(n, or(n, n+1)))` -/
def P399063126022305289.Spec : Prop :=
  ∀ n, P399063126022305289.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P8528671387538529835

`((n+1)/and(n+1, -(n+1)))%8`
-/

namespace A099549.P8528671387538529835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 8

end

end A099549.P8528671387538529835

namespace A099549

/-- `((n+1)/and(n+1, -(n+1)))%8` -/
def P8528671387538529835.Spec : Prop :=
  ∀ n, P8528671387538529835.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P7501639388341281015

`and(7, (n+1)/and(n+1, -(n+1)))`
-/

namespace A099549.P7501639388341281015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A099549.P7501639388341281015

namespace A099549

/-- `and(7, (n+1)/and(n+1, -(n+1)))` -/
def P7501639388341281015.Spec : Prop :=
  ∀ n, P7501639388341281015.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P1012684902457637539

`A000265(n+1)%8`
-/

namespace A099549.P1012684902457637539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 8

end

end A099549.P1012684902457637539

namespace A099549

/-- `A000265(n+1)%8` -/
def P1012684902457637539.Spec : Prop :=
  ∀ n, P1012684902457637539.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P2474295880918596209

`A328408(n+1)%8`
-/

namespace A099549.P2474295880918596209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328408 (n + 1)) 8

end

end A099549.P2474295880918596209

namespace A099549

/-- `A328408(n+1)%8` -/
def P2474295880918596209.Spec : Prop :=
  ∀ n, P2474295880918596209.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P11513362480158399956

`A371492(n+1)%8`
-/

namespace A099549.P11513362480158399956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371492 (n + 1)) 8

end

end A099549.P11513362480158399956

namespace A099549

/-- `A371492(n+1)%8` -/
def P11513362480158399956.Spec : Prop :=
  ∀ n, P11513362480158399956.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P16328878251381079786

`A372965(n+1)%8`
-/

namespace A099549.P16328878251381079786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372965 (n + 1)) 8

end

end A099549.P16328878251381079786

namespace A099549

/-- `A372965(n+1)%8` -/
def P16328878251381079786.Spec : Prop :=
  ∀ n, P16328878251381079786.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P5149114715026963450

`A373103(n+1)%8`
-/

namespace A099549.P5149114715026963450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373103 (n + 1)) 8

end

end A099549.P5149114715026963450

namespace A099549

/-- `A373103(n+1)%8` -/
def P5149114715026963450.Spec : Prop :=
  ∀ n, P5149114715026963450.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P14839918749987288168

`and(7, A000265(2*(n+1)))`
-/

namespace A099549.P14839918749987288168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000265 (2 * (n + 1)))

end

end A099549.P14839918749987288168

namespace A099549

/-- `and(7, A000265(2*(n+1)))` -/
def P14839918749987288168.Spec : Prop :=
  ∀ n, P14839918749987288168.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P2150028260398346947

`and(7, A166466(n+1)/3)`
-/

namespace A099549.P2150028260398346947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3))

end

end A099549.P2150028260398346947

namespace A099549

/-- `and(7, A166466(n+1)/3)` -/
def P2150028260398346947.Spec : Prop :=
  ∀ n, P2150028260398346947.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P11424524550174646278

`A010887(A153733(n))`
-/

namespace A099549.P11424524550174646278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A153733 n).toNat

end

end A099549.P11424524550174646278

namespace A099549

/-- `A010887(A153733(n))` -/
def P11424524550174646278.Spec : Prop :=
  ∀ n, P11424524550174646278.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P15783212430428183882

`A072400(A214682(n+1))`
-/

namespace A099549.P15783212430428183882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (A214682 (n + 1)).toNat

end

end A099549.P15783212430428183882

namespace A099549

/-- `A072400(A214682(n+1))` -/
def P15783212430428183882.Spec : Prop :=
  ∀ n, P15783212430428183882.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P2248407874241264808

`gcd(A166466(n+1), A270710(n))%8`
-/

namespace A099549.P2248407874241264808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n) % 8

end

end A099549.P2248407874241264808

namespace A099549

/-- `gcd(A166466(n+1), A270710(n))%8` -/
def P2248407874241264808.Spec : Prop :=
  ∀ n, (P2248407874241264808.a n : ℤ) = A099549 (n + 1)

end A099549

/-! ## A099549.P3582100122276380797

`A161151(2*n+1)%8`
-/

namespace A099549.P3582100122276380797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161151 (2 * n + 1)) 8

end

end A099549.P3582100122276380797

namespace A099549

/-- `A161151(2*n+1)%8` -/
def P3582100122276380797.Spec : Prop :=
  ∀ n, P3582100122276380797.a n = A099549 (n + 1)

end A099549

/-! ## A099549.P9633220586262320522

`A351565(2*n+1)%8`
-/

namespace A099549.P9633220586262320522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351565 (2 * n + 1)) 8

end

end A099549.P9633220586262320522

namespace A099549

/-- `A351565(2*n+1)%8` -/
def P9633220586262320522.Spec : Prop :=
  ∀ n, P9633220586262320522.a n = A099549 (n + 1)

end A099549

/-!
# A099550: Odd part of n modulo 9.

The programs for A099550, the canonical program `A099550.P6751490665142139537` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099550 has offset 1).

The definition of A099550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099550.P6751490665142139537

`A010878(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099550

/-- `A010878(A000265(n+1))` -/
def P6751490665142139537.Spec : Prop :=
  ∀ n, P6751490665142139537.a n = A099550 (n + 1)

theorem P6751490665142139537.correct : P6751490665142139537.Spec := by
  intro n
  simp only [A099550, Nat.add_sub_cancel]

end A099550

/-! ## A099550.P8751714609191781332

`((n+1)/2^val(n+1, 2))%9`
-/

namespace A099550.P8751714609191781332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 9

end

end A099550.P8751714609191781332

namespace A099550

/-- `((n+1)/2^val(n+1, 2))%9` -/
def P8751714609191781332.Spec : Prop :=
  ∀ n, P8751714609191781332.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P13476009674231245579

`((n+1)/(or(n, n+1)-n))%9`
-/

namespace A099550.P13476009674231245579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 9

end

end A099550.P13476009674231245579

namespace A099550

/-- `((n+1)/(or(n, n+1)-n))%9` -/
def P13476009674231245579.Spec : Prop :=
  ∀ n, P13476009674231245579.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P17406694653073399517

`((n+1)/xor(n, or(n, n+1)))%9`
-/

namespace A099550.P17406694653073399517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 9

end

end A099550.P17406694653073399517

namespace A099550

/-- `((n+1)/xor(n, or(n, n+1)))%9` -/
def P17406694653073399517.Spec : Prop :=
  ∀ n, P17406694653073399517.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P6470059156671391928

`((n+1)/and(n+1, -(n+1)))%9`
-/

namespace A099550.P6470059156671391928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 9

end

end A099550.P6470059156671391928

namespace A099550

/-- `((n+1)/and(n+1, -(n+1)))%9` -/
def P6470059156671391928.Spec : Prop :=
  ∀ n, P6470059156671391928.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P6097607086593636225

`((n+1)/ceil(xor(n, n+1)/2))%9`
-/

namespace A099550.P6097607086593636225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))) 9

end

end A099550.P6097607086593636225

namespace A099550

/-- `((n+1)/ceil(xor(n, n+1)/2))%9` -/
def P6097607086593636225.Spec : Prop :=
  ∀ n, P6097607086593636225.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P1011787000368430063

`(2*(n+1)/(xor(n, n+1)+1))%9`
-/

namespace A099550.P1011787000368430063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))) 9

end

end A099550.P1011787000368430063

namespace A099550

/-- `(2*(n+1)/(xor(n, n+1)+1))%9` -/
def P1011787000368430063.Spec : Prop :=
  ∀ n, P1011787000368430063.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P7257743528756752993

`abs((n+1)/or(n+1, -(n+1)))%9`
-/

namespace A099550.P7257743528756752993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway |(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)|) 9

end

end A099550.P7257743528756752993

namespace A099550

/-- `abs((n+1)/or(n+1, -(n+1)))%9` -/
def P7257743528756752993.Spec : Prop :=
  ∀ n, P7257743528756752993.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P2219296665900854753

`A000265(n+1)%9`
-/

namespace A099550.P2219296665900854753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) 9

end

end A099550.P2219296665900854753

namespace A099550

/-- `A000265(n+1)%9` -/
def P2219296665900854753.Spec : Prop :=
  ∀ n, P2219296665900854753.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P8426050854153537476

`(A153733(n)+1)%9`
-/

namespace A099550.P8426050854153537476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153733 n + 1) 9

end

end A099550.P8426050854153537476

namespace A099550

/-- `(A153733(n)+1)%9` -/
def P8426050854153537476.Spec : Prop :=
  ∀ n, P8426050854153537476.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P6071376978900139650

`A171435(2*(n+1))%9`
-/

namespace A099550.P6071376978900139650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (2 * (n + 1))) 9

end

end A099550.P6071376978900139650

namespace A099550

/-- `A171435(2*(n+1))%9` -/
def P6071376978900139650.Spec : Prop :=
  ∀ n, P6071376978900139650.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P14931044589061342716

`A302034(2*(n+1))%9`
-/

namespace A099550.P14931044589061342716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302034 (2 * (n + 1))) 9

end

end A099550.P14931044589061342716

namespace A099550

/-- `A302034(2*(n+1))%9` -/
def P14931044589061342716.Spec : Prop :=
  ∀ n, P14931044589061342716.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P12833955159402127632

`A302044(2*(n+1))%9`
-/

namespace A099550.P12833955159402127632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302044 (2 * (n + 1))) 9

end

end A099550.P12833955159402127632

namespace A099550

/-- `A302044(2*(n+1))%9` -/
def P12833955159402127632.Spec : Prop :=
  ∀ n, P12833955159402127632.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P11025134546850855876

`((n+1)/A006519(n+1))%9`
-/

namespace A099550.P11025134546850855876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))) 9

end

end A099550.P11025134546850855876

namespace A099550

/-- `((n+1)/A006519(n+1))%9` -/
def P11025134546850855876.Spec : Prop :=
  ∀ n, P11025134546850855876.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P12062163982852355033

`((n+1)/A000010(xor(n, n+1)+1))%9`
-/

namespace A099550.P12062163982852355033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))) 9

end

end A099550.P12062163982852355033

namespace A099550

/-- `((n+1)/A000010(xor(n, n+1)+1))%9` -/
def P12062163982852355033.Spec : Prop :=
  ∀ n, P12062163982852355033.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P16650433493987954204

`A004442(A153733(n))%9`
-/

namespace A099550.P16650433493987954204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A153733 n).toNat) 9

end

end A099550.P16650433493987954204

namespace A099550

/-- `A004442(A153733(n))%9` -/
def P16650433493987954204.Spec : Prop :=
  ∀ n, P16650433493987954204.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P15614347662728910648

`A003961(A064989(n+1))%9`
-/

namespace A099550.P15614347662728910648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A064989 (n + 1)).toNat) 9

end

end A099550.P15614347662728910648

namespace A099550

/-- `A003961(A064989(n+1))%9` -/
def P15614347662728910648.Spec : Prop :=
  ∀ n, P15614347662728910648.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P12839432595116255206

`gcd(A166466(n+1), A270710(n))%9`
-/

namespace A099550.P12839432595116255206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n) % 9

end

end A099550.P12839432595116255206

namespace A099550

/-- `gcd(A166466(n+1), A270710(n))%9` -/
def P12839432595116255206.Spec : Prop :=
  ∀ n, (P12839432595116255206.a n : ℤ) = A099550 (n + 1)

end A099550

/-! ## A099550.P16258751131489899992

`A030101(A030101(n+1))%9`
-/

namespace A099550.P16258751131489899992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (A030101 (n + 1)).toNat) 9

end

end A099550.P16258751131489899992

namespace A099550

/-- `A030101(A030101(n+1))%9` -/
def P16258751131489899992.Spec : Prop :=
  ∀ n, P16258751131489899992.a n = A099550 (n + 1)

end A099550

/-! ## A099550.P3576075342354415374

`A161151(2*n+1)%9`
-/

namespace A099550.P3576075342354415374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161151 (2 * n + 1)) 9

end

end A099550.P3576075342354415374

namespace A099550

/-- `A161151(2*n+1)%9` -/
def P3576075342354415374.Spec : Prop :=
  ∀ n, P3576075342354415374.a n = A099550 (n + 1)

end A099550

/-!
# A099551: Odd part of n modulo 10. Final digit of A000265(n).

The programs for A099551, the canonical program `A099551.P9886420675140835487` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099551 has offset 1).

The definition of A099551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099551.P9886420675140835487

`A010879(A000265(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099551

/-- `A010879(A000265(n+1))` -/
def P9886420675140835487.Spec : Prop :=
  ∀ n, P9886420675140835487.a n = A099551 (n + 1)

theorem P9886420675140835487.correct : P9886420675140835487.Spec := by
  intro n
  simp only [A099551, Nat.add_sub_cancel]

end A099551

/-! ## A099551.P2441289029001449445

`((n+1)/2^val(n+1, 2))%10`
-/

namespace A099551.P2441289029001449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 10

end

end A099551.P2441289029001449445

namespace A099551

/-- `((n+1)/2^val(n+1, 2))%10` -/
def P2441289029001449445.Spec : Prop :=
  ∀ n, P2441289029001449445.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P12675912565940902597

`((n+1)/(or(n, n+1)-n))%10`
-/

namespace A099551.P12675912565940902597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))) 10

end

end A099551.P12675912565940902597

namespace A099551

/-- `((n+1)/(or(n, n+1)-n))%10` -/
def P12675912565940902597.Spec : Prop :=
  ∀ n, P12675912565940902597.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P7186984210828660727

`((n+1)/xor(n, or(n, n+1)))%10`
-/

namespace A099551.P7186984210828660727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 10

end

end A099551.P7186984210828660727

namespace A099551

/-- `((n+1)/xor(n, or(n, n+1)))%10` -/
def P7186984210828660727.Spec : Prop :=
  ∀ n, P7186984210828660727.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P4094234871831062391

`((n+1)*2^-val(n+1, 2))%10`
-/

namespace A099551.P4094234871831062391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))) 10

end

end A099551.P4094234871831062391

namespace A099551

/-- `((n+1)*2^-val(n+1, 2))%10` -/
def P4094234871831062391.Spec : Prop :=
  ∀ n, P4094234871831062391.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P3036789518973681666

`(2^(log2(n+1)-val(n+1, 2)))%10`
-/

namespace A099551.P3036789518973681666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))) 10

end

end A099551.P3036789518973681666

namespace A099551

/-- `(2^(log2(n+1)-val(n+1, 2)))%10` -/
def P3036789518973681666.Spec : Prop :=
  ∀ n, P3036789518973681666.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P6643720700306473890

`((n+1)/and(n+1, -(n+1)))%10`
-/

namespace A099551.P6643720700306473890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) 10

end

end A099551.P6643720700306473890

namespace A099551

/-- `((n+1)/and(n+1, -(n+1)))%10` -/
def P6643720700306473890.Spec : Prop :=
  ∀ n, P6643720700306473890.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P10525504294697576221

`((n+1)/ceil(xor(n, n+1)/2))%10`
-/

namespace A099551.P10525504294697576221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))) 10

end

end A099551.P10525504294697576221

namespace A099551

/-- `((n+1)/ceil(xor(n, n+1)/2))%10` -/
def P10525504294697576221.Spec : Prop :=
  ∀ n, P10525504294697576221.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P11732292926777363430

`((n+1)/round(xor(n, n+1)/2))%10`
-/

namespace A099551.P11732292926777363430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))) 10

end

end A099551.P11732292926777363430

namespace A099551

/-- `((n+1)/round(xor(n, n+1)/2))%10` -/
def P11732292926777363430.Spec : Prop :=
  ∀ n, P11732292926777363430.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P7652934972612299698

`(2*(n+1)/(xor(n, n+1)+1))%10`
-/

namespace A099551.P7652934972612299698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))) 10

end

end A099551.P7652934972612299698

namespace A099551

/-- `(2*(n+1)/(xor(n, n+1)+1))%10` -/
def P7652934972612299698.Spec : Prop :=
  ∀ n, P7652934972612299698.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P9472087952433228283

`-((n+1)/or(n+1, -(n+1)))%10`
-/

namespace A099551.P9472087952433228283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))) 10

end

end A099551.P9472087952433228283

namespace A099551

/-- `-((n+1)/or(n+1, -(n+1)))%10` -/
def P9472087952433228283.Spec : Prop :=
  ∀ n, P9472087952433228283.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P5219962570901682243

`A037283(n+1)%10`
-/

namespace A099551.P5219962570901682243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037283 (n + 1)) 10

end

end A099551.P5219962570901682243

namespace A099551

/-- `A037283(n+1)%10` -/
def P5219962570901682243.Spec : Prop :=
  ∀ n, P5219962570901682243.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P3117435510343301182

`(A166466(n+1)/3)%10`
-/

namespace A099551.P3117435510343301182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) 10

end

end A099551.P3117435510343301182

namespace A099551

/-- `(A166466(n+1)/3)%10` -/
def P3117435510343301182.Spec : Prop :=
  ∀ n, P3117435510343301182.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P17625582875899159571

`A010889(A153733(n))`
-/

namespace A099551.P17625582875899159571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A153733 n).toNat

end

end A099551.P17625582875899159571

namespace A099551

/-- `A010889(A153733(n))` -/
def P17625582875899159571.Spec : Prop :=
  ∀ n, P17625582875899159571.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P5250455938862083192

`A141518(A025480(n))`
-/

namespace A099551.P5250455938862083192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141518 (A025480 n).toNat

end

end A099551.P5250455938862083192

namespace A099551

/-- `A141518(A025480(n))` -/
def P5250455938862083192.Spec : Prop :=
  ∀ n, P5250455938862083192.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P548656985038022554

`A010879(A327539(n+1))`
-/

namespace A099551.P548656985038022554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A327539 (n + 1)).toNat

end

end A099551.P548656985038022554

namespace A099551

/-- `A010879(A327539(n+1))` -/
def P548656985038022554.Spec : Prop :=
  ∀ n, P548656985038022554.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P16034166325528342051

`A106586(A322250(n+1))`
-/

namespace A099551.P16034166325528342051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106586 (A322250 (n + 1)).toNat

end

end A099551.P16034166325528342051

namespace A099551

/-- `A106586(A322250(n+1))` -/
def P16034166325528342051.Spec : Prop :=
  ∀ n, P16034166325528342051.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P4373394807181280191

`A065881(A000265(2*(n+1)))`
-/

namespace A099551.P4373394807181280191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A000265 (2 * (n + 1))).toNat

end

end A099551.P4373394807181280191

namespace A099551

/-- `A065881(A000265(2*(n+1)))` -/
def P4373394807181280191.Spec : Prop :=
  ∀ n, P4373394807181280191.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P9158569826814983150

`A000265(n+1)%A040020(n)`
-/

namespace A099551.P9158569826814983150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A040020 n)

end

end A099551.P9158569826814983150

namespace A099551

/-- `A000265(n+1)%A040020(n)` -/
def P9158569826814983150.Spec : Prop :=
  ∀ n, P9158569826814983150.a n = A099551 (n + 1)

end A099551

/-! ## A099551.P7808882537958631222

`A010879((n+1)/A006519(n+1))`
-/

namespace A099551.P7808882537958631222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A099551.P7808882537958631222

namespace A099551

/-- `A010879((n+1)/A006519(n+1))` -/
def P7808882537958631222.Spec : Prop :=
  ∀ n, P7808882537958631222.a n = A099551 (n + 1)

end A099551

/-!
# A099553: Number of rooted 2-connected loopless 4-regular planar maps with n inner faces.

The programs for A099553, there is no canonical definition to state claims against.
-/

/-! ## A099553.P16381797329223389240

`A008620(or(A000351(n), A001981(n)))`
-/

namespace A099553.P16381797329223389240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.lor (A000351 n) (A001981 n)).toNat

end

end A099553.P16381797329223389240

/-! ## A099553.P10581912558810191414

`A008620(or(A000351(n), A027941(n)))`
-/

namespace A099553.P10581912558810191414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.lor (A000351 n) (A027941 n)).toNat

end

end A099553.P10581912558810191414

/-!
# A099556: a(n) = Sum_{k=0..2*n} (n - floor(k/2))^k.

The programs for A099556, the canonical program `A099556.P11403595726012442445` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099556 has offset 1).

The definition of A099556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2*n, (n-floor(#/2))^#]` (program `A099556.P11403595726012442445`, by `A099556.P11403595726012442445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099556.P11403595726012442445

`∑{#}[2*n, (n-floor(#/2))^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099556

/-- `∑{#}[2*n, (n-floor(#/2))^#]` -/
def P11403595726012442445.Spec : Prop :=
  ∀ n, P11403595726012442445.a n = A099556 (n + 1)

theorem P11403595726012442445.correct : P11403595726012442445.Spec := by
  intro n
  simp only [A099556, Nat.add_sub_cancel]

end A099556

/-! ## A099556.P17047369669795178542

`A359660(n)+A234568(n)`
-/

namespace A099556.P17047369669795178542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359660 n + A234568 n

end

end A099556.P17047369669795178542

namespace A099556

/-- `A359660(n)+A234568(n)` -/
def P17047369669795178542.Spec : Prop :=
  ∀ n, P17047369669795178542.a n = A099556 (n + 1)

end A099556

/-! ## A099556.P2834610810596618183

`A104872(2*n+1)+A104872(2*n)`
-/

namespace A099556.P2834610810596618183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (2 * n + 1) + A104872 (2 * n)

end

end A099556.P2834610810596618183

namespace A099556

/-- `A104872(2*n+1)+A104872(2*n)` -/
def P2834610810596618183.Spec : Prop :=
  ∀ n, P2834610810596618183.a n = A099556 (n + 1)

end A099556

/-!
# A099557: Slanted Pascal's triangle, read by rows, such that T(n,k) = binomial(n-[k/2],k) for [n*2/3]>=k>=0, where [x]=floor(x).

The programs for A099557, the canonical program `A099557.P7796845270064822578` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099557 has offset 0).

The definition of A099557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099557.P3546495077807614501

`2*T(n-1,k)-T(n-2,k)+T(row(n)-3, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A099557.P3546495077807614501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n + SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A099557.P3546495077807614501

namespace A099557

/-- `2*T(n-1,k)-T(n-2,k)+T(row(n)-3, col(n)-2)` -/
def P3546495077807614501.Spec : Prop :=
  ∀ n, P3546495077807614501.a n = A099557 n

end A099557

/-! ## A099557.P7796845270064822578

`C(A110654(A294317(n)), A002262(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099557

/-- `C(A110654(A294317(n)), A002262(n))` -/
def P7796845270064822578.Spec : Prop :=
  ∀ n, (P7796845270064822578.a n : ℤ) = A099557 n

theorem P7796845270064822578.correct : P7796845270064822578.Spec := by
  intro n
  simp only [A099557]

end A099557

/-! ## A099557.P16972452534194649858

`C(A004526(A128076(n+1)), A002262(n))`
-/

namespace A099557.P16972452534194649858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A128076 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099557.P16972452534194649858

namespace A099557

/-- `C(A004526(A128076(n+1)), A002262(n))` -/
def P16972452534194649858.Spec : Prop :=
  ∀ n, (P16972452534194649858.a n : ℤ) = A099557 n

end A099557

/-! ## A099557.P9620408742720692693

`C(A000196(A082156(n+1)), A002262(n))`
-/

namespace A099557.P9620408742720692693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 (A082156 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099557.P9620408742720692693

namespace A099557

/-- `C(A000196(A082156(n+1)), A002262(n))` -/
def P9620408742720692693.Spec : Prop :=
  ∀ n, (P9620408742720692693.a n : ℤ) = A099557 n

end A099557

/-! ## A099557.P4111232512302939906

`C(A000196(A163257(n+1)), A002262(n))`
-/

namespace A099557.P4111232512302939906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 (A163257 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099557.P4111232512302939906

namespace A099557

/-- `C(A000196(A163257(n+1)), A002262(n))` -/
def P4111232512302939906.Spec : Prop :=
  ∀ n, (P4111232512302939906.a n : ℤ) = A099557 n

end A099557

/-! ## A099557.P9754214471713022145

`C(A000196(A163253(n+1)), A002262(n))`
-/

namespace A099557.P9754214471713022145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 (A163253 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099557.P9754214471713022145

namespace A099557

/-- `C(A000196(A163253(n+1)), A002262(n))` -/
def P9754214471713022145.Spec : Prop :=
  ∀ n, (P9754214471713022145.a n : ℤ) = A099557 n

end A099557

/-! ## A099557.P9204844926154369739

`A260492(A194032(n+1)+A002262(n))`
-/

namespace A099557.P9204844926154369739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (A194032 (n + 1) + A002262 n).toNat

end

end A099557.P9204844926154369739

namespace A099557

/-- `A260492(A194032(n+1)+A002262(n))` -/
def P9204844926154369739.Spec : Prop :=
  ∀ n, P9204844926154369739.a n = A099557 n

end A099557

/-!
# A099558: Antidiagonal sums of the triangle A099557.

The programs for A099558, the canonical program `A099558.P14909006528468897831` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099558 has offset 0).

The definition of A099558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099558.P14909006528468897831

`ogf((1-x+x^2)/(1-2x+x^2-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099558

/-- `ogf((1-x+x^2)/(1-2x+x^2-x^5))` -/
def P14909006528468897831.Spec : Prop :=
  ∀ n, P14909006528468897831.a n = A099558 n

theorem P14909006528468897831.correct : P14909006528468897831.Spec := by
  intro n
  simp only [A099558]

end A099558

/-! ## A099558.P12897108019287353997

`A005686(2*(n+1))`
-/

namespace A099558.P12897108019287353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (2 * (n + 1))

end

end A099558.P12897108019287353997

namespace A099558

/-- `A005686(2*(n+1))` -/
def P12897108019287353997.Spec : Prop :=
  ∀ n, P12897108019287353997.a n = A099558 n

end A099558

/-! ## A099558.P15591940259229258328

`A001687(2*n+1)+A001687(2*(n+1))`
-/

namespace A099558.P15591940259229258328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * n + 1) + A001687 (2 * (n + 1))

end

end A099558.P15591940259229258328

namespace A099558

/-- `A001687(2*n+1)+A001687(2*(n+1))` -/
def P15591940259229258328.Spec : Prop :=
  ∀ n, P15591940259229258328.a n = A099558 n

end A099558

/-! ## A099558.P5302604650936879230

`2*a(n-1)-a(n-2)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A099558.P5302604650936879230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5)

end

end A099558.P5302604650936879230

namespace A099558

/-- `2*a(n-1)-a(n-2)+a(n-5)` -/
def P5302604650936879230.Spec : Prop :=
  ∀ n, P5302604650936879230.a n = A099558 n

end A099558

/-! ## A099558.P7267906570091395223

`Δ[record[A005686(A004442(n))]]`
-/

namespace A099558.P7267906570091395223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P7267906570091395223

namespace A099558

/-- `Δ[record[A005686(A004442(n))]]` -/
def P7267906570091395223.Spec : Prop :=
  ∀ n, P7267906570091395223.a n = A099558 n

end A099558

/-! ## A099558.P4707972655518459741

`Δ[record[A005686(A141310(n))]]`
-/

namespace A099558.P4707972655518459741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A141310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P4707972655518459741

namespace A099558

/-- `Δ[record[A005686(A141310(n))]]` -/
def P4707972655518459741.Spec : Prop :=
  ∀ n, P4707972655518459741.a n = A099558 n

end A099558

/-! ## A099558.P16821299889686284157

`Δ[A005686(A020705(Δ[n²]))]`
-/

namespace A099558.P16821299889686284157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A020705 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P16821299889686284157

namespace A099558

/-- `Δ[A005686(A020705(Δ[n²]))]` -/
def P16821299889686284157.Spec : Prop :=
  ∀ n, P16821299889686284157.a n = A099558 n

end A099558

/-! ## A099558.P6497322291274922441

`Δ[record[A005686(A000265(n+1))]]`
-/

namespace A099558.P6497322291274922441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P6497322291274922441

namespace A099558

/-- `Δ[record[A005686(A000265(n+1))]]` -/
def P6497322291274922441.Spec : Prop :=
  ∀ n, P6497322291274922441.a n = A099558 n

end A099558

/-! ## A099558.P16997137328543064753

`Δ[A005686(Δ[n*A020705(n)])]`
-/

namespace A099558.P16997137328543064753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P16997137328543064753

namespace A099558

/-- `Δ[A005686(Δ[n*A020705(n)])]` -/
def P16997137328543064753.Spec : Prop :=
  ∀ n, P16997137328543064753.a n = A099558 n

end A099558

/-! ## A099558.P10629190528637049548

`Δ[A005686(A020705(n+1)+n)]`
-/

namespace A099558.P10629190528637049548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A020705 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099558.P10629190528637049548

namespace A099558

/-- `Δ[A005686(A020705(n+1)+n)]` -/
def P10629190528637049548.Spec : Prop :=
  ∀ n, P10629190528637049548.a n = A099558 n

end A099558

/-! ## A099558.P14123480755338516856

`A005686(A317108(n+1))^gcd(n+1, A104080(n))`
-/

namespace A099558.P14123480755338516856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A317108 (n + 1)).toNat ^ Int.gcd (n + 1 : ℤ) (A104080 n)

end

end A099558.P14123480755338516856

namespace A099558

/-- `A005686(A317108(n+1))^gcd(n+1, A104080(n))` -/
def P14123480755338516856.Spec : Prop :=
  ∀ n, P14123480755338516856.a n = A099558 n

end A099558

/-! ## A099558.P2827133395218614449

`A005686(A051755(n+2))%A006451(n+1)`
-/

namespace A099558.P2827133395218614449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005686 (A051755 (n + 2)).toNat) (A006451 (n + 1))

end

end A099558.P2827133395218614449

namespace A099558

/-- `A005686(A051755(n+2))%A006451(n+1)` -/
def P2827133395218614449.Spec : Prop :=
  ∀ n, P2827133395218614449.a n = A099558 n

end A099558

/-! ## A099558.P13153234041409190647

`A005686(A051755(n+2))%A168607(n)`
-/

namespace A099558.P13153234041409190647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005686 (A051755 (n + 2)).toNat) (A168607 n)

end

end A099558.P13153234041409190647

namespace A099558

/-- `A005686(A051755(n+2))%A168607(n)` -/
def P13153234041409190647.Spec : Prop :=
  ∀ n, P13153234041409190647.a n = A099558 n

end A099558

/-!
# A099559: a(n) = Sum_{k=0..floor(n/5)} C(n-4k,k+1).

The programs for A099559, the canonical program `A099559.P6296366592033553394` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099559 has offset 0).

The definition of A099559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099559.P8489266791180516705

`ogf(x/(1-2x+x^2-x^5+x^6))`
-/

namespace A099559.P8489266791180516705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 1, 0, 0, -1, 1] n

end

end A099559.P8489266791180516705

namespace A099559

/-- `ogf(x/(1-2x+x^2-x^5+x^6))` -/
def P8489266791180516705.Spec : Prop :=
  ∀ n, P8489266791180516705.a n = A099559 n

end A099559

/-! ## A099559.P6296366592033553394

`A003520(n+4)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099559

/-- `A003520(n+4)-1` -/
def P6296366592033553394.Spec : Prop :=
  ∀ n, P6296366592033553394.a n = A099559 n

theorem P6296366592033553394.correct : P6296366592033553394.Spec := by
  intro n
  simp only [A099559]

end A099559

/-! ## A099559.P15216471211849992787

`2*a(n-1)-a(n-2)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A099559.P15216471211849992787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - a (n - 6)

end

end A099559.P15216471211849992787

namespace A099559

/-- `2*a(n-1)-a(n-2)+a(n-5)-a(n-6)` -/
def P15216471211849992787.Spec : Prop :=
  ∀ n, P15216471211849992787.a n = A099559 n

end A099559

/-! ## A099559.P261087930717548530

`∑[a(n-1)+a(n-5)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A099559.P261087930717548530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099559.P261087930717548530

namespace A099559

/-- `∑[a(n-1)+a(n-5)]` -/
def P261087930717548530.Spec : Prop :=
  ∀ n, (P261087930717548530.a n : ℤ) = A099559 n

end A099559

/-! ## A099559.P4880274325104030531

`a(n-1)+a(n-5)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A099559.P4880274325104030531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  a (n - 1) + (a (n - 5) + 1)

end

end A099559.P4880274325104030531

namespace A099559

/-- `a(n-1)+a(n-5)+1` -/
def P4880274325104030531.Spec : Prop :=
  ∀ n, (P4880274325104030531.a n : ℤ) = A099559 n

end A099559

/-! ## A099559.P16540316319134728132

`∑[A017899(n+4)]`
-/

namespace A099559.P16540316319134728132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099559.P16540316319134728132

namespace A099559

/-- `∑[A017899(n+4)]` -/
def P16540316319134728132.Spec : Prop :=
  ∀ n, P16540316319134728132.a n = A099559 n

end A099559

/-! ## A099559.P4626303664232966272

`record[A017899(n)-1]`
-/

namespace A099559.P4626303664232966272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099559.P4626303664232966272

namespace A099559

/-- `record[A017899(n)-1]` -/
def P4626303664232966272.Spec : Prop :=
  ∀ n, P4626303664232966272.a n = A099559 n

end A099559

/-! ## A099559.P426340188129329775

`A023434(n+1)-A017899(n)`
-/

namespace A099559.P426340188129329775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1) - A017899 n

end

end A099559.P426340188129329775

namespace A099559

/-- `A023434(n+1)-A017899(n)` -/
def P426340188129329775.Spec : Prop :=
  ∀ n, P426340188129329775.a n = A099559 n

end A099559

/-! ## A099559.P14441290505430411240

`∑[A003520(n)]-A003520(n)`
-/

namespace A099559.P14441290505430411240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003520 n

end

end A099559.P14441290505430411240

namespace A099559

/-- `∑[A003520(n)]-A003520(n)` -/
def P14441290505430411240.Spec : Prop :=
  ∀ n, P14441290505430411240.a n = A099559 n

end A099559

/-! ## A099559.P417188419149525702

`A098578(n)-A143283(n)`
-/

namespace A099559.P417188419149525702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n - A143283 n

end

end A099559.P417188419149525702

namespace A099559

/-- `A098578(n)-A143283(n)` -/
def P417188419149525702.Spec : Prop :=
  ∀ n, P417188419149525702.a n = A099559 n

end A099559

/-!
# A099560: a(n) = Sum_{k=0..floor(n/3)} C(n-2k,k-1).

The programs for A099560, the canonical program `A099560.P3017801917379421415` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099560 has offset 0).

The definition of A099560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099560.P5971750455693682334

`ogf(x^3/(1-x-2x^3+x^4+x^6))`
-/

namespace A099560.P5971750455693682334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -1, 0, -2, 1, 0, 1] n

end

end A099560.P5971750455693682334

namespace A099560

/-- `ogf(x^3/(1-x-2x^3+x^4+x^6))` -/
def P5971750455693682334.Spec : Prop :=
  ∀ n, P5971750455693682334.a n = A099560 n

end A099560

/-! ## A099560.P3017801917379421415

`a(n-3)+A000930(n-3)` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099560

/-- `a(n-3)+A000930(n-3)` -/
def P3017801917379421415.Spec : Prop :=
  ∀ n, P3017801917379421415.a n = A099560 n

theorem P3017801917379421415.correct : P3017801917379421415.Spec := by
  intro n
  simp only [A099560]

end A099560

/-! ## A099560.P10055151075188318488

`a(n-1)+2*a(n-3)-a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A099560.P10055151075188318488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 3) - a (n - 4) - a (n - 6)

end

end A099560.P10055151075188318488

namespace A099560

/-- `a(n-1)+2*a(n-3)-a(n-4)-a(n-6)` -/
def P10055151075188318488.Spec : Prop :=
  ∀ n, P10055151075188318488.a n = A099560 n

end A099560

/-! ## A099560.P12632417254386621799

`A078012(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A099560.P12632417254386621799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A078012 n + a (n - 3)

end

end A099560.P12632417254386621799

namespace A099560

/-- `A078012(n)+a(n-3)` -/
def P12632417254386621799.Spec : Prop :=
  ∀ n, P12632417254386621799.a n = A099560 n

end A099560

/-! ## A099560.P6907717972834552269

`∑[A135851(n)]+(n+1)²%3`
-/

namespace A099560.P6907717972834552269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A099560.P6907717972834552269

namespace A099560

/-- `∑[A135851(n)]+(n+1)²%3` -/
def P6907717972834552269.Spec : Prop :=
  ∀ n, P6907717972834552269.a n = A099560 n

end A099560

/-! ## A099560.P13754912303159732400

`Δ[A000930(n)-A002264(n)]`
-/

namespace A099560.P13754912303159732400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099560.P13754912303159732400

namespace A099560

/-- `Δ[A000930(n)-A002264(n)]` -/
def P13754912303159732400.Spec : Prop :=
  ∀ n, P13754912303159732400.a n = A099560 n

end A099560

/-! ## A099560.P12023887536822782141

`Δ[A000930(n)-A008620(n)]`
-/

namespace A099560.P12023887536822782141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099560.P12023887536822782141

namespace A099560

/-- `Δ[A000930(n)-A008620(n)]` -/
def P12023887536822782141.Spec : Prop :=
  ∀ n, P12023887536822782141.a n = A099560 n

end A099560

/-! ## A099560.P7996698787704882818

`A000930(n+1)-(A079978(n+1)+A000930(n))`
-/

namespace A099560.P7996698787704882818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) - (A079978 (n + 1) + A000930 n)

end

end A099560.P7996698787704882818

namespace A099560

/-- `A000930(n+1)-(A079978(n+1)+A000930(n))` -/
def P7996698787704882818.Spec : Prop :=
  ∀ n, P7996698787704882818.a n = A099560 n

end A099560

/-! ## A099560.P2595087182034153354

`Δ[A000930(n)]-and(1, A196132(n+1))`
-/

namespace A099560.P2595087182034153354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.land 1 (A196132 (n + 1))

end

end A099560.P2595087182034153354

namespace A099560

/-- `Δ[A000930(n)]-and(1, A196132(n+1))` -/
def P2595087182034153354.Spec : Prop :=
  ∀ n, P2595087182034153354.a n = A099560 n

end A099560

/-! ## A099560.P3360515983139107704

`Δ[A000930(n)]-and(1, A252856(n+1))`
-/

namespace A099560.P3360515983139107704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.land 1 (A252856 (n + 1))

end

end A099560.P3360515983139107704

namespace A099560

/-- `Δ[A000930(n)]-and(1, A252856(n+1))` -/
def P3360515983139107704.Spec : Prop :=
  ∀ n, P3360515983139107704.a n = A099560 n

end A099560

/-!
# A099561: Sum C(n-3k,k-1), k=0..floor(n/4).

The programs for A099561, the canonical program `A099561.P2667983398424524595` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099561 has offset 0).

The definition of A099561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099561.P17516829251018269534

`ogf(x^4/(1-x-2x^4+x^5+x^8))`
-/

namespace A099561.P17516829251018269534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -1, 0, 0, -2, 1, 0, 0, 1] n

end

end A099561.P17516829251018269534

namespace A099561

/-- `ogf(x^4/(1-x-2x^4+x^5+x^8))` -/
def P17516829251018269534.Spec : Prop :=
  ∀ n, P17516829251018269534.a n = A099561 n

end A099561

/-! ## A099561.P2667983398424524595

`a(n-1)+2*a(n-4)-a(n-5)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099561

/-- `a(n-1)+2*a(n-4)-a(n-5)-a(n-8)` -/
def P2667983398424524595.Spec : Prop :=
  ∀ n, P2667983398424524595.a n = A099561 n

theorem P2667983398424524595.correct : P2667983398424524595.Spec := by
  intro n
  simp only [A099561]

end A099561

/-! ## A099561.P8782165108117539909

`A017898(n+1)-Δ[A002265(n)]`
-/

namespace A099561.P8782165108117539909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099561.P8782165108117539909

namespace A099561

/-- `A017898(n+1)-Δ[A002265(n)]` -/
def P8782165108117539909.Spec : Prop :=
  ∀ n, P8782165108117539909.a n = A099561 n

end A099561

/-! ## A099561.P6253119867153070774

`A017898(n+1)-Δ[A008621(n)]`
-/

namespace A099561.P6253119867153070774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099561.P6253119867153070774

namespace A099561

/-- `A017898(n+1)-Δ[A008621(n)]` -/
def P6253119867153070774.Spec : Prop :=
  ∀ n, P6253119867153070774.a n = A099561 n

end A099561

/-! ## A099561.P11555986033865569760

`A017898(n+1)-A064873(2*n+1)`
-/

namespace A099561.P11555986033865569760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) - A064873 (2 * n + 1)

end

end A099561.P11555986033865569760

namespace A099561

/-- `A017898(n+1)-A064873(2*n+1)` -/
def P11555986033865569760.Spec : Prop :=
  ∀ n, P11555986033865569760.a n = A099561 n

end A099561

/-! ## A099561.P1849669574029918199

`Δ[∑[A017898(n)]-A002265(n)]`
-/

namespace A099561.P1849669574029918199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099561.P1849669574029918199

namespace A099561

/-- `Δ[∑[A017898(n)]-A002265(n)]` -/
def P1849669574029918199.Spec : Prop :=
  ∀ n, P1849669574029918199.a n = A099561 n

end A099561

/-! ## A099561.P14539147815417028097

`Δ[∑[A017898(n)]-A008621(n)]`
-/

namespace A099561.P14539147815417028097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099561.P14539147815417028097

namespace A099561

/-- `Δ[∑[A017898(n)]-A008621(n)]` -/
def P14539147815417028097.Spec : Prop :=
  ∀ n, P14539147815417028097.a n = A099561 n

end A099561

/-! ## A099561.P8232005699770423328

`Δ[A003269(n+1)-A002265(n)]`
-/

namespace A099561.P8232005699770423328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1) - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099561.P8232005699770423328

namespace A099561

/-- `Δ[A003269(n+1)-A002265(n)]` -/
def P8232005699770423328.Spec : Prop :=
  ∀ n, P8232005699770423328.a n = A099561 n

end A099561

/-! ## A099561.P17409875938321391373

`Δ[Δ[A098578(n)]-A002265(n)]`
-/

namespace A099561.P17409875938321391373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099561.P17409875938321391373

namespace A099561

/-- `Δ[Δ[A098578(n)]-A002265(n)]` -/
def P17409875938321391373.Spec : Prop :=
  ∀ n, P17409875938321391373.a n = A099561 n

end A099561

/-! ## A099561.P2776256437543473100

`Δ[Δ[A098578(n)]-A008621(n)]`
-/

namespace A099561.P2776256437543473100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099561.P2776256437543473100

namespace A099561

/-- `Δ[Δ[A098578(n)]-A008621(n)]` -/
def P2776256437543473100.Spec : Prop :=
  ∀ n, P2776256437543473100.a n = A099561 n

end A099561

/-!
# A099562: Sum C(n-4k,k-1), k=0..floor(n/5).

The programs for A099562, the canonical program `A099562.P10591539940263970099` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099562 has offset 0).

The definition of A099562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099562.P8708817207016024109

`ogf(x^5/(1-x-2x^5+x^6+x^10))`
-/

namespace A099562.P8708817207016024109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1] [1, -1, 0, 0, 0, -2, 1, 0, 0, 0, 1] n

end

end A099562.P8708817207016024109

namespace A099562

/-- `ogf(x^5/(1-x-2x^5+x^6+x^10))` -/
def P8708817207016024109.Spec : Prop :=
  ∀ n, P8708817207016024109.a n = A099562 n

end A099562

/-! ## A099562.P10591539940263970099

`a(n-1)+2*a(n-5)-a(n-6)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099562

/-- `a(n-1)+2*a(n-5)-a(n-6)-a(n-10)` -/
def P10591539940263970099.Spec : Prop :=
  ∀ n, P10591539940263970099.a n = A099562 n

theorem P10591539940263970099.correct : P10591539940263970099.Spec := by
  intro n
  simp only [A099562]

end A099562

/-! ## A099562.P6644388065284922366

`A017899(n+1)-Δ[A002266(n)]`
-/

namespace A099562.P6644388065284922366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099562.P6644388065284922366

namespace A099562

/-- `A017899(n+1)-Δ[A002266(n)]` -/
def P6644388065284922366.Spec : Prop :=
  ∀ n, P6644388065284922366.a n = A099562 n

end A099562

/-! ## A099562.P4192619121763923174

`Δ[A003520(n)-A002266(n)]`
-/

namespace A099562.P4192619121763923174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099562.P4192619121763923174

namespace A099562

/-- `Δ[A003520(n)-A002266(n)]` -/
def P4192619121763923174.Spec : Prop :=
  ∀ n, P4192619121763923174.a n = A099562 n

end A099562

/-! ## A099562.P11774856970702721518

`Δ[A003520(n)-A008616(2*n)]`
-/

namespace A099562.P11774856970702721518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A008616 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099562.P11774856970702721518

namespace A099562

/-- `Δ[A003520(n)-A008616(2*n)]` -/
def P11774856970702721518.Spec : Prop :=
  ∀ n, P11774856970702721518.a n = A099562 n

end A099562

/-! ## A099562.P1283985303891222673

`Δ[A003520(n)-A059995(2*n)]`
-/

namespace A099562.P1283985303891222673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A059995 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099562.P1283985303891222673

namespace A099562

/-- `Δ[A003520(n)-A059995(2*n)]` -/
def P1283985303891222673.Spec : Prop :=
  ∀ n, P1283985303891222673.a n = A099562 n

end A099562

/-! ## A099562.P1017508637346903386

`Δ[A003520(n)-A002264(A057355(n))]`
-/

namespace A099562.P1017508637346903386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A002264 (A057355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099562.P1017508637346903386

namespace A099562

/-- `Δ[A003520(n)-A002264(A057355(n))]` -/
def P1017508637346903386.Spec : Prop :=
  ∀ n, P1017508637346903386.a n = A099562 n

end A099562

/-! ## A099562.P17739865946594775341

`Δ[A003520(n)-A008619(A057354(n))]`
-/

namespace A099562.P17739865946594775341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A008619 (A057354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099562.P17739865946594775341

namespace A099562

/-- `Δ[A003520(n)-A008619(A057354(n))]` -/
def P17739865946594775341.Spec : Prop :=
  ∀ n, P17739865946594775341.a n = A099562 n

end A099562

/-! ## A099562.P17533378408935429892

`A017899(n+1)-A000035(A011858(n+4))`
-/

namespace A099562.P17533378408935429892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 1) - A000035 (A011858 (n + 4)).toNat

end

end A099562.P17533378408935429892

namespace A099562

/-- `A017899(n+1)-A000035(A011858(n+4))` -/
def P17533378408935429892.Spec : Prop :=
  ∀ n, P17533378408935429892.a n = A099562 n

end A099562

/-!
# A099563: a(0) = 0; for n > 0, a(n) = final nonzero number in the sequence n, f(n,2), f(f(n,2),3), f(f(f(n,2),3),4),..., where f(n,d) = floor(n/d); the most significant digit in the factorial base representation of n.

The programs for A099563, the canonical program `A099563.P5019841788924108469` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099563 has offset 0).

The definition of A099563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099563.P5019841788924108469

`(n-n%∑[char[n!]]!)/∑[char[n!]]!`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099563

/-- `(n-n%∑[char[n!]]!)/∑[char[n!]]!` -/
def P5019841788924108469.Spec : Prop :=
  ∀ n, P5019841788924108469.a n = (A099563 n : ℚ)

end A099563

/-! ## A099563.P13032766272465205930

`A034968(n-n%∑[char[n!]]!)`
-/

namespace A099563.P13032766272465205930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (n - n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A099563.P13032766272465205930

namespace A099563

/-- `A034968(n-n%∑[char[n!]]!)` -/
def P13032766272465205930.Spec : Prop :=
  ∀ n, P13032766272465205930.a n = A099563 n

end A099563

/-! ## A099563.P3681717763702278232

`A034968(A257686(n))`
-/

namespace A099563.P3681717763702278232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A257686 n).toNat

end

end A099563.P3681717763702278232

namespace A099563

/-- `A034968(A257686(n))` -/
def P3681717763702278232.Spec : Prop :=
  ∀ n, P3681717763702278232.a n = A099563 n

end A099563

/-! ## A099563.P12287597452913380365

`A034968(n-A257687(n))`
-/

namespace A099563.P12287597452913380365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n : ℤ) - A257687 n).toNat

end

end A099563.P12287597452913380365

namespace A099563

/-- `A034968(n-A257687(n))` -/
def P12287597452913380365.Spec : Prop :=
  ∀ n, P12287597452913380365.a n = A099563 n

end A099563

/-! ## A099563.P11356839534743212360

`A246359(n-A257687(n))`
-/

namespace A099563.P11356839534743212360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 ((n : ℤ) - A257687 n).toNat

end

end A099563.P11356839534743212360

namespace A099563

/-- `A246359(n-A257687(n))` -/
def P11356839534743212360.Spec : Prop :=
  ∀ n, P11356839534743212360.a n = A099563 n

end A099563

/-! ## A099563.P10062262937288544184

`A257679(n-A257687(n))`
-/

namespace A099563.P10062262937288544184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 ((n : ℤ) - A257687 n).toNat

end

end A099563.P10062262937288544184

namespace A099563

/-- `A257679(n-A257687(n))` -/
def P10062262937288544184.Spec : Prop :=
  ∀ n, P10062262937288544184.a n = A099563 n

end A099563

/-! ## A099563.P3800707199116935789

`A246359(A257686(2*n-n))`
-/

namespace A099563.P3800707199116935789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A257686 (2 * n - n)).toNat

end

end A099563.P3800707199116935789

namespace A099563

/-- `A246359(A257686(2*n-n))` -/
def P3800707199116935789.Spec : Prop :=
  ∀ n, P3800707199116935789.a n = A099563 n

end A099563

/-! ## A099563.P9288386765087215873

`A246359(A257686(n)+A030308(n))`
-/

namespace A099563.P9288386765087215873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A257686 n + A030308 n).toNat

end

end A099563.P9288386765087215873

namespace A099563

/-- `A246359(A257686(n)+A030308(n))` -/
def P9288386765087215873.Spec : Prop :=
  ∀ n, P9288386765087215873.a n = A099563 n

end A099563

/-! ## A099563.P4291094966226267721

`A257679(2*A257686(n)-A257686(n))`
-/

namespace A099563.P4291094966226267721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (2 * A257686 n - A257686 n).toNat

end

end A099563.P4291094966226267721

namespace A099563

/-- `A257679(2*A257686(n)-A257686(n))` -/
def P4291094966226267721.Spec : Prop :=
  ∀ n, P4291094966226267721.a n = A099563 n

end A099563

/-! ## A099563.P4864275836007279212

`A159880(A276149(n))`
-/

namespace A099563.P4864275836007279212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159880 (A276149 n).toNat

end

end A099563.P4864275836007279212

namespace A099563

/-- `A159880(A276149(n))` -/
def P4864275836007279212.Spec : Prop :=
  ∀ n, P4864275836007279212.a n = A099563 n

end A099563

/-! ## A099563.P6951526554288686374

`A034968(A276149(A225901(n)))`
-/

namespace A099563.P6951526554288686374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A276149 (A225901 n).toNat).toNat

end

end A099563.P6951526554288686374

namespace A099563

/-- `A034968(A276149(A225901(n)))` -/
def P6951526554288686374.Spec : Prop :=
  ∀ n, P6951526554288686374.a n = A099563 n

end A099563

/-! ## A099563.P12299472652397679012

`A276146(A225901(n-A257687(n)))`
-/

namespace A099563.P12299472652397679012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 (A225901 ((n : ℤ) - A257687 n).toNat).toNat

end

end A099563.P12299472652397679012

namespace A099563

/-- `A276146(A225901(n-A257687(n)))` -/
def P12299472652397679012.Spec : Prop :=
  ∀ n, P12299472652397679012.a n = A099563 n

end A099563

/-! ## A099563.P18030010027392958944

`A257679(A257679(2*n+1)*A257686(n))`
-/

namespace A099563.P18030010027392958944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A257679 (2 * n + 1) * A257686 n).toNat

end

end A099563.P18030010027392958944

namespace A099563

/-- `A257679(A257679(2*n+1)*A257686(n))` -/
def P18030010027392958944.Spec : Prop :=
  ∀ n, P18030010027392958944.a n = A099563 n

end A099563

/-! ## A099563.P13718356589792482261

`A276333(A153880(n)-n)`
-/

namespace A099563.P13718356589792482261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (A153880 n - (n : ℤ)).toNat

end

end A099563.P13718356589792482261

namespace A099563

/-- `A276333(A153880(n)-n)` -/
def P13718356589792482261.Spec : Prop :=
  ∀ n, P13718356589792482261.a n = A099563 n

end A099563

/-! ## A099563.P17217758830911689004

`A051903(A276076(n-A257687(n)))`
-/

namespace A099563.P17217758830911689004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276076 ((n : ℤ) - A257687 n).toNat).toNat

end

end A099563.P17217758830911689004

namespace A099563

/-- `A051903(A276076(n-A257687(n)))` -/
def P17217758830911689004.Spec : Prop :=
  ∀ n, P17217758830911689004.a n = A099563 n

end A099563

/-! ## A099563.P17362668730119225048

`A090996(A277012(n))`
-/

namespace A099563.P17362668730119225048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A277012 n).toNat

end

end A099563.P17362668730119225048

namespace A099563

/-- `A090996(A277012(n))` -/
def P17362668730119225048.Spec : Prop :=
  ∀ n, P17362668730119225048.a n = A099563 n

end A099563

/-! ## A099563.P16759264963562196176

`A000030(A007623(n))`
-/

namespace A099563.P16759264963562196176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007623 n).toNat

end

end A099563.P16759264963562196176

namespace A099563

/-- `A000030(A007623(n))` -/
def P16759264963562196176.Spec : Prop :=
  ∀ n, P16759264963562196176.a n = A099563 n

end A099563

/-! ## A099563.P12408490956494200151

`A000030(A064039(n+1))`
-/

namespace A099563.P12408490956494200151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A064039 (n + 1)).toNat

end

end A099563.P12408490956494200151

namespace A099563

/-- `A000030(A064039(n+1))` -/
def P12408490956494200151.Spec : Prop :=
  ∀ n, P12408490956494200151.a n = A099563 n

end A099563

/-! ## A099563.P12309646673890871592

`A000030(A215940(n+1))`
-/

namespace A099563.P12309646673890871592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A215940 (n + 1)).toNat

end

end A099563.P12309646673890871592

namespace A099563

/-- `A000030(A215940(n+1))` -/
def P12309646673890871592.Spec : Prop :=
  ∀ n, P12309646673890871592.a n = A099563 n

end A099563

/-! ## A099563.P1269040062465029267

`A265890(∑[n+1]+1)`
-/

namespace A099563.P1269040062465029267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265890 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A099563.P1269040062465029267

namespace A099563

/-- `A265890(∑[n+1]+1)` -/
def P1269040062465029267.Spec : Prop :=
  ∀ n, P1269040062465029267.a n = A099563 n

end A099563

/-!
# A099565: Location of records in A099564.

The programs for A099565, there is no canonical definition to state claims against.
-/

/-! ## A099565.P12163147485475798630

`(n+1)*A099566(n+1)`
-/

namespace A099565.P12163147485475798630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099566 (n + 1)

end

end A099565.P12163147485475798630

/-! ## A099565.P2891975236725653508

`(n+1)*∏[n*A192687(n)+1]`
-/

namespace A099565.P2891975236725653508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A192687 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A099565.P2891975236725653508

/-! ## A099565.P6221590299998933253

`∏[(n+1)^(1-A095792(n))]*(n+1)`
-/

namespace A099565.P6221590299998933253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A095792 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℚ)

end

end A099565.P6221590299998933253

/-! ## A099565.P3118709149062562695

`(n+1)*∏[n*char[∑[A000045(n)]]+1]`
-/

namespace A099565.P3118709149062562695
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A099565.P3118709149062562695

/-!
# A099566: A099565(n)/n.

The programs for A099566, there is no canonical definition to state claims against.
-/

/-! ## A099566.P8966501287646506030

`A099565(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099566.P8966501287646506030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099565 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A099566.P8966501287646506030

/-! ## A099566.P6297725835796196516

`∏[n*A192687(n)+1]`
-/

namespace A099566.P6297725835796196516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A192687 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099566.P6297725835796196516

/-! ## A099566.P17119229441318434912

`∏[1+n*Δ[A130233(n)]]`
-/

namespace A099566.P17119229441318434912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099566.P17119229441318434912

/-! ## A099566.P7034909373995683613

`∏[n*char[∑[A000045(n)]]+1]`
-/

namespace A099566.P7034909373995683613
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099566.P7034909373995683613

/-! ## A099566.P2941539608986786283

`∏[n*char[∑[A308994(n)]]+1]`
-/

namespace A099566.P2941539608986786283
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099566.P2941539608986786283

/-!
# A099567: Riordan array (1/(1-x-x^3), 1/(1-x)).

The programs for A099567, there is no canonical definition to state claims against.
-/

/-! ## A099567.P9147784970179531778

`A144903((n-comp[∑[n]])²-n)`
-/

namespace A099567.P9147784970179531778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A099567.P9147784970179531778

/-! ## A099567.P6836839567090729346

`A077430(A264659(n+1))`
-/

namespace A099567.P6836839567090729346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A264659 (n + 1)).toNat

end

end A099567.P6836839567090729346

/-! ## A099567.P16499653983407757417

`A062153(4*A264659(n+1))`
-/

namespace A099567.P16499653983407757417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (4 * A264659 (n + 1)).toNat

end

end A099567.P16499653983407757417

/-! ## A099567.P8306152042553823652

`A004233(lcm(2, A264659(n+1)))`
-/

namespace A099567.P8306152042553823652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (Int.lcm 2 (A264659 (n + 1)))

end

end A099567.P8306152042553823652

/-! ## A099567.P4890343501439330634

`A325678(round(sqrt(A082635(n+1))))`
-/

namespace A099567.P4890343501439330634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (SequenceMachineLib.roundAway (Real.sqrt (A082635 (n + 1) : ℝ))).toNat

end

end A099567.P4890343501439330634

/-!
# A099568: Expansion of (1-x)/((1-2*x)*(1-x-x^3)).

The programs for A099568, the canonical program `A099568.P13112335155810909658` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099568 has offset 0).

The definition of A099568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x+2x^2-x^3+2x^4))` (program `A099568.P13112335155810909658`, by `A099568.P13112335155810909658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099568.P13112335155810909658

`ogf((1-x)/(1-3x+2x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099568

/-- `ogf((1-x)/(1-3x+2x^2-x^3+2x^4))` -/
def P13112335155810909658.Spec : Prop :=
  ∀ n, P13112335155810909658.a n = A099568 n

theorem P13112335155810909658.correct : P13112335155810909658.Spec := by
  intro n
  simp only [A099568]

end A099568

/-! ## A099568.P5813106721136993029

`3*a(n-1)-2*a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A099568.P5813106721136993029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3) - 2 * a (n - 4)

end

end A099568.P5813106721136993029

namespace A099568

/-- `3*a(n-1)-2*a(n-2)+a(n-3)-2*a(n-4)` -/
def P5813106721136993029.Spec : Prop :=
  ∀ n, P5813106721136993029.a n = A099568 n

end A099568

/-! ## A099568.P1412891310471389462

`A078012(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099568.P1412891310471389462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078012 n + 2 * a (n - 1)

end

end A099568.P1412891310471389462

namespace A099568

/-- `A078012(n)+2*a(n-1)` -/
def P1412891310471389462.Spec : Prop :=
  ∀ n, P1412891310471389462.a n = A099568 n

end A099568

/-! ## A099568.P7255116070168648172

`A283642(n)-A013979(n+1)`
-/

namespace A099568.P7255116070168648172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n - A013979 (n + 1)

end

end A099568.P7255116070168648172

namespace A099568

/-- `A283642(n)-A013979(n+1)` -/
def P7255116070168648172.Spec : Prop :=
  ∀ n, P7255116070168648172.a n = A099568 n

end A099568

/-! ## A099568.P17208006914542431814

`A001045(n+2)-A013979(n+1)`
-/

namespace A099568.P17208006914542431814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - A013979 (n + 1)

end

end A099568.P17208006914542431814

namespace A099568

/-- `A001045(n+2)-A013979(n+1)` -/
def P17208006914542431814.Spec : Prop :=
  ∀ n, P17208006914542431814.a n = A099568 n

end A099568

/-! ## A099568.P16637771882851379051

`∑[A078012(n)/A000079(n)]*A000079(n)`
-/

namespace A099568.P16637771882851379051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078012 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A099568.P16637771882851379051

namespace A099568

/-- `∑[A078012(n)/A000079(n)]*A000079(n)` -/
def P16637771882851379051.Spec : Prop :=
  ∀ n, P16637771882851379051.a n = (A099568 n : ℚ)

end A099568

/-! ## A099568.P8013916770017209109

`record[A091597(n)]-A013979(n+1)`
-/

namespace A099568.P8013916770017209109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A013979 (n + 1)

end

end A099568.P8013916770017209109

namespace A099568

/-- `record[A091597(n)]-A013979(n+1)` -/
def P8013916770017209109.Spec : Prop :=
  ∀ n, P8013916770017209109.a n = A099568 n

end A099568

/-!
# A099569: Riordan array (((1+x)^2 - x^3)/(1+x)^3, 1/(1+x)).

The programs for A099569, there is no canonical definition to state claims against.
-/

/-! ## A099569.P628879505787283659

`A105810(n)+A023532(n)*A137396(n+1)`
-/

namespace A099569.P628879505787283659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 n + A023532 n * A137396 (n + 1)

end

end A099569.P628879505787283659

/-! ## A099569.P15161269428680429410

`A105810(n)+A137396(n+1)%A054335(n)`
-/

namespace A099569.P15161269428680429410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 n + Int.tmod (A137396 (n + 1)) (A054335 n)

end

end A099569.P15161269428680429410

/-! ## A099569.P6365508050729140201

`xor(A186747(A019989(n)), A247453(n))`
-/

namespace A099569.P6365508050729140201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186747 (A019989 n).toNat) (A247453 n)

end

end A099569.P6365508050729140201

/-! ## A099569.P8376804170439830078

`xor(A001222(A309864(n)), A247453(n))`
-/

namespace A099569.P8376804170439830078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A309864 n).toNat) (A247453 n)

end

end A099569.P8376804170439830078

/-! ## A099569.P10164211021343665919

`xor(A247453(n), A273513(A324094(n+1)))`
-/

namespace A099569.P10164211021343665919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A247453 n) (A273513 (A324094 (n + 1)).toNat)

end

end A099569.P10164211021343665919

/-!
# A099570: Expansion of ((1+x)^2 - x^3)/(1+x)^2.

The programs for A099570, the canonical program `A099570.P11583572729929615613` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099570 has offset 0).

The definition of A099570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2-x^3)/(1+2x+x^2))` (program `A099570.P11583572729929615613`, by `A099570.P11583572729929615613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099570.P11583572729929615613

`ogf((1+2x+x^2-x^3)/(1+2x+x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099570

/-- `ogf((1+2x+x^2-x^3)/(1+2x+x^2))` -/
def P11583572729929615613.Spec : Prop :=
  ∀ n, P11583572729929615613.a n = A099570 n

theorem P11583572729929615613.correct : P11583572729929615613.Spec := by
  intro n
  simp only [A099570]

end A099570

/-! ## A099570.P14421283291405242393

`-xor(1, a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A099570.P14421283291405242393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  -Int.xor 1 (a (n - 1))

end

end A099570.P14421283291405242393

namespace A099570

/-- `-xor(1, a(n-1))` -/
def P14421283291405242393.Spec : Prop :=
  ∀ n, P14421283291405242393.a n = A099570 n

end A099570

/-! ## A099570.P16636810187283442263

`char[2]-xor(1, a(n-1))` with `a(0)=1`
-/

namespace A099570.P16636810187283442263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - Int.xor 1 (a (n - 1))

end

end A099570.P16636810187283442263

namespace A099570

/-- `char[2]-xor(1, a(n-1))` -/
def P16636810187283442263.Spec : Prop :=
  ∀ n, P16636810187283442263.a n = A099570 n

end A099570

/-! ## A099570.P8591917807638096193

`(-1)^n-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A099570.P8591917807638096193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  (-1) ^ n - a (n - 1)

end

end A099570.P8591917807638096193

namespace A099570

/-- `(-1)^n-a(n-1)` -/
def P8591917807638096193.Spec : Prop :=
  ∀ n, P8591917807638096193.a n = A099570 n

end A099570

/-! ## A099570.P8565718283762951667

`(n-2)*xor(2-n, a(n-1))` with `a(0)=1`
-/

namespace A099570.P8565718283762951667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2) * Int.xor (2 - (n : ℤ)) (a (n - 1))

end

end A099570.P8565718283762951667

namespace A099570

/-- `(n-2)*xor(2-n, a(n-1))` -/
def P8565718283762951667.Spec : Prop :=
  ∀ n, P8565718283762951667.a n = A099570 n

end A099570

/-! ## A099570.P8170797909697117766

`(1-2*a(n%2))*(2-n)` with `a(0)=1, a(1)=0`
-/

namespace A099570.P8170797909697117766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - 2 * a (n % 2)) * (2 - (n : ℤ))

end

end A099570.P8170797909697117766

namespace A099570

/-- `(1-2*a(n%2))*(2-n)` -/
def P8170797909697117766.Spec : Prop :=
  ∀ n, P8170797909697117766.a n = A099570 n

end A099570

/-! ## A099570.P5059874258361066441

`Δ[gcd(2, n+1)-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A099570.P5059874258361066441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (Nat.gcd 2 (n + 1) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099570.P5059874258361066441

namespace A099570

/-- `Δ[gcd(2, n+1)-a(n-1)]` -/
def P5059874258361066441.Spec : Prop :=
  ∀ n, P5059874258361066441.a n = A099570 n

end A099570

/-! ## A099570.P4799809839055740739

`2-(a(n-1)+(n-a(n-1))%4)` with `a(0)=1, a(1)=0`
-/

namespace A099570.P4799809839055740739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - (a (n - 1) + Int.tmod ((n : ℤ) - a (n - 1)) 4)

end

end A099570.P4799809839055740739

namespace A099570

/-- `2-(a(n-1)+(n-a(n-1))%4)` -/
def P4799809839055740739.Spec : Prop :=
  ∀ n, P4799809839055740739.a n = A099570 n

end A099570

/-! ## A099570.P8715800129232853152

`2-(a(n-1)-(a(n-1)-n)%4)` with `a(0)=1, a(1)=0`
-/

namespace A099570.P8715800129232853152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - (a (n - 1) - Int.tmod (a (n - 1) - (n : ℤ)) 4)

end

end A099570.P8715800129232853152

namespace A099570

/-- `2-(a(n-1)-(a(n-1)-n)%4)` -/
def P8715800129232853152.Spec : Prop :=
  ∀ n, P8715800129232853152.a n = A099570 n

end A099570

/-! ## A099570.P10581619522242745910

`a(n-2)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1, a(4)=2`
-/

namespace A099570.P10581619522242745910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1, 2] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 1))

end

end A099570.P10581619522242745910

namespace A099570

/-- `a(n-2)+a(n-3)-a(n-1)` -/
def P10581619522242745910.Spec : Prop :=
  ∀ n, P10581619522242745910.a n = A099570 n

end A099570

/-! ## A099570.P9355694840815541308

`A097141(A019590(n+1)+n)`
-/

namespace A099570.P9355694840815541308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A019590 (n + 1) + (n : ℤ)).toNat

end

end A099570.P9355694840815541308

namespace A099570

/-- `A097141(A019590(n+1)+n)` -/
def P9355694840815541308.Spec : Prop :=
  ∀ n, P9355694840815541308.a n = A099570 n

end A099570

/-! ## A099570.P3671673618664481814

`A097141(A154955(n+1)+n)`
-/

namespace A099570.P3671673618664481814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A154955 (n + 1) + (n : ℤ)).toNat

end

end A099570.P3671673618664481814

namespace A099570

/-- `A097141(A154955(n+1)+n)` -/
def P3671673618664481814.Spec : Prop :=
  ∀ n, P3671673618664481814.a n = A099570 n

end A099570

/-! ## A099570.P17297057514815632315

`(2-A028310(n))*A105812(n)`
-/

namespace A099570.P17297057514815632315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A028310 n) * A105812 n

end

end A099570.P17297057514815632315

namespace A099570

/-- `(2-A028310(n))*A105812(n)` -/
def P17297057514815632315.Spec : Prop :=
  ∀ n, P17297057514815632315.a n = A099570 n

end A099570

/-! ## A099570.P9786211629673381115

`2-A267352(n)+n-char[A004277(n)]`
-/

namespace A099570.P9786211629673381115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267352 n + (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099570.P9786211629673381115

namespace A099570

/-- `2-A267352(n)+n-char[A004277(n)]` -/
def P9786211629673381115.Spec : Prop :=
  ∀ n, P9786211629673381115.a n = A099570 n

end A099570

/-! ## A099570.P8430036236534594875

`A033999(n)+A105812(n)-A105811(n)`
-/

namespace A099570.P8430036236534594875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (A105812 n - A105811 n)

end

end A099570.P8430036236534594875

namespace A099570

/-- `A033999(n)+A105812(n)-A105811(n)` -/
def P8430036236534594875.Spec : Prop :=
  ∀ n, P8430036236534594875.a n = A099570 n

end A099570

/-! ## A099570.P15631957071711611294

`A105811(xor(n, A057427(n)))-A057427(n)`
-/

namespace A099570.P15631957071711611294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 (Int.xor (n : ℤ) (A057427 n)).toNat - A057427 n

end

end A099570.P15631957071711611294

namespace A099570

/-- `A105811(xor(n, A057427(n)))-A057427(n)` -/
def P15631957071711611294.Spec : Prop :=
  ∀ n, P15631957071711611294.a n = A099570 n

end A099570

/-! ## A099570.P6747231384517959707

`A097141(n+2-A040000(A065423(n+1)))`
-/

namespace A099570.P6747231384517959707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 ((n + 2 : ℤ) - A040000 (A065423 (n + 1)).toNat).toNat

end

end A099570.P6747231384517959707

namespace A099570

/-- `A097141(n+2-A040000(A065423(n+1)))` -/
def P6747231384517959707.Spec : Prop :=
  ∀ n, P6747231384517959707.a n = A099570 n

end A099570

/-! ## A099570.P6649470431662400302

`A028310(n)+A000035(A028310(n))-A266662(n)`
-/

namespace A099570.P6649470431662400302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A000035 (A028310 n).toNat - A266662 n)

end

end A099570.P6649470431662400302

namespace A099570

/-- `A028310(n)+A000035(A028310(n))-A266662(n)` -/
def P6649470431662400302.Spec : Prop :=
  ∀ n, P6649470431662400302.a n = A099570 n

end A099570

/-! ## A099570.P9823833394630476938

`A248157(A348776(n+1))`
-/

namespace A099570.P9823833394630476938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (A348776 (n + 1)).toNat

end

end A099570.P9823833394630476938

namespace A099570

/-- `A248157(A348776(n+1))` -/
def P9823833394630476938.Spec : Prop :=
  ∀ n, P9823833394630476938.a n = A099570 n

end A099570

/-! ## A099570.P9803584512133203719

`A267458(n+1)-A019425(n)`
-/

namespace A099570.P9803584512133203719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (n + 1) - A019425 n

end

end A099570.P9803584512133203719

namespace A099570

/-- `A267458(n+1)-A019425(n)` -/
def P9803584512133203719.Spec : Prop :=
  ∀ n, P9803584512133203719.a n = A099570 n

end A099570

/-!
# A099571: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k+3, k).

The programs for A099571, the canonical program `A099571.P4280168789997414806` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099571 has offset 0).

The definition of A099571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n-#+3, #)]` (program `A099571.P4280168789997414806`, by `A099571.P4280168789997414806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099571.P15040180266609868359

`A000045(n+4)+(-1)^n*(n²+4*n+7)/16-(n²+12*n+39)/16`
-/

namespace A099571.P15040180266609868359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 4) : ℚ) + ((-1) ^ n * (n ^ 2 + 4 * n + 7 : ℤ) : ℚ) / 16 - (n ^ 2 + 12 * n + 39 : ℚ) / 16

end

end A099571.P15040180266609868359

namespace A099571

/-- `A000045(n+4)+(-1)^n*(n²+4*n+7)/16-(n²+12*n+39)/16` -/
def P15040180266609868359.Spec : Prop :=
  ∀ n, P15040180266609868359.a n = (A099571 n : ℚ)

end A099571

/-! ## A099571.P1954551789414543631

`ogf(1/(1-x-4x^2+3x^3+6x^4-3x^5-4x^6+x^7+x^8))`
-/

namespace A099571.P1954551789414543631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4, 3, 6, -3, -4, 1, 1] n

end

end A099571.P1954551789414543631

namespace A099571

/-- `ogf(1/(1-x-4x^2+3x^3+6x^4-3x^5-4x^6+x^7+x^8))` -/
def P1954551789414543631.Spec : Prop :=
  ∀ n, P1954551789414543631.a n = A099571 n

end A099571

/-! ## A099571.P4280168789997414806

`∑{#}[floor(n/2), C(n-#+3, #)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099571

/-- `∑{#}[floor(n/2), C(n-#+3, #)]` -/
def P4280168789997414806.Spec : Prop :=
  ∀ n, (P4280168789997414806.a n : ℤ) = A099571 n

theorem P4280168789997414806.correct : P4280168789997414806.Spec := by
  intro n
  simp only [A099571]

end A099571

/-! ## A099571.P6637755611067996443

`A054451(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099571.P6637755611067996443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A054451 n + a (n - 2)

end

end A099571.P6637755611067996443

namespace A099571

/-- `A054451(n)+a(n-2)` -/
def P6637755611067996443.Spec : Prop :=
  ∀ n, P6637755611067996443.a n = A099571 n

end A099571

/-! ## A099571.P10525772510806108704

`∑[∑[A083392(n)+A008346(n)]]`
-/

namespace A099571.P10525772510806108704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + A008346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099571.P10525772510806108704

namespace A099571

/-- `∑[∑[A083392(n)+A008346(n)]]` -/
def P10525772510806108704.Spec : Prop :=
  ∀ n, P10525772510806108704.a n = A099571 n

end A099571

/-! ## A099571.P15947497183705676548

`∑[A052952(n)+∑[A083392(n)]]`
-/

namespace A099571.P15947497183705676548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099571.P15947497183705676548

namespace A099571

/-- `∑[A052952(n)+∑[A083392(n)]]` -/
def P15947497183705676548.Spec : Prop :=
  ∀ n, P15947497183705676548.a n = A099571 n

end A099571

/-! ## A099571.P13723711515903737016

`A134510(A167614(n+1))`
-/

namespace A099571.P13723711515903737016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134510 (A167614 (n + 1)).toNat

end

end A099571.P13723711515903737016

namespace A099571

/-- `A134510(A167614(n+1))` -/
def P13723711515903737016.Spec : Prop :=
  ∀ n, P13723711515903737016.a n = A099571 n

end A099571

/-! ## A099571.P16246061534724482070

`A054450(A167614(n+2))`
-/

namespace A099571.P16246061534724482070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A167614 (n + 2)).toNat

end

end A099571.P16246061534724482070

namespace A099571

/-- `A054450(A167614(n+2))` -/
def P16246061534724482070.Spec : Prop :=
  ∀ n, P16246061534724482070.a n = A099571 n

end A099571

/-! ## A099571.P9346935425802472526

`A054450(A340266(n+2)+1)`
-/

namespace A099571.P9346935425802472526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A340266 (n + 2) + 1).toNat

end

end A099571.P9346935425802472526

namespace A099571

/-- `A054450(A340266(n+2)+1)` -/
def P9346935425802472526.Spec : Prop :=
  ∀ n, P9346935425802472526.a n = A099571 n

end A099571

/-! ## A099571.P4428861282361130667

`A294453(A007590(n+4)-2)`
-/

namespace A099571.P4428861282361130667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A007590 (n + 4) - 2).toNat

end

end A099571.P4428861282361130667

namespace A099571

/-- `A294453(A007590(n+4)-2)` -/
def P4428861282361130667.Spec : Prop :=
  ∀ n, P4428861282361130667.a n = A099571 n

end A099571

/-! ## A099571.P8142527360502632241

`A134511(and(1, n)+A055999(n)+9)`
-/

namespace A099571.P8142527360502632241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 ((Nat.land 1 n : ℤ) + (A055999 n + 9)).toNat

end

end A099571.P8142527360502632241

namespace A099571

/-- `A134511(and(1, n)+A055999(n)+9)` -/
def P8142527360502632241.Spec : Prop :=
  ∀ n, P8142527360502632241.a n = A099571 n

end A099571

/-! ## A099571.P18332248441537919664

`A134511(A052905(n)+9-A059841(n))`
-/

namespace A099571.P18332248441537919664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (A052905 n + 9 - A059841 n).toNat

end

end A099571.P18332248441537919664

namespace A099571

/-- `A134511(A052905(n)+9-A059841(n))` -/
def P18332248441537919664.Spec : Prop :=
  ∀ n, P18332248441537919664.a n = A099571 n

end A099571

/-! ## A099571.P11850725992587737527

`A099573(∑[n+3]+n+3)`
-/

namespace A099571.P11850725992587737527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A099571.P11850725992587737527

namespace A099571

/-- `A099573(∑[n+3]+n+3)` -/
def P11850725992587737527.Spec : Prop :=
  ∀ n, P11850725992587737527.a n = A099571 n

end A099571

/-!
# A099572: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k+4, k).

The programs for A099572, the canonical program `A099572.P9074448499182049351` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099572 has offset 0).

The definition of A099572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n-#+4, #)]` (program `A099572.P9074448499182049351`, by `A099572.P9074448499182049351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099572.P16431240958505998888

`ogf(1/(1-x-5x^2+4x^3+10x^4-6x^5-10x^6+4x^7+5x^8-x^9-x^10))`
-/

namespace A099572.P16431240958505998888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -5, 4, 10, -6, -10, 4, 5, -1, -1] n

end

end A099572.P16431240958505998888

namespace A099572

/-- `ogf(1/(1-x-5x^2+4x^3+10x^4-6x^5-10x^6+4x^7+5x^8-x^9-x^10))` -/
def P16431240958505998888.Spec : Prop :=
  ∀ n, P16431240958505998888.a n = A099572 n

end A099572

/-! ## A099572.P9074448499182049351

`∑{#}[floor(n/2), C(n-#+4, #)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099572

/-- `∑{#}[floor(n/2), C(n-#+4, #)]` -/
def P9074448499182049351.Spec : Prop :=
  ∀ n, (P9074448499182049351.a n : ℤ) = A099572 n

theorem P9074448499182049351.correct : P9074448499182049351.Spec := by
  intro n
  simp only [A099572]

end A099572

/-! ## A099572.P17108190012056641786

`A099571(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099572.P17108190012056641786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099571 n + a (n - 2)

end

end A099572.P17108190012056641786

namespace A099572

/-- `A099571(n)+a(n-2)` -/
def P17108190012056641786.Spec : Prop :=
  ∀ n, P17108190012056641786.a n = A099572 n

end A099572

/-! ## A099572.P16511838865434464770

`A134510(A167614(n+2)+1)`
-/

namespace A099572.P16511838865434464770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134510 (A167614 (n + 2) + 1).toNat

end

end A099572.P16511838865434464770

namespace A099572

/-- `A134510(A167614(n+2)+1)` -/
def P16511838865434464770.Spec : Prop :=
  ∀ n, P16511838865434464770.a n = A099572 n

end A099572

/-! ## A099572.P13318828552678108707

`A054450(A055999(n+1)+10)`
-/

namespace A099572.P13318828552678108707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A055999 (n + 1) + 10).toNat

end

end A099572.P13318828552678108707

namespace A099572

/-- `A054450(A055999(n+1)+10)` -/
def P13318828552678108707.Spec : Prop :=
  ∀ n, P13318828552678108707.a n = A099572 n

end A099572

/-! ## A099572.P4055726071419302174

`A294453(A008619(n)+A000096(n+3))`
-/

namespace A099572.P4055726071419302174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A008619 n + A000096 (n + 3)).toNat

end

end A099572.P4055726071419302174

namespace A099572

/-- `A294453(A008619(n)+A000096(n+3))` -/
def P4055726071419302174.Spec : Prop :=
  ∀ n, P4055726071419302174.a n = A099572 n

end A099572

/-! ## A099572.P9775714214273765542

`A294453(A052905(n+2)-A110654(n))`
-/

namespace A099572.P9775714214273765542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A052905 (n + 2) - A110654 n).toNat

end

end A099572.P9775714214273765542

namespace A099572

/-- `A294453(A052905(n+2)-A110654(n))` -/
def P9775714214273765542.Spec : Prop :=
  ∀ n, P9775714214273765542.a n = A099572 n

end A099572

/-! ## A099572.P1618839309820758564

`A134511(A010702(n)+A000124(n+4))`
-/

namespace A099572.P1618839309820758564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (A010702 n + A000124 (n + 4)).toNat

end

end A099572.P1618839309820758564

namespace A099572

/-- `A134511(A010702(n)+A000124(n+4))` -/
def P1618839309820758564.Spec : Prop :=
  ∀ n, P1618839309820758564.a n = A099572 n

end A099572

/-! ## A099572.P16543177462858127815

`A294453(A052905(n+2)-A004526(n+1))`
-/

namespace A099572.P16543177462858127815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A052905 (n + 2) - A004526 (n + 1)).toNat

end

end A099572.P16543177462858127815

namespace A099572

/-- `A294453(A052905(n+2)-A004526(n+1))` -/
def P16543177462858127815.Spec : Prop :=
  ∀ n, P16543177462858127815.a n = A099572 n

end A099572

/-! ## A099572.P13838609998661842918

`A294453(A055998(n+2)+A004526(n)+3)`
-/

namespace A099572.P13838609998661842918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A055998 (n + 2) + (A004526 n + 3)).toNat

end

end A099572.P13838609998661842918

namespace A099572

/-- `A294453(A055998(n+2)+A004526(n)+3)` -/
def P13838609998661842918.Spec : Prop :=
  ∀ n, P13838609998661842918.a n = A099572 n

end A099572

/-! ## A099572.P8851941569180069490

`A294453(A110654(n+5)+A055998(n+2))`
-/

namespace A099572.P8851941569180069490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A110654 (n + 5) + A055998 (n + 2)).toNat

end

end A099572.P8851941569180069490

namespace A099572

/-- `A294453(A110654(n+5)+A055998(n+2))` -/
def P8851941569180069490.Spec : Prop :=
  ∀ n, P8851941569180069490.a n = A099572 n

end A099572

/-!
# A099573: Reverse of number triangle A054450.

The programs for A099573, the canonical program `A099573.P4068469370691083716` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099573 has offset 0).

The definition of A099573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099573.P4068469370691083716

`A038792(A057027(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A099573

/-- `A038792(A057027(n+1))` -/
def P4068469370691083716.Spec : Prop :=
  ∀ n, P4068469370691083716.a n = A099573 n

theorem P4068469370691083716.correct : P4068469370691083716.Spec := by
  intro n
  simp only [A099573]

end A099573

/-! ## A099573.P8110411086064822271

`A054450(A061579(n))`
-/

namespace A099573.P8110411086064822271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A061579 n).toNat

end

end A099573.P8110411086064822271

namespace A099573

/-- `A054450(A061579(n))` -/
def P8110411086064822271.Spec : Prop :=
  ∀ n, P8110411086064822271.a n = A099573 n

end A099573

/-! ## A099573.P15635456197638897601

`A038792(A059399(1+n))`
-/

namespace A099573.P15635456197638897601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A059399 (1 + n)).toNat

end

end A099573.P15635456197638897601

namespace A099573

/-- `A038792(A059399(1+n))` -/
def P15635456197638897601.Spec : Prop :=
  ∀ n, P15635456197638897601.a n = A099573 n

end A099573

/-! ## A099573.P16328201185681424961

`A054450(A114327(n)+n)`
-/

namespace A099573.P16328201185681424961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A114327 n + (n : ℤ)).toNat

end

end A099573.P16328201185681424961

namespace A099573

/-- `A054450(A114327(n)+n)` -/
def P16328201185681424961.Spec : Prop :=
  ∀ n, P16328201185681424961.a n = A099573 n

end A099573

/-! ## A099573.P9048509893136141952

`A054450(A038722(n+1)-1)`
-/

namespace A099573.P9048509893136141952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A038722 (n + 1) - 1).toNat

end

end A099573.P9048509893136141952

namespace A099573

/-- `A054450(A038722(n+1)-1)` -/
def P9048509893136141952.Spec : Prop :=
  ∀ n, P9048509893136141952.a n = A099573 n

end A099573

/-! ## A099573.P16829481557133072284

`A294453(A004526(A061885(n)))`
-/

namespace A099573.P16829481557133072284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A004526 (A061885 n).toNat).toNat

end

end A099573.P16829481557133072284

namespace A099573

/-- `A294453(A004526(A061885(n)))` -/
def P16829481557133072284.Spec : Prop :=
  ∀ n, P16829481557133072284.a n = A099573 n

end A099573

/-!
# A099574: Diagonal sums of triangle A099573.

The programs for A099574, the canonical program `A099574.P3155977078359221339` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099574 has offset 0).

The definition of A099574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099574.P5021388210810140526

`ogf((1-x^4)/(1-x-x^2+x^3-2x^4+x^5+x^6+x^8))`
-/

namespace A099574.P5021388210810140526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1] [1, -1, -1, 1, -2, 1, 1, 0, 1] n

end

end A099574.P5021388210810140526

namespace A099574

/-- `ogf((1-x^4)/(1-x-x^2+x^3-2x^4+x^5+x^6+x^8))` -/
def P5021388210810140526.Spec : Prop :=
  ∀ n, P5021388210810140526.a n = A099574 n

end A099574

/-! ## A099574.P17123246855669458420

`A003269(n+5)-A103609(n+5)`
-/

namespace A099574.P17123246855669458420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A103609 (n + 5)

end

end A099574.P17123246855669458420

namespace A099574

/-- `A003269(n+5)-A103609(n+5)` -/
def P17123246855669458420.Spec : Prop :=
  ∀ n, P17123246855669458420.a n = A099574 n

end A099574

/-! ## A099574.P3155977078359221339

`A003269(n+5)-A079977(n+3)-A079977(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099574

/-- `A003269(n+5)-A079977(n+3)-A079977(n+2)` -/
def P3155977078359221339.Spec : Prop :=
  ∀ n, P3155977078359221339.a n = A099574 n

theorem P3155977078359221339.correct : P3155977078359221339.Spec := by
  intro n
  simp only [A099574]

end A099574

/-! ## A099574.P3564437495722835566

`A003269(n+5)-A000045(A110654(n)+2)`
-/

namespace A099574.P3564437495722835566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A000045 (A110654 n + 2).toNat

end

end A099574.P3564437495722835566

namespace A099574

/-- `A003269(n+5)-A000045(A110654(n)+2)` -/
def P3564437495722835566.Spec : Prop :=
  ∀ n, P3564437495722835566.a n = A099574 n

end A099574

/-! ## A099574.P10103900087683745681

`A003269(n+5)-A000045(A008619(n+3))`
-/

namespace A099574.P10103900087683745681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A000045 (A008619 (n + 3)).toNat

end

end A099574.P10103900087683745681

namespace A099574

/-- `A003269(n+5)-A000045(A008619(n+3))` -/
def P10103900087683745681.Spec : Prop :=
  ∀ n, P10103900087683745681.a n = A099574 n

end A099574

/-! ## A099574.P12041997967718762046

`A003269(n+5)-A000045(A004526(n+5))`
-/

namespace A099574.P12041997967718762046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A000045 (A004526 (n + 5)).toNat

end

end A099574.P12041997967718762046

namespace A099574

/-- `A003269(n+5)-A000045(A004526(n+5))` -/
def P12041997967718762046.Spec : Prop :=
  ∀ n, P12041997967718762046.a n = A099574 n

end A099574

/-! ## A099574.P2966922041501943318

`A017898(n+8)-A000045(A008619(n+3))`
-/

namespace A099574.P2966922041501943318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 8) - A000045 (A008619 (n + 3)).toNat

end

end A099574.P2966922041501943318

namespace A099574

/-- `A017898(n+8)-A000045(A008619(n+3))` -/
def P2966922041501943318.Spec : Prop :=
  ∀ n, P2966922041501943318.a n = A099574 n

end A099574

/-! ## A099574.P15529056874483833826

`A003269(n+5)-A171731(A008805(n+3))`
-/

namespace A099574.P15529056874483833826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A171731 (A008805 (n + 3)).toNat

end

end A099574.P15529056874483833826

namespace A099574

/-- `A003269(n+5)-A171731(A008805(n+3))` -/
def P15529056874483833826.Spec : Prop :=
  ∀ n, P15529056874483833826.a n = A099574 n

end A099574

/-!
# A099575: Number triangle T(n,k) = binomial(n + floor(k/2) + 1, n + 1), 0 <= k <= n.

The programs for A099575, the canonical program `A099575.P8075047530605697419` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099575 has offset 0).

The definition of A099575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+floor(col(n)/2)+1, row(n)+1)` (program `A099575.P8075047530605697419`, by `A099575.P8075047530605697419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099575.P8075047530605697419

`C(row(n)+floor(col(n)/2)+1, row(n)+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099575

/-- `C(row(n)+floor(col(n)/2)+1, row(n)+1)` -/
def P8075047530605697419.Spec : Prop :=
  ∀ n, (P8075047530605697419.a n : ℤ) = A099575 n

theorem P8075047530605697419.correct : P8075047530605697419.Spec := by
  intro n
  simp only [A099575]

end A099575

/-! ## A099575.P12089026861830831970

`A178300(A008619(A061885(n)))`
-/

namespace A099575.P12089026861830831970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A008619 (A061885 n).toNat).toNat

end

end A099575.P12089026861830831970

namespace A099575

/-- `A178300(A008619(A061885(n)))` -/
def P12089026861830831970.Spec : Prop :=
  ∀ n, P12089026861830831970.a n = A099575 n

end A099575

/-! ## A099575.P16601446238733615869

`A194005(A245300(n)-A157928(n))`
-/

namespace A099575.P16601446238733615869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A245300 n - A157928 n).toNat

end

end A099575.P16601446238733615869

namespace A099575

/-- `A194005(A245300(n)-A157928(n))` -/
def P16601446238733615869.Spec : Prop :=
  ∀ n, P16601446238733615869.a n = A099575 n

end A099575

/-! ## A099575.P16904479794634579908

`A103631(A245300(∑[A035214(n)]))`
-/

namespace A099575.P16904479794634579908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A245300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A099575.P16904479794634579908

namespace A099575

/-- `A103631(A245300(∑[A035214(n)]))` -/
def P16904479794634579908.Spec : Prop :=
  ∀ n, P16904479794634579908.a n = A099575 n

end A099575

/-! ## A099575.P16993504533460666542

`T(n,k-1)+abs(A053119(A245300(n)))` with `a(0)=1`
-/

namespace A099575.P16993504533460666542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + |A053119 (A245300 n).toNat|

end

end A099575.P16993504533460666542

namespace A099575

/-- `T(n,k-1)+abs(A053119(A245300(n)))` -/
def P16993504533460666542.Spec : Prop :=
  ∀ n, P16993504533460666542.a n = A099575 n

end A099575

/-! ## A099575.P10676971306045907005

`A030111(A245300(n)+A193739(n))`
-/

namespace A099575.P10676971306045907005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A245300 n + A193739 n).toNat

end

end A099575.P10676971306045907005

namespace A099575

/-- `A030111(A245300(n)+A193739(n))` -/
def P10676971306045907005.Spec : Prop :=
  ∀ n, P10676971306045907005.a n = A099575 n

end A099575

/-! ## A099575.P9665028986522515096

`A030111(A245300(n)+A004736(n+1))`
-/

namespace A099575.P9665028986522515096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A245300 n + A004736 (n + 1)).toNat

end

end A099575.P9665028986522515096

namespace A099575

/-- `A030111(A245300(n)+A004736(n+1))` -/
def P9665028986522515096.Spec : Prop :=
  ∀ n, P9665028986522515096.a n = A099575 n

end A099575

/-! ## A099575.P7710848259238492049

`A065941(A245300(A007401(n+1)))`
-/

namespace A099575.P7710848259238492049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A245300 (A007401 (n + 1)).toNat).toNat

end

end A099575.P7710848259238492049

namespace A099575

/-- `A065941(A245300(A007401(n+1)))` -/
def P7710848259238492049.Spec : Prop :=
  ∀ n, P7710848259238492049.a n = A099575 n

end A099575

/-! ## A099575.P4286551692894042126

`A046854(A245300(n)+A111650(n+1))`
-/

namespace A099575.P4286551692894042126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A245300 n + A111650 (n + 1)).toNat

end

end A099575.P4286551692894042126

namespace A099575

/-- `A046854(A245300(n)+A111650(n+1))` -/
def P4286551692894042126.Spec : Prop :=
  ∀ n, P4286551692894042126.a n = A099575 n

end A099575

/-! ## A099575.P15333069583797998304

`A065941(A245300(n)+A094727(n+1))`
-/

namespace A099575.P15333069583797998304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A245300 n + A094727 (n + 1)).toNat

end

end A099575.P15333069583797998304

namespace A099575

/-- `A065941(A245300(n)+A094727(n+1))` -/
def P15333069583797998304.Spec : Prop :=
  ∀ n, P15333069583797998304.a n = A099575 n

end A099575

/-! ## A099575.P17594853147950437874

`A162515(A245300(n)+1)+T(n,k-1)` with `a(0)=1`
-/

namespace A099575.P17594853147950437874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162515 (A245300 n + 1).toNat + SequenceMachineLib.triLeft a n

end

end A099575.P17594853147950437874

namespace A099575

/-- `A162515(A245300(n)+1)+T(n,k-1)` -/
def P17594853147950437874.Spec : Prop :=
  ∀ n, P17594853147950437874.a n = A099575 n

end A099575

/-!
# A099576: Row sums of triangle A099575.

The programs for A099576, the canonical program `A099576.P15896756221722638388` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099576 has offset 0).

The definition of A099576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099576.P15896756221722638388

`∑{#}[n, C(n+floor(#/2)+1, floor(#/2))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099576

/-- `∑{#}[n, C(n+floor(#/2)+1, floor(#/2))]` -/
def P15896756221722638388.Spec : Prop :=
  ∀ n, (P15896756221722638388.a n : ℤ) = A099576 n

theorem P15896756221722638388.correct : P15896756221722638388.Spec := by
  intro n
  simp only [A099576]

end A099576

/-! ## A099576.P506028318455163076

`(n+1)*A047749(n+1)`
-/

namespace A099576.P506028318455163076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (n + 1)

end

end A099576.P506028318455163076

namespace A099576

/-- `(n+1)*A047749(n+1)` -/
def P506028318455163076.Spec : Prop :=
  ∀ n, P506028318455163076.a n = A099576 n

end A099576

/-! ## A099576.P2190656120666022502

`abs((n+1)*A134565(n+1))`
-/

namespace A099576.P2190656120666022502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A134565 (n + 1)|

end

end A099576.P2190656120666022502

namespace A099576

/-- `abs((n+1)*A134565(n+1))` -/
def P2190656120666022502.Spec : Prop :=
  ∀ n, P2190656120666022502.a n = A099576 n

end A099576

/-! ## A099576.P10303867270800402307

`(n+1)/2*A116637(n+1)`
-/

namespace A099576.P10303867270800402307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A116637 (n + 1) : ℚ)

end

end A099576.P10303867270800402307

namespace A099576

/-- `(n+1)/2*A116637(n+1)` -/
def P10303867270800402307.Spec : Prop :=
  ∀ n, P10303867270800402307.a n = (A099576 n : ℚ)

end A099576

/-! ## A099576.P7464682847966665147

`A175167(n+1)+A127040(n)`
-/

namespace A099576.P7464682847966665147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175167 (n + 1) + A127040 n

end

end A099576.P7464682847966665147

namespace A099576

/-- `A175167(n+1)+A127040(n)` -/
def P7464682847966665147.Spec : Prop :=
  ∀ n, P7464682847966665147.a n = A099576 n

end A099576

/-! ## A099576.P12304917117605384951

`(n+1)*A167763(A074148(n+1))`
-/

namespace A099576.P12304917117605384951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167763 (A074148 (n + 1)).toNat

end

end A099576.P12304917117605384951

namespace A099576

/-- `(n+1)*A167763(A074148(n+1))` -/
def P12304917117605384951.Spec : Prop :=
  ∀ n, P12304917117605384951.a n = A099576 n

end A099576

/-! ## A099576.P9097609240658266667

`A374439(A296911(n+1))`
-/

namespace A099576.P9097609240658266667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374439 (A296911 (n + 1)).toNat

end

end A099576.P9097609240658266667

namespace A099576

/-- `A374439(A296911(n+1))` -/
def P9097609240658266667.Spec : Prop :=
  ∀ n, P9097609240658266667.a n = A099576 n

end A099576

/-! ## A099576.P7163649987848850581

`A105438(2*(n+1)²)`
-/

namespace A099576.P7163649987848850581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 (2 * (n + 1) ^ 2)

end

end A099576.P7163649987848850581

namespace A099576

/-- `A105438(2*(n+1)²)` -/
def P7163649987848850581.Spec : Prop :=
  ∀ n, P7163649987848850581.a n = A099576 n

end A099576

/-! ## A099576.P18281463084308750779

`A207974(A081267(n+1))`
-/

namespace A099576.P18281463084308750779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (A081267 (n + 1)).toNat

end

end A099576.P18281463084308750779

namespace A099576

/-- `A207974(A081267(n+1))` -/
def P18281463084308750779.Spec : Prop :=
  ∀ n, P18281463084308750779.a n = A099576 n

end A099576

/-! ## A099576.P17819579175395918898

`A207974(A253145(3*n+2)+2*n+3)`
-/

namespace A099576.P17819579175395918898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (A253145 (3 * n + 2) + (2 * n + 3 : ℤ)).toNat

end

end A099576.P17819579175395918898

namespace A099576

/-- `A207974(A253145(3*n+2)+2*n+3)` -/
def P17819579175395918898.Spec : Prop :=
  ∀ n, P17819579175395918898.a n = A099576 n

end A099576

/-!
# A099577: Diagonal sums of triangle A099575.

The programs for A099577, there is no canonical definition to state claims against.
-/

/-! ## A099577.P17292793744318035833

`A004736(A005576(n)^A008620(n))`
-/

namespace A099577.P17292793744318035833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway ((A005576 n : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A099577.P17292793744318035833

/-! ## A099577.P17907401949351899374

`A227394(A360889(n)+∑{d}[n, A000001(#)])`
-/

namespace A099577.P17907401949351899374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A360889 n + ∑ d ∈ Nat.divisors (f1 n), A000001 d).toNat

end

end A099577.P17907401949351899374

/-!
# A099578: a(n) = binomial(floor((3n+2)/2), floor(n/2)).

The programs for A099578, the canonical program `A099578.P11831274867002153227` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099578 has offset 0).

The definition of A099578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor((3*n+2)/2), floor(n/2))` (program `A099578.P11831274867002153227`, by `A099578.P11831274867002153227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099578.P16406341506255301134

`∑{#}[floor(n/2), C(n+#, #)]`
-/

namespace A099578.P16406341506255301134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (n + k) k

end

end A099578.P16406341506255301134

namespace A099578

/-- `∑{#}[floor(n/2), C(n+#, #)]` -/
def P16406341506255301134.Spec : Prop :=
  ∀ n, (P16406341506255301134.a n : ℤ) = A099578 n

end A099578

/-! ## A099578.P11831274867002153227

`C(floor((3*n+2)/2), floor(n/2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099578

/-- `C(floor((3*n+2)/2), floor(n/2))` -/
def P11831274867002153227.Spec : Prop :=
  ∀ n, (P11831274867002153227.a n : ℤ) = A099578 n

theorem P11831274867002153227.correct : P11831274867002153227.Spec := by
  intro n
  simp only [A099578]

end A099578

/-! ## A099578.P12809903138375517665

`A051033(comp[3*n])`
-/

namespace A099578.P12809903138375517665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A099578.P12809903138375517665

namespace A099578

/-- `A051033(comp[3*n])` -/
def P12809903138375517665.Spec : Prop :=
  ∀ n, P12809903138375517665.a n = A099578 n

end A099578

/-! ## A099578.P18213414261026551699

`A065942(n+1)/A010684(n)`
-/

namespace A099578.P18213414261026551699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A099578.P18213414261026551699

namespace A099578

/-- `A065942(n+1)/A010684(n)` -/
def P18213414261026551699.Spec : Prop :=
  ∀ n, P18213414261026551699.a n = (A099578 n : ℚ)

end A099578

/-! ## A099578.P5968249422728854451

`A046899(A047838(n+2))`
-/

namespace A099578.P5968249422728854451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A047838 (n + 2)).toNat

end

end A099578.P5968249422728854451

namespace A099578

/-- `A046899(A047838(n+2))` -/
def P5968249422728854451.Spec : Prop :=
  ∀ n, P5968249422728854451.a n = A099578 n

end A099578

/-! ## A099578.P13882123162031713773

`A046899(A080476(n+2)-1)`
-/

namespace A099578.P13882123162031713773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A080476 (n + 2) - 1).toNat

end

end A099578.P13882123162031713773

namespace A099578

/-- `A046899(A080476(n+2)-1)` -/
def P13882123162031713773.Spec : Prop :=
  ∀ n, P13882123162031713773.a n = A099578 n

end A099578

/-! ## A099578.P9600315472479392399

`A046899(A000982(n+1)+n)`
-/

namespace A099578.P9600315472479392399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000982 (n + 1) + (n : ℤ)).toNat

end

end A099578.P9600315472479392399

namespace A099578

/-- `A046899(A000982(n+1)+n)` -/
def P9600315472479392399.Spec : Prop :=
  ∀ n, P9600315472479392399.a n = A099578 n

end A099578

/-! ## A099578.P9344692296696734089

`A046899(∑[∑[A167817(2*(n+1))]-1-n]-1)`
-/

namespace A099578.P9344692296696734089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A099578.P9344692296696734089

namespace A099578

/-- `A046899(∑[∑[A167817(2*(n+1))]-1-n]-1)` -/
def P9344692296696734089.Spec : Prop :=
  ∀ n, P9344692296696734089.a n = A099578 n

end A099578

/-! ## A099578.P174184654827684614

`A046899(A004273(∑[A008619(n)]))`
-/

namespace A099578.P174184654827684614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A099578.P174184654827684614

namespace A099578

/-- `A046899(A004273(∑[A008619(n)]))` -/
def P174184654827684614.Spec : Prop :=
  ∀ n, P174184654827684614.a n = A099578 n

end A099578

/-! ## A099578.P9811874891647911748

`A046899(A008619(n)+A000096(n))`
-/

namespace A099578.P9811874891647911748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A008619 n + A000096 n).toNat

end

end A099578.P9811874891647911748

namespace A099578

/-- `A046899(A008619(n)+A000096(n))` -/
def P9811874891647911748.Spec : Prop :=
  ∀ n, P9811874891647911748.a n = A099578 n

end A099578

/-! ## A099578.P13732686654974718180

`A046899(A007590(n)+A005408(n))`
-/

namespace A099578.P13732686654974718180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n + A005408 n).toNat

end

end A099578.P13732686654974718180

namespace A099578

/-- `A046899(A007590(n)+A005408(n))` -/
def P13732686654974718180.Spec : Prop :=
  ∀ n, P13732686654974718180.a n = A099578 n

end A099578

/-! ## A099578.P2602953076697692595

`A046899(A034856(n+1)-A065033(n))`
-/

namespace A099578.P2602953076697692595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A034856 (n + 1) - A065033 n).toNat

end

end A099578.P2602953076697692595

namespace A099578

/-- `A046899(A034856(n+1)-A065033(n))` -/
def P2602953076697692595.Spec : Prop :=
  ∀ n, P2602953076697692595.a n = A099578 n

end A099578

/-! ## A099578.P11537884506490597819

`A092392(A002620(n+1)+A002620(n+3))`
-/

namespace A099578.P11537884506490597819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A002620 (n + 1) + A002620 (n + 3)).toNat

end

end A099578.P11537884506490597819

namespace A099578

/-- `A092392(A002620(n+1)+A002620(n+3))` -/
def P11537884506490597819.Spec : Prop :=
  ∀ n, P11537884506490597819.a n = A099578 n

end A099578

/-! ## A099578.P172913538553280826

`A099575(∑[n]+n)`
-/

namespace A099578.P172913538553280826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099575 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A099578.P172913538553280826

namespace A099578

/-- `A099575(∑[n]+n)` -/
def P172913538553280826.Spec : Prop :=
  ∀ n, P172913538553280826.a n = A099578 n

end A099578

/-!
# A099579: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, k-1) * 3^(k-1).

The programs for A099579, the canonical program `A099579.P6379366723318797834` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099579 has offset 0).

The definition of A099579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099579.P6379366723318797834

`a(n-1)+6*a(n-2)-3*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099579

/-- `a(n-1)+6*a(n-2)-3*a(n-3)-9*a(n-4)` -/
def P6379366723318797834.Spec : Prop :=
  ∀ n, P6379366723318797834.a n = A099579 n

theorem P6379366723318797834.correct : P6379366723318797834.Spec := by
  intro n
  simp only [A099579]

end A099579

/-! ## A099579.P1146619547239830056

`ogf(x^2/(1-x-6x^2+3x^3+9x^4))`
-/

namespace A099579.P1146619547239830056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -6, 3, 9] n

end

end A099579.P1146619547239830056

namespace A099579

/-- `ogf(x^2/(1-x-6x^2+3x^3+9x^4))` -/
def P1146619547239830056.Spec : Prop :=
  ∀ n, P1146619547239830056.a n = A099579 n

end A099579

/-!
# A099580: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, k-1) * 4^(k-1).

The programs for A099580, the canonical program `A099580.P1970049044742942252` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099580 has offset 0).

The definition of A099580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099580.P10763950143532075368

`ogf(x^2/(1-x-8x^2+4x^3+16x^4))`
-/

namespace A099580.P10763950143532075368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -8, 4, 16] n

end

end A099580.P10763950143532075368

namespace A099580

/-- `ogf(x^2/(1-x-8x^2+4x^3+16x^4))` -/
def P10763950143532075368.Spec : Prop :=
  ∀ n, P10763950143532075368.a n = A099580 n

end A099580

/-! ## A099580.P1970049044742942252

`a(n-1)+8*a(n-2)-4*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099580

/-- `a(n-1)+8*a(n-2)-4*a(n-3)-16*a(n-4)` -/
def P1970049044742942252.Spec : Prop :=
  ∀ n, P1970049044742942252.a n = A099580 n

theorem P1970049044742942252.correct : P1970049044742942252.Spec := by
  intro n
  simp only [A099580]

end A099580

/-! ## A099580.P13968506464172829193

`A157966(A051841(n+1)*A157966(n))`
-/

namespace A099580.P13968506464172829193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A051841 (n + 1) * A157966 n).toNat

end

end A099580.P13968506464172829193

namespace A099580

/-- `A157966(A051841(n+1)*A157966(n))` -/
def P13968506464172829193.Spec : Prop :=
  ∀ n, P13968506464172829193.a n = A099580 n

end A099580

/-! ## A099580.P16716594522081284930

`A033228(A014477(n))%A309504(n+1)`
-/

namespace A099580.P16716594522081284930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033228 (A014477 n).toNat) (A309504 (n + 1))

end

end A099580.P16716594522081284930

namespace A099580

/-- `A033228(A014477(n))%A309504(n+1)` -/
def P16716594522081284930.Spec : Prop :=
  ∀ n, P16716594522081284930.a n = A099580 n

end A099580

/-!
# A099581: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k-1)*3^(n-k-1).

The programs for A099581, the canonical program `A099581.P1814972530579514697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099581 has offset 0).

The definition of A099581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099581.P8337966378510015984

`ogf(x^2/(1-3x-6x^2+9x^3+9x^4))`
-/

namespace A099581.P8337966378510015984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, -6, 9, 9] n

end

end A099581.P8337966378510015984

namespace A099581

/-- `ogf(x^2/(1-3x-6x^2+9x^3+9x^4))` -/
def P8337966378510015984.Spec : Prop :=
  ∀ n, P8337966378510015984.a n = A099581 n

end A099581

/-! ## A099581.P1814972530579514697

`3*a(n-1)+6*a(n-2)-9*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099581

/-- `3*a(n-1)+6*a(n-2)-9*a(n-3)-9*a(n-4)` -/
def P1814972530579514697.Spec : Prop :=
  ∀ n, P1814972530579514697.a n = A099581 n

theorem P1814972530579514697.correct : P1814972530579514697.Spec := by
  intro n
  simp only [A099581]

end A099581

/-! ## A099581.P1914380833633344627

`A205727(ceil(2^(n-1)))+round(lcm(n+1, 1-n)/4)`
-/

namespace A099581.P1914380833633344627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205727 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

end

end A099581.P1914380833633344627

namespace A099581

/-- `A205727(ceil(2^(n-1)))+round(lcm(n+1, 1-n)/4)` -/
def P1914380833633344627.Spec : Prop :=
  ∀ n, P1914380833633344627.a n = A099581 n

end A099581

/-!
# A099582: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, k-1)*4^(n-k-1).

The programs for A099582, the canonical program `A099582.P2553580549683189673` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099582 has offset 0).

The definition of A099582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099582.P6775131352656124941

`ogf(x^2/(1-4x-8x^2+16x^3+16x^4))`
-/

namespace A099582.P6775131352656124941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, -8, 16, 16] n

end

end A099582.P6775131352656124941

namespace A099582

/-- `ogf(x^2/(1-4x-8x^2+16x^3+16x^4))` -/
def P6775131352656124941.Spec : Prop :=
  ∀ n, P6775131352656124941.a n = A099582 n

end A099582

/-! ## A099582.P2553580549683189673

`4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099582

/-- `4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` -/
def P2553580549683189673.Spec : Prop :=
  ∀ n, P2553580549683189673.a n = A099582 n

theorem P2553580549683189673.correct : P2553580549683189673.Spec := by
  intro n
  simp only [A099582]

end A099582

/-! ## A099582.P3723278978076340592

`2^(n-4)*(2*A000129(n)-(1-(-1)^n))`
-/

namespace A099582.P3723278978076340592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (2 * A000129 n - (1 - (-1) ^ n) : ℚ)

end

end A099582.P3723278978076340592

namespace A099582

/-- `2^(n-4)*(2*A000129(n)-(1-(-1)^n))` -/
def P3723278978076340592.Spec : Prop :=
  ∀ n, P3723278978076340592.a n = (A099582 n : ℚ)

end A099582

/-! ## A099582.P11297989501490125407

`A006668(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A099582.P11297989501490125407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006668 n - 2 * a (n - 1)

end

end A099582.P11297989501490125407

namespace A099582

/-- `A006668(n)-2*a(n-1)` -/
def P11297989501490125407.Spec : Prop :=
  ∀ n, P11297989501490125407.a n = A099582 n

end A099582

/-! ## A099582.P6503594609560859534

`floor(A111954(n)/2)*round(2^(n-2))`
-/

namespace A099582.P6503594609560859534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111954 n : ℚ) / 2⌋ * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A099582.P6503594609560859534

namespace A099582

/-- `floor(A111954(n)/2)*round(2^(n-2))` -/
def P6503594609560859534.Spec : Prop :=
  ∀ n, P6503594609560859534.a n = A099582 n

end A099582

/-! ## A099582.P14158831497786093539

`floor(A116560(6*n)/2)*round(2^(n-2))`
-/

namespace A099582.P14158831497786093539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116560 (6 * n) : ℚ) / 2⌋ * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A099582.P14158831497786093539

namespace A099582

/-- `floor(A116560(6*n)/2)*round(2^(n-2))` -/
def P14158831497786093539.Spec : Prop :=
  ∀ n, P14158831497786093539.a n = A099582 n

end A099582

/-!
# A099583: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, k-1)*2^(n-k-1)*(3/2)^(k-1).

The programs for A099583, the canonical program `A099583.P10109972069598820990` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099583 has offset 0).

The definition of A099583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099583.P4302364787907539965

`ogf(x^2/(1-2x-6x^2+6x^3+9x^4))`
-/

namespace A099583.P4302364787907539965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -6, 6, 9] n

end

end A099583.P4302364787907539965

namespace A099583

/-- `ogf(x^2/(1-2x-6x^2+6x^3+9x^4))` -/
def P4302364787907539965.Spec : Prop :=
  ∀ n, P4302364787907539965.a n = A099583 n

end A099583

/-! ## A099583.P10109972069598820990

`2*a(n-1)+6*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099583

/-- `2*a(n-1)+6*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P10109972069598820990.Spec : Prop :=
  ∀ n, P10109972069598820990.a n = A099583 n

theorem P10109972069598820990.correct : P10109972069598820990.Spec := by
  intro n
  simp only [A099583]

end A099583

/-! ## A099583.P3081070118064360848

`1/8*(3^n-(-1)^n-2*(1-(-1)^n)*3^((n-1)/2))`
-/

namespace A099583.P3081070118064360848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 8 : ℝ) * (((3 ^ n : ℤ) - (-1) ^ n : ℝ) - (2 * (1 - (-1) ^ n) : ℝ) * (3 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ))

end

end A099583.P3081070118064360848

namespace A099583

/-- `1/8*(3^n-(-1)^n-2*(1-(-1)^n)*3^((n-1)/2))` -/
def P3081070118064360848.Spec : Prop :=
  ∀ n, P3081070118064360848.a n = (A099583 n : ℝ)

end A099583

/-! ## A099583.P3212511278427211034

`A167993(n)-a(n-1)` with `a(0)=0`
-/

namespace A099583.P3212511278427211034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167993 n - a (n - 1)

end

end A099583.P3212511278427211034

namespace A099583

/-- `A167993(n)-a(n-1)` -/
def P3212511278427211034.Spec : Prop :=
  ∀ n, P3212511278427211034.a n = A099583 n

end A099583

/-! ## A099583.P17633134201186461608

`A122006(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A099583.P17633134201186461608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A122006 n + a (n - 2)

end

end A099583.P17633134201186461608

namespace A099583

/-- `A122006(n)+a(n-2)` -/
def P17633134201186461608.Spec : Prop :=
  ∀ n, P17633134201186461608.a n = A099583 n

end A099583

/-! ## A099583.P11208155167916953589

`A124302(n)-A124302(A065033(n))-a(n-1)` with `a(0)=0`
-/

namespace A099583.P11208155167916953589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A124302 n - A124302 (A065033 n).toNat - a (n - 1)

end

end A099583.P11208155167916953589

namespace A099583

/-- `A124302(n)-A124302(A065033(n))-a(n-1)` -/
def P11208155167916953589.Spec : Prop :=
  ∀ n, P11208155167916953589.a n = A099583 n

end A099583

/-!
# A099584: Exponent of 3 in factorization of prime(n) - 1.

The programs for A099584, the canonical program `A099584.P17919373969718200762` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099584 has offset 1).

The definition of A099584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099584.P1275106239157053846

`val(A000040(n+1)-1, 3)`
-/

namespace A099584.P1275106239157053846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) - 1).toNat 3

end

end A099584.P1275106239157053846

namespace A099584

/-- `val(A000040(n+1)-1, 3)` -/
def P1275106239157053846.Spec : Prop :=
  ∀ n, (P1275106239157053846.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P17919373969718200762

`A007949(A006093(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099584

/-- `A007949(A006093(n+1))` -/
def P17919373969718200762.Spec : Prop :=
  ∀ n, P17919373969718200762.a n = A099584 (n + 1)

theorem P17919373969718200762.correct : P17919373969718200762.Spec := by
  intro n
  simp only [A099584, Nat.add_sub_cancel]

end A099584

/-! ## A099584.P17092170534461220114

`val(∑[A075526(n)], 3)`
-/

namespace A099584.P17092170534461220114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A099584.P17092170534461220114

namespace A099584

/-- `val(∑[A075526(n)], 3)` -/
def P17092170534461220114.Spec : Prop :=
  ∀ n, (P17092170534461220114.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P16058587877554094154

`val(A006093(n+1), 3)`
-/

namespace A099584.P16058587877554094154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1)).toNat 3

end

end A099584.P16058587877554094154

namespace A099584

/-- `val(A006093(n+1), 3)` -/
def P16058587877554094154.Spec : Prop :=
  ∀ n, (P16058587877554094154.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P5932191849335865338

`val(A037168(n+1), 3)`
-/

namespace A099584.P5932191849335865338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037168 (n + 1)).toNat 3

end

end A099584.P5932191849335865338

namespace A099584

/-- `val(A037168(n+1), 3)` -/
def P5932191849335865338.Spec : Prop :=
  ∀ n, (P5932191849335865338.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P14468991444924854855

`val(A057023(n+1), 3)`
-/

namespace A099584.P14468991444924854855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057023 (n + 1)).toNat 3

end

end A099584.P14468991444924854855

namespace A099584

/-- `val(A057023(n+1), 3)` -/
def P14468991444924854855.Spec : Prop :=
  ∀ n, (P14468991444924854855.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P16406894420405750195

`val(A068503(n+1), 3)`
-/

namespace A099584.P16406894420405750195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068503 (n + 1)).toNat 3

end

end A099584.P16406894420405750195

namespace A099584

/-- `val(A068503(n+1), 3)` -/
def P16406894420405750195.Spec : Prop :=
  ∀ n, (P16406894420405750195.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P4001333930315797098

`val(A130290(n+1), 3)`
-/

namespace A099584.P4001333930315797098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130290 (n + 1)).toNat 3

end

end A099584.P4001333930315797098

namespace A099584

/-- `val(A130290(n+1), 3)` -/
def P4001333930315797098.Spec : Prop :=
  ∀ n, (P4001333930315797098.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P12169652192527849846

`val(A156037(n+1), 3)`
-/

namespace A099584.P12169652192527849846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A156037 (n + 1)).toNat 3

end

end A099584.P12169652192527849846

namespace A099584

/-- `val(A156037(n+1), 3)` -/
def P12169652192527849846.Spec : Prop :=
  ∀ n, (P12169652192527849846.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P15765636197104433190

`val(A236965(n+1), 3)`
-/

namespace A099584.P15765636197104433190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A236965 (n + 1)).toNat 3

end

end A099584.P15765636197104433190

namespace A099584

/-- `val(A236965(n+1), 3)` -/
def P15765636197104433190.Spec : Prop :=
  ∀ n, (P15765636197104433190.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P15618313982946867393

`val(A005722(n+1), 9)`
-/

namespace A099584.P15618313982946867393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005722 (n + 1)).toNat 9

end

end A099584.P15618313982946867393

namespace A099584

/-- `val(A005722(n+1), 9)` -/
def P15618313982946867393.Spec : Prop :=
  ∀ n, (P15618313982946867393.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P194662542903275524

`val(A040976(n+1)+1, 3)`
-/

namespace A099584.P194662542903275524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040976 (n + 1) + 1).toNat 3

end

end A099584.P194662542903275524

namespace A099584

/-- `val(A040976(n+1)+1, 3)` -/
def P194662542903275524.Spec : Prop :=
  ∀ n, (P194662542903275524.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P13178737100303673783

`A001222(A068503(n+1))`
-/

namespace A099584.P13178737100303673783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068503 (n + 1)).toNat

end

end A099584.P13178737100303673783

namespace A099584

/-- `A001222(A068503(n+1))` -/
def P13178737100303673783.Spec : Prop :=
  ∀ n, P13178737100303673783.a n = A099584 (n + 1)

end A099584

/-! ## A099584.P14057788162120663426

`val(record[A192133(n+1)], 3)`
-/

namespace A099584.P14057788162120663426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099584.P14057788162120663426

namespace A099584

/-- `val(record[A192133(n+1)], 3)` -/
def P14057788162120663426.Spec : Prop :=
  ∀ n, (P14057788162120663426.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P8174240206494887120

`val(record[A192134(n+1)], 3)`
-/

namespace A099584.P8174240206494887120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099584.P8174240206494887120

namespace A099584

/-- `val(record[A192134(n+1)], 3)` -/
def P8174240206494887120.Spec : Prop :=
  ∀ n, (P8174240206494887120.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P8880009452333964083

`val(record[A000010(n+1)], 3)`
-/

namespace A099584.P8880009452333964083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099584.P8880009452333964083

namespace A099584

/-- `val(record[A000010(n+1)], 3)` -/
def P8880009452333964083.Spec : Prop :=
  ∀ n, (P8880009452333964083.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P18209563821482556027

`val(record[A003958(n+1)], 3)`
-/

namespace A099584.P18209563821482556027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099584.P18209563821482556027

namespace A099584

/-- `val(record[A003958(n+1)], 3)` -/
def P18209563821482556027.Spec : Prop :=
  ∀ n, (P18209563821482556027.a n : ℤ) = A099584 (n + 1)

end A099584

/-! ## A099584.P891280614960993566

`A354099(A000040(n+1))`
-/

namespace A099584.P891280614960993566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A000040 (n + 1)).toNat

end

end A099584.P891280614960993566

namespace A099584

/-- `A354099(A000040(n+1))` -/
def P891280614960993566.Spec : Prop :=
  ∀ n, P891280614960993566.a n = A099584 (n + 1)

end A099584

/-! ## A099584.P9141878702241810218

`A354099(A006005(n+1))`
-/

namespace A099584.P9141878702241810218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A006005 (n + 1)).toNat

end

end A099584.P9141878702241810218

namespace A099584

/-- `A354099(A006005(n+1))` -/
def P9141878702241810218.Spec : Prop :=
  ∀ n, P9141878702241810218.a n = A099584 (n + 1)

end A099584

/-! ## A099584.P10618405157891175334

`A354099(record[A006530(n+2)])`
-/

namespace A099584.P10618405157891175334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099584.P10618405157891175334

namespace A099584

/-- `A354099(record[A006530(n+2)])` -/
def P10618405157891175334.Spec : Prop :=
  ∀ n, P10618405157891175334.a n = A099584 (n + 1)

end A099584

/-!
# A099585: Remove all factors of 3 from prime(n) - 1.

The programs for A099585, the canonical program `A099585.P3182464661928163534` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099585 has offset 1).

The definition of A099585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099585.P3182464661928163534

`(A000040(n+1)-1)/3^val(A000040(n+1)-1, 3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099585

/-- `(A000040(n+1)-1)/3^val(A000040(n+1)-1, 3)` -/
def P3182464661928163534.Spec : Prop :=
  ∀ n, P3182464661928163534.a n = (A099585 (n + 1) : ℚ)

end A099585

/-! ## A099585.P13745326318775610757

`A006093(n+1)/A068503(n+1)`
-/

namespace A099585.P13745326318775610757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A068503 (n + 1) : ℚ)

end

end A099585.P13745326318775610757

namespace A099585

/-- `A006093(n+1)/A068503(n+1)` -/
def P13745326318775610757.Spec : Prop :=
  ∀ n, P13745326318775610757.a n = (A099585 (n + 1) : ℚ)

end A099585

/-! ## A099585.P8977806222637990981

`A038502(p?[abs(xor(n, -2))]-1)`
-/

namespace A099585.P8977806222637990981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A099585.P8977806222637990981

namespace A099585

/-- `A038502(p?[abs(xor(n, -2))]-1)` -/
def P8977806222637990981.Spec : Prop :=
  ∀ n, P8977806222637990981.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P15528289928637172402

`A038502(p?[xor(1, n)+1]-1)`
-/

namespace A099585.P15528289928637172402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A099585.P15528289928637172402

namespace A099585

/-- `A038502(p?[xor(1, n)+1]-1)` -/
def P15528289928637172402.Spec : Prop :=
  ∀ n, P15528289928637172402.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P1459909388636012799

`A038502(xor(1, p?[xor(1, n)+1]))`
-/

namespace A099585.P1459909388636012799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A099585.P1459909388636012799

namespace A099585

/-- `A038502(xor(1, p?[xor(1, n)+1]))` -/
def P1459909388636012799.Spec : Prop :=
  ∀ n, P1459909388636012799.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P4546771689305571186

`A038502(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A099585.P4546771689305571186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A099585.P4546771689305571186

namespace A099585

/-- `A038502(p?[a(n-1)+2]-1)` -/
def P4546771689305571186.Spec : Prop :=
  ∀ n, P4546771689305571186.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P16172924795377127592

`A038502(abs(p?[round(8*n/7)]-2)+1)`
-/

namespace A099585.P16172924795377127592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 1).toNat

end

end A099585.P16172924795377127592

namespace A099585

/-- `A038502(abs(p?[round(8*n/7)]-2)+1)` -/
def P16172924795377127592.Spec : Prop :=
  ∀ n, P16172924795377127592.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P6470715926409314471

`A038502(A006093(n+1))`
-/

namespace A099585.P6470715926409314471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A006093 (n + 1)).toNat

end

end A099585.P6470715926409314471

namespace A099585

/-- `A038502(A006093(n+1))` -/
def P6470715926409314471.Spec : Prop :=
  ∀ n, P6470715926409314471.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P3100100384755738770

`A038502(A039915(n+1))`
-/

namespace A099585.P3100100384755738770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A039915 (n + 1)).toNat

end

end A099585.P3100100384755738770

namespace A099585

/-- `A038502(A039915(n+1))` -/
def P3100100384755738770.Spec : Prop :=
  ∀ n, P3100100384755738770.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P17832743440782119555

`A038502(A236959(n+1))`
-/

namespace A099585.P17832743440782119555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A236959 (n + 1)).toNat

end

end A099585.P17832743440782119555

namespace A099585

/-- `A038502(A236959(n+1))` -/
def P17832743440782119555.Spec : Prop :=
  ∀ n, P17832743440782119555.a n = A099585 (n + 1)

end A099585

/-! ## A099585.P1172007267578832757

`A038502(record[A000010(n+1)])`
-/

namespace A099585.P1172007267578832757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099585.P1172007267578832757

namespace A099585

/-- `A038502(record[A000010(n+1)])` -/
def P1172007267578832757.Spec : Prop :=
  ∀ n, P1172007267578832757.a n = A099585 (n + 1)

end A099585

/-!
# A099586: Constant term in (1+x)^n mod (1+x^4).

The programs for A099586, the canonical program `A099586.P7283556787868963722` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099586 has offset 1).

The definition of A099586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099586.P13219105063914456212

`ogf((1-3x+3x^2-2x^3)/(1-4x+6x^2-4x^3+2x^4))`
-/

namespace A099586.P13219105063914456212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -2] [1, -4, 6, -4, 2] n

end

end A099586.P13219105063914456212

namespace A099586

/-- `ogf((1-3x+3x^2-2x^3)/(1-4x+6x^2-4x^3+2x^4))` -/
def P13219105063914456212.Spec : Prop :=
  ∀ n, P13219105063914456212.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P7283556787868963722

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099586

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` -/
def P7283556787868963722.Spec : Prop :=
  ∀ n, P7283556787868963722.a n = A099586 (n + 1)

theorem P7283556787868963722.correct : P7283556787868963722.Spec := by
  intro n
  simp only [A099586, Nat.add_sub_cancel]

end A099586

/-! ## A099586.P18275642315745791711

`1-∑[A099589(n)]`
-/

namespace A099586.P18275642315745791711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099586.P18275642315745791711

namespace A099586

/-- `1-∑[A099589(n)]` -/
def P18275642315745791711.Spec : Prop :=
  ∀ n, P18275642315745791711.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P9997809110933723307

`1-∑[∑[A099588(abs(1-n))]]`
-/

namespace A099586.P9997809110933723307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099586.P9997809110933723307

namespace A099586

/-- `1-∑[∑[A099588(abs(1-n))]]` -/
def P9997809110933723307.Spec : Prop :=
  ∀ n, P9997809110933723307.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P14977264519353445118

`Δ[A099587(n)]-A099589(n)`
-/

namespace A099586.P14977264519353445118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099589 n

end

end A099586.P14977264519353445118

namespace A099586

/-- `Δ[A099587(n)]-A099589(n)` -/
def P14977264519353445118.Spec : Prop :=
  ∀ n, P14977264519353445118.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P14652304727694609247

`1-∑[∑[A099588(n)]-A099588(n)]`
-/

namespace A099586.P14652304727694609247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A099588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099586.P14652304727694609247

namespace A099586

/-- `1-∑[∑[A099588(n)]-A099588(n)]` -/
def P14652304727694609247.Spec : Prop :=
  ∀ n, P14652304727694609247.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P3387809884803711189

`A099587(n+1)-(A099589(n)+A099587(n))`
-/

namespace A099586.P3387809884803711189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 (n + 1) - (A099589 n + A099587 n)

end

end A099586.P3387809884803711189

namespace A099586

/-- `A099587(n+1)-(A099589(n)+A099587(n))` -/
def P3387809884803711189.Spec : Prop :=
  ∀ n, P3387809884803711189.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P13681792559505472747

`Δ[A099587(n+1)]`
-/

namespace A099586.P13681792559505472747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099586.P13681792559505472747

namespace A099586

/-- `Δ[A099587(n+1)]` -/
def P13681792559505472747.Spec : Prop :=
  ∀ n, P13681792559505472747.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P14748106678532512146

`Δ[Δ[A099588(n+1)]]`
-/

namespace A099586.P14748106678532512146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099586.P14748106678532512146

namespace A099586

/-- `Δ[Δ[A099588(n+1)]]` -/
def P14748106678532512146.Spec : Prop :=
  ∀ n, P14748106678532512146.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P5531183126272509981

`A099587(n+2)-A099587(n+1)`
-/

namespace A099586.P5531183126272509981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 (n + 2) - A099587 (n + 1)

end

end A099586.P5531183126272509981

namespace A099586

/-- `A099587(n+2)-A099587(n+1)` -/
def P5531183126272509981.Spec : Prop :=
  ∀ n, P5531183126272509981.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P9159716069209269348

`2*A306859(n+1)-A038503(n+1)`
-/

namespace A099586.P9159716069209269348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306859 (n + 1) - A038503 (n + 1)

end

end A099586.P9159716069209269348

namespace A099586

/-- `2*A306859(n+1)-A038503(n+1)` -/
def P9159716069209269348.Spec : Prop :=
  ∀ n, P9159716069209269348.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P15196735154437843956

`∑[A131075(n+1)-A129961(n+1)]+1`
-/

namespace A099586.P15196735154437843956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (n + 1) - A129961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099586.P15196735154437843956

namespace A099586

/-- `∑[A131075(n+1)-A129961(n+1)]+1` -/
def P15196735154437843956.Spec : Prop :=
  ∀ n, P15196735154437843956.a n = A099586 (n + 1)

end A099586

/-! ## A099586.P1864089240196468257

`∑{#}[n+1, C(n+1, #)*A014017(#)]`
-/

namespace A099586.P1864089240196468257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A014017 k

end

end A099586.P1864089240196468257

namespace A099586

/-- `∑{#}[n+1, C(n+1, #)*A014017(#)]` -/
def P1864089240196468257.Spec : Prop :=
  ∀ n, P1864089240196468257.a n = A099586 (n + 1)

end A099586

/-!
# A099587: a(n) = coefficient of x in (1+x)^n mod (1+x^4).

The programs for A099587, the canonical program `A099587.P3653301750761568537` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099587 has offset 0).

The definition of A099587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099587.P18061140544445785535

`ogf((x-2x^2+x^3)/(1-4x+6x^2-4x^3+2x^4))`
-/

namespace A099587.P18061140544445785535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -4, 6, -4, 2] n

end

end A099587.P18061140544445785535

namespace A099587

/-- `ogf((x-2x^2+x^3)/(1-4x+6x^2-4x^3+2x^4))` -/
def P18061140544445785535.Spec : Prop :=
  ∀ n, P18061140544445785535.a n = A099587 n

end A099587

/-! ## A099587.P3653301750761568537

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099587

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` -/
def P3653301750761568537.Spec : Prop :=
  ∀ n, P3653301750761568537.a n = A099587 n

theorem P3653301750761568537.correct : P3653301750761568537.Spec := by
  intro n
  simp only [A099587]

end A099587

/-! ## A099587.P6034065644533833201

`A099589(n+2)-2*A099589(n+1)+A099589(n)`
-/

namespace A099587.P6034065644533833201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099589 (n + 2) - 2 * A099589 (n + 1) + A099589 n

end

end A099587.P6034065644533833201

namespace A099587

/-- `A099589(n+2)-2*A099589(n+1)+A099589(n)` -/
def P6034065644533833201.Spec : Prop :=
  ∀ n, P6034065644533833201.a n = A099587 n

end A099587

/-! ## A099587.P6975790870588290186

`Δ[A099588(n)]`
-/

namespace A099587.P6975790870588290186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099587.P6975790870588290186

namespace A099587

/-- `Δ[A099588(n)]` -/
def P6975790870588290186.Spec : Prop :=
  ∀ n, P6975790870588290186.a n = A099587 n

end A099587

/-! ## A099587.P1105209210771506424

`Δ[Δ[A099589(n)]]`
-/

namespace A099587.P1105209210771506424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099589 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099587.P1105209210771506424

namespace A099587

/-- `Δ[Δ[A099589(n)]]` -/
def P1105209210771506424.Spec : Prop :=
  ∀ n, P1105209210771506424.a n = A099587 n

end A099587

/-! ## A099587.P9808176099581822078

`A099588(n+1)-A099588(n)`
-/

namespace A099587.P9808176099581822078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 (n + 1) - A099588 n

end

end A099587.P9808176099581822078

namespace A099587

/-- `A099588(n+1)-A099588(n)` -/
def P9808176099581822078.Spec : Prop :=
  ∀ n, P9808176099581822078.a n = A099587 n

end A099587

/-! ## A099587.P9539646385263216193

`round((2+sqrt(2))^(n/2)*cos(π*(n-2)/8)/2)`
-/

namespace A099587.P9539646385263216193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 + Real.sqrt (2 : ℝ)) ^ ((n : ℚ) / 2 : ℝ) * Real.cos (Real.pi * (((n : ℤ) - 2 : ℚ) / 8 : ℝ)) / 2)

end

end A099587.P9539646385263216193

namespace A099587

/-- `round((2+sqrt(2))^(n/2)*cos(π*(n-2)/8)/2)` -/
def P9539646385263216193.Spec : Prop :=
  ∀ n, P9539646385263216193.a n = A099587 n

end A099587

/-! ## A099587.P4118740398694920730

`Δ[Δ[A129961(n+1)-A131075(n+1)]]`
-/

namespace A099587.P4118740398694920730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) - A131075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099587.P4118740398694920730

namespace A099587

/-- `Δ[Δ[A129961(n+1)-A131075(n+1)]]` -/
def P4118740398694920730.Spec : Prop :=
  ∀ n, P4118740398694920730.a n = A099587 n

end A099587

/-!
# A099588: Coefficient of x^2 in (1+x)^n mod 1+x^4.

The programs for A099588, the canonical program `A099588.P16752934792571339757` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099588 has offset 0).

The definition of A099588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099588.P3932634191970518186

`ogf((x^2-x^3)/(1-4x+6x^2-4x^3+2x^4))`
-/

namespace A099588.P3932634191970518186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 6, -4, 2] n

end

end A099588.P3932634191970518186

namespace A099588

/-- `ogf((x^2-x^3)/(1-4x+6x^2-4x^3+2x^4))` -/
def P3932634191970518186.Spec : Prop :=
  ∀ n, P3932634191970518186.a n = A099588 n

end A099588

/-! ## A099588.P16752934792571339757

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099588

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` -/
def P16752934792571339757.Spec : Prop :=
  ∀ n, P16752934792571339757.a n = A099588 n

theorem P16752934792571339757.correct : P16752934792571339757.Spec := by
  intro n
  simp only [A099588]

end A099588

/-! ## A099588.P13819410992718276376

`Δ[A099589(n)]`
-/

namespace A099588.P13819410992718276376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099588.P13819410992718276376

namespace A099588

/-- `Δ[A099589(n)]` -/
def P13819410992718276376.Spec : Prop :=
  ∀ n, P13819410992718276376.a n = A099588 n

end A099588

/-! ## A099588.P1305739727126351664

`A099587(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A099588.P1305739727126351664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A099587 (n - 1) + a (n - 1)

end

end A099588.P1305739727126351664

namespace A099588

/-- `A099587(n-1)+a(n-1)` -/
def P1305739727126351664.Spec : Prop :=
  ∀ n, P1305739727126351664.a n = A099588 n

end A099588

/-! ## A099588.P16145387587581181390

`A099589(n+1)-A099589(n)`
-/

namespace A099588.P16145387587581181390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099589 (n + 1) - A099589 n

end

end A099588.P16145387587581181390

namespace A099588

/-- `A099589(n+1)-A099589(n)` -/
def P16145387587581181390.Spec : Prop :=
  ∀ n, P16145387587581181390.a n = A099588 n

end A099588

/-! ## A099588.P3129501798682597497

`∑[A099587(n)]-A099587(n)`
-/

namespace A099588.P3129501798682597497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099587 n

end

end A099588.P3129501798682597497

namespace A099588

/-- `∑[A099587(n)]-A099587(n)` -/
def P3129501798682597497.Spec : Prop :=
  ∀ n, P3129501798682597497.a n = A099588 n

end A099588

/-! ## A099588.P4736665689090699047

`round((2+sqrt(2))^(n/2)*cos(π*(n-4)/8)/2)`
-/

namespace A099588.P4736665689090699047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 + Real.sqrt (2 : ℝ)) ^ ((n : ℚ) / 2 : ℝ) * Real.cos (Real.pi * (((n : ℤ) - 4 : ℚ) / 8 : ℝ)) / 2)

end

end A099588.P4736665689090699047

namespace A099588

/-- `round((2+sqrt(2))^(n/2)*cos(π*(n-4)/8)/2)` -/
def P4736665689090699047.Spec : Prop :=
  ∀ n, P4736665689090699047.a n = A099588 n

end A099588

/-! ## A099588.P14186574867648464591

`Δ[Δ[A099587(n)]-A099586(n+1)]`
-/

namespace A099588.P14186574867648464591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A099586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099588.P14186574867648464591

namespace A099588

/-- `Δ[Δ[A099587(n)]-A099586(n+1)]` -/
def P14186574867648464591.Spec : Prop :=
  ∀ n, P14186574867648464591.a n = A099588 n

end A099588

/-! ## A099588.P13645842129311227244

`Δ[A129961(n+1)-A131075(n+1)]`
-/

namespace A099588.P13645842129311227244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) - A131075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099588.P13645842129311227244

namespace A099588

/-- `Δ[A129961(n+1)-A131075(n+1)]` -/
def P13645842129311227244.Spec : Prop :=
  ∀ n, P13645842129311227244.a n = A099588 n

end A099588

/-! ## A099588.P12314777038038159445

`A131075(n+1)+A131075(n+1)-A131075(n+2)`
-/

namespace A099588.P12314777038038159445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (n + 1) + (A131075 (n + 1) - A131075 (n + 2))

end

end A099588.P12314777038038159445

namespace A099588

/-- `A131075(n+1)+A131075(n+1)-A131075(n+2)` -/
def P12314777038038159445.Spec : Prop :=
  ∀ n, P12314777038038159445.a n = A099588 n

end A099588

/-!
# A099589: Expansion of x^3 / (1 - 4*x + 6*x^2 - 4*x^3 + 2*x^4).

The programs for A099589, the canonical program `A099589.P7775846721285152394` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099589 has offset 0).

The definition of A099589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^3/(1-4x+6x^2-4x^3+2x^4))` (program `A099589.P7775846721285152394`, by `A099589.P7775846721285152394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099589.P7775846721285152394

`ogf(x^3/(1-4x+6x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099589

/-- `ogf(x^3/(1-4x+6x^2-4x^3+2x^4))` -/
def P7775846721285152394.Spec : Prop :=
  ∀ n, P7775846721285152394.a n = A099589 n

theorem P7775846721285152394.correct : P7775846721285152394.Spec := by
  intro n
  simp only [A099589]

end A099589

/-! ## A099589.P3732106965509759311

`4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A099589.P3732106965509759311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - 2 * a (n - 4)

end

end A099589.P3732106965509759311

namespace A099589

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-2*a(n-4)` -/
def P3732106965509759311.Spec : Prop :=
  ∀ n, P3732106965509759311.a n = A099589 n

end A099589

/-! ## A099589.P18129501247330797851

`∑[A099588(abs(1-n))]`
-/

namespace A099589.P18129501247330797851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099589.P18129501247330797851

namespace A099589

/-- `∑[A099588(abs(1-n))]` -/
def P18129501247330797851.Spec : Prop :=
  ∀ n, P18129501247330797851.a n = A099589 n

end A099589

/-! ## A099589.P3318046181738835694

`A099588(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A099589.P3318046181738835694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A099588 (n - 1) + a (n - 1)

end

end A099589.P3318046181738835694

namespace A099589

/-- `A099588(n-1)+a(n-1)` -/
def P3318046181738835694.Spec : Prop :=
  ∀ n, P3318046181738835694.a n = A099589 n

end A099589

/-! ## A099589.P7990375389207885035

`∑[A099588(n)]-A099588(n)`
-/

namespace A099589.P7990375389207885035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099588 n

end

end A099589.P7990375389207885035

namespace A099589

/-- `∑[A099588(n)]-A099588(n)` -/
def P7990375389207885035.Spec : Prop :=
  ∀ n, P7990375389207885035.a n = A099589 n

end A099589

/-! ## A099589.P15384005287443553138

`round((2+sqrt(2))^(n/2)*cos(π*(n-6)/8)/2)`
-/

namespace A099589.P15384005287443553138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 + Real.sqrt (2 : ℝ)) ^ ((n : ℚ) / 2 : ℝ) * Real.cos (Real.pi * (((n : ℤ) - 6 : ℚ) / 8 : ℝ)) / 2)

end

end A099589.P15384005287443553138

namespace A099589

/-- `round((2+sqrt(2))^(n/2)*cos(π*(n-6)/8)/2)` -/
def P15384005287443553138.Spec : Prop :=
  ∀ n, P15384005287443553138.a n = A099589 n

end A099589

/-! ## A099589.P17947397962900600509

`Δ[A099587(n)]-A099586(n+1)`
-/

namespace A099589.P17947397962900600509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099586 (n + 1)

end

end A099589.P17947397962900600509

namespace A099589

/-- `Δ[A099587(n)]-A099586(n+1)` -/
def P17947397962900600509.Spec : Prop :=
  ∀ n, P17947397962900600509.a n = A099589 n

end A099589

/-! ## A099589.P783772490469255155

`Δ[Δ[n-A099587(n)]]`
-/

namespace A099589.P783772490469255155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A099587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099589.P783772490469255155

namespace A099589

/-- `Δ[Δ[n-A099587(n)]]` -/
def P783772490469255155.Spec : Prop :=
  ∀ n, P783772490469255155.a n = A099589 n

end A099589

/-! ## A099589.P5059461143247702170

`A099587(n+1)-(A099587(n)+A099586(n+1))`
-/

namespace A099589.P5059461143247702170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099587 (n + 1) - (A099587 n + A099586 (n + 1))

end

end A099589.P5059461143247702170

namespace A099589

/-- `A099587(n+1)-(A099587(n)+A099586(n+1))` -/
def P5059461143247702170.Spec : Prop :=
  ∀ n, P5059461143247702170.a n = A099589 n

end A099589

/-! ## A099589.P14840666824861648101

`A099586(n+1)-(A099588(n)+A099586(n+2))`
-/

namespace A099589.P14840666824861648101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099586 (n + 1) - (A099588 n + A099586 (n + 2))

end

end A099589.P14840666824861648101

namespace A099589

/-- `A099586(n+1)-(A099588(n)+A099586(n+2))` -/
def P14840666824861648101.Spec : Prop :=
  ∀ n, P14840666824861648101.a n = A099589 n

end A099589

/-! ## A099589.P869378558598434102

`A000749(n)-2*A290995(n)`
-/

namespace A099589.P869378558598434102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n - 2 * A290995 n

end

end A099589.P869378558598434102

namespace A099589

/-- `A000749(n)-2*A290995(n)` -/
def P869378558598434102.Spec : Prop :=
  ∀ n, P869378558598434102.a n = A099589 n

end A099589

/-! ## A099589.P12797899467519239026

`A129961(n+1)-A131075(n+1)`
-/

namespace A099589.P12797899467519239026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) - A131075 (n + 1)

end

end A099589.P12797899467519239026

namespace A099589

/-- `A129961(n+1)-A131075(n+1)` -/
def P12797899467519239026.Spec : Prop :=
  ∀ n, P12797899467519239026.a n = A099589 n

end A099589

/-! ## A099589.P18027543418621324963

`∑[A131075(A028310(n))]-A131075(n+1)`
-/

namespace A099589.P18027543418621324963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131075 (n + 1)

end

end A099589.P18027543418621324963

namespace A099589

/-- `∑[A131075(A028310(n))]-A131075(n+1)` -/
def P18027543418621324963.Spec : Prop :=
  ∀ n, P18027543418621324963.a n = A099589 n

end A099589

/-! ## A099589.P5327522266654755862

`A129961(n+1)+A129961(n+1)-A129961(n+2)`
-/

namespace A099589.P5327522266654755862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) + (A129961 (n + 1) - A129961 (n + 2))

end

end A099589.P5327522266654755862

namespace A099589

/-- `A129961(n+1)+A129961(n+1)-A129961(n+2)` -/
def P5327522266654755862.Spec : Prop :=
  ∀ n, P5327522266654755862.a n = A099589 n

end A099589

/-!
# A099590: 2^(n-1) times coefficient of x in (1+x)^n mod U(n,x), U the Chebyshev polynomials.

The programs for A099590, the canonical program `A099590.P17229970317893452470` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099590 has offset 1).

The definition of A099590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099590.P17229970317893452470

`A038608(∑[A001057(n+1)])+A001787(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099590

/-- `A038608(∑[A001057(n+1)])+A001787(n+1)` -/
def P17229970317893452470.Spec : Prop :=
  ∀ n, P17229970317893452470.a n = A099590 (n + 1)

theorem P17229970317893452470.correct : P17229970317893452470.Spec := by
  intro n
  simp only [A099590, Nat.add_sub_cancel]

end A099590

/-! ## A099590.P11077436493992011455

`ogf((4x-2x^2+x^4)/(1-4x+6x^2-8x^3+9x^4-4x^5+4x^6))`
-/

namespace A099590.P11077436493992011455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -2, 0, 1] [1, -4, 6, -8, 9, -4, 4] n

end

end A099590.P11077436493992011455

namespace A099590

/-- `ogf((4x-2x^2+x^4)/(1-4x+6x^2-8x^3+9x^4-4x^5+4x^6))` -/
def P11077436493992011455.Spec : Prop :=
  ∀ n, P11077436493992011455.a n = A099590 (n + 1)

end A099590

/-! ## A099590.P6910633551165812571

`Δ[A000337(n)-A001057(A110654(n))]`
-/

namespace A099590.P6910633551165812571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n - A001057 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099590.P6910633551165812571

namespace A099590

/-- `Δ[A000337(n)-A001057(A110654(n))]` -/
def P6910633551165812571.Spec : Prop :=
  ∀ n, P6910633551165812571.a n = A099590 (n + 1)

end A099590

/-! ## A099590.P2052134109159670424

`A001787(n+1)-A049310(∑[n+1]+1)`
-/

namespace A099590.P2052134109159670424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A049310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A099590.P2052134109159670424

namespace A099590

/-- `A001787(n+1)-A049310(∑[n+1]+1)` -/
def P2052134109159670424.Spec : Prop :=
  ∀ n, P2052134109159670424.a n = A099590 (n + 1)

end A099590

/-!
# A099591: Numbers that are the sum of no fewer than 17 biquadrates (4th powers).

The programs for A099591, there is no canonical definition to state claims against.
-/

/-! ## A099591.P4514819157582275333

`eq[0, A374014(n)]`
-/

namespace A099591.P4514819157582275333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099591.P4514819157582275333

/-! ## A099591.P6425341777065309246

`lt[16, A002377(A028310(n))]`
-/

namespace A099591.P6425341777065309246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099591.P6425341777065309246

/-! ## A099591.P9304065921715591497

`A020725(lt[16, A002377(n+1)])`
-/

namespace A099591.P9304065921715591497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099591.P9304065921715591497

/-! ## A099591.P16673235361672777854

`A065475(lt[16, A002377(n+1)])`
-/

namespace A099591.P16673235361672777854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099591.P16673235361672777854

/-! ## A099591.P15990126324174283715

`A114637(lt[16, A002377(n+1)])`
-/

namespace A099591.P15990126324174283715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099591.P15990126324174283715

/-! ## A099591.P12667948159334944684

`lt[16, A002377(A233583(n+1))]`
-/

namespace A099591.P12667948159334944684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099591.P12667948159334944684

/-!
# A099593: Sum of the number of e-divisors of all numbers from 2 up to n.

The programs for A099593, the canonical program `A099593.P8699608489841539462` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099593 has offset 1).

The definition of A099593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099593.P4463086693805941094

`A145353(n+1)-1`
-/

namespace A099593.P4463086693805941094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145353 (n + 1) - 1

end

end A099593.P4463086693805941094

namespace A099593

/-- `A145353(n+1)-1` -/
def P4463086693805941094.Spec : Prop :=
  ∀ n, P4463086693805941094.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P8699608489841539462

`∑[A049419(1+n)]-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099593

/-- `∑[A049419(1+n)]-1` -/
def P8699608489841539462.Spec : Prop :=
  ∀ n, P8699608489841539462.a n = A099593 (n + 1)

theorem P8699608489841539462.correct : P8699608489841539462.Spec := by
  intro n
  simp only [A099593, Nat.add_sub_cancel]

end A099593

/-! ## A099593.P1724290404830017073

`∑[A049419(n+1)%(n+1)]`
-/

namespace A099593.P1724290404830017073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099593.P1724290404830017073

namespace A099593

/-- `∑[A049419(n+1)%(n+1)]` -/
def P1724290404830017073.Spec : Prop :=
  ∀ n, P1724290404830017073.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P6765770398077819783

`∑[∏{e}[n+1, A000005(#)]]-1`
-/

namespace A099593.P6765770398077819783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000005 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099593.P6765770398077819783

namespace A099593

/-- `∑[∏{e}[n+1, A000005(#)]]-1` -/
def P6765770398077819783.Spec : Prop :=
  ∀ n, P6765770398077819783.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P5426633841954462519

`∑[∏{e}[n+1, A277692(2*#+1)]]-1`
-/

namespace A099593.P5426633841954462519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A277692 (2 * Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099593.P5426633841954462519

namespace A099593

/-- `∑[∏{e}[n+1, A277692(2*#+1)]]-1` -/
def P5426633841954462519.Spec : Prop :=
  ∀ n, P5426633841954462519.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P17280775926571508472

`∑[A049419(n+1)*A057427(n)]`
-/

namespace A099593.P17280775926571508472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099593.P17280775926571508472

namespace A099593

/-- `∑[A049419(n+1)*A057427(n)]` -/
def P17280775926571508472.Spec : Prop :=
  ∀ n, P17280775926571508472.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P8381145078862355645

`∑[∏{e}[n+1, A000005(#)]%A000005(n+1)]`
-/

namespace A099593.P8381145078862355645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), A000005 (Nat.factorization (f2 n) p)) (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099593.P8381145078862355645

namespace A099593

/-- `∑[∏{e}[n+1, A000005(#)]%A000005(n+1)]` -/
def P8381145078862355645.Spec : Prop :=
  ∀ n, P8381145078862355645.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P14452349438494657327

`A023443(A145353(n+1))`
-/

namespace A099593.P14452349438494657327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A145353 (n + 1)).toNat

end

end A099593.P14452349438494657327

namespace A099593

/-- `A023443(A145353(n+1))` -/
def P14452349438494657327.Spec : Prop :=
  ∀ n, P14452349438494657327.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P5394386862587138882

`and(A145353(n+1)+A083420(n), A083420(n))`
-/

namespace A099593.P5394386862587138882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145353 (n + 1) + A083420 n) (A083420 n)

end

end A099593.P5394386862587138882

namespace A099593

/-- `and(A145353(n+1)+A083420(n), A083420(n))` -/
def P5394386862587138882.Spec : Prop :=
  ∀ n, P5394386862587138882.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P457963689754367747

`and(A267941(n)+A145353(n+1), A267941(n))`
-/

namespace A099593.P457963689754367747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267941 n + A145353 (n + 1)) (A267941 n)

end

end A099593.P457963689754367747

namespace A099593

/-- `and(A267941(n)+A145353(n+1), A267941(n))` -/
def P457963689754367747.Spec : Prop :=
  ∀ n, P457963689754367747.a n = A099593 (n + 1)

end A099593

/-! ## A099593.P2241450621818038878

`∑[A368980((n+1)²)]-1`
-/

namespace A099593.P2241450621818038878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099593.P2241450621818038878

namespace A099593

/-- `∑[A368980((n+1)²)]-1` -/
def P2241450621818038878.Spec : Prop :=
  ∀ n, P2241450621818038878.a n = A099593 (n + 1)

end A099593

/-!
# A099594: Array read by antidiagonals: poly-Bernoulli numbers B(-k,n).

The programs for A099594, there is no canonical definition to state claims against.
-/

/-! ## A099594.P14306055248232034811

`A350745(n)/A007318(n)`
-/

namespace A099594.P14306055248232034811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350745 n : ℚ) / (A007318 n : ℚ)

end

end A099594.P14306055248232034811

/-! ## A099594.P4734596455808601161

`A299904(n*A123110(n))+1`
-/

namespace A099594.P4734596455808601161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299904 ((n : ℤ) * A123110 n).toNat + 1

end

end A099594.P4734596455808601161

/-! ## A099594.P6691416541904447061

`A299904(gcd(n, A133089(n)))+1`
-/

namespace A099594.P6691416541904447061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299904 (Int.gcd (n : ℤ) (A133089 n)) + 1

end

end A099594.P6691416541904447061

/-! ## A099594.P10372563893012970617

`A299904(n%A019538(n+1))+1`
-/

namespace A099594.P10372563893012970617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299904 (Int.tmod (n : ℤ) (A019538 (n + 1))).toNat + 1

end

end A099594.P10372563893012970617

/-! ## A099594.P1374008339627600598

`A299904(n)+1`
-/

namespace A099594.P1374008339627600598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299904 n + 1

end

end A099594.P1374008339627600598

/-! ## A099594.P17895346561726604794

`1-A057428(n)*A299904(n)`
-/

namespace A099594.P17895346561726604794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A299904 n

end

end A099594.P17895346561726604794

/-! ## A099594.P1203235239575320112

`2-(A007318(C(2, n))-A299904(n))`
-/

namespace A099594.P1203235239575320112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A299904 n)

end

end A099594.P1203235239575320112

/-! ## A099594.P10559926527984129293

`A008619(2*n)-(n-A299904(n))`
-/

namespace A099594.P10559926527984129293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A299904 n)

end

end A099594.P10559926527984129293

/-! ## A099594.P10186520958327891619

`A328399(2*n)-(n-A299904(n))`
-/

namespace A099594.P10186520958327891619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * n) - ((n : ℤ) - A299904 n)

end

end A099594.P10186520958327891619

/-!
# A099596: Primes p such that the denominator of the poly-Bernoulli number B(2,p) equals 8p.

The programs for A099596, there is no canonical definition to state claims against.
-/

/-! ## A099596.P16431889460112656202

`eq[A100616(n), A299174(n+1)]+1`
-/

namespace A099596.P16431889460112656202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099596.P16431889460112656202

/-!
# A099597: Array T(n,k) read by antidiagonals: expansion of exp(x+y)/(1-xy).

The programs for A099597, the canonical program `A099597.P10261351083358021982` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099597 has offset 0).

The definition of A099597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099597.P10261351083358021982

`col(n)*(row(n)-col(n))*T(n-2,k-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099597

/-- `col(n)*(row(n)-col(n))*T(n-2,k-1)+1` -/
def P10261351083358021982.Spec : Prop :=
  ∀ n, P10261351083358021982.a n = A099597 n

theorem P10261351083358021982.correct : P10261351083358021982.Spec := by
  intro n
  simp only [A099597]

end A099597

/-! ## A099597.P14883421191740396900

`1-(col(n)-row(n))*col(n)*T(n-2,k-1)` with `a(0)=1`
-/

namespace A099597.P14883421191740396900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp2Left a n

end

end A099597.P14883421191740396900

namespace A099597

/-- `1-(col(n)-row(n))*col(n)*T(n-2,k-1)` -/
def P14883421191740396900.Spec : Prop :=
  ∀ n, P14883421191740396900.a n = A099597 n

theorem P14883421191740396900.correct : P14883421191740396900.Spec := by
  intro n
  simp only [A099597, Nat.add_sub_cancel, A099597.P14883421191740396900.a, A099597.P10261351083358021982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099597

/-! ## A099597.P3036592936316740338

`(row(n)-col(n))*((col(n)-(row(n)-col(n))+1)*T(n-1,k)+(row(n)-col(n)-1)*T(n-2,k))+1` with `a(0)=1`
-/

namespace A099597.P3036592936316740338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1) * SequenceMachineLib.triUp a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUp2 a n) + 1

end

end A099597.P3036592936316740338

namespace A099597

/-- `(row(n)-col(n))*((col(n)-(row(n)-col(n))+1)*T(n-1,k)+(row(n)-col(n)-1)*T(n-2,k))+1` -/
def P3036592936316740338.Spec : Prop :=
  ∀ n, P3036592936316740338.a n = A099597 n

end A099597

/-! ## A099597.P4301700829437197150

`col(n)*((row(n)-col(n)-col(n)+1)*T(n-1,k-1)+(col(n)-1)*T(row(n)-2, col(n)-2))+1` with `a(0)=1`
-/

namespace A099597.P4301700829437197150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)) + 1

end

end A099597.P4301700829437197150

namespace A099597

/-- `col(n)*((row(n)-col(n)-col(n)+1)*T(n-1,k-1)+(col(n)-1)*T(row(n)-2, col(n)-2))+1` -/
def P4301700829437197150.Spec : Prop :=
  ∀ n, P4301700829437197150.a n = A099597 n

end A099597

/-! ## A099597.P743896973132081673

`A362914(A081578(n))`
-/

namespace A099597.P743896973132081673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362914 (A081578 n).toNat

end

end A099597.P743896973132081673

namespace A099597

/-- `A362914(A081578(n))` -/
def P743896973132081673.Spec : Prop :=
  ∀ n, P743896973132081673.a n = A099597 n

end A099597

/-!
# A099598: Antidiagonal sums of array A099597.

The programs for A099598, the canonical program `A099598.P866038918585735636` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099598 has offset 0).

The definition of A099598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099598.P866038918585735636

`∑{#}[n, C(n, #)*floor(#/2)!²]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099598

/-- `∑{#}[n, C(n, #)*floor(#/2)!²]` -/
def P866038918585735636.Spec : Prop :=
  ∀ n, (P866038918585735636.a n : ℤ) = A099598 n

theorem P866038918585735636.correct : P866038918585735636.Spec := by
  intro n
  simp only [A099598]

end A099598

/-! ## A099598.P7464615640341264057

`∑{#}[n, C(n, #)*A180064(#)]`
-/

namespace A099598.P7464615640341264057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A180064 k

end

end A099598.P7464615640341264057

namespace A099598

/-- `∑{#}[n, C(n, #)*A180064(#)]` -/
def P7464615640341264057.Spec : Prop :=
  ∀ n, P7464615640341264057.a n = A099598 n

theorem P7464615640341264057.correct : P7464615640341264057.Spec := by
  intro n
  simp only [A099598, Nat.add_sub_cancel, A099598.P7464615640341264057.f1, A099598.P7464615640341264057.a, A099598.P866038918585735636.f1, A099598.P866038918585735636.a, A180064, A180064.P14840062610617339627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099598

/-! ## A099598.P9967872186374605660

`∑[A241139(n!+2)+1]`
-/

namespace A099598.P9967872186374605660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241139 (Nat.factorial n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099598.P9967872186374605660

namespace A099598

/-- `∑[A241139(n!+2)+1]` -/
def P9967872186374605660.Spec : Prop :=
  ∀ n, P9967872186374605660.a n = A099598 n

end A099598

