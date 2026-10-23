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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A088201: Distance p_n-LQnR(p_n) (A088198) where the difference sequence (A088197) of LQnR(p_n) (A088196) is <= 0.

The programs for A088201, there is no canonical definition to state claims against.
-/

/-! ## A088201.P3698207758898958436

`A020649(A088199(n+1))`
-/

namespace A088201.P3698207758898958436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A088199 (n + 1)).toNat

end

end A088201.P3698207758898958436

/-! ## A088201.P3050985533634890948

`A227196(p?[A088199(n+1)])`
-/

namespace A088201.P3050985533634890948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088201.P3050985533634890948

/-! ## A088201.P5373664424968640254

`A354974(p?[A088199(n+1)])`
-/

namespace A088201.P5373664424968640254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088201.P5373664424968640254

/-! ## A088201.P4274074541897067989

`A227196(or(1, A088199(n+1)))`
-/

namespace A088201.P4274074541897067989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (Int.lor 1 (A088199 (n + 1))).toNat

end

end A088201.P4274074541897067989

/-! ## A088201.P333521437941853978

`A354974(or(1, A088199(n+1)))`
-/

namespace A088201.P333521437941853978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (Int.lor 1 (A088199 (n + 1))).toNat

end

end A088201.P333521437941853978

/-!
# A088203: Infinite audioactive word that shifts 1 place left under "Look and Say" method A, starting with a(1)=2.

The programs for A088203, there is no canonical definition to state claims against.
-/

/-! ## A088203.P18327013382399813293

`3-C(2, A088205(n))`
-/

namespace A088203.P18327013382399813293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.choose 2 (A088205 n).toNat : ℤ)

end

end A088203.P18327013382399813293

/-! ## A088203.P5317793617080429316

`A123884(A240226(2*n+5)+A088205(n))`
-/

namespace A088203.P5317793617080429316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123884 (A240226 (2 * n + 5) + A088205 n).toNat

end

end A088203.P5317793617080429316

/-! ## A088203.P765366775668449390

`A068073(A088205(n)+A088193(n+1))`
-/

namespace A088203.P765366775668449390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A088205 n + A088193 (n + 1)).toNat

end

end A088203.P765366775668449390

/-! ## A088203.P4853657544068839874

`A028356(A088199(n+1)-A088205(n))`
-/

namespace A088203.P4853657544068839874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (A088199 (n + 1) - A088205 n).toNat

end

end A088203.P4853657544068839874

/-! ## A088203.P17347606423198252129

`A068073(A088199(n+1)-A088205(n))`
-/

namespace A088203.P17347606423198252129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A088199 (n + 1) - A088205 n).toNat

end

end A088203.P17347606423198252129

/-!
# A088204: Infinite audioactive word that shifts 1 place left under "Look and Say" method A, starting with a(1)=3.

The programs for A088204, there is no canonical definition to state claims against.
-/

/-! ## A088204.P1642785129356069815

`gcd(A068527(A074482(n)), A182631(n))`
-/

namespace A088204.P1642785129356069815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068527 (A074482 n).toNat) (A182631 n)

end

end A088204.P1642785129356069815

/-! ## A088204.P9597726751036877650

`A255890(gcd(A037796(n+1), A119712(n)))`
-/

namespace A088204.P9597726751036877650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255890 (Int.gcd (A037796 (n + 1)) (A119712 n))

end

end A088204.P9597726751036877650

/-! ## A088204.P13124553572887748951

`A111625(xor(A001400(n), A047618(n+1)))`
-/

namespace A088204.P13124553572887748951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111625 (Int.xor (A001400 n) (A047618 (n + 1))).toNat

end

end A088204.P13124553572887748951

/-! ## A088204.P7849140848096894364

`gcd(A138594(n+1), A167614(A049917(n+1)))`
-/

namespace A088204.P7849140848096894364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138594 (n + 1)) (A167614 (A049917 (n + 1)).toNat)

end

end A088204.P7849140848096894364

/-! ## A088204.P14386197822903517349

`or(A104248(3*(n+1)), A276799(A058695(n)))`
-/

namespace A088204.P14386197822903517349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104248 (3 * (n + 1))) (A276799 (A058695 n).toNat)

end

end A088204.P14386197822903517349

/-!
# A088205: Infinite audioactive word that shifts 1 place left under "Look and Say" method A, starting with a(0)=0.

The programs for A088205, there is no canonical definition to state claims against.
-/

/-! ## A088205.P15752297720512656132

`and(A015521(A109906(n)), A088203(n+1))`
-/

namespace A088205.P15752297720512656132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015521 (A109906 n).toNat) (A088203 (n + 1))

end

end A088205.P15752297720512656132

/-! ## A088205.P9694043805955144791

`and(A088203(n+1), A231332(A254867(n+1)))`
-/

namespace A088205.P9694043805955144791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088203 (n + 1)) (A231332 (A254867 (n + 1)).toNat)

end

end A088205.P9694043805955144791

/-! ## A088205.P9687754515469197365

`and(A088203(n+1), A282427(A027023(n)))`
-/

namespace A088205.P9687754515469197365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088203 (n + 1)) (A282427 (A027023 n).toNat)

end

end A088205.P9687754515469197365

/-! ## A088205.P2024841887314618746

`and(A088203(n+1), A226478(A226478(n+1)²))`
-/

namespace A088205.P2024841887314618746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088203 (n + 1)) (A226478 (A226478 (n + 1) ^ 2).toNat)

end

end A088205.P2024841887314618746

/-! ## A088205.P18377588930316991597

`and(A067745(A153648(n+5)), A088203(n+1))`
-/

namespace A088205.P18377588930316991597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067745 (A153648 (n + 5)).toNat) (A088203 (n + 1))

end

end A088205.P18377588930316991597

/-!
# A088206: Positions of zero in the infinite audioactive word, A088205, which shifts left under "Look and Say" method A, starting with a(1)=0.

The programs for A088206, there is no canonical definition to state claims against.
-/

/-! ## A088206.P4893212367379935907

`∑[A022471(n+1)]`
-/

namespace A088206.P4893212367379935907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088206.P4893212367379935907

/-! ## A088206.P12213785410905950658

`A022471(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A088206.P12213785410905950658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022471 (n + 1) + a (A023443 n).toNat

end

end A088206.P12213785410905950658

/-! ## A088206.P15100635927737713232

`A022471(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A088206.P15100635927737713232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022471 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A088206.P15100635927737713232

/-! ## A088206.P17032198240186765793

`A022471(A000007(n)+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A088206.P17032198240186765793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022471 (A000007 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A088206.P17032198240186765793

/-! ## A088206.P8549251774177442311

`∑[A022472(n+1)+A022474(n+1)+A022473(n+1)]`
-/

namespace A088206.P8549251774177442311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022472 (n + 1) + (A022474 (n + 1) + A022473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088206.P8549251774177442311

/-!
# A088207: a(n) = Sum_{k=0..n} floor(k*phi^2) where phi=(1+sqrt(5))/2.

The programs for A088207, the canonical program `A088207.P368184952816360627` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088207 has offset 0).

The definition of A088207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088207.P368184952816360627

`a(n-1)+floor(n*(1+sqrt(5))²/4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088207

/-- `a(n-1)+floor(n*(1+sqrt(5))²/4)` -/
def P368184952816360627.Spec : Prop :=
  ∀ n, P368184952816360627.a n = A088207 n

theorem P368184952816360627.correct : P368184952816360627.Spec := by
  intro n
  simp only [A088207]

end A088207

/-! ## A088207.P13212590863916140502

`A054347(n)+n*(n+1)/2`
-/

namespace A088207.P13212590863916140502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054347 n : ℚ) + (n * (n + 1) : ℚ) / 2

end

end A088207.P13212590863916140502

namespace A088207

/-- `A054347(n)+n*(n+1)/2` -/
def P13212590863916140502.Spec : Prop :=
  ∀ n, P13212590863916140502.a n = (A088207 n : ℚ)

end A088207

/-! ## A088207.P12012374524752842329

`∑[floor(n*ϕ²)]`
-/

namespace A088207.P12012374524752842329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088207.P12012374524752842329

namespace A088207

/-- `∑[floor(n*ϕ²)]` -/
def P12012374524752842329.Spec : Prop :=
  ∀ n, P12012374524752842329.a n = A088207 n

end A088207

/-! ## A088207.P10792398602069033944

`∑[ceil(ϕ*n)]+C(n, 2)`
-/

namespace A088207.P10792398602069033944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ)

end

end A088207.P10792398602069033944

namespace A088207

/-- `∑[ceil(ϕ*n)]+C(n, 2)` -/
def P10792398602069033944.Spec : Prop :=
  ∀ n, P10792398602069033944.a n = A088207 n

end A088207

/-! ## A088207.P4335985498520776312

`floor(a(n-1)+n*ϕ²)` with `a(0)=0`
-/

namespace A088207.P4335985498520776312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) * Real.goldenRatio ^ 2⌋

end

end A088207.P4335985498520776312

namespace A088207

/-- `floor(a(n-1)+n*ϕ²)` -/
def P4335985498520776312.Spec : Prop :=
  ∀ n, P4335985498520776312.a n = A088207 n

end A088207

/-! ## A088207.P17224206411444697327

`∑[floor(n/ϕ)]+lcm(n, n+1)`
-/

namespace A088207.P17224206411444697327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm n (n + 1) : ℤ)

end

end A088207.P17224206411444697327

namespace A088207

/-- `∑[floor(n/ϕ)]+lcm(n, n+1)` -/
def P17224206411444697327.Spec : Prop :=
  ∀ n, P17224206411444697327.a n = A088207 n

end A088207

/-! ## A088207.P2482227365684397649

`C(n, 2)+∑[floor(ϕ*n)]+n`
-/

namespace A088207.P2482227365684397649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A088207.P2482227365684397649

namespace A088207

/-- `C(n, 2)+∑[floor(ϕ*n)]+n` -/
def P2482227365684397649.Spec : Prop :=
  ∀ n, P2482227365684397649.a n = A088207 n

end A088207

/-! ## A088207.P394018453735859673

`∑[n+1-a(a(n-1))]+n²` with `a(0)=0, a(1)=1`
-/

namespace A088207.P394018453735859673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1 : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A088207.P394018453735859673

namespace A088207

/-- `∑[n+1-a(a(n-1))]+n²` -/
def P394018453735859673.Spec : Prop :=
  ∀ n, P394018453735859673.a n = A088207 n

end A088207

/-! ## A088207.P2261086252011728906

`∑[comp[ceil(ϕ*n)%(3*n+1)]]-(n+1)`
-/

namespace A088207.P2261086252011728906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ (3 * n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A088207.P2261086252011728906

namespace A088207

/-- `∑[comp[ceil(ϕ*n)%(3*n+1)]]-(n+1)` -/
def P2261086252011728906.Spec : Prop :=
  ∀ n, P2261086252011728906.a n = A088207 n

end A088207

/-! ## A088207.P13471086794419251021

`∑[A004957(n)]-n`
-/

namespace A088207.P13471086794419251021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A088207.P13471086794419251021

namespace A088207

/-- `∑[A004957(n)]-n` -/
def P13471086794419251021.Spec : Prop :=
  ∀ n, P13471086794419251021.a n = A088207 n

end A088207

/-! ## A088207.P13536054468163384444

`A283969(n)-(n+1)`
-/

namespace A088207.P13536054468163384444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 n - (n + 1 : ℤ)

end

end A088207.P13536054468163384444

namespace A088207

/-- `A283969(n)-(n+1)` -/
def P13536054468163384444.Spec : Prop :=
  ∀ n, P13536054468163384444.a n = A088207 n

end A088207

/-! ## A088207.P5785727633390963807

`A283733(n)+∑[n-1]`
-/

namespace A088207.P5785727633390963807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088207.P5785727633390963807

namespace A088207

/-- `A283733(n)+∑[n-1]` -/
def P5785727633390963807.Spec : Prop :=
  ∀ n, P5785727633390963807.a n = A088207 n

end A088207

/-! ## A088207.P5105757599669806201

`∑[A004956(n)+n]-n`
-/

namespace A088207.P5105757599669806201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A088207.P5105757599669806201

namespace A088207

/-- `∑[A004956(n)+n]-n` -/
def P5105757599669806201.Spec : Prop :=
  ∀ n, P5105757599669806201.a n = A088207 n

end A088207

/-! ## A088207.P15586272599190139124

`A000217(n)+∑[floor(ϕ*n)]`
-/

namespace A088207.P15586272599190139124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088207.P15586272599190139124

namespace A088207

/-- `A000217(n)+∑[floor(ϕ*n)]` -/
def P15586272599190139124.Spec : Prop :=
  ∀ n, P15586272599190139124.a n = A088207 n

end A088207

/-! ## A088207.P2287680573019966228

`∑[A007066(n+1)-2]+1`
-/

namespace A088207.P2287680573019966228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088207.P2287680573019966228

namespace A088207

/-- `∑[A007066(n+1)-2]+1` -/
def P2287680573019966228.Spec : Prop :=
  ∀ n, P2287680573019966228.a n = A088207 n

end A088207

/-! ## A088207.P7444879498055679253

`∑[∑[A189479(n+1)]]+n²`
-/

namespace A088207.P7444879498055679253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A088207.P7444879498055679253

namespace A088207

/-- `∑[∑[A189479(n+1)]]+n²` -/
def P7444879498055679253.Spec : Prop :=
  ∀ n, P7444879498055679253.a n = A088207 n

end A088207

/-! ## A088207.P5210625400433948898

`A000124(n)+A054347(n)-1`
-/

namespace A088207.P5210625400433948898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A054347 n - 1)

end

end A088207.P5210625400433948898

namespace A088207

/-- `A000124(n)+A054347(n)-1` -/
def P5210625400433948898.Spec : Prop :=
  ∀ n, P5210625400433948898.a n = A088207 n

end A088207

/-! ## A088207.P4530845150694685654

`A005448(n+1)-A283968(n)`
-/

namespace A088207.P4530845150694685654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - A283968 n

end

end A088207.P4530845150694685654

namespace A088207

/-- `A005448(n+1)-A283968(n)` -/
def P4530845150694685654.Spec : Prop :=
  ∀ n, P4530845150694685654.a n = A088207 n

end A088207

/-!
# A088208: Table read by rows where T(0,0)=1; n-th row has 2^n terms T(n,j),j=0 to 2^n-1. For j==0 mod 2, T(n+1,2j)=T(n,j) and T(n+1,2j+1)=T(n,j)+2^n. For j==1 mod 2, T(n+1,2j+1)=T(n,j) and T(n+1,2j)=T(n,j)+2^n.

The programs for A088208, the canonical program `A088208.P4118432922678346086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088208 has offset 0).

The definition of A088208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088208.P6723604650512380436

`A362160(n)+1`
-/

namespace A088208.P6723604650512380436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362160 n + 1

end

end A088208.P6723604650512380436

namespace A088208

/-- `A362160(n)+1` -/
def P6723604650512380436.Spec : Prop :=
  ∀ n, P6723604650512380436.a n = A088208 n

end A088208

/-! ## A088208.P4118432922678346086

`A049773(A233280(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088208

/-- `A049773(A233280(n+1))` -/
def P4118432922678346086.Spec : Prop :=
  ∀ n, P4118432922678346086.a n = A088208 n

theorem P4118432922678346086.correct : P4118432922678346086.Spec := by
  intro n
  simp only [A088208]

end A088208

/-! ## A088208.P8936176734012163990

`A105081(A281589(n+1))`
-/

namespace A088208.P8936176734012163990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A281589 (n + 1)).toNat

end

end A088208.P8936176734012163990

namespace A088208

/-- `A105081(A281589(n+1))` -/
def P8936176734012163990.Spec : Prop :=
  ∀ n, P8936176734012163990.a n = A088208 n

end A088208

/-! ## A088208.P15820790067051723248

`A028242(2*A362160(n))`
-/

namespace A088208.P15820790067051723248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A362160 n).toNat

end

end A088208.P15820790067051723248

namespace A088208

/-- `A028242(2*A362160(n))` -/
def P15820790067051723248.Spec : Prop :=
  ∀ n, P15820790067051723248.a n = A088208 n

end A088208

/-! ## A088208.P14721734202710071529

`(A280995(A054429(n+1))+1)/2`
-/

namespace A088208.P14721734202710071529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280995 (A054429 (n + 1)).toNat + 1 : ℚ) / 2

end

end A088208.P14721734202710071529

namespace A088208

/-- `(A280995(A054429(n+1))+1)/2` -/
def P14721734202710071529.Spec : Prop :=
  ∀ n, P14721734202710071529.a n = (A088208 n : ℚ)

end A088208

/-! ## A088208.P966746319801125205

`A049773(xor(n+1, A164089(n+1)))`
-/

namespace A088208.P966746319801125205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (Int.xor (n + 1 : ℤ) (A164089 (n + 1))).toNat

end

end A088208.P966746319801125205

namespace A088208

/-- `A049773(xor(n+1, A164089(n+1)))` -/
def P966746319801125205.Spec : Prop :=
  ∀ n, P966746319801125205.a n = A088208 n

end A088208

/-! ## A088208.P13623451901010000982

`A008619(A280995(A054429(n+1)))`
-/

namespace A088208.P13623451901010000982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A280995 (A054429 (n + 1)).toNat).toNat

end

end A088208.P13623451901010000982

namespace A088208

/-- `A008619(A280995(A054429(n+1)))` -/
def P13623451901010000982.Spec : Prop :=
  ∀ n, P13623451901010000982.a n = A088208 n

end A088208

/-! ## A088208.P17452169609934791355

`A072376(4*(n+1))-A059893(A154436(n+1))`
-/

namespace A088208.P17452169609934791355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (4 * (n + 1)) - A059893 (A154436 (n + 1)).toNat

end

end A088208.P17452169609934791355

namespace A088208

/-- `A072376(4*(n+1))-A059893(A154436(n+1))` -/
def P17452169609934791355.Spec : Prop :=
  ∀ n, P17452169609934791355.a n = A088208 n

end A088208

/-!
# A088209: Numerators of convergents of the continued fraction with the n+1 partial quotients: [1;1,1,...(n 1's)...,1,n+1], starting with [1], [1;2], [1;1,3], [1;1,1,4], ...

The programs for A088209, the canonical program `A088209.P13612305071748861548` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088209 has offset 0).

The definition of A088209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088209.P4872095950889457102

`ogf((1+x-x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A088209.P4872095950889457102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -2, -1, 2, 1] n

end

end A088209.P4872095950889457102

namespace A088209

/-- `ogf((1+x-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P4872095950889457102.Spec : Prop :=
  ∀ n, P4872095950889457102.a n = A088209 n

end A088209

/-! ## A088209.P13612305071748861548

`a(n-1)+A000032(n)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088209

/-- `a(n-1)+A000032(n)+a(n-2)` -/
def P13612305071748861548.Spec : Prop :=
  ∀ n, P13612305071748861548.a n = A088209 n

theorem P13612305071748861548.correct : P13612305071748861548.Spec := by
  intro n
  simp only [A088209]

end A088209

/-! ## A088209.P863377823487709282

`A045925(n+1)+A000045(n)`
-/

namespace A088209.P863377823487709282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + A000045 n

end

end A088209.P863377823487709282

namespace A088209

/-- `A045925(n+1)+A000045(n)` -/
def P863377823487709282.Spec : Prop :=
  ∀ n, P863377823487709282.a n = A088209 n

end A088209

/-! ## A088209.P9670730109839318578

`A055244(n+1)+A001629(n)`
-/

namespace A088209.P9670730109839318578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1) + A001629 n

end

end A088209.P9670730109839318578

namespace A088209

/-- `A055244(n+1)+A001629(n)` -/
def P9670730109839318578.Spec : Prop :=
  ∀ n, P9670730109839318578.a n = A088209 n

end A088209

/-! ## A088209.P8767934641495595521

`A094588(n)+A007502(n+1)`
-/

namespace A088209.P8767934641495595521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + A007502 (n + 1)

end

end A088209.P8767934641495595521

namespace A088209

/-- `A094588(n)+A007502(n+1)` -/
def P8767934641495595521.Spec : Prop :=
  ∀ n, P8767934641495595521.a n = A088209 n

end A088209

/-! ## A088209.P10399154657329371448

`A178521(n)+A000032(n+1)`
-/

namespace A088209.P10399154657329371448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A000032 (n + 1)

end

end A088209.P10399154657329371448

namespace A088209

/-- `A178521(n)+A000032(n+1)` -/
def P10399154657329371448.Spec : Prop :=
  ∀ n, P10399154657329371448.a n = A088209 n

end A088209

/-! ## A088209.P17848028690944325547

`A178521(n)+A000204(n+1)`
-/

namespace A088209.P17848028690944325547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A000204 (n + 1)

end

end A088209.P17848028690944325547

namespace A088209

/-- `A178521(n)+A000204(n+1)` -/
def P17848028690944325547.Spec : Prop :=
  ∀ n, P17848028690944325547.a n = A088209 n

end A088209

/-! ## A088209.P3501498010556885665

`A136391(n+1)+A099920(n)`
-/

namespace A088209.P3501498010556885665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + A099920 n

end

end A088209.P3501498010556885665

namespace A088209

/-- `A136391(n+1)+A099920(n)` -/
def P3501498010556885665.Spec : Prop :=
  ∀ n, P3501498010556885665.a n = A088209 n

end A088209

/-! ## A088209.P10806469229725089966

`A354044(n)+A000045(n+1)`
-/

namespace A088209.P10806469229725089966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A000045 (n + 1)

end

end A088209.P10806469229725089966

namespace A088209

/-- `A354044(n)+A000045(n+1)` -/
def P10806469229725089966.Spec : Prop :=
  ∀ n, P10806469229725089966.a n = A088209 n

end A088209

/-! ## A088209.P3908771995285844605

`A023607(n)+A000045(n+2)`
-/

namespace A088209.P3908771995285844605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + A000045 (n + 2)

end

end A088209.P3908771995285844605

namespace A088209

/-- `A023607(n)+A000045(n+2)` -/
def P3908771995285844605.Spec : Prop :=
  ∀ n, P3908771995285844605.a n = A088209 n

end A088209

/-! ## A088209.P10420624437435270880

`A029907(n)+A001629(n+2)`
-/

namespace A088209.P10420624437435270880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A001629 (n + 2)

end

end A088209.P10420624437435270880

namespace A088209

/-- `A029907(n)+A001629(n+2)` -/
def P10420624437435270880.Spec : Prop :=
  ∀ n, P10420624437435270880.a n = A088209 n

end A088209

/-! ## A088209.P12817376610291335357

`A099920(n+1)-A212804(n)`
-/

namespace A088209.P12817376610291335357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) - A212804 n

end

end A088209.P12817376610291335357

namespace A088209

/-- `A099920(n+1)-A212804(n)` -/
def P12817376610291335357.Spec : Prop :=
  ∀ n, P12817376610291335357.a n = A088209 n

end A088209

/-! ## A088209.P385263852378760064

`A264147(n)+A136391(n+2)`
-/

namespace A088209.P385263852378760064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + A136391 (n + 2)

end

end A088209.P385263852378760064

namespace A088209

/-- `A264147(n)+A136391(n+2)` -/
def P385263852378760064.Spec : Prop :=
  ∀ n, P385263852378760064.a n = A088209 n

end A088209

/-! ## A088209.P10809553422164141913

`A006490(n+3)-A000032(n)`
-/

namespace A088209.P10809553422164141913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 3) - A000032 n

end

end A088209.P10809553422164141913

namespace A088209

/-- `A006490(n+3)-A000032(n)` -/
def P10809553422164141913.Spec : Prop :=
  ∀ n, P10809553422164141913.a n = A088209 n

end A088209

/-! ## A088209.P6645878614635032377

`A055244(n)+2*A029907(n)`
-/

namespace A088209.P6645878614635032377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + 2 * A029907 n

end

end A088209.P6645878614635032377

namespace A088209

/-- `A055244(n)+2*A029907(n)` -/
def P6645878614635032377.Spec : Prop :=
  ∀ n, P6645878614635032377.a n = A088209 n

end A088209

/-! ## A088209.P16189047160031629556

`A023607(n)+Δ[Δ[A001924(n)]]`
-/

namespace A088209.P16189047160031629556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + (f1 (n + 1) - f1 n)

end

end A088209.P16189047160031629556

namespace A088209

/-- `A023607(n)+Δ[Δ[A001924(n)]]` -/
def P16189047160031629556.Spec : Prop :=
  ∀ n, P16189047160031629556.a n = A088209 n

end A088209

/-! ## A088209.P1873634666651436552

`∑[A094588(n)+A000045(n)]+1`
-/

namespace A088209.P1873634666651436552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A088209.P1873634666651436552

namespace A088209

/-- `∑[A094588(n)+A000045(n)]+1` -/
def P1873634666651436552.Spec : Prop :=
  ∀ n, P1873634666651436552.a n = A088209 n

end A088209

/-! ## A088209.P14729155213985174494

`A212804(n+1)+A045925(n+1)`
-/

namespace A088209.P14729155213985174494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A045925 (n + 1)

end

end A088209.P14729155213985174494

namespace A088209

/-- `A212804(n+1)+A045925(n+1)` -/
def P14729155213985174494.Spec : Prop :=
  ∀ n, P14729155213985174494.a n = A088209 n

end A088209

/-! ## A088209.P6979790904938905550

`A006490(n+1)+A006490(n+2)`
-/

namespace A088209.P6979790904938905550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A006490 (n + 2)

end

end A088209.P6979790904938905550

namespace A088209

/-- `A006490(n+1)+A006490(n+2)` -/
def P6979790904938905550.Spec : Prop :=
  ∀ n, P6979790904938905550.a n = A088209 n

end A088209

/-! ## A088209.P2721170545115914862

`A007502(n+2)-A000045(n+1)`
-/

namespace A088209.P2721170545115914862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 2) - A000045 (n + 1)

end

end A088209.P2721170545115914862

namespace A088209

/-- `A007502(n+2)-A000045(n+1)` -/
def P2721170545115914862.Spec : Prop :=
  ∀ n, P2721170545115914862.a n = A088209 n

end A088209

/-!
# A088210: Numerators of convergents of the continued fraction with the n+1 partial quotients: [2;2,2,...(n 2's)...,2,n+1], starting with [1], [2;2], [2;2,3], [2;2,2,4], ...

The programs for A088210, the canonical program `A088210.P18408197993255256953` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088210 has offset 0).

The definition of A088210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088210.P18408197993255256953

`A000129(n)+(n+1)*A000129(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088210

/-- `A000129(n)+(n+1)*A000129(n+1)` -/
def P18408197993255256953.Spec : Prop :=
  ∀ n, P18408197993255256953.a n = A088210 n

theorem P18408197993255256953.correct : P18408197993255256953.Spec := by
  intro n
  simp only [A088210]

end A088210

/-! ## A088210.P12957194545475148094

`ogf((1+x-x^2-x^3)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A088210.P12957194545475148094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, -4, 2, 4, 1] n

end

end A088210.P12957194545475148094

namespace A088210

/-- `ogf((1+x-x^2-x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P12957194545475148094.Spec : Prop :=
  ∀ n, P12957194545475148094.a n = A088210 n

end A088210

/-! ## A088210.P642382834406015273

`A291264(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A088210.P642382834406015273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291264 (n - 1) + a (n - 1)

end

end A088210.P642382834406015273

namespace A088210

/-- `A291264(n-1)+a(n-1)` -/
def P642382834406015273.Spec : Prop :=
  ∀ n, P642382834406015273.a n = A088210 n

end A088210

/-! ## A088210.P7547131471725665511

`A093967(n+1)+A000129(n)`
-/

namespace A088210.P7547131471725665511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) + A000129 n

end

end A088210.P7547131471725665511

namespace A088210

/-- `A093967(n+1)+A000129(n)` -/
def P7547131471725665511.Spec : Prop :=
  ∀ n, P7547131471725665511.a n = A088210 n

end A088210

/-! ## A088210.P15530584310791510811

`A119915(n+1)+A119915(n)`
-/

namespace A088210.P15530584310791510811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A119915 n

end

end A088210.P15530584310791510811

namespace A088210

/-- `A119915(n+1)+A119915(n)` -/
def P15530584310791510811.Spec : Prop :=
  ∀ n, P15530584310791510811.a n = A088210 n

end A088210

/-! ## A088210.P11470081958689464809

`A361732(n+2)-A001333(n)`
-/

namespace A088210.P11470081958689464809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361732 (n + 2) - A001333 n

end

end A088210.P11470081958689464809

namespace A088210

/-- `A361732(n+2)-A001333(n)` -/
def P11470081958689464809.Spec : Prop :=
  ∀ n, P11470081958689464809.a n = A088210 n

end A088210

/-! ## A088210.P3712495273921817844

`2*A026937(n)-A001333(n)`
-/

namespace A088210.P3712495273921817844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026937 n - A001333 n

end

end A088210.P3712495273921817844

namespace A088210

/-- `2*A026937(n)-A001333(n)` -/
def P3712495273921817844.Spec : Prop :=
  ∀ n, P3712495273921817844.a n = A088210 n

end A088210

/-! ## A088210.P9440220960751241946

`A026937(n)+Δ[A074084(n+1)]`
-/

namespace A088210.P9440220960751241946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n + (f1 (n + 1) - f1 n)

end

end A088210.P9440220960751241946

namespace A088210

/-- `A026937(n)+Δ[A074084(n+1)]` -/
def P9440220960751241946.Spec : Prop :=
  ∀ n, P9440220960751241946.a n = A088210 n

end A088210

/-! ## A088210.P13364551326650302781

`A078057(n)+n*Δ[A024537(n)]`
-/

namespace A088210.P13364551326650302781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A088210.P13364551326650302781

namespace A088210

/-- `A078057(n)+n*Δ[A024537(n)]` -/
def P13364551326650302781.Spec : Prop :=
  ∀ n, P13364551326650302781.a n = A088210 n

end A088210

/-! ## A088210.P12073133057247345832

`A088211(n+1)-A000129(n+1)`
-/

namespace A088210.P12073133057247345832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) - A000129 (n + 1)

end

end A088210.P12073133057247345832

namespace A088210

/-- `A088211(n+1)-A000129(n+1)` -/
def P12073133057247345832.Spec : Prop :=
  ∀ n, P12073133057247345832.a n = A088210 n

end A088210

/-! ## A088210.P13190034493332197543

`A286814(n+1)-A000129(n+2)`
-/

namespace A088210.P13190034493332197543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) - A000129 (n + 2)

end

end A088210.P13190034493332197543

namespace A088210

/-- `A286814(n+1)-A000129(n+2)` -/
def P13190034493332197543.Spec : Prop :=
  ∀ n, P13190034493332197543.a n = A088210 n

end A088210

/-! ## A088210.P15409874054894211396

`A286814(n+1)-A215928(n+2)`
-/

namespace A088210.P15409874054894211396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) - A215928 (n + 2)

end

end A088210.P15409874054894211396

namespace A088210

/-- `A286814(n+1)-A215928(n+2)` -/
def P15409874054894211396.Spec : Prop :=
  ∀ n, P15409874054894211396.a n = A088210 n

end A088210

/-! ## A088210.P2880759147040515821

`A001333(n+1)+2*A364553(n)`
-/

namespace A088210.P2880759147040515821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + 2 * A364553 n

end

end A088210.P2880759147040515821

namespace A088210

/-- `A001333(n+1)+2*A364553(n)` -/
def P2880759147040515821.Spec : Prop :=
  ∀ n, P2880759147040515821.a n = A088210 n

end A088210

/-! ## A088210.P7981684325732443970

`A001333(n+1)+n*A215928(n+1)`
-/

namespace A088210.P7981684325732443970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (n : ℤ) * A215928 (n + 1)

end

end A088210.P7981684325732443970

namespace A088210

/-- `A001333(n+1)+n*A215928(n+1)` -/
def P7981684325732443970.Spec : Prop :=
  ∀ n, P7981684325732443970.a n = A088210 n

end A088210

/-! ## A088210.P17645298602899170682

`A001333(n+1)+n*A155046(2*(n+1))`
-/

namespace A088210.P17645298602899170682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (n : ℤ) * A155046 (2 * (n + 1))

end

end A088210.P17645298602899170682

namespace A088210

/-- `A001333(n+1)+n*A155046(2*(n+1))` -/
def P17645298602899170682.Spec : Prop :=
  ∀ n, P17645298602899170682.a n = A088210 n

end A088210

/-! ## A088210.P839123103667797137

`A155046(2*n+1)+n*A155046(2*(n+1))`
-/

namespace A088210.P839123103667797137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * n + 1) + (n : ℤ) * A155046 (2 * (n + 1))

end

end A088210.P839123103667797137

namespace A088210

/-- `A155046(2*n+1)+n*A155046(2*(n+1))` -/
def P839123103667797137.Spec : Prop :=
  ∀ n, P839123103667797137.a n = A088210 n

end A088210

/-! ## A088210.P397642437774706626

`A000129(n)+A364553(n)+A026937(n)`
-/

namespace A088210.P397642437774706626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A364553 n + A026937 n)

end

end A088210.P397642437774706626

namespace A088210

/-- `A000129(n)+A364553(n)+A026937(n)` -/
def P397642437774706626.Spec : Prop :=
  ∀ n, P397642437774706626.a n = A088210 n

end A088210

/-! ## A088210.P17110108624824809412

`A364636(n+1)-A093967(n)`
-/

namespace A088210.P17110108624824809412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364636 (n + 1) - A093967 n

end

end A088210.P17110108624824809412

namespace A088210

/-- `A364636(n+1)-A093967(n)` -/
def P17110108624824809412.Spec : Prop :=
  ∀ n, P17110108624824809412.a n = A088210 n

end A088210

/-! ## A088210.P6391904263828099636

`∑[A291264(n)]+1-A291264(n)`
-/

namespace A088210.P6391904263828099636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A291264 n)

end

end A088210.P6391904263828099636

namespace A088210

/-- `∑[A291264(n)]+1-A291264(n)` -/
def P6391904263828099636.Spec : Prop :=
  ∀ n, P6391904263828099636.a n = A088210 n

end A088210

/-! ## A088210.P9923791674505015646

`A026937(n+1)+A006645(n)-A292327(n)`
-/

namespace A088210.P9923791674505015646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 (n + 1) + (A006645 n - A292327 n)

end

end A088210.P9923791674505015646

namespace A088210

/-- `A026937(n+1)+A006645(n)-A292327(n)` -/
def P9923791674505015646.Spec : Prop :=
  ∀ n, P9923791674505015646.a n = A088210 n

end A088210

/-!
# A088211: Denominators of convergents of the continued fraction with the n+1 partial quotients: [2;2,2,...(n 2's)...,2,n+1], starting with [1], [2;2], [2;2,3], [2;2,2,4], ...

The programs for A088211, the canonical program `A088211.P18144087723647562284` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088211 has offset 0).

The definition of A088211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088211.P18144087723647562284

`A000129(n+1)+(n-1)*A000129(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088211

/-- `A000129(n+1)+(n-1)*A000129(n)` -/
def P18144087723647562284.Spec : Prop :=
  ∀ n, P18144087723647562284.a n = A088211 n

theorem P18144087723647562284.correct : P18144087723647562284.Spec := by
  intro n
  simp only [A088211]

end A088211

/-! ## A088211.P7073561286916645714

`ogf((1-2x+x^2+2x^3)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A088211.P7073561286916645714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2] [1, -4, 2, 4, 1] n

end

end A088211.P7073561286916645714

namespace A088211

/-- `ogf((1-2x+x^2+2x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P7073561286916645714.Spec : Prop :=
  ∀ n, P7073561286916645714.a n = A088211 n

end A088211

/-! ## A088211.P6729590054138281783

`A093967(n)+A001333(n)`
-/

namespace A088211.P6729590054138281783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 n + A001333 n

end

end A088211.P6729590054138281783

namespace A088211

/-- `A093967(n)+A001333(n)` -/
def P6729590054138281783.Spec : Prop :=
  ∀ n, P6729590054138281783.a n = A088211 n

end A088211

/-! ## A088211.P9460117798831078496

`A286814(n)-A001333(n)`
-/

namespace A088211.P9460117798831078496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 n - A001333 n

end

end A088211.P9460117798831078496

namespace A088211

/-- `A286814(n)-A001333(n)` -/
def P9460117798831078496.Spec : Prop :=
  ∀ n, P9460117798831078496.a n = A088211 n

end A088211

/-! ## A088211.P12961319317774076921

`A093967(n)+Δ[A000129(n)]`
-/

namespace A088211.P12961319317774076921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 n + (f1 (n + 1) - f1 n)

end

end A088211.P12961319317774076921

namespace A088211

/-- `A093967(n)+Δ[A000129(n)]` -/
def P12961319317774076921.Spec : Prop :=
  ∀ n, P12961319317774076921.a n = A088211 n

end A088211

/-! ## A088211.P1043562119933593584

`A093967(n)+A002203(n)/2`
-/

namespace A088211.P1043562119933593584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093967 n : ℚ) + (A002203 n : ℚ) / 2

end

end A088211.P1043562119933593584

namespace A088211

/-- `A093967(n)+A002203(n)/2` -/
def P1043562119933593584.Spec : Prop :=
  ∀ n, P1043562119933593584.a n = (A088211 n : ℚ)

end A088211

/-! ## A088211.P10785963339999789597

`A286814(n)-A002203(n)/2`
-/

namespace A088211.P10785963339999789597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286814 n : ℚ) - (A002203 n : ℚ) / 2

end

end A088211.P10785963339999789597

namespace A088211

/-- `A286814(n)-A002203(n)/2` -/
def P10785963339999789597.Spec : Prop :=
  ∀ n, P10785963339999789597.a n = (A088211 n : ℚ)

end A088211

/-! ## A088211.P16772723389995798752

`A001333(n)+n*A000129(n)`
-/

namespace A088211.P16772723389995798752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (n : ℤ) * A000129 n

end

end A088211.P16772723389995798752

namespace A088211

/-- `A001333(n)+n*A000129(n)` -/
def P16772723389995798752.Spec : Prop :=
  ∀ n, P16772723389995798752.a n = A088211 n

end A088211

/-! ## A088211.P11391273619994590204

`A001333(n)+n*A215928(n)`
-/

namespace A088211.P11391273619994590204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (n : ℤ) * A215928 n

end

end A088211.P11391273619994590204

namespace A088211

/-- `A001333(n)+n*A215928(n)` -/
def P11391273619994590204.Spec : Prop :=
  ∀ n, P11391273619994590204.a n = A088211 n

end A088211

/-! ## A088211.P5529424153883583994

`A001333(n)+n*Δ[A171842(n)]`
-/

namespace A088211.P5529424153883583994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A088211.P5529424153883583994

namespace A088211

/-- `A001333(n)+n*Δ[A171842(n)]` -/
def P5529424153883583994.Spec : Prop :=
  ∀ n, P5529424153883583994.a n = A088211 n

end A088211

/-! ## A088211.P16172250750623901206

`A286814(n)-A002965(2*n+1)`
-/

namespace A088211.P16172250750623901206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 n - A002965 (2 * n + 1)

end

end A088211.P16172250750623901206

namespace A088211

/-- `A286814(n)-A002965(2*n+1)` -/
def P16172250750623901206.Spec : Prop :=
  ∀ n, P16172250750623901206.a n = A088211 n

end A088211

/-! ## A088211.P8372321003696164879

`A119016(2*n)+n*A002965(2*n)`
-/

namespace A088211.P8372321003696164879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n) + (n : ℤ) * A002965 (2 * n)

end

end A088211.P8372321003696164879

namespace A088211

/-- `A119016(2*n)+n*A002965(2*n)` -/
def P8372321003696164879.Spec : Prop :=
  ∀ n, P8372321003696164879.a n = A088211 n

end A088211

/-! ## A088211.P5608500168234119961

`A002965(2*n+1)+n*A002965(2*n)`
-/

namespace A088211.P5608500168234119961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 1) + (n : ℤ) * A002965 (2 * n)

end

end A088211.P5608500168234119961

namespace A088211

/-- `A002965(2*n+1)+n*A002965(2*n)` -/
def P5608500168234119961.Spec : Prop :=
  ∀ n, P5608500168234119961.a n = A088211 n

end A088211

/-! ## A088211.P1058894215645631675

`A000129(n+1)+A093967(n)-A000129(n)`
-/

namespace A088211.P1058894215645631675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A093967 n - A000129 n)

end

end A088211.P1058894215645631675

namespace A088211

/-- `A000129(n+1)+A093967(n)-A000129(n)` -/
def P1058894215645631675.Spec : Prop :=
  ∀ n, P1058894215645631675.a n = A088211 n

end A088211

/-! ## A088211.P5060303621432390749

`A000129(n)+A286814(n)-A000129(n+1)`
-/

namespace A088211.P5060303621432390749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A286814 n - A000129 (n + 1))

end

end A088211.P5060303621432390749

namespace A088211

/-- `A000129(n)+A286814(n)-A000129(n+1)` -/
def P5060303621432390749.Spec : Prop :=
  ∀ n, P5060303621432390749.a n = A088211 n

end A088211

/-! ## A088211.P7286901372825876123

`A119915(n+1)-(A119915(n)+A000129(n))`
-/

namespace A088211.P7286901372825876123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) - (A119915 n + A000129 n)

end

end A088211.P7286901372825876123

namespace A088211

/-- `A119915(n+1)-(A119915(n)+A000129(n))` -/
def P7286901372825876123.Spec : Prop :=
  ∀ n, P7286901372825876123.a n = A088211 n

end A088211

/-!
# A088212: Smallest k>1 such that n+k^2 is prime.

The programs for A088212, there is no canonical definition to state claims against.
-/

/-! ## A088212.P15760133114559565517

`floor(sqrt(A088213(n+1)-n))`
-/

namespace A088212.P15760133114559565517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088213 (n + 1) - (n : ℤ))

end

end A088212.P15760133114559565517

/-! ## A088212.P8155064751641842414

`A000194(A088213(n+1)-n)`
-/

namespace A088212.P8155064751641842414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P8155064751641842414

/-! ## A088212.P14796061350478251673

`A000196(A088213(n+1)-n)`
-/

namespace A088212.P14796061350478251673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P14796061350478251673

/-! ## A088212.P12708564165325888634

`A004739(A088213(n+1)-n)`
-/

namespace A088212.P12708564165325888634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P12708564165325888634

/-! ## A088212.P16404727100781151828

`A027907(A088213(n+1)-n)`
-/

namespace A088212.P16404727100781151828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P16404727100781151828

/-! ## A088212.P14874954598497371139

`A086520(A088213(n+1)-n)`
-/

namespace A088212.P14874954598497371139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P14874954598497371139

/-! ## A088212.P4063682703751129529

`A137735(A088213(n+1)-n)`
-/

namespace A088212.P4063682703751129529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P4063682703751129529

/-! ## A088212.P9979868008051876761

`A261904(A088213(n+1)-n)`
-/

namespace A088212.P9979868008051876761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (A088213 (n + 1) - (n : ℤ)).toNat

end

end A088212.P9979868008051876761

/-! ## A088212.P2102964584084998225

`A000188(A088213(n+1)-(n+1))`
-/

namespace A088212.P2102964584084998225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A088213 (n + 1) - (n + 1 : ℤ)).toNat

end

end A088212.P2102964584084998225

/-! ## A088212.P12121369099636898077

`sqrt(A088213(n+1)-n-ceil(1/A000041(n)))`
-/

namespace A088212.P12121369099636898077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088213 (n + 1) - (n : ℤ) - ⌈1 / (A000041 n : ℚ)⌉ : ℝ)

end

end A088212.P12121369099636898077

/-!
# A088213: Primes appeared in A088212.

The programs for A088213, there is no canonical definition to state claims against.
-/

/-! ## A088213.P562151931586782396

`n+1+A088212(n+1)²`
-/

namespace A088213.P562151931586782396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A088212 (n + 1) ^ 2

end

end A088213.P562151931586782396

/-! ## A088213.P9727628625464951732

`A002522(A088212(n+1))+n`
-/

namespace A088213.P9727628625464951732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A088212 (n + 1)).toNat + (n : ℤ)

end

end A088213.P9727628625464951732

/-! ## A088213.P2261477704042409721

`p?[A088212(A028310(n))²+n]`
-/

namespace A088213.P2261477704042409721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088212 (A028310 n).toNat ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088213.P2261477704042409721

/-! ## A088213.P2994118622587997718

`A004442(A088212(n+1)²+n)`
-/

namespace A088213.P2994118622587997718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P2994118622587997718

/-! ## A088213.P13472744926110485595

`A007918(A088212(n+1)²+n)`
-/

namespace A088213.P13472744926110485595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P13472744926110485595

/-! ## A088213.P11452060459742004288

`A020725(A088212(n+1)²+n)`
-/

namespace A088213.P11452060459742004288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P11452060459742004288

/-! ## A088213.P13769434204622870026

`A034694(A088212(n+1)²+n)`
-/

namespace A088213.P13769434204622870026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P13769434204622870026

/-! ## A088213.P7780475988865806501

`A049283(A088212(n+1)²+n)`
-/

namespace A088213.P7780475988865806501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P7780475988865806501

/-! ## A088213.P6562783147488565685

`A059843(A088212(n+1)²+n)`
-/

namespace A088213.P6562783147488565685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P6562783147488565685

/-! ## A088213.P7888813328101600060

`A139693(A088212(n+1)²+n)`
-/

namespace A088213.P7888813328101600060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A088212 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A088213.P7888813328101600060

/-!
# A088214: Numbers less than the maximum possible determinant A085000(3)=412 not occurring as determinant of a 3 X 3 matrix with elements 1..9.

The programs for A088214, there is no canonical definition to state claims against.
-/

/-! ## A088214.P17887135576012552944

`eq[0, A088215(n)]`
-/

namespace A088214.P17887135576012552944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088214.P17887135576012552944

/-!
# A088218: Total number of leaves in all rooted ordered trees with n edges.

The programs for A088218, the canonical program `A088218.P16894379730140654192` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088218 has offset 0).

The definition of A088218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088218.P14109692142744963173

`A110556(n)*(-1)^n`
-/

namespace A088218.P14109692142744963173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * (-1) ^ n

end

end A088218.P14109692142744963173

namespace A088218

/-- `A110556(n)*(-1)^n` -/
def P14109692142744963173.Spec : Prop :=
  ∀ n, P14109692142744963173.a n = A088218 n

end A088218

/-! ## A088218.P8719192196276065356

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088218.P8719192196276065356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A088218.P8719192196276065356

namespace A088218

/-- `(4-2/n)*a(n-1)` -/
def P8719192196276065356.Spec : Prop :=
  ∀ n, P8719192196276065356.a n = (A088218 n : ℚ)

end A088218

/-! ## A088218.P2344500656476489666

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088218.P2344500656476489666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A088218.P2344500656476489666

namespace A088218

/-- `2*(2-n^(-1))*a(n-1)` -/
def P2344500656476489666.Spec : Prop :=
  ∀ n, P2344500656476489666.a n = (A088218 n : ℚ)

end A088218

/-! ## A088218.P874092776890086790

`abs(record[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=-1`
-/

namespace A088218.P874092776890086790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A088218.P874092776890086790

namespace A088218

/-- `abs(record[a(n-1)/(floor(n/2)/n-1)])` -/
def P874092776890086790.Spec : Prop :=
  ∀ n, P874092776890086790.a n = (A088218 n : ℚ)

end A088218

/-! ## A088218.P7862394141566898159

`abs(A110556(n))`
-/

namespace A088218.P7862394141566898159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110556 n|

end

end A088218.P7862394141566898159

namespace A088218

/-- `abs(A110556(n))` -/
def P7862394141566898159.Spec : Prop :=
  ∀ n, P7862394141566898159.a n = A088218 n

end A088218

/-! ## A088218.P16894379730140654192

`A260878(n)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088218

/-- `A260878(n)-1` -/
def P16894379730140654192.Spec : Prop :=
  ∀ n, P16894379730140654192.a n = A088218 n

theorem P16894379730140654192.correct : P16894379730140654192.Spec := by
  intro n
  simp only [A088218]

end A088218

/-! ## A088218.P2304792278502100653

`A210736(2*n)`
-/

namespace A088218.P2304792278502100653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n)

end

end A088218.P2304792278502100653

namespace A088218

/-- `A210736(2*n)` -/
def P2304792278502100653.Spec : Prop :=
  ∀ n, P2304792278502100653.a n = A088218 n

end A088218

/-! ## A088218.P9736350110236182450

`ceil(A000984(n)/2)`
-/

namespace A088218.P9736350110236182450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 n : ℚ) / 2⌉

end

end A088218.P9736350110236182450

namespace A088218

/-- `ceil(A000984(n)/2)` -/
def P9736350110236182450.Spec : Prop :=
  ∀ n, P9736350110236182450.a n = A088218 n

end A088218

/-! ## A088218.P11813776978548422534

`ceil(A029651(n)/3)`
-/

namespace A088218.P11813776978548422534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029651 n : ℚ) / 3⌉

end

end A088218.P11813776978548422534

namespace A088218

/-- `ceil(A029651(n)/3)` -/
def P11813776978548422534.Spec : Prop :=
  ∀ n, P11813776978548422534.a n = A088218 n

end A088218

/-! ## A088218.P6457589137478118215

`A052473(n+2)-2`
-/

namespace A088218.P6457589137478118215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052473 (n + 2) - 2

end

end A088218.P6457589137478118215

namespace A088218

/-- `A052473(n+2)-2` -/
def P6457589137478118215.Spec : Prop :=
  ∀ n, P6457589137478118215.a n = A088218 n

end A088218

/-! ## A088218.P12154147809373414166

`(A370487(n)+2)/3`
-/

namespace A088218.P12154147809373414166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370487 n + 2 : ℚ) / 3

end

end A088218.P12154147809373414166

namespace A088218

/-- `(A370487(n)+2)/3` -/
def P12154147809373414166.Spec : Prop :=
  ∀ n, P12154147809373414166.a n = (A088218 n : ℚ)

end A088218

/-! ## A088218.P12059171773643676009

`floor(A051920(2*n)/2)`
-/

namespace A088218.P12059171773643676009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051920 (2 * n) : ℚ) / 2⌋

end

end A088218.P12059171773643676009

namespace A088218

/-- `floor(A051920(2*n)/2)` -/
def P12059171773643676009.Spec : Prop :=
  ∀ n, P12059171773643676009.a n = A088218 n

end A088218

/-! ## A088218.P147822347243460494

`ceil(A001405(2*n)/2)`
-/

namespace A088218.P147822347243460494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 (2 * n) : ℚ) / 2⌉

end

end A088218.P147822347243460494

namespace A088218

/-- `ceil(A001405(2*n)/2)` -/
def P147822347243460494.Spec : Prop :=
  ∀ n, P147822347243460494.a n = A088218 n

end A088218

/-! ## A088218.P18057413585355573855

`ceil(A063886(2*n)/2)`
-/

namespace A088218.P18057413585355573855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063886 (2 * n) : ℚ) / 2⌉

end

end A088218.P18057413585355573855

namespace A088218

/-- `ceil(A063886(2*n)/2)` -/
def P18057413585355573855.Spec : Prop :=
  ∀ n, P18057413585355573855.a n = A088218 n

end A088218

/-! ## A088218.P10534907692172547741

`ceil(A050168(2*n)/3)`
-/

namespace A088218.P10534907692172547741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050168 (2 * n) : ℚ) / 3⌉

end

end A088218.P10534907692172547741

namespace A088218

/-- `ceil(A050168(2*n)/3)` -/
def P10534907692172547741.Spec : Prop :=
  ∀ n, P10534907692172547741.a n = A088218 n

end A088218

/-! ## A088218.P14031782623131857039

`A182027(2*n+1)/2`
-/

namespace A088218.P14031782623131857039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (2 * n + 1) : ℚ) / 2

end

end A088218.P14031782623131857039

namespace A088218

/-- `A182027(2*n+1)/2` -/
def P14031782623131857039.Spec : Prop :=
  ∀ n, P14031782623131857039.a n = (A088218 n : ℚ)

end A088218

/-! ## A088218.P5158496137041939925

`A001700((n-1)%(n+1))`
-/

namespace A088218.P5158496137041939925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A088218.P5158496137041939925

namespace A088218

/-- `A001700((n-1)%(n+1))` -/
def P5158496137041939925.Spec : Prop :=
  ∀ n, P5158496137041939925.a n = A088218 n

end A088218

/-! ## A088218.P1480333592076559254

`A024482(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088218.P1480333592076559254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A024482 n + a (n - 1)

end

end A088218.P1480333592076559254

namespace A088218

/-- `A024482(n)+a(n-1)` -/
def P1480333592076559254.Spec : Prop :=
  ∀ n, P1480333592076559254.a n = A088218 n

end A088218

/-! ## A088218.P18233450192765949566

`A097613(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A088218.P18233450192765949566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097613 n + a (n - 1)

end

end A088218.P18233450192765949566

namespace A088218

/-- `A097613(n)+a(n-1)` -/
def P18233450192765949566.Spec : Prop :=
  ∀ n, P18233450192765949566.a n = A088218 n

end A088218

/-! ## A088218.P12649648277735692254

`ceil((n+1)/2*A000108(n))`
-/

namespace A088218.P12649648277735692254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000108 n : ℚ)⌉

end

end A088218.P12649648277735692254

namespace A088218

/-- `ceil((n+1)/2*A000108(n))` -/
def P12649648277735692254.Spec : Prop :=
  ∀ n, P12649648277735692254.a n = A088218 n

end A088218

/-!
# A088219: Coefficient of x^n in g.f.^n is A086608(n).

The programs for A088219, there is no canonical definition to state claims against.
-/

/-! ## A088219.P1471569462980254379

`A368887(A383490(n))`
-/

namespace A088219.P1471569462980254379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (A383490 n).toNat

end

end A088219.P1471569462980254379

/-! ## A088219.P13579910415153903770

`A171751(A007827(n+1))`
-/

namespace A088219.P13579910415153903770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171751 (A007827 (n + 1)).toNat

end

end A088219.P13579910415153903770

/-! ## A088219.P15004292467850634982

`A291294(A087135(n))-1`
-/

namespace A088219.P15004292467850634982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291294 (A087135 n).toNat - 1

end

end A088219.P15004292467850634982

/-! ## A088219.P4580810817929160806

`∏{p}[A364589(n), A130110(#)]`
-/

namespace A088219.P4580810817929160806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A130110 p

end

end A088219.P4580810817929160806

/-! ## A088219.P5603843162013981094

`A000194(A280628(n)+A099462(n))`
-/

namespace A088219.P5603843162013981094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A280628 n + A099462 n).toNat

end

end A088219.P5603843162013981094

/-!
# A088220: Coefficient of x^n in g.f.^n is A000172(n).

The programs for A088220, there is no canonical definition to state claims against.
-/

/-! ## A088220.P4352795855905293504

`∑[A001650(A242903(n)²)]`
-/

namespace A088220.P4352795855905293504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A242903 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088220.P4352795855905293504

/-! ## A088220.P4914551073965005346

`∑[A161205(A242903(n)²)]`
-/

namespace A088220.P4914551073965005346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A242903 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088220.P4914551073965005346

/-! ## A088220.P13369261166274195871

`∑[A293137(A242903(n)²)]`
-/

namespace A088220.P13369261166274195871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A242903 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088220.P13369261166274195871

/-!
# A088221: Coefficient of x^n in g.f.^n is A000698(n+1).

The programs for A088221, there is no canonical definition to state claims against.
-/

/-! ## A088221.P6161739151031281970

`∑[A004525(A120732(n))]`
-/

namespace A088221.P6161739151031281970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A120732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088221.P6161739151031281970

/-!
# A088222: Coefficient of x^n in g.f.^n is A004123(n).

The programs for A088222, there is no canonical definition to state claims against.
-/

/-! ## A088222.P10998584500584008284

`∏{p}[(2*A084098(n)+1-n)², #]`
-/

namespace A088222.P10998584500584008284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A084098 n + 1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A088222.P10998584500584008284

/-! ## A088222.P37737029443230575

`A080513(A105630(n))`
-/

namespace A088222.P37737029443230575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A105630 n).toNat

end

end A088222.P37737029443230575

/-!
# A088223: Coefficient of x^n in g.f.^n is A048286(n).

The programs for A088223, there is no canonical definition to state claims against.
-/

/-! ## A088223.P7045155892507973602

`A194917(n+1)+A004523(A277673(n))`
-/

namespace A088223.P7045155892507973602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + A004523 (A277673 n).toNat

end

end A088223.P7045155892507973602

/-! ## A088223.P10076576684280228083

`A289440(A001063(n)*A006512(n+1))`
-/

namespace A088223.P10076576684280228083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A001063 n * A006512 (n + 1)).toNat

end

end A088223.P10076576684280228083

/-!
# A088224: Numbers that fill in the gaps between primes in a list of twin primes.

The programs for A088224, there is no canonical definition to state claims against.
-/

/-! ## A088224.P14446608147540611922

`filter[n+2, A283265(#)]`
-/

namespace A088224.P14446608147540611922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j) = 1) n)

end

end A088224.P14446608147540611922

/-! ## A088224.P3566655231329546860

`eq[1, A283265(n+2)]+2`
-/

namespace A088224.P3566655231329546860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088224.P3566655231329546860

/-! ## A088224.P12143901433404403657

`eq[0, A164292(n+3)]+3`
-/

namespace A088224.P12143901433404403657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A088224.P12143901433404403657

/-! ## A088224.P14466685525457763961

`lt[A129950(n+3), 1]+3`
-/

namespace A088224.P14466685525457763961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A088224.P14466685525457763961

/-! ## A088224.P580692853386156758

`lt[0, A283265(round(acot(n)+n))]`
-/

namespace A088224.P580692853386156758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088224.P580692853386156758

/-! ## A088224.P6285489948218781950

`comp[A099609(n+1)-2]+2`
-/

namespace A088224.P6285489948218781950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A088224.P6285489948218781950

/-! ## A088224.P11678821475688080634

`comp[A171821(n+1)-2]+2`
-/

namespace A088224.P11678821475688080634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A088224.P11678821475688080634

/-! ## A088224.P13740745625889052137

`comp[A001097(n+1)-3]+3`
-/

namespace A088224.P13740745625889052137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A088224.P13740745625889052137

/-! ## A088224.P16131489958507901368

`record[(n+4)*A283265(n+4)]`
-/

namespace A088224.P16131489958507901368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A283265 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088224.P16131489958507901368

/-! ## A088224.P6467152724042773924

`lt[acot(n), A283265(n+1)]+1`
-/

namespace A088224.P6467152724042773924
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A088224.P6467152724042773924

/-!
# A088225: Solutions to x^n == 7 (mod 11).

The programs for A088225, the canonical program `A088225.P12705326429268541217` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088225 has offset 1).

The definition of A088225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088225.P12705326429268541217

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=6, a(2)=7, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088225

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12705326429268541217.Spec : Prop :=
  ∀ n, P12705326429268541217.a n = A088225 (n + 1)

theorem P12705326429268541217.correct : P12705326429268541217.Spec := by
  intro n
  simp only [A088225, Nat.add_sub_cancel]

end A088225

/-! ## A088225.P7496825536438917863

`a(n-4)+11` with `a(0)=2, a(1)=6, a(2)=7, a(3)=8`
-/

namespace A088225.P7496825536438917863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 7, 8] fun n a =>
  a (n - 4) + 11

end

end A088225.P7496825536438917863

namespace A088225

/-- `a(n-4)+11` -/
def P7496825536438917863.Spec : Prop :=
  ∀ n, (P7496825536438917863.a n : ℤ) = A088225 (n + 1)

end A088225

/-! ## A088225.P2150274400541249642

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A088225.P2150274400541249642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 1, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088225.P2150274400541249642

namespace A088225

/-- `∑[floor(a(n-4))]` -/
def P2150274400541249642.Spec : Prop :=
  ∀ n, (P2150274400541249642.a n : ℤ) = A088225 (n + 1)

end A088225

/-! ## A088225.P423452781857970566

`∑[a(n-4)%6]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=1, a(4)=5`
-/

namespace A088225.P423452781857970566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 1, 5] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088225.P423452781857970566

namespace A088225

/-- `∑[a(n-4)%6]` -/
def P423452781857970566.Spec : Prop :=
  ∀ n, (P423452781857970566.a n : ℤ) = A088225 (n + 1)

end A088225

/-! ## A088225.P1282309498054900959

`∑[a(n-4)^a(n-2)]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=1, a(4)=5`
-/

namespace A088225.P1282309498054900959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 1, 5] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088225.P1282309498054900959

namespace A088225

/-- `∑[a(n-4)^a(n-2)]` -/
def P1282309498054900959.Spec : Prop :=
  ∀ n, (P1282309498054900959.a n : ℤ) = A088225 (n + 1)

end A088225

/-! ## A088225.P7173489047504848589

`∑[gcd(a(a(n-3)), a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=1, a(4)=5`
-/

namespace A088225.P7173489047504848589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 1, 5] fun n f1 =>
  Nat.gcd (f1 (f1 (n - 3))) (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088225.P7173489047504848589

namespace A088225

/-- `∑[gcd(a(a(n-3)), a(n-4))]` -/
def P7173489047504848589.Spec : Prop :=
  ∀ n, (P7173489047504848589.a n : ℤ) = A088225 (n + 1)

end A088225

/-! ## A088225.P5301828232398153913

`A127932(n)+A047338(n+1)`
-/

namespace A088225.P5301828232398153913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127932 n + A047338 (n + 1)

end

end A088225.P5301828232398153913

namespace A088225

/-- `A127932(n)+A047338(n+1)` -/
def P5301828232398153913.Spec : Prop :=
  ∀ n, P5301828232398153913.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P9648047474512974635

`A263449(n)+A047294(n+1)`
-/

namespace A088225.P9648047474512974635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n + A047294 (n + 1)

end

end A088225.P9648047474512974635

namespace A088225

/-- `A263449(n)+A047294(n+1)` -/
def P9648047474512974635.Spec : Prop :=
  ∀ n, P9648047474512974635.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P7770398552764893235

`A168484(n+1)+A158459(n)`
-/

namespace A088225.P7770398552764893235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + A158459 n

end

end A088225.P7770398552764893235

namespace A088225

/-- `A168484(n+1)+A158459(n)` -/
def P7770398552764893235.Spec : Prop :=
  ∀ n, P7770398552764893235.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P11396527770386216879

`A016789(A004525(n))+A001068(n)`
-/

namespace A088225.P11396527770386216879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A004525 n).toNat + A001068 n

end

end A088225.P11396527770386216879

namespace A088225

/-- `A016789(A004525(n))+A001068(n)` -/
def P11396527770386216879.Spec : Prop :=
  ∀ n, P11396527770386216879.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P5982818723952639734

`A047298(A285869(n+1)+A285869(n))+n+1`
-/

namespace A088225.P5982818723952639734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (A285869 (n + 1) + A285869 n).toNat + (n + 1 : ℤ)

end

end A088225.P5982818723952639734

namespace A088225

/-- `A047298(A285869(n+1)+A285869(n))+n+1` -/
def P5982818723952639734.Spec : Prop :=
  ∀ n, P5982818723952639734.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P15689195381415820975

`A267541(A001068(n))`
-/

namespace A088225.P15689195381415820975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (A001068 n).toNat

end

end A088225.P15689195381415820975

namespace A088225

/-- `A267541(A001068(n))` -/
def P15689195381415820975.Spec : Prop :=
  ∀ n, P15689195381415820975.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P17754244024739357013

`A267541(A047201(n+1)-1)`
-/

namespace A088225.P17754244024739357013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (A047201 (n + 1) - 1).toNat

end

end A088225.P17754244024739357013

namespace A088225

/-- `A267541(A047201(n+1)-1)` -/
def P17754244024739357013.Spec : Prop :=
  ∀ n, P17754244024739357013.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P13964652032629190922

`A267541(comp[A047221(2*n+1)+2])`
-/

namespace A088225.P13964652032629190922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (2 * n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088225.P13964652032629190922

namespace A088225

/-- `A267541(comp[A047221(2*n+1)+2])` -/
def P13964652032629190922.Spec : Prop :=
  ∀ n, P13964652032629190922.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P5802084227853284822

`A267541(∪[A047221(n+1)-2, A047221(n+1)])`
-/

namespace A088225.P5802084227853284822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A088225.P5802084227853284822

namespace A088225

/-- `A267541(∪[A047221(n+1)-2, A047221(n+1)])` -/
def P5802084227853284822.Spec : Prop :=
  ∀ n, P5802084227853284822.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P3831924846455685631

`A047235(A047251(n+1))-A047285(n+1)`
-/

namespace A088225.P3831924846455685631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A047251 (n + 1)).toNat - A047285 (n + 1)

end

end A088225.P3831924846455685631

namespace A088225

/-- `A047235(A047251(n+1))-A047285(n+1)` -/
def P3831924846455685631.Spec : Prop :=
  ∀ n, P3831924846455685631.a n = A088225 (n + 1)

end A088225

/-! ## A088225.P8938514743930483289

`A267541(∪[A233998(n+1)-2, A233998(n+1)])`
-/

namespace A088225.P8938514743930483289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A088225.P8938514743930483289

namespace A088225

/-- `A267541(∪[A233998(n+1)-2, A233998(n+1)])` -/
def P8938514743930483289.Spec : Prop :=
  ∀ n, P8938514743930483289.a n = A088225 (n + 1)

end A088225

/-!
# A088226: a(1)=0, a(2)=0, a(3)=1; for n>3, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A088226, the canonical program `A088226.P3990531583660670054` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088226 has offset 1).

The definition of A088226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A088226.P3990531583660670054`, by `A088226.P3990531583660670054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088226.P3990531583660670054

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=2, a(6)=1, a(7)=1, a(8)=2, a(9)=0, a(10)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088226

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P3990531583660670054.Spec : Prop :=
  ∀ n, P3990531583660670054.a n = A088226 (n + 1)

theorem P3990531583660670054.correct : P3990531583660670054.Spec := by
  intro n
  simp only [A088226, Nat.add_sub_cancel]

end A088226

/-! ## A088226.P13065193777574547298

`A057554(comp[∑[2*n]])`
-/

namespace A088226.P13065193777574547298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088226.P13065193777574547298

namespace A088226

/-- `A057554(comp[∑[2*n]])` -/
def P13065193777574547298.Spec : Prop :=
  ∀ n, P13065193777574547298.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P14394058520563745743

`A071797(A170950(n+1))%∑[A010052(n)]`
-/

namespace A088226.P14394058520563745743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071797 (A170950 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088226.P14394058520563745743

namespace A088226

/-- `A071797(A170950(n+1))%∑[A010052(n)]` -/
def P14394058520563745743.Spec : Prop :=
  ∀ n, P14394058520563745743.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P17378130286887337927

`A078358(A170950(n+1))%A003059(n+1)`
-/

namespace A088226.P17378130286887337927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078358 (A170950 (n + 1)).toNat) (A003059 (n + 1))

end

end A088226.P17378130286887337927

namespace A088226

/-- `A078358(A170950(n+1))%A003059(n+1)` -/
def P17378130286887337927.Spec : Prop :=
  ∀ n, P17378130286887337927.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P10282715774782189080

`A226005(n)-A226005(n-2*A226005(n))`
-/

namespace A088226.P10282715774782189080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 n - A226005 ((n : ℤ) - 2 * A226005 n).toNat

end

end A088226.P10282715774782189080

namespace A088226

/-- `A226005(n)-A226005(n-2*A226005(n))` -/
def P10282715774782189080.Spec : Prop :=
  ∀ n, P10282715774782189080.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P6887777494615351199

`(A170950(n+1)+A000196(n))%A003059(n+1)`
-/

namespace A088226.P6887777494615351199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170950 (n + 1) + A000196 n) (A003059 (n + 1))

end

end A088226.P6887777494615351199

namespace A088226

/-- `(A170950(n+1)+A000196(n))%A003059(n+1)` -/
def P6887777494615351199.Spec : Prop :=
  ∀ n, P6887777494615351199.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P6581653824310931828

`A057555(lt[1, A074294(n+1)])-1`
-/

namespace A088226.P6581653824310931828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A088226.P6581653824310931828

namespace A088226

/-- `A057555(lt[1, A074294(n+1)])-1` -/
def P6581653824310931828.Spec : Prop :=
  ∀ n, P6581653824310931828.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P16480455566744646360

`A055087(A170950(n+1)+A000196(n))`
-/

namespace A088226.P16480455566744646360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A170950 (n + 1) + A000196 n).toNat

end

end A088226.P16480455566744646360

namespace A088226

/-- `A055087(A170950(n+1)+A000196(n))` -/
def P16480455566744646360.Spec : Prop :=
  ∀ n, P16480455566744646360.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P16619558053142826313

`∑[A119557(2*n)]-A119557(2*n)`
-/

namespace A088226.P16619558053142826313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119557 (2 * n)

end

end A088226.P16619558053142826313

namespace A088226

/-- `∑[A119557(2*n)]-A119557(2*n)` -/
def P16619558053142826313.Spec : Prop :=
  ∀ n, P16619558053142826313.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P17065206100302625132

`A086520(n)-a(n-1)` with `a(0)=0`
-/

namespace A088226.P17065206100302625132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086520 n - a (n - 1)

end

end A088226.P17065206100302625132

namespace A088226

/-- `A086520(n)-a(n-1)` -/
def P17065206100302625132.Spec : Prop :=
  ∀ n, P17065206100302625132.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P2017450591486678771

`abs(∑[A038608(A086520(n))])`
-/

namespace A088226.P2017450591486678771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A086520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A088226.P2017450591486678771

namespace A088226

/-- `abs(∑[A038608(A086520(n))])` -/
def P2017450591486678771.Spec : Prop :=
  ∀ n, P2017450591486678771.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P8228074880007877801

`A001222(A278222(A078446(n+1)-1))`
-/

namespace A088226.P8228074880007877801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (A078446 (n + 1) - 1).toNat).toNat

end

end A088226.P8228074880007877801

namespace A088226

/-- `A001222(A278222(A078446(n+1)-1))` -/
def P8228074880007877801.Spec : Prop :=
  ∀ n, P8228074880007877801.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P11761494874495913120

`A090996(A078446(n+1)-1)`
-/

namespace A088226.P11761494874495913120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A078446 (n + 1) - 1).toNat

end

end A088226.P11761494874495913120

namespace A088226

/-- `A090996(A078446(n+1)-1)` -/
def P11761494874495913120.Spec : Prop :=
  ∀ n, P11761494874495913120.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P9504328279590812262

`A001222(A001316(A078446(n+1)-1))`
-/

namespace A088226.P9504328279590812262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A078446 (n + 1) - 1).toNat).toNat

end

end A088226.P9504328279590812262

namespace A088226

/-- `A001222(A001316(A078446(n+1)-1))` -/
def P9504328279590812262.Spec : Prop :=
  ∀ n, P9504328279590812262.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P8281312183674761967

`A089309(A078446(n+1)-1)`
-/

namespace A088226.P8281312183674761967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A078446 (n + 1) - 1).toNat

end

end A088226.P8281312183674761967

namespace A088226

/-- `A089309(A078446(n+1)-1)` -/
def P8281312183674761967.Spec : Prop :=
  ∀ n, P8281312183674761967.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P8427578651647993596

`A000120(A078446(n+1)-1)`
-/

namespace A088226.P8427578651647993596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078446 (n + 1) - 1).toNat

end

end A088226.P8427578651647993596

namespace A088226

/-- `A000120(A078446(n+1)-1)` -/
def P8427578651647993596.Spec : Prop :=
  ∀ n, P8427578651647993596.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P17827820300025570077

`A277700(A078446(n+1)-1)`
-/

namespace A088226.P17827820300025570077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A078446 (n + 1) - 1).toNat

end

end A088226.P17827820300025570077

namespace A088226

/-- `A277700(A078446(n+1)-1)` -/
def P17827820300025570077.Spec : Prop :=
  ∀ n, P17827820300025570077.a n = A088226 (n + 1)

end A088226

/-! ## A088226.P5988252025553453320

`A001222(A151787(A078446(n+1)))`
-/

namespace A088226.P5988252025553453320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151787 (A078446 (n + 1)).toNat).toNat

end

end A088226.P5988252025553453320

namespace A088226

/-- `A001222(A151787(A078446(n+1)))` -/
def P5988252025553453320.Spec : Prop :=
  ∀ n, P5988252025553453320.a n = A088226 (n + 1)

end A088226

/-!
# A088227: Solutions x to x^n == 7 mod 13.

The programs for A088227, the canonical program `A088227.P3905573301797751354` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088227 has offset 1).

The definition of A088227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088227.P3905573301797751354

`a(n-4)+13` with `a(0)=2, a(1)=6, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088227

/-- `a(n-4)+13` -/
def P3905573301797751354.Spec : Prop :=
  ∀ n, (P3905573301797751354.a n : ℤ) = A088227 (n + 1)

theorem P3905573301797751354.correct : P3905573301797751354.Spec := by
  intro n
  simp only [A088227, Nat.add_sub_cancel]

end A088227

/-! ## A088227.P852828725475585961

`∑[abs(a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`
-/

namespace A088227.P852828725475585961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P852828725475585961

namespace A088227

/-- `∑[abs(a(n-4))]` -/
def P852828725475585961.Spec : Prop :=
  ∀ n, (P852828725475585961.a n : ℤ) = A088227 (n + 1)

end A088227

/-! ## A088227.P15121238638637557658

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A088227.P15121238638637557658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P15121238638637557658

namespace A088227

/-- `∑[floor(a(n-4))]` -/
def P15121238638637557658.Spec : Prop :=
  ∀ n, (P15121238638637557658.a n : ℤ) = A088227 (n + 1)

end A088227

/-! ## A088227.P17377986216271699944

`∑[ceil(a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A088227.P17377986216271699944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P17377986216271699944

namespace A088227

/-- `∑[ceil(a(n-4))]` -/
def P17377986216271699944.Spec : Prop :=
  ∀ n, (P17377986216271699944.a n : ℤ) = A088227 (n + 1)

end A088227

/-! ## A088227.P3170826759200242347

`∑[gcd(2, ∑[∑[n]+n])²]-2`
-/

namespace A088227.P3170826759200242347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A088227.P3170826759200242347

namespace A088227

/-- `∑[gcd(2, ∑[∑[n]+n])²]-2` -/
def P3170826759200242347.Spec : Prop :=
  ∀ n, P3170826759200242347.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P4448621532600266891

`∑[gcd(4, a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`
-/

namespace A088227.P4448621532600266891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  Nat.gcd 4 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P4448621532600266891

namespace A088227

/-- `∑[gcd(4, a(n-4))]` -/
def P4448621532600266891.Spec : Prop :=
  ∀ n, (P4448621532600266891.a n : ℤ) = A088227 (n + 1)

end A088227

/-! ## A088227.P1872658318950344667

`∑[a(n-4)%5]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`
-/

namespace A088227.P1872658318950344667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P1872658318950344667

namespace A088227

/-- `∑[a(n-4)%5]` -/
def P1872658318950344667.Spec : Prop :=
  ∀ n, (P1872658318950344667.a n : ℤ) = A088227 (n + 1)

end A088227

/-! ## A088227.P10135993584986823568

`∑[(2-a(n-4))²]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4, a(4)=4`
-/

namespace A088227.P10135993584986823568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1, 4, 4] fun n f1 =>
  (2 - f1 (n - 4)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P10135993584986823568

namespace A088227

/-- `∑[(2-a(n-4))²]` -/
def P10135993584986823568.Spec : Prop :=
  ∀ n, P10135993584986823568.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P13525135031999888235

`∑[a(n-4)^(4/a(n-4))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A088227.P13525135031999888235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 4, 1, 4] fun n f1 =>
  f1 (n - 4) ^ (4 / f1 (n - 4))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P13525135031999888235

namespace A088227

/-- `∑[a(n-4)^(4/a(n-4))]` -/
def P13525135031999888235.Spec : Prop :=
  ∀ n, P13525135031999888235.a n = (A088227 (n + 1) : ℝ)

end A088227

/-! ## A088227.P5265586228919281615

`3*A066530(n)+n-1`
-/

namespace A088227.P5265586228919281615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A066530 n + ((n : ℤ) - 1)

end

end A088227.P5265586228919281615

namespace A088227

/-- `3*A066530(n)+n-1` -/
def P5265586228919281615.Spec : Prop :=
  ∀ n, P5265586228919281615.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P17148890500052745634

`∑[A006530(a(n-4))²]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A088227.P17148890500052745634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1, 4] fun n f1 =>
  A006530 (f1 (n - 4)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P17148890500052745634

namespace A088227

/-- `∑[A006530(a(n-4))²]` -/
def P17148890500052745634.Spec : Prop :=
  ∀ n, P17148890500052745634.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P175386984054508808

`∑[A014963(a(n-4))²]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A088227.P175386984054508808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1, 4] fun n f1 =>
  A014963 (f1 (n - 4)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P175386984054508808

namespace A088227

/-- `∑[A014963(a(n-4))²]` -/
def P175386984054508808.Spec : Prop :=
  ∀ n, P175386984054508808.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P16151994970508997157

`∑[A020639(a(n-4))²]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A088227.P16151994970508997157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1, 4] fun n f1 =>
  A020639 (f1 (n - 4)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088227.P16151994970508997157

namespace A088227

/-- `∑[A020639(a(n-4))²]` -/
def P16151994970508997157.Spec : Prop :=
  ∀ n, P16151994970508997157.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P16451545894537585138

`A110657(n+1)+A016777(n)`
-/

namespace A088227.P16451545894537585138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (n + 1) + A016777 n

end

end A088227.P16451545894537585138

namespace A088227

/-- `A110657(n+1)+A016777(n)` -/
def P16451545894537585138.Spec : Prop :=
  ∀ n, P16451545894537585138.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P6701349881137530710

`A174396(n+1)+A098180(n)`
-/

namespace A088227.P6701349881137530710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174396 (n + 1) + A098180 n

end

end A088227.P6701349881137530710

namespace A088227

/-- `A174396(n+1)+A098180(n)` -/
def P6701349881137530710.Spec : Prop :=
  ∀ n, P6701349881137530710.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P13787764140743908363

`A193766(n+1)+A080412(n)`
-/

namespace A088227.P13787764140743908363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + A080412 n

end

end A088227.P13787764140743908363

namespace A088227

/-- `A193766(n+1)+A080412(n)` -/
def P13787764140743908363.Spec : Prop :=
  ∀ n, P13787764140743908363.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P13521768602923958251

`A293990(n)+A047298(n+1)`
-/

namespace A088227.P13521768602923958251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 n + A047298 (n + 1)

end

end A088227.P13521768602923958251

namespace A088227

/-- `A293990(n)+A047298(n+1)` -/
def P13521768602923958251.Spec : Prop :=
  ∀ n, P13521768602923958251.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P906309922629061471

`A016873(n)-A047322(n+1)`
-/

namespace A088227.P906309922629061471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A047322 (n + 1)

end

end A088227.P906309922629061471

namespace A088227

/-- `A016873(n)-A047322(n+1)` -/
def P906309922629061471.Spec : Prop :=
  ∀ n, P906309922629061471.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P12751913880061655651

`A379211(n+1)-A110654(n)`
-/

namespace A088227.P12751913880061655651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1) - A110654 n

end

end A088227.P12751913880061655651

namespace A088227

/-- `A379211(n+1)-A110654(n)` -/
def P12751913880061655651.Spec : Prop :=
  ∀ n, P12751913880061655651.a n = A088227 (n + 1)

end A088227

/-! ## A088227.P3964117015571931022

`A168199(n+1)+A047361(n+1)`
-/

namespace A088227.P3964117015571931022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (n + 1) + A047361 (n + 1)

end

end A088227.P3964117015571931022

namespace A088227

/-- `A168199(n+1)+A047361(n+1)` -/
def P3964117015571931022.Spec : Prop :=
  ∀ n, P3964117015571931022.a n = A088227 (n + 1)

end A088227

/-!
# A088229: Number of n X n (0,1) matrices with distinct rows.

The programs for A088229, the canonical program `A088229.P1922773108603604974` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088229 has offset 0).

The definition of A088229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088229.P13060611810582240215

`n!*C(2^n, n)`
-/

namespace A088229.P13060611810582240215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 ^ n) n

end

end A088229.P13060611810582240215

namespace A088229

/-- `n!*C(2^n, n)` -/
def P13060611810582240215.Spec : Prop :=
  ∀ n, (P13060611810582240215.a n : ℤ) = A088229 n

end A088229

/-! ## A088229.P10147210937731976681

`n!*A014070(n)`
-/

namespace A088229.P10147210937731976681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A014070 n

end

end A088229.P10147210937731976681

namespace A088229

/-- `n!*A014070(n)` -/
def P10147210937731976681.Spec : Prop :=
  ∀ n, P10147210937731976681.a n = A088229 n

end A088229

/-! ## A088229.P1922773108603604974

`(2^n)!/(2^n-n)!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088229

/-- `(2^n)!/(2^n-n)!` -/
def P1922773108603604974.Spec : Prop :=
  ∀ n, P1922773108603604974.a n = (A088229 n : ℚ)

end A088229

/-! ## A088229.P17202527427497122904

`C(2^n, n)*∏[n+1]/(n+1)`
-/

namespace A088229.P17202527427497122904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 ^ n) n * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A088229.P17202527427497122904

namespace A088229

/-- `C(2^n, n)*∏[n+1]/(n+1)` -/
def P17202527427497122904.Spec : Prop :=
  ∀ n, P17202527427497122904.a n = (A088229 n : ℚ)

end A088229

/-! ## A088229.P14074162751183566049

`C(2^n, n)*A000142(n)`
-/

namespace A088229.P14074162751183566049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) n : ℤ) * A000142 n

end

end A088229.P14074162751183566049

namespace A088229

/-- `C(2^n, n)*A000142(n)` -/
def P14074162751183566049.Spec : Prop :=
  ∀ n, P14074162751183566049.a n = A088229 n

end A088229

/-!
# A088230: a(1)=0; for n>1: a(n)=a(n-1)-n if that number is nonnegative and occurs at most once in the sequence, otherwise a(n)=a(n-1)+n.

The programs for A088230, there is no canonical definition to state claims against.
-/

/-! ## A088230.P9277684279333108868

`(a(n-1)+n)%(A185044(A099608(n))²+2*n)` with `a(0)=0`
-/

namespace A088230.P9277684279333108868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A185044 (A099608 n).toNat ^ 2 + (2 * n : ℤ))

end

end A088230.P9277684279333108868

/-! ## A088230.P3276643374082346668

`∑[n*A008683(A131689(3*n)+1)]`
-/

namespace A088230.P3276643374082346668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (A131689 (3 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088230.P3276643374082346668

/-! ## A088230.P16104415345551914223

`∑[n*A033999(A350304(n+1)²)]`
-/

namespace A088230.P16104415345551914223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A350304 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088230.P16104415345551914223

/-! ## A088230.P7011490817792982131

`∑[A072088(n)/A033999(A350304(n+1)²)]`
-/

namespace A088230.P7011490817792982131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072088 n : ℚ) / (A033999 (A350304 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088230.P7011490817792982131

/-!
# A088231: Triangle read by rows: T(n,k) = number of squares not less than n-k and not greater n+k, 0<=k

The programs for A088231, the canonical program `A088231.P16919889853487200307` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088231 has offset 1).

The definition of A088231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088231.P16919889853487200307

`A000196(A094727(n+1))-A000196(A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088231

/-- `A000196(A094727(n+1))-A000196(A025581(n))` -/
def P16919889853487200307.Spec : Prop :=
  ∀ n, P16919889853487200307.a n = A088231 (n + 1)

theorem P16919889853487200307.correct : P16919889853487200307.Spec := by
  intro n
  simp only [A088231, Nat.add_sub_cancel]

end A088231

/-! ## A088231.P14302635816490623629

`A135034(A108872(n+1))-A135034(A004736(n+1))`
-/

namespace A088231.P14302635816490623629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A108872 (n + 1)).toNat - A135034 (A004736 (n + 1)).toNat

end

end A088231.P14302635816490623629

namespace A088231

/-- `A135034(A108872(n+1))-A135034(A004736(n+1))` -/
def P14302635816490623629.Spec : Prop :=
  ∀ n, P14302635816490623629.a n = A088231 (n + 1)

end A088231

/-! ## A088231.P4865663619964505437

`and(A001222(A007916(n+1)), A352921(n+1))`
-/

namespace A088231.P4865663619964505437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A007916 (n + 1)).toNat) (A352921 (n + 1))

end

end A088231.P4865663619964505437

namespace A088231

/-- `and(A001222(A007916(n+1)), A352921(n+1))` -/
def P4865663619964505437.Spec : Prop :=
  ∀ n, P4865663619964505437.a n = A088231 (n + 1)

end A088231

/-! ## A088231.P12449277933978198973

`and(A001222(A052485(n+1)), A352921(n+1))`
-/

namespace A088231.P12449277933978198973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A052485 (n + 1)).toNat) (A352921 (n + 1))

end

end A088231.P12449277933978198973

namespace A088231

/-- `and(A001222(A052485(n+1)), A352921(n+1))` -/
def P12449277933978198973.Spec : Prop :=
  ∀ n, P12449277933978198973.a n = A088231 (n + 1)

end A088231

/-! ## A088231.P3188387257349301795

`and(A001222(A085971(n+1)), A352921(n+1))`
-/

namespace A088231.P3188387257349301795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A085971 (n + 1)).toNat) (A352921 (n + 1))

end

end A088231.P3188387257349301795

namespace A088231

/-- `and(A001222(A085971(n+1)), A352921(n+1))` -/
def P3188387257349301795.Spec : Prop :=
  ∀ n, P3188387257349301795.a n = A088231 (n + 1)

end A088231

/-!
# A088232: Numbers k such that 3 does not divide phi(k).

The programs for A088232, the canonical program `A088232.P18376775273542459675` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088232 has offset 1).

The definition of A088232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088232.P18376775273542459675

`lt[A354099(n+1), 1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A088232

/-- `lt[A354099(n+1), 1]+1` -/
def P18376775273542459675.Spec : Prop :=
  ∀ n, (P18376775273542459675.a n : ℤ) = A088232 (n + 1)

theorem P18376775273542459675.correct : P18376775273542459675.Spec := by
  intro n
  simp only [A088232, Nat.add_sub_cancel]

end A088232

/-! ## A088232.P3123768944286935279

`lt[0, A000010(n+1)%3]+1`
-/

namespace A088232.P3123768944286935279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A088232.P3123768944286935279

namespace A088232

/-- `lt[0, A000010(n+1)%3]+1` -/
def P3123768944286935279.Spec : Prop :=
  ∀ n, (P3123768944286935279.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P12490418779651707212

`eq[0, A002265(5*val(A000010(n+1), 3))]+1`
-/

namespace A088232.P12490418779651707212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 * SequenceMachineLib.valuation (A000010 (n + 1)).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P12490418779651707212

namespace A088232

/-- `eq[0, A002265(5*val(A000010(n+1), 3))]+1` -/
def P12490418779651707212.Spec : Prop :=
  ∀ n, (P12490418779651707212.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P4186735558875879309

`lt[A046073(n+1), A283443(A046073(n+1))]+1`
-/

namespace A088232.P4186735558875879309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A046073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088232.P4186735558875879309

namespace A088232

/-- `lt[A046073(n+1), A283443(A046073(n+1))]+1` -/
def P4186735558875879309.Spec : Prop :=
  ∀ n, (P4186735558875879309.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P503084537534190096

`∩[A168183(n+1), A230780(n+1)]`
-/

namespace A088232.P503084537534190096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088232.P503084537534190096

namespace A088232

/-- `∩[A168183(n+1), A230780(n+1)]` -/
def P503084537534190096.Spec : Prop :=
  ∀ n, (P503084537534190096.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P12411888062390732819

`eq[1, A011655(A000010(n+1))]+1`
-/

namespace A088232.P12411888062390732819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P12411888062390732819

namespace A088232

/-- `eq[1, A011655(A000010(n+1))]+1` -/
def P12411888062390732819.Spec : Prop :=
  ∀ n, (P12411888062390732819.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P16436930155035039721

`record[A091733(n+1)-1]`
-/

namespace A088232.P16436930155035039721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088232.P16436930155035039721

namespace A088232

/-- `record[A091733(n+1)-1]` -/
def P16436930155035039721.Spec : Prop :=
  ∀ n, P16436930155035039721.a n = A088232 (n + 1)

end A088232

/-! ## A088232.P878290873017982664

`eq[1, A060839(n+1)]+1`
-/

namespace A088232.P878290873017982664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P878290873017982664

namespace A088232

/-- `eq[1, A060839(n+1)]+1` -/
def P878290873017982664.Spec : Prop :=
  ∀ n, (P878290873017982664.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P3701604930426198071

`eq[1, A070668(n+1)]+1`
-/

namespace A088232.P3701604930426198071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P3701604930426198071

namespace A088232

/-- `eq[1, A070668(n+1)]+1` -/
def P3701604930426198071.Spec : Prop :=
  ∀ n, (P3701604930426198071.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P8608116441916725675

`eq[1, A070674(n+1)]+1`
-/

namespace A088232.P8608116441916725675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P8608116441916725675

namespace A088232

/-- `eq[1, A070674(n+1)]+1` -/
def P8608116441916725675.Spec : Prop :=
  ∀ n, (P8608116441916725675.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P17472636105284614368

`record[root(A076989(n+1), 3)]-1`
-/

namespace A088232.P17472636105284614368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A088232.P17472636105284614368

namespace A088232

/-- `record[root(A076989(n+1), 3)]-1` -/
def P17472636105284614368.Spec : Prop :=
  ∀ n, P17472636105284614368.a n = (A088232 (n + 1) : ℝ)

end A088232

/-! ## A088232.P15881688389793942132

`eq[1, A343783(A343783(n+1))]+1`
-/

namespace A088232.P15881688389793942132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (A343783 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088232.P15881688389793942132

namespace A088232

/-- `eq[1, A343783(A343783(n+1))]+1` -/
def P15881688389793942132.Spec : Prop :=
  ∀ n, (P15881688389793942132.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P2757198076062600437

`lt[1, 4/A010124(A039649(n+1)-1)]+1`
-/

namespace A088232.P2757198076062600437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A010124 (A039649 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A088232.P2757198076062600437

namespace A088232

/-- `lt[1, 4/A010124(A039649(n+1)-1)]+1` -/
def P2757198076062600437.Spec : Prop :=
  ∀ n, (P2757198076062600437.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P17696500529474035159

`lt[A060819(n+1), A130724(A000010(n+1))]+1`
-/

namespace A088232.P17696500529474035159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088232.P17696500529474035159

namespace A088232

/-- `lt[A060819(n+1), A130724(A000010(n+1))]+1` -/
def P17696500529474035159.Spec : Prop :=
  ∀ n, (P17696500529474035159.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P9440232689081050574

`lt[A032741(n), A347633(A039649(n+1)-1)]+1`
-/

namespace A088232.P9440232689081050574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A088232.P9440232689081050574

namespace A088232

/-- `lt[A032741(n), A347633(A039649(n+1)-1)]+1` -/
def P9440232689081050574.Spec : Prop :=
  ∀ n, (P9440232689081050574.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P1578731331131249710

`filter[A230780(n+1), A168182(#)]`
-/

namespace A088232.P1578731331131249710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A088232.P1578731331131249710

namespace A088232

/-- `filter[A230780(n+1), A168182(#)]` -/
def P1578731331131249710.Spec : Prop :=
  ∀ n, P1578731331131249710.a n = A088232 (n + 1)

end A088232

/-! ## A088232.P11792710833516526975

`eq[2, A343783(A008574(n))]`
-/

namespace A088232.P11792710833516526975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088232.P11792710833516526975

namespace A088232

/-- `eq[2, A343783(A008574(n))]` -/
def P11792710833516526975.Spec : Prop :=
  ∀ n, (P11792710833516526975.a n : ℤ) = A088232 (n + 1)

end A088232

/-! ## A088232.P4502497787966874299

`eq[2, A343783(A022144(n))]`
-/

namespace A088232.P4502497787966874299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088232.P4502497787966874299

namespace A088232

/-- `eq[2, A343783(A022144(n))]` -/
def P4502497787966874299.Spec : Prop :=
  ∀ n, (P4502497787966874299.a n : ℤ) = A088232 (n + 1)

end A088232

/-!
# A088233: First differences of roots of consecutive prime powers; a(1)=1.

The programs for A088233, there is no canonical definition to state claims against.
-/

/-! ## A088233.P16488127295112540836

`Δ[A025473(n+1)]`
-/

namespace A088233.P16488127295112540836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P16488127295112540836

/-! ## A088233.P15322353947806891871

`Δ[A006530(A000961(n+1))]`
-/

namespace A088233.P15322353947806891871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P15322353947806891871

/-! ## A088233.P5475015200550825083

`Δ[A006530(A056798(n+1))]`
-/

namespace A088233.P5475015200550825083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P5475015200550825083

/-! ## A088233.P395121351209041546

`Δ[A007947(A000961(n+1)²)]`
-/

namespace A088233.P395121351209041546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000961 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P395121351209041546

/-! ## A088233.P8589149337854422646

`Δ[A020639(A000961(n+1)²)]`
-/

namespace A088233.P8589149337854422646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000961 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P8589149337854422646

/-! ## A088233.P9097713450901517062

`Δ[A020639(sqrt(A056798(n+1)))]`
-/

namespace A088233.P9097713450901517062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P9097713450901517062

/-! ## A088233.P16247712623956757977

`Δ[A014963(record[A345993(n+1)])]`
-/

namespace A088233.P16247712623956757977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P16247712623956757977

/-! ## A088233.P17916577022838879609

`A025473(n+2)-A025473(n+1)`
-/

namespace A088233.P17916577022838879609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2) - A025473 (n + 1)

end

end A088233.P17916577022838879609

/-! ## A088233.P11941368183894188561

`Δ[A006530(lt[A001221(n+1), 2]+1)]`
-/

namespace A088233.P11941368183894188561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P11941368183894188561

/-! ## A088233.P6687834029820004323

`Δ[A014963(lt[A001221(n+1), 2]+1)]`
-/

namespace A088233.P6687834029820004323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088233.P6687834029820004323

/-!
# A088234: First differences of exponents of consecutive prime powers.

The programs for A088234, there is no canonical definition to state claims against.
-/

/-! ## A088234.P18185655293859737446

`Δ[A025474(n+1)]`
-/

namespace A088234.P18185655293859737446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P18185655293859737446

/-! ## A088234.P5817284137112375399

`Δ[A086454(n+1)]`
-/

namespace A088234.P5817284137112375399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P5817284137112375399

/-! ## A088234.P7107916781631756288

`Δ[A000005(A000961(n+1))]`
-/

namespace A088234.P7107916781631756288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P7107916781631756288

/-! ## A088234.P5388097685480359572

`Δ[A001222(A138929(n+1))]`
-/

namespace A088234.P5388097685480359572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P5388097685480359572

/-! ## A088234.P2616631658332178495

`Δ[A302242(A302493(n+1))]`
-/

namespace A088234.P2616631658332178495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A302493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P2616631658332178495

/-! ## A088234.P15652658139309534474

`Δ[A000005(sqrt(A056798(n+1)))]`
-/

namespace A088234.P15652658139309534474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P15652658139309534474

/-! ## A088234.P4405111488273932491

`Δ[A001222(sqrt(A056798(n+1)))]`
-/

namespace A088234.P4405111488273932491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P4405111488273932491

/-! ## A088234.P9504280189484316886

`A025474(n+2)-A025474(n+1)`
-/

namespace A088234.P9504280189484316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 2) - A025474 (n + 1)

end

end A088234.P9504280189484316886

/-! ## A088234.P6927793124962568904

`A086454(n+2)-A086454(n+1)`
-/

namespace A088234.P6927793124962568904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 2) - A086454 (n + 1)

end

end A088234.P6927793124962568904

/-! ## A088234.P9277581525935182907

`Δ[A000005(record[n/a(A001221(n))])]` with `a(0)=1`
-/

namespace A088234.P9277581525935182907
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (A001221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088234.P9277581525935182907

/-!
# A088235: Total number of digits (in base 10) in all preceding terms in the sequence.

The programs for A088235, there is no canonical definition to state claims against.
-/

/-! ## A088235.P6142229256551658190

`A064223(A028310(n))-A000007(n)`
-/

namespace A088235.P6142229256551658190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (A028310 n).toNat - A000007 n

end

end A088235.P6142229256551658190

/-! ## A088235.P1429671950167318

`a(n-1)+A073053(a(n-1))%10` with `a(0)=0, a(1)=1`
-/

namespace A088235.P1429671950167318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Int.tmod (A073053 (a (n - 1)).toNat) 10

end

end A088235.P1429671950167318

/-! ## A088235.P17861706636862359036

`A055642(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A088235.P17861706636862359036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A055642 (a (n - 1)).toNat + a (n - 1)

end

end A088235.P17861706636862359036

/-! ## A088235.P2180518507747599179

`a(n-1)+A004216(a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A088235.P2180518507747599179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (A004216 (a (n - 1)).toNat + 1)

end

end A088235.P2180518507747599179

/-! ## A088235.P4599310171954142194

`A004218(a(n-1)+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088235.P4599310171954142194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004218 (a (n - 1) + 1).toNat + a (n - 1)

end

end A088235.P4599310171954142194

/-! ## A088235.P1345156076963917409

`record[A064223(A003963(n+1))%A064223(n+1)]`
-/

namespace A088235.P1345156076963917409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064223 (A003963 (n + 1)).toNat) (A064223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088235.P1345156076963917409

/-! ## A088235.P15794328723971726538

`∑[A225541(A172471(A056115(n)))]`
-/

namespace A088235.P15794328723971726538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A172471 (A056115 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P15794328723971726538

/-! ## A088235.P5096546272137688990

`A002828(n²)*A064223(A028310(n))`
-/

namespace A088235.P5096546272137688990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A064223 (A028310 n).toNat

end

end A088235.P5096546272137688990

/-! ## A088235.P7244037624885054450

`∑[A255270(comp[A100464(n+1)])]`
-/

namespace A088235.P7244037624885054450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100464 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P7244037624885054450

/-! ## A088235.P10711891081413607408

`∑[A110654(A000523(A335152(n+1)))]`
-/

namespace A088235.P10711891081413607408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000523 (A335152 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P10711891081413607408

/-! ## A088235.P13783415818556937274

`A064223(n^A178334(n))-C(2, n+2)`
-/

namespace A088235.P13783415818556937274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A088235.P13783415818556937274

/-! ## A088235.P11622769348183488823

`A064223(n^A178334(n))-A000007(n)`
-/

namespace A088235.P11622769348183488823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000007 n

end

end A088235.P11622769348183488823

/-! ## A088235.P14082989008965131295

`A064223(n^A178334(n))-A008683((n+1)²)`
-/

namespace A088235.P14082989008965131295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A008683 ((n + 1) ^ 2)

end

end A088235.P14082989008965131295

/-! ## A088235.P14142573481496301662

`∑[A039836(A039836(n+2)+2)-3]`
-/

namespace A088235.P14142573481496301662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A039836 (n + 2) + 2).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P14142573481496301662

/-! ## A088235.P6099102085430785898

`∑[ceil(∑[n/A032766((n+1)²)])]`
-/

namespace A088235.P6099102085430785898
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A032766 ((n + 1) ^ 2) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P6099102085430785898

/-! ## A088235.P7796112214069333234

`∑[ceil(∑[n/A260158((n+1)²)])]`
-/

namespace A088235.P7796112214069333234
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A260158 ((n + 1) ^ 2) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088235.P7796112214069333234

/-!
# A088236: Total number of digits (in base 2) in all preceding terms in the sequence.

The programs for A088236, the canonical program `A088236.P11683934051006380102` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088236 has offset 0).

The definition of A088236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088236.P11683934051006380102

`a(n-1)+floor(log2(a(n-1)))+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A088236

/-- `a(n-1)+floor(log2(a(n-1)))+1` -/
def P11683934051006380102.Spec : Prop :=
  ∀ n, (P11683934051006380102.a n : ℤ) = A088236 n

theorem P11683934051006380102.correct : P11683934051006380102.Spec := by
  intro n
  simp only [A088236]

end A088236

/-! ## A088236.P17830254439853597289

`A080804(a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A088236.P17830254439853597289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A080804 (a (n - 1)).toNat + 1

end

end A088236.P17830254439853597289

namespace A088236

/-- `A080804(a(n-1))+1` -/
def P17830254439853597289.Spec : Prop :=
  ∀ n, P17830254439853597289.a n = A088236 n

end A088236

/-! ## A088236.P11254144376004986135

`A070939(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A088236.P11254144376004986135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070939 (a (n - 1)).toNat + a (n - 1)

end

end A088236.P11254144376004986135

namespace A088236

/-- `A070939(a(n-1))+a(n-1)` -/
def P11254144376004986135.Spec : Prop :=
  ∀ n, P11254144376004986135.a n = A088236 n

end A088236

/-! ## A088236.P5482613741561346459

`A029837(a(n-1)+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A088236.P5482613741561346459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A029837 (a (n - 1) + 1).toNat + a (n - 1)

end

end A088236.P5482613741561346459

namespace A088236

/-- `A029837(a(n-1)+1)+a(n-1)` -/
def P5482613741561346459.Spec : Prop :=
  ∀ n, P5482613741561346459.a n = A088236 n

end A088236

/-! ## A088236.P14186828979173162800

`∑[A000195(∑[A115449(n+1)])]`
-/

namespace A088236.P14186828979173162800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088236.P14186828979173162800

namespace A088236

/-- `∑[A000195(∑[A115449(n+1)])]` -/
def P14186828979173162800.Spec : Prop :=
  ∀ n, P14186828979173162800.a n = A088236 n

end A088236

/-!
# A088239: Triangle read by rows: T(n,k) is the number of primes not less than n-k and not greater than n+k, 0<=k

The programs for A088239, there is no canonical definition to state claims against.
-/

/-! ## A088239.P9336017982229644307

`A002260(n+1)-A024326(A050680(n+1))`
-/

namespace A088239.P9336017982229644307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A024326 (A050680 (n + 1)).toNat

end

end A088239.P9336017982229644307

/-! ## A088239.P12578583390296336162

`A002260(n+1)-A277007(A336841(A001248(n+1)))`
-/

namespace A088239.P12578583390296336162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A277007 (A336841 (A001248 (n + 1)).toNat).toNat

end

end A088239.P12578583390296336162

/-! ## A088239.P15297625311704182323

`A002260(n+1)-A010060(A057401(n))`
-/

namespace A088239.P15297625311704182323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A010060 (A057401 n).toNat

end

end A088239.P15297625311704182323

/-! ## A088239.P712947905930680771

`A002262(n)+1-A010060(A057401(n))`
-/

namespace A088239.P712947905930680771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A010060 (A057401 n).toNat)

end

end A088239.P712947905930680771

/-! ## A088239.P16810222346280160466

`A329288(n+1)-A288733(A005783(n))`
-/

namespace A088239.P16810222346280160466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329288 (n + 1) - A288733 (A005783 n).toNat

end

end A088239.P16810222346280160466

/-!
# A088240: Values associated with sequence A078511.

The programs for A088240, there is no canonical definition to state claims against.
-/

/-! ## A088240.P6601604946680830229

`A000005(A078511(n+1))`
-/

namespace A088240.P6601604946680830229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078511 (n + 1)).toNat

end

end A088240.P6601604946680830229

/-! ## A088240.P2298195667826307544

`∑{d}[A078511(n+1), gcd(#, A038600(n+1))]`
-/

namespace A088240.P2298195667826307544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A038600 (n + 1))

end

end A088240.P2298195667826307544

/-! ## A088240.P11893376740865030161

`A001414(and(-1, A078511(n+1)))`
-/

namespace A088240.P11893376740865030161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.land (-1) (A078511 (n + 1))).toNat

end

end A088240.P11893376740865030161

/-! ## A088240.P14348218276352206702

`A001414(A078511(2*n+1-n))`
-/

namespace A088240.P14348218276352206702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078511 (2 * n + 1 - n)).toNat

end

end A088240.P14348218276352206702

/-! ## A088240.P1545030599441647340

`∑{d}[A078511(n+1), A000688(A006530(#))]`
-/

namespace A088240.P1545030599441647340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000688 (A006530 d).toNat

end

end A088240.P1545030599441647340

/-! ## A088240.P14706128105692622492

`∑{d}[A078511(n+1), A000688(A020639(#))]`
-/

namespace A088240.P14706128105692622492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000688 (A020639 d).toNat

end

end A088240.P14706128105692622492

/-! ## A088240.P15138442635954799729

`A001414(A078511(n+1))%A305026(n+1)`
-/

namespace A088240.P15138442635954799729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (A078511 (n + 1)).toNat) (A305026 (n + 1))

end

end A088240.P15138442635954799729

/-! ## A088240.P13925452234614451673

`A001414(A078511(n+1)%A305349(n+1))`
-/

namespace A088240.P13925452234614451673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.tmod (A078511 (n + 1)) (A305349 (n + 1))).toNat

end

end A088240.P13925452234614451673

/-! ## A088240.P9245870573602425358

`A001414(∪[A078511(2*(n+1)), A078511(n+1)])`
-/

namespace A088240.P9245870573602425358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078511 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078511 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A088240.P9245870573602425358

/-!
# A088241: Values of y, where x^2 + xy + y^2 = p (x

The programs for A088241, there is no canonical definition to state claims against.
-/

/-! ## A088241.P11983995203511409865

`A205787(p?[3*n+1])`
-/

namespace A088241.P11983995203511409865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088241.P11983995203511409865

/-! ## A088241.P11283220676810809757

`A205787(or(1, p?[3*n-2]))`
-/

namespace A088241.P11283220676810809757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A088241.P11283220676810809757

/-! ## A088241.P4916566471116865869

`A205787(∏{d}[p?[3*n-2], #])`
-/

namespace A088241.P4916566471116865869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A088241.P4916566471116865869

/-! ## A088241.P16262587374890408262

`A205787(∑{p}[p?[3*n-2], #])`
-/

namespace A088241.P16262587374890408262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088241.P16262587374890408262

/-! ## A088241.P5530361715722840134

`A205787(∏{p}[p?[3*n-2], #])`
-/

namespace A088241.P5530361715722840134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088241.P5530361715722840134

/-! ## A088241.P12200129955809041791

`A205787(A002476(n+1))`
-/

namespace A088241.P12200129955809041791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (A002476 (n + 1)).toNat

end

end A088241.P12200129955809041791

/-! ## A088241.P10562298098398943117

`A205787(A007645(n+2))`
-/

namespace A088241.P10562298098398943117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (A007645 (n + 2)).toNat

end

end A088241.P10562298098398943117

/-! ## A088241.P4531184411768043079

`A205787(A045375(n+2))`
-/

namespace A088241.P4531184411768043079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (A045375 (n + 2)).toNat

end

end A088241.P4531184411768043079

/-! ## A088241.P110412690389938336

`A205787(A123365(n+2))`
-/

namespace A088241.P110412690389938336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (A123365 (n + 2)).toNat

end

end A088241.P110412690389938336

/-! ## A088241.P8183435063032777019

`A088296(n+1)+A088242(n+1)`
-/

namespace A088241.P8183435063032777019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088296 (n + 1) + A088242 (n + 1)

end

end A088241.P8183435063032777019

/-!
# A088242: Values of x, where x^2 + xy + y^2 = p (x

The programs for A088242, there is no canonical definition to state claims against.
-/

/-! ## A088242.P13965772614103102203

`A205788(p?[3*n+1])`
-/

namespace A088242.P13965772614103102203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088242.P13965772614103102203

/-! ## A088242.P17395767493374178596

`A205788(or(1, p?[3*n-2]))`
-/

namespace A088242.P17395767493374178596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A088242.P17395767493374178596

/-! ## A088242.P1627492722932837886

`A205788(∏{d}[p?[3*n-2], #])`
-/

namespace A088242.P1627492722932837886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A088242.P1627492722932837886

/-! ## A088242.P2311171208836124491

`A205788(∑{p}[p?[3*n-2], #])`
-/

namespace A088242.P2311171208836124491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088242.P2311171208836124491

/-! ## A088242.P805531307828781291

`A205788(∏{p}[p?[3*n-2], #])`
-/

namespace A088242.P805531307828781291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088242.P805531307828781291

/-! ## A088242.P10596014550843181589

`A205788(A002476(n+1))`
-/

namespace A088242.P10596014550843181589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (A002476 (n + 1)).toNat

end

end A088242.P10596014550843181589

/-! ## A088242.P10936624536579461727

`A205788(A007645(n+2))`
-/

namespace A088242.P10936624536579461727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (A007645 (n + 2)).toNat

end

end A088242.P10936624536579461727

/-! ## A088242.P1832667299997194946

`A205788(A045375(n+2))`
-/

namespace A088242.P1832667299997194946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (A045375 (n + 2)).toNat

end

end A088242.P1832667299997194946

/-! ## A088242.P16051261845652568186

`A205788(A123365(n+2))`
-/

namespace A088242.P16051261845652568186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (A123365 (n + 2)).toNat

end

end A088242.P16051261845652568186

/-! ## A088242.P3750458956131508889

`A205788(A112772(n+1)/2)`
-/

namespace A088242.P3750458956131508889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (SequenceMachineLib.roundAway ((A112772 (n + 1) : ℚ) / 2)).toNat

end

end A088242.P3750458956131508889

/-!
# A088243: Values of x + y, where x^2 + xy + y^2=p (x

The programs for A088243, there is no canonical definition to state claims against.
-/

/-! ## A088243.P8147157331597460299

`A088242(n+1)+A088241(n+1)`
-/

namespace A088243.P8147157331597460299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088242 (n + 1) + A088241 (n + 1)

end

end A088243.P8147157331597460299

/-! ## A088243.P1372415539393638298

`A088296(n+1)+2*A088242(n+1)`
-/

namespace A088243.P1372415539393638298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088296 (n + 1) + 2 * A088242 (n + 1)

end

end A088243.P1372415539393638298

/-! ## A088243.P10484996504406422178

`2*A088241(n+1)-A088296(n+1)`
-/

namespace A088243.P10484996504406422178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088241 (n + 1) - A088296 (n + 1)

end

end A088243.P10484996504406422178

/-! ## A088243.P8889198883044919946

`A205787(p?[3*n+1])+A088242(n+1)`
-/

namespace A088243.P8889198883044919946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A088242 (n + 1)

end

end A088243.P8889198883044919946

/-! ## A088243.P334711642561466734

`A205788(p?[3*n+1])+A088241(n+1)`
-/

namespace A088243.P334711642561466734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A088241 (n + 1)

end

end A088243.P334711642561466734

/-! ## A088243.P9481602258469545882

`A212285(p?[2*n+n+1])-A205788(p?[3*n+1])`
-/

namespace A088243.P9481602258469545882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - A205788 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A088243.P9481602258469545882

/-! ## A088243.P511832867139789142

`A212285(p?[A016777(n)])-A088242(n+1)`
-/

namespace A088243.P511832867139789142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A088242 (n + 1)

end

end A088243.P511832867139789142

/-! ## A088243.P648469126291832834

`A212286(p?[A016777(n)])-A088242(n+1)`
-/

namespace A088243.P648469126291832834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A088242 (n + 1)

end

end A088243.P648469126291832834

/-! ## A088243.P8986711336937262483

`A212285(p?[A016921(n)])-A088242(n+1)`
-/

namespace A088243.P8986711336937262483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A088242 (n + 1)

end

end A088243.P8986711336937262483

/-! ## A088243.P15387192727085637893

`A088296(n+1)+A004277(A088242(n+1))`
-/

namespace A088243.P15387192727085637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088296 (n + 1) + A004277 (A088242 (n + 1)).toNat

end

end A088243.P15387192727085637893

/-!
# A088244: Number of 3-smooth divisors of n!.

The programs for A088244, the canonical program `A088244.P13253093722585621890` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088244 has offset 0).

The definition of A088244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088244.P13253093722585621890

`(A011371(n)+1)*(A054861(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088244

/-- `(A011371(n)+1)*(A054861(n)+1)` -/
def P13253093722585621890.Spec : Prop :=
  ∀ n, P13253093722585621890.a n = A088244 n

theorem P13253093722585621890.correct : P13253093722585621890.Spec := by
  intro n
  simp only [A088244]

end A088244

/-! ## A088244.P16269685063482553350

`A000005(A060818(n))*A000005(A060828(n))`
-/

namespace A088244.P16269685063482553350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060818 n).toNat * A000005 (A060828 n).toNat

end

end A088244.P16269685063482553350

namespace A088244

/-- `A000005(A060818(n))*A000005(A060828(n))` -/
def P16269685063482553350.Spec : Prop :=
  ∀ n, P16269685063482553350.a n = A088244 n

end A088244

/-! ## A088244.P17231413392914643615

`∏{e}[gcd(12^n, n!), #+1]`
-/

namespace A088244.P17231413392914643615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (12 ^ n) (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A088244.P17231413392914643615

namespace A088244

/-- `∏{e}[gcd(12^n, n!), #+1]` -/
def P17231413392914643615.Spec : Prop :=
  ∀ n, (P17231413392914643615.a n : ℤ) = A088244 n

end A088244

/-! ## A088244.P4199109828557626329

`∏{e}[gcd(6^n, A000142(n)), #+1]`
-/

namespace A088244.P4199109828557626329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 ^ n : ℤ) (A000142 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A088244.P4199109828557626329

namespace A088244

/-- `∏{e}[gcd(6^n, A000142(n)), #+1]` -/
def P4199109828557626329.Spec : Prop :=
  ∀ n, (P4199109828557626329.a n : ℤ) = A088244 n

end A088244

/-! ## A088244.P8143545874259716286

`∏{e}[or(-n, A051176(n))*a(n-1), #+1]` with `a(0)=1`
-/

namespace A088244.P8143545874259716286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (-(n : ℤ)) (A051176 n) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A088244.P8143545874259716286

namespace A088244

/-- `∏{e}[or(-n, A051176(n))*a(n-1), #+1]` -/
def P8143545874259716286.Spec : Prop :=
  ∀ n, (P8143545874259716286.a n : ℤ) = A088244 n

end A088244

/-!
# A088247: Orders of proper semifields.

The programs for A088247, there is no canonical definition to state claims against.
-/

/-! ## A088247.P4682951039720260160

`∪[A088248(n+1), A246550(n+1)]`
-/

namespace A088247.P4682951039720260160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P4682951039720260160

/-! ## A088247.P8989998218486408628

`∪[A246550(n+1), A030078(n+2)]`
-/

namespace A088247.P8989998218486408628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P8989998218486408628

/-! ## A088247.P6869799572645900857

`∪[A246550(n+1), A056824(n+2)]`
-/

namespace A088247.P6869799572645900857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P6869799572645900857

/-! ## A088247.P15245289529797823905

`A246549(n+2)`
-/

namespace A088247.P15245289529797823905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 2)

end

end A088247.P15245289529797823905

/-! ## A088247.P5336751743876170499

`record[A246549(A028242(A100637(n)))]`
-/

namespace A088247.P5336751743876170499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (A028242 (A100637 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088247.P5336751743876170499

/-! ## A088247.P17520497061003243393

`record[A246549(A100637(n)-A000194(n))]`
-/

namespace A088247.P17520497061003243393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (A100637 n - A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088247.P17520497061003243393

/-! ## A088247.P1476984596215941410

`record[A246549(2-(A110532(n)-n))]`
-/

namespace A088247.P1476984596215941410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (2 - (A110532 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088247.P1476984596215941410

/-! ## A088247.P10432122885759693850

`∩[A025475(n+2), A377847(n+2)]`
-/

namespace A088247.P10432122885759693850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P10432122885759693850

/-! ## A088247.P14927159001242648341

`∩[A036966(n+2), A377847(n+2)]`
-/

namespace A088247.P14927159001242648341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P14927159001242648341

/-! ## A088247.P12346620659603436801

`∩[A072777(n+2), A377847(n+2)]`
-/

namespace A088247.P12346620659603436801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P12346620659603436801

/-! ## A088247.P2658586081059020519

`∩[A073540(n+2), A377847(n+2)]`
-/

namespace A088247.P2658586081059020519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P2658586081059020519

/-! ## A088247.P971488936528107338

`∩[A076292(n+2), A377847(n+2)]`
-/

namespace A088247.P971488936528107338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P971488936528107338

/-! ## A088247.P15272502484239423842

`∩[A076467(n+2), A377847(n+2)]`
-/

namespace A088247.P15272502484239423842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P15272502484239423842

/-! ## A088247.P1498468326932580909

`∩[A025475(n+1), A320966(n+2)]`
-/

namespace A088247.P1498468326932580909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P1498468326932580909

/-! ## A088247.P812896670519964094

`∩[A025475(n+1), A354561(n+2)]`
-/

namespace A088247.P812896670519964094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P812896670519964094

/-! ## A088247.P8320388497046197810

`∩[A134612(n+1), A320966(n+2)]`
-/

namespace A088247.P8320388497046197810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088247.P8320388497046197810

/-!
# A088248: Orders of twisted fields.

The programs for A088248, there is no canonical definition to state claims against.
-/

/-! ## A088248.P7776903738467096592

`filter[A088247(n+2), A364693(#)]`
-/

namespace A088248.P7776903738467096592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A088248.P7776903738467096592

/-! ## A088248.P11057234761670513958

`filter[A246549(n+3), A364693(#)]`
-/

namespace A088248.P11057234761670513958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A088248.P11057234761670513958

/-! ## A088248.P7010173847902531242

`A088247(lt[A088249(n+4), A088277(2*n+5)])`
-/

namespace A088248.P7010173847902531242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088249 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088277 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088248.P7010173847902531242

/-!
# A088249: Smallest palindromic prime beginning with the n-th prime, or 0 if no such prime exists.

The programs for A088249, there is no canonical definition to state claims against.
-/

/-! ## A088249.P3163135211675381693

`A109864(A390240(n))`
-/

namespace A088249.P3163135211675381693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A390240 n).toNat

end

end A088249.P3163135211675381693

/-! ## A088249.P15008542145537385457

`A109864(Δ[A007504(n)])`
-/

namespace A088249.P15008542145537385457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (f1 (n + 1) - f1 n).toNat

end

end A088249.P15008542145537385457

/-! ## A088249.P7186666258731235406

`A109864(p?[A215366(n)])`
-/

namespace A088249.P7186666258731235406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088249.P7186666258731235406

/-! ## A088249.P11004468633571003642

`A109864(A000040(n+1))`
-/

namespace A088249.P11004468633571003642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A000040 (n + 1)).toNat

end

end A088249.P11004468633571003642

/-! ## A088249.P12436362447096552982

`A109864(A030291(n+1))`
-/

namespace A088249.P12436362447096552982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A030291 (n + 1)).toNat

end

end A088249.P12436362447096552982

/-!
# A088250: a(n) is the smallest number k such that r*k + 1 is prime for all r = 1 to n.

The programs for A088250, there is no canonical definition to state claims against.
-/

/-! ## A088250.P10461268317100268340

`gcd(2, A088651(n+1))*A071576(n+1)`
-/

namespace A088250.P10461268317100268340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A088651 (n + 1)) : ℤ) * A071576 (n + 1)

end

end A088250.P10461268317100268340

/-! ## A088250.P2773033665082616970

`A020639(A242882(n))*A071576(n+1)`
-/

namespace A088250.P2773033665082616970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242882 n).toNat * A071576 (n + 1)

end

end A088250.P2773033665082616970

/-! ## A088250.P4627134849201897155

`A000034(A088652(n+1))*A071576(n+1)`
-/

namespace A088250.P4627134849201897155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A088652 (n + 1)).toNat * A071576 (n + 1)

end

end A088250.P4627134849201897155

/-! ## A088250.P10673007501432518285

`A000034(A095303(n+1))*A071576(n+1)`
-/

namespace A088250.P10673007501432518285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A095303 (n + 1)).toNat * A071576 (n + 1)

end

end A088250.P10673007501432518285

/-! ## A088250.P9072395464994093897

`A020639(A156037(n+1))*A071576(n+1)`
-/

namespace A088250.P9072395464994093897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156037 (n + 1)).toNat * A071576 (n + 1)

end

end A088250.P9072395464994093897

/-!
# A088251: A088250(n) + 1.

The programs for A088251, there is no canonical definition to state claims against.
-/

/-! ## A088251.P2983375510170401361

`A088250(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088251.P2983375510170401361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088250 (n + 1) + 1

end

end A088251.P2983375510170401361

/-! ## A088251.P13594650313963866633

`ceil(A088252(n+1)/(n+1))`
-/

namespace A088251.P13594650313963866633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088252 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A088251.P13594650313963866633

/-! ## A088251.P16116576694908198397

`xor(2*A071576(n+1), floor(atan(n)))`
-/

namespace A088251.P16116576694908198397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A071576 (n + 1)) ⌊Real.arctan (n : ℝ)⌋

end

end A088251.P16116576694908198397

/-! ## A088251.P10859642298977933394

`gcd(2, A088651(n+1))*A071576(n+1)+1`
-/

namespace A088251.P10859642298977933394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A088651 (n + 1)) : ℤ) * A071576 (n + 1) + 1

end

end A088251.P10859642298977933394

/-! ## A088251.P6534276557095677404

`A071576(n+1)*A075019((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1`
-/

namespace A088251.P6534276557095677404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071576 (n + 1) * A075019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + 1

end

end A088251.P6534276557095677404

/-!
# A088252: n-th row of the following triangle contains smallest set of n primes which form n successive terms of an arithmetic progression from the 2nd to (n+1)th term with the first term 1. Sequence contains the leading diagonal.

The programs for A088252, there is no canonical definition to state claims against.
-/

/-! ## A088252.P2858275303881655818

`(n+1)*A088250(n+1)+1`
-/

namespace A088252.P2858275303881655818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088250 (n + 1) + 1

end

end A088252.P2858275303881655818

/-! ## A088252.P15838047483001510624

`(n+1)*A088251(n+1)-n`
-/

namespace A088252.P15838047483001510624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088251 (n + 1) - (n : ℤ)

end

end A088252.P15838047483001510624

/-! ## A088252.P4297957502588798004

`(n+1)*gcd(2, A088651(n+1))*A071576(n+1)+1`
-/

namespace A088252.P4297957502588798004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Int.gcd 2 (A088651 (n + 1)) : ℤ) * A071576 (n + 1)) + 1

end

end A088252.P4297957502588798004

/-! ## A088252.P8206814663337434233

`(n+1)*A020639(A156037(n+1))*A071576(n+1)+1`
-/

namespace A088252.P8206814663337434233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020639 (A156037 (n + 1)).toNat * A071576 (n + 1)) + 1

end

end A088252.P8206814663337434233

/-! ## A088252.P11203522810688654972

`(n+1)*floor(A088251(n+1)/2)*A014963(A085543(n))+1`
-/

namespace A088252.P11203522810688654972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌊(A088251 (n + 1) : ℚ) / 2⌋ * A014963 (A085543 n).toNat) + 1

end

end A088252.P11203522810688654972

/-!
# A088254: Primes p with property that if p = prime(k), if the product of all composite numbers between prime(k) and prime(k+1) is one less than a prime.

The programs for A088254, there is no canonical definition to state claims against.
-/

/-! ## A088254.P11693868066925419852

`p?[lt[A144961(n+4), A145015(n+1)]]`
-/

namespace A088254.P11693868066925419852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144961 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145015 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088254.P11693868066925419852

/-! ## A088254.P11016803537010210349

`eq[A003415(n), A305565(A005451(n+2))]`
-/

namespace A088254.P11016803537010210349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305565 (A005451 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088254.P11016803537010210349

/-!
# A088257: Primorials P which have at least one prime neighbor; i.e., P+1 or P-1 or both are primes.

The programs for A088257, there is no canonical definition to state claims against.
-/

/-! ## A088257.P18394359369413400100

`A034386(record[A187596(n)])`
-/

namespace A088257.P18394359369413400100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088257.P18394359369413400100

/-! ## A088257.P16273543878169044764

`record[A034386(A189006(n))]`
-/

namespace A088257.P16273543878169044764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A189006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088257.P16273543878169044764

/-! ## A088257.P15359684636731932285

`A002110(A088411(n+1))`
-/

namespace A088257.P15359684636731932285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A088411 (n + 1)).toNat

end

end A088257.P15359684636731932285

/-! ## A088257.P4346734746483087219

`record[A104588(A189006(n)²)]`
-/

namespace A088257.P4346734746483087219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (A189006 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088257.P4346734746483087219

/-! ## A088257.P11442717768126103837

`record[lcm(A002110(n), A333058(n))]`
-/

namespace A088257.P11442717768126103837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A333058 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088257.P11442717768126103837

/-!
# A088258: Factorials F which have at least one prime neighbor, i.e., F+1 or F-1 or both are primes.

The programs for A088258, there is no canonical definition to state claims against.
-/

/-! ## A088258.P618860578713979310

`A088412(n+1)!`
-/

namespace A088258.P618860578713979310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088412 (n + 1)).toNat

end

end A088258.P618860578713979310

/-! ## A088258.P13012857438989870712

`lt[A090975(n), n]!`
-/

namespace A088258.P13012857438989870712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090975 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A088258.P13012857438989870712

/-! ## A088258.P12791839288517953062

`lcm(A007318(n), A000142(A088412(n+1)))`
-/

namespace A088258.P12791839288517953062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A000142 (A088412 (n + 1)).toNat)

end

end A088258.P12791839288517953062

/-! ## A088258.P599617056198706934

`A000142(A088412(n+1)%A000165(n)²)`
-/

namespace A088258.P599617056198706934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A088412 (n + 1)) (A000165 n ^ 2)).toNat

end

end A088258.P599617056198706934

/-! ## A088258.P10079167825018252441

`record[A302291(∑[ceil(3^(n-1))])!]`
-/

namespace A088258.P10079167825018252441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A302291 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088258.P10079167825018252441

/-!
# A088259: Perfect powers which have at least one prime neighbor.

The programs for A088259, there is no canonical definition to state claims against.
-/

/-! ## A088259.P5069728729380168338

`A001597(A088413(n+1)+1)`
-/

namespace A088259.P5069728729380168338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A088413 (n + 1) + 1).toNat

end

end A088259.P5069728729380168338

/-! ## A088259.P14979660724770304901

`abs(A157985(A088413(n+1)+1))`
-/

namespace A088259.P14979660724770304901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (A088413 (n + 1) + 1).toNat|

end

end A088259.P14979660724770304901

/-! ## A088259.P321862961130069151

`∩[A001597(n+1), A045718(n)]`
-/

namespace A088259.P321862961130069151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088259.P321862961130069151

/-! ## A088259.P13348024427784543550

`∩[A210939(n+1), A188915(n)]`
-/

namespace A088259.P13348024427784543550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088259.P13348024427784543550

/-! ## A088259.P5106916121217251430

`∩[A001597(n+1), A210939(n+1)]`
-/

namespace A088259.P5106916121217251430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088259.P5106916121217251430

/-!
# A088260: Primorials which yield palindromes if the trailing zeros are deleted.

The programs for A088260, there is no canonical definition to state claims against.
-/

/-! ## A088260.P337284196815110725

`A002110(lt[xor(10, n), 13])`
-/

namespace A088260.P337284196815110725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088260.P337284196815110725

/-!
# A088261: Smallest number prefixed with corresponding term of the sequence of numbers == 1, 3, 7 or 9 (mod 10), i.e., (1, 3, 7, 9, 11, 13, 17, 19, 21, 23, 27, 29, 31, 33, 37, 39, ...) that yields a prime.

The programs for A088261, there is no canonical definition to state claims against.
-/

/-! ## A088261.P9043769772022260963

`A000030(p?[A256480(n)])`
-/

namespace A088261.P9043769772022260963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088261.P9043769772022260963

/-! ## A088261.P2350943576732727357

`A000030(A337834(n+1))`
-/

namespace A088261.P2350943576732727357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A337834 (n + 1)).toNat

end

end A088261.P2350943576732727357

/-! ## A088261.P5191730361550224995

`A000030(A256480(lt[5*n, lcm(10, n)]))`
-/

namespace A088261.P5191730361550224995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)).toNat

end

end A088261.P5191730361550224995

/-! ## A088261.P15073371285461574665

`A000030(A256480(record[lcm(50, n+5)/50]))`
-/

namespace A088261.P15073371285461574665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A088261.P15073371285461574665

/-! ## A088261.P9547797694350720607

`A000030(A256480(or(1, comp[3*n]+n)))`
-/

namespace A088261.P9547797694350720607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n))).toNat

end

end A088261.P9547797694350720607

/-! ## A088261.P16774866805845931910

`A000030(A256480(eq[gcd(10, n)+n, n+1]))`
-/

namespace A088261.P16774866805845931910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A088261.P16774866805845931910

/-! ## A088261.P5361261840688328309

`A000030(A256480(2*round(5*n/4)+1))`
-/

namespace A088261.P5361261840688328309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A256480 (2 * SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4)) + 1).toNat).toNat

end

end A088261.P5361261840688328309

/-! ## A088261.P4126342969571518077

`A040163(A337834(n+1)-A045572(n+1))`
-/

namespace A088261.P4126342969571518077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A337834 (n + 1) - A045572 (n + 1)).toNat

end

end A088261.P4126342969571518077

/-! ## A088261.P17443412189921799189

`A051801(A337834(n+1)-A045572(n+1))`
-/

namespace A088261.P17443412189921799189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A337834 (n + 1) - A045572 (n + 1)).toNat

end

end A088261.P17443412189921799189

/-! ## A088261.P10793308529455824672

`A062329(A337834(n+1)-A045572(n+1))`
-/

namespace A088261.P10793308529455824672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (A337834 (n + 1) - A045572 (n + 1)).toNat

end

end A088261.P10793308529455824672

/-!
# A088263: Diagonal of A088262.

The programs for A088263, there is no canonical definition to state claims against.
-/

/-! ## A088263.P13817266834247798689

`A088262(∑[n+1])`
-/

namespace A088263.P13817266834247798689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088263.P13817266834247798689

/-! ## A088263.P3220579006937806731

`p?[A088262(C(n+1, 2)+n+1)]`
-/

namespace A088263.P3220579006937806731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (Nat.choose (n + 1) 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088263.P3220579006937806731

/-! ## A088263.P680207939567820882

`p?[A088262(A025747(n))]`
-/

namespace A088263.P680207939567820882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (A025747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088263.P680207939567820882

/-! ## A088263.P1271737695756157762

`p?[A088262(∑[A005496(n)])]`
-/

namespace A088263.P1271737695756157762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088263.P1271737695756157762

/-! ## A088263.P3262189782671651904

`p?[A088262(∑[A008728(n)])]`
-/

namespace A088263.P3262189782671651904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088263.P3262189782671651904

/-!
# A088265: Numbers of the form 10^k + 1, 3, 7, or 9 for k>=1.

The programs for A088265, there is no canonical definition to state claims against.
-/

/-! ## A088265.P11026487891790071802

`record[A078267(n+1)+A054055(n+1)]`
-/

namespace A088265.P11026487891790071802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078267 (n + 1) + A054055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088265.P11026487891790071802

/-!
# A088266: Smallest number that yields a prime when concatenated with A088265(k) for all k <= n.

The programs for A088266, there is no canonical definition to state claims against.
-/

/-! ## A088266.P18091940896243454922

`A007954(A179336((n+1)^n))`
-/

namespace A088266.P18091940896243454922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A179336 ((n + 1) ^ n)).toNat

end

end A088266.P18091940896243454922

/-!
# A088268: Palindromes in A007530.

The programs for A088268, there is no canonical definition to state claims against.
-/

/-! ## A088268.P12801287151783368559

`∩[A002385(n+1), A007530(n+1)]`
-/

namespace A088268.P12801287151783368559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088268.P12801287151783368559

/-! ## A088268.P11756849345572278434

`∩[A007530(n+1), A062687(n+1)]`
-/

namespace A088268.P11756849345572278434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088268.P11756849345572278434

/-! ## A088268.P17015928735000944592

`∩[A007530(n+1), A324989(n+1)]`
-/

namespace A088268.P17015928735000944592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088268.P17015928735000944592

/-!
# A088269: Palindromic primes that yield a prime when sandwiched between two 1's. (Prefixing and suffixing a 1 on both sides yields another palindromic prime.)

The programs for A088269, there is no canonical definition to state claims against.
-/

/-! ## A088269.P13195536755163757844

`∩[A002113(n+1), A069687(n+1)]`
-/

namespace A088269.P13195536755163757844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088269.P13195536755163757844

/-! ## A088269.P15599927294471061339

`∩[A002385(n+1), A069687(n+1)]`
-/

namespace A088269.P15599927294471061339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088269.P15599927294471061339

/-! ## A088269.P2779201010661642410

`∩[A029950(n+1), A069687(n+1)]`
-/

namespace A088269.P2779201010661642410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088269.P2779201010661642410

/-! ## A088269.P9847962659006760576

`∩[A056525(n+1), A069687(n+1)]`
-/

namespace A088269.P9847962659006760576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088269.P9847962659006760576

/-! ## A088269.P2646938475983012656

`∩[A069687(n+1), A083137(n+1)]`
-/

namespace A088269.P2646938475983012656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088269.P2646938475983012656

/-!
# A088270: Palindromic primes that yield a prime when sandwiched between two 3's. (Prefixing and suffixing a -three' on both sides yields another pal prime).

The programs for A088270, there is no canonical definition to state claims against.
-/

/-! ## A088270.P16595517408092867974

`∩[A002113(n+1), A069688(n+1)]`
-/

namespace A088270.P16595517408092867974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088270.P16595517408092867974

/-! ## A088270.P7745461526638910674

`∩[A002385(n+1), A069688(n+1)]`
-/

namespace A088270.P7745461526638910674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088270.P7745461526638910674

/-! ## A088270.P1836012281791357523

`∩[A029950(n+1), A069688(n+1)]`
-/

namespace A088270.P1836012281791357523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088270.P1836012281791357523

/-! ## A088270.P894837740757759237

`∩[A033620(n+1), A069688(n+1)]`
-/

namespace A088270.P894837740757759237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088270.P894837740757759237

/-! ## A088270.P3279333597381252209

`∩[A056525(n+1), A069688(n+1)]`
-/

namespace A088270.P3279333597381252209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088270.P3279333597381252209

/-!
# A088271: Palindromic primes that yield a prime when sandwiched between two 7's. (Prefixing and suffixing a 'seven' on both sides yields another pal prime).

The programs for A088271, there is no canonical definition to state claims against.
-/

/-! ## A088271.P7203804713742817184

`∩[A002113(n+1), A069689(n+1)]`
-/

namespace A088271.P7203804713742817184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088271.P7203804713742817184

/-! ## A088271.P17285683097146055062

`∩[A002385(n+1), A069689(n+1)]`
-/

namespace A088271.P17285683097146055062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088271.P17285683097146055062

/-! ## A088271.P3490420813580464188

`∩[A056525(n+1), A069689(n+1)]`
-/

namespace A088271.P3490420813580464188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088271.P3490420813580464188

/-! ## A088271.P17151969607019869216

`∩[A069689(n+1), A083137(n+1)]`
-/

namespace A088271.P17151969607019869216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088271.P17151969607019869216

/-! ## A088271.P13953543598468824262

`record[A055483(A069689(n+1))]`
-/

namespace A088271.P13953543598468824262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A069689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088271.P13953543598468824262

/-!
# A088272: Palindromic primes that yield a prime when sandwiched between two 9's.

The programs for A088272, there is no canonical definition to state claims against.
-/

/-! ## A088272.P15816059436221534774

`∩[A002113(n+1), A069690(n+1)]`
-/

namespace A088272.P15816059436221534774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088272.P15816059436221534774

/-! ## A088272.P9505352959684611700

`∩[A002385(n+1), A069690(n+1)]`
-/

namespace A088272.P9505352959684611700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088272.P9505352959684611700

/-! ## A088272.P14882522229306994104

`∩[A056525(n+1), A069690(n+1)]`
-/

namespace A088272.P14882522229306994104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088272.P14882522229306994104

/-! ## A088272.P17782077986263677057

`p?[A055483(A069690(n+1))]`
-/

namespace A088272.P17782077986263677057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A069690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088272.P17782077986263677057

/-! ## A088272.P9375415258708681237

`∩[A002385(n+1), A032685(n+1)]`
-/

namespace A088272.P9375415258708681237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088272.P9375415258708681237

/-!
# A088274: Numbers k such that 10^k + 7 is prime.

The programs for A088274, there is no canonical definition to state claims against.
-/

/-! ## A088274.P7037413515651750598

`A102007(n+1)+1`
-/

namespace A088274.P7037413515651750598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102007 (n + 1) + 1

end

end A088274.P7037413515651750598

/-! ## A088274.P13631544369409014189

`eq[A031182(n), A260880(n)]+1`
-/

namespace A088274.P13631544369409014189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088274.P13631544369409014189

/-! ## A088274.P257481231508703955

`eq[A000007(n), A029320(A033873(n))]`
-/

namespace A088274.P257481231508703955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (A033873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088274.P257481231508703955

/-! ## A088274.P7996520771476987334

`eq[A000038(n), A029285(A033873(n))]`
-/

namespace A088274.P7996520771476987334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029285 (A033873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088274.P7996520771476987334

/-! ## A088274.P4372470776787536925

`eq[A031225(A033873(n)), A057427(n)]`
-/

namespace A088274.P4372470776787536925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031225 (A033873 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088274.P4372470776787536925

/-!
# A088275: Numbers k such that 10^k + 9 is prime.

The programs for A088275, there is no canonical definition to state claims against.
-/

/-! ## A088275.P5375001306047221892

`A102008(n+1)+1`
-/

namespace A088275.P5375001306047221892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102008 (n + 1) + 1

end

end A088275.P5375001306047221892

/-!
# A088276: Smallest k such that 10^k + r is a prime ending (least significant digits) in r where r is the n-th odd number not divisible by 5. 0 if no such number exists.

The programs for A088276, there is no canonical definition to state claims against.
-/

/-! ## A088276.P15724855201387652214

`A029793(A009441(n+1))%A241148(2*(n+2))`
-/

namespace A088276.P15724855201387652214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029793 (A009441 (n + 1)).toNat) (A241148 (2 * (n + 2)))

end

end A088276.P15724855201387652214

/-! ## A088276.P13574888478446518771

`A105248(3*n+2)%A105257(A105267(2*(n+2)))`
-/

namespace A088276.P13574888478446518771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105248 (3 * n + 2)) (A105257 (A105267 (2 * (n + 2))).toNat)

end

end A088276.P13574888478446518771

/-!
# A088277: Let f(n) be the n-th palindrome in A089743. Then a(n) is the smallest palindromic prime that begins with f(n).

The programs for A088277, there is no canonical definition to state claims against.
-/

/-! ## A088277.P11696271082029438476

`p?[A109864(A032573(n+1))]`
-/

namespace A088277.P11696271082029438476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A032573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088277.P11696271082029438476

/-! ## A088277.P12459335211444019355

`p?[A109864(A109872(n+1))]`
-/

namespace A088277.P12459335211444019355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A109872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088277.P12459335211444019355

/-! ## A088277.P8978035513940489350

`p?[A109864(A110751(n+1))]`
-/

namespace A088277.P8978035513940489350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109864 (A110751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088277.P8978035513940489350

/-! ## A088277.P11776484203081592193

`p?[A109842(n+1)*A109864(n+1)]`
-/

namespace A088277.P11776484203081592193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109842 (n + 1) * A109864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088277.P11776484203081592193

/-!
# A088279: Smallest n-digit palindrome beginning with n.

The programs for A088279, there is no canonical definition to state claims against.
-/

/-! ## A088279.P5664455853281186444

`(n+1)/10^val(n+1, 10)*C(or(1, 10^n), ∑{digits}[n, 10^#])`
-/

namespace A088279.P5664455853281186444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) * (Nat.choose (Nat.lor 1 (10 ^ n)) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℚ)

end

end A088279.P5664455853281186444

/-! ## A088279.P6256212499948312648

`lcm(n+1-A308064(A097514(n)), or(1, 10^n))`
-/

namespace A088279.P6256212499948312648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A308064 (A097514 n).toNat) (Nat.lor 1 (10 ^ n) : ℤ)

end

end A088279.P6256212499948312648

/-! ## A088279.P18038489082787172744

`lcm(and(-2, 10^n)+1, A000030(A124107(n+1)))`
-/

namespace A088279.P18038489082787172744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.land (-2) (10 ^ n : ℤ) + 1) (A000030 (A124107 (n + 1)).toNat)

end

end A088279.P18038489082787172744

/-! ## A088279.P17257540133745480539

`A000533(A002998(n))*A033307(n)`
-/

namespace A088279.P17257540133745480539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A002998 n).toNat * A033307 n

end

end A088279.P17257540133745480539

/-! ## A088279.P1331375874167640412

`A000533(A051022(n))*A004086(n+1)`
-/

namespace A088279.P1331375874167640412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A051022 n).toNat * A004086 (n + 1)

end

end A088279.P1331375874167640412

/-!
# A088281: a(1) = 11; for n > 1, palindromic primes in which a single digit is sandwiched between strings of '1's.

The programs for A088281, there is no canonical definition to state claims against.
-/

/-! ## A088281.P5794680817259746827

`p?[A043036(∑[A102480(n)])]`
-/

namespace A088281.P5794680817259746827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088281.P5794680817259746827

/-! ## A088281.P3340714929896984502

`record[A055483(record[A030665(n+1)])]`
-/

namespace A088281.P3340714929896984502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088281.P3340714929896984502

/-! ## A088281.P17876028164591987375

`∩[A077501(n+1), A088562(n+1)]`
-/

namespace A088281.P17876028164591987375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088281.P17876028164591987375

/-!
# A088282: Palindromic primes in which a single digit is sandwiched between strings of 3's.

The programs for A088282, there is no canonical definition to state claims against.
-/

/-! ## A088282.P11897803318153192733

`∩[A077798(n+1), A105981(n+1)]`
-/

namespace A088282.P11897803318153192733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088282.P11897803318153192733

/-! ## A088282.P14940938120211841356

`∩[A105981(n+1), A261453(n+1)]`
-/

namespace A088282.P14940938120211841356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088282.P14940938120211841356

/-! ## A088282.P14543548307955279461

`∩[A056730(n+1), A105981(n+1)]`
-/

namespace A088282.P14543548307955279461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088282.P14543548307955279461

/-! ## A088282.P13946028079647514644

`∩[A088562(n+1), A105981(n+1)]`
-/

namespace A088282.P13946028079647514644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088282.P13946028079647514644

/-!
# A088283: Palindromic primes in which a single digit is sandwiched between strings of 7's.

The programs for A088283, there is no canonical definition to state claims against.
-/

/-! ## A088283.P3266711280480237596

`∩[A077798(n+1), A105977(n+1)]`
-/

namespace A088283.P3266711280480237596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088283.P3266711280480237596

/-! ## A088283.P6840371529632875049

`∩[A105977(n+1), A261453(n+1)]`
-/

namespace A088283.P6840371529632875049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088283.P6840371529632875049

/-! ## A088283.P16248964302143371064

`∩[A088562(n+1), A105977(n+1)]`
-/

namespace A088283.P16248964302143371064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088283.P16248964302143371064

/-! ## A088283.P5779351095174821026

`∩[A056730(n+1), A105977(n+1)]`
-/

namespace A088283.P5779351095174821026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088283.P5779351095174821026

/-! ## A088283.P3006902362988338140

`∩[A002385(n+1), A105977(n+1)]`
-/

namespace A088283.P3006902362988338140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088283.P3006902362988338140

/-!
# A088285: Palindromes in which the sum of the internal digits = the sum of the external digits.

The programs for A088285, there is no canonical definition to state claims against.
-/

/-! ## A088285.P17434027319622763897

`∩[A002113(n+1), A101317(n+1)]`
-/

namespace A088285.P17434027319622763897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088285.P17434027319622763897

/-! ## A088285.P8943599280870925120

`∩[A032350(n+1), A101317(n+1)]`
-/

namespace A088285.P8943599280870925120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088285.P8943599280870925120

/-! ## A088285.P3783065744630425364

`∩[A062697(n+1), A101317(n+1)]`
-/

namespace A088285.P3783065744630425364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088285.P3783065744630425364

/-! ## A088285.P15728909970980706123

`∩[A068062(n+1), A101317(n+1)]`
-/

namespace A088285.P15728909970980706123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088285.P15728909970980706123

/-! ## A088285.P3396787343022891421

`∩[A078337(n+1), A101317(n+1)]`
-/

namespace A088285.P3396787343022891421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088285.P3396787343022891421

/-!
# A088287: Palindromes divisible by the number formed by their internal digits.

The programs for A088287, there is no canonical definition to state claims against.
-/

/-! ## A088287.P5515236673988740196

`∩[A002113(n+1), A395720(n+1)]`
-/

namespace A088287.P5515236673988740196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088287.P5515236673988740196

/-! ## A088287.P3653380572411103691

`∩[A083158(n+1), A395720(n+1)]`
-/

namespace A088287.P3653380572411103691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088287.P3653380572411103691

/-! ## A088287.P12903097181060232486

`∩[A395720(n+1), A056142(n)]`
-/

namespace A088287.P12903097181060232486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088287.P12903097181060232486

/-! ## A088287.P5294953126180733321

`∩[A201982(n+1), A267085(n+1)]`
-/

namespace A088287.P5294953126180733321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088287.P5294953126180733321

/-!
# A088288: Palindromic primes made of only two digits say a and b such that replacing a with b and vice versa one gets another prime.

The programs for A088288, there is no canonical definition to state claims against.
-/

/-! ## A088288.P18258864137186855996

`∩[A056730(n+1), A083983(n+1)]`
-/

namespace A088288.P18258864137186855996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088288.P18258864137186855996

/-! ## A088288.P3790214455441737917

`∩[A083983(n+1), A088562(n+1)]`
-/

namespace A088288.P3790214455441737917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088288.P3790214455441737917

/-! ## A088288.P12593165126804300779

`∩[A056730(n+1), A108388(n+1)]`
-/

namespace A088288.P12593165126804300779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088288.P12593165126804300779

/-! ## A088288.P8960635065829659578

`∩[A088562(n+1), A108388(n+1)]`
-/

namespace A088288.P8960635065829659578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088288.P8960635065829659578

/-! ## A088288.P2869640589926324779

`∩[A083983(n+1), A159471(n+1)]`
-/

namespace A088288.P2869640589926324779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088288.P2869640589926324779

/-!
# A088289: Triangular numbers in which the sum of the external digits equals the sum of the internal digits.

The programs for A088289, there is no canonical definition to state claims against.
-/

/-! ## A088289.P3182115808409454831

`∩[A101317(n+1), A000217(n)]`
-/

namespace A088289.P3182115808409454831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088289.P3182115808409454831

/-! ## A088289.P13350867415899774902

`∩[A101317(n+1), A000124(n)-1]`
-/

namespace A088289.P13350867415899774902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088289.P13350867415899774902

/-! ## A088289.P12471795102966191476

`∩[2*A000292(n)-A000330(n), A101317(n+1)]`
-/

namespace A088289.P12471795102966191476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088289.P12471795102966191476

/-!
# A088290: Prime numbers in which the sum of the external digits = the sum of the internal digits.

The programs for A088290, there is no canonical definition to state claims against.
-/

/-! ## A088290.P14584029461639068912

`p?[A101317(n+1)]`
-/

namespace A088290.P14584029461639068912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088290.P14584029461639068912

/-! ## A088290.P218655173597082610

`record[p?[A101317(A126759(n))]]`
-/

namespace A088290.P218655173597082610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088290.P218655173597082610

/-! ## A088290.P15668247843166047405

`record[p?[A101317(A133310(n))]]`
-/

namespace A088290.P15668247843166047405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088290.P15668247843166047405

/-! ## A088290.P7536426150900599433

`record[p?[A101317(A291769(n))]]`
-/

namespace A088290.P7536426150900599433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088290.P7536426150900599433

/-! ## A088290.P2698701838947518955

`∩[A000040(n+1), A101317(n+1)]`
-/

namespace A088290.P2698701838947518955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P2698701838947518955

/-! ## A088290.P10403962025699495501

`∩[A004139(n+1), A101317(n+1)]`
-/

namespace A088290.P10403962025699495501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P10403962025699495501

/-! ## A088290.P15947788190590588165

`∩[A006005(n+1), A101317(n+1)]`
-/

namespace A088290.P15947788190590588165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P15947788190590588165

/-! ## A088290.P3667486819280083315

`∩[A008578(n+1), A101317(n+1)]`
-/

namespace A088290.P3667486819280083315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P3667486819280083315

/-! ## A088290.P13456479770190678501

`∩[A038672(n+1), A101317(n+1)]`
-/

namespace A088290.P13456479770190678501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P13456479770190678501

/-! ## A088290.P18050894095273569627

`∩[A045319(n+1), A101317(n+1)]`
-/

namespace A088290.P18050894095273569627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P18050894095273569627

/-! ## A088290.P3476599605520280761

`∩[A045344(n+1), A101317(n+1)]`
-/

namespace A088290.P3476599605520280761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P3476599605520280761

/-! ## A088290.P2294295869988460062

`∩[A046022(n+1), A101317(n+1)]`
-/

namespace A088290.P2294295869988460062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P2294295869988460062

/-! ## A088290.P2255657194801494920

`∩[A049569(n+1), A101317(n+1)]`
-/

namespace A088290.P2255657194801494920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P2255657194801494920

/-! ## A088290.P7585870093074634630

`∩[A051948(n+1), A101317(n+1)]`
-/

namespace A088290.P7585870093074634630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P7585870093074634630

/-! ## A088290.P17651004948510230041

`∩[A053140(n+1), A101317(n+1)]`
-/

namespace A088290.P17651004948510230041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P17651004948510230041

/-! ## A088290.P1974406687542974519

`∩[A053813(n+1), A101317(n+1)]`
-/

namespace A088290.P1974406687542974519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P1974406687542974519

/-! ## A088290.P9383821299112056729

`∩[A059497(n+1), A101317(n+1)]`
-/

namespace A088290.P9383821299112056729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P9383821299112056729

/-! ## A088290.P11615696341191908607

`∩[A065091(n+1), A101317(n+1)]`
-/

namespace A088290.P11615696341191908607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P11615696341191908607

/-! ## A088290.P2722377408323292820

`∩[A065376(n+1), A101317(n+1)]`
-/

namespace A088290.P2722377408323292820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P2722377408323292820

/-! ## A088290.P1945022088574561071

`∩[A065396(n+1), A101317(n+1)]`
-/

namespace A088290.P1945022088574561071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088290.P1945022088574561071

/-!
# A088291: Primes in which the digit string can be partitioned into three parts such that the sum of the first two is equal to the third, and the second part is nonzero.

The programs for A088291, there is no canonical definition to state claims against.
-/

/-! ## A088291.P13272215508931433260

`A067860(n+2)`
-/

namespace A088291.P13272215508931433260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067860 (n + 2)

end

end A088291.P13272215508931433260

/-! ## A088291.P15061137023253834817

`record[A067860(A080513(abs(1-n)))]`
-/

namespace A088291.P15061137023253834817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067860 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088291.P15061137023253834817

/-! ## A088291.P17117066948191131829

`p?[A067860(A080513(A005408(n)))]`
-/

namespace A088291.P17117066948191131829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067860 (A080513 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088291.P17117066948191131829

/-! ## A088291.P3228232773914110711

`p?[A067860(log2(A020707(n)))]`
-/

namespace A088291.P3228232773914110711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067860 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088291.P3228232773914110711

/-! ## A088291.P597102374646472446

`∑{e}[A020707(n), A067860(#)]`
-/

namespace A088291.P597102374646472446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A067860 (Nat.factorization (f1 n).natAbs p)

end

end A088291.P597102374646472446

/-!
# A088296: Values of y - x, where x^2 + xy + y^2=p (x

The programs for A088296, there is no canonical definition to state claims against.
-/

/-! ## A088296.P11438453642873226959

`A205788(3*p?[3*n+1])`
-/

namespace A088296.P11438453642873226959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088296.P11438453642873226959

/-! ## A088296.P8142535502249751564

`A205788(3*or(1, p?[3*n-2]))`
-/

namespace A088296.P8142535502249751564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A088296.P8142535502249751564

/-! ## A088296.P8110315761801636190

`A205788(3*∏{d}[p?[3*n-2], #])`
-/

namespace A088296.P8110315761801636190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * (∏ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A088296.P8110315761801636190

/-! ## A088296.P14096664511741282946

`A205788(3*∑{p}[p?[3*n-2], #])`
-/

namespace A088296.P14096664511741282946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A088296.P14096664511741282946

/-! ## A088296.P14529675441672726717

`A205788(3*∏{p}[p?[3*n-2], #])`
-/

namespace A088296.P14529675441672726717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A088296.P14529675441672726717

/-! ## A088296.P16446314262092250541

`A205788(3*A002476(n+1))`
-/

namespace A088296.P16446314262092250541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * A002476 (n + 1)).toNat

end

end A088296.P16446314262092250541

/-! ## A088296.P11110640251058522771

`A205788(3*A007645(n+2))`
-/

namespace A088296.P11110640251058522771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * A007645 (n + 2)).toNat

end

end A088296.P11110640251058522771

/-! ## A088296.P15878238103722502997

`A205788(3*A045375(n+2))`
-/

namespace A088296.P15878238103722502997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * A045375 (n + 2)).toNat

end

end A088296.P15878238103722502997

/-! ## A088296.P10139667291189394947

`A205788(3*A123365(n+2))`
-/

namespace A088296.P10139667291189394947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (3 * A123365 (n + 2)).toNat

end

end A088296.P10139667291189394947

/-! ## A088296.P14466648207920681606

`A205788(lcm(3, A002476(n+1)))`
-/

namespace A088296.P14466648207920681606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205788 (Int.lcm 3 (A002476 (n + 1)))

end

end A088296.P14466648207920681606

/-!
# A088297: Primes in which no digit is coprime to its neighbors.

The programs for A088297, there is no canonical definition to state claims against.
-/

/-! ## A088297.P2111861989654026088

`p?[∑[∑{e}[n+1, #-1]!^8]]`
-/

namespace A088297.P2111861989654026088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1)).toNat ^ 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088297.P2111861989654026088

/-! ## A088297.P17310987096871715265

`p?[A248776(n+3)+n]`
-/

namespace A088297.P17310987096871715265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248776 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088297.P17310987096871715265

/-!
# A088298: Values of 2x + y, where x^2 + xy + y^2=p (x

The programs for A088298, there is no canonical definition to state claims against.
-/

/-! ## A088298.P672408242939917245

`A212285(p?[3*n+1])`
-/

namespace A088298.P672408242939917245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088298.P672408242939917245

/-! ## A088298.P13934639123525323731

`A212286(p?[3*n+1])`
-/

namespace A088298.P13934639123525323731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088298.P13934639123525323731

/-! ## A088298.P14581811334882108275

`A205787(3*p?[3*n+1])`
-/

namespace A088298.P14581811334882108275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205787 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088298.P14581811334882108275

/-! ## A088298.P5170853144868394127

`A212285(or(1, p?[3*n-2]))`
-/

namespace A088298.P5170853144868394127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A088298.P5170853144868394127

/-! ## A088298.P15133600499305728499

`A212286(or(1, p?[3*n-2]))`
-/

namespace A088298.P15133600499305728499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A088298.P15133600499305728499

/-! ## A088298.P10199555121265881727

`A212285(∏{d}[p?[3*n-2], #])`
-/

namespace A088298.P10199555121265881727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A088298.P10199555121265881727

/-! ## A088298.P9038011616658244442

`A212286(∑{p}[p?[3*n-2], #])`
-/

namespace A088298.P9038011616658244442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088298.P9038011616658244442

/-! ## A088298.P1611599342569479998

`A212286(∏{p}[p?[3*n-2], #])`
-/

namespace A088298.P1611599342569479998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212286 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A088298.P1611599342569479998

/-! ## A088298.P15519600405026757153

`A212285(A002476(n+1))`
-/

namespace A088298.P15519600405026757153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (A002476 (n + 1)).toNat

end

end A088298.P15519600405026757153

/-! ## A088298.P9903211108792239842

`A212285(A007645(n+2))`
-/

namespace A088298.P9903211108792239842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212285 (A007645 (n + 2)).toNat

end

end A088298.P9903211108792239842

/-!
# A088299: Values of x + 2y, where x^2 + xy + y^2=p (x

The programs for A088299, there is no canonical definition to state claims against.
-/

/-! ## A088299.P17278995284617334792

`A088243(n+1)+A088241(n+1)`
-/

namespace A088299.P17278995284617334792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088243 (n + 1) + A088241 (n + 1)

end

end A088299.P17278995284617334792

/-! ## A088299.P12746843688519686587

`A088298(n+1)+A088296(n+1)`
-/

namespace A088299.P12746843688519686587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088298 (n + 1) + A088296 (n + 1)

end

end A088299.P12746843688519686587

/-! ## A088299.P16643160007743841245

`A088242(n+1)+2*A088241(n+1)`
-/

namespace A088299.P16643160007743841245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088242 (n + 1) + 2 * A088241 (n + 1)

end

end A088299.P16643160007743841245

/-! ## A088299.P3338350904703034680

`2*A088243(n+1)-A088242(n+1)`
-/

namespace A088299.P3338350904703034680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088243 (n + 1) - A088242 (n + 1)

end

end A088299.P3338350904703034680

/-! ## A088299.P11825428209904785843

`3*A088241(n+1)-A088296(n+1)`
-/

namespace A088299.P11825428209904785843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088241 (n + 1) - A088296 (n + 1)

end

end A088299.P11825428209904785843

/-! ## A088299.P3203972321570916535

`3*A088243(n+1)-A088298(n+1)`
-/

namespace A088299.P3203972321570916535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088243 (n + 1) - A088298 (n + 1)

end

end A088299.P3203972321570916535

/-! ## A088299.P10026277731714284438

`A088242(n+1)+A005843(A088241(n+1))`
-/

namespace A088299.P10026277731714284438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088242 (n + 1) + A005843 (A088241 (n + 1)).toNat

end

end A088299.P10026277731714284438

/-! ## A088299.P766180608050463446

`A008486(A088241(n+1))-A088296(n+1)`
-/

namespace A088299.P766180608050463446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A088241 (n + 1)).toNat - A088296 (n + 1)

end

end A088299.P766180608050463446

/-! ## A088299.P1846289020900595843

`A008486(A088243(n+1))-A088298(n+1)`
-/

namespace A088299.P1846289020900595843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A088243 (n + 1)).toNat - A088298 (n + 1)

end

end A088299.P1846289020900595843

/-! ## A088299.P6171149378609757798

`A088242(n+1)+A088296(n+1)+A088243(n+1)`
-/

namespace A088299.P6171149378609757798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088242 (n + 1) + (A088296 (n + 1) + A088243 (n + 1))

end

end A088299.P6171149378609757798

