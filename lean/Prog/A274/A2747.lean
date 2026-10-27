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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274701: First differences of A259280.

The programs for A274701, the canonical program `A274701.P11955321872613421849` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274701 has offset 1).

The definition of A274701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274701.P11244773472037410906

`comp[∑[n]+or(1, n)]-n-(2*n+a(n-1)-1)%(2*n)` with `a(0)=1`
-/

namespace A274701.P11244773472037410906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - Int.tmod ((2 * n : ℤ) + (a (n - 1) - 1)) (2 * n : ℤ)

end

end A274701.P11244773472037410906

namespace A274701

/-- `comp[∑[n]+or(1, n)]-n-(2*n+a(n-1)-1)%(2*n)` -/
def P11244773472037410906.Spec : Prop :=
  ∀ n, P11244773472037410906.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P3310104308348053228

`A307707(comp[∑[n]]+1)`
-/

namespace A274701.P3310104308348053228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A274701.P3310104308348053228

namespace A274701

/-- `A307707(comp[∑[n]]+1)` -/
def P3310104308348053228.Spec : Prop :=
  ∀ n, P3310104308348053228.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P4594316950623706923

`A008621(A131925(n))`
-/

namespace A274701.P4594316950623706923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A131925 n).toNat

end

end A274701.P4594316950623706923

namespace A274701

/-- `A008621(A131925(n))` -/
def P4594316950623706923.Spec : Prop :=
  ∀ n, P4594316950623706923.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P11955321872613421849

`A080513(A067731(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274701

/-- `A080513(A067731(n))` -/
def P11955321872613421849.Spec : Prop :=
  ∀ n, P11955321872613421849.a n = A274701 (n + 1)

theorem P11955321872613421849.correct : P11955321872613421849.Spec := by
  intro n
  simp only [A274701, Nat.add_sub_cancel]

end A274701

/-! ## A274701.P2659213327854363196

`A008624(A131925(n)-1)`
-/

namespace A274701.P2659213327854363196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A131925 n - 1).toNat

end

end A274701.P2659213327854363196

namespace A274701

/-- `A008624(A131925(n)-1)` -/
def P2659213327854363196.Spec : Prop :=
  ∀ n, P2659213327854363196.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P9097368186135493590

`A376583(n+1)+A307707(n+1)`
-/

namespace A274701.P9097368186135493590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (n + 1) + A307707 (n + 1)

end

end A274701.P9097368186135493590

namespace A274701

/-- `A376583(n+1)+A307707(n+1)` -/
def P9097368186135493590.Spec : Prop :=
  ∀ n, P9097368186135493590.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P14776181720823392112

`Δ[A259280(n+1)]`
-/

namespace A274701.P14776181720823392112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274701.P14776181720823392112

namespace A274701

/-- `Δ[A259280(n+1)]` -/
def P14776181720823392112.Spec : Prop :=
  ∀ n, P14776181720823392112.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P17356458934768347099

`A259280(n+2)-A259280(n+1)`
-/

namespace A274701.P17356458934768347099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259280 (n + 2) - A259280 (n + 1)

end

end A274701.P17356458934768347099

namespace A274701

/-- `A259280(n+2)-A259280(n+1)` -/
def P17356458934768347099.Spec : Prop :=
  ∀ n, P17356458934768347099.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P9014919784009694276

`A110654(A002262(n+1))+A110654(A193739(n+1))`
-/

namespace A274701.P9014919784009694276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002262 (n + 1)).toNat + A110654 (A193739 (n + 1)).toNat

end

end A274701.P9014919784009694276

namespace A274701

/-- `A110654(A002262(n+1))+A110654(A193739(n+1))` -/
def P9014919784009694276.Spec : Prop :=
  ∀ n, P9014919784009694276.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P13788833866567297860

`A101776(a(n-1)+n)-a(n-1)` with `a(0)=1`
-/

namespace A274701.P13788833866567297860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101776 (a (n - 1) + (n : ℤ)).toNat - a (n - 1)

end

end A274701.P13788833866567297860

namespace A274701

/-- `A101776(a(n-1)+n)-a(n-1)` -/
def P13788833866567297860.Spec : Prop :=
  ∀ n, P13788833866567297860.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P9130013225615889918

`A158946(A134444(n)+n+2)`
-/

namespace A274701.P9130013225615889918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158946 (A134444 n + (n + 2 : ℤ)).toNat

end

end A274701.P9130013225615889918

namespace A274701

/-- `A158946(A134444(n)+n+2)` -/
def P9130013225615889918.Spec : Prop :=
  ∀ n, P9130013225615889918.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P11129844876481997815

`A204164(A199855(n+1)+A168258(n+1))`
-/

namespace A274701.P11129844876481997815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A199855 (n + 1) + A168258 (n + 1)).toNat

end

end A274701.P11129844876481997815

namespace A274701

/-- `A204164(A199855(n+1)+A168258(n+1))` -/
def P11129844876481997815.Spec : Prop :=
  ∀ n, P11129844876481997815.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P12672427571787851693

`A204164(A199855(n+1)+A204164(n+1)-1)`
-/

namespace A274701.P12672427571787851693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A199855 (n + 1) + (A204164 (n + 1) - 1)).toNat

end

end A274701.P12672427571787851693

namespace A274701

/-- `A204164(A199855(n+1)+A204164(n+1)-1)` -/
def P12672427571787851693.Spec : Prop :=
  ∀ n, P12672427571787851693.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P9763933809923379983

`A204164(A204164(n+1)+A199855(n+1))`
-/

namespace A274701.P9763933809923379983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A204164 (n + 1) + A199855 (n + 1)).toNat

end

end A274701.P9763933809923379983

namespace A274701

/-- `A204164(A204164(n+1)+A199855(n+1))` -/
def P9763933809923379983.Spec : Prop :=
  ∀ n, P9763933809923379983.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P13893631652647956504

`A083023(A064801(n+1))`
-/

namespace A274701.P13893631652647956504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A064801 (n + 1)).toNat

end

end A274701.P13893631652647956504

namespace A274701

/-- `A083023(A064801(n+1))` -/
def P13893631652647956504.Spec : Prop :=
  ∀ n, P13893631652647956504.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P8388695583798654298

`A083023(A217575(n+1))`
-/

namespace A274701.P8388695583798654298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A217575 (n + 1)).toNat

end

end A274701.P8388695583798654298

namespace A274701

/-- `A083023(A217575(n+1))` -/
def P8388695583798654298.Spec : Prop :=
  ∀ n, P8388695583798654298.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P12035709265806105251

`A004525(A195437(n))-n`
-/

namespace A274701.P12035709265806105251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A195437 n).toNat - (n : ℤ)

end

end A274701.P12035709265806105251

namespace A274701

/-- `A004525(A195437(n))-n` -/
def P12035709265806105251.Spec : Prop :=
  ∀ n, P12035709265806105251.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P9299850872525575360

`A004525(A014132(n+1)+n)-n`
-/

namespace A274701.P9299850872525575360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A014132 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A274701.P9299850872525575360

namespace A274701

/-- `A004525(A014132(n+1)+n)-n` -/
def P9299850872525575360.Spec : Prop :=
  ∀ n, P9299850872525575360.a n = A274701 (n + 1)

end A274701

/-! ## A274701.P16265109047632372478

`Δ[A008619(∑[A080036(n)-n])]`
-/

namespace A274701.P16265109047632372478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274701.P16265109047632372478

namespace A274701

/-- `Δ[A008619(∑[A080036(n)-n])]` -/
def P16265109047632372478.Spec : Prop :=
  ∀ n, P16265109047632372478.a n = A274701 (n + 1)

end A274701

/-!
# A274703: Exponential generating function 1/M_{3}(z^3) where M_{n}(z) is the n-th Mittag-Leffler function, nonzero coefficients only.

The programs for A274703, there is no canonical definition to state claims against.
-/

/-! ## A274703.P447543234942571666

`A281586(3*n+1)`
-/

namespace A274703.P447543234942571666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281586 (3 * n + 1)

end

end A274703.P447543234942571666

/-! ## A274703.P6192391097501511279

`A281586(A016777(n))+A185036(n)`
-/

namespace A274703.P6192391097501511279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281586 (A016777 n).toNat + A185036 n

end

end A274703.P6192391097501511279

/-! ## A274703.P5825415027158127320

`A155454(n)*A281586(A016777(n))`
-/

namespace A274703.P5825415027158127320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155454 n * A281586 (A016777 n).toNat

end

end A274703.P5825415027158127320

/-! ## A274703.P11880241840945814385

`or(A000007(n), A281586(A016777(n)))`
-/

namespace A274703.P11880241840945814385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A281586 (A016777 n).toNat)

end

end A274703.P11880241840945814385

/-! ## A274703.P14273030691881085059

`abs(A281586(A016777(n)))*A033999(n)`
-/

namespace A274703.P14273030691881085059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281586 (A016777 n).toNat| * A033999 n

end

end A274703.P14273030691881085059

/-!
# A274704: Exponential generating function 1/M_{4}(z^4) where M_{n}(z) is the n-th Mittag-Leffler function, nonzero coefficients only.

The programs for A274704, there is no canonical definition to state claims against.
-/

/-! ## A274704.P8545767093697670300

`A281588(4*n+1)`
-/

namespace A274704.P8545767093697670300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281588 (4 * n + 1)

end

end A274704.P8545767093697670300

/-! ## A274704.P5502507106013110644

`A274705(∑[n+3]+n+3)`
-/

namespace A274704.P5502507106013110644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274705 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A274704.P5502507106013110644

/-!
# A274706: Irregular triangle read by rows. T(n,k) (n >= 0) is a statistic on orbital systems over n sectors: the number of orbitals which have an integral whose absolute value is k.

The programs for A274706, there is no canonical definition to state claims against.
-/

/-! ## A274706.P1376004214819252822

`A056674(xor(8, A011199(n)))`
-/

namespace A274706.P1376004214819252822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (Int.xor 8 (A011199 n)).toNat

end

end A274706.P1376004214819252822

/-! ## A274706.P2105368377158571179

`A260308(floor(sqrt(A214983(n+1))))`
-/

namespace A274706.P2105368377158571179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260308 (Int.sqrt (A214983 (n + 1))).toNat

end

end A274706.P2105368377158571179

/-! ## A274706.P5506061929931706778

`A033762(A191827(n)-A364255(n))`
-/

namespace A274706.P5506061929931706778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A191827 n - A364255 n).toNat

end

end A274706.P5506061929931706778

/-! ## A274706.P10967025192156838589

`A122865(A005181(n)*A139556(n+1))`
-/

namespace A274706.P10967025192156838589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A005181 n * A139556 (n + 1)).toNat

end

end A274706.P10967025192156838589

/-! ## A274706.P16588096656758828743

`A035212(A296245(n)+A007610(3*(n+1)))`
-/

namespace A274706.P16588096656758828743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035212 (A296245 n + A007610 (3 * (n + 1))).toNat

end

end A274706.P16588096656758828743

/-!
# A274707: a(n) = A(n) if n is even else a(n) = A(n)*(n-1)/(n+1) with A(n) = ((n-1)!/ floor((n-1)/2)!^2).

The programs for A274707, the canonical program `A274707.P10103696147558758885` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274707 has offset 1).

The definition of A274707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274707.P15973111627074515066

`ceil(n/2)*A057977(n)`
-/

namespace A274707.P15973111627074515066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A057977 n

end

end A274707.P15973111627074515066

namespace A274707

/-- `ceil(n/2)*A057977(n)` -/
def P15973111627074515066.Spec : Prop :=
  ∀ n, P15973111627074515066.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P10103696147558758885

`A237884(n)+A138364(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274707

/-- `A237884(n)+A138364(n)` -/
def P10103696147558758885.Spec : Prop :=
  ∀ n, P10103696147558758885.a n = A274707 (n + 1)

theorem P10103696147558758885.correct : P10103696147558758885.Spec := by
  intro n
  simp only [A274707, Nat.add_sub_cancel]

end A274707

/-! ## A274707.P14846262045769556966

`A056040(n)-A126120(n)`
-/

namespace A274707.P14846262045769556966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A126120 n

end

end A274707.P14846262045769556966

namespace A274707

/-- `A056040(n)-A126120(n)` -/
def P14846262045769556966.Spec : Prop :=
  ∀ n, P14846262045769556966.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P2602854540953581492

`A057977(n)*A110654(n)`
-/

namespace A274707.P2602854540953581492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A110654 n

end

end A274707.P2602854540953581492

namespace A274707

/-- `A057977(n)*A110654(n)` -/
def P2602854540953581492.Spec : Prop :=
  ∀ n, P2602854540953581492.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P17035595026166016341

`A037952(n)*A152271(n)`
-/

namespace A274707.P17035595026166016341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A152271 n

end

end A274707.P17035595026166016341

namespace A274707

/-- `A037952(n)*A152271(n)` -/
def P17035595026166016341.Spec : Prop :=
  ∀ n, P17035595026166016341.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P8376030219470314740

`abs(A001057(n)*A057977(n))`
-/

namespace A274707.P8376030219470314740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n * A057977 n|

end

end A274707.P8376030219470314740

namespace A274707

/-- `abs(A001057(n)*A057977(n))` -/
def P8376030219470314740.Spec : Prop :=
  ∀ n, P8376030219470314740.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P9710738655296982755

`A057977(n)*A123108(n+1)`
-/

namespace A274707.P9710738655296982755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A123108 (n + 1)

end

end A274707.P9710738655296982755

namespace A274707

/-- `A057977(n)*A123108(n+1)` -/
def P9710738655296982755.Spec : Prop :=
  ∀ n, P9710738655296982755.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P15218456609493721793

`A037952(n)*A057979(n+2)`
-/

namespace A274707.P15218456609493721793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A057979 (n + 2)

end

end A274707.P15218456609493721793

namespace A274707

/-- `A037952(n)*A057979(n+2)` -/
def P15218456609493721793.Spec : Prop :=
  ∀ n, P15218456609493721793.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P13677303221814121040

`lcm(A037952(n), A046212(n+1))`
-/

namespace A274707.P13677303221814121040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037952 n) (A046212 (n + 1))

end

end A274707.P13677303221814121040

namespace A274707

/-- `lcm(A037952(n), A046212(n+1))` -/
def P13677303221814121040.Spec : Prop :=
  ∀ n, (P13677303221814121040.a n : ℤ) = A274707 (n + 1)

end A274707

/-! ## A274707.P3182786512795679543

`A275329(n)-(A126120(n)+A057977(n))`
-/

namespace A274707.P3182786512795679543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 n - (A126120 n + A057977 n)

end

end A274707.P3182786512795679543

namespace A274707

/-- `A275329(n)-(A126120(n)+A057977(n))` -/
def P3182786512795679543.Spec : Prop :=
  ∀ n, P3182786512795679543.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P13495538719226866057

`A008619(n+1)*A057977(n)-A057977(n)`
-/

namespace A274707.P13495538719226866057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A057977 n - A057977 n

end

end A274707.P13495538719226866057

namespace A274707

/-- `A008619(n+1)*A057977(n)-A057977(n)` -/
def P13495538719226866057.Spec : Prop :=
  ∀ n, P13495538719226866057.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P3903140815530213050

`(A001405(n+1)-A001405(n))*A152271(n)`
-/

namespace A274707.P3903140815530213050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) - A001405 n) * A152271 n

end

end A274707.P3903140815530213050

namespace A274707

/-- `(A001405(n+1)-A001405(n))*A152271(n)` -/
def P3903140815530213050.Spec : Prop :=
  ∀ n, P3903140815530213050.a n = A274707 (n + 1)

end A274707

/-! ## A274707.P4745368062090676105

`A056040(n)/A110654(n+1)*A110654(n)`
-/

namespace A274707.P4745368062090676105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A110654 (n + 1) : ℚ) * (A110654 n : ℚ)

end

end A274707.P4745368062090676105

namespace A274707

/-- `A056040(n)/A110654(n+1)*A110654(n)` -/
def P4745368062090676105.Spec : Prop :=
  ∀ n, P4745368062090676105.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P5531172787857535629

`A057979(n+1)/A152271(n+1)*A056040(n)`
-/

namespace A274707.P5531172787857535629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057979 (n + 1) : ℚ) / (A152271 (n + 1) : ℚ) * (A056040 n : ℚ)

end

end A274707.P5531172787857535629

namespace A274707

/-- `A057979(n+1)/A152271(n+1)*A056040(n)` -/
def P5531172787857535629.Spec : Prop :=
  ∀ n, P5531172787857535629.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P8785197213308173818

`A100071(n)/gcd(n+2, ∑[(n+1)%2])`
-/

namespace A274707.P8785197213308173818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 n : ℚ) / (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274707.P8785197213308173818

namespace A274707

/-- `A100071(n)/gcd(n+2, ∑[(n+1)%2])` -/
def P8785197213308173818.Spec : Prop :=
  ∀ n, P8785197213308173818.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P11876028105443845333

`A100071(n)/A158416(n)`
-/

namespace A274707.P11876028105443845333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 n : ℚ) / (A158416 n : ℚ)

end

end A274707.P11876028105443845333

namespace A274707

/-- `A100071(n)/A158416(n)` -/
def P11876028105443845333.Spec : Prop :=
  ∀ n, P11876028105443845333.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P734917420081660648

`A100071(n)/A152271(n+1)`
-/

namespace A274707.P734917420081660648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 n : ℚ) / (A152271 (n + 1) : ℚ)

end

end A274707.P734917420081660648

namespace A274707

/-- `A100071(n)/A152271(n+1)` -/
def P734917420081660648.Spec : Prop :=
  ∀ n, P734917420081660648.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P4375517389141006101

`A057977(n)/A001405(n)*A100071(n)`
-/

namespace A274707.P4375517389141006101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057977 n : ℚ) / (A001405 n : ℚ) * (A100071 n : ℚ)

end

end A274707.P4375517389141006101

namespace A274707

/-- `A057977(n)/A001405(n)*A100071(n)` -/
def P4375517389141006101.Spec : Prop :=
  ∀ n, P4375517389141006101.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P6832034162777988644

`A001405(n+1)/A056040(n+1)*A100071(n)`
-/

namespace A274707.P6832034162777988644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056040 (n + 1) : ℚ) * (A100071 n : ℚ)

end

end A274707.P6832034162777988644

namespace A274707

/-- `A001405(n+1)/A056040(n+1)*A100071(n)` -/
def P6832034162777988644.Spec : Prop :=
  ∀ n, P6832034162777988644.a n = (A274707 (n + 1) : ℚ)

end A274707

/-! ## A274707.P5988555608348770762

`A212303(n+1)-A056040(n)`
-/

namespace A274707.P5988555608348770762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (n + 1) - A056040 n

end

end A274707.P5988555608348770762

namespace A274707

/-- `A212303(n+1)-A056040(n)` -/
def P5988555608348770762.Spec : Prop :=
  ∀ n, P5988555608348770762.a n = A274707 (n + 1)

end A274707

/-!
# A274709: A statistic on orbital systems over n sectors: the number of orbitals which rise to maximum height k over the central circle.

The programs for A274709, there is no canonical definition to state claims against.
-/

/-! ## A274709.P1443054425874816496

`A275326(n+1)+A275326(n+2)`
-/

namespace A274709.P1443054425874816496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275326 (n + 1) + A275326 (n + 2)

end

end A274709.P1443054425874816496

/-! ## A274709.P11227814159962057616

`ceil((A275325(n+1)+A275325(n+2))/2)`
-/

namespace A274709.P11227814159962057616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275325 (n + 1) + A275325 (n + 2) : ℚ) / 2⌉

end

end A274709.P11227814159962057616

/-! ## A274709.P3760054132346525944

`A110654(A275325(n+1)+A275325(n+2))`
-/

namespace A274709.P3760054132346525944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A275325 (n + 1) + A275325 (n + 2)).toNat

end

end A274709.P3760054132346525944

/-! ## A274709.P14854796780135355413

`A252463(A275325(n+1)+A275325(n+2))`
-/

namespace A274709.P14854796780135355413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A275325 (n + 1) + A275325 (n + 2)).toNat

end

end A274709.P14854796780135355413

/-! ## A274709.P17391539222354735198

`A189231(2*n-floor(sqrt(n)))`
-/

namespace A274709.P17391539222354735198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189231 (2 * n - Nat.sqrt n)

end

end A274709.P17391539222354735198

/-!
# A274711: Numbers n such that 5^n + 4^(n+1) is prime.

The programs for A274711, there is no canonical definition to state claims against.
-/

/-! ## A274711.P4952993409032876020

`A000720(A229662(n+1)-A094541(n))`
-/

namespace A274711.P4952993409032876020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A229662 (n + 1) - A094541 n).toNat

end

end A274711.P4952993409032876020

/-!
# A274712: a(n) = A008277(3*n-1,n) / (n*(n+1)/2) for n>=1, where A008277 are the Stirling numbers of the second kind.

The programs for A274712, there is no canonical definition to state claims against.
-/

/-! ## A274712.P12188311116343400685

`A274713(n+1)/((n+1)*(n+2)/2)`
-/

namespace A274712.P12188311116343400685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274713 (n + 1) : ℚ) / ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2))

end

end A274712.P12188311116343400685

/-! ## A274712.P15841457529240712851

`A048993(∑[A017209(n)])/∑[n+1]`
-/

namespace A274712.P15841457529240712851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A274712.P15841457529240712851

/-! ## A274712.P4388400771963336337

`A008278(A064226(n))/record[A038722(n+1)]`
-/

namespace A274712.P4388400771963336337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008278 (A064226 n).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A274712.P4388400771963336337

/-! ## A274712.P4955497860556180650

`A048993(A022266(n+1))/record[A038722(n+1)]`
-/

namespace A274712.P4955497860556180650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 (A022266 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A274712.P4955497860556180650

/-! ## A274712.P1195618019115064193

`A008277(A117625(n+1))/record[A038722(n+1)]`
-/

namespace A274712.P1195618019115064193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (A117625 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A274712.P1195618019115064193

/-!
# A274713: Number of partitions of a {3*n-1}-set into n nonempty subsets.

The programs for A274713, there is no canonical definition to state claims against.
-/

/-! ## A274713.P5928896591881154337

`A008277(∑[9*n+1]+1)`
-/

namespace A274713.P5928896591881154337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274713.P5928896591881154337

/-! ## A274713.P7922834641790085475

`∑[n+1]*A274712(n+1)`
-/

namespace A274713.P7922834641790085475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A274712 (n + 1)

end

end A274713.P7922834641790085475

/-! ## A274713.P12151583821755438071

`A008278(A064226(n))`
-/

namespace A274713.P12151583821755438071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A064226 n).toNat

end

end A274713.P12151583821755438071

/-! ## A274713.P18440530549808457434

`A048993(∑[A017209(n)])`
-/

namespace A274713.P18440530549808457434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274713.P18440530549808457434

/-! ## A274713.P7601395558723518522

`A048993(A022266(n+1))`
-/

namespace A274713.P7601395558723518522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A022266 (n + 1)).toNat

end

end A274713.P7601395558723518522

/-!
# A274714: G.f. A(x) satisfies: A(x) = x + A(x)^2 - R(A(x)^2) + sqrt( A(x)^2 - R(A(x)^2) ), where R(A(x)) = x, and A(x) = Sum_{n>=1} a(n)*x^n/2^A274715(n).

The programs for A274714, there is no canonical definition to state claims against.
-/

/-! ## A274714.P17121154425445507931

`A321484(∑[ceil(sqrt(n))])`
-/

namespace A274714.P17121154425445507931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274714.P17121154425445507931

/-!
# A274715: Exponent in the power of 2 that equals the denominator in the coefficients of the g.f. described by A274714.

The programs for A274715, there is no canonical definition to state claims against.
-/

/-! ## A274715.P3740928808065902680

`val(floor(n/2)!, A290822(A152178(n)))`
-/

namespace A274715.P3740928808065902680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat) (A290822 (A152178 n).toNat).toNat

end

end A274715.P3740928808065902680

/-! ## A274715.P4963180721886069262

`A225534(A278022(n+1))%A143773(n+3)`
-/

namespace A274715.P4963180721886069262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225534 (A278022 (n + 1)).toNat) (A143773 (n + 3))

end

end A274715.P4963180721886069262

/-! ## A274715.P541215202321505070

`A331383(round(sqrt(A100346(n+3))))`
-/

namespace A274715.P541215202321505070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (SequenceMachineLib.roundAway (Real.sqrt (A100346 (n + 3) : ℝ))).toNat

end

end A274715.P541215202321505070

/-! ## A274715.P15531570863880397378

`A124794(A166861(n+2))%A001156(n)`
-/

namespace A274715.P15531570863880397378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124794 (A166861 (n + 2)).toNat) (A001156 n)

end

end A274715.P15531570863880397378

/-! ## A274715.P1238606577464697

`A160382(xor(A000010(n+1), A024493(n)))`
-/

namespace A274715.P1238606577464697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (Int.xor (A000010 (n + 1)) (A024493 n)).toNat

end

end A274715.P1238606577464697

/-!
# A274716: a(2*n+1) = a(2*floor(n/2)+1) + n, a(2*n) = a(n), for n>=1 with a(1)=0.

The programs for A274716, the canonical program `A274716.P16347509191671502447` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274716 has offset 1).

The definition of A274716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274716.P6885847412878119822

`∑[val(n+1, 2)]%((n+1)/2^val(n+1, 2))`
-/

namespace A274716.P6885847412878119822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A274716.P6885847412878119822

namespace A274716

/-- `∑[val(n+1, 2)]%((n+1)/2^val(n+1, 2))` -/
def P6885847412878119822.Spec : Prop :=
  ∀ n, P6885847412878119822.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P10739702939508076683

`∑[val(n+1, 2)]-(n-floor(n/2^val(n+1, 2)))`
-/

namespace A274716.P10739702939508076683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋)

end

end A274716.P10739702939508076683

namespace A274716

/-- `∑[val(n+1, 2)]-(n-floor(n/2^val(n+1, 2)))` -/
def P10739702939508076683.Spec : Prop :=
  ∀ n, P10739702939508076683.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P8313036115097498863

`(n+1)/2^val(n+1, 2)-∑[1-val(n+1, 2)]`
-/

namespace A274716.P8313036115097498863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A274716.P8313036115097498863

namespace A274716

/-- `(n+1)/2^val(n+1, 2)-∑[1-val(n+1, 2)]` -/
def P8313036115097498863.Spec : Prop :=
  ∀ n, P8313036115097498863.a n = (A274716 (n + 1) : ℚ)

end A274716

/-! ## A274716.P16347509191671502447

`∑[val(n+1, 2)+1]%((n+1)/(or(n, n+1)-n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274716

/-- `∑[val(n+1, 2)+1]%((n+1)/(or(n, n+1)-n))` -/
def P16347509191671502447.Spec : Prop :=
  ∀ n, P16347509191671502447.a n = A274716 (n + 1)

theorem P16347509191671502447.correct : P16347509191671502447.Spec := by
  intro n
  simp only [A274716, Nat.add_sub_cancel]

end A274716

/-! ## A274716.P4368883637667339976

`floor(n/and(n+1, -(n+1)))-(n-∑[val(n+1, 2)])`
-/

namespace A274716.P4368883637667339976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A274716.P4368883637667339976

namespace A274716

/-- `floor(n/and(n+1, -(n+1)))-(n-∑[val(n+1, 2)])` -/
def P4368883637667339976.Spec : Prop :=
  ∀ n, P4368883637667339976.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P4751231192121261750

`∑[floor(log2(xor(n, n+1)))]%((n+1)/xor(n, or(n, n+1)))`
-/

namespace A274716.P4751231192121261750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)))

end

end A274716.P4751231192121261750

namespace A274716

/-- `∑[floor(log2(xor(n, n+1)))]%((n+1)/xor(n, or(n, n+1)))` -/
def P4751231192121261750.Spec : Prop :=
  ∀ n, P4751231192121261750.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P3365916872280132829

`∑[val(n+1, 2)-1]+(n+1)/and(n+1, -(n+1))`
-/

namespace A274716.P3365916872280132829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A274716.P3365916872280132829

namespace A274716

/-- `∑[val(n+1, 2)-1]+(n+1)/and(n+1, -(n+1))` -/
def P3365916872280132829.Spec : Prop :=
  ∀ n, P3365916872280132829.a n = (A274716 (n + 1) : ℚ)

end A274716

/-! ## A274716.P13009861199401143034

`2*floor(n/(xor(n, n+1)+1))-(n-∑[val(n+1, 2)])`
-/

namespace A274716.P13009861199401143034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A274716.P13009861199401143034

namespace A274716

/-- `2*floor(n/(xor(n, n+1)+1))-(n-∑[val(n+1, 2)])` -/
def P13009861199401143034.Spec : Prop :=
  ∀ n, P13009861199401143034.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P10435153682379892244

`∑[log2(xor(n, n+1)+1)]%((n+1)/(or(n, n+1)-n))`
-/

namespace A274716.P10435153682379892244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))

end

end A274716.P10435153682379892244

namespace A274716

/-- `∑[log2(xor(n, n+1)+1)]%((n+1)/(or(n, n+1)-n))` -/
def P10435153682379892244.Spec : Prop :=
  ∀ n, P10435153682379892244.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P17682226168324132297

`∑[log2(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))`
-/

namespace A274716.P17682226168324132297
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))

end

end A274716.P17682226168324132297

namespace A274716

/-- `∑[log2(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))` -/
def P17682226168324132297.Spec : Prop :=
  ∀ n, P17682226168324132297.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P7516821175016784210

`∑[log2(and(n+1, -(n+1)))]%((n+1)/and(n+1, -(n+1)))`
-/

namespace A274716.P7516821175016784210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A274716.P7516821175016784210

namespace A274716

/-- `∑[log2(and(n+1, -(n+1)))]%((n+1)/and(n+1, -(n+1)))` -/
def P7516821175016784210.Spec : Prop :=
  ∀ n, P7516821175016784210.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P4505450066749472310

`∑[log2(-or(n+1, -(n+1)))]%-((n+1)/or(n+1, -(n+1)))`
-/

namespace A274716.P4505450066749472310
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))

end

end A274716.P4505450066749472310

namespace A274716

/-- `∑[log2(-or(n+1, -(n+1)))]%-((n+1)/or(n+1, -(n+1)))` -/
def P4505450066749472310.Spec : Prop :=
  ∀ n, P4505450066749472310.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P7543136173511017114

`∑[val(n+1, 2)]-A331739(n+1)`
-/

namespace A274716.P7543136173511017114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A331739 (n + 1)

end

end A274716.P7543136173511017114

namespace A274716

/-- `∑[val(n+1, 2)]-A331739(n+1)` -/
def P7543136173511017114.Spec : Prop :=
  ∀ n, P7543136173511017114.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P209752826808709285

`A011371(floor(n/2^val(n+1, 2)))`
-/

namespace A274716.P209752826808709285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

end

end A274716.P209752826808709285

namespace A274716

/-- `A011371(floor(n/2^val(n+1, 2)))` -/
def P209752826808709285.Spec : Prop :=
  ∀ n, P209752826808709285.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P10106897425405652629

`∑[val(n+1, 2)]%A000265(n+1)`
-/

namespace A274716.P10106897425405652629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000265 (n + 1))

end

end A274716.P10106897425405652629

namespace A274716

/-- `∑[val(n+1, 2)]%A000265(n+1)` -/
def P10106897425405652629.Spec : Prop :=
  ∀ n, P10106897425405652629.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P2182469712878833963

`∑[A001222(xor(n, n+1)+1)]%((n+1)/(or(n, n+1)-n))`
-/

namespace A274716.P2182469712878833963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))

end

end A274716.P2182469712878833963

namespace A274716

/-- `∑[A001222(xor(n, n+1)+1)]%((n+1)/(or(n, n+1)-n))` -/
def P2182469712878833963.Spec : Prop :=
  ∀ n, P2182469712878833963.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P8336133011174805090

`∑[A000005(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))`
-/

namespace A274716.P8336133011174805090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))

end

end A274716.P8336133011174805090

namespace A274716

/-- `∑[A000005(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))` -/
def P8336133011174805090.Spec : Prop :=
  ∀ n, P8336133011174805090.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P14835115714646279418

`∑[A001222(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))`
-/

namespace A274716.P14835115714646279418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)))

end

end A274716.P14835115714646279418

namespace A274716

/-- `∑[A001222(or(n, n+1)-n)]%((n+1)/(or(n, n+1)-n))` -/
def P14835115714646279418.Spec : Prop :=
  ∀ n, P14835115714646279418.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P5696140208056366863

`∑[A001222(and(n+1, -(n+1)))]%((n+1)/and(n+1, -(n+1)))`
-/

namespace A274716.P5696140208056366863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A274716.P5696140208056366863

namespace A274716

/-- `∑[A001222(and(n+1, -(n+1)))]%((n+1)/and(n+1, -(n+1)))` -/
def P5696140208056366863.Spec : Prop :=
  ∀ n, P5696140208056366863.a n = A274716 (n + 1)

end A274716

/-! ## A274716.P9007828578919000333

`A005187(A025480(n))`
-/

namespace A274716.P9007828578919000333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A025480 n).toNat

end

end A274716.P9007828578919000333

namespace A274716

/-- `A005187(A025480(n))` -/
def P9007828578919000333.Spec : Prop :=
  ∀ n, P9007828578919000333.a n = A274716 (n + 1)

end A274716

/-!
# A274719: Expansion of Product_{k >= 1} (1-q^(2*k)).

The programs for A274719, the canonical program `A274719.P15727446664512670220` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274719 has offset 0).

The definition of A274719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274719.P3266375120265958976

`log2(gcd(2, n))*A010815(floor(n/2))`
-/

namespace A274719.P3266375120265958976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A010815 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A274719.P3266375120265958976

namespace A274719

/-- `log2(gcd(2, n))*A010815(floor(n/2))` -/
def P3266375120265958976.Spec : Prop :=
  ∀ n, P3266375120265958976.a n = (A274719 n : ℝ)

end A274719

/-! ## A274719.P15727446664512670220

`A089806(n)*A010815(floor(n/2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274719

/-- `A089806(n)*A010815(floor(n/2))` -/
def P15727446664512670220.Spec : Prop :=
  ∀ n, P15727446664512670220.a n = A274719 n

theorem P15727446664512670220.correct : P15727446664512670220.Spec := by
  intro n
  simp only [A274719]

end A274719

/-! ## A274719.P7852585565357537619

`A056594(n)*A121373(floor(n/2))`
-/

namespace A274719.P7852585565357537619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A121373 ⌊(n : ℚ) / 2⌋.toNat

end

end A274719.P7852585565357537619

namespace A274719

/-- `A056594(n)*A121373(floor(n/2))` -/
def P7852585565357537619.Spec : Prop :=
  ∀ n, P7852585565357537619.a n = A274719 n

end A274719

/-! ## A274719.P693454768490292596

`(n+1)%2*A010815(A004526(n))`
-/

namespace A274719.P693454768490292596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A010815 (A004526 n).toNat

end

end A274719.P693454768490292596

namespace A274719

/-- `(n+1)%2*A010815(A004526(n))` -/
def P693454768490292596.Spec : Prop :=
  ∀ n, P693454768490292596.a n = A274719 n

end A274719

/-! ## A274719.P1600759721518963522

`A010815(A142150(n))-A000035(n)`
-/

namespace A274719.P1600759721518963522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A142150 n).toNat - A000035 n

end

end A274719.P1600759721518963522

namespace A274719

/-- `A010815(A142150(n))-A000035(n)` -/
def P1600759721518963522.Spec : Prop :=
  ∀ n, P1600759721518963522.a n = A274719 n

end A274719

/-! ## A274719.P12741961715438041728

`A010815(A110654(n))*A059841(n)`
-/

namespace A274719.P12741961715438041728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A110654 n).toNat * A059841 n

end

end A274719.P12741961715438041728

namespace A274719

/-- `A010815(A110654(n))*A059841(n)` -/
def P12741961715438041728.Spec : Prop :=
  ∀ n, P12741961715438041728.a n = A274719 n

end A274719

/-! ## A274719.P5960053179617608184

`Δ[A004526(n+1)]*A010815(A004526(n+1))`
-/

namespace A274719.P5960053179617608184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010815 (A004526 (n + 1)).toNat

end

end A274719.P5960053179617608184

namespace A274719

/-- `Δ[A004526(n+1)]*A010815(A004526(n+1))` -/
def P5960053179617608184.Spec : Prop :=
  ∀ n, P5960053179617608184.a n = A274719 n

end A274719

/-! ## A274719.P14175433537063634666

`A204843(12*n+1)`
-/

namespace A274719.P14175433537063634666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (12 * n + 1)

end

end A274719.P14175433537063634666

namespace A274719

/-- `A204843(12*n+1)` -/
def P14175433537063634666.Spec : Prop :=
  ∀ n, P14175433537063634666.a n = A274719 n

end A274719

/-! ## A274719.P14862719341036832627

`A010815(∑[4*n]%record[xor(3, n)])`
-/

namespace A274719.P14862719341036832627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((∑ j ∈ Finset.range (n + 1), f1 j) % f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A274719.P14862719341036832627

namespace A274719

/-- `A010815(∑[4*n]%record[xor(3, n)])` -/
def P14862719341036832627.Spec : Prop :=
  ∀ n, P14862719341036832627.a n = A274719 n

end A274719

/-! ## A274719.P1589893604117692441

`A010815((n*(2*n+1))%(4*n+1))`
-/

namespace A274719.P1589893604117692441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n * (2 * n + 1) % (4 * n + 1))

end

end A274719.P1589893604117692441

namespace A274719

/-- `A010815((n*(2*n+1))%(4*n+1))` -/
def P1589893604117692441.Spec : Prop :=
  ∀ n, P1589893604117692441.a n = A274719 n

end A274719

/-! ## A274719.P8063370326131931620

`A010815(A185452(n))`
-/

namespace A274719.P8063370326131931620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A185452 n).toNat

end

end A274719.P8063370326131931620

namespace A274719

/-- `A010815(A185452(n))` -/
def P8063370326131931620.Spec : Prop :=
  ∀ n, P8063370326131931620.a n = A274719 n

end A274719

/-! ## A274719.P15661095917321854115

`A010815(Δ[n*or(1, n)]-A008619(n))`
-/

namespace A274719.P15661095917321854115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A008619 n).toNat

end

end A274719.P15661095917321854115

namespace A274719

/-- `A010815(Δ[n*or(1, n)]-A008619(n))` -/
def P15661095917321854115.Spec : Prop :=
  ∀ n, P15661095917321854115.a n = A274719 n

end A274719

/-! ## A274719.P7566552890147303396

`A010815(A001281(n))%gcd(2, n)`
-/

namespace A274719.P7566552890147303396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 (A001281 n).toNat) (Nat.gcd 2 n : ℤ)

end

end A274719.P7566552890147303396

namespace A274719

/-- `A010815(A001281(n))%gcd(2, n)` -/
def P7566552890147303396.Spec : Prop :=
  ∀ n, P7566552890147303396.a n = A274719 n

end A274719

/-! ## A274719.P15234597342981821013

`A185124(4*n)`
-/

namespace A274719.P15234597342981821013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (4 * n)

end

end A274719.P15234597342981821013

namespace A274719

/-- `A185124(4*n)` -/
def P15234597342981821013.Spec : Prop :=
  ∀ n, P15234597342981821013.a n = A274719 n

end A274719

/-! ## A274719.P659551510802049357

`A185125(4*n)`
-/

namespace A274719.P659551510802049357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 (4 * n)

end

end A274719.P659551510802049357

namespace A274719

/-- `A185125(4*n)` -/
def P659551510802049357.Spec : Prop :=
  ∀ n, P659551510802049357.a n = A274719 n

end A274719

/-! ## A274719.P14546759157618850629

`A185124(Δ[(n-1)²]+Δ[n²])%3`
-/

namespace A274719.P14546759157618850629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185124 (f1 (n + 1) - f1 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat) 3

end

end A274719.P14546759157618850629

namespace A274719

/-- `A185124(Δ[(n-1)²]+Δ[n²])%3` -/
def P14546759157618850629.Spec : Prop :=
  ∀ n, P14546759157618850629.a n = A274719 n

end A274719

/-! ## A274719.P5006571793103770729

`A143064(A216256(n+1)+n)`
-/

namespace A274719.P5006571793103770729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (A216256 (n + 1) + (n : ℤ)).toNat

end

end A274719.P5006571793103770729

namespace A274719

/-- `A143064(A216256(n+1)+n)` -/
def P5006571793103770729.Spec : Prop :=
  ∀ n, P5006571793103770729.a n = A274719 n

end A274719

/-! ## A274719.P14873325777658456350

`A143064(A183855(n+1))`
-/

namespace A274719.P14873325777658456350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (A183855 (n + 1)).toNat

end

end A274719.P14873325777658456350

namespace A274719

/-- `A143064(A183855(n+1))` -/
def P14873325777658456350.Spec : Prop :=
  ∀ n, P14873325777658456350.a n = A274719 n

end A274719

/-! ## A274719.P14192419336661823403

`A143064(A278814(n)+n)`
-/

namespace A274719.P14192419336661823403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (A278814 n + (n : ℤ)).toNat

end

end A274719.P14192419336661823403

namespace A274719

/-- `A143064(A278814(n)+n)` -/
def P14192419336661823403.Spec : Prop :=
  ∀ n, P14192419336661823403.a n = A274719 n

end A274719

/-! ## A274719.P13025104950780661278

`A143064(n-(A143064(n)-A278814(n)))`
-/

namespace A274719.P13025104950780661278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 ((n : ℤ) - (A143064 n - A278814 n)).toNat

end

end A274719.P13025104950780661278

namespace A274719

/-- `A143064(n-(A143064(n)-A278814(n)))` -/
def P13025104950780661278.Spec : Prop :=
  ∀ n, P13025104950780661278.a n = A274719 n

end A274719

/-!
# A274720: Odd numbers n such that n is not coprime to the multiplicative order of 2 mod n.

The programs for A274720, there is no canonical definition to state claims against.
-/

/-! ## A274720.P7275611053069409675

`record[A139392(n+1)%A004196(n+1)]`
-/

namespace A274720.P7275611053069409675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139392 (n + 1)) (A004196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274720.P7275611053069409675

/-! ## A274720.P9982216936197883321

`record[∩[2*n+1, A060679(n+1)]%A004196(n+1)]`
-/

namespace A274720.P9982216936197883321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) (A004196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274720.P9982216936197883321

/-! ## A274720.P13506344894815493913

`record[A060679(eq[1, A060679(n+1)%2]+1)%A004196(n+1)]`
-/

namespace A274720.P13506344894815493913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060679 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060679 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)) (A004196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274720.P13506344894815493913

/-! ## A274720.P9510311130603399739

`record[lt[A000217(A019426(n+1)), A000001(n)]%A004196(n+1)]`
-/

namespace A274720.P9510311130603399739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A019426 (n + 1)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) (A004196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274720.P9510311130603399739

/-! ## A274720.P17429577525037951427

`record[lt[A019426(A044917(n+1)), A000001(n)]%A004196(n+1)]`
-/

namespace A274720.P17429577525037951427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A044917 (n + 1)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) (A004196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274720.P17429577525037951427

/-!
# A274721: a(n) is the least k such that A051903(k^2+1) = n.

The programs for A274721, there is no canonical definition to state claims against.
-/

/-! ## A274721.P17777309945497519001

`Δ[A028310(∑[A034935(n)])]`
-/

namespace A274721.P17777309945497519001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274721.P17777309945497519001

/-!
# A274722: Number of n X n 0..2 arrays with no element equal to any value at offset (-1,-2), (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274722, there is no canonical definition to state claims against.
-/

/-! ## A274722.P2527180245657113400

`A274728(∑[4*n]+1)`
-/

namespace A274722.P2527180245657113400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274722.P2527180245657113400

/-! ## A274722.P3631855668638503869

`record[gcd(A214292(n), A274728(n+1))]`
-/

namespace A274722.P3631855668638503869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A274728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274722.P3631855668638503869

/-! ## A274722.P10357681606726893507

`A015156(n)*A274728(A001844(n))`
-/

namespace A274722.P10357681606726893507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015156 n * A274728 (A001844 n).toNat

end

end A274722.P10357681606726893507

/-! ## A274722.P1400007011287678405

`lcm(A001316(n), A274728(A001844(n)))`
-/

namespace A274722.P1400007011287678405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A274728 (A001844 n).toNat)

end

end A274722.P1400007011287678405

/-! ## A274722.P4112318223443283718

`A274728(A001844(n))%A245393(n+1)`
-/

namespace A274722.P4112318223443283718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274728 (A001844 n).toNat) (A245393 (n + 1))

end

end A274722.P4112318223443283718

/-!
# A274723: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274723, there is no canonical definition to state claims against.
-/

/-! ## A274723.P6925963124464712045

`A274728(∑[n+3]+1)`
-/

namespace A274723.P6925963124464712045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274723.P6925963124464712045

/-! ## A274723.P587499375148598823

`A274728(A165157(2*n+3))+A000007(n+4)`
-/

namespace A274723.P587499375148598823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A165157 (2 * n + 3)).toNat + A000007 (n + 4)

end

end A274723.P587499375148598823

/-!
# A274724: Number of nX4 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274724, there is no canonical definition to state claims against.
-/

/-! ## A274724.P9180596699168064703

`A274728(A141214(n+1))`
-/

namespace A274724.P9180596699168064703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A141214 (n + 1)).toNat

end

end A274724.P9180596699168064703

/-! ## A274724.P14029898031940218355

`A274728(A027379(n+2))`
-/

namespace A274724.P14029898031940218355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A027379 (n + 2)).toNat

end

end A274724.P14029898031940218355

/-! ## A274724.P5947913077564022842

`A274728(A155212(n)+5)`
-/

namespace A274724.P5947913077564022842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A155212 n + 5).toNat

end

end A274724.P5947913077564022842

/-! ## A274724.P11755466464085375995

`A274728(A056000(n)+7)`
-/

namespace A274724.P11755466464085375995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A056000 n + 7).toNat

end

end A274724.P11755466464085375995

/-! ## A274724.P16660528771697701800

`A274728(eq[4, A209434(n)])`
-/

namespace A274724.P16660528771697701800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274724.P16660528771697701800

/-!
# A274725: Number of nX5 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274725, there is no canonical definition to state claims against.
-/

/-! ## A274725.P4792672162483216659

`A274728(Δ[A264443(n)])`
-/

namespace A274725.P4792672162483216659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (f1 (n + 1) - f1 n).toNat

end

end A274725.P4792672162483216659

/-! ## A274725.P2202290110640902694

`A274728(A046691(n+3))`
-/

namespace A274725.P2202290110640902694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A046691 (n + 3)).toNat

end

end A274725.P2202290110640902694

/-! ## A274725.P4974140913708404244

`A274728(A056115(n)+11)`
-/

namespace A274725.P4974140913708404244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A056115 n + 11).toNat

end

end A274725.P4974140913708404244

/-! ## A274725.P7388602612011864102

`A274728(eq[4, A193592(n)])`
-/

namespace A274725.P7388602612011864102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274725.P7388602612011864102

/-! ## A274725.P17928863027026677763

`A274728(Δ[A023545(n+1)])`
-/

namespace A274725.P17928863027026677763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (f1 (n + 1) - f1 n).toNat

end

end A274725.P17928863027026677763

/-!
# A274726: Number of nX6 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274726, there is no canonical definition to state claims against.
-/

/-! ## A274726.P16477608715425123669

`A274728(A052905(n+3))`
-/

namespace A274726.P16477608715425123669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A052905 (n + 3)).toNat

end

end A274726.P16477608715425123669

/-! ## A274726.P5225057943269707713

`A274728(eq[3, A219347(n)])`
-/

namespace A274726.P5225057943269707713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274726.P5225057943269707713

/-! ## A274726.P6743418678897121395

`A274728(eq[5, A193592(n)])`
-/

namespace A274726.P6743418678897121395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274726.P6743418678897121395

/-! ## A274726.P8230612347485322087

`A274728(eq[8, A258709(n)])`
-/

namespace A274726.P8230612347485322087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274726.P8230612347485322087

/-! ## A274726.P2255302105391839954

`A274728(eq[7, A049286(n+1)])`
-/

namespace A274726.P2255302105391839954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274726.P2255302105391839954

/-!
# A274727: Number of nX7 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274727, there is no canonical definition to state claims against.
-/

/-! ## A274727.P4328205726849385516

`A274728(A055999(n+4))`
-/

namespace A274727.P4328205726849385516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A055999 (n + 4)).toNat

end

end A274727.P4328205726849385516

/-! ## A274727.P16138363375302313576

`A274728(eq[4, A219347(n)])`
-/

namespace A274727.P16138363375302313576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274727.P16138363375302313576

/-! ## A274727.P1184063126422497495

`A274728(eq[6, A193592(n)])`
-/

namespace A274727.P1184063126422497495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274727.P1184063126422497495

/-! ## A274727.P125604419996816734

`A274728(eq[7, A200370(n+1)])`
-/

namespace A274727.P125604419996816734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274727.P125604419996816734

/-! ## A274727.P10195875887817067777

`A274728(eq[10, A185782(n+1)])`
-/

namespace A274727.P10195875887817067777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274727.P10195875887817067777

/-!
# A274728: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274728, there is no canonical definition to state claims against.
-/

/-! ## A274728.P10789969860791099177

`A275131(n+1)+A028572(A006252(n))`
-/

namespace A274728.P10789969860791099177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (n + 1) + A028572 (A006252 n).toNat

end

end A274728.P10789969860791099177

/-!
# A274729: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274729, there is no canonical definition to state claims against.
-/

/-! ## A274729.P3738013945389185139

`A274728(A141214(n)+7)`
-/

namespace A274729.P3738013945389185139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A141214 n + 7).toNat

end

end A274729.P3738013945389185139

/-! ## A274729.P14623086574232893432

`A274728(A052905(n)+9)`
-/

namespace A274729.P14623086574232893432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A052905 n + 9).toNat

end

end A274729.P14623086574232893432

/-! ## A274729.P17803056612386920453

`A274728(A055999(n)+10)`
-/

namespace A274729.P17803056612386920453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A055999 n + 10).toNat

end

end A274729.P17803056612386920453

/-! ## A274729.P15065656746833160360

`A274728(A167614(n+2)+1)`
-/

namespace A274729.P15065656746833160360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167614 (n + 2) + 1).toNat

end

end A274729.P15065656746833160360

/-! ## A274729.P16809155714257297039

`A274728(A166136(n+2)-2)`
-/

namespace A274729.P16809155714257297039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A166136 (n + 2) - 2).toNat

end

end A274729.P16809155714257297039

/-!
# A274730: Number of 5 X n 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274730, there is no canonical definition to state claims against.
-/

/-! ## A274730.P4737012909737967060

`A274728(A167499(n+3))`
-/

namespace A274730.P4737012909737967060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167499 (n + 3)).toNat

end

end A274730.P4737012909737967060

/-! ## A274730.P16671420080786373489

`A274728(A155212(n)+13)`
-/

namespace A274730.P16671420080786373489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A155212 n + 13).toNat

end

end A274730.P16671420080786373489

/-! ## A274730.P1168110814455131110

`A274728(A056000(n)+15)`
-/

namespace A274730.P1168110814455131110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A056000 n + 15).toNat

end

end A274730.P1168110814455131110

/-! ## A274730.P2980587449140287761

`A274728(eq[7, A066657(n)])`
-/

namespace A274730.P2980587449140287761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274730.P2980587449140287761

/-! ## A274730.P11440719810048344904

`A274728(A000217(n+4)+5)`
-/

namespace A274730.P11440719810048344904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A000217 (n + 4) + 5).toNat

end

end A274730.P11440719810048344904

/-!
# A274731: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274731, there is no canonical definition to state claims against.
-/

/-! ## A274731.P371272082455672276

`A274728(A166136(n+4))`
-/

namespace A274731.P371272082455672276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A166136 (n + 4)).toNat

end

end A274731.P371272082455672276

/-! ## A274731.P9428432084441975480

`A274728(A056115(n)+21)`
-/

namespace A274731.P9428432084441975480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A056115 n + 21).toNat

end

end A274731.P9428432084441975480

/-! ## A274731.P2213104673821527089

`A274728(A167499(n+4)+1)`
-/

namespace A274731.P2213104673821527089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167499 (n + 4) + 1).toNat

end

end A274731.P2213104673821527089

/-! ## A274731.P5407987111043311066

`A274728(A167487(n+4)-1)`
-/

namespace A274731.P5407987111043311066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167487 (n + 4) - 1).toNat

end

end A274731.P5407987111043311066

/-! ## A274731.P12626885283876610844

`A274728(eq[7, A131818(n+1)])`
-/

namespace A274731.P12626885283876610844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274731.P12626885283876610844

/-!
# A274732: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274732, there is no canonical definition to state claims against.
-/

/-! ## A274732.P2569373541773035752

`A274728(A167487(n+5))`
-/

namespace A274732.P2569373541773035752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167487 (n + 5)).toNat

end

end A274732.P2569373541773035752

/-! ## A274732.P13869527684172160650

`A274728(eq[11, A066657(n)])`
-/

namespace A274732.P13869527684172160650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274732.P13869527684172160650

/-! ## A274732.P1895447838488641328

`A274728(A167499(n+5)+2)`
-/

namespace A274732.P1895447838488641328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A167499 (n + 5) + 2).toNat

end

end A274732.P1895447838488641328

/-! ## A274732.P14836398579970616441

`A274728(A052905(n+3)+12)`
-/

namespace A274732.P14836398579970616441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (A052905 (n + 3) + 12).toNat

end

end A274732.P14836398579970616441

/-! ## A274732.P12070341222788455368

`A274728(eq[8, A131818(n+1)])`
-/

namespace A274732.P12070341222788455368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274732.P12070341222788455368

/-!
# A274733: Number of odd partitions in the multiset of intersections of the set of partitions of n with itself three times; also number of distinct partitions in that multiset.

The programs for A274733, there is no canonical definition to state claims against.
-/

/-! ## A274733.P15827541761348871507

`A194417(A006952(n))-A006936(n)`
-/

namespace A274733.P15827541761348871507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A006952 n).toNat - A006936 n

end

end A274733.P15827541761348871507

/-!
# A274734: G.f. satisfies A(x) = (1 + x*A(x))^2 * (1 + x*A(x)^2).

The programs for A274734, there is no canonical definition to state claims against.
-/

/-! ## A274734.P17206989039338854702

`or(A010051(A001423(n)), A036759(2*n+1))`
-/

namespace A274734.P17206989039338854702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A001423 n).toNat) (A036759 (2 * n + 1))

end

end A274734.P17206989039338854702

/-! ## A274734.P9676473176893828938

`A266982(A003659(n+1))+A036759(2*n+1)`
-/

namespace A274734.P9676473176893828938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (A003659 (n + 1)).toNat + A036759 (2 * n + 1)

end

end A274734.P9676473176893828938

/-! ## A274734.P9437674971831568538

`A007947(A335803(n+2)+A036759(2*n+1))`
-/

namespace A274734.P9437674971831568538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A335803 (n + 2) + A036759 (2 * n + 1)).toNat

end

end A274734.P9437674971831568538

/-!
# A274735: G.f. satisfies A(x) = (1 + x*A(x))^3 * (1 + x*A(x)^2).

The programs for A274735, there is no canonical definition to state claims against.
-/

/-! ## A274735.P1131690219473023836

`A083920(A062147(n)+2)`
-/

namespace A274735.P1131690219473023836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A062147 n + 2).toNat

end

end A274735.P1131690219473023836

/-!
# A274736: G.f. A(x) satisfies: A(x)^2 - 4*A(x)^3 = A(x^2).

The programs for A274736, there is no canonical definition to state claims against.
-/

/-! ## A274736.P8211372703286749752

`A188278(A188287(n))-A188288(2*(n+2))`
-/

namespace A274736.P8211372703286749752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188278 (A188287 n).toNat - A188288 (2 * (n + 2))

end

end A274736.P8211372703286749752

/-!
# A274737: G.f. A(x) satisfies: A(x)^2 - 6*A(x)^3 = A(x^2).

The programs for A274737, there is no canonical definition to state claims against.
-/

/-! ## A274737.P17062383913511975817

`A083028(record[A090192(n)])+1`
-/

namespace A274737.P17062383913511975817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A274737.P17062383913511975817

/-!
# A274738: E.g.f. satisfies: A(x) = exp( x * Integral A(x) dx ).

The programs for A274738, there is no canonical definition to state claims against.
-/

/-! ## A274738.P504443771988805079

`A127379(n!²)*A337522(n+1)`
-/

namespace A274738.P504443771988805079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (Nat.factorial n ^ 2) * A337522 (n + 1)

end

end A274738.P504443771988805079

/-!
# A274739: E.g.f.: A(x) = exp( Integral A(x)^x dx ).

The programs for A274739, there is no canonical definition to state claims against.
-/

/-! ## A274739.P563023517432481689

`A008619(round(sqrt(A002135(n)))²)`
-/

namespace A274739.P563023517432481689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.sqrt (A002135 n : ℝ)) ^ 2).toNat

end

end A274739.P563023517432481689

/-! ## A274739.P14887448519073433376

`A063951(A019301(n))`
-/

namespace A274739.P14887448519073433376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063951 (A019301 n).toNat

end

end A274739.P14887448519073433376

/-! ## A274739.P13385924001878794435

`A063951(A034943(n))`
-/

namespace A274739.P13385924001878794435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063951 (A034943 n).toNat

end

end A274739.P13385924001878794435

/-!
# A274740: Table of coefficients in the iterations of Euler's tree function (A000169), as read by antidiagonals.

The programs for A274740, there is no canonical definition to state claims against.
-/

/-! ## A274740.P10047933389233134527

`A274390(∑[2*n]%comp[∑[n]])`
-/

namespace A274740.P10047933389233134527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A274740.P10047933389233134527

/-! ## A274740.P485319704662606952

`A274390(∑[char[∑[n]]]²-(n+1))`
-/

namespace A274740.P485319704662606952
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A274740.P485319704662606952

/-! ## A274740.P15418889995186267679

`or(char[2], A274390(A061579(n)))`
-/

namespace A274740.P15418889995186267679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274390 (A061579 n).toNat)

end

end A274740.P15418889995186267679

/-! ## A274740.P814842685378618821

`A274390(A061579(char[1]+n))-char[1]`
-/

namespace A274740.P814842685378618821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (A061579 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274740.P814842685378618821

/-! ## A274740.P17993719461389534032

`A060576(n)*A274390(A061579(n))`
-/

namespace A274740.P17993719461389534032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A274390 (A061579 n).toNat

end

end A274740.P17993719461389534032

/-! ## A274740.P4044016854245411802

`A274390(A061579(n))^A035214(n)`
-/

namespace A274740.P4044016854245411802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A274740.P4044016854245411802

/-! ## A274740.P17028894426768583205

`A274390(A061579(n))^A178334(n)`
-/

namespace A274740.P17028894426768583205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274740.P17028894426768583205

/-! ## A274740.P14362612735091084253

`A274390(A061579(n))%A002066(n)`
-/

namespace A274740.P14362612735091084253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274390 (A061579 n).toNat) (A002066 n)

end

end A274740.P14362612735091084253

/-! ## A274740.P2869941816324329670

`gcd(A000038(n), A274390(A061579(n)))`
-/

namespace A274740.P2869941816324329670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274390 (A061579 n).toNat)

end

end A274740.P2869941816324329670

/-! ## A274740.P746046375243456723

`lcm(A033999(n), A274390(A061579(n)))`
-/

namespace A274740.P746046375243456723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A274390 (A061579 n).toNat)

end

end A274740.P746046375243456723

/-!
# A274741: Table of coefficients in functions that satisfy W_n(x) = W_{n-1}(x)^W_n(x), with W_0(x) = exp(x), as read by antidiagonals.

The programs for A274741, there is no canonical definition to state claims against.
-/

/-! ## A274741.P3134321613423751585

`A274391(∑[2*n]%comp[∑[n]])`
-/

namespace A274741.P3134321613423751585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A274741.P3134321613423751585

/-! ## A274741.P9408176520690008923

`A274391(∑[char[∑[n]]]²-n-1)`
-/

namespace A274741.P9408176520690008923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A274741.P9408176520690008923

/-! ## A274741.P11187085602873165578

`A274391(A061579(n))+(4*n)%2`
-/

namespace A274741.P11187085602873165578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + ((4 * n % 2 : ℕ) : ℤ)

end

end A274741.P11187085602873165578

/-! ## A274741.P3387530066257698760

`A274391(A061579(n))^A035214(n)`
-/

namespace A274741.P3387530066257698760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A274741.P3387530066257698760

/-! ## A274741.P15839158856698972702

`A274391(A061579(n))%A080132(n)`
-/

namespace A274741.P15839158856698972702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274391 (A061579 n).toNat) (A080132 n)

end

end A274741.P15839158856698972702

/-! ## A274741.P6943718364259432824

`A274391(A061579(n))+A000007(n+1)`
-/

namespace A274741.P6943718364259432824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + A000007 (n + 1)

end

end A274741.P6943718364259432824

/-! ## A274741.P9347649374809458073

`A274391(A061579(n))+C(A085415(n+1), 64)`
-/

namespace A274741.P9347649374809458073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + (Nat.choose (A085415 (n + 1)).toNat 64 : ℤ)

end

end A274741.P9347649374809458073

/-! ## A274741.P12606782369073857896

`A274391(A061579(n))+C(n+3, A027690(n))`
-/

namespace A274741.P12606782369073857896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + (Nat.choose (n + 3) (A027690 n).toNat : ℤ)

end

end A274741.P12606782369073857896

/-! ## A274741.P18086722658733984228

`A274391(A061579(n))+C(n+3, A174164(n+1))`
-/

namespace A274741.P18086722658733984228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + (Nat.choose (n + 3) (A174164 (n + 1)).toNat : ℤ)

end

end A274741.P18086722658733984228

/-! ## A274741.P17618863958125786380

`A274391(A061579(n))+C(n+3, A186779(n+1))`
-/

namespace A274741.P17618863958125786380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A061579 n).toNat + (Nat.choose (n + 3) (A186779 (n + 1)).toNat : ℤ)

end

end A274741.P17618863958125786380

/-!
# A274742: Triangle read by rows: T(n,k) (n>=3, 0<=k<=n-3) = number of n-sequences of 0's and 1's that begin with 1 and have exactly one pair of adjacent 0's and exactly k pairs of adjacent 1's.

The programs for A274742, there is no canonical definition to state claims against.
-/

/-! ## A274742.P718779722007341188

`A046854(comp[∑[n+1]])*A115514(n+1)`
-/

namespace A274742.P718779722007341188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A115514 (n + 1)

end

end A274742.P718779722007341188

/-! ## A274742.P13820009510865906257

`A030111(A028310(n))*A115514(n+1)`
-/

namespace A274742.P13820009510865906257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A028310 n).toNat * A115514 (n + 1)

end

end A274742.P13820009510865906257

/-! ## A274742.P7474337304604070611

`A115514(n+1)*A194005(A061579(n))`
-/

namespace A274742.P7474337304604070611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (n + 1) * A194005 (A061579 n).toNat

end

end A274742.P7474337304604070611

/-! ## A274742.P8621799970600796934

`A030111(A123108(2*n))*A115514(n+1)`
-/

namespace A274742.P8621799970600796934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A123108 (2 * n)).toNat * A115514 (n + 1)

end

end A274742.P8621799970600796934

/-! ## A274742.P4504571544982034235

`A008619(A025581(n))*A046854(A007401(n+1))`
-/

namespace A274742.P4504571544982034235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n).toNat * A046854 (A007401 (n + 1)).toNat

end

end A274742.P4504571544982034235

/-! ## A274742.P17428258979747743772

`A046854(A007401(n+1))*A110654(A004736(n+1))`
-/

namespace A274742.P17428258979747743772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A007401 (n + 1)).toNat * A110654 (A004736 (n + 1)).toNat

end

end A274742.P17428258979747743772

/-!
# A274743: Repunits with odd indices multiplied by 99, i.e., 99*(1, 111, 11111, 1111111, ...).

The programs for A274743, the canonical program `A274743.P290339026012918131` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274743 has offset 1).

The definition of A274743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274743.P290339026012918131

`11*(10^(2*(n+1)-1)-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274743

/-- `11*(10^(2*(n+1)-1)-1)` -/
def P290339026012918131.Spec : Prop :=
  ∀ n, P290339026012918131.a n = (A274743 (n + 1) : ℚ)

end A274743

/-! ## A274743.P6568302263674305671

`A266299(n+1)-11`
-/

namespace A274743.P6568302263674305671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266299 (n + 1) - 11

end

end A274743.P6568302263674305671

namespace A274743

/-- `A266299(n+1)-11` -/
def P6568302263674305671.Spec : Prop :=
  ∀ n, P6568302263674305671.a n = A274743 (n + 1)

end A274743

/-! ## A274743.P8927304318316692133

`10*A133383(n)-1`
-/

namespace A274743.P8927304318316692133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A133383 n - 1

end

end A274743.P8927304318316692133

namespace A274743

/-- `10*A133383(n)-1` -/
def P8927304318316692133.Spec : Prop :=
  ∀ n, P8927304318316692133.a n = A274743 (n + 1)

end A274743

/-! ## A274743.P4266576770299275650

`lcm(11, A002283(Δ[n²]))`
-/

namespace A274743.P4266576770299275650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (A002283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A274743.P4266576770299275650

namespace A274743

/-- `lcm(11, A002283(Δ[n²]))` -/
def P4266576770299275650.Spec : Prop :=
  ∀ n, (P4266576770299275650.a n : ℤ) = A274743 (n + 1)

end A274743

/-! ## A274743.P12247734678584306069

`A086579(2*n+1)+A083813(2*n+1)`
-/

namespace A274743.P12247734678584306069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 (2 * n + 1) + A083813 (2 * n + 1)

end

end A274743.P12247734678584306069

namespace A274743

/-- `A086579(2*n+1)+A083813(2*n+1)` -/
def P12247734678584306069.Spec : Prop :=
  ∀ n, P12247734678584306069.a n = A274743 (n + 1)

end A274743

/-!
# A274744: Number of n X n 0..2 arrays with no element equal to any value at offset (-1,-2), (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274744, there is no canonical definition to state claims against.
-/

/-! ## A274744.P9298678019767330694

`A274749(∑[4*n]+1)`
-/

namespace A274744.P9298678019767330694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274744.P9298678019767330694

/-! ## A274744.P4241652785914663104

`A274749(A001844(n))+A185284(n)`
-/

namespace A274744.P4241652785914663104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A001844 n).toNat + A185284 n

end

end A274744.P4241652785914663104

/-! ## A274744.P14413963792910744948

`A274749(A001844(n))^A178489(n)`
-/

namespace A274744.P14413963792910744948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274749 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A274744.P14413963792910744948

/-! ## A274744.P16194695053362297175

`gcd(A000038(n), A274749(A001844(n)))`
-/

namespace A274744.P16194695053362297175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274749 (A001844 n).toNat)

end

end A274744.P16194695053362297175

/-! ## A274744.P18207065290825705881

`lcm(A033999(n), A274749(A001844(n)))`
-/

namespace A274744.P18207065290825705881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A274749 (A001844 n).toNat)

end

end A274744.P18207065290825705881

/-!
# A274745: Number of n X 4 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274745, the canonical program `A274745.P1796713455213082388` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274745 has offset 1).

The definition of A274745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274745.P6707892513486677986

`ogf((4-2x-3x^2+x^3)/(1-6x-x^2+2x^3))`
-/

namespace A274745.P6707892513486677986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -3, 1] [1, -6, -1, 2] n

end

end A274745.P6707892513486677986

namespace A274745

/-- `ogf((4-2x-3x^2+x^3)/(1-6x-x^2+2x^3))` -/
def P6707892513486677986.Spec : Prop :=
  ∀ n, P6707892513486677986.a n = A274745 (n + 1)

end A274745

/-! ## A274745.P1796713455213082388

`6*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=22, a(2)=133, a(3)=813`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274745

/-- `6*a(n-1)+a(n-2)-2*a(n-3)` -/
def P1796713455213082388.Spec : Prop :=
  ∀ n, P1796713455213082388.a n = A274745 (n + 1)

theorem P1796713455213082388.correct : P1796713455213082388.Spec := by
  intro n
  simp only [A274745, Nat.add_sub_cancel]

end A274745

/-! ## A274745.P5503802088756789989

`A274749(A141214(n+1))`
-/

namespace A274745.P5503802088756789989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A141214 (n + 1)).toNat

end

end A274745.P5503802088756789989

namespace A274745

/-- `A274749(A141214(n+1))` -/
def P5503802088756789989.Spec : Prop :=
  ∀ n, P5503802088756789989.a n = A274745 (n + 1)

end A274745

/-! ## A274745.P3786893919126580144

`A274749(A027379(n+2))`
-/

namespace A274745.P3786893919126580144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A027379 (n + 2)).toNat

end

end A274745.P3786893919126580144

namespace A274745

/-- `A274749(A027379(n+2))` -/
def P3786893919126580144.Spec : Prop :=
  ∀ n, P3786893919126580144.a n = A274745 (n + 1)

end A274745

/-! ## A274745.P1235327173407144247

`A274749(A055998(n+2))`
-/

namespace A274745.P1235327173407144247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A055998 (n + 2)).toNat

end

end A274745.P1235327173407144247

namespace A274745

/-- `A274749(A055998(n+2))` -/
def P1235327173407144247.Spec : Prop :=
  ∀ n, P1235327173407144247.a n = A274745 (n + 1)

end A274745

/-!
# A274746: Number of n X 5 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274746, there is no canonical definition to state claims against.
-/

/-! ## A274746.P16731039593694077503

`A274749(A046691(n+3))`
-/

namespace A274746.P16731039593694077503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A046691 (n + 3)).toNat

end

end A274746.P16731039593694077503

/-! ## A274746.P8113963958576757772

`A274749(A056115(n)+11)`
-/

namespace A274746.P8113963958576757772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A056115 n + 11).toNat

end

end A274746.P8113963958576757772

/-! ## A274746.P16019678637630081916

`A274749(eq[2, A092921(n)])`
-/

namespace A274746.P16019678637630081916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274746.P16019678637630081916

/-! ## A274746.P6602324419651111360

`A274749(eq[4, A193592(n)])`
-/

namespace A274746.P6602324419651111360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274746.P6602324419651111360

/-! ## A274746.P12765553932317631629

`A274749(Δ[A023545(n+1)])`
-/

namespace A274746.P12765553932317631629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (f1 (n + 1) - f1 n).toNat

end

end A274746.P12765553932317631629

/-!
# A274747: Number of nX6 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274747, there is no canonical definition to state claims against.
-/

/-! ## A274747.P877892649081401248

`A274749(A052905(n+3))`
-/

namespace A274747.P877892649081401248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A052905 (n + 3)).toNat

end

end A274747.P877892649081401248

/-! ## A274747.P15815549933726466858

`A274749(A056119(n)+16)`
-/

namespace A274747.P15815549933726466858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A056119 n + 16).toNat

end

end A274747.P15815549933726466858

/-! ## A274747.P12284798246939242980

`A274749(eq[3, A219347(n)])`
-/

namespace A274747.P12284798246939242980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274747.P12284798246939242980

/-! ## A274747.P11334993099815565989

`A274749(eq[5, A193592(n)])`
-/

namespace A274747.P11334993099815565989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274747.P11334993099815565989

/-! ## A274747.P11037987851961101378

`A274749(A055999(n+3)+1)`
-/

namespace A274747.P11037987851961101378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A055999 (n + 3) + 1).toNat

end

end A274747.P11037987851961101378

/-!
# A274748: Number of nX7 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274748, there is no canonical definition to state claims against.
-/

/-! ## A274748.P14323337187422876523

`A274749(A055999(n+4))`
-/

namespace A274748.P14323337187422876523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A055999 (n + 4)).toNat

end

end A274748.P14323337187422876523

/-! ## A274748.P13849581086782068708

`A274749(A056121(n)+22)`
-/

namespace A274748.P13849581086782068708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A056121 n + 22).toNat

end

end A274748.P13849581086782068708

/-! ## A274748.P17362529916220189781

`A274749(eq[4, A219347(n)])`
-/

namespace A274748.P17362529916220189781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274748.P17362529916220189781

/-! ## A274748.P13612315962859623583

`A274749(eq[6, A193592(n)])`
-/

namespace A274748.P13612315962859623583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274748.P13612315962859623583

/-! ## A274748.P4869605348034023896

`A274749(eq[10, A185782(n+1)])`
-/

namespace A274748.P4869605348034023896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274748.P4869605348034023896

/-!
# A274750: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274750, the canonical program `A274750.P2413686563772400519` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274750 has offset 1).

The definition of A274750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274750.P2413686563772400519

`2*a(n-1)+7*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=9, a(2)=34, a(3)=133`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274750

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P2413686563772400519.Spec : Prop :=
  ∀ n, P2413686563772400519.a n = A274750 (n + 1)

theorem P2413686563772400519.correct : P2413686563772400519.Spec := by
  intro n
  simp only [A274750, Nat.add_sub_cancel]

end A274750

/-! ## A274750.P11399538404268912245

`A274749(∑[n+2]+4)`
-/

namespace A274750.P11399538404268912245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274750.P11399538404268912245

namespace A274750

/-- `A274749(∑[n+2]+4)` -/
def P11399538404268912245.Spec : Prop :=
  ∀ n, P11399538404268912245.a n = A274750 (n + 1)

end A274750

/-! ## A274750.P17503894589452816086

`lcm((-1)^n, A274749(A167614(n+1)))`
-/

namespace A274750.P17503894589452816086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A274749 (A167614 (n + 1)).toNat)

end

end A274750.P17503894589452816086

namespace A274750

/-- `lcm((-1)^n, A274749(A167614(n+1)))` -/
def P17503894589452816086.Spec : Prop :=
  ∀ n, (P17503894589452816086.a n : ℤ) = A274750 (n + 1)

end A274750

/-! ## A274750.P6061770291359130898

`A274749(A167614(n+1))+A185238(n)`
-/

namespace A274750.P6061770291359130898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A167614 (n + 1)).toNat + A185238 n

end

end A274750.P6061770291359130898

namespace A274750

/-- `A274749(A167614(n+1))+A185238(n)` -/
def P6061770291359130898.Spec : Prop :=
  ∀ n, P6061770291359130898.a n = A274750 (n + 1)

end A274750

/-! ## A274750.P1283860465661743135

`gcd(A000038(n), A274749(A167614(n+1)))`
-/

namespace A274750.P1283860465661743135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274749 (A167614 (n + 1)).toNat)

end

end A274750.P1283860465661743135

namespace A274750

/-- `gcd(A000038(n), A274749(A167614(n+1)))` -/
def P1283860465661743135.Spec : Prop :=
  ∀ n, (P1283860465661743135.a n : ℤ) = A274750 (n + 1)

end A274750

/-!
# A274751: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274751, there is no canonical definition to state claims against.
-/

/-! ## A274751.P11403909078216102321

`A274749(A141214(n)+7)`
-/

namespace A274751.P11403909078216102321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A141214 n + 7).toNat

end

end A274751.P11403909078216102321

/-! ## A274751.P17755326572696227169

`A274749(A052905(n)+9)`
-/

namespace A274751.P17755326572696227169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A052905 n + 9).toNat

end

end A274751.P17755326572696227169

/-! ## A274751.P343571494524009645

`A274749(A167614(n+2)+1)`
-/

namespace A274751.P343571494524009645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A167614 (n + 2) + 1).toNat

end

end A274751.P343571494524009645

/-! ## A274751.P17253453704998853868

`A274749(A166136(n+2)-2)`
-/

namespace A274751.P17253453704998853868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A166136 (n + 2) - 2).toNat

end

end A274751.P17253453704998853868

/-! ## A274751.P5645075689400142608

`A274749(A034856(n+2)+6)`
-/

namespace A274751.P5645075689400142608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A034856 (n + 2) + 6).toNat

end

end A274751.P5645075689400142608

/-!
# A274752: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274752, there is no canonical definition to state claims against.
-/

/-! ## A274752.P15318635309172775972

`A274749(A167499(n+3))`
-/

namespace A274752.P15318635309172775972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A167499 (n + 3)).toNat

end

end A274752.P15318635309172775972

/-! ## A274752.P8031164159523355153

`A274749(A155212(n)+13)`
-/

namespace A274752.P8031164159523355153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A155212 n + 13).toNat

end

end A274752.P8031164159523355153

/-! ## A274752.P3121705001663092926

`A274749(A056000(n)+15)`
-/

namespace A274752.P3121705001663092926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A056000 n + 15).toNat

end

end A274752.P3121705001663092926

/-! ## A274752.P16088670562802930463

`A274749(eq[7, A066657(n)])`
-/

namespace A274752.P16088670562802930463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274752.P16088670562802930463

/-! ## A274752.P18087239077591656881

`A274749(eq[6, A131818(n+1)])`
-/

namespace A274752.P18087239077591656881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274752.P18087239077591656881

/-!
# A274753: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274753, there is no canonical definition to state claims against.
-/

/-! ## A274753.P4009972562098326176

`A274749(A166136(n+4))`
-/

namespace A274753.P4009972562098326176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A166136 (n + 4)).toNat

end

end A274753.P4009972562098326176

/-! ## A274753.P13157259294472381360

`A274749(A000217(n+5)+6)`
-/

namespace A274753.P13157259294472381360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A000217 (n + 5) + 6).toNat

end

end A274753.P13157259294472381360

/-! ## A274753.P13033420539377930543

`A274749(A141214(n+2)+9)`
-/

namespace A274753.P13033420539377930543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A141214 (n + 2) + 9).toNat

end

end A274753.P13033420539377930543

/-! ## A274753.P15773005076804259644

`A274749(eq[7, A131818(n+1)])`
-/

namespace A274753.P15773005076804259644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274753.P15773005076804259644

/-! ## A274753.P6054326447553207426

`A274749(Δ[A023545(n+1)]+10)`
-/

namespace A274753.P6054326447553207426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (f1 (n + 1) - f1 n + 10).toNat

end

end A274753.P6054326447553207426

/-!
# A274754: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-1,-2) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274754, there is no canonical definition to state claims against.
-/

/-! ## A274754.P3018496636600345291

`A274749(eq[11, A066657(n)])`
-/

namespace A274754.P3018496636600345291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274754.P3018496636600345291

/-! ## A274754.P7073487132622192493

`A274749(A166136(n+5)+1)`
-/

namespace A274754.P7073487132622192493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A166136 (n + 5) + 1).toNat

end

end A274754.P7073487132622192493

/-! ## A274754.P17930156714215346742

`A274749(A167614(n+5)+4)`
-/

namespace A274754.P17930156714215346742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (A167614 (n + 5) + 4).toNat

end

end A274754.P17930156714215346742

/-! ## A274754.P17465280485192256659

`A274749(eq[8, A131818(n+1)])`
-/

namespace A274754.P17465280485192256659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274754.P17465280485192256659

/-! ## A274754.P8288924357835009390

`A274749(eq[8, A141169(n)]+1)`
-/

namespace A274754.P8288924357835009390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274754.P8288924357835009390

/-!
# A274755: Repunits with even indices multiplied by 99, i.e., 99*(11, 1111, 111111, 11111111, ...).

The programs for A274755, the canonical program `A274755.P15843105296174917523` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274755 has offset 1).

The definition of A274755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274755.P15843105296174917523

`11*(10^(2*(n+1))-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274755

/-- `11*(10^(2*(n+1))-1)` -/
def P15843105296174917523.Spec : Prop :=
  ∀ n, P15843105296174917523.a n = A274755 (n + 1)

theorem P15843105296174917523.correct : P15843105296174917523.Spec := by
  intro n
  simp only [A274755, Nat.add_sub_cancel]

end A274755

/-! ## A274755.P1924510907184130711

`∑[Δ[-(10*a(n-1))]²]` with `a(0)=3`
-/

namespace A274755.P1924510907184130711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  -(10 * f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274755.P1924510907184130711

namespace A274755

/-- `∑[Δ[-(10*a(n-1))]²]` -/
def P1924510907184130711.Spec : Prop :=
  ∀ n, P1924510907184130711.a n = A274755 (n + 1)

end A274755

/-! ## A274755.P11586173507632436701

`∑[abs(Δ[A133383(n)])]`
-/

namespace A274755.P11586173507632436701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274755.P11586173507632436701

namespace A274755

/-- `∑[abs(Δ[A133383(n)])]` -/
def P11586173507632436701.Spec : Prop :=
  ∀ n, P11586173507632436701.a n = A274755 (n + 1)

end A274755

/-! ## A274755.P3795105840895103103

`∑[Δ[A199690(n)]²]`
-/

namespace A274755.P3795105840895103103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274755.P3795105840895103103

namespace A274755

/-- `∑[Δ[A199690(n)]²]` -/
def P3795105840895103103.Spec : Prop :=
  ∀ n, P3795105840895103103.a n = A274755 (n + 1)

end A274755

/-! ## A274755.P14740014406493985397

`A133383(n+1)-10`
-/

namespace A274755.P14740014406493985397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133383 (n + 1) - 10

end

end A274755.P14740014406493985397

namespace A274755

/-- `A133383(n+1)-10` -/
def P14740014406493985397.Spec : Prop :=
  ∀ n, P14740014406493985397.a n = A274755 (n + 1)

theorem P14740014406493985397.correct : P14740014406493985397.Spec := by
  intro n
  simp only [A274755, Nat.add_sub_cancel, A274755.P14740014406493985397.a, A274755.P15843105296174917523.a, A133383, A133383.P16970216351895684042.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A274755

/-!
# A274756: Values of n such that 2*n+1 and 6*n+1 are both triangular numbers.

The programs for A274756, there is no canonical definition to state claims against.
-/

/-! ## A274756.P855147967381513003

`floor(A254285(n+1)/2)`
-/

namespace A274756.P855147967381513003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254285 (n + 1) : ℚ) / 2⌋

end

end A274756.P855147967381513003

/-! ## A274756.P9967927985713452086

`floor(A128862(A014601(n)+1)/2)`
-/

namespace A274756.P9967927985713452086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128862 (A014601 n + 1).toNat : ℚ) / 2⌋

end

end A274756.P9967927985713452086

/-! ## A274756.P5142439310178605972

`floor(A128862(A005408(n)+A000035(n))/2)`
-/

namespace A274756.P5142439310178605972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128862 (A005408 n + A000035 n).toNat : ℚ) / 2⌋

end

end A274756.P5142439310178605972

/-! ## A274756.P6907176500534668574

`(A254285(n+1)+A008683(A151800(n)))/2`
-/

namespace A274756.P6907176500534668574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254285 (n + 1) + A008683 (A151800 n).toNat : ℚ) / 2

end

end A274756.P6907176500534668574

/-! ## A274756.P4535343551151244001

`(A254285(n+1)+A008836(A020639(3*(n+1))))/2`
-/

namespace A274756.P4535343551151244001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254285 (n + 1) + A008836 (A020639 (3 * (n + 1))).toNat : ℚ) / 2

end

end A274756.P4535343551151244001

/-!
# A274757: Numbers k such that 6*k+1 is a triangular number (A000217).

The programs for A274757, the canonical program `A274757.P1228697165143221078` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274757 has offset 1).

The definition of A274757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274757.P6752601047364601788

`3*(2*(n+1)-1)*(2*(n+1)+(-1)^(n+1)-1)/4`
-/

namespace A274757.P6752601047364601788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((2 * (n + 1) : ℤ) - 1) * ((2 * (n + 1) : ℤ) + (-1) ^ (n + 1) - 1) : ℚ) / 4

end

end A274757.P6752601047364601788

namespace A274757

/-- `3*(2*(n+1)-1)*(2*(n+1)+(-1)^(n+1)-1)/4` -/
def P6752601047364601788.Spec : Prop :=
  ∀ n, P6752601047364601788.a n = (A274757 (n + 1) : ℚ)

theorem P6752601047364601788.correct : P6752601047364601788.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274757, Nat.add_sub_cancel, A274757.P6752601047364601788.a, A274757.P1228697165143221078.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274757, Nat.add_sub_cancel, A274757.P6752601047364601788.a, A274757.P1228697165143221078.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274757

/-! ## A274757.P1228697165143221078

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=9, a(2)=15, a(3)=42, a(4)=54`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274757

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1228697165143221078.Spec : Prop :=
  ∀ n, P1228697165143221078.a n = A274757 (n + 1)

theorem P1228697165143221078.correct : P1228697165143221078.Spec := by
  intro n
  simp only [A274757, Nat.add_sub_cancel]

end A274757

/-! ## A274757.P1589303955945283163

`∑[3*(2*lcm(2, n)-n)]`
-/

namespace A274757.P1589303955945283163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * Nat.lcm 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P1589303955945283163

namespace A274757

/-- `∑[3*(2*lcm(2, n)-n)]` -/
def P1589303955945283163.Spec : Prop :=
  ∀ n, P1589303955945283163.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P537326186693403332

`∑[n*3^(n%2+1)]`
-/

namespace A274757.P537326186693403332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ (n % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P537326186693403332

namespace A274757

/-- `∑[n*3^(n%2+1)]` -/
def P537326186693403332.Spec : Prop :=
  ∀ n, (P537326186693403332.a n : ℤ) = A274757 (n + 1)

end A274757

/-! ## A274757.P2996223513231421933

`∑[n*3^gcd(2, n+1)]`
-/

namespace A274757.P2996223513231421933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P2996223513231421933

namespace A274757

/-- `∑[n*3^gcd(2, n+1)]` -/
def P2996223513231421933.Spec : Prop :=
  ∀ n, (P2996223513231421933.a n : ℤ) = A274757 (n + 1)

end A274757

/-! ## A274757.P14946541857692008657

`∑[3*n*and(3, 2*n+1)]`
-/

namespace A274757.P14946541857692008657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.land 3 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P14946541857692008657

namespace A274757

/-- `∑[3*n*and(3, 2*n+1)]` -/
def P14946541857692008657.Spec : Prop :=
  ∀ n, (P14946541857692008657.a n : ℤ) = A274757 (n + 1)

end A274757

/-! ## A274757.P15304109585314201055

`∑[2*n*gcd(n-1, 2*n)²+n]`
-/

namespace A274757.P15304109585314201055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P15304109585314201055

namespace A274757

/-- `∑[2*n*gcd(n-1, 2*n)²+n]` -/
def P15304109585314201055.Spec : Prop :=
  ∀ n, (P15304109585314201055.a n : ℤ) = A274757 (n + 1)

end A274757

/-! ## A274757.P426492562919047381

`3*A074378(n)`
-/

namespace A274757.P426492562919047381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074378 n

end

end A274757.P426492562919047381

namespace A274757

/-- `3*A074378(n)` -/
def P426492562919047381.Spec : Prop :=
  ∀ n, P426492562919047381.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P4529467247414225781

`A132356(n)+∑[n]`
-/

namespace A274757.P4529467247414225781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274757.P4529467247414225781

namespace A274757

/-- `A132356(n)+∑[n]` -/
def P4529467247414225781.Spec : Prop :=
  ∀ n, P4529467247414225781.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P10819336182157011922

`∑[n*A010707(n)]`
-/

namespace A274757.P10819336182157011922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P10819336182157011922

namespace A274757

/-- `∑[n*A010707(n)]` -/
def P10819336182157011922.Spec : Prop :=
  ∀ n, P10819336182157011922.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P7400195981354961747

`3*(A266883(n)-1)`
-/

namespace A274757.P7400195981354961747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A266883 n - 1)

end

end A274757.P7400195981354961747

namespace A274757

/-- `3*(A266883(n)-1)` -/
def P7400195981354961747.Spec : Prop :=
  ∀ n, P7400195981354961747.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P12778893183267770755

`3/2*A014494(n)`
-/

namespace A274757.P12778893183267770755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A014494 n : ℚ)

end

end A274757.P12778893183267770755

namespace A274757

/-- `3/2*A014494(n)` -/
def P12778893183267770755.Spec : Prop :=
  ∀ n, P12778893183267770755.a n = (A274757 (n + 1) : ℚ)

end A274757

/-! ## A274757.P3792182702237705955

`∑[n*(A010698(n)+1)]`
-/

namespace A274757.P3792182702237705955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010698 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P3792182702237705955

namespace A274757

/-- `∑[n*(A010698(n)+1)]` -/
def P3792182702237705955.Spec : Prop :=
  ∀ n, P3792182702237705955.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P10183193343101869819

`∑[n*(A010688(n)+2)]`
-/

namespace A274757.P10183193343101869819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010688 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P10183193343101869819

namespace A274757

/-- `∑[n*(A010688(n)+2)]` -/
def P10183193343101869819.Spec : Prop :=
  ∀ n, P10183193343101869819.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P4050500012333653510

`∑[n*(A010715(n)-1)]`
-/

namespace A274757.P4050500012333653510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010715 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274757.P4050500012333653510

namespace A274757

/-- `∑[n*(A010715(n)-1)]` -/
def P4050500012333653510.Spec : Prop :=
  ∀ n, P4050500012333653510.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P4247227363202257763

`2*A132354(n)-∑[n]`
-/

namespace A274757.P4247227363202257763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132354 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274757.P4247227363202257763

namespace A274757

/-- `2*A132354(n)-∑[n]` -/
def P4247227363202257763.Spec : Prop :=
  ∀ n, P4247227363202257763.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P11558851273144779132

`A154260(n+1)+∑[2*n]`
-/

namespace A274757.P11558851273144779132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154260 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274757.P11558851273144779132

namespace A274757

/-- `A154260(n+1)+∑[2*n]` -/
def P11558851273144779132.Spec : Prop :=
  ∀ n, P11558851273144779132.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P18079777071558432085

`∑[n]+2*A219190(n+1)`
-/

namespace A274757.P18079777071558432085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A219190 (n + 1)

end

end A274757.P18079777071558432085

namespace A274757

/-- `∑[n]+2*A219190(n+1)` -/
def P18079777071558432085.Spec : Prop :=
  ∀ n, P18079777071558432085.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P16429498825798912066

`3*(A245534(n+1)-(n+1))`
-/

namespace A274757.P16429498825798912066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A245534 (n + 1) - (n + 1 : ℤ))

end

end A274757.P16429498825798912066

namespace A274757

/-- `3*(A245534(n+1)-(n+1))` -/
def P16429498825798912066.Spec : Prop :=
  ∀ n, P16429498825798912066.a n = A274757 (n + 1)

end A274757

/-! ## A274757.P7596751790184339397

`A074378(n)+A014494(n)`
-/

namespace A274757.P7596751790184339397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n + A014494 n

end

end A274757.P7596751790184339397

namespace A274757

/-- `A074378(n)+A014494(n)` -/
def P7596751790184339397.Spec : Prop :=
  ∀ n, P7596751790184339397.a n = A274757 (n + 1)

end A274757

/-!
# A274759: Modified quadranacci series.

The programs for A274759, there is no canonical definition to state claims against.
-/

/-! ## A274759.P17378488984702336967

`A048766(2*A187502(n+1)²)`
-/

namespace A274759.P17378488984702336967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * A187502 (n + 1) ^ 2).toNat

end

end A274759.P17378488984702336967

/-! ## A274759.P8719489003754156150

`A048766(A000700(2*(n+1))*A065678(n))`
-/

namespace A274759.P8719489003754156150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000700 (2 * (n + 1)) * A065678 n).toNat

end

end A274759.P8719489003754156150

/-!
# A274761: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 3, a(1) = 2, a(2) = 5.

The programs for A274761, the canonical program `A274761.P2246715194188723262` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274761 has offset 0).

The definition of A274761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A274761.P2246715194188723262`, by `A274761.P2246715194188723262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274761.P2246715194188723262

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274761

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P2246715194188723262.Spec : Prop :=
  ∀ n, (P2246715194188723262.a n : ℤ) = A274761 n

theorem P2246715194188723262.correct : P2246715194188723262.Spec := by
  intro n
  simp only [A274761]

end A274761

/-! ## A274761.P6305908560033062824

`ogf((-3+x)/(-1+x+x^2+x^3))`
-/

namespace A274761.P6305908560033062824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -1, -1, -1] n

end

end A274761.P6305908560033062824

namespace A274761

/-- `ogf((-3+x)/(-1+x+x^2+x^3))` -/
def P6305908560033062824.Spec : Prop :=
  ∀ n, P6305908560033062824.a n = A274761 n

end A274761

/-! ## A274761.P17835389901242105783

`A001644(n)+Δ[A089068(n)]`
-/

namespace A274761.P17835389901242105783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + (f1 (n + 1) - f1 n)

end

end A274761.P17835389901242105783

namespace A274761

/-- `A001644(n)+Δ[A089068(n)]` -/
def P17835389901242105783.Spec : Prop :=
  ∀ n, P17835389901242105783.a n = A274761 n

end A274761

/-! ## A274761.P10271132870716710966

`A214825(n)+Δ[A020992(n)]`
-/

namespace A274761.P10271132870716710966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (f1 (n + 1) - f1 n)

end

end A274761.P10271132870716710966

namespace A274761

/-- `A214825(n)+Δ[A020992(n)]` -/
def P10271132870716710966.Spec : Prop :=
  ∀ n, P10271132870716710966.a n = A274761 n

end A274761

/-! ## A274761.P8080194019176611056

`A001644(n)+record[A001590(n)]`
-/

namespace A274761.P8080194019176611056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274761.P8080194019176611056

namespace A274761

/-- `A001644(n)+record[A001590(n)]` -/
def P8080194019176611056.Spec : Prop :=
  ∀ n, P8080194019176611056.a n = A274761 n

end A274761

/-! ## A274761.P13527587903075796126

`A214899(n)+A000213(n+1)`
-/

namespace A274761.P13527587903075796126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A000213 (n + 1)

end

end A274761.P13527587903075796126

namespace A274761

/-- `A214899(n)+A000213(n+1)` -/
def P13527587903075796126.Spec : Prop :=
  ∀ n, P13527587903075796126.a n = A274761 n

end A274761

/-! ## A274761.P13712610179332899873

`A275778(n+1)+A000213(n)`
-/

namespace A274761.P13712610179332899873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 (n + 1) + A000213 n

end

end A274761.P13712610179332899873

namespace A274761

/-- `A275778(n+1)+A000213(n)` -/
def P13712610179332899873.Spec : Prop :=
  ∀ n, P13712610179332899873.a n = A274761 n

end A274761

/-! ## A274761.P17729697499010979255

`A141036(n+1)+A141036(n)`
-/

namespace A274761.P17729697499010979255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (n + 1) + A141036 n

end

end A274761.P17729697499010979255

namespace A274761

/-- `A141036(n+1)+A141036(n)` -/
def P17729697499010979255.Spec : Prop :=
  ∀ n, P17729697499010979255.a n = A274761 n

end A274761

/-! ## A274761.P13242197872850807313

`A276658(n+1)+A214727(n)`
-/

namespace A274761.P13242197872850807313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + A214727 n

end

end A274761.P13242197872850807313

namespace A274761

/-- `A276658(n+1)+A214727(n)` -/
def P13242197872850807313.Spec : Prop :=
  ∀ n, P13242197872850807313.a n = A274761 n

end A274761

/-! ## A274761.P23688817610244639

`A001644(n)+A001590(n+2)`
-/

namespace A274761.P23688817610244639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + A001590 (n + 2)

end

end A274761.P23688817610244639

namespace A274761

/-- `A001644(n)+A001590(n+2)` -/
def P23688817610244639.Spec : Prop :=
  ∀ n, P23688817610244639.a n = A274761 n

end A274761

/-! ## A274761.P5022647439206023091

`Δ[A214727(n)]+2*A000213(n)`
-/

namespace A274761.P5022647439206023091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000213 n

end

end A274761.P5022647439206023091

namespace A274761

/-- `Δ[A214727(n)]+2*A000213(n)` -/
def P5022647439206023091.Spec : Prop :=
  ∀ n, P5022647439206023091.a n = A274761 n

end A274761

/-! ## A274761.P4718600495735834030

`A100683(n+1)+A081172(n+1)`
-/

namespace A274761.P4718600495735834030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + A081172 (n + 1)

end

end A274761.P4718600495735834030

namespace A274761

/-- `A100683(n+1)+A081172(n+1)` -/
def P4718600495735834030.Spec : Prop :=
  ∀ n, P4718600495735834030.a n = A274761 n

end A274761

/-! ## A274761.P18214259896757279228

`A020992(n+1)+A000073(n+2)`
-/

namespace A274761.P18214259896757279228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) + A000073 (n + 2)

end

end A274761.P18214259896757279228

namespace A274761

/-- `A020992(n+1)+A000073(n+2)` -/
def P18214259896757279228.Spec : Prop :=
  ∀ n, P18214259896757279228.a n = A274761 n

end A274761

/-! ## A274761.P6462398209109471562

`A145027(n+1)+Δ[Δ[A000073(n)]]`
-/

namespace A274761.P6462398209109471562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A274761.P6462398209109471562

namespace A274761

/-- `A145027(n+1)+Δ[Δ[A000073(n)]]` -/
def P6462398209109471562.Spec : Prop :=
  ∀ n, P6462398209109471562.a n = A274761 n

end A274761

/-! ## A274761.P6336120425261825281

`A214899(n+1)+Δ[Δ[A001590(n+1)]]`
-/

namespace A274761.P6336120425261825281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 1) + (f1 (n + 1) - f1 n)

end

end A274761.P6336120425261825281

namespace A274761

/-- `A214899(n+1)+Δ[Δ[A001590(n+1)]]` -/
def P6336120425261825281.Spec : Prop :=
  ∀ n, P6336120425261825281.a n = A274761 n

end A274761

/-! ## A274761.P2808389312452756210

`A001590(n+1)+2*A213816(2*n+1)`
-/

namespace A274761.P2808389312452756210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + 2 * A213816 (2 * n + 1)

end

end A274761.P2808389312452756210

namespace A274761

/-- `A001590(n+1)+2*A213816(2*n+1)` -/
def P2808389312452756210.Spec : Prop :=
  ∀ n, P2808389312452756210.a n = A274761 n

end A274761

/-! ## A274761.P12077552881938836754

`A000073(n)+A075676(n)+A075536(n)`
-/

namespace A274761.P12077552881938836754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A075676 n + A075536 n)

end

end A274761.P12077552881938836754

namespace A274761

/-- `A000073(n)+A075676(n)+A075536(n)` -/
def P12077552881938836754.Spec : Prop :=
  ∀ n, P12077552881938836754.a n = A274761 n

end A274761

/-! ## A274761.P3399020904914083603

`∑[A000213(n)]+A001644(n)-A000213(n)`
-/

namespace A274761.P3399020904914083603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001644 n - A000213 n)

end

end A274761.P3399020904914083603

namespace A274761

/-- `∑[A000213(n)]+A001644(n)-A000213(n)` -/
def P3399020904914083603.Spec : Prop :=
  ∀ n, P3399020904914083603.a n = A274761 n

end A274761

/-! ## A274761.P7076669962314261582

`A000073(n+1)+A001644(n)+A000073(n)`
-/

namespace A274761.P7076669962314261582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A001644 n + A000073 n)

end

end A274761.P7076669962314261582

namespace A274761

/-- `A000073(n+1)+A001644(n)+A000073(n)` -/
def P7076669962314261582.Spec : Prop :=
  ∀ n, P7076669962314261582.a n = A274761 n

end A274761

/-! ## A274761.P9552943766805613315

`A276658(n+1)+A275778(n)+A000073(n)`
-/

namespace A274761.P9552943766805613315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + (A275778 n + A000073 n)

end

end A274761.P9552943766805613315

namespace A274761

/-- `A276658(n+1)+A275778(n)+A000073(n)` -/
def P9552943766805613315.Spec : Prop :=
  ∀ n, P9552943766805613315.a n = A274761 n

end A274761

/-!
# A274762: Number of sequences with up to n copies each of 1,2,...,n.

The programs for A274762, there is no canonical definition to state claims against.
-/

/-! ## A274762.P16306488512347726735

`A308292(∑[4*n])`
-/

namespace A274762.P16306488512347726735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274762.P16306488512347726735

/-!
# A274765: Cyclops numbers with circular digits {0,6,8,9}.

The programs for A274765, there is no canonical definition to state claims against.
-/

/-! ## A274765.P10925314346146522067

`∩[A001743(n+1), A134808(n+1)]`
-/

namespace A274765.P10925314346146522067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274765.P10925314346146522067

/-! ## A274765.P17189259796913065878

`∩[A054047(A023725(n+1)), A134808(n+1)]`
-/

namespace A274765.P17189259796913065878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (A023725 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274765.P17189259796913065878

/-! ## A274765.P4818466648015193711

`∩[A001744(A023725(n+1)+1), A134808(n+1)]`
-/

namespace A274765.P4818466648015193711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A023725 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274765.P4818466648015193711

/-! ## A274765.P8843234263803053246

`∩[A072960(A023725(n+1)+1), A134808(n+1)]`
-/

namespace A274765.P8843234263803053246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (A023725 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274765.P8843234263803053246

/-!
# A274766: Multiplication of pair of contiguous repunits, i.e., (0*1, 1*11, 11*111, 111*1111, 1111*11111, ...).

The programs for A274766, the canonical program `A274766.P3261647422136751783` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274766 has offset 0).

The definition of A274766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274766.P3261647422136751783

`A002275(n)*A002275(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274766

/-- `A002275(n)*A002275(n+1)` -/
def P3261647422136751783.Spec : Prop :=
  ∀ n, P3261647422136751783.a n = A274766 n

theorem P3261647422136751783.correct : P3261647422136751783.Spec := by
  intro n
  simp only [A274766]

end A274766

/-! ## A274766.P15800599537626873598

`(10^n-1)*(10^(n+1)-1)/81`
-/

namespace A274766.P15800599537626873598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 ^ n : ℤ) - 1) * ((10 ^ (n + 1) : ℤ) - 1) : ℚ) / 81

end

end A274766.P15800599537626873598

namespace A274766

/-- `(10^n-1)*(10^(n+1)-1)/81` -/
def P15800599537626873598.Spec : Prop :=
  ∀ n, P15800599537626873598.a n = (A274766 n : ℚ)

end A274766

/-! ## A274766.P10289774269971063200

`lcm(floor(10^n/9), ∑[10^n])`
-/

namespace A274766.P10289774269971063200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(10 ^ n : ℚ) / 9⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274766.P10289774269971063200

namespace A274766

/-- `lcm(floor(10^n/9), ∑[10^n])` -/
def P10289774269971063200.Spec : Prop :=
  ∀ n, (P10289774269971063200.a n : ℤ) = A274766 n

end A274766

/-! ## A274766.P5325140149166788397

`∑[floor(10^n/9)*A003953(n)]`
-/

namespace A274766.P5325140149166788397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ * A003953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274766.P5325140149166788397

namespace A274766

/-- `∑[floor(10^n/9)*A003953(n)]` -/
def P5325140149166788397.Spec : Prop :=
  ∀ n, P5325140149166788397.a n = A274766 n

end A274766

/-! ## A274766.P13538422147446692028

`abs(Δ[A014824(n)]*A002275(n))`
-/

namespace A274766.P13538422147446692028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A002275 n|

end

end A274766.P13538422147446692028

namespace A274766

/-- `abs(Δ[A014824(n)]*A002275(n))` -/
def P13538422147446692028.Spec : Prop :=
  ∀ n, P13538422147446692028.a n = A274766 n

end A274766

/-! ## A274766.P8251866017285953586

`A099638(n+1)-A003555(n+1)`
-/

namespace A274766.P8251866017285953586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099638 (n + 1) - A003555 (n + 1)

end

end A274766.P8251866017285953586

namespace A274766

/-- `A099638(n+1)-A003555(n+1)` -/
def P8251866017285953586.Spec : Prop :=
  ∀ n, P8251866017285953586.a n = A274766 n

end A274766

/-! ## A274766.P9286924284608867169

`A002277(n)/3*A000042(n+1)`
-/

namespace A274766.P9286924284608867169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3 * (A000042 (n + 1) : ℚ)

end

end A274766.P9286924284608867169

namespace A274766

/-- `A002277(n)/3*A000042(n+1)` -/
def P9286924284608867169.Spec : Prop :=
  ∀ n, P9286924284608867169.a n = (A274766 n : ℚ)

end A274766

/-! ## A274766.P3650804750120652200

`A002275(n)²+A099814(n)-A002275(n)`
-/

namespace A274766.P3650804750120652200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n ^ 2 + (A099814 n - A002275 n)

end

end A274766.P3650804750120652200

namespace A274766

/-- `A002275(n)²+A099814(n)-A002275(n)` -/
def P3650804750120652200.Spec : Prop :=
  ∀ n, P3650804750120652200.a n = A274766 n

end A274766

/-! ## A274766.P1816077965824543164

`(A002278(n)-A002277(n))*A000042(n+1)`
-/

namespace A274766.P1816077965824543164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002278 n - A002277 n) * A000042 (n + 1)

end

end A274766.P1816077965824543164

namespace A274766

/-- `(A002278(n)-A002277(n))*A000042(n+1)` -/
def P1816077965824543164.Spec : Prop :=
  ∀ n, P1816077965824543164.a n = A274766 n

end A274766

/-! ## A274766.P16819106257595394502

`(A000042(n+1)-A011557(n))*A000042(n+1)`
-/

namespace A274766.P16819106257595394502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000042 (n + 1) - A011557 n) * A000042 (n + 1)

end

end A274766.P16819106257595394502

namespace A274766

/-- `(A000042(n+1)-A011557(n))*A000042(n+1)` -/
def P16819106257595394502.Spec : Prop :=
  ∀ n, P16819106257595394502.a n = A274766 n

end A274766

/-!
# A274768: Lexicographically earliest increasing sequence a, b, c, ... such that every partial product (1-x^a), (1-x^a)(1-x^b), (1-x^a)(1-x^b)(1-x^c), ... has coefficients -1, 0, 1 only.

The programs for A274768, there is no canonical definition to state claims against.
-/

/-! ## A274768.P10446374414102381840

`record[A057859(A162407(n))]`
-/

namespace A274768.P10446374414102381840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (A162407 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274768.P10446374414102381840

/-! ## A274768.P1589784536030504668

`eq[A029414(n), A245092(A298100(n+1))]`
-/

namespace A274768.P1589784536030504668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A298100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274768.P1589784536030504668

/-! ## A274768.P7191287313157403257

`lt[A017910(n), A193722(A177744(n+1))]`
-/

namespace A274768.P7191287313157403257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193722 (A177744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274768.P7191287313157403257

/-!
# A274771: Number of primes <= n-th Carmichael lambda number.

The programs for A274771, there is no canonical definition to state claims against.
-/

/-! ## A274771.P16738298068747896416

`A000720(A002322(n+1))`
-/

namespace A274771.P16738298068747896416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002322 (n + 1)).toNat

end

end A274771.P16738298068747896416

/-! ## A274771.P12818397256561056958

`A000720(A263027(n+1)-1)`
-/

namespace A274771.P12818397256561056958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A263027 (n + 1) - 1).toNat

end

end A274771.P12818397256561056958

/-! ## A274771.P7158039667408814109

`A230980(A002322(abs(xor(n, -1))))`
-/

namespace A274771.P7158039667408814109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002322 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A274771.P7158039667408814109

/-! ## A274771.P16296330676637300203

`A230980(A002322(Δ[n²]-n))`
-/

namespace A274771.P16296330676637300203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002322 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A274771.P16296330676637300203

/-! ## A274771.P2673177611502301802

`A000720(1-A277127(n+1)+n)`
-/

namespace A274771.P2673177611502301802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A274771.P2673177611502301802

/-! ## A274771.P15041532352645937198

`A230980(A002322(n+1)%(n+1))`
-/

namespace A274771.P15041532352645937198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A002322 (n + 1)) (n + 1 : ℤ)).toNat

end

end A274771.P15041532352645937198

/-! ## A274771.P8813772514377167434

`A230980(lcm((-1)^n, A002322(n+1)))`
-/

namespace A274771.P8813772514377167434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lcm ((-1) ^ n) (A002322 (n + 1)))

end

end A274771.P8813772514377167434

/-! ## A274771.P12302750671407000477

`A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A034380(n+1))`
-/

namespace A274771.P12302750671407000477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P12302750671407000477

/-! ## A274771.P5462161591262811663

`A000720((1-A051953(n+1)+n)/A034380(n+1))`
-/

namespace A274771.P5462161591262811663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P5462161591262811663

/-! ## A274771.P10429286212077594975

`A000720(∏{p}[n+1, #-1]*A003557(n+1)/A034380(n+1))`
-/

namespace A274771.P10429286212077594975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P10429286212077594975

/-! ## A274771.P8801149382403913471

`A000720((A048865(n+1)+A048864(n+1))/A034380(n+1))`
-/

namespace A274771.P8801149382403913471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P8801149382403913471

/-! ## A274771.P4720777366183560721

`A000720((A300725(n+1)+A300724(n+1))/A034380(n+1))`
-/

namespace A274771.P4720777366183560721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A300725 (n + 1) + A300724 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P4720777366183560721

/-! ## A274771.P14713138393246296288

`A000720((A317841(n+1)+A317839(n+1))/A034380(n+1))`
-/

namespace A274771.P14713138393246296288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A317841 (n + 1) + A317839 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A274771.P14713138393246296288

/-! ## A274771.P12772927442286945005

`A056172(2*A002322(n+1))`
-/

namespace A274771.P12772927442286945005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A002322 (n + 1)).toNat

end

end A274771.P12772927442286945005

/-! ## A274771.P8026735287144040478

`A056172(A002322(n+1)+A002322(n+1)+1)`
-/

namespace A274771.P8026735287144040478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A002322 (n + 1) + (A002322 (n + 1) + 1)).toNat

end

end A274771.P8026735287144040478

/-! ## A274771.P9071235498298599001

`A056811(A002322(n+1)²)`
-/

namespace A274771.P9071235498298599001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A002322 (n + 1) ^ 2).toNat

end

end A274771.P9071235498298599001

/-! ## A274771.P3601409939757398569

`A056811(A002322(n+1)^2)`
-/

namespace A274771.P3601409939757398569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A002322 (n + 1) ^ 2).toNat

end

end A274771.P3601409939757398569

/-! ## A274771.P6904963264351755664

`A056811((A002322(n+1)+1)*A002322(n+1))`
-/

namespace A274771.P6904963264351755664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((A002322 (n + 1) + 1) * A002322 (n + 1)).toNat

end

end A274771.P6904963264351755664

/-!
# A274772: Zero together with the partial sums of A056640.

The programs for A274772, the canonical program `A274772.P16871443857063868774` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274772 has offset 0).

The definition of A274772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274772.P2936865882476966255

`(4*n^4+8*n^3+2*n²+4*n+3*(1-(-1)^n))/24`
-/

namespace A274772.P2936865882476966255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 4 + 8 * n ^ 3 + 2 * n ^ 2 + 4 * n : ℤ) + 3 * (1 - (-1) ^ n) : ℚ) / 24

end

end A274772.P2936865882476966255

namespace A274772

/-- `(4*n^4+8*n^3+2*n²+4*n+3*(1-(-1)^n))/24` -/
def P2936865882476966255.Spec : Prop :=
  ∀ n, P2936865882476966255.a n = (A274772 n : ℚ)

theorem P2936865882476966255.correct : P2936865882476966255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A274772, Nat.add_sub_cancel, A274772.P2936865882476966255.a, A274772.P16871443857063868774.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h1 := ih (m + 5) (by omega)
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h5 := ih (m + 1) (by omega)
      have h6 := ih m (by omega)
      simp only [A274772, Nat.add_sub_cancel, A274772.P2936865882476966255.a, A274772.P16871443857063868774.a, SequenceMachineLib.memo_apply] at h1 h2 h4 h5 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega, show m + 5 < m + 6 by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m + 1 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h1 h2 h4 h5 h6 ⊢
      rw [← h1, ← h2, ← h4, ← h5, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274772

/-! ## A274772.P16871443857063868774

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=24, a(4)=66, a(5)=149`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274772

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P16871443857063868774.Spec : Prop :=
  ∀ n, P16871443857063868774.a n = A274772 n

theorem P16871443857063868774.correct : P16871443857063868774.Spec := by
  intro n
  simp only [A274772]

end A274772

/-! ## A274772.P2030157444549776792

`∑[ceil(C(Δ[n²], 3)/2)]`
-/

namespace A274772.P2030157444549776792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274772.P2030157444549776792

namespace A274772

/-- `∑[ceil(C(Δ[n²], 3)/2)]` -/
def P2030157444549776792.Spec : Prop :=
  ∀ n, P2030157444549776792.a n = A274772 n

end A274772

/-! ## A274772.P16603960359079812419

`∑[∑[∑[a(n-2)+8]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A274772.P16603960359079812419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 2) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274772.P16603960359079812419

namespace A274772

/-- `∑[∑[∑[a(n-2)+8]]]` -/
def P16603960359079812419.Spec : Prop :=
  ∀ n, (P16603960359079812419.a n : ℤ) = A274772 n

end A274772

/-! ## A274772.P13152146572032252396

`∑[∑[A255840(n)]]`
-/

namespace A274772.P13152146572032252396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274772.P13152146572032252396

namespace A274772

/-- `∑[∑[A255840(n)]]` -/
def P13152146572032252396.Spec : Prop :=
  ∀ n, P13152146572032252396.a n = A274772 n

end A274772

/-! ## A274772.P202478479161026566

`ceil((n+2)*A005900(n)/4)`
-/

namespace A274772.P202478479161026566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * ((A005900 n : ℚ) / 4)⌉

end

end A274772.P202478479161026566

namespace A274772

/-- `ceil((n+2)*A005900(n)/4)` -/
def P202478479161026566.Spec : Prop :=
  ∀ n, P202478479161026566.a n = A274772 n

end A274772

/-! ## A274772.P11230263499865917570

`A212964(n)+A071239(n)`
-/

namespace A274772.P11230263499865917570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n + A071239 n

end

end A274772.P11230263499865917570

namespace A274772

/-- `A212964(n)+A071239(n)` -/
def P11230263499865917570.Spec : Prop :=
  ∀ n, P11230263499865917570.a n = A274772 n

end A274772

/-! ## A274772.P14457891623673892115

`A325517(n)+A280186(n)`
-/

namespace A274772.P14457891623673892115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n + A280186 n

end

end A274772.P14457891623673892115

namespace A274772

/-- `A325517(n)+A280186(n)` -/
def P14457891623673892115.Spec : Prop :=
  ∀ n, P14457891623673892115.a n = A274772 n

end A274772

/-! ## A274772.P16239007395224733656

`∑[A005900(n)]-A002620(n)`
-/

namespace A274772.P16239007395224733656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 n

end

end A274772.P16239007395224733656

namespace A274772

/-- `∑[A005900(n)]-A002620(n)` -/
def P16239007395224733656.Spec : Prop :=
  ∀ n, P16239007395224733656.a n = A274772 n

end A274772

/-! ## A274772.P1317457907848330417

`∑[A174723(n+1)]-A055232(n)`
-/

namespace A274772.P1317457907848330417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055232 n

end

end A274772.P1317457907848330417

namespace A274772

/-- `∑[A174723(n+1)]-A055232(n)` -/
def P1317457907848330417.Spec : Prop :=
  ∀ n, P1317457907848330417.a n = A274772 n

end A274772

/-! ## A274772.P14222723739299382112

`∑[A056640(n+1)]-A056640(n+1)`
-/

namespace A274772.P14222723739299382112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056640 (n + 1)

end

end A274772.P14222723739299382112

namespace A274772

/-- `∑[A056640(n+1)]-A056640(n+1)` -/
def P14222723739299382112.Spec : Prop :=
  ∀ n, P14222723739299382112.a n = A274772 n

end A274772

/-! ## A274772.P12344211149210177134

`∑[2*A289179(n+1)]-A289179(n+1)`
-/

namespace A274772.P12344211149210177134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289179 (n + 1)

end

end A274772.P12344211149210177134

namespace A274772

/-- `∑[2*A289179(n+1)]-A289179(n+1)` -/
def P12344211149210177134.Spec : Prop :=
  ∀ n, P12344211149210177134.a n = A274772 n

end A274772

/-! ## A274772.P15540553405495341164

`A006325(n+1)-A002620(n)`
-/

namespace A274772.P15540553405495341164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) - A002620 n

end

end A274772.P15540553405495341164

namespace A274772

/-- `A006325(n+1)-A002620(n)` -/
def P15540553405495341164.Spec : Prop :=
  ∀ n, P15540553405495341164.a n = A274772 n

end A274772

/-! ## A274772.P6850048464104627969

`A002415(n+1)+A002415(n)-A002620(n)`
-/

namespace A274772.P6850048464104627969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A002415 n - A002620 n)

end

end A274772.P6850048464104627969

namespace A274772

/-- `A002415(n+1)+A002415(n)-A002620(n)` -/
def P6850048464104627969.Spec : Prop :=
  ∀ n, P6850048464104627969.a n = A274772 n

end A274772

/-! ## A274772.P16809391298316618205

`A006325(n+1)+A019298(n)-A002717(n)`
-/

namespace A274772.P16809391298316618205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A019298 n - A002717 n)

end

end A274772.P16809391298316618205

namespace A274772

/-- `A006325(n+1)+A019298(n)-A002717(n)` -/
def P16809391298316618205.Spec : Prop :=
  ∀ n, P16809391298316618205.a n = A274772 n

end A274772

/-! ## A274772.P2338156641924606920

`∑[A390342(2*n)]`
-/

namespace A274772.P2338156641924606920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390342 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274772.P2338156641924606920

namespace A274772

/-- `∑[A390342(2*n)]` -/
def P2338156641924606920.Spec : Prop :=
  ∀ n, P2338156641924606920.a n = A274772 n

end A274772

/-! ## A274772.P10635678997222745918

`A004526(n+1)+∑[A011894(2*n+1)]`
-/

namespace A274772.P10635678997222745918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274772.P10635678997222745918

namespace A274772

/-- `A004526(n+1)+∑[A011894(2*n+1)]` -/
def P10635678997222745918.Spec : Prop :=
  ∀ n, P10635678997222745918.a n = A274772 n

end A274772

/-!
# A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

The programs for A274773, the canonical program `A274773.P11672624379083383188` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274773 has offset 1).

The definition of A274773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274773.P705020822356666155

`2*abs(C(ceil(sqrt(2*n)), 2)-n)+1`
-/

namespace A274773.P705020822356666155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose ⌈Real.sqrt (2 * n : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ)| + 1

end

end A274773.P705020822356666155

namespace A274773

/-- `2*abs(C(ceil(sqrt(2*n)), 2)-n)+1` -/
def P705020822356666155.Spec : Prop :=
  ∀ n, P705020822356666155.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274773

/-- `2*A053616(n)+1` -/
def P11672624379083383188.Spec : Prop :=
  ∀ n, P11672624379083383188.a n = A274773 (n + 1)

theorem P11672624379083383188.correct : P11672624379083383188.Spec := by
  intro n
  simp only [A274773, Nat.add_sub_cancel]

end A274773

/-! ## A274773.P3625866657011249854

`or(1, A194959(n+1))`
-/

namespace A274773.P3625866657011249854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194959 (n + 1))

end

end A274773.P3625866657011249854

namespace A274773

/-- `or(1, A194959(n+1))` -/
def P3625866657011249854.Spec : Prop :=
  ∀ n, P3625866657011249854.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P10812422005301793549

`A005843(A053616(n))+1`
-/

namespace A274773.P10812422005301793549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053616 n).toNat + 1

end

end A274773.P10812422005301793549

namespace A274773

/-- `A005843(A053616(n))+1` -/
def P10812422005301793549.Spec : Prop :=
  ∀ n, P10812422005301793549.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P15841382649434434039

`A109613(A194959(n+1))`
-/

namespace A274773.P15841382649434434039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A194959 (n + 1)).toNat

end

end A274773.P15841382649434434039

namespace A274773

/-- `A109613(A194959(n+1))` -/
def P15841382649434434039.Spec : Prop :=
  ∀ n, P15841382649434434039.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P15271959669892416916

`A008619(4*A053616(n))`
-/

namespace A274773.P15271959669892416916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A053616 n).toNat

end

end A274773.P15271959669892416916

namespace A274773

/-- `A008619(4*A053616(n))` -/
def P15271959669892416916.Spec : Prop :=
  ∀ n, P15271959669892416916.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P15766829379507454598

`A008611(6*A053616(n))`
-/

namespace A274773.P15766829379507454598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A053616 n).toNat

end

end A274773.P15766829379507454598

namespace A274773

/-- `A008611(6*A053616(n))` -/
def P15766829379507454598.Spec : Prop :=
  ∀ n, P15766829379507454598.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P7159274740630977338

`A101776(2*A053616(n)²)`
-/

namespace A274773.P7159274740630977338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (2 * A053616 n ^ 2).toNat

end

end A274773.P7159274740630977338

namespace A274773

/-- `A101776(2*A053616(n)²)` -/
def P7159274740630977338.Spec : Prop :=
  ∀ n, P7159274740630977338.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P578435547814623771

`A004277(A053616(n)+1)-1`
-/

namespace A274773.P578435547814623771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053616 n + 1).toNat - 1

end

end A274773.P578435547814623771

namespace A274773

/-- `A004277(A053616(n)+1)-1` -/
def P578435547814623771.Spec : Prop :=
  ∀ n, P578435547814623771.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P12475356287874880691

`A340507(n)+A194959(n+1)`
-/

namespace A274773.P12475356287874880691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n + A194959 (n + 1)

end

end A274773.P12475356287874880691

namespace A274773

/-- `A340507(n)+A194959(n+1)` -/
def P12475356287874880691.Spec : Prop :=
  ∀ n, P12475356287874880691.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P10514747713558066124

`A157454(comp[∑[n]])`
-/

namespace A274773.P10514747713558066124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274773.P10514747713558066124

namespace A274773

/-- `A157454(comp[∑[n]])` -/
def P10514747713558066124.Spec : Prop :=
  ∀ n, P10514747713558066124.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P11511323603962104123

`abs(A196199(2*n))+1`
-/

namespace A274773.P11511323603962104123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A196199 (2 * n)| + 1

end

end A274773.P11511323603962104123

namespace A274773

/-- `abs(A196199(2*n))+1` -/
def P11511323603962104123.Spec : Prop :=
  ∀ n, P11511323603962104123.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P5458481597393892450

`abs(A381232(2*n))+1`
-/

namespace A274773.P5458481597393892450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A381232 (2 * n)| + 1

end

end A274773.P5458481597393892450

namespace A274773

/-- `abs(A381232(2*n))+1` -/
def P5458481597393892450.Spec : Prop :=
  ∀ n, P5458481597393892450.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P16863278607402547066

`A080513(A253580(2*n))`
-/

namespace A274773.P16863278607402547066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A253580 (2 * n)).toNat

end

end A274773.P16863278607402547066

namespace A274773

/-- `A080513(A253580(2*n))` -/
def P16863278607402547066.Spec : Prop :=
  ∀ n, P16863278607402547066.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P10286792851414309469

`A008619(A253580(2*n)+1)`
-/

namespace A274773.P10286792851414309469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253580 (2 * n) + 1).toNat

end

end A274773.P10286792851414309469

namespace A274773

/-- `A008619(A253580(2*n)+1)` -/
def P10286792851414309469.Spec : Prop :=
  ∀ n, P10286792851414309469.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P8020939544878109844

`A000196(A196199(2*n)²)+1`
-/

namespace A274773.P8020939544878109844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196199 (2 * n) ^ 2).toNat + 1

end

end A274773.P8020939544878109844

namespace A274773

/-- `A000196(A196199(2*n)²)+1` -/
def P8020939544878109844.Spec : Prop :=
  ∀ n, P8020939544878109844.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P7593969703493736665

`A056926(A196199(2*n)²)+1`
-/

namespace A274773.P7593969703493736665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A196199 (2 * n) ^ 2).toNat + 1

end

end A274773.P7593969703493736665

namespace A274773

/-- `A056926(A196199(2*n)²)+1` -/
def P7593969703493736665.Spec : Prop :=
  ∀ n, P7593969703493736665.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P18025751491613566602

`1-A196199(A196199(2*n)²)`
-/

namespace A274773.P18025751491613566602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196199 (A196199 (2 * n) ^ 2).toNat

end

end A274773.P18025751491613566602

namespace A274773

/-- `1-A196199(A196199(2*n)²)` -/
def P18025751491613566602.Spec : Prop :=
  ∀ n, P18025751491613566602.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P17844814609697998841

`A008619(A004741(2*n+1))`
-/

namespace A274773.P17844814609697998841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004741 (2 * n + 1)).toNat

end

end A274773.P17844814609697998841

namespace A274773

/-- `A008619(A004741(2*n+1))` -/
def P17844814609697998841.Spec : Prop :=
  ∀ n, P17844814609697998841.a n = A274773 (n + 1)

end A274773

/-! ## A274773.P11787724615393138095

`abs(A329116(2*n))+1`
-/

namespace A274773.P11787724615393138095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 (2 * n)| + 1

end

end A274773.P11787724615393138095

namespace A274773

/-- `abs(A329116(2*n))+1` -/
def P11787724615393138095.Spec : Prop :=
  ∀ n, P11787724615393138095.a n = A274773 (n + 1)

end A274773

/-!
# A274775: Indices in A006928 where the imbalance between 1's and 2's sets a new record.

The programs for A274775, there is no canonical definition to state claims against.
-/

/-! ## A274775.P11801582810765382059

`A288605(n+1)-A158388(floor(n/3))`
-/

namespace A274775.P11801582810765382059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (n + 1) - A158388 ⌊(n : ℚ) / 3⌋.toNat

end

end A274775.P11801582810765382059

/-! ## A274775.P15671983821114301919

`A288605(n+1)+A033999(A007918(n))`
-/

namespace A274775.P15671983821114301919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (n + 1) + A033999 (A007918 n).toNat

end

end A274775.P15671983821114301919

/-! ## A274775.P15135501589072940873

`A288605(n+1)+A060747(A094497(n))`
-/

namespace A274775.P15135501589072940873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (n + 1) + A060747 (A094497 n).toNat

end

end A274775.P15135501589072940873

/-! ## A274775.P16202220787915201603

`A288605(n+1)+A153881(A065033(n))`
-/

namespace A274775.P16202220787915201603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (n + 1) + A153881 (A065033 n).toNat

end

end A274775.P16202220787915201603

/-! ## A274775.P8096796901579892127

`A288605(n+1)+A153881(A324925(n))`
-/

namespace A274775.P8096796901579892127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (n + 1) + A153881 (A324925 n).toNat

end

end A274775.P8096796901579892127

/-!
# A274776: Irregular triangle read by rows: T(n,k) = number of arrangements of n circles in the affine plane forming k regions, including the regions that do not belong to the circles.

The programs for A274776, there is no canonical definition to state claims against.
-/

/-! ## A274776.P15661329914152213576

`A257921(lcm(16*n+12, Δ[n*floor(n/2)]))`
-/

namespace A274776.P15661329914152213576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (Int.lcm (16 * n + 12 : ℤ) (f1 (n + 1) - f1 n))

end

end A274776.P15661329914152213576

/-! ## A274776.P405539741305230762

`A128580(A070980(n+1))`
-/

namespace A274776.P405539741305230762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (A070980 (n + 1)).toNat

end

end A274776.P405539741305230762

/-! ## A274776.P172715753066018236

`A091393(A226357(n+1))`
-/

namespace A274776.P172715753066018236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (A226357 (n + 1)).toNat

end

end A274776.P172715753066018236

/-! ## A274776.P896424385185107658

`A319574(A072735(n)+2)`
-/

namespace A274776.P896424385185107658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A072735 n + 2).toNat

end

end A274776.P896424385185107658

/-! ## A274776.P9131009705502381705

`and(A073322(n), A202717(n))`
-/

namespace A274776.P9131009705502381705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073322 n) (A202717 n)

end

end A274776.P9131009705502381705

/-!
# A274777: Irregular triangle read by rows: T(n,k) = number of arrangements of n circles in the affine plane forming k regions, excluding the regions that do not belong to the circles.

The programs for A274777, there is no canonical definition to state claims against.
-/

/-! ## A274777.P12690834776789362377

`A080099(p?[A110029(n+1)])`
-/

namespace A274777.P12690834776789362377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A274777.P12690834776789362377

/-! ## A274777.P7818398044118832791

`and(A008566(n), A212665(n+1))`
-/

namespace A274777.P7818398044118832791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008566 n) (A212665 (n + 1))

end

end A274777.P7818398044118832791

/-! ## A274777.P571913786396412582

`A274776(n+1)+Δ[A227690(n+2)]`
-/

namespace A274777.P571913786396412582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274776 (n + 1) + (f1 (n + 1) - f1 n)

end

end A274777.P571913786396412582

/-! ## A274777.P17397475996111396578

`A274776(n+1)+Δ[A286520(n+2)]`
-/

namespace A274777.P17397475996111396578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274776 (n + 1) + (f1 (n + 1) - f1 n)

end

end A274777.P17397475996111396578

/-! ## A274777.P12283251097419692186

`dr(and(A054429(n+1), A334860(n+2)))`
-/

namespace A274777.P12283251097419692186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land (A054429 (n + 1)) (A334860 (n + 2)))

end

end A274777.P12283251097419692186

/-!
# A274779: Numbers whose square is the sum of two positive triangular numbers in exactly one way.

The programs for A274779, there is no canonical definition to state claims against.
-/

/-! ## A274779.P18315535633089859578

`eq[1, A307597(n²)]`
-/

namespace A274779.P18315535633089859578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274779.P18315535633089859578

/-! ## A274779.P16977139949438198717

`lt[abs(1-A307597((n+1)²)), 1]+1`
-/

namespace A274779.P16977139949438198717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A307597 ((n + 1) ^ 2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274779.P16977139949438198717

/-! ## A274779.P12752248627193829097

`∪[A001912(n+2), ∑[lcm(n+1, 2*n)]²+2]`
-/

namespace A274779.P12752248627193829097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A274779.P12752248627193829097

/-! ## A274779.P7048127041270250714

`∪[A001912(n+2), A001505(n)]`
-/

namespace A274779.P7048127041270250714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001505 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274779.P7048127041270250714

/-! ## A274779.P1547183631260499230

`∪[A001912(n+2), A001509(n)]`
-/

namespace A274779.P1547183631260499230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274779.P1547183631260499230

/-! ## A274779.P2984860214436948708

`∪[A001912(n+2), A097300(n)]`
-/

namespace A274779.P2984860214436948708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274779.P2984860214436948708

/-! ## A274779.P10761580644392139233

`lt[A307597(n²), 2%A063581(n)]`
-/

namespace A274779.P10761580644392139233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A063581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274779.P10761580644392139233

/-! ## A274779.P8058919711417704742

`A329679(n+1)+A001912(n+1)`
-/

namespace A274779.P8058919711417704742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329679 (n + 1) + A001912 (n + 1)

end

end A274779.P8058919711417704742

/-! ## A274779.P7518155692477649862

`∪[∑[A207838(n+1)], A001912(n+2)]`
-/

namespace A274779.P7518155692477649862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A274779.P7518155692477649862

/-! ## A274779.P4182308933375409652

`∪[A199365(n+1)-1, A001912(n+2)]`
-/

namespace A274779.P4182308933375409652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199365 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274779.P4182308933375409652

/-!
# A274782: Diagonal of the rational function 1/(1 - x - x y - x z - y z).

The programs for A274782, there is no canonical definition to state claims against.
-/

/-! ## A274782.P629488356119554063

`A049820(A027307(n))+A006318(n)`
-/

namespace A274782.P629488356119554063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A027307 n).toNat + A006318 n

end

end A274782.P629488356119554063

/-! ## A274782.P18293908867054583925

`A001951(A175900(n))-A130519(n)`
-/

namespace A274782.P18293908867054583925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A175900 n).toNat - A130519 n

end

end A274782.P18293908867054583925

/-!
# A274783: Diagonal of the rational function 1/(1 - (w*x*y*z + w*x*y + w*x*z + w*y*z + x*y*z)).

The programs for A274783, there is no canonical definition to state claims against.
-/

/-! ## A274783.P17324470565216946974

`A354553((n+1)*a((n+1)/∏{p}[n+1, #]-1))` with `a(0)=1, a(1)=1`
-/

namespace A274783.P17324470565216946974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A354553 ((n + 1 : ℤ) * a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat).toNat

end

end A274783.P17324470565216946974

/-! ## A274783.P1613846960077246479

`A354553(∑[A361675(n)])`
-/

namespace A274783.P1613846960077246479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354553 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274783.P1613846960077246479

/-! ## A274783.P10591652998721922410

`A000015(A354553(n+1))`
-/

namespace A274783.P10591652998721922410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A354553 (n + 1)).toNat

end

end A274783.P10591652998721922410

/-!
# A274784: Diagonal of the rational function 1/(1-(wxyz + wxy + wxz + wyz + xz + yz)).

The programs for A274784, there is no canonical definition to state claims against.
-/

/-! ## A274784.P5627240854817583684

`A336457(∑[A155642(n)])`
-/

namespace A274784.P5627240854817583684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274784.P5627240854817583684

/-!
# A274785: Diagonal of the rational function 1/(1-(w*x*y*z + w*x*z + w*y + x*y + z)).

The programs for A274785, there is no canonical definition to state claims against.
-/

/-! ## A274785.P18357774325420549118

`A193315(A149528(n))`
-/

namespace A274785.P18357774325420549118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193315 (A149528 n).toNat

end

end A274785.P18357774325420549118

/-!
# A274786: Diagonal of the rational function 1/(1 - (wxz + wy + wz + xy + xz + y + z)).

The programs for A274786, there is no canonical definition to state claims against.
-/

/-! ## A274786.P15757524340740492365

`A000984(n)*A005258(n)`
-/

namespace A274786.P15757524340740492365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A005258 n

end

end A274786.P15757524340740492365

/-! ## A274786.P1565327781898831523

`sqrt(A002894(n))*A005258(n)`
-/

namespace A274786.P1565327781898831523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A005258 n : ℝ)

end

end A274786.P1565327781898831523

/-! ## A274786.P14334276234314595614

`record[A081668(n)]*A005258(n)`
-/

namespace A274786.P14334276234314595614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005258 n

end

end A274786.P14334276234314595614

/-! ## A274786.P4249596007010060408

`record[A126930(n)]*A005258(n)`
-/

namespace A274786.P4249596007010060408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005258 n

end

end A274786.P4249596007010060408

/-! ## A274786.P4674683078460525651

`A001405(2*n)*A005258(n)`
-/

namespace A274786.P4674683078460525651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A005258 n

end

end A274786.P4674683078460525651

/-! ## A274786.P17594524448887821607

`A005258(n)*A063886(2*n)`
-/

namespace A274786.P17594524448887821607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 n * A063886 (2 * n)

end

end A274786.P17594524448887821607

/-! ## A274786.P13853600464933620837

`A005258(n)*A081668(2*n)`
-/

namespace A274786.P13853600464933620837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 n * A081668 (2 * n)

end

end A274786.P13853600464933620837

/-! ## A274786.P6320882845959830525

`A005258(n)*A126930(2*n)`
-/

namespace A274786.P6320882845959830525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 n * A126930 (2 * n)

end

end A274786.P6320882845959830525

/-! ## A274786.P2340879075224402166

`A005258(n)*A007318(A046092(n))`
-/

namespace A274786.P2340879075224402166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 n * A007318 (A046092 n).toNat

end

end A274786.P2340879075224402166

/-! ## A274786.P11005771579695297760

`A005258(n)*A092392(A000217(n))`
-/

namespace A274786.P11005771579695297760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 n * A092392 (A000217 n).toNat

end

end A274786.P11005771579695297760

/-!
# A274790: Numbers in the range of the sum of odd divisors function.

The programs for A274790, the canonical program `A274790.P15099773667459378803` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274790 has offset 1).

The definition of A274790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274790.P520695338759132215

`record[A000593(A085790(n+1))]`
-/

namespace A274790.P520695338759132215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274790.P520695338759132215

namespace A274790

/-- `record[A000593(A085790(n+1))]` -/
def P520695338759132215.Spec : Prop :=
  ∀ n, P520695338759132215.a n = A274790 (n + 1)

end A274790

/-! ## A274790.P8790409203684889352

`eq[1, gcd(2, A240667(n+1))]+1`
-/

namespace A274790.P8790409203684889352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A240667 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274790.P8790409203684889352

namespace A274790

/-- `eq[1, gcd(2, A240667(n+1))]+1` -/
def P8790409203684889352.Spec : Prop :=
  ∀ n, (P8790409203684889352.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P15099773667459378803

`lt[0, char[∑{d}[2*n+1, #]]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274790

/-- `lt[0, char[∑{d}[2*n+1, #]]]` -/
def P15099773667459378803.Spec : Prop :=
  ∀ n, (P15099773667459378803.a n : ℤ) = A274790 (n + 1)

theorem P15099773667459378803.correct : P15099773667459378803.Spec := by
  intro n
  simp only [A274790, Nat.add_sub_cancel]

end A274790

/-! ## A274790.P17157388404880153053

`eq[1, char[∑{d}[2*n+1, #]]]`
-/

namespace A274790.P17157388404880153053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274790.P17157388404880153053

namespace A274790

/-- `eq[1, char[∑{d}[2*n+1, #]]]` -/
def P17157388404880153053.Spec : Prop :=
  ∀ n, (P17157388404880153053.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P2994012103739133055

`lt[0, char[A008438(n)]]`
-/

namespace A274790.P2994012103739133055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274790.P2994012103739133055

namespace A274790

/-- `lt[0, char[A008438(n)]]` -/
def P2994012103739133055.Spec : Prop :=
  ∀ n, (P2994012103739133055.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P16323811599553143109

`eq[1, char[A115607(n+1)]]`
-/

namespace A274790.P16323811599553143109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274790.P16323811599553143109

namespace A274790

/-- `eq[1, char[A115607(n+1)]]` -/
def P16323811599553143109.Spec : Prop :=
  ∀ n, (P16323811599553143109.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P14853337651384471578

`eq[1, char[A000203(2*n+1)]]`
-/

namespace A274790.P14853337651384471578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274790.P14853337651384471578

namespace A274790

/-- `eq[1, char[A000203(2*n+1)]]` -/
def P14853337651384471578.Spec : Prop :=
  ∀ n, (P14853337651384471578.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P13756159212196185978

`eq[1, char[A000593(n+1)]]`
-/

namespace A274790.P13756159212196185978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274790.P13756159212196185978

namespace A274790

/-- `eq[1, char[A000593(n+1)]]` -/
def P13756159212196185978.Spec : Prop :=
  ∀ n, (P13756159212196185978.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P9489443272599972669

`eq[1, char[A002129(n+1)]]`
-/

namespace A274790.P9489443272599972669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274790.P9489443272599972669

namespace A274790

/-- `eq[1, char[A002129(n+1)]]` -/
def P9489443272599972669.Spec : Prop :=
  ∀ n, (P9489443272599972669.a n : ℤ) = A274790 (n + 1)

end A274790

/-! ## A274790.P6806405421067999078

`lt[A046769(2*n+1), char[A187793(2*n+1)]]`
-/

namespace A274790.P6806405421067999078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274790.P6806405421067999078

namespace A274790

/-- `lt[A046769(2*n+1), char[A187793(2*n+1)]]` -/
def P6806405421067999078.Spec : Prop :=
  ∀ n, (P6806405421067999078.a n : ℤ) = A274790 (n + 1)

end A274790

/-!
# A274791: Fourth row of infinite Sudoku-type array A269526.

The programs for A274791, there is no canonical definition to state claims against.
-/

/-! ## A274791.P5462651364423251492

`A274528(∑[n+4]+2)+1`
-/

namespace A274791.P5462651364423251492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A274791.P5462651364423251492

/-! ## A274791.P4326668203986079320

`A269526(∑[n+4]+3)`
-/

namespace A274791.P4326668203986079320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A274791.P4326668203986079320

/-! ## A274791.P6596447251219599331

`xor(1, xor(1, A269526(A055998(n+2))))`
-/

namespace A274791.P6596447251219599331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A269526 (A055998 (n + 2)).toNat))

end

end A274791.P6596447251219599331

/-! ## A274791.P13186434141277700085

`A269526(A055998(n+2))%A185934(n+1)`
-/

namespace A274791.P13186434141277700085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A055998 (n + 2)).toNat) (A185934 (n + 1))

end

end A274791.P13186434141277700085

/-! ## A274791.P15631620257728483436

`A269526(A055998(n+2))+A193356(2*(n+1))`
-/

namespace A274791.P15631620257728483436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A055998 (n + 2)).toNat + A193356 (2 * (n + 1))

end

end A274791.P15631620257728483436

/-! ## A274791.P2717309472975076905

`A269526(A055998(n+2))+A000007(3*n+4)`
-/

namespace A274791.P2717309472975076905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A055998 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A274791.P2717309472975076905

/-! ## A274791.P15114736809385627903

`A269526(A055998(n+2))+val(A080788(n+1), 2)`
-/

namespace A274791.P15114736809385627903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A055998 (n + 2)).toNat + (SequenceMachineLib.valuation (A080788 (n + 1)).toNat 2 : ℤ)

end

end A274791.P15114736809385627903

/-! ## A274791.P12440265001113954472

`A269526(A055998(n+2))+val(A222184(n+1), 2)`
-/

namespace A274791.P12440265001113954472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A055998 (n + 2)).toNat + (SequenceMachineLib.valuation (A222184 (n + 1)).toNat 2 : ℤ)

end

end A274791.P12440265001113954472

/-! ## A274791.P10885250854641834966

`A269526(A055998(n+2))+val(A179874(n+1), 2)`
-/

namespace A274791.P10885250854641834966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A055998 (n + 2)).toNat + (SequenceMachineLib.valuation (A179874 (n + 1)).toNat 2 : ℤ)

end

end A274791.P10885250854641834966

/-!
# A274793: Numbers not in the range of the sum of odd divisors function.

The programs for A274793, the canonical program `A274793.P16106684321796214362` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274793 has offset 1).

The definition of A274793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274793.P5824501587781505546

`comp[A008438(n)-1]+1`
-/

namespace A274793.P5824501587781505546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274793.P5824501587781505546

namespace A274793

/-- `comp[A008438(n)-1]+1` -/
def P5824501587781505546.Spec : Prop :=
  ∀ n, (P5824501587781505546.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P5993777055040106634

`comp[A000203(or(1, n))-1]+1`
-/

namespace A274793.P5993777055040106634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274793.P5993777055040106634

namespace A274793

/-- `comp[A000203(or(1, n))-1]+1` -/
def P5993777055040106634.Spec : Prop :=
  ∀ n, (P5993777055040106634.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P16757138536126590467

`comp[and((-1)^n, A000203(n+2))]`
-/

namespace A274793.P16757138536126590467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A000203 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274793.P16757138536126590467

namespace A274793

/-- `comp[and((-1)^n, A000203(n+2))]` -/
def P16757138536126590467.Spec : Prop :=
  ∀ n, (P16757138536126590467.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P10826425952740813319

`comp[gcd(A000203(2*(n+1)), A000203(n+1))-1]+1`
-/

namespace A274793.P10826425952740813319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000203 (2 * (n + 1))) (A000203 (n + 1)) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274793.P10826425952740813319

namespace A274793

/-- `comp[gcd(A000203(2*(n+1)), A000203(n+1))-1]+1` -/
def P10826425952740813319.Spec : Prop :=
  ∀ n, (P10826425952740813319.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P8299580801544265997

`∑[abs(Δ[comp[A000203(2*n+1)]])]`
-/

namespace A274793.P8299580801544265997
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274793.P8299580801544265997

namespace A274793

/-- `∑[abs(Δ[comp[A000203(2*n+1)]])]` -/
def P8299580801544265997.Spec : Prop :=
  ∀ n, P8299580801544265997.a n = A274793 (n + 1)

end A274793

/-! ## A274793.P16106684321796214362

`comp[∑{d}[comp[2*(n+1)], #]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274793

/-- `comp[∑{d}[comp[2*(n+1)], #]]` -/
def P16106684321796214362.Spec : Prop :=
  ∀ n, (P16106684321796214362.a n : ℤ) = A274793 (n + 1)

theorem P16106684321796214362.correct : P16106684321796214362.Spec := by
  intro n
  simp only [A274793, Nat.add_sub_cancel]

end A274793

/-! ## A274793.P889046723458561335

`comp[∑{d}[Δ[n²], #]-1]+1`
-/

namespace A274793.P889046723458561335
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274793.P889046723458561335

namespace A274793

/-- `comp[∑{d}[Δ[n²], #]-1]+1` -/
def P889046723458561335.Spec : Prop :=
  ∀ n, (P889046723458561335.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P6598875945506678235

`comp[A000203(Δ[n²])-1]+1`
-/

namespace A274793.P6598875945506678235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274793.P6598875945506678235

namespace A274793

/-- `comp[A000203(Δ[n²])-1]+1` -/
def P6598875945506678235.Spec : Prop :=
  ∀ n, (P6598875945506678235.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P2311449010502132913

`comp[A121455(n+1)]`
-/

namespace A274793.P2311449010502132913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274793.P2311449010502132913

namespace A274793

/-- `comp[A121455(n+1)]` -/
def P2311449010502132913.Spec : Prop :=
  ∀ n, (P2311449010502132913.a n : ℤ) = A274793 (n + 1)

end A274793

/-! ## A274793.P17567003388351828420

`comp[A193529(n+1)]`
-/

namespace A274793.P17567003388351828420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274793.P17567003388351828420

namespace A274793

/-- `comp[A193529(n+1)]` -/
def P17567003388351828420.Spec : Prop :=
  ∀ n, (P17567003388351828420.a n : ℤ) = A274793 (n + 1)

end A274793

/-!
# A274794: Numbers n such that n^3 is the sum of two triangular numbers in exactly one way.

The programs for A274794, there is no canonical definition to state claims against.
-/

/-! ## A274794.P5160234108058744266

`∪[A115104(n+1), A054777(n)]`
-/

namespace A274794.P5160234108058744266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P5160234108058744266

/-! ## A274794.P9650922405144081685

`∪[A086603(n), A115104(n+1)]`
-/

namespace A274794.P9650922405144081685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P9650922405144081685

/-! ## A274794.P5600337154407731360

`∪[A115104(n+1), A087887(n)]`
-/

namespace A274794.P5600337154407731360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087887 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P5600337154407731360

/-! ## A274794.P18020807723061636028

`∪[A115104(n+1), A288486(n)]`
-/

namespace A274794.P18020807723061636028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P18020807723061636028

/-! ## A274794.P7521796749399949954

`∪[A077092(n+1), A115104(n+1)]`
-/

namespace A274794.P7521796749399949954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P7521796749399949954

/-! ## A274794.P17253334695611977574

`∪[A115104(n+1), A120908(n+1)]`
-/

namespace A274794.P17253334695611977574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P17253334695611977574

/-! ## A274794.P10155921202242466770

`∪[A115104(n+1), A128960(n+1)]`
-/

namespace A274794.P10155921202242466770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P10155921202242466770

/-! ## A274794.P12519270578767437853

`∪[A115104(n+1), A164938(n+1)]`
-/

namespace A274794.P12519270578767437853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P12519270578767437853

/-! ## A274794.P2647733750212856352

`∪[A115104(n+1), A166757(n+1)]`
-/

namespace A274794.P2647733750212856352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P2647733750212856352

/-! ## A274794.P1673736904579788606

`∪[A115104(n+1), A186862(n+1)]`
-/

namespace A274794.P1673736904579788606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274794.P1673736904579788606

/-!
# A274795: Least k such that d(k*n) = d(n!) (d = A000005).

The programs for A274795, there is no canonical definition to state claims against.
-/

/-! ## A274795.P14141428507083420074

`A045977(n+1)/(n+1)`
-/

namespace A274795.P14141428507083420074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045977 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A274795.P14141428507083420074

/-! ## A274795.P10263611941589467422

`A061799(∏{e}[(n+1)!, #+1])/(n+1)`
-/

namespace A274795.P10263611941589467422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) / (n + 1 : ℚ)

end

end A274795.P10263611941589467422

/-! ## A274795.P5382482431265931402

`A000027(A138113(n+1))/(n+1)`
-/

namespace A274795.P5382482431265931402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A138113 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A274795.P5382482431265931402

/-! ## A274795.P7686189238813609188

`A138113(A061219(n+1))/A061219(n+1)`
-/

namespace A274795.P7686189238813609188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138113 (A061219 (n + 1)).toNat : ℚ) / (A061219 (n + 1) : ℚ)

end

end A274795.P7686189238813609188

/-!
# A274796: Numbers n such that s2/s1 is an integer, where s1 is the sum of the odd numbers and s2 is the sum of the even numbers in the Collatz (3x+1) iteration of n.

The programs for A274796, there is no canonical definition to state claims against.
-/

/-! ## A274796.P7779709694609234555

`eq[A213916(n+1), A277068(n+1)]+1`
-/

namespace A274796.P7779709694609234555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274796.P7779709694609234555

/-! ## A274796.P216847703107435604

`eq[1, A025427(53*n)]`
-/

namespace A274796.P216847703107435604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (53 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274796.P216847703107435604

/-! ## A274796.P2647414901907689961

`eq[1, A025442(53*n)]`
-/

namespace A274796.P2647414901907689961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (53 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274796.P2647414901907689961

/-! ## A274796.P12368158275020488671

`A061392(A300438(n))`
-/

namespace A274796.P12368158275020488671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A300438 n).toNat

end

end A274796.P12368158275020488671

/-! ## A274796.P4395584218803485021

`A332246(A397439(n))`
-/

namespace A274796.P4395584218803485021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A397439 n).toNat

end

end A274796.P4395584218803485021

/-!
# A274797: Number of n X n 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274797, there is no canonical definition to state claims against.
-/

/-! ## A274797.P9242730469942618585

`A274803(∑[4*n]+1)`
-/

namespace A274797.P9242730469942618585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274797.P9242730469942618585

/-! ## A274797.P14394409897399272229

`record[A003982(n)*A274803(n+1)]`
-/

namespace A274797.P14394409897399272229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A274803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274797.P14394409897399272229

/-! ## A274797.P10480562939067929451

`record[gcd(A037012(n), A274803(n+1))]`
-/

namespace A274797.P10480562939067929451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A274803 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274797.P10480562939067929451

/-! ## A274797.P5518874174967990182

`A274803(A001844(n))^A178334(n)`
-/

namespace A274797.P5518874174967990182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274803 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274797.P5518874174967990182

/-! ## A274797.P15754029771464598193

`or(A000007(n), A274803(A001844(n)))`
-/

namespace A274797.P15754029771464598193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274803 (A001844 n).toNat)

end

end A274797.P15754029771464598193

/-!
# A274798: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274798, the canonical program `A274798.P4645597779111238704` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274798 has offset 1).

The definition of A274798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274798.P4514881599950823724

`ogf((2+4x+2x^2)/(1-2x-6x^2-2x^3))`
-/

namespace A274798.P4514881599950823724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -2, -6, -2] n

end

end A274798.P4514881599950823724

namespace A274798

/-- `ogf((2+4x+2x^2)/(1-2x-6x^2-2x^3))` -/
def P4514881599950823724.Spec : Prop :=
  ∀ n, P4514881599950823724.a n = A274798 (n + 1)

end A274798

/-! ## A274798.P4645597779111238704

`2*a(n-1)+6*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=8, a(2)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274798

/-- `2*a(n-1)+6*a(n-2)+2*a(n-3)` -/
def P4645597779111238704.Spec : Prop :=
  ∀ n, (P4645597779111238704.a n : ℤ) = A274798 (n + 1)

theorem P4645597779111238704.correct : P4645597779111238704.Spec := by
  intro n
  simp only [A274798, Nat.add_sub_cancel]

end A274798

/-! ## A274798.P5942978754168981866

`A274803(∑[n+2]+4)`
-/

namespace A274798.P5942978754168981866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274798.P5942978754168981866

namespace A274798

/-- `A274803(∑[n+2]+4)` -/
def P5942978754168981866.Spec : Prop :=
  ∀ n, P5942978754168981866.a n = A274798 (n + 1)

end A274798

/-! ## A274798.P3062671328045189477

`lcm(2, A274803(A167614(n+1)))`
-/

namespace A274798.P3062671328045189477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A274803 (A167614 (n + 1)).toNat)

end

end A274798.P3062671328045189477

namespace A274798

/-- `lcm(2, A274803(A167614(n+1)))` -/
def P3062671328045189477.Spec : Prop :=
  ∀ n, (P3062671328045189477.a n : ℤ) = A274798 (n + 1)

end A274798

/-! ## A274798.P8331525108643313918

`A274803(A167614(n+1))+A185284(n)`
-/

namespace A274798.P8331525108643313918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A167614 (n + 1)).toNat + A185284 n

end

end A274798.P8331525108643313918

namespace A274798

/-- `A274803(A167614(n+1))+A185284(n)` -/
def P8331525108643313918.Spec : Prop :=
  ∀ n, P8331525108643313918.a n = A274798 (n + 1)

end A274798

/-!
# A274799: Number of n X 4 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274799, there is no canonical definition to state claims against.
-/

/-! ## A274799.P1891770903565490313

`A274803(A141214(n)+7)`
-/

namespace A274799.P1891770903565490313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A141214 n + 7).toNat

end

end A274799.P1891770903565490313

/-! ## A274799.P4383912143131492188

`A274803(A052905(n)+9)`
-/

namespace A274799.P4383912143131492188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A052905 n + 9).toNat

end

end A274799.P4383912143131492188

/-! ## A274799.P4002102639466213927

`A274803(A167614(n+2)+1)`
-/

namespace A274799.P4002102639466213927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A167614 (n + 2) + 1).toNat

end

end A274799.P4002102639466213927

/-! ## A274799.P13341275406301264032

`A274803(A034856(n+2)+6)`
-/

namespace A274799.P13341275406301264032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A034856 (n + 2) + 6).toNat

end

end A274799.P13341275406301264032

/-! ## A274799.P1632857852420103971

`A274803(A374004(n+1))`
-/

namespace A274799.P1632857852420103971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A374004 (n + 1)).toNat

end

end A274799.P1632857852420103971

