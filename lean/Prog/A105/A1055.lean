import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
# A105500: Trajectory of 1 under the morphism 1->{1,2}, 2->{3,2}, 3->{3,4}, 4->{1,4}.

The programs for A105500, the canonical program `A105500.P12832839088378290304` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105500 has offset 0).

The definition of A105500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105500.P10829818513304664875

`A246960(n)+1`
-/

namespace A105500.P10829818513304664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n + 1

end

end A105500.P10829818513304664875

namespace A105500

/-- `A246960(n)+1` -/
def P10829818513304664875.Spec : Prop :=
  ∀ n, P10829818513304664875.a n = A105500 n

end A105500

/-! ## A105500.P12832839088378290304

`gcd(12, a(n-1-and(n, 2*n))+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105500

/-- `gcd(12, a(n-1-and(n, 2*n))+1)` -/
def P12832839088378290304.Spec : Prop :=
  ∀ n, (P12832839088378290304.a n : ℤ) = A105500 n

theorem P12832839088378290304.correct : P12832839088378290304.Spec := by
  intro n
  simp only [A105500]

end A105500

/-! ## A105500.P11561960070368317418

`(∑[Δ[xor(n, 2*n-1)]%2]+3)%4+1`
-/

namespace A105500.P11561960070368317418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 3) 4 + 1

end

end A105500.P11561960070368317418

namespace A105500

/-- `(∑[Δ[xor(n, 2*n-1)]%2]+3)%4+1` -/
def P11561960070368317418.Spec : Prop :=
  ∀ n, P11561960070368317418.a n = A105500 n

end A105500

/-! ## A105500.P14280326228649606278

`dr(or(28, A005811(n)))`
-/

namespace A105500.P14280326228649606278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 28 (A005811 n))

end

end A105500.P14280326228649606278

namespace A105500

/-- `dr(or(28, A005811(n)))` -/
def P14280326228649606278.Spec : Prop :=
  ∀ n, (P14280326228649606278.a n : ℤ) = A105500 n

end A105500

/-! ## A105500.P4858966072836821119

`A136004(n)%4+1`
-/

namespace A105500.P4858966072836821119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136004 n) 4 + 1

end

end A105500.P4858966072836821119

namespace A105500

/-- `A136004(n)%4+1` -/
def P4858966072836821119.Spec : Prop :=
  ∀ n, P4858966072836821119.a n = A105500 n

end A105500

/-! ## A105500.P15340137485084620041

`gcd(48, a(n-A006257(n))+1)` with `a(0)=1`
-/

namespace A105500.P15340137485084620041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 48 (a ((n : ℤ) - A006257 n).toNat + 1)

end

end A105500.P15340137485084620041

namespace A105500

/-- `gcd(48, a(n-A006257(n))+1)` -/
def P15340137485084620041.Spec : Prop :=
  ∀ n, (P15340137485084620041.a n : ℤ) = A105500 n

end A105500

/-! ## A105500.P10444069012878289150

`A010883(∑{e}[2*a(n-1-and(n, 2*n)), #])` with `a(0)=1`
-/

namespace A105500.P10444069012878289150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A105500.P10444069012878289150

namespace A105500

/-- `A010883(∑{e}[2*a(n-1-and(n, 2*n)), #])` -/
def P10444069012878289150.Spec : Prop :=
  ∀ n, P10444069012878289150.a n = A105500 n

end A105500

/-! ## A105500.P17825214351564705850

`A010883(A005811(n))`
-/

namespace A105500.P17825214351564705850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A005811 n).toNat

end

end A105500.P17825214351564705850

namespace A105500

/-- `A010883(A005811(n))` -/
def P17825214351564705850.Spec : Prop :=
  ∀ n, P17825214351564705850.a n = A105500 n

end A105500

/-! ## A105500.P2805475957441098473

`A010883(A136004(n))`
-/

namespace A105500.P2805475957441098473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A136004 n).toNat

end

end A105500.P2805475957441098473

namespace A105500

/-- `A010883(A136004(n))` -/
def P2805475957441098473.Spec : Prop :=
  ∀ n, P2805475957441098473.a n = A105500 n

end A105500

/-! ## A105500.P4060488549253605233

`A189480(A088748(n))+1`
-/

namespace A105500.P4060488549253605233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A088748 n).toNat + 1

end

end A105500.P4060488549253605233

namespace A105500

/-- `A189480(A088748(n))+1` -/
def P4060488549253605233.Spec : Prop :=
  ∀ n, P4060488549253605233.a n = A105500 n

end A105500

/-! ## A105500.P336024985743334917

`A010883(A088748(n)-1)`
-/

namespace A105500.P336024985743334917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A088748 n - 1).toNat

end

end A105500.P336024985743334917

namespace A105500

/-- `A010883(A088748(n)-1)` -/
def P336024985743334917.Spec : Prop :=
  ∀ n, P336024985743334917.a n = A105500 n

end A105500

/-! ## A105500.P14624514013650947712

`A010883(a(A035327(n)))` with `a(0)=1`
-/

namespace A105500.P14624514013650947712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010883 (a (A035327 n).toNat).toNat

end

end A105500.P14624514013650947712

namespace A105500

/-- `A010883(a(A035327(n)))` -/
def P14624514013650947712.Spec : Prop :=
  ∀ n, P14624514013650947712.a n = A105500 n

end A105500

/-! ## A105500.P8982026330803492213

`A049563(a(A035327(n)))` with `a(0)=1`
-/

namespace A105500.P8982026330803492213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049563 (a (A035327 n).toNat).toNat

end

end A105500.P8982026330803492213

namespace A105500

/-- `A049563(a(A035327(n)))` -/
def P8982026330803492213.Spec : Prop :=
  ∀ n, P8982026330803492213.a n = A105500 n

end A105500

/-! ## A105500.P11771705081811658527

`A110630(a(A035327(n)))` with `a(0)=1`
-/

namespace A105500.P11771705081811658527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110630 (a (A035327 n).toNat).toNat

end

end A105500.P11771705081811658527

namespace A105500

/-- `A110630(a(A035327(n)))` -/
def P11771705081811658527.Spec : Prop :=
  ∀ n, P11771705081811658527.a n = A105500 n

end A105500

/-! ## A105500.P13647646154972108958

`A001222(or(60, A088748(n)))`
-/

namespace A105500.P13647646154972108958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 60 (A088748 n)).toNat

end

end A105500.P13647646154972108958

namespace A105500

/-- `A001222(or(60, A088748(n)))` -/
def P13647646154972108958.Spec : Prop :=
  ∀ n, P13647646154972108958.a n = A105500 n

end A105500

/-! ## A105500.P12506324988862340817

`A010693(n)-A393435(n)`
-/

namespace A105500.P12506324988862340817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A393435 n

end

end A105500.P12506324988862340817

namespace A105500

/-- `A010693(n)-A393435(n)` -/
def P12506324988862340817.Spec : Prop :=
  ∀ n, P12506324988862340817.a n = A105500 n

end A105500

/-! ## A105500.P12866014178249105597

`and(A001539(n), A005811(n))+1`
-/

namespace A105500.P12866014178249105597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A005811 n) + 1

end

end A105500.P12866014178249105597

namespace A105500

/-- `and(A001539(n), A005811(n))+1` -/
def P12866014178249105597.Spec : Prop :=
  ∀ n, P12866014178249105597.a n = A105500 n

end A105500

/-! ## A105500.P14345794016057772212

`and(A005811(n), A010693(n))+1`
-/

namespace A105500.P14345794016057772212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 n) (A010693 n) + 1

end

end A105500.P14345794016057772212

namespace A105500

/-- `and(A005811(n), A010693(n))+1` -/
def P14345794016057772212.Spec : Prop :=
  ∀ n, P14345794016057772212.a n = A105500 n

end A105500

/-! ## A105500.P5989826430764851057

`A000034(n)+and(2, A005811(n))`
-/

namespace A105500.P5989826430764851057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + Int.land 2 (A005811 n)

end

end A105500.P5989826430764851057

namespace A105500

/-- `A000034(n)+and(2, A005811(n))` -/
def P5989826430764851057.Spec : Prop :=
  ∀ n, P5989826430764851057.a n = A105500 n

end A105500

/-! ## A105500.P9126063346870253971

`and(A005811(n), A032816(n+1))+1`
-/

namespace A105500.P9126063346870253971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 n) (A032816 (n + 1)) + 1

end

end A105500.P9126063346870253971

namespace A105500

/-- `and(A005811(n), A032816(n+1))+1` -/
def P9126063346870253971.Spec : Prop :=
  ∀ n, P9126063346870253971.a n = A105500 n

end A105500

/-!
# A105501: Numbers n such that 1 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105501, the canonical program `A105501.P5244751122571021061` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105501 has offset 1).

The definition of A105501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105501.P5244751122571021061

`eq[1, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105501

/-- `eq[1, A008963(n)]` -/
def P5244751122571021061.Spec : Prop :=
  ∀ n, (P5244751122571021061.a n : ℤ) = A105501 (n + 1)

theorem P5244751122571021061.correct : P5244751122571021061.Spec := by
  intro n
  simp only [A105501, Nat.add_sub_cancel]

end A105501

/-! ## A105501.P12907414042183581955

`record[(n+1)/A008963(n+1)]`
-/

namespace A105501.P12907414042183581955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105501.P12907414042183581955

namespace A105501

/-- `record[(n+1)/A008963(n+1)]` -/
def P12907414042183581955.Spec : Prop :=
  ∀ n, P12907414042183581955.a n = (A105501 (n + 1) : ℚ)

end A105501

/-! ## A105501.P16938119520318065032

`record[n+1-A008963(n%(n+1))]`
-/

namespace A105501.P16938119520318065032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008963 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105501.P16938119520318065032

namespace A105501

/-- `record[n+1-A008963(n%(n+1))]` -/
def P16938119520318065032.Spec : Prop :=
  ∀ n, P16938119520318065032.a n = A105501 (n + 1)

end A105501

/-! ## A105501.P3336779798835122734

`record[A028310(n+1)-A008963(n)]`
-/

namespace A105501.P3336779798835122734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) - A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105501.P3336779798835122734

namespace A105501

/-- `record[A028310(n+1)-A008963(n)]` -/
def P3336779798835122734.Spec : Prop :=
  ∀ n, P3336779798835122734.a n = A105501 (n + 1)

end A105501

/-! ## A105501.P7023487294539787422

`record[n+1-A008963(n)^A008963(n+1)]`
-/

namespace A105501.P7023487294539787422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A008963 n : ℚ) ^ (A008963 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105501.P7023487294539787422

namespace A105501

/-- `record[n+1-A008963(n)^A008963(n+1)]` -/
def P7023487294539787422.Spec : Prop :=
  ∀ n, P7023487294539787422.a n = (A105501 (n + 1) : ℚ)

end A105501

/-! ## A105501.P11096026996352923566

`A252463(record[2*(1-A008963(n)+n)])`
-/

namespace A105501.P11096026996352923566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A008963 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105501.P11096026996352923566

namespace A105501

/-- `A252463(record[2*(1-A008963(n)+n)])` -/
def P11096026996352923566.Spec : Prop :=
  ∀ n, P11096026996352923566.a n = A105501 (n + 1)

end A105501

/-!
# A105502: Numbers m such that 2 is the leading digit of the m-th Fibonacci number in decimal representation.

The programs for A105502, the canonical program `A105502.P5982354816921253403` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105502 has offset 1).

The definition of A105502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105502.P5982354816921253403

`eq[2, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105502

/-- `eq[2, A008963(n)]` -/
def P5982354816921253403.Spec : Prop :=
  ∀ n, (P5982354816921253403.a n : ℤ) = A105502 (n + 1)

theorem P5982354816921253403.correct : P5982354816921253403.Spec := by
  intro n
  simp only [A105502, Nat.add_sub_cancel]

end A105502

/-! ## A105502.P14358071047261727392

`eq[2, A004091(n)%10]`
-/

namespace A105502.P14358071047261727392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004091 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105502.P14358071047261727392

namespace A105502

/-- `eq[2, A004091(n)%10]` -/
def P14358071047261727392.Spec : Prop :=
  ∀ n, (P14358071047261727392.a n : ℤ) = A105502 (n + 1)

end A105502

/-! ## A105502.P2869354479421943657

`record[A105702(n)%floor((sqrt(8)+2)*(n+1))]`
-/

namespace A105502.P2869354479421943657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105702 n) ⌊(Real.sqrt (8 : ℝ) + 2) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105502.P2869354479421943657

namespace A105502

/-- `record[A105702(n)%floor((sqrt(8)+2)*(n+1))]` -/
def P2869354479421943657.Spec : Prop :=
  ∀ n, P2869354479421943657.a n = A105502 (n + 1)

end A105502

/-! ## A105502.P1756545293350336390

`A105702(lt[A105702(n), A105703(n)])`
-/

namespace A105502.P1756545293350336390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105502.P1756545293350336390

namespace A105502

/-- `A105702(lt[A105702(n), A105703(n)])` -/
def P1756545293350336390.Spec : Prop :=
  ∀ n, P1756545293350336390.a n = A105502 (n + 1)

end A105502

/-!
# A105503: Numbers n such that 3 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105503, the canonical program `A105503.P13182227572281853625` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105503 has offset 1).

The definition of A105503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105503.P13182227572281853625

`eq[3, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105503

/-- `eq[3, A008963(n)]` -/
def P13182227572281853625.Spec : Prop :=
  ∀ n, (P13182227572281853625.a n : ℤ) = A105503 (n + 1)

theorem P13182227572281853625.correct : P13182227572281853625.Spec := by
  intro n
  simp only [A105503, Nat.add_sub_cancel]

end A105503

/-! ## A105503.P15075076536281165490

`eq[3, A004091(n)%10]`
-/

namespace A105503.P15075076536281165490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004091 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105503.P15075076536281165490

namespace A105503

/-- `eq[3, A004091(n)%10]` -/
def P15075076536281165490.Spec : Prop :=
  ∀ n, (P15075076536281165490.a n : ℤ) = A105503 (n + 1)

end A105503

/-! ## A105503.P304509879092793293

`record[A105703(n)%A105707(n)]`
-/

namespace A105503.P304509879092793293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105703 n) (A105707 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105503.P304509879092793293

namespace A105503

/-- `record[A105703(n)%A105707(n)]` -/
def P304509879092793293.Spec : Prop :=
  ∀ n, P304509879092793293.a n = A105503 (n + 1)

end A105503

/-! ## A105503.P1967061476866174751

`A105703(lt[A105703(n), A105707(n)])`
-/

namespace A105503.P1967061476866174751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105703 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105503.P1967061476866174751

namespace A105503

/-- `A105703(lt[A105703(n), A105707(n)])` -/
def P1967061476866174751.Spec : Prop :=
  ∀ n, P1967061476866174751.a n = A105503 (n + 1)

end A105503

/-!
# A105504: Numbers m such that 4 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105504, the canonical program `A105504.P12281381645323141339` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105504 has offset 1).

The definition of A105504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 968 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105504.P12281381645323141339

`eq[4, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105504

/-- `eq[4, A008963(n)]` -/
def P12281381645323141339.Spec : Prop :=
  ∀ n, (P12281381645323141339.a n : ℤ) = A105504 (n + 1)

theorem P12281381645323141339.correct : P12281381645323141339.Spec := by
  intro n
  simp only [A105504, Nat.add_sub_cancel]

end A105504

/-! ## A105504.P317726012830887961

`A105704(lt[A105704(n), A072353(n+1)])`
-/

namespace A105504.P317726012830887961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105504.P317726012830887961

namespace A105504

/-- `A105704(lt[A105704(n), A072353(n+1)])` -/
def P317726012830887961.Spec : Prop :=
  ∀ n, P317726012830887961.a n = A105504 (n + 1)

end A105504

/-! ## A105504.P1400321083508605317

`A105704(lt[A105704(n), A072354(n+2)])`
-/

namespace A105504.P1400321083508605317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105504.P1400321083508605317

namespace A105504

/-- `A105704(lt[A105704(n), A072354(n+2)])` -/
def P1400321083508605317.Spec : Prop :=
  ∀ n, P1400321083508605317.a n = A105504 (n + 1)

end A105504

/-! ## A105504.P13189989384207990990

`A105704(eq[A105704(n)+1, A072353(n+1)])`
-/

namespace A105504.P13189989384207990990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105704 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105504.P13189989384207990990

namespace A105504

/-- `A105704(eq[A105704(n)+1, A072353(n+1)])` -/
def P13189989384207990990.Spec : Prop :=
  ∀ n, P13189989384207990990.a n = A105504 (n + 1)

end A105504

/-!
# A105505: Numbers n such that 5 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105505, the canonical program `A105505.P6034328891926240916` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105505 has offset 1).

The definition of A105505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105505.P6034328891926240916

`eq[5, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105505

/-- `eq[5, A008963(n)]` -/
def P6034328891926240916.Spec : Prop :=
  ∀ n, (P6034328891926240916.a n : ℤ) = A105505 (n + 1)

theorem P6034328891926240916.correct : P6034328891926240916.Spec := by
  intro n
  simp only [A105505, Nat.add_sub_cancel]

end A105505

/-! ## A105505.P14805144509759866730

`lt[(val(A008963(A028310(n)), 5)+1)%2, 1]`
-/

namespace A105505.P14805144509759866730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 5 + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105505.P14805144509759866730

namespace A105505

/-- `lt[(val(A008963(A028310(n)), 5)+1)%2, 1]` -/
def P14805144509759866730.Spec : Prop :=
  ∀ n, (P14805144509759866730.a n : ℤ) = A105505 (n + 1)

end A105505

/-! ## A105505.P4259457782639179226

`lt[3, gcd(A008963(n)-5, A285135(n+1))-5]`
-/

namespace A105505.P4259457782639179226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A008963 n - 5) (A285135 (n + 1)) : ℤ) - 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105505.P4259457782639179226

namespace A105505

/-- `lt[3, gcd(A008963(n)-5, A285135(n+1))-5]` -/
def P4259457782639179226.Spec : Prop :=
  ∀ n, (P4259457782639179226.a n : ℤ) = A105505 (n + 1)

end A105505

/-! ## A105505.P8799987949771645014

`A105705(lt[A105705(n), A072353(n+1)])`
-/

namespace A105505.P8799987949771645014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105705 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105505.P8799987949771645014

namespace A105505

/-- `A105705(lt[A105705(n), A072353(n+1)])` -/
def P8799987949771645014.Spec : Prop :=
  ∀ n, P8799987949771645014.a n = A105505 (n + 1)

end A105505

/-!
# A105506: Numbers m such that 6 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105506, the canonical program `A105506.P1349886026794230767` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105506 has offset 1).

The definition of A105506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105506.P1349886026794230767

`eq[6, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105506

/-- `eq[6, A008963(n)]` -/
def P1349886026794230767.Spec : Prop :=
  ∀ n, (P1349886026794230767.a n : ℤ) = A105506 (n + 1)

theorem P1349886026794230767.correct : P1349886026794230767.Spec := by
  intro n
  simp only [A105506, Nat.add_sub_cancel]

end A105506

/-! ## A105506.P15837529667890553387

`lt[9, n*val(A008963(A028310(n)), 6)]`
-/

namespace A105506.P15837529667890553387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105506.P15837529667890553387

namespace A105506

/-- `lt[9, n*val(A008963(A028310(n)), 6)]` -/
def P15837529667890553387.Spec : Prop :=
  ∀ n, (P15837529667890553387.a n : ℤ) = A105506 (n + 1)

end A105506

/-! ## A105506.P13690372189507023087

`eq[6, A004091(n)%10]`
-/

namespace A105506.P13690372189507023087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004091 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105506.P13690372189507023087

namespace A105506

/-- `eq[6, A004091(n)%10]` -/
def P13690372189507023087.Spec : Prop :=
  ∀ n, (P13690372189507023087.a n : ℤ) = A105506 (n + 1)

end A105506

/-! ## A105506.P3074076202833634006

`A105706(lt[A105706(n), A072354(n+2)])`
-/

namespace A105506.P3074076202833634006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105706 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105506.P3074076202833634006

namespace A105506

/-- `A105706(lt[A105706(n), A072354(n+2)])` -/
def P3074076202833634006.Spec : Prop :=
  ∀ n, P3074076202833634006.a n = A105506 (n + 1)

end A105506

/-!
# A105507: Numbers m such that 7 is the leading digit of the n-th Fibonacci number in decimal representation.

The programs for A105507, the canonical program `A105507.P15299317297022117526` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105507 has offset 1).

The definition of A105507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105507.P15299317297022117526

`eq[7, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105507

/-- `eq[7, A008963(n)]` -/
def P15299317297022117526.Spec : Prop :=
  ∀ n, (P15299317297022117526.a n : ℤ) = A105507 (n + 1)

theorem P15299317297022117526.correct : P15299317297022117526.Spec := by
  intro n
  simp only [A105507, Nat.add_sub_cancel]

end A105507

/-! ## A105507.P4363022897235645957

`record[A105707(n+4)%A072354(n+6)]`
-/

namespace A105507.P4363022897235645957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105707 (n + 4)) (A072354 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105507.P4363022897235645957

namespace A105507

/-- `record[A105707(n+4)%A072354(n+6)]` -/
def P4363022897235645957.Spec : Prop :=
  ∀ n, P4363022897235645957.a n = A105507 (n + 1)

end A105507

/-! ## A105507.P14162558585262807028

`A105707(eq[A072353(n+1), A105707(n)])`
-/

namespace A105507.P14162558585262807028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105507.P14162558585262807028

namespace A105507

/-- `A105707(eq[A072353(n+1), A105707(n)])` -/
def P14162558585262807028.Spec : Prop :=
  ∀ n, P14162558585262807028.a n = A105507 (n + 1)

end A105507

/-! ## A105507.P3005115859097989840

`A105707(lt[A105707(n), A072354(n+2)])`
-/

namespace A105507.P3005115859097989840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105507.P3005115859097989840

namespace A105507

/-- `A105707(lt[A105707(n), A072354(n+2)])` -/
def P3005115859097989840.Spec : Prop :=
  ∀ n, P3005115859097989840.a n = A105507 (n + 1)

end A105507

/-! ## A105507.P416157148029604664

`A105707(eq[A072354(n+1)+4, A105707(n)])`
-/

namespace A105507.P416157148029604664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105707 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105507.P416157148029604664

namespace A105507

/-- `A105707(eq[A072354(n+1)+4, A105707(n)])` -/
def P416157148029604664.Spec : Prop :=
  ∀ n, P416157148029604664.a n = A105507 (n + 1)

end A105507

/-!
# A105508: Numbers m such that 8 is the leading digit of the m-th Fibonacci number in decimal representation.

The programs for A105508, there is no canonical definition to state claims against.
-/

/-! ## A105508.P4172390964715647322

`record[gcd(A072353(n+1), A105708(n))]`
-/

namespace A105508.P4172390964715647322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072353 (n + 1)) (A105708 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105508.P4172390964715647322

/-! ## A105508.P2477544546812666652

`record[A105708(n)%(A072354(n+2)+1)]`
-/

namespace A105508.P2477544546812666652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105708 n) (A072354 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105508.P2477544546812666652

/-! ## A105508.P11233778120310873552

`A105708(eq[A072353(n+1), A105708(n)])`
-/

namespace A105508.P11233778120310873552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105508.P11233778120310873552

/-! ## A105508.P8562924583480721346

`A105708(eq[A105708(n)+1, A072354(n+2)])`
-/

namespace A105508.P8562924583480721346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105508.P8562924583480721346

/-! ## A105508.P10480284687468991403

`eq[8, A008963(n)]`
-/

namespace A105508.P10480284687468991403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105508.P10480284687468991403

/-! ## A105508.P13636505845351647331

`lt[2, val(A008963(A028310(n)), 2)]`
-/

namespace A105508.P13636505845351647331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A028310 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105508.P13636505845351647331

/-!
# A105509: Numbers m such that 9 is the leading digit of the m-th Fibonacci number in decimal representation.

The programs for A105509, the canonical program `A105509.P8616086371887791814` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105509 has offset 1).

The definition of A105509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105509.P8616086371887791814

`lt[8, A008963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105509

/-- `lt[8, A008963(n)]` -/
def P8616086371887791814.Spec : Prop :=
  ∀ n, (P8616086371887791814.a n : ℤ) = A105509 (n + 1)

theorem P8616086371887791814.correct : P8616086371887791814.Spec := by
  intro n
  simp only [A105509, Nat.add_sub_cancel]

end A105509

/-! ## A105509.P3963110821433254199

`eq[A008963(n), A100401(n)]`
-/

namespace A105509.P3963110821433254199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P3963110821433254199

namespace A105509

/-- `eq[A008963(n), A100401(n)]` -/
def P3963110821433254199.Spec : Prop :=
  ∀ n, (P3963110821433254199.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P16126877496580197960

`eq[A008963(n), A100403(n)]`
-/

namespace A105509.P16126877496580197960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P16126877496580197960

namespace A105509

/-- `eq[A008963(n), A100403(n)]` -/
def P16126877496580197960.Spec : Prop :=
  ∀ n, (P16126877496580197960.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P16517884547023995087

`eq[A008963(n), A168094(n)]`
-/

namespace A105509.P16517884547023995087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P16517884547023995087

namespace A105509

/-- `eq[A008963(n), A168094(n)]` -/
def P16517884547023995087.Spec : Prop :=
  ∀ n, (P16517884547023995087.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P2190248176981706049

`eq[A008963(n), A066586(n+1)]`
-/

namespace A105509.P2190248176981706049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P2190248176981706049

namespace A105509

/-- `eq[A008963(n), A066586(n+1)]` -/
def P2190248176981706049.Spec : Prop :=
  ∀ n, (P2190248176981706049.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P2994381549181374598

`eq[A008963(n), A094327(n+1)]`
-/

namespace A105509.P2994381549181374598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P2994381549181374598

namespace A105509

/-- `eq[A008963(n), A094327(n+1)]` -/
def P2994381549181374598.Spec : Prop :=
  ∀ n, (P2994381549181374598.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P18145716336463829609

`eq[A008963(n), A291092(n+1)]`
-/

namespace A105509.P18145716336463829609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P18145716336463829609

namespace A105509

/-- `eq[A008963(n), A291092(n+1)]` -/
def P18145716336463829609.Spec : Prop :=
  ∀ n, (P18145716336463829609.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P10990626557322246272

`eq[(A057427(n)+2)², A008963(n)]`
-/

namespace A105509.P10990626557322246272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P10990626557322246272

namespace A105509

/-- `eq[(A057427(n)+2)², A008963(n)]` -/
def P10990626557322246272.Spec : Prop :=
  ∀ n, (P10990626557322246272.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P17502255721184865572

`eq[(A060576(n)+2)², A008963(n)]`
-/

namespace A105509.P17502255721184865572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060576 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P17502255721184865572

namespace A105509

/-- `eq[(A060576(n)+2)², A008963(n)]` -/
def P17502255721184865572.Spec : Prop :=
  ∀ n, (P17502255721184865572.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P16193243942851373829

`eq[(A141044(n)+2)², A008963(n)]`
-/

namespace A105509.P16193243942851373829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141044 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P16193243942851373829

namespace A105509

/-- `eq[(A141044(n)+2)², A008963(n)]` -/
def P16193243942851373829.Spec : Prop :=
  ∀ n, (P16193243942851373829.a n : ℤ) = A105509 (n + 1)

end A105509

/-! ## A105509.P2377514452896904966

`eq[(A267587(n)+2)², A008963(n)]`
-/

namespace A105509.P2377514452896904966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267587 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105509.P2377514452896904966

namespace A105509

/-- `eq[(A267587(n)+2)², A008963(n)]` -/
def P2377514452896904966.Spec : Prop :=
  ∀ n, (P2377514452896904966.a n : ℤ) = A105509 (n + 1)

end A105509

/-!
# A105511: Number of times 1 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105511, the canonical program `A105511.P8594542549922877954` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105511 has offset 0).

The definition of A105511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105511.P8594542549922877954

`∑[char[A105501(n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105511

/-- `∑[char[A105501(n+1)]]` -/
def P8594542549922877954.Spec : Prop :=
  ∀ n, (P8594542549922877954.a n : ℤ) = A105511 n

theorem P8594542549922877954.correct : P8594542549922877954.Spec := by
  intro n
  simp only [A105511]

end A105511

/-! ## A105511.P8814316145053094498

`∑[char[eq[1, A008963(n)]]]`
-/

namespace A105511.P8814316145053094498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P8814316145053094498

namespace A105511

/-- `∑[char[eq[1, A008963(n)]]]` -/
def P8814316145053094498.Spec : Prop :=
  ∀ n, (P8814316145053094498.a n : ℤ) = A105511 n

end A105511

/-! ## A105511.P15089746154242807274

`∑[and(A008963(n)!, A054977(n))]`
-/

namespace A105511.P15089746154242807274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A008963 n).toNat : ℤ) (A054977 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P15089746154242807274

namespace A105511

/-- `∑[and(A008963(n)!, A054977(n))]` -/
def P15089746154242807274.Spec : Prop :=
  ∀ n, P15089746154242807274.a n = A105511 n

end A105511

/-! ## A105511.P14273853581834901443

`∑[A008963(n)^A282019(n)]`
-/

namespace A105511.P14273853581834901443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008963 n : ℚ) ^ (A282019 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P14273853581834901443

namespace A105511

/-- `∑[A008963(n)^A282019(n)]` -/
def P14273853581834901443.Spec : Prop :=
  ∀ n, P14273853581834901443.a n = (A105511 n : ℚ)

end A105511

/-! ## A105511.P13347763999062718481

`a(A023443(n))+A008963(n)^A282019(n)` with `a(0)=0, a(1)=1`
-/

namespace A105511.P13347763999062718481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A023443 n).toNat + (A008963 n : ℚ) ^ (A282019 n : ℤ)

end

end A105511.P13347763999062718481

namespace A105511

/-- `a(A023443(n))+A008963(n)^A282019(n)` -/
def P13347763999062718481.Spec : Prop :=
  ∀ n, P13347763999062718481.a n = (A105511 n : ℚ)

end A105511

/-! ## A105511.P1089651435643653057

`∑[A008963(n)^A024020(n)]`
-/

namespace A105511.P1089651435643653057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008963 n : ℚ) ^ (A024020 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P1089651435643653057

namespace A105511

/-- `∑[A008963(n)^A024020(n)]` -/
def P1089651435643653057.Spec : Prop :=
  ∀ n, P1089651435643653057.a n = (A105511 n : ℚ)

end A105511

/-! ## A105511.P10470159511009839708

`∑[A008963(n)^A024019(n)]`
-/

namespace A105511.P10470159511009839708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008963 n : ℚ) ^ (A024019 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P10470159511009839708

namespace A105511

/-- `∑[A008963(n)^A024019(n)]` -/
def P10470159511009839708.Spec : Prop :=
  ∀ n, P10470159511009839708.a n = (A105511 n : ℚ)

end A105511

/-!
# A105512: Number of times 2 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105512, the canonical program `A105512.P13085090330306124009` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105512 has offset 0).

The definition of A105512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105512.P13085090330306124009

`∑[char[A105502(n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105512

/-- `∑[char[A105502(n+1)]]` -/
def P13085090330306124009.Spec : Prop :=
  ∀ n, (P13085090330306124009.a n : ℤ) = A105512 n

theorem P13085090330306124009.correct : P13085090330306124009.Spec := by
  intro n
  simp only [A105512]

end A105512

/-! ## A105512.P10539716734839032583

`∑[char[eq[2, A008963(n)]]]`
-/

namespace A105512.P10539716734839032583
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105512.P10539716734839032583

namespace A105512

/-- `∑[char[eq[2, A008963(n)]]]` -/
def P10539716734839032583.Spec : Prop :=
  ∀ n, (P10539716734839032583.a n : ℤ) = A105512 n

end A105512

/-! ## A105512.P14277905604507436181

`comp[eq[2, A008963(2*n-n)]+n]-n`
-/

namespace A105512.P14277905604507436181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (2 * n - n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A105512.P14277905604507436181

namespace A105512

/-- `comp[eq[2, A008963(2*n-n)]+n]-n` -/
def P14277905604507436181.Spec : Prop :=
  ∀ n, P14277905604507436181.a n = A105512 n

end A105512

/-! ## A105512.P12470241181335958984

`∑[and(A055641(2*(n+2)), A373748(3*n))]`
-/

namespace A105512.P12470241181335958984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055641 (2 * (n + 2))) (A373748 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105512.P12470241181335958984

namespace A105512

/-- `∑[and(A055641(2*(n+2)), A373748(3*n))]` -/
def P12470241181335958984.Spec : Prop :=
  ∀ n, P12470241181335958984.a n = A105512 n

end A105512

/-! ## A105512.P1479379084462331725

`∑[A186236(n)%A160094(2*(n+2))]`
-/

namespace A105512.P1479379084462331725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186236 n) (A160094 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105512.P1479379084462331725

namespace A105512

/-- `∑[A186236(n)%A160094(2*(n+2))]` -/
def P1479379084462331725.Spec : Prop :=
  ∀ n, P1479379084462331725.a n = A105512 n

end A105512

/-!
# A105513: Number of times 3 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105513, the canonical program `A105513.P16656894288480579329` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105513 has offset 0).

The definition of A105513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105513.P16656894288480579329

`∑[char[A105503(n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105513

/-- `∑[char[A105503(n+1)]]` -/
def P16656894288480579329.Spec : Prop :=
  ∀ n, (P16656894288480579329.a n : ℤ) = A105513 n

theorem P16656894288480579329.correct : P16656894288480579329.Spec := by
  intro n
  simp only [A105513]

end A105513

/-! ## A105513.P9266831484737318011

`∑[char[eq[3, A008963(n)]]]`
-/

namespace A105513.P9266831484737318011
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105513.P9266831484737318011

namespace A105513

/-- `∑[char[eq[3, A008963(n)]]]` -/
def P9266831484737318011.Spec : Prop :=
  ∀ n, (P9266831484737318011.a n : ℤ) = A105513 n

end A105513

/-! ## A105513.P3540388676345161554

`A001222(∏[char[A105503(n+1)]+1])`
-/

namespace A105513.P3540388676345161554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A105513.P3540388676345161554

namespace A105513

/-- `A001222(∏[char[A105503(n+1)]+1])` -/
def P3540388676345161554.Spec : Prop :=
  ∀ n, P3540388676345161554.a n = A105513 n

end A105513

/-! ## A105513.P4286292094492804974

`∑[A188300(17*A017377(n))]`
-/

namespace A105513.P4286292094492804974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188300 (17 * A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105513.P4286292094492804974

namespace A105513

/-- `∑[A188300(17*A017377(n))]` -/
def P4286292094492804974.Spec : Prop :=
  ∀ n, P4286292094492804974.a n = A105513 n

end A105513

/-! ## A105513.P3270099547230800364

`∑[A154272(Δ[A244188(n+5)])]`
-/

namespace A105513.P3270099547230800364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244188 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105513.P3270099547230800364

namespace A105513

/-- `∑[A154272(Δ[A244188(n+5)])]` -/
def P3270099547230800364.Spec : Prop :=
  ∀ n, P3270099547230800364.a n = A105513 n

end A105513

/-! ## A105513.P11390970147469877390

`A229942(∏[char[A105503(n+1)]+1])`
-/

namespace A105513.P11390970147469877390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229942 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A105513.P11390970147469877390

namespace A105513

/-- `A229942(∏[char[A105503(n+1)]+1])` -/
def P11390970147469877390.Spec : Prop :=
  ∀ n, P11390970147469877390.a n = A105513 n

end A105513

/-!
# A105514: Number of times 4 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105514, the canonical program `A105514.P10974530690365182663` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105514 has offset 0).

The definition of A105514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105514.P10974530690365182663

`∑[char[A105504(n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105514

/-- `∑[char[A105504(n+1)]]` -/
def P10974530690365182663.Spec : Prop :=
  ∀ n, (P10974530690365182663.a n : ℤ) = A105514 n

theorem P10974530690365182663.correct : P10974530690365182663.Spec := by
  intro n
  simp only [A105514]

end A105514

/-! ## A105514.P9634173153040153081

`∑[char[eq[4, A008963(n)]]]`
-/

namespace A105514.P9634173153040153081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105514.P9634173153040153081

namespace A105514

/-- `∑[char[eq[4, A008963(n)]]]` -/
def P9634173153040153081.Spec : Prop :=
  ∀ n, (P9634173153040153081.a n : ℤ) = A105514 n

end A105514

/-! ## A105514.P3065168635843852430

`comp[eq[4, A008963(A028310(n))]+n]-n`
-/

namespace A105514.P3065168635843852430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A105514.P3065168635843852430

namespace A105514

/-- `comp[eq[4, A008963(A028310(n))]+n]-n` -/
def P3065168635843852430.Spec : Prop :=
  ∀ n, P3065168635843852430.a n = A105514 n

end A105514

/-! ## A105514.P8942175081931000420

`∑[A196720(n)%A169945(A090387(n+1))]`
-/

namespace A105514.P8942175081931000420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196720 n) (A169945 (A090387 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105514.P8942175081931000420

namespace A105514

/-- `∑[A196720(n)%A169945(A090387(n+1))]` -/
def P8942175081931000420.Spec : Prop :=
  ∀ n, P8942175081931000420.a n = A105514 n

end A105514

/-! ## A105514.P2124967977618375129

`A004524(A002264(A004524(n)%A325100(n+1)))`
-/

namespace A105514.P2124967977618375129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002264 (Int.tmod (A004524 n) (A325100 (n + 1))).toNat).toNat

end

end A105514.P2124967977618375129

namespace A105514

/-- `A004524(A002264(A004524(n)%A325100(n+1)))` -/
def P2124967977618375129.Spec : Prop :=
  ∀ n, P2124967977618375129.a n = A105514 n

end A105514

/-! ## A105514.P1021848175199071788

`∑[A010052(A113552(n+7))]`
-/

namespace A105514.P1021848175199071788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A113552 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105514.P1021848175199071788

namespace A105514

/-- `∑[A010052(A113552(n+7))]` -/
def P1021848175199071788.Spec : Prop :=
  ∀ n, P1021848175199071788.a n = A105514 n

end A105514

/-!
# A105515: Number of times 5 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105515, the canonical program `A105515.P13688755755943163422` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105515 has offset 0).

The definition of A105515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105515.P1658732754248410860

`∑[char[A105505(n+1)]]`
-/

namespace A105515.P1658732754248410860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105505 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P1658732754248410860

namespace A105515

/-- `∑[char[A105505(n+1)]]` -/
def P1658732754248410860.Spec : Prop :=
  ∀ n, (P1658732754248410860.a n : ℤ) = A105515 n

end A105515

/-! ## A105515.P575867627238424908

`∑[char[eq[5, A008963(n)]]]`
-/

namespace A105515.P575867627238424908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P575867627238424908

namespace A105515

/-- `∑[char[eq[5, A008963(n)]]]` -/
def P575867627238424908.Spec : Prop :=
  ∀ n, (P575867627238424908.a n : ℤ) = A105515 n

end A105515

/-! ## A105515.P13688755755943163422

`∑[val(A008963(A028310(n)), 5)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105515

/-- `∑[val(A008963(A028310(n)), 5)]` -/
def P13688755755943163422.Spec : Prop :=
  ∀ n, (P13688755755943163422.a n : ℤ) = A105515 n

theorem P13688755755943163422.correct : P13688755755943163422.Spec := by
  intro n
  simp only [A105515]

end A105515

/-! ## A105515.P2400213424287752019

`∑[(val(A008963(A000007(n)+n), 5)%3)²]`
-/

namespace A105515.P2400213424287752019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A008963 (A000007 n + (n : ℤ)).toNat).toNat 5 % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P2400213424287752019

namespace A105515

/-- `∑[(val(A008963(A000007(n)+n), 5)%3)²]` -/
def P2400213424287752019.Spec : Prop :=
  ∀ n, (P2400213424287752019.a n : ℤ) = A105515 n

end A105515

/-! ## A105515.P1736402293690931953

`∑[val(A008963(A233583(n+2)-1), 5)]`
-/

namespace A105515.P1736402293690931953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (A233583 (n + 2) - 1).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105515.P1736402293690931953

namespace A105515

/-- `∑[val(A008963(A233583(n+2)-1), 5)]` -/
def P1736402293690931953.Spec : Prop :=
  ∀ n, (P1736402293690931953.a n : ℤ) = A105515 n

end A105515

/-!
# A105516: Number of times 6 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105516, the canonical program `A105516.P5711877861182647803` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105516 has offset 0).

The definition of A105516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105516.P3039228844911932454

`∑[char[A105506(n+1)]]`
-/

namespace A105516.P3039228844911932454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105506 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105516.P3039228844911932454

namespace A105516

/-- `∑[char[A105506(n+1)]]` -/
def P3039228844911932454.Spec : Prop :=
  ∀ n, (P3039228844911932454.a n : ℤ) = A105516 n

end A105516

/-! ## A105516.P17373448325849950078

`∑[char[eq[6, A008963(n)]]]`
-/

namespace A105516.P17373448325849950078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105516.P17373448325849950078

namespace A105516

/-- `∑[char[eq[6, A008963(n)]]]` -/
def P17373448325849950078.Spec : Prop :=
  ∀ n, (P17373448325849950078.a n : ℤ) = A105516 n

end A105516

/-! ## A105516.P5711877861182647803

`∑[val(A008963(A028310(n)), 6)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105516

/-- `∑[val(A008963(A028310(n)), 6)]` -/
def P5711877861182647803.Spec : Prop :=
  ∀ n, (P5711877861182647803.a n : ℤ) = A105516 n

theorem P5711877861182647803.correct : P5711877861182647803.Spec := by
  intro n
  simp only [A105516]

end A105516

/-! ## A105516.P4932196519390773514

`comp[eq[A057427(n)+5, A008963(n)]+n]-n`
-/

namespace A105516.P4932196519390773514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A105516.P4932196519390773514

namespace A105516

/-- `comp[eq[A057427(n)+5, A008963(n)]+n]-n` -/
def P4932196519390773514.Spec : Prop :=
  ∀ n, P4932196519390773514.a n = A105516 n

end A105516

/-! ## A105516.P17519608410818675022

`comp[eq[6, A008963(n)]+n]-n%A000040(n+1)`
-/

namespace A105516.P17519608410818675022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.tmod (n : ℤ) (A000040 (n + 1))

end

end A105516.P17519608410818675022

namespace A105516

/-- `comp[eq[6, A008963(n)]+n]-n%A000040(n+1)` -/
def P17519608410818675022.Spec : Prop :=
  ∀ n, P17519608410818675022.a n = A105516 n

end A105516

/-! ## A105516.P18405071546624790473

`A105518(A316945(n+1))`
-/

namespace A105516.P18405071546624790473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A316945 (n + 1)).toNat

end

end A105516.P18405071546624790473

namespace A105516

/-- `A105518(A316945(n+1))` -/
def P18405071546624790473.Spec : Prop :=
  ∀ n, P18405071546624790473.a n = A105516 n

end A105516

/-! ## A105516.P15447986653549208591

`comp[A097746(A309301(n+4))-1]-n`
-/

namespace A105516.P15447986653549208591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097746 (A309301 (n + 4)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A105516.P15447986653549208591

namespace A105516

/-- `comp[A097746(A309301(n+4))-1]-n` -/
def P15447986653549208591.Spec : Prop :=
  ∀ n, P15447986653549208591.a n = A105516 n

end A105516

/-! ## A105516.P14976559993891994476

`∑[val(A171059(n+1), 25)]`
-/

namespace A105516.P14976559993891994476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A171059 (n + 1)).toNat 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105516.P14976559993891994476

namespace A105516

/-- `∑[val(A171059(n+1), 25)]` -/
def P14976559993891994476.Spec : Prop :=
  ∀ n, (P14976559993891994476.a n : ℤ) = A105516 n

end A105516

/-!
# A105517: Number of times 7 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105517, the canonical program `A105517.P17288421911646567995` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105517 has offset 0).

The definition of A105517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105517.P946946396134353387

`∑[char[A105507(n+1)]]`
-/

namespace A105517.P946946396134353387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105507 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P946946396134353387

namespace A105517

/-- `∑[char[A105507(n+1)]]` -/
def P946946396134353387.Spec : Prop :=
  ∀ n, (P946946396134353387.a n : ℤ) = A105517 n

end A105517

/-! ## A105517.P7414146279617743874

`∑[char[eq[7, A008963(n)]]]`
-/

namespace A105517.P7414146279617743874
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P7414146279617743874

namespace A105517

/-- `∑[char[eq[7, A008963(n)]]]` -/
def P7414146279617743874.Spec : Prop :=
  ∀ n, (P7414146279617743874.a n : ℤ) = A105517 n

end A105517

/-! ## A105517.P17288421911646567995

`∑[val(A008963(A028310(n)), 7)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105517

/-- `∑[val(A008963(A028310(n)), 7)]` -/
def P17288421911646567995.Spec : Prop :=
  ∀ n, (P17288421911646567995.a n : ℤ) = A105517 n

theorem P17288421911646567995.correct : P17288421911646567995.Spec := by
  intro n
  simp only [A105517]

end A105517

/-! ## A105517.P15897596986246979896

`∑[A057558((A008963(n)+1+n)%(n+1)+1)]`
-/

namespace A105517.P15897596986246979896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057558 (Int.tmod (A008963 n + 1 + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P15897596986246979896

namespace A105517

/-- `∑[A057558((A008963(n)+1+n)%(n+1)+1)]` -/
def P15897596986246979896.Spec : Prop :=
  ∀ n, P15897596986246979896.a n = A105517 n

end A105517

/-! ## A105517.P4409028535616637706

`∑[A073424(A121032(n+1)+4)]`
-/

namespace A105517.P4409028535616637706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A121032 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P4409028535616637706

namespace A105517

/-- `∑[A073424(A121032(n+1)+4)]` -/
def P4409028535616637706.Spec : Prop :=
  ∀ n, P4409028535616637706.a n = A105517 n

end A105517

/-! ## A105517.P9891391691388308765

`A132292(A325368(n+1)-A303789(n))`
-/

namespace A105517.P9891391691388308765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A325368 (n + 1) - A303789 n).toNat

end

end A105517.P9891391691388308765

namespace A105517

/-- `A132292(A325368(n+1)-A303789(n))` -/
def P9891391691388308765.Spec : Prop :=
  ∀ n, P9891391691388308765.a n = A105517 n

end A105517

/-! ## A105517.P5378087909638713916

`floor(A333943(n+1)/41)`
-/

namespace A105517.P5378087909638713916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333943 (n + 1) : ℚ) / 41⌋

end

end A105517.P5378087909638713916

namespace A105517

/-- `floor(A333943(n+1)/41)` -/
def P5378087909638713916.Spec : Prop :=
  ∀ n, P5378087909638713916.a n = A105517 n

end A105517

/-! ## A105517.P4481407785104081686

`∑[val(A236936(n+9), 12)]`
-/

namespace A105517.P4481407785104081686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A236936 (n + 9)).toNat 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105517.P4481407785104081686

namespace A105517

/-- `∑[val(A236936(n+9), 12)]` -/
def P4481407785104081686.Spec : Prop :=
  ∀ n, (P4481407785104081686.a n : ℤ) = A105517 n

end A105517

/-!
# A105518: Number of times 8 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105518, the canonical program `A105518.P10973829342927970951` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105518 has offset 0).

The definition of A105518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105518.P6113146622873399128

`∑[char[A105508(n+1)]]`
-/

namespace A105518.P6113146622873399128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P6113146622873399128

namespace A105518

/-- `∑[char[A105508(n+1)]]` -/
def P6113146622873399128.Spec : Prop :=
  ∀ n, (P6113146622873399128.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P7159909269037206241

`∑[char[eq[8, A008963(n)]]]`
-/

namespace A105518.P7159909269037206241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P7159909269037206241

namespace A105518

/-- `∑[char[eq[8, A008963(n)]]]` -/
def P7159909269037206241.Spec : Prop :=
  ∀ n, (P7159909269037206241.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P10973829342927970951

`∑[val(A008963(A028310(n)), 8)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105518

/-- `∑[val(A008963(A028310(n)), 8)]` -/
def P10973829342927970951.Spec : Prop :=
  ∀ n, (P10973829342927970951.a n : ℤ) = A105518 n

theorem P10973829342927970951.correct : P10973829342927970951.Spec := by
  intro n
  simp only [A105518]

end A105518

/-! ## A105518.P552973215163512958

`∑[char[record[gcd(A072353(n+1), A105708(n))]]]`
-/

namespace A105518.P552973215163512958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072353 (n + 1)) (A105708 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P552973215163512958

namespace A105518

/-- `∑[char[record[gcd(A072353(n+1), A105708(n))]]]` -/
def P552973215163512958.Spec : Prop :=
  ∀ n, (P552973215163512958.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P6563291380083908078

`∑[char[record[A105708(n)%(A072354(n+2)+1)]]]`
-/

namespace A105518.P6563291380083908078
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105708 n) (A072354 (n + 2) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P6563291380083908078

namespace A105518

/-- `∑[char[record[A105708(n)%(A072354(n+2)+1)]]]` -/
def P6563291380083908078.Spec : Prop :=
  ∀ n, (P6563291380083908078.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P6829028282550977755

`∑[char[A105708(eq[A072353(n+1), A105708(n)])]]`
-/

namespace A105518.P6829028282550977755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 (SequenceMachineLib.nth (fun j => f3 j = f4 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P6829028282550977755

namespace A105518

/-- `∑[char[A105708(eq[A072353(n+1), A105708(n)])]]` -/
def P6829028282550977755.Spec : Prop :=
  ∀ n, (P6829028282550977755.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P11296849629606614947

`∑[char[A105708(eq[A105708(n)+1, A072354(n+2)])]]`
-/

namespace A105518.P11296849629606614947
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105708 (SequenceMachineLib.nth (fun j => f3 j = f4 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105518.P11296849629606614947

namespace A105518

/-- `∑[char[A105708(eq[A105708(n)+1, A072354(n+2)])]]` -/
def P11296849629606614947.Spec : Prop :=
  ∀ n, (P11296849629606614947.a n : ℤ) = A105518 n

end A105518

/-! ## A105518.P15946705838312730590

`A105516(A268715(∑[n+1])+8)`
-/

namespace A105518.P15946705838312730590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A268715 (∑ j ∈ Finset.range (n + 1), f1 j) + 8).toNat

end

end A105518.P15946705838312730590

namespace A105518

/-- `A105516(A268715(∑[n+1])+8)` -/
def P15946705838312730590.Spec : Prop :=
  ∀ n, P15946705838312730590.a n = A105518 n

end A105518

/-! ## A105518.P7831826791524778361

`A105516(A018851((n+9)²))`
-/

namespace A105518.P7831826791524778361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A018851 ((n + 9) ^ 2)).toNat

end

end A105518.P7831826791524778361

namespace A105518

/-- `A105516(A018851((n+9)²))` -/
def P7831826791524778361.Spec : Prop :=
  ∀ n, P7831826791524778361.a n = A105518 n

end A105518

/-!
# A105519: Number of times 9 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

The programs for A105519, the canonical program `A105519.P16876643181777690168` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105519 has offset 0).

The definition of A105519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105519.P16876643181777690168

`∑[C(A008963(n), 9)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105519

/-- `∑[C(A008963(n), 9)]` -/
def P16876643181777690168.Spec : Prop :=
  ∀ n, (P16876643181777690168.a n : ℤ) = A105519 n

theorem P16876643181777690168.correct : P16876643181777690168.Spec := by
  intro n
  simp only [A105519]

end A105519

/-! ## A105519.P625434133382768604

`∑[char[A105509(n+1)]]`
-/

namespace A105519.P625434133382768604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105509 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P625434133382768604

namespace A105519

/-- `∑[char[A105509(n+1)]]` -/
def P625434133382768604.Spec : Prop :=
  ∀ n, (P625434133382768604.a n : ℤ) = A105519 n

end A105519

/-! ## A105519.P324189449046415303

`A105564(A060384(n+1))`
-/

namespace A105519.P324189449046415303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A060384 (n + 1)).toNat

end

end A105519.P324189449046415303

namespace A105519

/-- `A105564(A060384(n+1))` -/
def P324189449046415303.Spec : Prop :=
  ∀ n, P324189449046415303.a n = A105519 n

end A105519

/-! ## A105519.P17593473684056658997

`∑[Δ[A105564(A060384(n))]²]`
-/

namespace A105519.P17593473684056658997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A060384 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P17593473684056658997

namespace A105519

/-- `∑[Δ[A105564(A060384(n))]²]` -/
def P17593473684056658997.Spec : Prop :=
  ∀ n, P17593473684056658997.a n = A105519 n

end A105519

/-! ## A105519.P15849636895245104223

`A105564(ratio[A060384(n)]*A060384(n))`
-/

namespace A105519.P15849636895245104223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A060384 n : ℚ))).toNat

end

end A105519.P15849636895245104223

namespace A105519

/-- `A105564(ratio[A060384(n)]*A060384(n))` -/
def P15849636895245104223.Spec : Prop :=
  ∀ n, P15849636895245104223.a n = A105519 n

end A105519

/-! ## A105519.P14029798525659692342

`floor(A190899(n+3)/29)`
-/

namespace A105519.P14029798525659692342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190899 (n + 3) : ℚ) / 29⌋

end

end A105519.P14029798525659692342

namespace A105519

/-- `floor(A190899(n+3)/29)` -/
def P14029798525659692342.Spec : Prop :=
  ∀ n, P14029798525659692342.a n = A105519 n

end A105519

/-! ## A105519.P7774737442959398741

`A105564(A261585(A105566(n+1)+n))`
-/

namespace A105519.P7774737442959398741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A261585 (A105566 (n + 1) + (n : ℤ)).toNat).toNat

end

end A105519.P7774737442959398741

namespace A105519

/-- `A105564(A261585(A105566(n+1)+n))` -/
def P7774737442959398741.Spec : Prop :=
  ∀ n, P7774737442959398741.a n = A105519 n

end A105519

/-! ## A105519.P1907232145851965064

`∑[val(A086863(n+1), A086844(n+1))]`
-/

namespace A105519.P1907232145851965064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086863 (n + 1)).toNat (A086844 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P1907232145851965064

namespace A105519

/-- `∑[val(A086863(n+1), A086844(n+1))]` -/
def P1907232145851965064.Spec : Prop :=
  ∀ n, (P1907232145851965064.a n : ℤ) = A105519 n

end A105519

/-!
# A105523: Expansion of 1-x*c(-x^2) where c(x) is the g.f. of A000108.

The programs for A105523, the canonical program `A105523.P5299360234432620638` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105523 has offset 0).

The definition of A105523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105523.P7823587900237427549

`-A182492(2*n+1)`
-/

namespace A105523.P7823587900237427549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A182492 (2 * n + 1)

end

end A105523.P7823587900237427549

namespace A105523

/-- `-A182492(2*n+1)` -/
def P7823587900237427549.Spec : Prop :=
  ∀ n, P7823587900237427549.a n = A105523 n

end A105523

/-! ## A105523.P16094994092701073129

`floor(acot(n)²-A090192(n))`
-/

namespace A105523.P16094994092701073129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A090192 n : ℝ)⌋

end

end A105523.P16094994092701073129

namespace A105523

/-- `floor(acot(n)²-A090192(n))` -/
def P16094994092701073129.Spec : Prop :=
  ∀ n, P16094994092701073129.a n = A105523 n

end A105523

/-! ## A105523.P15654964389143537846

`A000038(n)-A090192(n)`
-/

namespace A105523.P15654964389143537846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A090192 n

end

end A105523.P15654964389143537846

namespace A105523

/-- `A000038(n)-A090192(n)` -/
def P15654964389143537846.Spec : Prop :=
  ∀ n, P15654964389143537846.a n = A105523 n

end A105523

/-! ## A105523.P5328244046629985096

`A033999(n)*A090192(n)`
-/

namespace A105523.P5328244046629985096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A090192 n

end

end A105523.P5328244046629985096

namespace A105523

/-- `A033999(n)*A090192(n)` -/
def P5328244046629985096.Spec : Prop :=
  ∀ n, P5328244046629985096.a n = A105523 n

end A105523

/-! ## A105523.P5299360234432620638

`A087960(n)*A097331(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105523

/-- `A087960(n)*A097331(n)` -/
def P5299360234432620638.Spec : Prop :=
  ∀ n, P5299360234432620638.a n = A105523 n

theorem P5299360234432620638.correct : P5299360234432620638.Spec := by
  intro n
  simp only [A105523]

end A105523

/-! ## A105523.P11957746273958340204

`A090192(n)*A115638(n)`
-/

namespace A105523.P11957746273958340204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A115638 n

end

end A105523.P11957746273958340204

namespace A105523

/-- `A090192(n)*A115638(n)` -/
def P11957746273958340204.Spec : Prop :=
  ∀ n, P11957746273958340204.a n = A105523 n

end A105523

/-! ## A105523.P14815164193649552684

`A097331(n)*A145063(n)`
-/

namespace A105523.P14815164193649552684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A145063 n

end

end A105523.P14815164193649552684

namespace A105523

/-- `A097331(n)*A145063(n)` -/
def P14815164193649552684.Spec : Prop :=
  ∀ n, P14815164193649552684.a n = A105523 n

end A105523

/-! ## A105523.P16812325651691832354

`A090192(n)*A164117(n)`
-/

namespace A105523.P16812325651691832354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A164117 n

end

end A105523.P16812325651691832354

namespace A105523

/-- `A090192(n)*A164117(n)` -/
def P16812325651691832354.Spec : Prop :=
  ∀ n, P16812325651691832354.a n = A105523 n

end A105523

/-! ## A105523.P3573637629745265913

`A097331(n)*A163805(n)`
-/

namespace A105523.P3573637629745265913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A163805 n

end

end A105523.P3573637629745265913

namespace A105523

/-- `A097331(n)*A163805(n)` -/
def P3573637629745265913.Spec : Prop :=
  ∀ n, P3573637629745265913.a n = A105523 n

end A105523

/-! ## A105523.P5990540871879264072

`A057077(n)*A210628(n)`
-/

namespace A105523.P5990540871879264072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A210628 n

end

end A105523.P5990540871879264072

namespace A105523

/-- `A057077(n)*A210628(n)` -/
def P5990540871879264072.Spec : Prop :=
  ∀ n, P5990540871879264072.a n = A105523 n

end A105523

/-! ## A105523.P8941377248596674733

`A117569(n)*A210628(n)`
-/

namespace A105523.P8941377248596674733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n * A210628 n

end

end A105523.P8941377248596674733

namespace A105523

/-- `A117569(n)*A210628(n)` -/
def P8941377248596674733.Spec : Prop :=
  ∀ n, P8941377248596674733.a n = A105523 n

end A105523

/-! ## A105523.P3362446316231598772

`A121238(n)*A210628(n)`
-/

namespace A105523.P3362446316231598772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n * A210628 n

end

end A105523.P3362446316231598772

namespace A105523

/-- `A121238(n)*A210628(n)` -/
def P3362446316231598772.Spec : Prop :=
  ∀ n, P3362446316231598772.a n = A105523 n

end A105523

/-! ## A105523.P1846767511983310316

`A090192(n)*A280193(n)`
-/

namespace A105523.P1846767511983310316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A280193 n

end

end A105523.P1846767511983310316

namespace A105523

/-- `A090192(n)*A280193(n)` -/
def P1846767511983310316.Spec : Prop :=
  ∀ n, P1846767511983310316.a n = A105523 n

end A105523

/-! ## A105523.P5554570092653910786

`A090192(n)*A300547(n)`
-/

namespace A105523.P5554570092653910786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A300547 n

end

end A105523.P5554570092653910786

namespace A105523

/-- `A090192(n)*A300547(n)` -/
def P5554570092653910786.Spec : Prop :=
  ∀ n, P5554570092653910786.a n = A105523 n

end A105523

/-! ## A105523.P2671602277316879357

`A090192(n)*A323191(n)`
-/

namespace A105523.P2671602277316879357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A323191 n

end

end A105523.P2671602277316879357

namespace A105523

/-- `A090192(n)*A323191(n)` -/
def P2671602277316879357.Spec : Prop :=
  ∀ n, P2671602277316879357.a n = A105523 n

end A105523

/-! ## A105523.P11003951855207114540

`A090192(n)*A323202(n)`
-/

namespace A105523.P11003951855207114540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A323202 n

end

end A105523.P11003951855207114540

namespace A105523

/-- `A090192(n)*A323202(n)` -/
def P11003951855207114540.Spec : Prop :=
  ∀ n, P11003951855207114540.a n = A105523 n

end A105523

/-! ## A105523.P17873947743043316907

`A210628(n)*A257196(n)`
-/

namespace A105523.P17873947743043316907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n * A257196 n

end

end A105523.P17873947743043316907

namespace A105523

/-- `A210628(n)*A257196(n)` -/
def P17873947743043316907.Spec : Prop :=
  ∀ n, P17873947743043316907.a n = A105523 n

end A105523

/-! ## A105523.P6440155127955153228

`A057077(n+1)*A097331(n)`
-/

namespace A105523.P6440155127955153228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A097331 n

end

end A105523.P6440155127955153228

namespace A105523

/-- `A057077(n+1)*A097331(n)` -/
def P6440155127955153228.Spec : Prop :=
  ∀ n, P6440155127955153228.a n = A105523 n

end A105523

/-! ## A105523.P5662600958138734226

`A071935(n+1)*A097331(n)`
-/

namespace A105523.P5662600958138734226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A097331 n

end

end A105523.P5662600958138734226

namespace A105523

/-- `A071935(n+1)*A097331(n)` -/
def P5662600958138734226.Spec : Prop :=
  ∀ n, P5662600958138734226.a n = A105523 n

end A105523

/-! ## A105523.P17282014013178649318

`A090192(n)*A153881(n+1)`
-/

namespace A105523.P17282014013178649318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A153881 (n + 1)

end

end A105523.P17282014013178649318

namespace A105523

/-- `A090192(n)*A153881(n+1)` -/
def P17282014013178649318.Spec : Prop :=
  ∀ n, P17282014013178649318.a n = A105523 n

end A105523

/-!
# A105527: Index when n-nacci (tribonacci etc.) passes Fibonacci numbers.

The programs for A105527, there is no canonical definition to state claims against.
-/

/-! ## A105527.P16859957170926609471

`∑[A105528(abs(1-n))]+1`
-/

namespace A105527.P16859957170926609471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A105527.P16859957170926609471

/-! ## A105527.P7345553284597006621

`A105528(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A105527.P7345553284597006621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A105528 (n - 1) + a (n - 1)

end

end A105527.P7345553284597006621

/-! ## A105527.P1987676897903186717

`∑[A105528(abs(1-(n-A000007(n))))]`
-/

namespace A105527.P1987676897903186717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 |1 - ((n : ℤ) - A000007 n)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105527.P1987676897903186717

/-! ## A105527.P12780522671320562699

`∑[A105528(n-1)-A000035(4*a(n-1))]` with `a(0)=3`
-/

namespace A105527.P12780522671320562699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A105528 (n - 1) - A000035 (4 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105527.P12780522671320562699

/-! ## A105527.P11104069408039889937

`∑[A084964(p?[A295638(n+1)])]`
-/

namespace A105527.P11104069408039889937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295638 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105527.P11104069408039889937

/-!
# A105528: First differences of A105527.

The programs for A105528, there is no canonical definition to state claims against.
-/

/-! ## A105528.P7562144079637475837

`Δ[A105527(n+3)]`
-/

namespace A105528.P7562144079637475837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105527 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105528.P7562144079637475837

/-! ## A105528.P15335530590064826989

`A105527(n+4)-A105527(n+3)`
-/

namespace A105528.P15335530590064826989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105527 (n + 4) - A105527 (n + 3)

end

end A105528.P15335530590064826989

/-! ## A105528.P8002925338284154785

`A105527(A020705(n))%A105527(n+3)`
-/

namespace A105528.P8002925338284154785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105527 (A020705 n).toNat) (A105527 (n + 3))

end

end A105528.P8002925338284154785

/-! ## A105528.P15301588618320199038

`A000961(A105527(n+4)%A105527(n+3))`
-/

namespace A105528.P15301588618320199038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Int.tmod (A105527 (n + 4)) (A105527 (n + 3))).toNat

end

end A105528.P15301588618320199038

/-! ## A105528.P17941525133500444355

`A105527(A008619(2*n+3)+2)%A105527(n+3)`
-/

namespace A105528.P17941525133500444355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105527 (A008619 (2 * n + 3) + 2).toNat) (A105527 (n + 3))

end

end A105528.P17941525133500444355

/-!
# A105529: Given a list of ternary numbers, interpret each as a ternary modular Gray code number, then convert to decimal.

The programs for A105529, there is no canonical definition to state claims against.
-/

/-! ## A105529.P1752643396963136907

`A105530(A105530(n))%A002982(n+1)`
-/

namespace A105529.P1752643396963136907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105530 (A105530 n).toNat) (A002982 (n + 1))

end

end A105529.P1752643396963136907

/-! ## A105529.P1315656464566681922

`A105530(A105530(n))+A000007(A060546(n))`
-/

namespace A105529.P1315656464566681922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105530 (A105530 n).toNat + A000007 (A060546 n).toNat

end

end A105529.P1315656464566681922

/-! ## A105529.P5930512881527296452

`A038500(A022908(n+2))*A105530(A105530(n))`
-/

namespace A105529.P5930512881527296452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A022908 (n + 2)).toNat * A105530 (A105530 n).toNat

end

end A105529.P5930512881527296452

/-! ## A105529.P16254975780040718774

`A105530(A105530(n))%A105557(n)`
-/

namespace A105529.P16254975780040718774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105530 (A105530 n).toNat) (A105557 n)

end

end A105529.P16254975780040718774

/-! ## A105529.P12921960125041605503

`A105530(A105530(n)%A335457(n))`
-/

namespace A105529.P12921960125041605503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105530 (Int.tmod (A105530 n) (A335457 n)).toNat

end

end A105529.P12921960125041605503

/-!
# A105530: Ternary modular Gray code for n.

The programs for A105530, there is no canonical definition to state claims against.
-/

/-! ## A105530.P1227906019672891916

`floor(A325820(Δ[A023551(n+1)])/3)`
-/

namespace A105530.P1227906019672891916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325820 (f1 (n + 1) - f1 n).toNat : ℚ) / 3⌋

end

end A105530.P1227906019672891916

/-! ## A105530.P12878926652323123230

`A002264(A325820(Δ[A023551(n+1)]))`
-/

namespace A105530.P12878926652323123230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A325820 (f1 (n + 1) - f1 n).toNat).toNat

end

end A105530.P12878926652323123230

/-! ## A105530.P8638497445467796351

`A028898(A381668(n))`
-/

namespace A105530.P8638497445467796351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A381668 n).toNat

end

end A105530.P8638497445467796351

/-! ## A105530.P13839329647181629014

`A105529((A097479(n)+1)*A105529(n))`
-/

namespace A105530.P13839329647181629014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105529 ((A097479 n + 1) * A105529 n).toNat

end

end A105530.P13839329647181629014

/-! ## A105530.P13834350526807644038

`A105529(A105529(n)%A376818(n+1))`
-/

namespace A105530.P13834350526807644038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105529 (Int.tmod (A105529 n) (A376818 (n + 1))).toNat

end

end A105530.P13834350526807644038

/-!
# A105535: Triangular matrix T, read by rows, where diagonal n equals T^(n+1) when flattened (as read by rows), for n>=0.

The programs for A105535, there is no canonical definition to state claims against.
-/

/-! ## A105535.P9777455034909937422

`A105540(A243833(n)+A061579(n))`
-/

namespace A105535.P9777455034909937422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (A243833 n + A061579 n).toNat

end

end A105535.P9777455034909937422

/-! ## A105535.P192839733484799835

`A105540(A061579(n)%A105536(n))`
-/

namespace A105535.P192839733484799835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (Int.tmod (A061579 n) (A105536 n)).toNat

end

end A105535.P192839733484799835

/-! ## A105535.P17448710316524646289

`A105540(A061579(n))%A141214(n)`
-/

namespace A105535.P17448710316524646289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105540 (A061579 n).toNat) (A141214 n)

end

end A105535.P17448710316524646289

/-! ## A105535.P17585469792765886964

`A105540(xor(A061579(n), A243833(n)))`
-/

namespace A105535.P17585469792765886964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (Int.xor (A061579 n) (A243833 n)).toNat

end

end A105535.P17585469792765886964

/-! ## A105535.P16532215550395053108

`A105540(A061579(n))^A120263(A023545(n+1))`
-/

namespace A105535.P16532215550395053108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105540 (A061579 n).toNat : ℚ) ^ (A120263 (A023545 (n + 1)).toNat : ℤ)

end

end A105535.P16532215550395053108

/-!
# A105536: Row sums of triangular matrix A105535, in which diagonal n equals A105535^(n+1) when flattened as read by rows.

The programs for A105536, there is no canonical definition to state claims against.
-/

/-! ## A105536.P6504776250339482895

`A105537(∑[n])`
-/

namespace A105536.P6504776250339482895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105536.P6504776250339482895

/-! ## A105536.P16386952098046436933

`record[A105537(abs(A255974(n)))]`
-/

namespace A105536.P16386952098046436933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105537 |A255974 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105536.P16386952098046436933

/-! ## A105536.P1134903862514410105

`record[A105537(record[A056943(n)])]`
-/

namespace A105536.P1134903862514410105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105537 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105536.P1134903862514410105

/-! ## A105536.P2361423775223441873

`and(-1, A105537(A000217(n)))`
-/

namespace A105536.P2361423775223441873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A105537 (A000217 n).toNat)

end

end A105536.P2361423775223441873

/-! ## A105536.P2248930585714083899

`record[A105537(eq[1, A105535(n)])]`
-/

namespace A105536.P2248930585714083899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105537 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105536.P2248930585714083899

/-!
# A105537: Matrix square of triangle A105535 and, in this flattened form as read by rows, also equals diagonal 1 of A105535.

The programs for A105537, there is no canonical definition to state claims against.
-/

/-! ## A105537.P8435732400302972182

`A105535(∑[n+2]-1)`
-/

namespace A105537.P8435732400302972182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A105537.P8435732400302972182

/-! ## A105537.P9898409597387198637

`A105535(A034856(n+1))%27`
-/

namespace A105537.P9898409597387198637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105535 (A034856 (n + 1)).toNat) 27

end

end A105537.P9898409597387198637

/-! ## A105537.P15766233031938628288

`lcm(A020985(n), A105535(A034856(n+1)))`
-/

namespace A105537.P15766233031938628288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A105535 (A034856 (n + 1)).toNat)

end

end A105537.P15766233031938628288

/-! ## A105537.P4875389957049590523

`A007318(∑[n])*A105535(A034856(n+1))`
-/

namespace A105537.P4875389957049590523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A105535 (A034856 (n + 1)).toNat

end

end A105537.P4875389957049590523

/-! ## A105537.P18428418317396447197

`A105535(A034856(n+1))^A120263(n+1)`
-/

namespace A105537.P18428418317396447197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105535 (A034856 (n + 1)).toNat : ℚ) ^ (A120263 (n + 1) : ℤ)

end

end A105537.P18428418317396447197

/-!
# A105538: Row sums of triangle A105537, which equals the matrix square of triangle A105535.

The programs for A105538, there is no canonical definition to state claims against.
-/

/-! ## A105538.P12457240666768387032

`A105539(∑[n])`
-/

namespace A105538.P12457240666768387032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105538.P12457240666768387032

/-! ## A105538.P6186285859701196441

`lcm(∏{p}[n+1, -1%#], A105539(2*n-(n-C(n, 2))))`
-/

namespace A105538.P6186285859701196441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A105539 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ))).toNat)

end

end A105538.P6186285859701196441

/-! ## A105538.P1565302390060005537

`lcm(4*floor(n/4)-2*floor(n/2)+1, A105539(n*(n+1)/2))`
-/

namespace A105538.P1565302390060005537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * ⌊(n : ℚ) / 4⌋ - 2 * ⌊(n : ℚ) / 2⌋ + 1) (A105539 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A105538.P1565302390060005537

/-! ## A105538.P4479311591480887494

`record[A105539(abs(A255974(n)))]`
-/

namespace A105538.P4479311591480887494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105539 |A255974 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105538.P4479311591480887494

/-! ## A105538.P17335908463732898877

`record[A105539(record[A056943(n)])]`
-/

namespace A105538.P17335908463732898877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105539 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105538.P17335908463732898877

/-!
# A105539: Matrix cube of triangle A105535 and, in this flattened form as read by rows, also equals diagonal 2 of A105535.

The programs for A105539, there is no canonical definition to state claims against.
-/

/-! ## A105539.P14445742866877020415

`A105535(∑[n+3])`
-/

namespace A105539.P14445742866877020415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105539.P14445742866877020415

/-! ## A105539.P4463754798213006094

`A105535(A141214(n))%63`
-/

namespace A105539.P4463754798213006094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105535 (A141214 n).toNat) 63

end

end A105539.P4463754798213006094

/-! ## A105539.P6139151376793951018

`A243833(n)+A105535(A141214(n))`
-/

namespace A105539.P6139151376793951018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 n + A105535 (A141214 n).toNat

end

end A105539.P6139151376793951018

/-! ## A105539.P16029965686141683660

`lcm(A007318(n), A105535(A141214(n)))`
-/

namespace A105539.P16029965686141683660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A105535 (A141214 n).toNat)

end

end A105539.P16029965686141683660

/-! ## A105539.P14550365486325490504

`or(A105535(n), A105535(A141214(n)))`
-/

namespace A105539.P14550365486325490504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105535 n) (A105535 (A141214 n).toNat)

end

end A105539.P14550365486325490504

/-!
# A105540: Triangular matrix T, read by rows, where column n equals T^(n+1) when flattened (as read by rows), for n>=0.

The programs for A105540, there is no canonical definition to state claims against.
-/

/-! ## A105540.P13510140293515468361

`A105535(A061579(n)%A337886(n+2))`
-/

namespace A105540.P13510140293515468361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (Int.tmod (A061579 n) (A337886 (n + 2))).toNat

end

end A105540.P13510140293515468361

/-! ## A105540.P5124155941101611994

`A105535(A061579(n))%A131648(n+1)`
-/

namespace A105540.P5124155941101611994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105535 (A061579 n).toNat) (A131648 (n + 1))

end

end A105540.P5124155941101611994

/-! ## A105540.P8241283548811538774

`A105535(A061579(n))+A000007(A216294(n))`
-/

namespace A105540.P8241283548811538774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (A061579 n).toNat + A000007 (A216294 n).toNat

end

end A105540.P8241283548811538774

/-! ## A105540.P8450333167993688696

`A055642(floor((n+1)/(or(n, n+2)-n))*A143327(3*n+1))`
-/

namespace A105540.P8450333167993688696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋ * A143327 (3 * n + 1)).toNat

end

end A105540.P8450333167993688696

/-! ## A105540.P7248797246681199921

`gcd(A138785(n+1), A240629(A303694(3*n+1)))`
-/

namespace A105540.P7248797246681199921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138785 (n + 1)) (A240629 (A303694 (3 * n + 1)).toNat)

end

end A105540.P7248797246681199921

/-!
# A105541: Row sums of triangular matrix A105540, in which column n equals A105540^(n+1) when flattened as read by rows.

The programs for A105541, there is no canonical definition to state claims against.
-/

/-! ## A105541.P5960660767734139504

`A347624(A241089(2*(n+2))-A241089(n))`
-/

namespace A105541.P5960660767734139504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A241089 (2 * (n + 2)) - A241089 n).toNat

end

end A105541.P5960660767734139504

/-!
# A105542: Matrix square of triangle A105540 and, in this flattened form as read by rows, also equals column 1 of A105540.

The programs for A105542, there is no canonical definition to state claims against.
-/

/-! ## A105542.P13016210847345790030

`A105540(∑[n+1]+1)`
-/

namespace A105542.P13016210847345790030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A105542.P13016210847345790030

/-! ## A105542.P11970224537025569182

`A105540(A134869(n+1))%15`
-/

namespace A105542.P11970224537025569182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105540 (A134869 (n + 1)).toNat) 15

end

end A105542.P11970224537025569182

/-! ## A105542.P17771585626526989243

`A105540(A000124(n+1))%17`
-/

namespace A105542.P17771585626526989243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105540 (A000124 (n + 1)).toNat) 17

end

end A105542.P17771585626526989243

/-! ## A105542.P3112542684435627088

`gcd(A105540(A000124(n+1)), A114099(n))`
-/

namespace A105542.P3112542684435627088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105540 (A000124 (n + 1)).toNat) (A114099 n)

end

end A105542.P3112542684435627088

/-! ## A105542.P10687627692710702547

`lcm(A034851(n), A105540(A000124(n+1)))`
-/

namespace A105542.P10687627692710702547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034851 n) (A105540 (A000124 (n + 1)).toNat)

end

end A105542.P10687627692710702547

/-!
# A105543: Column 0 of triangle A105542, which equals the matrix square of triangle A105540.

The programs for A105543, there is no canonical definition to state claims against.
-/

/-! ## A105543.P9619044672157624908

`A105542(∑[n])`
-/

namespace A105543.P9619044672157624908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105542 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105543.P9619044672157624908

/-! ## A105543.P17822188339452567848

`lcm(∏{p}[n+1, -1%#], A105542(2*n-(n-C(n, 2))))`
-/

namespace A105543.P17822188339452567848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A105542 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ))).toNat)

end

end A105543.P17822188339452567848

/-! ## A105543.P6272159912979412361

`record[A105542(A220691(n+1))]`
-/

namespace A105543.P6272159912979412361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105542 (A220691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105543.P6272159912979412361

/-! ## A105543.P13376054096711084106

`record[A010054(n)*A105542(n)]`
-/

namespace A105543.P13376054096711084106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A105542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105543.P13376054096711084106

/-! ## A105543.P4733455340439185452

`record[A105542(n*A103451(n))]`
-/

namespace A105543.P4733455340439185452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105542 ((n : ℤ) * A103451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105543.P4733455340439185452

/-!
# A105544: Row sums of triangle A105542, which equals the matrix square of triangle A105540.

The programs for A105544, there is no canonical definition to state claims against.
-/

/-! ## A105544.P14862490998133181234

`A247979(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A105544.P14862490998133181234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247979 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A105544.P14862490998133181234

/-! ## A105544.P346299440103405870

`∑[A018321(3*n+2)-comp[∑[n-1]]]`
-/

namespace A105544.P346299440103405870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018321 (3 * n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105544.P346299440103405870

/-!
# A105545: Matrix cube of triangle A105540 and, in this flattened form as read by rows, also equals column 2 of A105540.

The programs for A105545, there is no canonical definition to state claims against.
-/

/-! ## A105545.P1767622739096391008

`A105540(∑[n+2]+3)`
-/

namespace A105545.P1767622739096391008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A105545.P1767622739096391008

/-! ## A105545.P10235096681359098697

`A105540(A340266(n+1))-A000007(n)`
-/

namespace A105545.P10235096681359098697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (A340266 (n + 1)).toNat - A000007 n

end

end A105545.P10235096681359098697

/-! ## A105545.P15058710056571860710

`A105540(A340266(n+1))-A010051(2*(n+1))`
-/

namespace A105545.P15058710056571860710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (A340266 (n + 1)).toNat - A010051 (2 * (n + 1))

end

end A105545.P15058710056571860710

/-!
# A105547: Hamming weight distribution of code obtained by lifting Golay code of length 24 to Z/4Z.

The programs for A105547, there is no canonical definition to state claims against.
-/

/-! ## A105547.P13859164581825681292

`A167654((a(n-1)+val(n, 2))!)/2` with `a(0)=1`
-/

namespace A105547.P13859164581825681292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A167654 (Nat.factorial (SequenceMachineLib.roundAway (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℚ))).toNat) : ℚ) / 2

end

end A105547.P13859164581825681292

/-! ## A105547.P12011362565835394169

`A326850(A353885(n))`
-/

namespace A105547.P12011362565835394169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 (A353885 n).toNat

end

end A105547.P12011362565835394169

/-! ## A105547.P17909271477316954277

`A227345(A050612(n)+6)`
-/

namespace A105547.P17909271477316954277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A050612 n + 6).toNat

end

end A105547.P17909271477316954277

/-! ## A105547.P3727225217058924729

`A105867(A288546(n+7))`
-/

namespace A105547.P3727225217058924729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105867 (A288546 (n + 7)).toNat

end

end A105547.P3727225217058924729

/-! ## A105547.P16730089288332637639

`A076109((n+1)*A180414(n))`
-/

namespace A105547.P16730089288332637639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 ((n + 1 : ℤ) * A180414 n).toNat

end

end A105547.P16730089288332637639

/-!
# A105549: Numbers n such that 2*prime(n)+/ -n are primes.

The programs for A105549, there is no canonical definition to state claims against.
-/

/-! ## A105549.P5124969453274058798

`record[gcd(A042965(n+1), A048691(n+1))]`
-/

namespace A105549.P5124969453274058798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042965 (n + 1)) (A048691 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105549.P5124969453274058798

/-!
# A105550: Numbers n such that n/6 and prime(n)+/ -n are all primes.

The programs for A105550, there is no canonical definition to state claims against.
-/

/-! ## A105550.P6412881922162189757

`∩[A064403(n+1), A138636(n+1)]`
-/

namespace A105550.P6412881922162189757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P6412881922162189757

/-! ## A105550.P1931281985429464203

`∩[A064403(n+1), A275082(n+1)]`
-/

namespace A105550.P1931281985429464203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P1931281985429464203

/-! ## A105550.P16247231495110754501

`∩[A064403(n+1), A357696(n+1)]`
-/

namespace A105550.P16247231495110754501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P16247231495110754501

/-! ## A105550.P5440260884582070152

`∩[A064403(n+1), A091191(n+1)]`
-/

namespace A105550.P5440260884582070152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P5440260884582070152

/-! ## A105550.P12887751979871204184

`∩[A064403(n+1), A075818(n+1)]`
-/

namespace A105550.P12887751979871204184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P12887751979871204184

/-! ## A105550.P3689854756041437232

`∩[A064403(n+1), A110188(n+1)]`
-/

namespace A105550.P3689854756041437232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105550.P3689854756041437232

/-! ## A105550.P8551053688794900200

`filter[A064403(n+1), A294930(#)]`
-/

namespace A105550.P8551053688794900200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A105550.P8551053688794900200

/-! ## A105550.P14147552835546651685

`filter[A064403(n+3), A340369(#)]`
-/

namespace A105550.P14147552835546651685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A105550.P14147552835546651685

/-!
# A105551: Number of distinct prime factors of n^3 + n^2 + 71.

The programs for A105551, the canonical program `A105551.P10952115211423103239` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105551 has offset 0).

The definition of A105551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105551.P10952115211423103239

`A001221(n^3+n²+71)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105551

/-- `A001221(n^3+n²+71)` -/
def P10952115211423103239.Spec : Prop :=
  ∀ n, P10952115211423103239.a n = A105551 n

theorem P10952115211423103239.correct : P10952115211423103239.Spec := by
  intro n
  simp only [A105551]

end A105551

/-! ## A105551.P2282331562919247035

`∑{e}[A098547(n)+70, A000010(#)]`
-/

namespace A105551.P2282331562919247035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P2282331562919247035

namespace A105551

/-- `∑{e}[A098547(n)+70, A000010(#)]` -/
def P2282331562919247035.Spec : Prop :=
  ∀ n, P2282331562919247035.a n = A105551 n

end A105551

/-! ## A105551.P16780558324669534998

`∑{e}[A098547(n)+70, A000161(#)]`
-/

namespace A105551.P16780558324669534998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000161 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P16780558324669534998

namespace A105551

/-- `∑{e}[A098547(n)+70, A000161(#)]` -/
def P16780558324669534998.Spec : Prop :=
  ∀ n, P16780558324669534998.a n = A105551 n

end A105551

/-! ## A105551.P10559094585327274123

`∑{e}[A098547(n)+70, A007318(#)]`
-/

namespace A105551.P10559094585327274123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P10559094585327274123

namespace A105551

/-- `∑{e}[A098547(n)+70, A007318(#)]` -/
def P10559094585327274123.Spec : Prop :=
  ∀ n, P10559094585327274123.a n = A105551 n

end A105551

/-! ## A105551.P2980688871199253227

`∑{e}[A098547(n)+70, A087419(#)]`
-/

namespace A105551.P2980688871199253227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087419 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P2980688871199253227

namespace A105551

/-- `∑{e}[A098547(n)+70, A087419(#)]` -/
def P2980688871199253227.Spec : Prop :=
  ∀ n, P2980688871199253227.a n = A105551 n

end A105551

/-! ## A105551.P2760285397897821198

`∑{e}[A098547(n)+70, A087437(#)]`
-/

namespace A105551.P2760285397897821198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087437 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P2760285397897821198

namespace A105551

/-- `∑{e}[A098547(n)+70, A087437(#)]` -/
def P2760285397897821198.Spec : Prop :=
  ∀ n, P2760285397897821198.a n = A105551 n

end A105551

/-! ## A105551.P11376287241603849802

`∑{e}[A098547(n)+70, A208879(#)]`
-/

namespace A105551.P11376287241603849802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A208879 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P11376287241603849802

namespace A105551

/-- `∑{e}[A098547(n)+70, A208879(#)]` -/
def P11376287241603849802.Spec : Prop :=
  ∀ n, P11376287241603849802.a n = A105551 n

end A105551

/-! ## A105551.P3744145415552573374

`∑{e}[A011379(n)+71, A000010(#)]`
-/

namespace A105551.P3744145415552573374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P3744145415552573374

namespace A105551

/-- `∑{e}[A011379(n)+71, A000010(#)]` -/
def P3744145415552573374.Spec : Prop :=
  ∀ n, P3744145415552573374.a n = A105551 n

end A105551

/-! ## A105551.P12773888735850816002

`∑{e}[A011379(n)+71, A000045(#)]`
-/

namespace A105551.P12773888735850816002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P12773888735850816002

namespace A105551

/-- `∑{e}[A011379(n)+71, A000045(#)]` -/
def P12773888735850816002.Spec : Prop :=
  ∀ n, P12773888735850816002.a n = A105551 n

end A105551

/-! ## A105551.P12913855902622913725

`∑{e}[A011379(n)+71, A000120(#)]`
-/

namespace A105551.P12913855902622913725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P12913855902622913725

namespace A105551

/-- `∑{e}[A011379(n)+71, A000120(#)]` -/
def P12913855902622913725.Spec : Prop :=
  ∀ n, P12913855902622913725.a n = A105551 n

end A105551

/-! ## A105551.P17566812713471067766

`∑{e}[A011379(n)+71, A000194(#)]`
-/

namespace A105551.P17566812713471067766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000194 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P17566812713471067766

namespace A105551

/-- `∑{e}[A011379(n)+71, A000194(#)]` -/
def P17566812713471067766.Spec : Prop :=
  ∀ n, P17566812713471067766.a n = A105551 n

end A105551

/-! ## A105551.P18160421434000940749

`∑{e}[A011379(n)+71, A050782(#)]`
-/

namespace A105551.P18160421434000940749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050782 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P18160421434000940749

namespace A105551

/-- `∑{e}[A011379(n)+71, A050782(#)]` -/
def P18160421434000940749.Spec : Prop :=
  ∀ n, P18160421434000940749.a n = A105551 n

end A105551

/-! ## A105551.P9442710976820385785

`∑{e}[A011379(n)+71, A066715(#)]`
-/

namespace A105551.P9442710976820385785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066715 (Nat.factorization (f1 n).natAbs p)

end

end A105551.P9442710976820385785

namespace A105551

/-- `∑{e}[A011379(n)+71, A066715(#)]` -/
def P9442710976820385785.Spec : Prop :=
  ∀ n, P9442710976820385785.a n = A105551 n

end A105551

/-! ## A105551.P17656165469833425790

`∑{e}[A098547(n)+70, A008683(#)²]`
-/

namespace A105551.P17656165469833425790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 (Nat.factorization (f1 n).natAbs p) ^ 2

end

end A105551.P17656165469833425790

namespace A105551

/-- `∑{e}[A098547(n)+70, A008683(#)²]` -/
def P17656165469833425790.Spec : Prop :=
  ∀ n, P17656165469833425790.a n = A105551 n

end A105551

/-! ## A105551.P14810396102306605915

`∑{e}[A011379(n)+71, A032741(#)!]`
-/

namespace A105551.P14810396102306605915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + 71

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A032741 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A105551.P14810396102306605915

namespace A105551

/-- `∑{e}[A011379(n)+71, A032741(#)!]` -/
def P14810396102306605915.Spec : Prop :=
  ∀ n, (P14810396102306605915.a n : ℤ) = A105551 n

end A105551

/-! ## A105551.P1882971596779277717

`A001222(∑{d}[A098547(n)+70, and(1, #)])`
-/

namespace A105551.P1882971596779277717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d)

end

end A105551.P1882971596779277717

namespace A105551

/-- `A001222(∑{d}[A098547(n)+70, and(1, #)])` -/
def P1882971596779277717.Spec : Prop :=
  ∀ n, P1882971596779277717.a n = A105551 n

end A105551

/-! ## A105551.P300603721909248373

`∑{e}[A098547(n)+70, A165573(#+1)²]`
-/

namespace A105551.P300603721909248373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n + 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A165573 (Nat.factorization (f1 n).natAbs p + 1) ^ 2

end

end A105551.P300603721909248373

namespace A105551

/-- `∑{e}[A098547(n)+70, A165573(#+1)²]` -/
def P300603721909248373.Spec : Prop :=
  ∀ n, P300603721909248373.a n = A105551 n

end A105551

/-!
# A105553: a(n) is the number of 1's in A103528(n) written in base 2.

The programs for A105553, there is no canonical definition to state claims against.
-/

/-! ## A105553.P1001455516536926269

`A103318(n+1)-1`
-/

namespace A105553.P1001455516536926269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103318 (n + 1) - 1

end

end A105553.P1001455516536926269

/-! ## A105553.P4892502661582401558

`dr(A105032(n+1))-1`
-/

namespace A105553.P4892502661582401558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A105032 (n + 1)) : ℤ) - 1

end

end A105553.P4892502661582401558

/-! ## A105553.P1707808829854597492

`5%A103318(-xor(n, -1))`
-/

namespace A105553.P1707808829854597492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A103318 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A105553.P1707808829854597492

/-! ## A105553.P3790279475202016398

`A104234(2^ceil(log2(n+1))-(n+1))`
-/

namespace A105553.P3790279475202016398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n + 1 : ℚ))).toNat

end

end A105553.P3790279475202016398

/-! ## A105553.P3246591480162893412

`A000120(A103528(n+1))`
-/

namespace A105553.P3246591480162893412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103528 (n + 1)).toNat

end

end A105553.P3246591480162893412

/-! ## A105553.P5588064309516194910

`A124763(A104489(n+1))`
-/

namespace A105553.P5588064309516194910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A104489 (n + 1)).toNat

end

end A105553.P5588064309516194910

/-! ## A105553.P11557652197452374531

`A025435(A103528(n+1)²)`
-/

namespace A105553.P11557652197452374531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A103528 (n + 1) ^ 2).toNat

end

end A105553.P11557652197452374531

/-! ## A105553.P10291497058027217039

`A001221(A103528(n+1)+1)`
-/

namespace A105553.P10291497058027217039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103528 (n + 1) + 1).toNat

end

end A105553.P10291497058027217039

/-! ## A105553.P8059266227262715502

`A001513(n)%A103318(n+1)`
-/

namespace A105553.P8059266227262715502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A103318 (n + 1))

end

end A105553.P8059266227262715502

/-! ## A105553.P1480985602929391917

`A001538(n)%A103318(n+1)`
-/

namespace A105553.P1480985602929391917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A103318 (n + 1))

end

end A105553.P1480985602929391917

/-!
# A105554: Primes whose indices are the sum of the first n+1 Fibonacci numbers.

The programs for A105554, the canonical program `A105554.P3431656955138672764` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105554 has offset 1).

The definition of A105554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105554.P3431656955138672764

`A000040(A000045(n+3)-1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105554

/-- `A000040(A000045(n+3)-1)` -/
def P3431656955138672764.Spec : Prop :=
  ∀ n, P3431656955138672764.a n = A105554 (n + 1)

theorem P3431656955138672764.correct : P3431656955138672764.Spec := by
  intro n
  simp only [A105554, Nat.add_sub_cancel]

end A105554

/-! ## A105554.P3967928035595922503

`A001749(A001911(n)+1)/4`
-/

namespace A105554.P3967928035595922503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A001911 n + 1).toNat : ℚ) / 4

end

end A105554.P3967928035595922503

namespace A105554

/-- `A001749(A001911(n)+1)/4` -/
def P3967928035595922503.Spec : Prop :=
  ∀ n, P3967928035595922503.a n = (A105554 (n + 1) : ℚ)

end A105554

/-! ## A105554.P10692647058124595039

`A001748(A000071(n+3))/3`
-/

namespace A105554.P10692647058124595039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000071 (n + 3)).toNat : ℚ) / 3

end

end A105554.P10692647058124595039

namespace A105554

/-- `A001748(A000071(n+3))/3` -/
def P10692647058124595039.Spec : Prop :=
  ∀ n, P10692647058124595039.a n = (A105554 (n + 1) : ℚ)

end A105554

/-! ## A105554.P16410434901044003988

`A001748(A226538(2*n))/3`
-/

namespace A105554.P16410434901044003988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A226538 (2 * n)).toNat : ℚ) / 3

end

end A105554.P16410434901044003988

namespace A105554

/-- `A001748(A226538(2*n))/3` -/
def P16410434901044003988.Spec : Prop :=
  ∀ n, P16410434901044003988.a n = (A105554 (n + 1) : ℚ)

end A105554

/-! ## A105554.P11177001506194829032

`A001748(∑[A036355(∑[n])])/3`
-/

namespace A105554.P11177001506194829032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A105554.P11177001506194829032

namespace A105554

/-- `A001748(∑[A036355(∑[n])])/3` -/
def P11177001506194829032.Spec : Prop :=
  ∀ n, P11177001506194829032.a n = (A105554 (n + 1) : ℚ)

end A105554

/-!
# A105555: Let d = number of divisors of n; a(n) = d-th prime.

The programs for A105555, the canonical program `A105555.P12553018118310523770` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105555 has offset 1).

The definition of A105555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105555.P12553018118310523770

`A000040(∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105555

/-- `A000040(∏{e}[n+1, #+1])` -/
def P12553018118310523770.Spec : Prop :=
  ∀ n, P12553018118310523770.a n = A105555 (n + 1)

theorem P12553018118310523770.correct : P12553018118310523770.Spec := by
  intro n
  simp only [A105555, Nat.add_sub_cancel]

end A105555

/-! ## A105555.P4825233514837880122

`A000040(∑{d}[n+1, gcd(n, #)])`
-/

namespace A105555.P4825233514837880122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A105555.P4825233514837880122

namespace A105555

/-- `A000040(∑{d}[n+1, gcd(n, #)])` -/
def P4825233514837880122.Spec : Prop :=
  ∀ n, P4825233514837880122.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P1982608824349478136

`A000040(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A105555.P1982608824349478136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A105555.P1982608824349478136

namespace A105555

/-- `A000040(∑{d}[n+1, ceil(acot(#))])` -/
def P1982608824349478136.Spec : Prop :=
  ∀ n, P1982608824349478136.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P12963316172528387113

`A000040(∑{d}[n+1, (#%2)!])`
-/

namespace A105555.P12963316172528387113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A105555.P12963316172528387113

namespace A105555

/-- `A000040(∑{d}[n+1, (#%2)!])` -/
def P12963316172528387113.Spec : Prop :=
  ∀ n, P12963316172528387113.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P1608463215244513158

`A008864(∏{e}[n+1, #+1])-1`
-/

namespace A105555.P1608463215244513158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 1

end

end A105555.P1608463215244513158

namespace A105555

/-- `A008864(∏{e}[n+1, #+1])-1` -/
def P1608463215244513158.Spec : Prop :=
  ∀ n, P1608463215244513158.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P5276083189764752048

`A000040(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A105555.P5276083189764752048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A105555.P5276083189764752048

namespace A105555

/-- `A000040(∑{d}[n+1, ((-1)^#)²])` -/
def P5276083189764752048.Spec : Prop :=
  ∀ n, P5276083189764752048.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P9354695765590177981

`A000040(Δ[A006218(n)])`
-/

namespace A105555.P9354695765590177981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A105555.P9354695765590177981

namespace A105555

/-- `A000040(Δ[A006218(n)])` -/
def P9354695765590177981.Spec : Prop :=
  ∀ n, P9354695765590177981.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P12467412662323751497

`A000040(Δ[A054519(n)])`
-/

namespace A105555.P12467412662323751497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A105555.P12467412662323751497

namespace A105555

/-- `A000040(Δ[A054519(n)])` -/
def P12467412662323751497.Spec : Prop :=
  ∀ n, P12467412662323751497.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P17886283271184042861

`A000040(A000005(n+1))`
-/

namespace A105555.P17886283271184042861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (n + 1)).toNat

end

end A105555.P17886283271184042861

namespace A105555

/-- `A000040(A000005(n+1))` -/
def P17886283271184042861.Spec : Prop :=
  ∀ n, P17886283271184042861.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P10804512901850296864

`A051599(A066446(n+1))`
-/

namespace A105555.P10804512901850296864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A066446 (n + 1)).toNat

end

end A105555.P10804512901850296864

namespace A105555

/-- `A051599(A066446(n+1))` -/
def P10804512901850296864.Spec : Prop :=
  ∀ n, P10804512901850296864.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P9970248002138993410

`A073846(A062011(n+1))`
-/

namespace A105555.P9970248002138993410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A062011 (n + 1)).toNat

end

end A105555.P9970248002138993410

namespace A105555

/-- `A073846(A062011(n+1))` -/
def P9970248002138993410.Spec : Prop :=
  ∀ n, P9970248002138993410.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P12252935415613603442

`A067747(A114003(n+1))`
-/

namespace A105555.P12252935415613603442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A114003 (n + 1)).toNat

end

end A105555.P12252935415613603442

namespace A105555

/-- `A067747(A114003(n+1))` -/
def P12252935415613603442.Spec : Prop :=
  ∀ n, P12252935415613603442.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P7789191133847070263

`A005145(A184389(n+1))`
-/

namespace A105555.P7789191133847070263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A184389 (n + 1)).toNat

end

end A105555.P7789191133847070263

namespace A105555

/-- `A005145(A184389(n+1))` -/
def P7789191133847070263.Spec : Prop :=
  ∀ n, P7789191133847070263.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P16917918737902499704

`A109763(A131089(n+1))`
-/

namespace A105555.P16917918737902499704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A131089 (n + 1)).toNat

end

end A105555.P16917918737902499704

namespace A105555

/-- `A109763(A131089(n+1))` -/
def P16917918737902499704.Spec : Prop :=
  ∀ n, P16917918737902499704.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P4153533678265899662

`A005145(A337362(n+1))`
-/

namespace A105555.P4153533678265899662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A337362 (n + 1)).toNat

end

end A105555.P4153533678265899662

namespace A105555

/-- `A005145(A337362(n+1))` -/
def P4153533678265899662.Spec : Prop :=
  ∀ n, P4153533678265899662.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P18201020592809888806

`A000040(abs(A329484(n+1)))`
-/

namespace A105555.P18201020592809888806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A329484 (n + 1)|.toNat

end

end A105555.P18201020592809888806

namespace A105555

/-- `A000040(abs(A329484(n+1)))` -/
def P18201020592809888806.Spec : Prop :=
  ∀ n, P18201020592809888806.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P15792092814650702795

`A000040(sqrt(A035116(n+1)))`
-/

namespace A105555.P15792092814650702795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A035116 (n + 1) : ℝ))).toNat

end

end A105555.P15792092814650702795

namespace A105555

/-- `A000040(sqrt(A035116(n+1)))` -/
def P15792092814650702795.Spec : Prop :=
  ∀ n, P15792092814650702795.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P13512622957612429877

`A000040(log2(A338506(n+1)))`
-/

namespace A105555.P13512622957612429877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A338506 (n + 1) : ℝ))).toNat

end

end A105555.P13512622957612429877

namespace A105555

/-- `A000040(log2(A338506(n+1)))` -/
def P13512622957612429877.Spec : Prop :=
  ∀ n, P13512622957612429877.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P5447814644575373439

`A000040(∑[A341062(n+1)])`
-/

namespace A105555.P5447814644575373439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105555.P5447814644575373439

namespace A105555

/-- `A000040(∑[A341062(n+1)])` -/
def P5447814644575373439.Spec : Prop :=
  ∀ n, P5447814644575373439.a n = A105555 (n + 1)

end A105555

/-! ## A105555.P15961780305737618696

`A006093(Δ[A006218(n)])+1`
-/

namespace A105555.P15961780305737618696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n).toNat + 1

end

end A105555.P15961780305737618696

namespace A105555

/-- `A006093(Δ[A006218(n)])+1` -/
def P15961780305737618696.Spec : Prop :=
  ∀ n, P15961780305737618696.a n = A105555 (n + 1)

end A105555

/-!
# A105556: Triangle, read by rows, such that column n equals the row sums of A001263^n, which is the n-th matrix power of the Narayana triangle A001263, for n>=0.

The programs for A105556, there is no canonical definition to state claims against.
-/

/-! ## A105556.P10743911556529365336

`A112338(∑[2*n]%comp[∑[n]])`
-/

namespace A105556.P10743911556529365336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112338 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A105556.P10743911556529365336

/-! ## A105556.P844469576628934921

`A112338(∑[char[∑[n]]]²-n-1)`
-/

namespace A105556.P844469576628934921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112338 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A105556.P844469576628934921

/-! ## A105556.P7307227696235168043

`A112338(A061579(n))+A025469(n)`
-/

namespace A105556.P7307227696235168043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112338 (A061579 n).toNat + A025469 n

end

end A105556.P7307227696235168043

/-! ## A105556.P11769184368862554743

`A178798(n)+A112338(A061579(n))`
-/

namespace A105556.P11769184368862554743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A112338 (A061579 n).toNat

end

end A105556.P11769184368862554743

/-! ## A105556.P17197381173244744308

`A112338(A061579(n))*A304042(n)`
-/

namespace A105556.P17197381173244744308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112338 (A061579 n).toNat * A304042 n

end

end A105556.P17197381173244744308

/-!
# A105557: Row sums of triangle A105556, in which column n equals the row sums of A001263^n, which is the n-th matrix power of the Narayana triangle A001263.

The programs for A105557, there is no canonical definition to state claims against.
-/

/-! ## A105557.P16224614099662199236

`A061017(∑[∑[A162326(n)]])`
-/

namespace A105557.P16224614099662199236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105557.P16224614099662199236

/-! ## A105557.P12886283732669087715

`A187761(n)+A003056(A000254(n))`
-/

namespace A105557.P12886283732669087715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187761 n + A003056 (A000254 n).toNat

end

end A105557.P12886283732669087715

/-! ## A105557.P6944622449699052402

`A349536(A058802(n+3))+A195174(n)`
-/

namespace A105557.P6944622449699052402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A058802 (n + 3)).toNat + A195174 n

end

end A105557.P6944622449699052402

/-!
# A105558: Central terms in even-indexed rows of triangle A105556 and thus equals the n-th row sum of the n-th matrix power of the Narayana triangle A001263.

The programs for A105558, there is no canonical definition to state claims against.
-/

/-! ## A105558.P2607920779974691502

`(n+1)*A155926(n)`
-/

namespace A105558.P2607920779974691502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A155926 n

end

end A105558.P2607920779974691502

/-! ## A105558.P4378734355574076270

`A155926(n)*A348553(n)`
-/

namespace A105558.P4378734355574076270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155926 n * A348553 n

end

end A105558.P4378734355574076270

/-! ## A105558.P11821253084576641879

`A155926(n)*A213634(A005408(n))`
-/

namespace A105558.P11821253084576641879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155926 n * A213634 (A005408 n).toNat

end

end A105558.P11821253084576641879

/-! ## A105558.P421529715631977767

`A155926(n)*A338372(A000217(n))`
-/

namespace A105558.P421529715631977767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155926 n * A338372 (A000217 n).toNat

end

end A105558.P421529715631977767

/-! ## A105558.P1517839557323232481

`A155926(n)*A211100(A000079(n))`
-/

namespace A105558.P1517839557323232481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155926 n * A211100 (A000079 n).toNat

end

end A105558.P1517839557323232481

/-!
# A105560: a(1) = 1, and for n >= 2, a(n) = prime(bigomega(n)), where prime(n) = A000040(n) and bigomega(n) = A001222(n).

The programs for A105560, the canonical program `A105560.P7897608420550643844` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105560 has offset 1).

The definition of A105560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105560.P10551142552488001308

`A242424(n+1)/A064989(n+1)`
-/

namespace A105560.P10551142552488001308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242424 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ)

end

end A105560.P10551142552488001308

namespace A105560

/-- `A242424(n+1)/A064989(n+1)` -/
def P10551142552488001308.Spec : Prop :=
  ∀ n, P10551142552488001308.a n = (A105560 (n + 1) : ℚ)

end A105560

/-! ## A105560.P7897608420550643844

`A008578(∑{e}[n+1, #]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105560

/-- `A008578(∑{e}[n+1, #]+1)` -/
def P7897608420550643844.Spec : Prop :=
  ∀ n, P7897608420550643844.a n = A105560 (n + 1)

theorem P7897608420550643844.correct : P7897608420550643844.Spec := by
  intro n
  simp only [A105560, Nat.add_sub_cancel]

end A105560

/-! ## A105560.P6163753871087108762

`A015919(∑{e}[n+1, #]+1)`
-/

namespace A105560.P6163753871087108762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A105560.P6163753871087108762

namespace A105560

/-- `A015919(∑{e}[n+1, #]+1)` -/
def P6163753871087108762.Spec : Prop :=
  ∀ n, P6163753871087108762.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P12011312596752601196

`A028815(∑{e}[n+1, #])-1`
-/

namespace A105560.P12011312596752601196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - 1

end

end A105560.P12011312596752601196

namespace A105560

/-- `A028815(∑{e}[n+1, #])-1` -/
def P12011312596752601196.Spec : Prop :=
  ∀ n, P12011312596752601196.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P8579938327803137315

`A181819(2^∑{e}[n+1, #])`
-/

namespace A105560.P8579938327803137315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A105560.P8579938327803137315

namespace A105560

/-- `A181819(2^∑{e}[n+1, #])` -/
def P8579938327803137315.Spec : Prop :=
  ∀ n, P8579938327803137315.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P8980458608475395550

`A158611(∑{e}[2*(n+1), #]+1)`
-/

namespace A105560.P8980458608475395550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A105560.P8980458608475395550

namespace A105560

/-- `A158611(∑{e}[2*(n+1), #]+1)` -/
def P8980458608475395550.Spec : Prop :=
  ∀ n, P8980458608475395550.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P16941850923248563831

`A008578(A073093(n+1))`
-/

namespace A105560.P16941850923248563831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A073093 (n + 1)).toNat

end

end A105560.P16941850923248563831

namespace A105560

/-- `A008578(A073093(n+1))` -/
def P16941850923248563831.Spec : Prop :=
  ∀ n, P16941850923248563831.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P4456586774450258940

`A006530(A329607(n+1))`
-/

namespace A105560.P4456586774450258940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329607 (n + 1)).toNat

end

end A105560.P4456586774450258940

namespace A105560

/-- `A006530(A329607(n+1))` -/
def P4456586774450258940.Spec : Prop :=
  ∀ n, P4456586774450258940.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P7796158754782227091

`A006530(A331597(n+1))`
-/

namespace A105560.P7796158754782227091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A331597 (n + 1)).toNat

end

end A105560.P7796158754782227091

namespace A105560

/-- `A006530(A331597(n+1))` -/
def P7796158754782227091.Spec : Prop :=
  ∀ n, P7796158754782227091.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P9020742098988367709

`A005180(A001222(n+1)+1)`
-/

namespace A105560.P9020742098988367709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A001222 (n + 1) + 1).toNat

end

end A105560.P9020742098988367709

namespace A105560

/-- `A005180(A001222(n+1)+1)` -/
def P9020742098988367709.Spec : Prop :=
  ∀ n, P9020742098988367709.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P17453210054732137811

`A008578(A001222(n+1)+1)`
-/

namespace A105560.P17453210054732137811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001222 (n + 1) + 1).toNat

end

end A105560.P17453210054732137811

namespace A105560

/-- `A008578(A001222(n+1)+1)` -/
def P17453210054732137811.Spec : Prop :=
  ∀ n, P17453210054732137811.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P15266984058036276810

`A015919(A001222(n+1)+1)`
-/

namespace A105560.P15266984058036276810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A001222 (n + 1) + 1).toNat

end

end A105560.P15266984058036276810

namespace A105560

/-- `A015919(A001222(n+1)+1)` -/
def P15266984058036276810.Spec : Prop :=
  ∀ n, P15266984058036276810.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P11815942915819089317

`A064555(A001222(n+1)+1)`
-/

namespace A105560.P11815942915819089317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A001222 (n + 1) + 1).toNat

end

end A105560.P11815942915819089317

namespace A105560

/-- `A064555(A001222(n+1)+1)` -/
def P11815942915819089317.Spec : Prop :=
  ∀ n, P11815942915819089317.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P3047809667053173319

`A324050(A001222(n+1)+1)`
-/

namespace A105560.P3047809667053173319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A001222 (n + 1) + 1).toNat

end

end A105560.P3047809667053173319

namespace A105560

/-- `A324050(A001222(n+1)+1)` -/
def P3047809667053173319.Spec : Prop :=
  ∀ n, P3047809667053173319.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P2765044665035713441

`A158611(A001222(n+1)+2)`
-/

namespace A105560.P2765044665035713441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A001222 (n + 1) + 2).toNat

end

end A105560.P2765044665035713441

namespace A105560

/-- `A158611(A001222(n+1)+2)` -/
def P2765044665035713441.Spec : Prop :=
  ∀ n, P2765044665035713441.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P12284827878750190948

`A181819(2^A001222(n+1))`
-/

namespace A105560.P12284827878750190948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A105560.P12284827878750190948

namespace A105560

/-- `A181819(2^A001222(n+1))` -/
def P12284827878750190948.Spec : Prop :=
  ∀ n, P12284827878750190948.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P5867746252677731939

`A006530(A114420(∑{e}[n+1, #]))`
-/

namespace A105560.P5867746252677731939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114420 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A105560.P5867746252677731939

namespace A105560

/-- `A006530(A114420(∑{e}[n+1, #]))` -/
def P5867746252677731939.Spec : Prop :=
  ∀ n, P5867746252677731939.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P3161150906753956919

`A001747(A001222(n+1)+1)/2`
-/

namespace A105560.P3161150906753956919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A001222 (n + 1) + 1).toNat : ℚ) / 2

end

end A105560.P3161150906753956919

namespace A105560

/-- `A001747(A001222(n+1)+1)/2` -/
def P3161150906753956919.Spec : Prop :=
  ∀ n, P3161150906753956919.a n = (A105560 (n + 1) : ℚ)

end A105560

/-! ## A105560.P2423411020255934565

`A000040(A001222((n+1)^(a(n-1)/3)^(3/a(n-1))))` with `a(0)=1`
-/

namespace A105560.P2423411020255934565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A001222 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ ((a (n - 1) : ℚ) / 3 : ℝ)) ^ (3 / (a (n - 1) : ℚ) : ℝ))).toNat).toNat

end

end A105560.P2423411020255934565

namespace A105560

/-- `A000040(A001222((n+1)^(a(n-1)/3)^(3/a(n-1))))` -/
def P2423411020255934565.Spec : Prop :=
  ∀ n, P2423411020255934565.a n = A105560 (n + 1)

end A105560

/-! ## A105560.P3779272270898946125

`A000040(A001222(A008683(a(n-1))²+n))` with `a(0)=1`
-/

namespace A105560.P3779272270898946125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A001222 (A008683 (a (n - 1)).toNat ^ 2 + (n : ℤ)).toNat).toNat

end

end A105560.P3779272270898946125

namespace A105560

/-- `A000040(A001222(A008683(a(n-1))²+n))` -/
def P3779272270898946125.Spec : Prop :=
  ∀ n, P3779272270898946125.a n = A105560 (n + 1)

end A105560

/-!
# A105561: a(n) is the m-th prime, where m is the number of distinct prime factors of n (A001221), a(1) = 1.

The programs for A105561, the canonical program `A105561.P9613495167303290584` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105561 has offset 1).

The definition of A105561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105561.P2664380808379379895

`A105560(∏{p}[n+1, #])`
-/

namespace A105561.P2664380808379379895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A105561.P2664380808379379895

namespace A105561

/-- `A105560(∏{p}[n+1, #])` -/
def P2664380808379379895.Spec : Prop :=
  ∀ n, P2664380808379379895.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P11605518465205455135

`A238745(∏{p}[n+1, #])`
-/

namespace A105561.P11605518465205455135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A105561.P11605518465205455135

namespace A105561

/-- `A238745(∏{p}[n+1, #])` -/
def P11605518465205455135.Spec : Prop :=
  ∀ n, P11605518465205455135.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P10541040747916700676

`A328830(∏{p}[n+1, #])`
-/

namespace A105561.P10541040747916700676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A105561.P10541040747916700676

namespace A105561

/-- `A328830(∏{p}[n+1, #])` -/
def P10541040747916700676.Spec : Prop :=
  ∀ n, P10541040747916700676.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P9613495167303290584

`A052955(∑{e}[n+1, #]-∑{e}[n+1, #-1])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105561

/-- `A052955(∑{e}[n+1, #]-∑{e}[n+1, #-1])` -/
def P9613495167303290584.Spec : Prop :=
  ∀ n, P9613495167303290584.a n = A105561 (n + 1)

theorem P9613495167303290584.correct : P9613495167303290584.Spec := by
  intro n
  simp only [A105561, Nat.add_sub_cancel]

end A105561

/-! ## A105561.P8222017003045510246

`A000837(∑{p}[n+1, 2%#²]/2)+∑{p}[n+1, 2%#²]/2`
-/

namespace A105561.P8222017003045510246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000837 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℚ) / 2)).toNat : ℚ) + ((∑ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2 : ℕ) : ℚ) / 2

end

end A105561.P8222017003045510246

namespace A105561

/-- `A000837(∑{p}[n+1, 2%#²]/2)+∑{p}[n+1, 2%#²]/2` -/
def P8222017003045510246.Spec : Prop :=
  ∀ n, P8222017003045510246.a n = (A105561 (n + 1) : ℚ)

end A105561

/-! ## A105561.P4138802452138613630

`A006530(A046523(n+1))`
-/

namespace A105561.P4138802452138613630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046523 (n + 1)).toNat

end

end A105561.P4138802452138613630

namespace A105561

/-- `A006530(A046523(n+1))` -/
def P4138802452138613630.Spec : Prop :=
  ∀ n, P4138802452138613630.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P7405807930095536048

`A006530(A071364(n+1))`
-/

namespace A105561.P7405807930095536048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071364 (n + 1)).toNat

end

end A105561.P7405807930095536048

namespace A105561

/-- `A006530(A071364(n+1))` -/
def P7405807930095536048.Spec : Prop :=
  ∀ n, P7405807930095536048.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P6615064110809485837

`A006530(A083260(n+1))`
-/

namespace A105561.P6615064110809485837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083260 (n + 1)).toNat

end

end A105561.P6615064110809485837

namespace A105561

/-- `A006530(A083260(n+1))` -/
def P6615064110809485837.Spec : Prop :=
  ∀ n, P6615064110809485837.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P6687799311737719983

`A105560(A007947(n+1))`
-/

namespace A105561.P6687799311737719983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A007947 (n + 1)).toNat

end

end A105561.P6687799311737719983

namespace A105561

/-- `A105560(A007947(n+1))` -/
def P6687799311737719983.Spec : Prop :=
  ∀ n, P6687799311737719983.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P4550468473743146330

`A006530(A238745(n+1))`
-/

namespace A105561.P4550468473743146330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A238745 (n + 1)).toNat

end

end A105561.P4550468473743146330

namespace A105561

/-- `A006530(A238745(n+1))` -/
def P4550468473743146330.Spec : Prop :=
  ∀ n, P4550468473743146330.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P1991732713249608810

`A006530(A284476(n+1))`
-/

namespace A105561.P1991732713249608810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284476 (n + 1)).toNat

end

end A105561.P1991732713249608810

namespace A105561

/-- `A006530(A284476(n+1))` -/
def P1991732713249608810.Spec : Prop :=
  ∀ n, P1991732713249608810.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P3515092359424428477

`A006530(A292586(n+1))`
-/

namespace A105561.P3515092359424428477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A292586 (n + 1)).toNat

end

end A105561.P3515092359424428477

namespace A105561

/-- `A006530(A292586(n+1))` -/
def P3515092359424428477.Spec : Prop :=
  ∀ n, P3515092359424428477.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P14157212965964479017

`A238745(A329607(n+1))`
-/

namespace A105561.P14157212965964479017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A329607 (n + 1)).toNat

end

end A105561.P14157212965964479017

namespace A105561

/-- `A238745(A329607(n+1))` -/
def P14157212965964479017.Spec : Prop :=
  ∀ n, P14157212965964479017.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P14792833534293164771

`A111393(A292586(n+1)+1)`
-/

namespace A105561.P14792833534293164771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (A292586 (n + 1) + 1).toNat

end

end A105561.P14792833534293164771

namespace A105561

/-- `A111393(A292586(n+1)+1)` -/
def P14792833534293164771.Spec : Prop :=
  ∀ n, P14792833534293164771.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P17809853527933379506

`A246029(A034444(n+1)-1)`
-/

namespace A105561.P17809853527933379506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A034444 (n + 1) - 1).toNat

end

end A105561.P17809853527933379506

namespace A105561

/-- `A246029(A034444(n+1)-1)` -/
def P17809853527933379506.Spec : Prop :=
  ∀ n, P17809853527933379506.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P7738142775113908937

`A328830((n+1)/A003557(n+1))`
-/

namespace A105561.P7738142775113908937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A105561.P7738142775113908937

namespace A105561

/-- `A328830((n+1)/A003557(n+1))` -/
def P7738142775113908937.Spec : Prop :=
  ∀ n, P7738142775113908937.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P8785373905088044425

`A122111(A034444(2*n+1-n))`
-/

namespace A105561.P8785373905088044425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A034444 (2 * n + 1 - n)).toNat

end

end A105561.P8785373905088044425

namespace A105561

/-- `A122111(A034444(2*n+1-n))` -/
def P8785373905088044425.Spec : Prop :=
  ∀ n, P8785373905088044425.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P2406761659804515575

`A000041(∑{p}[n+1, A001222(#)]+1)`
-/

namespace A105561.P2406761659804515575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p + 1).toNat

end

end A105561.P2406761659804515575

namespace A105561

/-- `A000041(∑{p}[n+1, A001222(#)]+1)` -/
def P2406761659804515575.Spec : Prop :=
  ∀ n, P2406761659804515575.a n = A105561 (n + 1)

end A105561

/-! ## A105561.P7186251365593731749

`A000041(A001222(∏{p}[n+1, #])+1)`
-/

namespace A105561.P7186251365593731749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1).toNat

end

end A105561.P7186251365593731749

namespace A105561

/-- `A000041(A001222(∏{p}[n+1, #])+1)` -/
def P7186251365593731749.Spec : Prop :=
  ∀ n, P7186251365593731749.a n = A105561 (n + 1)

end A105561

/-!
# A105562: a(n) is the prime whose index is the greatest prime factor of n, for n >1; a(1)=2.

The programs for A105562, the canonical program `A105562.P5014279291815470731` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105562 has offset 1).

The definition of A105562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105562.P6610698790544844903

`A000040(A006530(n+1))`
-/

namespace A105562.P6610698790544844903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (n + 1)).toNat

end

end A105562.P6610698790544844903

namespace A105562

/-- `A000040(A006530(n+1))` -/
def P6610698790544844903.Spec : Prop :=
  ∀ n, P6610698790544844903.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P7283758875461129321

`A105574(A053585(n+1))`
-/

namespace A105562.P7283758875461129321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (A053585 (n + 1)).toNat

end

end A105562.P7283758875461129321

namespace A105562

/-- `A105574(A053585(n+1))` -/
def P7283758875461129321.Spec : Prop :=
  ∀ n, P7283758875461129321.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P8811688152331514332

`A175247(A159081(n+1))`
-/

namespace A105562.P8811688152331514332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A159081 (n + 1)).toNat

end

end A105562.P8811688152331514332

namespace A105562

/-- `A175247(A159081(n+1))` -/
def P8811688152331514332.Spec : Prop :=
  ∀ n, P8811688152331514332.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P14103928632938265485

`A105574(A323129(n+1))`
-/

namespace A105562.P14103928632938265485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (A323129 (n + 1)).toNat

end

end A105562.P14103928632938265485

namespace A105562

/-- `A105574(A323129(n+1))` -/
def P14103928632938265485.Spec : Prop :=
  ∀ n, P14103928632938265485.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P11922692394078156884

`A105574(A345941(n+1))`
-/

namespace A105562.P11922692394078156884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (A345941 (n + 1)).toNat

end

end A105562.P11922692394078156884

namespace A105562

/-- `A105574(A345941(n+1))` -/
def P11922692394078156884.Spec : Prop :=
  ∀ n, P11922692394078156884.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P9198878925089718701

`A008578(A006530(n+1)+1)`
-/

namespace A105562.P9198878925089718701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006530 (n + 1) + 1).toNat

end

end A105562.P9198878925089718701

namespace A105562

/-- `A008578(A006530(n+1)+1)` -/
def P9198878925089718701.Spec : Prop :=
  ∀ n, P9198878925089718701.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P1332135031481648886

`A182986(A006530(n+1)+1)`
-/

namespace A105562.P1332135031481648886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A006530 (n + 1) + 1).toNat

end

end A105562.P1332135031481648886

namespace A105562

/-- `A182986(A006530(n+1)+1)` -/
def P1332135031481648886.Spec : Prop :=
  ∀ n, P1332135031481648886.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P8264938997832165199

`A158611(A006530(n+1)+2)`
-/

namespace A105562.P8264938997832165199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A006530 (n + 1) + 2).toNat

end

end A105562.P8264938997832165199

namespace A105562

/-- `A158611(A006530(n+1)+2)` -/
def P8264938997832165199.Spec : Prop :=
  ∀ n, P8264938997832165199.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P5014279291815470731

`A008578(A070229(n+1)-n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A105562

/-- `A008578(A070229(n+1)-n)` -/
def P5014279291815470731.Spec : Prop :=
  ∀ n, P5014279291815470731.a n = A105562 (n + 1)

theorem P5014279291815470731.correct : P5014279291815470731.Spec := by
  intro n
  simp only [A105562, Nat.add_sub_cancel]

end A105562

/-! ## A105562.P6483936497998539169

`A001747(A006530(n+1)+1)/2`
-/

namespace A105562.P6483936497998539169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A006530 (n + 1) + 1).toNat : ℚ) / 2

end

end A105562.P6483936497998539169

namespace A105562

/-- `A001747(A006530(n+1)+1)/2` -/
def P6483936497998539169.Spec : Prop :=
  ∀ n, P6483936497998539169.a n = (A105562 (n + 1) : ℚ)

end A105562

/-! ## A105562.P8955642675281244820

`A000040(A070229(n+1)-(n+1))`
-/

namespace A105562.P8955642675281244820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070229 (n + 1) - (n + 1 : ℤ)).toNat

end

end A105562.P8955642675281244820

namespace A105562

/-- `A000040(A070229(n+1)-(n+1))` -/
def P8955642675281244820.Spec : Prop :=
  ∀ n, P8955642675281244820.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P13087020183398209414

`A000040((n+1)/A052126(n+1))`
-/

namespace A105562.P13087020183398209414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A105562.P13087020183398209414

namespace A105562

/-- `A000040((n+1)/A052126(n+1))` -/
def P13087020183398209414.Spec : Prop :=
  ∀ n, P13087020183398209414.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P17867307566415688043

`A000040(A253560(n+1)/(n+1))`
-/

namespace A105562.P17867307566415688043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A253560 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A105562.P17867307566415688043

namespace A105562

/-- `A000040(A253560(n+1)/(n+1))` -/
def P17867307566415688043.Spec : Prop :=
  ∀ n, P17867307566415688043.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P1693129236740605687

`A006093(A006530(∏{p}[n+1, #]))+1`
-/

namespace A105562.P1693129236740605687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + 1

end

end A105562.P1693129236740605687

namespace A105562

/-- `A006093(A006530(∏{p}[n+1, #]))+1` -/
def P1693129236740605687.Spec : Prop :=
  ∀ n, P1693129236740605687.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P5685222903258804267

`A000040((n+1)²/A342768(n+1))`
-/

namespace A105562.P5685222903258804267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A342768 (n + 1) : ℚ))).toNat

end

end A105562.P5685222903258804267

namespace A105562

/-- `A000040((n+1)²/A342768(n+1))` -/
def P5685222903258804267.Spec : Prop :=
  ∀ n, P5685222903258804267.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P12766540025222539090

`A000040(A217434(A007947(n+1)))`
-/

namespace A105562.P12766540025222539090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A217434 (A007947 (n + 1)).toNat).toNat

end

end A105562.P12766540025222539090

namespace A105562

/-- `A000040(A217434(A007947(n+1)))` -/
def P12766540025222539090.Spec : Prop :=
  ∀ n, P12766540025222539090.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P419277518594604358

`A000040(A046665(n+1)+A020639(n+1))`
-/

namespace A105562.P419277518594604358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046665 (n + 1) + A020639 (n + 1)).toNat

end

end A105562.P419277518594604358

namespace A105562

/-- `A000040(A046665(n+1)+A020639(n+1))` -/
def P419277518594604358.Spec : Prop :=
  ∀ n, P419277518594604358.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P15394862626364088841

`A000040(A074320(n+1)-A020639(n+1))`
-/

namespace A105562.P15394862626364088841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074320 (n + 1) - A020639 (n + 1)).toNat

end

end A105562.P15394862626364088841

namespace A105562

/-- `A000040(A074320(n+1)-A020639(n+1))` -/
def P15394862626364088841.Spec : Prop :=
  ∀ n, P15394862626364088841.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P8537922246027707735

`A000040(A318884(n+1)-A318886(n+1))`
-/

namespace A105562.P8537922246027707735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A318884 (n + 1) - A318886 (n + 1)).toNat

end

end A105562.P8537922246027707735

namespace A105562

/-- `A000040(A318884(n+1)-A318886(n+1))` -/
def P8537922246027707735.Spec : Prop :=
  ∀ n, P8537922246027707735.a n = A105562 (n + 1)

end A105562

/-! ## A105562.P3405417576529254898

`A006093(A085392(2*(n+1)))+1`
-/

namespace A105562.P3405417576529254898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A085392 (2 * (n + 1))).toNat + 1

end

end A105562.P3405417576529254898

namespace A105562

/-- `A006093(A085392(2*(n+1)))+1` -/
def P3405417576529254898.Spec : Prop :=
  ∀ n, P3405417576529254898.a n = A105562 (n + 1)

end A105562

/-!
# A105563: a(n) = if (exactly 4 Fibonacci numbers exist with exactly n digits) then 1, otherwise 0.

The programs for A105563, there is no canonical definition to state claims against.
-/

/-! ## A105563.P4371926463930194997

`val(Δ[A072354(n+1)], 4)`
-/

namespace A105563.P4371926463930194997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A105563.P4371926463930194997

/-!
# A105564: Number of blocks of exactly 4 Fibonacci numbers having equal length <= n.

The programs for A105564, there is no canonical definition to state claims against.
-/

/-! ## A105564.P7865395457707160065

`round(19*n/88)`
-/

namespace A105564.P7865395457707160065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (19 * ((n : ℚ) / 88))

end

end A105564.P7865395457707160065

/-! ## A105564.P2727569154457251241

`(n-round(n/root(7, 8)))%21`
-/

namespace A105564.P2727569154457251241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - SequenceMachineLib.roundAway ((n : ℝ) / (7 : ℝ) ^ (1 / (8 : ℝ)))) 21

end

end A105564.P2727569154457251241

/-! ## A105564.P15495356807745528371

`floor((round(n/cosh(1))+1)/3)`
-/

namespace A105564.P15495356807745528371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((n : ℝ) / Real.cosh (1 : ℝ)) + 1 : ℚ) / 3⌋

end

end A105564.P15495356807745528371

/-! ## A105564.P18245150187369051982

`ceil((round(n/cosh(1))-1)/3)`
-/

namespace A105564.P18245150187369051982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((n : ℝ) / Real.cosh (1 : ℝ)) - 1 : ℚ) / 3⌉

end

end A105564.P18245150187369051982

/-! ## A105564.P1693348610325559500

`floor(sqrt(∑[(n+2)*acot(2)/5]))`
-/

namespace A105564.P1693348610325559500
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * (SequenceMachineLib.acot (2 : ℝ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A105564.P1693348610325559500

/-! ## A105564.P9999989573002147671

`n-round(n/sqrt(sqrt(sqrt(7))))%81`
-/

namespace A105564.P9999989573002147671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (Real.sqrt (Real.sqrt (7 : ℝ))))) 81

end

end A105564.P9999989573002147671

/-! ## A105564.P15304421161092219737

`n-floor((n+1)*acot(root(2, n+1)))`
-/

namespace A105564.P15304421161092219737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) * SequenceMachineLib.acot ((2 : ℝ) ^ (1 / (n + 1 : ℝ)))⌋

end

end A105564.P15304421161092219737

/-! ## A105564.P8069167611461785142

`∑[A105563(n+1)]`
-/

namespace A105564.P8069167611461785142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105564.P8069167611461785142

/-! ## A105564.P14163887796189599379

`∑[val(A050815(n+1), 4)]`
-/

namespace A105564.P14163887796189599379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050815 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105564.P14163887796189599379

/-! ## A105564.P17444053134438587001

`n-∑[A105565(n+1)]`
-/

namespace A105564.P17444053134438587001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105564.P17444053134438587001

/-!
# A105565: a(n) = if (exactly 5 Fibonacci numbers exist with exactly n digits) then 1, otherwise 0.

The programs for A105565, there is no canonical definition to state claims against.
-/

/-! ## A105565.P17548324697568942001

`Δ[A072354(n+1)]%2`
-/

namespace A105565.P17548324697568942001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A105565.P17548324697568942001

/-!
# A105566: Number of blocks of exactly 5 Fibonacci numbers having equal length <= n.

The programs for A105566, there is no canonical definition to state claims against.
-/

/-! ## A105566.P4358769164988764613

`round(n/root(7, 8))`
-/

namespace A105566.P4358769164988764613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (7 : ℝ) ^ (1 / (8 : ℝ)))

end

end A105566.P4358769164988764613

/-! ## A105566.P8024175132024814422

`n-round(n/sinh(sqrt(5)))`
-/

namespace A105566.P8024175132024814422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((n : ℝ) / Real.sinh (Real.sqrt (5 : ℝ)))

end

end A105566.P8024175132024814422

/-! ## A105566.P1228203242760547555

`n-round(n/(sinh(2)+1))`
-/

namespace A105566.P1228203242760547555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((n : ℝ) / (Real.sinh (2 : ℝ) + 1))

end

end A105566.P1228203242760547555

/-! ## A105566.P7513301447804993358

`n-round(n/4*cot(4))`
-/

namespace A105566.P7513301447804993358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (((n : ℚ) / 4 : ℝ) * Real.cot (4 : ℝ))

end

end A105566.P7513301447804993358

/-! ## A105566.P11785254809366804762

`round(n/sqrt(sqrt(sqrt(7))))%81`
-/

namespace A105566.P11785254809366804762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (Real.sqrt (Real.sqrt (7 : ℝ))))) 81

end

end A105566.P11785254809366804762

/-! ## A105566.P5084061252134226174

`floor((n+1)*acot(root(2, n+1)))`
-/

namespace A105566.P5084061252134226174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * SequenceMachineLib.acot ((2 : ℝ) ^ (1 / (n + 1 : ℝ)))⌋

end

end A105566.P5084061252134226174

/-! ## A105566.P13410312480223635934

`∑[A105565(n+1)]`
-/

namespace A105566.P13410312480223635934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105566.P13410312480223635934

/-! ## A105566.P13596670103228691305

`n-A105564(n+1)`
-/

namespace A105566.P13596670103228691305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105564 (n + 1)

end

end A105566.P13596670103228691305

/-! ## A105566.P1024762176908056906

`∑[A050815(n+1)%2]`
-/

namespace A105566.P1024762176908056906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050815 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105566.P1024762176908056906

/-! ## A105566.P9654714022308991637

`n-∑[A105563(n+1)]`
-/

namespace A105566.P9654714022308991637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105566.P9654714022308991637

/-!
# A105567: Moebius transform of multiplication table, read by antidiagonals.

The programs for A105567, the canonical program `A105567.P7168201992979642422` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105567 has offset 0).

The definition of A105567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105567.P7168201992979642422

`A092152(A157528(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A105567

/-- `A092152(A157528(n))` -/
def P7168201992979642422.Spec : Prop :=
  ∀ n, P7168201992979642422.a n = A105567 n

theorem P7168201992979642422.correct : P7168201992979642422.Spec := by
  intro n
  simp only [A105567]

end A105567

/-! ## A105567.P12321398676052754631

`A092152(A004277(A004247(n)))`
-/

namespace A105567.P12321398676052754631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A004277 (A004247 n).toNat).toNat

end

end A105567.P12321398676052754631

namespace A105567

/-- `A092152(A004277(A004247(n)))` -/
def P12321398676052754631.Spec : Prop :=
  ∀ n, P12321398676052754631.a n = A105567 n

end A105567

/-! ## A105567.P1235906885452517734

`A092152(A065190(A130154(n+1)))`
-/

namespace A105567.P1235906885452517734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A065190 (A130154 (n + 1)).toNat).toNat

end

end A105567.P1235906885452517734

namespace A105567

/-- `A092152(A065190(A130154(n+1)))` -/
def P1235906885452517734.Spec : Prop :=
  ∀ n, P1235906885452517734.a n = A105567 n

end A105567

/-! ## A105567.P9151814652227631002

`A092152(A130154(n+1)-log2(A154325(n)))`
-/

namespace A105567.P9151814652227631002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (SequenceMachineLib.roundAway ((A130154 (n + 1) : ℝ) - Real.logb 2 (A154325 n : ℝ))).toNat

end

end A105567.P9151814652227631002

namespace A105567

/-- `A092152(A130154(n+1)-log2(A154325(n)))` -/
def P9151814652227631002.Spec : Prop :=
  ∀ n, P9151814652227631002.a n = A105567 n

end A105567

/-! ## A105567.P2422966040107073526

`A092152(A130154(n+1)+1-A154325(n))`
-/

namespace A105567.P2422966040107073526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A130154 (n + 1) + (1 - A154325 n)).toNat

end

end A105567.P2422966040107073526

namespace A105567

/-- `A092152(A130154(n+1)+1-A154325(n))` -/
def P2422966040107073526.Spec : Prop :=
  ∀ n, P2422966040107073526.a n = A105567 n

end A105567

/-!
# A105570: Nonsquarefree numbers in place: a(n) = n if n is not squarefree, 0 otherwise.

The programs for A105570, the canonical program `A105570.P6688953478002029428` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105570 has offset 0).

The definition of A105570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105570.P6688953478002029428

`lcm(n, -1%∏{e}[n, #])`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105570

/-- `lcm(n, -1%∏{e}[n, #])` -/
def P6688953478002029428.Spec : Prop :=
  ∀ n, (P6688953478002029428.a n : ℤ) = A105570 n

theorem P6688953478002029428.correct : P6688953478002029428.Spec := by
  intro n
  simp only [A105570]

end A105570

/-! ## A105570.P7467453318463273134

`n*(1-char[∏{p}[n, #]])`
-/

namespace A105570.P7467453318463273134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A105570.P7467453318463273134

namespace A105570

/-- `n*(1-char[∏{p}[n, #]])` -/
def P7467453318463273134.Spec : Prop :=
  ∀ n, P7467453318463273134.a n = A105570 n

end A105570

/-! ## A105570.P16635739778771510011

`n*char[lt[1, ∏{e}[n, #]]]`
-/

namespace A105570.P16635739778771510011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P16635739778771510011

namespace A105570

/-- `n*char[lt[1, ∏{e}[n, #]]]` -/
def P16635739778771510011.Spec : Prop :=
  ∀ n, (P16635739778771510011.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P17161074666001451928

`n*char[A013929(n+1)]`
-/

namespace A105570.P17161074666001451928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A105570.P17161074666001451928

namespace A105570

/-- `n*char[A013929(n+1)]` -/
def P17161074666001451928.Spec : Prop :=
  ∀ n, (P17161074666001451928.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P1574439228558994104

`n*char[A072905(n+1)]`
-/

namespace A105570.P1574439228558994104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A105570.P1574439228558994104

namespace A105570

/-- `n*char[A072905(n+1)]` -/
def P1574439228558994104.Spec : Prop :=
  ∀ n, (P1574439228558994104.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P2580365927554311039

`n*A000040(∏{e}[n, #])%2`
-/

namespace A105570.P2580365927554311039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000040 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A105570.P2580365927554311039

namespace A105570

/-- `n*A000040(∏{e}[n, #])%2` -/
def P2580365927554311039.Spec : Prop :=
  ∀ n, P2580365927554311039.a n = A105570 n

end A105570

/-! ## A105570.P1694608811228943100

`n*char[comp[A005117(n+1)]]`
-/

namespace A105570.P1694608811228943100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P1694608811228943100

namespace A105570

/-- `n*char[comp[A005117(n+1)]]` -/
def P1694608811228943100.Spec : Prop :=
  ∀ n, (P1694608811228943100.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P1750445432007988286

`n*char[comp[A007947(n+1)]]`
-/

namespace A105570.P1750445432007988286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P1750445432007988286

namespace A105570

/-- `n*char[comp[A007947(n+1)]]` -/
def P1750445432007988286.Spec : Prop :=
  ∀ n, (P1750445432007988286.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P2264385425984421240

`n*char[comp[A055231(n+1)]]`
-/

namespace A105570.P2264385425984421240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P2264385425984421240

namespace A105570

/-- `n*char[comp[A055231(n+1)]]` -/
def P2264385425984421240.Spec : Prop :=
  ∀ n, (P2264385425984421240.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P8370927982506234566

`n*(1-char[A007913(n+1)])`
-/

namespace A105570.P8370927982506234566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P8370927982506234566

namespace A105570

/-- `n*(1-char[A007913(n+1)])` -/
def P8370927982506234566.Spec : Prop :=
  ∀ n, P8370927982506234566.a n = A105570 n

end A105570

/-! ## A105570.P5701084765117215803

`n*(1-char[A056552(n+1)])`
-/

namespace A105570.P5701084765117215803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P5701084765117215803

namespace A105570

/-- `n*(1-char[A056552(n+1)])` -/
def P5701084765117215803.Spec : Prop :=
  ∀ n, P5701084765117215803.a n = A105570 n

end A105570

/-! ## A105570.P9267162548320076453

`n*(1-char[A056554(n+1)])`
-/

namespace A105570.P9267162548320076453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P9267162548320076453

namespace A105570

/-- `n*(1-char[A056554(n+1)])` -/
def P9267162548320076453.Spec : Prop :=
  ∀ n, P9267162548320076453.a n = A105570 n

end A105570

/-! ## A105570.P12212576676721605361

`n*(1-char[A067535(n+1)])`
-/

namespace A105570.P12212576676721605361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P12212576676721605361

namespace A105570

/-- `n*(1-char[A067535(n+1)])` -/
def P12212576676721605361.Spec : Prop :=
  ∀ n, P12212576676721605361.a n = A105570 n

end A105570

/-! ## A105570.P11542426455863978214

`n*(1-char[A070321(n+1)])`
-/

namespace A105570.P11542426455863978214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P11542426455863978214

namespace A105570

/-- `n*(1-char[A070321(n+1)])` -/
def P11542426455863978214.Spec : Prop :=
  ∀ n, P11542426455863978214.a n = A105570 n

end A105570

/-! ## A105570.P12250449837597862782

`n*(1-char[A072775(n+1)])`
-/

namespace A105570.P12250449837597862782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P12250449837597862782

namespace A105570

/-- `n*(1-char[A072775(n+1)])` -/
def P12250449837597862782.Spec : Prop :=
  ∀ n, P12250449837597862782.a n = A105570 n

end A105570

/-! ## A105570.P12979613140303403960

`n*(1-char[A076734(n+1)])`
-/

namespace A105570.P12979613140303403960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P12979613140303403960

namespace A105570

/-- `n*(1-char[A076734(n+1)])` -/
def P12979613140303403960.Spec : Prop :=
  ∀ n, P12979613140303403960.a n = A105570 n

end A105570

/-! ## A105570.P11566262671992060610

`n*(1-char[A081213(n+1)])`
-/

namespace A105570.P11566262671992060610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081213 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A105570.P11566262671992060610

namespace A105570

/-- `n*(1-char[A081213(n+1)])` -/
def P11566262671992060610.Spec : Prop :=
  ∀ n, P11566262671992060610.a n = A105570 n

end A105570

/-! ## A105570.P8505480346721706691

`n*char[A088610(2*(n+1))]`
-/

namespace A105570.P8505480346721706691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A105570.P8505480346721706691

namespace A105570

/-- `n*char[A088610(2*(n+1))]` -/
def P8505480346721706691.Spec : Prop :=
  ∀ n, (P8505480346721706691.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P6366848825052717236

`n*char[lt[1, A005361(n+1)]+1]`
-/

namespace A105570.P6366848825052717236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P6366848825052717236

namespace A105570

/-- `n*char[lt[1, A005361(n+1)]+1]` -/
def P6366848825052717236.Spec : Prop :=
  ∀ n, (P6366848825052717236.a n : ℤ) = A105570 n

end A105570

/-! ## A105570.P520204698258476857

`n*char[lt[1, A046951(n+1)]+1]`
-/

namespace A105570.P520204698258476857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A105570.P520204698258476857

namespace A105570

/-- `n*char[lt[1, A046951(n+1)]+1]` -/
def P520204698258476857.Spec : Prop :=
  ∀ n, (P520204698258476857.a n : ℤ) = A105570 n

end A105570

/-!
# A105571: Numbers m such that m - 2 and m + 2 are semiprimes.

The programs for A105571, the canonical program `A105571.P15513406740067095961` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105571 has offset 1).

The definition of A105571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105571.P15513406740067095961

`A175648(n+1)+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A105571

/-- `A175648(n+1)+2` -/
def P15513406740067095961.Spec : Prop :=
  ∀ n, P15513406740067095961.a n = A105571 (n + 1)

theorem P15513406740067095961.correct : P15513406740067095961.Spec := by
  intro n
  simp only [A105571, Nat.add_sub_cancel]

end A105571

/-! ## A105571.P9338276568578296779

`∩[A001358(n+1), A175766(n+1)]-2`
-/

namespace A105571.P9338276568578296779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A105571.P9338276568578296779

namespace A105571

/-- `∩[A001358(n+1), A175766(n+1)]-2` -/
def P9338276568578296779.Spec : Prop :=
  ∀ n, P9338276568578296779.a n = A105571 (n + 1)

end A105571

/-! ## A105571.P11607207581736729721

`∩[A175766(n+1), A176540(n+1)]-2`
-/

namespace A105571.P11607207581736729721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A105571.P11607207581736729721

namespace A105571

/-- `∩[A175766(n+1), A176540(n+1)]-2` -/
def P11607207581736729721.Spec : Prop :=
  ∀ n, P11607207581736729721.a n = A105571 (n + 1)

end A105571

/-! ## A105571.P8285574677209166430

`A175664(n+1)-2`
-/

namespace A105571.P8285574677209166430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1) - 2

end

end A105571.P8285574677209166430

namespace A105571

/-- `A175664(n+1)-2` -/
def P8285574677209166430.Spec : Prop :=
  ∀ n, P8285574677209166430.a n = A105571 (n + 1)

end A105571

/-! ## A105571.P3810668098351895715

`A009056(A175648(n+1))`
-/

namespace A105571.P3810668098351895715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A175648 (n + 1)).toNat

end

end A105571.P3810668098351895715

namespace A105571

/-- `A009056(A175648(n+1))` -/
def P3810668098351895715.Spec : Prop :=
  ∀ n, P3810668098351895715.a n = A105571 (n + 1)

end A105571

/-! ## A105571.P13324029826235897559

`A023444(A175664(n+1))`
-/

namespace A105571.P13324029826235897559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A175664 (n + 1)).toNat

end

end A105571.P13324029826235897559

namespace A105571

/-- `A023444(A175664(n+1))` -/
def P13324029826235897559.Spec : Prop :=
  ∀ n, P13324029826235897559.a n = A105571 (n + 1)

end A105571

/-! ## A105571.P15313706539841122728

`A023446(A175664(n+1)+2)`
-/

namespace A105571.P15313706539841122728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A175664 (n + 1) + 2).toNat

end

end A105571.P15313706539841122728

namespace A105571

/-- `A023446(A175664(n+1)+2)` -/
def P15313706539841122728.Spec : Prop :=
  ∀ n, P15313706539841122728.a n = A105571 (n + 1)

end A105571

/-!
# A105572: Numbers m such that m-3 and m+3 have 3 prime factors.

The programs for A105572, there is no canonical definition to state claims against.
-/

/-! ## A105572.P12620036461230804957

`A068952(2*(n+2))-A067855(n)`
-/

namespace A105572.P12620036461230804957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068952 (2 * (n + 2)) - A067855 n

end

end A105572.P12620036461230804957

/-!
# A105573: Numbers m such that m-4 and m+4 have 4 prime factors.

The programs for A105573, there is no canonical definition to state claims against.
-/

/-! ## A105573.P16066341433061942633

`4*A124936(A330929(n+1))`
-/

namespace A105573.P16066341433061942633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A124936 (A330929 (n + 1)).toNat

end

end A105573.P16066341433061942633

/-!
# A105574: a(1) = 2; for n > 1, a(n) is the prime whose index is the least prime factor of n.

The programs for A105574, there is no canonical definition to state claims against.
-/

/-! ## A105574.P6314938464984193449

`A000040(A020639(n+1))`
-/

namespace A105574.P6314938464984193449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020639 (n + 1)).toNat

end

end A105574.P6314938464984193449

/-! ## A105574.P7264130593403962881

`A105562(A028233(n+1))`
-/

namespace A105574.P7264130593403962881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (A028233 (n + 1)).toNat

end

end A105574.P7264130593403962881

/-! ## A105574.P4855331791520727363

`A105562(A068794(n+1))`
-/

namespace A105574.P4855331791520727363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (A068794 (n + 1)).toNat

end

end A105574.P4855331791520727363

/-! ## A105574.P14418815815724309891

`A105562(A304181(n+1))`
-/

namespace A105574.P14418815815724309891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (A304181 (n + 1)).toNat

end

end A105574.P14418815815724309891

/-! ## A105574.P17028438034923312085

`A105562(A323130(n+1))`
-/

namespace A105574.P17028438034923312085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (A323130 (n + 1)).toNat

end

end A105574.P17028438034923312085

/-! ## A105574.P16104468841984056173

`A000040(sqrt(A088377(n+1)))`
-/

namespace A105574.P16104468841984056173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A088377 (n + 1) : ℝ))).toNat

end

end A105574.P16104468841984056173

/-! ## A105574.P1631207878906779095

`A008578(A020639(n+1)+1)`
-/

namespace A105574.P1631207878906779095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A020639 (n + 1) + 1).toNat

end

end A105574.P1631207878906779095

/-! ## A105574.P13951969176000933018

`A182986(A020639(n+1)+1)`
-/

namespace A105574.P13951969176000933018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A020639 (n + 1) + 1).toNat

end

end A105574.P13951969176000933018

/-! ## A105574.P2225085937116795949

`A158611(A020639(n+1)+2)`
-/

namespace A105574.P2225085937116795949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A020639 (n + 1) + 2).toNat

end

end A105574.P2225085937116795949

/-! ## A105574.P15431796967997645380

`A008578(A061228(n+1)-n)`
-/

namespace A105574.P15431796967997645380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061228 (n + 1) - (n : ℤ)).toNat

end

end A105574.P15431796967997645380

/-! ## A105574.P16077433938078085265

`∑{d}[A020639(n+1), A007444(#)]`
-/

namespace A105574.P16077433938078085265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A105574.P16077433938078085265

/-! ## A105574.P10901316202750725665

`A001747(A020639(n+1)+1)/2`
-/

namespace A105574.P10901316202750725665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A020639 (n + 1) + 1).toNat : ℚ) / 2

end

end A105574.P10901316202750725665

/-! ## A105574.P1565783831421251729

`A000040(A061228(n+1)-(n+1))`
-/

namespace A105574.P1565783831421251729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061228 (n + 1) - (n + 1 : ℤ)).toNat

end

end A105574.P1565783831421251729

/-! ## A105574.P17706823933491982821

`A000040((n+1)/A032742(n+1))`
-/

namespace A105574.P17706823933491982821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A105574.P17706823933491982821

/-! ## A105574.P3099560785448427711

`A000040(A285109(n+1)/(n+1))`
-/

namespace A105574.P3099560785448427711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A285109 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A105574.P3099560785448427711

/-! ## A105574.P11567508365828878634

`A006093(A020639(∏{p}[n+1, #]))+1`
-/

namespace A105574.P11567508365828878634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + 1

end

end A105574.P11567508365828878634

/-! ## A105574.P12296157084745122598

`A000040(A006530(A074828(n+1)))`
-/

namespace A105574.P12296157084745122598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (A074828 (n + 1)).toNat).toNat

end

end A105574.P12296157084745122598

/-! ## A105574.P11395259154024195739

`A000040(A079068(A117367(n+1)))`
-/

namespace A105574.P11395259154024195739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079068 (A117367 (n + 1)).toNat).toNat

end

end A105574.P11395259154024195739

/-! ## A105574.P11192278180170743973

`A000040(A223490(A007947(n+1)))`
-/

namespace A105574.P11192278180170743973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A223490 (A007947 (n + 1)).toNat).toNat

end

end A105574.P11192278180170743973

/-!
# A105575: Largest primes < numbers of the form 6k (duplicates removed).

The programs for A105575, there is no canonical definition to state claims against.
-/

/-! ## A105575.P10165273433304496646

`A067775(n+2)`
-/

namespace A105575.P10165273433304496646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 2)

end

end A105575.P10165273433304496646

/-! ## A105575.P17311415630462340984

`A141427(n+2)+1`
-/

namespace A105575.P17311415630462340984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141427 (n + 2) + 1

end

end A105575.P17311415630462340984

/-! ## A105575.P3424600812908648311

`A164383(n+2)-4`
-/

namespace A105575.P3424600812908648311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164383 (n + 2) - 4

end

end A105575.P3424600812908648311

/-! ## A105575.P2681182833107907756

`record[p?[A263824(n+1)]]`
-/

namespace A105575.P2681182833107907756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105575.P2681182833107907756

/-! ## A105575.P4695675613174877560

`record[p?[A204237(n+2)]]`
-/

namespace A105575.P4695675613174877560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204237 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105575.P4695675613174877560

/-! ## A105575.P530653408408408558

`p?[A007921(n+1)-2]`
-/

namespace A105575.P530653408408408558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105575.P530653408408408558

/-! ## A105575.P13762110027060600589

`p?[A168064(n+1)-2]`
-/

namespace A105575.P13762110027060600589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168064 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105575.P13762110027060600589

/-! ## A105575.P6052926766600068840

`p?[A168079(n+1)-2]`
-/

namespace A105575.P6052926766600068840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168079 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105575.P6052926766600068840

/-! ## A105575.P1711900653816936843

`p?[A264720(n+1)-2]`
-/

namespace A105575.P1711900653816936843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105575.P1711900653816936843

/-! ## A105575.P2217278017086188421

`p?[A308833(n+1)-2]`
-/

namespace A105575.P2217278017086188421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105575.P2217278017086188421

/-!
# A105576: a(n) = 2*a(n-1) - 3*a(n-2) + 2*a(n-3) with a(0) = 3, a(1) = 4, a(2) = 0.

The programs for A105576, the canonical program `A105576.P7778886140612287911` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105576 has offset 0).

The definition of A105576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A105576.P7778886140612287911`, by `A105576.P7778886140612287911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105576.P7778886140612287911

`2*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=4, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105576

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P7778886140612287911.Spec : Prop :=
  ∀ n, P7778886140612287911.a n = A105576 n

theorem P7778886140612287911.correct : P7778886140612287911.Spec := by
  intro n
  simp only [A105576]

end A105576

/-! ## A105576.P1721909533225827523

`1+A107920(n)+2*A107920(n+1)`
-/

namespace A105576.P1721909533225827523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A107920 n + 2 * A107920 (n + 1)

end

end A105576.P1721909533225827523

namespace A105576

/-- `1+A107920(n)+2*A107920(n+1)` -/
def P1721909533225827523.Spec : Prop :=
  ∀ n, P1721909533225827523.a n = A105576 n

end A105576

/-! ## A105576.P13267817931997027188

`a(n-1)+2*(1-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A105576.P13267817931997027188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + 2 * (1 - a (n - 2))

end

end A105576.P13267817931997027188

namespace A105576

/-- `a(n-1)+2*(1-a(n-2))` -/
def P13267817931997027188.Spec : Prop :=
  ∀ n, P13267817931997027188.a n = A105576 n

end A105576

/-! ## A105576.P10998153934310642660

`a(n-1)-2*(a(n-2)-1)` with `a(0)=3, a(1)=4`
-/

namespace A105576.P10998153934310642660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - 2 * (a (n - 2) - 1)

end

end A105576.P10998153934310642660

namespace A105576

/-- `a(n-1)-2*(a(n-2)-1)` -/
def P10998153934310642660.Spec : Prop :=
  ∀ n, P10998153934310642660.a n = A105576 n

end A105576

/-! ## A105576.P6857676422846321199

`a(n-1)+2-(a(n-2)+a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A105576.P6857676422846321199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (2 - (a (n - 2) + a (n - 2)))

end

end A105576.P6857676422846321199

namespace A105576

/-- `a(n-1)+2-(a(n-2)+a(n-2))` -/
def P6857676422846321199.Spec : Prop :=
  ∀ n, P6857676422846321199.a n = A105576 n

end A105576

/-! ## A105576.P12078102792346346536

`2-(a(n-2)-(a(n-1)-a(n-2)))` with `a(0)=3, a(1)=4`
-/

namespace A105576.P12078102792346346536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  2 - (a (n - 2) - (a (n - 1) - a (n - 2)))

end

end A105576.P12078102792346346536

namespace A105576

/-- `2-(a(n-2)-(a(n-1)-a(n-2)))` -/
def P12078102792346346536.Spec : Prop :=
  ∀ n, P12078102792346346536.a n = A105576 n

end A105576

/-! ## A105576.P9704502167437331158

`A105578(n)+∑[A002249(n)]`
-/

namespace A105576.P9704502167437331158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105576.P9704502167437331158

namespace A105576

/-- `A105578(n)+∑[A002249(n)]` -/
def P9704502167437331158.Spec : Prop :=
  ∀ n, P9704502167437331158.a n = A105576 n

end A105576

/-! ## A105576.P11487588424772661726

`A105577(n)-A105225(n+2)`
-/

namespace A105576.P11487588424772661726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 n - A105225 (n + 2)

end

end A105576.P11487588424772661726

namespace A105576

/-- `A105577(n)-A105225(n+2)` -/
def P11487588424772661726.Spec : Prop :=
  ∀ n, P11487588424772661726.a n = A105576 n

end A105576

/-! ## A105576.P1853067893339732328

`A078020(n)+2*A077876(n)`
-/

namespace A105576.P1853067893339732328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n + 2 * A077876 n

end

end A105576.P1853067893339732328

namespace A105576

/-- `A078020(n)+2*A077876(n)` -/
def P1853067893339732328.Spec : Prop :=
  ∀ n, P1853067893339732328.a n = A105576 n

end A105576

/-! ## A105576.P17144558780040357117

`2*A105578(n)-Δ[A078020(n)]`
-/

namespace A105576.P17144558780040357117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105578 n - (f1 (n + 1) - f1 n)

end

end A105576.P17144558780040357117

namespace A105576

/-- `2*A105578(n)-Δ[A078020(n)]` -/
def P17144558780040357117.Spec : Prop :=
  ∀ n, P17144558780040357117.a n = A105576 n

end A105576

/-! ## A105576.P2117345906140995078

`A077876(n+1)+A107920(n)+A077876(n)`
-/

namespace A105576.P2117345906140995078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (n + 1) + (A107920 n + A077876 n)

end

end A105576.P2117345906140995078

namespace A105576

/-- `A077876(n+1)+A107920(n)+A077876(n)` -/
def P2117345906140995078.Spec : Prop :=
  ∀ n, P2117345906140995078.a n = A105576 n

end A105576

/-! ## A105576.P3732643553216216713

`A105579(n+1)+A078020(n)-A105578(n+1)`
-/

namespace A105576.P3732643553216216713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 (n + 1) + (A078020 n - A105578 (n + 1))

end

end A105576.P3732643553216216713

namespace A105576

/-- `A105579(n+1)+A078020(n)-A105578(n+1)` -/
def P3732643553216216713.Spec : Prop :=
  ∀ n, P3732643553216216713.a n = A105576 n

end A105576

/-! ## A105576.P6251122157704403439

`A105577(n+1)-(A107920(n+1)+A105578(n))`
-/

namespace A105576.P6251122157704403439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 (n + 1) - (A107920 (n + 1) + A105578 n)

end

end A105576.P6251122157704403439

namespace A105576

/-- `A105577(n+1)-(A107920(n+1)+A105578(n))` -/
def P6251122157704403439.Spec : Prop :=
  ∀ n, P6251122157704403439.a n = A105576 n

end A105576

/-! ## A105576.P2293043213715574707

`A105579(n+1)+A107920(n+1)-A105578(n)`
-/

namespace A105576.P2293043213715574707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 (n + 1) + (A107920 (n + 1) - A105578 n)

end

end A105576.P2293043213715574707

namespace A105576

/-- `A105579(n+1)+A107920(n+1)-A105578(n)` -/
def P2293043213715574707.Spec : Prop :=
  ∀ n, P2293043213715574707.a n = A105576 n

end A105576

/-!
# A105577: a(n) = 2*a(n-1) - 3*a(n-2) + 2*a(n-3) with a(0) = 1, a(1) = 5, a(2) = 6.

The programs for A105577, the canonical program `A105577.P224682160616548212` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105577 has offset 0).

The definition of A105577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A105577.P224682160616548212`, by `A105577.P224682160616548212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105577.P224682160616548212

`2*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105577

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P224682160616548212.Spec : Prop :=
  ∀ n, P224682160616548212.a n = A105577 n

theorem P224682160616548212.correct : P224682160616548212.Spec := by
  intro n
  simp only [A105577]

end A105577

/-! ## A105577.P11434879606752303398

`a(n-1)-2*a(n-2)+3` with `a(0)=1, a(1)=5`
-/

namespace A105577.P11434879606752303398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 3

end

end A105577.P11434879606752303398

namespace A105577

/-- `a(n-1)-2*a(n-2)+3` -/
def P11434879606752303398.Spec : Prop :=
  ∀ n, P11434879606752303398.a n = A105577 n

end A105577

/-! ## A105577.P2576853489279484651

`3-(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A105577.P2576853489279484651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 - (2 * a (n - 2) - a (n - 1))

end

end A105577.P2576853489279484651

namespace A105577

/-- `3-(2*a(n-2)-a(n-1))` -/
def P2576853489279484651.Spec : Prop :=
  ∀ n, P2576853489279484651.a n = A105577 n

end A105577

/-! ## A105577.P4569942611429304634

`a(n-1)+3-(a(n-2)+a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A105577.P4569942611429304634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (3 - (a (n - 2) + a (n - 2)))

end

end A105577.P4569942611429304634

namespace A105577

/-- `a(n-1)+3-(a(n-2)+a(n-2))` -/
def P4569942611429304634.Spec : Prop :=
  ∀ n, P4569942611429304634.a n = A105577 n

end A105577

/-! ## A105577.P12505945610272261539

`3-(a(n-2)-(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`
-/

namespace A105577.P12505945610272261539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 - (a (n - 2) - (a (n - 1) - a (n - 2)))

end

end A105577.P12505945610272261539

namespace A105577

/-- `3-(a(n-2)-(a(n-1)-a(n-2)))` -/
def P12505945610272261539.Spec : Prop :=
  ∀ n, P12505945610272261539.a n = A105577 n

end A105577

/-! ## A105577.P12234983460681561980

`A105579(n)-A078020(n+1)`
-/

namespace A105577.P12234983460681561980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 n - A078020 (n + 1)

end

end A105577.P12234983460681561980

namespace A105577

/-- `A105579(n)-A078020(n+1)` -/
def P12234983460681561980.Spec : Prop :=
  ∀ n, P12234983460681561980.a n = A105577 n

end A105577

/-! ## A105577.P16866232679791764294

`A105579(n)+2*A107920(n)`
-/

namespace A105577.P16866232679791764294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 n + 2 * A107920 n

end

end A105577.P16866232679791764294

namespace A105577

/-- `A105579(n)+2*A107920(n)` -/
def P16866232679791764294.Spec : Prop :=
  ∀ n, P16866232679791764294.a n = A105577 n

end A105577

/-! ## A105577.P1979366001719481925

`A105578(n)+A105579(n)-A105225(n)`
-/

namespace A105577.P1979366001719481925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n + (A105579 n - A105225 n)

end

end A105577.P1979366001719481925

namespace A105577

/-- `A105578(n)+A105579(n)-A105225(n)` -/
def P1979366001719481925.Spec : Prop :=
  ∀ n, P1979366001719481925.a n = A105577 n

end A105577

/-! ## A105577.P4761729333270790692

`A105576(n)+A105225(n+2)`
-/

namespace A105577.P4761729333270790692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105576 n + A105225 (n + 2)

end

end A105577.P4761729333270790692

namespace A105577

/-- `A105576(n)+A105225(n+2)` -/
def P4761729333270790692.Spec : Prop :=
  ∀ n, P4761729333270790692.a n = A105577 n

end A105577

/-! ## A105577.P17156909160084539184

`3*A077876(n)-A002249(n)`
-/

namespace A105577.P17156909160084539184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077876 n - A002249 n

end

end A105577.P17156909160084539184

namespace A105577

/-- `3*A077876(n)-A002249(n)` -/
def P17156909160084539184.Spec : Prop :=
  ∀ n, P17156909160084539184.a n = A105577 n

end A105577

/-!
# A105578: a(n+3) = 2a(n+2) - 3a(n+1) + 2a(n); a(0) = 1, a(1) = 1, a(2) = 0.

The programs for A105578, the canonical program `A105578.P6058756074861820168` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105578 has offset 0).

The definition of A105578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105578.P6058756074861820168

`2*(1-a(n-3))-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105578

/-- `2*(1-a(n-3))-a(n-2)` -/
def P6058756074861820168.Spec : Prop :=
  ∀ n, P6058756074861820168.a n = A105578 n

theorem P6058756074861820168.correct : P6058756074861820168.Spec := by
  intro n
  simp only [A105578]

end A105578

/-! ## A105578.P16055554390320356255

`1-(a(n-2)+a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A105578.P16055554390320356255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A105578.P16055554390320356255

namespace A105578

/-- `1-(a(n-2)+a(n-2)-a(n-1))` -/
def P16055554390320356255.Spec : Prop :=
  ∀ n, P16055554390320356255.a n = A105578 n

end A105578

/-! ## A105578.P4801413817310648895

`1-(a(n-2)-a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105578.P4801413817310648895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) - a (n - 1)) - a (n - 2)

end

end A105578.P4801413817310648895

namespace A105578

/-- `1-(a(n-2)-a(n-1))-a(n-2)` -/
def P4801413817310648895.Spec : Prop :=
  ∀ n, P4801413817310648895.a n = A105578 n

end A105578

/-! ## A105578.P670720691770402111

`1+a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105578.P670720691770402111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + (a (n - 1) - 2 * a (n - 2))

end

end A105578.P670720691770402111

namespace A105578

/-- `1+a(n-1)-2*a(n-2)` -/
def P670720691770402111.Spec : Prop :=
  ∀ n, P670720691770402111.a n = A105578 n

end A105578

/-! ## A105578.P6164073187585392232

`1-(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A105578.P6164073187585392232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (2 * a (n - 2) - a (n - 1))

end

end A105578.P6164073187585392232

namespace A105578

/-- `1-(2*a(n-2)-a(n-1))` -/
def P6164073187585392232.Spec : Prop :=
  ∀ n, P6164073187585392232.a n = A105578 n

end A105578

/-! ## A105578.P9341059538266237272

`a(n-1)-A107920(n-1)` with `a(0)=1`
-/

namespace A105578.P9341059538266237272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A107920 (n - 1)

end

end A105578.P9341059538266237272

namespace A105578

/-- `a(n-1)-A107920(n-1)` -/
def P9341059538266237272.Spec : Prop :=
  ∀ n, P9341059538266237272.a n = A105578 n

end A105578

/-! ## A105578.P12340845713242249224

`A107920(n)+1-∑[A107920(n)]`
-/

namespace A105578.P12340845713242249224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105578.P12340845713242249224

namespace A105578

/-- `A107920(n)+1-∑[A107920(n)]` -/
def P12340845713242249224.Spec : Prop :=
  ∀ n, P12340845713242249224.a n = A105578 n

end A105578

/-! ## A105578.P15184541525821702103

`∑[ceil(A078020(n)/2)]`
-/

namespace A105578.P15184541525821702103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078020 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105578.P15184541525821702103

namespace A105578

/-- `∑[ceil(A078020(n)/2)]` -/
def P15184541525821702103.Spec : Prop :=
  ∀ n, P15184541525821702103.a n = A105578 n

end A105578

/-! ## A105578.P13366773583296485997

`ceil(A107920(n+1)/2)`
-/

namespace A105578.P13366773583296485997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107920 (n + 1) : ℚ) / 2⌉

end

end A105578.P13366773583296485997

namespace A105578

/-- `ceil(A107920(n+1)/2)` -/
def P13366773583296485997.Spec : Prop :=
  ∀ n, P13366773583296485997.a n = A105578 n

end A105578

/-! ## A105578.P11862066295246293504

`(A107920(n+1)+A062157(2*n+1))/2`
-/

namespace A105578.P11862066295246293504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 (n + 1) + A062157 (2 * n + 1) : ℚ) / 2

end

end A105578.P11862066295246293504

namespace A105578

/-- `(A107920(n+1)+A062157(2*n+1))/2` -/
def P11862066295246293504.Spec : Prop :=
  ∀ n, P11862066295246293504.a n = (A105578 n : ℚ)

end A105578

/-! ## A105578.P14468550278854291629

`(A165326(2*n+1)+A107920(n+1))/2`
-/

namespace A105578.P14468550278854291629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165326 (2 * n + 1) + A107920 (n + 1) : ℚ) / 2

end

end A105578.P14468550278854291629

namespace A105578

/-- `(A165326(2*n+1)+A107920(n+1))/2` -/
def P14468550278854291629.Spec : Prop :=
  ∀ n, P14468550278854291629.a n = (A105578 n : ℚ)

end A105578

/-! ## A105578.P9153847929745471922

`A105225(n)-A078020(n+1)`
-/

namespace A105578.P9153847929745471922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 n - A078020 (n + 1)

end

end A105578.P9153847929745471922

namespace A105578

/-- `A105225(n)-A078020(n+1)` -/
def P9153847929745471922.Spec : Prop :=
  ∀ n, P9153847929745471922.a n = A105578 n

end A105578

/-! ## A105578.P15656464980956189681

`A105225(n)+2*A107920(n)`
-/

namespace A105578.P15656464980956189681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 n + 2 * A107920 n

end

end A105578.P15656464980956189681

namespace A105578

/-- `A105225(n)+2*A107920(n)` -/
def P15656464980956189681.Spec : Prop :=
  ∀ n, P15656464980956189681.a n = A105578 n

end A105578

/-! ## A105578.P6130216688731491005

`4*a(n-1)-A105579(n)` with `a(0)=1`
-/

namespace A105578.P6130216688731491005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A105579 n

end

end A105578.P6130216688731491005

namespace A105578

/-- `4*a(n-1)-A105579(n)` -/
def P6130216688731491005.Spec : Prop :=
  ∀ n, P6130216688731491005.a n = A105578 n

end A105578

/-! ## A105578.P8985517734993829436

`A077876(n)-A107920(n)`
-/

namespace A105578.P8985517734993829436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 n - A107920 n

end

end A105578.P8985517734993829436

namespace A105578

/-- `A077876(n)-A107920(n)` -/
def P8985517734993829436.Spec : Prop :=
  ∀ n, P8985517734993829436.a n = A105578 n

end A105578

/-! ## A105578.P4990698608516767445

`A105225(n)+A105577(n)-A105579(n)`
-/

namespace A105578.P4990698608516767445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 n + (A105577 n - A105579 n)

end

end A105578.P4990698608516767445

namespace A105578

/-- `A105225(n)+A105577(n)-A105579(n)` -/
def P4990698608516767445.Spec : Prop :=
  ∀ n, P4990698608516767445.a n = A105578 n

end A105578

/-! ## A105578.P840850648606276973

`A078020(n+1)+A107920(n)+A077876(n)`
-/

namespace A105578.P840850648606276973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (n + 1) + (A107920 n + A077876 n)

end

end A105578.P840850648606276973

namespace A105578

/-- `A078020(n+1)+A107920(n)+A077876(n)` -/
def P840850648606276973.Spec : Prop :=
  ∀ n, P840850648606276973.a n = A105578 n

end A105578

/-! ## A105578.P14850603679558764864

`A077876(n+1)-A078020(n)`
-/

namespace A105578.P14850603679558764864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (n + 1) - A078020 n

end

end A105578.P14850603679558764864

namespace A105578

/-- `A077876(n+1)-A078020(n)` -/
def P14850603679558764864.Spec : Prop :=
  ∀ n, P14850603679558764864.a n = A105578 n

end A105578

/-!
# A105579: a(n+3) = 2a(n+2) - 3a(n+1) + 2a(n); a(0) = 1, a(1) = 3, a(2) = 4.

The programs for A105579, the canonical program `A105579.P4170235721536417545` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105579 has offset 0).

The definition of A105579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105579.P4170235721536417545

`2*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105579

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P4170235721536417545.Spec : Prop :=
  ∀ n, P4170235721536417545.a n = A105579 n

theorem P4170235721536417545.correct : P4170235721536417545.Spec := by
  intro n
  simp only [A105579]

end A105579

/-! ## A105579.P1085138818629278080

`a(n-1)-2*a(n-2)+3` with `a(0)=1, a(1)=3`
-/

namespace A105579.P1085138818629278080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 3

end

end A105579.P1085138818629278080

namespace A105579

/-- `a(n-1)-2*a(n-2)+3` -/
def P1085138818629278080.Spec : Prop :=
  ∀ n, P1085138818629278080.a n = A105579 n

end A105579

/-! ## A105579.P15440723774192027906

`3-(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A105579.P15440723774192027906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (2 * a (n - 2) - a (n - 1))

end

end A105579.P15440723774192027906

namespace A105579

/-- `3-(2*a(n-2)-a(n-1))` -/
def P15440723774192027906.Spec : Prop :=
  ∀ n, P15440723774192027906.a n = A105579 n

end A105579

/-! ## A105579.P6213227219740363582

`a(n-1)+3-(a(n-2)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A105579.P6213227219740363582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (3 - (a (n - 2) + a (n - 2)))

end

end A105579.P6213227219740363582

namespace A105579

/-- `a(n-1)+3-(a(n-2)+a(n-2))` -/
def P6213227219740363582.Spec : Prop :=
  ∀ n, P6213227219740363582.a n = A105579 n

end A105579

/-! ## A105579.P5457391940099424280

`3-(a(n-2)-(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A105579.P5457391940099424280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (a (n - 2) - (a (n - 1) - a (n - 2)))

end

end A105579.P5457391940099424280

namespace A105579

/-- `3-(a(n-2)-(a(n-1)-a(n-2)))` -/
def P5457391940099424280.Spec : Prop :=
  ∀ n, P5457391940099424280.a n = A105579 n

end A105579

/-! ## A105579.P18110014707144471693

`2-A105225(n)`
-/

namespace A105579.P18110014707144471693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105225 n

end

end A105579.P18110014707144471693

namespace A105579

/-- `2-A105225(n)` -/
def P18110014707144471693.Spec : Prop :=
  ∀ n, P18110014707144471693.a n = A105579 n

end A105579

/-! ## A105579.P14900460730541176070

`A107920(n)+∑[A107920(n)]+1`
-/

namespace A105579.P14900460730541176070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A105579.P14900460730541176070

namespace A105579

/-- `A107920(n)+∑[A107920(n)]+1` -/
def P14900460730541176070.Spec : Prop :=
  ∀ n, P14900460730541176070.a n = A105579 n

end A105579

/-! ## A105579.P589313942421942617

`∑[A002249(abs(1-n))]`
-/

namespace A105579.P589313942421942617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105579.P589313942421942617

namespace A105579

/-- `∑[A002249(abs(1-n))]` -/
def P589313942421942617.Spec : Prop :=
  ∀ n, P589313942421942617.a n = A105579 n

end A105579

/-! ## A105579.P9565737602244702856

`A002249(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A105579.P9565737602244702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002249 (n - 1) + a (n - 1)

end

end A105579.P9565737602244702856

namespace A105579

/-- `A002249(n-1)+a(n-1)` -/
def P9565737602244702856.Spec : Prop :=
  ∀ n, P9565737602244702856.a n = A105579 n

end A105579

/-! ## A105579.P14316594969100678346

`A105577(n)+A078020(n+1)`
-/

namespace A105579.P14316594969100678346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 n + A078020 (n + 1)

end

end A105579.P14316594969100678346

namespace A105579

/-- `A105577(n)+A078020(n+1)` -/
def P14316594969100678346.Spec : Prop :=
  ∀ n, P14316594969100678346.a n = A105579 n

end A105579

/-! ## A105579.P943114588705107855

`A077876(n)+1-A078020(n)`
-/

namespace A105579.P943114588705107855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 n + (1 - A078020 n)

end

end A105579.P943114588705107855

namespace A105579

/-- `A077876(n)+1-A078020(n)` -/
def P943114588705107855.Spec : Prop :=
  ∀ n, P943114588705107855.a n = A105579 n

end A105579

/-! ## A105579.P17974457421830428469

`A105577(n)-2*A107920(n)`
-/

namespace A105579.P17974457421830428469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 n - 2 * A107920 n

end

end A105579.P17974457421830428469

namespace A105579

/-- `A105577(n)-2*A107920(n)` -/
def P17974457421830428469.Spec : Prop :=
  ∀ n, P17974457421830428469.a n = A105579 n

end A105579

/-! ## A105579.P17673061802962178397

`∑[A002249(n)]+1-A002249(n)`
-/

namespace A105579.P17673061802962178397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A002249 n)

end

end A105579.P17673061802962178397

namespace A105579

/-- `∑[A002249(n)]+1-A002249(n)` -/
def P17673061802962178397.Spec : Prop :=
  ∀ n, P17673061802962178397.a n = A105579 n

end A105579

/-! ## A105579.P14263803179985277967

`(3-A002249(n+1))/2`
-/

namespace A105579.P14263803179985277967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A002249 (n + 1) : ℚ) / 2

end

end A105579.P14263803179985277967

namespace A105579

/-- `(3-A002249(n+1))/2` -/
def P14263803179985277967.Spec : Prop :=
  ∀ n, P14263803179985277967.a n = (A105579 n : ℚ)

end A105579

/-!
# A105580: a(n+3) = a(n) - a(n+1) - a(n+2); a(0) = -5, a(1) = 6, a(2) = 0.

The programs for A105580, the canonical program `A105580.P425684970587378099` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105580 has offset 0).

The definition of A105580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105580.P12586921192264584979

`Δ[A077908(n)-Δ[A319200(n)]]`
-/

namespace A105580.P12586921192264584979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077908 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105580.P12586921192264584979

namespace A105580

/-- `Δ[A077908(n)-Δ[A319200(n)]]` -/
def P12586921192264584979.Spec : Prop :=
  ∀ n, P12586921192264584979.a n = A105580 n

end A105580

/-! ## A105580.P7663905683627983663

`A075298(n+2)-∑[A319200(n)]`
-/

namespace A105580.P7663905683627983663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075298 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105580.P7663905683627983663

namespace A105580

/-- `A075298(n+2)-∑[A319200(n)]` -/
def P7663905683627983663.Spec : Prop :=
  ∀ n, P7663905683627983663.a n = A105580 n

end A105580

/-! ## A105580.P425684970587378099

`Δ[A078046(n)]-A057597(n+5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105580

/-- `Δ[A078046(n)]-A057597(n+5)` -/
def P425684970587378099.Spec : Prop :=
  ∀ n, P425684970587378099.a n = A105580 n

theorem P425684970587378099.correct : P425684970587378099.Spec := by
  intro n
  simp only [A105580]

end A105580

/-! ## A105580.P197268493727088369

`A075298(n+2)+A057597(n+1)`
-/

namespace A105580.P197268493727088369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075298 (n + 2) + A057597 (n + 1)

end

end A105580.P197268493727088369

namespace A105580

/-- `A075298(n+2)+A057597(n+1)` -/
def P197268493727088369.Spec : Prop :=
  ∀ n, P197268493727088369.a n = A105580 n

end A105580

/-! ## A105580.P15179597603347601982

`A057597(n+1)-A073145(n+3)`
-/

namespace A105580.P15179597603347601982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 1) - A073145 (n + 3)

end

end A105580.P15179597603347601982

namespace A105580

/-- `A057597(n+1)-A073145(n+3)` -/
def P15179597603347601982.Spec : Prop :=
  ∀ n, P15179597603347601982.a n = A105580 n

end A105580

/-!
# A105581: Primes whose indices are palindromic.

The programs for A105581, there is no canonical definition to state claims against.
-/

/-! ## A105581.P17054256557089888571

`p?[A124231(n+1)]`
-/

namespace A105581.P17054256557089888571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105581.P17054256557089888571

/-! ## A105581.P5658131895980526618

`A000040(A110751(n+1))`
-/

namespace A105581.P5658131895980526618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A110751 (n + 1)).toNat

end

end A105581.P5658131895980526618

/-! ## A105581.P15212341503432231008

`A000040(A002113(n+2))`
-/

namespace A105581.P15212341503432231008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002113 (n + 2)).toNat

end

end A105581.P15212341503432231008

/-! ## A105581.P7127618155193350000

`A000040(∑[A086862(n+1)])`
-/

namespace A105581.P7127618155193350000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105581.P7127618155193350000

/-!
# A105584: Fixed point of the morphism 1 -> 34, 2 -> 32, 3 -> 12, 4 -> 14, starting from a(0) = 1.

The programs for A105584, the canonical program `A105584.P4057579374736803583` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105584 has offset 0).

The definition of A105584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105584.P4057579374736803583

`n%2+2-A020985(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A105584

/-- `n%2+2-A020985(n)` -/
def P4057579374736803583.Spec : Prop :=
  ∀ n, P4057579374736803583.a n = A105584 n

theorem P4057579374736803583.correct : P4057579374736803583.Spec := by
  intro n
  simp only [A105584]

end A105584

/-! ## A105584.P14933277260965328815

`A010693(n)-A020985(n)`
-/

namespace A105584.P14933277260965328815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A020985 n

end

end A105584.P14933277260965328815

namespace A105584

/-- `A010693(n)-A020985(n)` -/
def P14933277260965328815.Spec : Prop :=
  ∀ n, P14933277260965328815.a n = A105584 n

end A105584

/-! ## A105584.P18109018759729013663

`A105498(and(n, A020985(n)))`
-/

namespace A105584.P18109018759729013663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105498 (Int.land (n : ℤ) (A020985 n)).toNat

end

end A105584.P18109018759729013663

namespace A105584

/-- `A105498(and(n, A020985(n)))` -/
def P18109018759729013663.Spec : Prop :=
  ∀ n, P18109018759729013663.a n = A105584 n

end A105584

/-! ## A105584.P13408293324521107138

`A000034(n)+1-A020985(n)`
-/

namespace A105584.P13408293324521107138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (1 - A020985 n)

end

end A105584.P13408293324521107138

namespace A105584

/-- `A000034(n)+1-A020985(n)` -/
def P13408293324521107138.Spec : Prop :=
  ∀ n, P13408293324521107138.a n = A105584 n

end A105584

/-! ## A105584.P1067261195571362873

`A000035(n)+2-A020985(n)`
-/

namespace A105584.P1067261195571362873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (2 - A020985 n)

end

end A105584.P1067261195571362873

namespace A105584

/-- `A000035(n)+2-A020985(n)` -/
def P1067261195571362873.Spec : Prop :=
  ∀ n, P1067261195571362873.a n = A105584 n

end A105584

/-! ## A105584.P15532521041224071442

`A000034(n)+2*A020987(n)`
-/

namespace A105584.P15532521041224071442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A020987 n

end

end A105584.P15532521041224071442

namespace A105584

/-- `A000034(n)+2*A020987(n)` -/
def P15532521041224071442.Spec : Prop :=
  ∀ n, P15532521041224071442.a n = A105584 n

end A105584

/-! ## A105584.P8219608554550783467

`3-(A059841(n)+A020985(n))`
-/

namespace A105584.P8219608554550783467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A059841 n + A020985 n)

end

end A105584.P8219608554550783467

namespace A105584

/-- `3-(A059841(n)+A020985(n))` -/
def P8219608554550783467.Spec : Prop :=
  ∀ n, P8219608554550783467.a n = A105584 n

end A105584

/-! ## A105584.P10963653479260690865

`A268676(A318921(n))+n%2`
-/

namespace A105584.P10963653479260690865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A318921 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A105584.P10963653479260690865

namespace A105584

/-- `A268676(A318921(n))+n%2` -/
def P10963653479260690865.Spec : Prop :=
  ∀ n, P10963653479260690865.a n = A105584 n

end A105584

/-! ## A105584.P9770282597653992481

`Δ[A008619(n)]+2-A020985(n)`
-/

namespace A105584.P9770282597653992481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A020985 n)

end

end A105584.P9770282597653992481

namespace A105584

/-- `Δ[A008619(n)]+2-A020985(n)` -/
def P9770282597653992481.Spec : Prop :=
  ∀ n, P9770282597653992481.a n = A105584 n

end A105584

/-! ## A105584.P15252736866214191659

`A000005(3-(-1)^n)-A020985(n)`
-/

namespace A105584.P15252736866214191659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 - (-1) ^ n).toNat - A020985 n

end

end A105584.P15252736866214191659

namespace A105584

/-- `A000005(3-(-1)^n)-A020985(n)` -/
def P15252736866214191659.Spec : Prop :=
  ∀ n, P15252736866214191659.a n = A105584 n

end A105584

/-! ## A105584.P3146914058339213515

`A020639(3*a(n-1))-A020985(n)` with `a(0)=1`
-/

namespace A105584.P3146914058339213515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (3 * a (n - 1)).toNat - A020985 n

end

end A105584.P3146914058339213515

namespace A105584

/-- `A020639(3*a(n-1))-A020985(n)` -/
def P3146914058339213515.Spec : Prop :=
  ∀ n, P3146914058339213515.a n = A105584 n

end A105584

/-! ## A105584.P7726850456257582178

`or(2, A014963(a(n-1)))-A020985(n)` with `a(0)=1`
-/

namespace A105584.P7726850456257582178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (A014963 (a (n - 1)).toNat) - A020985 n

end

end A105584.P7726850456257582178

namespace A105584

/-- `or(2, A014963(a(n-1)))-A020985(n)` -/
def P7726850456257582178.Spec : Prop :=
  ∀ n, P7726850456257582178.a n = A105584 n

end A105584

/-! ## A105584.P8791521508712247444

`A020639(or(2, a(n-1)))-A020985(n)` with `a(0)=1`
-/

namespace A105584.P8791521508712247444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (Int.lor 2 (a (n - 1))).toNat - A020985 n

end

end A105584.P8791521508712247444

namespace A105584

/-- `A020639(or(2, a(n-1)))-A020985(n)` -/
def P8791521508712247444.Spec : Prop :=
  ∀ n, P8791521508712247444.a n = A105584 n

end A105584

/-! ## A105584.P7597884097337797961

`A000040(gcd(n+1, 2*n))-A020985(n)`
-/

namespace A105584.P7597884097337797961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd (n + 1) (2 * n)) - A020985 n

end

end A105584.P7597884097337797961

namespace A105584

/-- `A000040(gcd(n+1, 2*n))-A020985(n)` -/
def P7597884097337797961.Spec : Prop :=
  ∀ n, P7597884097337797961.a n = A105584 n

end A105584

/-! ## A105584.P3743334535574173697

`or(2, A006530(a(n-1)))-A020985(n)` with `a(0)=1, a(1)=2`
-/

namespace A105584.P3743334535574173697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 2 (A006530 (a (n - 1)).toNat) - A020985 n

end

end A105584.P3743334535574173697

namespace A105584

/-- `or(2, A006530(a(n-1)))-A020985(n)` -/
def P3743334535574173697.Spec : Prop :=
  ∀ n, P3743334535574173697.a n = A105584 n

end A105584

/-! ## A105584.P2369370816346837577

`A010684(A014081(n))+A000035(n)`
-/

namespace A105584.P2369370816346837577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A014081 n).toNat + A000035 n

end

end A105584.P2369370816346837577

namespace A105584

/-- `A010684(A014081(n))+A000035(n)` -/
def P2369370816346837577.Spec : Prop :=
  ∀ n, P2369370816346837577.a n = A105584 n

end A105584

/-! ## A105584.P11456318468866386343

`A020639(A017233(n))-A020985(n)`
-/

namespace A105584.P11456318468866386343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017233 n).toNat - A020985 n

end

end A105584.P11456318468866386343

namespace A105584

/-- `A020639(A017233(n))-A020985(n)` -/
def P11456318468866386343.Spec : Prop :=
  ∀ n, P11456318468866386343.a n = A105584 n

end A105584

/-! ## A105584.P9574728356587208538

`A085058(A063694(n))-A020985(n)`
-/

namespace A105584.P9574728356587208538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A063694 n).toNat - A020985 n

end

end A105584.P9574728356587208538

namespace A105584

/-- `A085058(A063694(n))-A020985(n)` -/
def P9574728356587208538.Spec : Prop :=
  ∀ n, P9574728356587208538.a n = A105584 n

end A105584

/-! ## A105584.P7314190868713656804

`A141310(A141310(n))-A020985(n)`
-/

namespace A105584.P7314190868713656804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A141310 n).toNat - A020985 n

end

end A105584.P7314190868713656804

namespace A105584

/-- `A141310(A141310(n))-A020985(n)` -/
def P7314190868713656804.Spec : Prop :=
  ∀ n, P7314190868713656804.a n = A105584 n

end A105584

/-! ## A105584.P1093167058673943742

`A020639(A020639(n+1)+1)-A020985(n)`
-/

namespace A105584.P1093167058673943742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) + 1).toNat - A020985 n

end

end A105584.P1093167058673943742

namespace A105584

/-- `A020639(A020639(n+1)+1)-A020985(n)` -/
def P1093167058673943742.Spec : Prop :=
  ∀ n, P1093167058673943742.a n = A105584 n

end A105584

/-!
# A105585: 1, p and 3p, where p runs through all primes except 2 and 5.

The programs for A105585, the canonical program `A105585.P15190167194842954845` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105585 has offset 1).

The definition of A105585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105585.P15190167194842954845

`record[A132740(n%(3*A006530(n+1))+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A105585

/-- `record[A132740(n%(3*A006530(n+1))+1)]` -/
def P15190167194842954845.Spec : Prop :=
  ∀ n, P15190167194842954845.a n = A105585 (n + 1)

theorem P15190167194842954845.correct : P15190167194842954845.Spec := by
  intro n
  simp only [A105585, Nat.add_sub_cancel]

end A105585

/-! ## A105585.P7948825026436223566

`record[gcd(3*A006530(n+1), A106621(n+1))]`
-/

namespace A105585.P7948825026436223566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A006530 (n + 1)) (A106621 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P7948825026436223566

namespace A105585

/-- `record[gcd(3*A006530(n+1), A106621(n+1))]` -/
def P7948825026436223566.Spec : Prop :=
  ∀ n, (P7948825026436223566.a n : ℤ) = A105585 (n + 1)

end A105585

/-! ## A105585.P3433953452365608662

`eq[A040688(n), A101915(A289052(n+1))]`
-/

namespace A105585.P3433953452365608662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101915 (A289052 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105585.P3433953452365608662

namespace A105585

/-- `eq[A040688(n), A101915(A289052(n+1))]` -/
def P3433953452365608662.Spec : Prop :=
  ∀ n, (P3433953452365608662.a n : ℤ) = A105585 (n + 1)

end A105585

/-! ## A105585.P4752248319055907828

`record[A132740(n+1)%A277645(A006530(n+1))]`
-/

namespace A105585.P4752248319055907828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132740 (n + 1)) (A277645 (A006530 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P4752248319055907828

namespace A105585

/-- `record[A132740(n+1)%A277645(A006530(n+1))]` -/
def P4752248319055907828.Spec : Prop :=
  ∀ n, P4752248319055907828.a n = A105585 (n + 1)

end A105585

/-! ## A105585.P6303337352376972626

`record[gcd(A078268(n+1), A216600(n+1))]`
-/

namespace A105585.P6303337352376972626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078268 (n + 1)) (A216600 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P6303337352376972626

namespace A105585

/-- `record[gcd(A078268(n+1), A216600(n+1))]` -/
def P6303337352376972626.Spec : Prop :=
  ∀ n, (P6303337352376972626.a n : ℤ) = A105585 (n + 1)

end A105585

/-! ## A105585.P9388745626305284423

`record[gcd(A132740(n+1), A216601(n+1))]`
-/

namespace A105585.P9388745626305284423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132740 (n + 1)) (A216601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P9388745626305284423

namespace A105585

/-- `record[gcd(A132740(n+1), A216601(n+1))]` -/
def P9388745626305284423.Spec : Prop :=
  ∀ n, (P9388745626305284423.a n : ℤ) = A105585 (n + 1)

end A105585

/-! ## A105585.P3710927114467524638

`record[gcd(A106621(n+2), A216600(n+2))]`
-/

namespace A105585.P3710927114467524638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106621 (n + 2)) (A216600 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P3710927114467524638

namespace A105585

/-- `record[gcd(A106621(n+2), A216600(n+2))]` -/
def P3710927114467524638.Spec : Prop :=
  ∀ n, (P3710927114467524638.a n : ℤ) = A105585 (n + 1)

end A105585

/-! ## A105585.P9173845650150358282

`record[cos(A216601(n+1))*A078268(n+1)]`
-/

namespace A105585.P9173845650150358282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A216601 (n + 1) : ℝ) * (A078268 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P9173845650150358282

namespace A105585

/-- `record[cos(A216601(n+1))*A078268(n+1)]` -/
def P9173845650150358282.Spec : Prop :=
  ∀ n, P9173845650150358282.a n = (A105585 (n + 1) : ℝ)

end A105585

/-! ## A105585.P16193451880782367855

`record[A132740(A109802(n+1))]`
-/

namespace A105585.P16193451880782367855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A109802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105585.P16193451880782367855

namespace A105585

/-- `record[A132740(A109802(n+1))]` -/
def P16193451880782367855.Spec : Prop :=
  ∀ n, P16193451880782367855.a n = A105585 (n + 1)

end A105585

/-!
# A105586: A Moebius-binomial triangle.

The programs for A105586, there is no canonical definition to state claims against.
-/

/-! ## A105586.P8615401387311699300

`abs(∑[A318608(A178820(n))])`
-/

namespace A105586.P8615401387311699300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (A178820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A105586.P8615401387311699300

/-! ## A105586.P6735709880657452534

`A000035(∑[A185904(n+1)])`
-/

namespace A105586.P6735709880657452534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105586.P6735709880657452534

/-! ## A105586.P1389072314293088059

`A353627(A000219(floor(n/2))+1)`
-/

namespace A105586.P1389072314293088059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A000219 ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A105586.P1389072314293088059

/-! ## A105586.P4273821251140431442

`A000583(∑[A185904(n+1)])%2`
-/

namespace A105586.P4273821251140431442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A105586.P4273821251140431442

/-! ## A105586.P7523776367732761408

`∑[A081543(A178820(n)+1)]%2`
-/

namespace A105586.P7523776367732761408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081543 (A178820 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A105586.P7523776367732761408

/-!
# A105588: Diagonal sums of a Moebius-binomial triangle.

The programs for A105588, there is no canonical definition to state claims against.
-/

/-! ## A105588.P8499087039310074541

`A347648(n)+A294234(n)`
-/

namespace A105588.P8499087039310074541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 n + A294234 n

end

end A105588.P8499087039310074541

/-! ## A105588.P7193275759835098925

`A294234(n)+A347777(n)-A098236(A028310(n))`
-/

namespace A105588.P7193275759835098925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + (A347777 n - A098236 (A028310 n).toNat)

end

end A105588.P7193275759835098925

/-! ## A105588.P16019739260497108992

`A294234(n)+A347777(n)-A098236(A233583(n+1))`
-/

namespace A105588.P16019739260497108992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + (A347777 n - A098236 (A233583 (n + 1)).toNat)

end

end A105588.P16019739260497108992

/-! ## A105588.P8296440461177474745

`A294234(n)+A347649(n)-A307815(n)`
-/

namespace A105588.P8296440461177474745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + (A347649 n - A307815 n)

end

end A105588.P8296440461177474745

/-! ## A105588.P11870268313231365515

`A294234(n)-A001478(A347649(n)-A307815(n))`
-/

namespace A105588.P11870268313231365515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n - A001478 (A347649 n - A307815 n).toNat

end

end A105588.P11870268313231365515

/-!
# A105589: Inverse of a Moebius-binomial triangle.

The programs for A105589, there is no canonical definition to state claims against.
-/

/-! ## A105589.P15050896358868680185

`A014040(A047922(n)%A120105(n))`
-/

namespace A105589.P15050896358868680185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014040 (Int.tmod (A047922 n) (A120105 n)).toNat

end

end A105589.P15050896358868680185

/-! ## A105589.P5116404430237586276

`A121373(gcd(A007661(n+4), A108084(n)))`
-/

namespace A105589.P5116404430237586276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.gcd (A007661 (n + 4)) (A108084 n))

end

end A105589.P5116404430237586276

/-! ## A105589.P8943827286788647079

`A302050(A122844(n+1))`
-/

namespace A105589.P8943827286788647079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A122844 (n + 1)).toNat

end

end A105589.P8943827286788647079

/-! ## A105589.P2582079885339942490

`A358679(A226167(n+1))`
-/

namespace A105589.P2582079885339942490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A226167 (n + 1)).toNat

end

end A105589.P2582079885339942490

/-! ## A105589.P11793930671558336377

`A010815(A001248(n+1)%A113355(n))`
-/

namespace A105589.P11793930671558336377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A001248 (n + 1)) (A113355 n)).toNat

end

end A105589.P11793930671558336377

/-!
# A105590: a(n)=n+2-sum{k=0..n, -mu(k-mod(k^3,3k))}.

The programs for A105590, there is no canonical definition to state claims against.
-/

/-! ## A105590.P10470918676728083198

`A070939(round(sinh(floor(n/3))))`
-/

namespace A105590.P10470918676728083198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway (Real.sinh (⌊(n : ℚ) / 3⌋ : ℝ))).toNat

end

end A105590.P10470918676728083198

/-!
# A105591: a(n)=n+2-sum{k=0..n, -mu(k-mod(k^5,5k))}.

The programs for A105591, there is no canonical definition to state claims against.
-/

/-! ## A105591.P1442955808303252184

`A090529(floor(A024634(n)/A335373(n+1)))`
-/

namespace A105591.P1442955808303252184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 ⌊(A024634 n : ℚ) / (A335373 (n + 1) : ℚ)⌋.toNat

end

end A105591.P1442955808303252184

/-! ## A105591.P3064853454095774644

`A090529(ceil(A024634(n)/A335373(n+1)))`
-/

namespace A105591.P3064853454095774644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 ⌈(A024634 n : ℚ) / (A335373 (n + 1) : ℚ)⌉.toNat

end

end A105591.P3064853454095774644

/-! ## A105591.P1312890662930622122

`A090529(floor(A024634(n)/A008578(2*n+1)))`
-/

namespace A105591.P1312890662930622122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 ⌊(A024634 n : ℚ) / (A008578 (2 * n + 1) : ℚ)⌋.toNat

end

end A105591.P1312890662930622122

/-! ## A105591.P12698095312513741493

`A090529(floor(A024634(n)/A026352(3*n+2)))`
-/

namespace A105591.P12698095312513741493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 ⌊(A024634 n : ℚ) / (A026352 (3 * n + 2) : ℚ)⌋.toNat

end

end A105591.P12698095312513741493

/-! ## A105591.P6905223152541457074

`A090529(ceil(A024634(n)/A026352(3*n+2)))`
-/

namespace A105591.P6905223152541457074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 ⌈(A024634 n : ℚ) / (A026352 (3 * n + 2) : ℚ)⌉.toNat

end

end A105591.P6905223152541457074

/-!
# A105592: a(n)=n+2-sum{k=0..n, -mu(k-mod(k^7,7k))}.

The programs for A105592, there is no canonical definition to state claims against.
-/

/-! ## A105592.P212359152841268005

`∑[and(A029618(n), A106226(3*n))]`
-/

namespace A105592.P212359152841268005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029618 n) (A106226 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105592.P212359152841268005

/-! ## A105592.P11759188800381172826

`∑[A002654(∑[A301680(3*n+2)])]`
-/

namespace A105592.P11759188800381172826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105592.P11759188800381172826

/-! ## A105592.P14040483099392331491

`∑[and(A106226(3*n), A318622(2*n+5))]`
-/

namespace A105592.P14040483099392331491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106226 (3 * n)) (A318622 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105592.P14040483099392331491

/-! ## A105592.P7844015052320509426

`A000262(A000142(A054896(n)))%7`
-/

namespace A105592.P7844015052320509426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000262 (A000142 (A054896 n).toNat).toNat) 7

end

end A105592.P7844015052320509426

/-!
# A105594: Triangle read by rows: abs(A103447)*A047999 mod 2.

The programs for A105594, there is no canonical definition to state claims against.
-/

/-! ## A105594.P1582478600693836648

`A166486(and(A086341(n), A144484(n)))`
-/

namespace A105594.P1582478600693836648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (Int.land (A086341 n) (A144484 n)).toNat

end

end A105594.P1582478600693836648

/-! ## A105594.P18344741424320190070

`A166486(and(A108086(n), A144484(n)))`
-/

namespace A105594.P18344741424320190070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (Int.land (A108086 n) (A144484 n)).toNat

end

end A105594.P18344741424320190070

/-! ## A105594.P7763868337259322237

`A166486(and(A013622(n), A144484(n)))`
-/

namespace A105594.P7763868337259322237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (Int.land (A013622 n) (A144484 n)).toNat

end

end A105594.P7763868337259322237

/-! ## A105594.P13081170791009897069

`A166486(and(A144484(n), A201812(n+1)))`
-/

namespace A105594.P13081170791009897069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (Int.land (A144484 n) (A201812 (n + 1))).toNat

end

end A105594.P13081170791009897069

/-! ## A105594.P11193755243386036391

`A000217(and(A013622(n), A144484(n)))%2`
-/

namespace A105594.P11193755243386036391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (Int.land (A013622 n) (A144484 n)).toNat) 2

end

end A105594.P11193755243386036391

/-!
# A105597: Central numbers in a Moebius-binomial triangle.

The programs for A105597, the canonical program `A105597.P2071212981677891923` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105597 has offset 0).

The definition of A105597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105597.P2071212981677891923

`A087049(floor(n/2*A087049(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105597

/-- `A087049(floor(n/2*A087049(n)))` -/
def P2071212981677891923.Spec : Prop :=
  ∀ n, P2071212981677891923.a n = A105597 n

theorem P2071212981677891923.correct : P2071212981677891923.Spec := by
  intro n
  simp only [A105597]

end A105597

/-! ## A105597.P16483818448136721622

`A087049(A004526(n*A087049(n)))`
-/

namespace A105597.P16483818448136721622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A004526 ((n : ℤ) * A087049 n).toNat).toNat

end

end A105597.P16483818448136721622

namespace A105597

/-- `A087049(A004526(n*A087049(n)))` -/
def P16483818448136721622.Spec : Prop :=
  ∀ n, P16483818448136721622.a n = A105597 n

end A105597

/-! ## A105597.P4478389243781214478

`A087049(A123108(n*A087049(n)))`
-/

namespace A105597.P4478389243781214478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A123108 ((n : ℤ) * A087049 n).toNat).toNat

end

end A105597.P4478389243781214478

namespace A105597

/-- `A087049(A123108(n*A087049(n)))` -/
def P4478389243781214478.Spec : Prop :=
  ∀ n, P4478389243781214478.a n = A105597 n

end A105597

/-! ## A105597.P6609934065545879575

`A087049((A008619(n)-1)*A087049(n))`
-/

namespace A105597.P6609934065545879575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 ((A008619 n - 1) * A087049 n).toNat

end

end A105597.P6609934065545879575

namespace A105597

/-- `A087049((A008619(n)-1)*A087049(n))` -/
def P6609934065545879575.Spec : Prop :=
  ∀ n, P6609934065545879575.a n = A105597 n

end A105597

/-! ## A105597.P14560873345572810276

`A087049((n-A110655(2*n))*A087049(n))`
-/

namespace A105597.P14560873345572810276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (((n : ℤ) - A110655 (2 * n)) * A087049 n).toNat

end

end A105597.P14560873345572810276

namespace A105597

/-- `A087049((n-A110655(2*n))*A087049(n))` -/
def P14560873345572810276.Spec : Prop :=
  ∀ n, P14560873345572810276.a n = A105597 n

end A105597

/-!
# A105598: Partial sums of central numbers for a Moebius-binomial triangle.

The programs for A105598, the canonical program `A105598.P11298029730937636855` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105598 has offset 0).

The definition of A105598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105598.P11298029730937636855

`∑[A105597(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105598

/-- `∑[A105597(n)]` -/
def P11298029730937636855.Spec : Prop :=
  ∀ n, P11298029730937636855.a n = A105598 n

theorem P11298029730937636855.correct : P11298029730937636855.Spec := by
  intro n
  simp only [A105598]

end A105598

/-! ## A105598.P11462955243050680399

`∑[A087049(floor(n/2*A087049(n)))]`
-/

namespace A105598.P11462955243050680399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 ⌊(n : ℚ) / 2 * (A087049 n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105598.P11462955243050680399

namespace A105598

/-- `∑[A087049(floor(n/2*A087049(n)))]` -/
def P11462955243050680399.Spec : Prop :=
  ∀ n, P11462955243050680399.a n = A105598 n

end A105598

/-! ## A105598.P4360369512642387419

`∑[A087049(A004526(n*A087049(n)))]`
-/

namespace A105598.P4360369512642387419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A004526 ((n : ℤ) * A087049 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105598.P4360369512642387419

namespace A105598

/-- `∑[A087049(A004526(n*A087049(n)))]` -/
def P4360369512642387419.Spec : Prop :=
  ∀ n, P4360369512642387419.a n = A105598 n

end A105598

/-! ## A105598.P1510069786523923235

`∑[A087049(A123108(n*A087049(n)))]`
-/

namespace A105598.P1510069786523923235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A123108 ((n : ℤ) * A087049 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105598.P1510069786523923235

namespace A105598

/-- `∑[A087049(A123108(n*A087049(n)))]` -/
def P1510069786523923235.Spec : Prop :=
  ∀ n, P1510069786523923235.a n = A105598 n

end A105598

/-! ## A105598.P2527603239070497906

`A105597(n)+A061579(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A105598.P2527603239070497906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105597 n + A061579 (A061579 (a (n - 1)).toNat).toNat

end

end A105598.P2527603239070497906

namespace A105598

/-- `A105597(n)+A061579(A061579(a(n-1)))` -/
def P2527603239070497906.Spec : Prop :=
  ∀ n, P2527603239070497906.a n = A105598 n

end A105598

/-! ## A105598.P6838171593365211491

`a(n-1)+and(A105597(n), A231609(n))` with `a(0)=1`
-/

namespace A105598.P6838171593365211491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A105597 n) (A231609 n)

end

end A105598.P6838171593365211491

namespace A105598

/-- `a(n-1)+and(A105597(n), A231609(n))` -/
def P6838171593365211491.Spec : Prop :=
  ∀ n, P6838171593365211491.a n = A105598 n

end A105598

/-! ## A105598.P7987697048246278355

`a(n-1)+and(A105597(n), A156615(a(n-1)+1))` with `a(0)=1`
-/

namespace A105598.P7987697048246278355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A105597 n) (A156615 (a (n - 1) + 1).toNat)

end

end A105598.P7987697048246278355

namespace A105598

/-- `a(n-1)+and(A105597(n), A156615(a(n-1)+1))` -/
def P7987697048246278355.Spec : Prop :=
  ∀ n, P7987697048246278355.a n = A105598 n

end A105598

/-!
# A105599: Triangle read by rows: T(n, m) = number of forests with n nodes and m labeled trees. Also number of forests with exactly n - m edges on n labeled nodes.

The programs for A105599, there is no canonical definition to state claims against.
-/

/-! ## A105599.P2949270731367527403

`A138464(A038722(n+1))`
-/

namespace A105599.P2949270731367527403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A038722 (n + 1)).toNat

end

end A105599.P2949270731367527403

/-! ## A105599.P2031028881376464834

`A138464(A061579(n)+1)`
-/

namespace A105599.P2031028881376464834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A061579 n + 1).toNat

end

end A105599.P2031028881376464834

/-! ## A105599.P5702114937271157249

`A138464(A093995(n+1)-n)`
-/

namespace A105599.P5702114937271157249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A105599.P5702114937271157249

/-! ## A105599.P5894951206361981031

`A138464(A002024(n+1)²-n)`
-/

namespace A105599.P5894951206361981031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A105599.P5894951206361981031

/-! ## A105599.P12000575145257215785

`A106834(n+1)/A002260(n+1)`
-/

namespace A105599.P12000575145257215785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106834 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A105599.P12000575145257215785

/-! ## A105599.P4875851228209338135

`A106834(n+1)/A065033(A158405(n+1))`
-/

namespace A105599.P4875851228209338135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106834 (n + 1) : ℚ) / (A065033 (A158405 (n + 1)).toNat : ℚ)

end

end A105599.P4875851228209338135

