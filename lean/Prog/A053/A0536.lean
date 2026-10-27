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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053600: a(1) = 2; for n>=1, a(n+1) is the smallest palindromic prime with a(n) as a central substring.

The programs for A053600, there is no canonical definition to state claims against.
-/

/-! ## A053600.P13618768644504660216

`A090275(lt[∑{digits}[n, #!], 49])`
-/

namespace A053600.P13618768644504660216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090275 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A053600.P13618768644504660216

/-!
# A053601: Number of bases of an n-dimensional vector space over GF(2).

The programs for A053601, the canonical program `A053601.P7804858873248441211` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053601 has offset 0).

The definition of A053601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053601.P7804858873248441211

`A002884(n)/n!`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053601

/-- `A002884(n)/n!` -/
def P7804858873248441211.Spec : Prop :=
  ∀ n, P7804858873248441211.a n = (A053601 n : ℚ)

end A053601

/-! ## A053601.P966038275980184725

`C(2^n, 2)*a(n-1)/n` with `a(0)=1`
-/

namespace A053601.P966038275980184725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 ^ n) 2 : ℚ) * a (n - 1) / (n : ℚ)

end

end A053601.P966038275980184725

namespace A053601

/-- `C(2^n, 2)*a(n-1)/n` -/
def P966038275980184725.Spec : Prop :=
  ∀ n, P966038275980184725.a n = (A053601 n : ℚ)

end A053601

/-! ## A053601.P3038240552454606535

`(4^n-2^n)/2*a(n-1)/n` with `a(0)=1`
-/

namespace A053601.P3038240552454606535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 * a (n - 1) / (n : ℚ)

end

end A053601.P3038240552454606535

namespace A053601

/-- `(4^n-2^n)/2*a(n-1)/n` -/
def P3038240552454606535.Spec : Prop :=
  ∀ n, P3038240552454606535.a n = (A053601 n : ℚ)

end A053601

/-! ## A053601.P18006815101547223905

`a(n-1)*A006516(n)/n` with `a(0)=1`
-/

namespace A053601.P18006815101547223905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A006516 n : ℚ) / (n : ℚ)

end

end A053601.P18006815101547223905

namespace A053601

/-- `a(n-1)*A006516(n)/n` -/
def P18006815101547223905.Spec : Prop :=
  ∀ n, P18006815101547223905.a n = (A053601 n : ℚ)

end A053601

/-! ## A053601.P10603115342348442269

`a(n-1)*A171476(n-1)/n` with `a(0)=1`
-/

namespace A053601.P10603115342348442269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A171476 (n - 1) : ℚ) / (n : ℚ)

end

end A053601.P10603115342348442269

namespace A053601

/-- `a(n-1)*A171476(n-1)/n` -/
def P10603115342348442269.Spec : Prop :=
  ∀ n, P10603115342348442269.a n = (A053601 n : ℚ)

end A053601

/-!
# A053602: a(n) = a(n-1) - (-1)^n*a(n-2), a(0)=0, a(1)=1.

The programs for A053602, the canonical program `A053602.P1781669924282634466` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053602 has offset 0).

The definition of A053602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(-1)^n*a(n-2)` (program `A053602.P1781669924282634466`, by `A053602.P1781669924282634466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053602.P1420020254596265171

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A053602.P1420020254596265171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 2) + a (n - 4)

end

end A053602.P1420020254596265171

namespace A053602

/-- `a(n-2)+a(n-4)` -/
def P1420020254596265171.Spec : Prop :=
  ∀ n, (P1420020254596265171.a n : ℤ) = A053602 n

end A053602

/-! ## A053602.P1781669924282634466

`a(n-1)-(-1)^n*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053602

/-- `a(n-1)-(-1)^n*a(n-2)` -/
def P1781669924282634466.Spec : Prop :=
  ∀ n, P1781669924282634466.a n = A053602 n

theorem P1781669924282634466.correct : P1781669924282634466.Spec := by
  intro n
  simp only [A053602]

end A053602

/-! ## A053602.P8235319638768311116

`ogf((x+x^2+x^3)/(1-x^2-x^4))`
-/

namespace A053602.P8235319638768311116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, 0, -1, 0, -1] n

end

end A053602.P8235319638768311116

namespace A053602

/-- `ogf((x+x^2+x^3)/(1-x^2-x^4))` -/
def P8235319638768311116.Spec : Prop :=
  ∀ n, P8235319638768311116.a n = A053602 n

end A053602

/-! ## A053602.P16426232581735790018

`a(n-1)-a(n-2)/(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A053602.P16426232581735790018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((-1) ^ n : ℚ)

end

end A053602.P16426232581735790018

namespace A053602

/-- `a(n-1)-a(n-2)/(-1)^n` -/
def P16426232581735790018.Spec : Prop :=
  ∀ n, P16426232581735790018.a n = (A053602 n : ℚ)

end A053602

/-! ## A053602.P2515765643855988200

`A327035(∑[gcd(2, n)])`
-/

namespace A053602.P2515765643855988200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053602.P2515765643855988200

namespace A053602

/-- `A327035(∑[gcd(2, n)])` -/
def P2515765643855988200.Spec : Prop :=
  ∀ n, P2515765643855988200.a n = A053602 n

end A053602

/-! ## A053602.P10861526868372804350

`A000045(∑[1-a(n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A053602.P10861526868372804350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053602.P10861526868372804350

namespace A053602

/-- `A000045(∑[1-a(n-1)])` -/
def P10861526868372804350.Spec : Prop :=
  ∀ n, P10861526868372804350.a n = A053602 n

end A053602

/-! ## A053602.P10544521990074390713

`A000045(Δ[a(n-2)+n])` with `a(0)=0, a(1)=0`
-/

namespace A053602.P10544521990074390713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053602.P10544521990074390713

namespace A053602

/-- `A000045(Δ[a(n-2)+n])` -/
def P10544521990074390713.Spec : Prop :=
  ∀ n, P10544521990074390713.a n = A053602 n

end A053602

/-! ## A053602.P12338921105184051271

`A000045(∑[∑[ogf((2x-x^2)/(1+x))]])`
-/

namespace A053602.P12338921105184051271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053602.P12338921105184051271

namespace A053602

/-- `A000045(∑[∑[ogf((2x-x^2)/(1+x))]])` -/
def P12338921105184051271.Spec : Prop :=
  ∀ n, P12338921105184051271.a n = A053602 n

end A053602

/-! ## A053602.P2706405436516497395

`A000045(floor(and(1, n)+(n+1)/2))`
-/

namespace A053602.P2706405436516497395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(Nat.land 1 n : ℚ) + (n + 1 : ℚ) / 2⌋.toNat

end

end A053602.P2706405436516497395

namespace A053602

/-- `A000045(floor(and(1, n)+(n+1)/2))` -/
def P2706405436516497395.Spec : Prop :=
  ∀ n, P2706405436516497395.a n = A053602 n

end A053602

/-! ## A053602.P14670148872147581344

`A000045(1-Δ[a(n-2)-(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A053602.P14670148872147581344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A053602.P14670148872147581344

namespace A053602

/-- `A000045(1-Δ[a(n-2)-(n-2)])` -/
def P14670148872147581344.Spec : Prop :=
  ∀ n, P14670148872147581344.a n = A053602 n

end A053602

/-! ## A053602.P4454775640410734604

`A000045(floor(gcd(n-1, 2*n)+(n-1)/2))`
-/

namespace A053602.P4454775640410734604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A053602.P4454775640410734604

namespace A053602

/-- `A000045(floor(gcd(n-1, 2*n)+(n-1)/2))` -/
def P4454775640410734604.Spec : Prop :=
  ∀ n, P4454775640410734604.a n = A053602 n

end A053602

/-! ## A053602.P3504017833746989634

`A000045(∑[gcd((n+1)², (1-n)²)]-(2*n+1))`
-/

namespace A053602.P3504017833746989634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1))

end

end A053602.P3504017833746989634

namespace A053602

/-- `A000045(∑[gcd((n+1)², (1-n)²)]-(2*n+1))` -/
def P3504017833746989634.Spec : Prop :=
  ∀ n, P3504017833746989634.a n = A053602 n

end A053602

/-! ## A053602.P8846433293340191180

`A000045(A030451(n))`
-/

namespace A053602.P8846433293340191180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030451 n).toNat

end

end A053602.P8846433293340191180

namespace A053602

/-- `A000045(A030451(n))` -/
def P8846433293340191180.Spec : Prop :=
  ∀ n, P8846433293340191180.a n = A053602 n

end A053602

/-! ## A053602.P5878185239489428631

`A103610(A072834(n))`
-/

namespace A053602.P5878185239489428631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A072834 n).toNat

end

end A053602.P5878185239489428631

namespace A053602

/-- `A103610(A072834(n))` -/
def P5878185239489428631.Spec : Prop :=
  ∀ n, P5878185239489428631.a n = A053602 n

end A053602

/-! ## A053602.P14769743839762319480

`A212804(A052938(n))`
-/

namespace A053602.P14769743839762319480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A052938 n).toNat

end

end A053602.P14769743839762319480

namespace A053602

/-- `A212804(A052938(n))` -/
def P14769743839762319480.Spec : Prop :=
  ∀ n, P14769743839762319480.a n = A053602 n

end A053602

/-! ## A053602.P5569526668732226331

`A000045(A028242(n+1))`
-/

namespace A053602.P5569526668732226331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028242 (n + 1)).toNat

end

end A053602.P5569526668732226331

namespace A053602

/-- `A000045(A028242(n+1))` -/
def P5569526668732226331.Spec : Prop :=
  ∀ n, P5569526668732226331.a n = A053602 n

end A053602

/-! ## A053602.P6656625077944010158

`A103610(A047521(n+1))`
-/

namespace A053602.P6656625077944010158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A047521 (n + 1)).toNat

end

end A053602.P6656625077944010158

namespace A053602

/-- `A103610(A047521(n+1))` -/
def P6656625077944010158.Spec : Prop :=
  ∀ n, P6656625077944010158.a n = A053602 n

end A053602

/-! ## A053602.P603152396528947708

`A103610(A047522(n+1))`
-/

namespace A053602.P603152396528947708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A047522 (n + 1)).toNat

end

end A053602.P603152396528947708

namespace A053602

/-- `A103610(A047522(n+1))` -/
def P603152396528947708.Spec : Prop :=
  ∀ n, P603152396528947708.a n = A053602 n

end A053602

/-! ## A053602.P14813423671304995435

`A103610(A047535(n+1))`
-/

namespace A053602.P14813423671304995435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A047535 (n + 1)).toNat

end

end A053602.P14813423671304995435

namespace A053602

/-- `A103610(A047535(n+1))` -/
def P14813423671304995435.Spec : Prop :=
  ∀ n, P14813423671304995435.a n = A053602 n

end A053602

/-! ## A053602.P4236569853161213525

`A103609(A165754(n+1))`
-/

namespace A053602.P4236569853161213525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A165754 (n + 1)).toNat

end

end A053602.P4236569853161213525

namespace A053602

/-- `A103609(A165754(n+1))` -/
def P4236569853161213525.Spec : Prop :=
  ∀ n, P4236569853161213525.a n = A053602 n

end A053602

/-!
# A053603: Number of ways to write n as an ordered sum of two nonzero triangular numbers.

The programs for A053603, the canonical program `A053603.P8228624408487937013` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053603 has offset 0).

The definition of A053603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053603.P6984569820204622936

`A307597(n)+A052344(n)`
-/

namespace A053603.P6984569820204622936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + A052344 n

end

end A053603.P6984569820204622936

namespace A053603

/-- `A307597(n)+A052344(n)` -/
def P6984569820204622936.Spec : Prop :=
  ∀ n, P6984569820204622936.a n = A053603 n

end A053603

/-! ## A053603.P8228624408487937013

`A008441(n)-A046698(A198954(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053603

/-- `A008441(n)-A046698(A198954(n))` -/
def P8228624408487937013.Spec : Prop :=
  ∀ n, P8228624408487937013.a n = A053603 n

theorem P8228624408487937013.correct : P8228624408487937013.Spec := by
  intro n
  simp only [A053603]

end A053603

/-! ## A053603.P14110740247930198361

`A005408(A307597(n))-A267813(n)`
-/

namespace A053603.P14110740247930198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A307597 n).toNat - A267813 n

end

end A053603.P14110740247930198361

namespace A053603

/-- `A005408(A307597(n))-A267813(n)` -/
def P14110740247930198361.Spec : Prop :=
  ∀ n, P14110740247930198361.a n = A053603 n

end A053603

/-! ## A053603.P7010233919245307600

`A008441(n)-(A073424(n)+A010054(n))`
-/

namespace A053603.P7010233919245307600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - (A073424 n + A010054 n)

end

end A053603.P7010233919245307600

namespace A053603

/-- `A008441(n)-(A073424(n)+A010054(n))` -/
def P7010233919245307600.Spec : Prop :=
  ∀ n, P7010233919245307600.a n = A053603 n

end A053603

/-! ## A053603.P6412060823079316190

`A052343(n)+A307597(n)-A010054(n)`
-/

namespace A053603.P6412060823079316190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + (A307597 n - A010054 n)

end

end A053603.P6412060823079316190

namespace A053603

/-- `A052343(n)+A307597(n)-A010054(n)` -/
def P6412060823079316190.Spec : Prop :=
  ∀ n, P6412060823079316190.a n = A053603 n

end A053603

/-! ## A053603.P3765252786891481317

`A008441(n)-A010054(n)*A292929(n)`
-/

namespace A053603.P3765252786891481317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - A010054 n * A292929 n

end

end A053603.P3765252786891481317

namespace A053603

/-- `A008441(n)-A010054(n)*A292929(n)` -/
def P3765252786891481317.Spec : Prop :=
  ∀ n, P3765252786891481317.a n = A053603 n

end A053603

/-! ## A053603.P5467217187406320269

`A281154(A017089(n))`
-/

namespace A053603.P5467217187406320269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 (A017089 n).toNat

end

end A053603.P5467217187406320269

namespace A053603

/-- `A281154(A017089(n))` -/
def P5467217187406320269.Spec : Prop :=
  ∀ n, P5467217187406320269.a n = A053603 n

end A053603

/-! ## A053603.P6589558544710954698

`A319797(A133263(n))+A307597(n)`
-/

namespace A053603.P6589558544710954698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 n).toNat + A307597 n

end

end A053603.P6589558544710954698

namespace A053603

/-- `A319797(A133263(n))+A307597(n)` -/
def P6589558544710954698.Spec : Prop :=
  ∀ n, P6589558544710954698.a n = A053603 n

end A053603

/-! ## A053603.P11472365386423705440

`A347730(n)-A010054(n)`
-/

namespace A053603.P11472365386423705440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 n - A010054 n

end

end A053603.P11472365386423705440

namespace A053603

/-- `A347730(n)-A010054(n)` -/
def P11472365386423705440.Spec : Prop :=
  ∀ n, P11472365386423705440.a n = A053603 n

end A053603

/-! ## A053603.P5063413957661149279

`A347730(n)-char[A000217(n)]`
-/

namespace A053603.P5063413957661149279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A053603.P5063413957661149279

namespace A053603

/-- `A347730(n)-char[A000217(n)]` -/
def P5063413957661149279.Spec : Prop :=
  ∀ n, P5063413957661149279.a n = A053603 n

end A053603

/-!
# A053604: Number of ways to write n as an ordered sum of 3 nonzero triangular numbers.

The programs for A053604, there is no canonical definition to state claims against.
-/

/-! ## A053604.P16230407982546813446

`A281155(A017101(n))`
-/

namespace A053604.P16230407982546813446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (A017101 n).toNat

end

end A053604.P16230407982546813446

/-! ## A053604.P10453591097277568067

`A281155(A017113(n)-1)`
-/

namespace A053604.P10453591097277568067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (A017113 n - 1).toNat

end

end A053604.P10453591097277568067

/-! ## A053604.P13961521259339787790

`A347731(n)-A347730(n)`
-/

namespace A053604.P13961521259339787790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347731 n - A347730 n

end

end A053604.P13961521259339787790

/-! ## A053604.P11792537324041072018

`A347731(n)-(A053603(n)+char[∑[n]])`
-/

namespace A053604.P11792537324041072018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347731 n - (A053603 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A053604.P11792537324041072018

/-! ## A053604.P7266538842112899500

`char[∑[n+1]]+A347731(n)-A008441(n)`
-/

namespace A053604.P7266538842112899500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A347731 n - A008441 n)

end

end A053604.P7266538842112899500

/-! ## A053604.P9341844075000360099

`A347731(n)-(A116604(2*n)-char[∑[n+1]])`
-/

namespace A053604.P9341844075000360099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347731 n - (A116604 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A053604.P9341844075000360099

/-! ## A053604.P10705844694517240060

`A347731(n)-(A125079(2*n)-char[∑[n+1]])`
-/

namespace A053604.P10705844694517240060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347731 n - (A125079 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A053604.P10705844694517240060

/-! ## A053604.P5348349937575295195

`A347731(n)-(A004020(n)/2-char[∑[n+1]])`
-/

namespace A053604.P5348349937575295195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347731 n : ℚ) - ((A004020 n : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ))

end

end A053604.P5348349937575295195

/-! ## A053604.P17352655823907865027

`A347731(n)-(A005883(n)/4-char[C(n+2, 2)])`
-/

namespace A053604.P17352655823907865027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347731 n : ℚ) - ((A005883 n : ℚ) / 4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ))

end

end A053604.P17352655823907865027

/-! ## A053604.P14911438354620401930

`A347731(n)-(A307597(n)+A052343(n))`
-/

namespace A053604.P14911438354620401930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347731 n - (A307597 n + A052343 n)

end

end A053604.P14911438354620401930

/-!
# A053605: Total multiplicity of the eigenvalue 0 in the spectra of the n^(n-2) labeled trees on n vertices.

The programs for A053605, there is no canonical definition to state claims against.
-/

/-! ## A053605.P12921999512603550669

`(n+1)*A065710(A070069(n+1))`
-/

namespace A053605.P12921999512603550669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065710 (A070069 (n + 1)).toNat

end

end A053605.P12921999512603550669

/-!
# A053606: a(n) = (Fibonacci(6*n+3) - 2)/4.

The programs for A053606, the canonical program `A053606.P15995491055914947986` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053606 has offset 0).

The definition of A053606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053606.P15995491055914947986

`18*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053606

/-- `18*a(n-1)-a(n-2)+8` -/
def P15995491055914947986.Spec : Prop :=
  ∀ n, P15995491055914947986.a n = A053606 n

theorem P15995491055914947986.correct : P15995491055914947986.Spec := by
  intro n
  simp only [A053606]

end A053606

/-! ## A053606.P12113976964433345779

`8*A049664(n)`
-/

namespace A053606.P12113976964433345779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049664 n

end

end A053606.P12113976964433345779

namespace A053606

/-- `8*A049664(n)` -/
def P12113976964433345779.Spec : Prop :=
  ∀ n, P12113976964433345779.a n = A053606 n

end A053606

/-! ## A053606.P13570451647753042755

`(A000045(6*n+3)-2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053606.P13570451647753042755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 3) - 2 : ℚ) / 4

end

end A053606.P13570451647753042755

namespace A053606

/-- `(A000045(6*n+3)-2)/4` -/
def P13570451647753042755.Spec : Prop :=
  ∀ n, P13570451647753042755.a n = (A053606 n : ℚ)

end A053606

/-! ## A053606.P15939462542254288044

`∑[18*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=8`
-/

namespace A053606.P15939462542254288044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P15939462542254288044

namespace A053606

/-- `∑[18*a(n-1)-a(n-2)]` -/
def P15939462542254288044.Spec : Prop :=
  ∀ n, P15939462542254288044.a n = A053606 n

end A053606

/-! ## A053606.P16255215483119128345

`∑[A134492(n)]`
-/

namespace A053606.P16255215483119128345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P16255215483119128345

namespace A053606

/-- `∑[A134492(n)]` -/
def P16255215483119128345.Spec : Prop :=
  ∀ n, P16255215483119128345.a n = A053606 n

end A053606

/-! ## A053606.P1563616543699744276

`A246641(n)-1`
-/

namespace A053606.P1563616543699744276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246641 n - 1

end

end A053606.P1563616543699744276

namespace A053606

/-- `A246641(n)-1` -/
def P1563616543699744276.Spec : Prop :=
  ∀ n, P1563616543699744276.a n = A053606 n

end A053606

/-! ## A053606.P12195826890616788039

`∑[A014445(2*n)]`
-/

namespace A053606.P12195826890616788039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P12195826890616788039

namespace A053606

/-- `∑[A014445(2*n)]` -/
def P12195826890616788039.Spec : Prop :=
  ∀ n, P12195826890616788039.a n = A053606 n

end A053606

/-! ## A053606.P6139835325726861690

`∑[2*A060645(n)]`
-/

namespace A053606.P6139835325726861690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P6139835325726861690

namespace A053606

/-- `∑[2*A060645(n)]` -/
def P6139835325726861690.Spec : Prop :=
  ∀ n, P6139835325726861690.a n = A053606 n

end A053606

/-! ## A053606.P5815251468879137948

`∑[A001906(3*n)]`
-/

namespace A053606.P5815251468879137948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P5815251468879137948

namespace A053606

/-- `∑[A001906(3*n)]` -/
def P5815251468879137948.Spec : Prop :=
  ∀ n, P5815251468879137948.a n = A053606 n

end A053606

/-! ## A053606.P17518005201774706900

`∑[A117647(4*n)]`
-/

namespace A053606.P17518005201774706900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053606.P17518005201774706900

namespace A053606

/-- `∑[A117647(4*n)]` -/
def P17518005201774706900.Spec : Prop :=
  ∀ n, P17518005201774706900.a n = A053606 n

end A053606

/-!
# A053607: Primes p such that a pure prime power occurs between p and the next prime.

The programs for A053607, there is no canonical definition to state claims against.
-/

/-! ## A053607.P13548855165137957243

`record[A060845(A052938(n))]`
-/

namespace A053607.P13548855165137957243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P13548855165137957243

/-! ## A053607.P12819686670581548144

`record[A060845(A060802(n+1))]`
-/

namespace A053607.P12819686670581548144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (A060802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P12819686670581548144

/-! ## A053607.P10068220618079436121

`record[A060845(A000217(n)%(n+1)+1)]`
-/

namespace A053607.P10068220618079436121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (Int.tmod (A000217 n) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P10068220618079436121

/-! ## A053607.P16291856965005127750

`record[A060845(n+1-2%A002061(n))]`
-/

namespace A053607.P16291856965005127750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 ((n + 1 : ℤ) - Int.tmod 2 (A002061 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P16291856965005127750

/-! ## A053607.P2544364022119539247

`record[A060845(n+1)%A060845(n+2)]`
-/

namespace A053607.P2544364022119539247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060845 (n + 1)) (A060845 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P2544364022119539247

/-! ## A053607.P12719208484920558898

`record[A060845(A008619(n)-A002264(n))]`
-/

namespace A053607.P12719208484920558898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (A008619 n - A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P12719208484920558898

/-! ## A053607.P13242476646784125136

`record[A060845(A334484(n)+1)]`
-/

namespace A053607.P13242476646784125136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060845 (A334484 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P13242476646784125136

/-! ## A053607.P14736064868160095423

`A000040(lt[1, Δ[A027883(n+1)]]+1)`
-/

namespace A053607.P14736064868160095423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053607.P14736064868160095423

/-! ## A053607.P6578260089318984519

`A246655(A379155(2*n+1))`
-/

namespace A053607.P6578260089318984519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A379155 (2 * n + 1)).toNat

end

end A053607.P6578260089318984519

/-! ## A053607.P12510966409852171054

`record[A025473(lt[A025473(n+1), n])]`
-/

namespace A053607.P12510966409852171054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053607.P12510966409852171054

/-! ## A053607.P17940709221712533378

`A000961(A379155(2*n+1)+1)`
-/

namespace A053607.P17940709221712533378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A379155 (2 * n + 1) + 1).toNat

end

end A053607.P17940709221712533378

/-!
# A053608: Numbers x = LCM(1,2,...,k) such that x^2 + 1 is prime.

The programs for A053608, there is no canonical definition to state claims against.
-/

/-! ## A053608.P18336973280092451838

`floor(sqrt(A053609(n+1)))`
-/

namespace A053608.P18336973280092451838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053609 (n + 1))

end

end A053608.P18336973280092451838

/-!
# A053609: Primes of form x^2+1 where x = LCM(1,2,...,k) for some k.

The programs for A053609, there is no canonical definition to state claims against.
-/

/-! ## A053609.P15116416914427019817

`A053608(n+1)²+1`
-/

namespace A053609.P15116416914427019817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053608 (n + 1) ^ 2 + 1

end

end A053609.P15116416914427019817

/-!
# A053610: Number of positive squares needed to sum to n using the greedy algorithm.

The programs for A053610, there is no canonical definition to state claims against.
-/

/-! ## A053610.P8918582887217994699

`A007953(A007961(n+1))`
-/

namespace A053610.P8918582887217994699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007961 (n + 1)).toNat

end

end A053610.P8918582887217994699

/-! ## A053610.P13578026676070530540

`∑[1-Δ[A260740(n)]]`
-/

namespace A053610.P13578026676070530540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053610.P13578026676070530540

/-! ## A053610.P10794106401455233595

`1-A260740(n+1)+n`
-/

namespace A053610.P10794106401455233595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260740 (n + 1) + (n : ℤ)

end

end A053610.P10794106401455233595

/-! ## A053610.P15475444513439507090

`A062535(n+1)+A002828(n+1)`
-/

namespace A053610.P15475444513439507090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062535 (n + 1) + A002828 (n + 1)

end

end A053610.P15475444513439507090

/-! ## A053610.P1339232751499274547

`∑{digits}[A007961(n+1), A003056(#+#)]`
-/

namespace A053610.P1339232751499274547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003056 (x + x)).sum

end

end A053610.P1339232751499274547

/-! ## A053610.P11366864083309768508

`∑{digits}[A007961(n+1), A000196(A000290(#))]`
-/

namespace A053610.P11366864083309768508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000196 (A000290 x).toNat).sum

end

end A053610.P11366864083309768508

/-! ## A053610.P3011755266276323053

`∑{digits}[A007961(n+1), A000196(A002620(#+#))]`
-/

namespace A053610.P3011755266276323053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000196 (A002620 (x + x)).toNat).sum

end

end A053610.P3011755266276323053

/-!
# A053613: Exceptional primes: there does not exist a consecutive triple of integers such that a(n) (prime) such that each number in the triple is a cubic residue of a(n).

The programs for A053613, there is no canonical definition to state claims against.
-/

/-! ## A053613.P12269906859611488933

`A045331(lt[A216963(n), A000217(n)])`
-/

namespace A053613.P12269906859611488933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053613.P12269906859611488933

/-! ## A053613.P11529143589006412515

`A045331(lt[A108917(n), A026487(n+1)])`
-/

namespace A053613.P11529143589006412515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053613.P11529143589006412515

/-! ## A053613.P13212855642080849766

`A045331(lt[A343379(n), A000010(n+1)])`
-/

namespace A053613.P13212855642080849766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053613.P13212855642080849766

/-! ## A053613.P3543527608518197129

`A045331(lt[A216963(n), A216974(n+1)])`
-/

namespace A053613.P3543527608518197129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053613.P3543527608518197129

/-! ## A053613.P15657544385158065119

`A045331(lt[A216963(n)+1, A045331(n+1)])`
-/

namespace A053613.P15657544385158065119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216963 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053613.P15657544385158065119

/-!
# A053615: Pyramidal sequence: distance to nearest product of two consecutive integers (promic or heteromecic numbers).

The programs for A053615, the canonical program `A053615.P2131948520812356575` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053615 has offset 0).

The definition of A053615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053615.P2131948520812356575

`floor(sqrt(n))-a(n-floor(sqrt(n)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053615

/-- `floor(sqrt(n))-a(n-floor(sqrt(n)))` -/
def P2131948520812356575.Spec : Prop :=
  ∀ n, P2131948520812356575.a n = A053615 n

theorem P2131948520812356575.correct : P2131948520812356575.Spec := by
  intro n
  simp only [A053615]

end A053615

/-! ## A053615.P18046132315901513759

`A004738(n+1)-1`
-/

namespace A053615.P18046132315901513759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1) - 1

end

end A053615.P18046132315901513759

namespace A053615

/-- `A004738(n+1)-1` -/
def P18046132315901513759.Spec : Prop :=
  ∀ n, P18046132315901513759.a n = A053615 n

end A053615

/-! ## A053615.P1448508733237207847

`A000194(n)-A053188(n)`
-/

namespace A053615.P1448508733237207847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n - A053188 n

end

end A053615.P1448508733237207847

namespace A053615

/-- `A000194(n)-A053188(n)` -/
def P1448508733237207847.Spec : Prop :=
  ∀ n, P1448508733237207847.a n = A053615 n

end A053615

/-! ## A053615.P10884808677399334016

`∑[(-1)^ceil(2*sqrt(n))]-1`
-/

namespace A053615.P10884808677399334016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053615.P10884808677399334016

namespace A053615

/-- `∑[(-1)^ceil(2*sqrt(n))]-1` -/
def P10884808677399334016.Spec : Prop :=
  ∀ n, P10884808677399334016.a n = (A053615 n : ℚ)

end A053615

/-! ## A053615.P7079465558067389568

`abs(A196199(n))`
-/

namespace A053615.P7079465558067389568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A196199 n|

end

end A053615.P7079465558067389568

namespace A053615

/-- `abs(A196199(n))` -/
def P7079465558067389568.Spec : Prop :=
  ∀ n, P7079465558067389568.a n = A053615 n

end A053615

/-! ## A053615.P15655117530044350626

`abs(A329116(n))`
-/

namespace A053615.P15655117530044350626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 n|

end

end A053615.P15655117530044350626

namespace A053615

/-- `abs(A329116(n))` -/
def P15655117530044350626.Spec : Prop :=
  ∀ n, P15655117530044350626.a n = A053615 n

end A053615

/-! ## A053615.P4947099886898831588

`abs(A381232(n))`
-/

namespace A053615.P4947099886898831588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A381232 n|

end

end A053615.P4947099886898831588

namespace A053615

/-- `abs(A381232(n))` -/
def P4947099886898831588.Spec : Prop :=
  ∀ n, P4947099886898831588.a n = A053615 n

end A053615

/-! ## A053615.P8183053931487810392

`log2(A082693(n))`
-/

namespace A053615.P8183053931487810392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082693 n : ℝ)

end

end A053615.P8183053931487810392

namespace A053615

/-- `log2(A082693(n))` -/
def P8183053931487810392.Spec : Prop :=
  ∀ n, P8183053931487810392.a n = (A053615 n : ℝ)

end A053615

/-! ## A053615.P5812841610969967717

`ceil(A253580(n)/2)`
-/

namespace A053615.P5812841610969967717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253580 n : ℚ) / 2⌉

end

end A053615.P5812841610969967717

namespace A053615

/-- `ceil(A253580(n)/2)` -/
def P5812841610969967717.Spec : Prop :=
  ∀ n, P5812841610969967717.a n = A053615 n

end A053615

/-! ## A053615.P8228338973556157688

`abs(A255175(abs(1-n)))`
-/

namespace A053615.P8228338973556157688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A255175 |1 - (n : ℤ)|.toNat)|

end

end A053615.P8228338973556157688

namespace A053615

/-- `abs(A255175(abs(1-n)))` -/
def P8228338973556157688.Spec : Prop :=
  ∀ n, P8228338973556157688.a n = A053615 n

end A053615

/-! ## A053615.P2383843828572579810

`ceil((A004741(n+1)-1)/2)`
-/

namespace A053615.P2383843828572579810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004741 (n + 1) - 1 : ℚ) / 2⌉

end

end A053615.P2383843828572579810

namespace A053615

/-- `ceil((A004741(n+1)-1)/2)` -/
def P2383843828572579810.Spec : Prop :=
  ∀ n, P2383843828572579810.a n = A053615 n

end A053615

/-! ## A053615.P17184101584612168903

`abs(2*A000217(floor(sqrt(n)))-n)`
-/

namespace A053615.P17184101584612168903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000217 (Nat.sqrt n) - (n : ℤ)|

end

end A053615.P17184101584612168903

namespace A053615

/-- `abs(2*A000217(floor(sqrt(n)))-n)` -/
def P17184101584612168903.Spec : Prop :=
  ∀ n, P17184101584612168903.a n = A053615 n

end A053615

/-! ## A053615.P1134080553732173093

`abs(floor((∑[A000122(n)]/2)²)-n)`
-/

namespace A053615.P1134080553732173093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2⌋ - (n : ℤ)|

end

end A053615.P1134080553732173093

namespace A053615

/-- `abs(floor((∑[A000122(n)]/2)²)-n)` -/
def P1134080553732173093.Spec : Prop :=
  ∀ n, P1134080553732173093.a n = A053615 n

end A053615

/-! ## A053615.P6699059562994020569

`abs(n-floor(sqrt(n))²-A000196(n))`
-/

namespace A053615.P6699059562994020569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) - A000196 n|

end

end A053615.P6699059562994020569

namespace A053615

/-- `abs(n-floor(sqrt(n))²-A000196(n))` -/
def P6699059562994020569.Spec : Prop :=
  ∀ n, P6699059562994020569.a n = A053615 n

end A053615

/-! ## A053615.P6869089039183007127

`abs(2*n+1-A007606(n+1))`
-/

namespace A053615.P6869089039183007127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A007606 (n + 1)|

end

end A053615.P6869089039183007127

namespace A053615

/-- `abs(2*n+1-A007606(n+1))` -/
def P6869089039183007127.Spec : Prop :=
  ∀ n, P6869089039183007127.a n = A053615 n

end A053615

/-! ## A053615.P3516283421337779150

`A110654(A253580(n))`
-/

namespace A053615.P3516283421337779150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A253580 n).toNat

end

end A053615.P3516283421337779150

namespace A053615

/-- `A110654(A253580(n))` -/
def P3516283421337779150.Spec : Prop :=
  ∀ n, P3516283421337779150.a n = A053615 n

end A053615

/-! ## A053615.P1894119211554021178

`A003056(A380763(n))`
-/

namespace A053615.P1894119211554021178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A380763 n).toNat

end

end A053615.P1894119211554021178

namespace A053615

/-- `A003056(A380763(n))` -/
def P1894119211554021178.Spec : Prop :=
  ∀ n, P1894119211554021178.a n = A053615 n

end A053615

/-! ## A053615.P820767968902937566

`A000194(A196199(n)²)`
-/

namespace A053615.P820767968902937566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A196199 n ^ 2).toNat

end

end A053615.P820767968902937566

namespace A053615

/-- `A000194(A196199(n)²)` -/
def P820767968902937566.Spec : Prop :=
  ∀ n, P820767968902937566.a n = A053615 n

end A053615

/-! ## A053615.P15401702463162776702

`A000196(A196199(n)²)`
-/

namespace A053615.P15401702463162776702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196199 n ^ 2).toNat

end

end A053615.P15401702463162776702

namespace A053615

/-- `A000196(A196199(n)²)` -/
def P15401702463162776702.Spec : Prop :=
  ∀ n, P15401702463162776702.a n = A053615 n

end A053615

/-! ## A053615.P13157965701424476760

`A037213(A196199(n)²)`
-/

namespace A053615.P13157965701424476760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A196199 n ^ 2).toNat

end

end A053615.P13157965701424476760

namespace A053615

/-- `A037213(A196199(n)²)` -/
def P13157965701424476760.Spec : Prop :=
  ∀ n, P13157965701424476760.a n = A053615 n

end A053615

/-!
# A053616: Pyramidal sequence: distance to nearest triangular number.

The programs for A053616, the canonical program `A053616.P15730649175569513944` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053616 has offset 0).

The definition of A053616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053616.P212577266281771738

`abs(C(ceil(sqrt(2*n)), 2)-n)`
-/

namespace A053616.P212577266281771738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ⌈Real.sqrt (2 * n : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ)|

end

end A053616.P212577266281771738

namespace A053616

/-- `abs(C(ceil(sqrt(2*n)), 2)-n)` -/
def P212577266281771738.Spec : Prop :=
  ∀ n, P212577266281771738.a n = A053616 n

end A053616

/-! ## A053616.P4298791846387497678

`val(A081954(n+1), 6)`
-/

namespace A053616.P4298791846387497678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081954 (n + 1)).toNat 6

end

end A053616.P4298791846387497678

namespace A053616

/-- `val(A081954(n+1), 6)` -/
def P4298791846387497678.Spec : Prop :=
  ∀ n, (P4298791846387497678.a n : ℤ) = A053616 n

end A053616

/-! ## A053616.P9587668517062733873

`val(A094615(n)+1, 6)`
-/

namespace A053616.P9587668517062733873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094615 n + 1).toNat 6

end

end A053616.P9587668517062733873

namespace A053616

/-- `val(A094615(n)+1, 6)` -/
def P9587668517062733873.Spec : Prop :=
  ∀ n, (P9587668517062733873.a n : ℤ) = A053616 n

end A053616

/-! ## A053616.P17209716953817853568

`val(A082693(2*n), 4)`
-/

namespace A053616.P17209716953817853568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082693 (2 * n)).toNat 4

end

end A053616.P17209716953817853568

namespace A053616

/-- `val(A082693(2*n), 4)` -/
def P17209716953817853568.Spec : Prop :=
  ∀ n, (P17209716953817853568.a n : ℤ) = A053616 n

end A053616

/-! ## A053616.P15730649175569513944

`val(2*A036561(n), 6)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053616

/-- `val(2*A036561(n), 6)` -/
def P15730649175569513944.Spec : Prop :=
  ∀ n, (P15730649175569513944.a n : ℤ) = A053616 n

theorem P15730649175569513944.correct : P15730649175569513944.Spec := by
  intro n
  simp only [A053616]

end A053616

/-! ## A053616.P1468529102993213682

`Δ[A133610(abs(1-n))]`
-/

namespace A053616.P1468529102993213682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133610 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053616.P1468529102993213682

namespace A053616

/-- `Δ[A133610(abs(1-n))]` -/
def P1468529102993213682.Spec : Prop :=
  ∀ n, P1468529102993213682.a n = A053616 n

end A053616

/-! ## A053616.P10098016951415358857

`floor(A274773(n+1)/2)`
-/

namespace A053616.P10098016951415358857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274773 (n + 1) : ℚ) / 2⌋

end

end A053616.P10098016951415358857

namespace A053616

/-- `floor(A274773(n+1)/2)` -/
def P10098016951415358857.Spec : Prop :=
  ∀ n, P10098016951415358857.a n = A053616 n

end A053616

/-! ## A053616.P1894845460204939445

`A157458(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A053616.P1894845460204939445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A157458 (n - 1) - a (n - 1)

end

end A053616.P1894845460204939445

namespace A053616

/-- `A157458(n-1)-a(n-1)` -/
def P1894845460204939445.Spec : Prop :=
  ∀ n, P1894845460204939445.a n = A053616 n

end A053616

/-! ## A053616.P16483149882093146256

`A004526(A194959(n+1))`
-/

namespace A053616.P16483149882093146256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194959 (n + 1)).toNat

end

end A053616.P16483149882093146256

namespace A053616

/-- `A004526(A194959(n+1))` -/
def P16483149882093146256.Spec : Prop :=
  ∀ n, P16483149882093146256.a n = A053616 n

end A053616

/-! ## A053616.P14287130416284316581

`A340507(n)+A004197(n)`
-/

namespace A053616.P14287130416284316581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n + A004197 n

end

end A053616.P14287130416284316581

namespace A053616

/-- `A340507(n)+A004197(n)` -/
def P14287130416284316581.Spec : Prop :=
  ∀ n, P14287130416284316581.a n = A053616 n

end A053616

/-! ## A053616.P7424216783939132583

`A172471(n)-A003984(n)`
-/

namespace A053616.P7424216783939132583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A003984 n

end

end A053616.P7424216783939132583

namespace A053616

/-- `A172471(n)-A003984(n)` -/
def P7424216783939132583.Spec : Prop :=
  ∀ n, P7424216783939132583.a n = A053616 n

end A053616

/-! ## A053616.P16603535748789543445

`A068344(n)-∑[A068344(n)]`
-/

namespace A053616.P16603535748789543445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053616.P16603535748789543445

namespace A053616

/-- `A068344(n)-∑[A068344(n)]` -/
def P16603535748789543445.Spec : Prop :=
  ∀ n, P16603535748789543445.a n = A053616 n

end A053616

/-! ## A053616.P136177516113707294

`A002265(2*A194959(n+1))`
-/

namespace A053616.P136177516113707294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A194959 (n + 1)).toNat

end

end A053616.P136177516113707294

namespace A053616

/-- `A002265(2*A194959(n+1))` -/
def P136177516113707294.Spec : Prop :=
  ∀ n, P136177516113707294.a n = A053616 n

end A053616

/-! ## A053616.P9887886617973543234

`A101776(n)-A051125(n+1)`
-/

namespace A053616.P9887886617973543234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A051125 (n + 1)

end

end A053616.P9887886617973543234

namespace A053616

/-- `A101776(n)-A051125(n+1)` -/
def P9887886617973543234.Spec : Prop :=
  ∀ n, P9887886617973543234.a n = A053616 n

end A053616

/-! ## A053616.P9213719658535195798

`A003983(n+1)-A077605(n+1)`
-/

namespace A053616.P9213719658535195798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A077605 (n + 1)

end

end A053616.P9213719658535195798

namespace A053616

/-- `A003983(n+1)-A077605(n+1)` -/
def P9213719658535195798.Spec : Prop :=
  ∀ n, P9213719658535195798.a n = A053616 n

end A053616

/-! ## A053616.P15737456571594333663

`A051125(n+1)-A130517(n+1)`
-/

namespace A053616.P15737456571594333663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) - A130517 (n + 1)

end

end A053616.P15737456571594333663

namespace A053616

/-- `A051125(n+1)-A130517(n+1)` -/
def P15737456571594333663.Spec : Prop :=
  ∀ n, P15737456571594333663.a n = A053616 n

end A053616

/-! ## A053616.P15402738563062991990

`A004736(n+1)-A185914(n+1)`
-/

namespace A053616.P15402738563062991990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A185914 (n + 1)

end

end A053616.P15402738563062991990

namespace A053616

/-- `A004736(n+1)-A185914(n+1)` -/
def P15402738563062991990.Spec : Prop :=
  ∀ n, P15402738563062991990.a n = A053616 n

theorem P15402738563062991990.correct : P15402738563062991990.Spec := by
  intro n
  simp only [A053616, Nat.add_sub_cancel, A053616.P15402738563062991990.a, A053616.P15730649175569513944.a, A004736, A004736.P10337537277358081527.a, A036561, A036561.P7490084913005378529.a, A185914, A185914.P13255273733279209154.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053616

/-! ## A053616.P5104452290814789935

`A194959(n+1)-A003983(n+1)`
-/

namespace A053616.P5104452290814789935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) - A003983 (n + 1)

end

end A053616.P5104452290814789935

namespace A053616

/-- `A194959(n+1)-A003983(n+1)` -/
def P5104452290814789935.Spec : Prop :=
  ∀ n, P5104452290814789935.a n = A053616 n

end A053616

/-! ## A053616.P1113450521289891787

`A002265(A194959(n+1)+A194959(n+1))`
-/

namespace A053616.P1113450521289891787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194959 (n + 1) + A194959 (n + 1)).toNat

end

end A053616.P1113450521289891787

namespace A053616

/-- `A002265(A194959(n+1)+A194959(n+1))` -/
def P1113450521289891787.Spec : Prop :=
  ∀ n, P1113450521289891787.a n = A053616 n

end A053616

/-! ## A053616.P9899302953280474352

`A002262(A379777(A002024(n+1)+n))`
-/

namespace A053616.P9899302953280474352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A379777 (A002024 (n + 1) + (n : ℤ)).toNat).toNat

end

end A053616.P9899302953280474352

namespace A053616

/-- `A002262(A379777(A002024(n+1)+n))` -/
def P9899302953280474352.Spec : Prop :=
  ∀ n, P9899302953280474352.a n = A053616 n

end A053616

/-!
# A053617: Number of permutations of length n which avoid the patterns 1234 and 1324.

The programs for A053617, there is no canonical definition to state claims against.
-/

/-! ## A053617.P5862041574961405156

`or(A279536(ceil(2^(n-1))), A279568(n))`
-/

namespace A053617.P5862041574961405156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279536 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A279568 n)

end

end A053617.P5862041574961405156

/-! ## A053617.P11365868968892621451

`A279568(n)+A083894(A102736(n))`
-/

namespace A053617.P11365868968892621451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279568 n + A083894 (A102736 n).toNat

end

end A053617.P11365868968892621451

/-! ## A053617.P17417635984312584132

`A321402(A099132(n))+A165546(n)`
-/

namespace A053617.P17417635984312584132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 (A099132 n).toNat + A165546 n

end

end A053617.P17417635984312584132

/-! ## A053617.P15509924850699649585

`or(A000005(A006294(n)), A279568(n))`
-/

namespace A053617.P15509924850699649585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A006294 n).toNat) (A279568 n)

end

end A053617.P15509924850699649585

/-!
# A053618: a(n) = ceiling(binomial(n,4)/n).

The programs for A053618, the canonical program `A053618.P8762498053106517851` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053618 has offset 1).

The definition of A053618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n+1, 4)/(n+1))` (program `A053618.P8762498053106517851`, by `A053618.P8762498053106517851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053618.P8762498053106517851

`ceil(C(n+1, 4)/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053618

/-- `ceil(C(n+1, 4)/(n+1))` -/
def P8762498053106517851.Spec : Prop :=
  ∀ n, P8762498053106517851.a n = A053618 (n + 1)

theorem P8762498053106517851.correct : P8762498053106517851.Spec := by
  intro n
  simp only [A053618, Nat.add_sub_cancel]

end A053618

/-! ## A053618.P17392100137853893201

`round((C(n, 3)+1)/4)`
-/

namespace A053618.P17392100137853893201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 3 + 1 : ℚ) / 4)

end

end A053618.P17392100137853893201

namespace A053618

/-- `round((C(n, 3)+1)/4)` -/
def P17392100137853893201.Spec : Prop :=
  ∀ n, P17392100137853893201.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P11101280647005895734

`floor((C(n, 3)+3)/4)`
-/

namespace A053618.P11101280647005895734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 3 + 3 : ℚ) / 4⌋

end

end A053618.P11101280647005895734

namespace A053618

/-- `floor((C(n, 3)+3)/4)` -/
def P11101280647005895734.Spec : Prop :=
  ∀ n, P11101280647005895734.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P11469088707315328816

`ceil(∑[C(n, 3)]/(n+1))`
-/

namespace A053618.P11469088707315328816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌉

end

end A053618.P11469088707315328816

namespace A053618

/-- `ceil(∑[C(n, 3)]/(n+1))` -/
def P11469088707315328816.Spec : Prop :=
  ∀ n, P11469088707315328816.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P5650809420763271826

`round(∑[(n-1)*(n-2)/8])`
-/

namespace A053618.P5650809420763271826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053618.P5650809420763271826

namespace A053618

/-- `round(∑[(n-1)*(n-2)/8])` -/
def P5650809420763271826.Spec : Prop :=
  ∀ n, P5650809420763271826.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P1962760736721481423

`ceil(A007290(n)/8)`
-/

namespace A053618.P1962760736721481423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007290 n : ℚ) / 8⌉

end

end A053618.P1962760736721481423

namespace A053618

/-- `ceil(A007290(n)/8)` -/
def P1962760736721481423.Spec : Prop :=
  ∀ n, P1962760736721481423.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P17212366196743922805

`ceil(A007531(n)/24)`
-/

namespace A053618.P17212366196743922805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007531 n : ℚ) / 24⌉

end

end A053618.P17212366196743922805

namespace A053618

/-- `ceil(A007531(n)/24)` -/
def P17212366196743922805.Spec : Prop :=
  ∀ n, P17212366196743922805.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P5970823988115157290

`A011886(n)-(A011894(n)+A011890(n))`
-/

namespace A053618.P5970823988115157290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 n - (A011894 n + A011890 n)

end

end A053618.P5970823988115157290

namespace A053618

/-- `A011886(n)-(A011894(n)+A011890(n))` -/
def P5970823988115157290.Spec : Prop :=
  ∀ n, P5970823988115157290.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P17270633686972983492

`ceil(Δ[A000332(n)/2]/2)`
-/

namespace A053618.P17270633686972983492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) / 2⌉

end

end A053618.P17270633686972983492

namespace A053618

/-- `ceil(Δ[A000332(n)/2]/2)` -/
def P17270633686972983492.Spec : Prop :=
  ∀ n, P17270633686972983492.a n = A053618 (n + 1)

end A053618

/-! ## A053618.P5517654007406021318

`ceil(A000332(n+1)/(n+1))`
-/

namespace A053618.P5517654007406021318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000332 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A053618.P5517654007406021318

namespace A053618

/-- `ceil(A000332(n+1)/(n+1))` -/
def P5517654007406021318.Spec : Prop :=
  ∀ n, P5517654007406021318.a n = A053618 (n + 1)

theorem P5517654007406021318.correct : P5517654007406021318.Spec := by
  intro n
  simp only [A053618, Nat.add_sub_cancel, A053618.P5517654007406021318.a, A053618.P8762498053106517851.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053618

/-!
# A053619: a(n) = round(n/(log(n)-1) - pi(n)).

The programs for A053619, the canonical program `A053619.P14388513509236548934` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053619 has offset 1).

The definition of A053619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1)/(log(n+1)-1)-A000720(n+1))` (program `A053619.P14388513509236548934`, by `A053619.P14388513509236548934.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053619.P14388513509236548934

`round((n+1)/(log(n+1)-1)-A000720(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053619

/-- `round((n+1)/(log(n+1)-1)-A000720(n+1))` -/
def P14388513509236548934.Spec : Prop :=
  ∀ n, P14388513509236548934.a n = A053619 (n + 1)

theorem P14388513509236548934.correct : P14388513509236548934.Spec := by
  intro n
  simp only [A053619, Nat.add_sub_cancel]

end A053619

/-! ## A053619.P9196571068565839690

`A053621(n+1)-A000720(n+1)`
-/

namespace A053619.P9196571068565839690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - A000720 (n + 1)

end

end A053619.P9196571068565839690

namespace A053619

/-- `A053621(n+1)-A000720(n+1)` -/
def P9196571068565839690.Spec : Prop :=
  ∀ n, P9196571068565839690.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P10354207084326631963

`A053621(n+1)-∑[A010051(n+1)]`
-/

namespace A053619.P10354207084326631963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053619.P10354207084326631963

namespace A053619

/-- `A053621(n+1)-∑[A010051(n+1)]` -/
def P10354207084326631963.Spec : Prop :=
  ∀ n, P10354207084326631963.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P2411194953792118771

`A053621(n+1)+1-A036234(n+1)`
-/

namespace A053619.P2411194953792118771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) + (1 - A036234 (n + 1))

end

end A053619.P2411194953792118771

namespace A053619

/-- `A053621(n+1)+1-A036234(n+1)` -/
def P2411194953792118771.Spec : Prop :=
  ∀ n, P2411194953792118771.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P8317666714808773262

`A053621(n+1)-∑[char[A000040(n+1)-1]]`
-/

namespace A053619.P8317666714808773262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A053619.P8317666714808773262

namespace A053619

/-- `A053621(n+1)-∑[char[A000040(n+1)-1]]` -/
def P8317666714808773262.Spec : Prop :=
  ∀ n, P8317666714808773262.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P335859225156922896

`A053621(n+1)-∑[round(A020639(n+1)/(n+3))]`
-/

namespace A053619.P335859225156922896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053619.P335859225156922896

namespace A053619

/-- `A053621(n+1)-∑[round(A020639(n+1)/(n+3))]` -/
def P335859225156922896.Spec : Prop :=
  ∀ n, P335859225156922896.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P4885655608327917111

`A053621(n+1)-A023443(A036234(n+1))`
-/

namespace A053619.P4885655608327917111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - A023443 (A036234 (n + 1)).toNat

end

end A053619.P4885655608327917111

namespace A053619

/-- `A053621(n+1)-A023443(A036234(n+1))` -/
def P4885655608327917111.Spec : Prop :=
  ∀ n, P4885655608327917111.a n = A053619 (n + 1)

end A053619

/-! ## A053619.P1413784835490880908

`A053621(n+1)-A230980(n+1)`
-/

namespace A053619.P1413784835490880908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053621 (n + 1) - A230980 (n + 1)

end

end A053619.P1413784835490880908

namespace A053619

/-- `A053621(n+1)-A230980(n+1)` -/
def P1413784835490880908.Spec : Prop :=
  ∀ n, P1413784835490880908.a n = A053619 (n + 1)

end A053619

/-!
# A053620: Nearest integer to R(n) = the Riemann prime number formula.

The programs for A053620, there is no canonical definition to state claims against.
-/

/-! ## A053620.P18372462903186547270

`round(sqrt(n+1)+(n+1)/sqrt(38))`
-/

namespace A053620.P18372462903186547270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ) + (n + 1 : ℝ) / Real.sqrt (38 : ℝ))

end

end A053620.P18372462903186547270

/-! ## A053620.P6393328601820988314

`ceil(root(∑[A064602(n+1)], 5))`
-/

namespace A053620.P6393328601820988314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A053620.P6393328601820988314

/-! ## A053620.P9238857402694493004

`ceil(A002817(n+1)^acot(5))`
-/

namespace A053620.P9238857402694493004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002817 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (5 : ℝ))⌉

end

end A053620.P9238857402694493004

/-! ## A053620.P11870481017128496849

`ceil(A006010(n+1)^acot(5))`
-/

namespace A053620.P11870481017128496849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006010 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (5 : ℝ))⌉

end

end A053620.P11870481017128496849

/-! ## A053620.P11593848697574967451

`ceil(A047745(8*n+4)/4)`
-/

namespace A053620.P11593848697574967451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047745 (8 * n + 4) : ℚ) / 4⌉

end

end A053620.P11593848697574967451

/-! ## A053620.P7679742986681863221

`ceil(root(A064313(2*(n+2)), 5)²)`
-/

namespace A053620.P7679742986681863221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A064313 (2 * (n + 2)) : ℝ) ^ (1 / (5 : ℝ))) ^ 2⌉

end

end A053620.P7679742986681863221

/-! ## A053620.P15623730814790812152

`A130148(A067175(n+2)+1)`
-/

namespace A053620.P15623730814790812152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A067175 (n + 2) + 1).toNat

end

end A053620.P15623730814790812152

/-! ## A053620.P1776192579653666328

`A000196(∑[A000196(or(n, n+1)+3)])`
-/

namespace A053620.P1776192579653666328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.lor n (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053620.P1776192579653666328

/-! ## A053620.P1619526423752597007

`A225687(∑[A225687(n+1)-a(n-1)]+1)` with `a(0)=0`
-/

namespace A053620.P1619526423752597007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A225687 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A053620.P1619526423752597007

/-! ## A053620.P3563845468605162702

`A003059(A001651(∑[A226764(n+4)]))`
-/

namespace A053620.P3563845468605162702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A001651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A053620.P3563845468605162702

/-!
# A053621: Nearest integer to n/(log(n)-1).

The programs for A053621, the canonical program `A053621.P16861030357239046082` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053621 has offset 1).

The definition of A053621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053621.P16861030357239046082

`round((n+1)/(log(n+1)-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053621

/-- `round((n+1)/(log(n+1)-1))` -/
def P16861030357239046082.Spec : Prop :=
  ∀ n, P16861030357239046082.a n = A053621 (n + 1)

theorem P16861030357239046082.correct : P16861030357239046082.Spec := by
  intro n
  simp only [A053621, Nat.add_sub_cancel]

end A053621

/-! ## A053621.P2885592222865389830

`A053619(n+1)+A000720(n+1)`
-/

namespace A053621.P2885592222865389830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053619 (n + 1) + A000720 (n + 1)

end

end A053621.P2885592222865389830

namespace A053621

/-- `A053619(n+1)+A000720(n+1)` -/
def P2885592222865389830.Spec : Prop :=
  ∀ n, P2885592222865389830.a n = A053621 (n + 1)

end A053621

/-! ## A053621.P9256302380995441669

`A053619(n+1)+∑[A010051(n+1)]`
-/

namespace A053621.P9256302380995441669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053619 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053621.P9256302380995441669

namespace A053621

/-- `A053619(n+1)+∑[A010051(n+1)]` -/
def P9256302380995441669.Spec : Prop :=
  ∀ n, P9256302380995441669.a n = A053621 (n + 1)

end A053621

/-! ## A053621.P6297055463339456599

`A036234(n+1)+A053619(n+1)-1`
-/

namespace A053621.P6297055463339456599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (A053619 (n + 1) - 1)

end

end A053621.P6297055463339456599

namespace A053621

/-- `A036234(n+1)+A053619(n+1)-1` -/
def P6297055463339456599.Spec : Prop :=
  ∀ n, P6297055463339456599.a n = A053621 (n + 1)

end A053621

/-! ## A053621.P16509344778019045388

`A053619(n+1)+A023443(A036234(n+1))`
-/

namespace A053621.P16509344778019045388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053619 (n + 1) + A023443 (A036234 (n + 1)).toNat

end

end A053621.P16509344778019045388

namespace A053621

/-- `A053619(n+1)+A023443(A036234(n+1))` -/
def P16509344778019045388.Spec : Prop :=
  ∀ n, P16509344778019045388.a n = A053621 (n + 1)

end A053621

/-! ## A053621.P7890914143745561819

`A230980(n+1)+A053619(n+1)`
-/

namespace A053621.P7890914143745561819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + A053619 (n + 1)

end

end A053621.P7890914143745561819

namespace A053621

/-- `A230980(n+1)+A053619(n+1)` -/
def P7890914143745561819.Spec : Prop :=
  ∀ n, P7890914143745561819.a n = A053621 (n + 1)

end A053621

/-!
# A053622: a(n) = round( n/log(n) - pi(n) ).

The programs for A053622, the canonical program `A053622.P4231210635218977256` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053622 has offset 2).

The definition of A053622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053622.P11205135346714621436

`round((n+2)/log(n+2)-A000720(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053622.P11205135346714621436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ) - (A000720 (n + 2) : ℝ))

end

end A053622.P11205135346714621436

namespace A053622

/-- `round((n+2)/log(n+2)-A000720(n+2))` -/
def P11205135346714621436.Spec : Prop :=
  ∀ n, P11205135346714621436.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P4231210635218977256

`A050499(n+2)-A000720(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053622

/-- `A050499(n+2)-A000720(n+2)` -/
def P4231210635218977256.Spec : Prop :=
  ∀ n, P4231210635218977256.a n = A053622 (n + 2)

theorem P4231210635218977256.correct : P4231210635218977256.Spec := by
  intro n
  simp only [A053622, Nat.add_sub_cancel]

end A053622

/-! ## A053622.P6965006876423191797

`A050499(n+2)-∑[A010051(n+2)]`
-/

namespace A053622.P6965006876423191797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053622.P6965006876423191797

namespace A053622

/-- `A050499(n+2)-∑[A010051(n+2)]` -/
def P6965006876423191797.Spec : Prop :=
  ∀ n, P6965006876423191797.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P17477582822951491079

`A050499(n+2)-∑[char[A040976(n+1)]]`
-/

namespace A053622.P17477582822951491079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A053622.P17477582822951491079

namespace A053622

/-- `A050499(n+2)-∑[char[A040976(n+1)]]` -/
def P17477582822951491079.Spec : Prop :=
  ∀ n, P17477582822951491079.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P2134472340002036827

`A050499(n+2)+A052435(n+2)-A047784(n+2)`
-/

namespace A053622.P2134472340002036827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) + (A052435 (n + 2) - A047784 (n + 2))

end

end A053622.P2134472340002036827

namespace A053622

/-- `A050499(n+2)+A052435(n+2)-A047784(n+2)` -/
def P2134472340002036827.Spec : Prop :=
  ∀ n, P2134472340002036827.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P7304983899936324434

`A050499(n+2)+A282870(n+2)-A047783(n+2)`
-/

namespace A053622.P7304983899936324434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) + (A282870 (n + 2) - A047783 (n + 2))

end

end A053622.P7304983899936324434

namespace A053622

/-- `A050499(n+2)+A282870(n+2)-A047783(n+2)` -/
def P7304983899936324434.Spec : Prop :=
  ∀ n, P7304983899936324434.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P4937969527468995012

`A050499(n+2)-A230980(n+2)`
-/

namespace A053622.P4937969527468995012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) - A230980 (n + 2)

end

end A053622.P4937969527468995012

namespace A053622

/-- `A050499(n+2)-A230980(n+2)` -/
def P4937969527468995012.Spec : Prop :=
  ∀ n, P4937969527468995012.a n = A053622 (n + 2)

end A053622

/-! ## A053622.P10604531718418994187

`A020725(A090663(n+2))-A000720(n+2)`
-/

namespace A053622.P10604531718418994187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090663 (n + 2)).toNat - A000720 (n + 2)

end

end A053622.P10604531718418994187

namespace A053622

/-- `A020725(A090663(n+2))-A000720(n+2)` -/
def P10604531718418994187.Spec : Prop :=
  ∀ n, P10604531718418994187.a n = A053622 (n + 2)

end A053622

/-!
# A053623: Number of distinct non-extendable sequences (x(1),x(2),...,x(k)) such that each x(i) is in {1,2,...,n} and (x(j) AND x(i)) <> x(j) for i=2..k, j=1..i-1.

The programs for A053623, there is no canonical definition to state claims against.
-/

/-! ## A053623.P2329274810979283982

`A081611(A180140(n))-A061393(n)`
-/

namespace A053623.P2329274810979283982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A180140 n).toNat - A061393 n

end

end A053623.P2329274810979283982

/-! ## A053623.P14126841281589072513

`∑[and(91, A171873(n))]`
-/

namespace A053623.P14126841281589072513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 91 (A171873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053623.P14126841281589072513

/-!
# A053624: Highly composite odd numbers: odd numbers where d(n) increases to a record.

The programs for A053624, there is no canonical definition to state claims against.
-/

/-! ## A053624.P15587193060088871546

`record[A214771(n+2)%A283477(n+1)]`
-/

namespace A053624.P15587193060088871546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214771 (n + 2)) (A283477 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053624.P15587193060088871546

/-! ## A053624.P809335297232987074

`record[A214771(A008619(n))^(n%2)]`
-/

namespace A053624.P809335297232987074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214771 (A008619 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053624.P809335297232987074

/-! ## A053624.P226279922455425989

`record[A214771(A008619(n))%A131882(n+1)]`
-/

namespace A053624.P226279922455425989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214771 (A008619 n).toNat) (A131882 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053624.P226279922455425989

/-! ## A053624.P15432275074151452841

`A038547(A053640(n+1))`
-/

namespace A053624.P15432275074151452841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (A053640 (n + 1)).toNat

end

end A053624.P15432275074151452841

/-! ## A053624.P17670329453262880196

`gcd(A119239(n+1)², A340506(n+1))`
-/

namespace A053624.P17670329453262880196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119239 (n + 1) ^ 2) (A340506 (n + 1))

end

end A053624.P17670329453262880196

/-!
# A053625: Product of 6 consecutive integers.

The programs for A053625, the canonical program `A053625.P9911558398274709758` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053625 has offset 0).

The definition of A053625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053625.P5856767517061175117

`a(n-1)*n/(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=720`
-/

namespace A053625.P5856767517061175117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 720] fun n a =>
  a (n - 1) * (n : ℚ) / ((n : ℤ) - 6 : ℚ)

end

end A053625.P5856767517061175117

namespace A053625

/-- `a(n-1)*n/(n-6)` -/
def P5856767517061175117.Spec : Prop :=
  ∀ n, P5856767517061175117.a n = (A053625 n : ℚ)

end A053625

/-! ## A053625.P9911558398274709758

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053625

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)` -/
def P9911558398274709758.Spec : Prop :=
  ∀ n, P9911558398274709758.a n = A053625 n

theorem P9911558398274709758.correct : P9911558398274709758.Spec := by
  intro n
  simp only [A053625]

end A053625

/-! ## A053625.P8108953608421344228

`A001096(n)-n`
-/

namespace A053625.P8108953608421344228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n - (n : ℤ)

end

end A053625.P8108953608421344228

namespace A053625

/-- `A001096(n)-n` -/
def P8108953608421344228.Spec : Prop :=
  ∀ n, P8108953608421344228.a n = A053625 n

theorem P8108953608421344228.correct : P8108953608421344228.Spec := by
  intro n
  simp only [A053625, Nat.add_sub_cancel, A053625.P8108953608421344228.a, A053625.P9911558398274709758.a, A001096, A001096.P17984634652378150633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053625

/-! ## A053625.P202654508488052293

`abs((n-5)*A052787(n))`
-/

namespace A053625.P202654508488052293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 5) * A052787 n|

end

end A053625.P202654508488052293

namespace A053625

/-- `abs((n-5)*A052787(n))` -/
def P202654508488052293.Spec : Prop :=
  ∀ n, P202654508488052293.a n = A053625 n

end A053625

/-! ## A053625.P16068465025669132115

`A159083(n+1)/(n+1)`
-/

namespace A053625.P16068465025669132115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159083 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053625.P16068465025669132115

namespace A053625

/-- `A159083(n+1)/(n+1)` -/
def P16068465025669132115.Spec : Prop :=
  ∀ n, P16068465025669132115.a n = (A053625 n : ℚ)

theorem P16068465025669132115.correct : P16068465025669132115.Spec := by
  intro n
  simp only [A053625, Nat.add_sub_cancel, A053625.P16068465025669132115.a, A053625.P9911558398274709758.a, A159083, A159083.P8664816101168653743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053625

/-! ## A053625.P10201826544056254412

`A001489(n)+A001096(n)`
-/

namespace A053625.P10201826544056254412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A001096 n

end

end A053625.P10201826544056254412

namespace A053625

/-- `A001489(n)+A001096(n)` -/
def P10201826544056254412.Spec : Prop :=
  ∀ n, P10201826544056254412.a n = A053625 n

theorem P10201826544056254412.correct : P10201826544056254412.Spec := by
  intro n
  simp only [A053625, Nat.add_sub_cancel, A053625.P10201826544056254412.a, A053625.P9911558398274709758.a, A001096, A001096.P17984634652378150633.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053625

/-! ## A053625.P10440715424166228174

`gcd(A159083(n), A342074(n))`
-/

namespace A053625.P10440715424166228174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159083 n) (A342074 n)

end

end A053625.P10440715424166228174

namespace A053625

/-- `gcd(A159083(n), A342074(n))` -/
def P10440715424166228174.Spec : Prop :=
  ∀ n, (P10440715424166228174.a n : ℤ) = A053625 n

end A053625

/-! ## A053625.P7460092835068792558

`A001478(n+1)+A001096(n)+1`
-/

namespace A053625.P7460092835068792558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A001096 n + 1)

end

end A053625.P7460092835068792558

namespace A053625

/-- `A001478(n+1)+A001096(n)+1` -/
def P7460092835068792558.Spec : Prop :=
  ∀ n, P7460092835068792558.a n = A053625 n

theorem P7460092835068792558.correct : P7460092835068792558.Spec := by
  intro n
  simp only [A053625, Nat.add_sub_cancel, A053625.P7460092835068792558.a, A053625.P9911558398274709758.a, A001096, A001096.P17984634652378150633.a, A001478, A001478.P11279598861711037921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053625

/-! ## A053625.P12899867317314527741

`A024000(n+1)+A001096(n)`
-/

namespace A053625.P12899867317314527741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A001096 n

end

end A053625.P12899867317314527741

namespace A053625

/-- `A024000(n+1)+A001096(n)` -/
def P12899867317314527741.Spec : Prop :=
  ∀ n, P12899867317314527741.a n = A053625 n

theorem P12899867317314527741.correct : P12899867317314527741.Spec := by
  intro n
  simp only [A053625, Nat.add_sub_cancel, A053625.P12899867317314527741.a, A053625.P9911558398274709758.a, A001096, A001096.P17984634652378150633.a, A024000, A024000.P8748414335487061084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053625

/-!
# A053626: a(n) is the smallest positive integer k such that harmonic mean of n and k is an integer.

The programs for A053626, there is no canonical definition to state claims against.
-/

/-! ## A053626.P1259514063898201100

`A348990(n+1)%A008885(A098172(n))`
-/

namespace A053626.P1259514063898201100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348990 (n + 1)) (A008885 (A098172 n).toNat)

end

end A053626.P1259514063898201100

/-! ## A053626.P15365214090187800100

`gcd(A142150(A080249(n)), A348990(n+1))`
-/

namespace A053626.P15365214090187800100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 (A080249 n).toNat) (A348990 (n + 1))

end

end A053626.P15365214090187800100

/-! ## A053626.P9685752935631326773

`A348990(n+1)/A348963(A176791(n+3))`
-/

namespace A053626.P9685752935631326773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348990 (n + 1) : ℚ) / (A348963 (A176791 (n + 3)).toNat : ℚ)

end

end A053626.P9685752935631326773

/-! ## A053626.P11016486190004094443

`gcd(∑[2*n], A348990((n+1)*Δ[n^3]))`
-/

namespace A053626.P11016486190004094443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A348990 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat)

end

end A053626.P11016486190004094443

/-! ## A053626.P17051466611680988076

`A348990(∑[∑[A072189(n)]])`
-/

namespace A053626.P17051466611680988076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053626.P17051466611680988076

/-!
# A053627: Smallest integer which is the harmonic mean of n and an integer.

The programs for A053627, there is no canonical definition to state claims against.
-/

/-! ## A053627.P10817720035837504204

`A319626(n+1)%A141214(A349162(n+1))`
-/

namespace A053627.P10817720035837504204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319626 (n + 1)) (A141214 (A349162 (n + 1)).toNat)

end

end A053627.P10817720035837504204

/-! ## A053627.P15787686035419460515

`A319626(n+1)%A085463(A322005(n))`
-/

namespace A053627.P15787686035419460515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319626 (n + 1)) (A085463 (A322005 n).toNat)

end

end A053627.P15787686035419460515

/-!
# A053628: Smallest integer which is the harmonic mean of A005279(n) and an integer.

The programs for A053628, there is no canonical definition to state claims against.
-/

/-! ## A053628.P15477651539656559873

`A005279(n+1)+A053629(n+1)-A334678(n+1)`
-/

namespace A053628.P15477651539656559873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) + (A053629 (n + 1) - A334678 (n + 1))

end

end A053628.P15477651539656559873

/-! ## A053628.P10432465256952180174

`A053627(A005279(n+1))`
-/

namespace A053628.P10432465256952180174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (A005279 (n + 1)).toNat

end

end A053628.P10432465256952180174

/-! ## A053628.P14682232238544026330

`A053627(A010814(n+1)/2)`
-/

namespace A053628.P14682232238544026330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.roundAway ((A010814 (n + 1) : ℚ) / 2)).toNat

end

end A053628.P14682232238544026330

/-! ## A053628.P2790717554511591017

`A053627((A136000(n+1)+1)/2)`
-/

namespace A053628.P2790717554511591017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.roundAway ((A136000 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A053628.P2790717554511591017

/-! ## A053628.P1695072273667449181

`A053627(lt[1, A250068(n+1)]+1)`
-/

namespace A053628.P1695072273667449181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053628.P1695072273667449181

/-! ## A053628.P13202103932581901641

`A053627(lt[A053627(n+1), n]+1)`
-/

namespace A053628.P13202103932581901641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053628.P13202103932581901641

/-! ## A053628.P5648612278149740016

`A053627(comp[C(A053627(n+1), n)])`
-/

namespace A053628.P5648612278149740016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053627 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A053628.P5648612278149740016

/-! ## A053628.P6234473514994888030

`A053627(A343281(n+1))%A334718(n+1)`
-/

namespace A053628.P6234473514994888030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053627 (A343281 (n + 1)).toNat) (A334718 (n + 1))

end

end A053628.P6234473514994888030

/-! ## A053628.P16110055948443605842

`A010814(n+1)-(A334718(n+1)+A334678(n+1))`
-/

namespace A053628.P16110055948443605842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - (A334718 (n + 1) + A334678 (n + 1))

end

end A053628.P16110055948443605842

/-! ## A053628.P1232852039379888198

`A053627(A343281(n+1)%A351479(n+1))`
-/

namespace A053628.P1232852039379888198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (Int.tmod (A343281 (n + 1)) (A351479 (n + 1))).toNat

end

end A053628.P1232852039379888198

/-!
# A053629: Smallest integer where the harmonic mean of a(n) and A005279(n) is an integer.

The programs for A053629, there is no canonical definition to state claims against.
-/

/-! ## A053629.P10509897942992368219

`A053628(n+1)+A334678(n+1)-A005279(n+1)`
-/

namespace A053629.P10509897942992368219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053628 (n + 1) + (A334678 (n + 1) - A005279 (n + 1))

end

end A053629.P10509897942992368219

/-! ## A053629.P17751024388816751262

`A053626(A005279(n+1))`
-/

namespace A053629.P17751024388816751262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A005279 (n + 1)).toNat

end

end A053629.P17751024388816751262

/-! ## A053629.P4283644737988965640

`A053626(A010814(n+1)/2)`
-/

namespace A053629.P4283644737988965640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.roundAway ((A010814 (n + 1) : ℚ) / 2)).toNat

end

end A053629.P4283644737988965640

/-! ## A053629.P8521275068490707986

`A053626((A136000(n+1)+1)/2)`
-/

namespace A053629.P8521275068490707986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.roundAway ((A136000 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A053629.P8521275068490707986

/-! ## A053629.P24806973409885847

`A053626(lt[A053626(n+1), n]+1)`
-/

namespace A053629.P24806973409885847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053629.P24806973409885847

/-! ## A053629.P7912646690281181982

`A053626(eq[A053626(n+1)%(n+1), A053626(n+1)]+1)`
-/

namespace A053629.P7912646690281181982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053626 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053629.P7912646690281181982

/-! ## A053629.P15971714163485615942

`A053626(comp[C(A053626(n+1), n)])`
-/

namespace A053629.P15971714163485615942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053626 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A053629.P15971714163485615942

/-! ## A053629.P17890052736358533753

`A005279(n+1)-A334718(n+1)`
-/

namespace A053629.P17890052736358533753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - A334718 (n + 1)

end

end A053629.P17890052736358533753

/-! ## A053629.P17234250875639578778

`A343281(n+1)-A334718(n+1)`
-/

namespace A053629.P17234250875639578778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1) - A334718 (n + 1)

end

end A053629.P17234250875639578778

/-! ## A053629.P17904297286355138858

`A010814(n+1)/2-A334718(n+1)`
-/

namespace A053629.P17904297286355138858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010814 (n + 1) : ℚ) / 2 - (A334718 (n + 1) : ℚ)

end

end A053629.P17904297286355138858

/-!
# A053630: Pythagorean spiral: a(n-1), a(n)-1 and a(n) are sides of a right triangle.

The programs for A053630, the canonical program `A053630.P17107040412440002118` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053630 has offset 1).

The definition of A053630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053630.P6249562983198582988

`(a(n-1)²+1)/2` with `a(0)=3`
-/

namespace A053630.P6249562983198582988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) ^ 2 + 1) / 2

end

end A053630.P6249562983198582988

namespace A053630

/-- `(a(n-1)²+1)/2` -/
def P6249562983198582988.Spec : Prop :=
  ∀ n, P6249562983198582988.a n = (A053630 (n + 1) : ℚ)

end A053630

/-! ## A053630.P8440888695068912034

`A053631(n+1)+1`
-/

namespace A053630.P8440888695068912034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053631 (n + 1) + 1

end

end A053630.P8440888695068912034

namespace A053630

/-- `A053631(n+1)+1` -/
def P8440888695068912034.Spec : Prop :=
  ∀ n, P8440888695068912034.a n = A053630 (n + 1)

end A053630

/-! ## A053630.P17107040412440002118

`2*A000058(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053630

/-- `2*A000058(n)-1` -/
def P17107040412440002118.Spec : Prop :=
  ∀ n, P17107040412440002118.a n = A053630 (n + 1)

theorem P17107040412440002118.correct : P17107040412440002118.Spec := by
  intro n
  simp only [A053630, Nat.add_sub_cancel]

end A053630

/-! ## A053630.P1196339560846275766

`(A006892(n+3)+3)/2`
-/

namespace A053630.P1196339560846275766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006892 (n + 3) + 3 : ℚ) / 2

end

end A053630.P1196339560846275766

namespace A053630

/-- `(A006892(n+3)+3)/2` -/
def P1196339560846275766.Spec : Prop :=
  ∀ n, P1196339560846275766.a n = (A053630 (n + 1) : ℚ)

end A053630

/-! ## A053630.P10571243941447472551

`ceil(a(n-1)²/2)` with `a(0)=3`
-/

namespace A053630.P10571243941447472551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / 2⌉

end

end A053630.P10571243941447472551

namespace A053630

/-- `ceil(a(n-1)²/2)` -/
def P10571243941447472551.Spec : Prop :=
  ∀ n, P10571243941447472551.a n = A053630 (n + 1)

end A053630

/-!
# A053631: Pythagorean spiral: a(n-1)+1, a(n) and a(n)+1 are the sides of a right triangle (a primitive Pythagorean triangle).

The programs for A053631, the canonical program `A053631.P7343869401058660275` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053631 has offset 1).

The definition of A053631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053631.P3484779626670153253

`a(n-1)+a(n-1)²/2` with `a(0)=2`
-/

namespace A053631.P3484779626670153253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 / 2

end

end A053631.P3484779626670153253

namespace A053631

/-- `a(n-1)+a(n-1)²/2` -/
def P3484779626670153253.Spec : Prop :=
  ∀ n, P3484779626670153253.a n = (A053631 (n + 1) : ℚ)

end A053631

/-! ## A053631.P7343869401058660275

`2*A007018(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053631

/-- `2*A007018(n)` -/
def P7343869401058660275.Spec : Prop :=
  ∀ n, P7343869401058660275.a n = A053631 (n + 1)

theorem P7343869401058660275.correct : P7343869401058660275.Spec := by
  intro n
  simp only [A053631, Nat.add_sub_cancel]

end A053631

/-! ## A053631.P18073295426125586484

`A053630(n+1)-1`
-/

namespace A053631.P18073295426125586484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053630 (n + 1) - 1

end

end A053631.P18073295426125586484

namespace A053631

/-- `A053630(n+1)-1` -/
def P18073295426125586484.Spec : Prop :=
  ∀ n, P18073295426125586484.a n = A053631 (n + 1)

end A053631

/-! ## A053631.P12735104900933038481

`floor((a(n-1)+1)²/2)` with `a(0)=2`
-/

namespace A053631.P12735104900933038481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((a (n - 1) + 1) ^ 2 : ℚ) / 2⌋

end

end A053631.P12735104900933038481

namespace A053631

/-- `floor((a(n-1)+1)²/2)` -/
def P12735104900933038481.Spec : Prop :=
  ∀ n, P12735104900933038481.a n = A053631 (n + 1)

end A053631

/-! ## A053631.P5867050925115729026

`((a(n-1)+1)²-1)/2` with `a(0)=2`
-/

namespace A053631.P5867050925115729026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((a (n - 1) + 1) ^ 2 - 1) / 2

end

end A053631.P5867050925115729026

namespace A053631

/-- `((a(n-1)+1)²-1)/2` -/
def P5867050925115729026.Spec : Prop :=
  ∀ n, P5867050925115729026.a n = (A053631 (n + 1) : ℚ)

end A053631

/-!
# A053632: Irregular triangle read by rows giving coefficients in expansion of Product_{k=1..n} (1 + x^k).

The programs for A053632, there is no canonical definition to state claims against.
-/

/-! ## A053632.P3102471067265410095

`A004218(or(4, A008406(n+1)²))`
-/

namespace A053632.P3102471067265410095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.lor 4 (A008406 (n + 1) ^ 2)).toNat

end

end A053632.P3102471067265410095

/-! ## A053632.P5195883985009027028

`A339276(A070166(n)%A144572(n+1))`
-/

namespace A053632.P5195883985009027028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (Int.tmod (A070166 n) (A144572 (n + 1))).toNat

end

end A053632.P5195883985009027028

/-! ## A053632.P16025036726915930585

`A339276(A070166(n))+A007814(A144584(n+1))`
-/

namespace A053632.P16025036726915930585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A070166 n).toNat + A007814 (A144584 (n + 1)).toNat

end

end A053632.P16025036726915930585

/-! ## A053632.P10010330552111536817

`A066803(A066803(n+1))*A339276(A070166(n))`
-/

namespace A053632.P10010330552111536817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066803 (A066803 (n + 1)).toNat * A339276 (A070166 n).toNat

end

end A053632.P10010330552111536817

/-! ## A053632.P2020362642374836372

`A073093(A073093(A336425(A336870(n))))`
-/

namespace A053632.P2020362642374836372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A073093 (A336425 (A336870 n).toNat).toNat).toNat

end

end A053632.P2020362642374836372

/-!
# A053633: Triangular array T(n,k) giving coefficients in expansion of Product_{j=1..n} (1+x^j) mod x^(n+1)-1.

The programs for A053633, there is no canonical definition to state claims against.
-/

/-! ## A053633.P14014991608040959634

`A179390(A370666(n+1))`
-/

namespace A053633.P14014991608040959634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A370666 (n + 1)).toNat

end

end A053633.P14014991608040959634

/-!
# A053634: a(n) = Sum_{ d divides n } phi(d)*2^(n/d)/(2n).

The programs for A053634, the canonical program `A053634.P9507846522746473809` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053634 has offset 3).

The definition of A053634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053634.P9507846522746473809

`A000031(n+3)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053634

/-- `A000031(n+3)/2` -/
def P9507846522746473809.Spec : Prop :=
  ∀ n, P9507846522746473809.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P10024501145110833187

`A164090(n+1)+A059076(n+3)`
-/

namespace A053634.P10024501145110833187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A059076 (n + 3)

end

end A053634.P10024501145110833187

namespace A053634

/-- `A164090(n+1)+A059076(n+3)` -/
def P10024501145110833187.Spec : Prop :=
  ∀ n, P10024501145110833187.a n = A053634 (n + 3)

end A053634

/-! ## A053634.P14376185725905582355

`A059076(n+3)+A029744(n+2)`
-/

namespace A053634.P14376185725905582355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 3) + A029744 (n + 2)

end

end A053634.P14376185725905582355

namespace A053634

/-- `A059076(n+3)+A029744(n+2)` -/
def P14376185725905582355.Spec : Prop :=
  ∀ n, P14376185725905582355.a n = A053634 (n + 3)

end A053634

/-! ## A053634.P15628835439745622055

`A000029(n+3)-A164090(n+1)`
-/

namespace A053634.P15628835439745622055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - A164090 (n + 1)

end

end A053634.P15628835439745622055

namespace A053634

/-- `A000029(n+3)-A164090(n+1)` -/
def P15628835439745622055.Spec : Prop :=
  ∀ n, P15628835439745622055.a n = A053634 (n + 3)

end A053634

/-! ## A053634.P6663676279771790161

`A000029(n+3)-A029744(n+2)`
-/

namespace A053634.P6663676279771790161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - A029744 (n + 2)

end

end A053634.P6663676279771790161

namespace A053634

/-- `A000029(n+3)-A029744(n+2)` -/
def P6663676279771790161.Spec : Prop :=
  ∀ n, P6663676279771790161.a n = A053634 (n + 3)

end A053634

/-! ## A053634.P9604531537563962185

`(A008965(n+3)+1)/2`
-/

namespace A053634.P9604531537563962185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008965 (n + 3) + 1 : ℚ) / 2

end

end A053634.P9604531537563962185

namespace A053634

/-- `(A008965(n+3)+1)/2` -/
def P9604531537563962185.Spec : Prop :=
  ∀ n, P9604531537563962185.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P15158187309146007788

`A052823(n+3)/2+1`
-/

namespace A053634.P15158187309146007788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052823 (n + 3) : ℚ) / 2 + 1

end

end A053634.P15158187309146007788

namespace A053634

/-- `A052823(n+3)/2+1` -/
def P15158187309146007788.Spec : Prop :=
  ∀ n, P15158187309146007788.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P9951950243406263042

`A161219(n+3)/4`
-/

namespace A053634.P9951950243406263042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161219 (n + 3) : ℚ) / 4

end

end A053634.P9951950243406263042

namespace A053634

/-- `A161219(n+3)/4` -/
def P9951950243406263042.Spec : Prop :=
  ∀ n, P9951950243406263042.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P626160190326543137

`A034738(n+3)/(n+3)`
-/

namespace A053634.P626160190326543137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034738 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A053634.P626160190326543137

namespace A053634

/-- `A034738(n+3)/(n+3)` -/
def P626160190326543137.Spec : Prop :=
  ∀ n, P626160190326543137.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P6743185425103510217

`∑{d}[n+3, A000740(#)/#]`
-/

namespace A053634.P6743185425103510217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000740 d : ℚ) / (d : ℚ)

end

end A053634.P6743185425103510217

namespace A053634

/-- `∑{d}[n+3, A000740(#)/#]` -/
def P6743185425103510217.Spec : Prop :=
  ∀ n, P6743185425103510217.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P9972089434425539654

`Δ[A065568(n+2)]/(n+3)`
-/

namespace A053634.P9972089434425539654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065568 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 3 : ℚ)

end

end A053634.P9972089434425539654

namespace A053634

/-- `Δ[A065568(n+2)]/(n+3)` -/
def P9972089434425539654.Spec : Prop :=
  ∀ n, P9972089434425539654.a n = (A053634 (n + 3) : ℚ)

end A053634

/-! ## A053634.P7674491989118012309

`A053635(n+3)/(2*(n+3))`
-/

namespace A053634.P7674491989118012309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053635 (n + 3) : ℚ) / (2 * (n + 3) : ℚ)

end

end A053634.P7674491989118012309

namespace A053634

/-- `A053635(n+3)/(2*(n+3))` -/
def P7674491989118012309.Spec : Prop :=
  ∀ n, P7674491989118012309.a n = (A053634 (n + 3) : ℚ)

end A053634

/-!
# A053635: a(n) = Sum_{d|n} phi(d)*2^(n/d).

The programs for A053635, the canonical program `A053635.P1305169383690897396` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053635 has offset 0).

The definition of A053635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053635.P1305169383690897396

`n*A000031(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053635

/-- `n*A000031(n)` -/
def P1305169383690897396.Spec : Prop :=
  ∀ n, P1305169383690897396.a n = A053635 n

theorem P1305169383690897396.correct : P1305169383690897396.Spec := by
  intro n
  simp only [A053635]

end A053635

/-! ## A053635.P7596530359204490621

`n*(A052823(n)+2)`
-/

namespace A053635.P7596530359204490621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052823 n + 2)

end

end A053635.P7596530359204490621

namespace A053635

/-- `n*(A052823(n)+2)` -/
def P7596530359204490621.Spec : Prop :=
  ∀ n, P7596530359204490621.a n = A053635 n

end A053635

/-! ## A053635.P7227062285413960600

`∑{d}[n, n*A001037(#)]`
-/

namespace A053635.P7227062285413960600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A001037 d

end

end A053635.P7227062285413960600

namespace A053635

/-- `∑{d}[n, n*A001037(#)]` -/
def P7227062285413960600.Spec : Prop :=
  ∀ n, P7227062285413960600.a n = A053635 n

end A053635

/-! ## A053635.P2003406809492916963

`n*(Δ[A052825(n)]+1)`
-/

namespace A053635.P2003406809492916963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A053635.P2003406809492916963

namespace A053635

/-- `n*(Δ[A052825(n)]+1)` -/
def P2003406809492916963.Spec : Prop :=
  ∀ n, P2003406809492916963.a n = A053635 n

end A053635

/-! ## A053635.P1194490205403774986

`∑{d}[n, 2^(n/#)*A000010(#)]`
-/

namespace A053635.P1194490205403774986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℝ) ^ ((n : ℚ) / (d : ℚ) : ℝ) * (A000010 d : ℝ)

end

end A053635.P1194490205403774986

namespace A053635

/-- `∑{d}[n, 2^(n/#)*A000010(#)]` -/
def P1194490205403774986.Spec : Prop :=
  ∀ n, P1194490205403774986.a n = (A053635 n : ℝ)

end A053635

/-! ## A053635.P9972344766218174788

`n*(A000016(n)+A000013(n))`
-/

namespace A053635.P9972344766218174788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000016 n + A000013 n)

end

end A053635.P9972344766218174788

namespace A053635

/-- `n*(A000016(n)+A000013(n))` -/
def P9972344766218174788.Spec : Prop :=
  ∀ n, P9972344766218174788.a n = A053635 n

end A053635

/-! ## A053635.P9376278815084607330

`n*(A059076(n)+A000029(n))`
-/

namespace A053635.P9376278815084607330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059076 n + A000029 n)

end

end A053635.P9376278815084607330

namespace A053635

/-- `n*(A059076(n)+A000029(n))` -/
def P9376278815084607330.Spec : Prop :=
  ∀ n, P9376278815084607330.a n = A053635 n

end A053635

/-! ## A053635.P18147179397749017795

`n*(A066656(n)+A001037(n))`
-/

namespace A053635.P18147179397749017795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A066656 n + A001037 n)

end

end A053635.P18147179397749017795

namespace A053635

/-- `n*(A066656(n)+A001037(n))` -/
def P18147179397749017795.Spec : Prop :=
  ∀ n, P18147179397749017795.a n = A053635 n

theorem P18147179397749017795.correct : P18147179397749017795.Spec := by
  intro n
  simp only [A053635, Nat.add_sub_cancel, A053635.P18147179397749017795.a, A053635.P1305169383690897396.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A001037, A001037.P3072020637183991904.a, A066656, A066656.P10645985252166079910.a, A045664, A045664.P10163269847227854319.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053635

/-! ## A053635.P11538696315550639685

`n*(A266977(n)+A262232(n))`
-/

namespace A053635.P11538696315550639685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266977 n + A262232 n)

end

end A053635.P11538696315550639685

namespace A053635

/-- `n*(A266977(n)+A262232(n))` -/
def P11538696315550639685.Spec : Prop :=
  ∀ n, P11538696315550639685.a n = A053635 n

end A053635

/-! ## A053635.P10725469859495547599

`n*(A000079(n)-A209970(n))`
-/

namespace A053635.P10725469859495547599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000079 n - A209970 n)

end

end A053635.P10725469859495547599

namespace A053635

/-- `n*(A000079(n)-A209970(n))` -/
def P10725469859495547599.Spec : Prop :=
  ∀ n, P10725469859495547599.a n = A053635 n

theorem P10725469859495547599.correct : P10725469859495547599.Spec := by
  intro n
  simp only [A053635, Nat.add_sub_cancel, A053635.P10725469859495547599.a, A053635.P1305169383690897396.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000079, A000079.P10855139691139572931.a, A209970, A209970.P62417713944158277.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053635

/-! ## A053635.P2712007087538883964

`n*∪[A100446(n), A100447(n)]`
-/

namespace A053635.P2712007087538883964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100447 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053635.P2712007087538883964

namespace A053635

/-- `n*∪[A100446(n), A100447(n)]` -/
def P2712007087538883964.Spec : Prop :=
  ∀ n, (P2712007087538883964.a n : ℤ) = A053635 n

end A053635

/-! ## A053635.P1643783355884944121

`n*(A004526(n)+A262232(n)+2)`
-/

namespace A053635.P1643783355884944121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A004526 n + (A262232 n + 2))

end

end A053635.P1643783355884944121

namespace A053635

/-- `n*(A004526(n)+A262232(n)+2)` -/
def P1643783355884944121.Spec : Prop :=
  ∀ n, P1643783355884944121.a n = A053635 n

end A053635

/-! ## A053635.P12475661698898905845

`A160619(n)/2`
-/

namespace A053635.P12475661698898905845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 n : ℚ) / 2

end

end A053635.P12475661698898905845

namespace A053635

/-- `A160619(n)/2` -/
def P12475661698898905845.Spec : Prop :=
  ∀ n, P12475661698898905845.a n = (A053635 n : ℚ)

theorem P12475661698898905845.correct : P12475661698898905845.Spec := by
  intro n
  simp only [A053635, Nat.add_sub_cancel, A053635.P12475661698898905845.a, A053635.P1305169383690897396.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A160619, A160619.P17256148265937716064.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053635

/-! ## A053635.P14213309652850130618

`n*A052313(∑[n])`
-/

namespace A053635.P14213309652850130618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053635.P14213309652850130618

namespace A053635

/-- `n*A052313(∑[n])` -/
def P14213309652850130618.Spec : Prop :=
  ∀ n, P14213309652850130618.a n = A053635 n

end A053635

/-! ## A053635.P11238950439491593905

`n*(A055376(A000217(n))+1)`
-/

namespace A053635.P11238950439491593905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055376 (A000217 n).toNat + 1)

end

end A053635.P11238950439491593905

namespace A053635

/-- `n*(A055376(A000217(n))+1)` -/
def P11238950439491593905.Spec : Prop :=
  ∀ n, P11238950439491593905.a n = A053635 n

end A053635

/-!
# A053636: a(n) = Sum_{odd d|n} phi(d)*2^(n/d).

The programs for A053636, the canonical program `A053636.P10200428342403151043` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053636 has offset 0).

The definition of A053636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053636.P3307130638787149682

`2*n*A000016(n)`
-/

namespace A053636.P3307130638787149682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000016 n)

end

end A053636.P3307130638787149682

namespace A053636

/-- `2*n*A000016(n)` -/
def P3307130638787149682.Spec : Prop :=
  ∀ n, P3307130638787149682.a n = A053636 n

end A053636

/-! ## A053636.P14802695333256984107

`n*A063776(abs(1-n)+1)`
-/

namespace A053636.P14802695333256984107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063776 (|1 - (n : ℤ)| + 1).toNat

end

end A053636.P14802695333256984107

namespace A053636

/-- `n*A063776(abs(1-n)+1)` -/
def P14802695333256984107.Spec : Prop :=
  ∀ n, P14802695333256984107.a n = A053636 n

end A053636

/-! ## A053636.P10200428342403151043

`∑{d}[n, #%2*A000010(#)*2^(n/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053636

/-- `∑{d}[n, #%2*A000010(#)*2^(n/#)]` -/
def P10200428342403151043.Spec : Prop :=
  ∀ n, P10200428342403151043.a n = (A053636 n : ℝ)

end A053636

/-! ## A053636.P7953506618682931925

`A000016(n)*A005843(n)`
-/

namespace A053636.P7953506618682931925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A005843 n

end

end A053636.P7953506618682931925

namespace A053636

/-- `A000016(n)*A005843(n)` -/
def P7953506618682931925.Spec : Prop :=
  ∀ n, P7953506618682931925.a n = A053636 n

end A053636

/-! ## A053636.P17133352152134788546

`∑{d}[n, A004277(n)*A051841(#)]`
-/

namespace A053636.P17133352152134788546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004277 n * A051841 d

end

end A053636.P17133352152134788546

namespace A053636

/-- `∑{d}[n, A004277(n)*A051841(#)]` -/
def P17133352152134788546.Spec : Prop :=
  ∀ n, P17133352152134788546.a n = A053636 n

end A053636

/-! ## A053636.P7166507248455427760

`2*n*(A000031(n)-A000013(n))`
-/

namespace A053636.P7166507248455427760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (A000031 n - A000013 n)

end

end A053636.P7166507248455427760

namespace A053636

/-- `2*n*(A000031(n)-A000013(n))` -/
def P7166507248455427760.Spec : Prop :=
  ∀ n, P7166507248455427760.a n = A053636 n

end A053636

/-! ## A053636.P12914774381730734799

`2*n*(A052823(n)+2-A000013(n))`
-/

namespace A053636.P12914774381730734799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A052823 n + (2 - A000013 n)))

end

end A053636.P12914774381730734799

namespace A053636

/-- `2*n*(A052823(n)+2-A000013(n))` -/
def P12914774381730734799.Spec : Prop :=
  ∀ n, P12914774381730734799.a n = A053636 n

end A053636

/-! ## A053636.P16946452629383123276

`2*n*A053633(C(n, 2))`
-/

namespace A053636.P16946452629383123276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A053633 (Nat.choose n 2))

end

end A053636.P16946452629383123276

namespace A053636

/-- `2*n*A053633(C(n, 2))` -/
def P16946452629383123276.Spec : Prop :=
  ∀ n, P16946452629383123276.a n = A053636 n

end A053636

/-! ## A053636.P15075349831161541787

`2*n*A053633(A161680(n))`
-/

namespace A053636.P15075349831161541787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A053633 (A161680 n).toNat)

end

end A053636.P15075349831161541787

namespace A053636

/-- `2*n*A053633(A161680(n))` -/
def P15075349831161541787.Spec : Prop :=
  ∀ n, P15075349831161541787.a n = A053636 n

end A053636

/-!
# A053637: a(n) = ceiling(2^(n-1)/n).

The programs for A053637, the canonical program `A053637.P16031660309811540873` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053637 has offset 1).

The definition of A053637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2^n/(n+1))` (program `A053637.P16031660309811540873`, by `A053637.P16031660309811540873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053637.P16031660309811540873

`ceil(2^n/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053637

/-- `ceil(2^n/(n+1))` -/
def P16031660309811540873.Spec : Prop :=
  ∀ n, P16031660309811540873.a n = A053637 (n + 1)

theorem P16031660309811540873.correct : P16031660309811540873.Spec := by
  intro n
  simp only [A053637, Nat.add_sub_cancel]

end A053637

/-! ## A053637.P7550852666118607811

`A043545(n)+A006788(n+1)`
-/

namespace A053637.P7550852666118607811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A006788 (n + 1)

end

end A053637.P7550852666118607811

namespace A053637

/-- `A043545(n)+A006788(n+1)` -/
def P7550852666118607811.Spec : Prop :=
  ∀ n, P7550852666118607811.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P9783669223551024805

`A053638(n+1)-A054650(n+1)`
-/

namespace A053637.P9783669223551024805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) - A054650 (n + 1)

end

end A053637.P9783669223551024805

namespace A053637

/-- `A053638(n+1)-A054650(n+1)` -/
def P9783669223551024805.Spec : Prop :=
  ∀ n, P9783669223551024805.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P4730807330025801188

`A082482(n+1)+1-A054650(n+1)`
-/

namespace A053637.P4730807330025801188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + (1 - A054650 (n + 1))

end

end A053637.P4730807330025801188

namespace A053637

/-- `A082482(n+1)+1-A054650(n+1)` -/
def P4730807330025801188.Spec : Prop :=
  ∀ n, P4730807330025801188.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P15064241094687893522

`floor(or(n, 2^n)/(n+1))`
-/

namespace A053637.P15064241094687893522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (2 ^ n) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P15064241094687893522

namespace A053637

/-- `floor(or(n, 2^n)/(n+1))` -/
def P15064241094687893522.Spec : Prop :=
  ∀ n, P15064241094687893522.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P4395860857270179943

`floor(xor(n, 2^n)/(n+1))`
-/

namespace A053637.P4395860857270179943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (2 ^ n) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P4395860857270179943

namespace A053637

/-- `floor(xor(n, 2^n)/(n+1))` -/
def P4395860857270179943.Spec : Prop :=
  ∀ n, P4395860857270179943.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P9540501507847179634

`floor(∑[2*a(n-1)-1]/(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A053637.P9540501507847179634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P9540501507847179634

namespace A053637

/-- `floor(∑[2*a(n-1)-1]/(n+1))` -/
def P9540501507847179634.Spec : Prop :=
  ∀ n, P9540501507847179634.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P18103370621097473

`2^n-A350294(n)`
-/

namespace A053637.P18103370621097473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A350294 n

end

end A053637.P18103370621097473

namespace A053637

/-- `2^n-A350294(n)` -/
def P18103370621097473.Spec : Prop :=
  ∀ n, P18103370621097473.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P10561819184429608235

`floor(A006127(n)/(n+1))`
-/

namespace A053637.P10561819184429608235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006127 n : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P10561819184429608235

namespace A053637

/-- `floor(A006127(n)/(n+1))` -/
def P10561819184429608235.Spec : Prop :=
  ∀ n, P10561819184429608235.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P1174999848183776877

`A162213(n+1)/(n+1)`
-/

namespace A053637.P1174999848183776877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162213 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053637.P1174999848183776877

namespace A053637

/-- `A162213(n+1)/(n+1)` -/
def P1174999848183776877.Spec : Prop :=
  ∀ n, P1174999848183776877.a n = (A053637 (n + 1) : ℚ)

end A053637

/-! ## A053637.P15871544540106355365

`floor(A000225(n)/(n+1))+1`
-/

namespace A053637.P15871544540106355365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A053637.P15871544540106355365

namespace A053637

/-- `floor(A000225(n)/(n+1))+1` -/
def P15871544540106355365.Spec : Prop :=
  ∀ n, P15871544540106355365.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P12564677502273068643

`floor(A188917(2*n)/(n+1))`
-/

namespace A053637.P12564677502273068643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188917 (2 * n) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P12564677502273068643

namespace A053637

/-- `floor(A188917(2*n)/(n+1))` -/
def P12564677502273068643.Spec : Prop :=
  ∀ n, P12564677502273068643.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P2208390899527161243

`floor((A000079(n)+n)/(n+1))`
-/

namespace A053637.P2208390899527161243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P2208390899527161243

namespace A053637

/-- `floor((A000079(n)+n)/(n+1))` -/
def P2208390899527161243.Spec : Prop :=
  ∀ n, P2208390899527161243.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P17669811656185366994

`floor(∑[A131577(n)]/(n+1))+1`
-/

namespace A053637.P17669811656185366994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A053637.P17669811656185366994

namespace A053637

/-- `floor(∑[A131577(n)]/(n+1))+1` -/
def P17669811656185366994.Spec : Prop :=
  ∀ n, P17669811656185366994.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P14323705583283608118

`floor((A131577(n+1)+n)/(n+1))`
-/

namespace A053637.P14323705583283608118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131577 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A053637.P14323705583283608118

namespace A053637

/-- `floor((A131577(n+1)+n)/(n+1))` -/
def P14323705583283608118.Spec : Prop :=
  ∀ n, P14323705583283608118.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P4093734474772647749

`floor((2^n-1)/A000027(n+1))+1`
-/

namespace A053637.P4093734474772647749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) - 1 : ℚ) / (A000027 (n + 1) : ℚ)⌋ + 1

end

end A053637.P4093734474772647749

namespace A053637

/-- `floor((2^n-1)/A000027(n+1))+1` -/
def P4093734474772647749.Spec : Prop :=
  ∀ n, P4093734474772647749.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P11470742339534429183

`A000225(n)+1-A350294(n)`
-/

namespace A053637.P11470742339534429183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A350294 n)

end

end A053637.P11470742339534429183

namespace A053637

/-- `A000225(n)+1-A350294(n)` -/
def P11470742339534429183.Spec : Prop :=
  ∀ n, P11470742339534429183.a n = A053637 (n + 1)

end A053637

/-! ## A053637.P17215556639340365357

`(A006127(n)-A128311(n+1))/(n+1)`
-/

namespace A053637.P17215556639340365357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006127 n - A128311 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053637.P17215556639340365357

namespace A053637

/-- `(A006127(n)-A128311(n+1))/(n+1)` -/
def P17215556639340365357.Spec : Prop :=
  ∀ n, P17215556639340365357.a n = (A053637 (n + 1) : ℚ)

end A053637

/-!
# A053638: a(n) = ceiling(2^n/n).

The programs for A053638, the canonical program `A053638.P6473635408779269699` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053638 has offset 1).

The definition of A053638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2^(n+1)/(n+1))` (program `A053638.P6473635408779269699`, by `A053638.P6473635408779269699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053638.P17925340613213967560

`A082482(n+1)+1`
-/

namespace A053638.P17925340613213967560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + 1

end

end A053638.P17925340613213967560

namespace A053638

/-- `A082482(n+1)+1` -/
def P17925340613213967560.Spec : Prop :=
  ∀ n, P17925340613213967560.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P6473635408779269699

`ceil(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053638

/-- `ceil(2^(n+1)/(n+1))` -/
def P6473635408779269699.Spec : Prop :=
  ∀ n, P6473635408779269699.a n = A053638 (n + 1)

theorem P6473635408779269699.correct : P6473635408779269699.Spec := by
  intro n
  simp only [A053638, Nat.add_sub_cancel]

end A053638

/-! ## A053638.P6652272593677905875

`A043545(n)+A000799(n+1)`
-/

namespace A053638.P6652272593677905875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A000799 (n + 1)

end

end A053638.P6652272593677905875

namespace A053638

/-- `A043545(n)+A000799(n+1)` -/
def P6652272593677905875.Spec : Prop :=
  ∀ n, P6652272593677905875.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P8255898297432389283

`A373895(n+1)+A057428(n)`
-/

namespace A053638.P8255898297432389283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) + A057428 n

end

end A053638.P8255898297432389283

namespace A053638

/-- `A373895(n+1)+A057428(n)` -/
def P8255898297432389283.Spec : Prop :=
  ∀ n, P8255898297432389283.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P14197530588906222807

`A373895(n+1)-A057427(n)`
-/

namespace A053638.P14197530588906222807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) - A057427 n

end

end A053638.P14197530588906222807

namespace A053638

/-- `A373895(n+1)-A057427(n)` -/
def P14197530588906222807.Spec : Prop :=
  ∀ n, P14197530588906222807.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P6822704491920175830

`A054650(n+1)+A053637(n+1)`
-/

namespace A053638.P6822704491920175830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) + A053637 (n + 1)

end

end A053638.P6822704491920175830

namespace A053638

/-- `A054650(n+1)+A053637(n+1)` -/
def P6822704491920175830.Spec : Prop :=
  ∀ n, P6822704491920175830.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P17888070040957659832

`A000799(n+1)+1-A036987(n)`
-/

namespace A053638.P17888070040957659832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (1 - A036987 n)

end

end A053638.P17888070040957659832

namespace A053638

/-- `A000799(n+1)+1-A036987(n)` -/
def P17888070040957659832.Spec : Prop :=
  ∀ n, P17888070040957659832.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P2974282141369730147

`A373895(n+1)+1-A036453(n+1)`
-/

namespace A053638.P2974282141369730147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) + (1 - A036453 (n + 1))

end

end A053638.P2974282141369730147

namespace A053638

/-- `A373895(n+1)+1-A036453(n+1)` -/
def P2974282141369730147.Spec : Prop :=
  ∀ n, P2974282141369730147.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P6273739563019008037

`A000799(n+1)+A082493(n+1)/A082494(n+1)`
-/

namespace A053638.P6273739563019008037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000799 (n + 1) : ℚ) + (A082493 (n + 1) : ℚ) / (A082494 (n + 1) : ℚ)

end

end A053638.P6273739563019008037

namespace A053638

/-- `A000799(n+1)+A082493(n+1)/A082494(n+1)` -/
def P6273739563019008037.Spec : Prop :=
  ∀ n, P6273739563019008037.a n = (A053638 (n + 1) : ℚ)

end A053638

/-! ## A053638.P1548662769112206138

`floor((A053639(n+1)+1)/2)`
-/

namespace A053638.P1548662769112206138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053639 (n + 1) + 1 : ℚ) / 2⌋

end

end A053638.P1548662769112206138

namespace A053638

/-- `floor((A053639(n+1)+1)/2)` -/
def P1548662769112206138.Spec : Prop :=
  ∀ n, P1548662769112206138.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P18212641588938418824

`A053639(n+1)-A065482(n+1)`
-/

namespace A053638.P18212641588938418824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - A065482 (n + 1)

end

end A053638.P18212641588938418824

namespace A053638

/-- `A053639(n+1)-A065482(n+1)` -/
def P18212641588938418824.Spec : Prop :=
  ∀ n, P18212641588938418824.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P10569955926116980514

`A000799(n+1)+A053639(n+1)-A281375(n+1)`
-/

namespace A053638.P10569955926116980514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A053639 (n + 1) - A281375 (n + 1))

end

end A053638.P10569955926116980514

namespace A053638

/-- `A000799(n+1)+A053639(n+1)-A281375(n+1)` -/
def P10569955926116980514.Spec : Prop :=
  ∀ n, P10569955926116980514.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P11276553463907181314

`floor(or(n, 2^(n+1))/(n+1))`
-/

namespace A053638.P11276553463907181314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (2 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A053638.P11276553463907181314

namespace A053638

/-- `floor(or(n, 2^(n+1))/(n+1))` -/
def P11276553463907181314.Spec : Prop :=
  ∀ n, P11276553463907181314.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P1577767321597340556

`floor(xor(n, 2^(n+1))/(n+1))`
-/

namespace A053638.P1577767321597340556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (2 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A053638.P1577767321597340556

namespace A053638

/-- `floor(xor(n, 2^(n+1))/(n+1))` -/
def P1577767321597340556.Spec : Prop :=
  ∀ n, P1577767321597340556.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P36274347263951777

`floor(∑[2*a(n-1)]/(n+1))+1` with `a(0)=1`
-/

namespace A053638.P36274347263951777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A053638.P36274347263951777

namespace A053638

/-- `floor(∑[2*a(n-1)]/(n+1))+1` -/
def P36274347263951777.Spec : Prop :=
  ∀ n, P36274347263951777.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P6041574738734033133

`A128093(n+1)/(n+1)`
-/

namespace A053638.P6041574738734033133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128093 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053638.P6041574738734033133

namespace A053638

/-- `A128093(n+1)/(n+1)` -/
def P6041574738734033133.Spec : Prop :=
  ∀ n, P6041574738734033133.a n = (A053638 (n + 1) : ℚ)

end A053638

/-! ## A053638.P4871344067510754953

`floor(A052944(n+1)/(n+1))`
-/

namespace A053638.P4871344067510754953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052944 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A053638.P4871344067510754953

namespace A053638

/-- `floor(A052944(n+1)/(n+1))` -/
def P4871344067510754953.Spec : Prop :=
  ∀ n, P4871344067510754953.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P1894538606435682631

`floor(A132736(n+1)/(n+1))`
-/

namespace A053638.P1894538606435682631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132736 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A053638.P1894538606435682631

namespace A053638

/-- `floor(A132736(n+1)/(n+1))` -/
def P1894538606435682631.Spec : Prop :=
  ∀ n, P1894538606435682631.a n = A053638 (n + 1)

end A053638

/-! ## A053638.P13263170738020355269

`A162214(n+1)/(n+1)+1`
-/

namespace A053638.P13263170738020355269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162214 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A053638.P13263170738020355269

namespace A053638

/-- `A162214(n+1)/(n+1)+1` -/
def P13263170738020355269.Spec : Prop :=
  ∀ n, P13263170738020355269.a n = (A053638 (n + 1) : ℚ)

end A053638

/-!
# A053639: a(n) = ceiling(2^(n+1)/n).

The programs for A053639, the canonical program `A053639.P12280803162628129445` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053639 has offset 1).

The definition of A053639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2^(n+2)/(n+1))` (program `A053639.P12280803162628129445`, by `A053639.P12280803162628129445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053639.P12280803162628129445

`ceil(2^(n+2)/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053639

/-- `ceil(2^(n+2)/(n+1))` -/
def P12280803162628129445.Spec : Prop :=
  ∀ n, P12280803162628129445.a n = A053639 (n + 1)

theorem P12280803162628129445.correct : P12280803162628129445.Spec := by
  intro n
  simp only [A053639, Nat.add_sub_cancel]

end A053639

/-! ## A053639.P7809451548711450816

`A281375(n+1)+A043545(n)`
-/

namespace A053639.P7809451548711450816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (n + 1) + A043545 n

end

end A053639.P7809451548711450816

namespace A053639

/-- `A281375(n+1)+A043545(n)` -/
def P7809451548711450816.Spec : Prop :=
  ∀ n, P7809451548711450816.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P16242938728371246134

`A065482(n+1)+A053638(n+1)`
-/

namespace A053639.P16242938728371246134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (n + 1) + A053638 (n + 1)

end

end A053639.P16242938728371246134

namespace A053639

/-- `A065482(n+1)+A053638(n+1)` -/
def P16242938728371246134.Spec : Prop :=
  ∀ n, P16242938728371246134.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P11464492215279834924

`A065482(n+1)+A082482(n+1)+1`
-/

namespace A053639.P11464492215279834924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (n + 1) + (A082482 (n + 1) + 1)

end

end A053639.P11464492215279834924

namespace A053639

/-- `A065482(n+1)+A082482(n+1)+1` -/
def P11464492215279834924.Spec : Prop :=
  ∀ n, P11464492215279834924.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P15870224855302117182

`A053638(n+1)+A281375(n+1)-A000799(n+1)`
-/

namespace A053639.P15870224855302117182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) + (A281375 (n + 1) - A000799 (n + 1))

end

end A053639.P15870224855302117182

namespace A053639

/-- `A053638(n+1)+A281375(n+1)-A000799(n+1)` -/
def P15870224855302117182.Spec : Prop :=
  ∀ n, P15870224855302117182.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P6146409506450904943

`floor(or(n, 2^(n+2))/(n+1))`
-/

namespace A053639.P6146409506450904943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (2 ^ (n + 2)) : ℚ) / (n + 1 : ℚ)⌋

end

end A053639.P6146409506450904943

namespace A053639

/-- `floor(or(n, 2^(n+2))/(n+1))` -/
def P6146409506450904943.Spec : Prop :=
  ∀ n, P6146409506450904943.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P3276007266048015603

`floor(xor(n, 2^(n+2))/(n+1))`
-/

namespace A053639.P3276007266048015603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (2 ^ (n + 2)) : ℚ) / (n + 1 : ℚ)⌋

end

end A053639.P3276007266048015603

namespace A053639

/-- `floor(xor(n, 2^(n+2))/(n+1))` -/
def P3276007266048015603.Spec : Prop :=
  ∀ n, P3276007266048015603.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P5899785365963852898

`floor(A083706(n+1)/(n+1))`
-/

namespace A053639.P5899785365963852898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083706 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A053639.P5899785365963852898

namespace A053639

/-- `floor(A083706(n+1)/(n+1))` -/
def P5899785365963852898.Spec : Prop :=
  ∀ n, P5899785365963852898.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P17681844544005242942

`floor(A000225(n+2)/(n+1))+1`
-/

namespace A053639.P17681844544005242942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 (n + 2) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A053639.P17681844544005242942

namespace A053639

/-- `floor(A000225(n+2)/(n+1))+1` -/
def P17681844544005242942.Spec : Prop :=
  ∀ n, P17681844544005242942.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P14310243409122307549

`floor((∑[∑[A000079(n)]]+1)/(n+1))+2`
-/

namespace A053639.P14310243409122307549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 2

end

end A053639.P14310243409122307549

namespace A053639

/-- `floor((∑[∑[A000079(n)]]+1)/(n+1))+2` -/
def P14310243409122307549.Spec : Prop :=
  ∀ n, P14310243409122307549.a n = A053639 (n + 1)

end A053639

/-! ## A053639.P15513636389747895736

`round(ceil(A000225(n+3)/(n+1))/2)`
-/

namespace A053639.P15513636389747895736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(A000225 (n + 3) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / 2)

end

end A053639.P15513636389747895736

namespace A053639

/-- `round(ceil(A000225(n+3)/(n+1))/2)` -/
def P15513636389747895736.Spec : Prop :=
  ∀ n, P15513636389747895736.a n = A053639 (n + 1)

end A053639

/-!
# A053640: Number of divisors of highly composite odd numbers (A053624).

The programs for A053640, there is no canonical definition to state claims against.
-/

/-! ## A053640.P7178210435633331082

`A000005(A053624(n+1))`
-/

namespace A053640.P7178210435633331082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053624 (n + 1)).toNat

end

end A053640.P7178210435633331082

/-! ## A053640.P2313990424305454633

`∩[A179892(n+1), A279542(n+1)]`
-/

namespace A053640.P2313990424305454633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053640.P2313990424305454633

/-! ## A053640.P16552065664257038799

`∩[A176845(n+1), A279542(n+1)]`
-/

namespace A053640.P16552065664257038799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053640.P16552065664257038799

/-! ## A053640.P17696377849042972784

`∩[A279542(n+1), A375590(n+1)]`
-/

namespace A053640.P17696377849042972784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053640.P17696377849042972784

/-! ## A053640.P18421515890585106616

`∩[A279542(n+1), A354581(n)]`
-/

namespace A053640.P18421515890585106616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053640.P18421515890585106616

/-!
# A053641: Rotate n one binary digit to the right, drop leading zeros, then rotate one binary digit to the left.

The programs for A053641, the canonical program `A053641.P18322819480823141847` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053641 has offset 1).

The definition of A053641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053641.P18322819480823141847

`A006257(A038572(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053641

/-- `A006257(A038572(n+1))` -/
def P18322819480823141847.Spec : Prop :=
  ∀ n, P18322819480823141847.a n = A053641 (n + 1)

theorem P18322819480823141847.correct : P18322819480823141847.Spec := by
  intro n
  simp only [A053641, Nat.add_sub_cancel]

end A053641

/-! ## A053641.P3976723146507304342

`and(n+1, a(n-2)+1)+1` with `a(0)=1, a(1)=1`
-/

namespace A053641.P3976723146507304342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land (n + 1) (a (n - 2) + 1) + 1

end

end A053641.P3976723146507304342

namespace A053641

/-- `and(n+1, a(n-2)+1)+1` -/
def P3976723146507304342.Spec : Prop :=
  ∀ n, (P3976723146507304342.a n : ℤ) = A053641 (n + 1)

end A053641

/-! ## A053641.P15744996380291514817

`n+2-(and(1, n)+1)^floor(log2(n+1))`
-/

namespace A053641.P15744996380291514817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((Nat.land 1 n + 1) ^ Nat.log 2 (n + 1) : ℤ)

end

end A053641.P15744996380291514817

namespace A053641

/-- `n+2-(and(1, n)+1)^floor(log2(n+1))` -/
def P15744996380291514817.Spec : Prop :=
  ∀ n, P15744996380291514817.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P2726547002059672873

`n-or(a(n-2)+1, n-(a(n-2)+2))` with `a(0)=1, a(1)=1`
-/

namespace A053641.P2726547002059672873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - Int.lor (a (n - 2) + 1) ((n : ℤ) - (a (n - 2) + 2))

end

end A053641.P2726547002059672873

namespace A053641

/-- `n-or(a(n-2)+1, n-(a(n-2)+2))` -/
def P2726547002059672873.Spec : Prop :=
  ∀ n, P2726547002059672873.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P5401423006559419300

`abs(A003817(∑[n+1]%(n+1))-n)+1`
-/

namespace A053641.P5401423006559419300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003817 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) - (n : ℤ)| + 1

end

end A053641.P5401423006559419300

namespace A053641

/-- `abs(A003817(∑[n+1]%(n+1))-n)+1` -/
def P5401423006559419300.Spec : Prop :=
  ∀ n, P5401423006559419300.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P12995657801791237582

`gcd(a(n-2)+2, C(2, A006530(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A053641.P12995657801791237582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (a (n - 2) + 2) (Nat.choose 2 (A006530 (n + 1)).toNat)

end

end A053641.P12995657801791237582

namespace A053641

/-- `gcd(a(n-2)+2, C(2, A006530(n+1)))` -/
def P12995657801791237582.Spec : Prop :=
  ∀ n, (P12995657801791237582.a n : ℤ) = A053641 (n + 1)

end A053641

/-! ## A053641.P9904543971055184521

`A006257(A080542(n+1))`
-/

namespace A053641.P9904543971055184521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A080542 (n + 1)).toNat

end

end A053641.P9904543971055184521

namespace A053641

/-- `A006257(A080542(n+1))` -/
def P9904543971055184521.Spec : Prop :=
  ∀ n, P9904543971055184521.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P13675865903421754960

`A055944(n+1)-A163807(n+1)`
-/

namespace A053641.P13675865903421754960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1) - A163807 (n + 1)

end

end A053641.P13675865903421754960

namespace A053641

/-- `A055944(n+1)-A163807(n+1)` -/
def P13675865903421754960.Spec : Prop :=
  ∀ n, P13675865903421754960.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P10977769645541431154

`xor(A163807(n+1), A175919(n+1))`
-/

namespace A053641.P10977769645541431154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163807 (n + 1)) (A175919 (n + 1))

end

end A053641.P10977769645541431154

namespace A053641

/-- `xor(A163807(n+1), A175919(n+1))` -/
def P10977769645541431154.Spec : Prop :=
  ∀ n, P10977769645541431154.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P14898665273331609448

`A006257(A088161(n+1)+A006257(n+1))`
-/

namespace A053641.P14898665273331609448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A088161 (n + 1) + A006257 (n + 1)).toNat

end

end A053641.P14898665273331609448

namespace A053641

/-- `A006257(A088161(n+1)+A006257(n+1))` -/
def P14898665273331609448.Spec : Prop :=
  ∀ n, P14898665273331609448.a n = A053641 (n + 1)

theorem P14898665273331609448.correct : P14898665273331609448.Spec := by
  intro n
  simp only [A053641, Nat.add_sub_cancel, A053641.P14898665273331609448.a, A053641.P18322819480823141847.a, A006257, A006257.P8910165504183276925.a, A038572, A038572.P9289042872142352092.a, A088161, A088161.P8986286637870394846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053641

/-! ## A053641.P1544912008360142312

`A038572(n+1)+A053645(n+1)-A004526(n)`
-/

namespace A053641.P1544912008360142312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 1) + (A053645 (n + 1) - A004526 n)

end

end A053641.P1544912008360142312

namespace A053641

/-- `A038572(n+1)+A053645(n+1)-A004526(n)` -/
def P1544912008360142312.Spec : Prop :=
  ∀ n, P1544912008360142312.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P12557058377990179455

`n+1-A003817(A142150(n+1))`
-/

namespace A053641.P12557058377990179455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003817 (A142150 (n + 1)).toNat

end

end A053641.P12557058377990179455

namespace A053641

/-- `n+1-A003817(A142150(n+1))` -/
def P12557058377990179455.Spec : Prop :=
  ∀ n, P12557058377990179455.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P4987450390794930

`n+1-A086099(A237420(n+1))`
-/

namespace A053641.P4987450390794930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A086099 (A237420 (n + 1)).toNat

end

end A053641.P4987450390794930

namespace A053641

/-- `n+1-A086099(A237420(n+1))` -/
def P4987450390794930.Spec : Prop :=
  ∀ n, P4987450390794930.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P17200812915919144037

`A006257(A273105(n+1)-A006257(n+1))`
-/

namespace A053641.P17200812915919144037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A273105 (n + 1) - A006257 (n + 1)).toNat

end

end A053641.P17200812915919144037

namespace A053641

/-- `A006257(A273105(n+1)-A006257(n+1))` -/
def P17200812915919144037.Spec : Prop :=
  ∀ n, P17200812915919144037.a n = A053641 (n + 1)

theorem P17200812915919144037.correct : P17200812915919144037.Spec := by
  intro n
  simp only [A053641, Nat.add_sub_cancel, A053641.P17200812915919144037.a, A053641.P18322819480823141847.a, A006257, A006257.P8910165504183276925.a, A038572, A038572.P9289042872142352092.a, A273105, A273105.P3798720398051730023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053641

/-! ## A053641.P455845752385951216

`A093178(n+1)*A093178(A053645(n+2))`
-/

namespace A053641.P455845752385951216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) * A093178 (A053645 (n + 2)).toNat

end

end A053641.P455845752385951216

namespace A053641

/-- `A093178(n+1)*A093178(A053645(n+2))` -/
def P455845752385951216.Spec : Prop :=
  ∀ n, P455845752385951216.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P5887755857728045439

`A030101(A163807(n+1))`
-/

namespace A053641.P5887755857728045439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A163807 (n + 1)).toNat

end

end A053641.P5887755857728045439

namespace A053641

/-- `A030101(A163807(n+1))` -/
def P5887755857728045439.Spec : Prop :=
  ∀ n, P5887755857728045439.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P4412406931753921382

`A006257(A255589(2*(n+1)))`
-/

namespace A053641.P4412406931753921382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A255589 (2 * (n + 1))).toNat

end

end A053641.P4412406931753921382

namespace A053641

/-- `A006257(A255589(2*(n+1)))` -/
def P4412406931753921382.Spec : Prop :=
  ∀ n, P4412406931753921382.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P14545087210708714600

`n+1-A086099(A340632(n+1))`
-/

namespace A053641.P14545087210708714600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A086099 (A340632 (n + 1)).toNat

end

end A053641.P14545087210708714600

namespace A053641

/-- `n+1-A086099(A340632(n+1))` -/
def P14545087210708714600.Spec : Prop :=
  ∀ n, P14545087210708714600.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P16331431802340370769

`n+1-A142150(A142151(n+1))`
-/

namespace A053641.P16331431802340370769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A142150 (A142151 (n + 1)).toNat

end

end A053641.P16331431802340370769

namespace A053641

/-- `n+1-A142150(A142151(n+1))` -/
def P16331431802340370769.Spec : Prop :=
  ∀ n, P16331431802340370769.a n = A053641 (n + 1)

end A053641

/-! ## A053641.P6318465922881161898

`∑[2-a(n-1)*A014963(2*(n+1))]` with `a(0)=1`
-/

namespace A053641.P6318465922881161898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - f1 (n - 1) * A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053641.P6318465922881161898

namespace A053641

/-- `∑[2-a(n-1)*A014963(2*(n+1))]` -/
def P6318465922881161898.Spec : Prop :=
  ∀ n, P6318465922881161898.a n = A053641 (n + 1)

end A053641

/-!
# A053642: Rotate n one binary digit to the left, drop leading zeros, then rotate one binary digit to the right.

The programs for A053642, the canonical program `A053642.P4587077384101901910` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053642 has offset 1).

The definition of A053642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053642.P4587077384101901910

`A038572(A006257(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053642

/-- `A038572(A006257(n+1))` -/
def P4587077384101901910.Spec : Prop :=
  ∀ n, P4587077384101901910.a n = A053642 (n + 1)

theorem P4587077384101901910.correct : P4587077384101901910.Spec := by
  intro n
  simp only [A053642, Nat.add_sub_cancel]

end A053642

/-! ## A053642.P15150140149000891161

`A004760(A062050(n+1)+1)`
-/

namespace A053642.P15150140149000891161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A062050 (n + 1) + 1).toNat

end

end A053642.P15150140149000891161

namespace A053642

/-- `A004760(A062050(n+1)+1)` -/
def P15150140149000891161.Spec : Prop :=
  ∀ n, P15150140149000891161.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P11386553723512761506

`A004760(A053645(n+1)+2)`
-/

namespace A053642.P11386553723512761506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A053645 (n + 1) + 2).toNat

end

end A053642.P11386553723512761506

namespace A053642

/-- `A004760(A053645(n+1)+2)` -/
def P11386553723512761506.Spec : Prop :=
  ∀ n, P11386553723512761506.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P15136457180096481674

`A323234(A004754(n+1))-1`
-/

namespace A053642.P15136457180096481674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A004754 (n + 1)).toNat - 1

end

end A053642.P15136457180096481674

namespace A053642

/-- `A323234(A004754(n+1))-1` -/
def P15136457180096481674.Spec : Prop :=
  ∀ n, P15136457180096481674.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P11022772911812433610

`A038572(2*A053645(n+1)+1)`
-/

namespace A053642.P11022772911812433610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * A053645 (n + 1) + 1).toNat

end

end A053642.P11022772911812433610

namespace A053642

/-- `A038572(2*A053645(n+1)+1)` -/
def P11022772911812433610.Spec : Prop :=
  ∀ n, P11022772911812433610.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P16506190947435960636

`A080542(2*A053645(n+1)+1)`
-/

namespace A053642.P16506190947435960636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (2 * A053645 (n + 1) + 1).toNat

end

end A053642.P16506190947435960636

namespace A053642

/-- `A080542(2*A053645(n+1)+1)` -/
def P16506190947435960636.Spec : Prop :=
  ∀ n, P16506190947435960636.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P2751249862237255666

`A038572(n+1-A035327(n+1))`
-/

namespace A053642.P2751249862237255666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n + 1 : ℤ) - A035327 (n + 1)).toNat

end

end A053642.P2751249862237255666

namespace A053642

/-- `A038572(n+1-A035327(n+1))` -/
def P2751249862237255666.Spec : Prop :=
  ∀ n, P2751249862237255666.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P9651038082328128961

`A038572(n+2-A080079(n+1))`
-/

namespace A053642.P9651038082328128961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n + 2 : ℤ) - A080079 (n + 1)).toNat

end

end A053642.P9651038082328128961

namespace A053642

/-- `A038572(n+2-A080079(n+1))` -/
def P9651038082328128961.Spec : Prop :=
  ∀ n, P9651038082328128961.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P15632898674312883121

`A004760(n+3-A053644(n+1))`
-/

namespace A053642.P15632898674312883121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 ((n + 3 : ℤ) - A053644 (n + 1)).toNat

end

end A053642.P15632898674312883121

namespace A053642

/-- `A004760(n+3-A053644(n+1))` -/
def P15632898674312883121.Spec : Prop :=
  ∀ n, P15632898674312883121.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P16632096289433667064

`A038572(A020330(n+1)%(n+2))`
-/

namespace A053642.P16632096289433667064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A020330 (n + 1)) (n + 2 : ℤ)).toNat

end

end A053642.P16632096289433667064

namespace A053642

/-- `A038572(A020330(n+1)%(n+2))` -/
def P16632096289433667064.Spec : Prop :=
  ∀ n, P16632096289433667064.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P6941811949007893933

`A004760(floor(A006257(n+1)/2)+2)`
-/

namespace A053642.P6941811949007893933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (⌊(A006257 (n + 1) : ℚ) / 2⌋ + 2).toNat

end

end A053642.P6941811949007893933

namespace A053642

/-- `A004760(floor(A006257(n+1)/2)+2)` -/
def P6941811949007893933.Spec : Prop :=
  ∀ n, P6941811949007893933.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P1059608844761407056

`A038572(xor(2*(n+1), A076877(n+1)))`
-/

namespace A053642.P1059608844761407056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (2 * (n + 1) : ℤ) (A076877 (n + 1))).toNat

end

end A053642.P1059608844761407056

namespace A053642

/-- `A038572(xor(2*(n+1), A076877(n+1)))` -/
def P1059608844761407056.Spec : Prop :=
  ∀ n, P1059608844761407056.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P11088776012138498351

`A059893(A000265(A059893(n+1)))`
-/

namespace A053642.P11088776012138498351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A000265 (A059893 (n + 1)).toNat).toNat

end

end A053642.P11088776012138498351

namespace A053642

/-- `A059893(A000265(A059893(n+1)))` -/
def P11088776012138498351.Spec : Prop :=
  ∀ n, P11088776012138498351.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P7903775251059093169

`A053645(n+1)+A053644(A006257(n+1))`
-/

namespace A053642.P7903775251059093169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + A053644 (A006257 (n + 1)).toNat

end

end A053642.P7903775251059093169

namespace A053642

/-- `A053645(n+1)+A053644(A006257(n+1))` -/
def P7903775251059093169.Spec : Prop :=
  ∀ n, P7903775251059093169.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P16602876660595375308

`A004754(A006257(n+1))-A062050(n+1)`
-/

namespace A053642.P16602876660595375308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A006257 (n + 1)).toNat - A062050 (n + 1)

end

end A053642.P16602876660595375308

namespace A053642

/-- `A004754(A006257(n+1))-A062050(n+1)` -/
def P16602876660595375308.Spec : Prop :=
  ∀ n, P16602876660595375308.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P12321858929353922775

`A038572(A038572(n+1)-A088161(n+1))`
-/

namespace A053642.P12321858929353922775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (n + 1) - A088161 (n + 1)).toNat

end

end A053642.P12321858929353922775

namespace A053642

/-- `A038572(A038572(n+1)-A088161(n+1))` -/
def P12321858929353922775.Spec : Prop :=
  ∀ n, P12321858929353922775.a n = A053642 (n + 1)

theorem P12321858929353922775.correct : P12321858929353922775.Spec := by
  intro n
  simp only [A053642, Nat.add_sub_cancel, A053642.P12321858929353922775.a, A053642.P4587077384101901910.a, A006257, A006257.P8910165504183276925.a, A038572, A038572.P9289042872142352092.a, A088161, A088161.P8986286637870394846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053642

/-! ## A053642.P14660414812866464931

`A038572(A053645(n+1)+A053645(n+1)+1)`
-/

namespace A053642.P14660414812866464931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A053645 (n + 1) + (A053645 (n + 1) + 1)).toNat

end

end A053642.P14660414812866464931

namespace A053642

/-- `A038572(A053645(n+1)+A053645(n+1)+1)` -/
def P14660414812866464931.Spec : Prop :=
  ∀ n, P14660414812866464931.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P16500400201552586104

`A080542(A053645(n+1)+A053645(n+1)+1)`
-/

namespace A053642.P16500400201552586104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A053645 (n + 1) + (A053645 (n + 1) + 1)).toNat

end

end A053642.P16500400201552586104

namespace A053642

/-- `A080542(A053645(n+1)+A053645(n+1)+1)` -/
def P16500400201552586104.Spec : Prop :=
  ∀ n, P16500400201552586104.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P14583713781610013369

`A038572(Δ[A256249(n)])`
-/

namespace A053642.P14583713781610013369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (n + 1) - f1 n).toNat

end

end A053642.P14583713781610013369

namespace A053642

/-- `A038572(Δ[A256249(n)])` -/
def P14583713781610013369.Spec : Prop :=
  ∀ n, P14583713781610013369.a n = A053642 (n + 1)

end A053642

/-! ## A053642.P6091202186070424470

`A038572(A256249(n+1)-A256249(n))`
-/

namespace A053642.P6091202186070424470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A256249 (n + 1) - A256249 n).toNat

end

end A053642.P6091202186070424470

namespace A053642

/-- `A038572(A256249(n+1)-A256249(n))` -/
def P6091202186070424470.Spec : Prop :=
  ∀ n, P6091202186070424470.a n = A053642 (n + 1)

end A053642

/-!
# A053643: a(n) = ceiling(binomial(n,6)/n).

The programs for A053643, the canonical program `A053643.P16956469957652185926` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053643 has offset 1).

The definition of A053643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n+1, 6)/(n+1))` (program `A053643.P16956469957652185926`, by `A053643.P16956469957652185926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053643.P7609912630592295332

`ceil(C(n, 5)/6)`
-/

namespace A053643.P7609912630592295332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 5 : ℚ) / 6⌉

end

end A053643.P7609912630592295332

namespace A053643

/-- `ceil(C(n, 5)/6)` -/
def P7609912630592295332.Spec : Prop :=
  ∀ n, P7609912630592295332.a n = A053643 (n + 1)

end A053643

/-! ## A053643.P16956469957652185926

`ceil(C(n+1, 6)/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053643

/-- `ceil(C(n+1, 6)/(n+1))` -/
def P16956469957652185926.Spec : Prop :=
  ∀ n, P16956469957652185926.a n = A053643 (n + 1)

theorem P16956469957652185926.correct : P16956469957652185926.Spec := by
  intro n
  simp only [A053643, Nat.add_sub_cancel]

end A053643

/-! ## A053643.P13896798801542503027

`ceil(A000389(n)/6)`
-/

namespace A053643.P13896798801542503027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000389 n : ℚ) / 6⌉

end

end A053643.P13896798801542503027

namespace A053643

/-- `ceil(A000389(n)/6)` -/
def P13896798801542503027.Spec : Prop :=
  ∀ n, P13896798801542503027.a n = A053643 (n + 1)

end A053643

/-! ## A053643.P13538969205404927566

`ceil(A266387(n+1)/42)`
-/

namespace A053643.P13538969205404927566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266387 (n + 1) : ℚ) / 42⌉

end

end A053643.P13538969205404927566

namespace A053643

/-- `ceil(A266387(n+1)/42)` -/
def P13538969205404927566.Spec : Prop :=
  ∀ n, P13538969205404927566.a n = A053643 (n + 1)

end A053643

/-! ## A053643.P14824730507472635680

`ceil((∑[A052762(n)/24]-A052762(n)/24)/6)`
-/

namespace A053643.P14824730507472635680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j - (A052762 n : ℚ) / 24) / 6⌉

end

end A053643.P14824730507472635680

namespace A053643

/-- `ceil((∑[A052762(n)/24]-A052762(n)/24)/6)` -/
def P14824730507472635680.Spec : Prop :=
  ∀ n, P14824730507472635680.a n = A053643 (n + 1)

end A053643

/-! ## A053643.P1104600415397270135

`ceil(Δ[A000579(n)]/6)`
-/

namespace A053643.P1104600415397270135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 6⌉

end

end A053643.P1104600415397270135

namespace A053643

/-- `ceil(Δ[A000579(n)]/6)` -/
def P1104600415397270135.Spec : Prop :=
  ∀ n, P1104600415397270135.a n = A053643 (n + 1)

end A053643

/-! ## A053643.P873117861952317381

`ceil(A000579(n+1)/(n+1))`
-/

namespace A053643.P873117861952317381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000579 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A053643.P873117861952317381

namespace A053643

/-- `ceil(A000579(n+1)/(n+1))` -/
def P873117861952317381.Spec : Prop :=
  ∀ n, P873117861952317381.a n = A053643 (n + 1)

theorem P873117861952317381.correct : P873117861952317381.Spec := by
  intro n
  simp only [A053643, Nat.add_sub_cancel, A053643.P873117861952317381.a, A053643.P16956469957652185926.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053643

/-! ## A053643.P2682727987329133669

`ceil(A000910(n+1)/A008706(n+1))`
-/

namespace A053643.P2682727987329133669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000910 (n + 1) : ℚ) / (A008706 (n + 1) : ℚ)⌉

end

end A053643.P2682727987329133669

namespace A053643

/-- `ceil(A000910(n+1)/A008706(n+1))` -/
def P2682727987329133669.Spec : Prop :=
  ∀ n, P2682727987329133669.a n = A053643 (n + 1)

end A053643

/-!
# A053644: Most significant bit of n, msb(n); largest power of 2 less than or equal to n; write n in binary and change all but the first digit to zero.

The programs for A053644, the canonical program `A053644.P1707366427427647095` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053644 has offset 0).

The definition of A053644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053644.P1707366427427647095

`a(floor(n/2))*2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053644

/-- `a(floor(n/2))*2` -/
def P1707366427427647095.Spec : Prop :=
  ∀ n, (P1707366427427647095.a n : ℤ) = A053644 n

theorem P1707366427427647095.correct : P1707366427427647095.Spec := by
  intro n
  simp only [A053644]

end A053644

/-! ## A053644.P12966544166249067147

`and(n, -a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P12966544166249067147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (n : ℤ) (-a (n - 1))

end

end A053644.P12966544166249067147

namespace A053644

/-- `and(n, -a(n-1))` -/
def P12966544166249067147.Spec : Prop :=
  ∀ n, P12966544166249067147.a n = A053644 n

end A053644

/-! ## A053644.P14733220638664416431

`and(n, 3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P14733220638664416431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.land n (3 * a (n - 1))

end

end A053644.P14733220638664416431

namespace A053644

/-- `and(n, 3*a(n-1))` -/
def P14733220638664416431.Spec : Prop :=
  ∀ n, (P14733220638664416431.a n : ℤ) = A053644 n

end A053644

/-! ## A053644.P16594223275356671595

`n-n%a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A053644.P16594223275356671595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - Int.tmod (n : ℤ) (a (n - 1))

end

end A053644.P16594223275356671595

namespace A053644

/-- `n-n%a(n-1)` -/
def P16594223275356671595.Spec : Prop :=
  ∀ n, P16594223275356671595.a n = A053644 n

end A053644

/-! ## A053644.P4068214983339508026

`and(n, lcm(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P4068214983339508026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.land n (Nat.lcm n (a (n - 1)))

end

end A053644.P4068214983339508026

namespace A053644

/-- `and(n, lcm(n, a(n-1)))` -/
def P4068214983339508026.Spec : Prop :=
  ∀ n, (P4068214983339508026.a n : ℤ) = A053644 n

end A053644

/-! ## A053644.P16256524886155024973

`and(n, a(n-1)-(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P16256524886155024973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (n : ℤ) (a (n - 1) - (n + 1 : ℤ))

end

end A053644.P16256524886155024973

namespace A053644

/-- `and(n, a(n-1)-(n+1))` -/
def P16256524886155024973.Spec : Prop :=
  ∀ n, P16256524886155024973.a n = A053644 n

end A053644

/-! ## A053644.P16559933072101427159

`and(n, a(n-1)-1-n)` with `a(0)=0, a(1)=1`
-/

namespace A053644.P16559933072101427159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (n : ℤ) (a (n - 1) - 1 - (n : ℤ))

end

end A053644.P16559933072101427159

namespace A053644

/-- `and(n, a(n-1)-1-n)` -/
def P16559933072101427159.Spec : Prop :=
  ∀ n, P16559933072101427159.a n = A053644 n

end A053644

/-! ## A053644.P4144849666806194181

`2*a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=1`
-/

namespace A053644.P4144849666806194181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A053644.P4144849666806194181

namespace A053644

/-- `2*a(ceil((n+1)/2)-1)` -/
def P4144849666806194181.Spec : Prop :=
  ∀ n, (P4144849666806194181.a n : ℤ) = A053644 n

end A053644

/-! ## A053644.P758655157150627065

`a(floor(n/2))+a(floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P758655157150627065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a ⌊(n : ℚ) / 2⌋.toNat

end

end A053644.P758655157150627065

namespace A053644

/-- `a(floor(n/2))+a(floor(n/2))` -/
def P758655157150627065.Spec : Prop :=
  ∀ n, (P758655157150627065.a n : ℤ) = A053644 n

theorem P758655157150627065.correct : P758655157150627065.Spec := by
  intro n
  simp only [A053644, Nat.add_sub_cancel, A053644.P758655157150627065.a, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A053644

/-! ## A053644.P10002534324889165440

`lt[2*n, xor(n+1, 2*n)]-n`
-/

namespace A053644.P10002534324889165440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A053644.P10002534324889165440

namespace A053644

/-- `lt[2*n, xor(n+1, 2*n)]-n` -/
def P10002534324889165440.Spec : Prop :=
  ∀ n, P10002534324889165440.a n = A053644 n

end A053644

/-! ## A053644.P11951317563178124310

`a(n-1)/floor(n/a(n-1))^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A053644.P11951317563178124310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (⌊(n : ℚ) / a (n - 1)⌋ : ℚ) ^ (-1 : ℤ)

end

end A053644.P11951317563178124310

namespace A053644

/-- `a(n-1)/floor(n/a(n-1))^(-1)` -/
def P11951317563178124310.Spec : Prop :=
  ∀ n, P11951317563178124310.a n = (A053644 n : ℚ)

end A053644

/-! ## A053644.P5804021788386519091

`a(n-1)-(n/floor(n/a(n-1))-n)` with `a(0)=0, a(1)=1`
-/

namespace A053644.P5804021788386519091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((n : ℚ) / (⌊(n : ℚ) / a (n - 1)⌋ : ℚ) - (n : ℚ))

end

end A053644.P5804021788386519091

namespace A053644

/-- `a(n-1)-(n/floor(n/a(n-1))-n)` -/
def P5804021788386519091.Spec : Prop :=
  ∀ n, P5804021788386519091.a n = (A053644 n : ℚ)

end A053644

/-! ## A053644.P13821349962148185670

`2*(a(n-1)-a(a(n-1)-gcd(n, a(n-1))))` with `a(0)=0, a(1)=1`
-/

namespace A053644.P13821349962148185670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - a (a (n - 1) - (Int.gcd (n : ℤ) (a (n - 1)) : ℤ)).toNat)

end

end A053644.P13821349962148185670

namespace A053644

/-- `2*(a(n-1)-a(a(n-1)-gcd(n, a(n-1))))` -/
def P13821349962148185670.Spec : Prop :=
  ∀ n, P13821349962148185670.a n = A053644 n

end A053644

/-! ## A053644.P12787918358011656493

`and(n, A368901(n))`
-/

namespace A053644.P12787918358011656493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A368901 n)

end

end A053644.P12787918358011656493

namespace A053644

/-- `and(n, A368901(n))` -/
def P12787918358011656493.Spec : Prop :=
  ∀ n, P12787918358011656493.a n = A053644 n

end A053644

/-! ## A053644.P8715178283930714153

`∑{d}[n, A300724(#)]`
-/

namespace A053644.P8715178283930714153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300724 d

end

end A053644.P8715178283930714153

namespace A053644

/-- `∑{d}[n, A300724(#)]` -/
def P8715178283930714153.Spec : Prop :=
  ∀ n, P8715178283930714153.a n = A053644 n

end A053644

/-! ## A053644.P2756671889851456901

`floor(A062383(n)/2)`
-/

namespace A053644.P2756671889851456901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062383 n : ℚ) / 2⌋

end

end A053644.P2756671889851456901

namespace A053644

/-- `floor(A062383(n)/2)` -/
def P2756671889851456901.Spec : Prop :=
  ∀ n, P2756671889851456901.a n = A053644 n

end A053644

/-! ## A053644.P4157390945828118590

`ceil(A003817(n)/2)`
-/

namespace A053644.P4157390945828118590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003817 n : ℚ) / 2⌉

end

end A053644.P4157390945828118590

namespace A053644

/-- `ceil(A003817(n)/2)` -/
def P4157390945828118590.Spec : Prop :=
  ∀ n, P4157390945828118590.a n = A053644 n

end A053644

/-! ## A053644.P669494368296925898

`∑[∑{d}[n, A361984(#)]]`
-/

namespace A053644.P669494368296925898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A361984 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053644.P669494368296925898

namespace A053644

/-- `∑[∑{d}[n, A361984(#)]]` -/
def P669494368296925898.Spec : Prop :=
  ∀ n, P669494368296925898.a n = A053644 n

end A053644

/-! ## A053644.P3018025679578375691

`and(n, A280510(n+1))`
-/

namespace A053644.P3018025679578375691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A280510 (n + 1))

end

end A053644.P3018025679578375691

namespace A053644

/-- `and(n, A280510(n+1))` -/
def P3018025679578375691.Spec : Prop :=
  ∀ n, P3018025679578375691.a n = A053644 n

end A053644

/-! ## A053644.P1266864272045919829

`A131577(ceil(log2(n+1)))`
-/

namespace A053644.P1266864272045919829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A053644.P1266864272045919829

namespace A053644

/-- `A131577(ceil(log2(n+1)))` -/
def P1266864272045919829.Spec : Prop :=
  ∀ n, P1266864272045919829.a n = A053644 n

end A053644

/-!
# A053645: Distance to largest power of 2 less than or equal to n; write n in binary, change the first digit to zero, and convert back to decimal.

The programs for A053645, the canonical program `A053645.P13234994043849603743` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053645 has offset 1).

The definition of A053645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053645.P13234994043849603743

`n+1-2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053645

/-- `n+1-2^floor(log2(n+1))` -/
def P13234994043849603743.Spec : Prop :=
  ∀ n, P13234994043849603743.a n = A053645 (n + 1)

theorem P13234994043849603743.correct : P13234994043849603743.Spec := by
  intro n
  simp only [A053645, Nat.add_sub_cancel]

end A053645

/-! ## A053645.P3294753872846124590

`(A006257(n+1)-1)/2`
-/

namespace A053645.P3294753872846124590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 (n + 1) - 1 : ℚ) / 2

end

end A053645.P3294753872846124590

namespace A053645

/-- `(A006257(n+1)-1)/2` -/
def P3294753872846124590.Spec : Prop :=
  ∀ n, P3294753872846124590.a n = (A053645 (n + 1) : ℚ)

end A053645

/-! ## A053645.P17145458649708578978

`and(n+1, a(n-1)+1)` with `a(0)=0`
-/

namespace A053645.P17145458649708578978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land (n + 1) (a (n - 1) + 1)

end

end A053645.P17145458649708578978

namespace A053645

/-- `and(n+1, a(n-1)+1)` -/
def P17145458649708578978.Spec : Prop :=
  ∀ n, (P17145458649708578978.a n : ℤ) = A053645 (n + 1)

end A053645

/-! ## A053645.P7462453827914172443

`(n+1)%(a(n-1)-n)` with `a(0)=0`
-/

namespace A053645.P7462453827914172443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (n + 1 : ℤ) (a (n - 1) - (n : ℤ))

end

end A053645.P7462453827914172443

namespace A053645

/-- `(n+1)%(a(n-1)-n)` -/
def P7462453827914172443.Spec : Prop :=
  ∀ n, P7462453827914172443.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P16135755998415486333

`and(n+1, lt[n, xor(n, floor(n/2))])`
-/

namespace A053645.P16135755998415486333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053645.P16135755998415486333

namespace A053645

/-- `and(n+1, lt[n, xor(n, floor(n/2))])` -/
def P16135755998415486333.Spec : Prop :=
  ∀ n, (P16135755998415486333.a n : ℤ) = A053645 (n + 1)

end A053645

/-! ## A053645.P10740293092074758243

`and(n-1-a(n-1), ∑[2*n]/n)` with `a(0)=0`
-/

namespace A053645.P10740293092074758243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land ((n : ℤ) - 1 - a (n - 1)) (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)))

end

end A053645.P10740293092074758243

namespace A053645

/-- `and(n-1-a(n-1), ∑[2*n]/n)` -/
def P10740293092074758243.Spec : Prop :=
  ∀ n, P10740293092074758243.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P9205306101190868281

`and(2*n-(n-1), n-1-a(n-1))` with `a(0)=0`
-/

namespace A053645.P9205306101190868281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land ((2 * n : ℤ) - ((n : ℤ) - 1)) ((n : ℤ) - 1 - a (n - 1))

end

end A053645.P9205306101190868281

namespace A053645

/-- `and(2*n-(n-1), n-1-a(n-1))` -/
def P9205306101190868281.Spec : Prop :=
  ∀ n, P9205306101190868281.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P11857943816064873652

`∑[A153152(n)-n]`
-/

namespace A053645.P11857943816064873652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053645.P11857943816064873652

namespace A053645

/-- `∑[A153152(n)-n]` -/
def P11857943816064873652.Spec : Prop :=
  ∀ n, P11857943816064873652.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P6093355692309088166

`and(n+1, A086099(n))`
-/

namespace A053645.P6093355692309088166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A086099 n)

end

end A053645.P6093355692309088166

namespace A053645

/-- `and(n+1, A086099(n))` -/
def P6093355692309088166.Spec : Prop :=
  ∀ n, P6093355692309088166.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P14192659784689409441

`∑{d}[n+1, A300725(#)]`
-/

namespace A053645.P14192659784689409441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300725 d

end

end A053645.P14192659784689409441

namespace A053645

/-- `∑{d}[n+1, A300725(#)]` -/
def P14192659784689409441.Spec : Prop :=
  ∀ n, P14192659784689409441.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P2754770673605221683

`∑[1-Δ[A053644(n)]]`
-/

namespace A053645.P2754770673605221683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053645.P2754770673605221683

namespace A053645

/-- `∑[1-Δ[A053644(n)]]` -/
def P2754770673605221683.Spec : Prop :=
  ∀ n, P2754770673605221683.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P3330870551255249318

`floor(A006257(n+1)/2)`
-/

namespace A053645.P3330870551255249318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 (n + 1) : ℚ) / 2⌋

end

end A053645.P3330870551255249318

namespace A053645

/-- `floor(A006257(n+1)/2)` -/
def P3330870551255249318.Spec : Prop :=
  ∀ n, P3330870551255249318.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P2573289706655091481

`(n-A035327(n+1))/2`
-/

namespace A053645.P2573289706655091481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A035327 (n + 1) : ℚ) / 2

end

end A053645.P2573289706655091481

namespace A053645

/-- `(n-A035327(n+1))/2` -/
def P2573289706655091481.Spec : Prop :=
  ∀ n, P2573289706655091481.a n = (A053645 (n + 1) : ℚ)

end A053645

/-! ## A053645.P12510133338763166568

`and(n+1, A004754(n+1))`
-/

namespace A053645.P12510133338763166568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004754 (n + 1))

end

end A053645.P12510133338763166568

namespace A053645

/-- `and(n+1, A004754(n+1))` -/
def P12510133338763166568.Spec : Prop :=
  ∀ n, P12510133338763166568.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P13401044285576336119

`and(n+1, A004756(n+1))`
-/

namespace A053645.P13401044285576336119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004756 (n + 1))

end

end A053645.P13401044285576336119

namespace A053645

/-- `and(n+1, A004756(n+1))` -/
def P13401044285576336119.Spec : Prop :=
  ∀ n, P13401044285576336119.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P1755271819383401725

`and(n+1, A004758(n+1))`
-/

namespace A053645.P1755271819383401725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004758 (n + 1))

end

end A053645.P1755271819383401725

namespace A053645

/-- `and(n+1, A004758(n+1))` -/
def P1755271819383401725.Spec : Prop :=
  ∀ n, P1755271819383401725.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P8468671439508370173

`and(n+1, A277267(n+1))`
-/

namespace A053645.P8468671439508370173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A277267 (n + 1))

end

end A053645.P8468671439508370173

namespace A053645

/-- `and(n+1, A277267(n+1))` -/
def P8468671439508370173.Spec : Prop :=
  ∀ n, P8468671439508370173.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P16205962608713170880

`and(n+1, A279521(n+1))`
-/

namespace A053645.P16205962608713170880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A279521 (n + 1))

end

end A053645.P16205962608713170880

namespace A053645

/-- `and(n+1, A279521(n+1))` -/
def P16205962608713170880.Spec : Prop :=
  ∀ n, P16205962608713170880.a n = A053645 (n + 1)

end A053645

/-! ## A053645.P11637080754537150909

`(n+1-A080079(n+1))/2`
-/

namespace A053645.P11637080754537150909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A080079 (n + 1) : ℚ) / 2

end

end A053645.P11637080754537150909

namespace A053645

/-- `(n+1-A080079(n+1))/2` -/
def P11637080754537150909.Spec : Prop :=
  ∀ n, P11637080754537150909.a n = (A053645 (n + 1) : ℚ)

end A053645

/-! ## A053645.P8705936019239202785

`(1-A036987(n))*(1+a(n-1))` with `a(0)=0`
-/

namespace A053645.P8705936019239202785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A036987 n) * (1 + a (n - 1))

end

end A053645.P8705936019239202785

namespace A053645

/-- `(1-A036987(n))*(1+a(n-1))` -/
def P8705936019239202785.Spec : Prop :=
  ∀ n, P8705936019239202785.a n = A053645 (n + 1)

end A053645

/-!
# A053646: Distance to nearest power of 2.

The programs for A053646, the canonical program `A053646.P18187844312180991750` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053646 has offset 1).

The definition of A053646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053646.P18187844312180991750

`a(1+floor(n/2)-1)+a(ceil(n/2)-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053646

/-- `a(1+floor(n/2)-1)+a(ceil(n/2)-1)` -/
def P18187844312180991750.Spec : Prop :=
  ∀ n, (P18187844312180991750.a n : ℤ) = A053646 (n + 1)

theorem P18187844312180991750.correct : P18187844312180991750.Spec := by
  intro n
  simp only [A053646, Nat.add_sub_cancel]

end A053646

/-! ## A053646.P3468086524514307064

`∑[floor(a(floor(n/2)))]-n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A053646.P3468086524514307064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A053646.P3468086524514307064

namespace A053646

/-- `∑[floor(a(floor(n/2)))]-n` -/
def P3468086524514307064.Spec : Prop :=
  ∀ n, P3468086524514307064.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P10733828136088651229

`∑[a(floor(n/2))+a(n%2)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A053646.P10733828136088651229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, -1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053646.P10733828136088651229

namespace A053646

/-- `∑[a(floor(n/2))+a(n%2)]` -/
def P10733828136088651229.Spec : Prop :=
  ∀ n, P10733828136088651229.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P11634818956250523120

`2*n-A384096(n)`
-/

namespace A053646.P11634818956250523120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A384096 n

end

end A053646.P11634818956250523120

namespace A053646

/-- `2*n-A384096(n)` -/
def P11634818956250523120.Spec : Prop :=
  ∀ n, P11634818956250523120.a n = A053646 (n + 1)

theorem P11634818956250523120.correct : P11634818956250523120.Spec := by
  intro n
  simp only [A053646, Nat.add_sub_cancel, A053646.P11634818956250523120.a, A053646.P18187844312180991750.a, A384096, A384096.P3432400259258719839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053646

/-! ## A053646.P12100778078720013152

`(n+3)%A166079(n+2)`
-/

namespace A053646.P12100778078720013152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A166079 (n + 2))

end

end A053646.P12100778078720013152

namespace A053646

/-- `(n+3)%A166079(n+2)` -/
def P12100778078720013152.Spec : Prop :=
  ∀ n, P12100778078720013152.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P13196881645781977474

`A081252(n+1)-A081252(A028310(n))`
-/

namespace A053646.P13196881645781977474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081252 (n + 1) - A081252 (A028310 n).toNat

end

end A053646.P13196881645781977474

namespace A053646

/-- `A081252(n+1)-A081252(A028310(n))` -/
def P13196881645781977474.Spec : Prop :=
  ∀ n, P13196881645781977474.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P4416095345413890780

`A005942(n+2)%(n+1)`
-/

namespace A053646.P4416095345413890780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005942 (n + 2)) (n + 1 : ℤ)

end

end A053646.P4416095345413890780

namespace A053646

/-- `A005942(n+2)%(n+1)` -/
def P4416095345413890780.Spec : Prop :=
  ∀ n, P4416095345413890780.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P1342690746125227233

`A060973(A080645(n+1))-A060973(n+1)`
-/

namespace A053646.P1342690746125227233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A080645 (n + 1)).toNat - A060973 (n + 1)

end

end A053646.P1342690746125227233

namespace A053646

/-- `A060973(A080645(n+1))-A060973(n+1)` -/
def P1342690746125227233.Spec : Prop :=
  ∀ n, P1342690746125227233.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P13050672894096173731

`A060973(A079905(n+1))-A060973(n+1)`
-/

namespace A053646.P13050672894096173731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 (n + 1)).toNat - A060973 (n + 1)

end

end A053646.P13050672894096173731

namespace A053646

/-- `A060973(A079905(n+1))-A060973(n+1)` -/
def P13050672894096173731.Spec : Prop :=
  ∀ n, P13050672894096173731.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P3479544143724042618

`n-A277267(Δ[n²])`
-/

namespace A053646.P3479544143724042618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277267 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053646.P3479544143724042618

namespace A053646

/-- `n-A277267(Δ[n²])` -/
def P3479544143724042618.Spec : Prop :=
  ∀ n, P3479544143724042618.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P9356109570511946186

`A279521(Δ[n²])-n`
-/

namespace A053646.P9356109570511946186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A053646.P9356109570511946186

namespace A053646

/-- `A279521(Δ[n²])-n` -/
def P9356109570511946186.Spec : Prop :=
  ∀ n, P9356109570511946186.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P4923945198098205065

`A078881(Δ[n²])-(n+1)`
-/

namespace A053646.P4923945198098205065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A053646.P4923945198098205065

namespace A053646

/-- `A078881(Δ[n²])-(n+1)` -/
def P4923945198098205065.Spec : Prop :=
  ∀ n, P4923945198098205065.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P15565238034452727128

`A006165(2*(n+1))-(n+1)`
-/

namespace A053646.P15565238034452727128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A053646.P15565238034452727128

namespace A053646

/-- `A006165(2*(n+1))-(n+1)` -/
def P15565238034452727128.Spec : Prop :=
  ∀ n, P15565238034452727128.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P13792924482064953290

`n+1-A060973(2*(n+1))`
-/

namespace A053646.P13792924482064953290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060973 (2 * (n + 1))

end

end A053646.P13792924482064953290

namespace A053646

/-- `n+1-A060973(2*(n+1))` -/
def P13792924482064953290.Spec : Prop :=
  ∀ n, P13792924482064953290.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P1464436224202224351

`A078881(2*n+1)-1-n`
-/

namespace A053646.P1464436224202224351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (2 * n + 1) - 1 - (n : ℤ)

end

end A053646.P1464436224202224351

namespace A053646

/-- `A078881(2*n+1)-1-n` -/
def P1464436224202224351.Spec : Prop :=
  ∀ n, P1464436224202224351.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P4714118069817955807

`3*(n+1)-A007378(2*(n+1))`
-/

namespace A053646.P4714118069817955807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A007378 (2 * (n + 1))

end

end A053646.P4714118069817955807

namespace A053646

/-- `3*(n+1)-A007378(2*(n+1))` -/
def P4714118069817955807.Spec : Prop :=
  ∀ n, P4714118069817955807.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P5219641059566620902

`A294456(2*(n+1))-(3*n+1)`
-/

namespace A053646.P5219641059566620902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (2 * (n + 1)) - (3 * n + 1 : ℤ)

end

end A053646.P5219641059566620902

namespace A053646

/-- `A294456(2*(n+1))-(3*n+1)` -/
def P5219641059566620902.Spec : Prop :=
  ∀ n, P5219641059566620902.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P16289884581771571996

`(A294456(Δ[n²]+1)+2)%(n+1)`
-/

namespace A053646.P16289884581771571996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 2) (n + 1 : ℤ)

end

end A053646.P16289884581771571996

namespace A053646

/-- `(A294456(Δ[n²]+1)+2)%(n+1)` -/
def P16289884581771571996.Spec : Prop :=
  ∀ n, P16289884581771571996.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P3156069114703336049

`2*(n+1)-A080637(2*n+1)+n`
-/

namespace A053646.P3156069114703336049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A080637 (2 * n + 1) + (n : ℤ)

end

end A053646.P3156069114703336049

namespace A053646

/-- `2*(n+1)-A080637(2*n+1)+n` -/
def P3156069114703336049.Spec : Prop :=
  ∀ n, P3156069114703336049.a n = A053646 (n + 1)

end A053646

/-! ## A053646.P9278524067241384564

`A023443(A006165(2*(n+1))-n)`
-/

namespace A053646.P9278524067241384564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A006165 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A053646.P9278524067241384564

namespace A053646

/-- `A023443(A006165(2*(n+1))-n)` -/
def P9278524067241384564.Spec : Prop :=
  ∀ n, P9278524067241384564.a n = A053646 (n + 1)

end A053646

/-!
# A053648: Scan decimal expansion of Mersenne primes (A000668), recording all primes seen.

The programs for A053648, there is no canonical definition to state claims against.
-/

/-! ## A053648.P15040821557914123156

`p?[∏{p}[n+1, 1-#]+2^∏{e}[n+1, 2*#+1]]`
-/

namespace A053648.P15040821557914123156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)) + (2 ^ (∏ p ∈ Nat.primeFactors (f3 n), (2 * Nat.factorization (f3 n) p + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053648.P15040821557914123156

/-!
# A053649: Start with the prime 11; next prime must exceed previous prime, contain no 0's and start with last digit of previous prime.

The programs for A053649, there is no canonical definition to state claims against.
-/

/-! ## A053649.P1074309296631681864

`A109650(A026580(n))`
-/

namespace A053649.P1074309296631681864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109650 (A026580 n).toNat

end

end A053649.P1074309296631681864

/-!
# A053650: Cototient function of n^2.

The programs for A053650, the canonical program `A053650.P6469571087341810863` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053650 has offset 1).

The definition of A053650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053650.P6469571087341810863

`(n+1)*A051953(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053650

/-- `(n+1)*A051953(n+1)` -/
def P6469571087341810863.Spec : Prop :=
  ∀ n, P6469571087341810863.a n = A053650 (n + 1)

theorem P6469571087341810863.correct : P6469571087341810863.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel]

end A053650

/-! ## A053650.P16436588177725593929

`(n+1)²-A002618(n+1)`
-/

namespace A053650.P16436588177725593929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A002618 (n + 1)

end

end A053650.P16436588177725593929

namespace A053650

/-- `(n+1)²-A002618(n+1)` -/
def P16436588177725593929.Spec : Prop :=
  ∀ n, P16436588177725593929.a n = A053650 (n + 1)

theorem P16436588177725593929.correct : P16436588177725593929.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P16436588177725593929.a, A053650.P6469571087341810863.a, A002618, A002618.P8397693677428532773.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P4427901620824092068

`(n+1)*(n+1-A000010(n+1))`
-/

namespace A053650.P4427901620824092068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A000010 (n + 1))

end

end A053650.P4427901620824092068

namespace A053650

/-- `(n+1)*(n+1-A000010(n+1))` -/
def P4427901620824092068.Spec : Prop :=
  ∀ n, P4427901620824092068.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P5165299780537842590

`(n+1)²-A000010((n+1)²)`
-/

namespace A053650.P5165299780537842590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 ((n + 1) ^ 2)

end

end A053650.P5165299780537842590

namespace A053650

/-- `(n+1)²-A000010((n+1)²)` -/
def P5165299780537842590.Spec : Prop :=
  ∀ n, P5165299780537842590.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P536298039882234345

`A051953(A000290(n+1))`
-/

namespace A053650.P536298039882234345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000290 (n + 1)).toNat

end

end A053650.P536298039882234345

namespace A053650

/-- `A051953(A000290(n+1))` -/
def P536298039882234345.Spec : Prop :=
  ∀ n, P536298039882234345.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P3360640617239657643

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)`
-/

namespace A053650.P3360640617239657643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * (n + 1 : ℚ)

end

end A053650.P3360640617239657643

namespace A053650

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)` -/
def P3360640617239657643.Spec : Prop :=
  ∀ n, P3360640617239657643.a n = (A053650 (n + 1) : ℚ)

end A053650

/-! ## A053650.P10280031086130904948

`A053192(n+1)/(n+1)`
-/

namespace A053650.P10280031086130904948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053192 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053650.P10280031086130904948

namespace A053650

/-- `A053192(n+1)/(n+1)` -/
def P10280031086130904948.Spec : Prop :=
  ∀ n, P10280031086130904948.a n = (A053650 (n + 1) : ℚ)

end A053650

/-! ## A053650.P2401099740590190267

`(n+1)²-Δ[A240877(n)]`
-/

namespace A053650.P2401099740590190267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A053650.P2401099740590190267

namespace A053650

/-- `(n+1)²-Δ[A240877(n)]` -/
def P2401099740590190267.Spec : Prop :=
  ∀ n, P2401099740590190267.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P11629607633152586464

`(n+1)*(A219428(n+1)+1)`
-/

namespace A053650.P11629607633152586464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A219428 (n + 1) + 1)

end

end A053650.P11629607633152586464

namespace A053650

/-- `(n+1)*(A219428(n+1)+1)` -/
def P11629607633152586464.Spec : Prop :=
  ∀ n, P11629607633152586464.a n = A053650 (n + 1)

theorem P11629607633152586464.correct : P11629607633152586464.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P11629607633152586464.a, A053650.P6469571087341810863.a, A051953, A051953.P11179276897610979764.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P15021840415213131169

`(n+1)*(n-A109606(n+1))`
-/

namespace A053650.P15021840415213131169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A109606 (n + 1))

end

end A053650.P15021840415213131169

namespace A053650

/-- `(n+1)*(n-A109606(n+1))` -/
def P15021840415213131169.Spec : Prop :=
  ∀ n, P15021840415213131169.a n = A053650 (n + 1)

theorem P15021840415213131169.correct : P15021840415213131169.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P15021840415213131169.a, A053650.P6469571087341810863.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P11966879482201467982

`n*(n+2)-A046151(n+1)`
-/

namespace A053650.P11966879482201467982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A046151 (n + 1)

end

end A053650.P11966879482201467982

namespace A053650

/-- `n*(n+2)-A046151(n+1)` -/
def P11966879482201467982.Spec : Prop :=
  ∀ n, P11966879482201467982.a n = A053650 (n + 1)

theorem P11966879482201467982.correct : P11966879482201467982.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P11966879482201467982.a, A053650.P6469571087341810863.a, A046151, A046151.P159560385155613916.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P12689228274624006630

`(n+1)*(A053158(n+1)-(n+1))`
-/

namespace A053650.P12689228274624006630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053158 (n + 1) - (n + 1 : ℤ))

end

end A053650.P12689228274624006630

namespace A053650

/-- `(n+1)*(A053158(n+1)-(n+1))` -/
def P12689228274624006630.Spec : Prop :=
  ∀ n, P12689228274624006630.a n = A053650 (n + 1)

theorem P12689228274624006630.correct : P12689228274624006630.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P12689228274624006630.a, A053650.P6469571087341810863.a, A051953, A051953.P11179276897610979764.a, A053158, A053158.P11533641159092355549.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P6442878756792078158

`A069249(n+1)+A007517(n+1)`
-/

namespace A053650.P6442878756792078158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1) + A007517 (n + 1)

end

end A053650.P6442878756792078158

namespace A053650

/-- `A069249(n+1)+A007517(n+1)` -/
def P6442878756792078158.Spec : Prop :=
  ∀ n, P6442878756792078158.a n = A053650 (n + 1)

theorem P6442878756792078158.correct : P6442878756792078158.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P6442878756792078158.a, A053650.P6469571087341810863.a, A007517, A007517.P15231311022357601297.a, A051953, A051953.P11179276897610979764.a, A069249, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P9599933781479871815

`A308473(n+1)+A067392(n+1)`
-/

namespace A053650.P9599933781479871815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308473 (n + 1) + A067392 (n + 1)

end

end A053650.P9599933781479871815

namespace A053650

/-- `A308473(n+1)+A067392(n+1)` -/
def P9599933781479871815.Spec : Prop :=
  ∀ n, P9599933781479871815.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P4056017317617175127

`A258434(n+1)-A062955(n+1)`
-/

namespace A053650.P4056017317617175127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (n + 1) - A062955 (n + 1)

end

end A053650.P4056017317617175127

namespace A053650

/-- `A258434(n+1)-A062955(n+1)` -/
def P4056017317617175127.Spec : Prop :=
  ∀ n, P4056017317617175127.a n = A053650 (n + 1)

theorem P4056017317617175127.correct : P4056017317617175127.Spec := by
  intro n
  simp only [A053650, Nat.add_sub_cancel, A053650.P4056017317617175127.a, A053650.P6469571087341810863.a, A051953, A051953.P11179276897610979764.a, A062955, A062955.P10591233305349930181.a, A258434, A258434.P3576622354757452924.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053650

/-! ## A053650.P1552089132787972105

`A009195(n+1)*A052106(n+1)`
-/

namespace A053650.P1552089132787972105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A052106 (n + 1)

end

end A053650.P1552089132787972105

namespace A053650

/-- `A009195(n+1)*A052106(n+1)` -/
def P1552089132787972105.Spec : Prop :=
  ∀ n, P1552089132787972105.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P2092555520659430828

`A102631(n+1)*A318305(n+1)`
-/

namespace A053650.P2092555520659430828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A318305 (n + 1)

end

end A053650.P2092555520659430828

namespace A053650

/-- `A102631(n+1)*A318305(n+1)` -/
def P2092555520659430828.Spec : Prop :=
  ∀ n, P2092555520659430828.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P6801373711047531195

`A087156(n+1)+2*A308473(n+1)`
-/

namespace A053650.P6801373711047531195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + 2 * A308473 (n + 1)

end

end A053650.P6801373711047531195

namespace A053650

/-- `A087156(n+1)+2*A308473(n+1)` -/
def P6801373711047531195.Spec : Prop :=
  ∀ n, P6801373711047531195.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P4075122600535973968

`2*A067392(n+1)-A087156(n+1)`
-/

namespace A053650.P4075122600535973968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067392 (n + 1) - A087156 (n + 1)

end

end A053650.P4075122600535973968

namespace A053650

/-- `2*A067392(n+1)-A087156(n+1)` -/
def P4075122600535973968.Spec : Prop :=
  ∀ n, P4075122600535973968.a n = A053650 (n + 1)

end A053650

/-! ## A053650.P8604116996592857539

`A345892(n+1)-A349137(2*n+1)`
-/

namespace A053650.P8604116996592857539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) - A349137 (2 * n + 1)

end

end A053650.P8604116996592857539

namespace A053650

/-- `A345892(n+1)-A349137(2*n+1)` -/
def P8604116996592857539.Spec : Prop :=
  ∀ n, P8604116996592857539.a n = A053650 (n + 1)

end A053650

/-!
# A053651: Number of nonisomorphic cyclic subgroups of general linear group GL(n,2).

The programs for A053651, there is no canonical definition to state claims against.
-/

/-! ## A053651.P1282869901411143292

`A024317(A158165(n+3))-A005044(n)`
-/

namespace A053651.P1282869901411143292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A158165 (n + 3)).toNat - A005044 n

end

end A053651.P1282869901411143292

/-! ## A053651.P4889813268067075580

`A024317(A158176(n+3))-A005044(n)`
-/

namespace A053651.P4889813268067075580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A158176 (n + 3)).toNat - A005044 n

end

end A053651.P4889813268067075580

/-! ## A053651.P3721168946854114168

`A071626(A133726(n+1)+A000041(3*n+1))`
-/

namespace A053651.P3721168946854114168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A133726 (n + 1) + A000041 (3 * n + 1)).toNat

end

end A053651.P3721168946854114168

/-! ## A053651.P14706726565788276311

`A087188(3*n+4)-A025443(A102362(n+1))`
-/

namespace A053651.P14706726565788276311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (3 * n + 4) - A025443 (A102362 (n + 1)).toNat

end

end A053651.P14706726565788276311

/-! ## A053651.P16887255897787697131

`∑[floor(sqrt(A296517(n+3)+1))]`
-/

namespace A053651.P16887255897787697131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A296517 (n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053651.P16887255897787697131

/-!
# A053653: Number of ways to rearrange digits of prime(n)*prime(n+1) to form a prime.

The programs for A053653, there is no canonical definition to state claims against.
-/

/-! ## A053653.P8735587419886371177

`A046810(record[A116570(n)])`
-/

namespace A053653.P8735587419886371177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053653.P8735587419886371177

/-! ## A053653.P1531030766779094851

`A046810(A006094(n+1))`
-/

namespace A053653.P1531030766779094851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A006094 (n + 1)).toNat

end

end A053653.P1531030766779094851

/-! ## A053653.P3548448339741378489

`A046810(A116570(2*n))`
-/

namespace A053653.P3548448339741378489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A116570 (2 * n)).toNat

end

end A053653.P3548448339741378489

/-! ## A053653.P14945952149360994732

`A046810(A033476(Δ[n²]))`
-/

namespace A053653.P14945952149360994732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A033476 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A053653.P14945952149360994732

/-! ## A053653.P12250588861060874238

`A046810(A023523(n+2)-1)`
-/

namespace A053653.P12250588861060874238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A023523 (n + 2) - 1).toNat

end

end A053653.P12250588861060874238

/-!
# A053655: a(n) = (10^n - 1)*(10^(2*n-1) - 1)/81.

The programs for A053655, the canonical program `A053655.P970593827608588111` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053655 has offset 1).

The definition of A053655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053655.P970593827608588111

`(10^(n+1)-1)*(10^(2*(n+1)-1)-1)/81`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053655

/-- `(10^(n+1)-1)*(10^(2*(n+1)-1)-1)/81` -/
def P970593827608588111.Spec : Prop :=
  ∀ n, P970593827608588111.a n = (A053655 (n + 1) : ℚ)

end A053655

/-! ## A053655.P1390204359243209852

`lcm(∑[10*a(n-1)], A100706(n))` with `a(0)=1`
-/

namespace A053655.P1390204359243209852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A100706 n)

end

end A053655.P1390204359243209852

namespace A053655

/-- `lcm(∑[10*a(n-1)], A100706(n))` -/
def P1390204359243209852.Spec : Prop :=
  ∀ n, (P1390204359243209852.a n : ℤ) = A053655 (n + 1)

end A053655

/-! ## A053655.P7857413893535283360

`lcm(floor(10^(2*n+1)/9), ∑[A011557(n)])`
-/

namespace A053655.P7857413893535283360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053655.P7857413893535283360

namespace A053655

/-- `lcm(floor(10^(2*n+1)/9), ∑[A011557(n)])` -/
def P7857413893535283360.Spec : Prop :=
  ∀ n, (P7857413893535283360.a n : ℤ) = A053655 (n + 1)

end A053655

/-! ## A053655.P6235110223933892435

`record[A287468(n)*A290680(n)]`
-/

namespace A053655.P6235110223933892435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n * A290680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053655.P6235110223933892435

namespace A053655

/-- `record[A287468(n)*A290680(n)]` -/
def P6235110223933892435.Spec : Prop :=
  ∀ n, P6235110223933892435.a n = A053655 (n + 1)

end A053655

/-! ## A053655.P7484639692466935447

`A002275(n+1)*A100706(n)`
-/

namespace A053655.P7484639692466935447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A100706 n

end

end A053655.P7484639692466935447

namespace A053655

/-- `A002275(n+1)*A100706(n)` -/
def P7484639692466935447.Spec : Prop :=
  ∀ n, P7484639692466935447.a n = A053655 (n + 1)

end A053655

/-!
# A053656: Number of cyclic graphs with oriented edges on n nodes (up to symmetry of dihedral group).

The programs for A053656, the canonical program `A053656.P15777476116109761211` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053656 has offset 1).

The definition of A053656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053656.P13072469150635201011

`∑{d}[n+1, A066313(#)]`
-/

namespace A053656.P13072469150635201011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066313 d

end

end A053656.P13072469150635201011

namespace A053656

/-- `∑{d}[n+1, A066313(#)]` -/
def P13072469150635201011.Spec : Prop :=
  ∀ n, P13072469150635201011.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P15777476116109761211

`A000029(n+1)-A016116(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053656

/-- `A000029(n+1)-A016116(n)` -/
def P15777476116109761211.Spec : Prop :=
  ∀ n, P15777476116109761211.a n = A053656 (n + 1)

theorem P15777476116109761211.correct : P15777476116109761211.Spec := by
  intro n
  simp only [A053656, Nat.add_sub_cancel]

end A053656

/-! ## A053656.P5701017111952087455

`A059076(n+1)+A016116(n+1)`
-/

namespace A053656.P5701017111952087455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + A016116 (n + 1)

end

end A053656.P5701017111952087455

namespace A053656

/-- `A059076(n+1)+A016116(n+1)` -/
def P5701017111952087455.Spec : Prop :=
  ∀ n, P5701017111952087455.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P8311041678268030294

`A115121(n+1)+A066313(n+1)`
-/

namespace A053656.P8311041678268030294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115121 (n + 1) + A066313 (n + 1)

end

end A053656.P8311041678268030294

namespace A053656

/-- `A115121(n+1)+A066313(n+1)` -/
def P8311041678268030294.Spec : Prop :=
  ∀ n, P8311041678268030294.a n = A053656 (n + 1)

theorem P8311041678268030294.correct : P8311041678268030294.Spec := by
  intro n
  simp only [A053656, Nat.add_sub_cancel, A053656.P8311041678268030294.a, A053656.P15777476116109761211.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A066313, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A115121, A115121.P9466641686521263943.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053656

/-! ## A053656.P13342392085340636292

`A256216(n+1)+A000011(n+1)`
-/

namespace A053656.P13342392085340636292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1) + A000011 (n + 1)

end

end A053656.P13342392085340636292

namespace A053656

/-- `A256216(n+1)+A000011(n+1)` -/
def P13342392085340636292.Spec : Prop :=
  ∀ n, P13342392085340636292.a n = A053656 (n + 1)

theorem P13342392085340636292.correct : P13342392085340636292.Spec := by
  intro n
  simp only [A053656, Nat.add_sub_cancel, A053656.P13342392085340636292.a, A053656.P15777476116109761211.a, A000011, A000011.P276434732339544012.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A256216, A256216.P6411215166490644162.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053656

/-! ## A053656.P18179957656947448284

`A000029(n+1)-Δ[A029744(n+2)]`
-/

namespace A053656.P18179957656947448284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - (f1 (n + 1) - f1 n)

end

end A053656.P18179957656947448284

namespace A053656

/-- `A000029(n+1)-Δ[A029744(n+2)]` -/
def P18179957656947448284.Spec : Prop :=
  ∀ n, P18179957656947448284.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P10976625011694410167

`A256217(n+1)+2*A256216(n+1)`
-/

namespace A053656.P10976625011694410167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (n + 1) + 2 * A256216 (n + 1)

end

end A053656.P10976625011694410167

namespace A053656

/-- `A256217(n+1)+2*A256216(n+1)` -/
def P10976625011694410167.Spec : Prop :=
  ∀ n, P10976625011694410167.a n = A053656 (n + 1)

theorem P10976625011694410167.correct : P10976625011694410167.Spec := by
  intro n
  simp only [A053656, Nat.add_sub_cancel, A053656.P10976625011694410167.a, A053656.P15777476116109761211.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A256216, A256216.P6411215166490644162.a, A256217, A256217.P4640912278790756071.a, A000011, A000011.P276434732339544012.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053656

/-! ## A053656.P16979998793600729146

`A000029(n+1)+A059053(n)-A000011(n)`
-/

namespace A053656.P16979998793600729146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A059053 n - A000011 n)

end

end A053656.P16979998793600729146

namespace A053656

/-- `A000029(n+1)+A059053(n)-A000011(n)` -/
def P16979998793600729146.Spec : Prop :=
  ∀ n, P16979998793600729146.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P8891624351760024997

`A000029(n+1)+A052955(n)-A052955(n+1)`
-/

namespace A053656.P8891624351760024997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A052955 n - A052955 (n + 1))

end

end A053656.P8891624351760024997

namespace A053656

/-- `A000029(n+1)+A052955(n)-A052955(n+1)` -/
def P8891624351760024997.Spec : Prop :=
  ∀ n, P8891624351760024997.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P7493167236712761516

`A027383(n+1)+A059076(n+1)-A027383(n)`
-/

namespace A053656.P7493167236712761516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) + (A059076 (n + 1) - A027383 n)

end

end A053656.P7493167236712761516

namespace A053656

/-- `A027383(n+1)+A059076(n+1)-A027383(n)` -/
def P7493167236712761516.Spec : Prop :=
  ∀ n, P7493167236712761516.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P11873155290344215422

`A000011(n+1)+A059076(n+1)-A059053(n+1)`
-/

namespace A053656.P11873155290344215422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059076 (n + 1) - A059053 (n + 1))

end

end A053656.P11873155290344215422

namespace A053656

/-- `A000011(n+1)+A059076(n+1)-A059053(n+1)` -/
def P11873155290344215422.Spec : Prop :=
  ∀ n, P11873155290344215422.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P17185901197020250405

`A000029(n+1)+A164090(n+1)-A063759(n+1)`
-/

namespace A053656.P17185901197020250405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A164090 (n + 1) - A063759 (n + 1))

end

end A053656.P17185901197020250405

namespace A053656

/-- `A000029(n+1)+A164090(n+1)-A063759(n+1)` -/
def P17185901197020250405.Spec : Prop :=
  ∀ n, P17185901197020250405.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P11891149622768052752

`A000011(n+1)+A000011(n+1)-A256217(n+1)`
-/

namespace A053656.P11891149622768052752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A000011 (n + 1) - A256217 (n + 1))

end

end A053656.P11891149622768052752

namespace A053656

/-- `A000011(n+1)+A000011(n+1)-A256217(n+1)` -/
def P11891149622768052752.Spec : Prop :=
  ∀ n, P11891149622768052752.a n = A053656 (n + 1)

theorem P11891149622768052752.correct : P11891149622768052752.Spec := by
  intro n
  simp only [A053656, Nat.add_sub_cancel, A053656.P11891149622768052752.a, A053656.P15777476116109761211.a, A000011, A000011.P276434732339544012.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A256217, A256217.P4640912278790756071.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A029744, A029744.P1115822501332250061.a, A059076, A059076.P1559801332482280449.a, A256216, A256216.P6411215166490644162.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053656

/-! ## A053656.P1221464109355926908

`A000029(n+1)+A164090(n+1)-A163978(n+1)`
-/

namespace A053656.P1221464109355926908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A164090 (n + 1) - A163978 (n + 1))

end

end A053656.P1221464109355926908

namespace A053656

/-- `A000029(n+1)+A164090(n+1)-A163978(n+1)` -/
def P1221464109355926908.Spec : Prop :=
  ∀ n, P1221464109355926908.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P8218414685919149977

`A000029(n+1)+A029744(n+2)-A063759(n+1)`
-/

namespace A053656.P8218414685919149977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A029744 (n + 2) - A063759 (n + 1))

end

end A053656.P8218414685919149977

namespace A053656

/-- `A000029(n+1)+A029744(n+2)-A063759(n+1)` -/
def P8218414685919149977.Spec : Prop :=
  ∀ n, P8218414685919149977.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P11282031521455108619

`A000029(n+1)+A029744(n+2)-A163978(n+1)`
-/

namespace A053656.P11282031521455108619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A029744 (n + 2) - A163978 (n + 1))

end

end A053656.P11282031521455108619

namespace A053656

/-- `A000029(n+1)+A029744(n+2)-A163978(n+1)` -/
def P11282031521455108619.Spec : Prop :=
  ∀ n, P11282031521455108619.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P8535088145992582185

`A000029(n+1)+A164090(n+1)-A164090(n+2)`
-/

namespace A053656.P8535088145992582185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A164090 (n + 1) - A164090 (n + 2))

end

end A053656.P8535088145992582185

namespace A053656

/-- `A000029(n+1)+A164090(n+1)-A164090(n+2)` -/
def P8535088145992582185.Spec : Prop :=
  ∀ n, P8535088145992582185.a n = A053656 (n + 1)

end A053656

/-! ## A053656.P14205890145697894277

`A091696(n+1)+A000051(n)-A005418(n+2)`
-/

namespace A053656.P14205890145697894277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) + (A000051 n - A005418 (n + 2))

end

end A053656.P14205890145697894277

namespace A053656

/-- `A091696(n+1)+A000051(n)-A005418(n+2)` -/
def P14205890145697894277.Spec : Prop :=
  ∀ n, P14205890145697894277.a n = A053656 (n + 1)

end A053656

/-!
# A053657: a(n) = Product_{p prime} p^{ Sum_{k>=0} floor[(n-1)/((p-1)p^k)]}.

The programs for A053657, there is no canonical definition to state claims against.
-/

/-! ## A053657.P3375377693468821588

`n!*A001898(n)`
-/

namespace A053657.P3375377693468821588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001898 n

end

end A053657.P3375377693468821588

/-! ## A053657.P1348090679669235906

`a(n-1)*A185633(n)` with `a(0)=1`
-/

namespace A053657.P1348090679669235906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A185633 n

end

end A053657.P1348090679669235906

/-! ## A053657.P12838220961890803687

`lcm(a(n-1), A055535(n))` with `a(0)=1`
-/

namespace A053657.P12838220961890803687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A055535 n)

end

end A053657.P12838220961890803687

/-! ## A053657.P18120452141099879442

`A000142(n)*A001898(n)`
-/

namespace A053657.P18120452141099879442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001898 n

end

end A053657.P18120452141099879442

/-! ## A053657.P9036879752630908015

`Δ[A007489(n)]*A163176(n+1)`
-/

namespace A053657.P9036879752630908015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A163176 (n + 1)

end

end A053657.P9036879752630908015

/-! ## A053657.P11962737470127486097

`A000142(n+1)*A163176(n+1)`
-/

namespace A053657.P11962737470127486097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A163176 (n + 1)

end

end A053657.P11962737470127486097

/-! ## A053657.P2319794982718631790

`∏[A185633(n+1)]/A185633(n+1)`
-/

namespace A053657.P2319794982718631790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A185633 (n + 1) : ℚ)

end

end A053657.P2319794982718631790

/-!
# A053658: Number of nonisomorphic cyclic subgroups of general linear group GL(n,3).

The programs for A053658, there is no canonical definition to state claims against.
-/

/-! ## A053658.P16710334059744478758

`xor(3, A320056(A117144(3*(n+1))))`
-/

namespace A053658.P16710334059744478758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A320056 (A117144 (3 * (n + 1))).toNat)

end

end A053658.P16710334059744478758

/-!
# A053659: Positions where 0 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053659, there is no canonical definition to state claims against.
-/

/-! ## A053659.P17344087498754092257

`eq[0, A001113(n)]`
-/

namespace A053659.P17344087498754092257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P17344087498754092257

/-! ## A053659.P12478947765896451880

`lt[A001113(n+1), 1]+1`
-/

namespace A053659.P12478947765896451880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053659.P12478947765896451880

/-! ## A053659.P6031358005512768790

`A054276(n+1)-1`
-/

namespace A053659.P6031358005512768790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054276 (n + 1) - 1

end

end A053659.P6031358005512768790

/-! ## A053659.P17416641814004335976

`eq[0, A086996(n)]`
-/

namespace A053659.P17416641814004335976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P17416641814004335976

/-! ## A053659.P3938213622098600433

`eq[0, A091131(n)]`
-/

namespace A053659.P3938213622098600433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P3938213622098600433

/-! ## A053659.P35678422672695889

`eq[9, A121239(n)]`
-/

namespace A053659.P35678422672695889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P35678422672695889

/-! ## A053659.P2991560859594750591

`eq[0, A086997(n+1)]`
-/

namespace A053659.P2991560859594750591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P2991560859594750591

/-! ## A053659.P10996763500373267531

`lt[A086997(n+2), 1]+1`
-/

namespace A053659.P10996763500373267531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053659.P10996763500373267531

/-! ## A053659.P8858882560183730024

`A023443(A054276(n+1))`
-/

namespace A053659.P8858882560183730024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054276 (n + 1)).toNat

end

end A053659.P8858882560183730024

/-! ## A053659.P14140541408149831799

`eq[A000796(n), A073212(n)]`
-/

namespace A053659.P14140541408149831799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P14140541408149831799

/-! ## A053659.P2876579691188984152

`eq[A000796(n), A187747(n)]`
-/

namespace A053659.P2876579691188984152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P2876579691188984152

/-! ## A053659.P8669799727122210093

`eq[A073212(n), A187747(n)]`
-/

namespace A053659.P8669799727122210093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P8669799727122210093

/-! ## A053659.P8808163919053997491

`lt[A001113(n), A057427(n)]`
-/

namespace A053659.P8808163919053997491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053659.P8808163919053997491

/-! ## A053659.P12352349031140434255

`eq[A187747(n), A231325(n+1)]`
-/

namespace A053659.P12352349031140434255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P12352349031140434255

/-! ## A053659.P10794833070215720281

`eq[A073212(n)+1, A123152(n+1)]`
-/

namespace A053659.P10794833070215720281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P10794833070215720281

/-! ## A053659.P18055059228988920758

`eq[0, A110779(2*n+1)]`
-/

namespace A053659.P18055059228988920758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P18055059228988920758

/-! ## A053659.P1179166159764350268

`eq[1, exp(A001355(2*(n+1)))]`
-/

namespace A053659.P1179166159764350268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A001355 (2 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A053659.P1179166159764350268

/-! ## A053659.P12935641442227849927

`eq[1, A001355(A103517(n))+1]`
-/

namespace A053659.P12935641442227849927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A103517 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053659.P12935641442227849927

/-! ## A053659.P3633249249523892365

`eq[A000007(n), A001355(2*(n+1))]`
-/

namespace A053659.P3633249249523892365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053659.P3633249249523892365

/-! ## A053659.P18088991845034831857

`lt[A001113(n), tanh(A008617(n))]`
-/

namespace A053659.P18088991845034831857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A008617 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A053659.P18088991845034831857

/-!
# A053661: For n > 1: if n is present, 2n is not.

The programs for A053661, the canonical program `A053661.P16695447516172805731` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053661 has offset 1).

The definition of A053661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053661.P16695447516172805731

`lt[1-(a(n-1)+a(floor(n/2))), 1]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053661

/-- `lt[1-(a(n-1)+a(floor(n/2))), 1]` -/
def P16695447516172805731.Spec : Prop :=
  ∀ n, (P16695447516172805731.a n : ℤ) = A053661 (n + 1)

theorem P16695447516172805731.correct : P16695447516172805731.Spec := by
  intro n
  simp only [A053661, Nat.add_sub_cancel]

end A053661

/-! ## A053661.P12480127210214739124

`comp[∑[A023630(n+1)]]+1`
-/

namespace A053661.P12480127210214739124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023630 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053661.P12480127210214739124

namespace A053661

/-- `comp[∑[A023630(n+1)]]+1` -/
def P12480127210214739124.Spec : Prop :=
  ∀ n, (P12480127210214739124.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P3825702199470482071

`a(n-1)+A217586(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A053661.P3825702199470482071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A217586 (a (n - 1) + 1).toNat + 1)

end

end A053661.P3825702199470482071

namespace A053661

/-- `a(n-1)+A217586(a(n-1)+1)+1` -/
def P3825702199470482071.Spec : Prop :=
  ∀ n, P3825702199470482071.a n = A053661 (n + 1)

end A053661

/-! ## A053661.P12666358192191331407

`eq[A039982(2*n), A039982(4*n)]+1`
-/

namespace A053661.P12666358192191331407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053661.P12666358192191331407

namespace A053661

/-- `eq[A039982(2*n), A039982(4*n)]+1` -/
def P12666358192191331407.Spec : Prop :=
  ∀ n, (P12666358192191331407.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P10414117136080568839

`(lt[0, A217586(n+1)]+1)/A284011(A020639(n+1))`
-/

namespace A053661.P10414117136080568839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A284011 (A020639 (n + 1)).toNat : ℚ)

end

end A053661.P10414117136080568839

namespace A053661

/-- `(lt[0, A217586(n+1)]+1)/A284011(A020639(n+1))` -/
def P10414117136080568839.Spec : Prop :=
  ∀ n, P10414117136080568839.a n = (A053661 (n + 1) : ℚ)

end A053661

/-! ## A053661.P4254005921729757160

`comp[2*A175880(n+2)]`
-/

namespace A053661.P4254005921729757160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175880 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053661.P4254005921729757160

namespace A053661

/-- `comp[2*A175880(n+2)]` -/
def P4254005921729757160.Spec : Prop :=
  ∀ n, (P4254005921729757160.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P9697947472978279887

`eq[1, A010231(A091090(n))]+1`
-/

namespace A053661.P9697947472978279887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010231 (A091090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053661.P9697947472978279887

namespace A053661

/-- `eq[1, A010231(A091090(n))]+1` -/
def P9697947472978279887.Spec : Prop :=
  ∀ n, (P9697947472978279887.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P1853384759985113054

`record[A175880(n+1)]`
-/

namespace A053661.P1853384759985113054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053661.P1853384759985113054

namespace A053661

/-- `record[A175880(n+1)]` -/
def P1853384759985113054.Spec : Prop :=
  ∀ n, P1853384759985113054.a n = A053661 (n + 1)

end A053661

/-! ## A053661.P8987435399427540698

`eq[1, A040071(A241235(n+1))]+1`
-/

namespace A053661.P8987435399427540698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 (A241235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053661.P8987435399427540698

namespace A053661

/-- `eq[1, A040071(A241235(n+1))]+1` -/
def P8987435399427540698.Spec : Prop :=
  ∀ n, (P8987435399427540698.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P56398631570623489

`lt[A000035(n), A175880(n+1)]+1`
-/

namespace A053661.P56398631570623489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053661.P56398631570623489

namespace A053661

/-- `lt[A000035(n), A175880(n+1)]+1` -/
def P56398631570623489.Spec : Prop :=
  ∀ n, (P56398631570623489.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P12239450913001818234

`A175880(eq[n+1, A175880(n+1)]+1)`
-/

namespace A053661.P12239450913001818234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053661.P12239450913001818234

namespace A053661

/-- `A175880(eq[n+1, A175880(n+1)]+1)` -/
def P12239450913001818234.Spec : Prop :=
  ∀ n, P12239450913001818234.a n = A053661 (n + 1)

end A053661

/-! ## A053661.P12533732508033224434

`lt[A268728(n+1), A175880(n+1)]+1`
-/

namespace A053661.P12533732508033224434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053661.P12533732508033224434

namespace A053661

/-- `lt[A268728(n+1), A175880(n+1)]+1` -/
def P12533732508033224434.Spec : Prop :=
  ∀ n, (P12533732508033224434.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P11595211992349439507

`record[(n+1)/A241235(A241235(n+1)+2)]`
-/

namespace A053661.P11595211992349439507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A241235 (A241235 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053661.P11595211992349439507

namespace A053661

/-- `record[(n+1)/A241235(A241235(n+1)+2)]` -/
def P11595211992349439507.Spec : Prop :=
  ∀ n, P11595211992349439507.a n = (A053661 (n + 1) : ℚ)

end A053661

/-! ## A053661.P12850162915696796179

`eq[A255309(n), A284948(n+1)]`
-/

namespace A053661.P12850162915696796179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053661.P12850162915696796179

namespace A053661

/-- `eq[A255309(n), A284948(n+1)]` -/
def P12850162915696796179.Spec : Prop :=
  ∀ n, (P12850162915696796179.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P6765564506133119102

`eq[A267579(n), A285383(n+1)]`
-/

namespace A053661.P6765564506133119102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053661.P6765564506133119102

namespace A053661

/-- `eq[A267579(n), A285383(n+1)]` -/
def P6765564506133119102.Spec : Prop :=
  ∀ n, (P6765564506133119102.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P13282312609988476188

`record[A039982(n+1)+A028242(n+1)]`
-/

namespace A053661.P13282312609988476188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (n + 1) + A028242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053661.P13282312609988476188

namespace A053661

/-- `record[A039982(n+1)+A028242(n+1)]` -/
def P13282312609988476188.Spec : Prop :=
  ∀ n, P13282312609988476188.a n = A053661 (n + 1)

end A053661

/-! ## A053661.P10838922689181559804

`eq[1, A039984(2*n+1)]+1`
-/

namespace A053661.P10838922689181559804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039984 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053661.P10838922689181559804

namespace A053661

/-- `eq[1, A039984(2*n+1)]+1` -/
def P10838922689181559804.Spec : Prop :=
  ∀ n, (P10838922689181559804.a n : ℤ) = A053661 (n + 1)

end A053661

/-! ## A053661.P15910772062686520425

`A008619(record[n*A039982(2*n)])`
-/

namespace A053661.P15910772062686520425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A039982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053661.P15910772062686520425

namespace A053661

/-- `A008619(record[n*A039982(2*n)])` -/
def P15910772062686520425.Spec : Prop :=
  ∀ n, P15910772062686520425.a n = A053661 (n + 1)

end A053661

/-!
# A053662: Numbers k such that 2k+1 divides k!+1.

The programs for A053662, there is no canonical definition to state claims against.
-/

/-! ## A053662.P6239944202950079861

`floor(A055939(n+1)/2)`
-/

namespace A053662.P6239944202950079861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055939 (n + 1) : ℚ) / 2⌋

end

end A053662.P6239944202950079861

/-! ## A053662.P16779338627764302851

`2*A066159(n+1)-1`
-/

namespace A053662.P16779338627764302851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066159 (n + 1) - 1

end

end A053662.P16779338627764302851

/-! ## A053662.P4589047698116605410

`record[lcm(2, A067241(n+1))/2]`
-/

namespace A053662.P4589047698116605410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A067241 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053662.P4589047698116605410

/-! ## A053662.P16378718042124464765

`A067241(A326178(n+1))`
-/

namespace A053662.P16378718042124464765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (A326178 (n + 1)).toNat

end

end A053662.P16378718042124464765

/-! ## A053662.P16616656529919237395

`∩[A067241(n+1), A104635(n+1)]`
-/

namespace A053662.P16616656529919237395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053662.P16616656529919237395

/-! ## A053662.P13024399878703496673

`filter[A067241(n+1), A035263(#)]`
-/

namespace A053662.P13024399878703496673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A053662.P13024399878703496673

/-! ## A053662.P2439135447299977953

`filter[A067241(n+1), A039982(#)]`
-/

namespace A053662.P2439135447299977953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A053662.P2439135447299977953

/-! ## A053662.P11446885882359824927

`filter[A067241(n+1), A093719(#)]`
-/

namespace A053662.P11446885882359824927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A053662.P11446885882359824927

/-! ## A053662.P1873869657039096836

`filter[A067241(n+1), A098725(#)]`
-/

namespace A053662.P1873869657039096836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A053662.P1873869657039096836

/-! ## A053662.P17516648603701211388

`filter[A067241(n+1), A115971(#)]`
-/

namespace A053662.P17516648603701211388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A053662.P17516648603701211388

/-! ## A053662.P1377940507403325533

`filter[A067241(n+1), A127254(#)]`
-/

namespace A053662.P1377940507403325533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A053662.P1377940507403325533

/-! ## A053662.P5414756068954764715

`filter[A067241(n+1), A166486(#)]`
-/

namespace A053662.P5414756068954764715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A053662.P5414756068954764715

/-! ## A053662.P13123886091293963021

`filter[A067241(n+1), A254651(#)]`
-/

namespace A053662.P13123886091293963021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A053662.P13123886091293963021

/-! ## A053662.P13088952435017405249

`A000265(A055939(n+1)-1)`
-/

namespace A053662.P13088952435017405249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055939 (n + 1) - 1).toNat

end

end A053662.P13088952435017405249

/-! ## A053662.P11376114846945020666

`∩[A047270(n+1), A067241(n+1)]`
-/

namespace A053662.P11376114846945020666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053662.P11376114846945020666

/-! ## A053662.P7928973333965363960

`∩[A067241(n+1), A368917(n+1)]`
-/

namespace A053662.P7928973333965363960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053662.P7928973333965363960

/-! ## A053662.P1740182059409286037

`A004273(A066159(n+1))`
-/

namespace A053662.P1740182059409286037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A066159 (n + 1)).toNat

end

end A053662.P1740182059409286037

/-! ## A053662.P13065988973628093239

`A005408(A066159(n+1)-1)`
-/

namespace A053662.P13065988973628093239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A066159 (n + 1) - 1).toNat

end

end A053662.P13065988973628093239

/-! ## A053662.P12607080481869982483

`∩[A067241(n+1), A004273(n)]`
-/

namespace A053662.P12607080481869982483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053662.P12607080481869982483

/-!
# A053663: Numbers k such that 2*k+1 does not divide k!+1.

The programs for A053663, there is no canonical definition to state claims against.
-/

/-! ## A053663.P554978137773763750

`comp[2*A066159(n+1)-2]+1`
-/

namespace A053663.P554978137773763750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066159 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053663.P554978137773763750

/-! ## A053663.P9134066677617816136

`∑[char[A053662(n+1)-(n+1)]+1]`
-/

namespace A053663.P9134066677617816136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053662 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053663.P9134066677617816136

/-! ## A053663.P12218653176867860040

`eq[char[A053662(n+1)], A000007(n)]`
-/

namespace A053663.P12218653176867860040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053663.P12218653176867860040

/-! ## A053663.P4387199005585269703

`eq[char[A053662(n+1)], A000038(n)]`
-/

namespace A053663.P4387199005585269703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053663.P4387199005585269703

/-! ## A053663.P12759337456698243494

`eq[char[A053662(n+1)], A151933(n)]`
-/

namespace A053663.P12759337456698243494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053663.P12759337456698243494

/-! ## A053663.P11530358857202142156

`lt[n!%(2*n+1), 2*n]`
-/

namespace A053663.P11530358857202142156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053663.P11530358857202142156

/-! ## A053663.P6451754164411812564

`lt[gcd(2*n+1, n!+1), n+1]`
-/

namespace A053663.P6451754164411812564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (Nat.factorial n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053663.P6451754164411812564

/-!
# A053664: Smallest number m such that m == i (mod prime(i)) for all 1<=i<=n.

The programs for A053664, there is no canonical definition to state claims against.
-/

/-! ## A053664.P7870415265895440441

`A187930(n+1)+1`
-/

namespace A053664.P7870415265895440441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187930 (n + 1) + 1

end

end A053664.P7870415265895440441

/-! ## A053664.P16296891691165181207

`A075307(n+1)-A000038(n)`
-/

namespace A053664.P16296891691165181207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075307 (n + 1) - A000038 n

end

end A053664.P16296891691165181207

/-! ## A053664.P5703509730371458715

`A002110(n+1)-A073605(n+1)`
-/

namespace A053664.P5703509730371458715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A073605 (n + 1)

end

end A053664.P5703509730371458715

/-! ## A053664.P5300978355897205559

`A006862(n+1)-A069561(n+1)`
-/

namespace A053664.P5300978355897205559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (n + 1) - A069561 (n + 1)

end

end A053664.P5300978355897205559

/-! ## A053664.P12485716659824500746

`A075307(n+1)%Δ[A075271(n)]`
-/

namespace A053664.P12485716659824500746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075307 (n + 1)) (f1 (n + 1) - f1 n)

end

end A053664.P12485716659824500746

/-!
# A053665: Smallest number m such that m = j^2 (mod prime(j)) for 1 <= j <= n.

The programs for A053665, there is no canonical definition to state claims against.
-/

/-! ## A053665.P12822901660121660940

`A002110(n+1)-A083418(n+1)`
-/

namespace A053665.P12822901660121660940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A083418 (n + 1)

end

end A053665.P12822901660121660940

/-! ## A053665.P13607964031159220076

`∏[A000040(n+1)]-A083418(n+1)`
-/

namespace A053665.P13607964031159220076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A083418 (n + 1)

end

end A053665.P13607964031159220076

/-! ## A053665.P13753199460635578675

`A053664(n+1)²%A002110(n+1)`
-/

namespace A053665.P13753199460635578675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053664 (n + 1) ^ 2) (A002110 (n + 1))

end

end A053665.P13753199460635578675

/-! ## A053665.P10159395588004544320

`A075307(n+1)²%A002110(n+1)`
-/

namespace A053665.P10159395588004544320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075307 (n + 1) ^ 2) (A002110 (n + 1))

end

end A053665.P10159395588004544320

/-! ## A053665.P11848548273852709999

`A073605(n+1)²%A002110(n+1)`
-/

namespace A053665.P11848548273852709999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073605 (n + 1) ^ 2) (A002110 (n + 1))

end

end A053665.P11848548273852709999

/-!
# A053666: Product of digits of n-th prime.

The programs for A053666, the canonical program `A053666.P18378645910674080637` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053666 has offset 1).

The definition of A053666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053666.P5884905316640383462

`∏{digits}[Δ[A007504(n)], #]`
-/

namespace A053666.P5884905316640383462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P5884905316640383462

namespace A053666

/-- `∏{digits}[Δ[A007504(n)], #]` -/
def P5884905316640383462.Spec : Prop :=
  ∀ n, (P5884905316640383462.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P18378645910674080637

`∏{digits}[A000040(n+1), #]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053666

/-- `∏{digits}[A000040(n+1), #]` -/
def P18378645910674080637.Spec : Prop :=
  ∀ n, (P18378645910674080637.a n : ℤ) = A053666 (n + 1)

theorem P18378645910674080637.correct : P18378645910674080637.Spec := by
  intro n
  simp only [A053666, Nat.add_sub_cancel]

end A053666

/-! ## A053666.P16046459840568814506

`∏{digits}[A004087(n+1), #]`
-/

namespace A053666.P16046459840568814506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P16046459840568814506

namespace A053666

/-- `∏{digits}[A004087(n+1), #]` -/
def P16046459840568814506.Spec : Prop :=
  ∀ n, (P16046459840568814506.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P6528641961918165577

`∏{digits}[A028906(n+1), #]`
-/

namespace A053666.P6528641961918165577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P6528641961918165577

namespace A053666

/-- `∏{digits}[A028906(n+1), #]` -/
def P6528641961918165577.Spec : Prop :=
  ∀ n, (P6528641961918165577.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P9432605900096357526

`∏{digits}[A039790(n+1), #]`
-/

namespace A053666.P9432605900096357526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P9432605900096357526

namespace A053666

/-- `∏{digits}[A039790(n+1), #]` -/
def P9432605900096357526.Spec : Prop :=
  ∀ n, (P9432605900096357526.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P2010322101742421614

`∏{digits}[A273960(n+1), #]`
-/

namespace A053666.P2010322101742421614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P2010322101742421614

namespace A053666

/-- `∏{digits}[A273960(n+1), #]` -/
def P2010322101742421614.Spec : Prop :=
  ∀ n, (P2010322101742421614.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P7705917031151803503

`1-A213394(n+1)+n`
-/

namespace A053666.P7705917031151803503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A213394 (n + 1) + (n : ℤ)

end

end A053666.P7705917031151803503

namespace A053666

/-- `1-A213394(n+1)+n` -/
def P7705917031151803503.Spec : Prop :=
  ∀ n, P7705917031151803503.a n = A053666 (n + 1)

theorem P7705917031151803503.correct : P7705917031151803503.Spec := by
  intro n
  simp only [A053666, Nat.add_sub_cancel, A053666.P7705917031151803503.a, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A213394, A213394.P16098337122954015116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053666

/-! ## A053666.P12050079906147491742

`∏{digits}[A040976(n+1)+2, #]`
-/

namespace A053666.P12050079906147491742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P12050079906147491742

namespace A053666

/-- `∏{digits}[A040976(n+1)+2, #]` -/
def P12050079906147491742.Spec : Prop :=
  ∀ n, (P12050079906147491742.a n : ℤ) = A053666 (n + 1)

theorem P12050079906147491742.correct : P12050079906147491742.Spec := by
  intro n
  simp only [A053666, Nat.add_sub_cancel, A053666.P12050079906147491742.f1, A053666.P12050079906147491742.a, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053666

/-! ## A053666.P4123143435973700763

`∏{digits}[A100484(n+1)/2, #]`
-/

namespace A053666.P4123143435973700763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P4123143435973700763

namespace A053666

/-- `∏{digits}[A100484(n+1)/2, #]` -/
def P4123143435973700763.Spec : Prop :=
  ∀ n, (P4123143435973700763.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P785490059696224307

`A255005(n+1)-A007605(n+1)`
-/

namespace A053666.P785490059696224307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255005 (n + 1) - A007605 (n + 1)

end

end A053666.P785490059696224307

namespace A053666

/-- `A255005(n+1)-A007605(n+1)` -/
def P785490059696224307.Spec : Prop :=
  ∀ n, P785490059696224307.a n = A053666 (n + 1)

theorem P785490059696224307.correct : P785490059696224307.Spec := by
  intro n
  simp only [A053666, Nat.add_sub_cancel, A053666.P785490059696224307.a, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A255005, A255005.P10936210896201179594.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053666

/-! ## A053666.P16083238916161928227

`lcm(A060420(n+1), A101987(n+1))`
-/

namespace A053666.P16083238916161928227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060420 (n + 1)) (A101987 (n + 1))

end

end A053666.P16083238916161928227

namespace A053666

/-- `lcm(A060420(n+1), A101987(n+1))` -/
def P16083238916161928227.Spec : Prop :=
  ∀ n, (P16083238916161928227.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P5809385909679491824

`∏{digits}[A008578(n+2), #]`
-/

namespace A053666.P5809385909679491824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P5809385909679491824

namespace A053666

/-- `∏{digits}[A008578(n+2), #]` -/
def P5809385909679491824.Spec : Prop :=
  ∀ n, (P5809385909679491824.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P3282072595276698206

`∏{digits}[A182986(n+2), #]`
-/

namespace A053666.P3282072595276698206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P3282072595276698206

namespace A053666

/-- `∏{digits}[A182986(n+2), #]` -/
def P3282072595276698206.Spec : Prop :=
  ∀ n, (P3282072595276698206.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P16166486726206465376

`∏{digits}[A158611(n+3), #]`
-/

namespace A053666.P16166486726206465376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P16166486726206465376

namespace A053666

/-- `∏{digits}[A158611(n+3), #]` -/
def P16166486726206465376.Spec : Prop :=
  ∀ n, (P16166486726206465376.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P11877829452510448753

`∏{digits}[record[A006530(n+2)], #]`
-/

namespace A053666.P11877829452510448753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P11877829452510448753

namespace A053666

/-- `∏{digits}[record[A006530(n+2)], #]` -/
def P11877829452510448753.Spec : Prop :=
  ∀ n, (P11877829452510448753.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P3769469538875342613

`∏{digits}[record[A020639(n+2)], #]`
-/

namespace A053666.P3769469538875342613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P3769469538875342613

namespace A053666

/-- `∏{digits}[record[A020639(n+2)], #]` -/
def P3769469538875342613.Spec : Prop :=
  ∀ n, (P3769469538875342613.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P9787080173519160243

`∏{digits}[record[A000010(n+1)+1], #]`
-/

namespace A053666.P9787080173519160243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P9787080173519160243

namespace A053666

/-- `∏{digits}[record[A000010(n+1)+1], #]` -/
def P9787080173519160243.Spec : Prop :=
  ∀ n, (P9787080173519160243.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P17940543462739332771

`∏{digits}[A067747(2*n+1), #]`
-/

namespace A053666.P17940543462739332771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P17940543462739332771

namespace A053666

/-- `∏{digits}[A067747(2*n+1), #]` -/
def P17940543462739332771.Spec : Prop :=
  ∀ n, (P17940543462739332771.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P17227240560669723618

`∏{digits}[A073846(2*(n+1)), #]`
-/

namespace A053666.P17227240560669723618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P17227240560669723618

namespace A053666

/-- `∏{digits}[A073846(2*(n+1)), #]` -/
def P17227240560669723618.Spec : Prop :=
  ∀ n, (P17227240560669723618.a n : ℤ) = A053666 (n + 1)

end A053666

/-! ## A053666.P7353322372581590175

`∏{digits}[p?[comp[n²]], #]`
-/

namespace A053666.P7353322372581590175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A053666.P7353322372581590175

namespace A053666

/-- `∏{digits}[p?[comp[n²]], #]` -/
def P7353322372581590175.Spec : Prop :=
  ∀ n, (P7353322372581590175.a n : ℤ) = A053666 (n + 1)

end A053666

/-!
# A053667: Product of digits of n^2.

The programs for A053667, the canonical program `A053667.P8788573721861177498` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053667 has offset 0).

The definition of A053667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053667.P8788573721861177498

`A007954(n²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053667

/-- `A007954(n²)` -/
def P8788573721861177498.Spec : Prop :=
  ∀ n, P8788573721861177498.a n = A053667 n

theorem P8788573721861177498.correct : P8788573721861177498.Spec := by
  intro n
  simp only [A053667]

end A053667

/-! ## A053667.P904323351640959134

`∏{digits}[n², #]`
-/

namespace A053667.P904323351640959134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A053667.P904323351640959134

namespace A053667

/-- `∏{digits}[n², #]` -/
def P904323351640959134.Spec : Prop :=
  ∀ n, (P904323351640959134.a n : ℤ) = A053667 n

end A053667

/-! ## A053667.P13180487351194907943

`sqrt(∏{digits}[n^2, #^2])`
-/

namespace A053667.P13180487351194907943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).prod : ℕ) : ℝ)

end

end A053667.P13180487351194907943

namespace A053667

/-- `sqrt(∏{digits}[n^2, #^2])` -/
def P13180487351194907943.Spec : Prop :=
  ∀ n, P13180487351194907943.a n = (A053667 n : ℝ)

end A053667

/-! ## A053667.P11400001142743010047

`or(char[1], ∏{digits}[A000290(n), #])`
-/

namespace A053667.P11400001142743010047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053667.P11400001142743010047

namespace A053667

/-- `or(char[1], ∏{digits}[A000290(n), #])` -/
def P11400001142743010047.Spec : Prop :=
  ∀ n, (P11400001142743010047.a n : ℤ) = A053667 n

end A053667

/-! ## A053667.P6437901000407724540

`∏{digits}[n*n, #]%A010002(n)`
-/

namespace A053667.P6437901000407724540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) (A010002 n)

end

end A053667.P6437901000407724540

namespace A053667

/-- `∏{digits}[n*n, #]%A010002(n)` -/
def P6437901000407724540.Spec : Prop :=
  ∀ n, P6437901000407724540.a n = A053667 n

end A053667

/-! ## A053667.P1749510433345114436

`∏{digits}[A000290(n), #]-A118917(A008805(n))`
-/

namespace A053667.P1749510433345114436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) - A118917 (A008805 n).toNat

end

end A053667.P1749510433345114436

namespace A053667

/-- `∏{digits}[A000290(n), #]-A118917(A008805(n))` -/
def P1749510433345114436.Spec : Prop :=
  ∀ n, P1749510433345114436.a n = A053667 n

end A053667

/-! ## A053667.P16007230633558451968

`abs(A187844(n²))`
-/

namespace A053667.P16007230633558451968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (n ^ 2)|

end

end A053667.P16007230633558451968

namespace A053667

/-- `abs(A187844(n²))` -/
def P16007230633558451968.Spec : Prop :=
  ∀ n, P16007230633558451968.a n = A053667 n

end A053667

/-! ## A053667.P16185979015327823681

`n²-A070565(n²)`
-/

namespace A053667.P16185979015327823681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A070565 (n ^ 2)

end

end A053667.P16185979015327823681

namespace A053667

/-- `n²-A070565(n²)` -/
def P16185979015327823681.Spec : Prop :=
  ∀ n, P16185979015327823681.a n = A053667 n

end A053667

/-! ## A053667.P16582843240883017335

`A230099(n²)-n²`
-/

namespace A053667.P16582843240883017335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n ^ 2) - (n ^ 2 : ℤ)

end

end A053667.P16582843240883017335

namespace A053667

/-- `A230099(n²)-n²` -/
def P16582843240883017335.Spec : Prop :=
  ∀ n, P16582843240883017335.a n = A053667 n

end A053667

/-! ## A053667.P9508049883740107829

`A338830(A338830(A007954(n*n)))`
-/

namespace A053667.P9508049883740107829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338830 (A338830 (A007954 (n * n)).toNat).toNat

end

end A053667.P9508049883740107829

namespace A053667

/-- `A338830(A338830(A007954(n*n)))` -/
def P9508049883740107829.Spec : Prop :=
  ∀ n, P9508049883740107829.a n = A053667 n

end A053667

/-! ## A053667.P6810390173108504471

`A061762(n²)-A004159(n)`
-/

namespace A053667.P6810390173108504471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n ^ 2) - A004159 n

end

end A053667.P6810390173108504471

namespace A053667

/-- `A061762(n²)-A004159(n)` -/
def P6810390173108504471.Spec : Prop :=
  ∀ n, P6810390173108504471.a n = A053667 n

theorem P6810390173108504471.correct : P6810390173108504471.Spec := by
  intro n
  simp only [A053667, Nat.add_sub_cancel, A053667.P6810390173108504471.a, A053667.P8788573721861177498.a, A004159, A004159.P12894520007403696170.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A007953, A007953.P3472751987379697826.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053667

/-! ## A053667.P4744620586794921764

`A098736(n²)/A028310(n²)`
-/

namespace A053667.P4744620586794921764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 (n ^ 2) : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A053667.P4744620586794921764

namespace A053667

/-- `A098736(n²)/A028310(n²)` -/
def P4744620586794921764.Spec : Prop :=
  ∀ n, P4744620586794921764.a n = (A053667 n : ℚ)

end A053667

/-!
# A053668: Product of digits of n^3.

The programs for A053668, the canonical program `A053668.P4825794436022991672` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053668 has offset 0).

The definition of A053668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053668.P4825794436022991672

`A007954(n^3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053668

/-- `A007954(n^3)` -/
def P4825794436022991672.Spec : Prop :=
  ∀ n, P4825794436022991672.a n = A053668 n

theorem P4825794436022991672.correct : P4825794436022991672.Spec := by
  intro n
  simp only [A053668]

end A053668

/-! ## A053668.P9565052920883746113

`∏{digits}[n^3, #]`
-/

namespace A053668.P9565052920883746113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A053668.P9565052920883746113

namespace A053668

/-- `∏{digits}[n^3, #]` -/
def P9565052920883746113.Spec : Prop :=
  ∀ n, (P9565052920883746113.a n : ℤ) = A053668 n

end A053668

/-! ## A053668.P3819687100325225823

`abs(∏{digits}[n*n², -#])`
-/

namespace A053668.P3819687100325225823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x : ℤ)).prod|

end

end A053668.P3819687100325225823

namespace A053668

/-- `abs(∏{digits}[n*n², -#])` -/
def P3819687100325225823.Spec : Prop :=
  ∀ n, P3819687100325225823.a n = A053668 n

theorem P3819687100325225823.correct : P3819687100325225823.Spec := by
  intro n
  simp only [A053668, Nat.add_sub_cancel, A053668.P3819687100325225823.f1, A053668.P3819687100325225823.a, A053668.P4825794436022991672.a, A007954, A007954.P17322577641810457605.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053668

/-! ## A053668.P7229972369341008934

`sqrt(∏{digits}[n*n², #²])`
-/

namespace A053668.P7229972369341008934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).prod : ℕ) : ℝ)

end

end A053668.P7229972369341008934

namespace A053668

/-- `sqrt(∏{digits}[n*n², #²])` -/
def P7229972369341008934.Spec : Prop :=
  ∀ n, P7229972369341008934.a n = (A053668 n : ℝ)

end A053668

/-! ## A053668.P5442017698573389509

`ceil(abs(sin(n)))*∏{digits}[n*n², #]`
-/

namespace A053668.P5442017698573389509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A053668.P5442017698573389509

namespace A053668

/-- `ceil(abs(sin(n)))*∏{digits}[n*n², #]` -/
def P5442017698573389509.Spec : Prop :=
  ∀ n, P5442017698573389509.a n = A053668 n

end A053668

/-! ## A053668.P15468711366658128654

`∏{digits}[n*n², #]+val(2*n+1, 2)%2`
-/

namespace A053668.P15468711366658128654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + SequenceMachineLib.valuation (2 * n + 1) 2 % 2

end

end A053668.P15468711366658128654

namespace A053668

/-- `∏{digits}[n*n², #]+val(2*n+1, 2)%2` -/
def P15468711366658128654.Spec : Prop :=
  ∀ n, (P15468711366658128654.a n : ℤ) = A053668 n

end A053668

/-! ## A053668.P17141273757818068191

`∏{digits}[n*n², #]*A057427(n)`
-/

namespace A053668.P17141273757818068191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) * A057427 n

end

end A053668.P17141273757818068191

namespace A053668

/-- `∏{digits}[n*n², #]*A057427(n)` -/
def P17141273757818068191.Spec : Prop :=
  ∀ n, P17141273757818068191.a n = A053668 n

end A053668

/-! ## A053668.P4587250960222216702

`A001221(A000015(n+1))*∏{digits}[n*n², #]`
-/

namespace A053668.P4587250960222216702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000015 (n + 1)).toNat * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A053668.P4587250960222216702

namespace A053668

/-- `A001221(A000015(n+1))*∏{digits}[n*n², #]` -/
def P4587250960222216702.Spec : Prop :=
  ∀ n, P4587250960222216702.a n = A053668 n

end A053668

/-! ## A053668.P17665287957314474974

`A059841(2*n+1)+∏{digits}[n*n², #]`
-/

namespace A053668.P17665287957314474974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A053668.P17665287957314474974

namespace A053668

/-- `A059841(2*n+1)+∏{digits}[n*n², #]` -/
def P17665287957314474974.Spec : Prop :=
  ∀ n, P17665287957314474974.a n = A053668 n

end A053668

/-! ## A053668.P2853564460278280743

`∏{digits}[A000578(n), #]*A242481(2*n+1)`
-/

namespace A053668.P2853564460278280743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) * A242481 (2 * n + 1)

end

end A053668.P2853564460278280743

namespace A053668

/-- `∏{digits}[A000578(n), #]*A242481(2*n+1)` -/
def P2853564460278280743.Spec : Prop :=
  ∀ n, P2853564460278280743.a n = A053668 n

end A053668

/-! ## A053668.P17674116906423771689

`∏{digits}[n*n², #]%A001994(2*n+1)`
-/

namespace A053668.P17674116906423771689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) (A001994 (2 * n + 1))

end

end A053668.P17674116906423771689

namespace A053668

/-- `∏{digits}[n*n², #]%A001994(2*n+1)` -/
def P17674116906423771689.Spec : Prop :=
  ∀ n, P17674116906423771689.a n = A053668 n

end A053668

/-! ## A053668.P17835843167554896962

`∏{digits}[n*n², #]%A000225(n+3)`
-/

namespace A053668.P17835843167554896962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) (A000225 (n + 3))

end

end A053668.P17835843167554896962

namespace A053668

/-- `∏{digits}[n*n², #]%A000225(n+3)` -/
def P17835843167554896962.Spec : Prop :=
  ∀ n, P17835843167554896962.a n = A053668 n

end A053668

/-!
# A053669: Smallest prime not dividing n.

The programs for A053669, there is no canonical definition to state claims against.
-/

/-! ## A053669.P9416824264459256823

`A071222(n)+1`
-/

namespace A053669.P9416824264459256823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + 1

end

end A053669.P9416824264459256823

/-!
# A053670: Least number coprime to n and n+1.

The programs for A053670, there is no canonical definition to state claims against.
-/

/-! ## A053670.P5362908240591534899

`sqrt(A089091(n+1))`
-/

namespace A053670.P5362908240591534899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089091 (n + 1) : ℝ)

end

end A053670.P5362908240591534899

/-! ## A053670.P7519538115597276494

`A006530(2*A089091(n+1))`
-/

namespace A053670.P7519538115597276494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A089091 (n + 1)).toNat

end

end A053670.P7519538115597276494

/-! ## A053670.P12824475058787126022

`A020639(A053671(2*(n+1))*(2*n+3))`
-/

namespace A053670.P12824475058787126022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053671 (2 * (n + 1)) * (2 * n + 3 : ℤ)).toNat

end

end A053670.P12824475058787126022

/-! ## A053670.P12770725672948865942

`A190911((n+1)*A190911(n+3))`
-/

namespace A053670.P12770725672948865942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190911 ((n + 1 : ℤ) * A190911 (n + 3)).toNat

end

end A053670.P12770725672948865942

/-! ## A053670.P13983463876266268048

`A006530(A089091(n+1)²)`
-/

namespace A053670.P13983463876266268048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089091 (n + 1) ^ 2).toNat

end

end A053670.P13983463876266268048

/-! ## A053670.P9928249089736172370

`A284723(A069834(n+1))`
-/

namespace A053670.P9928249089736172370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (A069834 (n + 1)).toNat

end

end A053670.P9928249089736172370

/-! ## A053670.P13336329053935941775

`A284723(∑[n+1])`
-/

namespace A053670.P13336329053935941775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053670.P13336329053935941775

/-! ## A053670.P2468804192854768931

`A355001((n+2)*A007947(n+1))`
-/

namespace A053670.P2468804192854768931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 ((n + 2 : ℤ) * A007947 (n + 1)).toNat

end

end A053670.P2468804192854768931

/-! ## A053670.P4559480952221610548

`A355001(∑[2*(n+1)])`
-/

namespace A053670.P4559480952221610548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053670.P4559480952221610548

/-! ## A053670.P12992847225812141314

`A020639(A355001((n+2)*(n+1)))`
-/

namespace A053670.P12992847225812141314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A355001 ((n + 2) * (n + 1))).toNat

end

end A053670.P12992847225812141314

/-! ## A053670.P12636363126448715828

`∏{p}[A329900(A078636(n+1)), A117366(#)]`
-/

namespace A053670.P12636363126448715828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A078636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117366 p

end

end A053670.P12636363126448715828

/-! ## A053670.P7485622889371261778

`A053669(A324384((n+1)*(n+2)))`
-/

namespace A053670.P7485622889371261778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A324384 ((n + 1) * (n + 2))).toNat

end

end A053670.P7485622889371261778

/-! ## A053670.P14542637771833364666

`A117366(A329900((n+1)*(n+2)))`
-/

namespace A053670.P14542637771833364666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A329900 ((n + 1) * (n + 2))).toNat

end

end A053670.P14542637771833364666

/-! ## A053670.P2040218132587580437

`A351566((n+1)²+n+2)`
-/

namespace A053670.P2040218132587580437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((n + 1) ^ 2 + (n + 2))

end

end A053670.P2040218132587580437

/-! ## A053670.P15315937658510739860

`A020639(A328571(∑[2*(n+1)]))`
-/

namespace A053670.P15315937658510739860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328571 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A053670.P15315937658510739860

/-! ## A053670.P13182058846646537221

`A020639(A328573(A002378(n+1)))`
-/

namespace A053670.P13182058846646537221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328573 (A002378 (n + 1)).toNat).toNat

end

end A053670.P13182058846646537221

/-! ## A053670.P10715846145901562621

`A053669(A328479((n+1)*(n+2)))`
-/

namespace A053670.P10715846145901562621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A328479 ((n + 1) * (n + 2))).toNat

end

end A053670.P10715846145901562621

/-! ## A053670.P1846107745841055685

`A190911(∑[n+1])`
-/

namespace A053670.P1846107745841055685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190911 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053670.P1846107745841055685

/-! ## A053670.P6556211425008309265

`sqrt(A089090((n+1)*(n+2)))`
-/

namespace A053670.P6556211425008309265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 ((n + 1) * (n + 2)) : ℝ)

end

end A053670.P6556211425008309265

/-! ## A053670.P2191693886940204409

`p?[A351566((2*n+1)²)]`
-/

namespace A053670.P2191693886940204409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053670.P2191693886940204409

/-!
# A053671: Least number coprime to n, n+1 and n+2.

The programs for A053671, there is no canonical definition to state claims against.
-/

/-! ## A053671.P3587700413075799795

`sqrt(A090092(n+1))`
-/

namespace A053671.P3587700413075799795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090092 (n + 1) : ℝ)

end

end A053671.P3587700413075799795

/-! ## A053671.P15315082736425473484

`A102426(A090092(n+1)+1)`
-/

namespace A053671.P15315082736425473484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A090092 (n + 1) + 1).toNat

end

end A053671.P15315082736425473484

/-! ## A053671.P8388021160863992651

`A006530(2*A090092(n+1))`
-/

namespace A053671.P8388021160863992651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A090092 (n + 1)).toNat

end

end A053671.P8388021160863992651

/-! ## A053671.P3225801071195972923

`A000027(root(A090092(n+1), 2))`
-/

namespace A053671.P3225801071195972923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A090092 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053671.P3225801071195972923

/-! ## A053671.P436414312216971867

`A006530(or(1, A090092(n+1)))`
-/

namespace A053671.P436414312216971867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A090092 (n + 1))).toNat

end

end A053671.P436414312216971867

/-! ## A053671.P4088977748200446955

`A020639(or(1, A090092(n+1)))`
-/

namespace A053671.P4088977748200446955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A090092 (n + 1))).toNat

end

end A053671.P4088977748200446955

/-! ## A053671.P11950694459341870390

`A020639(A090092(n+1)^(1/2))`
-/

namespace A053671.P11950694459341870390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A090092 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A053671.P11950694459341870390

/-! ## A053671.P10820911344550419344

`A006530(C(A090092(n+1), 2))`
-/

namespace A053671.P10820911344550419344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A090092 (n + 1)).toNat 2)

end

end A053671.P10820911344550419344

/-! ## A053671.P3285487986188823774

`A020639(A090092(n+1)²)`
-/

namespace A053671.P3285487986188823774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090092 (n + 1) ^ 2).toNat

end

end A053671.P3285487986188823774

/-! ## A053671.P723817717697695129

`A053670((n+2)²-1)`
-/

namespace A053671.P723817717697695129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 ((n + 2) ^ 2 - 1)

end

end A053671.P723817717697695129

/-!
# A053672: Least number coprime to n, n+1, n+2 and n+3.

The programs for A053672, there is no canonical definition to state claims against.
-/

/-! ## A053672.P552776554540603375

`sqrt(A090093(n+1))`
-/

namespace A053672.P552776554540603375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090093 (n + 1) : ℝ)

end

end A053672.P552776554540603375

/-! ## A053672.P12899266377534501080

`A027907(A090093(n+1)+1)`
-/

namespace A053672.P12899266377534501080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A090093 (n + 1) + 1).toNat

end

end A053672.P12899266377534501080

/-! ## A053672.P10244512753139028003

`A006530(2*A090093(n+1))`
-/

namespace A053672.P10244512753139028003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A090093 (n + 1)).toNat

end

end A053672.P10244512753139028003

/-! ## A053672.P10072866520425994406

`A006530(or(1, A090093(n+1)))`
-/

namespace A053672.P10072866520425994406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A090093 (n + 1))).toNat

end

end A053672.P10072866520425994406

/-! ## A053672.P15499123467567390468

`A020639(or(1, A090093(n+1)))`
-/

namespace A053672.P15499123467567390468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A090093 (n + 1))).toNat

end

end A053672.P15499123467567390468

/-! ## A053672.P9296735612334657092

`A006530(C(A090093(n+1), 2))`
-/

namespace A053672.P9296735612334657092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A090093 (n + 1)).toNat 2)

end

end A053672.P9296735612334657092

/-! ## A053672.P17649117754187435263

`A020639(A090093(n+1)²)`
-/

namespace A053672.P17649117754187435263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090093 (n + 1) ^ 2).toNat

end

end A053672.P17649117754187435263

/-! ## A053672.P123513087715513645

`A053670(∑[n+2])`
-/

namespace A053672.P123513087715513645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053672.P123513087715513645

/-! ## A053672.P13119695039635970322

`sqrt(A089091(∑[n+2]))`
-/

namespace A053672.P13119695039635970322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089091 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A053672.P13119695039635970322

/-! ## A053672.P3396785588537501976

`A006530(A053670(C(n+2, 2)+n+1))`
-/

namespace A053672.P3396785588537501976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053670 (Nat.choose (n + 2) 2 + (n + 1))).toNat

end

end A053672.P3396785588537501976

/-! ## A053672.P6897404281694227278

`A006530(A053670(A055998(n)+2))`
-/

namespace A053672.P6897404281694227278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053670 (A055998 n + 2).toNat).toNat

end

end A053672.P6897404281694227278

/-! ## A053672.P15113512482048030227

`A014963(A053670(A046691(n)+3))`
-/

namespace A053672.P15113512482048030227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053670 (A046691 n + 3).toNat).toNat

end

end A053672.P15113512482048030227

/-! ## A053672.P2093267872244653092

`A006530(A053670(A000124(n+2)-2))`
-/

namespace A053672.P2093267872244653092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053670 (A000124 (n + 2) - 2).toNat).toNat

end

end A053672.P2093267872244653092

/-!
# A053673: Least number > 1 coprime to n, n+1, n+2, n+3 and n+4.

The programs for A053673, there is no canonical definition to state claims against.
-/

/-! ## A053673.P9720130638100142235

`sqrt(A090094(n+1))`
-/

namespace A053673.P9720130638100142235
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090094 (n + 1) : ℝ)

end

end A053673.P9720130638100142235

/-! ## A053673.P14505959824804131775

`A000196(A090094(n+1)+1)`
-/

namespace A053673.P14505959824804131775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A090094 (n + 1) + 1).toNat

end

end A053673.P14505959824804131775

/-! ## A053673.P5344683341520875406

`A006530(2*A090094(n+1))`
-/

namespace A053673.P5344683341520875406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A090094 (n + 1)).toNat

end

end A053673.P5344683341520875406

/-! ## A053673.P12669150473248930542

`A060775(2*A090094(n+1))`
-/

namespace A053673.P12669150473248930542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (2 * A090094 (n + 1)).toNat

end

end A053673.P12669150473248930542

/-! ## A053673.P6438571383318872541

`A006530(root(A090094(n+1), 2))`
-/

namespace A053673.P6438571383318872541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A090094 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053673.P6438571383318872541

/-! ## A053673.P881947990067456954

`A014963(root(A090094(n+1), 2))`
-/

namespace A053673.P881947990067456954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A090094 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053673.P881947990067456954

/-! ## A053673.P65801773032434082

`A020639(root(A090094(n+1), 2))`
-/

namespace A053673.P65801773032434082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A090094 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A053673.P65801773032434082

/-! ## A053673.P2818174748998359729

`A006530(lcm(2, A090094(n+1)))`
-/

namespace A053673.P2818174748998359729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A090094 (n + 1)))

end

end A053673.P2818174748998359729

/-! ## A053673.P17891843908947258515

`A006530(or(1, A090094(n+1)))`
-/

namespace A053673.P17891843908947258515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A090094 (n + 1))).toNat

end

end A053673.P17891843908947258515

/-! ## A053673.P11263214276488799664

`A014963(2*A090094(n+1)-A090094(n+1))`
-/

namespace A053673.P11263214276488799664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A090094 (n + 1) - A090094 (n + 1)).toNat

end

end A053673.P11263214276488799664

/-! ## A053673.P10876697964576384601

`A020639(2*A090094(n+1)-A090094(n+1))`
-/

namespace A053673.P10876697964576384601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A090094 (n + 1) - A090094 (n + 1)).toNat

end

end A053673.P10876697964576384601

/-! ## A053673.P78307853373734076

`A245689(A090094(2*n+1-n))`
-/

namespace A053673.P78307853373734076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (A090094 (2 * n + 1 - n)).toNat

end

end A053673.P78307853373734076

/-! ## A053673.P6324209126126680874

`A245689(A245689(A090094(n+1))²)`
-/

namespace A053673.P6324209126126680874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (A245689 (A090094 (n + 1)).toNat ^ 2).toNat

end

end A053673.P6324209126126680874

/-! ## A053673.P10341164722474790986

`A245689(2*A090094(n+1))`
-/

namespace A053673.P10341164722474790986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (2 * A090094 (n + 1)).toNat

end

end A053673.P10341164722474790986

/-! ## A053673.P4549748744725280941

`A006530(C(A090094(n+1), 2))`
-/

namespace A053673.P4549748744725280941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A090094 (n + 1)).toNat 2)

end

end A053673.P4549748744725280941

/-! ## A053673.P6913348527060354147

`A006530(A090094(n+1)²)`
-/

namespace A053673.P6913348527060354147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090094 (n + 1) ^ 2).toNat

end

end A053673.P6913348527060354147

/-! ## A053673.P11530523320628409997

`A020639(A090094(n+1)²)`
-/

namespace A053673.P11530523320628409997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090094 (n + 1) ^ 2).toNat

end

end A053673.P11530523320628409997

/-!
# A053674: Least number coprime to n, n+1, n+2, n+3, n+4 and n+5.

The programs for A053674, there is no canonical definition to state claims against.
-/

/-! ## A053674.P3695551537339360339

`sqrt(A090095(n+1))`
-/

namespace A053674.P3695551537339360339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090095 (n + 1) : ℝ)

end

end A053674.P3695551537339360339

/-! ## A053674.P16482118615284313747

`A000196(A090095(n+1)+1)`
-/

namespace A053674.P16482118615284313747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A090095 (n + 1) + 1).toNat

end

end A053674.P16482118615284313747

/-! ## A053674.P2545486522163333217

`A003557(2*A090095(n+1))`
-/

namespace A053674.P2545486522163333217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * A090095 (n + 1)).toNat

end

end A053674.P2545486522163333217

/-! ## A053674.P7997229899764532542

`A006530(2*A090095(n+1))`
-/

namespace A053674.P7997229899764532542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A090095 (n + 1)).toNat

end

end A053674.P7997229899764532542

/-! ## A053674.P6340663278844044009

`A006530(lcm(2, A090095(n+1)))`
-/

namespace A053674.P6340663278844044009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A090095 (n + 1)))

end

end A053674.P6340663278844044009

/-! ## A053674.P467110644892623277

`A020639(or(1, A090095(n+1)))`
-/

namespace A053674.P467110644892623277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A090095 (n + 1))).toNat

end

end A053674.P467110644892623277

/-! ## A053674.P2539460247086998435

`A006530(∏{d}[A090095(n+1), #])`
-/

namespace A053674.P2539460247086998435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A053674.P2539460247086998435

/-! ## A053674.P2920062326542604531

`∏{p}[A090095(n+1), A006530(#)]`
-/

namespace A053674.P2920062326542604531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A053674.P2920062326542604531

/-! ## A053674.P151119160049646844

`A014963(∏{p}[A090095(n+1), #])`
-/

namespace A053674.P151119160049646844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A053674.P151119160049646844

/-! ## A053674.P18047646800864219328

`∏{d}[A090095(n+1), #/A014963(#)]`
-/

namespace A053674.P18047646800864219328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090095 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A014963 d : ℚ)

end

end A053674.P18047646800864219328

/-! ## A053674.P4061044165707839693

`A014963(A090095(lcm(n+1, A055874(n+1))))`
-/

namespace A053674.P4061044165707839693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A090095 (Int.lcm (n + 1 : ℤ) (A055874 (n + 1)))).toNat

end

end A053674.P4061044165707839693

/-! ## A053674.P10511354802001725849

`A014963(2*A090095(n+1)-A090095(n+1))`
-/

namespace A053674.P10511354802001725849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A090095 (n + 1) - A090095 (n + 1)).toNat

end

end A053674.P10511354802001725849

/-! ## A053674.P14409851601302182478

`A020639(A001222(A053670(n+1))*A090095(n+1))`
-/

namespace A053674.P14409851601302182478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001222 (A053670 (n + 1)).toNat * A090095 (n + 1)).toNat

end

end A053674.P14409851601302182478

/-! ## A053674.P255858921362764513

`A020639(A020639(A090095(n+1))*A090095(n+1))`
-/

namespace A053674.P255858921362764513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (A090095 (n + 1)).toNat * A090095 (n + 1)).toNat

end

end A053674.P255858921362764513

/-! ## A053674.P5692534072282305212

`A020639(A090095(n+1)/A020639(A090095(n+1)))`
-/

namespace A053674.P5692534072282305212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A090095 (n + 1) : ℚ) / (A020639 (A090095 (n + 1)).toNat : ℚ))).toNat

end

end A053674.P5692534072282305212

/-! ## A053674.P14196591727485822959

`A006530(A090095(n+1))+A005888(A005888(n))`
-/

namespace A053674.P14196591727485822959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090095 (n + 1)).toNat + A005888 (A005888 n).toNat

end

end A053674.P14196591727485822959

/-! ## A053674.P2858900054857506112

`A014963(∏{d}[A090095(n+1), #])`
-/

namespace A053674.P2858900054857506112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A053674.P2858900054857506112

/-!
# A053675: Positions where 5 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053675, there is no canonical definition to state claims against.
-/

/-! ## A053675.P17873029879372977865

`eq[5, A001113(n)]`
-/

namespace A053675.P17873029879372977865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053675.P17873029879372977865

/-! ## A053675.P16076761347896106467

`A054281(n+1)-1`
-/

namespace A053675.P16076761347896106467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054281 (n + 1) - 1

end

end A053675.P16076761347896106467

/-! ## A053675.P17324629423433965418

`A099837(A266303(2*(n+2)))+A054281(n+1)`
-/

namespace A053675.P17324629423433965418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A266303 (2 * (n + 2))).toNat + A054281 (n + 1)

end

end A053675.P17324629423433965418

/-! ## A053675.P11998323403214153364

`A099837(A015910(3*(n+1)))+A054281(n+1)`
-/

namespace A053675.P11998323403214153364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A015910 (3 * (n + 1))).toNat + A054281 (n + 1)

end

end A053675.P11998323403214153364

/-! ## A053675.P13537124603951164858

`A099837(A052410(3*n+2))+A054281(n+1)`
-/

namespace A053675.P13537124603951164858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A052410 (3 * n + 2)).toNat + A054281 (n + 1)

end

end A053675.P13537124603951164858

/-! ## A053675.P6063411104337927222

`eq[4, A121239(n)]`
-/

namespace A053675.P6063411104337927222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053675.P6063411104337927222

/-! ## A053675.P4424732372036327709

`eq[5, A091131(n)]`
-/

namespace A053675.P4424732372036327709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053675.P4424732372036327709

/-! ## A053675.P1704038904210104327

`eq[4, A153805(n)]+1`
-/

namespace A053675.P1704038904210104327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053675.P1704038904210104327

/-! ## A053675.P1706000885632078646

`A023443(A054281(n+1))`
-/

namespace A053675.P1706000885632078646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054281 (n + 1)).toNat

end

end A053675.P1706000885632078646

/-! ## A053675.P1263203603670780779

`eq[5, A001355(2*(n+1))]`
-/

namespace A053675.P1263203603670780779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053675.P1263203603670780779

/-! ## A053675.P1151420203003972306

`eq[5, A110779(2*n+1)]`
-/

namespace A053675.P1151420203003972306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053675.P1151420203003972306

/-!
# A053679: Positions where 6 occurs in the decimal expansion of e (starting count at decimal point).

The programs for A053679, there is no canonical definition to state claims against.
-/

/-! ## A053679.P10093996228272902739

`eq[6, A001113(n)]`
-/

namespace A053679.P10093996228272902739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P10093996228272902739

/-! ## A053679.P3459729338114670377

`A054282(n+1)-1`
-/

namespace A053679.P3459729338114670377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054282 (n + 1) - 1

end

end A053679.P3459729338114670377

/-! ## A053679.P6731625799710698270

`A079054(A233671(n+1))+A054282(n+1)`
-/

namespace A053679.P6731625799710698270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (A233671 (n + 1)).toNat + A054282 (n + 1)

end

end A053679.P6731625799710698270

/-! ## A053679.P17113148748088322658

`eq[3, A121239(n)]`
-/

namespace A053679.P17113148748088322658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P17113148748088322658

/-! ## A053679.P4299349587995960490

`eq[6, A091131(n)]`
-/

namespace A053679.P4299349587995960490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P4299349587995960490

/-! ## A053679.P15367896198494623228

`A023443(A054282(n+1))`
-/

namespace A053679.P15367896198494623228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054282 (n + 1)).toNat

end

end A053679.P15367896198494623228

/-! ## A053679.P11812237003190256219

`eq[2, A000796(A073212(n)-A000796(n))]`
-/

namespace A053679.P11812237003190256219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A073212 n - A000796 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P11812237003190256219

/-! ## A053679.P1977159665392572719

`eq[2, A000796(A000796(n)-A187747(n))]`
-/

namespace A053679.P1977159665392572719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000796 (n + 1) - A187747 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P1977159665392572719

/-! ## A053679.P9445272190992689492

`A114592(A002145(n+1))+A054282(n+1)`
-/

namespace A053679.P9445272190992689492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A002145 (n + 1)).toNat + A054282 (n + 1)

end

end A053679.P9445272190992689492

/-! ## A053679.P10900757749888495259

`eq[6, A110779(2*n+1)]`
-/

namespace A053679.P10900757749888495259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053679.P10900757749888495259

/-!
# A053680: Positions where 7 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053680, there is no canonical definition to state claims against.
-/

/-! ## A053680.P10947710053942351101

`eq[7, A001113(n)]`
-/

namespace A053680.P10947710053942351101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053680.P10947710053942351101

/-! ## A053680.P13848203509367404435

`A054283(n+1)-1`
-/

namespace A053680.P13848203509367404435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054283 (n + 1) - 1

end

end A053680.P13848203509367404435

/-! ## A053680.P3970420589158623242

`eq[2, A121239(n)]`
-/

namespace A053680.P3970420589158623242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053680.P3970420589158623242

/-! ## A053680.P6277441991711844256

`eq[7, A091131(n)]`
-/

namespace A053680.P6277441991711844256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053680.P6277441991711844256

/-! ## A053680.P7495452637232252115

`eq[2, A153805(n)]+1`
-/

namespace A053680.P7495452637232252115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053680.P7495452637232252115

/-! ## A053680.P12939808480371978754

`lt[2, A086997(n+1)]`
-/

namespace A053680.P12939808480371978754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053680.P12939808480371978754

/-! ## A053680.P8233459601059817660

`A023443(A054283(n+1))`
-/

namespace A053680.P8233459601059817660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054283 (n + 1)).toNat

end

end A053680.P8233459601059817660

/-! ## A053680.P17132639142093472773

`1-A001489(eq[2, A153805(n)])`
-/

namespace A053680.P17132639142093472773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053680.P17132639142093472773

/-! ## A053680.P15634399056185911505

`eq[A086997(n+1), A157532(n+1)]`
-/

namespace A053680.P15634399056185911505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053680.P15634399056185911505

/-! ## A053680.P1910478857996482991

`eq[A086997(n+1), A200811(A200811(n+1))]`
-/

namespace A053680.P1910478857996482991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200811 (A200811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053680.P1910478857996482991

/-! ## A053680.P8535602028305726213

`eq[7, A001355(2*(n+1))]`
-/

namespace A053680.P8535602028305726213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053680.P8535602028305726213

/-! ## A053680.P14679737390482270981

`eq[7, A110779(2*n+1)]`
-/

namespace A053680.P14679737390482270981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053680.P14679737390482270981

/-! ## A053680.P4026589194460955329

`A008619(2*eq[2, A153805(n)])`
-/

namespace A053680.P4026589194460955329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053680.P4026589194460955329

/-! ## A053680.P4540068820248379213

`A308217(2*eq[2, A153805(n)])`
-/

namespace A053680.P4540068820248379213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053680.P4540068820248379213

/-!
# A053681: Positions where 8 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053681, there is no canonical definition to state claims against.
-/

/-! ## A053681.P126668296456627682

`eq[8, A001113(n)]`
-/

namespace A053681.P126668296456627682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053681.P126668296456627682

/-! ## A053681.P17675813055345520653

`A054284(n+1)-1`
-/

namespace A053681.P17675813055345520653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054284 (n + 1) - 1

end

end A053681.P17675813055345520653

/-! ## A053681.P17694356587427886391

`A099837(A015910(3*(n+1)))+A054284(n+1)`
-/

namespace A053681.P17694356587427886391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A015910 (3 * (n + 1))).toNat + A054284 (n + 1)

end

end A053681.P17694356587427886391

/-! ## A053681.P13925062815015508692

`A099837(A266303(2*(n+2)))+A054284(n+1)`
-/

namespace A053681.P13925062815015508692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A266303 (2 * (n + 2))).toNat + A054284 (n + 1)

end

end A053681.P13925062815015508692

/-! ## A053681.P10301179705615540303

`A099837(A052410(3*n+2))+A054284(n+1)`
-/

namespace A053681.P10301179705615540303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A052410 (3 * n + 2)).toNat + A054284 (n + 1)

end

end A053681.P10301179705615540303

/-! ## A053681.P1929043395855850401

`eq[1, A153805(n)]+1`
-/

namespace A053681.P1929043395855850401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053681.P1929043395855850401

/-! ## A053681.P2298949331195678931

`1-A001489(eq[1, A153805(n)])`
-/

namespace A053681.P2298949331195678931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053681.P2298949331195678931

/-! ## A053681.P13259496130334301374

`eq[1, A121239(n)]`
-/

namespace A053681.P13259496130334301374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053681.P13259496130334301374

/-! ## A053681.P17428356515242461275

`eq[8, A091131(n)]`
-/

namespace A053681.P17428356515242461275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053681.P17428356515242461275

/-! ## A053681.P3639130070394727047

`A023443(A054284(n+1))`
-/

namespace A053681.P3639130070394727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054284 (n + 1)).toNat

end

end A053681.P3639130070394727047

/-! ## A053681.P16140292421906970781

`A008619(2*eq[1, A153805(n)])`
-/

namespace A053681.P16140292421906970781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053681.P16140292421906970781

/-! ## A053681.P8582925891472187219

`A308217(2*eq[1, A153805(n)])`
-/

namespace A053681.P8582925891472187219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053681.P8582925891472187219

/-! ## A053681.P5788103021689077981

`eq[8, A110779(2*n+1)]`
-/

namespace A053681.P5788103021689077981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053681.P5788103021689077981

/-!
# A053682: Positions where 9 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053682, there is no canonical definition to state claims against.
-/

/-! ## A053682.P4650557230051757078

`lt[8, A001113(n)]`
-/

namespace A053682.P4650557230051757078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053682.P4650557230051757078

/-! ## A053682.P13907077807683171498

`A054285(n+1)-1`
-/

namespace A053682.P13907077807683171498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054285 (n + 1) - 1

end

end A053682.P13907077807683171498

/-! ## A053682.P14278435858307414559

`eq[A001113(n), A223082(A160322(2*(n+1)))]`
-/

namespace A053682.P14278435858307414559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223082 (A160322 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053682.P14278435858307414559

/-! ## A053682.P14367056689643051033

`eq[0, A121239(n)]`
-/

namespace A053682.P14367056689643051033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053682.P14367056689643051033

/-! ## A053682.P977840244012431649

`eq[9, A091131(n)]`
-/

namespace A053682.P977840244012431649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053682.P977840244012431649

/-! ## A053682.P12956369431855373347

`A023443(A054285(n+1))`
-/

namespace A053682.P12956369431855373347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054285 (n + 1)).toNat

end

end A053682.P12956369431855373347

/-! ## A053682.P3566400447034984214

`eq[1, A086996(A086996(n))+1]`
-/

namespace A053682.P3566400447034984214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 ((A086996 (n + 1)).toNat + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053682.P3566400447034984214

/-! ## A053682.P10810017223798425776

`eq[A001355(2*(n+1)), 9]`
-/

namespace A053682.P10810017223798425776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A053682.P10810017223798425776

/-! ## A053682.P12013043057693238708

`eq[9, A110779(2*n+1)]`
-/

namespace A053682.P12013043057693238708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053682.P12013043057693238708

/-!
# A053683: Number of nonprimes <= prime(n)^2.

The programs for A053683, the canonical program `A053683.P15420794164900351699` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053683 has offset 1).

The definition of A053683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053683.P15420794164900351699

`A000040(n+1)²-A000879(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053683

/-- `A000040(n+1)²-A000879(n+1)` -/
def P15420794164900351699.Spec : Prop :=
  ∀ n, P15420794164900351699.a n = A053683 (n + 1)

theorem P15420794164900351699.correct : P15420794164900351699.Spec := by
  intro n
  simp only [A053683, Nat.add_sub_cancel]

end A053683

/-! ## A053683.P5148125020187580343

`A000040(n+1)²-A000720(A000040(n+1)²)`
-/

namespace A053683.P5148125020187580343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A000720 (A000040 (n + 1) ^ 2).toNat

end

end A053683.P5148125020187580343

namespace A053683

/-- `A000040(n+1)²-A000720(A000040(n+1)²)` -/
def P5148125020187580343.Spec : Prop :=
  ∀ n, P5148125020187580343.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P14120100960729472789

`A120389(n+1)+1`
-/

namespace A053683.P14120100960729472789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120389 (n + 1) + 1

end

end A053683.P14120100960729472789

namespace A053683

/-- `A120389(n+1)+1` -/
def P14120100960729472789.Spec : Prop :=
  ∀ n, P14120100960729472789.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P2137376687477104832

`A335135(n)+a(n-1)` with `a(0)=2`
-/

namespace A053683.P2137376687477104832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A335135 n + a (n - 1)

end

end A053683.P2137376687477104832

namespace A053683

/-- `A335135(n)+a(n-1)` -/
def P2137376687477104832.Spec : Prop :=
  ∀ n, P2137376687477104832.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P11726689676779387566

`A001248(n+1)-∑[A050216(n)]`
-/

namespace A053683.P11726689676779387566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053683.P11726689676779387566

namespace A053683

/-- `A001248(n+1)-∑[A050216(n)]` -/
def P11726689676779387566.Spec : Prop :=
  ∀ n, P11726689676779387566.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P412914666971067508

`Δ[A007504(n)]²-∑[A050216(n)]`
-/

namespace A053683.P412914666971067508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A053683.P412914666971067508

namespace A053683

/-- `Δ[A007504(n)]²-∑[A050216(n)]` -/
def P412914666971067508.Spec : Prop :=
  ∀ n, P412914666971067508.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P18133473977519441921

`A001248(n+1)-A000879(n+1)`
-/

namespace A053683.P18133473977519441921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A000879 (n + 1)

end

end A053683.P18133473977519441921

namespace A053683

/-- `A001248(n+1)-A000879(n+1)` -/
def P18133473977519441921.Spec : Prop :=
  ∀ n, P18133473977519441921.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P11119798801546346602

`A000040(n+1)²-∑[A050216(n)]`
-/

namespace A053683.P11119798801546346602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053683.P11119798801546346602

namespace A053683

/-- `A000040(n+1)²-∑[A050216(n)]` -/
def P11119798801546346602.Spec : Prop :=
  ∀ n, P11119798801546346602.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P1861411593907417551

`Δ[A007504(n)]²-A000879(n+1)`
-/

namespace A053683.P1861411593907417551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A000879 (n + 1)

end

end A053683.P1861411593907417551

namespace A053683

/-- `Δ[A007504(n)]²-A000879(n+1)` -/
def P1861411593907417551.Spec : Prop :=
  ∀ n, P1861411593907417551.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P1293081783525314290

`A084920(n+1)+1-A000879(n+1)`
-/

namespace A053683.P1293081783525314290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + (1 - A000879 (n + 1))

end

end A053683.P1293081783525314290

namespace A053683

/-- `A084920(n+1)+1-A000879(n+1)` -/
def P1293081783525314290.Spec : Prop :=
  ∀ n, P1293081783525314290.a n = A053683 (n + 1)

theorem P1293081783525314290.correct : P1293081783525314290.Spec := by
  intro n
  simp only [A053683, Nat.add_sub_cancel, A053683.P1293081783525314290.a, A053683.P15420794164900351699.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A084920, A084920.P13392903182497119137.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053683

/-! ## A053683.P12600497726913052438

`(A095116(n+1)-n)²-A000879(n+1)`
-/

namespace A053683.P12600497726913052438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) ^ 2 - A000879 (n + 1)

end

end A053683.P12600497726913052438

namespace A053683

/-- `(A095116(n+1)-n)²-A000879(n+1)` -/
def P12600497726913052438.Spec : Prop :=
  ∀ n, P12600497726913052438.a n = A053683 (n + 1)

theorem P12600497726913052438.correct : P12600497726913052438.Spec := by
  intro n
  simp only [A053683, Nat.add_sub_cancel, A053683.P12600497726913052438.a, A053683.P15420794164900351699.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A095116, A095116.P2789422422958858773.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053683

/-! ## A053683.P15357522666296733486

`A054270(n+1)+A054271(n+1)-A000879(n+1)`
-/

namespace A053683.P15357522666296733486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 1) + (A054271 (n + 1) - A000879 (n + 1))

end

end A053683.P15357522666296733486

namespace A053683

/-- `A054270(n+1)+A054271(n+1)-A000879(n+1)` -/
def P15357522666296733486.Spec : Prop :=
  ∀ n, P15357522666296733486.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P3944553559964429080

`A280076(n+2)-A000879(n+1)`
-/

namespace A053683.P3944553559964429080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) - A000879 (n + 1)

end

end A053683.P3944553559964429080

namespace A053683

/-- `A280076(n+2)-A000879(n+1)` -/
def P3944553559964429080.Spec : Prop :=
  ∀ n, P3944553559964429080.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P17783325914435264575

`record[A006530(n+2)²]-∑[A050216(n)]`
-/

namespace A053683.P17783325914435264575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A053683.P17783325914435264575

namespace A053683

/-- `record[A006530(n+2)²]-∑[A050216(n)]` -/
def P17783325914435264575.Spec : Prop :=
  ∀ n, P17783325914435264575.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P980403030770812831

`record[A020639(n+2)²]-∑[A050216(n)]`
-/

namespace A053683.P980403030770812831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A053683.P980403030770812831

namespace A053683

/-- `record[A020639(n+2)²]-∑[A050216(n)]` -/
def P980403030770812831.Spec : Prop :=
  ∀ n, P980403030770812831.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P10579095844406079981

`record[A006530(n+2)²]-A000879(n+1)`
-/

namespace A053683.P10579095844406079981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000879 (n + 1)

end

end A053683.P10579095844406079981

namespace A053683

/-- `record[A006530(n+2)²]-A000879(n+1)` -/
def P10579095844406079981.Spec : Prop :=
  ∀ n, P10579095844406079981.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P16481408840186601913

`record[A020639(n+2)²]-A000879(n+1)`
-/

namespace A053683.P16481408840186601913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000879 (n + 1)

end

end A053683.P16481408840186601913

namespace A053683

/-- `record[A020639(n+2)²]-A000879(n+1)` -/
def P16481408840186601913.Spec : Prop :=
  ∀ n, P16481408840186601913.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P3467456931426981862

`record[(A000010(n+1)+1)²]-∑[A050216(n)]`
-/

namespace A053683.P3467456931426981862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A053683.P3467456931426981862

namespace A053683

/-- `record[(A000010(n+1)+1)²]-∑[A050216(n)]` -/
def P3467456931426981862.Spec : Prop :=
  ∀ n, P3467456931426981862.a n = A053683 (n + 1)

end A053683

/-! ## A053683.P564800776263853780

`A182174(n+1)+1-A054272(n+1)`
-/

namespace A053683.P564800776263853780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + (1 - A054272 (n + 1))

end

end A053683.P564800776263853780

namespace A053683

/-- `A182174(n+1)+1-A054272(n+1)` -/
def P564800776263853780.Spec : Prop :=
  ∀ n, P564800776263853780.a n = A053683 (n + 1)

theorem P564800776263853780.correct : P564800776263853780.Spec := by
  intro n
  simp only [A053683, Nat.add_sub_cancel, A053683.P564800776263853780.a, A053683.P15420794164900351699.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A182174, A182174.P16448291357391898493.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053683

/-! ## A053683.P1298481487106244723

`A000040(n+1)²-(A054272(n+1)+n)`
-/

namespace A053683.P1298481487106244723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A054272 (n + 1) + (n : ℤ))

end

end A053683.P1298481487106244723

namespace A053683

/-- `A000040(n+1)²-(A054272(n+1)+n)` -/
def P1298481487106244723.Spec : Prop :=
  ∀ n, P1298481487106244723.a n = A053683 (n + 1)

theorem P1298481487106244723.correct : P1298481487106244723.Spec := by
  intro n
  simp only [A053683, Nat.add_sub_cancel, A053683.P1298481487106244723.a, A053683.P15420794164900351699.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053683

/-!
# A053684: Positions where there is a repeated digit in decimal expansion of e (starting count at decimal point).

The programs for A053684, there is no canonical definition to state claims against.
-/

/-! ## A053684.P5041305275298783991

`eq[A001113(n+1), A001113(n)]`
-/

namespace A053684.P5041305275298783991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P5041305275298783991

/-! ## A053684.P4327534970996612332

`eq[A121239(n), A153805(n)]`
-/

namespace A053684.P4327534970996612332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P4327534970996612332

/-! ## A053684.P7477368580226496808

`eq[A086996(n+1), A086996(n)]`
-/

namespace A053684.P7477368580226496808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P7477368580226496808

/-! ## A053684.P12279617049045716061

`eq[A091131(n+1), A091131(n)]`
-/

namespace A053684.P12279617049045716061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P12279617049045716061

/-! ## A053684.P2846253533768503151

`eq[A121239(n+1), A121239(n)]`
-/

namespace A053684.P2846253533768503151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P2846253533768503151

/-! ## A053684.P2802166535893035937

`eq[A001355(2*(n+1)), A001355(2*(n+2))]`
-/

namespace A053684.P2802166535893035937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053684.P2802166535893035937

/-!
# A053685: Primes p > 7 which are congruent to 2 or 4 (mod 5) for which 2p-1 is also prime.

The programs for A053685, there is no canonical definition to state claims against.
-/

/-! ## A053685.P6629794599844436270

`record[A240238(n+1)]`
-/

namespace A053685.P6629794599844436270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053685.P6629794599844436270

/-! ## A053685.P9820701718541523609

`A240238(eq[1, A240239(n+1)]+1)`
-/

namespace A053685.P9820701718541523609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053685.P9820701718541523609

/-! ## A053685.P4429522177533732895

`p?[A240238(n+1)*A240239(n+1)]`
-/

namespace A053685.P4429522177533732895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240238 (n + 1) * A240239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053685.P4429522177533732895

/-! ## A053685.P9233538182778039750

`record[p?[A001602(n+7)]]`
-/

namespace A053685.P9233538182778039750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053685.P9233538182778039750

/-! ## A053685.P1557682415424136647

`record[A001177(A135952(n+1))]`
-/

namespace A053685.P1557682415424136647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A135952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053685.P1557682415424136647

/-! ## A053685.P16036845767253460215

`record[p?[A001177(4*A002808(n+1)+1)]]`
-/

namespace A053685.P16036845767253460215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (4 * A002808 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053685.P16036845767253460215

/-!
# A053687: Positions where 1 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053687, there is no canonical definition to state claims against.
-/

/-! ## A053687.P16352943475798434522

`eq[1, A001113(n)]`
-/

namespace A053687.P16352943475798434522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P16352943475798434522

/-! ## A053687.P12082832160821827958

`A054277(n+1)-1`
-/

namespace A053687.P12082832160821827958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054277 (n + 1) - 1

end

end A053687.P12082832160821827958

/-! ## A053687.P17127432274671059092

`eq[1, A086996(n)]`
-/

namespace A053687.P17127432274671059092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P17127432274671059092

/-! ## A053687.P12014655453741222338

`eq[8, A121239(n)]`
-/

namespace A053687.P12014655453741222338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P12014655453741222338

/-! ## A053687.P14540749661748234398

`eq[1, A091131(n+1)]+1`
-/

namespace A053687.P14540749661748234398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053687.P14540749661748234398

/-! ## A053687.P11498357565819196622

`A023443(A054277(n+1))`
-/

namespace A053687.P11498357565819196622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054277 (n + 1)).toNat

end

end A053687.P11498357565819196622

/-! ## A053687.P6364689351972972858

`eq[A000796(n)+1, A073212(n)]`
-/

namespace A053687.P6364689351972972858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053687.P6364689351972972858

/-! ## A053687.P7697839898086695865

`eq[A187747(n)+1, A000796(n)]`
-/

namespace A053687.P7697839898086695865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053687.P7697839898086695865

/-! ## A053687.P17890555524152905051

`eq[A073212(n), A123152(n+1)]`
-/

namespace A053687.P17890555524152905051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053687.P17890555524152905051

/-! ## A053687.P9247445178647079373

`eq[A187747(n)+2, A073212(n)]`
-/

namespace A053687.P9247445178647079373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053687.P9247445178647079373

/-! ## A053687.P4297038048735473749

`lt[(1-A001113(n))², A057427(n)]`
-/

namespace A053687.P4297038048735473749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001113 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053687.P4297038048735473749

/-! ## A053687.P11787602160624305810

`eq[1, A001355(2*(n+1))]`
-/

namespace A053687.P11787602160624305810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P11787602160624305810

/-! ## A053687.P3969356913333975932

`eq[1, A110779(2*n+1)]`
-/

namespace A053687.P3969356913333975932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P3969356913333975932

/-! ## A053687.P12530814339177717592

`eq[1, A001355(A103517(n))²]`
-/

namespace A053687.P12530814339177717592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A103517 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P12530814339177717592

/-! ## A053687.P3238641465604482949

`eq[1, A001355(A004277(n))]-1`
-/

namespace A053687.P3238641465604482949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A053687.P3238641465604482949

/-! ## A053687.P18136129589143272397

`eq[1, A001355(A004277(n+1))²]`
-/

namespace A053687.P18136129589143272397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053687.P18136129589143272397

/-!
# A053688: Positions where 2 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053688, there is no canonical definition to state claims against.
-/

/-! ## A053688.P4307013120357281944

`eq[2, A001113(n+1)]+1`
-/

namespace A053688.P4307013120357281944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053688.P4307013120357281944

/-! ## A053688.P12786494597517211280

`A054278(n+2)-1`
-/

namespace A053688.P12786494597517211280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054278 (n + 2) - 1

end

end A053688.P12786494597517211280

/-! ## A053688.P13214753439289500397

`∑[abs(Δ[A054278(n+1)])]`
-/

namespace A053688.P13214753439289500397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053688.P13214753439289500397

/-! ## A053688.P16137902382449425769

`∑[Δ[A054278(n+1)]%(A000040(n+1)+10)]`
-/

namespace A053688.P16137902382449425769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053688.P16137902382449425769

/-! ## A053688.P12083835884330073763

`eq[A001113(n), A014963(A001316(n))]`
-/

namespace A053688.P12083835884330073763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053688.P12083835884330073763

/-! ## A053688.P7116364718414459993

`eq[2, A091131(n)]`
-/

namespace A053688.P7116364718414459993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053688.P7116364718414459993

/-! ## A053688.P6056518299761703971

`A023443(A054278(n+2))`
-/

namespace A053688.P6056518299761703971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054278 (n + 2)).toNat

end

end A053688.P6056518299761703971

/-! ## A053688.P10614168264847238470

`A020725(eq[2, A001113(n+1)])`
-/

namespace A053688.P10614168264847238470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053688.P10614168264847238470

/-! ## A053688.P10130815429685685355

`lt[(2-A001113(n))², A057427(n)]`
-/

namespace A053688.P10130815429685685355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001113 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053688.P10130815429685685355

/-! ## A053688.P8240384777021480627

`eq[A001113(n), A020639(A037225(n))]`
-/

namespace A053688.P8240384777021480627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053688.P8240384777021480627

/-! ## A053688.P2374689392791548349

`eq[A001113(n), A020639(A103517(n))]`
-/

namespace A053688.P2374689392791548349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053688.P2374689392791548349

/-! ## A053688.P9483313941232438651

`eq[2, A001355(A103517(n))]`
-/

namespace A053688.P9483313941232438651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053688.P9483313941232438651

/-! ## A053688.P12279964890910426448

`eq[2, A001355(A004277(n)+2)]`
-/

namespace A053688.P12279964890910426448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053688.P12279964890910426448

/-! ## A053688.P1932372735678975430

`eq[2, A001113(A065033(2*n))]`
-/

namespace A053688.P1932372735678975430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A065033 (2 * n)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053688.P1932372735678975430

/-! ## A053688.P13668525956703392377

`eq[A165031(3*n+4)+1, A001355(2*(n+1))]`
-/

namespace A053688.P13668525956703392377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (3 * n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053688.P13668525956703392377

/-!
# A053689: Positions where 3 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053689, there is no canonical definition to state claims against.
-/

/-! ## A053689.P9686771366077586798

`A054279(n+1)-1`
-/

namespace A053689.P9686771366077586798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054279 (n + 1) - 1

end

end A053689.P9686771366077586798

/-! ## A053689.P1458750075709116911

`eq[3, A001113(n)]`
-/

namespace A053689.P1458750075709116911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053689.P1458750075709116911

/-! ## A053689.P11201050725742260098

`eq[3, A091131(n)]`
-/

namespace A053689.P11201050725742260098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053689.P11201050725742260098

/-! ## A053689.P11926270303922732537

`eq[6, A121239(n)]`
-/

namespace A053689.P11926270303922732537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053689.P11926270303922732537

/-! ## A053689.P5238818566905769944

`A023443(A054279(n+1))`
-/

namespace A053689.P5238818566905769944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054279 (n + 1)).toNat

end

end A053689.P5238818566905769944

/-! ## A053689.P8637911221229842311

`eq[A123152(n+1)+2, A073212(n)]`
-/

namespace A053689.P8637911221229842311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053689.P8637911221229842311

/-! ## A053689.P13076729323599892757

`eq[3, A001355(2*(n+1))]`
-/

namespace A053689.P13076729323599892757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053689.P13076729323599892757

/-! ## A053689.P8178195930069189454

`eq[3, A110779(2*n+1)]`
-/

namespace A053689.P8178195930069189454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053689.P8178195930069189454

/-!
# A053690: Positions where 4 occurs in decimal expansion of e (starting count at decimal point).

The programs for A053690, there is no canonical definition to state claims against.
-/

/-! ## A053690.P16841777149960188569

`eq[4, A001113(n)]`
-/

namespace A053690.P16841777149960188569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053690.P16841777149960188569

/-! ## A053690.P2062525741560495711

`A054280(n+1)-1`
-/

namespace A053690.P2062525741560495711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054280 (n + 1) - 1

end

end A053690.P2062525741560495711

/-! ## A053690.P13552928049358355959

`eq[4, A091131(n)]`
-/

namespace A053690.P13552928049358355959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053690.P13552928049358355959

/-! ## A053690.P15844768027214460204

`eq[5, A121239(n)]`
-/

namespace A053690.P15844768027214460204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053690.P15844768027214460204

/-! ## A053690.P16654285886488331785

`eq[10, A086996(n)/10]`
-/

namespace A053690.P16654285886488331785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086996 (n + 1) : ℚ) / 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A053690.P16654285886488331785

/-! ## A053690.P17653091103707627831

`A023443(A054280(n+1))`
-/

namespace A053690.P17653091103707627831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054280 (n + 1)).toNat

end

end A053690.P17653091103707627831

/-! ## A053690.P13010808747935312387

`eq[4, A001355(2*(n+1))]`
-/

namespace A053690.P13010808747935312387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053690.P13010808747935312387

/-! ## A053690.P5909687538900637424

`eq[4, A110779(2*n+1)]`
-/

namespace A053690.P5909687538900637424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053690.P5909687538900637424

/-! ## A053690.P6975193350302817186

`eq[2, A001355(A103517(n))/2]`
-/

namespace A053690.P6975193350302817186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (A103517 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A053690.P6975193350302817186

/-!
# A053691: Number of 11-core partitions of n.

The programs for A053691, there is no canonical definition to state claims against.
-/

/-! ## A053691.P15754580596488079311

`A175595(eq[11, A025581(n)])`
-/

namespace A053691.P15754580596488079311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053691.P15754580596488079311

/-! ## A053691.P9174074077665356843

`A175595(A052905(n+9)-7)`
-/

namespace A053691.P9174074077665356843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A052905 (n + 9) - 7).toNat

end

end A053691.P9174074077665356843

/-! ## A053691.P6977891531513347477

`A175595(A000217(n+12)-12)`
-/

namespace A053691.P6977891531513347477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 12) - 12).toNat

end

end A053691.P6977891531513347477

/-! ## A053691.P14814126705337370139

`A175595(eq[12, A004736(n+1)])`
-/

namespace A053691.P14814126705337370139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053691.P14814126705337370139

/-! ## A053691.P493979455781620458

`A000041(n)-A197629(A034386(n))`
-/

namespace A053691.P493979455781620458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A197629 (A034386 n).toNat

end

end A053691.P493979455781620458

/-!
# A053692: Number of self-conjugate 4-core partitions of n.

The programs for A053692, the canonical program `A053692.P15159050845030527958` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053692 has offset 0).

The definition of A053692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053692.P15453332234122133702

`abs(A226194(n))`
-/

namespace A053692.P15453332234122133702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226194 n|

end

end A053692.P15453332234122133702

namespace A053692

/-- `abs(A226194(n))` -/
def P15453332234122133702.Spec : Prop :=
  ∀ n, P15453332234122133702.a n = A053692 n

end A053692

/-! ## A053692.P12361463187379559098

`A033999(n)*A226194(n)`
-/

namespace A053692.P12361463187379559098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A226194 n

end

end A053692.P12361463187379559098

namespace A053692

/-- `A033999(n)*A226194(n)` -/
def P12361463187379559098.Spec : Prop :=
  ∀ n, P12361463187379559098.a n = A053692 n

end A053692

/-! ## A053692.P8521447487967488760

`gcd(A000038(n), A226194(n))`
-/

namespace A053692.P8521447487967488760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226194 n)

end

end A053692.P8521447487967488760

namespace A053692

/-- `gcd(A000038(n), A226194(n))` -/
def P8521447487967488760.Spec : Prop :=
  ∀ n, (P8521447487967488760.a n : ℤ) = A053692 n

end A053692

/-! ## A053692.P9836734698798800919

`lcm(A020985(n), A226194(n))`
-/

namespace A053692.P9836734698798800919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A226194 n)

end

end A053692.P9836734698798800919

namespace A053692

/-- `lcm(A020985(n), A226194(n))` -/
def P9836734698798800919.Spec : Prop :=
  ∀ n, (P9836734698798800919.a n : ℤ) = A053692 n

end A053692

/-! ## A053692.P15159050845030527958

`A052343(Δ[n²])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053692

/-- `A052343(Δ[n²])` -/
def P15159050845030527958.Spec : Prop :=
  ∀ n, P15159050845030527958.a n = A053692 n

theorem P15159050845030527958.correct : P15159050845030527958.Spec := by
  intro n
  simp only [A053692]

end A053692

/-! ## A053692.P15360603529012838709

`A008441(Δ[n²])/2`
-/

namespace A053692.P15360603529012838709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A053692.P15360603529012838709

namespace A053692

/-- `A008441(Δ[n²])/2` -/
def P15360603529012838709.Spec : Prop :=
  ∀ n, P15360603529012838709.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P2735708690289616901

`dr(A052343(2*n+1))`
-/

namespace A053692.P2735708690289616901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A052343 (2 * n + 1))

end

end A053692.P2735708690289616901

namespace A053692

/-- `dr(A052343(2*n+1))` -/
def P2735708690289616901.Spec : Prop :=
  ∀ n, (P2735708690289616901.a n : ℤ) = A053692 n

end A053692

/-! ## A053692.P18266424579481944769

`A004020(2*n+1)/4`
-/

namespace A053692.P18266424579481944769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (2 * n + 1) : ℚ) / 4

end

end A053692.P18266424579481944769

namespace A053692

/-- `A004020(2*n+1)/4` -/
def P18266424579481944769.Spec : Prop :=
  ∀ n, P18266424579481944769.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P14645347495616907837

`A005883(2*n+1)/8`
-/

namespace A053692.P14645347495616907837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (2 * n + 1) : ℚ) / 8

end

end A053692.P14645347495616907837

namespace A053692

/-- `A005883(2*n+1)/8` -/
def P14645347495616907837.Spec : Prop :=
  ∀ n, P14645347495616907837.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P13766229505321979460

`abs(A134343(2*n+1)/2)`
-/

namespace A053692.P13766229505321979460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A134343 (2 * n + 1) : ℚ) / 2|

end

end A053692.P13766229505321979460

namespace A053692

/-- `abs(A134343(2*n+1)/2)` -/
def P13766229505321979460.Spec : Prop :=
  ∀ n, P13766229505321979460.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P752256730265139928

`∑[A144874(2*n+1)/2]`
-/

namespace A053692.P752256730265139928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144874 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053692.P752256730265139928

namespace A053692

/-- `∑[A144874(2*n+1)/2]` -/
def P752256730265139928.Spec : Prop :=
  ∀ n, P752256730265139928.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P15585247548250587222

`A004526(A008441(2*n+1))`
-/

namespace A053692.P15585247548250587222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008441 (2 * n + 1)).toNat

end

end A053692.P15585247548250587222

namespace A053692

/-- `A004526(A008441(2*n+1))` -/
def P15585247548250587222.Spec : Prop :=
  ∀ n, P15585247548250587222.a n = A053692 n

end A053692

/-! ## A053692.P7164940168364467733

`A156229(2*n+1)-A156229(2*n)`
-/

namespace A053692.P7164940168364467733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156229 (2 * n + 1) - A156229 (2 * n)

end

end A053692.P7164940168364467733

namespace A053692

/-- `A156229(2*n+1)-A156229(2*n)` -/
def P7164940168364467733.Spec : Prop :=
  ∀ n, P7164940168364467733.a n = A053692 n

end A053692

/-! ## A053692.P10246708922545074565

`A052344(2*n+1)+A010054(2*n+1)`
-/

namespace A053692.P10246708922545074565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (2 * n + 1) + A010054 (2 * n + 1)

end

end A053692.P10246708922545074565

namespace A053692

/-- `A052344(2*n+1)+A010054(2*n+1)` -/
def P10246708922545074565.Spec : Prop :=
  ∀ n, P10246708922545074565.a n = A053692 n

end A053692

/-! ## A053692.P9362316563614072182

`A307597(2*n+1)+A010054(2*n+1)`
-/

namespace A053692.P9362316563614072182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (2 * n + 1) + A010054 (2 * n + 1)

end

end A053692.P9362316563614072182

namespace A053692

/-- `A307597(2*n+1)+A010054(2*n+1)` -/
def P9362316563614072182.Spec : Prop :=
  ∀ n, P9362316563614072182.a n = A053692 n

end A053692

/-! ## A053692.P13820254324264781678

`A008441(2*n+1)-A052343(2*n+1)`
-/

namespace A053692.P13820254324264781678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n + 1) - A052343 (2 * n + 1)

end

end A053692.P13820254324264781678

namespace A053692

/-- `A008441(2*n+1)-A052343(2*n+1)` -/
def P13820254324264781678.Spec : Prop :=
  ∀ n, P13820254324264781678.a n = A053692 n

end A053692

/-! ## A053692.P14257501260850521922

`A010054(2*n+1)+A053603(2*n+1)/2`
-/

namespace A053692.P14257501260850521922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 (2 * n + 1) : ℚ) + (A053603 (2 * n + 1) : ℚ) / 2

end

end A053692.P14257501260850521922

namespace A053692

/-- `A010054(2*n+1)+A053603(2*n+1)/2` -/
def P14257501260850521922.Spec : Prop :=
  ∀ n, P14257501260850521922.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P15631208947246959954

`A002636(2*n+1)-A063993(2*n+1)`
-/

namespace A053692.P15631208947246959954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (2 * n + 1) - A063993 (2 * n + 1)

end

end A053692.P15631208947246959954

namespace A053692

/-- `A002636(2*n+1)-A063993(2*n+1)` -/
def P15631208947246959954.Spec : Prop :=
  ∀ n, P15631208947246959954.a n = A053692 n

end A053692

/-! ## A053692.P16925955033898952885

`A138741(4*n+2)/2`
-/

namespace A053692.P16925955033898952885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138741 (4 * n + 2) : ℚ) / 2

end

end A053692.P16925955033898952885

namespace A053692

/-- `A138741(4*n+2)/2` -/
def P16925955033898952885.Spec : Prop :=
  ∀ n, P16925955033898952885.a n = (A053692 n : ℚ)

end A053692

/-! ## A053692.P8369784346805749690

`A000161(8*n+5)`
-/

namespace A053692.P8369784346805749690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (8 * n + 5)

end

end A053692.P8369784346805749690

namespace A053692

/-- `A000161(8*n+5)` -/
def P8369784346805749690.Spec : Prop :=
  ∀ n, P8369784346805749690.a n = A053692 n

end A053692

/-!
# A053693: Number of self-conjugate 8-core partitions of n.

The programs for A053693, there is no canonical definition to state claims against.
-/

/-! ## A053693.P10659972379441806236

`A000700(n)%Δ[A354912(3*n)]`
-/

namespace A053693.P10659972379441806236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) (f1 (n + 1) - f1 n)

end

end A053693.P10659972379441806236

/-! ## A053693.P14040972399882911550

`A000700(n)%A040094(A000045(n))`
-/

namespace A053693.P14040972399882911550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) (A040094 (A000045 n).toNat)

end

end A053693.P14040972399882911550

/-! ## A053693.P11013688470784881173

`and(A000700(n), A004767(A001611(n)))`
-/

namespace A053693.P11013688470784881173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000700 n) (A004767 (A001611 n).toNat)

end

end A053693.P11013688470784881173

/-! ## A053693.P5997667749977834648

`and(A000700(n), A006257(A022408(n)))`
-/

namespace A053693.P5997667749977834648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000700 n) (A006257 (A022408 n).toNat)

end

end A053693.P5997667749977834648

/-! ## A053693.P11408117024797827661

`and(A000700(n), A004767(A054352(n)))`
-/

namespace A053693.P11408117024797827661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000700 n) (A004767 (A054352 n).toNat)

end

end A053693.P11408117024797827661

/-!
# A053694: Number of self-conjugate 5-core partitions of n.

The programs for A053694, the canonical program `A053694.P6109795769144306558` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053694 has offset 0).

The definition of A053694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053694.P11259070757419419850

`abs(A094247(n+1))`
-/

namespace A053694.P11259070757419419850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094247 (n + 1)|

end

end A053694.P11259070757419419850

namespace A053694

/-- `abs(A094247(n+1))` -/
def P11259070757419419850.Spec : Prop :=
  ∀ n, P11259070757419419850.a n = A053694 n

end A053694

/-! ## A053694.P16230184877231912659

`A035165(A000265(n+1))`
-/

namespace A053694.P16230184877231912659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035165 (A000265 (n + 1)).toNat

end

end A053694.P16230184877231912659

namespace A053694

/-- `A035165(A000265(n+1))` -/
def P16230184877231912659.Spec : Prop :=
  ∀ n, P16230184877231912659.a n = A053694 n

end A053694

/-! ## A053694.P5196831736557263833

`A002654(A132739(n+1))`
-/

namespace A053694.P5196831736557263833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A132739 (n + 1)).toNat

end

end A053694.P5196831736557263833

namespace A053694

/-- `A002654(A132739(n+1))` -/
def P5196831736557263833.Spec : Prop :=
  ∀ n, P5196831736557263833.a n = A053694 n

end A053694

/-! ## A053694.P17938794420969180750

`A002654(A132740(n+1))`
-/

namespace A053694.P17938794420969180750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A132740 (n + 1)).toNat

end

end A053694.P17938794420969180750

namespace A053694

/-- `A002654(A132740(n+1))` -/
def P17938794420969180750.Spec : Prop :=
  ∀ n, P17938794420969180750.a n = A053694 n

end A053694

/-! ## A053694.P13906318432290417027

`A033999(n)*A094247(n+1)`
-/

namespace A053694.P13906318432290417027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A094247 (n + 1)

end

end A053694.P13906318432290417027

namespace A053694

/-- `A033999(n)*A094247(n+1)` -/
def P13906318432290417027.Spec : Prop :=
  ∀ n, P13906318432290417027.a n = A053694 n

end A053694

/-! ## A053694.P16846500083231194819

`gcd(A000038(n), A094247(n+1))`
-/

namespace A053694.P16846500083231194819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A094247 (n + 1))

end

end A053694.P16846500083231194819

namespace A053694

/-- `gcd(A000038(n), A094247(n+1))` -/
def P16846500083231194819.Spec : Prop :=
  ∀ n, (P16846500083231194819.a n : ℤ) = A053694 n

end A053694

/-! ## A053694.P7212545758300331193

`lcm(A014709(n), A094247(n+1))`
-/

namespace A053694.P7212545758300331193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A094247 (n + 1))

end

end A053694.P7212545758300331193

namespace A053694

/-- `lcm(A014709(n), A094247(n+1))` -/
def P7212545758300331193.Spec : Prop :=
  ∀ n, (P7212545758300331193.a n : ℤ) = A053694 n

end A053694

/-! ## A053694.P11689767091250975690

`A035165(n+1)/A001511(n+1)`
-/

namespace A053694.P11689767091250975690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035165 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A053694.P11689767091250975690

namespace A053694

/-- `A035165(n+1)/A001511(n+1)` -/
def P11689767091250975690.Spec : Prop :=
  ∀ n, P11689767091250975690.a n = (A053694 n : ℚ)

end A053694

/-! ## A053694.P7319818257351587583

`A002654(n+1)/A055457(n+1)`
-/

namespace A053694.P7319818257351587583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002654 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A053694.P7319818257351587583

namespace A053694

/-- `A002654(n+1)/A055457(n+1)` -/
def P7319818257351587583.Spec : Prop :=
  ∀ n, P7319818257351587583.a n = (A053694 n : ℚ)

end A053694

/-! ## A053694.P9384610955783310622

`A035165(n+1)/A164677(n+1)`
-/

namespace A053694.P9384610955783310622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035165 (n + 1) : ℚ) / (A164677 (n + 1) : ℚ)

end

end A053694.P9384610955783310622

namespace A053694

/-- `A035165(n+1)/A164677(n+1)` -/
def P9384610955783310622.Spec : Prop :=
  ∀ n, P9384610955783310622.a n = (A053694 n : ℚ)

end A053694

/-! ## A053694.P13440679310695155466

`A111938(n+1)/A364223(n+1)`
-/

namespace A053694.P13440679310695155466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111938 (n + 1) : ℚ) / (A364223 (n + 1) : ℚ)

end

end A053694.P13440679310695155466

namespace A053694

/-- `A111938(n+1)/A364223(n+1)` -/
def P13440679310695155466.Spec : Prop :=
  ∀ n, P13440679310695155466.a n = (A053694 n : ℚ)

end A053694

/-! ## A053694.P14404351720002642746

`∑{d}[n+1, A048298(#)*A094247((n+1)/#)]`
-/

namespace A053694.P14404351720002642746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A094247 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P14404351720002642746

namespace A053694

/-- `∑{d}[n+1, A048298(#)*A094247((n+1)/#)]` -/
def P14404351720002642746.Spec : Prop :=
  ∀ n, P14404351720002642746.a n = A053694 n

end A053694

/-! ## A053694.P17306101812464739801

`∑{d}[n+1, A035165(#)*A154955((n+1)/#)]`
-/

namespace A053694.P17306101812464739801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035165 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P17306101812464739801

namespace A053694

/-- `∑{d}[n+1, A035165(#)*A154955((n+1)/#)]` -/
def P17306101812464739801.Spec : Prop :=
  ∀ n, P17306101812464739801.a n = A053694 n

end A053694

/-! ## A053694.P10142505506906395926

`∑{d}[n+1, A000089(#)*A214293((n+1)/#)]`
-/

namespace A053694.P10142505506906395926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A214293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053694.P10142505506906395926

namespace A053694

/-- `∑{d}[n+1, A000089(#)*A214293((n+1)/#)]` -/
def P10142505506906395926.Spec : Prop :=
  ∀ n, P10142505506906395926.a n = A053694 n

end A053694

/-! ## A053694.P6109795769144306558

`∑{d}[n+1, A035207(#)*A275966((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053694

/-- `∑{d}[n+1, A035207(#)*A275966((n+1)/#)]` -/
def P6109795769144306558.Spec : Prop :=
  ∀ n, P6109795769144306558.a n = A053694 n

theorem P6109795769144306558.correct : P6109795769144306558.Spec := by
  intro n
  simp only [A053694]

end A053694

/-! ## A053694.P2121501155392948819

`∑{d}[n+1, A094247(#)*A099894((n+1)/#-1)]`
-/

namespace A053694.P2121501155392948819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A094247 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A053694.P2121501155392948819

namespace A053694

/-- `∑{d}[n+1, A094247(#)*A099894((n+1)/#-1)]` -/
def P2121501155392948819.Spec : Prop :=
  ∀ n, P2121501155392948819.a n = A053694 n

end A053694

/-! ## A053694.P6529354617942683722

`∑{d}[n+1, A185276(#)]`
-/

namespace A053694.P6529354617942683722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185276 d

end

end A053694.P6529354617942683722

namespace A053694

/-- `∑{d}[n+1, A185276(#)]` -/
def P6529354617942683722.Spec : Prop :=
  ∀ n, P6529354617942683722.a n = A053694 n

end A053694

/-! ## A053694.P9772841042678843901

`A035165(2*(n+1))-A035165(n+1)`
-/

namespace A053694.P9772841042678843901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035165 (2 * (n + 1)) - A035165 (n + 1)

end

end A053694.P9772841042678843901

namespace A053694

/-- `A035165(2*(n+1))-A035165(n+1)` -/
def P9772841042678843901.Spec : Prop :=
  ∀ n, P9772841042678843901.a n = A053694 n

end A053694

/-! ## A053694.P2872987083183006598

`A000038(n+1)-A094247(2*n+2)`
-/

namespace A053694.P2872987083183006598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A094247 (2 * n + 2)

end

end A053694.P2872987083183006598

namespace A053694

/-- `A000038(n+1)-A094247(2*n+2)` -/
def P2872987083183006598.Spec : Prop :=
  ∀ n, P2872987083183006598.a n = A053694 n

end A053694

/-! ## A053694.P17498623172136454560

`(A014709(n)-2)*A094247(2*(n+1))`
-/

namespace A053694.P17498623172136454560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014709 n - 2) * A094247 (2 * (n + 1))

end

end A053694.P17498623172136454560

namespace A053694

/-- `(A014709(n)-2)*A094247(2*(n+1))` -/
def P17498623172136454560.Spec : Prop :=
  ∀ n, P17498623172136454560.a n = A053694 n

end A053694

/-!
# A053695: Differences between record prime gaps.

The programs for A053695, there is no canonical definition to state claims against.
-/

/-! ## A053695.P6092809155822915604

`A005250(n+2)-A005250(n+1)`
-/

namespace A053695.P6092809155822915604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 2) - A005250 (n + 1)

end

end A053695.P6092809155822915604

/-! ## A053695.P17028971753102658602

`Δ[A005250(n+1)]`
-/

namespace A053695.P17028971753102658602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P17028971753102658602

/-! ## A053695.P5354646649312044385

`abs(Δ[A005250(A008619(2*n))])`
-/

namespace A053695.P5354646649312044385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053695.P5354646649312044385

/-! ## A053695.P16233237966518955830

`abs(Δ[A005250(A052938(2*n))])`
-/

namespace A053695.P16233237966518955830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053695.P16233237966518955830

/-! ## A053695.P2770724654188420818

`Δ[A000101(n+1)-A002386(n+1)]`
-/

namespace A053695.P2770724654188420818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) - A002386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P2770724654188420818

/-! ## A053695.P7758134786774808395

`Δ[record[A014320(n+1)]]`
-/

namespace A053695.P7758134786774808395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P7758134786774808395

/-! ## A053695.P9792723579265617901

`Δ[record[A335367(n+1)-A335366(n+1)]]`
-/

namespace A053695.P9792723579265617901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (n + 1) - A335366 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P9792723579265617901

/-! ## A053695.P1016327693673360349

`Δ[A246789(n+1)-A246777(n+1)]`
-/

namespace A053695.P1016327693673360349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - A246777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P1016327693673360349

/-! ## A053695.P16553780408582566574

`Δ[A000101(n+1)-A114058(n+1)/2]`
-/

namespace A053695.P16553780408582566574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000101 (n + 1) : ℚ) - (A114058 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053695.P16553780408582566574

/-!
# A053696: Numbers that can be represented as a string of three or more 1's in a base >= 2.

The programs for A053696, there is no canonical definition to state claims against.
-/

/-! ## A053696.P1719756693258436929

`∪[A085104(n+1), A325658(n+1)]`
-/

namespace A053696.P1719756693258436929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053696.P1719756693258436929

/-! ## A053696.P10844125227801925765

`lt[1, A088323(n+2)]+2`
-/

namespace A053696.P10844125227801925765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088323 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A053696.P10844125227801925765

/-! ## A053696.P3949855233204979025

`lt[1, A088323(A233583(n+1))]`
-/

namespace A053696.P3949855233204979025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088323 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053696.P3949855233204979025

/-! ## A053696.P1917801973446342576

`∩[A293754(A002191(n+1)), A167782(n+1)]`
-/

namespace A053696.P1917801973446342576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A002191 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053696.P1917801973446342576

/-! ## A053696.P372077507947837139

`∩[A293754(A080363(n+1)), A167782(n+1)]`
-/

namespace A053696.P372077507947837139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A080363 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053696.P372077507947837139

/-!
# A053697: a(n+1)=a(n)+a^(n), where the addition is in base 11 and where a^(n) is obtained from a(n) by replacing each digit with its multiplicative inverse modulo 11. Zero digits, if any, are deleted.

The programs for A053697, the canonical program `A053697.P2823174019528028812` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053697 has offset 1).

The definition of A053697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053697.P2823174019528028812

`a(n-2)+10*a(n-3)-10*a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=14, a(4)=27, a(5)=94, a(6)=137, a(7)=284, a(8)=947`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053697

/-- `a(n-2)+10*a(n-3)-10*a(n-5)` -/
def P2823174019528028812.Spec : Prop :=
  ∀ n, P2823174019528028812.a n = A053697 (n + 1)

theorem P2823174019528028812.correct : P2823174019528028812.Spec := by
  intro n
  simp only [A053697, Nat.add_sub_cancel]

end A053697

/-! ## A053697.P9432747744019917652

`A002931(a(n-1))` with `a(0)=1, a(1)=2, a(2)=8, a(3)=14, a(4)=27, a(5)=94, a(6)=137`
-/

namespace A053697.P9432747744019917652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 14, 27, 94, 137] fun n a =>
  A002931 (a (n - 1)).toNat

end

end A053697.P9432747744019917652

namespace A053697

/-- `A002931(a(n-1))` -/
def P9432747744019917652.Spec : Prop :=
  ∀ n, P9432747744019917652.a n = A053697 (n + 1)

end A053697

/-! ## A053697.P18000672347784014648

`A003617(a(n-1))` with `a(0)=1, a(1)=2, a(2)=8, a(3)=14, a(4)=27, a(5)=94, a(6)=137`
-/

namespace A053697.P18000672347784014648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 14, 27, 94, 137] fun n a =>
  A003617 (a (n - 1)).toNat

end

end A053697.P18000672347784014648

namespace A053697

/-- `A003617(a(n-1))` -/
def P18000672347784014648.Spec : Prop :=
  ∀ n, P18000672347784014648.a n = A053697 (n + 1)

end A053697

/-!
# A053698: a(n) = n^3 + n^2 + n + 1.

The programs for A053698, the canonical program `A053698.P17380684271159484773` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053698 has offset 0).

The definition of A053698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n²+n+1` (program `A053698.P17380684271159484773`, by `A053698.P17380684271159484773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053698.P17380684271159484773

`n^3+n²+n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053698

/-- `n^3+n²+n+1` -/
def P17380684271159484773.Spec : Prop :=
  ∀ n, (P17380684271159484773.a n : ℤ) = A053698 n

theorem P17380684271159484773.correct : P17380684271159484773.Spec := by
  intro n
  simp only [A053698]

end A053698

/-! ## A053698.P7941937357707358267

`A002522(n)*(n+1)`
-/

namespace A053698.P7941937357707358267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * (n + 1 : ℤ)

end

end A053698.P7941937357707358267

namespace A053698

/-- `A002522(n)*(n+1)` -/
def P7941937357707358267.Spec : Prop :=
  ∀ n, P7941937357707358267.a n = A053698 n

theorem P7941937357707358267.correct : P7941937357707358267.Spec := by
  intro n
  simp only [A053698, Nat.add_sub_cancel, A053698.P7941937357707358267.a, A053698.P17380684271159484773.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053698

/-! ## A053698.P15415584378026280499

`(n+1)/cos(atan(n))²`
-/

namespace A053698.P15415584378026280499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A053698.P15415584378026280499

namespace A053698

/-- `(n+1)/cos(atan(n))²` -/
def P15415584378026280499.Spec : Prop :=
  ∀ n, P15415584378026280499.a n = (A053698 n : ℝ)

end A053698

/-! ## A053698.P11115804428424106555

`(n+1)/sin(acot(n))²`
-/

namespace A053698.P11115804428424106555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A053698.P11115804428424106555

namespace A053698

/-- `(n+1)/sin(acot(n))²` -/
def P11115804428424106555.Spec : Prop :=
  ∀ n, P11115804428424106555.a n = (A053698 n : ℝ)

end A053698

/-! ## A053698.P9779415964138776991

`∑[or(1, 3*n²-n)]`
-/

namespace A053698.P9779415964138776991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P9779415964138776991

namespace A053698

/-- `∑[or(1, 3*n²-n)]` -/
def P9779415964138776991.Spec : Prop :=
  ∀ n, P9779415964138776991.a n = A053698 n

end A053698

/-! ## A053698.P8974970878866382116

`∑[xor(1, 3*n²-n)]`
-/

namespace A053698.P8974970878866382116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P8974970878866382116

namespace A053698

/-- `∑[xor(1, 3*n²-n)]` -/
def P8974970878866382116.Spec : Prop :=
  ∀ n, P8974970878866382116.a n = A053698 n

end A053698

/-! ## A053698.P13685768373904311540

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=2`
-/

namespace A053698.P13685768373904311540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P13685768373904311540

namespace A053698

/-- `∑[∑[a(n-1)+6]]` -/
def P13685768373904311540.Spec : Prop :=
  ∀ n, (P13685768373904311540.a n : ℤ) = A053698 n

end A053698

/-! ## A053698.P2616846672783669889

`floor((n+1)/acot(n²+1))`
-/

namespace A053698.P2616846672783669889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 + 1 : ℝ)⌋

end

end A053698.P2616846672783669889

namespace A053698

/-- `floor((n+1)/acot(n²+1))` -/
def P2616846672783669889.Spec : Prop :=
  ∀ n, P2616846672783669889.a n = A053698 n

end A053698

/-! ## A053698.P4297818939382988835

`round((n+1)/acot(n²+1))`
-/

namespace A053698.P4297818939382988835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 + 1 : ℝ))

end

end A053698.P4297818939382988835

namespace A053698

/-- `round((n+1)/acot(n²+1))` -/
def P4297818939382988835.Spec : Prop :=
  ∀ n, P4297818939382988835.a n = A053698 n

end A053698

/-! ## A053698.P12592169403376837517

`(n+1)/tan(acot(n²+1))`
-/

namespace A053698.P12592169403376837517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (n ^ 2 + 1 : ℝ))

end

end A053698.P12592169403376837517

namespace A053698

/-- `(n+1)/tan(acot(n²+1))` -/
def P12592169403376837517.Spec : Prop :=
  ∀ n, P12592169403376837517.a n = (A053698 n : ℝ)

end A053698

/-! ## A053698.P1496677431958722818

`(n²+1)/cot(atan(n+1))`
-/

namespace A053698.P1496677431958722818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A053698.P1496677431958722818

namespace A053698

/-- `(n²+1)/cot(atan(n+1))` -/
def P1496677431958722818.Spec : Prop :=
  ∀ n, P1496677431958722818.a n = (A053698 n : ℝ)

end A053698

/-! ## A053698.P5283137915281106354

`ceil((n+1)/acot(n²)+n)`
-/

namespace A053698.P5283137915281106354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) + (n : ℝ)⌉

end

end A053698.P5283137915281106354

namespace A053698

/-- `ceil((n+1)/acot(n²)+n)` -/
def P5283137915281106354.Spec : Prop :=
  ∀ n, P5283137915281106354.a n = A053698 n

end A053698

/-! ## A053698.P13263514228082681217

`∑[∑[ogf((1+5x^2)/(1-2x+x^2))]]`
-/

namespace A053698.P13263514228082681217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P13263514228082681217

namespace A053698

/-- `∑[∑[ogf((1+5x^2)/(1-2x+x^2))]]` -/
def P13263514228082681217.Spec : Prop :=
  ∀ n, P13263514228082681217.a n = A053698 n

end A053698

/-! ## A053698.P15664599197633944540

`ogf((1+5x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A053698.P15664599197633944540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5] [1, -4, 6, -4, 1] n

end

end A053698.P15664599197633944540

namespace A053698

/-- `ogf((1+5x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15664599197633944540.Spec : Prop :=
  ∀ n, P15664599197633944540.a n = A053698 n

end A053698

/-! ## A053698.P13353879822316941031

`∑[5-∑[a(n-1)-6]]` with `a(0)=4`
-/

namespace A053698.P13353879822316941031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P13353879822316941031

namespace A053698

/-- `∑[5-∑[a(n-1)-6]]` -/
def P13353879822316941031.Spec : Prop :=
  ∀ n, P13353879822316941031.a n = A053698 n

end A053698

/-! ## A053698.P6333682377401985329

`∑[C(Δ[n²], 2)+(1-n)²]`
-/

namespace A053698.P6333682377401985329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2 : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P6333682377401985329

namespace A053698

/-- `∑[C(Δ[n²], 2)+(1-n)²]` -/
def P6333682377401985329.Spec : Prop :=
  ∀ n, P6333682377401985329.a n = A053698 n

end A053698

/-! ## A053698.P12851695061782694500

`∑[∑[2*n]-(n-1-C(2*n, 2))]`
-/

namespace A053698.P12851695061782694500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 1 - (Nat.choose (2 * n) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P12851695061782694500

namespace A053698

/-- `∑[∑[2*n]-(n-1-C(2*n, 2))]` -/
def P12851695061782694500.Spec : Prop :=
  ∀ n, P12851695061782694500.a n = A053698 n

end A053698

/-! ## A053698.P6081115948869880046

`∑[A056106(n)]`
-/

namespace A053698.P6081115948869880046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P6081115948869880046

namespace A053698

/-- `∑[A056106(n)]` -/
def P6081115948869880046.Spec : Prop :=
  ∀ n, P6081115948869880046.a n = A053698 n

end A053698

/-! ## A053698.P18336428154111300839

`∑[A049450(n)+1]`
-/

namespace A053698.P18336428154111300839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P18336428154111300839

namespace A053698

/-- `∑[A049450(n)+1]` -/
def P18336428154111300839.Spec : Prop :=
  ∀ n, P18336428154111300839.a n = A053698 n

end A053698

/-! ## A053698.P12948623803946295023

`∑[A056105(n)+n]`
-/

namespace A053698.P12948623803946295023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053698.P12948623803946295023

namespace A053698

/-- `∑[A056105(n)+n]` -/
def P12948623803946295023.Spec : Prop :=
  ∀ n, P12948623803946295023.a n = A053698 n

end A053698

/-!
# A053699: a(n) = n^4 + n^3 + n^2 + n + 1.

The programs for A053699, the canonical program `A053699.P12401549741545410249` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053699 has offset 0).

The definition of A053699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+n^3+n²+n+1` (program `A053699.P12401549741545410249`, by `A053699.P12401549741545410249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053699.P1708226002052375225

`1+n+n²+n^3+n^4`
-/

namespace A053699.P1708226002052375225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n + n ^ 2 + n ^ 3 + n ^ 4

end

end A053699.P1708226002052375225

namespace A053699

/-- `1+n+n²+n^3+n^4` -/
def P1708226002052375225.Spec : Prop :=
  ∀ n, (P1708226002052375225.a n : ℤ) = A053699 n

theorem P1708226002052375225.correct : P1708226002052375225.Spec := by
  intro n
  simp only [A053699, Nat.add_sub_cancel, A053699.P1708226002052375225.a, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A053699

/-! ## A053699.P12401549741545410249

`n^4+n^3+n²+n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053699

/-- `n^4+n^3+n²+n+1` -/
def P12401549741545410249.Spec : Prop :=
  ∀ n, (P12401549741545410249.a n : ℤ) = A053699 n

theorem P12401549741545410249.correct : P12401549741545410249.Spec := by
  intro n
  simp only [A053699]

end A053699

/-! ## A053699.P7475333208034815031

`ceil((n+1)/acot(n)^3)`
-/

namespace A053699.P7475333208034815031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A053699.P7475333208034815031

namespace A053699

/-- `ceil((n+1)/acot(n)^3)` -/
def P7475333208034815031.Spec : Prop :=
  ∀ n, P7475333208034815031.a n = A053699 n

end A053699

/-! ## A053699.P5800366412387161016

`or(1, A027445(n))`
-/

namespace A053699.P5800366412387161016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027445 n)

end

end A053699.P5800366412387161016

namespace A053699

/-- `or(1, A027445(n))` -/
def P5800366412387161016.Spec : Prop :=
  ∀ n, P5800366412387161016.a n = A053699 n

end A053699

/-! ## A053699.P10450072288069474005

`(A155121(n)+5)/2`
-/

namespace A053699.P10450072288069474005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155121 n + 5 : ℚ) / 2

end

end A053699.P10450072288069474005

namespace A053699

/-- `(A155121(n)+5)/2` -/
def P10450072288069474005.Spec : Prop :=
  ∀ n, P10450072288069474005.a n = (A053699 n : ℚ)

theorem P10450072288069474005.correct : P10450072288069474005.Spec := by
  intro n
  simp only [A053699, Nat.add_sub_cancel, A053699.P10450072288069474005.a, A053699.P12401549741545410249.a, A155121, A155121.P2507026567840269680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053699

/-! ## A053699.P17137759970157873835

`or(1, ∑[n]*A005893(n))`
-/

namespace A053699.P17137759970157873835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005893 n)

end

end A053699.P17137759970157873835

namespace A053699

/-- `or(1, ∑[n]*A005893(n))` -/
def P17137759970157873835.Spec : Prop :=
  ∀ n, P17137759970157873835.a n = A053699 n

end A053699

/-! ## A053699.P16360701334976483933

`((n²+1)*A046092(n)+2)/2`
-/

namespace A053699.P16360701334976483933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 1 : ℤ) * A046092 n + 2 : ℚ) / 2

end

end A053699.P16360701334976483933

namespace A053699

/-- `((n²+1)*A046092(n)+2)/2` -/
def P16360701334976483933.Spec : Prop :=
  ∀ n, P16360701334976483933.a n = (A053699 n : ℚ)

theorem P16360701334976483933.correct : P16360701334976483933.Spec := by
  intro n
  simp only [A053699, Nat.add_sub_cancel, A053699.P16360701334976483933.a, A053699.P12401549741545410249.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053699

/-! ## A053699.P13038370706580454853

`A059839(n)/A060884(n)`
-/

namespace A053699.P13038370706580454853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059839 n : ℚ) / (A060884 n : ℚ)

end

end A053699.P13038370706580454853

namespace A053699

/-- `A059839(n)/A060884(n)` -/
def P13038370706580454853.Spec : Prop :=
  ∀ n, P13038370706580454853.a n = (A053699 n : ℚ)

end A053699

/-! ## A053699.P10567377056196011457

`A218503(n)/A069779(n)`
-/

namespace A053699.P10567377056196011457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218503 n : ℚ) / (A069779 n : ℚ)

end

end A053699.P10567377056196011457

namespace A053699

/-- `A218503(n)/A069779(n)` -/
def P10567377056196011457.Spec : Prop :=
  ∀ n, P10567377056196011457.a n = (A053699 n : ℚ)

theorem P10567377056196011457.correct : P10567377056196011457.Spec := by
  intro n
  simp only [A053699, Nat.add_sub_cancel, A053699.P10567377056196011457.a, A053699.P12401549741545410249.a, A069779, A069779.P16547002669838579975.a, A218503, A218503.P11395741053979960510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053699

/-! ## A053699.P2500928263185414003

`gcd(A024003(n), A059839(n))`
-/

namespace A053699.P2500928263185414003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024003 n) (A059839 n)

end

end A053699.P2500928263185414003

namespace A053699

/-- `gcd(A024003(n), A059839(n))` -/
def P2500928263185414003.Spec : Prop :=
  ∀ n, (P2500928263185414003.a n : ℤ) = A053699 n

end A053699

/-! ## A053699.P4343915473816353962

`gcd(A024008(n), A152031(n))`
-/

namespace A053699.P4343915473816353962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024008 n) (A152031 n)

end

end A053699.P4343915473816353962

namespace A053699

/-- `gcd(A024008(n), A152031(n))` -/
def P4343915473816353962.Spec : Prop :=
  ∀ n, (P4343915473816353962.a n : ℤ) = A053699 n

end A053699

/-! ## A053699.P9955321583494542840

`gcd(A152031(n)², A103623(n))`
-/

namespace A053699.P9955321583494542840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152031 n ^ 2) (A103623 n)

end

end A053699.P9955321583494542840

namespace A053699

/-- `gcd(A152031(n)², A103623(n))` -/
def P9955321583494542840.Spec : Prop :=
  ∀ n, (P9955321583494542840.a n : ℤ) = A053699 n

end A053699

/-! ## A053699.P1306068302408157321

`(A002817(2*n)+A000124(n+1))/2`
-/

namespace A053699.P1306068302408157321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 (2 * n) + A000124 (n + 1) : ℚ) / 2

end

end A053699.P1306068302408157321

namespace A053699

/-- `(A002817(2*n)+A000124(n+1))/2` -/
def P1306068302408157321.Spec : Prop :=
  ∀ n, P1306068302408157321.a n = (A053699 n : ℚ)

end A053699

/-! ## A053699.P10776275754744973648

`record[(A025581(n)²+1)*2*n+1]`
-/

namespace A053699.P10776275754744973648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n ^ 2 + 1) * (2 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053699.P10776275754744973648

namespace A053699

/-- `record[(A025581(n)²+1)*2*n+1]` -/
def P10776275754744973648.Spec : Prop :=
  ∀ n, P10776275754744973648.a n = A053699 n

end A053699

