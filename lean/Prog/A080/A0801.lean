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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
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
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080100: a(n) = 2^(number of 0's in binary representation of n).

The programs for A080100, the canonical program `A080100.P10210311042903193849` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080100 has offset 0).

The definition of A080100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080100.P10210311042903193849

`2^A080791(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080100

/-- `2^A080791(n)` -/
def P10210311042903193849.Spec : Prop :=
  ∀ n, P10210311042903193849.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P6310421303489419685

`gcd(2, n)*a(floor(n/2))` with `a(0)=1`
-/

namespace A080100.P6310421303489419685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A080100.P6310421303489419685

namespace A080100

/-- `gcd(2, n)*a(floor(n/2))` -/
def P6310421303489419685.Spec : Prop :=
  ∀ n, (P6310421303489419685.a n : ℤ) = A080100 n

end A080100

/-! ## A080100.P5628411190629275472

`(2-n%2)*a(floor(n/2))` with `a(0)=1`
-/

namespace A080100.P5628411190629275472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - ((n % 2 : ℕ) : ℤ)) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A080100.P5628411190629275472

namespace A080100

/-- `(2-n%2)*a(floor(n/2))` -/
def P5628411190629275472.Spec : Prop :=
  ∀ n, P5628411190629275472.a n = A080100 n

end A080100

/-! ## A080100.P1808205771832976777

`∏[a(floor(n/2))/a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A080100.P1808205771832976777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080100.P1808205771832976777

namespace A080100

/-- `∏[a(floor(n/2))/a(n-1)]` -/
def P1808205771832976777.Spec : Prop :=
  ∀ n, P1808205771832976777.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P5609362922154368392

`sqrt(A309074(n))`
-/

namespace A080100.P5609362922154368392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A309074 n : ℝ)

end

end A080100.P5609362922154368392

namespace A080100

/-- `sqrt(A309074(n))` -/
def P5609362922154368392.Spec : Prop :=
  ∀ n, P5609362922154368392.a n = (A080100 n : ℝ)

end A080100

/-! ## A080100.P6066057159097736598

`ceil(A267584(n)/2)`
-/

namespace A080100.P6066057159097736598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A267584 n : ℚ) / 2⌉

end

end A080100.P6066057159097736598

namespace A080100

/-- `ceil(A267584(n)/2)` -/
def P6066057159097736598.Spec : Prop :=
  ∀ n, P6066057159097736598.a n = A080100 n

end A080100

/-! ## A080100.P12729643578005167069

`2^∑[A089263(n)]`
-/

namespace A080100.P12729643578005167069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A080100.P12729643578005167069

namespace A080100

/-- `2^∑[A089263(n)]` -/
def P12729643578005167069.Spec : Prop :=
  ∀ n, P12729643578005167069.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P7866182770564049794

`1-A353292(n)+n`
-/

namespace A080100.P7866182770564049794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353292 n + (n : ℤ)

end

end A080100.P7866182770564049794

namespace A080100

/-- `1-A353292(n)+n` -/
def P7866182770564049794.Spec : Prop :=
  ∀ n, P7866182770564049794.a n = A080100 n

end A080100

/-! ## A080100.P5015336025771240160

`A267584(Δ[n²])/2`
-/

namespace A080100.P5015336025771240160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A080100.P5015336025771240160

namespace A080100

/-- `A267584(Δ[n²])/2` -/
def P5015336025771240160.Spec : Prop :=
  ∀ n, P5015336025771240160.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P11499029070236657697

`2^(A008687(n+1)-1)`
-/

namespace A080100.P11499029070236657697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008687 (n + 1) - 1 : ℤ)

end

end A080100.P11499029070236657697

namespace A080100

/-- `2^(A008687(n+1)-1)` -/
def P11499029070236657697.Spec : Prop :=
  ∀ n, P11499029070236657697.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P16302613928402369722

`2^(A233272(n)-(n+1))`
-/

namespace A080100.P16302613928402369722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A233272 n - (n + 1 : ℤ) : ℤ)

end

end A080100.P16302613928402369722

namespace A080100

/-- `2^(A233272(n)-(n+1))` -/
def P16302613928402369722.Spec : Prop :=
  ∀ n, P16302613928402369722.a n = (A080100 n : ℚ)

end A080100

/-! ## A080100.P8367182285054601537

`∏{digits}[A007088(2*n+1), 2-#]`
-/

namespace A080100.P8367182285054601537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - (x : ℤ)).prod

end

end A080100.P8367182285054601537

namespace A080100

/-- `∏{digits}[A007088(2*n+1), 2-#]` -/
def P8367182285054601537.Spec : Prop :=
  ∀ n, P8367182285054601537.a n = A080100 n

end A080100

/-! ## A080100.P3066409419765062895

`and(n, -n)*A000010(a(n-1))` with `a(0)=1`
-/

namespace A080100.P3066409419765062895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) * A000010 (a (n - 1)).toNat

end

end A080100.P3066409419765062895

namespace A080100

/-- `and(n, -n)*A000010(a(n-1))` -/
def P3066409419765062895.Spec : Prop :=
  ∀ n, P3066409419765062895.a n = A080100 n

end A080100

/-! ## A080100.P2780927439107823460

`A000079(A080791(n))`
-/

namespace A080100.P2780927439107823460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A080791 n).toNat

end

end A080100.P2780927439107823460

namespace A080100

/-- `A000079(A080791(n))` -/
def P2780927439107823460.Spec : Prop :=
  ∀ n, P2780927439107823460.a n = A080100 n

end A080100

/-! ## A080100.P17947284726992851076

`A082908(A073137(n))`
-/

namespace A080100.P17947284726992851076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A073137 n).toNat

end

end A080100.P17947284726992851076

namespace A080100

/-- `A082908(A073137(n))` -/
def P17947284726992851076.Spec : Prop :=
  ∀ n, P17947284726992851076.a n = A080100 n

end A080100

/-! ## A080100.P10780316262647254533

`A000010(A267584(n))`
-/

namespace A080100.P10780316262647254533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A267584 n).toNat

end

end A080100.P10780316262647254533

namespace A080100

/-- `A000010(A267584(n))` -/
def P10780316262647254533.Spec : Prop :=
  ∀ n, P10780316262647254533.a n = A080100 n

end A080100

/-! ## A080100.P14006909654829622203

`A267584(A025480(n))`
-/

namespace A080100.P14006909654829622203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A025480 n).toNat

end

end A080100.P14006909654829622203

namespace A080100

/-- `A267584(A025480(n))` -/
def P14006909654829622203.Spec : Prop :=
  ∀ n, P14006909654829622203.a n = A080100 n

end A080100

/-! ## A080100.P1303265810400516647

`A011782(A290251(n))`
-/

namespace A080100.P1303265810400516647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A290251 n).toNat

end

end A080100.P1303265810400516647

namespace A080100

/-- `A011782(A290251(n))` -/
def P1303265810400516647.Spec : Prop :=
  ∀ n, P1303265810400516647.a n = A080100 n

end A080100

/-! ## A080100.P4098177577530487022

`A060632(A261693(n))`
-/

namespace A080100.P4098177577530487022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A261693 n).toNat

end

end A080100.P4098177577530487022

namespace A080100

/-- `A060632(A261693(n))` -/
def P4098177577530487022.Spec : Prop :=
  ∀ n, P4098177577530487022.a n = A080100 n

end A080100

/-! ## A080100.P14979339164432113833

`A000079(∑[A089263(n)])`
-/

namespace A080100.P14979339164432113833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080100.P14979339164432113833

namespace A080100

/-- `A000079(∑[A089263(n)])` -/
def P14979339164432113833.Spec : Prop :=
  ∀ n, P14979339164432113833.a n = A080100 n

end A080100

/-!
# A080101: Number of prime powers in all composite numbers between n-th prime and next prime.

The programs for A080101, the canonical program `A080101.P17293988866175764959` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080101 has offset 1).

The definition of A080101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080101.P17293988866175764959

`A366833(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080101

/-- `A366833(n+1)-1` -/
def P17293988866175764959.Spec : Prop :=
  ∀ n, P17293988866175764959.a n = A080101 (n + 1)

theorem P17293988866175764959.correct : P17293988866175764959.Spec := by
  intro n
  simp only [A080101, Nat.add_sub_cancel]

end A080101

/-! ## A080101.P8593181477079234914

`A001513(n)%A366833(n+1)`
-/

namespace A080101.P8593181477079234914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A366833 (n + 1))

end

end A080101.P8593181477079234914

namespace A080101

/-- `A001513(n)%A366833(n+1)` -/
def P8593181477079234914.Spec : Prop :=
  ∀ n, P8593181477079234914.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P15037866146482163254

`A001538(n)%A366833(n+1)`
-/

namespace A080101.P15037866146482163254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A366833 (n + 1))

end

end A080101.P15037866146482163254

namespace A080101

/-- `A001538(n)%A366833(n+1)` -/
def P15037866146482163254.Spec : Prop :=
  ∀ n, P15037866146482163254.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P11900251723386767124

`A002146(n)%A366833(n+1)`
-/

namespace A080101.P11900251723386767124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A366833 (n + 1))

end

end A080101.P11900251723386767124

namespace A080101

/-- `A002146(n)%A366833(n+1)` -/
def P11900251723386767124.Spec : Prop :=
  ∀ n, P11900251723386767124.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P8615270270904912471

`A002148(n)%A366833(n+1)`
-/

namespace A080101.P8615270270904912471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A366833 (n + 1))

end

end A080101.P8615270270904912471

namespace A080101

/-- `A002148(n)%A366833(n+1)` -/
def P8615270270904912471.Spec : Prop :=
  ∀ n, P8615270270904912471.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P381319299085000654

`A004538(n)%A366833(n+1)`
-/

namespace A080101.P381319299085000654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A366833 (n + 1))

end

end A080101.P381319299085000654

namespace A080101

/-- `A004538(n)%A366833(n+1)` -/
def P381319299085000654.Spec : Prop :=
  ∀ n, P381319299085000654.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P16925096767105794692

`A007952(n)%A366833(n+1)`
-/

namespace A080101.P16925096767105794692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007952 n) (A366833 (n + 1))

end

end A080101.P16925096767105794692

namespace A080101

/-- `A007952(n)%A366833(n+1)` -/
def P16925096767105794692.Spec : Prop :=
  ∀ n, P16925096767105794692.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P4384914079020016838

`A016969(n)%A366833(n+1)`
-/

namespace A080101.P4384914079020016838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A366833 (n + 1))

end

end A080101.P4384914079020016838

namespace A080101

/-- `A016969(n)%A366833(n+1)` -/
def P4384914079020016838.Spec : Prop :=
  ∀ n, P4384914079020016838.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P7146717624420224791

`A016971(n)%A366833(n+1)`
-/

namespace A080101.P7146717624420224791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A366833 (n + 1))

end

end A080101.P7146717624420224791

namespace A080101

/-- `A016971(n)%A366833(n+1)` -/
def P7146717624420224791.Spec : Prop :=
  ∀ n, P7146717624420224791.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P12552311450642392148

`A016973(n)%A366833(n+1)`
-/

namespace A080101.P12552311450642392148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A366833 (n + 1))

end

end A080101.P12552311450642392148

namespace A080101

/-- `A016973(n)%A366833(n+1)` -/
def P12552311450642392148.Spec : Prop :=
  ∀ n, P12552311450642392148.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P5391044146797430456

`A016975(n)%A366833(n+1)`
-/

namespace A080101.P5391044146797430456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A366833 (n + 1))

end

end A080101.P5391044146797430456

namespace A080101

/-- `A016975(n)%A366833(n+1)` -/
def P5391044146797430456.Spec : Prop :=
  ∀ n, P5391044146797430456.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P4161065506888283218

`A017581(n)%A366833(n+1)`
-/

namespace A080101.P4161065506888283218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A366833 (n + 1))

end

end A080101.P4161065506888283218

namespace A080101

/-- `A017581(n)%A366833(n+1)` -/
def P4161065506888283218.Spec : Prop :=
  ∀ n, P4161065506888283218.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P13855421717679327921

`A017583(n)%A366833(n+1)`
-/

namespace A080101.P13855421717679327921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A366833 (n + 1))

end

end A080101.P13855421717679327921

namespace A080101

/-- `A017583(n)%A366833(n+1)` -/
def P13855421717679327921.Spec : Prop :=
  ∀ n, P13855421717679327921.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P16800992844006834531

`A017585(n)%A366833(n+1)`
-/

namespace A080101.P16800992844006834531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A366833 (n + 1))

end

end A080101.P16800992844006834531

namespace A080101

/-- `A017585(n)%A366833(n+1)` -/
def P16800992844006834531.Spec : Prop :=
  ∀ n, P16800992844006834531.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P14686542737517074337

`A017653(n)%A366833(n+1)`
-/

namespace A080101.P14686542737517074337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A366833 (n + 1))

end

end A080101.P14686542737517074337

namespace A080101

/-- `A017653(n)%A366833(n+1)` -/
def P14686542737517074337.Spec : Prop :=
  ∀ n, P14686542737517074337.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P1314529557204659436

`A017655(n)%A366833(n+1)`
-/

namespace A080101.P1314529557204659436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A366833 (n + 1))

end

end A080101.P1314529557204659436

namespace A080101

/-- `A017655(n)%A366833(n+1)` -/
def P1314529557204659436.Spec : Prop :=
  ∀ n, P1314529557204659436.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P7818041102636696257

`A017657(n)%A366833(n+1)`
-/

namespace A080101.P7818041102636696257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A366833 (n + 1))

end

end A080101.P7818041102636696257

namespace A080101

/-- `A017657(n)%A366833(n+1)` -/
def P7818041102636696257.Spec : Prop :=
  ∀ n, P7818041102636696257.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P16553023796782990729

`A288477(n)%A366833(n+1)`
-/

namespace A080101.P16553023796782990729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288477 n) (A366833 (n + 1))

end

end A080101.P16553023796782990729

namespace A080101

/-- `A288477(n)%A366833(n+1)` -/
def P16553023796782990729.Spec : Prop :=
  ∀ n, P16553023796782990729.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P13321681537202344262

`A289111(n)%A366833(n+1)`
-/

namespace A080101.P13321681537202344262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289111 n) (A366833 (n + 1))

end

end A080101.P13321681537202344262

namespace A080101

/-- `A289111(n)%A366833(n+1)` -/
def P13321681537202344262.Spec : Prop :=
  ∀ n, P13321681537202344262.a n = A080101 (n + 1)

end A080101

/-! ## A080101.P13665957790500936829

`A046933(n+1)-A368748(n+1)`
-/

namespace A080101.P13665957790500936829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A368748 (n + 1)

end

end A080101.P13665957790500936829

namespace A080101

/-- `A046933(n+1)-A368748(n+1)` -/
def P13665957790500936829.Spec : Prop :=
  ∀ n, P13665957790500936829.a n = A080101 (n + 1)

theorem P13665957790500936829.correct : P13665957790500936829.Spec := by
  intro n
  simp only [A080101, Nat.add_sub_cancel, A080101.P13665957790500936829.a, A080101.P17293988866175764959.a, A046933, A046933.P9479947770746769512.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A368748, A368748.P2060391924120103936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A024620, A024620.P8536977387799856667.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080101

/-!
# A080102: Smallest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

The programs for A080102, the canonical program `A080102.P8782798429570687549` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080102 has offset 2).

The definition of A080102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080102.P3043496005374653552

`A057521(A322991(p?[A005408(n)]))`
-/

namespace A080102.P3043496005374653552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A322991 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A080102.P3043496005374653552

namespace A080102

/-- `A057521(A322991(p?[A005408(n)]))` -/
def P3043496005374653552.Spec : Prop :=
  ∀ n, P3043496005374653552.a n = A080102 (n + 2)

end A080102

/-! ## A080102.P1820527719402065371

`A057521(A322991(p?[A322991(n+1)]))`
-/

namespace A080102.P1820527719402065371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A322991 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A080102.P1820527719402065371

namespace A080102

/-- `A057521(A322991(p?[A322991(n+1)]))` -/
def P1820527719402065371.Spec : Prop :=
  ∀ n, P1820527719402065371.a n = A080102 (n + 2)

end A080102

/-! ## A080102.P8782798429570687549

`A005451(A345531(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080102

/-- `A005451(A345531(n+2))` -/
def P8782798429570687549.Spec : Prop :=
  ∀ n, P8782798429570687549.a n = A080102 (n + 2)

theorem P8782798429570687549.correct : P8782798429570687549.Spec := by
  intro n
  simp only [A080102, Nat.add_sub_cancel]

end A080102

/-! ## A080102.P10278558442539537460

`A055032(A322991(p?[2*n+1]))`
-/

namespace A080102.P10278558442539537460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A322991 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A080102.P10278558442539537460

namespace A080102

/-- `A055032(A322991(p?[2*n+1]))` -/
def P10278558442539537460.Spec : Prop :=
  ∀ n, P10278558442539537460.a n = A080102 (n + 2)

end A080102

/-! ## A080102.P16614488426446826527

`A203025(A322991(A065091(n+1)))`
-/

namespace A080102.P16614488426446826527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203025 (A322991 (A065091 (n + 1)).toNat).toNat

end

end A080102.P16614488426446826527

namespace A080102

/-- `A203025(A322991(A065091(n+1)))` -/
def P16614488426446826527.Spec : Prop :=
  ∀ n, P16614488426446826527.a n = A080102 (n + 2)

end A080102

/-!
# A080103: Greatest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

The programs for A080103, the canonical program `A080103.P15352554582229907592` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080103 has offset 2).

The definition of A080103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080103.P15352554582229907592

`gcd(A049084(A065514(n+3)), A065514(n+3))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A080103

/-- `gcd(A049084(A065514(n+3)), A065514(n+3))` -/
def P15352554582229907592.Spec : Prop :=
  ∀ n, (P15352554582229907592.a n : ℤ) = A080103 (n + 2)

theorem P15352554582229907592.correct : P15352554582229907592.Spec := by
  intro n
  simp only [A080103, Nat.add_sub_cancel]

end A080103

/-! ## A080103.P12826581805911620287

`gcd(A016914(A306201(n)), A065514(n+3))`
-/

namespace A080103.P12826581805911620287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016914 (A306201 n).toNat) (A065514 (n + 3))

end

end A080103.P12826581805911620287

namespace A080103

/-- `gcd(A016914(A306201(n)), A065514(n+3))` -/
def P12826581805911620287.Spec : Prop :=
  ∀ n, (P12826581805911620287.a n : ℤ) = A080103 (n + 2)

end A080103

/-! ## A080103.P15510120990407389952

`or(A080102(n+2), A096159(A092892(n)))`
-/

namespace A080103.P15510120990407389952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080102 (n + 2)) (A096159 (A092892 n).toNat)

end

end A080103.P15510120990407389952

namespace A080103

/-- `or(A080102(n+2), A096159(A092892(n)))` -/
def P15510120990407389952.Spec : Prop :=
  ∀ n, P15510120990407389952.a n = A080103 (n + 2)

end A080103

/-! ## A080103.P16201421962935141160

`A086008(A068156(n+2))+A080102(n+2)`
-/

namespace A080103.P16201421962935141160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A068156 (n + 2)).toNat + A080102 (n + 2)

end

end A080103.P16201421962935141160

namespace A080103

/-- `A086008(A068156(n+2))+A080102(n+2)` -/
def P16201421962935141160.Spec : Prop :=
  ∀ n, P16201421962935141160.a n = A080103 (n + 2)

end A080103

/-!
# A080104: Le Corbusier's "modular" (or "modulor") numbers, based on the proportions of an ideal man.

The programs for A080104, there is no canonical definition to state claims against.
-/

/-! ## A080104.P12248493154494563746

`A080078(n+14)`
-/

namespace A080104.P12248493154494563746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080078 (n + 14)

end

end A080104.P12248493154494563746

/-!
# A080105: a(n) = round(113*phi^n).

The programs for A080105, there is no canonical definition to state claims against.
-/

/-! ## A080105.P8427207770485989154

`A228779(n)-A191347(A187783(n))`
-/

namespace A080105.P8427207770485989154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228779 n - A191347 (A187783 n).toNat

end

end A080105.P8427207770485989154

/-! ## A080105.P13892993927151323070

`A059995(A036999(n)+1)`
-/

namespace A080105.P13892993927151323070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A036999 n + 1).toNat

end

end A080105.P13892993927151323070

/-! ## A080105.P8925010601972463900

`A343609(5*A293419(n))`
-/

namespace A080105.P8925010601972463900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (5 * A293419 n).toNat

end

end A080105.P8925010601972463900

/-! ## A080105.P3302483443254165310

`A059995(floor(sqrt(A158091(n))))`
-/

namespace A080105.P3302483443254165310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.sqrt (A158091 n)).toNat

end

end A080105.P3302483443254165310

/-! ## A080105.P2789106524411831240

`A059995(ceil(sqrt(A158091(n))))`
-/

namespace A080105.P2789106524411831240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ⌈Real.sqrt (A158091 n : ℝ)⌉.toNat

end

end A080105.P2789106524411831240

/-!
# A080106: Round(226*phi^n).

The programs for A080106, there is no canonical definition to state claims against.
-/

/-! ## A080106.P3370709906624044676

`A254729(n)-A004396(A212804(n))`
-/

namespace A080106.P3370709906624044676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 n - A004396 (A212804 n).toNat

end

end A080106.P3370709906624044676

/-! ## A080106.P4179777762001765171

`A254729(n)-A004396(Δ[A000045(n)])`
-/

namespace A080106.P4179777762001765171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 n - A004396 (f1 (n + 1) - f1 n).toNat

end

end A080106.P4179777762001765171

/-! ## A080106.P14696013356288561943

`A293644(n+1)%A356855(n+1)`
-/

namespace A080106.P14696013356288561943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293644 (n + 1)) (A356855 (n + 1))

end

end A080106.P14696013356288561943

/-! ## A080106.P17288784861117625728

`A293644(n+1)%A082316(A017993(n))`
-/

namespace A080106.P17288784861117625728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293644 (n + 1)) (A082316 (A017993 n).toNat)

end

end A080106.P17288784861117625728

/-! ## A080106.P5818286423426003885

`A293644(A323366(n+1))+A010815(A002219(n+1))`
-/

namespace A080106.P5818286423426003885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 (A323366 (n + 1)).toNat + A010815 (A002219 (n + 1)).toNat

end

end A080106.P5818286423426003885

/-!
# A080107: Number of fixed points of permutation of SetPartitions under {1,2,...,n}->{n,n-1,...,1}. Number of symmetric arrangements of non-attacking rooks on upper half of n X n chessboard.

The programs for A080107, there is no canonical definition to state claims against.
-/

/-! ## A080107.P1382702922551724374

`2*A103293(n+1)-A000110(n)`
-/

namespace A080107.P1382702922551724374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103293 (n + 1) - A000110 n

end

end A080107.P1382702922551724374

/-! ## A080107.P3278038360254922244

`A084708(A028310(n))-A320749(A028310(n))`
-/

namespace A080107.P3278038360254922244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084708 (A028310 n).toNat - A320749 (A028310 n).toNat

end

end A080107.P3278038360254922244

/-! ## A080107.P1146114759861389492

`2*A103293(n+1)-A188164(2*n)`
-/

namespace A080107.P1146114759861389492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103293 (n + 1) - A188164 (2 * n)

end

end A080107.P1146114759861389492

/-! ## A080107.P7700443532955452442

`A324014(n+1)+A324013(n)`
-/

namespace A080107.P7700443532955452442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324014 (n + 1) + A324013 n

end

end A080107.P7700443532955452442

/-! ## A080107.P12487319007435780492

`A292946(n)+A130446(A305752(n))`
-/

namespace A080107.P12487319007435780492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292946 n + A130446 (A305752 n).toNat

end

end A080107.P12487319007435780492

/-!
# A080108: a(n) = Sum_{k=1..n} k^(n-k)*binomial(n-1,k-1).

The programs for A080108, the canonical program `A080108.P1011472336440934277` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080108 has offset 1).

The definition of A080108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080108.P1011472336440934277

`∑{#}[n, (#+1)^(n+1-(#+1))*C(n, #)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080108

/-- `∑{#}[n, (#+1)^(n+1-(#+1))*C(n, #)]` -/
def P1011472336440934277.Spec : Prop :=
  ∀ n, P1011472336440934277.a n = (A080108 (n + 1) : ℚ)

end A080108

/-! ## A080108.P14227396004646834488

`A185298(n+1)/(n+1)`
-/

namespace A080108.P14227396004646834488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185298 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A080108.P14227396004646834488

namespace A080108

/-- `A185298(n+1)/(n+1)` -/
def P14227396004646834488.Spec : Prop :=
  ∀ n, P14227396004646834488.a n = (A080108 (n + 1) : ℚ)

end A080108

/-! ## A080108.P10048626137774378318

`A000248(n+1)-A185298(n)`
-/

namespace A080108.P10048626137774378318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 (n + 1) - A185298 n

end

end A080108.P10048626137774378318

namespace A080108

/-- `A000248(n+1)-A185298(n)` -/
def P10048626137774378318.Spec : Prop :=
  ∀ n, P10048626137774378318.a n = A080108 (n + 1)

end A080108

/-! ## A080108.P8886001493494090104

`A116071(A253145(n))-A185298(n)`
-/

namespace A080108.P8886001493494090104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (A253145 n).toNat - A185298 n

end

end A080108.P8886001493494090104

namespace A080108

/-- `A116071(A253145(n))-A185298(n)` -/
def P8886001493494090104.Spec : Prop :=
  ∀ n, P8886001493494090104.a n = A080108 (n + 1)

end A080108

/-! ## A080108.P16062557703472369785

`A143397(∑[n+3]+1)/∑[n+1]`
-/

namespace A080108.P16062557703472369785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143397 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A080108.P16062557703472369785

namespace A080108

/-- `A143397(∑[n+3]+1)/∑[n+1]` -/
def P16062557703472369785.Spec : Prop :=
  ∀ n, P16062557703472369785.a n = (A080108 (n + 1) : ℚ)

end A080108

/-! ## A080108.P3889955984043956294

`A210725(A133263(n))-A185298(n)`
-/

namespace A080108.P3889955984043956294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (A133263 n).toNat - A185298 n

end

end A080108.P3889955984043956294

namespace A080108

/-- `A210725(A133263(n))-A185298(n)` -/
def P3889955984043956294.Spec : Prop :=
  ∀ n, P3889955984043956294.a n = A080108 (n + 1)

end A080108

/-!
# A080109: Square of primes of the form 4k+1 (A002144).

The programs for A080109, the canonical program `A080109.P11078218124457791392` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080109 has offset 1).

The definition of A080109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080109.P11078218124457791392

`A002144(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080109

/-- `A002144(n+1)²` -/
def P11078218124457791392.Spec : Prop :=
  ∀ n, P11078218124457791392.a n = A080109 (n + 1)

theorem P11078218124457791392.correct : P11078218124457791392.Spec := by
  intro n
  simp only [A080109, Nat.add_sub_cancel]

end A080109

/-! ## A080109.P5969626002302644274

`A070079(n+1)²+(4*A070151(n+1))²`
-/

namespace A080109.P5969626002302644274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1) ^ 2 + (4 * A070151 (n + 1)) ^ 2

end

end A080109.P5969626002302644274

namespace A080109

/-- `A070079(n+1)²+(4*A070151(n+1))²` -/
def P5969626002302644274.Spec : Prop :=
  ∀ n, P5969626002302644274.a n = A080109 (n + 1)

end A080109

/-! ## A080109.P11824850323349089490

`p?[4*n+1]²`
-/

namespace A080109.P11824850323349089490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A080109.P11824850323349089490

namespace A080109

/-- `p?[4*n+1]²` -/
def P11824850323349089490.Spec : Prop :=
  ∀ n, (P11824850323349089490.a n : ℤ) = A080109 (n + 1)

theorem P11824850323349089490.correct : P11824850323349089490.Spec := by
  intro n
  simp only [A080109, Nat.add_sub_cancel, A080109.P11824850323349089490.f1, A080109.P11824850323349089490.a, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080109

/-! ## A080109.P2093571724664911895

`p?[4*n+1]^2`
-/

namespace A080109.P2093571724664911895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A080109.P2093571724664911895

namespace A080109

/-- `p?[4*n+1]^2` -/
def P2093571724664911895.Spec : Prop :=
  ∀ n, (P2093571724664911895.a n : ℤ) = A080109 (n + 1)

theorem P2093571724664911895.correct : P2093571724664911895.Spec := by
  intro n
  simp only [A080109, Nat.add_sub_cancel, A080109.P2093571724664911895.f1, A080109.P2093571724664911895.a, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080109

/-! ## A080109.P15486997445517658807

`sqrt(A080175(n+1))`
-/

namespace A080109.P15486997445517658807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080175 (n + 1) : ℝ)

end

end A080109.P15486997445517658807

namespace A080109

/-- `sqrt(A080175(n+1))` -/
def P15486997445517658807.Spec : Prop :=
  ∀ n, P15486997445517658807.a n = (A080109 (n + 1) : ℝ)

end A080109

/-! ## A080109.P3959090920835390537

`(A055131(n)/3)²`
-/

namespace A080109.P3959090920835390537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055131 n : ℚ) / 3) ^ 2

end

end A080109.P3959090920835390537

namespace A080109

/-- `(A055131(n)/3)²` -/
def P3959090920835390537.Spec : Prop :=
  ∀ n, P3959090920835390537.a n = (A080109 (n + 1) : ℚ)

theorem P3959090920835390537.correct : P3959090920835390537.Spec := by
  intro n
  simp only [A080109, Nat.add_sub_cancel, A080109.P3959090920835390537.a, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080109

/-! ## A080109.P11179402636205417831

`(A152680(n+1)+1)²`
-/

namespace A080109.P11179402636205417831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) + 1) ^ 2

end

end A080109.P11179402636205417831

namespace A080109

/-- `(A152680(n+1)+1)²` -/
def P11179402636205417831.Spec : Prop :=
  ∀ n, P11179402636205417831.a n = A080109 (n + 1)

theorem P11179402636205417831.correct : P11179402636205417831.Spec := by
  intro n
  simp only [A080109, Nat.add_sub_cancel, A080109.P11179402636205417831.a, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A152680, A152680.P7400182187401258968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080109

/-! ## A080109.P13423266840794499614

`A080169(n+1)/A002144(n+1)`
-/

namespace A080109.P13423266840794499614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080169 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A080109.P13423266840794499614

namespace A080109

/-- `A080169(n+1)/A002144(n+1)` -/
def P13423266840794499614.Spec : Prop :=
  ∀ n, P13423266840794499614.a n = (A080109 (n + 1) : ℚ)

end A080109

/-! ## A080109.P8639342497247170168

`A401004(n+1)/A401003(n+1)`
-/

namespace A080109.P8639342497247170168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / (A401003 (n + 1) : ℚ)

end

end A080109.P8639342497247170168

namespace A080109

/-- `A401004(n+1)/A401003(n+1)` -/
def P8639342497247170168.Spec : Prop :=
  ∀ n, P8639342497247170168.a n = (A080109 (n + 1) : ℚ)

end A080109

/-! ## A080109.P6852208536047318998

`gcd(A080169(n+1), A401004(n+1))`
-/

namespace A080109.P6852208536047318998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080169 (n + 1)) (A401004 (n + 1))

end

end A080109.P6852208536047318998

namespace A080109

/-- `gcd(A080169(n+1), A401004(n+1))` -/
def P6852208536047318998.Spec : Prop :=
  ∀ n, (P6852208536047318998.a n : ℤ) = A080109 (n + 1)

end A080109

/-! ## A080109.P11041806773913045867

`A080169(n+1)²/A080175(n+1)`
-/

namespace A080109.P11041806773913045867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080169 (n + 1) ^ 2 : ℚ) / (A080175 (n + 1) : ℚ)

end

end A080109.P11041806773913045867

namespace A080109

/-- `A080169(n+1)²/A080175(n+1)` -/
def P11041806773913045867.Spec : Prop :=
  ∀ n, P11041806773913045867.a n = (A080109 (n + 1) : ℚ)

end A080109

/-! ## A080109.P8886351094852640413

`gcd(A048628(n+1)²², A055131(n)²)`
-/

namespace A080109.P8886351094852640413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A048628 (n + 1) ^ 2) ^ 2) (A055131 n ^ 2)

end

end A080109.P8886351094852640413

namespace A080109

/-- `gcd(A048628(n+1)²², A055131(n)²)` -/
def P8886351094852640413.Spec : Prop :=
  ∀ n, (P8886351094852640413.a n : ℤ) = A080109 (n + 1)

end A080109

/-! ## A080109.P15318648548758109968

`gcd(A048630(n+1)²², A171555(n+1)²)`
-/

namespace A080109.P15318648548758109968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A048630 (n + 1) ^ 2) ^ 2) (A171555 (n + 1) ^ 2)

end

end A080109.P15318648548758109968

namespace A080109

/-- `gcd(A048630(n+1)²², A171555(n+1)²)` -/
def P15318648548758109968.Spec : Prop :=
  ∀ n, (P15318648548758109968.a n : ℤ) = A080109 (n + 1)

end A080109

/-! ## A080109.P707492439836617408

`A002144(n+1)*A400365(n+1)/A400364(n+1)`
-/

namespace A080109.P707492439836617408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) * A400365 (n + 1) : ℚ) / (A400364 (n + 1) : ℚ)

end

end A080109.P707492439836617408

namespace A080109

/-- `A002144(n+1)*A400365(n+1)/A400364(n+1)` -/
def P707492439836617408.Spec : Prop :=
  ∀ n, P707492439836617408.a n = (A080109 (n + 1) : ℚ)

end A080109

/-! ## A080109.P17941496723344014359

`A002313(n+2)²`
-/

namespace A080109.P17941496723344014359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) ^ 2

end

end A080109.P17941496723344014359

namespace A080109

/-- `A002313(n+2)²` -/
def P17941496723344014359.Spec : Prop :=
  ∀ n, P17941496723344014359.a n = A080109 (n + 1)

end A080109

/-! ## A080109.P18338667625741153244

`A280084(n+2)²`
-/

namespace A080109.P18338667625741153244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) ^ 2

end

end A080109.P18338667625741153244

namespace A080109

/-- `A280084(n+2)²` -/
def P18338667625741153244.Spec : Prop :=
  ∀ n, P18338667625741153244.a n = A080109 (n + 1)

end A080109

/-! ## A080109.P6188098634664068518

`A002144(n+1)*A002313(n+2)`
-/

namespace A080109.P6188098634664068518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A002313 (n + 2)

end

end A080109.P6188098634664068518

namespace A080109

/-- `A002144(n+1)*A002313(n+2)` -/
def P6188098634664068518.Spec : Prop :=
  ∀ n, P6188098634664068518.a n = A080109 (n + 1)

end A080109

/-! ## A080109.P13518318686467851140

`A002313(n+2)*A400365(n+1)/A400364(n+1)`
-/

namespace A080109.P13518318686467851140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002313 (n + 2) * A400365 (n + 1) : ℚ) / (A400364 (n + 1) : ℚ)

end

end A080109.P13518318686467851140

namespace A080109

/-- `A002313(n+2)*A400365(n+1)/A400364(n+1)` -/
def P13518318686467851140.Spec : Prop :=
  ∀ n, P13518318686467851140.a n = (A080109 (n + 1) : ℚ)

end A080109

/-! ## A080109.P12578642974205828694

`A267101(A080148(n+1))²`
-/

namespace A080109.P12578642974205828694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080148 (n + 1)).toNat ^ 2

end

end A080109.P12578642974205828694

namespace A080109

/-- `A267101(A080148(n+1))²` -/
def P12578642974205828694.Spec : Prop :=
  ∀ n, P12578642974205828694.a n = A080109 (n + 1)

end A080109

/-!
# A080110: Characteristic function of A080112.

The programs for A080110, there is no canonical definition to state claims against.
-/

/-! ## A080110.P10148007829509806548

`1-A080111(n+1)`
-/

namespace A080110.P10148007829509806548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080111 (n + 1)

end

end A080110.P10148007829509806548

/-! ## A080110.P1544688973646770643

`char[A080112(n+1)-1]`
-/

namespace A080110.P1544688973646770643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080112 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080110.P1544688973646770643

/-! ## A080110.P8932973357857206560

`xor(1, A080111(ϕ²-(ϕ-n)))`
-/

namespace A080110.P8932973357857206560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080111 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A080110.P8932973357857206560

/-! ## A080110.P6867556387548056601

`abs(1-A080111(2*n-(n-1)))`
-/

namespace A080110.P6867556387548056601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A080111 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat|

end

end A080110.P6867556387548056601

/-! ## A080110.P6263042250988180637

`A080116(record[xor(3, n)]*A080111(n+1))`
-/

namespace A080110.P6263042250988180637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A080111 (n + 1)).toNat

end

end A080110.P6263042250988180637

/-! ## A080110.P9821961655029088469

`A080116((2*n+1)*A080111(n+1))`
-/

namespace A080110.P9821961655029088469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 ((2 * n + 1 : ℤ) * A080111 (n + 1)).toNat

end

end A080110.P9821961655029088469

/-! ## A080110.P11031467591660588955

`C(2, A079896(n+1)*A080111(n+1))`
-/

namespace A080110.P11031467591660588955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A079896 (n + 1) * A080111 (n + 1)).toNat

end

end A080110.P11031467591660588955

/-! ## A080110.P9289176893911173576

`C(2, A007318(n)*A080111(n+1)+2)`
-/

namespace A080110.P9289176893911173576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A007318 n * A080111 (n + 1) + 2).toNat

end

end A080110.P9289176893911173576

/-! ## A080110.P16003391181516962161

`C(2, or(3, A048852(n))*A080111(n+1))`
-/

namespace A080110.P16003391181516962161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.lor 3 (A048852 n) * A080111 (n + 1)).toNat

end

end A080110.P16003391181516962161

/-! ## A080110.P18008578809985243250

`C(n, A000040(n+1)*A080111(n+1))`
-/

namespace A080110.P18008578809985243250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000040 (n + 1) * A080111 (n + 1)).toNat

end

end A080110.P18008578809985243250

/-! ## A080110.P6450169924425379811

`A000007(A080111(n+1)+floor(1/(n+1)))`
-/

namespace A080110.P6450169924425379811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A080111 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A080110.P6450169924425379811

/-! ## A080110.P7026997511288803371

`C(2, (A080111(n+1)*A157532(n+1))²)`
-/

namespace A080110.P7026997511288803371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((A080111 (n + 1) * A157532 (n + 1)) ^ 2).toNat

end

end A080110.P7026997511288803371

/-! ## A080110.P8779453566499288701

`(A080111(n+1)+A006530(2*n+1))%2`
-/

namespace A080110.P8779453566499288701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080111 (n + 1) + A006530 (2 * n + 1)) 2

end

end A080110.P8779453566499288701

/-! ## A080110.P4727456535766436627

`A000007((n+1)*A080111(n+1))`
-/

namespace A080110.P4727456535766436627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A080111 (n + 1)).toNat

end

end A080110.P4727456535766436627

/-! ## A080110.P3868268196639871750

`char[A023443(A080112(n+1))]`
-/

namespace A080110.P3868268196639871750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080112 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080110.P3868268196639871750

/-! ## A080110.P1305631531647930810

`A080116(A080111(n+1)+A014486(n))`
-/

namespace A080110.P1305631531647930810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A080111 (n + 1) + A014486 n).toNat

end

end A080110.P1305631531647930810

/-! ## A080110.P8095338258587739721

`abs(A008683(A080111(n+1)+A002146(n)))`
-/

namespace A080110.P8095338258587739721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A080111 (n + 1) + A002146 n).toNat|

end

end A080110.P8095338258587739721

/-!
# A080111: Characteristic function of A080113.

The programs for A080111, there is no canonical definition to state claims against.
-/

/-! ## A080111.P11217614139805310312

`1-A080110(n+1)`
-/

namespace A080111.P11217614139805310312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080110 (n + 1)

end

end A080111.P11217614139805310312

/-! ## A080111.P16033635962687940975

`char[comp[A080112(n+1)-1]]`
-/

namespace A080111.P16033635962687940975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080112 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A080111.P16033635962687940975

/-! ## A080111.P1356543291994585159

`xor(1, A080110(A000027(n+1)))`
-/

namespace A080111.P1356543291994585159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080110 (A000027 (n + 1)).toNat)

end

end A080111.P1356543291994585159

/-! ## A080111.P1651834444213236534

`xor(1, A080110(A028310(n+1)))`
-/

namespace A080111.P1651834444213236534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080110 (A028310 (n + 1)).toNat)

end

end A080111.P1651834444213236534

/-! ## A080111.P1616471821421512258

`A000007(n*A080110(n+1))`
-/

namespace A080111.P1616471821421512258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A080110 (n + 1)).toNat

end

end A080111.P1616471821421512258

/-! ## A080111.P857335156964548480

`∏{d}[n*A080110(n+1), A001221(#)]`
-/

namespace A080111.P857335156964548480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A080111.P857335156964548480

/-! ## A080111.P7901535265890758492

`∏{d}[n*A080110(n+1), A001222(#)]`
-/

namespace A080111.P7901535265890758492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A080111.P7901535265890758492

/-! ## A080111.P11002263429668473524

`xor(A000010(C(2, n)!), A080110(n+1))`
-/

namespace A080111.P11002263429668473524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000010 (Nat.factorial (Nat.choose 2 n))) (A080110 (n + 1))

end

end A080111.P11002263429668473524

/-! ## A080111.P295954361827102846

`∏{d}[n*A080110(n+1), log2(A000010(#))]`
-/

namespace A080111.P295954361827102846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080110 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.logb 2 (A000010 d : ℝ)

end

end A080111.P295954361827102846

/-! ## A080111.P14628711852083685899

`A080116((2*n+1)*A080110(n+1))`
-/

namespace A080111.P14628711852083685899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 ((2 * n + 1 : ℤ) * A080110 (n + 1)).toNat

end

end A080111.P14628711852083685899

/-! ## A080111.P5671488500680784980

`A080116(A080110(n+1)+A014486(n))`
-/

namespace A080111.P5671488500680784980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A080110 (n + 1) + A014486 n).toNat

end

end A080111.P5671488500680784980

/-!
# A080112: Positions of A080114 in A000040.

The programs for A080112, there is no canonical definition to state claims against.
-/

/-! ## A080112.P12167210744340421031

`filter[A344180(n), A080110(#)]`
-/

namespace A080112.P12167210744340421031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P12167210744340421031

/-! ## A080112.P13183366346880648475

`filter[A305903(n+1), A080110(#)]`
-/

namespace A080112.P13183366346880648475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P13183366346880648475

/-! ## A080112.P16561984059394977163

`filter[A305904(n+1), A080110(#)]`
-/

namespace A080112.P16561984059394977163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P16561984059394977163

/-! ## A080112.P6706533787799517890

`A000720(A080114(n+1))`
-/

namespace A080112.P6706533787799517890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080114 (n + 1)).toNat

end

end A080112.P6706533787799517890

/-! ## A080112.P7410762292413648210

`filter[A092942(n+1), A080110(#)]`
-/

namespace A080112.P7410762292413648210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P7410762292413648210

/-! ## A080112.P15004764149870507425

`filter[A152271(n), A080110(#)]`
-/

namespace A080112.P15004764149870507425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P15004764149870507425

/-! ## A080112.P15961711261184413075

`filter[A158416(n), A080110(#)]`
-/

namespace A080112.P15961711261184413075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P15961711261184413075

/-! ## A080112.P12555774378279828718

`filter[A133622(n+1), A080110(#)]`
-/

namespace A080112.P12555774378279828718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P12555774378279828718

/-! ## A080112.P12208398083284187049

`filter[A006085(2*n+1), A080110(#)]`
-/

namespace A080112.P12208398083284187049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P12208398083284187049

/-! ## A080112.P3784787082444917800

`A230980(A080114(n+1)+1)`
-/

namespace A080112.P3784787082444917800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A080114 (n + 1) + 1).toNat

end

end A080112.P3784787082444917800

/-! ## A080112.P17461520100622906954

`filter[A332864(n+1), A080110(#)]`
-/

namespace A080112.P17461520100622906954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P17461520100622906954

/-! ## A080112.P13098699964995043561

`filter[A248182(n), A080110(#)]`
-/

namespace A080112.P13098699964995043561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A080112.P13098699964995043561

/-!
# A080113: Positions of A080115 in A000040.

The programs for A080113, there is no canonical definition to state claims against.
-/

/-! ## A080113.P13845346586814095622

`comp[A080112(n+1)-1]+1`
-/

namespace A080113.P13845346586814095622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080112 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080113.P13845346586814095622

/-! ## A080113.P2361298991527392069

`eq[0, A080110(n+1)]+1`
-/

namespace A080113.P2361298991527392069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080113.P2361298991527392069

/-! ## A080113.P15184106953132863595

`lt[0, A080111(n+1)]+1`
-/

namespace A080113.P15184106953132863595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080113.P15184106953132863595

/-! ## A080113.P5307083309189077356

`record[(n+1)*A080111(ϕ²-(ϕ-n))]`
-/

namespace A080113.P5307083309189077356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080111 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080113.P5307083309189077356

/-! ## A080113.P2532997835788186247

`eq[0, A080110(A000038(n)+n)]`
-/

namespace A080113.P2532997835788186247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080113.P2532997835788186247

/-! ## A080113.P10891282747792427015

`eq[1, A080111(A000038(n)+n)]`
-/

namespace A080113.P10891282747792427015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080113.P10891282747792427015

/-! ## A080113.P3328946047688025527

`record[(1-A080110(n+1))*A000027(n+1)]`
-/

namespace A080113.P3328946047688025527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080110 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080113.P3328946047688025527

/-! ## A080113.P827984288772809882

`record[1-(n-A005843(n))-n*A080110(n+1)]`
-/

namespace A080113.P827984288772809882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - A005843 n) - (n : ℤ) * A080110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080113.P827984288772809882

/-! ## A080113.P17126389642402885142

`A000720(A080115(n+1))`
-/

namespace A080113.P17126389642402885142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080115 (n + 1)).toNat

end

end A080113.P17126389642402885142

/-! ## A080113.P2423272043327678714

`filter[A038459(n+1), A080111(#)]`
-/

namespace A080113.P2423272043327678714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080111 (f1 j).toNat = 1) n)

end

end A080113.P2423272043327678714

/-!
# A080114: Odd primes p for which all sums Sum_{j=1..u} L(j/p) (with u ranging from 1 to (p-1)/2) are nonnegative, where L(j/p) is Legendre symbol of j and p.

The programs for A080114, there is no canonical definition to state claims against.
-/

/-! ## A080114.P1553527570303782095

`A000040(A080112(n+1))`
-/

namespace A080114.P1553527570303782095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080112 (n + 1)).toNat

end

end A080114.P1553527570303782095

/-! ## A080114.P15292586225600999699

`A008578(A080112(n+1)+1)`
-/

namespace A080114.P15292586225600999699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080112 (n + 1) + 1).toNat

end

end A080114.P15292586225600999699

/-! ## A080114.P15412605683537938672

`A182986(A080112(n+1)+1)`
-/

namespace A080114.P15412605683537938672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A080112 (n + 1) + 1).toNat

end

end A080114.P15412605683537938672

/-! ## A080114.P16630400582020127839

`A065091(A080112(n+1)-1)`
-/

namespace A080114.P16630400582020127839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A080112 (n + 1) - 1).toNat

end

end A080114.P16630400582020127839

/-! ## A080114.P6185644700829806745

`A158611(A080112(n+1)+2)`
-/

namespace A080114.P6185644700829806745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A080112 (n + 1) + 2).toNat

end

end A080114.P6185644700829806745

/-! ## A080114.P18029809853013813498

`∑{d}[A080112(n+1), A007444(#)]`
-/

namespace A080114.P18029809853013813498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A080114.P18029809853013813498

/-! ## A080114.P1474174550201624542

`A006005(lcm((-1)^n, A080112(n+1)))`
-/

namespace A080114.P1474174550201624542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lcm ((-1) ^ n) (A080112 (n + 1)))

end

end A080114.P1474174550201624542

/-! ## A080114.P6668902766333161443

`A207790(2*A080112(n+1))`
-/

namespace A080114.P6668902766333161443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A080112 (n + 1)).toNat

end

end A080114.P6668902766333161443

/-!
# A080115: Primes not in A080114.

The programs for A080115, there is no canonical definition to state claims against.
-/

/-! ## A080115.P9853864675644239640

`A000040(A080113(n+1))`
-/

namespace A080115.P9853864675644239640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080113 (n + 1)).toNat

end

end A080115.P9853864675644239640

/-! ## A080115.P14548574656994901239

`∑{d}[A080113(n+1), A007444(#)]`
-/

namespace A080115.P14548574656994901239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A080115.P14548574656994901239

/-! ## A080115.P8107730557472650524

`A000040(eq[0, A080110(n+1)]+1)`
-/

namespace A080115.P8107730557472650524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080115.P8107730557472650524

/-! ## A080115.P2822011892487308735

`A000040(lt[0, A080111(n+1)]+1)`
-/

namespace A080115.P2822011892487308735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A080115.P2822011892487308735

/-! ## A080115.P13001874111328514785

`A000040(eq[1, A080111(n+1)]+1)`
-/

namespace A080115.P13001874111328514785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080115.P13001874111328514785

/-! ## A080115.P532087966733813406

`A000040(lt[A080110(n+1), 1]+1)`
-/

namespace A080115.P532087966733813406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A080115.P532087966733813406

/-! ## A080115.P3765087413966676483

`A000040(comp[A080112(n+1)-1]+1)`
-/

namespace A080115.P3765087413966676483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080112 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A080115.P3765087413966676483

/-! ## A080115.P5193620721823373335

`p?[A080110(n+1)+A000040(n+1)]`
-/

namespace A080115.P5193620721823373335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080115.P5193620721823373335

/-! ## A080115.P17940387912470226082

`A008578(A080113(n+1)+1)`
-/

namespace A080115.P17940387912470226082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080113 (n + 1) + 1).toNat

end

end A080115.P17940387912470226082

/-! ## A080115.P7076529994246573372

`A158611(A080113(n+1)+2)`
-/

namespace A080115.P7076529994246573372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A080113 (n + 1) + 2).toNat

end

end A080115.P7076529994246573372

/-!
# A080116: Characteristic function of A014486. a(n) = 1 if n's binary expansion is totally balanced, otherwise zero.

The programs for A080116, there is no canonical definition to state claims against.
-/

/-! ## A080116.P17251296375603239742

`char[A014486(n)]`
-/

namespace A080116.P17251296375603239742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P17251296375603239742

/-! ## A080116.P7184585155052148041

`char[2*A057520(n)]`
-/

namespace A080116.P7184585155052148041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P7184585155052148041

/-! ## A080116.P5706401140789620870

`char[A005843(A057520(n))]`
-/

namespace A080116.P5706401140789620870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057520 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P5706401140789620870

/-! ## A080116.P998110440673944569

`C(A014486(A080300(n)), n)`
-/

namespace A080116.P998110440673944569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014486 (A080300 n).toNat).toNat n

end

end A080116.P998110440673944569

/-! ## A080116.P2172711717574834714

`C(A014486(A215406(n)), n)`
-/

namespace A080116.P2172711717574834714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014486 (A215406 n).toNat).toNat n

end

end A080116.P2172711717574834714

/-! ## A080116.P1684623309393001162

`round(A080300(n)^(n/A027379(n)))`
-/

namespace A080116.P1684623309393001162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080300 n : ℝ) ^ ((n : ℚ) / (A027379 n : ℚ) : ℝ))

end

end A080116.P1684623309393001162

/-! ## A080116.P7100652093160511677

`1-A000295(a(n-1))^A080300(n)` with `a(0)=1`
-/

namespace A080116.P7100652093160511677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A000295 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A080300 n : ℤ)

end

end A080116.P7100652093160511677

/-! ## A080116.P6804330038518688879

`A080300(a(n-1)^A080300(n)+2)` with `a(0)=1`
-/

namespace A080116.P6804330038518688879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080300 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) ^ (A080300 n : ℤ) + 2)).toNat

end

end A080116.P6804330038518688879

/-! ## A080116.P2318773304047435018

`A057428(n)+1-A057428(A080300(n))`
-/

namespace A080116.P2318773304047435018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (1 - A057428 (A080300 n).toNat)

end

end A080116.P2318773304047435018

/-! ## A080116.P18366412310691414129

`C(A080300(n), A215406(n+1))`
-/

namespace A080116.P18366412310691414129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080300 n).toNat (A215406 (n + 1)).toNat

end

end A080116.P18366412310691414129

/-! ## A080116.P14253057371180406761

`A045843(A080300(n+1)^A080300(n))^n`
-/

namespace A080116.P14253057371180406761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (SequenceMachineLib.roundAway ((A080300 (n + 1) : ℚ) ^ (A080300 n : ℤ))).toNat ^ n

end

end A080116.P14253057371180406761

/-! ## A080116.P1935411109575433028

`A036988(A036044(2*n+1))*A036988(n)`
-/

namespace A080116.P1935411109575433028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A036044 (2 * n + 1)).toNat * A036988 n

end

end A080116.P1935411109575433028

/-! ## A080116.P10779313967620842162

`char[A004526(A194045(n))]`
-/

namespace A080116.P10779313967620842162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194045 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P10779313967620842162

/-! ## A080116.P13725900851573532317

`char[A057979(A194045(n)+1)]`
-/

namespace A080116.P13725900851573532317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A194045 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P13725900851573532317

/-! ## A080116.P4011367185269981495

`char[A213704(n)]`
-/

namespace A080116.P4011367185269981495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P4011367185269981495

/-! ## A080116.P2126571215121049850

`char[A075165(n+1)]`
-/

namespace A080116.P2126571215121049850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P2126571215121049850

/-! ## A080116.P7815017494446486635

`char[A106455(n+1)]`
-/

namespace A080116.P7815017494446486635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080116.P7815017494446486635

/-!
# A080117: Binary encoding of quadratic residue set formed for n-th prime, coerced to "complementarily symmetric binary sequence" with A080261 if the prime is of the form 4k+1.

The programs for A080117, there is no canonical definition to state claims against.
-/

/-! ## A080117.P17020688456396598377

`A000027(A080118(n+1))`
-/

namespace A080117.P17020688456396598377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080118 (n + 1)).toNat

end

end A080117.P17020688456396598377

/-!
# A080118: Intersection of A080117 and A014486.

The programs for A080118, there is no canonical definition to state claims against.
-/

/-! ## A080118.P9916137139002244834

`A080117(A080112(n+1))`
-/

namespace A080118.P9916137139002244834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080117 (A080112 (n + 1)).toNat

end

end A080118.P9916137139002244834

/-! ## A080118.P11992289976992285175

`A080117(eq[1, A080110(n+1)]+1)`
-/

namespace A080118.P11992289976992285175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080118.P11992289976992285175

/-! ## A080118.P13883570542282556548

`A080117(comp[A080113(n+1)-1]+1)`
-/

namespace A080118.P13883570542282556548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080113 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A080118.P13883570542282556548

/-! ## A080118.P8867069665554029941

`record[A080110(n+2)*A080117(n+2)]`
-/

namespace A080118.P8867069665554029941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (n + 2) * A080117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080118.P8867069665554029941

/-!
# A080120: Dyck path encodings of Legendre's candelabras formed for primes in A080114. (I.e., symmetric rooted plane trees constructed from their quadratic residue sets.)

The programs for A080120, there is no canonical definition to state claims against.
-/

/-! ## A080120.P7334567936064878766

`A063171(A080119(n+1))`
-/

namespace A080120.P7334567936064878766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A080119 (n + 1)).toNat

end

end A080120.P7334567936064878766

/-!
# A080122: Number of primes less than n*10^13.

The programs for A080122, there is no canonical definition to state claims against.
-/

/-! ## A080122.P4498449903366900244

`∑[A080132(n)]`
-/

namespace A080122.P4498449903366900244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080122.P4498449903366900244

/-! ## A080122.P2762880364069276025

`A038821(10*(n+1))`
-/

namespace A080122.P2762880364069276025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038821 (10 * (n + 1))

end

end A080122.P2762880364069276025

/-! ## A080122.P6355909771851655507

`A038820(50*2*(n+1))`
-/

namespace A080122.P6355909771851655507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038820 (50 * (2 * (n + 1)))

end

end A080122.P6355909771851655507

/-! ## A080122.P31851120784888341

`or(char[1], A038820(A044332(n+1)))`
-/

namespace A080122.P31851120784888341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038820 (A044332 (n + 1)).toNat)

end

end A080122.P31851120784888341

/-! ## A080122.P6273417314358382778

`lcm(A038820(A044332(n+1)), A087960(n))`
-/

namespace A080122.P6273417314358382778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038820 (A044332 (n + 1)).toNat) (A087960 n)

end

end A080122.P6273417314358382778

/-! ## A080122.P12712103849059661086

`A038820(A044332(n+1))%A080123(n+1)`
-/

namespace A080122.P12712103849059661086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038820 (A044332 (n + 1)).toNat) (A080123 (n + 1))

end

end A080122.P12712103849059661086

/-! ## A080122.P3237630008186563092

`A038820(A044332(n+1))+A001222(gcd(n, n+1))`
-/

namespace A080122.P3237630008186563092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038820 (A044332 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A080122.P3237630008186563092

/-!
# A080123: Number of primes less than n*10^14.

The programs for A080123, there is no canonical definition to state claims against.
-/

/-! ## A080123.P14847990565695396242

`A080122(10*(n+1))`
-/

namespace A080123.P14847990565695396242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080122 (10 * (n + 1))

end

end A080123.P14847990565695396242

/-! ## A080123.P3937298563386564822

`A038821(50*2*(n+1))`
-/

namespace A080123.P3937298563386564822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038821 (50 * (2 * (n + 1)))

end

end A080123.P3937298563386564822

/-! ## A080123.P11843202743121904072

`or(char[1], A038821(A044332(n+1)))`
-/

namespace A080123.P11843202743121904072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038821 (A044332 (n + 1)).toNat)

end

end A080123.P11843202743121904072

/-! ## A080123.P8185150581855629371

`lcm(A020985(n), A038821(A044332(n+1)))`
-/

namespace A080123.P8185150581855629371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A038821 (A044332 (n + 1)).toNat)

end

end A080123.P8185150581855629371

/-! ## A080123.P987783853487436248

`abs(A038821(A044332(n+1))/A033999(n))`
-/

namespace A080123.P987783853487436248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A038821 (A044332 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)|

end

end A080123.P987783853487436248

/-! ## A080123.P8270579127742373144

`A038821(A044332(n+1))+A000007(n+1)`
-/

namespace A080123.P8270579127742373144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038821 (A044332 (n + 1)).toNat + A000007 (n + 1)

end

end A080123.P8270579127742373144

/-! ## A080123.P3923031509490866609

`A038821(A044332(n+1))%A080124(n+1)`
-/

namespace A080123.P3923031509490866609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038821 (A044332 (n + 1)).toNat) (A080124 (n + 1))

end

end A080123.P3923031509490866609

/-! ## A080123.P3827620352214531325

`A038821(A044332(n+1))/A007318(∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A080123.P3827620352214531325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038821 (A044332 (n + 1)).toNat : ℚ) / (A007318 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat : ℚ)

end

end A080123.P3827620352214531325

/-! ## A080123.P8092018796621064924

`A338033(A000124(n))+A038821(A044332(n+1))`
-/

namespace A080123.P8092018796621064924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (A000124 n).toNat + A038821 (A044332 (n + 1)).toNat

end

end A080123.P8092018796621064924

/-!
# A080124: Number of primes less than n*10^15.

The programs for A080124, there is no canonical definition to state claims against.
-/

/-! ## A080124.P476494747724339568

`A080123(10*(n+1))`
-/

namespace A080124.P476494747724339568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080123 (10 * (n + 1))

end

end A080124.P476494747724339568

/-! ## A080124.P1307327853826594177

`A080122(50*2*(n+1))`
-/

namespace A080124.P1307327853826594177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080122 (50 * (2 * (n + 1)))

end

end A080124.P1307327853826594177

/-! ## A080124.P4877353258896933636

`or(char[1], A080122(A044332(n+1)))`
-/

namespace A080124.P4877353258896933636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080122 (A044332 (n + 1)).toNat)

end

end A080124.P4877353258896933636

/-! ## A080124.P7689306832855012034

`lcm(A033999(n), A080122(A044332(n+1)))`
-/

namespace A080124.P7689306832855012034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A080122 (A044332 (n + 1)).toNat)

end

end A080124.P7689306832855012034

/-! ## A080124.P4579253665496582459

`A080122(A044332(n+1))%A080125(n+1)`
-/

namespace A080124.P4579253665496582459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080122 (A044332 (n + 1)).toNat) (A080125 (n + 1))

end

end A080124.P4579253665496582459

/-! ## A080124.P6082335654350388979

`A080122(A044332(n+1))/A000045(gcd(n, n+1))`
-/

namespace A080124.P6082335654350388979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080122 (A044332 (n + 1)).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A080124.P6082335654350388979

/-! ## A080124.P13157109309548057107

`A000108(C(2, n+2))+A080122(A044332(n+1))-1`
-/

namespace A080124.P13157109309548057107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) + (A080122 (A044332 (n + 1)).toNat - 1)

end

end A080124.P13157109309548057107

/-! ## A080124.P425049044007520759

`A080122(A044332(n+1))+4%and(5, A005117(n+2)²)`
-/

namespace A080124.P425049044007520759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080122 (A044332 (n + 1)).toNat + Int.tmod 4 (Int.land 5 (A005117 (n + 2) ^ 2))

end

end A080124.P425049044007520759

/-!
# A080125: Number of primes less than n*10^16.

The programs for A080125, there is no canonical definition to state claims against.
-/

/-! ## A080125.P13924368539790957913

`A080124(10*(n+1))`
-/

namespace A080125.P13924368539790957913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080124 (10 * (n + 1))

end

end A080125.P13924368539790957913

/-! ## A080125.P13290465281255555913

`A080123(50*2*(n+1))`
-/

namespace A080125.P13290465281255555913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080123 (50 * (2 * (n + 1)))

end

end A080125.P13290465281255555913

/-! ## A080125.P13615441845307387544

`lcm(A080123(A044332(n+1)), A087960(n))`
-/

namespace A080125.P13615441845307387544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080123 (A044332 (n + 1)).toNat) (A087960 n)

end

end A080125.P13615441845307387544

/-! ## A080125.P16840066027928941285

`or(A000007(n), A080123(A044332(n+1)))`
-/

namespace A080125.P16840066027928941285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A080123 (A044332 (n + 1)).toNat)

end

end A080125.P16840066027928941285

/-! ## A080125.P1831190770710426694

`A080123(A044332(n+1))+2%A000034(n)`
-/

namespace A080125.P1831190770710426694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080123 (A044332 (n + 1)).toNat + Int.tmod 2 (A000034 n)

end

end A080125.P1831190770710426694

/-! ## A080125.P409767728212918403

`A080123(A044332(n+1))/A007318(C(3, n))`
-/

namespace A080125.P409767728212918403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080123 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A080125.P409767728212918403

/-! ## A080125.P10738653051017813748

`A080123(A044332(n+1))/A007318(∑[n+2])`
-/

namespace A080125.P10738653051017813748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080123 (A044332 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A080125.P10738653051017813748

/-!
# A080126: 

The programs for A080126, there is no canonical definition to state claims against.
-/

/-! ## A080126.P2464318129075590004

`A080125(A017341(n)+4)`
-/

namespace A080126.P2464318129075590004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A017341 n + 4).toNat

end

end A080126.P2464318129075590004

/-! ## A080126.P2254502643682104268

`A080125(A017317(n)+6)`
-/

namespace A080126.P2254502643682104268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A017317 n + 6).toNat

end

end A080126.P2254502643682104268

/-! ## A080126.P1396031431902061287

`A080125(A017305(n)+7)`
-/

namespace A080126.P1396031431902061287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A017305 n + 7).toNat

end

end A080126.P1396031431902061287

/-! ## A080126.P3955110716654224733

`A080125(A017293(n)+8)`
-/

namespace A080126.P3955110716654224733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A017293 n + 8).toNat

end

end A080126.P3955110716654224733

/-! ## A080126.P14305373286779150690

`A080125(A017281(n)+9)`
-/

namespace A080126.P14305373286779150690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A017281 n + 9).toNat

end

end A080126.P14305373286779150690

/-! ## A080126.P8941529280581053456

`A080125(A008592(n)+10)`
-/

namespace A080126.P8941529280581053456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080125 (A008592 n + 10).toNat

end

end A080126.P8941529280581053456

/-! ## A080126.P2708914736651088710

`A080124(xor(1, A158128(n+1)))`
-/

namespace A080126.P2708914736651088710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080124 (Int.xor 1 (A158128 (n + 1))).toNat

end

end A080126.P2708914736651088710

/-!
# A080130: Decimal expansion of exp(-gamma).

The programs for A080130, there is no canonical definition to state claims against.
-/

/-! ## A080130.P5001639405880889866

`9-A227242(n)`
-/

namespace A080130.P5001639405880889866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A227242 n

end

end A080130.P5001639405880889866

/-!
# A080131: Conjectured number of generalized Fermat primes of the form (n+1)^2^k + n^2^k, with k>1.

The programs for A080131, there is no canonical definition to state claims against.
-/

/-! ## A080131.P13289917093859999133

`Δ[A000720(A048226(2*(n+1)))]`
-/

namespace A080131.P13289917093859999133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048226 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080131.P13289917093859999133

/-! ## A080131.P8921037019744160474

`A007423(A008486(n))+char[Δ[n!]]`
-/

namespace A080131.P8921037019744160474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008486 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080131.P8921037019744160474

/-! ## A080131.P12496171213087052029

`A204843(n)+A007423(A008486(n))`
-/

namespace A080131.P12496171213087052029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n + A007423 (A008486 n).toNat

end

end A080131.P12496171213087052029

/-! ## A080131.P13280109824828335718

`A007423(A008486(n))+char[A030179(n)]`
-/

namespace A080131.P13280109824828335718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008486 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080131.P13280109824828335718

/-! ## A080131.P5110916854188888836

`A007423(A008486(n))+char[A260346(n)]`
-/

namespace A080131.P5110916854188888836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008486 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080131.P5110916854188888836

/-!
# A080132: Number of primes between n*10^13 and (n+1)*10^13.

The programs for A080132, there is no canonical definition to state claims against.
-/

/-! ## A080132.P17303935634274186487

`Δ[A057427(n)*A080122(A028310(n))]`
-/

namespace A080132.P17303935634274186487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080122 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080132.P17303935634274186487

/-! ## A080132.P5817371055428576644

`Δ[A080122(A028310(n))%A080122(n+1)]`
-/

namespace A080132.P5817371055428576644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080122 (A028310 n).toNat) (A080122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080132.P5817371055428576644

/-! ## A080132.P3069502312685471171

`A080122(n+1)%A080122(A000038(n)+n)`
-/

namespace A080132.P3069502312685471171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080122 (n + 1)) (A080122 (A000038 n + (n : ℤ)).toNat)

end

end A080132.P3069502312685471171

/-! ## A080132.P15218308335189018943

`A080122(n+1)-A057427(n)*A080122(A028310(n))`
-/

namespace A080132.P15218308335189018943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080122 (n + 1) - A057427 n * A080122 (A028310 n).toNat

end

end A080132.P15218308335189018943

/-! ## A080132.P18218438492734858078

`A080122(n+1)-∑{e}[A000079(n), A080122(#)]`
-/

namespace A080132.P18218438492734858078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080122 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080122 (Nat.factorization (f1 n).natAbs p)

end

end A080132.P18218438492734858078

/-!
# A080133: Conjectured number of generalized Fermat primes of the form (n+1)^2^k + n^2^k, with k>0.

The programs for A080133, there is no canonical definition to state claims against.
-/

/-! ## A080133.P14039646701592020271

`A080134(n+1)-char[A067076(n+1)]`
-/

namespace A080133.P14039646701592020271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080133.P14039646701592020271

/-! ## A080133.P8119018926353066576

`A080134(n+1)+A237584(n+1)-1`
-/

namespace A080133.P8119018926353066576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1) + (A237584 (n + 1) - 1)

end

end A080133.P8119018926353066576

/-! ## A080133.P12258495446329077456

`A080134(n+1)-A121559(2*(n+2))`
-/

namespace A080133.P12258495446329077456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1) - A121559 (2 * (n + 2))

end

end A080133.P12258495446329077456

/-! ## A080133.P17244685914721167374

`A080134(n+1)-A080339(2*n+3)`
-/

namespace A080133.P17244685914721167374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1) - A080339 (2 * n + 3)

end

end A080133.P17244685914721167374

/-! ## A080133.P10537301793213873211

`A080134(n+1)-Δ[A000720(2*(n+1))]`
-/

namespace A080133.P10537301793213873211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1) - (f1 (n + 1) - f1 n)

end

end A080133.P10537301793213873211

/-!
# A080134: Conjectured number of generalized Fermat primes of the form (n+1)^2^k + n^2^k, with k>=0.

The programs for A080134, there is no canonical definition to state claims against.
-/

/-! ## A080134.P13975417721723581851

`A317595(n+2)+A080133(n+1)`
-/

namespace A080134.P13975417721723581851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317595 (n + 2) + A080133 (n + 1)

end

end A080134.P13975417721723581851

/-! ## A080134.P1222810035985363483

`A080133(n+1)+char[A067076(n+1)]`
-/

namespace A080134.P1222810035985363483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080133 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080134.P1222810035985363483

/-! ## A080134.P3767571944493140028

`A080133(n+1)+A010051(2*n+3)`
-/

namespace A080134.P3767571944493140028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080133 (n + 1) + A010051 (2 * n + 3)

end

end A080134.P3767571944493140028

/-! ## A080134.P10678037508910146241

`A080339(2*n+3)+A080133(n+1)`
-/

namespace A080134.P10678037508910146241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 3) + A080133 (n + 1)

end

end A080134.P10678037508910146241

/-! ## A080134.P14434997902678833166

`A266716(A057856(n+1))+A080133(n+1)`
-/

namespace A080134.P14434997902678833166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A057856 (n + 1)).toNat + A080133 (n + 1)

end

end A080134.P14434997902678833166

/-!
# A080135: a(n+1) = floor(a(n) * Sum_{k=0..n} 1/a(k)^s), where s = Sum_{k>=0} 1/a(k)^s and a(0)=1; s = 2.260568736857767...

The programs for A080135, there is no canonical definition to state claims against.
-/

/-! ## A080135.P3403413076941815575

`A293429(A181153(n))+A213411(n)`
-/

namespace A080135.P3403413076941815575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 (A181153 n).toNat + A213411 n

end

end A080135.P3403413076941815575

/-! ## A080135.P14391299669338772077

`A213411(n)+A024360(A148306(n))`
-/

namespace A080135.P14391299669338772077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213411 n + A024360 (A148306 n).toNat

end

end A080135.P14391299669338772077

/-! ## A080135.P12367106983659505282

`A213411(n)+A036639(A137748(n))`
-/

namespace A080135.P12367106983659505282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213411 n + A036639 (A137748 n).toNat

end

end A080135.P12367106983659505282

/-! ## A080135.P10609372083023836821

`A316864(A098289(n+1))+A213411(n)`
-/

namespace A080135.P10609372083023836821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A098289 (n + 1)).toNat + A213411 n

end

end A080135.P10609372083023836821

/-!
# A080136: Least positive integer multiples of angle x such that their direction cosines form a unit vector: Sum_{k>0} cos(a(k)*x)^2 = 1, where a(1)=1 and x=1.

The programs for A080136, there is no canonical definition to state claims against.
-/

/-! ## A080136.P7514154454442449301

`A096603(A296712(n+5)-4)`
-/

namespace A080136.P7514154454442449301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (A296712 (n + 5) - 4).toNat

end

end A080136.P7514154454442449301

/-!
# A080140: Least positive integer multiples of angle x such that their direction cosines form a unit vector: Sum_{k>0} cos(a(k)*x)^2 = 1, where a(1)=1 and x=2/3.

The programs for A080140, there is no canonical definition to state claims against.
-/

/-! ## A080140.P1479960729252444588

`A317937(A203534(n))+A002382(n+1)`
-/

namespace A080140.P1479960729252444588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (A203534 n).toNat + A002382 (n + 1)

end

end A080140.P1479960729252444588

/-!
# A080141: a(n) = (3^(n-1))*(n!)^2.

The programs for A080141, the canonical program `A080141.P11801985318611165345` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080141 has offset 1).

The definition of A080141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(n+1)!²` (program `A080141.P11801985318611165345`, by `A080141.P11801985318611165345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080141.P11801985318611165345

`3^n*(n+1)!²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080141

/-- `3^n*(n+1)!²` -/
def P11801985318611165345.Spec : Prop :=
  ∀ n, (P11801985318611165345.a n : ℤ) = A080141 (n + 1)

theorem P11801985318611165345.correct : P11801985318611165345.Spec := by
  intro n
  simp only [A080141, Nat.add_sub_cancel]

end A080141

/-! ## A080141.P5252729852256756546

`3^n*∏[(n+1)²]`
-/

namespace A080141.P5252729852256756546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A080141.P5252729852256756546

namespace A080141

/-- `3^n*∏[(n+1)²]` -/
def P5252729852256756546.Spec : Prop :=
  ∀ n, (P5252729852256756546.a n : ℤ) = A080141 (n + 1)

end A080141

/-! ## A080141.P8096548866498246105

`(n+1)!²/3^-n`
-/

namespace A080141.P8096548866498246105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A080141.P8096548866498246105

namespace A080141

/-- `(n+1)!²/3^-n` -/
def P8096548866498246105.Spec : Prop :=
  ∀ n, P8096548866498246105.a n = (A080141 (n + 1) : ℚ)

theorem P8096548866498246105.correct : P8096548866498246105.Spec := by
  intro n
  simp only [A080141, Nat.add_sub_cancel, A080141.P8096548866498246105.a, A080141.P11801985318611165345.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A080141

/-! ## A080141.P4715424353638991673

`∏[(n+1)²*gcd(3, (n+2)!)]`
-/

namespace A080141.P4715424353638991673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.gcd 3 (Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080141.P4715424353638991673

namespace A080141

/-- `∏[(n+1)²*gcd(3, (n+2)!)]` -/
def P4715424353638991673.Spec : Prop :=
  ∀ n, (P4715424353638991673.a n : ℤ) = A080141 (n + 1)

end A080141

/-! ## A080141.P15080407747900006892

`abs(3*a(n-1)*(n+1)²)` with `a(0)=1`
-/

namespace A080141.P15080407747900006892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) * (n + 1) ^ 2

end

end A080141.P15080407747900006892

namespace A080141

/-- `abs(3*a(n-1)*(n+1)²)` -/
def P15080407747900006892.Spec : Prop :=
  ∀ n, (P15080407747900006892.a n : ℤ) = A080141 (n + 1)

end A080141

/-!
# A080143: a(n) = F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 - F(4) if n even, F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 if n odd, where F(n) is the n-th Fibonacci number (A000045).

The programs for A080143, the canonical program `A080143.P15882219857944714637` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080143 has offset 0).

The definition of A080143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080143.P320301053192195265

`ogf((5x-2x^2)/(1-3x+3x^3-x^4))`
-/

namespace A080143.P320301053192195265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2] [1, -3, 0, 3, -1] n

end

end A080143.P320301053192195265

namespace A080143

/-- `ogf((5x-2x^2)/(1-3x+3x^3-x^4))` -/
def P320301053192195265.Spec : Prop :=
  ∀ n, P320301053192195265.a n = A080143 n

end A080143

/-! ## A080143.P15882219857944714637

`(3*A027941(n)+7*A001654(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080143

/-- `(3*A027941(n)+7*A001654(n))/2` -/
def P15882219857944714637.Spec : Prop :=
  ∀ n, P15882219857944714637.a n = (A080143 n : ℚ)

end A080143

/-! ## A080143.P12359659505772431597

`(2*A000045(n+2)*A000045(n+3)-3-(-1)^n)/2`
-/

namespace A080143.P12359659505772431597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 2) * A000045 (n + 3) - 3 - (-1) ^ n : ℚ) / 2

end

end A080143.P12359659505772431597

namespace A080143

/-- `(2*A000045(n+2)*A000045(n+3)-3-(-1)^n)/2` -/
def P12359659505772431597.Spec : Prop :=
  ∀ n, P12359659505772431597.a n = (A080143 n : ℚ)

end A080143

/-! ## A080143.P6121560078554949947

`(2*A000032(2*n+5)+7*(-1)^(n+1)-15)/10`
-/

namespace A080143.P6121560078554949947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000032 (2 * n + 5) + 7 * (-1) ^ (n + 1) - 15 : ℚ) / 10

end

end A080143.P6121560078554949947

namespace A080143

/-- `(2*A000032(2*n+5)+7*(-1)^(n+1)-15)/10` -/
def P6121560078554949947.Spec : Prop :=
  ∀ n, P6121560078554949947.a n = (A080143 n : ℚ)

end A080143

/-! ## A080143.P17775099490413430812

`∑[A192920(n)]`
-/

namespace A080143.P17775099490413430812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P17775099490413430812

namespace A080143

/-- `∑[A192920(n)]` -/
def P17775099490413430812.Spec : Prop :=
  ∀ n, P17775099490413430812.a n = A080143 n

end A080143

/-! ## A080143.P7669660667224241573

`∑[A192883(n+1)]`
-/

namespace A080143.P7669660667224241573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P7669660667224241573

namespace A080143

/-- `∑[A192883(n+1)]` -/
def P7669660667224241573.Spec : Prop :=
  ∀ n, P7669660667224241573.a n = A080143 n

end A080143

/-! ## A080143.P12968142857873542996

`ceil(ϕ*A080097(n))`
-/

namespace A080143.P12968142857873542996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A080097 n : ℝ)⌉

end

end A080143.P12968142857873542996

namespace A080143

/-- `ceil(ϕ*A080097(n))` -/
def P12968142857873542996.Spec : Prop :=
  ∀ n, P12968142857873542996.a n = A080143 n

end A080143

/-! ## A080143.P9858968780513541863

`∑[record[A192883(n)]]-2`
-/

namespace A080143.P9858968780513541863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A080143.P9858968780513541863

namespace A080143

/-- `∑[record[A192883(n)]]-2` -/
def P9858968780513541863.Spec : Prop :=
  ∀ n, P9858968780513541863.a n = A080143 n

end A080143

/-! ## A080143.P538660072675416395

`∑[A295688(2*(n+1))]`
-/

namespace A080143.P538660072675416395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P538660072675416395

namespace A080143

/-- `∑[A295688(2*(n+1))]` -/
def P538660072675416395.Spec : Prop :=
  ∀ n, P538660072675416395.a n = A080143 n

end A080143

/-! ## A080143.P12245029119764746080

`A001654(n+2)-gcd(2, n)`
-/

namespace A080143.P12245029119764746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - (Nat.gcd 2 n : ℤ)

end

end A080143.P12245029119764746080

namespace A080143

/-- `A001654(n+2)-gcd(2, n)` -/
def P12245029119764746080.Spec : Prop :=
  ∀ n, P12245029119764746080.a n = A080143 n

end A080143

/-! ## A080143.P4811116807264014094

`floor(ϕ*A000045(n+2)²)-1`
-/

namespace A080143.P4811116807264014094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A000045 (n + 2) ^ 2 : ℝ)⌋ - 1

end

end A080143.P4811116807264014094

namespace A080143

/-- `floor(ϕ*A000045(n+2)²)-1` -/
def P4811116807264014094.Spec : Prop :=
  ∀ n, P4811116807264014094.a n = A080143 n

end A080143

/-! ## A080143.P7526954239887980662

`A000045(2*n+3)+a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A080143.P7526954239887980662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  A000045 (2 * n + 3) + a (n - 2)

end

end A080143.P7526954239887980662

namespace A080143

/-- `A000045(2*n+3)+a(n-2)` -/
def P7526954239887980662.Spec : Prop :=
  ∀ n, P7526954239887980662.a n = A080143 n

end A080143

/-! ## A080143.P13099375719669864877

`∑[A000045(n+3+n)-a(n-1)]` with `a(0)=0`
-/

namespace A080143.P13099375719669864877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000045 (n + 3 + n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P13099375719669864877

namespace A080143

/-- `∑[A000045(n+3+n)-a(n-1)]` -/
def P13099375719669864877.Spec : Prop :=
  ∀ n, P13099375719669864877.a n = A080143 n

end A080143

/-! ## A080143.P13663457351870771548

`A080097(n)+A059840(n+2)`
-/

namespace A080143.P13663457351870771548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080097 n + A059840 (n + 2)

end

end A080143.P13663457351870771548

namespace A080143

/-- `A080097(n)+A059840(n+2)` -/
def P13663457351870771548.Spec : Prop :=
  ∀ n, P13663457351870771548.a n = A080143 n

end A080143

/-! ## A080143.P16331085667636233643

`A119996(n+1)-A059841(n)`
-/

namespace A080143.P16331085667636233643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119996 (n + 1) - A059841 n

end

end A080143.P16331085667636233643

namespace A080143

/-- `A119996(n+1)-A059841(n)` -/
def P16331085667636233643.Spec : Prop :=
  ∀ n, P16331085667636233643.a n = A080143 n

end A080143

/-! ## A080143.P8836650764746782561

`2*A080097(n)-A064831(n)`
-/

namespace A080143.P8836650764746782561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080097 n - A064831 n

end

end A080143.P8836650764746782561

namespace A080143

/-- `2*A080097(n)-A064831(n)` -/
def P8836650764746782561.Spec : Prop :=
  ∀ n, P8836650764746782561.a n = A080143 n

end A080143

/-! ## A080143.P112673479318461751

`A094966(n)*A094967(n+4)`
-/

namespace A080143.P112673479318461751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n * A094967 (n + 4)

end

end A080143.P112673479318461751

namespace A080143

/-- `A094966(n)*A094967(n+4)` -/
def P112673479318461751.Spec : Prop :=
  ∀ n, P112673479318461751.a n = A080143 n

end A080143

/-! ## A080143.P4760546191501892247

`∑[A128533(n)+A000045(n)²]`
-/

namespace A080143.P4760546191501892247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n + A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P4760546191501892247

namespace A080143

/-- `∑[A128533(n)+A000045(n)²]` -/
def P4760546191501892247.Spec : Prop :=
  ∀ n, P4760546191501892247.a n = A080143 n

end A080143

/-! ## A080143.P5932409161701044870

`∑[A001654(n)+2*A059929(n)]`
-/

namespace A080143.P5932409161701044870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + 2 * A059929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P5932409161701044870

namespace A080143

/-- `∑[A001654(n)+2*A059929(n)]` -/
def P5932409161701044870.Spec : Prop :=
  ∀ n, P5932409161701044870.a n = A080143 n

end A080143

/-! ## A080143.P9469947629242785220

`∑[A000045(n+4)*A000045(n)]`
-/

namespace A080143.P9469947629242785220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080143.P9469947629242785220

namespace A080143

/-- `∑[A000045(n+4)*A000045(n)]` -/
def P9469947629242785220.Spec : Prop :=
  ∀ n, P9469947629242785220.a n = A080143 n

end A080143

/-!
# A080144: a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 if n odd, a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 - F(5) if n even, where F(n) is the n-th Fibonacci number (A000045).

The programs for A080144, the canonical program `A080144.P8666941854186962833` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080144 has offset 0).

The definition of A080144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080144.P9477797700057914466

`ogf((8x-3x^2)/(1-3x+3x^3-x^4))`
-/

namespace A080144.P9477797700057914466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -3] [1, -3, 0, 3, -1] n

end

end A080144.P9477797700057914466

namespace A080144

/-- `ogf((8x-3x^2)/(1-3x+3x^3-x^4))` -/
def P9477797700057914466.Spec : Prop :=
  ∀ n, P9477797700057914466.a n = A080144 n

end A080144

/-! ## A080144.P2593910569464267031

`(2*A000045(n+3)²-5-3*(-1)^n)/2`
-/

namespace A080144.P2593910569464267031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 3) ^ 2 - 5 - 3 * (-1) ^ n : ℚ) / 2

end

end A080144.P2593910569464267031

namespace A080144

/-- `(2*A000045(n+3)²-5-3*(-1)^n)/2` -/
def P2593910569464267031.Spec : Prop :=
  ∀ n, P2593910569464267031.a n = (A080144 n : ℚ)

end A080144

/-! ## A080144.P8666941854186962833

`(5*A027941(n)+11*A001654(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080144

/-- `(5*A027941(n)+11*A001654(n))/2` -/
def P8666941854186962833.Spec : Prop :=
  ∀ n, P8666941854186962833.a n = (A080144 n : ℚ)

end A080144

/-! ## A080144.P7775276912316020590

`(2*A000032(2*n+6)+11*(-1)^(n+1)-25)/10`
-/

namespace A080144.P7775276912316020590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000032 (2 * n + 6) + 11 * (-1) ^ (n + 1) - 25 : ℚ) / 10

end

end A080144.P7775276912316020590

namespace A080144

/-- `(2*A000032(2*n+6)+11*(-1)^(n+1)-25)/10` -/
def P7775276912316020590.Spec : Prop :=
  ∀ n, P7775276912316020590.a n = (A080144 n : ℚ)

end A080144

/-! ## A080144.P4702904737842320711

`∑[A192919(n+1)]`
-/

namespace A080144.P4702904737842320711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080144.P4702904737842320711

namespace A080144

/-- `∑[A192919(n+1)]` -/
def P4702904737842320711.Spec : Prop :=
  ∀ n, P4702904737842320711.a n = A080144 n

end A080144

/-! ## A080144.P3791383527621022399

`floor(ϕ*A080143(n))`
-/

namespace A080144.P3791383527621022399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A080143 n : ℝ)⌋

end

end A080144.P3791383527621022399

namespace A080144

/-- `floor(ϕ*A080143(n))` -/
def P3791383527621022399.Spec : Prop :=
  ∀ n, P3791383527621022399.a n = A080144 n

end A080144

/-! ## A080144.P8118897414802189692

`floor(A214729(n)/ϕ)`
-/

namespace A080144.P8118897414802189692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214729 n : ℝ) / Real.goldenRatio⌋

end

end A080144.P8118897414802189692

namespace A080144

/-- `floor(A214729(n)/ϕ)` -/
def P8118897414802189692.Spec : Prop :=
  ∀ n, P8118897414802189692.a n = A080144 n

end A080144

/-! ## A080144.P5934428687058474702

`A000045(n+3)²-gcd(2, n)²`
-/

namespace A080144.P5934428687058474702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) ^ 2 - (Nat.gcd 2 n ^ 2 : ℤ)

end

end A080144.P5934428687058474702

namespace A080144

/-- `A000045(n+3)²-gcd(2, n)²` -/
def P5934428687058474702.Spec : Prop :=
  ∀ n, P5934428687058474702.a n = A080144 n

end A080144

/-! ## A080144.P14366681908556855954

`floor((ϕ*A000045(n+2))²)-2`
-/

namespace A080144.P14366681908556855954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio * (A000045 (n + 2) : ℝ)) ^ 2⌋ - 2

end

end A080144.P14366681908556855954

namespace A080144

/-- `floor((ϕ*A000045(n+2))²)-2` -/
def P14366681908556855954.Spec : Prop :=
  ∀ n, P14366681908556855954.a n = A080144 n

end A080144

/-! ## A080144.P6432969342346236785

`∑[A260259(n+2)]-char[2*n]`
-/

namespace A080144.P6432969342346236785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080144.P6432969342346236785

namespace A080144

/-- `∑[A260259(n+2)]-char[2*n]` -/
def P6432969342346236785.Spec : Prop :=
  ∀ n, P6432969342346236785.a n = A080144 n

end A080144

/-! ## A080144.P3566207731076454542

`A001519(n+3)-(a(n-1)+5)` with `a(0)=0`
-/

namespace A080144.P3566207731076454542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001519 (n + 3) - (a (n - 1) + 5)

end

end A080144.P3566207731076454542

namespace A080144

/-- `A001519(n+3)-(a(n-1)+5)` -/
def P3566207731076454542.Spec : Prop :=
  ∀ n, P3566207731076454542.a n = A080144 n

end A080144

/-! ## A080144.P1164732244981909428

`A080143(n)+A080097(n)`
-/

namespace A080144.P1164732244981909428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080143 n + A080097 n

end

end A080144.P1164732244981909428

namespace A080144

/-- `A080143(n)+A080097(n)` -/
def P1164732244981909428.Spec : Prop :=
  ∀ n, P1164732244981909428.a n = A080144 n

end A080144

/-! ## A080144.P8671459538108016224

`A214729(n)-A080143(n)`
-/

namespace A080144.P8671459538108016224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214729 n - A080143 n

end

end A080144.P8671459538108016224

namespace A080144

/-- `A214729(n)-A080143(n)` -/
def P8671459538108016224.Spec : Prop :=
  ∀ n, P8671459538108016224.a n = A080144 n

end A080144

/-! ## A080144.P2676378768795560992

`A005970(n+1)-A110035(n)`
-/

namespace A080144.P2676378768795560992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005970 (n + 1) - A110035 n

end

end A080144.P2676378768795560992

namespace A080144

/-- `A005970(n+1)-A110035(n)` -/
def P2676378768795560992.Spec : Prop :=
  ∀ n, P2676378768795560992.a n = A080144 n

end A080144

/-! ## A080144.P3373557950485257974

`A338225(n+1)-A010693(n)`
-/

namespace A080144.P3373557950485257974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1) - A010693 n

end

end A080144.P3373557950485257974

namespace A080144

/-- `A338225(n+1)-A010693(n)` -/
def P3373557950485257974.Spec : Prop :=
  ∀ n, P3373557950485257974.a n = A080144 n

end A080144

/-! ## A080144.P6355586670626360129

`A064831(n+2)-A176040(n)`
-/

namespace A080144.P6355586670626360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 2) - A176040 n

end

end A080144.P6355586670626360129

namespace A080144

/-- `A064831(n+2)-A176040(n)` -/
def P6355586670626360129.Spec : Prop :=
  ∀ n, P6355586670626360129.a n = A080144 n

end A080144

/-! ## A080144.P12602756139446728501

`∑[A000045(n+5)*A000045(n)]`
-/

namespace A080144.P12602756139446728501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080144.P12602756139446728501

namespace A080144

/-- `∑[A000045(n+5)*A000045(n)]` -/
def P12602756139446728501.Spec : Prop :=
  ∀ n, P12602756139446728501.a n = A080144 n

end A080144

/-! ## A080144.P4375427679181128251

`A059840(n+2)+2*A080097(n)`
-/

namespace A080144.P4375427679181128251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2) + 2 * A080097 n

end

end A080144.P4375427679181128251

namespace A080144

/-- `A059840(n+2)+2*A080097(n)` -/
def P4375427679181128251.Spec : Prop :=
  ∀ n, P4375427679181128251.a n = A080144 n

end A080144

/-! ## A080144.P6205552426687692562

`∑[A020695(n+2)*A212804(n+1)]`
-/

namespace A080144.P6205552426687692562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080144.P6205552426687692562

namespace A080144

/-- `∑[A020695(n+2)*A212804(n+1)]` -/
def P6205552426687692562.Spec : Prop :=
  ∀ n, P6205552426687692562.a n = A080144 n

end A080144

/-! ## A080144.P9122964529174890275

`A097083(2*n+3)-A010684(n+1)`
-/

namespace A080144.P9122964529174890275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (2 * n + 3) - A010684 (n + 1)

end

end A080144.P9122964529174890275

namespace A080144

/-- `A097083(2*n+3)-A010684(n+1)` -/
def P9122964529174890275.Spec : Prop :=
  ∀ n, P9122964529174890275.a n = A080144 n

end A080144

/-!
# A080145: a(n) = Sum_{m=1..n} Sum_{i=1..m} F(i)*F(i+1) where F(n)=Fibonacci numbers A000045.

The programs for A080145, the canonical program `A080145.P5889462752194688171` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080145 has offset 0).

The definition of A080145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080145.P17213717083750412507

`ogf(x/(1-4x+3x^2+3x^3-4x^4+x^5))`
-/

namespace A080145.P17213717083750412507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 3, 3, -4, 1] n

end

end A080145.P17213717083750412507

namespace A080145

/-- `ogf(x/(1-4x+3x^2+3x^3-4x^4+x^5))` -/
def P17213717083750412507.Spec : Prop :=
  ∀ n, P17213717083750412507.a n = A080145 n

end A080145

/-! ## A080145.P5889462752194688171

`A000045(n+1)*A000045(n+2)-floor((n+2)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080145

/-- `A000045(n+1)*A000045(n+2)-floor((n+2)/2)` -/
def P5889462752194688171.Spec : Prop :=
  ∀ n, P5889462752194688171.a n = A080145 n

theorem P5889462752194688171.correct : P5889462752194688171.Spec := by
  intro n
  simp only [A080145]

end A080145

/-! ## A080145.P3615364548524552081

`(4*A000032(2*n+3)+(-1)^(n+1)-10*n-15)/20`
-/

namespace A080145.P3615364548524552081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000032 (2 * n + 3) + (-1) ^ (n + 1) - (10 * n : ℤ) - 15 : ℚ) / 20

end

end A080145.P3615364548524552081

namespace A080145

/-- `(4*A000032(2*n+3)+(-1)^(n+1)-10*n-15)/20` -/
def P3615364548524552081.Spec : Prop :=
  ∀ n, P3615364548524552081.a n = (A080145 n : ℚ)

end A080145

/-! ## A080145.P2544887150236245091

`∑[3*a(n-1)-a(n-2)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A080145.P2544887150236245091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A080145.P2544887150236245091

namespace A080145

/-- `∑[3*a(n-1)-a(n-2)]+a(n-2)` -/
def P2544887150236245091.Spec : Prop :=
  ∀ n, P2544887150236245091.a n = A080145 n

end A080145

/-! ## A080145.P14662385975681611322

`∑[A064831(n)]`
-/

namespace A080145.P14662385975681611322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P14662385975681611322

namespace A080145

/-- `∑[A064831(n)]` -/
def P14662385975681611322.Spec : Prop :=
  ∀ n, P14662385975681611322.a n = A080145 n

end A080145

/-! ## A080145.P9363252034514995757

`∑[∑[A001654(n)]]`
-/

namespace A080145.P9363252034514995757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P9363252034514995757

namespace A080145

/-- `∑[∑[A001654(n)]]` -/
def P9363252034514995757.Spec : Prop :=
  ∀ n, P9363252034514995757.a n = A080145 n

end A080145

/-! ## A080145.P15487708366832783722

`∑[∑[∑[A007598(n)]]]`
-/

namespace A080145.P15487708366832783722
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P15487708366832783722

namespace A080145

/-- `∑[∑[∑[A007598(n)]]]` -/
def P15487708366832783722.Spec : Prop :=
  ∀ n, P15487708366832783722.a n = A080145 n

end A080145

/-! ## A080145.P13694214155476572268

`∑[∑[A074677(2*n)]]`
-/

namespace A080145.P13694214155476572268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P13694214155476572268

namespace A080145

/-- `∑[∑[A074677(2*n)]]` -/
def P13694214155476572268.Spec : Prop :=
  ∀ n, P13694214155476572268.a n = A080145 n

end A080145

/-! ## A080145.P17343171534253742084

`∑[∑[∑[A000045(n)²]]]`
-/

namespace A080145.P17343171534253742084
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P17343171534253742084

namespace A080145

/-- `∑[∑[∑[A000045(n)²]]]` -/
def P17343171534253742084.Spec : Prop :=
  ∀ n, P17343171534253742084.a n = A080145 n

end A080145

/-! ## A080145.P6137020598350837117

`∑[A166516(n+1)-1]`
-/

namespace A080145.P6137020598350837117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P6137020598350837117

namespace A080145

/-- `∑[A166516(n+1)-1]` -/
def P6137020598350837117.Spec : Prop :=
  ∀ n, P6137020598350837117.a n = A080145 n

end A080145

/-! ## A080145.P17305052157494440389

`∑[floor(A293411(2*n)/2)]`
-/

namespace A080145.P17305052157494440389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293411 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P17305052157494440389

namespace A080145

/-- `∑[floor(A293411(2*n)/2)]` -/
def P17305052157494440389.Spec : Prop :=
  ∀ n, P17305052157494440389.a n = A080145 n

end A080145

/-! ## A080145.P14959123069494435866

`∑[∑[A079472(n+1)/2]]`
-/

namespace A080145.P14959123069494435866
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079472 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P14959123069494435866

namespace A080145

/-- `∑[∑[A079472(n+1)/2]]` -/
def P14959123069494435866.Spec : Prop :=
  ∀ n, P14959123069494435866.a n = (A080145 n : ℚ)

end A080145

/-! ## A080145.P102342118453534552

`A027941(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A080145.P102342118453534552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A027941 n + a (n - 2)

end

end A080145.P102342118453534552

namespace A080145

/-- `A027941(n)+a(n-2)` -/
def P102342118453534552.Spec : Prop :=
  ∀ n, P102342118453534552.a n = A080145 n

end A080145

/-! ## A080145.P14154011474165660862

`∑[A005313(n+1)-(n+1)]`
-/

namespace A080145.P14154011474165660862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005313 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P14154011474165660862

namespace A080145

/-- `∑[A005313(n+1)-(n+1)]` -/
def P14154011474165660862.Spec : Prop :=
  ∀ n, P14154011474165660862.a n = A080145 n

end A080145

/-! ## A080145.P16188018124310580194

`A054452(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A080145.P16188018124310580194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054452 (n + 1) - a (n - 1)

end

end A080145.P16188018124310580194

namespace A080145

/-- `A054452(n+1)-a(n-1)` -/
def P16188018124310580194.Spec : Prop :=
  ∀ n, P16188018124310580194.a n = A080145 n

end A080145

/-! ## A080145.P8762472660146554580

`∑[∑[round(A000045(2*n)/(3-ϕ))]]`
-/

namespace A080145.P8762472660146554580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (2 * n) : ℝ) / (3 - Real.goldenRatio))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080145.P8762472660146554580

namespace A080145

/-- `∑[∑[round(A000045(2*n)/(3-ϕ))]]` -/
def P8762472660146554580.Spec : Prop :=
  ∀ n, P8762472660146554580.a n = A080145 n

end A080145

/-! ## A080145.P17181980539766084060

`floor(a(n-1)+(A000045(n+2)/ϕ)²)` with `a(0)=0`
-/

namespace A080145.P17181980539766084060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((A000045 (n + 2) : ℝ) / Real.goldenRatio) ^ 2⌋

end

end A080145.P17181980539766084060

namespace A080145

/-- `floor(a(n-1)+(A000045(n+2)/ϕ)²)` -/
def P17181980539766084060.Spec : Prop :=
  ∀ n, P17181980539766084060.a n = A080145 n

end A080145

/-! ## A080145.P14121636142255881448

`A000045(2*n+1)+a(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A080145.P14121636142255881448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (2 * n + 1) + (a (n - 2) - 1)

end

end A080145.P14121636142255881448

namespace A080145

/-- `A000045(2*n+1)+a(n-2)-1` -/
def P14121636142255881448.Spec : Prop :=
  ∀ n, P14121636142255881448.a n = A080145 n

end A080145

/-! ## A080145.P14403061885421057298

`A000045(n+2+n)-(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A080145.P14403061885421057298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (n + 2 + n) - (n + 1 : ℤ) - a (n - 1)

end

end A080145.P14403061885421057298

namespace A080145

/-- `A000045(n+2+n)-(n+1)-a(n-1)` -/
def P14403061885421057298.Spec : Prop :=
  ∀ n, P14403061885421057298.a n = A080145 n

end A080145

/-! ## A080145.P17566470779452202465

`A192758(A004277(n))`
-/

namespace A080145.P17566470779452202465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192758 (A004277 n).toNat

end

end A080145.P17566470779452202465

namespace A080145

/-- `A192758(A004277(n))` -/
def P17566470779452202465.Spec : Prop :=
  ∀ n, P17566470779452202465.a n = A080145 n

end A080145

/-!
# A080146: Binary encoding of quadratic residue set for each prime. a(n) = A055094(A000040(n)).

The programs for A080146, there is no canonical definition to state claims against.
-/

/-! ## A080146.P14920470492468014993

`A055094(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080146.P14920470492468014993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (A000040 (n + 1)).toNat

end

end A080146.P14920470492468014993

/-! ## A080146.P4628750805836119420

`A055094(p?[comp[n²]])`
-/

namespace A080146.P4628750805836119420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080146.P4628750805836119420

/-! ## A080146.P7335365395883214006

`A055094(eq[2, A353851(n)])`
-/

namespace A080146.P7335365395883214006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080146.P7335365395883214006

/-! ## A080146.P13923201182846053534

`A055094(eq[2, A353860(n)])`
-/

namespace A080146.P13923201182846053534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080146.P13923201182846053534

/-! ## A080146.P7934002613595689667

`A055094(comp[A141468(n+1)])`
-/

namespace A080146.P7934002613595689667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055094 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080146.P7934002613595689667

/-!
# A080147: Positions of primes of the form 4*k+1 (A002144) among all primes (A000040).

The programs for A080147, the canonical program `A080147.P8933729688229557631` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080147 has offset 1).

The definition of A080147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080147.P16897956231313898064

`A138970(n+1)+1`
-/

namespace A080147.P16897956231313898064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138970 (n + 1) + 1

end

end A080147.P16897956231313898064

namespace A080147

/-- `A138970(n+1)+1` -/
def P16897956231313898064.Spec : Prop :=
  ∀ n, P16897956231313898064.a n = A080147 (n + 1)

theorem P16897956231313898064.correct : P16897956231313898064.Spec := by
  intro n
  simp only [A080147, Nat.add_sub_cancel, A080147.P16897956231313898064.a, A080147.P8933729688229557631.f1, A080147.P8933729688229557631.f2, A080147.P8933729688229557631.a, A138970, A138970.P17118227698826319537.a, A160591, A160591.P9164857169513233061.a, A160594, A160594.P8669518195614110326.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A040117, A040117.P5220825624674158384.f1, A040117.P5220825624674158384.a, A068228, A068228.P2780938449886948151.f1, A068228.P2780938449886948151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080147

/-! ## A080147.P11763141089276554740

`A332807(2*n+3)`
-/

namespace A080147.P11763141089276554740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * n + 3)

end

end A080147.P11763141089276554740

namespace A080147

/-- `A332807(2*n+3)` -/
def P11763141089276554740.Spec : Prop :=
  ∀ n, P11763141089276554740.a n = A080147 (n + 1)

end A080147

/-! ## A080147.P8933729688229557631

`∪[A160591(n+1), A160594(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080147

/-- `∪[A160591(n+1), A160594(n+1)]` -/
def P8933729688229557631.Spec : Prop :=
  ∀ n, (P8933729688229557631.a n : ℤ) = A080147 (n + 1)

theorem P8933729688229557631.correct : P8933729688229557631.Spec := by
  intro n
  simp only [A080147, Nat.add_sub_cancel]

end A080147

/-! ## A080147.P16791976305873745006

`A267106(2*A267105(n+1)+1)`
-/

namespace A080147.P16791976305873745006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267106 (2 * A267105 (n + 1) + 1).toNat

end

end A080147.P16791976305873745006

namespace A080147

/-- `A267106(2*A267105(n+1)+1)` -/
def P16791976305873745006.Spec : Prop :=
  ∀ n, P16791976305873745006.a n = A080147 (n + 1)

end A080147

/-! ## A080147.P14150397513413721636

`A267106(A267105(n+1)+A267105(n+1)+1)`
-/

namespace A080147.P14150397513413721636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267106 (A267105 (n + 1) + (A267105 (n + 1) + 1)).toNat

end

end A080147.P14150397513413721636

namespace A080147

/-- `A267106(A267105(n+1)+A267105(n+1)+1)` -/
def P14150397513413721636.Spec : Prop :=
  ∀ n, P14150397513413721636.a n = A080147 (n + 1)

end A080147

/-! ## A080147.P6879484938129074653

`A267100(A080148(n+1))`
-/

namespace A080147.P6879484938129074653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267100 (A080148 (n + 1)).toNat

end

end A080147.P6879484938129074653

namespace A080147

/-- `A267100(A080148(n+1))` -/
def P6879484938129074653.Spec : Prop :=
  ∀ n, P6879484938129074653.a n = A080147 (n + 1)

end A080147

/-! ## A080147.P3540438428953777029

`A267100(A332807(n+2+n))`
-/

namespace A080147.P3540438428953777029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267100 (A332807 (n + 2 + n)).toNat

end

end A080147.P3540438428953777029

namespace A080147

/-- `A267100(A332807(n+2+n))` -/
def P3540438428953777029.Spec : Prop :=
  ∀ n, P3540438428953777029.a n = A080147 (n + 1)

end A080147

/-! ## A080147.P14733654195136743076

`eq[1, A023512(n+1)]+1`
-/

namespace A080147.P14733654195136743076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080147.P14733654195136743076

namespace A080147

/-- `eq[1, A023512(n+1)]+1` -/
def P14733654195136743076.Spec : Prop :=
  ∀ n, (P14733654195136743076.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P1849225846984578246

`eq[1, A039702(n+1)]+1`
-/

namespace A080147.P1849225846984578246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080147.P1849225846984578246

namespace A080147

/-- `eq[1, A039702(n+1)]+1` -/
def P1849225846984578246.Spec : Prop :=
  ∀ n, (P1849225846984578246.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P963569145092229862

`eq[1, A070750(n+1)]+1`
-/

namespace A080147.P963569145092229862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080147.P963569145092229862

namespace A080147

/-- `eq[1, A070750(n+1)]+1` -/
def P963569145092229862.Spec : Prop :=
  ∀ n, (P963569145092229862.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P16403110447391121269

`lt[1, A023506(n+1)]+1`
-/

namespace A080147.P16403110447391121269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080147.P16403110447391121269

namespace A080147

/-- `lt[1, A023506(n+1)]+1` -/
def P16403110447391121269.Spec : Prop :=
  ∀ n, (P16403110447391121269.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P16961863268806214830

`eq[2, A068504(n+1)]+1`
-/

namespace A080147.P16961863268806214830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080147.P16961863268806214830

namespace A080147

/-- `eq[2, A068504(n+1)]+1` -/
def P16961863268806214830.Spec : Prop :=
  ∀ n, (P16961863268806214830.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P1967847300926189462

`lt[1, A088978(n+1)]+1`
-/

namespace A080147.P1967847300926189462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080147.P1967847300926189462

namespace A080147

/-- `lt[1, A088978(n+1)]+1` -/
def P1967847300926189462.Spec : Prop :=
  ∀ n, (P1967847300926189462.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P17454301148037335153

`eq[2, A227471(n+1)]+1`
-/

namespace A080147.P17454301148037335153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080147.P17454301148037335153

namespace A080147

/-- `eq[2, A227471(n+1)]+1` -/
def P17454301148037335153.Spec : Prop :=
  ∀ n, (P17454301148037335153.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P15332668123382571927

`lt[2, A058384(n+1)]+1`
-/

namespace A080147.P15332668123382571927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080147.P15332668123382571927

namespace A080147

/-- `lt[2, A058384(n+1)]+1` -/
def P15332668123382571927.Spec : Prop :=
  ∀ n, (P15332668123382571927.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P4589720011027344092

`eq[1, A077008(n+2)]+2`
-/

namespace A080147.P4589720011027344092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077008 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A080147.P4589720011027344092

namespace A080147

/-- `eq[1, A077008(n+2)]+2` -/
def P4589720011027344092.Spec : Prop :=
  ∀ n, (P4589720011027344092.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P10683755213098117404

`eq[1, A088192(n+2)]+2`
-/

namespace A080147.P10683755213098117404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088192 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A080147.P10683755213098117404

namespace A080147

/-- `eq[1, A088192(n+2)]+2` -/
def P10683755213098117404.Spec : Prop :=
  ∀ n, (P10683755213098117404.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P12042845922240878724

`eq[1, A098033(n+2)]+2`
-/

namespace A080147.P12042845922240878724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A080147.P12042845922240878724

namespace A080147

/-- `eq[1, A098033(n+2)]+2` -/
def P12042845922240878724.Spec : Prop :=
  ∀ n, (P12042845922240878724.a n : ℤ) = A080147 (n + 1)

end A080147

/-! ## A080147.P9070752987280905588

`A020725(A138970(n+1))`
-/

namespace A080147.P9070752987280905588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138970 (n + 1)).toNat

end

end A080147.P9070752987280905588

namespace A080147

/-- `A020725(A138970(n+1))` -/
def P9070752987280905588.Spec : Prop :=
  ∀ n, P9070752987280905588.a n = A080147 (n + 1)

end A080147

/-!
# A080148: Positions of primes of the form 4*k+3 (A002145) among all primes (A000040).

The programs for A080148, the canonical program `A080148.P13293786807354433186` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080148 has offset 1).

The definition of A080148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080148.P13293786807354433186

`A049084(A002145(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080148

/-- `A049084(A002145(n+1))` -/
def P13293786807354433186.Spec : Prop :=
  ∀ n, P13293786807354433186.a n = A080148 (n + 1)

theorem P13293786807354433186.correct : P13293786807354433186.Spec := by
  intro n
  simp only [A080148, Nat.add_sub_cancel]

end A080148

/-! ## A080148.P4139334285998533606

`A138971(n+1)+1`
-/

namespace A080148.P4139334285998533606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138971 (n + 1) + 1

end

end A080148.P4139334285998533606

namespace A080148

/-- `A138971(n+1)+1` -/
def P4139334285998533606.Spec : Prop :=
  ∀ n, P4139334285998533606.a n = A080148 (n + 1)

theorem P4139334285998533606.correct : P4139334285998533606.Spec := by
  intro n
  simp only [A080148, Nat.add_sub_cancel, A080148.P4139334285998533606.a, A080148.P13293786807354433186.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A138971, A138971.P14613520405082129352.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080148

/-! ## A080148.P8193488626179037030

`A332807(2*(n+1))`
-/

namespace A080148.P8193488626179037030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * (n + 1))

end

end A080148.P8193488626179037030

namespace A080148

/-- `A332807(2*(n+1))` -/
def P8193488626179037030.Spec : Prop :=
  ∀ n, P8193488626179037030.a n = A080148 (n + 1)

end A080148

/-! ## A080148.P1689586419844120662

`comp[A080147(n+1)-2]+2`
-/

namespace A080148.P1689586419844120662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A080148.P1689586419844120662

namespace A080148

/-- `comp[A080147(n+1)-2]+2` -/
def P1689586419844120662.Spec : Prop :=
  ∀ n, (P1689586419844120662.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P16503301829733766639

`2*n+3-A267135(n+1)`
-/

namespace A080148.P16503301829733766639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A267135 (n + 1)

end

end A080148.P16503301829733766639

namespace A080148

/-- `2*n+3-A267135(n+1)` -/
def P16503301829733766639.Spec : Prop :=
  ∀ n, P16503301829733766639.a n = A080148 (n + 1)

theorem P16503301829733766639.correct : P16503301829733766639.Spec := by
  intro n
  simp only [A080148, Nat.add_sub_cancel, A080148.P16503301829733766639.a, A080148.P13293786807354433186.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A267135, A267135.P1163518685697158345.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A138971, A138971.P14613520405082129352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080148

/-! ## A080148.P8326133456946932888

`A267106(2*A267105(n+1))`
-/

namespace A080148.P8326133456946932888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267106 (2 * A267105 (n + 1)).toNat

end

end A080148.P8326133456946932888

namespace A080148

/-- `A267106(2*A267105(n+1))` -/
def P8326133456946932888.Spec : Prop :=
  ∀ n, P8326133456946932888.a n = A080148 (n + 1)

end A080148

/-! ## A080148.P5831304820769239259

`A267106(A267105(n+1)+A267105(n+1))`
-/

namespace A080148.P5831304820769239259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267106 (A267105 (n + 1) + A267105 (n + 1)).toNat

end

end A080148.P5831304820769239259

namespace A080148

/-- `A267106(A267105(n+1)+A267105(n+1))` -/
def P5831304820769239259.Spec : Prop :=
  ∀ n, P5831304820769239259.a n = A080148 (n + 1)

end A080148

/-! ## A080148.P16605642961223832126

`A020725(A138971(n+1))`
-/

namespace A080148.P16605642961223832126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138971 (n + 1)).toNat

end

end A080148.P16605642961223832126

namespace A080148

/-- `A020725(A138971(n+1))` -/
def P16605642961223832126.Spec : Prop :=
  ∀ n, P16605642961223832126.a n = A080148 (n + 1)

end A080148

/-! ## A080148.P12699348077061465274

`eq[1, A023506(n+1)]+1`
-/

namespace A080148.P12699348077061465274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080148.P12699348077061465274

namespace A080148

/-- `eq[1, A023506(n+1)]+1` -/
def P12699348077061465274.Spec : Prop :=
  ∀ n, (P12699348077061465274.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P2267718933753686396

`eq[1, A023579(n+1)]+1`
-/

namespace A080148.P2267718933753686396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080148.P2267718933753686396

namespace A080148

/-- `eq[1, A023579(n+1)]+1` -/
def P2267718933753686396.Spec : Prop :=
  ∀ n, (P2267718933753686396.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P12202208351907353053

`eq[1, A087963(n+1)]+1`
-/

namespace A080148.P12202208351907353053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080148.P12202208351907353053

namespace A080148

/-- `eq[1, A087963(n+1)]+1` -/
def P12202208351907353053.Spec : Prop :=
  ∀ n, (P12202208351907353053.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P14857367593037291810

`eq[1, A088978(n+1)]+1`
-/

namespace A080148.P14857367593037291810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080148.P14857367593037291810

namespace A080148

/-- `eq[1, A088978(n+1)]+1` -/
def P14857367593037291810.Spec : Prop :=
  ∀ n, (P14857367593037291810.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P16726378748418070369

`lt[1, A023512(n+1)]+1`
-/

namespace A080148.P16726378748418070369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080148.P16726378748418070369

namespace A080148

/-- `lt[1, A023512(n+1)]+1` -/
def P16726378748418070369.Spec : Prop :=
  ∀ n, (P16726378748418070369.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P7598764523569871422

`eq[2, A058384(n+1)]+1`
-/

namespace A080148.P7598764523569871422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080148.P7598764523569871422

namespace A080148

/-- `eq[2, A058384(n+1)]+1` -/
def P7598764523569871422.Spec : Prop :=
  ∀ n, (P7598764523569871422.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P12476830963236081146

`lt[A098033(n+1), 1]+1`
-/

namespace A080148.P12476830963236081146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080148.P12476830963236081146

namespace A080148

/-- `lt[A098033(n+1), 1]+1` -/
def P12476830963236081146.Spec : Prop :=
  ∀ n, (P12476830963236081146.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P1404411676229212134

`lt[2, A039702(n+1)]+1`
-/

namespace A080148.P1404411676229212134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080148.P1404411676229212134

namespace A080148

/-- `lt[2, A039702(n+1)]+1` -/
def P1404411676229212134.Spec : Prop :=
  ∀ n, (P1404411676229212134.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P15501733668798197678

`lt[2, A068504(n+1)]+1`
-/

namespace A080148.P15501733668798197678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080148.P15501733668798197678

namespace A080148

/-- `lt[2, A068504(n+1)]+1` -/
def P15501733668798197678.Spec : Prop :=
  ∀ n, (P15501733668798197678.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P17272422399093773414

`lt[A070750(n+2), 0]+2`
-/

namespace A080148.P17272422399093773414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A080148.P17272422399093773414

namespace A080148

/-- `lt[A070750(n+2), 0]+2` -/
def P17272422399093773414.Spec : Prop :=
  ∀ n, (P17272422399093773414.a n : ℤ) = A080148 (n + 1)

end A080148

/-! ## A080148.P16773764236996063895

`A267100(A080147(n+1))`
-/

namespace A080148.P16773764236996063895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267100 (A080147 (n + 1)).toNat

end

end A080148.P16773764236996063895

namespace A080148

/-- `A267100(A080147(n+1))` -/
def P16773764236996063895.Spec : Prop :=
  ∀ n, P16773764236996063895.a n = A080148 (n + 1)

end A080148

/-!
# A080149: Numbers k such that k^2 + 1 and k^2 + 3 are both prime.

The programs for A080149, there is no canonical definition to state claims against.
-/

/-! ## A080149.P15151216772189179392

`sqrt(A145823(n+1))`
-/

namespace A080149.P15151216772189179392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145823 (n + 1) : ℝ)

end

end A080149.P15151216772189179392

/-! ## A080149.P14745654517091482

`floor(sqrt(A145824(n+1)))`
-/

namespace A080149.P14745654517091482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145824 (n + 1))

end

end A080149.P14745654517091482

/-! ## A080149.P2274233245313079499

`sqrt(A145824(n+1)-A000027(n+1)+n)`
-/

namespace A080149.P2274233245313079499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145824 (n + 1) - A000027 (n + 1) + (n : ℤ) : ℝ)

end

end A080149.P2274233245313079499

/-! ## A080149.P17440127629449992713

`A000027(round(sqrt(A145824(n+1))))`
-/

namespace A080149.P17440127629449992713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A145824 (n + 1) : ℝ))).toNat

end

end A080149.P17440127629449992713

/-! ## A080149.P1213966659507760809

`A000027(sqrt(A145824(n+1)-1))`
-/

namespace A080149.P1213966659507760809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A145824 (n + 1) - 1 : ℝ))).toNat

end

end A080149.P1213966659507760809

/-! ## A080149.P4722016030905880860

`∩[A049422(n+1), A109807(n+1)]`
-/

namespace A080149.P4722016030905880860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080149.P4722016030905880860

/-! ## A080149.P10366098446299798086

`2*A123232(n+1)`
-/

namespace A080149.P10366098446299798086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123232 (n + 1)

end

end A080149.P10366098446299798086

/-! ## A080149.P14931920160389969156

`A123232(n+1)+A123232(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A080149.P14931920160389969156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A123232 (n + 1) + A123232 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A080149.P14931920160389969156

/-! ## A080149.P11369580876556856655

`A123232(A000027(n+1))+A123232(n+1)`
-/

namespace A080149.P11369580876556856655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123232 (A000027 (n + 1)).toNat + A123232 (n + 1)

end

end A080149.P11369580876556856655

/-! ## A080149.P12953571905057692467

`A123232(n+1)+A123232((n+1)%A017222(n))`
-/

namespace A080149.P12953571905057692467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123232 (n + 1) + A123232 (Int.tmod (n + 1 : ℤ) (A017222 n)).toNat

end

end A080149.P12953571905057692467

/-! ## A080149.P13665098235354765856

`∩[A005574(n+1), A049422(n+1)]`
-/

namespace A080149.P13665098235354765856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080149.P13665098235354765856

/-! ## A080149.P7394176068254651119

`2*∩[A001912(n+1), A097697(n+1)]`
-/

namespace A080149.P7394176068254651119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080149.P7394176068254651119

/-! ## A080149.P17748255631377228063

`filter[A049422(n+2), A295405(#)]`
-/

namespace A080149.P17748255631377228063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A080149.P17748255631377228063

/-! ## A080149.P13194348184675427887

`A004277(A123232(n+1))`
-/

namespace A080149.P13194348184675427887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A123232 (n + 1)).toNat

end

end A080149.P13194348184675427887

/-! ## A080149.P16320428200511810761

`2*A249122(ceil(sqrt(A145824(n+1))))`
-/

namespace A080149.P16320428200511810761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249122 ⌈Real.sqrt (A145824 (n + 1) : ℝ)⌉.toNat

end

end A080149.P16320428200511810761

/-! ## A080149.P8128224783343195779

`eq[1, A138205(n+1)]+1`
-/

namespace A080149.P8128224783343195779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080149.P8128224783343195779

/-! ## A080149.P12146749270513882221

`A004442(ceil(sqrt(A145824(n+1))))`
-/

namespace A080149.P12146749270513882221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈Real.sqrt (A145824 (n + 1) : ℝ)⌉.toNat

end

end A080149.P12146749270513882221

/-!
# A080150: Let m = Wonderful Demlo number A002477(n); a(n) = square of the sum of digits of m.

The programs for A080150, the canonical program `A080150.P5238773615938268091` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080150 has offset 1).

The definition of A080150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080151, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080150.P5238773615938268091

`A080151(n+1)²`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080150

/-- `A080151(n+1)²` -/
def P5238773615938268091.Spec : Prop :=
  ∀ n, P5238773615938268091.a n = A080150 (n + 1)

theorem P5238773615938268091.correct : P5238773615938268091.Spec := by
  intro n
  simp only [A080150, Nat.add_sub_cancel]

end A080150

/-! ## A080150.P906537682436492866

`∑[Δ[n²]%18]²`
-/

namespace A080150.P906537682436492866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080150.P906537682436492866

namespace A080150

/-- `∑[Δ[n²]%18]²` -/
def P906537682436492866.Spec : Prop :=
  ∀ n, P906537682436492866.a n = A080150 (n + 1)

end A080150

/-! ## A080150.P15615821814125014590

`∑[2*n%9+1]²`
-/

namespace A080150.P15615821814125014590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 9) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080150.P15615821814125014590

namespace A080150

/-- `∑[2*n%9+1]²` -/
def P15615821814125014590.Spec : Prop :=
  ∀ n, (P15615821814125014590.a n : ℤ) = A080150 (n + 1)

end A080150

/-! ## A080150.P12818076220650258983

`∑[xor(1, (2*n)%18)]²`
-/

namespace A080150.P12818076220650258983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n % 18)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080150.P12818076220650258983

namespace A080150

/-- `∑[xor(1, (2*n)%18)]²` -/
def P12818076220650258983.Spec : Prop :=
  ∀ n, (P12818076220650258983.a n : ℤ) = A080150 (n + 1)

end A080150

/-! ## A080150.P11234609163361694896

`∑[1-2*dr(n+1)]²`
-/

namespace A080150.P11234609163361694896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080150.P11234609163361694896

namespace A080150

/-- `∑[1-2*dr(n+1)]²` -/
def P11234609163361694896.Spec : Prop :=
  ∀ n, P11234609163361694896.a n = A080150 (n + 1)

end A080150

/-! ## A080150.P6668132808192116555

`∑{digits}[A051885(n+1), #²]²`
-/

namespace A080150.P6668132808192116555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum ^ 2

end

end A080150.P6668132808192116555

namespace A080150

/-- `∑{digits}[A051885(n+1), #²]²` -/
def P6668132808192116555.Spec : Prop :=
  ∀ n, (P6668132808192116555.a n : ℤ) = A080150 (n + 1)

end A080150

/-! ## A080150.P18370323721672506254

`∑{digits}[A202270(n+1), #²]²`
-/

namespace A080150.P18370323721672506254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum ^ 2

end

end A080150.P18370323721672506254

namespace A080150

/-- `∑{digits}[A202270(n+1), #²]²` -/
def P18370323721672506254.Spec : Prop :=
  ∀ n, (P18370323721672506254.a n : ℤ) = A080150 (n + 1)

end A080150

/-!
# A080151: Let m = Wonderful Demlo number A002477(n); a(n) = sum of digits of m.

The programs for A080151, the canonical program `A080151.P7052421058973629634` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080151 has offset 1).

The definition of A080151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080151.P4425213875051615281

`sqrt(A080150(n+1))`
-/

namespace A080151.P4425213875051615281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080150 (n + 1) : ℝ)

end

end A080151.P4425213875051615281

namespace A080151

/-- `sqrt(A080150(n+1))` -/
def P4425213875051615281.Spec : Prop :=
  ∀ n, P4425213875051615281.a n = (A080151 (n + 1) : ℝ)

end A080151

/-! ## A080151.P7052421058973629634

`A003132(A051885(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080151

/-- `A003132(A051885(n+1))` -/
def P7052421058973629634.Spec : Prop :=
  ∀ n, P7052421058973629634.a n = A080151 (n + 1)

theorem P7052421058973629634.correct : P7052421058973629634.Spec := by
  intro n
  simp only [A080151, Nat.add_sub_cancel]

end A080151

/-! ## A080151.P11882295392535017536

`∑[Δ[n²]%18]`
-/

namespace A080151.P11882295392535017536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P11882295392535017536

namespace A080151

/-- `∑[Δ[n²]%18]` -/
def P11882295392535017536.Spec : Prop :=
  ∀ n, P11882295392535017536.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P10881946563691651622

`∑[2*n%9+1]`
-/

namespace A080151.P10881946563691651622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 9) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P10881946563691651622

namespace A080151

/-- `∑[2*n%9+1]` -/
def P10881946563691651622.Spec : Prop :=
  ∀ n, (P10881946563691651622.a n : ℤ) = A080151 (n + 1)

end A080151

/-! ## A080151.P2474715192165623303

`∑[xor(1, (2*n)%18)]`
-/

namespace A080151.P2474715192165623303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n % 18)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P2474715192165623303

namespace A080151

/-- `∑[xor(1, (2*n)%18)]` -/
def P2474715192165623303.Spec : Prop :=
  ∀ n, (P2474715192165623303.a n : ℤ) = A080151 (n + 1)

end A080151

/-! ## A080151.P7350947965538816506

`∑[2*dr(n+1)-1]`
-/

namespace A080151.P7350947965538816506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P7350947965538816506

namespace A080151

/-- `∑[2*dr(n+1)-1]` -/
def P7350947965538816506.Spec : Prop :=
  ∀ n, P7350947965538816506.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P17684177486309740201

`∑[dr(n+1)+dr(n+1)-1]`
-/

namespace A080151.P17684177486309740201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) + ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P17684177486309740201

namespace A080151

/-- `∑[dr(n+1)+dr(n+1)-1]` -/
def P17684177486309740201.Spec : Prop :=
  ∀ n, P17684177486309740201.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P7312424432454900809

`ogf((1+3x+5x^2+7x^3+9x^4+11x^5+13x^6+15x^7+17x^8)/(1-x-x^9+x^10))`
-/

namespace A080151.P7312424432454900809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 13, 15, 17] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A080151.P7312424432454900809

namespace A080151

/-- `ogf((1+3x+5x^2+7x^3+9x^4+11x^5+13x^6+15x^7+17x^8)/(1-x-x^9+x^10))` -/
def P7312424432454900809.Spec : Prop :=
  ∀ n, P7312424432454900809.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P16553696513939353140

`∑[2*A010878(n)+1]`
-/

namespace A080151.P16553696513939353140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010878 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P16553696513939353140

namespace A080151

/-- `∑[2*A010878(n)+1]` -/
def P16553696513939353140.Spec : Prop :=
  ∀ n, P16553696513939353140.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P11502411273148690739

`∑[2*A177274(n)-1]`
-/

namespace A080151.P11502411273148690739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177274 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080151.P11502411273148690739

namespace A080151

/-- `∑[2*A177274(n)-1]` -/
def P11502411273148690739.Spec : Prop :=
  ∀ n, P11502411273148690739.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P16550230545719103246

`2*A130487(n)+n+1`
-/

namespace A080151.P16550230545719103246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130487 n + (n + 1 : ℤ)

end

end A080151.P16550230545719103246

namespace A080151

/-- `2*A130487(n)+n+1` -/
def P16550230545719103246.Spec : Prop :=
  ∀ n, P16550230545719103246.a n = A080151 (n + 1)

end A080151

/-! ## A080151.P6884618762247106566

`∪[A080160(n+1), A081648(n+1)]`
-/

namespace A080151.P6884618762247106566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080151.P6884618762247106566

namespace A080151

/-- `∪[A080160(n+1), A081648(n+1)]` -/
def P6884618762247106566.Spec : Prop :=
  ∀ n, (P6884618762247106566.a n : ℤ) = A080151 (n + 1)

end A080151

/-! ## A080151.P2045618444088116170

`∑{digits}[A202270(n+1), #²]`
-/

namespace A080151.P2045618444088116170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A080151.P2045618444088116170

namespace A080151

/-- `∑{digits}[A202270(n+1), #²]` -/
def P2045618444088116170.Spec : Prop :=
  ∀ n, (P2045618444088116170.a n : ℤ) = A080151 (n + 1)

end A080151

/-!
# A080152: Values of n corresponding to the primes given in A073640. The concatenation of the a(n) and a(n+1)-th primes for any n is also prime.

The programs for A080152, there is no canonical definition to state claims against.
-/

/-! ## A080152.P5021540028677475110

`A000720(A073640(n+1))`
-/

namespace A080152.P5021540028677475110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073640 (n + 1)).toNat

end

end A080152.P5021540028677475110

/-! ## A080152.P6428222322606691467

`A061395(A073640(n+1)%A006562(n+1))`
-/

namespace A080152.P6428222322606691467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A073640 (n + 1)) (A006562 (n + 1))).toNat

end

end A080152.P6428222322606691467

/-! ## A080152.P16851062526560207719

`A061395(A073640(n+1))%A119890(n+1)`
-/

namespace A080152.P16851062526560207719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A073640 (n + 1)).toNat) (A119890 (n + 1))

end

end A080152.P16851062526560207719

/-! ## A080152.P8802172442874675488

`A061395(2*A073640(n+1))`
-/

namespace A080152.P8802172442874675488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A073640 (n + 1)).toNat

end

end A080152.P8802172442874675488

/-!
# A080153: a(1)=2, a(2)=3; a(n) for n>2 is the first prime > a(n-1) such that the concatenation of a(n-1), a(n-2) and a(n) is also prime.

The programs for A080153, there is no canonical definition to state claims against.
-/

/-! ## A080153.P4935979342183540019

`A000040(A080154(n+1))`
-/

namespace A080153.P4935979342183540019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080154 (n + 1)).toNat

end

end A080153.P4935979342183540019

/-! ## A080153.P17858261738679257761

`A008578(A080154(n+1)+1)`
-/

namespace A080153.P17858261738679257761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080154 (n + 1) + 1).toNat

end

end A080153.P17858261738679257761

/-! ## A080153.P17491549296860498497

`A182986(A080154(n+1)+1)`
-/

namespace A080153.P17491549296860498497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A080154 (n + 1) + 1).toNat

end

end A080153.P17491549296860498497

/-! ## A080153.P17433273797061043720

`A158611(A080154(n+1)+2)`
-/

namespace A080153.P17433273797061043720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A080154 (n + 1) + 2).toNat

end

end A080153.P17433273797061043720

/-! ## A080153.P10820257946924257048

`∑{d}[A080154(n+1), A007444(#)]`
-/

namespace A080153.P10820257946924257048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A080153.P10820257946924257048

/-! ## A080153.P7071113230098925815

`A006005(A080154(n+1))+A000045(C(2, n+2))`
-/

namespace A080153.P7071113230098925815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080154 (n + 1)).toNat + A000045 (Nat.choose 2 (n + 2))

end

end A080153.P7071113230098925815

/-! ## A080153.P5903434406407219775

`A006093(A080154(n+1))+A000108(C(2, n+2))`
-/

namespace A080153.P5903434406407219775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A080154 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A080153.P5903434406407219775

/-! ## A080153.P12148238235642677131

`A006005(A080154(n+1))+C(2, n+2)*A000005(n+1)`
-/

namespace A080153.P12148238235642677131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080154 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ) * A000005 (n + 1)

end

end A080153.P12148238235642677131

/-! ## A080153.P4838043327390650126

`A001221(a(n-1))*A006005(A080154(n+1))` with `a(0)=2, a(1)=3`
-/

namespace A080153.P4838043327390650126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A001221 (a (n - 1)).toNat * A006005 (A080154 (n + 1)).toNat

end

end A080153.P4838043327390650126

/-! ## A080153.P4724521893139571422

`A073846(2*A080154(n+1))`
-/

namespace A080153.P4724521893139571422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A080154 (n + 1)).toNat

end

end A080153.P4724521893139571422

/-!
# A080154: Values of n corresponding to the terms in sequence A080153.

The programs for A080154, there is no canonical definition to state claims against.
-/

/-! ## A080154.P12398276981043114447

`A000720(A080153(n+1))`
-/

namespace A080154.P12398276981043114447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080153 (n + 1)).toNat

end

end A080154.P12398276981043114447

/-! ## A080154.P14029382392873488677

`A061395(2*A080153(n+1))`
-/

namespace A080154.P14029382392873488677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A080153 (n + 1)).toNat

end

end A080154.P14029382392873488677

/-! ## A080154.P17667033940269334681

`A003963(2*A080153(n+1))`
-/

namespace A080154.P17667033940269334681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A080153 (n + 1)).toNat

end

end A080154.P17667033940269334681

/-! ## A080154.P3858975862894740175

`A225395(2*A080153(n+1))`
-/

namespace A080154.P3858975862894740175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (2 * A080153 (n + 1)).toNat

end

end A080154.P3858975862894740175

/-!
# A080155: a(1)=2; a(n) for n>1 is the smallest prime number > a(n-1) such that the concatenation of all previous terms is also prime.

The programs for A080155, there is no canonical definition to state claims against.
-/

/-! ## A080155.P12028092507097967846

`A000040(A080156(n+1))`
-/

namespace A080155.P12028092507097967846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080156 (n + 1)).toNat

end

end A080155.P12028092507097967846

/-! ## A080155.P12039756551473778338

`A008578(A080156(n+1)+1)`
-/

namespace A080155.P12039756551473778338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080156 (n + 1) + 1).toNat

end

end A080155.P12039756551473778338

/-! ## A080155.P5280907631974149548

`A182986(A080156(n+1)+1)`
-/

namespace A080155.P5280907631974149548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A080156 (n + 1) + 1).toNat

end

end A080155.P5280907631974149548

/-! ## A080155.P5230202210033351408

`A158611(A080156(n+1)+2)`
-/

namespace A080155.P5230202210033351408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A080156 (n + 1) + 2).toNat

end

end A080155.P5230202210033351408

/-! ## A080155.P9951766832423345508

`∑{d}[A080156(n+1), A007444(#)]`
-/

namespace A080155.P9951766832423345508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A080155.P9951766832423345508

/-! ## A080155.P16931905943359776043

`A006005(A080156(n+1))+A000007(n)`
-/

namespace A080155.P16931905943359776043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080156 (n + 1)).toNat + A000007 n

end

end A080155.P16931905943359776043

/-! ## A080155.P16557997733214986047

`A151933(n)+A006005(A080156(n+1))`
-/

namespace A080155.P16557997733214986047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A006005 (A080156 (n + 1)).toNat

end

end A080155.P16557997733214986047

/-! ## A080155.P13208621820542080185

`A014963(4*n+2)*A006005(A080156(n+1))`
-/

namespace A080155.P13208621820542080185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A006005 (A080156 (n + 1)).toNat

end

end A080155.P13208621820542080185

/-! ## A080155.P7066586751405307046

`A006005(A080156(n+1))+A000045(C(2, n+2))`
-/

namespace A080155.P7066586751405307046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080156 (n + 1)).toNat + A000045 (Nat.choose 2 (n + 2))

end

end A080155.P7066586751405307046

/-! ## A080155.P2901520309261515996

`A006005(A080156(n+1))-A008683(3*(n+1)²)`
-/

namespace A080155.P2901520309261515996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080156 (n + 1)).toNat - A008683 (3 * (n + 1) ^ 2)

end

end A080155.P2901520309261515996

/-!
# A080156: Values of n corresponding to the terms in sequence A080155. For any k, the concatenation of the a(1) to a(k)-th primes is prime and each value of k is the smallest for which this is true.

The programs for A080156, there is no canonical definition to state claims against.
-/

/-! ## A080156.P5999789917563077097

`A000720(A080155(n+1))`
-/

namespace A080156.P5999789917563077097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080155 (n + 1)).toNat

end

end A080156.P5999789917563077097

/-! ## A080156.P3399969598131452887

`∑{d}[A080155(n+1), A061395(#)]`
-/

namespace A080156.P3399969598131452887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A080156.P3399969598131452887

/-! ## A080156.P13776362463375656759

`A061395(or(val(n+1, 35), A080155(n+1)))`
-/

namespace A080156.P13776362463375656759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (SequenceMachineLib.valuation (n + 1) 35 : ℤ) (A080155 (n + 1))).toNat

end

end A080156.P13776362463375656759

/-! ## A080156.P11365278900632556742

`A061395(or(A080155(n+1), A101659(n²)))`
-/

namespace A080156.P11365278900632556742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A080155 (n + 1)) (A101659 (n ^ 2))).toNat

end

end A080156.P11365278900632556742

/-! ## A080156.P12578107855225291921

`A066328(2*A080155(n+1)-A080155(n+1))`
-/

namespace A080156.P12578107855225291921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A080155 (n + 1) - A080155 (n + 1)).toNat

end

end A080156.P12578107855225291921

/-!
# A080157: Greedy frac multiples of gamma: a(1)=1, Sum_{n>0} frac(a(n)*x) = 1 at x=gamma, where "frac(y)" denotes the fractional part of y.

The programs for A080157, there is no canonical definition to state claims against.
-/

/-! ## A080157.P3956636917349934387

`A035620(n+1)+record[A320573(n+1)]`
-/

namespace A080157.P3956636917349934387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080157.P3956636917349934387

/-! ## A080157.P17563821466005300708

`A002330(A351733(n)+A005843(n))`
-/

namespace A080157.P17563821466005300708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A351733 n + A005843 n).toNat

end

end A080157.P17563821466005300708

/-! ## A080157.P8226673220063215138

`∑[A198789(A000032(3*n)-A050367(n+1))]`
-/

namespace A080157.P8226673220063215138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A000032 (3 * n) - A050367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080157.P8226673220063215138

/-!
# A080159: Triangular array of ways of drawing k non-intersecting chords between n points on a circle; i.e., Motzkin polynomial coefficients.

The programs for A080159, the canonical program `A080159.P15846458939702770497` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080159 has offset 0).

The definition of A080159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080159.P13423499217319363931

`1/(row(n)+1)*C(row(n)+1, col(n))*C(row(n)+1-col(n), col(n)+1)`
-/

namespace A080159.P13423499217319363931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (SequenceMachineLib.triRow n + 1 : ℚ) * (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ) * (Nat.choose ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A080159.P13423499217319363931

namespace A080159

/-- `1/(row(n)+1)*C(row(n)+1, col(n))*C(row(n)+1-col(n), col(n)+1)` -/
def P13423499217319363931.Spec : Prop :=
  ∀ n, P13423499217319363931.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P5094791199463568353

`A107131(A061579(n))`
-/

namespace A080159.P5094791199463568353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 (A061579 n).toNat

end

end A080159.P5094791199463568353

namespace A080159

/-- `A107131(A061579(n))` -/
def P5094791199463568353.Spec : Prop :=
  ∀ n, P5094791199463568353.a n = A080159 n

end A080159

/-! ## A080159.P4102705045616639058

`A080934(n)*A202023(n)`
-/

namespace A080159.P4102705045616639058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n * A202023 n

end

end A080159.P4102705045616639058

namespace A080159

/-- `A080934(n)*A202023(n)` -/
def P4102705045616639058.Spec : Prop :=
  ∀ n, P4102705045616639058.a n = A080159 n

end A080159

/-! ## A080159.P15692002420495584773

`A202023(n)*A287847(n)`
-/

namespace A080159.P15692002420495584773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n * A287847 n

end

end A080159.P15692002420495584773

namespace A080159

/-- `A202023(n)*A287847(n)` -/
def P15692002420495584773.Spec : Prop :=
  ∀ n, P15692002420495584773.a n = A080159 n

end A080159

/-! ## A080159.P18365460005584152914

`A202023(n)*A288942(n)`
-/

namespace A080159.P18365460005584152914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n * A288942 n

end

end A080159.P18365460005584152914

namespace A080159

/-- `A202023(n)*A288942(n)` -/
def P18365460005584152914.Spec : Prop :=
  ∀ n, P18365460005584152914.a n = A080159 n

end A080159

/-! ## A080159.P15846458939702770497

`A089627(n)/A128227(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080159

/-- `A089627(n)/A128227(n)` -/
def P15846458939702770497.Spec : Prop :=
  ∀ n, P15846458939702770497.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P13063699270322556294

`A089627(n)/A141539(n)`
-/

namespace A080159.P13063699270322556294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A141539 n : ℚ)

end

end A080159.P13063699270322556294

namespace A080159

/-- `A089627(n)/A141539(n)` -/
def P13063699270322556294.Spec : Prop :=
  ∀ n, P13063699270322556294.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P3136070833275173575

`A089627(n)/A193738(n)`
-/

namespace A080159.P3136070833275173575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A193738 n : ℚ)

end

end A080159.P3136070833275173575

namespace A080159

/-- `A089627(n)/A193738(n)` -/
def P3136070833275173575.Spec : Prop :=
  ∀ n, P3136070833275173575.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P12545236947624221468

`A089627(n)/A400322(n)`
-/

namespace A080159.P12545236947624221468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A400322 n : ℚ)

end

end A080159.P12545236947624221468

namespace A080159

/-- `A089627(n)/A400322(n)` -/
def P12545236947624221468.Spec : Prop :=
  ∀ n, P12545236947624221468.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P5715724987200957197

`A107131(A038722(n+1)-1)`
-/

namespace A080159.P5715724987200957197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 (A038722 (n + 1) - 1).toNat

end

end A080159.P5715724987200957197

namespace A080159

/-- `A107131(A038722(n+1)-1)` -/
def P5715724987200957197.Spec : Prop :=
  ∀ n, P5715724987200957197.a n = A080159 n

end A080159

/-! ## A080159.P17489917614672702658

`A089627(n)/A002260(n+1)`
-/

namespace A080159.P17489917614672702658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A080159.P17489917614672702658

namespace A080159

/-- `A089627(n)/A002260(n+1)` -/
def P17489917614672702658.Spec : Prop :=
  ∀ n, P17489917614672702658.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P1224188157921883507

`A089627(n)/(A002262(n)+1)`
-/

namespace A080159.P1224188157921883507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A080159.P1224188157921883507

namespace A080159

/-- `A089627(n)/(A002262(n)+1)` -/
def P1224188157921883507.Spec : Prop :=
  ∀ n, P1224188157921883507.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P18444208637402314823

`A089627(n)/A003983(n+1)`
-/

namespace A080159.P18444208637402314823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A003983 (n + 1) : ℚ)

end

end A080159.P18444208637402314823

namespace A080159

/-- `A089627(n)/A003983(n+1)` -/
def P18444208637402314823.Spec : Prop :=
  ∀ n, P18444208637402314823.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P80955718506559837

`A089627(n)/A080511(n+1)`
-/

namespace A080159.P80955718506559837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A080511 (n + 1) : ℚ)

end

end A080159.P80955718506559837

namespace A080159

/-- `A089627(n)/A080511(n+1)` -/
def P80955718506559837.Spec : Prop :=
  ∀ n, P80955718506559837.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P13166955123659282264

`A089627(n)/A080818(n+1)`
-/

namespace A080159.P13166955123659282264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A080818 (n + 1) : ℚ)

end

end A080159.P13166955123659282264

namespace A080159

/-- `A089627(n)/A080818(n+1)` -/
def P13166955123659282264.Spec : Prop :=
  ∀ n, P13166955123659282264.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P3368098086270305329

`A089627(n)/A125704(n+1)`
-/

namespace A080159.P3368098086270305329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A125704 (n + 1) : ℚ)

end

end A080159.P3368098086270305329

namespace A080159

/-- `A089627(n)/A125704(n+1)` -/
def P3368098086270305329.Spec : Prop :=
  ∀ n, P3368098086270305329.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P12130716820390489556

`A107131(A002024(n+1)²-(n+1))`
-/

namespace A080159.P12130716820390489556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A080159.P12130716820390489556

namespace A080159

/-- `A107131(A002024(n+1)²-(n+1))` -/
def P12130716820390489556.Spec : Prop :=
  ∀ n, P12130716820390489556.a n = A080159 n

end A080159

/-! ## A080159.P14574158629187905479

`A107131(xor(n, -1)+A002024(n+1)²)`
-/

namespace A080159.P14574158629187905479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 (Int.xor (n : ℤ) (-1) + A002024 (n + 1) ^ 2).toNat

end

end A080159.P14574158629187905479

namespace A080159

/-- `A107131(xor(n, -1)+A002024(n+1)²)` -/
def P14574158629187905479.Spec : Prop :=
  ∀ n, P14574158629187905479.a n = A080159 n

end A080159

/-! ## A080159.P12016873463656262894

`A089627(n)/A292477(n)`
-/

namespace A080159.P12016873463656262894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A292477 n : ℚ)

end

end A080159.P12016873463656262894

namespace A080159

/-- `A089627(n)/A292477(n)` -/
def P12016873463656262894.Spec : Prop :=
  ∀ n, P12016873463656262894.a n = (A080159 n : ℚ)

end A080159

/-! ## A080159.P13833407355121037496

`A089627(n)/A307078(n)`
-/

namespace A080159.P13833407355121037496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A307078 n : ℚ)

end

end A080159.P13833407355121037496

namespace A080159

/-- `A089627(n)/A307078(n)` -/
def P13833407355121037496.Spec : Prop :=
  ∀ n, P13833407355121037496.a n = (A080159 n : ℚ)

end A080159

/-!
# A080160: Squares that are digit sums of Wonderful Demlo numbers A002477.

The programs for A080160, the canonical program `A080160.P16608067545662280957` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080160 has offset 1).

The definition of A080160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080160.P16608067545662280957

`∩[A080151(n+1), n²]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080160

/-- `∩[A080151(n+1), n²]` -/
def P16608067545662280957.Spec : Prop :=
  ∀ n, (P16608067545662280957.a n : ℤ) = A080160 (n + 1)

theorem P16608067545662280957.correct : P16608067545662280957.Spec := by
  intro n
  simp only [A080160, Nat.add_sub_cancel]

end A080160

/-! ## A080160.P5658018439244249992

`A080151(A080161(n+1))`
-/

namespace A080160.P5658018439244249992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (A080161 (n + 1)).toNat

end

end A080160.P5658018439244249992

namespace A080160

/-- `A080151(A080161(n+1))` -/
def P5658018439244249992.Spec : Prop :=
  ∀ n, P5658018439244249992.a n = A080160 (n + 1)

end A080160

/-! ## A080160.P3744843668540812458

`∩[A000290(n), A080151(n+1)]`
-/

namespace A080160.P3744843668540812458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080160.P3744843668540812458

namespace A080160

/-- `∩[A000290(n), A080151(n+1)]` -/
def P3744843668540812458.Spec : Prop :=
  ∀ n, (P3744843668540812458.a n : ℤ) = A080160 (n + 1)

end A080160

/-! ## A080160.P5919291393620166011

`∩[A034793(n+1), A080151(n+1)]`
-/

namespace A080160.P5919291393620166011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080160.P5919291393620166011

namespace A080160

/-- `∩[A034793(n+1), A080151(n+1)]` -/
def P5919291393620166011.Spec : Prop :=
  ∀ n, (P5919291393620166011.a n : ℤ) = A080160 (n + 1)

end A080160

/-! ## A080160.P13780812784758281582

`A108690(n+1)²`
-/

namespace A080160.P13780812784758281582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108690 (n + 1) ^ 2

end

end A080160.P13780812784758281582

namespace A080160

/-- `A108690(n+1)²` -/
def P13780812784758281582.Spec : Prop :=
  ∀ n, P13780812784758281582.a n = A080160 (n + 1)

end A080160

/-! ## A080160.P13128241593961055321

`A002620(2*A108690(n+1))`
-/

namespace A080160.P13128241593961055321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A108690 (n + 1)).toNat

end

end A080160.P13128241593961055321

namespace A080160

/-- `A002620(2*A108690(n+1))` -/
def P13128241593961055321.Spec : Prop :=
  ∀ n, P13128241593961055321.a n = A080160 (n + 1)

end A080160

/-! ## A080160.P562168333374466651

`A108690(n+1)^gcd(2, A098151(n))`
-/

namespace A080160.P562168333374466651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108690 (n + 1) ^ Int.gcd 2 (A098151 n)

end

end A080160.P562168333374466651

namespace A080160

/-- `A108690(n+1)^gcd(2, A098151(n))` -/
def P562168333374466651.Spec : Prop :=
  ∀ n, P562168333374466651.a n = A080160 (n + 1)

end A080160

/-!
# A080161: Indices of Wonderful Demlo numbers A002477 whose digit sums are squares.

The programs for A080161, there is no canonical definition to state claims against.
-/

/-! ## A080161.P17529491186760874121

`record[(n+1)*A010052(A080151(n+1))]`
-/

namespace A080161.P17529491186760874121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A080151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080161.P17529491186760874121

/-! ## A080161.P4647096270734091354

`A270393(n+1)%57`
-/

namespace A080161.P4647096270734091354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270393 (n + 1)) 57

end

end A080161.P4647096270734091354

/-! ## A080161.P8004499009943773183

`∑[gcd(3*n, ∏[A146876(2*(n+1))])]`
-/

namespace A080161.P8004499009943773183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146876 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080161.P8004499009943773183

/-! ## A080161.P1435585979393476924

`∑[A348501(A006252(n))]`
-/

namespace A080161.P1435585979393476924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348501 (A006252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080161.P1435585979393476924

/-! ## A080161.P9742706614276696608

`A194966(A173551(n+2))`
-/

namespace A080161.P9742706614276696608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A173551 (n + 2)).toNat

end

end A080161.P9742706614276696608

/-!
# A080162: 

The programs for A080162, there is no canonical definition to state claims against.
-/

/-! ## A080162.P13579519103041082413

`A002477(A080161(n+1))`
-/

namespace A080162.P13579519103041082413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002477 (A080161 (n + 1)).toNat

end

end A080162.P13579519103041082413

/-! ## A080162.P14740364908432169335

`A002275(A062998(A034710(n+1)))²`
-/

namespace A080162.P14740364908432169335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A062998 (A034710 (n + 1)).toNat).toNat ^ 2

end

end A080162.P14740364908432169335

/-! ## A080162.P12753507342531387451

`A002275(A002473(A095289(n+1)))²`
-/

namespace A080162.P12753507342531387451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A002473 (A095289 (n + 1)).toNat).toNat ^ 2

end

end A080162.P12753507342531387451

/-! ## A080162.P5722786173884438416

`A002275(A002473(A095706(n+1)))²`
-/

namespace A080162.P5722786173884438416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A002473 (A095706 (n + 1)).toNat).toNat ^ 2

end

end A080162.P5722786173884438416

/-! ## A080162.P1493402317388229783

`A000042(A062998(A062998(n+1)))²`
-/

namespace A080162.P1493402317388229783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A062998 (A062998 (n + 1)).toNat).toNat ^ 2

end

end A080162.P1493402317388229783

/-!
# A080163: Sum of an infinite series: a(n) = Sum_{k>=0} ((k+1)*(k+2))^n/(16*(2^k)).

The programs for A080163, there is no canonical definition to state claims against.
-/

/-! ## A080163.P4750428363266917163

`1/8*∑{#}[n+1, C(n+1, #)*A000629(n+1+#)]`
-/

namespace A080163.P4750428363266917163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A000629 (n + 1 + k) : ℤ) : ℚ)

end

end A080163.P4750428363266917163

/-! ## A080163.P5418445965877368006

`A340837(n+1)/2`
-/

namespace A080163.P5418445965877368006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340837 (n + 1) : ℚ) / 2

end

end A080163.P5418445965877368006

/-! ## A080163.P12113214395042471490

`A098696(n+1)/4`
-/

namespace A080163.P12113214395042471490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098696 (n + 1) : ℚ) / 4

end

end A080163.P12113214395042471490

/-! ## A080163.P17510176164330931231

`A000079(n)*A055203(n+1)`
-/

namespace A080163.P17510176164330931231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A055203 (n + 1)

end

end A080163.P17510176164330931231

/-! ## A080163.P16965146283085726914

`(A000918(n)+2)*A055203(n+1)`
-/

namespace A080163.P16965146283085726914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 n + 2) * A055203 (n + 1)

end

end A080163.P16965146283085726914

/-!
# A080164: Wythoff difference array, D={d(i,j)}, by antidiagonals.

The programs for A080164, there is no canonical definition to state claims against.
-/

/-! ## A080164.P17399098316534940820

`A300763(A361992(n+1))`
-/

namespace A080164.P17399098316534940820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A361992 (n + 1)).toNat

end

end A080164.P17399098316534940820

/-! ## A080164.P4061156174531653875

`A120873(A361992(n+1)-1)`
-/

namespace A080164.P4061156174531653875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A361992 (n + 1) - 1).toNat

end

end A080164.P4061156174531653875

/-! ## A080164.P666688772849761972

`A134571(∑[char[∑[n]]]²-n)`
-/

namespace A080164.P666688772849761972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134571 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A080164.P666688772849761972

/-! ## A080164.P5086714960237529000

`or(char[2], A134571(A038722(n+1)))`
-/

namespace A080164.P5086714960237529000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A134571 (A038722 (n + 1)).toNat)

end

end A080164.P5086714960237529000

/-! ## A080164.P11588388040632438463

`or(char[2], A134571(A061579(n)+1))`
-/

namespace A080164.P11588388040632438463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A134571 (A061579 n + 1).toNat)

end

end A080164.P11588388040632438463

/-!
# A080165: Primes having initial digits "10" in binary representation.

The programs for A080165, the canonical program `A080165.P3889641676695789135` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080165 has offset 1).

The definition of A080165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080165.P3889641676695789135

`p?[4*n+2-A006257(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080165

/-- `p?[4*n+2-A006257(n)]` -/
def P3889641676695789135.Spec : Prop :=
  ∀ n, P3889641676695789135.a n = A080165 (n + 1)

theorem P3889641676695789135.correct : P3889641676695789135.Spec := by
  intro n
  simp only [A080165, Nat.add_sub_cancel]

end A080165

/-! ## A080165.P6792837257596400047

`p?[2^floor(log2(n+1))+n+1]`
-/

namespace A080165.P6792837257596400047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080165.P6792837257596400047

namespace A080165

/-- `p?[2^floor(log2(n+1))+n+1]` -/
def P6792837257596400047.Spec : Prop :=
  ∀ n, (P6792837257596400047.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P8410677824305583498

`record[A006530(2^floor(log2(n+1))+n+1)]`
-/

namespace A080165.P8410677824305583498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ Nat.log 2 (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080165.P8410677824305583498

namespace A080165

/-- `record[A006530(2^floor(log2(n+1))+n+1)]` -/
def P8410677824305583498.Spec : Prop :=
  ∀ n, P8410677824305583498.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P5225452902917356058

`record[A020639(2^floor(log2(n+1))+n+1)]`
-/

namespace A080165.P5225452902917356058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 ^ Nat.log 2 (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080165.P5225452902917356058

namespace A080165

/-- `record[A020639(2^floor(log2(n+1))+n+1)]` -/
def P5225452902917356058.Spec : Prop :=
  ∀ n, P5225452902917356058.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P16727837032342959196

`∩[A000040(n+1), A004760(n+1)+n]`
-/

namespace A080165.P16727837032342959196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P16727837032342959196

namespace A080165

/-- `∩[A000040(n+1), A004760(n+1)+n]` -/
def P16727837032342959196.Spec : Prop :=
  ∀ n, (P16727837032342959196.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P3622219622881106572

`p?[lt[2*n, xor(n, 2*n)]]`
-/

namespace A080165.P3622219622881106572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080165.P3622219622881106572

namespace A080165

/-- `p?[lt[2*n, xor(n, 2*n)]]` -/
def P3622219622881106572.Spec : Prop :=
  ∀ n, (P3622219622881106572.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P10423002754077906740

`filter[A004754(n+1), A010051(#)]`
-/

namespace A080165.P10423002754077906740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080165.P10423002754077906740

namespace A080165

/-- `filter[A004754(n+1), A010051(#)]` -/
def P10423002754077906740.Spec : Prop :=
  ∀ n, P10423002754077906740.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P2535792193635567032

`filter[A004754(n+1), A323153(#)]`
-/

namespace A080165.P2535792193635567032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A080165.P2535792193635567032

namespace A080165

/-- `filter[A004754(n+1), A323153(#)]` -/
def P2535792193635567032.Spec : Prop :=
  ∀ n, P2535792193635567032.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P4932630171460475376

`filter[A004754(2*n+1), A323152(#)]`
-/

namespace A080165.P4932630171460475376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A080165.P4932630171460475376

namespace A080165

/-- `filter[A004754(2*n+1), A323152(#)]` -/
def P4932630171460475376.Spec : Prop :=
  ∀ n, P4932630171460475376.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P16520001961284225824

`filter[A004754(2*n+1), A340371(#)]`
-/

namespace A080165.P16520001961284225824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A080165.P16520001961284225824

namespace A080165

/-- `filter[A004754(2*n+1), A340371(#)]` -/
def P16520001961284225824.Spec : Prop :=
  ∀ n, P16520001961284225824.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P6742693764628681590

`filter[A004754(2*n+1), A365716(#)]`
-/

namespace A080165.P6742693764628681590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A080165.P6742693764628681590

namespace A080165

/-- `filter[A004754(2*n+1), A365716(#)]` -/
def P6742693764628681590.Spec : Prop :=
  ∀ n, P6742693764628681590.a n = A080165 (n + 1)

end A080165

/-! ## A080165.P15166843248276100181

`∩[A000040(n+1), A004754(n+1)]`
-/

namespace A080165.P15166843248276100181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P15166843248276100181

namespace A080165

/-- `∩[A000040(n+1), A004754(n+1)]` -/
def P15166843248276100181.Spec : Prop :=
  ∀ n, (P15166843248276100181.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P17251213881957650161

`∩[A004754(n+1), A008578(n+1)]`
-/

namespace A080165.P17251213881957650161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P17251213881957650161

namespace A080165

/-- `∩[A004754(n+1), A008578(n+1)]` -/
def P17251213881957650161.Spec : Prop :=
  ∀ n, (P17251213881957650161.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P14813656730040035014

`∩[A004754(n+1), A045344(n+1)]`
-/

namespace A080165.P14813656730040035014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P14813656730040035014

namespace A080165

/-- `∩[A004754(n+1), A045344(n+1)]` -/
def P14813656730040035014.Spec : Prop :=
  ∀ n, (P14813656730040035014.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P5383293705750531628

`∩[A004754(n+1), A053813(n+1)]`
-/

namespace A080165.P5383293705750531628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P5383293705750531628

namespace A080165

/-- `∩[A004754(n+1), A053813(n+1)]` -/
def P5383293705750531628.Spec : Prop :=
  ∀ n, (P5383293705750531628.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P833855690308325137

`∩[A004754(n+1), A116974(n+1)]`
-/

namespace A080165.P833855690308325137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P833855690308325137

namespace A080165

/-- `∩[A004754(n+1), A116974(n+1)]` -/
def P833855690308325137.Spec : Prop :=
  ∀ n, (P833855690308325137.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P1988997576995257020

`∩[A004754(n+1), A138837(n+1)]`
-/

namespace A080165.P1988997576995257020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P1988997576995257020

namespace A080165

/-- `∩[A004754(n+1), A138837(n+1)]` -/
def P1988997576995257020.Spec : Prop :=
  ∀ n, (P1988997576995257020.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P364541933943486325

`∩[A004754(n+1), A158611(n+1)]`
-/

namespace A080165.P364541933943486325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P364541933943486325

namespace A080165

/-- `∩[A004754(n+1), A158611(n+1)]` -/
def P364541933943486325.Spec : Prop :=
  ∀ n, (P364541933943486325.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P1606726758171891197

`∩[A004754(n+1), A182986(n+1)]`
-/

namespace A080165.P1606726758171891197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P1606726758171891197

namespace A080165

/-- `∩[A004754(n+1), A182986(n+1)]` -/
def P1606726758171891197.Spec : Prop :=
  ∀ n, (P1606726758171891197.a n : ℤ) = A080165 (n + 1)

end A080165

/-! ## A080165.P13097013145573098508

`∩[A004754(n+1), A326715(n+1)]`
-/

namespace A080165.P13097013145573098508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080165.P13097013145573098508

namespace A080165

/-- `∩[A004754(n+1), A326715(n+1)]` -/
def P13097013145573098508.Spec : Prop :=
  ∀ n, (P13097013145573098508.a n : ℤ) = A080165 (n + 1)

end A080165

/-!
# A080166: Primes having initial digits "11" in their binary representation.

The programs for A080166, the canonical program `A080166.P17134688895846483269` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080166 has offset 1).

The definition of A080166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080166.P17134688895846483269

`p?[or(a(n-1)+2, 2*n)]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080166

/-- `p?[or(a(n-1)+2, 2*n)]` -/
def P17134688895846483269.Spec : Prop :=
  ∀ n, (P17134688895846483269.a n : ℤ) = A080166 (n + 1)

theorem P17134688895846483269.correct : P17134688895846483269.Spec := by
  intro n
  simp only [A080166, Nat.add_sub_cancel]

end A080166

/-! ## A080166.P2573399049364313715

`p?[or(n, a(n-1))+1]` with `a(0)=3`
-/

namespace A080166.P2573399049364313715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.lor n (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080166.P2573399049364313715

namespace A080166

/-- `p?[or(n, a(n-1))+1]` -/
def P2573399049364313715.Spec : Prop :=
  ∀ n, (P2573399049364313715.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P3300572222661591073

`p?[A080565(n+1)]`
-/

namespace A080166.P3300572222661591073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080166.P3300572222661591073

namespace A080166

/-- `p?[A080565(n+1)]` -/
def P3300572222661591073.Spec : Prop :=
  ∀ n, P3300572222661591073.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P7847253491127528287

`filter[A080565(n+1), A010051(#)]`
-/

namespace A080166.P7847253491127528287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080166.P7847253491127528287

namespace A080166

/-- `filter[A080565(n+1), A010051(#)]` -/
def P7847253491127528287.Spec : Prop :=
  ∀ n, P7847253491127528287.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P1117658728192166269

`filter[A080565(n+1), A323152(#)]`
-/

namespace A080166.P1117658728192166269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A080166.P1117658728192166269

namespace A080166

/-- `filter[A080565(n+1), A323152(#)]` -/
def P1117658728192166269.Spec : Prop :=
  ∀ n, P1117658728192166269.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P7437875592157725150

`filter[A080565(n+1), A323153(#)]`
-/

namespace A080166.P7437875592157725150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A080166.P7437875592157725150

namespace A080166

/-- `filter[A080565(n+1), A323153(#)]` -/
def P7437875592157725150.Spec : Prop :=
  ∀ n, P7437875592157725150.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P446521681593713563

`filter[A080565(n+1), A340371(#)]`
-/

namespace A080166.P446521681593713563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A080166.P446521681593713563

namespace A080166

/-- `filter[A080565(n+1), A340371(#)]` -/
def P446521681593713563.Spec : Prop :=
  ∀ n, P446521681593713563.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P15104512823872625530

`filter[A080565(n+1), A353670(#)]`
-/

namespace A080166.P15104512823872625530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A080166.P15104512823872625530

namespace A080166

/-- `filter[A080565(n+1), A353670(#)]` -/
def P15104512823872625530.Spec : Prop :=
  ∀ n, P15104512823872625530.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P13349239837161301357

`filter[A080565(n+1), A365716(#)]`
-/

namespace A080166.P13349239837161301357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A080166.P13349239837161301357

namespace A080166

/-- `filter[A080565(n+1), A365716(#)]` -/
def P13349239837161301357.Spec : Prop :=
  ∀ n, P13349239837161301357.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P9321428677758918429

`filter[A080565(n+1), A379969(#)]`
-/

namespace A080166.P9321428677758918429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A080166.P9321428677758918429

namespace A080166

/-- `filter[A080565(n+1), A379969(#)]` -/
def P9321428677758918429.Spec : Prop :=
  ∀ n, P9321428677758918429.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P1930600385845448281

`filter[A080565(n+1), A380467(#)]`
-/

namespace A080166.P1930600385845448281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A080166.P1930600385845448281

namespace A080166

/-- `filter[A080565(n+1), A380467(#)]` -/
def P1930600385845448281.Spec : Prop :=
  ∀ n, P1930600385845448281.a n = A080166 (n + 1)

end A080166

/-! ## A080166.P5155166067786157878

`∩[A000040(n+1), A080565(n+1)]`
-/

namespace A080166.P5155166067786157878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P5155166067786157878

namespace A080166

/-- `∩[A000040(n+1), A080565(n+1)]` -/
def P5155166067786157878.Spec : Prop :=
  ∀ n, (P5155166067786157878.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P11683726501314974699

`∩[A001751(n+1), A080565(n+1)]`
-/

namespace A080166.P11683726501314974699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P11683726501314974699

namespace A080166

/-- `∩[A001751(n+1), A080565(n+1)]` -/
def P11683726501314974699.Spec : Prop :=
  ∀ n, (P11683726501314974699.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P3676828717882772129

`∩[A004139(n+1), A080565(n+1)]`
-/

namespace A080166.P3676828717882772129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P3676828717882772129

namespace A080166

/-- `∩[A004139(n+1), A080565(n+1)]` -/
def P3676828717882772129.Spec : Prop :=
  ∀ n, (P3676828717882772129.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P16646857680039755148

`∩[A006005(n+1), A080565(n+1)]`
-/

namespace A080166.P16646857680039755148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P16646857680039755148

namespace A080166

/-- `∩[A006005(n+1), A080565(n+1)]` -/
def P16646857680039755148.Spec : Prop :=
  ∀ n, (P16646857680039755148.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P2382994095368568031

`∩[A008578(n+1), A080565(n+1)]`
-/

namespace A080166.P2382994095368568031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P2382994095368568031

namespace A080166

/-- `∩[A008578(n+1), A080565(n+1)]` -/
def P2382994095368568031.Spec : Prop :=
  ∀ n, (P2382994095368568031.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P7932679590537075717

`∩[A045319(n+1), A080565(n+1)]`
-/

namespace A080166.P7932679590537075717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P7932679590537075717

namespace A080166

/-- `∩[A045319(n+1), A080565(n+1)]` -/
def P7932679590537075717.Spec : Prop :=
  ∀ n, (P7932679590537075717.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P4280122694277990294

`∩[A046022(n+1), A080565(n+1)]`
-/

namespace A080166.P4280122694277990294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P4280122694277990294

namespace A080166

/-- `∩[A046022(n+1), A080565(n+1)]` -/
def P4280122694277990294.Spec : Prop :=
  ∀ n, (P4280122694277990294.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P3070839604176628590

`∩[A051948(n+1), A080565(n+1)]`
-/

namespace A080166.P3070839604176628590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P3070839604176628590

namespace A080166

/-- `∩[A051948(n+1), A080565(n+1)]` -/
def P3070839604176628590.Spec : Prop :=
  ∀ n, (P3070839604176628590.a n : ℤ) = A080166 (n + 1)

end A080166

/-! ## A080166.P16299021117469188832

`∩[A053577(n+1), A080565(n+1)]`
-/

namespace A080166.P16299021117469188832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080166.P16299021117469188832

namespace A080166

/-- `∩[A053577(n+1), A080565(n+1)]` -/
def P16299021117469188832.Spec : Prop :=
  ∀ n, (P16299021117469188832.a n : ℤ) = A080166 (n + 1)

end A080166

/-!
# A080167: Primes beginning with '10' and ending with '01' in binary representation.

The programs for A080167, the canonical program `A080167.P9309688143140738925` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080167 has offset 1).

The definition of A080167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080167.P8643728454727985294

`∩[A008846(n+1), A080165(n+1)]`
-/

namespace A080167.P8643728454727985294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P8643728454727985294

namespace A080167

/-- `∩[A008846(n+1), A080165(n+1)]` -/
def P8643728454727985294.Spec : Prop :=
  ∀ n, (P8643728454727985294.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P9309688143140738925

`∩[A080165(n+1), A191218(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080167

/-- `∩[A080165(n+1), A191218(n+1)]` -/
def P9309688143140738925.Spec : Prop :=
  ∀ n, (P9309688143140738925.a n : ℤ) = A080167 (n + 1)

theorem P9309688143140738925.correct : P9309688143140738925.Spec := by
  intro n
  simp only [A080167, Nat.add_sub_cancel]

end A080167

/-! ## A080167.P18418117950780727907

`∩[A002144(n+1), A080165(n+1)]`
-/

namespace A080167.P18418117950780727907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P18418117950780727907

namespace A080167

/-- `∩[A002144(n+1), A080165(n+1)]` -/
def P18418117950780727907.Spec : Prop :=
  ∀ n, (P18418117950780727907.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P438111946170095307

`∩[A080165(n+1), A085759(n+1)]`
-/

namespace A080167.P438111946170095307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P438111946170095307

namespace A080167

/-- `∩[A080165(n+1), A085759(n+1)]` -/
def P438111946170095307.Spec : Prop :=
  ∀ n, (P438111946170095307.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P16168300315934372790

`∩[A080165(n+1), A120960(n+1)]`
-/

namespace A080167.P16168300315934372790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P16168300315934372790

namespace A080167

/-- `∩[A080165(n+1), A120960(n+1)]` -/
def P16168300315934372790.Spec : Prop :=
  ∀ n, (P16168300315934372790.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P15372972779858412348

`∩[A080165(n+1), A280084(n+1)]`
-/

namespace A080167.P15372972779858412348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P15372972779858412348

namespace A080167

/-- `∩[A080165(n+1), A280084(n+1)]` -/
def P15372972779858412348.Spec : Prop :=
  ∀ n, (P15372972779858412348.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P11142716540848672682

`∩[A080165(n+1), A125018(n+1)]`
-/

namespace A080167.P11142716540848672682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P11142716540848672682

namespace A080167

/-- `∩[A080165(n+1), A125018(n+1)]` -/
def P11142716540848672682.Spec : Prop :=
  ∀ n, (P11142716540848672682.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P7384561599726352556

`∩[A080165(n+1), A230779(n+1)]`
-/

namespace A080167.P7384561599726352556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P7384561599726352556

namespace A080167

/-- `∩[A080165(n+1), A230779(n+1)]` -/
def P7384561599726352556.Spec : Prop :=
  ∀ n, (P7384561599726352556.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P11230821458587461121

`p?[(4*n+1)*A090996(n)]`
-/

namespace A080167.P11230821458587461121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080167.P11230821458587461121

namespace A080167

/-- `p?[(4*n+1)*A090996(n)]` -/
def P11230821458587461121.Spec : Prop :=
  ∀ n, P11230821458587461121.a n = A080167 (n + 1)

end A080167

/-! ## A080167.P13080181112834633622

`filter[A080165(n+1), A353812(#)]`
-/

namespace A080167.P13080181112834633622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A080167.P13080181112834633622

namespace A080167

/-- `filter[A080165(n+1), A353812(#)]` -/
def P13080181112834633622.Spec : Prop :=
  ∀ n, P13080181112834633622.a n = A080167 (n + 1)

end A080167

/-! ## A080167.P13543685994633952669

`filter[A080165(n+1), A353814(#)]`
-/

namespace A080167.P13543685994633952669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A080167.P13543685994633952669

namespace A080167

/-- `filter[A080165(n+1), A353814(#)]` -/
def P13543685994633952669.Spec : Prop :=
  ∀ n, P13543685994633952669.a n = A080167 (n + 1)

end A080167

/-! ## A080167.P5790524575978641145

`filter[A080165(n+1), A358678(#)]`
-/

namespace A080167.P5790524575978641145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A080167.P5790524575978641145

namespace A080167

/-- `filter[A080165(n+1), A358678(#)]` -/
def P5790524575978641145.Spec : Prop :=
  ∀ n, P5790524575978641145.a n = A080167 (n + 1)

end A080167

/-! ## A080167.P4924503343973143586

`filter[A080165(n+1), A359150(#)]`
-/

namespace A080167.P4924503343973143586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A080167.P4924503343973143586

namespace A080167

/-- `filter[A080165(n+1), A359150(#)]` -/
def P4924503343973143586.Spec : Prop :=
  ∀ n, P4924503343973143586.a n = A080167 (n + 1)

end A080167

/-! ## A080167.P14583539053024356160

`∩[A003653(n+1), A080165(n+1)]`
-/

namespace A080167.P14583539053024356160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P14583539053024356160

namespace A080167

/-- `∩[A003653(n+1), A080165(n+1)]` -/
def P14583539053024356160.Spec : Prop :=
  ∀ n, (P14583539053024356160.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P624028543288402126

`∩[A004613(n+1), A080165(n+1)]`
-/

namespace A080167.P624028543288402126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P624028543288402126

namespace A080167

/-- `∩[A004613(n+1), A080165(n+1)]` -/
def P624028543288402126.Spec : Prop :=
  ∀ n, (P624028543288402126.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P3913366278791995982

`∩[A080165(n+1), A231754(n+1)]`
-/

namespace A080167.P3913366278791995982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P3913366278791995982

namespace A080167

/-- `∩[A080165(n+1), A231754(n+1)]` -/
def P3913366278791995982.Spec : Prop :=
  ∀ n, (P3913366278791995982.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P1479039347800715724

`∩[A057948(n+1), A080165(n+1)]`
-/

namespace A080167.P1479039347800715724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P1479039347800715724

namespace A080167

/-- `∩[A057948(n+1), A080165(n+1)]` -/
def P1479039347800715724.Spec : Prop :=
  ∀ n, (P1479039347800715724.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P2131726926329762178

`∩[A080165(n+1), A226696(n+1)]`
-/

namespace A080167.P2131726926329762178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P2131726926329762178

namespace A080167

/-- `∩[A080165(n+1), A226696(n+1)]` -/
def P2131726926329762178.Spec : Prop :=
  ∀ n, (P2131726926329762178.a n : ℤ) = A080167 (n + 1)

end A080167

/-! ## A080167.P11125690621381533028

`∩[A080165(n+1), A291180(n+1)]`
-/

namespace A080167.P11125690621381533028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080167.P11125690621381533028

namespace A080167

/-- `∩[A080165(n+1), A291180(n+1)]` -/
def P11125690621381533028.Spec : Prop :=
  ∀ n, (P11125690621381533028.a n : ℤ) = A080167 (n + 1)

end A080167

/-!
# A080168: Primes beginning and ending with '11' in binary representation.

The programs for A080168, the canonical program `A080168.P14088762678047885577` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080168 has offset 1).

The definition of A080168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080168.P14088762678047885577

`∩[A002145(n+1), A080166(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080168

/-- `∩[A002145(n+1), A080166(n+1)]` -/
def P14088762678047885577.Spec : Prop :=
  ∀ n, (P14088762678047885577.a n : ℤ) = A080168 (n + 1)

theorem P14088762678047885577.correct : P14088762678047885577.Spec := by
  intro n
  simp only [A080168, Nat.add_sub_cancel]

end A080168

/-! ## A080168.P11057265466817774897

`∩[A045326(n+1), A080166(n+1)]`
-/

namespace A080168.P11057265466817774897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P11057265466817774897

namespace A080168

/-- `∩[A045326(n+1), A080166(n+1)]` -/
def P11057265466817774897.Spec : Prop :=
  ∀ n, (P11057265466817774897.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P3658132810738359864

`∩[A080166(n+1), A085760(n+1)]`
-/

namespace A080168.P3658132810738359864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P3658132810738359864

namespace A080168

/-- `∩[A080166(n+1), A085760(n+1)]` -/
def P3658132810738359864.Spec : Prop :=
  ∀ n, (P3658132810738359864.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P1095135309141339652

`∩[A080166(n+1), A197504(n+1)]`
-/

namespace A080168.P1095135309141339652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P1095135309141339652

namespace A080168

/-- `∩[A080166(n+1), A197504(n+1)]` -/
def P1095135309141339652.Spec : Prop :=
  ∀ n, (P1095135309141339652.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P10786914857495813393

`∩[A080166(n+1), A332555(n+1)]`
-/

namespace A080168.P10786914857495813393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P10786914857495813393

namespace A080168

/-- `∩[A080166(n+1), A332555(n+1)]` -/
def P10786914857495813393.Spec : Prop :=
  ∀ n, (P10786914857495813393.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P10266880944070611685

`∩[A080166(n+1), A292762(n+1)]`
-/

namespace A080168.P10266880944070611685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P10266880944070611685

namespace A080168

/-- `∩[A080166(n+1), A292762(n+1)]` -/
def P10266880944070611685.Spec : Prop :=
  ∀ n, (P10266880944070611685.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P12893695923772147540

`∩[A066499(n+1), A080166(n+1)]`
-/

namespace A080168.P12893695923772147540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P12893695923772147540

namespace A080168

/-- `∩[A066499(n+1), A080166(n+1)]` -/
def P12893695923772147540.Spec : Prop :=
  ∀ n, (P12893695923772147540.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P718108965916844390

`∩[A080166(n+1), A097987(n+1)]`
-/

namespace A080168.P718108965916844390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P718108965916844390

namespace A080168

/-- `∩[A080166(n+1), A097987(n+1)]` -/
def P718108965916844390.Spec : Prop :=
  ∀ n, (P718108965916844390.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P2120118030412945514

`∩[A080166(n+1), A094179(n+1)]`
-/

namespace A080168.P2120118030412945514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P2120118030412945514

namespace A080168

/-- `∩[A080166(n+1), A094179(n+1)]` -/
def P2120118030412945514.Spec : Prop :=
  ∀ n, (P2120118030412945514.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P13136624342235371560

`filter[A080166(n+1), A359152(#)]`
-/

namespace A080168.P13136624342235371560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A080168.P13136624342235371560

namespace A080168

/-- `filter[A080166(n+1), A359152(#)]` -/
def P13136624342235371560.Spec : Prop :=
  ∀ n, P13136624342235371560.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P7682432591428008728

`filter[A080166(n+1), A347871(#)]`
-/

namespace A080168.P7682432591428008728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A080168.P7682432591428008728

namespace A080168

/-- `filter[A080166(n+1), A347871(#)]` -/
def P7682432591428008728.Spec : Prop :=
  ∀ n, P7682432591428008728.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P9279851988209719434

`filter[A080166(n+1), A354028(#)]`
-/

namespace A080168.P9279851988209719434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A080168.P9279851988209719434

namespace A080168

/-- `filter[A080166(n+1), A354028(#)]` -/
def P9279851988209719434.Spec : Prop :=
  ∀ n, P9279851988209719434.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P1910871423096910940

`filter[A080166(n+1), A354029(#)]`
-/

namespace A080168.P1910871423096910940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A080168.P1910871423096910940

namespace A080168

/-- `filter[A080166(n+1), A354029(#)]` -/
def P1910871423096910940.Spec : Prop :=
  ∀ n, P1910871423096910940.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P16640494254090262107

`filter[A080166(n+1), A354033(#)]`
-/

namespace A080168.P16640494254090262107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A080168.P16640494254090262107

namespace A080168

/-- `filter[A080166(n+1), A354033(#)]` -/
def P16640494254090262107.Spec : Prop :=
  ∀ n, P16640494254090262107.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P4711771226995877727

`filter[A080166(n+1), A354036(#)]`
-/

namespace A080168.P4711771226995877727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A080168.P4711771226995877727

namespace A080168

/-- `filter[A080166(n+1), A354036(#)]` -/
def P4711771226995877727.Spec : Prop :=
  ∀ n, P4711771226995877727.a n = A080168 (n + 1)

end A080168

/-! ## A080168.P13516347968442027617

`∩[A004614(n+1), A080166(n+1)]`
-/

namespace A080168.P13516347968442027617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P13516347968442027617

namespace A080168

/-- `∩[A004614(n+1), A080166(n+1)]` -/
def P13516347968442027617.Spec : Prop :=
  ∀ n, (P13516347968442027617.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P5440959631527428948

`∩[A080166(n+1), A120127(n+1)]`
-/

namespace A080168.P5440959631527428948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P5440959631527428948

namespace A080168

/-- `∩[A080166(n+1), A120127(n+1)]` -/
def P5440959631527428948.Spec : Prop :=
  ∀ n, (P5440959631527428948.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P743880762135791310

`∩[A080166(n+1), A167181(n+1)]`
-/

namespace A080168.P743880762135791310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P743880762135791310

namespace A080168

/-- `∩[A080166(n+1), A167181(n+1)]` -/
def P743880762135791310.Spec : Prop :=
  ∀ n, (P743880762135791310.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P10248666403578017927

`∩[A080166(n+1), A309388(n+1)]`
-/

namespace A080168.P10248666403578017927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P10248666403578017927

namespace A080168

/-- `∩[A080166(n+1), A309388(n+1)]` -/
def P10248666403578017927.Spec : Prop :=
  ∀ n, (P10248666403578017927.a n : ℤ) = A080168 (n + 1)

end A080168

/-! ## A080168.P14808644575135900417

`∩[A080166(n+1), A359153(n+1)]`
-/

namespace A080168.P14808644575135900417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P14808644575135900417

namespace A080168

/-- `∩[A080166(n+1), A359153(n+1)]` -/
def P14808644575135900417.Spec : Prop :=
  ∀ n, (P14808644575135900417.a n : ℤ) = A080168 (n + 1)

end A080168

/-!
# A080169: Numbers that are cubes of primes of the form 4k+1 (A002144).

The programs for A080169, the canonical program `A080169.P7383122637728498919` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080169 has offset 1).

The definition of A080169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080169.P7383122637728498919

`A002144(n+1)^3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080169

/-- `A002144(n+1)^3` -/
def P7383122637728498919.Spec : Prop :=
  ∀ n, P7383122637728498919.a n = A080169 (n + 1)

theorem P7383122637728498919.correct : P7383122637728498919.Spec := by
  intro n
  simp only [A080169, Nat.add_sub_cancel]

end A080169

/-! ## A080169.P16218610423212835207

`p?[4*n+1]^3`
-/

namespace A080169.P16218610423212835207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3

end

end A080169.P16218610423212835207

namespace A080169

/-- `p?[4*n+1]^3` -/
def P16218610423212835207.Spec : Prop :=
  ∀ n, (P16218610423212835207.a n : ℤ) = A080169 (n + 1)

theorem P16218610423212835207.correct : P16218610423212835207.Spec := by
  intro n
  simp only [A080169, Nat.add_sub_cancel, A080169.P16218610423212835207.f1, A080169.P16218610423212835207.a, A080169.P7383122637728498919.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080169

/-! ## A080169.P6314433739583128459

`(A055131(n)/3)^3`
-/

namespace A080169.P6314433739583128459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055131 n : ℚ) / 3) ^ 3

end

end A080169.P6314433739583128459

namespace A080169

/-- `(A055131(n)/3)^3` -/
def P6314433739583128459.Spec : Prop :=
  ∀ n, P6314433739583128459.a n = (A080169 (n + 1) : ℚ)

theorem P6314433739583128459.correct : P6314433739583128459.Spec := by
  intro n
  simp only [A080169, Nat.add_sub_cancel, A080169.P6314433739583128459.a, A080169.P7383122637728498919.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080169

/-! ## A080169.P2195681703224701704

`sqrt(A080109(n+1)^3)`
-/

namespace A080169.P2195681703224701704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) ^ 3 : ℝ)

end

end A080169.P2195681703224701704

namespace A080169

/-- `sqrt(A080109(n+1)^3)` -/
def P2195681703224701704.Spec : Prop :=
  ∀ n, P2195681703224701704.a n = (A080169 (n + 1) : ℝ)

end A080169

/-! ## A080169.P4029882902485999899

`(A152680(n+1)+1)^3`
-/

namespace A080169.P4029882902485999899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) + 1) ^ 3

end

end A080169.P4029882902485999899

namespace A080169

/-- `(A152680(n+1)+1)^3` -/
def P4029882902485999899.Spec : Prop :=
  ∀ n, P4029882902485999899.a n = A080169 (n + 1)

theorem P4029882902485999899.correct : P4029882902485999899.Spec := by
  intro n
  simp only [A080169, Nat.add_sub_cancel, A080169.P4029882902485999899.a, A080169.P7383122637728498919.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A152680, A152680.P7400182187401258968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080169

/-! ## A080169.P17539571627732831033

`A002144(n+1)*A080109(n+1)`
-/

namespace A080169.P17539571627732831033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A080109 (n + 1)

end

end A080169.P17539571627732831033

namespace A080169

/-- `A002144(n+1)*A080109(n+1)` -/
def P17539571627732831033.Spec : Prop :=
  ∀ n, P17539571627732831033.a n = A080169 (n + 1)

theorem P17539571627732831033.correct : P17539571627732831033.Spec := by
  intro n
  simp only [A080169, Nat.add_sub_cancel, A080169.P17539571627732831033.a, A080169.P7383122637728498919.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A080109, A080109.P11078218124457791392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080169

/-! ## A080169.P312665504052119343

`A080175(n+1)/A002144(n+1)`
-/

namespace A080169.P312665504052119343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080175 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A080169.P312665504052119343

namespace A080169

/-- `A080175(n+1)/A002144(n+1)` -/
def P312665504052119343.Spec : Prop :=
  ∀ n, P312665504052119343.a n = (A080169 (n + 1) : ℚ)

end A080169

/-! ## A080169.P17338117497491691407

`gcd(A080175(n+1), A305728(n+1))`
-/

namespace A080169.P17338117497491691407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080175 (n + 1)) (A305728 (n + 1))

end

end A080169.P17338117497491691407

namespace A080169

/-- `gcd(A080175(n+1), A305728(n+1))` -/
def P17338117497491691407.Spec : Prop :=
  ∀ n, (P17338117497491691407.a n : ℤ) = A080169 (n + 1)

end A080169

/-! ## A080169.P2389262059810951884

`A002144(n+1)*A401004(n+1)/A401003(n+1)`
-/

namespace A080169.P2389262059810951884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) * A401004 (n + 1) : ℚ) / (A401003 (n + 1) : ℚ)

end

end A080169.P2389262059810951884

namespace A080169

/-- `A002144(n+1)*A401004(n+1)/A401003(n+1)` -/
def P2389262059810951884.Spec : Prop :=
  ∀ n, P2389262059810951884.a n = (A080169 (n + 1) : ℚ)

end A080169

/-! ## A080169.P16527325885235056588

`A002313(n+2)^3`
-/

namespace A080169.P16527325885235056588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) ^ 3

end

end A080169.P16527325885235056588

namespace A080169

/-- `A002313(n+2)^3` -/
def P16527325885235056588.Spec : Prop :=
  ∀ n, P16527325885235056588.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P4586592373205352291

`A280084(n+2)^3`
-/

namespace A080169.P4586592373205352291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) ^ 3

end

end A080169.P4586592373205352291

namespace A080169

/-- `A280084(n+2)^3` -/
def P4586592373205352291.Spec : Prop :=
  ∀ n, P4586592373205352291.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P21544092457396084

`A002313(n+2)*A080109(n+1)`
-/

namespace A080169.P21544092457396084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A080109 (n + 1)

end

end A080169.P21544092457396084

namespace A080169

/-- `A002313(n+2)*A080109(n+1)` -/
def P21544092457396084.Spec : Prop :=
  ∀ n, P21544092457396084.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P17118015521341555406

`A002144(n+1)*A002144(n+1)*A002313(n+2)`
-/

namespace A080169.P17118015521341555406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A002144 (n + 1) * A002313 (n + 2)

end

end A080169.P17118015521341555406

namespace A080169

/-- `A002144(n+1)*A002144(n+1)*A002313(n+2)` -/
def P17118015521341555406.Spec : Prop :=
  ∀ n, P17118015521341555406.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P9927164856013836875

`A002144(n+1)*A002144(n+1)*A280084(n+2)`
-/

namespace A080169.P9927164856013836875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A002144 (n + 1) * A280084 (n + 2)

end

end A080169.P9927164856013836875

namespace A080169

/-- `A002144(n+1)*A002144(n+1)*A280084(n+2)` -/
def P9927164856013836875.Spec : Prop :=
  ∀ n, P9927164856013836875.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P2573408558699861231

`A002313(n+2)*A002313(n+2)*A280084(n+2)`
-/

namespace A080169.P2573408558699861231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A002313 (n + 2) * A280084 (n + 2)

end

end A080169.P2573408558699861231

namespace A080169

/-- `A002313(n+2)*A002313(n+2)*A280084(n+2)` -/
def P2573408558699861231.Spec : Prop :=
  ∀ n, P2573408558699861231.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P3865367146993177563

`A111744(Δ[n²])^3`
-/

namespace A080169.P3865367146993177563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A080169.P3865367146993177563

namespace A080169

/-- `A111744(Δ[n²])^3` -/
def P3865367146993177563.Spec : Prop :=
  ∀ n, P3865367146993177563.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P3063966814276627173

`A111744(2*n+1)²*A111744(2*n+1)`
-/

namespace A080169.P3063966814276627173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * n + 1) ^ 2 * A111744 (2 * n + 1)

end

end A080169.P3063966814276627173

namespace A080169

/-- `A111744(2*n+1)²*A111744(2*n+1)` -/
def P3063966814276627173.Spec : Prop :=
  ∀ n, P3063966814276627173.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P5831201783450099487

`A108546(2*n+3)^3`
-/

namespace A080169.P5831201783450099487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (2 * n + 3) ^ 3

end

end A080169.P5831201783450099487

namespace A080169

/-- `A108546(2*n+3)^3` -/
def P5831201783450099487.Spec : Prop :=
  ∀ n, P5831201783450099487.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P7578457932962990754

`A030078(A080147(n+1))`
-/

namespace A080169.P7578457932962990754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A080147 (n + 1)).toNat

end

end A080169.P7578457932962990754

namespace A080169

/-- `A030078(A080147(n+1))` -/
def P7578457932962990754.Spec : Prop :=
  ∀ n, P7578457932962990754.a n = A080169 (n + 1)

end A080169

/-! ## A080169.P628360518180655910

`record[A006530(4*n+5)^3]`
-/

namespace A080169.P628360518180655910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080169.P628360518180655910

namespace A080169

/-- `record[A006530(4*n+5)^3]` -/
def P628360518180655910.Spec : Prop :=
  ∀ n, P628360518180655910.a n = A080169 (n + 1)

end A080169

/-!
# A080170: Numbers k such that gcd(C(2*k,k), C(3*k,k), C(4*k,k), ..., C((k+1)*k,k) ) = 1.

The programs for A080170, there is no canonical definition to state claims against.
-/

/-! ## A080170.P7980200887585153329

`A051283(n+1)-1`
-/

namespace A080170.P7980200887585153329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051283 (n + 1) - 1

end

end A080170.P7980200887585153329

/-! ## A080170.P14793960737610845488

`eq[1, A354996(n+1)]`
-/

namespace A080170.P14793960737610845488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080170.P14793960737610845488

/-! ## A080170.P2138145583544962191

`lt[1, A346418(n+1)]`
-/

namespace A080170.P2138145583544962191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080170.P2138145583544962191

/-! ## A080170.P582113235929239200

`record[A072504(n+30)-1]`
-/

namespace A080170.P582113235929239200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 30) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080170.P582113235929239200

/-! ## A080170.P14873279742899835033

`comp[A354995(n+1)+n]`
-/

namespace A080170.P14873279742899835033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080170.P14873279742899835033

/-! ## A080170.P3151596989949200459

`lt[A034699(n+1)², n]`
-/

namespace A080170.P3151596989949200459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080170.P3151596989949200459

/-! ## A080170.P5822480000923682678

`lt[A309639(n+1)², n]`
-/

namespace A080170.P5822480000923682678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080170.P5822480000923682678

/-! ## A080170.P8416288109112265938

`lt[A072505(n+1), atan(n)]`
-/

namespace A080170.P8416288109112265938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A080170.P8416288109112265938

/-! ## A080170.P13904896184810290045

`eq[1, A072505(n+2)]+1`
-/

namespace A080170.P13904896184810290045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080170.P13904896184810290045

/-! ## A080170.P9313346756909399733

`A023443(A051283(n+1))`
-/

namespace A080170.P9313346756909399733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A051283 (n + 1)).toNat

end

end A080170.P9313346756909399733

/-!
# A080171: a(n) = n*a(n-1) - (n-1)^2*a(n-2), a(0)=1, a(1)=1.

The programs for A080171, the canonical program `A080171.P9218208695644625424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080171 has offset 0).

The definition of A080171 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-(n-1)²*a(n-2)` (program `A080171.P9218208695644625424`, by `A080171.P9218208695644625424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080171.P9218208695644625424

`n*a(n-1)-(n-1)²*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A080171

/-- `n*a(n-1)-(n-1)²*a(n-2)` -/
def P9218208695644625424.Spec : Prop :=
  ∀ n, P9218208695644625424.a n = A080171 n

theorem P9218208695644625424.correct : P9218208695644625424.Spec := by
  intro n
  simp only [A080171]

end A080171

/-! ## A080171.P10200214155706991541

`∏[n-(1-n)²/a(n-1)]` with `a(0)=1`
-/

namespace A080171.P10200214155706991541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) - ((1 - (n : ℤ)) ^ 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080171.P10200214155706991541

namespace A080171

/-- `∏[n-(1-n)²/a(n-1)]` -/
def P10200214155706991541.Spec : Prop :=
  ∀ n, P10200214155706991541.a n = (A080171 n : ℚ)

end A080171

/-! ## A080171.P8567586554138570138

`(-1)^n*A182823(A000217(n))`
-/

namespace A080171.P8567586554138570138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A182823 (A000217 n).toNat

end

end A080171.P8567586554138570138

namespace A080171

/-- `(-1)^n*A182823(A000217(n))` -/
def P8567586554138570138.Spec : Prop :=
  ∀ n, P8567586554138570138.a n = A080171 n

end A080171

/-! ## A080171.P5953729605241473159

`A057077(2*n)*A182823(∑[n])`
-/

namespace A080171.P5953729605241473159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A182823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080171.P5953729605241473159

namespace A080171

/-- `A057077(2*n)*A182823(∑[n])` -/
def P5953729605241473159.Spec : Prop :=
  ∀ n, P5953729605241473159.a n = A080171 n

end A080171

/-! ## A080171.P12325352823179842748

`A182823(∑[n])/A057077(A008458(n))`
-/

namespace A080171.P12325352823179842748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182823 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A057077 (A008458 n).toNat : ℚ)

end

end A080171.P12325352823179842748

namespace A080171

/-- `A182823(∑[n])/A057077(A008458(n))` -/
def P12325352823179842748.Spec : Prop :=
  ∀ n, P12325352823179842748.a n = (A080171 n : ℚ)

end A080171

/-! ## A080171.P9338160438221072565

`A182823(A000217(n))/A057077(2*n)`
-/

namespace A080171.P9338160438221072565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182823 (A000217 n).toNat : ℚ) / (A057077 (2 * n) : ℚ)

end

end A080171.P9338160438221072565

namespace A080171

/-- `A182823(A000217(n))/A057077(2*n)` -/
def P9338160438221072565.Spec : Prop :=
  ∀ n, P9338160438221072565.a n = (A080171 n : ℚ)

end A080171

/-!
# A080172: Final digit of n-th Mersenne prime A000668(n).

The programs for A080172, there is no canonical definition to state claims against.
-/

/-! ## A080172.P4276121613263074988

`A080173(n+1)%10`
-/

namespace A080172.P4276121613263074988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080173 (n + 1)) 10

end

end A080172.P4276121613263074988

/-! ## A080172.P8929700685346680630

`2^A126044(n+1)-1`
-/

namespace A080172.P8929700685346680630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A126044 (n + 1) : ℤ) - 1

end

end A080172.P8929700685346680630

/-! ## A080172.P12328042274985613850

`A010879(A080173(n+1))`
-/

namespace A080172.P12328042274985613850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A080173 (n + 1)).toNat

end

end A080172.P12328042274985613850

/-! ## A080172.P7132398286159459685

`A267317(A126052(n+1))`
-/

namespace A080172.P7132398286159459685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 (A126052 (n + 1)).toNat

end

end A080172.P7132398286159459685

/-! ## A080172.P145916032997769895

`A267317(A126056(n+1))`
-/

namespace A080172.P145916032997769895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 (A126056 (n + 1)).toNat

end

end A080172.P145916032997769895

/-! ## A080172.P5961538146544574472

`A267317(A233008(n+1))`
-/

namespace A080172.P5961538146544574472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 (A233008 (n + 1)).toNat

end

end A080172.P5961538146544574472

/-!
# A080173: Final 2 digits of n-th Mersenne prime A000668(n).

The programs for A080173, there is no canonical definition to state claims against.
-/

/-! ## A080173.P2347035821355791550

`A100990(A138865(n+1))`
-/

namespace A080173.P2347035821355791550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 (A138865 (n + 1)).toNat

end

end A080173.P2347035821355791550

/-! ## A080173.P248992562252720687

`A138865(n+1)%A040020(n)²`
-/

namespace A080173.P248992562252720687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138865 (n + 1)) (A040020 n ^ 2)

end

end A080173.P248992562252720687

/-! ## A080173.P11519926782210415290

`A138863(n+1)%(10*A138862(n+1))`
-/

namespace A080173.P11519926782210415290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138863 (n + 1)) (10 * A138862 (n + 1))

end

end A080173.P11519926782210415290

/-! ## A080173.P13975184044586327686

`A138863(n+1)%A008592(A138862(n+1))`
-/

namespace A080173.P13975184044586327686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138863 (n + 1)) (A008592 (A138862 (n + 1)).toNat)

end

end A080173.P13975184044586327686

/-! ## A080173.P7981792886098390918

`A100990(A138866(n+1)%(10*A138864(n+1)))`
-/

namespace A080173.P7981792886098390918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 (Int.tmod (A138866 (n + 1)) (10 * A138864 (n + 1))).toNat

end

end A080173.P7981792886098390918

/-!
# A080174: Primes prime(k) such that prime(k)*k falls between twin primes.

The programs for A080174, there is no canonical definition to state claims against.
-/

/-! ## A080174.P578227104146553897

`∩[A062291(n+1), A192611(n+1)]`
-/

namespace A080174.P578227104146553897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080174.P578227104146553897

/-! ## A080174.P2739115549531870952

`A031215(A085637(n+1)/2)`
-/

namespace A080174.P2739115549531870952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.roundAway ((A085637 (n + 1) : ℚ) / 2)).toNat

end

end A080174.P2739115549531870952

/-! ## A080174.P5791286002003781787

`A000040(A085637(n+1))`
-/

namespace A080174.P5791286002003781787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085637 (n + 1)).toNat

end

end A080174.P5791286002003781787

/-! ## A080174.P4388619536815492785

`A008578(A085637(n+1)+1)`
-/

namespace A080174.P4388619536815492785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085637 (n + 1) + 1).toNat

end

end A080174.P4388619536815492785

/-! ## A080174.P14449891882960989791

`A065091(A085637(n+1)-1)`
-/

namespace A080174.P14449891882960989791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A085637 (n + 1) - 1).toNat

end

end A080174.P14449891882960989791

/-!
# A080175: Fourth power of primes of the form 4k+1 (A002144).

The programs for A080175, the canonical program `A080175.P5962583558788251147` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080175 has offset 1).

The definition of A080175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080175.P5962583558788251147

`A080109(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080175

/-- `A080109(n+1)²` -/
def P5962583558788251147.Spec : Prop :=
  ∀ n, P5962583558788251147.a n = A080175 (n + 1)

theorem P5962583558788251147.correct : P5962583558788251147.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel]

end A080175

/-! ## A080175.P3388857510659910032

`A002144(n+1)^4`
-/

namespace A080175.P3388857510659910032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 4

end

end A080175.P3388857510659910032

namespace A080175

/-- `A002144(n+1)^4` -/
def P3388857510659910032.Spec : Prop :=
  ∀ n, P3388857510659910032.a n = A080175 (n + 1)

theorem P3388857510659910032.correct : P3388857510659910032.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P3388857510659910032.a, A080175.P5962583558788251147.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A080109, A080109.P11078218124457791392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P16268231935231855257

`p?[4*n+1]^4`
-/

namespace A080175.P16268231935231855257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 4

end

end A080175.P16268231935231855257

namespace A080175

/-- `p?[4*n+1]^4` -/
def P16268231935231855257.Spec : Prop :=
  ∀ n, (P16268231935231855257.a n : ℤ) = A080175 (n + 1)

theorem P16268231935231855257.correct : P16268231935231855257.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P16268231935231855257.f1, A080175.P16268231935231855257.a, A080175.P5962583558788251147.a, A080109, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P4415292079413464977

`p?[4*n+1]²²`
-/

namespace A080175.P4415292079413464977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) ^ 2

end

end A080175.P4415292079413464977

namespace A080175

/-- `p?[4*n+1]²²` -/
def P4415292079413464977.Spec : Prop :=
  ∀ n, (P4415292079413464977.a n : ℤ) = A080175 (n + 1)

theorem P4415292079413464977.correct : P4415292079413464977.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P4415292079413464977.f1, A080175.P4415292079413464977.a, A080175.P5962583558788251147.a, A080109, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P14642510072399579662

`(-p?[4*n-3])^4`
-/

namespace A080175.P14642510072399579662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 4

end

end A080175.P14642510072399579662

namespace A080175

/-- `(-p?[4*n-3])^4` -/
def P14642510072399579662.Spec : Prop :=
  ∀ n, P14642510072399579662.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P6972073407412481280

`(A055131(n)/3)²²`
-/

namespace A080175.P6972073407412481280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A055131 n : ℚ) / 3) ^ 2) ^ 2

end

end A080175.P6972073407412481280

namespace A080175

/-- `(A055131(n)/3)²²` -/
def P6972073407412481280.Spec : Prop :=
  ∀ n, P6972073407412481280.a n = (A080175 (n + 1) : ℚ)

theorem P6972073407412481280.correct : P6972073407412481280.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P6972073407412481280.a, A080175.P5962583558788251147.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, A080109, A080109.P11078218124457791392.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P3510213351325669061

`(A152680(n+1)+1)²²`
-/

namespace A080175.P3510213351325669061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A152680 (n + 1) + 1) ^ 2) ^ 2

end

end A080175.P3510213351325669061

namespace A080175

/-- `(A152680(n+1)+1)²²` -/
def P3510213351325669061.Spec : Prop :=
  ∀ n, P3510213351325669061.a n = A080175 (n + 1)

theorem P3510213351325669061.correct : P3510213351325669061.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P3510213351325669061.a, A080175.P5962583558788251147.a, A080109, A080109.P11078218124457791392.a, A152680, A152680.P7400182187401258968.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P5334913473145129937

`A002144(n+1)*A080169(n+1)`
-/

namespace A080175.P5334913473145129937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A080169 (n + 1)

end

end A080175.P5334913473145129937

namespace A080175

/-- `A002144(n+1)*A080169(n+1)` -/
def P5334913473145129937.Spec : Prop :=
  ∀ n, P5334913473145129937.a n = A080175 (n + 1)

theorem P5334913473145129937.correct : P5334913473145129937.Spec := by
  intro n
  simp only [A080175, Nat.add_sub_cancel, A080175.P5334913473145129937.a, A080175.P5962583558788251147.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A080109, A080109.P11078218124457791392.a, A080169, A080169.P7383122637728498919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080175

/-! ## A080175.P2614962301728556316

`A080169(n+1)*A080169(n+1)/A080109(n+1)`
-/

namespace A080175.P2614962301728556316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080169 (n + 1) * A080169 (n + 1) : ℚ) / (A080109 (n + 1) : ℚ)

end

end A080175.P2614962301728556316

namespace A080175

/-- `A080169(n+1)*A080169(n+1)/A080109(n+1)` -/
def P2614962301728556316.Spec : Prop :=
  ∀ n, P2614962301728556316.a n = (A080175 (n + 1) : ℚ)

end A080175

/-! ## A080175.P14766189968665443962

`A002313(n+2)^4`
-/

namespace A080175.P14766189968665443962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) ^ 4

end

end A080175.P14766189968665443962

namespace A080175

/-- `A002313(n+2)^4` -/
def P14766189968665443962.Spec : Prop :=
  ∀ n, P14766189968665443962.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P14563550601775369807

`A280084(n+2)^4`
-/

namespace A080175.P14563550601775369807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) ^ 4

end

end A080175.P14563550601775369807

namespace A080175

/-- `A280084(n+2)^4` -/
def P14563550601775369807.Spec : Prop :=
  ∀ n, P14563550601775369807.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P4527443096172157948

`A267101(A080148(n+1))²²`
-/

namespace A080175.P4527443096172157948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267101 (A080148 (n + 1)).toNat ^ 2) ^ 2

end

end A080175.P4527443096172157948

namespace A080175

/-- `A267101(A080148(n+1))²²` -/
def P4527443096172157948.Spec : Prop :=
  ∀ n, P4527443096172157948.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P5941975881440763158

`A111744(Δ[n²])²²`
-/

namespace A080175.P5941975881440763158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A080175.P5941975881440763158

namespace A080175

/-- `A111744(Δ[n²])²²` -/
def P5941975881440763158.Spec : Prop :=
  ∀ n, P5941975881440763158.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P17189898401124083481

`A111744(2*n+1)^4`
-/

namespace A080175.P17189898401124083481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * n + 1) ^ 4

end

end A080175.P17189898401124083481

namespace A080175

/-- `A111744(2*n+1)^4` -/
def P17189898401124083481.Spec : Prop :=
  ∀ n, P17189898401124083481.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P16698036431804933518

`A002144(A110654(2*n+1))²²`
-/

namespace A080175.P16698036431804933518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002144 (A110654 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A080175.P16698036431804933518

namespace A080175

/-- `A002144(A110654(2*n+1))²²` -/
def P16698036431804933518.Spec : Prop :=
  ∀ n, P16698036431804933518.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P17895829349738774959

`A108546(2*n+3)²²`
-/

namespace A080175.P17895829349738774959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108546 (2 * n + 3) ^ 2) ^ 2

end

end A080175.P17895829349738774959

namespace A080175

/-- `A108546(2*n+3)²²` -/
def P17895829349738774959.Spec : Prop :=
  ∀ n, P17895829349738774959.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P6311878208096867018

`A030514(A080147(n+1))`
-/

namespace A080175.P6311878208096867018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (A080147 (n + 1)).toNat

end

end A080175.P6311878208096867018

namespace A080175

/-- `A030514(A080147(n+1))` -/
def P6311878208096867018.Spec : Prop :=
  ∀ n, P6311878208096867018.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P18029893958667462127

`record[A006530(4*n+5)^4]`
-/

namespace A080175.P18029893958667462127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080175.P18029893958667462127

namespace A080175

/-- `record[A006530(4*n+5)^4]` -/
def P18029893958667462127.Spec : Prop :=
  ∀ n, P18029893958667462127.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P9200953155421272906

`record[A020639(4*n+5)^4]`
-/

namespace A080175.P9200953155421272906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 5) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080175.P9200953155421272906

namespace A080175

/-- `record[A020639(4*n+5)^4]` -/
def P9200953155421272906.Spec : Prop :=
  ∀ n, P9200953155421272906.a n = A080175 (n + 1)

end A080175

/-! ## A080175.P7251170000047224450

`A139794(3*(n+1))²²`
-/

namespace A080175.P7251170000047224450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139794 (3 * (n + 1)) ^ 2) ^ 2

end

end A080175.P7251170000047224450

namespace A080175

/-- `A139794(3*(n+1))²²` -/
def P7251170000047224450.Spec : Prop :=
  ∀ n, P7251170000047224450.a n = A080175 (n + 1)

end A080175

/-!
# A080176: 

The programs for A080176, there is no canonical definition to state claims against.
-/

/-! ## A080176.P9431441236480542850

`10^2^n+1`
-/

namespace A080176.P9431441236480542850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ 2 ^ n + 1

end

end A080176.P9431441236480542850

/-! ## A080176.P7176191749438372779

`or(1, 10^2^n)`
-/

namespace A080176.P7176191749438372779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ 2 ^ n)

end

end A080176.P7176191749438372779

/-! ## A080176.P6107914634041092102

`xor(1, 10^2^n)`
-/

namespace A080176.P6107914634041092102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 ^ 2 ^ n)

end

end A080176.P6107914634041092102

/-!
# A080177: Non-palindromic primes which on subtracting their reversal give perfect squares.

The programs for A080177, there is no canonical definition to state claims against.
-/

/-! ## A080177.P2001323435089758757

`∩[A059798(n+1), A232183(n+1)]`
-/

namespace A080177.P2001323435089758757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P2001323435089758757

/-! ## A080177.P3103268540922575043

`∩[A059798(n+1), A061231(n)]`
-/

namespace A080177.P3103268540922575043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061231 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P3103268540922575043

/-! ## A080177.P10416256976917315117

`∩[A232183(n+1), A061231(n)]`
-/

namespace A080177.P10416256976917315117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061231 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P10416256976917315117

/-! ## A080177.P4770427417675957178

`p?[A061231(n)]`
-/

namespace A080177.P4770427417675957178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080177.P4770427417675957178

/-! ## A080177.P4942137081303747918

`∩[A099180(n+1), A061231(n)]`
-/

namespace A080177.P4942137081303747918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061231 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P4942137081303747918

/-! ## A080177.P17081411538680568518

`∩[A059798(n+1), A099180(n+1)]`
-/

namespace A080177.P17081411538680568518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P17081411538680568518

/-! ## A080177.P812807376484295819

`∩[A099180(n+1), A232183(n+1)]`
-/

namespace A080177.P812807376484295819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080177.P812807376484295819

/-!
# A080178: Non-palindromic primes which on subtracting their reversal gives perfect cubes.

The programs for A080178, there is no canonical definition to state claims against.
-/

/-! ## A080178.P2238737189950400758

`∩[A061379(n+1), A099180(n+1)]`
-/

namespace A080178.P2238737189950400758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080178.P2238737189950400758

/-! ## A080178.P15074020694349309738

`∩[A061923(n+1), A099180(n+1)]`
-/

namespace A080178.P15074020694349309738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080178.P15074020694349309738

/-!
# A080179: Numbers which on adding their reversal gives perfect cubes.

The programs for A080179, there is no canonical definition to state claims against.
-/

/-! ## A080179.P6256434248269225671

`eq[5, A077462(A056964(n))]`
-/

namespace A080179.P6256434248269225671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080179.P6256434248269225671

/-! ## A080179.P15693142795740346973

`eq[A056964(n), A118880(A008706(n))]`
-/

namespace A080179.P15693142795740346973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080179.P15693142795740346973

/-!
# A080180: a(1)=1, a(n+1) = a(n) + lpf(Sum_{i=1..n} a(i)), where lpf=A020639 (least prime factor).

The programs for A080180, there is no canonical definition to state claims against.
-/

/-! ## A080180.P8685328409742702972

`Δ[A080181(A028310(n))]+C(2, n+2)`
-/

namespace A080180.P8685328409742702972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080181 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A080180.P8685328409742702972

/-! ## A080180.P6497804072717098713

`A000007(n)+Δ[A080181(A028310(n))]`
-/

namespace A080180.P6497804072717098713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080181 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A080180.P6497804072717098713

/-! ## A080180.P11634215027954847206

`Δ[A080181(A028310(n))]^(A000040(n+1)%2)`
-/

namespace A080180.P11634215027954847206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080181 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A080180.P11634215027954847206

/-! ## A080180.P17517137368680579418

`Δ[A080181(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A080180.P17517137368680579418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080181 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080180.P17517137368680579418

/-!
# A080181: Partial sums of A080180.

The programs for A080181, there is no canonical definition to state claims against.
-/

/-! ## A080181.P3807150610126136233

`∑[A080180(n+1)]`
-/

namespace A080181.P3807150610126136233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080181.P3807150610126136233

/-! ## A080181.P9980489804215967317

`∑[record[A080180(A022446(n))]]`
-/

namespace A080181.P9980489804215967317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080180 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080181.P9980489804215967317

/-! ## A080181.P3494767725286727575

`∑[record[A080180(A065648(n))]]`
-/

namespace A080181.P3494767725286727575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080180 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080181.P3494767725286727575

/-! ## A080181.P11623700050071040666

`∑[record[A080180(A028920(n))]]`
-/

namespace A080181.P11623700050071040666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080180 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080181.P11623700050071040666

/-!
# A080182: a(1) = 1, a(n+1) = a(n) + gpf(Sum_{i=1..n} a(i)), where gpf=A006530 (greatest prime factor).

The programs for A080182, there is no canonical definition to state claims against.
-/

/-! ## A080182.P16974788862008847495

`A000007(n)+Δ[A080183(A028310(n))]`
-/

namespace A080182.P16974788862008847495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080183 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A080182.P16974788862008847495

/-! ## A080182.P7035698031250218970

`Δ[A080183(A028310(n))+A057427(n)]`
-/

namespace A080182.P7035698031250218970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080183 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080182.P7035698031250218970

/-! ## A080182.P11076351142365374249

`Δ[A080183(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A080182.P11076351142365374249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080183 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080182.P11076351142365374249

/-! ## A080182.P4018306575400991395

`A001318(n+1)-A065205(A062495(n))`
-/

namespace A080182.P4018306575400991395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) - A065205 (A062495 n).toNat

end

end A080182.P4018306575400991395

/-!
# A080183: Partial sums of A080182.

The programs for A080183, there is no canonical definition to state claims against.
-/

/-! ## A080183.P6377210532869190901

`∑[A080182(n+1)]`
-/

namespace A080183.P6377210532869190901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080183.P6377210532869190901

/-! ## A080183.P2544766133119674227

`∑[record[A080182(A022446(n))]]`
-/

namespace A080183.P2544766133119674227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080182 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080183.P2544766133119674227

/-! ## A080183.P9753384580045518070

`∑[record[A080182(A065648(n))]]`
-/

namespace A080183.P9753384580045518070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080182 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080183.P9753384580045518070

/-! ## A080183.P17997764364728469661

`∑[record[A080182(A028920(n))]]`
-/

namespace A080183.P17997764364728469661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080182 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080183.P17997764364728469661

/-! ## A080183.P6184640854739159308

`∑[record[A080182(A051340(n))]]`
-/

namespace A080183.P6184640854739159308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080182 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080183.P6184640854739159308

/-!
# A080185: Primes p such that 5 is the largest of all prime factors of the numbers between p and the next prime (cf. A052248).

The programs for A080185, there is no canonical definition to state claims against.
-/

/-! ## A080185.P16648921894381630846

`∩[A075583(n+1), A293194(n+1)]`
-/

namespace A080185.P16648921894381630846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080185.P16648921894381630846

/-! ## A080185.P7475507301585753655

`∩[A075583(n+1), A385935(n+1)]`
-/

namespace A080185.P7475507301585753655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080185.P7475507301585753655

/-! ## A080185.P14762835036644042251

`∩[A075583(n+1), A261338(n+1)]`
-/

namespace A080185.P14762835036644042251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080185.P14762835036644042251

/-! ## A080185.P7568170435932650882

`A004139(eq[5, A052248(n+2)])`
-/

namespace A080185.P7568170435932650882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080185.P7568170435932650882

/-! ## A080185.P11911493580750871700

`A215848(eq[5, A052248(n+2)])`
-/

namespace A080185.P11911493580750871700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080185.P11911493580750871700

/-!
# A080186: Primes p such that 7 is the largest of all prime factors of the numbers between p and the next prime (cf. A052248).

The programs for A080186, there is no canonical definition to state claims against.
-/

/-! ## A080186.P8505721067360823334

`A004139(eq[7, A052248(n+2)])`
-/

namespace A080186.P8505721067360823334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080186.P8505721067360823334

/-! ## A080186.P8293902959573526337

`A215848(eq[7, A052248(n+2)])`
-/

namespace A080186.P8293902959573526337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080186.P8293902959573526337

/-! ## A080186.P4245791123235151572

`A008578(eq[7, A052248(n+2)]+3)`
-/

namespace A080186.P4245791123235151572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A080186.P4245791123235151572

/-!
# A080187: Primes p such that 11 is the largest of all prime factors of the numbers between p and the next prime (cf. A052248).

The programs for A080187, there is no canonical definition to state claims against.
-/

/-! ## A080187.P7845351337809016922

`A004139(eq[11, A052248(n+2)])`
-/

namespace A080187.P7845351337809016922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080187.P7845351337809016922

/-!
# A080188: Primes p such that 13 is the largest of all prime factors of the numbers between p and the next prime (cf. A052248).

The programs for A080188, there is no canonical definition to state claims against.
-/

/-! ## A080188.P7748383900744770520

`A215848(eq[13, A052248(n+2)])`
-/

namespace A080188.P7748383900744770520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080188.P7748383900744770520

/-!
# A080189: a(n) = k such that f^k(prime(n)) = 2, where f is the mapping of primes > 2 to primes defined by A052248.

The programs for A080189, there is no canonical definition to state claims against.
-/

/-! ## A080189.P13019791161328091013

`A065770(xor(A077168(n), A289133(n)))`
-/

namespace A080189.P13019791161328091013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.xor (A077168 n) (A289133 n)).toNat

end

end A080189.P13019791161328091013

/-! ## A080189.P2280950622390168388

`A265744(A347473(n+3)-A106344(n+1))`
-/

namespace A080189.P2280950622390168388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A347473 (n + 3) - A106344 (n + 1)).toNat

end

end A080189.P2280950622390168388

/-! ## A080189.P14431439688937112444

`∑{e}[lcm(2, A053152(n+1)+∑{e}[n, #]), #]`
-/

namespace A080189.P14431439688937112444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053152 (n + 1) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A080189.P14431439688937112444

/-! ## A080189.P6980187940463308574

`A357186(A072647(n))`
-/

namespace A080189.P6980187940463308574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A072647 n).toNat

end

end A080189.P6980187940463308574

/-!
# A080191: Primes p such that p is the largest of all prime factors of the numbers between the prime preceding 2*p and the next prime.

The programs for A080191, there is no canonical definition to state claims against.
-/

/-! ## A080191.P9602397822119456883

`record[A052248(n+2)]`
-/

namespace A080191.P9602397822119456883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080191.P9602397822119456883

/-! ## A080191.P16812315881833171732

`record[A006530(A114331(n+2))]`
-/

namespace A080191.P16812315881833171732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114331 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080191.P16812315881833171732

/-! ## A080191.P11747023934800264801

`record[A139421(A000010(2*n+3))]`
-/

namespace A080191.P11747023934800264801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A000010 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080191.P11747023934800264801

/-!
# A080192: Complement of A080191 relative to A000040. Prime p is a term iff there is no prime between 2*p and 2*q, where q is the next prime after p.

The programs for A080192, the canonical program `A080192.P14998910337939777557` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080192 has offset 1).

The definition of A080192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080192.P14998910337939777557

`A045344(eq[0, A102820(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080192

/-- `A045344(eq[0, A102820(n+1)])` -/
def P14998910337939777557.Spec : Prop :=
  ∀ n, P14998910337939777557.a n = A080192 (n + 1)

theorem P14998910337939777557.correct : P14998910337939777557.Spec := by
  intro n
  simp only [A080192, Nat.add_sub_cancel]

end A080192

/-! ## A080192.P8231753939740765084

`A065091(eq[0, A102820(n+1)])`
-/

namespace A080192.P8231753939740765084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080192.P8231753939740765084

namespace A080192

/-- `A065091(eq[0, A102820(n+1)])` -/
def P8231753939740765084.Spec : Prop :=
  ∀ n, P8231753939740765084.a n = A080192 (n + 1)

end A080192

/-! ## A080192.P10578245278562024126

`p?[gcd(A000040(n+1), A102820(n+1))]`
-/

namespace A080192.P10578245278562024126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A102820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080192.P10578245278562024126

namespace A080192

/-- `p?[gcd(A000040(n+1), A102820(n+1))]` -/
def P10578245278562024126.Spec : Prop :=
  ∀ n, (P10578245278562024126.a n : ℤ) = A080192 (n + 1)

end A080192

/-! ## A080192.P10639335370064947262

`A000040(eq[2, A000040(A102820(n+1)+1)]+1)`
-/

namespace A080192.P10639335370064947262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102820 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080192.P10639335370064947262

namespace A080192

/-- `A000040(eq[2, A000040(A102820(n+1)+1)]+1)` -/
def P10639335370064947262.Spec : Prop :=
  ∀ n, P10639335370064947262.a n = A080192 (n + 1)

end A080192

/-! ## A080192.P1744504672858969870

`A000040(eq[1, A059788(n+2)/A059788(n+1)]+1)`
-/

namespace A080192.P1744504672858969870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059788 (n + 2) : ℚ) / (A059788 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A080192.P1744504672858969870

namespace A080192

/-- `A000040(eq[1, A059788(n+2)/A059788(n+1)]+1)` -/
def P1744504672858969870.Spec : Prop :=
  ∀ n, P1744504672858969870.a n = A080192 (n + 1)

end A080192

/-!
# A080193: 5-smooth numbers which are not 3-smooth.

The programs for A080193, there is no canonical definition to state claims against.
-/

/-! ## A080193.P549566993463010764

`5*A051037(n+1)`
-/

namespace A080193.P549566993463010764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051037 (n + 1)

end

end A080193.P549566993463010764

/-! ## A080193.P11993891918139433009

`A143207(n+1)/6`
-/

namespace A080193.P11993891918139433009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143207 (n + 1) : ℚ) / 6

end

end A080193.P11993891918139433009

/-! ## A080193.P1136910145812990439

`5*A108651(n+1)/8`
-/

namespace A080193.P1136910145812990439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A108651 (n + 1) : ℚ) / 8)

end

end A080193.P1136910145812990439

/-! ## A080193.P17200565413516514009

`A051037(eq[0, A051037(n+1)%5]+1)`
-/

namespace A080193.P17200565413516514009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080193.P17200565413516514009

/-! ## A080193.P13254208877368976671

`floor(xor(1, A143207(A008619(2*n)))/6)`
-/

namespace A080193.P13254208877368976671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 1 (A143207 (A008619 (2 * n)).toNat) : ℚ) / 6⌋

end

end A080193.P13254208877368976671

/-! ## A080193.P13817571793926542817

`∩[A051037(n+1), A085128(n+1)]`
-/

namespace A080193.P13817571793926542817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P13817571793926542817

/-! ## A080193.P7933986065232241442

`∩[A085128(n+1), A143513(n+1)]`
-/

namespace A080193.P7933986065232241442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P7933986065232241442

/-! ## A080193.P2602344136517778715

`∩[A068095(n+1), A085128(n+1)]`
-/

namespace A080193.P2602344136517778715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P2602344136517778715

/-! ## A080193.P15274030738886339434

`∩[A085128(n+1), A325663(n+1)]`
-/

namespace A080193.P15274030738886339434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P15274030738886339434

/-! ## A080193.P14869252378023567156

`∩[A085128(n+1), A392367(n+1)]`
-/

namespace A080193.P14869252378023567156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P14869252378023567156

/-! ## A080193.P3022713220889085002

`5*(lt[A006530(n+1), 6]+1)`
-/

namespace A080193.P3022713220889085002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A080193.P3022713220889085002

/-! ## A080193.P14104859092518470990

`∩[A085128(n+1), A156541(n+1)]`
-/

namespace A080193.P14104859092518470990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P14104859092518470990

/-! ## A080193.P8609447785893703285

`∩[A002473(n+1), A067761(n+1)]`
-/

namespace A080193.P8609447785893703285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P8609447785893703285

/-! ## A080193.P13295597730115822292

`∩[A051037(n+1), A067761(n+1)]`
-/

namespace A080193.P13295597730115822292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P13295597730115822292

/-! ## A080193.P14384636256848834862

`∩[A067761(n+1), A085128(n+1)]`
-/

namespace A080193.P14384636256848834862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P14384636256848834862

/-! ## A080193.P5290425852059426401

`∩[A067761(n+1), A162421(n+1)]`
-/

namespace A080193.P5290425852059426401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080193.P5290425852059426401

/-! ## A080193.P7485774817978160638

`eq[5, A006530(n+1)]+1`
-/

namespace A080193.P7485774817978160638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080193.P7485774817978160638

/-! ## A080193.P1207913314100790865

`5*record[gcd(n+1, A165851(n+1))]`
-/

namespace A080193.P1207913314100790865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165851 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080193.P1207913314100790865

/-! ## A080193.P18225518946907306344

`5*record[A038500(n+1)*A132741(n+1)]`
-/

namespace A080193.P18225518946907306344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A132741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080193.P18225518946907306344

/-! ## A080193.P16483121913204881329

`A008587(A051037(n+1))`
-/

namespace A080193.P16483121913204881329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A051037 (n + 1)).toNat

end

end A080193.P16483121913204881329

/-!
# A080194: 7-smooth numbers which are not 5-smooth.

The programs for A080194, there is no canonical definition to state claims against.
-/

/-! ## A080194.P11295628522374840883

`7*A002473(n+1)`
-/

namespace A080194.P11295628522374840883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002473 (n + 1)

end

end A080194.P11295628522374840883

/-! ## A080194.P12022586017933949758

`7*sqrt(A352618(n+1))`
-/

namespace A080194.P12022586017933949758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * Real.sqrt (A352618 (n + 1) : ℝ)

end

end A080194.P12022586017933949758

/-! ## A080194.P8229199256845533092

`A085129(n+1)+A002473(n+1)`
-/

namespace A080194.P8229199256845533092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) + A002473 (n + 1)

end

end A080194.P8229199256845533092

/-! ## A080194.P1833877924681310331

`A085127(n+1)+A085126(n+1)`
-/

namespace A080194.P1833877924681310331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) + A085126 (n + 1)

end

end A080194.P1833877924681310331

/-! ## A080194.P17623017965005734196

`A085128(n+1)+A085125(n+1)`
-/

namespace A080194.P17623017965005734196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) + A085125 (n + 1)

end

end A080194.P17623017965005734196

/-! ## A080194.P12256322814762469026

`A085131(n+1)-A002473(n+1)`
-/

namespace A080194.P12256322814762469026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A002473 (n + 1)

end

end A080194.P12256322814762469026

/-! ## A080194.P12208825888760252713

`A085132(n+1)-A085125(n+1)`
-/

namespace A080194.P12208825888760252713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085125 (n + 1)

end

end A080194.P12208825888760252713

/-! ## A080194.P12641470683393987713

`A085131(n+1)-sqrt(A352618(n+1))`
-/

namespace A080194.P12641470683393987713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℝ) - Real.sqrt (A352618 (n + 1) : ℝ)

end

end A080194.P12641470683393987713

/-! ## A080194.P16131368040804867579

`A085126(n+1)+2*A085125(n+1)`
-/

namespace A080194.P16131368040804867579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) + 2 * A085125 (n + 1)

end

end A080194.P16131368040804867579

/-! ## A080194.P11047769582325282127

`2*A085128(n+1)-A085126(n+1)`
-/

namespace A080194.P11047769582325282127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085128 (n + 1) - A085126 (n + 1)

end

end A080194.P11047769582325282127

/-! ## A080194.P15930112353184781480

`A085129(n+1)+A085125(n+1)/2`
-/

namespace A080194.P15930112353184781480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) : ℚ) + (A085125 (n + 1) : ℚ) / 2

end

end A080194.P15930112353184781480

/-! ## A080194.P15815521851944019711

`A085128(n+1)+A085127(n+1)/2`
-/

namespace A080194.P15815521851944019711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) : ℚ) + (A085127 (n + 1) : ℚ) / 2

end

end A080194.P15815521851944019711

/-! ## A080194.P7377224622534969986

`A085127(n+1)+A085129(n+1)/2`
-/

namespace A080194.P7377224622534969986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) + (A085129 (n + 1) : ℚ) / 2

end

end A080194.P7377224622534969986

/-! ## A080194.P3120112775916726225

`2*A085129(n+1)-A085128(n+1)`
-/

namespace A080194.P3120112775916726225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085129 (n + 1) - A085128 (n + 1)

end

end A080194.P3120112775916726225

/-! ## A080194.P8059952793517354359

`A085126(n+1)+A085131(n+1)/2`
-/

namespace A080194.P8059952793517354359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) : ℚ) + (A085131 (n + 1) : ℚ) / 2

end

end A080194.P8059952793517354359

/-! ## A080194.P14556216774669648538

`(A085131(n+1)+A085129(n+1))/2`
-/

namespace A080194.P14556216774669648538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) + A085129 (n + 1) : ℚ) / 2

end

end A080194.P14556216774669648538

/-! ## A080194.P13715426657472722366

`(A085132(n+1)+A085128(n+1))/2`
-/

namespace A080194.P13715426657472722366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) + A085128 (n + 1) : ℚ) / 2

end

end A080194.P13715426657472722366

/-! ## A080194.P3654608256563231083

`2*A085131(n+1)-A085132(n+1)`
-/

namespace A080194.P3654608256563231083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085131 (n + 1) - A085132 (n + 1)

end

end A080194.P3654608256563231083

/-! ## A080194.P7173181626296331847

`A085131(n+1)-A085125(n+1)/2`
-/

namespace A080194.P7173181626296331847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℚ) - (A085125 (n + 1) : ℚ) / 2

end

end A080194.P7173181626296331847

/-! ## A080194.P108193062667928725

`A085132(n+1)-A085127(n+1)/2`
-/

namespace A080194.P108193062667928725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) : ℚ) - (A085127 (n + 1) : ℚ) / 2

end

end A080194.P108193062667928725

/-!
# A080195: 11-smooth numbers which are not 7-smooth.

The programs for A080195, there is no canonical definition to state claims against.
-/

/-! ## A080195.P14026696206885448033

`11*A051038(n+1)`
-/

namespace A080195.P14026696206885448033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A051038 (n + 1)

end

end A080195.P14026696206885448033

/-! ## A080195.P5017253239038521065

`A147572(n+1)/A147571(gcd(n, n+1))`
-/

namespace A080195.P5017253239038521065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147572 (n + 1) : ℚ) / (A147571 (Nat.gcd n (n + 1)) : ℚ)

end

end A080195.P5017253239038521065

/-! ## A080195.P5690151423985058302

`A002473(n+1)/A147571(n+1)*A147572(n+1)`
-/

namespace A080195.P5690151423985058302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) / (A147571 (n + 1) : ℚ) * (A147572 (n + 1) : ℚ)

end

end A080195.P5690151423985058302

/-! ## A080195.P16779626389279068537

`A008593(A051038(n+1))`
-/

namespace A080195.P16779626389279068537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A051038 (n + 1)).toNat

end

end A080195.P16779626389279068537

/-! ## A080195.P11475040302803251648

`A017509(lt[A061395(n+1)/2, 3])+1`
-/

namespace A080195.P11475040302803251648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n) + 1

end

end A080195.P11475040302803251648

/-! ## A080195.P12195839094762999275

`A017401(A051038(n+1))-A001222(A032605(n+1))`
-/

namespace A080195.P12195839094762999275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A051038 (n + 1)).toNat - A001222 (A032605 (n + 1)).toNat

end

end A080195.P12195839094762999275

/-! ## A080195.P9749105347011494042

`eq[11, A006530(n+1)]+1`
-/

namespace A080195.P9749105347011494042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080195.P9749105347011494042

/-! ## A080195.P2855725095024951868

`∩[A051038(n+1), A376740(n+1)]`
-/

namespace A080195.P2855725095024951868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080195.P2855725095024951868

/-! ## A080195.P8386227882240108440

`A071830(a(n-1))` with `a(0)=11`
-/

namespace A080195.P8386227882240108440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A071830 (a (n - 1)).toNat

end

end A080195.P8386227882240108440

/-! ## A080195.P8586366729152674509

`∩[A051038(n+1), A068191(n+1)]`
-/

namespace A080195.P8586366729152674509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080195.P8586366729152674509

/-! ## A080195.P1806440900228100417

`record[11*A052126(11*(n+1))]`
-/

namespace A080195.P1806440900228100417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A052126 (11 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080195.P1806440900228100417

/-! ## A080195.P5134977201690530145

`eq[11, A006530(A004277(n))]`
-/

namespace A080195.P5134977201690530145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080195.P5134977201690530145

/-! ## A080195.P8891761014289212117

`eq[11, A006530(A028310(n))]`
-/

namespace A080195.P8891761014289212117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080195.P8891761014289212117

/-!
# A080196: 13-smooth numbers which are not 11-smooth.

The programs for A080196, there is no canonical definition to state claims against.
-/

/-! ## A080196.P5899967351758664131

`13*A080197(n+1)`
-/

namespace A080196.P5899967351758664131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A080197 (n + 1)

end

end A080196.P5899967351758664131

/-! ## A080196.P2288933562935450323

`A051038(n+1)/A147572(n+1)*A147573(n+1)`
-/

namespace A080196.P2288933562935450323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051038 (n + 1) : ℚ) / (A147572 (n + 1) : ℚ) * (A147573 (n + 1) : ℚ)

end

end A080196.P2288933562935450323

/-! ## A080196.P1443737017052384287

`A008595(A080197(n+1))`
-/

namespace A080196.P1443737017052384287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A080197 (n + 1)).toNat

end

end A080196.P1443737017052384287

/-! ## A080196.P18389227888719545170

`A190991(A080197(n+1))-A093178(A266303(n))`
-/

namespace A080196.P18389227888719545170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A080197 (n + 1)).toNat - A093178 (A266303 n).toNat

end

end A080196.P18389227888719545170

/-! ## A080196.P4297639524076851497

`A190991(A080197(n+1))-A093178(A266722(n))`
-/

namespace A080196.P4297639524076851497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A080197 (n + 1)).toNat - A093178 (A266722 n).toNat

end

end A080196.P4297639524076851497

/-! ## A080196.P12386212557227928077

`eq[13, A006530(n+1)]+1`
-/

namespace A080196.P12386212557227928077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080196.P12386212557227928077

/-! ## A080196.P5332100766955816024

`∩[A046064(n+1), A080197(n+1)]`
-/

namespace A080196.P5332100766955816024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080196.P5332100766955816024

/-! ## A080196.P3897784670677051408

`eq[13, A006530(A004277(n))]`
-/

namespace A080196.P3897784670677051408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080196.P3897784670677051408

/-! ## A080196.P16439871236743030158

`eq[13, A006530(A028310(n))]`
-/

namespace A080196.P16439871236743030158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080196.P16439871236743030158

/-! ## A080196.P950574821142415277

`eq[13, A006530(A337120(n))]`
-/

namespace A080196.P950574821142415277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A337120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080196.P950574821142415277

/-!
# A080197: 13-smooth numbers: numbers whose prime divisors are all <= 13.

The programs for A080197, there is no canonical definition to state claims against.
-/

/-! ## A080197.P4350333820990990938

`A080196(n+1)/13`
-/

namespace A080197.P4350333820990990938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080196 (n + 1) : ℚ) / 13

end

end A080197.P4350333820990990938

/-! ## A080197.P8189567416505294735

`A147573(n+1)/A147573(A080278(3*n+2))`
-/

namespace A080197.P8189567416505294735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147573 (n + 1) : ℚ) / (A147573 (A080278 (3 * n + 2)).toNat : ℚ)

end

end A080197.P8189567416505294735

/-! ## A080197.P17082054237022772443

`lt[A061395(n+1), 7]+1`
-/

namespace A080197.P17082054237022772443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080197.P17082054237022772443

/-! ## A080197.P413186789975405475

`lt[A006530(n+1), 14]+1`
-/

namespace A080197.P413186789975405475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080197.P413186789975405475

/-! ## A080197.P18007680622597685499

`lt[A318884(n+1)-A318886(n+1), 17]+1`
-/

namespace A080197.P18007680622597685499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A318886 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080197.P18007680622597685499

/-! ## A080197.P11945270056436704314

`lt[A332899(n+1)/π, 2]+1`
-/

namespace A080197.P11945270056436704314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A332899 (n + 1) : ℝ) / Real.pi

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A080197.P11945270056436704314

/-! ## A080197.P13203668392567111887

`∩[A080681(n+1), A160543(n+1)]`
-/

namespace A080197.P13203668392567111887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080197.P13203668392567111887

/-! ## A080197.P1370829043929600660

`lt[A053585(A007947(n+1)), 17]+1`
-/

namespace A080197.P1370829043929600660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A007947 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080197.P1370829043929600660

/-! ## A080197.P3716495121593543397

`lt[A002265(A002265(n)), A052126(n+1)]+1`
-/

namespace A080197.P3716495121593543397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080197.P3716495121593543397

/-! ## A080197.P11420105618915863472

`eq[13, A006530(13*(n+1))]+1`
-/

namespace A080197.P11420105618915863472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (13 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080197.P11420105618915863472

/-! ## A080197.P11910738485724956470

`record[A032742(sqrt(A144913(n+1)))]`
-/

namespace A080197.P11910738485724956470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway (Real.sqrt (A144913 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080197.P11910738485724956470

/-! ## A080197.P10932821670696903872

`lt[A051664(n+1)-A070536(n+1), 17]+1`
-/

namespace A080197.P10932821670696903872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A070536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080197.P10932821670696903872

/-! ## A080197.P3969574727296495907

`A052126(A080196(n+1))`
-/

namespace A080197.P3969574727296495907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A080196 (n + 1)).toNat

end

end A080197.P3969574727296495907

/-! ## A080197.P1116955309120876466

`lt[A328845(2*n), A158611(A158611(2*(n+1)))]`
-/

namespace A080197.P1116955309120876466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328845 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A158611 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080197.P1116955309120876466

/-!
# A080199: a(1)=1; for n>1, a(n)=a(n-1) - 3 if n is already in the sequence, a(n)=a(n-1) + 6 otherwise.

The programs for A080199, there is no canonical definition to state claims against.
-/

/-! ## A080199.P12406748791886500224

`6*n+2-A303489(A131121(n+1))`
-/

namespace A080199.P12406748791886500224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - A303489 (A131121 (n + 1)).toNat

end

end A080199.P12406748791886500224

/-! ## A080199.P3619516148046197439

`A033627(2*n+5)-A040072(A324240(n+1))`
-/

namespace A080199.P3619516148046197439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (2 * n + 5) - A040072 (A324240 (n + 1)).toNat

end

end A080199.P3619516148046197439

/-! ## A080199.P7337658113574892711

`A005843(3*n+1)-A118768(A096111(3*n))`
-/

namespace A080199.P7337658113574892711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * n + 1) - A118768 (A096111 (3 * n)).toNat

end

end A080199.P7337658113574892711

