import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
import Seq.Opaque.C025

/-!
# A117300: Consider all pairs (p,q) of consecutive primes such that p and q both have k digits and q-p = k; sequence lists the values of q.

The programs for A117300, the canonical program `A117300.P2175943187349720183` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117300 has offset 1).

The definition of A117300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117300.P1887728266639829530

`p?[A057717(A000040(n+1))]`
-/

namespace A117300.P1887728266639829530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P1887728266639829530

namespace A117300

/-- `p?[A057717(A000040(n+1))]` -/
def P1887728266639829530.Spec : Prop :=
  ∀ n, P1887728266639829530.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P7129967918023823814

`p?[A057717(A182986(n+1))]`
-/

namespace A117300.P7129967918023823814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P7129967918023823814

namespace A117300

/-- `p?[A057717(A182986(n+1))]` -/
def P7129967918023823814.Spec : Prop :=
  ∀ n, P7129967918023823814.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P4747612540998514144

`p?[A057717(abs(A273960(n+1)))]`
-/

namespace A117300.P4747612540998514144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 |A273960 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P4747612540998514144

namespace A117300

/-- `p?[A057717(abs(A273960(n+1)))]` -/
def P4747612540998514144.Spec : Prop :=
  ∀ n, P4747612540998514144.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P10394945242726077888

`p?[A057717(sqrt(A001248(n+1)))]`
-/

namespace A117300.P10394945242726077888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P10394945242726077888

namespace A117300

/-- `p?[A057717(sqrt(A001248(n+1)))]` -/
def P10394945242726077888.Spec : Prop :=
  ∀ n, P10394945242726077888.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P8847850631648199080

`p?[A057717(A006093(n+1)+1)]`
-/

namespace A117300.P8847850631648199080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P8847850631648199080

namespace A117300

/-- `p?[A057717(A006093(n+1)+1)]` -/
def P8847850631648199080.Spec : Prop :=
  ∀ n, P8847850631648199080.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P17077315403326118909

`p?[A057717(A008864(n+1)-1)]`
-/

namespace A117300.P17077315403326118909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P17077315403326118909

namespace A117300

/-- `p?[A057717(A008864(n+1)-1)]` -/
def P17077315403326118909.Spec : Prop :=
  ∀ n, P17077315403326118909.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P3077650312458046854

`p?[A057717(A040976(n+1)+2)]`
-/

namespace A117300.P3077650312458046854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P3077650312458046854

namespace A117300

/-- `p?[A057717(A040976(n+1)+2)]` -/
def P3077650312458046854.Spec : Prop :=
  ∀ n, P3077650312458046854.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P5431777984952983606

`p?[A057717(A014692(n+1)+n)]`
-/

namespace A117300.P5431777984952983606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (A014692 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P5431777984952983606

namespace A117300

/-- `p?[A057717(A014692(n+1)+n)]` -/
def P5431777984952983606.Spec : Prop :=
  ∀ n, P5431777984952983606.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P14348634598899284284

`p?[A134735(2*n+1)+A097944(n+1)]`
-/

namespace A117300.P14348634598899284284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * n + 1) + A097944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P14348634598899284284

namespace A117300

/-- `p?[A134735(2*n+1)+A097944(n+1)]` -/
def P14348634598899284284.Spec : Prop :=
  ∀ n, P14348634598899284284.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P4991707243782077413

`p?[A008578(n+1)+A004218(A157419(n))]`
-/

namespace A117300.P4991707243782077413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A004218 (A157419 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P4991707243782077413

namespace A117300

/-- `p?[A008578(n+1)+A004218(A157419(n))]` -/
def P4991707243782077413.Spec : Prop :=
  ∀ n, P4991707243782077413.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P2175943187349720183

`p?[A004218(A008864(n+1))+A000040(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117300

/-- `p?[A004218(A008864(n+1))+A000040(n+1)]` -/
def P2175943187349720183.Spec : Prop :=
  ∀ n, P2175943187349720183.a n = A117300 (n + 1)

theorem P2175943187349720183.correct : P2175943187349720183.Spec := by
  intro n
  simp only [A117300, Nat.add_sub_cancel]

end A117300

/-! ## A117300.P16109928871396238149

`p?[A008578(n+1)+A004218(A006005(n+1))]`
-/

namespace A117300.P16109928871396238149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A004218 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P16109928871396238149

namespace A117300

/-- `p?[A008578(n+1)+A004218(A006005(n+1))]` -/
def P16109928871396238149.Spec : Prop :=
  ∀ n, P16109928871396238149.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P8112433657824701632

`p?[A008578(n+1)+A004218(A006093(n+1))]`
-/

namespace A117300.P8112433657824701632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A004218 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P8112433657824701632

namespace A117300

/-- `p?[A008578(n+1)+A004218(A006093(n+1))]` -/
def P8112433657824701632.Spec : Prop :=
  ∀ n, P8112433657824701632.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P12640821986713521109

`p?[A008864(n+1)+A004216(A006005(n+1))]`
-/

namespace A117300.P12640821986713521109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A004216 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P12640821986713521109

namespace A117300

/-- `p?[A008864(n+1)+A004216(A006005(n+1))]` -/
def P12640821986713521109.Spec : Prop :=
  ∀ n, P12640821986713521109.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P13094916994990005157

`p?[A182986(n+1)+A004218(A000040(n+1))]`
-/

namespace A117300.P13094916994990005157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A004218 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P13094916994990005157

namespace A117300

/-- `p?[A182986(n+1)+A004218(A000040(n+1))]` -/
def P13094916994990005157.Spec : Prop :=
  ∀ n, P13094916994990005157.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P13298398791058320632

`p?[A055642(A008578(n+2))+A000040(n+1)]`
-/

namespace A117300.P13298398791058320632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008578 (n + 2)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P13298398791058320632

namespace A117300

/-- `p?[A055642(A008578(n+2))+A000040(n+1)]` -/
def P13298398791058320632.Spec : Prop :=
  ∀ n, P13298398791058320632.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P1398568388653085357

`p?[A004218(A000040(n+1))+A006093(n+1)+1]`
-/

namespace A117300.P1398568388653085357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A000040 (n + 1)).toNat + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P1398568388653085357

namespace A117300

/-- `p?[A004218(A000040(n+1))+A006093(n+1)+1]` -/
def P1398568388653085357.Spec : Prop :=
  ∀ n, P1398568388653085357.a n = A117300 (n + 1)

end A117300

/-! ## A117300.P17496193127128650815

`p?[A004216(A000040(n+1)+1)+1+A014692(n+1)+n]`
-/

namespace A117300.P17496193127128650815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A000040 (n + 1) + 1).toNat + 1 + (A014692 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117300.P17496193127128650815

namespace A117300

/-- `p?[A004216(A000040(n+1)+1)+1+A014692(n+1)+n]` -/
def P17496193127128650815.Spec : Prop :=
  ∀ n, P17496193127128650815.a n = A117300 (n + 1)

end A117300

/-!
# A117301: a(n) = prime(n+3)*prime(n) - prime(n+1)*prime(n+2).

The programs for A117301, the canonical program `A117301.P971532255739246842` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117301 has offset 1).

The definition of A117301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A090090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117301.P971532255739246842

`A090090(n+1)-A006094(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117301

/-- `A090090(n+1)-A006094(n+2)` -/
def P971532255739246842.Spec : Prop :=
  ∀ n, P971532255739246842.a n = A117301 (n + 1)

theorem P971532255739246842.correct : P971532255739246842.Spec := by
  intro n
  simp only [A117301, Nat.add_sub_cancel]

end A117301

/-! ## A117301.P2897556034274927060

`A000040(n+1)*A034961(n+2)-A127345(n+1)`
-/

namespace A117301.P2897556034274927060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034961 (n + 2) - A127345 (n + 1)

end

end A117301.P2897556034274927060

namespace A117301

/-- `A000040(n+1)*A034961(n+2)-A127345(n+1)` -/
def P2897556034274927060.Spec : Prop :=
  ∀ n, P2897556034274927060.a n = A117301 (n + 1)

end A117301

/-! ## A117301.P5753899638275756218

`A046302(n+1)/A006094(n+2)-A006094(n+2)`
-/

namespace A117301.P5753899638275756218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) - (A006094 (n + 2) : ℚ)

end

end A117301.P5753899638275756218

namespace A117301

/-- `A046302(n+1)/A006094(n+2)-A006094(n+2)` -/
def P5753899638275756218.Spec : Prop :=
  ∀ n, P5753899638275756218.a n = (A117301 (n + 1) : ℚ)

end A117301

/-! ## A117301.P2736544833140521383

`lcm(A008578(n+2), A065091(n+3))-A006094(n+2)`
-/

namespace A117301.P2736544833140521383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008578 (n + 2)) (A065091 (n + 3)) : ℤ) - A006094 (n + 2)

end

end A117301.P2736544833140521383

namespace A117301

/-- `lcm(A008578(n+2), A065091(n+3))-A006094(n+2)` -/
def P2736544833140521383.Spec : Prop :=
  ∀ n, P2736544833140521383.a n = A117301 (n + 1)

end A117301

/-! ## A117301.P2969938297636656600

`A008578(n+2)*A008578(n+5)-A006094(n+2)`
-/

namespace A117301.P2969938297636656600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A008578 (n + 5) - A006094 (n + 2)

end

end A117301.P2969938297636656600

namespace A117301

/-- `A008578(n+2)*A008578(n+5)-A006094(n+2)` -/
def P2969938297636656600.Spec : Prop :=
  ∀ n, P2969938297636656600.a n = A117301 (n + 1)

end A117301

/-! ## A117301.P3041975422628728295

`A127348(n+1)-(A127345(n+1)+A127345(n+2))`
-/

namespace A117301.P3041975422628728295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127348 (n + 1) - (A127345 (n + 1) + A127345 (n + 2))

end

end A117301.P3041975422628728295

namespace A117301

/-- `A127348(n+1)-(A127345(n+1)+A127345(n+2))` -/
def P3041975422628728295.Spec : Prop :=
  ∀ n, P3041975422628728295.a n = A117301 (n + 1)

end A117301

/-!
# A117302: Number of cases in which the first player gets killed in a Russian roulette game when 7 players use a gun with n chambers and the number of the bullets can be from 1 to n. In the game they do not rotate the cylinder after the game starts.

The programs for A117302, the canonical program `A117302.P15352930104180920489` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117302 has offset 1).

The definition of A117302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117302.P15352930104180920489

`2*a(n-1)+a(n-7)-2*a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=129`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117302

/-- `2*a(n-1)+a(n-7)-2*a(n-8)` -/
def P15352930104180920489.Spec : Prop :=
  ∀ n, P15352930104180920489.a n = A117302 (n + 1)

theorem P15352930104180920489.correct : P15352930104180920489.Spec := by
  intro n
  simp only [A117302, Nat.add_sub_cancel]

end A117302

/-! ## A117302.P17535332883587881717

`floor(2^(n+7)/127)`
-/

namespace A117302.P17535332883587881717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 7) : ℚ) / 127⌋

end

end A117302.P17535332883587881717

namespace A117302

/-- `floor(2^(n+7)/127)` -/
def P17535332883587881717.Spec : Prop :=
  ∀ n, P17535332883587881717.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P553349306330408382

`a(n-1)+a(n-1)+val(a(n-1), 64)` with `a(0)=1`
-/

namespace A117302.P553349306330408382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + SequenceMachineLib.valuation (a (n - 1)) 64)

end

end A117302.P553349306330408382

namespace A117302

/-- `a(n-1)+a(n-1)+val(a(n-1), 64)` -/
def P553349306330408382.Spec : Prop :=
  ∀ n, (P553349306330408382.a n : ℤ) = A117302 (n + 1)

end A117302

/-! ## A117302.P13876411847611770303

`a(n-1)+A082784(n)+a(n-1)` with `a(0)=1`
-/

namespace A117302.P13876411847611770303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A082784 n + a (n - 1))

end

end A117302.P13876411847611770303

namespace A117302

/-- `a(n-1)+A082784(n)+a(n-1)` -/
def P13876411847611770303.Spec : Prop :=
  ∀ n, P13876411847611770303.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P15442404775233510267

`char[A008589(n)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A117302.P15442404775233510267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (a (n - 1) + a (n - 1))

end

end A117302.P15442404775233510267

namespace A117302

/-- `char[A008589(n)]+a(n-1)+a(n-1)` -/
def P15442404775233510267.Spec : Prop :=
  ∀ n, (P15442404775233510267.a n : ℤ) = A117302 (n + 1)

end A117302

/-! ## A117302.P2110082057863062954

`Δ[A178460(n+6)]`
-/

namespace A117302.P2110082057863062954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117302.P2110082057863062954

namespace A117302

/-- `Δ[A178460(n+6)]` -/
def P2110082057863062954.Spec : Prop :=
  ∀ n, P2110082057863062954.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P11227236737288942803

`Δ[record[A178460(A052938(n))]]`
-/

namespace A117302.P11227236737288942803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117302.P11227236737288942803

namespace A117302

/-- `Δ[record[A178460(A052938(n))]]` -/
def P11227236737288942803.Spec : Prop :=
  ∀ n, P11227236737288942803.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P8354206513851629242

`Δ[record[A178460(A117910(n))]]`
-/

namespace A117302.P8354206513851629242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117302.P8354206513851629242

namespace A117302

/-- `Δ[record[A178460(A117910(n))]]` -/
def P8354206513851629242.Spec : Prop :=
  ∀ n, P8354206513851629242.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P17559485654451250308

`Δ[record[A178460(A133310(n))]]`
-/

namespace A117302.P17559485654451250308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117302.P17559485654451250308

namespace A117302

/-- `Δ[record[A178460(A133310(n))]]` -/
def P17559485654451250308.Spec : Prop :=
  ∀ n, P17559485654451250308.a n = A117302 (n + 1)

end A117302

/-! ## A117302.P6658617335228551676

`Δ[record[A178460(A028920(n))]]`
-/

namespace A117302.P6658617335228551676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117302.P6658617335228551676

namespace A117302

/-- `Δ[record[A178460(A028920(n))]]` -/
def P6658617335228551676.Spec : Prop :=
  ∀ n, P6658617335228551676.a n = A117302 (n + 1)

end A117302

/-!
# A117303: Self-inverse permutation of the natural numbers based on the bijection (2*x-1)*2^(y-1) <--> (2*y-1)*2^(x-1).

The programs for A117303, the canonical program `A117303.P10725081724367424361` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117303 has offset 1).

The definition of A117303 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117303.P10725081724367424361

`(2*A001511(n+1)-1)*2^(A003602(n+1)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117303

/-- `(2*A001511(n+1)-1)*2^(A003602(n+1)-1)` -/
def P10725081724367424361.Spec : Prop :=
  ∀ n, P10725081724367424361.a n = (A117303 (n + 1) : ℚ)

end A117303

/-! ## A117303.P8123973017853127375

`A387325(n)+1`
-/

namespace A117303.P8123973017853127375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 n + 1

end

end A117303.P8123973017853127375

namespace A117303

/-- `A387325(n)+1` -/
def P8123973017853127375.Spec : Prop :=
  ∀ n, P8123973017853127375.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P11011066156314105605

`A037227(n+1)*A082392(n)`
-/

namespace A117303.P11011066156314105605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1) * A082392 n

end

end A117303.P11011066156314105605

namespace A117303

/-- `A037227(n+1)*A082392(n)` -/
def P11011066156314105605.Spec : Prop :=
  ∀ n, P11011066156314105605.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P6010407981340802720

`∑{d}[n+1, A069517(#)*A082392((n+1)/#-1)]`
-/

namespace A117303.P6010407981340802720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A082392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A117303.P6010407981340802720

namespace A117303

/-- `∑{d}[n+1, A069517(#)*A082392((n+1)/#-1)]` -/
def P6010407981340802720.Spec : Prop :=
  ∀ n, P6010407981340802720.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P6930701414923048130

`A011782(A003602(n+1))*A037227(n+1)`
-/

namespace A117303.P6930701414923048130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003602 (n + 1)).toNat * A037227 (n + 1)

end

end A117303.P6930701414923048130

namespace A117303

/-- `A011782(A003602(n+1))*A037227(n+1)` -/
def P6930701414923048130.Spec : Prop :=
  ∀ n, P6930701414923048130.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P15163471751615911496

`A016116(A000265(n+1))*A037227(n+1)`
-/

namespace A117303.P15163471751615911496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000265 (n + 1)).toNat * A037227 (n + 1)

end

end A117303.P15163471751615911496

namespace A117303

/-- `A016116(A000265(n+1))*A037227(n+1)` -/
def P15163471751615911496.Spec : Prop :=
  ∀ n, P15163471751615911496.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P9700589554316528304

`(A007814(n+1)+A001511(n+1))*A082392(n)`
-/

namespace A117303.P9700589554316528304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + A001511 (n + 1)) * A082392 n

end

end A117303.P9700589554316528304

namespace A117303

/-- `(A007814(n+1)+A001511(n+1))*A082392(n)` -/
def P9700589554316528304.Spec : Prop :=
  ∀ n, P9700589554316528304.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P13921286401402578480

`(A007814(n+1)+A001511(n+1))*A000079(A025480(n))`
-/

namespace A117303.P13921286401402578480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + A001511 (n + 1)) * A000079 (A025480 n).toNat

end

end A117303.P13921286401402578480

namespace A117303

/-- `(A007814(n+1)+A001511(n+1))*A000079(A025480(n))` -/
def P13921286401402578480.Spec : Prop :=
  ∀ n, P13921286401402578480.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P17680738737190854316

`A075300(A075303(n))+1`
-/

namespace A117303.P17680738737190854316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A075303 n).toNat + 1

end

end A117303.P17680738737190854316

namespace A117303

/-- `A075300(A075303(n))+1` -/
def P17680738737190854316.Spec : Prop :=
  ∀ n, P17680738737190854316.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P3323454489320143594

`A135764(A209268(n+1))`
-/

namespace A117303.P3323454489320143594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A209268 (n + 1)).toNat

end

end A117303.P3323454489320143594

namespace A117303

/-- `A135764(A209268(n+1))` -/
def P3323454489320143594.Spec : Prop :=
  ∀ n, P3323454489320143594.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P5864187052220389353

`A135764(A250252(A249811(n+1)))`
-/

namespace A117303.P5864187052220389353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A250252 (A249811 (n + 1)).toNat).toNat

end

end A117303.P5864187052220389353

namespace A117303

/-- `A135764(A250252(A249811(n+1)))` -/
def P5864187052220389353.Spec : Prop :=
  ∀ n, P5864187052220389353.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P15376489884512183981

`A054582(A075303(n))`
-/

namespace A117303.P15376489884512183981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A075303 n).toNat

end

end A117303.P15376489884512183981

namespace A117303

/-- `A054582(A075303(n))` -/
def P15376489884512183981.Spec : Prop :=
  ∀ n, P15376489884512183981.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P13626131083259821010

`A054582(A249725(n+1)-1)`
-/

namespace A117303.P13626131083259821010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A249725 (n + 1) - 1).toNat

end

end A117303.P13626131083259821010

namespace A117303

/-- `A054582(A249725(n+1)-1)` -/
def P13626131083259821010.Spec : Prop :=
  ∀ n, P13626131083259821010.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P17567144657273624511

`A054582(A007814(n+1)+A209268(n+1)-A003602(n+1))`
-/

namespace A117303.P17567144657273624511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A007814 (n + 1) + (A209268 (n + 1) - A003602 (n + 1))).toNat

end

end A117303.P17567144657273624511

namespace A117303

/-- `A054582(A007814(n+1)+A209268(n+1)-A003602(n+1))` -/
def P17567144657273624511.Spec : Prop :=
  ∀ n, P17567144657273624511.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P16908998840627337598

`A135764(A246274(A246676(n+1)))`
-/

namespace A117303.P16908998840627337598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A246274 (A246676 (n + 1)).toNat).toNat

end

end A117303.P16908998840627337598

namespace A117303

/-- `A135764(A246274(A246676(n+1)))` -/
def P16908998840627337598.Spec : Prop :=
  ∀ n, P16908998840627337598.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P16455898050532450303

`A001511((n+1)²)*A082392(n)`
-/

namespace A117303.P16455898050532450303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((n + 1) ^ 2) * A082392 n

end

end A117303.P16455898050532450303

namespace A117303

/-- `A001511((n+1)²)*A082392(n)` -/
def P16455898050532450303.Spec : Prop :=
  ∀ n, P16455898050532450303.a n = A117303 (n + 1)

end A117303

/-! ## A117303.P14975594038167255963

`A000079(A025480(n))*A001511((n+1)²)`
-/

namespace A117303.P14975594038167255963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025480 n).toNat * A001511 ((n + 1) ^ 2)

end

end A117303.P14975594038167255963

namespace A117303

/-- `A000079(A025480(n))*A001511((n+1)²)` -/
def P14975594038167255963.Spec : Prop :=
  ∀ n, P14975594038167255963.a n = A117303 (n + 1)

end A117303

/-!
# A117304: Numbers with an even number of digits such that the second half is twice the first half.

The programs for A117304, the canonical program `A117304.P10783132350936566897` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117304 has offset 1).

The definition of A117304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117304.P10783132350936566897

`∩[A019550(n+1), A019550(n+1)%A235497(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117304

/-- `∩[A019550(n+1), A019550(n+1)%A235497(n+1)]` -/
def P10783132350936566897.Spec : Prop :=
  ∀ n, (P10783132350936566897.a n : ℤ) = A117304 (n + 1)

theorem P10783132350936566897.correct : P10783132350936566897.Spec := by
  intro n
  simp only [A117304, Nat.add_sub_cancel]

end A117304

/-! ## A117304.P8362889478451098858

`∩[A001637(n+1), A019550(n+1)]`
-/

namespace A117304.P8362889478451098858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P8362889478451098858

namespace A117304

/-- `∩[A001637(n+1), A019550(n+1)]` -/
def P8362889478451098858.Spec : Prop :=
  ∀ n, (P8362889478451098858.a n : ℤ) = A117304 (n + 1)

end A117304

/-! ## A117304.P6592371600546037505

`∩[A001637(3*(n+1)), A309809(n+1)-1]`
-/

namespace A117304.P6592371600546037505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P6592371600546037505

namespace A117304

/-- `∩[A001637(3*(n+1)), A309809(n+1)-1]` -/
def P6592371600546037505.Spec : Prop :=
  ∀ n, (P6592371600546037505.a n : ℤ) = A117304 (n + 1)

end A117304

/-! ## A117304.P941189820583157526

`∩[3*A061085(n+1), A001637(3*(n+1))]`
-/

namespace A117304.P941189820583157526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P941189820583157526

namespace A117304

/-- `∩[3*A061085(n+1), A001637(3*(n+1))]` -/
def P941189820583157526.Spec : Prop :=
  ∀ n, (P941189820583157526.a n : ℤ) = A117304 (n + 1)

end A117304

/-!
# A117305: Triangular numbers for which the sum of the digits is a pentagonal number.

The programs for A117305, there is no canonical definition to state claims against.
-/

/-! ## A117305.P16139940411545207050

`eq[A000119(A007953(n)), A010054(n)]`
-/

namespace A117305.P16139940411545207050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117305.P16139940411545207050

/-! ## A117305.P2651109089693172721

`eq[A008949(n), A066657(A007953(n))]`
-/

namespace A117305.P2651109089693172721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117305.P2651109089693172721

/-! ## A117305.P16705066015255502094

`eq[A013609(n), A066657(A007953(n))]`
-/

namespace A117305.P16705066015255502094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117305.P16705066015255502094

/-! ## A117305.P6776794012506365172

`eq[A047120(n), A256434(A007953(n))]`
-/

namespace A117305.P6776794012506365172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117305.P6776794012506365172

/-! ## A117305.P13319036203709067071

`eq[A059268(n), A256434(A007953(n))]`
-/

namespace A117305.P13319036203709067071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117305.P13319036203709067071

/-!
# A117307: Numbers for which (phi(n))^2+phi(n)+1 is a prime number.

The programs for A117307, the canonical program `A117307.P10752850070173381648` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117307 has offset 1).

The definition of A117307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117307.P10752850070173381648

`eq[1, A289356(A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117307

/-- `eq[1, A289356(A000010(n+1))]+1` -/
def P10752850070173381648.Spec : Prop :=
  ∀ n, (P10752850070173381648.a n : ℤ) = A117307 (n + 1)

theorem P10752850070173381648.correct : P10752850070173381648.Spec := by
  intro n
  simp only [A117307, Nat.add_sub_cancel]

end A117307

/-! ## A117307.P5848530659044636798

`record[A000027(n+1)/A289356(A000010(n+1))]`
-/

namespace A117307.P5848530659044636798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A289356 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117307.P5848530659044636798

namespace A117307

/-- `record[A000027(n+1)/A289356(A000010(n+1))]` -/
def P5848530659044636798.Spec : Prop :=
  ∀ n, P5848530659044636798.a n = (A117307 (n + 1) : ℚ)

end A117307

/-! ## A117307.P4112951765014049759

`eq[2, A278251(A039649(n+1))]+1`
-/

namespace A117307.P4112951765014049759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117307.P4112951765014049759

namespace A117307

/-- `eq[2, A278251(A039649(n+1))]+1` -/
def P4112951765014049759.Spec : Prop :=
  ∀ n, (P4112951765014049759.a n : ℤ) = A117307 (n + 1)

end A117307

/-! ## A117307.P2762534020813489311

`record[(A005408(n)+1)/A278251(A039649(n+1))]`
-/

namespace A117307.P2762534020813489311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1 : ℚ) / (A278251 (A039649 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117307.P2762534020813489311

namespace A117307

/-- `record[(A005408(n)+1)/A278251(A039649(n+1))]` -/
def P2762534020813489311.Spec : Prop :=
  ∀ n, P2762534020813489311.a n = (A117307 (n + 1) : ℚ)

end A117307

/-! ## A117307.P11340657074133360477

`record[A008620(3*n)/A289356(A000010(n+1))]`
-/

namespace A117307.P11340657074133360477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A289356 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117307.P11340657074133360477

namespace A117307

/-- `record[A008620(3*n)/A289356(A000010(n+1))]` -/
def P11340657074133360477.Spec : Prop :=
  ∀ n, P11340657074133360477.a n = (A117307 (n + 1) : ℚ)

end A117307

/-!
# A117308: Numbers k for which phi(k)^2 + phi(k) + 1 is a palindrome.

The programs for A117308, there is no canonical definition to state claims against.
-/

/-! ## A117308.P1470022312351902798

`lt[A275361(A015126(n+1)), 1]+1`
-/

namespace A117308.P1470022312351902798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275361 (A015126 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A117308.P1470022312351902798

/-! ## A117308.P8516566223039815826

`∩[A079310(n+1), A117729(n+1)]`
-/

namespace A117308.P8516566223039815826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117308.P8516566223039815826

/-! ## A117308.P16058973265646666098

`eq[1, A000959(C(A000010(n+1), 4)+1)%7]+1`
-/

namespace A117308.P16058973265646666098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (Nat.choose (A000010 (n + 1)).toNat 4 + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117308.P16058973265646666098

/-! ## A117308.P1547596486343783398

`A079310(A029747(n+1)%(A093370(3*n+1)+2))`
-/

namespace A117308.P1547596486343783398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (Int.tmod (A029747 (n + 1)) (A093370 (3 * n + 1) + 2)).toNat

end

end A117308.P1547596486343783398

/-!
# A117309: Triangular numbers for which the sum of the digits is a hexagonal number.

The programs for A117309, there is no canonical definition to state claims against.
-/

/-! ## A117309.P12485562452279038319

`eq[A109128(n), A332014(A007953(n))]`
-/

namespace A117309.P12485562452279038319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117309.P12485562452279038319

/-! ## A117309.P15059776520314956607

`eq[A001263(n+1), A332014(A007953(n))]`
-/

namespace A117309.P15059776520314956607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117309.P15059776520314956607

/-! ## A117309.P808783448211735403

`eq[A208510(n+1), A332014(A007953(n))]`
-/

namespace A117309.P808783448211735403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117309.P808783448211735403

/-! ## A117309.P53370670949195628

`eq[A208520(n+1), A332014(A007953(n))]`
-/

namespace A117309.P53370670949195628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117309.P53370670949195628

/-! ## A117309.P10295662849885456917

`eq[A209996(n+1), A332014(A007953(n))]`
-/

namespace A117309.P10295662849885456917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117309.P10295662849885456917

/-!
# A117310: Triangular numbers for which the product of the digits is a hexagonal number.

The programs for A117310, there is no canonical definition to state claims against.
-/

/-! ## A117310.P10795779381496322165

`eq[A010054(n), A243881(A007954(n))]`
-/

namespace A117310.P10795779381496322165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243881 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117310.P10795779381496322165

/-! ## A117310.P607847411509721372

`eq[A064282(n), A243881(A007954(n))]`
-/

namespace A117310.P607847411509721372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243881 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117310.P607847411509721372

/-! ## A117310.P12570590757838010095

`eq[A243881(A007954(n)), A249251(n)]`
-/

namespace A117310.P12570590757838010095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243881 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117310.P12570590757838010095

/-! ## A117310.P1693492453787282448

`eq[A008305(n+1), A361540(A003987(2*n))]`
-/

namespace A117310.P1693492453787282448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (A003987 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117310.P1693492453787282448

/-!
# A117311: Beginning with sequence A096903, choose only those rows such that when a(n) is in factored form all exponents of a(n) are consecutive starting at 1.

The programs for A117311, there is no canonical definition to state claims against.
-/

/-! ## A117311.P2010989599169868479

`∩[A018710(n+1), A317089(n+1)]`
-/

namespace A117311.P2010989599169868479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117311.P2010989599169868479

/-! ## A117311.P15514599608621504222

`A317089(A029731(n+2))`
-/

namespace A117311.P15514599608621504222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (A029731 (n + 2)).toNat

end

end A117311.P15514599608621504222

/-! ## A117311.P14600859362123219490

`A317089(A029969(n+2))`
-/

namespace A117311.P14600859362123219490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (A029969 (n + 2)).toNat

end

end A117311.P14600859362123219490

/-! ## A117311.P7452036437452095503

`A317089(A029970(n+2))`
-/

namespace A117311.P7452036437452095503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (A029970 (n + 2)).toNat

end

end A117311.P7452036437452095503

/-! ## A117311.P4448987286150340754

`A317089(A248899(n+2))`
-/

namespace A117311.P4448987286150340754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (A248899 (n + 2)).toNat

end

end A117311.P4448987286150340754

/-!
# A117312: Triangular numbers for which the sum of the digits is a heptagonal number.

The programs for A117312, there is no canonical definition to state claims against.
-/

/-! ## A117312.P15970436073559024763

`eq[A082985(n), A193739(A136614(n))]`
-/

namespace A117312.P15970436073559024763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A136614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117312.P15970436073559024763

/-! ## A117312.P13228796111420595958

`eq[A059268(n), A288387(A136614(n))]`
-/

namespace A117312.P13228796111420595958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 (A136614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117312.P13228796111420595958

/-! ## A117312.P10708015995600493580

`lt[A266213(A136614(n)), A073423(n)]`
-/

namespace A117312.P10708015995600493580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A136614 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117312.P10708015995600493580

/-!
# A117313: Average of twin-prime pairs for pairs that are expressible as the sum of two triangular numbers.

The programs for A117313, there is no canonical definition to state claims against.
-/

/-! ## A117313.P3406339052136402349

`A118638(n+1)+A010121(A174546(n))`
-/

namespace A117313.P3406339052136402349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1) + A010121 (A174546 n).toNat

end

end A117313.P3406339052136402349

/-! ## A117313.P13732786204104560213

`A118638(n+1)+A001222(A158711(n+1))`
-/

namespace A117313.P13732786204104560213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1) + A001222 (A158711 (n + 1)).toNat

end

end A117313.P13732786204104560213

/-! ## A117313.P15085830620343192525

`A118638(n+1)+A056832(A136126(n+1))`
-/

namespace A117313.P15085830620343192525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1) + A056832 (A136126 (n + 1)).toNat

end

end A117313.P15085830620343192525

/-! ## A117313.P11719102837356811307

`A118638(n+1)+A032742(A109945(n+2))`
-/

namespace A117313.P11719102837356811307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1) + A032742 (A109945 (n + 2)).toNat

end

end A117313.P11719102837356811307

/-! ## A117313.P18242091626255596724

`A333843(A073939(n+2))+A118638(n+1)`
-/

namespace A117313.P18242091626255596724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A073939 (n + 2)).toNat + A118638 (n + 1)

end

end A117313.P18242091626255596724

/-!
# A117314: Twin-prime pairs expressible as the sum of two triangular numbers.

The programs for A117314, there is no canonical definition to state claims against.
-/

/-! ## A117314.P16300549123321635061

`A118638(A008619(n))+Δ[or(1, n)]`
-/

namespace A117314.P16300549123321635061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A117314.P16300549123321635061

/-! ## A117314.P7769564620400163767

`∪[A118638(n+1)+2, A118638(n+1)]`
-/

namespace A117314.P7769564620400163767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117314.P7769564620400163767

/-! ## A117314.P5787085689552022361

`A118638(A008619(n))+A010673(n)`
-/

namespace A117314.P5787085689552022361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (A008619 n).toNat + A010673 n

end

end A117314.P5787085689552022361

/-! ## A117314.P15001711709994374512

`A118638(A008619(n))+2*A000035(n)`
-/

namespace A117314.P15001711709994374512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118638 (A008619 n).toNat + 2 * A000035 n

end

end A117314.P15001711709994374512

/-! ## A117314.P10258073199592920252

`A323202(2*(n+1))+A118638(A008619(n))`
-/

namespace A117314.P10258073199592920252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * (n + 1)) + A118638 (A008619 n).toNat

end

end A117314.P10258073199592920252

/-!
# A117315: Primes within +1 or -1 of a central binomial coefficient C(2n,n).

The programs for A117315, there is no canonical definition to state claims against.
-/

/-! ## A117315.P7614038449401369496

`p?[C(or(1, n)-1, floor(n/2))-(-1)^n]`
-/

namespace A117315.P7614038449401369496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((Nat.lor 1 n : ℤ) - 1).toNat ⌊(n : ℚ) / 2⌋.toNat : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117315.P7614038449401369496

/-! ## A117315.P9945764214596785981

`p?[abs(1-Δ[A126869(n)])]`
-/

namespace A117315.P9945764214596785981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117315.P9945764214596785981

/-! ## A117315.P14324893698800442011

`p?[A128014(n)-(-1)^n]`
-/

namespace A117315.P14324893698800442011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117315.P14324893698800442011

/-! ## A117315.P7026850209180123839

`p?[A000984(floor(n/2))-(-1)^n]`
-/

namespace A117315.P7026850209180123839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117315.P7026850209180123839

/-! ## A117315.P5621152613194008062

`p?[A103452(n)+A067804(n)]`
-/

namespace A117315.P5621152613194008062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n + A067804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117315.P5621152613194008062

/-!
# A117316: Riordan array ((1-x)/(1-x-2x^2),x(1-x)/(1-x-2x^2)).

The programs for A117316, there is no canonical definition to state claims against.
-/

/-! ## A117316.P18024967263572611563

`A077600(A109189(n)²+1)`
-/

namespace A117316.P18024967263572611563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077600 (A109189 n ^ 2 + 1).toNat

end

end A117316.P18024967263572611563

/-! ## A117316.P18052358226977158690

`and(7, A112911(A185869(n+1)))`
-/

namespace A117316.P18052358226977158690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A112911 (A185869 (n + 1)).toNat)

end

end A117316.P18052358226977158690

/-! ## A117316.P8493885258028041488

`A077600(A002522(A109189(n)))`
-/

namespace A117316.P8493885258028041488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077600 (A002522 (A109189 n).toNat).toNat

end

end A117316.P8493885258028041488

/-! ## A117316.P7550972932806233124

`A330955(A039598(n))+A053121(n)`
-/

namespace A117316.P7550972932806233124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 (A039598 n).toNat + A053121 n

end

end A117316.P7550972932806233124

/-! ## A117316.P9598004101331573020

`A038548(A107717(n))*A097609(n)`
-/

namespace A117316.P9598004101331573020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A107717 n).toNat * A097609 n

end

end A117316.P9598004101331573020

/-!
# A117317: Triangle related to partitions of n.

The programs for A117317, there is no canonical definition to state claims against.
-/

/-! ## A117317.P9956107465441568673

`A056242(A038722(n+1))`
-/

namespace A117317.P9956107465441568673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (A038722 (n + 1)).toNat

end

end A117317.P9956107465441568673

/-! ## A117317.P7172148031353476556

`A056242(A061579(n)+1)`
-/

namespace A117317.P7172148031353476556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (A061579 n + 1).toNat

end

end A117317.P7172148031353476556

/-! ## A117317.P3907187200530124885

`A056242(A168038(n+1)-n)`
-/

namespace A117317.P3907187200530124885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (A168038 (n + 1) - (n : ℤ)).toNat

end

end A117317.P3907187200530124885

/-! ## A117317.P1556084124231174886

`A056242(A002024(n+1)²-n)`
-/

namespace A117317.P1556084124231174886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A117317.P1556084124231174886

/-! ## A117317.P6444675469269006915

`A056242(A057944(n)+A004736(n+1))`
-/

namespace A117317.P6444675469269006915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (A057944 n + A004736 (n + 1)).toNat

end

end A117317.P6444675469269006915

/-!
# A117322: a(n) = prime(n) modulo semiprime(n).

The programs for A117322, the canonical program `A117322.P9266692658550598741` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117322 has offset 1).

The definition of A117322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117322.P6769492863747193694

`Δ[A007504(n)]%A001358(n+1)`
-/

namespace A117322.P6769492863747193694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001358 (n + 1))

end

end A117322.P6769492863747193694

namespace A117322

/-- `Δ[A007504(n)]%A001358(n+1)` -/
def P6769492863747193694.Spec : Prop :=
  ∀ n, P6769492863747193694.a n = A117322 (n + 1)

end A117322

/-! ## A117322.P9707158738317816593

`A000040(n+1)%A001358(n+1)`
-/

namespace A117322.P9707158738317816593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A001358 (n + 1))

end

end A117322.P9707158738317816593

namespace A117322

/-- `A000040(n+1)%A001358(n+1)` -/
def P9707158738317816593.Spec : Prop :=
  ∀ n, P9707158738317816593.a n = A117322 (n + 1)

end A117322

/-! ## A117322.P916184510602997701

`A133796(n+1)%A001358(n+1)`
-/

namespace A117322.P916184510602997701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133796 (n + 1)) (A001358 (n + 1))

end

end A117322.P916184510602997701

namespace A117322

/-- `A133796(n+1)%A001358(n+1)` -/
def P916184510602997701.Spec : Prop :=
  ∀ n, P916184510602997701.a n = A117322 (n + 1)

end A117322

/-! ## A117322.P9266692658550598741

`(A006093(n+1)+1)%(A100493(n+1)-(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117322

/-- `(A006093(n+1)+1)%(A100493(n+1)-(n+1))` -/
def P9266692658550598741.Spec : Prop :=
  ∀ n, P9266692658550598741.a n = A117322 (n + 1)

theorem P9266692658550598741.correct : P9266692658550598741.Spec := by
  intro n
  simp only [A117322, Nat.add_sub_cancel]

end A117322

/-! ## A117322.P14252806488827333185

`A000040(A000027(n+1))%sqrt(A074985(n+1))`
-/

namespace A117322.P14252806488827333185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000027 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ)))

end

end A117322.P14252806488827333185

namespace A117322

/-- `A000040(A000027(n+1))%sqrt(A074985(n+1))` -/
def P14252806488827333185.Spec : Prop :=
  ∀ n, P14252806488827333185.a n = A117322 (n + 1)

end A117322

/-! ## A117322.P2344204785255354049

`A008578(n+2)%A001358(n+1)`
-/

namespace A117322.P2344204785255354049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A001358 (n + 1))

end

end A117322.P2344204785255354049

namespace A117322

/-- `A008578(n+2)%A001358(n+1)` -/
def P2344204785255354049.Spec : Prop :=
  ∀ n, P2344204785255354049.a n = A117322 (n + 1)

end A117322

/-!
# A117323: Semiprime(n) modulo prime(n).

The programs for A117323, the canonical program `A117323.P15298187514945109916` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117323 has offset 1).

The definition of A117323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117323.P1840619002340703087

`A133796(n+1)%A000040(n+1)`
-/

namespace A117323.P1840619002340703087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133796 (n + 1)) (A000040 (n + 1))

end

end A117323.P1840619002340703087

namespace A117323

/-- `A133796(n+1)%A000040(n+1)` -/
def P1840619002340703087.Spec : Prop :=
  ∀ n, P1840619002340703087.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P17387938628547994830

`sqrt(A074985(n+1))%Δ[A007504(n)]`
-/

namespace A117323.P17387938628547994830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) (f1 (n + 1) - f1 n)

end

end A117323.P17387938628547994830

namespace A117323

/-- `sqrt(A074985(n+1))%Δ[A007504(n)]` -/
def P17387938628547994830.Spec : Prop :=
  ∀ n, P17387938628547994830.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P10785853227900967571

`(A186621(n+1)+1)%Δ[A007504(n)]`
-/

namespace A117323.P10785853227900967571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186621 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A117323.P10785853227900967571

namespace A117323

/-- `(A186621(n+1)+1)%Δ[A007504(n)]` -/
def P10785853227900967571.Spec : Prop :=
  ∀ n, P10785853227900967571.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P15298187514945109916

`(A088707(n+1)-1)%A000040(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117323

/-- `(A088707(n+1)-1)%A000040(n+1)` -/
def P15298187514945109916.Spec : Prop :=
  ∀ n, P15298187514945109916.a n = A117323 (n + 1)

theorem P15298187514945109916.correct : P15298187514945109916.Spec := by
  intro n
  simp only [A117323, Nat.add_sub_cancel]

end A117323

/-! ## A117323.P15549866653369837739

`(A075818(n+1)/2)%A000040(n+1)`
-/

namespace A117323.P15549866653369837739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)) (A000040 (n + 1))

end

end A117323.P15549866653369837739

namespace A117323

/-- `(A075818(n+1)/2)%A000040(n+1)` -/
def P15549866653369837739.Spec : Prop :=
  ∀ n, P15549866653369837739.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P11534737182977350480

`(eq[2, A001222(n+1)]+1)%A000040(n+1)`
-/

namespace A117323.P11534737182977350480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A000040 (n + 1))

end

end A117323.P11534737182977350480

namespace A117323

/-- `(eq[2, A001222(n+1)]+1)%A000040(n+1)` -/
def P11534737182977350480.Spec : Prop :=
  ∀ n, P11534737182977350480.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P3977437605618479014

`(A175708(n+1)+n+1)%A000040(n+1)`
-/

namespace A117323.P3977437605618479014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175708 (n + 1) + (n + 1 : ℤ)) (A000040 (n + 1))

end

end A117323.P3977437605618479014

namespace A117323

/-- `(A175708(n+1)+n+1)%A000040(n+1)` -/
def P3977437605618479014.Spec : Prop :=
  ∀ n, P3977437605618479014.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P15236217770625720645

`record[n/a(A001222(n))]%A000040(n+1)` with `a(0)=4, a(1)=2`
-/

namespace A117323.P15236217770625720645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A000040 (n + 1))

end

end A117323.P15236217770625720645

namespace A117323

/-- `record[n/a(A001222(n))]%A000040(n+1)` -/
def P15236217770625720645.Spec : Prop :=
  ∀ n, P15236217770625720645.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P11940338408530670085

`(∑[A065516(abs(1-n)+1)]+1)%A000040(n+1)`
-/

namespace A117323.P11940338408530670085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A000040 (n + 1))

end

end A117323.P11940338408530670085

namespace A117323

/-- `(∑[A065516(abs(1-n)+1)]+1)%A000040(n+1)` -/
def P11940338408530670085.Spec : Prop :=
  ∀ n, P11940338408530670085.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P18009426853699828656

`(A084126(n+1)*A084127(n+1))%A000040(n+1)`
-/

namespace A117323.P18009426853699828656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084126 (n + 1) * A084127 (n + 1)) (A000040 (n + 1))

end

end A117323.P18009426853699828656

namespace A117323

/-- `(A084126(n+1)*A084127(n+1))%A000040(n+1)` -/
def P18009426853699828656.Spec : Prop :=
  ∀ n, P18009426853699828656.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P14737774428920470577

`--A001358(n+1)%record[A020639(n+2)]`
-/

namespace A117323.P14737774428920470577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A001358 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117323.P14737774428920470577

namespace A117323

/-- `--A001358(n+1)%record[A020639(n+2)]` -/
def P14737774428920470577.Spec : Prop :=
  ∀ n, P14737774428920470577.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P2450207947017711328

`eq[2, A105700(n)]%A000040(n+1)`
-/

namespace A117323.P2450207947017711328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1))

end

end A117323.P2450207947017711328

namespace A117323

/-- `eq[2, A105700(n)]%A000040(n+1)` -/
def P2450207947017711328.Spec : Prop :=
  ∀ n, P2450207947017711328.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P6231936704358470541

`eq[2, A226378(n)]%A000040(n+1)`
-/

namespace A117323.P6231936704358470541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1))

end

end A117323.P6231936704358470541

namespace A117323

/-- `eq[2, A226378(n)]%A000040(n+1)` -/
def P6231936704358470541.Spec : Prop :=
  ∀ n, P6231936704358470541.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P17849843295915992625

`eq[2, A284289(n)]%A000040(n+1)`
-/

namespace A117323.P17849843295915992625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1))

end

end A117323.P17849843295915992625

namespace A117323

/-- `eq[2, A284289(n)]%A000040(n+1)` -/
def P17849843295915992625.Spec : Prop :=
  ∀ n, P17849843295915992625.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P11827057653459402691

`eq[3, A001222(A008486(n))]%A000040(n+1)`
-/

namespace A117323.P11827057653459402691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1))

end

end A117323.P11827057653459402691

namespace A117323

/-- `eq[3, A001222(A008486(n))]%A000040(n+1)` -/
def P11827057653459402691.Spec : Prop :=
  ∀ n, P11827057653459402691.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P5119334438184763955

`eq[4, A001222(A008458(n))]%A000040(n+1)`
-/

namespace A117323.P5119334438184763955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1))

end

end A117323.P5119334438184763955

namespace A117323

/-- `eq[4, A001222(A008458(n))]%A000040(n+1)` -/
def P5119334438184763955.Spec : Prop :=
  ∀ n, P5119334438184763955.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P17154238518584799012

`abs(A088707(n+1)-1)%record[A014963(n+2)]`
-/

namespace A117323.P17154238518584799012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A088707 (n + 1) - 1| (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117323.P17154238518584799012

namespace A117323

/-- `abs(A088707(n+1)-1)%record[A014963(n+2)]` -/
def P17154238518584799012.Spec : Prop :=
  ∀ n, P17154238518584799012.a n = A117323 (n + 1)

end A117323

/-! ## A117323.P6307901005019431374

`A001358(n+1)%A138980(n)`
-/

namespace A117323.P6307901005019431374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) (A138980 n)

end

end A117323.P6307901005019431374

namespace A117323

/-- `A001358(n+1)%A138980(n)` -/
def P6307901005019431374.Spec : Prop :=
  ∀ n, P6307901005019431374.a n = A117323 (n + 1)

end A117323

/-!
# A117324: Prime(10^n) modulo semiprime(10^n).

The programs for A117324, the canonical program `A117324.P7300000195388936430` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117324 has offset 0).

The definition of A117324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117324.P7300000195388936430

`A117322(10^n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117324

/-- `A117322(10^n)` -/
def P7300000195388936430.Spec : Prop :=
  ∀ n, P7300000195388936430.a n = A117324 n

theorem P7300000195388936430.correct : P7300000195388936430.Spec := by
  intro n
  simp only [A117324]

end A117324

/-! ## A117324.P14184252386757459401

`A006988(n)%A114125(n)`
-/

namespace A117324.P14184252386757459401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006988 n) (A114125 n)

end

end A117324.P14184252386757459401

namespace A117324

/-- `A006988(n)%A114125(n)` -/
def P14184252386757459401.Spec : Prop :=
  ∀ n, P14184252386757459401.a n = A117324 n

end A117324

/-! ## A117324.P1910061441886677684

`A347000(eq[8, A025581(n)])%A114125(n)`
-/

namespace A117324.P1910061441886677684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A114125 n)

end

end A117324.P1910061441886677684

namespace A117324

/-- `A347000(eq[8, A025581(n)])%A114125(n)` -/
def P1910061441886677684.Spec : Prop :=
  ∀ n, P1910061441886677684.a n = A117324 n

end A117324

/-! ## A117324.P1687544227458100759

`A347000(A155212(n+5)-1)%A114125(n)`
-/

namespace A117324.P1687544227458100759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A155212 (n + 5) - 1).toNat) (A114125 n)

end

end A117324.P1687544227458100759

namespace A117324

/-- `A347000(A155212(n+5)-1)%A114125(n)` -/
def P1687544227458100759.Spec : Prop :=
  ∀ n, P1687544227458100759.a n = A117324 n

end A117324

/-! ## A117324.P2824940770180526979

`A347000(A052905(n+6)-4)%A114125(n)`
-/

namespace A117324.P2824940770180526979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A052905 (n + 6) - 4).toNat) (A114125 n)

end

end A117324.P2824940770180526979

namespace A117324

/-- `A347000(A052905(n+6)-4)%A114125(n)` -/
def P2824940770180526979.Spec : Prop :=
  ∀ n, P2824940770180526979.a n = A117324 n

end A117324

/-!
# A117325: Indices of primes in A117322 prime(n) modulo semiprime(n).

The programs for A117325, the canonical program `A117325.P15664503875955505884` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117325 has offset 1).

The definition of A117325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117325.P15664503875955505884

`eq[1, A001222(A117322(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117325

/-- `eq[1, A001222(A117322(n+1))]+1` -/
def P15664503875955505884.Spec : Prop :=
  ∀ n, (P15664503875955505884.a n : ℤ) = A117325 (n + 1)

theorem P15664503875955505884.correct : P15664503875955505884.Spec := by
  intro n
  simp only [A117325, Nat.add_sub_cancel]

end A117325

/-! ## A117325.P10888622921455782063

`record[A000027(n+1)/A074206(A117322(n+1))]`
-/

namespace A117325.P10888622921455782063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A074206 (A117322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117325.P10888622921455782063

namespace A117325

/-- `record[A000027(n+1)/A074206(A117322(n+1))]` -/
def P10888622921455782063.Spec : Prop :=
  ∀ n, P10888622921455782063.a n = (A117325 (n + 1) : ℚ)

end A117325

/-! ## A117325.P17096123818444253767

`record[(1-A001489(n))/A074206(A117322(n+1))]`
-/

namespace A117325.P17096123818444253767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n : ℚ) / (A074206 (A117322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117325.P17096123818444253767

namespace A117325

/-- `record[(1-A001489(n))/A074206(A117322(n+1))]` -/
def P17096123818444253767.Spec : Prop :=
  ∀ n, P17096123818444253767.a n = (A117325 (n + 1) : ℚ)

end A117325

/-! ## A117325.P4490968206194783714

`record[A008619(2*n)/A074206(A117322(n+1))]`
-/

namespace A117325.P4490968206194783714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A074206 (A117322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117325.P4490968206194783714

namespace A117325

/-- `record[A008619(2*n)/A074206(A117322(n+1))]` -/
def P4490968206194783714.Spec : Prop :=
  ∀ n, P4490968206194783714.a n = (A117325 (n + 1) : ℚ)

end A117325

/-! ## A117325.P4416520071506869353

`record[A080513(2*n)/A074206(A117322(n+1))]`
-/

namespace A117325.P4416520071506869353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (2 * n) : ℚ) / (A074206 (A117322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117325.P4416520071506869353

namespace A117325

/-- `record[A080513(2*n)/A074206(A117322(n+1))]` -/
def P4416520071506869353.Spec : Prop :=
  ∀ n, P4416520071506869353.a n = (A117325 (n + 1) : ℚ)

end A117325

/-!
# A117326: Indices of semiprimes in A117322 prime(n) modulo semiprime(n).

The programs for A117326, the canonical program `A117326.P509397902039623545` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117326 has offset 1).

The definition of A117326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3575 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117326.P509397902039623545

`eq[2, A001222(A117322(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117326

/-- `eq[2, A001222(A117322(n+1))]+1` -/
def P509397902039623545.Spec : Prop :=
  ∀ n, (P509397902039623545.a n : ℤ) = A117326 (n + 1)

theorem P509397902039623545.correct : P509397902039623545.Spec := by
  intro n
  simp only [A117326, Nat.add_sub_cancel]

end A117326

/-! ## A117326.P9545150101260829555

`lt[8, A289052(A137809(n))]`
-/

namespace A117326.P9545150101260829555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289052 (A137809 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A117326.P9545150101260829555

namespace A117326

/-- `lt[8, A289052(A137809(n))]` -/
def P9545150101260829555.Spec : Prop :=
  ∀ n, (P9545150101260829555.a n : ℤ) = A117326 (n + 1)

end A117326

/-!
# A117327: Triangular numbers for which the product of the digits is a heptagonal number.

The programs for A117327, there is no canonical definition to state claims against.
-/

/-! ## A117327.P8673654098724124374

`eq[A026820(n+1), A332015(A007954(n))]`
-/

namespace A117327.P8673654098724124374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117327.P8673654098724124374

/-! ## A117327.P17445110949525907467

`eq[A103881(n+1), A332015(A007954(n))]`
-/

namespace A117327.P17445110949525907467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117327.P17445110949525907467

/-! ## A117327.P10965535416120383551

`eq[A100047(A008578(n+1)), A183244(n+1)]`
-/

namespace A117327.P10965535416120383551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117327.P10965535416120383551

/-! ## A117327.P9780618974119350025

`eq[A007966(A062039(n)), A260613(n)]`
-/

namespace A117327.P9780618974119350025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A062039 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117327.P9780618974119350025

/-!
# A117328: Primes p such that p +- 4 are semiprimes.

The programs for A117328, the canonical program `A117328.P16042985740885843836` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117328 has offset 1).

The definition of A117328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117328.P16042985740885843836

`∩[A092104(n+1), A289250(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A117328

/-- `∩[A092104(n+1), A289250(n+1)]` -/
def P16042985740885843836.Spec : Prop :=
  ∀ n, (P16042985740885843836.a n : ℤ) = A117328 (n + 1)

theorem P16042985740885843836.correct : P16042985740885843836.Spec := by
  intro n
  simp only [A117328, Nat.add_sub_cancel]

end A117328

/-! ## A117328.P3398583993526140272

`p?[A256382(n+1)]`
-/

namespace A117328.P3398583993526140272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117328.P3398583993526140272

namespace A117328

/-- `p?[A256382(n+1)]` -/
def P3398583993526140272.Spec : Prop :=
  ∀ n, P3398583993526140272.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P3636918383125261203

`p?[record[A256382(A291769(n))]]`
-/

namespace A117328.P3636918383125261203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117328.P3636918383125261203

namespace A117328

/-- `p?[record[A256382(A291769(n))]]` -/
def P3636918383125261203.Spec : Prop :=
  ∀ n, P3636918383125261203.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P14641757892706896066

`p?[record[A256382(A323889(n))]]`
-/

namespace A117328.P14641757892706896066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117328.P14641757892706896066

namespace A117328

/-- `p?[record[A256382(A323889(n))]]` -/
def P14641757892706896066.Spec : Prop :=
  ∀ n, P14641757892706896066.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P17281076825837734120

`p?[record[A256382(A324347(n))]]`
-/

namespace A117328.P17281076825837734120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117328.P17281076825837734120

namespace A117328

/-- `p?[record[A256382(A324347(n))]]` -/
def P17281076825837734120.Spec : Prop :=
  ∀ n, P17281076825837734120.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P13115695410337944458

`record[A006530(A256382(n+3))]`
-/

namespace A117328.P13115695410337944458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256382 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117328.P13115695410337944458

namespace A117328

/-- `record[A006530(A256382(n+3))]` -/
def P13115695410337944458.Spec : Prop :=
  ∀ n, P13115695410337944458.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P1906830673760257560

`filter[A256382(n+1), A010051(#)]`
-/

namespace A117328.P1906830673760257560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117328.P1906830673760257560

namespace A117328

/-- `filter[A256382(n+1), A010051(#)]` -/
def P1906830673760257560.Spec : Prop :=
  ∀ n, P1906830673760257560.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P4136865149226373249

`filter[A256382(n+1), A323152(#)]`
-/

namespace A117328.P4136865149226373249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A117328.P4136865149226373249

namespace A117328

/-- `filter[A256382(n+1), A323152(#)]` -/
def P4136865149226373249.Spec : Prop :=
  ∀ n, P4136865149226373249.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P11384630023567089600

`filter[A256382(n+1), A323153(#)]`
-/

namespace A117328.P11384630023567089600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A117328.P11384630023567089600

namespace A117328

/-- `filter[A256382(n+1), A323153(#)]` -/
def P11384630023567089600.Spec : Prop :=
  ∀ n, P11384630023567089600.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P12277287206031619725

`filter[A256382(n+1), A380467(#)]`
-/

namespace A117328.P12277287206031619725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A117328.P12277287206031619725

namespace A117328

/-- `filter[A256382(n+1), A380467(#)]` -/
def P12277287206031619725.Spec : Prop :=
  ∀ n, P12277287206031619725.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P11020656292614144125

`filter[A256382(n+2), A340371(#)]`
-/

namespace A117328.P11020656292614144125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A117328.P11020656292614144125

namespace A117328

/-- `filter[A256382(n+2), A340371(#)]` -/
def P11020656292614144125.Spec : Prop :=
  ∀ n, P11020656292614144125.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P9751019463377099274

`filter[A256382(n+2), A353670(#)]`
-/

namespace A117328.P9751019463377099274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A117328.P9751019463377099274

namespace A117328

/-- `filter[A256382(n+2), A353670(#)]` -/
def P9751019463377099274.Spec : Prop :=
  ∀ n, P9751019463377099274.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P4822946543008768011

`filter[A256382(n+2), A365716(#)]`
-/

namespace A117328.P4822946543008768011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A117328.P4822946543008768011

namespace A117328

/-- `filter[A256382(n+2), A365716(#)]` -/
def P4822946543008768011.Spec : Prop :=
  ∀ n, P4822946543008768011.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P18215078098839614255

`∩[A092104(n+1), A256382(n+1)]`
-/

namespace A117328.P18215078098839614255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117328.P18215078098839614255

namespace A117328

/-- `∩[A092104(n+1), A256382(n+1)]` -/
def P18215078098839614255.Spec : Prop :=
  ∀ n, (P18215078098839614255.a n : ℤ) = A117328 (n + 1)

end A117328

/-! ## A117328.P11628351182658306534

`∩[A256382(n+1), A263090(n+1)]`
-/

namespace A117328.P11628351182658306534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117328.P11628351182658306534

namespace A117328

/-- `∩[A256382(n+1), A263090(n+1)]` -/
def P11628351182658306534.Spec : Prop :=
  ∀ n, (P11628351182658306534.a n : ℤ) = A117328 (n + 1)

end A117328

/-! ## A117328.P13113066648656986586

`∩[A256382(n+1), A289250(n+1)]`
-/

namespace A117328.P13113066648656986586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117328.P13113066648656986586

namespace A117328

/-- `∩[A256382(n+1), A289250(n+1)]` -/
def P13113066648656986586.Spec : Prop :=
  ∀ n, (P13113066648656986586.a n : ℤ) = A117328 (n + 1)

end A117328

/-! ## A117328.P4024133897660343268

`p?[A000035(n)*A256382(A065033(n))]`
-/

namespace A117328.P4024133897660343268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A256382 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117328.P4024133897660343268

namespace A117328

/-- `p?[A000035(n)*A256382(A065033(n))]` -/
def P4024133897660343268.Spec : Prop :=
  ∀ n, P4024133897660343268.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P3201081093268644281

`filter[A256382(n+1), A080339(#)]`
-/

namespace A117328.P3201081093268644281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A117328.P3201081093268644281

namespace A117328

/-- `filter[A256382(n+1), A080339(#)]` -/
def P3201081093268644281.Spec : Prop :=
  ∀ n, P3201081093268644281.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P4373084662374200616

`filter[A256382(n+1), A080545(#)]`
-/

namespace A117328.P4373084662374200616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A117328.P4373084662374200616

namespace A117328

/-- `filter[A256382(n+1), A080545(#)]` -/
def P4373084662374200616.Spec : Prop :=
  ∀ n, P4373084662374200616.a n = A117328 (n + 1)

end A117328

/-! ## A117328.P4680595385775647447

`filter[A256382(n+1), A171387(#)]`
-/

namespace A117328.P4680595385775647447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A117328.P4680595385775647447

namespace A117328

/-- `filter[A256382(n+1), A171387(#)]` -/
def P4680595385775647447.Spec : Prop :=
  ∀ n, P4680595385775647447.a n = A117328 (n + 1)

end A117328

/-!
# A117329: Determinants of 3 X 3 matrices of discrete blocks of 9 consecutive primes.

The programs for A117329, there is no canonical definition to state claims against.
-/

/-! ## A117329.P13859886146981005433

`A117330(9*n+1)`
-/

namespace A117329.P13859886146981005433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (9 * n + 1)

end

end A117329.P13859886146981005433

/-! ## A117329.P15242688611094800446

`A117330(A017173(n))%A016953(n)`
-/

namespace A117329.P15242688611094800446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117330 (A017173 n).toNat) (A016953 n)

end

end A117329.P15242688611094800446

/-! ## A117329.P6222848471326560285

`A117330(A017173(n))+floor((A114986(n)-3)/5)+1`
-/

namespace A117329.P6222848471326560285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat + ⌊(A114986 n - 3 : ℚ) / 5⌋ + 1

end

end A117329.P6222848471326560285

/-! ## A117329.P8309549449996570076

`A183094(A006530(n+1))+A117330(A017173(n))`
-/

namespace A117329.P8309549449996570076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A006530 (n + 1)).toNat + A117330 (A017173 n).toNat

end

end A117329.P8309549449996570076

/-! ## A117329.P973332135877690737

`A117330(A017173(n))+A000122(A001122(n+1))`
-/

namespace A117329.P973332135877690737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat + A000122 (A001122 (n + 1)).toNat

end

end A117329.P973332135877690737

/-! ## A117329.P9302831069176897

`A117330(A017173(n))+A000122(A023201(n+1))`
-/

namespace A117329.P9302831069176897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat + A000122 (A023201 (n + 1)).toNat

end

end A117329.P9302831069176897

/-! ## A117329.P11084352996609366826

`A117330(A017173(n))+A000122(A034694(n+1))`
-/

namespace A117329.P11084352996609366826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat + A000122 (A034694 (n + 1)).toNat

end

end A117329.P11084352996609366826

/-! ## A117329.P5752144593856979695

`A117330(A017173(n))-A152770(A033210(n+1))`
-/

namespace A117329.P5752144593856979695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat - A152770 (A033210 (n + 1)).toNat

end

end A117329.P5752144593856979695

/-! ## A117329.P12214741145120010806

`A117330(A017173(n))-A318757(∑[n])`
-/

namespace A117329.P12214741145120010806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117330 (A017173 n).toNat - A318757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117329.P12214741145120010806

/-!
# A117331: Lexicographically earliest permutation of prime powers such that the exponents of succeeding terms increase at most by 1.

The programs for A117331, there is no canonical definition to state claims against.
-/

/-! ## A117331.P14840346003424116943

`A000961(A117332(n+1))`
-/

namespace A117331.P14840346003424116943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A117332 (n + 1)).toNat

end

end A117331.P14840346003424116943

/-! ## A117331.P6630041704313797098

`A181062(A117332(Δ[n²]-n))+1`
-/

namespace A117331.P6630041704313797098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (A117332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A117331.P6630041704313797098

/-! ## A117331.P16240512026268931922

`A057427(n)*A181062(A117332(n+1))+1`
-/

namespace A117331.P16240512026268931922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A181062 (A117332 (n + 1)).toNat + 1

end

end A117331.P16240512026268931922

/-! ## A117331.P18323536166495445828

`A181062(A117332(n+1))%A308251(n)+1`
-/

namespace A117331.P18323536166495445828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181062 (A117332 (n + 1)).toNat) (A308251 n) + 1

end

end A117331.P18323536166495445828

/-! ## A117331.P11029156698487568153

`A054977(n)²*A181062(A117332(n+1))+1`
-/

namespace A117331.P11029156698487568153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n ^ 2 * A181062 (A117332 (n + 1)).toNat + 1

end

end A117331.P11029156698487568153

/-! ## A117331.P4076595915817777918

`A165326(n)²*A181062(A117332(n+1))+1`
-/

namespace A117331.P4076595915817777918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A181062 (A117332 (n + 1)).toNat + 1

end

end A117331.P4076595915817777918

/-! ## A117331.P12164823436183043594

`(A000038(n)+1)*A181062(A117332(n+1))+1`
-/

namespace A117331.P12164823436183043594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + 1) * A181062 (A117332 (n + 1)).toNat + 1

end

end A117331.P12164823436183043594

/-! ## A117331.P14774830378866858931

`A181062(A117332(n+1))/(1-A264668(n))+1`
-/

namespace A117331.P14774830378866858931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181062 (A117332 (n + 1)).toNat : ℚ) / (1 - A264668 n : ℚ) + 1

end

end A117331.P14774830378866858931

/-! ## A117331.P815941664978592267

`(A181062(A117332(n+1))+1)%A033993(n+1)`
-/

namespace A117331.P815941664978592267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181062 (A117332 (n + 1)).toNat + 1) (A033993 (n + 1))

end

end A117331.P815941664978592267

/-! ## A117331.P9056715947973944748

`A181062(A117332(n+1))+1-n-A001489(n)`
-/

namespace A117331.P9056715947973944748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (A117332 (n + 1)).toNat + 1 - (n : ℤ) - A001489 n

end

end A117331.P9056715947973944748

/-!
# A117332: A095874(A117331(n)).

The programs for A117332, there is no canonical definition to state claims against.
-/

/-! ## A117332.P11165074050555428695

`A095874(A117331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117332.P11165074050555428695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A117331 (n + 1)).toNat

end

end A117332.P11165074050555428695

/-! ## A117332.P183122770003732824

`A097621(A117331(n+1)-char[5])`
-/

namespace A117332.P183122770003732824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A117331 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A117332.P183122770003732824

/-! ## A117332.P12061814942272816477

`A097621(∑{d}[A117331(n+1), A000010(#)])`
-/

namespace A117332.P12061814942272816477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A117332.P12061814942272816477

/-!
# A117334: Triangle, read by rows, where column 0 is [1,-1,-2,-3,...,-n,...] and column k+1 is generated by the binomial transform of column k preceded by a zero (column k includes the k zeros above the main diagonal).

The programs for A117334, there is no canonical definition to state claims against.
-/

/-! ## A117334.P10680949346145456959

`Δ[-A163940(A061579(n))]`
-/

namespace A117334.P10680949346145456959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P10680949346145456959

/-! ## A117334.P17290866522341644863

`Δ[-A163940(A038722(n+1)-1)]`
-/

namespace A117334.P17290866522341644863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A163940 (A038722 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P17290866522341644863

/-! ## A117334.P10705117475206453699

`Δ[A133707(n+1)-A163940(A061579(n))]`
-/

namespace A117334.P10705117475206453699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P10705117475206453699

/-! ## A117334.P16935540359826206330

`Δ[n*A000007(n)-A163940(A061579(n))]`
-/

namespace A117334.P16935540359826206330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P16935540359826206330

/-! ## A117334.P5118419733892866104

`Δ[A020639(2*(n+1))-A163940(A061579(n))]`
-/

namespace A117334.P5118419733892866104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P5118419733892866104

/-! ## A117334.P18329911685753980859

`Δ[A008683(4*(n+1))-A163940(A061579(n))]`
-/

namespace A117334.P18329911685753980859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P18329911685753980859

/-! ## A117334.P292348615752022188

`Δ[A000040(n+2)%2-A163940(A061579(n))]`
-/

namespace A117334.P292348615752022188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P292348615752022188

/-! ## A117334.P10854593856471039678

`Δ[2*n-A005408(n)-A163940(A061579(n))]`
-/

namespace A117334.P10854593856471039678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005408 n - A163940 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P10854593856471039678

/-! ## A117334.P4407344502158999930

`Δ[A000034(2*n)-A163940(A038722(n+1)-1)]`
-/

namespace A117334.P4407344502158999930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - A163940 (A038722 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117334.P4407344502158999930

/-!
# A117336: Column 1 of triangle A117335.

The programs for A117336, there is no canonical definition to state claims against.
-/

/-! ## A117336.P15857154974800086333

`∑[A062157(n)*A104981(n)]`
-/

namespace A117336.P15857154974800086333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A104981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117336.P15857154974800086333

/-! ## A117336.P16215920599868878946

`∑[A104981(n)*A165326(n)]`
-/

namespace A117336.P16215920599868878946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104981 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117336.P16215920599868878946

/-! ## A117336.P10601194829287612645

`∑[A062157(n)*A104986(∑[n])]`
-/

namespace A117336.P10601194829287612645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A104986 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117336.P10601194829287612645

/-! ## A117336.P1386484531116148015

`∑[A033999(n+1)*A104981(n)]`
-/

namespace A117336.P1386484531116148015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A104981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117336.P1386484531116148015

/-! ## A117336.P10248343919869522528

`∑[A033999(n+1)*A104986(A000217(n))]`
-/

namespace A117336.P10248343919869522528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A104986 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117336.P10248343919869522528

/-!
# A117337: Column 2 of triangle A117335.

The programs for A117337, there is no canonical definition to state claims against.
-/

/-! ## A117337.P7539123082116312238

`(-1)^n*A048865(A001147(n))`
-/

namespace A117337.P7539123082116312238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A048865 (A001147 n).toNat

end

end A117337.P7539123082116312238

/-!
# A117338: Row sums of triangle A117335.

The programs for A117338, there is no canonical definition to state claims against.
-/

/-! ## A117338.P11099047377620272781

`∑[A158882(n)]`
-/

namespace A117338.P11099047377620272781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117338.P11099047377620272781

/-! ## A117338.P13807062638944212416

`∑[A208896(∑[n+2]-1)]`
-/

namespace A117338.P13807062638944212416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117338.P13807062638944212416

/-! ## A117338.P4504640252169359690

`∑[(-1)^n*A167894(n)]`
-/

namespace A117338.P4504640252169359690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A167894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117338.P4504640252169359690

/-! ## A117338.P9469798092100028866

`∑[A167894(n)/A033999(n)]`
-/

namespace A117338.P9469798092100028866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167894 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117338.P9469798092100028866

/-! ## A117338.P12829616519939842697

`∑[xor(A004442(n)-n, A167894(n)-1)]`
-/

namespace A117338.P12829616519939842697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n - (n : ℤ)) (A167894 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117338.P12829616519939842697

/-!
# A117339: a(n) = a(n-1) + a(n-2); if a(n) is not prime divide a(n) by its largest prime factor.

The programs for A117339, the canonical program `A117339.P17778983441884019671` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117339 has offset 1).

The definition of A117339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117339.P17778983441884019671

`and(or(1, a(n-2)), xor(2-a(n-2), a(n-1)))+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117339

/-- `and(or(1, a(n-2)), xor(2-a(n-2), a(n-1)))+2` -/
def P17778983441884019671.Spec : Prop :=
  ∀ n, P17778983441884019671.a n = A117339 (n + 1)

theorem P17778983441884019671.correct : P17778983441884019671.Spec := by
  intro n
  simp only [A117339, Nat.add_sub_cancel]

end A117339

/-!
# A117340: Least hypotenuse of primitive Pythagorean triangle exceeding 10^n.

The programs for A117340, there is no canonical definition to state claims against.
-/

/-! ## A117340.P15720655828537785701

`A112276(A218451(n)+3)`
-/

namespace A117340.P15720655828537785701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112276 (A218451 n + 3).toNat

end

end A117340.P15720655828537785701

/-!
# A117341: Greatest hypotenuse of primitive Pythagorean triangle not exceeding 10^n.

The programs for A117341, there is no canonical definition to state claims against.
-/

/-! ## A117341.P15162739252096284250

`A008846(A369108(n+1)-1)`
-/

namespace A117341.P15162739252096284250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (A369108 (n + 1) - 1).toNat

end

end A117341.P15162739252096284250

/-!
# A117342: Records in A113436.

The programs for A117342, there is no canonical definition to state claims against.
-/

/-! ## A117342.P12012932123612274235

`record[A114536(n+1)]`
-/

namespace A117342.P12012932123612274235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117342.P12012932123612274235

/-!
# A117343: Position of n in A114536.

The programs for A117343, there is no canonical definition to state claims against.
-/

/-! ## A117343.P3582923973408603222

`(n+1)*A196050(∑[n]+3^n+1)`
-/

namespace A117343.P3582923973408603222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A196050 (∑ j ∈ Finset.range (n + 1), f1 j + 3 ^ n + 1)

end

end A117343.P3582923973408603222

/-! ## A117343.P9846469630716110667

`(n+1)*A003434(A122367(n+1))`
-/

namespace A117343.P9846469630716110667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003434 (A122367 (n + 1)).toNat

end

end A117343.P9846469630716110667

/-! ## A117343.P18140182040487223569

`and(-(n+1), A276884(A034856(n+1)))`
-/

namespace A117343.P18140182040487223569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (A276884 (A034856 (n + 1)).toNat)

end

end A117343.P18140182040487223569

/-! ## A117343.P11532110703461551306

`(n+1)*A003434(A000045(2*n+3))`
-/

namespace A117343.P11532110703461551306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003434 (A000045 (2 * n + 3)).toNat

end

end A117343.P11532110703461551306

/-! ## A117343.P1729313539218475913

`(n+1)*(A206483(A032555(n+1))+n+1)`
-/

namespace A117343.P1729313539218475913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A206483 (A032555 (n + 1)).toNat + (n + 1 : ℤ))

end

end A117343.P1729313539218475913

/-!
# A117345: Indices n such that the 3 X 3 matrix with components (row by row) prime(n+k), 0 <= k <= 8, has zero determinant.

The programs for A117345, there is no canonical definition to state claims against.
-/

/-! ## A117345.P3863997047983686700

`A340869(lt[A340874(n+1), 1]+1)`
-/

namespace A117345.P3863997047983686700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340874 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340869 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A117345.P3863997047983686700

/-! ## A117345.P16785380646115730336

`record[gcd(A340869(n+7), A340874(n+7))]`
-/

namespace A117345.P16785380646115730336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340869 (n + 7)) (A340874 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117345.P16785380646115730336

/-! ## A117345.P15800933017045462297

`A340869(eq[1, A340874(n+1)+1]+1)`
-/

namespace A117345.P15800933017045462297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340874 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117345.P15800933017045462297

/-! ## A117345.P2273533431316257374

`A000720(A337160(n+1))`
-/

namespace A117345.P2273533431316257374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A337160 (n + 1)).toNat

end

end A117345.P2273533431316257374

/-!
# A117346: Near-multiperfects: numbers m such that abs(sigma(m) mod m) <= log(m).

The programs for A117346, there is no canonical definition to state claims against.
-/

/-! ## A117346.P11442355328784100361

`∪[A006005(n+1), A117347(n+1)]`
-/

namespace A117346.P11442355328784100361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117346.P11442355328784100361

/-! ## A117346.P10766579503740484427

`eq[A184974(A077814(n)), A186715(n+1)]`
-/

namespace A117346.P10766579503740484427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A077814 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117346.P10766579503740484427

/-! ## A117346.P18273409730914870519

`lt[A278986(A136496(n+1)), A323766(n)]`
-/

namespace A117346.P18273409730914870519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278986 (A136496 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117346.P18273409730914870519

/-! ## A117346.P13548353275998402067

`lt[A116384(n+2), A220537(A016789(n))]`
-/

namespace A117346.P13548353275998402067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117346.P13548353275998402067

/-! ## A117346.P3906282312540871885

`record[A328620(A007954(n))+A234954(n+1)]`
-/

namespace A117346.P3906282312540871885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A007954 n).toNat + A234954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117346.P3906282312540871885

/-!
# A117347: Near-multiperfects with primes excluded, abs(sigma(m) mod m) <= log(m).

The programs for A117347, there is no canonical definition to state claims against.
-/

/-! ## A117347.P944609371297067176

`∪[A088011(n+1), A117348(n+1)]`
-/

namespace A117347.P944609371297067176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117347.P944609371297067176

/-! ## A117347.P13205218952291978383

`∪[A088011(n+1), A117349(n+1)]%A117349(n+1)`
-/

namespace A117347.P13205218952291978383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A117349 (n + 1))

end

end A117347.P13205218952291978383

/-! ## A117347.P11756097797742931019

`∪[A088011(n+1), A117350(n+1)]%A117350(n+1)`
-/

namespace A117347.P11756097797742931019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117350 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A117350 (n + 1))

end

end A117347.P11756097797742931019

/-! ## A117347.P2979683829705177272

`filter[A117346(n+1), A066247(#)]`
-/

namespace A117347.P2979683829705177272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A117347.P2979683829705177272

/-! ## A117347.P17287134499036144396

`filter[A117346(n+2), A005171(#)]`
-/

namespace A117347.P17287134499036144396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117347.P17287134499036144396

/-! ## A117347.P13778366987602331702

`∩[A068354(n+1), A117346(n+1)]`
-/

namespace A117347.P13778366987602331702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117347.P13778366987602331702

/-!
# A117349: Near-multiperfects with primes, powers of 2 and 6 * prime excluded, abs(sigma(n) mod n) <= log(n).

The programs for A117349, there is no canonical definition to state claims against.
-/

/-! ## A117349.P1020543865297378354

`A117348(n+1)%A155573(n+1)²`
-/

namespace A117349.P1020543865297378354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117348 (n + 1)) (A155573 (n + 1) ^ 2)

end

end A117349.P1020543865297378354

/-! ## A117349.P12373582043965414318

`A117348(n+1)+A005171(A216498(n+1))`
-/

namespace A117349.P12373582043965414318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117348 (n + 1) + A005171 (A216498 (n + 1)).toNat

end

end A117349.P12373582043965414318

/-! ## A117349.P8091476234619348295

`A133080(A117314(n+1))+A117348(n+1)`
-/

namespace A117349.P8091476234619348295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133080 (A117314 (n + 1)).toNat + A117348 (n + 1)

end

end A117349.P8091476234619348295

/-! ## A117349.P17786241475714771415

`A216218(A176600(n+1))+A117348(n+1)`
-/

namespace A117349.P17786241475714771415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216218 (A176600 (n + 1)).toNat + A117348 (n + 1)

end

end A117349.P17786241475714771415

/-! ## A117349.P3167731865973313203

`A117371(A117392(n+2))+A117348(n+1)`
-/

namespace A117349.P3167731865973313203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (A117392 (n + 2)).toNat + A117348 (n + 1)

end

end A117349.P3167731865973313203

/-!
# A117350: Near-multiperfects with primes, powers of 2, 6 * prime and 2^n * prime excluded, abs(sigma(n) mod n) <= log(n).

The programs for A117350, there is no canonical definition to state claims against.
-/

/-! ## A117350.P11137390489812789605

`∩[A000977(n+1), A117346(n+1)]`
-/

namespace A117350.P11137390489812789605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117350.P11137390489812789605

/-! ## A117350.P15922947439589000363

`∩[A000977(n+1), A117347(n+1)]`
-/

namespace A117350.P15922947439589000363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117350.P15922947439589000363

/-! ## A117350.P15593830995989746403

`∩[A000977(n+1), A117348(n+1)]`
-/

namespace A117350.P15593830995989746403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117350.P15593830995989746403

/-!
# A117352: Riordan array (1/(1-2x), x(1-2x)/(1-x)).

The programs for A117352, there is no canonical definition to state claims against.
-/

/-! ## A117352.P6736675827566109728

`A130321(n)-A032741(A111820(n))`
-/

namespace A117352.P6736675827566109728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A032741 (A111820 n).toNat

end

end A117352.P6736675827566109728

/-! ## A117352.P8628428543934443326

`and(p?[A093565(n)], A102363(n))`
-/

namespace A117352.P8628428543934443326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A102363 n)

end

end A117352.P8628428543934443326

/-! ## A117352.P3205624679569954833

`C(comp[2*(n+3)]+1, A302374(A211399(n)))`
-/

namespace A117352.P3205624679569954833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) (A302374 (A211399 n).toNat).toNat

end

end A117352.P3205624679569954833

/-! ## A117352.P1741922702791804714

`A068009(n)-A025458(A176639(n))`
-/

namespace A117352.P1741922702791804714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 n - A025458 (A176639 n).toNat

end

end A117352.P1741922702791804714

/-! ## A117352.P4469883891937945147

`A113310(n)^A001227(A018006(n))`
-/

namespace A117352.P4469883891937945147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113310 n : ℚ) ^ (A001227 (A018006 n).toNat : ℤ)

end

end A117352.P4469883891937945147

/-!
# A117353: Expansion of (1-x)/(1-3x+x^2+4x^3-4x^4).

The programs for A117353, the canonical program `A117353.P15712095946758575765` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117353 has offset 0).

The definition of A117353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117353.P15712095946758575765

`3*a(n-1)-a(n-2)-4*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117353

/-- `3*a(n-1)-a(n-2)-4*a(n-3)+4*a(n-4)` -/
def P15712095946758575765.Spec : Prop :=
  ∀ n, P15712095946758575765.a n = A117353 n

theorem P15712095946758575765.correct : P15712095946758575765.Spec := by
  intro n
  simp only [A117353]

end A117353

/-! ## A117353.P12935626052526160711

`a(n-1)+A078011(n)+a(n-1)` with `a(0)=1`
-/

namespace A117353.P12935626052526160711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A078011 n + a (n - 1))

end

end A117353.P12935626052526160711

namespace A117353

/-- `a(n-1)+A078011(n)+a(n-1)` -/
def P12935626052526160711.Spec : Prop :=
  ∀ n, P12935626052526160711.a n = A117353 n

end A117353

/-! ## A117353.P16028836969140971099

`xor(A109004(A033155(n+1)), A208127(n))`
-/

namespace A117353.P16028836969140971099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109004 (A033155 (n + 1)).toNat) (A208127 n)

end

end A117353.P16028836969140971099

namespace A117353

/-- `xor(A109004(A033155(n+1)), A208127(n))` -/
def P16028836969140971099.Spec : Prop :=
  ∀ n, P16028836969140971099.a n = A117353 n

end A117353

/-!
# A117355: Riordan array (1/(1-x^2),x(1-2x^2)/(1-x^2)).

The programs for A117355, there is no canonical definition to state claims against.
-/

/-! ## A117355.P13987825676703269110

`A059285(A168561(n))^A178300(A130321(n))`
-/

namespace A117355.P13987825676703269110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059285 (A168561 n).toNat : ℚ) ^ (A178300 (A130321 n).toNat : ℤ)

end

end A117355.P13987825676703269110

/-! ## A117355.P2391670283313769059

`A164092(A032766(A168561(n)²))`
-/

namespace A117355.P2391670283313769059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164092 (A032766 (A168561 n ^ 2).toNat).toNat

end

end A117355.P2391670283313769059

/-! ## A117355.P3808024179504201816

`2-A084558(A023106(A131325(n)))`
-/

namespace A117355.P3808024179504201816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084558 (A023106 (A131325 n).toNat).toNat

end

end A117355.P3808024179504201816

/-! ## A117355.P7565030555369012378

`A059285(A168561(n)^A308135(n+1))`
-/

namespace A117355.P7565030555369012378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 (SequenceMachineLib.roundAway ((A168561 n : ℚ) ^ (A308135 (n + 1) : ℤ))).toNat

end

end A117355.P7565030555369012378

/-! ## A117355.P9066322234235221991

`A020639(A225750(n))-A134505(n+1)`
-/

namespace A117355.P9066322234235221991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225750 n).toNat - A134505 (n + 1)

end

end A117355.P9066322234235221991

/-!
# A117356: Number of rooted trees with total weight n, where the weight of a node at height k is k (with the root considered to be at level 0).

The programs for A117356, there is no canonical definition to state claims against.
-/

/-! ## A117356.P14397147724894111738

`A095861(A336141(n))+1`
-/

namespace A117356.P14397147724894111738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A336141 n).toNat + 1

end

end A117356.P14397147724894111738

/-! ## A117356.P9131090850403757024

`A204164(A336141(n)+2-n)`
-/

namespace A117356.P9131090850403757024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A336141 n + (2 - (n : ℤ))).toNat

end

end A117356.P9131090850403757024

/-! ## A117356.P1599656919430092527

`A204164(2-(n-A336141(n)))`
-/

namespace A117356.P1599656919430092527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (2 - ((n : ℤ) - A336141 n)).toNat

end

end A117356.P1599656919430092527

/-! ## A117356.P8735862624751626140

`A204164(xor(A004247(n), A336141(n)))`
-/

namespace A117356.P8735862624751626140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (Int.xor (A004247 n) (A336141 n)).toNat

end

end A117356.P8735862624751626140

/-! ## A117356.P2101013397771596418

`A204551(A288230(n+1))`
-/

namespace A117356.P2101013397771596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A288230 (n + 1)).toNat

end

end A117356.P2101013397771596418

/-!
# A117357: Number of rooted trees with total weight n, where the weight of a node at height k is k (with the root considered to be at level 1).

The programs for A117357, there is no canonical definition to state claims against.
-/

/-! ## A117357.P16113835887011325207

`Δ[floor(A156875(A276024(n+1))/2)]`
-/

namespace A117357.P16113835887011325207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156875 (A276024 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117357.P16113835887011325207

/-! ## A117357.P9915917829305981395

`Δ[A000196(A023853(A079289(n)))]`
-/

namespace A117357.P9915917829305981395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A023853 (A079289 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117357.P9915917829305981395

/-! ## A117357.P11414205280702857020

`Δ[A276611(A325473(n))]`
-/

namespace A117357.P11414205280702857020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A325473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117357.P11414205280702857020

/-! ## A117357.P3001521078740582649

`Δ[A121902(∑[A204631(n+2)])]`
-/

namespace A117357.P3001521078740582649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204631 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117357.P3001521078740582649

/-! ## A117357.P11994809446115019254

`floor(A361849(3*n+5)/A136047(n+1))%(3^n)`
-/

namespace A117357.P11994809446115019254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A361849 (3 * n + 5) : ℚ) / (A136047 (n + 1) : ℚ)⌋ (3 ^ n : ℤ)

end

end A117357.P11994809446115019254

/-!
# A117358: a(n) = A032742(A032742(A032742(n))) = ((n/lpf(n))/lpf(n/lpf(n)))/lpf((n/lpf(n))/lpf(n/lpf(n))), where lpf=A020639, least prime factor.

The programs for A117358, there is no canonical definition to state claims against.
-/

/-! ## A117358.P6038415293988123175

`A032742(A054576(n+1))`
-/

namespace A117358.P6038415293988123175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A054576 (n + 1)).toNat

end

end A117358.P6038415293988123175

/-! ## A117358.P9309280778731908798

`A054576(n+1)/A115561(n+1)`
-/

namespace A117358.P9309280778731908798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (n + 1) : ℚ) / (A115561 (n + 1) : ℚ)

end

end A117358.P9309280778731908798

/-! ## A117358.P13575678912180262843

`A032742(A032742(A032742(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117358.P13575678912180262843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (A032742 (n + 1)).toNat).toNat

end

end A117358.P13575678912180262843

/-! ## A117358.P8229455167982481706

`A054576(A063928(n+1))`
-/

namespace A117358.P8229455167982481706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A063928 (n + 1)).toNat

end

end A117358.P8229455167982481706

/-! ## A117358.P3716984647330685830

`A054576(A117818(n+1))`
-/

namespace A117358.P3716984647330685830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A117818 (n + 1)).toNat

end

end A117358.P3716984647330685830

/-! ## A117358.P1846770720756433495

`A054576(2*A054576(n+1))`
-/

namespace A117358.P1846770720756433495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A054576 (n + 1)).toNat

end

end A117358.P1846770720756433495

/-! ## A117358.P13152126010990767631

`A054576((n+1)/A014673(n+1))`
-/

namespace A117358.P13152126010990767631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014673 (n + 1) : ℚ))).toNat

end

end A117358.P13152126010990767631

/-! ## A117358.P2549345676538647505

`A054576((n+1)/A020639(n+1))`
-/

namespace A117358.P2549345676538647505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A117358.P2549345676538647505

/-! ## A117358.P9035660773029257759

`A054576(A054576(n+1)+A054576(n+1))`
-/

namespace A117358.P9035660773029257759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A054576 (n + 1) + A054576 (n + 1)).toNat

end

end A117358.P9035660773029257759

/-! ## A117358.P9410995519861409840

`sqrt(A054576(A054576(n+1)²))`
-/

namespace A117358.P9410995519861409840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054576 (A054576 (n + 1) ^ 2).toNat : ℝ)

end

end A117358.P9410995519861409840

/-!
# A117360: Numbers m such that m and 2*m+1 have the same number of prime factors (with repetitions).

The programs for A117360, the canonical program `A117360.P8510576072130256341` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117360 has offset 1).

The definition of A117360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117360.P8510576072130256341

`eq[A001222(2*n+3), A001222(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117360

/-- `eq[A001222(2*n+3), A001222(n+1)]+1` -/
def P8510576072130256341.Spec : Prop :=
  ∀ n, (P8510576072130256341.a n : ℤ) = A117360 (n + 1)

theorem P8510576072130256341.correct : P8510576072130256341.Spec := by
  intro n
  simp only [A117360, Nat.add_sub_cancel]

end A117360

/-! ## A117360.P11564139719937492270

`A020725(eq[A001222(2*n+3), A001222(n+1)])`
-/

namespace A117360.P11564139719937492270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117360.P11564139719937492270

namespace A117360

/-- `A020725(eq[A001222(2*n+3), A001222(n+1)])` -/
def P11564139719937492270.Spec : Prop :=
  ∀ n, P11564139719937492270.a n = A117360 (n + 1)

end A117360

/-! ## A117360.P2187901155783634570

`eq[∑{e}[n+1, #], ∑{e}[2*(n+1)+1, #]]+1`
-/

namespace A117360.P2187901155783634570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A117360.P2187901155783634570

namespace A117360

/-- `eq[∑{e}[n+1, #], ∑{e}[2*(n+1)+1, #]]+1` -/
def P2187901155783634570.Spec : Prop :=
  ∀ n, (P2187901155783634570.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P6502937491395868367

`eq[A001222(4*n+2), A001222(A004277(n))]`
-/

namespace A117360.P6502937491395868367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117360.P6502937491395868367

namespace A117360

/-- `eq[A001222(4*n+2), A001222(A004277(n))]` -/
def P6502937491395868367.Spec : Prop :=
  ∀ n, (P6502937491395868367.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P6381753750874578223

`eq[A001222(4*n+2), A001222(A008486(n))]`
-/

namespace A117360.P6381753750874578223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117360.P6381753750874578223

namespace A117360

/-- `eq[A001222(4*n+2), A001222(A008486(n))]` -/
def P6381753750874578223.Spec : Prop :=
  ∀ n, (P6381753750874578223.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P409224232702365546

`eq[A061142(2*n+3), A061142(n+1)]+1`
-/

namespace A117360.P409224232702365546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117360.P409224232702365546

namespace A117360

/-- `eq[A061142(2*n+3), A061142(n+1)]+1` -/
def P409224232702365546.Spec : Prop :=
  ∀ n, (P409224232702365546.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P17797601623522727585

`eq[1, A076191(A004277(n))+2]`
-/

namespace A117360.P17797601623522727585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (A004277 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117360.P17797601623522727585

namespace A117360

/-- `eq[1, A076191(A004277(n))+2]` -/
def P17797601623522727585.Spec : Prop :=
  ∀ n, (P17797601623522727585.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P18212520644224960041

`eq[A165824(2*n+3), A165824(n+1)]+1`
-/

namespace A117360.P18212520644224960041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117360.P18212520644224960041

namespace A117360

/-- `eq[A165824(2*n+3), A165824(n+1)]+1` -/
def P18212520644224960041.Spec : Prop :=
  ∀ n, (P18212520644224960041.a n : ℤ) = A117360 (n + 1)

end A117360

/-! ## A117360.P10884980289847279119

`eq[A001222(A028310(n)), A086436(2*n+1)]`
-/

namespace A117360.P10884980289847279119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117360.P10884980289847279119

namespace A117360

/-- `eq[A001222(A028310(n)), A086436(2*n+1)]` -/
def P10884980289847279119.Spec : Prop :=
  ∀ n, (P10884980289847279119.a n : ℤ) = A117360 (n + 1)

end A117360

/-!
# A117362: Riordan array (1-2x,x(1-x)).

The programs for A117362, the canonical program `A117362.P15678424001013400889` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117362 has offset 0).

The definition of A117362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117362.P15678424001013400889

`A097807(n)*A113214(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117362

/-- `A097807(n)*A113214(n)` -/
def P15678424001013400889.Spec : Prop :=
  ∀ n, P15678424001013400889.a n = A117362 n

theorem P15678424001013400889.correct : P15678424001013400889.Spec := by
  intro n
  simp only [A117362]

end A117362

/-! ## A117362.P5881025552700479592

`A117372(n)-A057094(n+1)`
-/

namespace A117362.P5881025552700479592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117372 n - A057094 (n + 1)

end

end A117362.P5881025552700479592

namespace A117362

/-- `A117372(n)-A057094(n+1)` -/
def P5881025552700479592.Spec : Prop :=
  ∀ n, P5881025552700479592.a n = A117362 n

end A117362

/-! ## A117362.P10383045584014650991

`A109264(n)-A109466(n+1)`
-/

namespace A117362.P10383045584014650991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109264 n - A109466 (n + 1)

end

end A117362.P10383045584014650991

namespace A117362

/-- `A109264(n)-A109466(n+1)` -/
def P10383045584014650991.Spec : Prop :=
  ∀ n, P10383045584014650991.a n = A117362 n

end A117362

/-! ## A117362.P18097696983571486413

`A100218(comp[∑[n]])`
-/

namespace A117362.P18097696983571486413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117362.P18097696983571486413

namespace A117362

/-- `A100218(comp[∑[n]])` -/
def P18097696983571486413.Spec : Prop :=
  ∀ n, P18097696983571486413.a n = A117362 n

end A117362

/-! ## A117362.P11616031589082035615

`A100218(∑[A035214(n)])^ceil(2/(n+1))`
-/

namespace A117362.P11616031589082035615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (⌈2 / (n + 1 : ℚ)⌉ : ℤ)

end

end A117362.P11616031589082035615

namespace A117362

/-- `A100218(∑[A035214(n)])^ceil(2/(n+1))` -/
def P11616031589082035615.Spec : Prop :=
  ∀ n, P11616031589082035615.a n = (A117362 n : ℚ)

end A117362

/-! ## A117362.P5549545070737877590

`A244422(A099375(n)+n)`
-/

namespace A117362.P5549545070737877590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (A099375 n + (n : ℤ)).toNat

end

end A117362.P5549545070737877590

namespace A117362

/-- `A244422(A099375(n)+n)` -/
def P5549545070737877590.Spec : Prop :=
  ∀ n, P5549545070737877590.a n = A117362 n

end A117362

/-! ## A117362.P11268997991161723903

`A119275(n)/A094587(n)`
-/

namespace A117362.P11268997991161723903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A094587 n : ℚ)

end

end A117362.P11268997991161723903

namespace A117362

/-- `A119275(n)/A094587(n)` -/
def P11268997991161723903.Spec : Prop :=
  ∀ n, P11268997991161723903.a n = (A117362 n : ℚ)

end A117362

/-! ## A117362.P5516801627082605544

`A355341(A038722(n+2))`
-/

namespace A117362.P5516801627082605544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355341 (A038722 (n + 2)).toNat

end

end A117362.P5516801627082605544

namespace A117362

/-- `A355341(A038722(n+2))` -/
def P5516801627082605544.Spec : Prop :=
  ∀ n, P5516801627082605544.a n = A117362 n

end A117362

/-! ## A117362.P11911241162350352320

`A105868(A014132(n+1))/A130595(n)`
-/

namespace A117362.P11911241162350352320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 (A014132 (n + 1)).toNat : ℚ) / (A130595 n : ℚ)

end

end A117362.P11911241162350352320

namespace A117362

/-- `A105868(A014132(n+1))/A130595(n)` -/
def P11911241162350352320.Spec : Prop :=
  ∀ n, P11911241162350352320.a n = (A117362 n : ℚ)

end A117362

/-! ## A117362.P34695602472240253

`A244422(A380649(n+1))`
-/

namespace A117362.P34695602472240253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (A380649 (n + 1)).toNat

end

end A117362.P34695602472240253

namespace A117362

/-- `A244422(A380649(n+1))` -/
def P34695602472240253.Spec : Prop :=
  ∀ n, P34695602472240253.a n = A117362 n

end A117362

/-!
# A117363: Expansion of (1-2x)/(1-x^2+x^3).

The programs for A117363, the canonical program `A117363.P18166638970922382942` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117363 has offset 0).

The definition of A117363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117363.P18166638970922382942

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117363

/-- `a(n-2)-a(n-3)` -/
def P18166638970922382942.Spec : Prop :=
  ∀ n, P18166638970922382942.a n = A117363 n

theorem P18166638970922382942.correct : P18166638970922382942.Spec := by
  intro n
  simp only [A117363]

end A117363

/-! ## A117363.P8646692076761203313

`-A109248(n+5)`
-/

namespace A117363.P8646692076761203313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109248 (n + 5)

end

end A117363.P8646692076761203313

namespace A117363

/-- `-A109248(n+5)` -/
def P8646692076761203313.Spec : Prop :=
  ∀ n, P8646692076761203313.a n = A117363 n

end A117363

/-! ## A117363.P14231452323897051432

`A109248(n)-a(n-1)` with `a(0)=1`
-/

namespace A117363.P14231452323897051432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109248 n - a (n - 1)

end

end A117363.P14231452323897051432

namespace A117363

/-- `A109248(n)-a(n-1)` -/
def P14231452323897051432.Spec : Prop :=
  ∀ n, P14231452323897051432.a n = A117363 n

end A117363

/-! ## A117363.P3718926519152214101

`(-1)^n*A007307(n+1)`
-/

namespace A117363.P3718926519152214101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007307 (n + 1)

end

end A117363.P3718926519152214101

namespace A117363

/-- `(-1)^n*A007307(n+1)` -/
def P3718926519152214101.Spec : Prop :=
  ∀ n, P3718926519152214101.a n = A117363 n

end A117363

/-! ## A117363.P1648735758439215947

`A007307(n+1)*A033999(n)`
-/

namespace A117363.P1648735758439215947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) * A033999 n

end

end A117363.P1648735758439215947

namespace A117363

/-- `A007307(n+1)*A033999(n)` -/
def P1648735758439215947.Spec : Prop :=
  ∀ n, P1648735758439215947.a n = A117363 n

end A117363

/-! ## A117363.P9205670392414238450

`A109248(n)+A109248(n+4)`
-/

namespace A117363.P9205670392414238450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 n + A109248 (n + 4)

end

end A117363.P9205670392414238450

namespace A117363

/-- `A109248(n)+A109248(n+4)` -/
def P9205670392414238450.Spec : Prop :=
  ∀ n, P9205670392414238450.a n = A117363 n

end A117363

/-! ## A117363.P11549443982605615657

`A007307(n+1)*A056594(2*n)`
-/

namespace A117363.P11549443982605615657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) * A056594 (2 * n)

end

end A117363.P11549443982605615657

namespace A117363

/-- `A007307(n+1)*A056594(2*n)` -/
def P11549443982605615657.Spec : Prop :=
  ∀ n, P11549443982605615657.a n = A117363 n

end A117363

/-! ## A117363.P14752113669132350696

`Δ[A124745(n+1)-A124745(n+4)]`
-/

namespace A117363.P14752113669132350696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 1) - A124745 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117363.P14752113669132350696

namespace A117363

/-- `Δ[A124745(n+1)-A124745(n+4)]` -/
def P14752113669132350696.Spec : Prop :=
  ∀ n, P14752113669132350696.a n = A117363 n

end A117363

/-! ## A117363.P7633600707083338752

`(A007307(n)+Δ[A007307(n)])/A033999(n)`
-/

namespace A117363.P7633600707083338752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007307 n + (f1 (n + 1) - f1 n) : ℚ) / (A033999 n : ℚ)

end

end A117363.P7633600707083338752

namespace A117363

/-- `(A007307(n)+Δ[A007307(n)])/A033999(n)` -/
def P7633600707083338752.Spec : Prop :=
  ∀ n, P7633600707083338752.a n = (A117363 n : ℚ)

end A117363

/-! ## A117363.P10661577142273205464

`A007307(n+1)/A033999(n²)`
-/

namespace A117363.P10661577142273205464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007307 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A117363.P10661577142273205464

namespace A117363

/-- `A007307(n+1)/A033999(n²)` -/
def P10661577142273205464.Spec : Prop :=
  ∀ n, P10661577142273205464.a n = (A117363 n : ℚ)

end A117363

/-!
# A117364: a(n) = largest prime less than the largest prime dividing n (or 1 if there is no such prime).

The programs for A117364, the canonical program `A117364.P3531757736997744377` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117364 has offset 1).

The definition of A117364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117364.P11233915513695313848

`A064989(A006530(n+1))`
-/

namespace A117364.P11233915513695313848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A006530 (n + 1)).toNat

end

end A117364.P11233915513695313848

namespace A117364

/-- `A064989(A006530(n+1))` -/
def P11233915513695313848.Spec : Prop :=
  ∀ n, P11233915513695313848.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P4486542914096579218

`A079068(A053585(n+1))`
-/

namespace A117364.P4486542914096579218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A053585 (n + 1)).toNat

end

end A117364.P4486542914096579218

namespace A117364

/-- `A079068(A053585(n+1))` -/
def P4486542914096579218.Spec : Prop :=
  ∀ n, P4486542914096579218.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P4455036558499531578

`A064989(A111089(n+1))`
-/

namespace A117364.P4455036558499531578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A111089 (n + 1)).toNat

end

end A117364.P4455036558499531578

namespace A117364

/-- `A064989(A111089(n+1))` -/
def P4455036558499531578.Spec : Prop :=
  ∀ n, P4455036558499531578.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P10977258234364003019

`A064989(A299766(n+1))`
-/

namespace A117364.P10977258234364003019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A299766 (n + 1)).toNat

end

end A117364.P10977258234364003019

namespace A117364

/-- `A064989(A299766(n+1))` -/
def P10977258234364003019.Spec : Prop :=
  ∀ n, P10977258234364003019.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P1695528004416237573

`A079068(A323129(n+1))`
-/

namespace A117364.P1695528004416237573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A323129 (n + 1)).toNat

end

end A117364.P1695528004416237573

namespace A117364

/-- `A079068(A323129(n+1))` -/
def P1695528004416237573.Spec : Prop :=
  ∀ n, P1695528004416237573.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P15661406584662669971

`A079068(A345941(n+1))`
-/

namespace A117364.P15661406584662669971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A345941 (n + 1)).toNat

end

end A117364.P15661406584662669971

namespace A117364

/-- `A079068(A345941(n+1))` -/
def P15661406584662669971.Spec : Prop :=
  ∀ n, P15661406584662669971.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P2602198422988875572

`A008578(1+A252735(n+1))`
-/

namespace A117364.P2602198422988875572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A252735 (n + 1)).toNat

end

end A117364.P2602198422988875572

namespace A117364

/-- `A008578(1+A252735(n+1))` -/
def P2602198422988875572.Spec : Prop :=
  ∀ n, P2602198422988875572.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P3531757736997744377

`A008578(A061395(2*(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117364

/-- `A008578(A061395(2*(n+1)))` -/
def P3531757736997744377.Spec : Prop :=
  ∀ n, P3531757736997744377.a n = A117364 (n + 1)

theorem P3531757736997744377.correct : P3531757736997744377.Spec := by
  intro n
  simp only [A117364, Nat.add_sub_cancel]

end A117364

/-! ## A117364.P7931537339832855964

`A252462(A006530(2*(n+1)))`
-/

namespace A117364.P7931537339832855964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (A006530 (2 * (n + 1))).toNat

end

end A117364.P7931537339832855964

namespace A117364

/-- `A252462(A006530(2*(n+1)))` -/
def P7931537339832855964.Spec : Prop :=
  ∀ n, P7931537339832855964.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P13268447997476775687

`A064989((n+1)/A052126(n+1))`
-/

namespace A117364.P13268447997476775687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P13268447997476775687

namespace A117364

/-- `A064989((n+1)/A052126(n+1))` -/
def P13268447997476775687.Spec : Prop :=
  ∀ n, P13268447997476775687.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P18361767735670783215

`A065769((n+1)/A052126(n+1))`
-/

namespace A117364.P18361767735670783215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P18361767735670783215

namespace A117364

/-- `A065769((n+1)/A052126(n+1))` -/
def P18361767735670783215.Spec : Prop :=
  ∀ n, P18361767735670783215.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P11894449596227455212

`A252461((n+1)/A052126(n+1))`
-/

namespace A117364.P11894449596227455212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P11894449596227455212

namespace A117364

/-- `A252461((n+1)/A052126(n+1))` -/
def P11894449596227455212.Spec : Prop :=
  ∀ n, P11894449596227455212.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P2411419717699724401

`A252462((n+1)/A052126(n+1))`
-/

namespace A117364.P2411419717699724401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P2411419717699724401

namespace A117364

/-- `A252462((n+1)/A052126(n+1))` -/
def P2411419717699724401.Spec : Prop :=
  ∀ n, P2411419717699724401.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P14166822917818795971

`A252463((n+1)/A052126(n+1))`
-/

namespace A117364.P14166822917818795971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P14166822917818795971

namespace A117364

/-- `A252463((n+1)/A052126(n+1))` -/
def P14166822917818795971.Spec : Prop :=
  ∀ n, P14166822917818795971.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P11404498351805928331

`A253553((n+1)/A052126(n+1))`
-/

namespace A117364.P11404498351805928331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117364.P11404498351805928331

namespace A117364

/-- `A253553((n+1)/A052126(n+1))` -/
def P11404498351805928331.Spec : Prop :=
  ∀ n, P11404498351805928331.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P19749897713883899

`A064989(n+1)/A325133(n+1)`
-/

namespace A117364.P19749897713883899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A325133 (n + 1) : ℚ)

end

end A117364.P19749897713883899

namespace A117364

/-- `A064989(n+1)/A325133(n+1)` -/
def P19749897713883899.Spec : Prop :=
  ∀ n, P19749897713883899.a n = (A117364 (n + 1) : ℚ)

end A117364

/-! ## A117364.P13878253004864346955

`A117365(A117365(A117366(n+1)))`
-/

namespace A117364.P13878253004864346955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117365 (A117366 (n + 1)).toNat).toNat

end

end A117364.P13878253004864346955

namespace A117364

/-- `A117365(A117365(A117366(n+1)))` -/
def P13878253004864346955.Spec : Prop :=
  ∀ n, P13878253004864346955.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P14511319643145180378

`A158611(A159081(2*(n+1)))`
-/

namespace A117364.P14511319643145180378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A159081 (2 * (n + 1))).toNat

end

end A117364.P14511319643145180378

namespace A117364

/-- `A158611(A159081(2*(n+1)))` -/
def P14511319643145180378.Spec : Prop :=
  ∀ n, P14511319643145180378.a n = A117364 (n + 1)

end A117364

/-! ## A117364.P5596894883493949444

`A395052(A006530(n+2+n))`
-/

namespace A117364.P5596894883493949444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395052 (A006530 (n + 2 + n)).toNat

end

end A117364.P5596894883493949444

namespace A117364

/-- `A395052(A006530(n+2+n))` -/
def P5596894883493949444.Spec : Prop :=
  ∀ n, P5596894883493949444.a n = A117364 (n + 1)

end A117364

/-!
# A117365: a(n) = largest prime less than the smallest prime dividing n (or 1 if there is no such prime).

The programs for A117365, there is no canonical definition to state claims against.
-/

/-! ## A117365.P15538325811025493244

`A064989(A020639(n+1))`
-/

namespace A117365.P15538325811025493244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A020639 (n + 1)).toNat

end

end A117365.P15538325811025493244

/-! ## A117365.P2368139637368035023

`A079068(A028233(n+1))`
-/

namespace A117365.P2368139637368035023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A028233 (n + 1)).toNat

end

end A117365.P2368139637368035023

/-! ## A117365.P9071723754181483461

`A079068(A053590(n+1))`
-/

namespace A117365.P9071723754181483461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A053590 (n + 1)).toNat

end

end A117365.P9071723754181483461

/-! ## A117365.P4432830413239683262

`A079068(A068794(n+1))`
-/

namespace A117365.P4432830413239683262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A068794 (n + 1)).toNat

end

end A117365.P4432830413239683262

/-! ## A117365.P3408364816645603399

`A079068(A304181(n+1))`
-/

namespace A117365.P3408364816645603399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A304181 (n + 1)).toNat

end

end A117365.P3408364816645603399

/-! ## A117365.P10763103811460436419

`A079068(A323130(n+1))`
-/

namespace A117365.P10763103811460436419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A323130 (n + 1)).toNat

end

end A117365.P10763103811460436419

/-! ## A117365.P1197485044677072698

`A064989(A374196(n+1))`
-/

namespace A117365.P1197485044677072698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A374196 (n + 1)).toNat

end

end A117365.P1197485044677072698

/-! ## A117365.P10984789434702013976

`A283463(A020639(n+1)+1)`
-/

namespace A117365.P10984789434702013976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A020639 (n + 1) + 1).toNat

end

end A117365.P10984789434702013976

/-! ## A117365.P5409422804437482434

`A268674(2*A020639(n+1))`
-/

namespace A117365.P5409422804437482434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A020639 (n + 1)).toNat

end

end A117365.P5409422804437482434

/-! ## A117365.P12274287617945263442

`A064989((n+1)/A032742(n+1))`
-/

namespace A117365.P12274287617945263442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P12274287617945263442

/-! ## A117365.P16601829018647035961

`A079068((n+1)/A028234(n+1))`
-/

namespace A117365.P16601829018647035961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A117365.P16601829018647035961

/-! ## A117365.P3267177574699434584

`A079068((n+1)/A032742(n+1))`
-/

namespace A117365.P3267177574699434584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P3267177574699434584

/-! ## A117365.P4325045447005494072

`A252461((n+1)/A032742(n+1))`
-/

namespace A117365.P4325045447005494072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P4325045447005494072

/-! ## A117365.P7546881974642332119

`A252462((n+1)/A032742(n+1))`
-/

namespace A117365.P7546881974642332119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P7546881974642332119

/-! ## A117365.P14067046039267051449

`A252463((n+1)/A032742(n+1))`
-/

namespace A117365.P14067046039267051449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P14067046039267051449

/-! ## A117365.P10637443225396545021

`A268674((n+1)/A032742(n+1))`
-/

namespace A117365.P10637443225396545021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117365.P10637443225396545021

/-! ## A117365.P12355015207868767539

`A319627(A020639(2*n+1-n))`
-/

namespace A117365.P12355015207868767539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A020639 (2 * n + 1 - n)).toNat

end

end A117365.P12355015207868767539

/-! ## A117365.P14170664488740484737

`A079068(A079068(A117367(n+1)))`
-/

namespace A117365.P14170664488740484737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A079068 (A117367 (n + 1)).toNat).toNat

end

end A117365.P14170664488740484737

/-! ## A117365.P6203551172429595708

`A268674(A020639(n+1)+A020639(n+1))`
-/

namespace A117365.P6203551172429595708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A020639 (n + 1) + A020639 (n + 1)).toNat

end

end A117365.P6203551172429595708

/-!
# A117366: a(n) = smallest prime greater than the largest prime dividing n.

The programs for A117366, the canonical program `A117366.P12979558578758758009` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117366 has offset 1).

The definition of A117366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117366.P12979558578758758009

`A151800(A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A117366

/-- `A151800(A006530(n+1))` -/
def P12979558578758758009.Spec : Prop :=
  ∀ n, P12979558578758758009.a n = A117366 (n + 1)

theorem P12979558578758758009.correct : P12979558578758758009.Spec := by
  intro n
  simp only [A117366, Nat.add_sub_cancel]

end A117366

/-! ## A117366.P8474569723705885936

`A000040(A159081(n+1))`
-/

namespace A117366.P8474569723705885936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A159081 (n + 1)).toNat

end

end A117366.P8474569723705885936

namespace A117366

/-- `A000040(A159081(n+1))` -/
def P8474569723705885936.Spec : Prop :=
  ∀ n, P8474569723705885936.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P1746988642136616725

`A119416(n+1)/(n+1)`
-/

namespace A117366.P1746988642136616725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119416 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117366.P1746988642136616725

namespace A117366

/-- `A119416(n+1)/(n+1)` -/
def P1746988642136616725.Spec : Prop :=
  ∀ n, P1746988642136616725.a n = (A117366 (n + 1) : ℚ)

end A117366

/-! ## A117366.P5210402397995863569

`A117367(A053585(n+1))`
-/

namespace A117366.P5210402397995863569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A053585 (n + 1)).toNat

end

end A117366.P5210402397995863569

namespace A117366

/-- `A117367(A053585(n+1))` -/
def P5210402397995863569.Spec : Prop :=
  ∀ n, P5210402397995863569.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P2503714374293928418

`A117367(A323129(n+1))`
-/

namespace A117366.P2503714374293928418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A323129 (n + 1)).toNat

end

end A117366.P2503714374293928418

namespace A117366

/-- `A117367(A323129(n+1))` -/
def P2503714374293928418.Spec : Prop :=
  ∀ n, P2503714374293928418.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P4826617920331701994

`A117367(A345941(n+1))`
-/

namespace A117366.P4826617920331701994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A345941 (n + 1)).toNat

end

end A117366.P4826617920331701994

namespace A117366

/-- `A117367(A345941(n+1))` -/
def P4826617920331701994.Spec : Prop :=
  ∀ n, P4826617920331701994.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P18427555723798283705

`A007918(A006530(n+1)+1)`
-/

namespace A117366.P18427555723798283705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006530 (n + 1) + 1).toNat

end

end A117366.P18427555723798283705

namespace A117366

/-- `A007918(A006530(n+1)+1)` -/
def P18427555723798283705.Spec : Prop :=
  ∀ n, P18427555723798283705.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P15819905168675249396

`A000040(A061395(n+1)+1)`
-/

namespace A117366.P15819905168675249396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (n + 1) + 1).toNat

end

end A117366.P15819905168675249396

namespace A117366

/-- `A000040(A061395(n+1)+1)` -/
def P15819905168675249396.Spec : Prop :=
  ∀ n, P15819905168675249396.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P10961835995633425837

`A008578(A159081(n+1)+1)`
-/

namespace A117366.P10961835995633425837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A159081 (n + 1) + 1).toNat

end

end A117366.P10961835995633425837

namespace A117366

/-- `A008578(A159081(n+1)+1)` -/
def P10961835995633425837.Spec : Prop :=
  ∀ n, P10961835995633425837.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P10845088617977154418

`A008578(A061395(n+1)+2)`
-/

namespace A117366.P10845088617977154418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (n + 1) + 2).toNat

end

end A117366.P10845088617977154418

namespace A117366

/-- `A008578(A061395(n+1)+2)` -/
def P10845088617977154418.Spec : Prop :=
  ∀ n, P10845088617977154418.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P14953327443539886006

`A158611(A159081(n+1)+2)`
-/

namespace A117366.P14953327443539886006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A159081 (n + 1) + 2).toNat

end

end A117366.P14953327443539886006

namespace A117366

/-- `A158611(A159081(n+1)+2)` -/
def P14953327443539886006.Spec : Prop :=
  ∀ n, P14953327443539886006.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P1106170272146738593

`A006530(2*A253550(n+1))`
-/

namespace A117366.P1106170272146738593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A253550 (n + 1)).toNat

end

end A117366.P1106170272146738593

namespace A117366

/-- `A006530(2*A253550(n+1))` -/
def P1106170272146738593.Spec : Prop :=
  ∀ n, P1106170272146738593.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P5339630725638436787

`A117367(∏{d}[A006530(n+1), #])`
-/

namespace A117366.P5339630725638436787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A117366.P5339630725638436787

namespace A117366

/-- `A117367(∏{d}[A006530(n+1), #])` -/
def P5339630725638436787.Spec : Prop :=
  ∀ n, P5339630725638436787.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P17229400012213181471

`A151800(A053585(∏{p}[n+1, #]))`
-/

namespace A117366.P17229400012213181471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A117366.P17229400012213181471

namespace A117366

/-- `A151800(A053585(∏{p}[n+1, #]))` -/
def P17229400012213181471.Spec : Prop :=
  ∀ n, P17229400012213181471.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P9504925786620833627

`A100484(A061395(n+1)+1)/2`
-/

namespace A117366.P9504925786620833627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A061395 (n + 1) + 1).toNat : ℚ) / 2

end

end A117366.P9504925786620833627

namespace A117366

/-- `A100484(A061395(n+1)+1)/2` -/
def P9504925786620833627.Spec : Prop :=
  ∀ n, P9504925786620833627.a n = (A117366 (n + 1) : ℚ)

end A117366

/-! ## A117366.P6159072164366068236

`A001747(A061395(n+1)+2)/2`
-/

namespace A117366.P6159072164366068236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A061395 (n + 1) + 2).toNat : ℚ) / 2

end

end A117366.P6159072164366068236

namespace A117366

/-- `A001747(A061395(n+1)+2)/2` -/
def P6159072164366068236.Spec : Prop :=
  ∀ n, P6159072164366068236.a n = (A117366 (n + 1) : ℚ)

end A117366

/-! ## A117366.P15497294128266592142

`A000040(2-A243291(n+1)+n)`
-/

namespace A117366.P15497294128266592142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A243291 (n + 1) + (n : ℤ)).toNat

end

end A117366.P15497294128266592142

namespace A117366

/-- `A000040(2-A243291(n+1)+n)` -/
def P15497294128266592142.Spec : Prop :=
  ∀ n, P15497294128266592142.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P9132926924978669453

`A151800((n+1)/A052126(n+1))`
-/

namespace A117366.P9132926924978669453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117366.P9132926924978669453

namespace A117366

/-- `A151800((n+1)/A052126(n+1))` -/
def P9132926924978669453.Spec : Prop :=
  ∀ n, P9132926924978669453.a n = A117366 (n + 1)

end A117366

/-! ## A117366.P1827600836025203636

`A285639(n+1)/A032742(n+1)`
-/

namespace A117366.P1827600836025203636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285639 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A117366.P1827600836025203636

namespace A117366

/-- `A285639(n+1)/A032742(n+1)` -/
def P1827600836025203636.Spec : Prop :=
  ∀ n, P1827600836025203636.a n = (A117366 (n + 1) : ℚ)

end A117366

/-! ## A117366.P5407052118881061540

`A285639((n+1)/A052126(n+1))`
-/

namespace A117366.P5407052118881061540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A117366.P5407052118881061540

namespace A117366

/-- `A285639((n+1)/A052126(n+1))` -/
def P5407052118881061540.Spec : Prop :=
  ∀ n, P5407052118881061540.a n = A117366 (n + 1)

end A117366

/-!
# A117367: a(n) = smallest prime greater than the smallest prime dividing n.

The programs for A117367, there is no canonical definition to state claims against.
-/

/-! ## A117367.P1007209491258295317

`A045965(A020639(n+1))`
-/

namespace A117367.P1007209491258295317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A020639 (n + 1)).toNat

end

end A117367.P1007209491258295317

/-! ## A117367.P3816983044318749788

`A117366(A028233(n+1))`
-/

namespace A117367.P3816983044318749788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A028233 (n + 1)).toNat

end

end A117367.P3816983044318749788

/-! ## A117367.P11799178520456586998

`A117366(A068794(n+1))`
-/

namespace A117367.P11799178520456586998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A068794 (n + 1)).toNat

end

end A117367.P11799178520456586998

/-! ## A117367.P5054023851433619006

`A117366(A304181(n+1))`
-/

namespace A117367.P5054023851433619006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A304181 (n + 1)).toNat

end

end A117367.P5054023851433619006

/-! ## A117367.P14567925559524291478

`A117366(A323130(n+1))`
-/

namespace A117367.P14567925559524291478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A323130 (n + 1)).toNat

end

end A117367.P14567925559524291478

/-! ## A117367.P9071954035574198382

`A007918(A020639(n+1)+1)`
-/

namespace A117367.P9071954035574198382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A020639 (n + 1) + 1).toNat

end

end A117367.P9071954035574198382

/-! ## A117367.P4307626429273447810

`A000040(A055396(n+1)+1)`
-/

namespace A117367.P4307626429273447810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055396 (n + 1) + 1).toNat

end

end A117367.P4307626429273447810

/-! ## A117367.P9571395281998362294

`A008578(A055396(n+1)+2)`
-/

namespace A117367.P9571395281998362294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055396 (n + 1) + 2).toNat

end

end A117367.P9571395281998362294

/-! ## A117367.P1755508367744526659

`A182986(A055396(n+1)+2)`
-/

namespace A117367.P1755508367744526659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A055396 (n + 1) + 2).toNat

end

end A117367.P1755508367744526659

/-! ## A117367.P10714624936249022817

`A158611(A055396(n+1)+3)`
-/

namespace A117367.P10714624936249022817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A055396 (n + 1) + 3).toNat

end

end A117367.P10714624936249022817

/-! ## A117367.P5446104662124726683

`A151800(A028233(∏{p}[n+1, #]))`
-/

namespace A117367.P5446104662124726683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A028233 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A117367.P5446104662124726683

/-! ## A117367.P13739929240022341169

`A006093(A055396(n+1)+1)+1`
-/

namespace A117367.P13739929240022341169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A055396 (n + 1) + 1).toNat + 1

end

end A117367.P13739929240022341169

/-! ## A117367.P4989541170609138997

`A028815(A055396(n+1)+1)-1`
-/

namespace A117367.P4989541170609138997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A055396 (n + 1) + 1).toNat - 1

end

end A117367.P4989541170609138997

/-! ## A117367.P8420838509916470186

`A040976(A055396(n+1)+1)+2`
-/

namespace A117367.P8420838509916470186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A055396 (n + 1) + 1).toNat + 2

end

end A117367.P8420838509916470186

/-! ## A117367.P2106999270993837053

`A073846(2*(A055396(n+1)+1))`
-/

namespace A117367.P2106999270993837053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (A055396 (n + 1) + 1)).toNat

end

end A117367.P2106999270993837053

/-! ## A117367.P13456835968890473526

`A346091((n+1)/A032742(n+1))`
-/

namespace A117367.P13456835968890473526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A117367.P13456835968890473526

/-! ## A117367.P17102391641464636274

`A151800(A020639(2*n+1-n))`
-/

namespace A117367.P17102391641464636274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A020639 (2 * n + 1 - n)).toNat

end

end A117367.P17102391641464636274

/-! ## A117367.P12435130841767714399

`A346091(n%A020639(n+1)+1)`
-/

namespace A117367.P12435130841767714399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (Int.tmod (n : ℤ) (A020639 (n + 1)) + 1).toNat

end

end A117367.P12435130841767714399

/-! ## A117367.P2007016015932297424

`A285639(gcd(n+1, A020639(n+1)))`
-/

namespace A117367.P2007016015932297424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (Int.gcd (n + 1 : ℤ) (A020639 (n + 1)))

end

end A117367.P2007016015932297424

/-! ## A117367.P16878932682879355866

`A285639(2*A020639(n+1)-A020639(n+1))`
-/

namespace A117367.P16878932682879355866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (2 * A020639 (n + 1) - A020639 (n + 1)).toNat

end

end A117367.P16878932682879355866

/-!
# A117368: a(n) = largest prime less than the smallest prime dividing (2n-1).

The programs for A117368, there is no canonical definition to state claims against.
-/

/-! ## A117368.P995617543751652230

`A000040(A038802(n+1))`
-/

namespace A117368.P995617543751652230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038802 (n + 1)).toNat

end

end A117368.P995617543751652230

/-! ## A117368.P8778766121351577155

`A060308(A195508(n+1))`
-/

namespace A117368.P8778766121351577155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A195508 (n + 1)).toNat

end

end A117368.P8778766121351577155

/-! ## A117368.P10175658648980593796

`p?[A079068(A020639(n+1))]`
-/

namespace A117368.P10175658648980593796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P10175658648980593796

/-! ## A117368.P4832550835958262776

`A008578(A038802(n+1)+1)`
-/

namespace A117368.P4832550835958262776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038802 (n + 1) + 1).toNat

end

end A117368.P4832550835958262776

/-! ## A117368.P18196096741193489881

`A064216(A195508(n+1)+1)`
-/

namespace A117368.P18196096741193489881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A195508 (n + 1) + 1).toNat

end

end A117368.P18196096741193489881

/-! ## A117368.P17626311952078203693

`A000040(1-A275464(n+1)+n)`
-/

namespace A117368.P17626311952078203693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A275464 (n + 1) + (n : ℤ)).toNat

end

end A117368.P17626311952078203693

/-! ## A117368.P8415889312072532915

`A020639(A064216(n+2))`
-/

namespace A117368.P8415889312072532915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064216 (n + 2)).toNat

end

end A117368.P8415889312072532915

/-! ## A117368.P3716444942071894063

`p?[A065769(A020639(n+2))]`
-/

namespace A117368.P3716444942071894063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P3716444942071894063

/-! ## A117368.P4981003623513670339

`p?[A078773(A020639(n+3))]`
-/

namespace A117368.P4981003623513670339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078773 (A020639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P4981003623513670339

/-! ## A117368.P10746502336111726808

`p?[A283463(A020639(n+1)+1)]`
-/

namespace A117368.P10746502336111726808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A020639 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P10746502336111726808

/-! ## A117368.P13644148093987936522

`A079707(p?[A020639(2*n+1)])`
-/

namespace A117368.P13644148093987936522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079707 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117368.P13644148093987936522

/-! ## A117368.P14689608781881989322

`A233511(p?[A020639(2*n+1)])`
-/

namespace A117368.P14689608781881989322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233511 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117368.P14689608781881989322

/-! ## A117368.P4133781405325546459

`A252461(Δ[A020639(2*n+1)]+A020639(2*n+1))`
-/

namespace A117368.P4133781405325546459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (f1 (n + 1) - f1 n + A020639 (2 * n + 1)).toNat

end

end A117368.P4133781405325546459

/-! ## A117368.P6219513430211766873

`A117365(2*(n+1))*A117365(A090368(n+2))`
-/

namespace A117368.P6219513430211766873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (2 * (n + 1)) * A117365 (A090368 (n + 2)).toNat

end

end A117368.P6219513430211766873

/-! ## A117368.P3133194597128365765

`A008578(A000720(A020639(A087349(2*n+1))))`
-/

namespace A117368.P3133194597128365765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A020639 (A087349 (2 * n + 1)).toNat).toNat).toNat

end

end A117368.P3133194597128365765

/-! ## A117368.P17817645142920570915

`p?[A117365(n+1)]`
-/

namespace A117368.P17817645142920570915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P17817645142920570915

/-! ## A117368.P9660743147641851296

`A117365(2*n+3)`
-/

namespace A117368.P9660743147641851296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (2 * n + 3)

end

end A117368.P9660743147641851296

/-! ## A117368.P13453076382368981590

`p?[A079068(A028233(n+1))]`
-/

namespace A117368.P13453076382368981590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A028233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117368.P13453076382368981590

/-!
# A117369: a(n) = smallest prime which is > smallest prime dividing n and is coprime to n.

The programs for A117369, there is no canonical definition to state claims against.
-/

/-! ## A117369.P12142508680844407110

`A117366(A053590(n+1))`
-/

namespace A117369.P12142508680844407110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A053590 (n + 1)).toNat

end

end A117369.P12142508680844407110

/-! ## A117369.P10244845528212857603

`A000040(A061395(A053590(n+1))+1)`
-/

namespace A117369.P10244845528212857603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A053590 (n + 1)).toNat + 1).toNat

end

end A117369.P10244845528212857603

/-! ## A117369.P6001146234863761779

`A348994(A053590(n+1))+A000007(n)`
-/

namespace A117369.P6001146234863761779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348994 (A053590 (n + 1)).toNat + A000007 n

end

end A117369.P6001146234863761779

/-! ## A117369.P266421145114460712

`A006530(A053590(A045965(n+1)))`
-/

namespace A117369.P266421145114460712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053590 (A045965 (n + 1)).toNat).toNat

end

end A117369.P266421145114460712

/-! ## A117369.P7303350991705000459

`A053590(A045965(n+1))/A028234(A053590(n+1))`
-/

namespace A117369.P7303350991705000459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053590 (A045965 (n + 1)).toNat : ℚ) / (A028234 (A053590 (n + 1)).toNat : ℚ)

end

end A117369.P7303350991705000459

/-! ## A117369.P4658054222234813712

`A006530(∏{d}[A053590(n+1), A117367(#)])`
-/

namespace A117369.P4658054222234813712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, A117367 d).toNat

end

end A117369.P4658054222234813712

/-! ## A117369.P14905104988530242570

`A053590(A045965(n+1)*A053590(n+1))/A053590(n+1)`
-/

namespace A117369.P14905104988530242570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053590 (A045965 (n + 1) * A053590 (n + 1)).toNat : ℚ) / (A053590 (n + 1) : ℚ)

end

end A117369.P14905104988530242570

/-!
# A117370: Number of primes between smallest prime divisor of n and largest prime divisor of n.

The programs for A117370, the canonical program `A117370.P9753416099514452888` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117370 has offset 1).

The definition of A117370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117370.P1525949024036438075

`A117371(A088835(n+1))`
-/

namespace A117370.P1525949024036438075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (A088835 (n + 1)).toNat

end

end A117370.P1525949024036438075

namespace A117370

/-- `A117371(A088835(n+1))` -/
def P1525949024036438075.Spec : Prop :=
  ∀ n, P1525949024036438075.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P9753416099514452888

`A289207(A243055(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A117370

/-- `A289207(A243055(n+1)+1)` -/
def P9753416099514452888.Spec : Prop :=
  ∀ n, P9753416099514452888.a n = A117370 (n + 1)

theorem P9753416099514452888.correct : P9753416099514452888.Spec := by
  intro n
  simp only [A117370, Nat.add_sub_cancel]

end A117370

/-! ## A117370.P2849376726937445134

`A243055(n+1)-A143731(n+1)`
-/

namespace A117370.P2849376726937445134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A143731 (n + 1)

end

end A117370.P2849376726937445134

namespace A117370

/-- `A243055(n+1)-A143731(n+1)` -/
def P2849376726937445134.Spec : Prop :=
  ∀ n, P2849376726937445134.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P8956729353642473747

`(A243056(n+1)-1)*A143731(n+1)`
-/

namespace A117370.P8956729353642473747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243056 (n + 1) - 1) * A143731 (n + 1)

end

end A117370.P8956729353642473747

namespace A117370

/-- `(A243056(n+1)-1)*A143731(n+1)` -/
def P8956729353642473747.Spec : Prop :=
  ∀ n, P8956729353642473747.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P9969440496857494288

`A243055(n+1)-A001065(A119288(n+1))`
-/

namespace A117370.P9969440496857494288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A001065 (A119288 (n + 1)).toNat

end

end A117370.P9969440496857494288

namespace A117370

/-- `A243055(n+1)-A001065(A119288(n+1))` -/
def P9969440496857494288.Spec : Prop :=
  ∀ n, P9969440496857494288.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P8532387390780432912

`A028310(A061395(n+1)-A055396(n+1))-1`
-/

namespace A117370.P8532387390780432912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A061395 (n + 1) - A055396 (n + 1)).toNat - 1

end

end A117370.P8532387390780432912

namespace A117370

/-- `A028310(A061395(n+1)-A055396(n+1))-1` -/
def P8532387390780432912.Spec : Prop :=
  ∀ n, P8532387390780432912.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P162601482688743174

`A243055(n+1)-A019427(2*A243055(n+1))`
-/

namespace A117370.P162601482688743174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A019427 (2 * A243055 (n + 1)).toNat

end

end A117370.P162601482688743174

namespace A117370

/-- `A243055(n+1)-A019427(2*A243055(n+1))` -/
def P162601482688743174.Spec : Prop :=
  ∀ n, P162601482688743174.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P5132137374394155350

`A243055(n+1)-and(1, A000040(A242411(n+1)+1))`
-/

namespace A117370.P5132137374394155350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - Int.land 1 (A000040 (A242411 (n + 1) + 1).toNat)

end

end A117370.P5132137374394155350

namespace A117370

/-- `A243055(n+1)-and(1, A000040(A242411(n+1)+1))` -/
def P5132137374394155350.Spec : Prop :=
  ∀ n, P5132137374394155350.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P8547151535676956911

`A243055(n+1)-and(1, A000040(A260737(n+1)+1))`
-/

namespace A117370.P8547151535676956911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - Int.land 1 (A000040 (A260737 (n + 1) + 1).toNat)

end

end A117370.P8547151535676956911

namespace A117370

/-- `A243055(n+1)-and(1, A000040(A260737(n+1)+1))` -/
def P8547151535676956911.Spec : Prop :=
  ∀ n, P8547151535676956911.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P14350627001179123343

`A000196(A243055(n+1)²-A243055(n+1))`
-/

namespace A117370.P14350627001179123343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A243055 (n + 1) ^ 2 - A243055 (n + 1)).toNat

end

end A117370.P14350627001179123343

namespace A117370

/-- `A000196(A243055(n+1)²-A243055(n+1))` -/
def P14350627001179123343.Spec : Prop :=
  ∀ n, P14350627001179123343.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P12349695391966224302

`A000196((A243055(n+1)-1)*A243055(n+1))`
-/

namespace A117370.P12349695391966224302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A243055 (n + 1) - 1) * A243055 (n + 1)).toNat

end

end A117370.P12349695391966224302

namespace A117370

/-- `A000196((A243055(n+1)-1)*A243055(n+1))` -/
def P12349695391966224302.Spec : Prop :=
  ∀ n, P12349695391966224302.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P4912502728970220408

`A117371(A066048(n+1))`
-/

namespace A117370.P4912502728970220408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (A066048 (n + 1)).toNat

end

end A117370.P4912502728970220408

namespace A117370

/-- `A117371(A066048(n+1))` -/
def P4912502728970220408.Spec : Prop :=
  ∀ n, P4912502728970220408.a n = A117370 (n + 1)

end A117370

/-! ## A117370.P12995733339758927568

`A117371(A006530(n+1)*A020639(n+1))`
-/

namespace A117370.P12995733339758927568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (A006530 (n + 1) * A020639 (n + 1)).toNat

end

end A117370.P12995733339758927568

namespace A117370

/-- `A117371(A006530(n+1)*A020639(n+1))` -/
def P12995733339758927568.Spec : Prop :=
  ∀ n, P12995733339758927568.a n = A117370 (n + 1)

end A117370

/-!
# A117371: Number of primes between smallest prime divisor of n and largest prime divisor of n that are coprime to n (not factors of n).

The programs for A117371, the canonical program `A117371.P12406732587805932156` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117371 has offset 1).

The definition of A117371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117371.P4964294932551107560

`A001221(A137795(n+1))`
-/

namespace A117371.P4964294932551107560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A137795 (n + 1)).toNat

end

end A117371.P4964294932551107560

namespace A117371

/-- `A001221(A137795(n+1))` -/
def P4964294932551107560.Spec : Prop :=
  ∀ n, P4964294932551107560.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P12406732587805932156

`A079067(A348717(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A117371

/-- `A079067(A348717(n+1))` -/
def P12406732587805932156.Spec : Prop :=
  ∀ n, P12406732587805932156.a n = A117371 (n + 1)

theorem P12406732587805932156.correct : P12406732587805932156.Spec := by
  intro n
  simp only [A117371, Nat.add_sub_cancel]

end A117371

/-! ## A117371.P16569628385473969493

`A243055(n+1)-A297155(n+1)`
-/

namespace A117371.P16569628385473969493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A297155 (n + 1)

end

end A117371.P16569628385473969493

namespace A117371

/-- `A243055(n+1)-A297155(n+1)` -/
def P16569628385473969493.Spec : Prop :=
  ∀ n, P16569628385473969493.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P15158005799894495595

`A079067(n+1)-A079067(A020639(n+1))`
-/

namespace A117371.P15158005799894495595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) - A079067 (A020639 (n + 1)).toNat

end

end A117371.P15158005799894495595

namespace A117371

/-- `A079067(n+1)-A079067(A020639(n+1))` -/
def P15158005799894495595.Spec : Prop :=
  ∀ n, P15158005799894495595.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P12351462242328803273

`A079067(n+1)-A079067(A028233(n+1))`
-/

namespace A117371.P12351462242328803273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) - A079067 (A028233 (n + 1)).toNat

end

end A117371.P12351462242328803273

namespace A117371

/-- `A079067(n+1)-A079067(A028233(n+1))` -/
def P12351462242328803273.Spec : Prop :=
  ∀ n, P12351462242328803273.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P2420000248792952338

`A117370(n+1)-A117370(A071364(n+1))`
-/

namespace A117371.P2420000248792952338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (n + 1) - A117370 (A071364 (n + 1)).toNat

end

end A117371.P2420000248792952338

namespace A117371

/-- `A117370(n+1)-A117370(A071364(n+1))` -/
def P2420000248792952338.Spec : Prop :=
  ∀ n, P2420000248792952338.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P10855551505405523119

`A243055(n+1)-A243055(A046523(n+1))`
-/

namespace A117371.P10855551505405523119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A243055 (A046523 (n + 1)).toNat

end

end A117371.P10855551505405523119

namespace A117371

/-- `A243055(n+1)-A243055(A046523(n+1))` -/
def P10855551505405523119.Spec : Prop :=
  ∀ n, P10855551505405523119.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P18234293239219743765

`A243055(n+1)-A243055(A071364(n+1))`
-/

namespace A117371.P18234293239219743765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A243055 (A071364 (n + 1)).toNat

end

end A117371.P18234293239219743765

namespace A117371

/-- `A243055(n+1)-A243055(A071364(n+1))` -/
def P18234293239219743765.Spec : Prop :=
  ∀ n, P18234293239219743765.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P12447307165513321721

`A079067(n+1)-A079067(2*A117367(n+1))`
-/

namespace A117371.P12447307165513321721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) - A079067 (2 * A117367 (n + 1)).toNat

end

end A117371.P12447307165513321721

namespace A117371

/-- `A079067(n+1)-A079067(2*A117367(n+1))` -/
def P12447307165513321721.Spec : Prop :=
  ∀ n, P12447307165513321721.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P13248061037846299411

`A079067(A273258(n+1))`
-/

namespace A117371.P13248061037846299411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A273258 (n + 1)).toNat

end

end A117371.P13248061037846299411

namespace A117371

/-- `A079067(A273258(n+1))` -/
def P13248061037846299411.Spec : Prop :=
  ∀ n, P13248061037846299411.a n = A117371 (n + 1)

end A117371

/-! ## A117371.P5773239771176281947

`A079067(A137502(n+1))`
-/

namespace A117371.P5773239771176281947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A137502 (n + 1)).toNat

end

end A117371.P5773239771176281947

namespace A117371

/-- `A079067(A137502(n+1))` -/
def P5773239771176281947.Spec : Prop :=
  ∀ n, P5773239771176281947.a n = A117371 (n + 1)

end A117371

/-!
# A117372: Riordan array (1-3x,x(1-x)).

The programs for A117372, the canonical program `A117372.P11884890092664752815` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117372 has offset 0).

The definition of A117372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117372.P11884890092664752815

`(A117377(n)+A117362(n))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A117372

/-- `(A117377(n)+A117362(n))/2` -/
def P11884890092664752815.Spec : Prop :=
  ∀ n, P11884890092664752815.a n = (A117372 n : ℚ)

end A117372

/-! ## A117372.P4988300806101534178

`A117362(n)+(A117362(n)-A109466(n))/2`
-/

namespace A117372.P4988300806101534178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117362 n : ℚ) + (A117362 n - A109466 n : ℚ) / 2

end

end A117372.P4988300806101534178

namespace A117372

/-- `A117362(n)+(A117362(n)-A109466(n))/2` -/
def P4988300806101534178.Spec : Prop :=
  ∀ n, P4988300806101534178.a n = (A117372 n : ℚ)

end A117372

/-! ## A117372.P4947992664936275799

`A117362(n)+A057094(n+1)`
-/

namespace A117372.P4947992664936275799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n + A057094 (n + 1)

end

end A117372.P4947992664936275799

namespace A117372

/-- `A117362(n)+A057094(n+1)` -/
def P4947992664936275799.Spec : Prop :=
  ∀ n, P4947992664936275799.a n = A117372 n

end A117372

/-! ## A117372.P6850722760443855075

`A117377(n)-A057094(n+1)`
-/

namespace A117372.P6850722760443855075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117377 n - A057094 (n + 1)

end

end A117372.P6850722760443855075

namespace A117372

/-- `A117377(n)-A057094(n+1)` -/
def P6850722760443855075.Spec : Prop :=
  ∀ n, P6850722760443855075.a n = A117372 n

end A117372

/-! ## A117372.P11116084720509331621

`A117377(n)+A057094(n+1)*A134824(n+2)`
-/

namespace A117372.P11116084720509331621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117377 n + A057094 (n + 1) * A134824 (n + 2)

end

end A117372.P11116084720509331621

namespace A117372

/-- `A117377(n)+A057094(n+1)*A134824(n+2)` -/
def P11116084720509331621.Spec : Prop :=
  ∀ n, P11116084720509331621.a n = A117372 n

end A117372

/-!
# A117373: Expansion of (1 - 3x)/(1 - x + x^2).

The programs for A117373, the canonical program `A117373.P11807970814832293083` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117373 has offset 0).

The definition of A117373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117373.P11807970814832293083

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117373

/-- `a(n-1)-a(n-2)` -/
def P11807970814832293083.Spec : Prop :=
  ∀ n, P11807970814832293083.a n = A117373 n

theorem P11807970814832293083.correct : P11807970814832293083.Spec := by
  intro n
  simp only [A117373]

end A117373

/-!
# A117374: Expansion of (1-3x)/(1-x^2+x^3).

The programs for A117374, the canonical program `A117374.P13971633309895766270` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117374 has offset 0).

The definition of A117374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117374.P13971633309895766270

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=-3, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117374

/-- `a(n-2)-a(n-3)` -/
def P13971633309895766270.Spec : Prop :=
  ∀ n, P13971633309895766270.a n = A117374 n

theorem P13971633309895766270.correct : P13971633309895766270.Spec := by
  intro n
  simp only [A117374]

end A117374

/-! ## A117374.P4090803136498651479

`A109266(n+2)+A109266(n)`
-/

namespace A117374.P4090803136498651479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109266 (n + 2) + A109266 n

end

end A117374.P4090803136498651479

namespace A117374

/-- `A109266(n+2)+A109266(n)` -/
def P4090803136498651479.Spec : Prop :=
  ∀ n, P4090803136498651479.a n = A117374 n

end A117374

/-! ## A117374.P6888584549482894730

`A124745(n+4)+A117363(n)`
-/

namespace A117374.P6888584549482894730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 4) + A117363 n

end

end A117374.P6888584549482894730

namespace A117374

/-- `A124745(n+4)+A117363(n)` -/
def P6888584549482894730.Spec : Prop :=
  ∀ n, P6888584549482894730.a n = A117374 n

end A117374

/-! ## A117374.P16852451978050381084

`(A117379(n)+A117363(n))/2`
-/

namespace A117374.P16852451978050381084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117379 n + A117363 n : ℚ) / 2

end

end A117374.P16852451978050381084

namespace A117374

/-- `(A117379(n)+A117363(n))/2` -/
def P16852451978050381084.Spec : Prop :=
  ∀ n, P16852451978050381084.a n = (A117374 n : ℚ)

end A117374

/-! ## A117374.P13766833763285533660

`A117379(n)-A124745(n+4)`
-/

namespace A117374.P13766833763285533660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117379 n - A124745 (n + 4)

end

end A117374.P13766833763285533660

namespace A117374

/-- `A117379(n)-A124745(n+4)` -/
def P13766833763285533660.Spec : Prop :=
  ∀ n, P13766833763285533660.a n = A117374 n

end A117374

/-!
# A117376: Expansion of 1/((1-3x*c(x))(1-x^2*c(x))), c(x) the g.f. of A000108.

The programs for A117376, there is no canonical definition to state claims against.
-/

/-! ## A117376.P8834110178432183376

`A186444(A166482(n+1))`
-/

namespace A117376.P8834110178432183376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (A166482 (n + 1)).toNat

end

end A117376.P8834110178432183376

/-! ## A117376.P5024391306545031535

`A088462(A057087(n)+A022727(n))`
-/

namespace A117376.P5024391306545031535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A057087 n + A022727 n).toNat

end

end A117376.P5024391306545031535

/-!
# A117377: Riordan array (1-4x,x(1-x)).

The programs for A117377, the canonical program `A117377.P1485208591140608451` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117377 has offset 0).

The definition of A117377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117377.P1485208591140608451

`2*A117362(n)-A109466(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A117377

/-- `2*A117362(n)-A109466(n)` -/
def P1485208591140608451.Spec : Prop :=
  ∀ n, P1485208591140608451.a n = A117377 n

theorem P1485208591140608451.correct : P1485208591140608451.Spec := by
  intro n
  simp only [A117377]

end A117377

/-! ## A117377.P5043998675177108553

`2*A117372(n)-A117362(n)`
-/

namespace A117377.P5043998675177108553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117372 n - A117362 n

end

end A117377.P5043998675177108553

namespace A117377

/-- `2*A117372(n)-A117362(n)` -/
def P5043998675177108553.Spec : Prop :=
  ∀ n, P5043998675177108553.a n = A117377 n

end A117377

/-! ## A117377.P2619984471205153383

`A117372(n)+A057094(n+1)`
-/

namespace A117377.P2619984471205153383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117372 n + A057094 (n + 1)

end

end A117377.P2619984471205153383

namespace A117377

/-- `A117372(n)+A057094(n+1)` -/
def P2619984471205153383.Spec : Prop :=
  ∀ n, P2619984471205153383.a n = A117377 n

end A117377

/-! ## A117377.P1095302087223559580

`A057094(n+1)+A117362(n)+A057094(n+1)`
-/

namespace A117377.P1095302087223559580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 (n + 1) + (A117362 n + A057094 (n + 1))

end

end A117377.P1095302087223559580

namespace A117377

/-- `A057094(n+1)+A117362(n)+A057094(n+1)` -/
def P1095302087223559580.Spec : Prop :=
  ∀ n, P1095302087223559580.a n = A117377 n

end A117377

/-! ## A117377.P13228306798040820304

`A057094(A183572(n+1))+2*A117362(n)`
-/

namespace A117377.P13228306798040820304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 (A183572 (n + 1)).toNat + 2 * A117362 n

end

end A117377.P13228306798040820304

namespace A117377

/-- `A057094(A183572(n+1))+2*A117362(n)` -/
def P13228306798040820304.Spec : Prop :=
  ∀ n, P13228306798040820304.a n = A117377 n

end A117377

/-!
# A117378: Expansion of (1-4*x)/(1-x+x^2).

The programs for A117378, the canonical program `A117378.P17621991976078932146` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117378 has offset 0).

The definition of A117378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117378.P17621991976078932146

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=-3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117378

/-- `a(n-1)-a(n-2)` -/
def P17621991976078932146.Spec : Prop :=
  ∀ n, P17621991976078932146.a n = A117378 n

theorem P17621991976078932146.correct : P17621991976078932146.Spec := by
  intro n
  simp only [A117378]

end A117378

/-!
# A117379: Expansion of (1-4x)/(1-x^2+x^3).

The programs for A117379, the canonical program `A117379.P16803516464038362545` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117379 has offset 0).

The definition of A117379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117379.P16803516464038362545

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=-4, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117379

/-- `a(n-2)-a(n-3)` -/
def P16803516464038362545.Spec : Prop :=
  ∀ n, P16803516464038362545.a n = A117379 n

theorem P16803516464038362545.correct : P16803516464038362545.Spec := by
  intro n
  simp only [A117379]

end A117379

/-! ## A117379.P14908593778310504740

`(-1)^n*A007309(n+1)`
-/

namespace A117379.P14908593778310504740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007309 (n + 1)

end

end A117379.P14908593778310504740

namespace A117379

/-- `(-1)^n*A007309(n+1)` -/
def P14908593778310504740.Spec : Prop :=
  ∀ n, P14908593778310504740.a n = A117379 n

end A117379

/-! ## A117379.P195668422396656476

`A007309(n+1)*A033999(n)`
-/

namespace A117379.P195668422396656476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007309 (n + 1) * A033999 n

end

end A117379.P195668422396656476

namespace A117379

/-- `A007309(n+1)*A033999(n)` -/
def P195668422396656476.Spec : Prop :=
  ∀ n, P195668422396656476.a n = A117379 n

end A117379

/-! ## A117379.P10553860622020510341

`A124745(n+4)+A117374(n)`
-/

namespace A117379.P10553860622020510341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 4) + A117374 n

end

end A117379.P10553860622020510341

namespace A117379

/-- `A124745(n+4)+A117374(n)` -/
def P10553860622020510341.Spec : Prop :=
  ∀ n, P10553860622020510341.a n = A117379 n

end A117379

/-! ## A117379.P856062680987528942

`2*A117374(n)-A117363(n)`
-/

namespace A117379.P856062680987528942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117374 n - A117363 n

end

end A117379.P856062680987528942

namespace A117379

/-- `2*A117374(n)-A117363(n)` -/
def P856062680987528942.Spec : Prop :=
  ∀ n, P856062680987528942.a n = A117379 n

end A117379

/-! ## A117379.P3358872316746637325

`A007309(A000027(n+1))/(-1)^n`
-/

namespace A117379.P3358872316746637325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007309 (A000027 (n + 1)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A117379.P3358872316746637325

namespace A117379

/-- `A007309(A000027(n+1))/(-1)^n` -/
def P3358872316746637325.Spec : Prop :=
  ∀ n, P3358872316746637325.a n = (A117379 n : ℚ)

end A117379

/-!
# A117380: Riordan array (1/(1-4*x*c(x)),xc(x)), c(x) the g.f. of A000108.

The programs for A117380, there is no canonical definition to state claims against.
-/

/-! ## A117380.P708263060328572015

`A178978(A175505(lcm(n, a(n-1))))` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A117380.P708263060328572015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n a =>
  A178978 (A175505 (Int.lcm (n : ℤ) (a (n - 1)))).toNat

end

end A117380.P708263060328572015

/-! ## A117380.P9216897794447025111

`gcd(A117377(n), A256054(A024643(n)))`
-/

namespace A117380.P9216897794447025111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117377 n) (A256054 (A024643 n).toNat)

end

end A117380.P9216897794447025111

/-! ## A117380.P15337595900635606906

`gcd(A256042(A024643(n)), A256054(n))`
-/

namespace A117380.P15337595900635606906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256042 (A024643 n).toNat) (A256054 n)

end

end A117380.P15337595900635606906

/-!
# A117381: Expansion of 1/((1-4*x*c(x))(1-x^2*c(x))), c(x) the g.f. of A000108.

The programs for A117381, there is no canonical definition to state claims against.
-/

/-! ## A117381.P14369091464100294081

`A161865(ceil(5^n/2))-gcd(n, ∑[n])`
-/

namespace A117381.P14369091464100294081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161865 ⌈(5 ^ n : ℚ) / 2⌉.toNat - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A117381.P14369091464100294081

/-!
# A117382: Primes not expressible as the sum of two triangular numbers.

The programs for A117382, there is no canonical definition to state claims against.
-/

/-! ## A117382.P15558588793370730743

`p?[A020757(n+1)]`
-/

namespace A117382.P15558588793370730743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117382.P15558588793370730743

/-! ## A117382.P12559840015214994565

`p?[A051611(n+3)]`
-/

namespace A117382.P12559840015214994565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117382.P12559840015214994565

/-! ## A117382.P14495429892549479083

`p?[eq[0, A004020(n)]]`
-/

namespace A117382.P14495429892549479083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P14495429892549479083

/-! ## A117382.P8851867546676821024

`p?[eq[0, A005883(n)]]`
-/

namespace A117382.P8851867546676821024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P8851867546676821024

/-! ## A117382.P16113010750928504345

`p?[eq[0, A134343(n)]]`
-/

namespace A117382.P16113010750928504345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P16113010750928504345

/-! ## A117382.P11523922129054604340

`p?[lt[2, A061336(n)]]`
-/

namespace A117382.P11523922129054604340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P11523922129054604340

/-! ## A117382.P16501519802631006322

`p?[lt[3, A176873(n)]]`
-/

namespace A117382.P16501519802631006322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P16501519802631006322

/-! ## A117382.P11288494555168095254

`p?[comp[A020756(n+1)]]`
-/

namespace A117382.P11288494555168095254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P11288494555168095254

/-! ## A117382.P14891281968065298708

`p?[lt[A138741(2*n), 1]]`
-/

namespace A117382.P14891281968065298708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117382.P14891281968065298708

/-! ## A117382.P11860603976271538885

`p?[n*(1-A008441(n))]`
-/

namespace A117382.P11860603976271538885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A008441 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117382.P11860603976271538885

/-!
# A117383: Positive numbers whose Spanish names do not include repeated letters.

The programs for A117383, there is no canonical definition to state claims against.
-/

/-! ## A117383.P5849006594594631560

`∑[A324369(A128458(n+1)²)]`
-/

namespace A117383.P5849006594594631560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (A128458 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117383.P5849006594594631560

/-! ## A117383.P5603989495540454914

`eq[A188542(n+1), A330004(n+1)]`
-/

namespace A117383.P5603989495540454914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117383.P5603989495540454914

/-! ## A117383.P14271607057024208877

`record[A354747(n+1)*A377364(n+1)]`
-/

namespace A117383.P14271607057024208877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354747 (n + 1) * A377364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117383.P14271607057024208877

/-!
# A117384: Positive integers, each occurring twice in the sequence, such that a(n) = a(k) when n+k = 4*a(n), starting with a(1)=1 and filling the next vacant position with the smallest unused number.

The programs for A117384, there is no canonical definition to state claims against.
-/

/-! ## A117384.P10306739474326505180

`n+1-a(n-1-char[n²])` with `a(0)=1, a(1)=2`
-/

namespace A117384.P10306739474326505180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) - a ((n : ℤ) - 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A117384.P10306739474326505180

/-! ## A117384.P6464280036493754924

`1-(a(n-char[n²]-1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A117384.P6464280036493754924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1).toNat - (n : ℤ))

end

end A117384.P6464280036493754924

/-! ## A117384.P2759823021032636598

`floor(A127366(n)/2)+1`
-/

namespace A117384.P2759823021032636598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127366 n : ℚ) / 2⌋ + 1

end

end A117384.P2759823021032636598

/-! ## A117384.P1690382462240231357

`A209279(∑[char[n²]]+∑[n])`
-/

namespace A117384.P1690382462240231357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A117384.P1690382462240231357

/-! ## A117384.P6218207948291076639

`A209278(∑[char[n²]]+C(n, 2))`
-/

namespace A117384.P6218207948291076639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2)

end

end A117384.P6218207948291076639

/-! ## A117384.P4353638059159442011

`A008619(A127366(n))`
-/

namespace A117384.P4353638059159442011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A127366 n).toNat

end

end A117384.P4353638059159442011

/-! ## A117384.P12427757677331715017

`round((A127366(n)+1)/2)%A000040(n+1)`
-/

namespace A117384.P12427757677331715017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A127366 n + 1 : ℚ) / 2)) (A000040 (n + 1))

end

end A117384.P12427757677331715017

/-! ## A117384.P12478629744383568193

`A007318(C(2, n))*round((A127366(n)+1)/2)`
-/

namespace A117384.P12478629744383568193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A127366 n + 1 : ℚ) / 2)

end

end A117384.P12478629744383568193

/-! ## A117384.P3741598129815885343

`(A118012(n+1)+n+1)/4`
-/

namespace A117384.P3741598129815885343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118012 (n + 1) + (n + 1 : ℤ) : ℚ) / 4

end

end A117384.P3741598129815885343

/-! ## A117384.P9061060081881019254

`A000720(A344482(n+1))`
-/

namespace A117384.P9061060081881019254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A344482 (n + 1)).toNat

end

end A117384.P9061060081881019254

/-!
# A117385: Positive integers, each occurring twice in the sequence, such that a(n) = a(k) when n+k = 5*a(n), starting with a(1)=1 and filling the next vacant position with the smallest unused number.

The programs for A117385, there is no canonical definition to state claims against.
-/

/-! ## A117385.P13862420278123440631

`∏{e}[∪[A000079(n+2), A016149(n)], #]`
-/

namespace A117385.P13862420278123440631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A117385.P13862420278123440631

/-! ## A117385.P14616251556157838195

`lcm(A306333(A306297(2*n)), A306353(n+1))`
-/

namespace A117385.P14616251556157838195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A306333 (A306297 (2 * n)).toNat) (A306353 (n + 1))

end

end A117385.P14616251556157838195

/-! ## A117385.P14899090329387552487

`A036445(lt[A036445(3*(n+2)), A034694(n+1)])`
-/

namespace A117385.P14899090329387552487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117385.P14899090329387552487

/-! ## A117385.P2484885180534816074

`A306353(A077168(n))`
-/

namespace A117385.P2484885180534816074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306353 (A077168 n).toNat

end

end A117385.P2484885180534816074

/-! ## A117385.P3702951898978106105

`A164878(A342390(n+1))`
-/

namespace A117385.P3702951898978106105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A342390 (n + 1)).toNat

end

end A117385.P3702951898978106105

/-!
# A117386: Positive integers, each occurring twice in the sequence, such that a(n) = a(k) when n+k = 6*a(n), starting with a(1)=1 and filling the next vacant position with the smallest unused number.

The programs for A117386, there is no canonical definition to state claims against.
-/

/-! ## A117386.P16728963968399199043

`A008619(A178832(lcm(5, n+1)))`
-/

namespace A117386.P16728963968399199043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178832 (Nat.lcm 5 (n + 1))).toNat

end

end A117386.P16728963968399199043

/-!
# A117387: Prime nearest to 2^n. In case of a tie, choose the smaller.

The programs for A117387, there is no canonical definition to state claims against.
-/

/-! ## A117387.P2661454986499585845

`A000079(n)-A059959(n)`
-/

namespace A117387.P2661454986499585845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A059959 n

end

end A117387.P2661454986499585845

/-! ## A117387.P18240448081739368400

`A000225(n)+1-A059959(n)`
-/

namespace A117387.P18240448081739368400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A059959 n)

end

end A117387.P18240448081739368400

/-! ## A117387.P11291283503172104020

`A014210(n)-(A059959(n)+A013597(n))`
-/

namespace A117387.P11291283503172104020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (A059959 n + A013597 n)

end

end A117387.P11291283503172104020

/-! ## A117387.P5835883829156967695

`Δ[A000225(n)]-A059959(n)`
-/

namespace A117387.P5835883829156967695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059959 n

end

end A117387.P5835883829156967695

/-! ## A117387.P13293492229821784989

`sqrt(A000302(n))-A059959(n)`
-/

namespace A117387.P13293492229821784989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) - (A059959 n : ℝ)

end

end A117387.P13293492229821784989

/-!
# A117389: A skew Delannoy number triangle read by rows.

The programs for A117389, there is no canonical definition to state claims against.
-/

/-! ## A117389.P2144822860469527155

`A112743(A185180(n+1)-1)`
-/

namespace A117389.P2144822860469527155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A185180 (n + 1) - 1).toNat

end

end A117389.P2144822860469527155

/-! ## A117389.P6823069487638024354

`A059484(A061579(A245300(n)))`
-/

namespace A117389.P6823069487638024354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059484 (A061579 (A245300 n).toNat).toNat

end

end A117389.P6823069487638024354

/-! ## A117389.P17009540375039438213

`∑{e}[A052680(A026729(n)), #]`
-/

namespace A117389.P17009540375039438213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052680 (A026729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A117389.P17009540375039438213

/-! ## A117389.P11932495196929141682

`∑{e}[9^A026729(n), A306520(#)]`
-/

namespace A117389.P11932495196929141682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A026729 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A306520 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A117389.P11932495196929141682

/-! ## A117389.P3216262189062491599

`A070824(A140134(A026729(n))²)`
-/

namespace A117389.P3216262189062491599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A140134 (A026729 n).toNat ^ 2).toNat

end

end A117389.P3216262189062491599

/-!
# A117393: Number of different classes of entangling power of permutation matrices of dimension d^2, acting on a d X d (tensor product) Hilbert space.

The programs for A117393, there is no canonical definition to state claims against.
-/

/-! ## A117393.P14173586960853148321

`A004396((n²+1)²-n)`
-/

namespace A117393.P14173586960853148321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n ^ 2 + 1) ^ 2 - n)

end

end A117393.P14173586960853148321

/-!
# A117394: Product of the first F(n) primes, where F(n) is the n-th Fibonacci number.

The programs for A117394, there is no canonical definition to state claims against.
-/

/-! ## A117394.P2393426672751703093

`A002110(A000045(n))`
-/

namespace A117394.P2393426672751703093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000045 n).toNat

end

end A117394.P2393426672751703093

/-! ## A117394.P760394488307914802

`A002110(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A117394.P760394488307914802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117394.P760394488307914802

/-! ## A117394.P1830288349218071675

`A002110(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A117394.P1830288349218071675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A117394.P1830288349218071675

/-! ## A117394.P5100726538860499081

`A077011(A032441(n))`
-/

namespace A117394.P5100726538860499081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A032441 n).toNat

end

end A117394.P5100726538860499081

/-! ## A117394.P7637000423386743491

`A096334(A033192(n))`
-/

namespace A117394.P7637000423386743491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A033192 n).toNat

end

end A117394.P7637000423386743491

/-!
# A117395: Number of partitions of n into parts that are neither all squarefree, nor all not squarefree.

The programs for A117395, there is no canonical definition to state claims against.
-/

/-! ## A117395.P9850970785303197193

`A000041(n+1)-(A114374(n+1)+A073576(n+1))`
-/

namespace A117395.P9850970785303197193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A114374 (n + 1) + A073576 (n + 1))

end

end A117395.P9850970785303197193

/-!
# A117396: Triangle, read by rows, defined by: T(n,k) = (k+1)*T(n,k+1) - Sum_{j=1..n-k-1} T(j,0)*T(n,j+k+1) for n>k with T(n,n)=1 for n>=0.

The programs for A117396, the canonical program `A117396.P5688878678667839011` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117396 has offset 0).

The definition of A117396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117396.P5688878678667839011

`gcd(Δ[A348482(n)], A103452(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117396

/-- `gcd(Δ[A348482(n)], A103452(n))` -/
def P5688878678667839011.Spec : Prop :=
  ∀ n, (P5688878678667839011.a n : ℤ) = A117396 n

theorem P5688878678667839011.correct : P5688878678667839011.Spec := by
  intro n
  simp only [A117396]

end A117396

/-! ## A117396.P13616049609725870638

`A348482(n)-A348482(n+1)%A348482(n)`
-/

namespace A117396.P13616049609725870638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 n - Int.tmod (A348482 (n + 1)) (A348482 n)

end

end A117396.P13616049609725870638

namespace A117396

/-- `A348482(n)-A348482(n+1)%A348482(n)` -/
def P13616049609725870638.Spec : Prop :=
  ∀ n, P13616049609725870638.a n = A117396 n

end A117396

/-! ## A117396.P1654081843752490060

`A125860(n)-A058276(A051597(n))`
-/

namespace A117396.P1654081843752490060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 n - A058276 (A051597 n).toNat

end

end A117396.P1654081843752490060

namespace A117396

/-- `A125860(n)-A058276(A051597(n))` -/
def P1654081843752490060.Spec : Prop :=
  ∀ n, P1654081843752490060.a n = A117396 n

end A117396

/-! ## A117396.P13616200324865379327

`A094802(A125860(n))`
-/

namespace A117396.P13616200324865379327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A125860 n).toNat

end

end A117396.P13616200324865379327

namespace A117396

/-- `A094802(A125860(n))` -/
def P13616200324865379327.Spec : Prop :=
  ∀ n, P13616200324865379327.a n = A117396 n

end A117396

/-!
# A117397: Column 3 of triangle A117396.

The programs for A117397, the canonical program `A117397.P12887881903317768543` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117397 has offset 0).

The definition of A117397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117397.P12887881903317768543

`1/8*(A007489(n+3)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A117397

/-- `1/8*(A007489(n+3)-1)` -/
def P12887881903317768543.Spec : Prop :=
  ∀ n, P12887881903317768543.a n = (A117397 n : ℚ)

end A117397

/-! ## A117397.P14607475108897973384

`1/8*(A003422(n+4)-2)`
-/

namespace A117397.P14607475108897973384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A003422 (n + 4) - 2 : ℚ)

end

end A117397.P14607475108897973384

namespace A117397

/-- `1/8*(A003422(n+4)-2)` -/
def P14607475108897973384.Spec : Prop :=
  ∀ n, P14607475108897973384.a n = (A117397 n : ℚ)

end A117397

/-! ## A117397.P16432136423187257907

`∑[ceil(∏[n+3]/4)]`
-/

namespace A117397.P16432136423187257907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117397.P16432136423187257907

namespace A117397

/-- `∑[ceil(∏[n+3]/4)]` -/
def P16432136423187257907.Spec : Prop :=
  ∀ n, P16432136423187257907.a n = A117397 n

end A117397

/-! ## A117397.P10234609949059763796

`a(n-1)+∏[n+3]/4` with `a(0)=1`
-/

namespace A117397.P10234609949059763796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A117397.P10234609949059763796

namespace A117397

/-- `a(n-1)+∏[n+3]/4` -/
def P10234609949059763796.Spec : Prop :=
  ∀ n, P10234609949059763796.a n = (A117397 n : ℚ)

end A117397

/-! ## A117397.P3797025186968137878

`∑[(n+3)*a(n-1)]+1` with `a(0)=0, a(1)=3`
-/

namespace A117397.P3797025186968137878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (n + 3) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117397.P3797025186968137878

namespace A117397

/-- `∑[(n+3)*a(n-1)]+1` -/
def P3797025186968137878.Spec : Prop :=
  ∀ n, (P3797025186968137878.a n : ℤ) = A117397 n

end A117397

/-! ## A117397.P11587470126227338989

`Δ[(n+3)*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A117397.P11587470126227338989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 3 : ℤ) * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117397.P11587470126227338989

namespace A117397

/-- `Δ[(n+3)*(a(n-1)-a(n-2))]` -/
def P11587470126227338989.Spec : Prop :=
  ∀ n, P11587470126227338989.a n = A117397 n

end A117397

/-! ## A117397.P5109768845337402617

`A345889(n+2)/4`
-/

namespace A117397.P5109768845337402617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345889 (n + 2) : ℚ) / 4

end

end A117397.P5109768845337402617

namespace A117397

/-- `A345889(n+2)/4` -/
def P5109768845337402617.Spec : Prop :=
  ∀ n, P5109768845337402617.a n = (A117397 n : ℚ)

end A117397

/-! ## A117397.P17002468383531700049

`(∑[(n+3)!]+2)/8`
-/

namespace A117397.P17002468383531700049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 8

end

end A117397.P17002468383531700049

namespace A117397

/-- `(∑[(n+3)!]+2)/8` -/
def P17002468383531700049.Spec : Prop :=
  ∀ n, P17002468383531700049.a n = (A117397 n : ℚ)

end A117397

/-! ## A117397.P8882810647830860400

`A054116(n+3)/8`
-/

namespace A117397.P8882810647830860400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054116 (n + 3) : ℚ) / 8

end

end A117397.P8882810647830860400

namespace A117397

/-- `A054116(n+3)/8` -/
def P8882810647830860400.Spec : Prop :=
  ∀ n, P8882810647830860400.a n = (A117397 n : ℚ)

end A117397

/-!
# A117398: Matrix log of triangle A117396.

The programs for A117398, there is no canonical definition to state claims against.
-/

/-! ## A117398.P12711372601865125735

`A274658(A178301(n))-A321437(n+2)`
-/

namespace A117398.P12711372601865125735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274658 (A178301 n).toNat - A321437 (n + 2)

end

end A117398.P12711372601865125735

/-!
# A117399: Column 1 (divided by 2) of triangle A117398, which is the matrix log of A117396.

The programs for A117399, there is no canonical definition to state claims against.
-/

/-! ## A117399.P16812454449315691026

`A138772(n)+a(n-1)` with `a(0)=1`
-/

namespace A117399.P16812454449315691026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138772 n + a (n - 1)

end

end A117399.P16812454449315691026

/-! ## A117399.P17292163303478429237

`∑[A138772(A028310(n))]+1`
-/

namespace A117399.P17292163303478429237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117399.P17292163303478429237

/-! ## A117399.P21299438137435576

`∑[A138772(A000038(n)+n)]`
-/

namespace A117399.P21299438137435576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117399.P21299438137435576

/-! ## A117399.P7190006852627897211

`∑[A138772(or(n, A000038(n)))]`
-/

namespace A117399.P7190006852627897211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117399.P7190006852627897211

/-! ## A117399.P6546237797569000683

`∑[A138772(n+1)]+1-A138772(n+1)`
-/

namespace A117399.P6546237797569000683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A138772 (n + 1))

end

end A117399.P6546237797569000683

