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
import Seq.B000.C029
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A165800: Powers of 50.

The programs for A165800, the canonical program `A165800.P17590532597499004222` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165800 has offset 0).

The definition of A165800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165800.P17590532597499004222

`50^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165800

/-- `50^n` -/
def P17590532597499004222.Spec : Prop :=
  ∀ n, (P17590532597499004222.a n : ℤ) = A165800 n

theorem P17590532597499004222.correct : P17590532597499004222.Spec := by
  intro n
  simp only [A165800]

end A165800

/-!
# A165801: f(n), f(f(n)), ... are all prime, where f(n) = (n-1)/2. Stop when f(...f(n)...) is less than 4.

The programs for A165801, there is no canonical definition to state claims against.
-/

/-! ## A165801.P8901202877296283311

`∑[floor(sqrt(n+1))!*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A165801.P8901202877296283311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.factorial (Nat.sqrt (n + 1)) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165801.P8901202877296283311

/-! ## A165801.P16307198525022067166

`lt[a(floor(n/2))+a(n%2), 5]` with `a(0)=6, a(1)=1, a(2)=-1`
-/

namespace A165801.P16307198525022067166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, -1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + f1 (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165801.P16307198525022067166

/-! ## A165801.P11153224044613321077

`∑[A072488(n+1)]`
-/

namespace A165801.P11153224044613321077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165801.P11153224044613321077

/-! ## A165801.P9005039757534255745

`∑[∏[A033676(n+1)]]`
-/

namespace A165801.P9005039757534255745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165801.P9005039757534255745

/-!
# A165804: Numbers of the form i*8^j-1 (i=1..7, j >= 0).

The programs for A165804, the canonical program `A165804.P7736485930154302305` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165804 has offset 1).

The definition of A165804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165804.P7736485930154302305

`∑[floor(8^(ceil(n/7)-1))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165804

/-- `∑[floor(8^(ceil(n/7)-1))]` -/
def P7736485930154302305.Spec : Prop :=
  ∀ n, P7736485930154302305.a n = A165804 (n + 1)

theorem P7736485930154302305.correct : P7736485930154302305.Spec := by
  intro n
  simp only [A165804, Nat.add_sub_cancel]

end A165804

/-! ## A165804.P17776571743177729275

`∩[A023750(n+1), A023764(n+1)-1]`
-/

namespace A165804.P17776571743177729275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165804.P17776571743177729275

namespace A165804

/-- `∩[A023750(n+1), A023764(n+1)-1]` -/
def P17776571743177729275.Spec : Prop :=
  ∀ n, (P17776571743177729275.a n : ℤ) = A165804 (n + 1)

end A165804

/-! ## A165804.P7973495650115665822

`A273735(n+7)-A001222(A178942(n+1))`
-/

namespace A165804.P7973495650115665822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273735 (n + 7) - A001222 (A178942 (n + 1)).toNat

end

end A165804.P7973495650115665822

namespace A165804

/-- `A273735(n+7)-A001222(A178942(n+1))` -/
def P7973495650115665822.Spec : Prop :=
  ∀ n, P7973495650115665822.a n = A165804 (n + 1)

end A165804

/-! ## A165804.P3626949551775248284

`A273735(n+7)-A028920(2*n)²%A227177(A225555(n+3))`
-/

namespace A165804.P3626949551775248284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273735 (n + 7) - Int.tmod (A028920 (2 * n) ^ 2) (A227177 (A225555 (n + 3)).toNat)

end

end A165804.P3626949551775248284

namespace A165804

/-- `A273735(n+7)-A028920(2*n)²%A227177(A225555(n+3))` -/
def P3626949551775248284.Spec : Prop :=
  ∀ n, P3626949551775248284.a n = A165804 (n + 1)

end A165804

/-! ## A165804.P13286088738160678302

`A273735(n+7)-A060576(8*n²)`
-/

namespace A165804.P13286088738160678302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273735 (n + 7) - A060576 (8 * n ^ 2)

end

end A165804.P13286088738160678302

namespace A165804

/-- `A273735(n+7)-A060576(8*n²)` -/
def P13286088738160678302.Spec : Prop :=
  ∀ n, P13286088738160678302.a n = A165804 (n + 1)

end A165804

/-!
# A165805: Integers that start a trajectory x -> A008619(x) which contains only primes until terminating at 2 or 3.

The programs for A165805, there is no canonical definition to state claims against.
-/

/-! ## A165805.P1045554071026530653

`eq[1, A139320(ceil((n+1)/2))]`
-/

namespace A165805.P1045554071026530653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139320 ⌈(n + 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165805.P1045554071026530653

/-! ## A165805.P18298324041705315102

`lt[A139320(round((n+1)/2)), 2]`
-/

namespace A165805.P18298324041705315102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165805.P18298324041705315102

/-! ## A165805.P15849632843631626281

`lt[A139319(ceil((n+1)/2)), n]`
-/

namespace A165805.P15849632843631626281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139319 ⌈(n + 1 : ℚ) / 2⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165805.P15849632843631626281

/-! ## A165805.P905277666798319710

`lt[A292392(A132802(floor(n/2))), n]`
-/

namespace A165805.P905277666798319710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292392 (A132802 ⌊(n : ℚ) / 2⌋.toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165805.P905277666798319710

/-! ## A165805.P18338959700674574723

`∪[A165801(n+3)-1, A165801(n+3)]`
-/

namespace A165805.P18338959700674574723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165801 (n + 3) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165801 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165805.P18338959700674574723

/-!
# A165806: a(n) = 15n^2 + 3n + 1.

The programs for A165806, the canonical program `A165806.P10747791400727031512` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165806 has offset 1).

The definition of A165806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*(n+1)²+3*(n+1)+1` (program `A165806.P10747791400727031512`, by `A165806.P10747791400727031512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165806.P10747791400727031512

`15*(n+1)²+3*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165806

/-- `15*(n+1)²+3*(n+1)+1` -/
def P10747791400727031512.Spec : Prop :=
  ∀ n, (P10747791400727031512.a n : ℤ) = A165806 (n + 1)

theorem P10747791400727031512.correct : P10747791400727031512.Spec := by
  intro n
  simp only [A165806, Nat.add_sub_cancel]

end A165806

/-! ## A165806.P11526869809906642725

`∑[a(n-1)+30]` with `a(0)=19, a(1)=48`
-/

namespace A165806.P11526869809906642725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19, 48] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165806.P11526869809906642725

namespace A165806

/-- `∑[a(n-1)+30]` -/
def P11526869809906642725.Spec : Prop :=
  ∀ n, (P11526869809906642725.a n : ℤ) = A165806 (n + 1)

end A165806

/-! ## A165806.P845613765806497580

`abs(∑[A156376(n)]-n)`
-/

namespace A165806.P845613765806497580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A165806.P845613765806497580

namespace A165806

/-- `abs(∑[A156376(n)]-n)` -/
def P845613765806497580.Spec : Prop :=
  ∀ n, P845613765806497580.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P16790267097787852973

`∑[A124388(n)+A008486(n)]`
-/

namespace A165806.P16790267097787852973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165806.P16790267097787852973

namespace A165806

/-- `∑[A124388(n)+A008486(n)]` -/
def P16790267097787852973.Spec : Prop :=
  ∀ n, P16790267097787852973.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P8987250491701514286

`∑[A124388(n)+A004273(n)+1+n]`
-/

namespace A165806.P8987250491701514286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + (A004273 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165806.P8987250491701514286

namespace A165806

/-- `∑[A124388(n)+A004273(n)+1+n]` -/
def P8987250491701514286.Spec : Prop :=
  ∀ n, P8987250491701514286.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P4548791899657716556

`Δ[A027849(n)]`
-/

namespace A165806.P4548791899657716556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P4548791899657716556

namespace A165806

/-- `Δ[A027849(n)]` -/
def P4548791899657716556.Spec : Prop :=
  ∀ n, P4548791899657716556.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P11188376662267096013

`∑[Δ[A010005(n)]+3]`
-/

namespace A165806.P11188376662267096013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165806.P11188376662267096013

namespace A165806

/-- `∑[Δ[A010005(n)]+3]` -/
def P11188376662267096013.Spec : Prop :=
  ∀ n, P11188376662267096013.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P17657571024376381644

`Δ[(n+1)*A079273(n+1)]`
-/

namespace A165806.P17657571024376381644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P17657571024376381644

namespace A165806

/-- `Δ[(n+1)*A079273(n+1)]` -/
def P17657571024376381644.Spec : Prop :=
  ∀ n, P17657571024376381644.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P6834310806665012302

`Δ[Δ[A000217(n)*A000566(n)]]`
-/

namespace A165806.P6834310806665012302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P6834310806665012302

namespace A165806

/-- `Δ[Δ[A000217(n)*A000566(n)]]` -/
def P6834310806665012302.Spec : Prop :=
  ∀ n, P6834310806665012302.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P9808723987909740220

`Δ[n*A172043(n+1)]`
-/

namespace A165806.P9808723987909740220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A172043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P9808723987909740220

namespace A165806

/-- `Δ[n*A172043(n+1)]` -/
def P9808723987909740220.Spec : Prop :=
  ∀ n, P9808723987909740220.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P6678749805152022657

`Δ[A135503(n)+A006566(n+1)]`
-/

namespace A165806.P6678749805152022657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A006566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P6678749805152022657

namespace A165806

/-- `Δ[A135503(n)+A006566(n+1)]` -/
def P6678749805152022657.Spec : Prop :=
  ∀ n, P6678749805152022657.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P9194407934850736248

`Δ[A002522(n)*A016897(n+1)]`
-/

namespace A165806.P9194407934850736248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A016897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P9194407934850736248

namespace A165806

/-- `Δ[A002522(n)*A016897(n+1)]` -/
def P9194407934850736248.Spec : Prop :=
  ∀ n, P9194407934850736248.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P14610778084004927119

`abs(∑[A008592(A016777(n))+9]-n)`
-/

namespace A165806.P14610778084004927119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A016777 n).toNat + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A165806.P14610778084004927119

namespace A165806

/-- `abs(∑[A008592(A016777(n))+9]-n)` -/
def P14610778084004927119.Spec : Prop :=
  ∀ n, P14610778084004927119.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P4948293965787873375

`Δ[A135503(n)+A000292(3*n+1)]`
-/

namespace A165806.P4948293965787873375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A000292 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165806.P4948293965787873375

namespace A165806

/-- `Δ[A135503(n)+A000292(3*n+1)]` -/
def P4948293965787873375.Spec : Prop :=
  ∀ n, P4948293965787873375.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P13375656801043277251

`∑[A016885(A016885(n))+A008706(n)]`
-/

namespace A165806.P13375656801043277251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A016885 n).toNat + A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165806.P13375656801043277251

namespace A165806

/-- `∑[A016885(A016885(n))+A008706(n)]` -/
def P13375656801043277251.Spec : Prop :=
  ∀ n, P13375656801043277251.a n = A165806 (n + 1)

end A165806

/-! ## A165806.P14986900401378083546

`or(1, ∑[A014681(30*n+17)])`
-/

namespace A165806.P14986900401378083546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (30 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165806.P14986900401378083546

namespace A165806

/-- `or(1, ∑[A014681(30*n+17)])` -/
def P14986900401378083546.Spec : Prop :=
  ∀ n, P14986900401378083546.a n = A165806 (n + 1)

end A165806

/-!
# A165808: Expansion of x*(403+2967*x+1047*x^2-x^3)/(1-x)^4.

The programs for A165808, the canonical program `A165808.P11081368149051131965` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165808 has offset 1).

The definition of A165808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165808.P11081368149051131965

`1-13*(n+1)-321*(n+1)²+736*(n+1)^3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165808

/-- `1-13*(n+1)-321*(n+1)²+736*(n+1)^3` -/
def P11081368149051131965.Spec : Prop :=
  ∀ n, P11081368149051131965.a n = A165808 (n + 1)

theorem P11081368149051131965.correct : P11081368149051131965.Spec := by
  intro n
  simp only [A165808, Nat.add_sub_cancel]

end A165808

/-!
# A165809: a(n) = 3*n*(310*n^2 + 63*n - 12).

The programs for A165809, the canonical program `A165809.P17294367482301010551` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165809 has offset 1).

The definition of A165809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)*(310*(n+1)²+63*(n+1)-12)` (program `A165809.P17294367482301010551`, by `A165809.P17294367482301010551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165809.P17294367482301010551

`3*(n+1)*(310*(n+1)²+63*(n+1)-12)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165809

/-- `3*(n+1)*(310*(n+1)²+63*(n+1)-12)` -/
def P17294367482301010551.Spec : Prop :=
  ∀ n, P17294367482301010551.a n = A165809 (n + 1)

theorem P17294367482301010551.correct : P17294367482301010551.Spec := by
  intro n
  simp only [A165809, Nat.add_sub_cancel]

end A165809

/-!
# A165810: Primes p such that 18*p+1 is also a prime.

The programs for A165810, there is no canonical definition to state claims against.
-/

/-! ## A165810.P12952351424847649863

`(A165811(n+1)-1)/18`
-/

namespace A165810.P12952351424847649863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165811 (n + 1) - 1 : ℚ) / 18

end

end A165810.P12952351424847649863

/-! ## A165810.P15506145245050105669

`p?[A111094(n+1)]`
-/

namespace A165810.P15506145245050105669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165810.P15506145245050105669

/-! ## A165810.P15464101142315159218

`record[A020639(A111094(n+2))]`
-/

namespace A165810.P15464101142315159218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165810.P15464101142315159218

/-! ## A165810.P4299646384324681700

`filter[A111094(n+1), A010051(#)]`
-/

namespace A165810.P4299646384324681700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165810.P4299646384324681700

/-! ## A165810.P8282988236997064739

`∩[A000040(n+1), A111094(n+1)]`
-/

namespace A165810.P8282988236997064739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P8282988236997064739

/-! ## A165810.P13567475926355631577

`∩[A045319(n+1), A111094(n+1)]`
-/

namespace A165810.P13567475926355631577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P13567475926355631577

/-! ## A165810.P11836918967398070018

`∩[A045320(n+1), A111094(n+1)]`
-/

namespace A165810.P11836918967398070018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P11836918967398070018

/-! ## A165810.P12886468860080185323

`∩[A045344(n+1), A111094(n+1)]`
-/

namespace A165810.P12886468860080185323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P12886468860080185323

/-! ## A165810.P8750626024283810353

`∩[A045348(n+1), A111094(n+1)]`
-/

namespace A165810.P8750626024283810353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P8750626024283810353

/-! ## A165810.P8701308834593132345

`∩[A045371(n+1), A111094(n+1)]`
-/

namespace A165810.P8701308834593132345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P8701308834593132345

/-! ## A165810.P6840185729619154757

`∩[A049551(n+1), A111094(n+1)]`
-/

namespace A165810.P6840185729619154757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P6840185729619154757

/-! ## A165810.P2601630055170084481

`∩[A111094(n+1), A182986(n+1)]`
-/

namespace A165810.P2601630055170084481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P2601630055170084481

/-! ## A165810.P9678213514851561859

`∩[A111094(n+1), A197636(n+1)]`
-/

namespace A165810.P9678213514851561859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165810.P9678213514851561859

/-! ## A165810.P3189556807069855604

`filter[A111094(n+2), A080339(#)]`
-/

namespace A165810.P3189556807069855604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A165810.P3189556807069855604

/-! ## A165810.P1797115651330398674

`p?[eq[1, A001222(18*n+1)]]`
-/

namespace A165810.P1797115651330398674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (18 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165810.P1797115651330398674

/-! ## A165810.P16570710843661324916

`p?[A004525(A024906(n+1))]`
-/

namespace A165810.P16570710843661324916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165810.P16570710843661324916

/-!
# A165811: Primes of the form 18*p+1, where p is also a prime.

The programs for A165811, there is no canonical definition to state claims against.
-/

/-! ## A165811.P16269221467839852735

`1+18*A165810(n+1)`
-/

namespace A165811.P16269221467839852735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 18 * A165810 (n + 1)

end

end A165811.P16269221467839852735

/-! ## A165811.P4390311123652078076

`p?[9*A100484(n+1)+1]`
-/

namespace A165811.P4390311123652078076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P4390311123652078076

/-! ## A165811.P10019658736762108459

`p?[18*A000040(n+1)+1]`
-/

namespace A165811.P10019658736762108459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P10019658736762108459

/-! ## A165811.P16086511666965100444

`p?[18*(A040976(n+1)+2)+1]`
-/

namespace A165811.P16086511666965100444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (A040976 (n + 1) + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P16086511666965100444

/-! ## A165811.P4301014529149261767

`p?[18*record[A014963(n+2)]+1]`
-/

namespace A165811.P4301014529149261767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P4301014529149261767

/-! ## A165811.P17043200428350325838

`A161705(A165810(n+1))`
-/

namespace A165811.P17043200428350325838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A165810 (n + 1)).toNat

end

end A165811.P17043200428350325838

/-! ## A165811.P8167473471781879311

`p?[A161705(p?[A004442(n)])]`
-/

namespace A165811.P8167473471781879311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P8167473471781879311

/-! ## A165811.P7305768409289368061

`p?[A161705(A000040(n+1))]`
-/

namespace A165811.P7305768409289368061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P7305768409289368061

/-! ## A165811.P6167331632800879440

`p?[A161705(p?[A014682(n)+1])]`
-/

namespace A165811.P6167331632800879440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P6167331632800879440

/-! ## A165811.P11722167338231185840

`p?[A161705(p?[A103517(n)+1])]`
-/

namespace A165811.P11722167338231185840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P11722167338231185840

/-! ## A165811.P17047540269771069835

`p?[A161705(p?[A004273(n)+2])]`
-/

namespace A165811.P17047540269771069835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P17047540269771069835

/-! ## A165811.P7654332407565753692

`p?[A161705(p?[n-A014682(n)])]`
-/

namespace A165811.P7654332407565753692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P7654332407565753692

/-! ## A165811.P3130734305380686602

`p?[A161705(A006093(n+1)+1)]`
-/

namespace A165811.P3130734305380686602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P3130734305380686602

/-! ## A165811.P6360130528455677432

`p?[A161705(A008864(n+1)-1)]`
-/

namespace A165811.P6360130528455677432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165811.P6360130528455677432

/-! ## A165811.P12099979643378618741

`record[A006530(18*A000040(n+1)+1)]`
-/

namespace A165811.P12099979643378618741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (18 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165811.P12099979643378618741

/-! ## A165811.P5751991768005343607

`record[A020639(18*A000040(n+1)+1)]`
-/

namespace A165811.P5751991768005343607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (18 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165811.P5751991768005343607

/-! ## A165811.P7620316093503300589

`A017173(2*A165810(n+1))`
-/

namespace A165811.P7620316093503300589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (2 * A165810 (n + 1)).toNat

end

end A165811.P7620316093503300589

/-!
# A165813: a(n) = n*(a(n-1)+3), a(0)=1.

The programs for A165813, the canonical program `A165813.P306139336365166430` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165813 has offset 0).

The definition of A165813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+3)` (program `A165813.P306139336365166430`, by `A165813.P306139336365166430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165813.P306139336365166430

`n*(a(n-1)+3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165813

/-- `n*(a(n-1)+3)` -/
def P306139336365166430.Spec : Prop :=
  ∀ n, (P306139336365166430.a n : ℤ) = A165813 n

theorem P306139336365166430.correct : P306139336365166430.Spec := by
  intro n
  simp only [A165813]

end A165813

/-! ## A165813.P5070782512493304639

`n*(3-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165813.P5070782512493304639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (3 - (-a (n - 1)))

end

end A165813.P5070782512493304639

namespace A165813

/-- `n*(3-floor(-a(n-1)))` -/
def P5070782512493304639.Spec : Prop :=
  ∀ n, P5070782512493304639.a n = A165813 n

end A165813

/-! ## A165813.P2155788419409207662

`n*(3-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A165813.P2155788419409207662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (3 - (-a (n - 1)))

end

end A165813.P2155788419409207662

namespace A165813

/-- `n*(3-ceil(-a(n-1)))` -/
def P2155788419409207662.Spec : Prop :=
  ∀ n, P2155788419409207662.a n = A165813 n

end A165813

/-! ## A165813.P8327207616046608227

`n*(3-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A165813.P8327207616046608227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (3 - (-a (n - 1)))

end

end A165813.P8327207616046608227

namespace A165813

/-- `n*(3-round(-a(n-1)))` -/
def P8327207616046608227.Spec : Prop :=
  ∀ n, P8327207616046608227.a n = A165813 n

end A165813

/-! ## A165813.P16241093266988134855

`(a(n-1)+3)/tan(acot(n))` with `a(0)=1`
-/

namespace A165813.P16241093266988134855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 3) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A165813.P16241093266988134855

namespace A165813

/-- `(a(n-1)+3)/tan(acot(n))` -/
def P16241093266988134855.Spec : Prop :=
  ∀ n, P16241093266988134855.a n = (A165813 n : ℝ)

end A165813

/-! ## A165813.P16403334120948694210

`(a(n-1)+3)/n^(-1)` with `a(0)=1`
-/

namespace A165813.P16403334120948694210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 3) / (n : ℚ) ^ (-1 : ℤ)

end

end A165813.P16403334120948694210

namespace A165813

/-- `(a(n-1)+3)/n^(-1)` -/
def P16403334120948694210.Spec : Prop :=
  ∀ n, P16403334120948694210.a n = (A165813 n : ℚ)

end A165813

/-! ## A165813.P2653123376110201144

`n*(5-(4/2-a(n-1)))` with `a(0)=1`
-/

namespace A165813.P2653123376110201144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (5 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A165813.P2653123376110201144

namespace A165813

/-- `n*(5-(4/2-a(n-1)))` -/
def P2653123376110201144.Spec : Prop :=
  ∀ n, P2653123376110201144.a n = (A165813 n : ℚ)

end A165813

/-! ## A165813.P4174190884238350924

`4*n-n*(1-a(n-1))` with `a(0)=1`
-/

namespace A165813.P4174190884238350924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A165813.P4174190884238350924

namespace A165813

/-- `4*n-n*(1-a(n-1))` -/
def P4174190884238350924.Spec : Prop :=
  ∀ n, P4174190884238350924.a n = A165813 n

end A165813

/-! ## A165813.P12846100928697771940

`n*a(log2(A011782(n)))+3*n` with `a(0)=1`
-/

namespace A165813.P12846100928697771940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + 3 * n

end

end A165813.P12846100928697771940

namespace A165813

/-- `n*a(log2(A011782(n)))+3*n` -/
def P12846100928697771940.Spec : Prop :=
  ∀ n, (P12846100928697771940.a n : ℤ) = A165813 n

end A165813

/-!
# A165814: a(n)=n*(a(n-1)-3), a(0)=1.

The programs for A165814, the canonical program `A165814.P9128896672261211341` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165814 has offset 0).

The definition of A165814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)-3)` (program `A165814.P9128896672261211341`, by `A165814.P9128896672261211341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165814.P9128896672261211341

`n*(a(n-1)-3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165814

/-- `n*(a(n-1)-3)` -/
def P9128896672261211341.Spec : Prop :=
  ∀ n, P9128896672261211341.a n = A165814 n

theorem P9128896672261211341.correct : P9128896672261211341.Spec := by
  intro n
  simp only [A165814]

end A165814

/-! ## A165814.P17381226212946007225

`(a(n-1)-3)/tan(acot(n))` with `a(0)=1`
-/

namespace A165814.P17381226212946007225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 3) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A165814.P17381226212946007225

namespace A165814

/-- `(a(n-1)-3)/tan(acot(n))` -/
def P17381226212946007225.Spec : Prop :=
  ∀ n, P17381226212946007225.a n = (A165814 n : ℝ)

end A165814

/-! ## A165814.P5089528253641106961

`(a(n-1)-3)/n^(-1)` with `a(0)=1`
-/

namespace A165814.P5089528253641106961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 3) / (n : ℚ) ^ (-1 : ℤ)

end

end A165814.P5089528253641106961

namespace A165814

/-- `(a(n-1)-3)/n^(-1)` -/
def P5089528253641106961.Spec : Prop :=
  ∀ n, P5089528253641106961.a n = (A165814 n : ℚ)

end A165814

/-! ## A165814.P4133008101341707390

`(3-a(n-1))/(1-(n+1)/n)` with `a(0)=1`
-/

namespace A165814.P4133008101341707390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 - a (n - 1)) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A165814.P4133008101341707390

namespace A165814

/-- `(3-a(n-1))/(1-(n+1)/n)` -/
def P4133008101341707390.Spec : Prop :=
  ∀ n, P4133008101341707390.a n = (A165814 n : ℚ)

end A165814

/-! ## A165814.P8778460919748249645

`A166680(n)+A007526(n)`
-/

namespace A165814.P8778460919748249645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166680 n + A007526 n

end

end A165814.P8778460919748249645

namespace A165814

/-- `A166680(n)+A007526(n)` -/
def P8778460919748249645.Spec : Prop :=
  ∀ n, P8778460919748249645.a n = A165814 n

end A165814

/-! ## A165814.P17490508657209754252

`A165793(n)-A007526(n)`
-/

namespace A165814.P17490508657209754252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165793 n - A007526 n

end

end A165814.P17490508657209754252

namespace A165814

/-- `A165793(n)-A007526(n)` -/
def P17490508657209754252.Spec : Prop :=
  ∀ n, P17490508657209754252.a n = A165814 n

end A165814

/-! ## A165814.P3431705952962940937

`A165793(n)+1-A000522(n)`
-/

namespace A165814.P3431705952962940937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165793 n + (1 - A000522 n)

end

end A165814.P3431705952962940937

namespace A165814

/-- `A165793(n)+1-A000522(n)` -/
def P3431705952962940937.Spec : Prop :=
  ∀ n, P3431705952962940937.a n = A165814 n

end A165814

/-! ## A165814.P623451281749119930

`2*A000142(n)-A165813(n)`
-/

namespace A165814.P623451281749119930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000142 n - A165813 n

end

end A165814.P623451281749119930

namespace A165814

/-- `2*A000142(n)-A165813(n)` -/
def P623451281749119930.Spec : Prop :=
  ∀ n, P623451281749119930.a n = A165814 n

end A165814

/-! ## A165814.P7257775743403273106

`A166554(n)-2*A007526(n)`
-/

namespace A165814.P7257775743403273106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166554 n - 2 * A007526 n

end

end A165814.P7257775743403273106

namespace A165814

/-- `A166554(n)-2*A007526(n)` -/
def P7257775743403273106.Spec : Prop :=
  ∀ n, P7257775743403273106.a n = A165814 n

end A165814

/-! ## A165814.P13206887732062262449

`2*A165793(n)-A166554(n)`
-/

namespace A165814.P13206887732062262449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165793 n - A166554 n

end

end A165814.P13206887732062262449

namespace A165814

/-- `2*A165793(n)-A166554(n)` -/
def P13206887732062262449.Spec : Prop :=
  ∀ n, P13206887732062262449.a n = A165814 n

end A165814

/-!
# A165815: Prime congruent numbers (A003273).

The programs for A165815, there is no canonical definition to state claims against.
-/

/-! ## A165815.P17649153381499189955

`p?[A003273(n+1)]`
-/

namespace A165815.P17649153381499189955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165815.P17649153381499189955

/-! ## A165815.P9781635092022884861

`p?[A006991(n+1)]`
-/

namespace A165815.P9781635092022884861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165815.P9781635092022884861

/-! ## A165815.P7761278814546005217

`p?[comp[A165564(n+1)]]`
-/

namespace A165815.P7761278814546005217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165815.P7761278814546005217

/-! ## A165815.P17555215069168271602

`p?[comp[A248407(n+1)]]`
-/

namespace A165815.P17555215069168271602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165815.P17555215069168271602

/-! ## A165815.P8025437009591148403

`p?[A182429(n)+a(n-1)]` with `a(0)=5`
-/

namespace A165815.P8025437009591148403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A182429 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165815.P8025437009591148403

/-! ## A165815.P4323184989328523608

`eq[A072480(n), A080963(n)]`
-/

namespace A165815.P4323184989328523608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165815.P4323184989328523608

/-! ## A165815.P11384733192287781310

`eq[A080963(n), A082024(n)]`
-/

namespace A165815.P11384733192287781310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165815.P11384733192287781310

/-! ## A165815.P4966924213813748259

`eq[A080963(n), A116900(n)]`
-/

namespace A165815.P4966924213813748259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165815.P4966924213813748259

/-! ## A165815.P10398981471968564396

`eq[A080963(n), A220400(n)]`
-/

namespace A165815.P10398981471968564396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165815.P10398981471968564396

/-! ## A165815.P13916768360894982523

`eq[A080963(n), A237053(n)]`
-/

namespace A165815.P13916768360894982523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165815.P13916768360894982523

/-!
# A165816: Prime congruent numbers (A165815) that are not equal to 5 or 7 (mod 8).

The programs for A165816, there is no canonical definition to state claims against.
-/

/-! ## A165816.P12792123126216029671

`∩[A006991(n+1), A105389(n+1)]`
-/

namespace A165816.P12792123126216029671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165816.P12792123126216029671

/-! ## A165816.P8712734698038128224

`p?[A062695(n+1)]`
-/

namespace A165816.P8712734698038128224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165816.P8712734698038128224

/-! ## A165816.P1884280591678896642

`record[A006530(A062695(n+2))]`
-/

namespace A165816.P1884280591678896642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062695 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165816.P1884280591678896642

/-! ## A165816.P11920634355688197405

`filter[A062695(n+1), A010051(#)]`
-/

namespace A165816.P11920634355688197405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165816.P11920634355688197405

/-! ## A165816.P14766827860847178069

`filter[A062695(n+1), A010055(#)]`
-/

namespace A165816.P14766827860847178069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A165816.P14766827860847178069

/-!
# A165817: Number of compositions (= ordered integer partitions) of n into 2n parts.

The programs for A165817, the canonical program `A165817.P3523096413003226967` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165817 has offset 0).

The definition of A165817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165817.P3523096413003226967

`3*(3*n-1)*(3*n-2)/(2*n*(2*n-1))*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165817

/-- `3*(3*n-1)*(3*n-2)/(2*n*(2*n-1))*a(n-1)` -/
def P3523096413003226967.Spec : Prop :=
  ∀ n, P3523096413003226967.a n = (A165817 n : ℚ)

end A165817

/-! ## A165817.P17736620558265593599

`A291662(n)+n`
-/

namespace A165817.P17736620558265593599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291662 n + (n : ℤ)

end

end A165817.P17736620558265593599

namespace A165817

/-- `A291662(n)+n` -/
def P17736620558265593599.Spec : Prop :=
  ∀ n, P17736620558265593599.a n = A165817 n

end A165817

/-! ## A165817.P17534901173925101914

`ceil(A227726(n)/2)`
-/

namespace A165817.P17534901173925101914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227726 n : ℚ) / 2⌉

end

end A165817.P17534901173925101914

namespace A165817

/-- `ceil(A227726(n)/2)` -/
def P17534901173925101914.Spec : Prop :=
  ∀ n, P17534901173925101914.a n = A165817 n

end A165817

/-! ## A165817.P16368144822703341913

`A303259(2*n)+n`
-/

namespace A165817.P16368144822703341913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n) + (n : ℤ)

end

end A165817.P16368144822703341913

namespace A165817

/-- `A303259(2*n)+n` -/
def P16368144822703341913.Spec : Prop :=
  ∀ n, P16368144822703341913.a n = A165817 n

end A165817

/-! ## A165817.P17934202428143063136

`ceil(A182584(2*n)/2)`
-/

namespace A165817.P17934202428143063136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182584 (2 * n) : ℚ) / 2⌉

end

end A165817.P17934202428143063136

namespace A165817

/-- `ceil(A182584(2*n)/2)` -/
def P17934202428143063136.Spec : Prop :=
  ∀ n, P17934202428143063136.a n = A165817 n

end A165817

/-! ## A165817.P16633668494076814025

`(n+1)/3*A121446(n+1)`
-/

namespace A165817.P16633668494076814025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A121446 (n + 1) : ℚ)

end

end A165817.P16633668494076814025

namespace A165817

/-- `(n+1)/3*A121446(n+1)` -/
def P16633668494076814025.Spec : Prop :=
  ∀ n, P16633668494076814025.a n = (A165817 n : ℚ)

end A165817

/-! ## A165817.P15079131373419787407

`A081204(A004273(n))`
-/

namespace A165817.P15079131373419787407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (A004273 n).toNat

end

end A165817.P15079131373419787407

namespace A165817

/-- `A081204(A004273(n))` -/
def P15079131373419787407.Spec : Prop :=
  ∀ n, P15079131373419787407.a n = A165817 n

end A165817

/-! ## A165817.P16725315346370292687

`A005809(n)-A025174(n)`
-/

namespace A165817.P16725315346370292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A025174 n

end

end A165817.P16725315346370292687

namespace A165817

/-- `A005809(n)-A025174(n)` -/
def P16725315346370292687.Spec : Prop :=
  ∀ n, P16725315346370292687.a n = A165817 n

end A165817

/-! ## A165817.P2293282020952658588

`A264772(∑[n])-A025174(n)`
-/

namespace A165817.P2293282020952658588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) - A025174 n

end

end A165817.P2293282020952658588

namespace A165817

/-- `A264772(∑[n])-A025174(n)` -/
def P2293282020952658588.Spec : Prop :=
  ∀ n, P2293282020952658588.a n = A165817 n

end A165817

/-! ## A165817.P5966832608210823996

`A000007(n)+2*A025174(n)`
-/

namespace A165817.P5966832608210823996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A025174 n

end

end A165817.P5966832608210823996

namespace A165817

/-- `A000007(n)+2*A025174(n)` -/
def P5966832608210823996.Spec : Prop :=
  ∀ n, P5966832608210823996.a n = A165817 n

end A165817

/-! ## A165817.P7410358480890542805

`A065942(2*n)-A025174(n)`
-/

namespace A165817.P7410358480890542805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) - A025174 n

end

end A165817.P7410358480890542805

namespace A165817

/-- `A065942(2*n)-A025174(n)` -/
def P7410358480890542805.Spec : Prop :=
  ∀ n, P7410358480890542805.a n = A165817 n

end A165817

/-! ## A165817.P2020251548075299030

`A081204(2*n)-A025174(n)`
-/

namespace A165817.P2020251548075299030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n) - A025174 n

end

end A165817.P2020251548075299030

namespace A165817

/-- `A081204(2*n)-A025174(n)` -/
def P2020251548075299030.Spec : Prop :=
  ∀ n, P2020251548075299030.a n = A165817 n

end A165817

/-! ## A165817.P3902885288184958728

`A227726(n)-2*A025174(n)`
-/

namespace A165817.P3902885288184958728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227726 n - 2 * A025174 n

end

end A165817.P3902885288184958728

namespace A165817

/-- `A227726(n)-2*A025174(n)` -/
def P3902885288184958728.Spec : Prop :=
  ∀ n, P3902885288184958728.a n = A165817 n

end A165817

/-! ## A165817.P181384857254739116

`A005809(n)+A005809(n)-A227726(n)`
-/

namespace A165817.P181384857254739116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + (A005809 n - A227726 n)

end

end A165817.P181384857254739116

namespace A165817

/-- `A005809(n)+A005809(n)-A227726(n)` -/
def P181384857254739116.Spec : Prop :=
  ∀ n, P181384857254739116.a n = A165817 n

end A165817

/-! ## A165817.P10985951151602551505

`2*A005809(n)-A227726(n)`
-/

namespace A165817.P10985951151602551505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A227726 n

end

end A165817.P10985951151602551505

namespace A165817

/-- `2*A005809(n)-A227726(n)` -/
def P10985951151602551505.Spec : Prop :=
  ∀ n, P10985951151602551505.a n = A165817 n

end A165817

/-! ## A165817.P9098406543112555762

`A001764(n)+A052227(n)-A227726(n)`
-/

namespace A165817.P9098406543112555762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + (A052227 n - A227726 n)

end

end A165817.P9098406543112555762

namespace A165817

/-- `A001764(n)+A052227(n)-A227726(n)` -/
def P9098406543112555762.Spec : Prop :=
  ∀ n, P9098406543112555762.a n = A165817 n

end A165817

/-! ## A165817.P5487223585509656527

`A318162(n+1)/(2*n+1)`
-/

namespace A165817.P5487223585509656527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318162 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A165817.P5487223585509656527

namespace A165817

/-- `A318162(n+1)/(2*n+1)` -/
def P5487223585509656527.Spec : Prop :=
  ∀ n, P5487223585509656527.a n = (A165817 n : ℚ)

end A165817

/-! ## A165817.P105501250503493188

`A318160(2*n+1)/Δ[n²]`
-/

namespace A165817.P105501250503493188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318160 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A165817.P105501250503493188

namespace A165817

/-- `A318160(2*n+1)/Δ[n²]` -/
def P105501250503493188.Spec : Prop :=
  ∀ n, P105501250503493188.a n = (A165817 n : ℚ)

end A165817

/-! ## A165817.P18043150744922861034

`1/A026741(2*n+1)*A318160(2*n+1)`
-/

namespace A165817.P18043150744922861034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A026741 (2 * n + 1) : ℚ) * (A318160 (2 * n + 1) : ℚ)

end

end A165817.P18043150744922861034

namespace A165817

/-- `1/A026741(2*n+1)*A318160(2*n+1)` -/
def P18043150744922861034.Spec : Prop :=
  ∀ n, P18043150744922861034.a n = (A165817 n : ℚ)

end A165817

/-!
# A165818: Largest integer coprime to n whose binary representation is a substring of the binary representation of n.

The programs for A165818, there is no canonical definition to state claims against.
-/

/-! ## A165818.P12907517996017368885

`gcd(A101279(n+1), A259194(2^(∑[n]%(n+1))))`
-/

namespace A165818.P12907517996017368885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101279 (n + 1)) (A259194 (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))))

end

end A165818.P12907517996017368885

/-! ## A165818.P15193648023902713646

`gcd(A139250(A097331(n)), A331803(n))`
-/

namespace A165818.P15193648023902713646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139250 (A097331 n).toNat) (A331803 n)

end

end A165818.P15193648023902713646

/-! ## A165818.P17844824770587148296

`gcd(A002620(A326579(n)), A101279(n+1))`
-/

namespace A165818.P17844824770587148296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A326579 n).toNat) (A101279 (n + 1))

end

end A165818.P17844824770587148296

/-! ## A165818.P15163260282463114716

`gcd(A124444(n+1)^A004525(n), A004526(n))`
-/

namespace A165818.P15163260282463114716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A124444 (n + 1) : ℚ) ^ (A004525 n : ℤ))) (A004526 n)

end

end A165818.P15163260282463114716

/-!
# A165823: Interleaved terms of A002445 and 2*A141421.

The programs for A165823, there is no canonical definition to state claims against.
-/

/-! ## A165823.P14696681415859500085

`gcd(A091137(n), A106458(n))`
-/

namespace A165823.P14696681415859500085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091137 n) (A106458 n)

end

end A165823.P14696681415859500085

/-! ## A165823.P3634381043512784491

`or(A000035(n)*A091137(n), A106458(n))`
-/

namespace A165823.P3634381043512784491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n * A091137 n) (A106458 n)

end

end A165823.P3634381043512784491

/-! ## A165823.P9265356695688406527

`gcd(A248777(8*(n+1)), A254667(A106458(n)))`
-/

namespace A165823.P9265356695688406527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248777 (8 * (n + 1))) (A254667 (A106458 n).toNat)

end

end A165823.P9265356695688406527

/-! ## A165823.P1601428364026950213

`gcd((n+1)*A176493(n), A106458(A254667(n)))`
-/

namespace A165823.P1601428364026950213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A176493 n) (A106458 (A254667 n).toNat)

end

end A165823.P1601428364026950213

/-!
# A165824: Totally multiplicative sequence with a(p) = 3.

The programs for A165824, the canonical program `A165824.P4759849129403630457` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165824 has offset 1).

The definition of A165824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165824.P14455287887446116993

`3^A001222(n+1)`
-/

namespace A165824.P14455287887446116993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165824.P14455287887446116993

namespace A165824

/-- `3^A001222(n+1)` -/
def P14455287887446116993.Spec : Prop :=
  ∀ n, P14455287887446116993.a n = (A165824 (n + 1) : ℚ)

end A165824

/-! ## A165824.P4759849129403630457

`A000244(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165824

/-- `A000244(A001222(n+1))` -/
def P4759849129403630457.Spec : Prop :=
  ∀ n, P4759849129403630457.a n = A165824 (n + 1)

theorem P4759849129403630457.correct : P4759849129403630457.Spec := by
  intro n
  simp only [A165824, Nat.add_sub_cancel]

end A165824

/-! ## A165824.P12271423142385342373

`3^∑{e}[n+1, #]`
-/

namespace A165824.P12271423142385342373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165824.P12271423142385342373

namespace A165824

/-- `3^∑{e}[n+1, #]` -/
def P12271423142385342373.Spec : Prop :=
  ∀ n, (P12271423142385342373.a n : ℤ) = A165824 (n + 1)

end A165824

/-! ## A165824.P12839333462184818246

`∏{e}[n+1, 3^#]`
-/

namespace A165824.P12839333462184818246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p

end

end A165824.P12839333462184818246

namespace A165824

/-- `∏{e}[n+1, 3^#]` -/
def P12839333462184818246.Spec : Prop :=
  ∀ n, (P12839333462184818246.a n : ℤ) = A165824 (n + 1)

end A165824

/-! ## A165824.P2086911814183754148

`∏{e}[n+1, root(3, 2/#)]²`
-/

namespace A165824.P2086911814183754148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (3 : ℝ) ^ (1 / (2 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A165824.P2086911814183754148

namespace A165824

/-- `∏{e}[n+1, root(3, 2/#)]²` -/
def P2086911814183754148.Spec : Prop :=
  ∀ n, P2086911814183754148.a n = (A165824 (n + 1) : ℝ)

end A165824

/-! ## A165824.P6158110920183930380

`3^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165824.P6158110920183930380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165824.P6158110920183930380

namespace A165824

/-- `3^∑{p}[n+1, val(n+1, #)]` -/
def P6158110920183930380.Spec : Prop :=
  ∀ n, (P6158110920183930380.a n : ℤ) = A165824 (n + 1)

end A165824

/-! ## A165824.P157771522886231446

`∏{p}[n+1, 3^val(n+1, #)]`
-/

namespace A165824.P157771522886231446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165824.P157771522886231446

namespace A165824

/-- `∏{p}[n+1, 3^val(n+1, #)]` -/
def P157771522886231446.Spec : Prop :=
  ∀ n, (P157771522886231446.a n : ℤ) = A165824 (n + 1)

end A165824

/-! ## A165824.P5387730128828786178

`sqrt(A165830(n+1))`
-/

namespace A165824.P5387730128828786178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165830 (n + 1) : ℝ)

end

end A165824.P5387730128828786178

namespace A165824

/-- `sqrt(A165830(n+1))` -/
def P5387730128828786178.Spec : Prop :=
  ∀ n, P5387730128828786178.a n = (A165824 (n + 1) : ℝ)

end A165824

/-! ## A165824.P18052144416870384533

`3^Δ[A022559(n)]`
-/

namespace A165824.P18052144416870384533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165824.P18052144416870384533

namespace A165824

/-- `3^Δ[A022559(n)]` -/
def P18052144416870384533.Spec : Prop :=
  ∀ n, P18052144416870384533.a n = (A165824 (n + 1) : ℚ)

end A165824

/-! ## A165824.P17528672034853400506

`A000244(∑{e}[n+1, #])`
-/

namespace A165824.P17528672034853400506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165824.P17528672034853400506

namespace A165824

/-- `A000244(∑{e}[n+1, #])` -/
def P17528672034853400506.Spec : Prop :=
  ∀ n, P17528672034853400506.a n = A165824 (n + 1)

end A165824

/-! ## A165824.P18036138578395809485

`sqrt(3^A255201(n+1))`
-/

namespace A165824.P18036138578395809485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 : ℚ) ^ (A255201 (n + 1) : ℤ) : ℝ)

end

end A165824.P18036138578395809485

namespace A165824

/-- `sqrt(3^A255201(n+1))` -/
def P18036138578395809485.Spec : Prop :=
  ∀ n, P18036138578395809485.a n = (A165824 (n + 1) : ℝ)

end A165824

/-! ## A165824.P15782055801499478198

`3^(A073093(n+1)-1)`
-/

namespace A165824.P15782055801499478198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A073093 (n + 1) - 1 : ℤ)

end

end A165824.P15782055801499478198

namespace A165824

/-- `3^(A073093(n+1)-1)` -/
def P15782055801499478198.Spec : Prop :=
  ∀ n, P15782055801499478198.a n = (A165824 (n + 1) : ℚ)

end A165824

/-! ## A165824.P3274056333768283211

`A165848(n+1)^(1/3)`
-/

namespace A165824.P3274056333768283211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165848 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A165824.P3274056333768283211

namespace A165824

/-- `A165848(n+1)^(1/3)` -/
def P3274056333768283211.Spec : Prop :=
  ∀ n, P3274056333768283211.a n = (A165824 (n + 1) : ℝ)

end A165824

/-! ## A165824.P5052765697747408927

`A166624(n+1)/(n+1)`
-/

namespace A165824.P5052765697747408927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165824.P5052765697747408927

namespace A165824

/-- `A166624(n+1)/(n+1)` -/
def P5052765697747408927.Spec : Prop :=
  ∀ n, P5052765697747408927.a n = (A165824 (n + 1) : ℚ)

end A165824

/-! ## A165824.P6611047622674194035

`3^(n-A075795(n+1))`
-/

namespace A165824.P6611047622674194035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A075795 (n + 1) : ℤ)

end

end A165824.P6611047622674194035

namespace A165824

/-- `3^(n-A075795(n+1))` -/
def P6611047622674194035.Spec : Prop :=
  ∀ n, P6611047622674194035.a n = (A165824 (n + 1) : ℚ)

end A165824

/-! ## A165824.P3090789020874521187

`or(1, 3^A001222(2*n-(n-1)))`
-/

namespace A165824.P3090789020874521187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)))

end

end A165824.P3090789020874521187

namespace A165824

/-- `or(1, 3^A001222(2*n-(n-1)))` -/
def P3090789020874521187.Spec : Prop :=
  ∀ n, P3090789020874521187.a n = A165824 (n + 1)

end A165824

/-! ## A165824.P14371719878664917743

`A003959(A061142(n+1))`
-/

namespace A165824.P14371719878664917743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat

end

end A165824.P14371719878664917743

namespace A165824

/-- `A003959(A061142(n+1))` -/
def P14371719878664917743.Spec : Prop :=
  ∀ n, P14371719878664917743.a n = A165824 (n + 1)

end A165824

/-! ## A165824.P14808427962855908908

`A133494(A073093(n+1))`
-/

namespace A165824.P14808427962855908908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A073093 (n + 1)).toNat

end

end A165824.P14808427962855908908

namespace A165824

/-- `A133494(A073093(n+1))` -/
def P14808427962855908908.Spec : Prop :=
  ∀ n, P14808427962855908908.a n = A165824 (n + 1)

end A165824

/-! ## A165824.P3778812409766541704

`A017913(A255201(n+1))`
-/

namespace A165824.P3778812409766541704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A255201 (n + 1)).toNat

end

end A165824.P3778812409766541704

namespace A165824

/-- `A017913(A255201(n+1))` -/
def P3778812409766541704.Spec : Prop :=
  ∀ n, P3778812409766541704.a n = A165824 (n + 1)

end A165824

/-! ## A165824.P3190996588439225916

`A359600(A068794(n+1))`
-/

namespace A165824.P3190996588439225916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359600 (A068794 (n + 1)).toNat

end

end A165824.P3190996588439225916

namespace A165824

/-- `A359600(A068794(n+1))` -/
def P3190996588439225916.Spec : Prop :=
  ∀ n, P3190996588439225916.a n = A165824 (n + 1)

end A165824

/-!
# A165825: Totally multiplicative sequence with a(p) = 4.

The programs for A165825, the canonical program `A165825.P13849165785140245908` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165825 has offset 1).

The definition of A165825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165825.P5278668523684687420

`4^A001222(n+1)`
-/

namespace A165825.P5278668523684687420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165825.P5278668523684687420

namespace A165825

/-- `4^A001222(n+1)` -/
def P5278668523684687420.Spec : Prop :=
  ∀ n, P5278668523684687420.a n = (A165825 (n + 1) : ℚ)

end A165825

/-! ## A165825.P13849165785140245908

`A000302(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165825

/-- `A000302(A001222(n+1))` -/
def P13849165785140245908.Spec : Prop :=
  ∀ n, P13849165785140245908.a n = A165825 (n + 1)

theorem P13849165785140245908.correct : P13849165785140245908.Spec := by
  intro n
  simp only [A165825, Nat.add_sub_cancel]

end A165825

/-! ## A165825.P7342299798234723803

`4^∑{e}[n+1, #]`
-/

namespace A165825.P7342299798234723803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165825.P7342299798234723803

namespace A165825

/-- `4^∑{e}[n+1, #]` -/
def P7342299798234723803.Spec : Prop :=
  ∀ n, (P7342299798234723803.a n : ℤ) = A165825 (n + 1)

end A165825

/-! ## A165825.P511948679183913301

`∏{e}[n+1, 4^#]`
-/

namespace A165825.P511948679183913301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p

end

end A165825.P511948679183913301

namespace A165825

/-- `∏{e}[n+1, 4^#]` -/
def P511948679183913301.Spec : Prop :=
  ∀ n, (P511948679183913301.a n : ℤ) = A165825 (n + 1)

end A165825

/-! ## A165825.P13816117203297360300

`∏{e}[n+1, root(2, 1/#)]²`
-/

namespace A165825.P13816117203297360300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A165825.P13816117203297360300

namespace A165825

/-- `∏{e}[n+1, root(2, 1/#)]²` -/
def P13816117203297360300.Spec : Prop :=
  ∀ n, P13816117203297360300.a n = (A165825 (n + 1) : ℝ)

end A165825

/-! ## A165825.P17997268851737318055

`4^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165825.P17997268851737318055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165825.P17997268851737318055

namespace A165825

/-- `4^∑{p}[n+1, val(n+1, #)]` -/
def P17997268851737318055.Spec : Prop :=
  ∀ n, (P17997268851737318055.a n : ℤ) = A165825 (n + 1)

end A165825

/-! ## A165825.P1449484434823614481

`∏{p}[n+1, 4^val(n+1, #)]`
-/

namespace A165825.P1449484434823614481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165825.P1449484434823614481

namespace A165825

/-- `∏{p}[n+1, 4^val(n+1, #)]` -/
def P1449484434823614481.Spec : Prop :=
  ∀ n, (P1449484434823614481.a n : ℤ) = A165825 (n + 1)

end A165825

/-! ## A165825.P16279887723506631074

`(2^∑{e}[2*n-(n-1), #])²`
-/

namespace A165825.P16279887723506631074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A165825.P16279887723506631074

namespace A165825

/-- `(2^∑{e}[2*n-(n-1), #])²` -/
def P16279887723506631074.Spec : Prop :=
  ∀ n, (P16279887723506631074.a n : ℤ) = A165825 (n + 1)

end A165825

/-! ## A165825.P14833013735596929143

`A061142(n+1)²`
-/

namespace A165825.P14833013735596929143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2

end

end A165825.P14833013735596929143

namespace A165825

/-- `A061142(n+1)²` -/
def P14833013735596929143.Spec : Prop :=
  ∀ n, P14833013735596929143.a n = A165825 (n + 1)

end A165825

/-! ## A165825.P12682466232511524703

`A165872(n+1)²`
-/

namespace A165825.P12682466232511524703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) ^ 2

end

end A165825.P12682466232511524703

namespace A165825

/-- `A165872(n+1)²` -/
def P12682466232511524703.Spec : Prop :=
  ∀ n, P12682466232511524703.a n = A165825 (n + 1)

end A165825

/-! ## A165825.P4100252696441658741

`sqrt(A165837(n+1))`
-/

namespace A165825.P4100252696441658741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165837 (n + 1) : ℝ)

end

end A165825.P4100252696441658741

namespace A165825

/-- `sqrt(A165837(n+1))` -/
def P4100252696441658741.Spec : Prop :=
  ∀ n, P4100252696441658741.a n = (A165825 (n + 1) : ℝ)

end A165825

/-! ## A165825.P7995273501463453464

`4^Δ[A022559(n)]`
-/

namespace A165825.P7995273501463453464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165825.P7995273501463453464

namespace A165825

/-- `4^Δ[A022559(n)]` -/
def P7995273501463453464.Spec : Prop :=
  ∀ n, P7995273501463453464.a n = (A165825 (n + 1) : ℚ)

end A165825

/-! ## A165825.P8075941585926149375

`2^A255201(n+1)`
-/

namespace A165825.P8075941585926149375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165825.P8075941585926149375

namespace A165825

/-- `2^A255201(n+1)` -/
def P8075941585926149375.Spec : Prop :=
  ∀ n, P8075941585926149375.a n = (A165825 (n + 1) : ℚ)

end A165825

/-! ## A165825.P13018793711225482904

`A000302(∑{e}[n+1, #])`
-/

namespace A165825.P13018793711225482904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165825.P13018793711225482904

namespace A165825

/-- `A000302(∑{e}[n+1, #])` -/
def P13018793711225482904.Spec : Prop :=
  ∀ n, P13018793711225482904.a n = A165825 (n + 1)

end A165825

/-! ## A165825.P18128315085642498908

`A165829(n+1)^(2/3)`
-/

namespace A165825.P18128315085642498908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A165825.P18128315085642498908

namespace A165825

/-- `A165829(n+1)^(2/3)` -/
def P18128315085642498908.Spec : Prop :=
  ∀ n, P18128315085642498908.a n = (A165825 (n + 1) : ℝ)

end A165825

/-! ## A165825.P6428107405795302043

`A166625(n+1)/(n+1)`
-/

namespace A165825.P6428107405795302043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165825.P6428107405795302043

namespace A165825

/-- `A166625(n+1)/(n+1)` -/
def P6428107405795302043.Spec : Prop :=
  ∀ n, P6428107405795302043.a n = (A165825 (n + 1) : ℚ)

end A165825

/-! ## A165825.P6179009202946571735

`(2^A001222(2*n-(n-1)))²`
-/

namespace A165825.P6179009202946571735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165825.P6179009202946571735

namespace A165825

/-- `(2^A001222(2*n-(n-1)))²` -/
def P6179009202946571735.Spec : Prop :=
  ∀ n, P6179009202946571735.a n = (A165825 (n + 1) : ℚ)

end A165825

/-! ## A165825.P14992140793936480142

`A000079(A255201(n+1))`
-/

namespace A165825.P14992140793936480142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A255201 (n + 1)).toNat

end

end A165825.P14992140793936480142

namespace A165825

/-- `A000079(A255201(n+1))` -/
def P14992140793936480142.Spec : Prop :=
  ∀ n, P14992140793936480142.a n = A165825 (n + 1)

end A165825

/-! ## A165825.P10551094003343156941

`A278254(A068794(n+1))`
-/

namespace A165825.P10551094003343156941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A068794 (n + 1)).toNat

end

end A165825.P10551094003343156941

namespace A165825

/-- `A278254(A068794(n+1))` -/
def P10551094003343156941.Spec : Prop :=
  ∀ n, P10551094003343156941.a n = A165825 (n + 1)

end A165825

/-! ## A165825.P12370298318315472952

`A000079(Δ[A022559(n)])²`
-/

namespace A165825.P12370298318315472952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A165825.P12370298318315472952

namespace A165825

/-- `A000079(Δ[A022559(n)])²` -/
def P12370298318315472952.Spec : Prop :=
  ∀ n, P12370298318315472952.a n = A165825 (n + 1)

end A165825

/-!
# A165826: Totally multiplicative sequence with a(p) = 5.

The programs for A165826, the canonical program `A165826.P17731145702728149685` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165826 has offset 1).

The definition of A165826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165826.P12635728944461620811

`5^A001222(n+1)`
-/

namespace A165826.P12635728944461620811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165826.P12635728944461620811

namespace A165826

/-- `5^A001222(n+1)` -/
def P12635728944461620811.Spec : Prop :=
  ∀ n, P12635728944461620811.a n = (A165826 (n + 1) : ℚ)

end A165826

/-! ## A165826.P17731145702728149685

`A000351(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165826

/-- `A000351(A001222(n+1))` -/
def P17731145702728149685.Spec : Prop :=
  ∀ n, P17731145702728149685.a n = A165826 (n + 1)

theorem P17731145702728149685.correct : P17731145702728149685.Spec := by
  intro n
  simp only [A165826, Nat.add_sub_cancel]

end A165826

/-! ## A165826.P4374655629020484485

`5^∑{e}[n+1, #]`
-/

namespace A165826.P4374655629020484485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165826.P4374655629020484485

namespace A165826

/-- `5^∑{e}[n+1, #]` -/
def P4374655629020484485.Spec : Prop :=
  ∀ n, (P4374655629020484485.a n : ℤ) = A165826 (n + 1)

end A165826

/-! ## A165826.P16620289297199552363

`∏{e}[n+1, 5^#]`
-/

namespace A165826.P16620289297199552363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 ^ Nat.factorization (f1 n) p

end

end A165826.P16620289297199552363

namespace A165826

/-- `∏{e}[n+1, 5^#]` -/
def P16620289297199552363.Spec : Prop :=
  ∀ n, (P16620289297199552363.a n : ℤ) = A165826 (n + 1)

end A165826

/-! ## A165826.P7064196456359422020

`5^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165826.P7064196456359422020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165826.P7064196456359422020

namespace A165826

/-- `5^∑{p}[n+1, val(n+1, #)]` -/
def P7064196456359422020.Spec : Prop :=
  ∀ n, (P7064196456359422020.a n : ℤ) = A165826 (n + 1)

end A165826

/-! ## A165826.P5067047266615401339

`∏{p}[n+1, 5^val(n+1, #)]`
-/

namespace A165826.P5067047266615401339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165826.P5067047266615401339

namespace A165826

/-- `∏{p}[n+1, 5^val(n+1, #)]` -/
def P5067047266615401339.Spec : Prop :=
  ∀ n, (P5067047266615401339.a n : ℤ) = A165826 (n + 1)

end A165826

/-! ## A165826.P9507993749449853900

`sqrt(A165846(n+1))`
-/

namespace A165826.P9507993749449853900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165846 (n + 1) : ℝ)

end

end A165826.P9507993749449853900

namespace A165826

/-- `sqrt(A165846(n+1))` -/
def P9507993749449853900.Spec : Prop :=
  ∀ n, P9507993749449853900.a n = (A165826 (n + 1) : ℝ)

end A165826

/-! ## A165826.P17902024795813450786

`5^Δ[A022559(n)]`
-/

namespace A165826.P17902024795813450786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165826.P17902024795813450786

namespace A165826

/-- `5^Δ[A022559(n)]` -/
def P17902024795813450786.Spec : Prop :=
  ∀ n, P17902024795813450786.a n = (A165826 (n + 1) : ℚ)

end A165826

/-! ## A165826.P14942614497674363308

`A000351(∑{e}[n+1, #])`
-/

namespace A165826.P14942614497674363308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165826.P14942614497674363308

namespace A165826

/-- `A000351(∑{e}[n+1, #])` -/
def P14942614497674363308.Spec : Prop :=
  ∀ n, P14942614497674363308.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P12126614359417219418

`sqrt(5^A255201(n+1))`
-/

namespace A165826.P12126614359417219418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 : ℚ) ^ (A255201 (n + 1) : ℤ) : ℝ)

end

end A165826.P12126614359417219418

namespace A165826

/-- `sqrt(5^A255201(n+1))` -/
def P12126614359417219418.Spec : Prop :=
  ∀ n, P12126614359417219418.a n = (A165826 (n + 1) : ℝ)

end A165826

/-! ## A165826.P16642563851695644283

`A166626(n+1)/(n+1)`
-/

namespace A165826.P16642563851695644283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166626 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165826.P16642563851695644283

namespace A165826

/-- `A166626(n+1)/(n+1)` -/
def P16642563851695644283.Spec : Prop :=
  ∀ n, P16642563851695644283.a n = (A165826 (n + 1) : ℚ)

end A165826

/-! ## A165826.P18022763861859354054

`or(1, 5^A001222(2*n-(n-1)))`
-/

namespace A165826.P18022763861859354054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)))

end

end A165826.P18022763861859354054

namespace A165826

/-- `or(1, 5^A001222(2*n-(n-1)))` -/
def P18022763861859354054.Spec : Prop :=
  ∀ n, P18022763861859354054.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P7691783763758861518

`A032532(A061142(n+1))`
-/

namespace A165826.P7691783763758861518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A061142 (n + 1)).toNat

end

end A165826.P7691783763758861518

namespace A165826

/-- `A032532(A061142(n+1))` -/
def P7691783763758861518.Spec : Prop :=
  ∀ n, P7691783763758861518.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P10933872622741902700

`A017919(A255201(n+1))`
-/

namespace A165826.P10933872622741902700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 (A255201 (n + 1)).toNat

end

end A165826.P10933872622741902700

namespace A165826

/-- `A017919(A255201(n+1))` -/
def P10933872622741902700.Spec : Prop :=
  ∀ n, P10933872622741902700.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P14295152709335019871

`A166652(abs(A165872(n+1)))`
-/

namespace A165826.P14295152709335019871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166652 |A165872 (n + 1)|.toNat

end

end A165826.P14295152709335019871

namespace A165826

/-- `A166652(abs(A165872(n+1)))` -/
def P14295152709335019871.Spec : Prop :=
  ∀ n, P14295152709335019871.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P13128151498183170203

`A166652(sqrt(A165825(n+1)))`
-/

namespace A165826.P13128151498183170203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166652 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165826.P13128151498183170203

namespace A165826

/-- `A166652(sqrt(A165825(n+1)))` -/
def P13128151498183170203.Spec : Prop :=
  ∀ n, P13128151498183170203.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P9637339724976231294

`A166660(sqrt(A165825(n+1)))`
-/

namespace A165826.P9637339724976231294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166660 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165826.P9637339724976231294

namespace A165826

/-- `A166660(sqrt(A165825(n+1)))` -/
def P9637339724976231294.Spec : Prop :=
  ∀ n, P9637339724976231294.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P359412277450943417

`A017919(2*A001222(n+1))`
-/

namespace A165826.P359412277450943417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 (2 * A001222 (n + 1)).toNat

end

end A165826.P359412277450943417

namespace A165826

/-- `A017919(2*A001222(n+1))` -/
def P359412277450943417.Spec : Prop :=
  ∀ n, P359412277450943417.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P6118446722778269627

`A026383(2*A001222(n+1))`
-/

namespace A165826.P6118446722778269627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (2 * A001222 (n + 1)).toNat

end

end A165826.P6118446722778269627

namespace A165826

/-- `A026383(2*A001222(n+1))` -/
def P6118446722778269627.Spec : Prop :=
  ∀ n, P6118446722778269627.a n = A165826 (n + 1)

end A165826

/-! ## A165826.P15376733023353091174

`A056451(2*A001222(n+1))`
-/

namespace A165826.P15376733023353091174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * A001222 (n + 1)).toNat

end

end A165826.P15376733023353091174

namespace A165826

/-- `A056451(2*A001222(n+1))` -/
def P15376733023353091174.Spec : Prop :=
  ∀ n, P15376733023353091174.a n = A165826 (n + 1)

end A165826

/-!
# A165827: Totally multiplicative sequence with a(p) = 6.

The programs for A165827, the canonical program `A165827.P4021865755216149742` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165827 has offset 1).

The definition of A165827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165827.P8633137535508688787

`6^A001222(n+1)`
-/

namespace A165827.P8633137535508688787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165827.P8633137535508688787

namespace A165827

/-- `6^A001222(n+1)` -/
def P8633137535508688787.Spec : Prop :=
  ∀ n, P8633137535508688787.a n = (A165827 (n + 1) : ℚ)

end A165827

/-! ## A165827.P4021865755216149742

`A000400(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165827

/-- `A000400(A001222(n+1))` -/
def P4021865755216149742.Spec : Prop :=
  ∀ n, P4021865755216149742.a n = A165827 (n + 1)

theorem P4021865755216149742.correct : P4021865755216149742.Spec := by
  intro n
  simp only [A165827, Nat.add_sub_cancel]

end A165827

/-! ## A165827.P12710854150027333895

`6^∑{e}[n+1, #]`
-/

namespace A165827.P12710854150027333895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165827.P12710854150027333895

namespace A165827

/-- `6^∑{e}[n+1, #]` -/
def P12710854150027333895.Spec : Prop :=
  ∀ n, (P12710854150027333895.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P4818342356240414581

`∏{e}[n+1, 6^#]`
-/

namespace A165827.P4818342356240414581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 6 ^ Nat.factorization (f1 n) p

end

end A165827.P4818342356240414581

namespace A165827

/-- `∏{e}[n+1, 6^#]` -/
def P4818342356240414581.Spec : Prop :=
  ∀ n, (P4818342356240414581.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P1172433333845533358

`6^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165827.P1172433333845533358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165827.P1172433333845533358

namespace A165827

/-- `6^∑{p}[n+1, val(n+1, #)]` -/
def P1172433333845533358.Spec : Prop :=
  ∀ n, (P1172433333845533358.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P9488847445660507908

`∏{p}[n+1, 6^val(n+1, #)]`
-/

namespace A165827.P9488847445660507908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 6 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165827.P9488847445660507908

namespace A165827

/-- `∏{p}[n+1, 6^val(n+1, #)]` -/
def P9488847445660507908.Spec : Prop :=
  ∀ n, (P9488847445660507908.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P5059877087352353007

`sqrt(A165857(n+1))`
-/

namespace A165827.P5059877087352353007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165857 (n + 1) : ℝ)

end

end A165827.P5059877087352353007

namespace A165827

/-- `sqrt(A165857(n+1))` -/
def P5059877087352353007.Spec : Prop :=
  ∀ n, P5059877087352353007.a n = (A165827 (n + 1) : ℝ)

end A165827

/-! ## A165827.P3516711916417565719

`6^Δ[A022559(n)]`
-/

namespace A165827.P3516711916417565719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165827.P3516711916417565719

namespace A165827

/-- `6^Δ[A022559(n)]` -/
def P3516711916417565719.Spec : Prop :=
  ∀ n, P3516711916417565719.a n = (A165827 (n + 1) : ℚ)

end A165827

/-! ## A165827.P911415758852362185

`A000400(∑{e}[n+1, #])`
-/

namespace A165827.P911415758852362185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165827.P911415758852362185

namespace A165827

/-- `A000400(∑{e}[n+1, #])` -/
def P911415758852362185.Spec : Prop :=
  ∀ n, P911415758852362185.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P14852973591197743627

`6^val(A165825(n+1), 4)`
-/

namespace A165827.P14852973591197743627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165827.P14852973591197743627

namespace A165827

/-- `6^val(A165825(n+1), 4)` -/
def P14852973591197743627.Spec : Prop :=
  ∀ n, (P14852973591197743627.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P8751185228934513449

`A166627(n+1)/(n+1)`
-/

namespace A165827.P8751185228934513449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166627 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165827.P8751185228934513449

namespace A165827

/-- `A166627(n+1)/(n+1)` -/
def P8751185228934513449.Spec : Prop :=
  ∀ n, P8751185228934513449.a n = (A165827 (n + 1) : ℚ)

end A165827

/-! ## A165827.P15486681008839960841

`6*a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A165827.P15486681008839960841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (A052126 (n + 1) - 1).toNat

end

end A165827.P15486681008839960841

namespace A165827

/-- `6*a(A052126(n+1)-1)` -/
def P15486681008839960841.Spec : Prop :=
  ∀ n, (P15486681008839960841.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P13052059243777373188

`6*a(A246277(n+1)-1)` with `a(0)=1`
-/

namespace A165827.P13052059243777373188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (A246277 (n + 1) - 1).toNat

end

end A165827.P13052059243777373188

namespace A165827

/-- `6*a(A246277(n+1)-1)` -/
def P13052059243777373188.Spec : Prop :=
  ∀ n, (P13052059243777373188.a n : ℤ) = A165827 (n + 1)

end A165827

/-! ## A165827.P6697374864988749301

`A033043(A061142(n+1))`
-/

namespace A165827.P6697374864988749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A061142 (n + 1)).toNat

end

end A165827.P6697374864988749301

namespace A165827

/-- `A033043(A061142(n+1))` -/
def P6697374864988749301.Spec : Prop :=
  ∀ n, P6697374864988749301.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P1902978835509419128

`A017922(A255201(n+1))`
-/

namespace A165827.P1902978835509419128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (A255201 (n + 1)).toNat

end

end A165827.P1902978835509419128

namespace A165827

/-- `A017922(A255201(n+1))` -/
def P1902978835509419128.Spec : Prop :=
  ∀ n, P1902978835509419128.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P6840859345323873490

`A167338(sqrt(A165825(n+1)))`
-/

namespace A165827.P6840859345323873490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167338 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165827.P6840859345323873490

namespace A165827

/-- `A167338(sqrt(A165825(n+1)))` -/
def P6840859345323873490.Spec : Prop :=
  ∀ n, P6840859345323873490.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P13296581331544973015

`A017922(2*A001222(n+1))`
-/

namespace A165827.P13296581331544973015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * A001222 (n + 1)).toNat

end

end A165827.P13296581331544973015

namespace A165827

/-- `A017922(2*A001222(n+1))` -/
def P13296581331544973015.Spec : Prop :=
  ∀ n, P13296581331544973015.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P4414545667008005604

`A017924(2*A001222(n+1))`
-/

namespace A165827.P4414545667008005604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 (2 * A001222 (n + 1)).toNat

end

end A165827.P4414545667008005604

namespace A165827

/-- `A017924(2*A001222(n+1))` -/
def P4414545667008005604.Spec : Prop :=
  ∀ n, P4414545667008005604.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P11048088753606459429

`A026549(2*A001222(n+1))`
-/

namespace A165827.P11048088753606459429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * A001222 (n + 1)).toNat

end

end A165827.P11048088753606459429

namespace A165827

/-- `A026549(2*A001222(n+1))` -/
def P11048088753606459429.Spec : Prop :=
  ∀ n, P11048088753606459429.a n = A165827 (n + 1)

end A165827

/-! ## A165827.P13253950366497839003

`A056452(2*A001222(n+1))`
-/

namespace A165827.P13253950366497839003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * A001222 (n + 1)).toNat

end

end A165827.P13253950366497839003

namespace A165827

/-- `A056452(2*A001222(n+1))` -/
def P13253950366497839003.Spec : Prop :=
  ∀ n, P13253950366497839003.a n = A165827 (n + 1)

end A165827

/-!
# A165828: Totally multiplicative sequence with a(p) = 7.

The programs for A165828, the canonical program `A165828.P4152720861513737696` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165828 has offset 1).

The definition of A165828 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165828.P12731018165355801951

`7^A001222(n+1)`
-/

namespace A165828.P12731018165355801951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165828.P12731018165355801951

namespace A165828

/-- `7^A001222(n+1)` -/
def P12731018165355801951.Spec : Prop :=
  ∀ n, P12731018165355801951.a n = (A165828 (n + 1) : ℚ)

end A165828

/-! ## A165828.P4152720861513737696

`A000420(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165828

/-- `A000420(A001222(n+1))` -/
def P4152720861513737696.Spec : Prop :=
  ∀ n, P4152720861513737696.a n = A165828 (n + 1)

theorem P4152720861513737696.correct : P4152720861513737696.Spec := by
  intro n
  simp only [A165828, Nat.add_sub_cancel]

end A165828

/-! ## A165828.P11999644198167045509

`7^∑{e}[n+1, #]`
-/

namespace A165828.P11999644198167045509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165828.P11999644198167045509

namespace A165828

/-- `7^∑{e}[n+1, #]` -/
def P11999644198167045509.Spec : Prop :=
  ∀ n, (P11999644198167045509.a n : ℤ) = A165828 (n + 1)

end A165828

/-! ## A165828.P13798969898002746285

`∏{e}[n+1, 7^#]`
-/

namespace A165828.P13798969898002746285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 7 ^ Nat.factorization (f1 n) p

end

end A165828.P13798969898002746285

namespace A165828

/-- `∏{e}[n+1, 7^#]` -/
def P13798969898002746285.Spec : Prop :=
  ∀ n, (P13798969898002746285.a n : ℤ) = A165828 (n + 1)

end A165828

/-! ## A165828.P97998538219420489

`7^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165828.P97998538219420489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165828.P97998538219420489

namespace A165828

/-- `7^∑{p}[n+1, val(n+1, #)]` -/
def P97998538219420489.Spec : Prop :=
  ∀ n, (P97998538219420489.a n : ℤ) = A165828 (n + 1)

end A165828

/-! ## A165828.P6450671429539587452

`∏{p}[n+1, 7^val(n+1, #)]`
-/

namespace A165828.P6450671429539587452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 7 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165828.P6450671429539587452

namespace A165828

/-- `∏{p}[n+1, 7^val(n+1, #)]` -/
def P6450671429539587452.Spec : Prop :=
  ∀ n, (P6450671429539587452.a n : ℤ) = A165828 (n + 1)

end A165828

/-! ## A165828.P9771393076583623574

`sqrt(A165870(n+1))`
-/

namespace A165828.P9771393076583623574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165870 (n + 1) : ℝ)

end

end A165828.P9771393076583623574

namespace A165828

/-- `sqrt(A165870(n+1))` -/
def P9771393076583623574.Spec : Prop :=
  ∀ n, P9771393076583623574.a n = (A165828 (n + 1) : ℝ)

end A165828

/-! ## A165828.P3632380444163865205

`7^Δ[A022559(n)]`
-/

namespace A165828.P3632380444163865205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165828.P3632380444163865205

namespace A165828

/-- `7^Δ[A022559(n)]` -/
def P3632380444163865205.Spec : Prop :=
  ∀ n, P3632380444163865205.a n = (A165828 (n + 1) : ℚ)

end A165828

/-! ## A165828.P10045915561961392631

`A000420(∑{e}[n+1, #])`
-/

namespace A165828.P10045915561961392631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165828.P10045915561961392631

namespace A165828

/-- `A000420(∑{e}[n+1, #])` -/
def P10045915561961392631.Spec : Prop :=
  ∀ n, P10045915561961392631.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P90359366246199321

`7^log2(A061142(n+1))`
-/

namespace A165828.P90359366246199321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165828.P90359366246199321

namespace A165828

/-- `7^log2(A061142(n+1))` -/
def P90359366246199321.Spec : Prop :=
  ∀ n, P90359366246199321.a n = (A165828 (n + 1) : ℝ)

end A165828

/-! ## A165828.P6316239407740003723

`7^val(A165825(n+1), 4)`
-/

namespace A165828.P6316239407740003723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165828.P6316239407740003723

namespace A165828

/-- `7^val(A165825(n+1), 4)` -/
def P6316239407740003723.Spec : Prop :=
  ∀ n, (P6316239407740003723.a n : ℤ) = A165828 (n + 1)

end A165828

/-! ## A165828.P16335225569775533349

`A166628(n+1)/(n+1)`
-/

namespace A165828.P16335225569775533349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166628 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165828.P16335225569775533349

namespace A165828

/-- `A166628(n+1)/(n+1)` -/
def P16335225569775533349.Spec : Prop :=
  ∀ n, P16335225569775533349.a n = (A165828 (n + 1) : ℚ)

end A165828

/-! ## A165828.P12821884205031602751

`A116522(A061142(n+1))`
-/

namespace A165828.P12821884205031602751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (A061142 (n + 1)).toNat

end

end A165828.P12821884205031602751

namespace A165828

/-- `A116522(A061142(n+1))` -/
def P12821884205031602751.Spec : Prop :=
  ∀ n, P12821884205031602751.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P6031764071247975850

`A017925(A255201(n+1))`
-/

namespace A165828.P6031764071247975850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (A255201 (n + 1)).toNat

end

end A165828.P6031764071247975850

namespace A165828

/-- `A017925(A255201(n+1))` -/
def P6031764071247975850.Spec : Prop :=
  ∀ n, P6031764071247975850.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P1929001870053839609

`A166661(abs(A165872(n+1)))`
-/

namespace A165828.P1929001870053839609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 |A165872 (n + 1)|.toNat

end

end A165828.P1929001870053839609

namespace A165828

/-- `A166661(abs(A165872(n+1)))` -/
def P1929001870053839609.Spec : Prop :=
  ∀ n, P1929001870053839609.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P16062146823042759090

`A166653(sqrt(A165825(n+1)))`
-/

namespace A165828.P16062146823042759090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166653 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165828.P16062146823042759090

namespace A165828

/-- `A166653(sqrt(A165825(n+1)))` -/
def P16062146823042759090.Spec : Prop :=
  ∀ n, P16062146823042759090.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P2001918915444583086

`A166661(sqrt(A165825(n+1)))`
-/

namespace A165828.P2001918915444583086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165828.P2001918915444583086

namespace A165828

/-- `A166661(sqrt(A165825(n+1)))` -/
def P2001918915444583086.Spec : Prop :=
  ∀ n, P2001918915444583086.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P6377417731819841066

`A017925(2*A001222(n+1))`
-/

namespace A165828.P6377417731819841066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * A001222 (n + 1)).toNat

end

end A165828.P6377417731819841066

namespace A165828

/-- `A017925(2*A001222(n+1))` -/
def P6377417731819841066.Spec : Prop :=
  ∀ n, P6377417731819841066.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P3361669918493772831

`A017927(2*A001222(n+1))`
-/

namespace A165828.P3361669918493772831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 (2 * A001222 (n + 1)).toNat

end

end A165828.P3361669918493772831

namespace A165828

/-- `A017927(2*A001222(n+1))` -/
def P3361669918493772831.Spec : Prop :=
  ∀ n, P3361669918493772831.a n = A165828 (n + 1)

end A165828

/-! ## A165828.P10551381413322490337

`A123752(2*A001222(n+1))`
-/

namespace A165828.P10551381413322490337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * A001222 (n + 1)).toNat

end

end A165828.P10551381413322490337

namespace A165828

/-- `A123752(2*A001222(n+1))` -/
def P10551381413322490337.Spec : Prop :=
  ∀ n, P10551381413322490337.a n = A165828 (n + 1)

end A165828

/-!
# A165829: Totally multiplicative sequence with a(p) = 8.

The programs for A165829, the canonical program `A165829.P9254517341196850222` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165829 has offset 1).

The definition of A165829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165829.P10419791417928345185

`8^A001222(n+1)`
-/

namespace A165829.P10419791417928345185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165829.P10419791417928345185

namespace A165829

/-- `8^A001222(n+1)` -/
def P10419791417928345185.Spec : Prop :=
  ∀ n, P10419791417928345185.a n = (A165829 (n + 1) : ℚ)

end A165829

/-! ## A165829.P9254517341196850222

`A001018(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165829

/-- `A001018(A001222(n+1))` -/
def P9254517341196850222.Spec : Prop :=
  ∀ n, P9254517341196850222.a n = A165829 (n + 1)

theorem P9254517341196850222.correct : P9254517341196850222.Spec := by
  intro n
  simp only [A165829, Nat.add_sub_cancel]

end A165829

/-! ## A165829.P13688661172807070652

`8^∑{e}[n+1, #]`
-/

namespace A165829.P13688661172807070652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165829.P13688661172807070652

namespace A165829

/-- `8^∑{e}[n+1, #]` -/
def P13688661172807070652.Spec : Prop :=
  ∀ n, (P13688661172807070652.a n : ℤ) = A165829 (n + 1)

end A165829

/-! ## A165829.P10276411861103267016

`∏{e}[n+1, 8^#]`
-/

namespace A165829.P10276411861103267016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 8 ^ Nat.factorization (f1 n) p

end

end A165829.P10276411861103267016

namespace A165829

/-- `∏{e}[n+1, 8^#]` -/
def P10276411861103267016.Spec : Prop :=
  ∀ n, (P10276411861103267016.a n : ℤ) = A165829 (n + 1)

end A165829

/-! ## A165829.P5033945549810774113

`8^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165829.P5033945549810774113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165829.P5033945549810774113

namespace A165829

/-- `8^∑{p}[n+1, val(n+1, #)]` -/
def P5033945549810774113.Spec : Prop :=
  ∀ n, (P5033945549810774113.a n : ℤ) = A165829 (n + 1)

end A165829

/-! ## A165829.P13827769083595337140

`∏{p}[n+1, 8^val(n+1, #)]`
-/

namespace A165829.P13827769083595337140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 8 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165829.P13827769083595337140

namespace A165829

/-- `∏{p}[n+1, 8^val(n+1, #)]` -/
def P13827769083595337140.Spec : Prop :=
  ∀ n, (P13827769083595337140.a n : ℤ) = A165829 (n + 1)

end A165829

/-! ## A165829.P17143750496728369982

`8^Δ[A022559(n)]`
-/

namespace A165829.P17143750496728369982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165829.P17143750496728369982

namespace A165829

/-- `8^Δ[A022559(n)]` -/
def P17143750496728369982.Spec : Prop :=
  ∀ n, P17143750496728369982.a n = (A165829 (n + 1) : ℚ)

end A165829

/-! ## A165829.P2144354229860383697

`A061142(n+1)^3`
-/

namespace A165829.P2144354229860383697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 3

end

end A165829.P2144354229860383697

namespace A165829

/-- `A061142(n+1)^3` -/
def P2144354229860383697.Spec : Prop :=
  ∀ n, P2144354229860383697.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P12226924269041706796

`A001018(∑{e}[n+1, #])`
-/

namespace A165829.P12226924269041706796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165829.P12226924269041706796

namespace A165829

/-- `A001018(∑{e}[n+1, #])` -/
def P12226924269041706796.Spec : Prop :=
  ∀ n, P12226924269041706796.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P18298779237036092858

`sqrt(A165825(n+1)^3)`
-/

namespace A165829.P18298779237036092858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) ^ 3 : ℝ)

end

end A165829.P18298779237036092858

namespace A165829

/-- `sqrt(A165825(n+1)^3)` -/
def P18298779237036092858.Spec : Prop :=
  ∀ n, P18298779237036092858.a n = (A165829 (n + 1) : ℝ)

end A165829

/-! ## A165829.P15048175488761460033

`A166629(n+1)/(n+1)`
-/

namespace A165829.P15048175488761460033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166629 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165829.P15048175488761460033

namespace A165829

/-- `A166629(n+1)/(n+1)` -/
def P15048175488761460033.Spec : Prop :=
  ∀ n, P15048175488761460033.a n = (A165829 (n + 1) : ℚ)

end A165829

/-! ## A165829.P1254767640239233685

`(A123667(n+1)/(n+1))^3`
-/

namespace A165829.P1254767640239233685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A165829.P1254767640239233685

namespace A165829

/-- `(A123667(n+1)/(n+1))^3` -/
def P1254767640239233685.Spec : Prop :=
  ∀ n, P1254767640239233685.a n = (A165829 (n + 1) : ℚ)

end A165829

/-! ## A165829.P12196994495499130946

`A000578(A061142(n+1))`
-/

namespace A165829.P12196994495499130946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A061142 (n + 1)).toNat

end

end A165829.P12196994495499130946

namespace A165829

/-- `A000578(A061142(n+1))` -/
def P12196994495499130946.Spec : Prop :=
  ∀ n, P12196994495499130946.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P8720262866694796954

`A017928(A255201(n+1))`
-/

namespace A165829.P8720262866694796954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 (A255201 (n + 1)).toNat

end

end A165829.P8720262866694796954

namespace A165829

/-- `A017928(A255201(n+1))` -/
def P8720262866694796954.Spec : Prop :=
  ∀ n, P8720262866694796954.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P9772548388453499349

`A017928(2*A001222(n+1))`
-/

namespace A165829.P9772548388453499349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 (2 * A001222 (n + 1)).toNat

end

end A165829.P9772548388453499349

namespace A165829

/-- `A017928(2*A001222(n+1))` -/
def P9772548388453499349.Spec : Prop :=
  ∀ n, P9772548388453499349.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P18031824719002605117

`A094015(2*A001222(n+1))`
-/

namespace A165829.P18031824719002605117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 (2 * A001222 (n + 1)).toNat

end

end A165829.P18031824719002605117

namespace A165829

/-- `A094015(2*A001222(n+1))` -/
def P18031824719002605117.Spec : Prop :=
  ∀ n, P18031824719002605117.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P17513276390052370851

`A164640(2*A001222(n+1)+1)`
-/

namespace A165829.P17513276390052370851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (2 * A001222 (n + 1) + 1).toNat

end

end A165829.P17513276390052370851

namespace A165829

/-- `A164640(2*A001222(n+1)+1)` -/
def P17513276390052370851.Spec : Prop :=
  ∀ n, P17513276390052370851.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P14552280612884911865

`A305561(2*A001222(n+1)+1)`
-/

namespace A165829.P14552280612884911865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305561 (2 * A001222 (n + 1) + 1).toNat

end

end A165829.P14552280612884911865

namespace A165829

/-- `A305561(2*A001222(n+1)+1)` -/
def P14552280612884911865.Spec : Prop :=
  ∀ n, P14552280612884911865.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P9848018164291192988

`A000225(3*A001222(n+1))+1`
-/

namespace A165829.P9848018164291192988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * A001222 (n + 1)).toNat + 1

end

end A165829.P9848018164291192988

namespace A165829

/-- `A000225(3*A001222(n+1))+1` -/
def P9848018164291192988.Spec : Prop :=
  ∀ n, P9848018164291192988.a n = A165829 (n + 1)

end A165829

/-! ## A165829.P15529889706152946172

`A018066(2*2*A001222(n+1))`
-/

namespace A165829.P15529889706152946172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018066 (2 * (2 * A001222 (n + 1))).toNat

end

end A165829.P15529889706152946172

namespace A165829

/-- `A018066(2*2*A001222(n+1))` -/
def P15529889706152946172.Spec : Prop :=
  ∀ n, P15529889706152946172.a n = A165829 (n + 1)

end A165829

/-!
# A165830: Totally multiplicative sequence with a(p) = 9.

The programs for A165830, the canonical program `A165830.P8080473799805907904` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165830 has offset 1).

The definition of A165830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165830.P6643882138430857056

`9^A001222(n+1)`
-/

namespace A165830.P6643882138430857056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165830.P6643882138430857056

namespace A165830

/-- `9^A001222(n+1)` -/
def P6643882138430857056.Spec : Prop :=
  ∀ n, P6643882138430857056.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P8080473799805907904

`A001019(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165830

/-- `A001019(A001222(n+1))` -/
def P8080473799805907904.Spec : Prop :=
  ∀ n, P8080473799805907904.a n = A165830 (n + 1)

theorem P8080473799805907904.correct : P8080473799805907904.Spec := by
  intro n
  simp only [A165830, Nat.add_sub_cancel]

end A165830

/-! ## A165830.P18102795012101024637

`9^∑{e}[n+1, #]`
-/

namespace A165830.P18102795012101024637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165830.P18102795012101024637

namespace A165830

/-- `9^∑{e}[n+1, #]` -/
def P18102795012101024637.Spec : Prop :=
  ∀ n, (P18102795012101024637.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P5236829329297088110

`∏{e}[n+1, 9^#]`
-/

namespace A165830.P5236829329297088110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 9 ^ Nat.factorization (f1 n) p

end

end A165830.P5236829329297088110

namespace A165830

/-- `∏{e}[n+1, 9^#]` -/
def P5236829329297088110.Spec : Prop :=
  ∀ n, (P5236829329297088110.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P397355873602288702

`∏{e}[n+1, root(3, 1/#)]²`
-/

namespace A165830.P397355873602288702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (3 : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A165830.P397355873602288702

namespace A165830

/-- `∏{e}[n+1, root(3, 1/#)]²` -/
def P397355873602288702.Spec : Prop :=
  ∀ n, P397355873602288702.a n = (A165830 (n + 1) : ℝ)

end A165830

/-! ## A165830.P2825203488800794947

`9^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165830.P2825203488800794947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165830.P2825203488800794947

namespace A165830

/-- `9^∑{p}[n+1, val(n+1, #)]` -/
def P2825203488800794947.Spec : Prop :=
  ∀ n, (P2825203488800794947.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P12028197644402104288

`∏{p}[n+1, 9^val(n+1, #)]`
-/

namespace A165830.P12028197644402104288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 9 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165830.P12028197644402104288

namespace A165830

/-- `∏{p}[n+1, 9^val(n+1, #)]` -/
def P12028197644402104288.Spec : Prop :=
  ∀ n, (P12028197644402104288.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P7416616710973041317

`(3^∑{e}[2*n-(n-1), #])²`
-/

namespace A165830.P7416616710973041317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A165830.P7416616710973041317

namespace A165830

/-- `(3^∑{e}[2*n-(n-1), #])²` -/
def P7416616710973041317.Spec : Prop :=
  ∀ n, (P7416616710973041317.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P10067687961078069175

`A165824(n+1)²`
-/

namespace A165830.P10067687961078069175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2

end

end A165830.P10067687961078069175

namespace A165830

/-- `A165824(n+1)²` -/
def P10067687961078069175.Spec : Prop :=
  ∀ n, P10067687961078069175.a n = A165830 (n + 1)

end A165830

/-! ## A165830.P13718372469057001223

`9^Δ[A022559(n)]`
-/

namespace A165830.P13718372469057001223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165830.P13718372469057001223

namespace A165830

/-- `9^Δ[A022559(n)]` -/
def P13718372469057001223.Spec : Prop :=
  ∀ n, P13718372469057001223.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P10113647551525073513

`3^A255201(n+1)`
-/

namespace A165830.P10113647551525073513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165830.P10113647551525073513

namespace A165830

/-- `3^A255201(n+1)` -/
def P10113647551525073513.Spec : Prop :=
  ∀ n, P10113647551525073513.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P6321740262225823782

`A001019(∑{e}[n+1, #])`
-/

namespace A165830.P6321740262225823782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165830.P6321740262225823782

namespace A165830

/-- `A001019(∑{e}[n+1, #])` -/
def P6321740262225823782.Spec : Prop :=
  ∀ n, P6321740262225823782.a n = A165830 (n + 1)

end A165830

/-! ## A165830.P1884051620986839706

`3^log2(A165825(n+1))`
-/

namespace A165830.P1884051620986839706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A165825 (n + 1) : ℝ))

end

end A165830.P1884051620986839706

namespace A165830

/-- `3^log2(A165825(n+1))` -/
def P1884051620986839706.Spec : Prop :=
  ∀ n, P1884051620986839706.a n = (A165830 (n + 1) : ℝ)

end A165830

/-! ## A165830.P17473245340256338170

`A000244(∑{e}[n+1, #])²`
-/

namespace A165830.P17473245340256338170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A165830.P17473245340256338170

namespace A165830

/-- `A000244(∑{e}[n+1, #])²` -/
def P17473245340256338170.Spec : Prop :=
  ∀ n, P17473245340256338170.a n = A165830 (n + 1)

end A165830

/-! ## A165830.P1230315582089817342

`A165848(n+1)^(2/3)`
-/

namespace A165830.P1230315582089817342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165848 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A165830.P1230315582089817342

namespace A165830

/-- `A165848(n+1)^(2/3)` -/
def P1230315582089817342.Spec : Prop :=
  ∀ n, P1230315582089817342.a n = (A165830 (n + 1) : ℝ)

end A165830

/-! ## A165830.P1328833967271363580

`A166630(n+1)/(n+1)`
-/

namespace A165830.P1328833967271363580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166630 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165830.P1328833967271363580

namespace A165830

/-- `A166630(n+1)/(n+1)` -/
def P1328833967271363580.Spec : Prop :=
  ∀ n, P1328833967271363580.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P12880741049847987453

`(A166624(n+1)/(n+1))²`
-/

namespace A165830.P12880741049847987453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166624 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A165830.P12880741049847987453

namespace A165830

/-- `(A166624(n+1)/(n+1))²` -/
def P12880741049847987453.Spec : Prop :=
  ∀ n, P12880741049847987453.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P9043830722250198808

`(3^A001222(2*n-(n-1)))²`
-/

namespace A165830.P9043830722250198808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165830.P9043830722250198808

namespace A165830

/-- `(3^A001222(2*n-(n-1)))²` -/
def P9043830722250198808.Spec : Prop :=
  ∀ n, P9043830722250198808.a n = (A165830 (n + 1) : ℚ)

end A165830

/-! ## A165830.P12828622812008483770

`9*a((n+1)/A020639(n+1)-1)` with `a(0)=1`
-/

namespace A165830.P12828622812008483770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ) - 1)).toNat

end

end A165830.P12828622812008483770

namespace A165830

/-- `9*a((n+1)/A020639(n+1)-1)` -/
def P12828622812008483770.Spec : Prop :=
  ∀ n, (P12828622812008483770.a n : ℤ) = A165830 (n + 1)

end A165830

/-! ## A165830.P11783788851763134145

`A033046(A061142(n+1))`
-/

namespace A165830.P11783788851763134145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A061142 (n + 1)).toNat

end

end A165830.P11783788851763134145

namespace A165830

/-- `A033046(A061142(n+1))` -/
def P11783788851763134145.Spec : Prop :=
  ∀ n, P11783788851763134145.a n = A165830 (n + 1)

end A165830

/-!
# A165831: Totally multiplicative sequence with a(p) = 10.

The programs for A165831, the canonical program `A165831.P18296274249843642018` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165831 has offset 1).

The definition of A165831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165831.P9150617299029650916

`10^A001222(n+1)`
-/

namespace A165831.P9150617299029650916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165831.P9150617299029650916

namespace A165831

/-- `10^A001222(n+1)` -/
def P9150617299029650916.Spec : Prop :=
  ∀ n, P9150617299029650916.a n = (A165831 (n + 1) : ℚ)

end A165831

/-! ## A165831.P18296274249843642018

`A011557(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165831

/-- `A011557(A001222(n+1))` -/
def P18296274249843642018.Spec : Prop :=
  ∀ n, P18296274249843642018.a n = A165831 (n + 1)

theorem P18296274249843642018.correct : P18296274249843642018.Spec := by
  intro n
  simp only [A165831, Nat.add_sub_cancel]

end A165831

/-! ## A165831.P7555440244086509043

`10^∑{e}[n+1, #]`
-/

namespace A165831.P7555440244086509043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165831.P7555440244086509043

namespace A165831

/-- `10^∑{e}[n+1, #]` -/
def P7555440244086509043.Spec : Prop :=
  ∀ n, (P7555440244086509043.a n : ℤ) = A165831 (n + 1)

end A165831

/-! ## A165831.P1726952807418865842

`∏{e}[n+1, 10^#]`
-/

namespace A165831.P1726952807418865842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 10 ^ Nat.factorization (f1 n) p

end

end A165831.P1726952807418865842

namespace A165831

/-- `∏{e}[n+1, 10^#]` -/
def P1726952807418865842.Spec : Prop :=
  ∀ n, (P1726952807418865842.a n : ℤ) = A165831 (n + 1)

end A165831

/-! ## A165831.P16077663788138427387

`10^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165831.P16077663788138427387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165831.P16077663788138427387

namespace A165831

/-- `10^∑{p}[n+1, val(n+1, #)]` -/
def P16077663788138427387.Spec : Prop :=
  ∀ n, (P16077663788138427387.a n : ℤ) = A165831 (n + 1)

end A165831

/-! ## A165831.P2570521912556038664

`∏{p}[n+1, 10^val(n+1, #)]`
-/

namespace A165831.P2570521912556038664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 10 ^ SequenceMachineLib.valuation (n + 1) p

end

end A165831.P2570521912556038664

namespace A165831

/-- `∏{p}[n+1, 10^val(n+1, #)]` -/
def P2570521912556038664.Spec : Prop :=
  ∀ n, (P2570521912556038664.a n : ℤ) = A165831 (n + 1)

end A165831

/-! ## A165831.P9664767181166060589

`10^Δ[A022559(n)]`
-/

namespace A165831.P9664767181166060589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165831.P9664767181166060589

namespace A165831

/-- `10^Δ[A022559(n)]` -/
def P9664767181166060589.Spec : Prop :=
  ∀ n, P9664767181166060589.a n = (A165831 (n + 1) : ℚ)

end A165831

/-! ## A165831.P2926979771736650024

`A011557(∑{e}[n+1, #])`
-/

namespace A165831.P2926979771736650024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165831.P2926979771736650024

namespace A165831

/-- `A011557(∑{e}[n+1, #])` -/
def P2926979771736650024.Spec : Prop :=
  ∀ n, P2926979771736650024.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P7121869705400912286

`A166631(n+1)/(n+1)`
-/

namespace A165831.P7121869705400912286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166631 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A165831.P7121869705400912286

namespace A165831

/-- `A166631(n+1)/(n+1)` -/
def P7121869705400912286.Spec : Prop :=
  ∀ n, P7121869705400912286.a n = (A165831 (n + 1) : ℚ)

end A165831

/-! ## A165831.P7585975496290728394

`A011557(Δ[A022559(n)])`
-/

namespace A165831.P7585975496290728394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (f1 (n + 1) - f1 n).toNat

end

end A165831.P7585975496290728394

namespace A165831

/-- `A011557(Δ[A022559(n)])` -/
def P7585975496290728394.Spec : Prop :=
  ∀ n, P7585975496290728394.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P6647567784930753269

`A001739(A061142(n+1))`
-/

namespace A165831.P6647567784930753269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (A061142 (n + 1)).toNat

end

end A165831.P6647567784930753269

namespace A165831

/-- `A001739(A061142(n+1))` -/
def P6647567784930753269.Spec : Prop :=
  ∀ n, P6647567784930753269.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P10608355068416291349

`A007924(A105560(n+1))`
-/

namespace A165831.P10608355068416291349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A105560 (n + 1)).toNat

end

end A165831.P10608355068416291349

namespace A165831

/-- `A007924(A105560(n+1))` -/
def P10608355068416291349.Spec : Prop :=
  ∀ n, P10608355068416291349.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P6465381560346107008

`A004643(A255201(n+1))`
-/

namespace A165831.P6465381560346107008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (A255201 (n + 1)).toNat

end

end A165831.P6465381560346107008

namespace A165831

/-- `A004643(A255201(n+1))` -/
def P6465381560346107008.Spec : Prop :=
  ∀ n, P6465381560346107008.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P11525868875661401281

`A167331(abs(A165872(n+1)))`
-/

namespace A165831.P11525868875661401281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167331 |A165872 (n + 1)|.toNat

end

end A165831.P11525868875661401281

namespace A165831

/-- `A167331(abs(A165872(n+1)))` -/
def P11525868875661401281.Spec : Prop :=
  ∀ n, P11525868875661401281.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P17295196069215657473

`A167321(sqrt(A165825(n+1)))`
-/

namespace A165831.P17295196069215657473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167321 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165831.P17295196069215657473

namespace A165831

/-- `A167321(sqrt(A165825(n+1)))` -/
def P17295196069215657473.Spec : Prop :=
  ∀ n, P17295196069215657473.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P6741205934093553948

`A167331(sqrt(A165825(n+1)))`
-/

namespace A165831.P6741205934093553948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167331 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165831.P6741205934093553948

namespace A165831

/-- `A167331(sqrt(A165825(n+1)))` -/
def P6741205934093553948.Spec : Prop :=
  ∀ n, P6741205934093553948.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P16583166633321164941

`A167334(sqrt(A165825(n+1)))`
-/

namespace A165831.P16583166633321164941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167334 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165831.P16583166633321164941

namespace A165831

/-- `A167334(sqrt(A165825(n+1)))` -/
def P16583166633321164941.Spec : Prop :=
  ∀ n, P16583166633321164941.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P9608501070841608418

`A178501(A001222(n+1)+1)`
-/

namespace A165831.P9608501070841608418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (A001222 (n + 1) + 1).toNat

end

end A165831.P9608501070841608418

namespace A165831

/-- `A178501(A001222(n+1)+1)` -/
def P9608501070841608418.Spec : Prop :=
  ∀ n, P9608501070841608418.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P2561814181399391413

`A004643(2*A001222(n+1))`
-/

namespace A165831.P2561814181399391413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (2 * A001222 (n + 1)).toNat

end

end A165831.P2561814181399391413

namespace A165831

/-- `A004643(2*A001222(n+1))` -/
def P2561814181399391413.Spec : Prop :=
  ∀ n, P2561814181399391413.a n = A165831 (n + 1)

end A165831

/-! ## A165831.P13474420616769791501

`A017934(2*A001222(n+1))`
-/

namespace A165831.P13474420616769791501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * A001222 (n + 1)).toNat

end

end A165831.P13474420616769791501

namespace A165831

/-- `A017934(2*A001222(n+1))` -/
def P13474420616769791501.Spec : Prop :=
  ∀ n, P13474420616769791501.a n = A165831 (n + 1)

end A165831

/-!
# A165832: Totally multiplicative sequence with a(p) = 11.

The programs for A165832, the canonical program `A165832.P6428681695269553368` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165832 has offset 1).

The definition of A165832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165832.P7162641273932070102

`11^A001222(n+1)`
-/

namespace A165832.P7162641273932070102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165832.P7162641273932070102

namespace A165832

/-- `11^A001222(n+1)` -/
def P7162641273932070102.Spec : Prop :=
  ∀ n, P7162641273932070102.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P6428681695269553368

`A001020(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165832

/-- `A001020(A001222(n+1))` -/
def P6428681695269553368.Spec : Prop :=
  ∀ n, P6428681695269553368.a n = A165832 (n + 1)

theorem P6428681695269553368.correct : P6428681695269553368.Spec := by
  intro n
  simp only [A165832, Nat.add_sub_cancel]

end A165832

/-! ## A165832.P9904743168262264322

`11^∑{e}[n+1, #]`
-/

namespace A165832.P9904743168262264322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165832.P9904743168262264322

namespace A165832

/-- `11^∑{e}[n+1, #]` -/
def P9904743168262264322.Spec : Prop :=
  ∀ n, (P9904743168262264322.a n : ℤ) = A165832 (n + 1)

end A165832

/-! ## A165832.P8626274869182368562

`∏{e}[n+1, 11^#]`
-/

namespace A165832.P8626274869182368562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 11 ^ Nat.factorization (f1 n) p

end

end A165832.P8626274869182368562

namespace A165832

/-- `∏{e}[n+1, 11^#]` -/
def P8626274869182368562.Spec : Prop :=
  ∀ n, (P8626274869182368562.a n : ℤ) = A165832 (n + 1)

end A165832

/-! ## A165832.P10250232704560938042

`11^Δ[A022559(n)]`
-/

namespace A165832.P10250232704560938042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165832.P10250232704560938042

namespace A165832

/-- `11^Δ[A022559(n)]` -/
def P10250232704560938042.Spec : Prop :=
  ∀ n, P10250232704560938042.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P6781975593283866519

`A001020(∑{e}[n+1, #])`
-/

namespace A165832.P6781975593283866519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165832.P6781975593283866519

namespace A165832

/-- `A001020(∑{e}[n+1, #])` -/
def P6781975593283866519.Spec : Prop :=
  ∀ n, P6781975593283866519.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P7509737612571385498

`11^log2(A061142(n+1))`
-/

namespace A165832.P7509737612571385498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165832.P7509737612571385498

namespace A165832

/-- `11^log2(A061142(n+1))` -/
def P7509737612571385498.Spec : Prop :=
  ∀ n, P7509737612571385498.a n = (A165832 (n + 1) : ℝ)

end A165832

/-! ## A165832.P6111405722870921441

`A033047(A061142(n+1))`
-/

namespace A165832.P6111405722870921441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A061142 (n + 1)).toNat

end

end A165832.P6111405722870921441

namespace A165832

/-- `A033047(A061142(n+1))` -/
def P6111405722870921441.Spec : Prop :=
  ∀ n, P6111405722870921441.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P458928761667345709

`A017937(A255201(n+1))`
-/

namespace A165832.P458928761667345709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 (A255201 (n + 1)).toNat

end

end A165832.P458928761667345709

namespace A165832

/-- `A017937(A255201(n+1))` -/
def P458928761667345709.Spec : Prop :=
  ∀ n, P458928761667345709.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P1585789070572193264

`A166663(sqrt(A165825(n+1)))`
-/

namespace A165832.P1585789070572193264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166663 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165832.P1585789070572193264

namespace A165832

/-- `A166663(sqrt(A165825(n+1)))` -/
def P1585789070572193264.Spec : Prop :=
  ∀ n, P1585789070572193264.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P10946688597988649811

`A017937(2*A001222(n+1))`
-/

namespace A165832.P10946688597988649811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 (2 * A001222 (n + 1)).toNat

end

end A165832.P10946688597988649811

namespace A165832

/-- `A017937(2*A001222(n+1))` -/
def P10946688597988649811.Spec : Prop :=
  ∀ n, P10946688597988649811.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P9698082477717173437

`A017938(2*A001222(n+1))`
-/

namespace A165832.P9698082477717173437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017938 (2 * A001222 (n + 1)).toNat

end

end A165832.P9698082477717173437

namespace A165832

/-- `A017938(2*A001222(n+1))` -/
def P9698082477717173437.Spec : Prop :=
  ∀ n, P9698082477717173437.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P866190510081791843

`11^A056239(A105560(n+1))`
-/

namespace A165832.P866190510081791843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A056239 (A105560 (n + 1)).toNat : ℤ)

end

end A165832.P866190510081791843

namespace A165832

/-- `11^A056239(A105560(n+1))` -/
def P866190510081791843.Spec : Prop :=
  ∀ n, P866190510081791843.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P9457864536248521125

`11^A056239(A181819(n+1))`
-/

namespace A165832.P9457864536248521125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165832.P9457864536248521125

namespace A165832

/-- `11^A056239(A181819(n+1))` -/
def P9457864536248521125.Spec : Prop :=
  ∀ n, P9457864536248521125.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P18236396653690174581

`A018076(2*2*A001222(n+1))`
-/

namespace A165832.P18236396653690174581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018076 (2 * (2 * A001222 (n + 1))).toNat

end

end A165832.P18236396653690174581

namespace A165832

/-- `A018076(2*2*A001222(n+1))` -/
def P18236396653690174581.Spec : Prop :=
  ∀ n, P18236396653690174581.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P5361453392712058421

`A165843(n+1)/A061142(n+1)`
-/

namespace A165832.P5361453392712058421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165843 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165832.P5361453392712058421

namespace A165832

/-- `A165843(n+1)/A061142(n+1)` -/
def P5361453392712058421.Spec : Prop :=
  ∀ n, P5361453392712058421.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P2483475416292580100

`A166663(A123667(n+1)/(n+1))`
-/

namespace A165832.P2483475416292580100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166663 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165832.P2483475416292580100

namespace A165832

/-- `A166663(A123667(n+1)/(n+1))` -/
def P2483475416292580100.Spec : Prop :=
  ∀ n, P2483475416292580100.a n = A165832 (n + 1)

end A165832

/-! ## A165832.P10533963916495471155

`A165854(n+1)/A165824(n+1)`
-/

namespace A165832.P10533963916495471155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165854 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165832.P10533963916495471155

namespace A165832

/-- `A165854(n+1)/A165824(n+1)` -/
def P10533963916495471155.Spec : Prop :=
  ∀ n, P10533963916495471155.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P8722562671304814193

`A165865(n+1)/A165825(n+1)`
-/

namespace A165832.P8722562671304814193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165865 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A165832.P8722562671304814193

namespace A165832

/-- `A165865(n+1)/A165825(n+1)` -/
def P8722562671304814193.Spec : Prop :=
  ∀ n, P8722562671304814193.a n = (A165832 (n + 1) : ℚ)

end A165832

/-! ## A165832.P4708916651452176780

`gcd(A165843(n+1), A165854(n+1))`
-/

namespace A165832.P4708916651452176780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165843 (n + 1)) (A165854 (n + 1))

end

end A165832.P4708916651452176780

namespace A165832

/-- `gcd(A165843(n+1), A165854(n+1))` -/
def P4708916651452176780.Spec : Prop :=
  ∀ n, (P4708916651452176780.a n : ℤ) = A165832 (n + 1)

end A165832

/-!
# A165833: Totally multiplicative sequence with a(p) = 12.

The programs for A165833, the canonical program `A165833.P17010064591193293004` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165833 has offset 1).

The definition of A165833 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165833.P17938445869783418848

`12^A001222(n+1)`
-/

namespace A165833.P17938445869783418848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165833.P17938445869783418848

namespace A165833

/-- `12^A001222(n+1)` -/
def P17938445869783418848.Spec : Prop :=
  ∀ n, P17938445869783418848.a n = (A165833 (n + 1) : ℚ)

end A165833

/-! ## A165833.P17010064591193293004

`A001021(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165833

/-- `A001021(A001222(n+1))` -/
def P17010064591193293004.Spec : Prop :=
  ∀ n, P17010064591193293004.a n = A165833 (n + 1)

theorem P17010064591193293004.correct : P17010064591193293004.Spec := by
  intro n
  simp only [A165833, Nat.add_sub_cancel]

end A165833

/-! ## A165833.P5325456165935657049

`12^∑{e}[n+1, #]`
-/

namespace A165833.P5325456165935657049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165833.P5325456165935657049

namespace A165833

/-- `12^∑{e}[n+1, #]` -/
def P5325456165935657049.Spec : Prop :=
  ∀ n, (P5325456165935657049.a n : ℤ) = A165833 (n + 1)

end A165833

/-! ## A165833.P16578894829443940149

`∏{e}[n+1, 12^#]`
-/

namespace A165833.P16578894829443940149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 12 ^ Nat.factorization (f1 n) p

end

end A165833.P16578894829443940149

namespace A165833

/-- `∏{e}[n+1, 12^#]` -/
def P16578894829443940149.Spec : Prop :=
  ∀ n, (P16578894829443940149.a n : ℤ) = A165833 (n + 1)

end A165833

/-! ## A165833.P10670694790923147045

`12^Δ[A022559(n)]`
-/

namespace A165833.P10670694790923147045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165833.P10670694790923147045

namespace A165833

/-- `12^Δ[A022559(n)]` -/
def P10670694790923147045.Spec : Prop :=
  ∀ n, P10670694790923147045.a n = (A165833 (n + 1) : ℚ)

end A165833

/-! ## A165833.P18336921048273992138

`A001021(∑{e}[n+1, #])`
-/

namespace A165833.P18336921048273992138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165833.P18336921048273992138

namespace A165833

/-- `A001021(∑{e}[n+1, #])` -/
def P18336921048273992138.Spec : Prop :=
  ∀ n, P18336921048273992138.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P1979015402707184604

`A033048(A061142(n+1))`
-/

namespace A165833.P1979015402707184604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (A061142 (n + 1)).toNat

end

end A165833.P1979015402707184604

namespace A165833

/-- `A033048(A061142(n+1))` -/
def P1979015402707184604.Spec : Prop :=
  ∀ n, P1979015402707184604.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P15836513340578921969

`A017940(A255201(n+1))`
-/

namespace A165833.P15836513340578921969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 (A255201 (n + 1)).toNat

end

end A165833.P15836513340578921969

namespace A165833

/-- `A017940(A255201(n+1))` -/
def P15836513340578921969.Spec : Prop :=
  ∀ n, P15836513340578921969.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P8742176776554456641

`A166644(sqrt(A165825(n+1)))`
-/

namespace A165833.P8742176776554456641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166644 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165833.P8742176776554456641

namespace A165833

/-- `A166644(sqrt(A165825(n+1)))` -/
def P8742176776554456641.Spec : Prop :=
  ∀ n, P8742176776554456641.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P1888423725380308886

`A017940(2*A001222(n+1))`
-/

namespace A165833.P1888423725380308886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 (2 * A001222 (n + 1)).toNat

end

end A165833.P1888423725380308886

namespace A165833

/-- `A017940(2*A001222(n+1))` -/
def P1888423725380308886.Spec : Prop :=
  ∀ n, P1888423725380308886.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P4671580224485891895

`A176710(2*A001222(n+1))`
-/

namespace A165833.P4671580224485891895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176710 (2 * A001222 (n + 1)).toNat

end

end A165833.P4671580224485891895

namespace A165833

/-- `A176710(2*A001222(n+1))` -/
def P4671580224485891895.Spec : Prop :=
  ∀ n, P4671580224485891895.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P13001619643509877155

`A018079(2*2*A001222(n+1))`
-/

namespace A165833.P13001619643509877155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018079 (2 * (2 * A001222 (n + 1))).toNat

end

end A165833.P13001619643509877155

namespace A165833

/-- `A018079(2*2*A001222(n+1))` -/
def P13001619643509877155.Spec : Prop :=
  ∀ n, P13001619643509877155.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P6181702645457242677

`A061142(n+1)*A165827(n+1)`
-/

namespace A165833.P6181702645457242677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165827 (n + 1)

end

end A165833.P6181702645457242677

namespace A165833

/-- `A061142(n+1)*A165827(n+1)` -/
def P6181702645457242677.Spec : Prop :=
  ∀ n, P6181702645457242677.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P18236115523733903681

`A165824(n+1)*A165825(n+1)`
-/

namespace A165833.P18236115523733903681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165825 (n + 1)

end

end A165833.P18236115523733903681

namespace A165833

/-- `A165824(n+1)*A165825(n+1)` -/
def P18236115523733903681.Spec : Prop :=
  ∀ n, P18236115523733903681.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P13968899817331261586

`A165845(n+1)/A061142(n+1)`
-/

namespace A165833.P13968899817331261586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165845 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165833.P13968899817331261586

namespace A165833

/-- `A165845(n+1)/A061142(n+1)` -/
def P13968899817331261586.Spec : Prop :=
  ∀ n, P13968899817331261586.a n = (A165833 (n + 1) : ℚ)

end A165833

/-! ## A165833.P17040636957576740723

`A165857(n+1)/A165824(n+1)`
-/

namespace A165833.P17040636957576740723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165857 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165833.P17040636957576740723

namespace A165833

/-- `A165857(n+1)/A165824(n+1)` -/
def P17040636957576740723.Spec : Prop :=
  ∀ n, P17040636957576740723.a n = (A165833 (n + 1) : ℚ)

end A165833

/-! ## A165833.P17215831530695080424

`A165869(n+1)/A165825(n+1)`
-/

namespace A165833.P17215831530695080424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165869 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A165833.P17215831530695080424

namespace A165833

/-- `A165869(n+1)/A165825(n+1)` -/
def P17215831530695080424.Spec : Prop :=
  ∀ n, P17215831530695080424.a n = (A165833 (n + 1) : ℚ)

end A165833

/-! ## A165833.P8053760768007088546

`A167304(A061142(2*n+1-n))`
-/

namespace A165833.P8053760768007088546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167304 (A061142 (2 * n + 1 - n)).toNat

end

end A165833.P8053760768007088546

namespace A165833

/-- `A167304(A061142(2*n+1-n))` -/
def P8053760768007088546.Spec : Prop :=
  ∀ n, P8053760768007088546.a n = A165833 (n + 1)

end A165833

/-! ## A165833.P8281480602638424943

`gcd(A165845(n+1), A165857(n+1))`
-/

namespace A165833.P8281480602638424943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165845 (n + 1)) (A165857 (n + 1))

end

end A165833.P8281480602638424943

namespace A165833

/-- `gcd(A165845(n+1), A165857(n+1))` -/
def P8281480602638424943.Spec : Prop :=
  ∀ n, (P8281480602638424943.a n : ℤ) = A165833 (n + 1)

end A165833

/-! ## A165833.P11524526517743405667

`A061142(n+1)²*A165824(n+1)`
-/

namespace A165833.P11524526517743405667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165824 (n + 1)

end

end A165833.P11524526517743405667

namespace A165833

/-- `A061142(n+1)²*A165824(n+1)` -/
def P11524526517743405667.Spec : Prop :=
  ∀ n, P11524526517743405667.a n = A165833 (n + 1)

end A165833

/-!
# A165834: Totally multiplicative sequence with a(p) = 13.

The programs for A165834, the canonical program `A165834.P2792776688975445478` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165834 has offset 1).

The definition of A165834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165834.P9596027555458505041

`13^A001222(n+1)`
-/

namespace A165834.P9596027555458505041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165834.P9596027555458505041

namespace A165834

/-- `13^A001222(n+1)` -/
def P9596027555458505041.Spec : Prop :=
  ∀ n, P9596027555458505041.a n = (A165834 (n + 1) : ℚ)

end A165834

/-! ## A165834.P2792776688975445478

`A001022(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165834

/-- `A001022(A001222(n+1))` -/
def P2792776688975445478.Spec : Prop :=
  ∀ n, P2792776688975445478.a n = A165834 (n + 1)

theorem P2792776688975445478.correct : P2792776688975445478.Spec := by
  intro n
  simp only [A165834, Nat.add_sub_cancel]

end A165834

/-! ## A165834.P10540858984292031836

`13^∑{e}[n+1, #]`
-/

namespace A165834.P10540858984292031836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165834.P10540858984292031836

namespace A165834

/-- `13^∑{e}[n+1, #]` -/
def P10540858984292031836.Spec : Prop :=
  ∀ n, (P10540858984292031836.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P4711345177639880451

`∏{e}[n+1, 13^#]`
-/

namespace A165834.P4711345177639880451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 13 ^ Nat.factorization (f1 n) p

end

end A165834.P4711345177639880451

namespace A165834

/-- `∏{e}[n+1, 13^#]` -/
def P4711345177639880451.Spec : Prop :=
  ∀ n, (P4711345177639880451.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P12718523182095163120

`13^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165834.P12718523182095163120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165834.P12718523182095163120

namespace A165834

/-- `13^∑{p}[n+1, val(n+1, #)]` -/
def P12718523182095163120.Spec : Prop :=
  ∀ n, (P12718523182095163120.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P17559260603557864599

`13^Δ[A022559(n)]`
-/

namespace A165834.P17559260603557864599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165834.P17559260603557864599

namespace A165834

/-- `13^Δ[A022559(n)]` -/
def P17559260603557864599.Spec : Prop :=
  ∀ n, P17559260603557864599.a n = (A165834 (n + 1) : ℚ)

end A165834

/-! ## A165834.P14836891908113051316

`A001022(∑{e}[n+1, #])`
-/

namespace A165834.P14836891908113051316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165834.P14836891908113051316

namespace A165834

/-- `A001022(∑{e}[n+1, #])` -/
def P14836891908113051316.Spec : Prop :=
  ∀ n, P14836891908113051316.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P4362782239305402448

`13^val(A165825(n+1), 4)`
-/

namespace A165834.P4362782239305402448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165834.P4362782239305402448

namespace A165834

/-- `13^val(A165825(n+1), 4)` -/
def P4362782239305402448.Spec : Prop :=
  ∀ n, (P4362782239305402448.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P646395185344557927

`13*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A165834.P646395185344557927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  13 * a (A032742 (n + 1) - 1).toNat

end

end A165834.P646395185344557927

namespace A165834

/-- `13*a(A032742(n+1)-1)` -/
def P646395185344557927.Spec : Prop :=
  ∀ n, (P646395185344557927.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P16886094442011721773

`13^(A001222(3*n-(n-2))-1)`
-/

namespace A165834.P16886094442011721773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1 : ℤ)

end

end A165834.P16886094442011721773

namespace A165834

/-- `13^(A001222(3*n-(n-2))-1)` -/
def P16886094442011721773.Spec : Prop :=
  ∀ n, P16886094442011721773.a n = (A165834 (n + 1) : ℚ)

end A165834

/-! ## A165834.P14104804520765974187

`A033049(A061142(n+1))`
-/

namespace A165834.P14104804520765974187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 (A061142 (n + 1)).toNat

end

end A165834.P14104804520765974187

namespace A165834

/-- `A033049(A061142(n+1))` -/
def P14104804520765974187.Spec : Prop :=
  ∀ n, P14104804520765974187.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P4023814670900148396

`A017943(A255201(n+1))`
-/

namespace A165834.P4023814670900148396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 (A255201 (n + 1)).toNat

end

end A165834.P4023814670900148396

namespace A165834

/-- `A017943(A255201(n+1))` -/
def P4023814670900148396.Spec : Prop :=
  ∀ n, P4023814670900148396.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P17520863907342144346

`A017943(2*A001222(n+1))`
-/

namespace A165834.P17520863907342144346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 (2 * A001222 (n + 1)).toNat

end

end A165834.P17520863907342144346

namespace A165834

/-- `A017943(2*A001222(n+1))` -/
def P17520863907342144346.Spec : Prop :=
  ∀ n, P17520863907342144346.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P3061947885169192765

`A017945(2*A001222(n+1))`
-/

namespace A165834.P3061947885169192765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 (2 * A001222 (n + 1)).toNat

end

end A165834.P3061947885169192765

namespace A165834

/-- `A017945(2*A001222(n+1))` -/
def P3061947885169192765.Spec : Prop :=
  ∀ n, P3061947885169192765.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P8513142612187574809

`A165847(n+1)/A061142(n+1)`
-/

namespace A165834.P8513142612187574809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165847 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165834.P8513142612187574809

namespace A165834

/-- `A165847(n+1)/A061142(n+1)` -/
def P8513142612187574809.Spec : Prop :=
  ∀ n, P8513142612187574809.a n = (A165834 (n + 1) : ℚ)

end A165834

/-! ## A165834.P11673233803353434990

`A165860(n+1)/A165824(n+1)`
-/

namespace A165834.P11673233803353434990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165860 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165834.P11673233803353434990

namespace A165834

/-- `A165860(n+1)/A165824(n+1)` -/
def P11673233803353434990.Spec : Prop :=
  ∀ n, P11673233803353434990.a n = (A165834 (n + 1) : ℚ)

end A165834

/-! ## A165834.P8961675539018181782

`gcd(A165847(n+1), A165860(n+1))`
-/

namespace A165834.P8961675539018181782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165847 (n + 1)) (A165860 (n + 1))

end

end A165834.P8961675539018181782

namespace A165834

/-- `gcd(A165847(n+1), A165860(n+1))` -/
def P8961675539018181782.Spec : Prop :=
  ∀ n, (P8961675539018181782.a n : ℤ) = A165834 (n + 1)

end A165834

/-! ## A165834.P11459343626706035506

`13^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))`
-/

namespace A165834.P11459343626706035506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 : ℝ) ^ ((A046660 (n + 1) : ℝ) + Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ))

end

end A165834.P11459343626706035506

namespace A165834

/-- `13^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))` -/
def P11459343626706035506.Spec : Prop :=
  ∀ n, P11459343626706035506.a n = (A165834 (n + 1) : ℝ)

end A165834

/-! ## A165834.P12004805519075406652

`A018014(A001222(n+1)+2*A001222(n+1))`
-/

namespace A165834.P12004805519075406652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 (A001222 (n + 1) + 2 * A001222 (n + 1)).toNat

end

end A165834.P12004805519075406652

namespace A165834

/-- `A018014(A001222(n+1)+2*A001222(n+1))` -/
def P12004805519075406652.Spec : Prop :=
  ∀ n, P12004805519075406652.a n = A165834 (n + 1)

end A165834

/-! ## A165834.P4755643904272246564

`13^(A046660(n+1)+A000005(∏{p}[n+1, A000005(#)])-1)`
-/

namespace A165834.P4755643904272246564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A046660 (n + 1) + (A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000005 p).toNat - 1) : ℤ)

end

end A165834.P4755643904272246564

namespace A165834

/-- `13^(A046660(n+1)+A000005(∏{p}[n+1, A000005(#)])-1)` -/
def P4755643904272246564.Spec : Prop :=
  ∀ n, P4755643904272246564.a n = (A165834 (n + 1) : ℚ)

end A165834

/-!
# A165835: Totally multiplicative sequence with a(p) = 14.

The programs for A165835, the canonical program `A165835.P17203836253839306619` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165835 has offset 1).

The definition of A165835 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165835.P17965768506914201804

`14^A001222(n+1)`
-/

namespace A165835.P17965768506914201804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165835.P17965768506914201804

namespace A165835

/-- `14^A001222(n+1)` -/
def P17965768506914201804.Spec : Prop :=
  ∀ n, P17965768506914201804.a n = (A165835 (n + 1) : ℚ)

end A165835

/-! ## A165835.P17203836253839306619

`A001023(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165835

/-- `A001023(A001222(n+1))` -/
def P17203836253839306619.Spec : Prop :=
  ∀ n, P17203836253839306619.a n = A165835 (n + 1)

theorem P17203836253839306619.correct : P17203836253839306619.Spec := by
  intro n
  simp only [A165835, Nat.add_sub_cancel]

end A165835

/-! ## A165835.P7825190708328762431

`14^∑{e}[n+1, #]`
-/

namespace A165835.P7825190708328762431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165835.P7825190708328762431

namespace A165835

/-- `14^∑{e}[n+1, #]` -/
def P7825190708328762431.Spec : Prop :=
  ∀ n, (P7825190708328762431.a n : ℤ) = A165835 (n + 1)

end A165835

/-! ## A165835.P14268260921947101096

`∏{e}[n+1, 14^#]`
-/

namespace A165835.P14268260921947101096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 14 ^ Nat.factorization (f1 n) p

end

end A165835.P14268260921947101096

namespace A165835

/-- `∏{e}[n+1, 14^#]` -/
def P14268260921947101096.Spec : Prop :=
  ∀ n, (P14268260921947101096.a n : ℤ) = A165835 (n + 1)

end A165835

/-! ## A165835.P8589487437749937387

`14^Δ[A022559(n)]`
-/

namespace A165835.P8589487437749937387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165835.P8589487437749937387

namespace A165835

/-- `14^Δ[A022559(n)]` -/
def P8589487437749937387.Spec : Prop :=
  ∀ n, P8589487437749937387.a n = (A165835 (n + 1) : ℚ)

end A165835

/-! ## A165835.P7267171618137610907

`A001023(∑{e}[n+1, #])`
-/

namespace A165835.P7267171618137610907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165835.P7267171618137610907

namespace A165835

/-- `A001023(∑{e}[n+1, #])` -/
def P7267171618137610907.Spec : Prop :=
  ∀ n, P7267171618137610907.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P11596204598599679008

`14^log2(A061142(n+1))`
-/

namespace A165835.P11596204598599679008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (14 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165835.P11596204598599679008

namespace A165835

/-- `14^log2(A061142(n+1))` -/
def P11596204598599679008.Spec : Prop :=
  ∀ n, P11596204598599679008.a n = (A165835 (n + 1) : ℝ)

end A165835

/-! ## A165835.P2673091903656909703

`14^val(A165825(n+1), 4)`
-/

namespace A165835.P2673091903656909703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165835.P2673091903656909703

namespace A165835

/-- `14^val(A165825(n+1), 4)` -/
def P2673091903656909703.Spec : Prop :=
  ∀ n, (P2673091903656909703.a n : ℤ) = A165835 (n + 1)

end A165835

/-! ## A165835.P3689720378337628364

`14^(A001222(3*n-(n-2))-1)`
-/

namespace A165835.P3689720378337628364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1 : ℤ)

end

end A165835.P3689720378337628364

namespace A165835

/-- `14^(A001222(3*n-(n-2))-1)` -/
def P3689720378337628364.Spec : Prop :=
  ∀ n, P3689720378337628364.a n = (A165835 (n + 1) : ℚ)

end A165835

/-! ## A165835.P858197182468960237

`A033050(A061142(n+1))`
-/

namespace A165835.P858197182468960237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (A061142 (n + 1)).toNat

end

end A165835.P858197182468960237

namespace A165835

/-- `A033050(A061142(n+1))` -/
def P858197182468960237.Spec : Prop :=
  ∀ n, P858197182468960237.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P959774730888601278

`A017946(A255201(n+1))`
-/

namespace A165835.P959774730888601278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 (A255201 (n + 1)).toNat

end

end A165835.P959774730888601278

namespace A165835

/-- `A017946(A255201(n+1))` -/
def P959774730888601278.Spec : Prop :=
  ∀ n, P959774730888601278.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P7802814749444561939

`A167332(sqrt(A165825(n+1)))`
-/

namespace A165835.P7802814749444561939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167332 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165835.P7802814749444561939

namespace A165835

/-- `A167332(sqrt(A165825(n+1)))` -/
def P7802814749444561939.Spec : Prop :=
  ∀ n, P7802814749444561939.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P2077932767543608226

`A167335(sqrt(A165825(n+1)))`
-/

namespace A165835.P2077932767543608226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167335 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165835.P2077932767543608226

namespace A165835

/-- `A167335(sqrt(A165825(n+1)))` -/
def P2077932767543608226.Spec : Prop :=
  ∀ n, P2077932767543608226.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P17491217621514584285

`A017946(2*A001222(n+1))`
-/

namespace A165835.P17491217621514584285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 (2 * A001222 (n + 1)).toNat

end

end A165835.P17491217621514584285

namespace A165835

/-- `A017946(2*A001222(n+1))` -/
def P17491217621514584285.Spec : Prop :=
  ∀ n, P17491217621514584285.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P4523698721701913373

`A061142(n+1)*A165828(n+1)`
-/

namespace A165835.P4523698721701913373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165828 (n + 1)

end

end A165835.P4523698721701913373

namespace A165835

/-- `A061142(n+1)*A165828(n+1)` -/
def P4523698721701913373.Spec : Prop :=
  ∀ n, P4523698721701913373.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P12286806909790810659

`A165849(n+1)/A061142(n+1)`
-/

namespace A165835.P12286806909790810659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165849 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165835.P12286806909790810659

namespace A165835

/-- `A165849(n+1)/A061142(n+1)` -/
def P12286806909790810659.Spec : Prop :=
  ∀ n, P12286806909790810659.a n = (A165835 (n + 1) : ℚ)

end A165835

/-! ## A165835.P8660203306131201733

`A167332(A123667(n+1)/(n+1))`
-/

namespace A165835.P8660203306131201733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167332 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165835.P8660203306131201733

namespace A165835

/-- `A167332(A123667(n+1)/(n+1))` -/
def P8660203306131201733.Spec : Prop :=
  ∀ n, P8660203306131201733.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P5452681677628298695

`A167335(A123667(n+1)/(n+1))`
-/

namespace A165835.P5452681677628298695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167335 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165835.P5452681677628298695

namespace A165835

/-- `A167335(A123667(n+1)/(n+1))` -/
def P5452681677628298695.Spec : Prop :=
  ∀ n, P5452681677628298695.a n = A165835 (n + 1)

end A165835

/-! ## A165835.P3061739866572760309

`A165863(n+1)/A165824(n+1)`
-/

namespace A165835.P3061739866572760309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165863 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165835.P3061739866572760309

namespace A165835

/-- `A165863(n+1)/A165824(n+1)` -/
def P3061739866572760309.Spec : Prop :=
  ∀ n, P3061739866572760309.a n = (A165835 (n + 1) : ℚ)

end A165835

/-! ## A165835.P15514283009347603952

`A167335(A061142(2*n+1-n))`
-/

namespace A165835.P15514283009347603952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167335 (A061142 (2 * n + 1 - n)).toNat

end

end A165835.P15514283009347603952

namespace A165835

/-- `A167335(A061142(2*n+1-n))` -/
def P15514283009347603952.Spec : Prop :=
  ∀ n, P15514283009347603952.a n = A165835 (n + 1)

end A165835

/-!
# A165836: Totally multiplicative sequence with a(p) = 15.

The programs for A165836, the canonical program `A165836.P14095013792876283322` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165836 has offset 1).

The definition of A165836 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165836.P5500402194099569029

`15^A001222(n+1)`
-/

namespace A165836.P5500402194099569029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165836.P5500402194099569029

namespace A165836

/-- `15^A001222(n+1)` -/
def P5500402194099569029.Spec : Prop :=
  ∀ n, P5500402194099569029.a n = (A165836 (n + 1) : ℚ)

end A165836

/-! ## A165836.P14095013792876283322

`A001024(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165836

/-- `A001024(A001222(n+1))` -/
def P14095013792876283322.Spec : Prop :=
  ∀ n, P14095013792876283322.a n = A165836 (n + 1)

theorem P14095013792876283322.correct : P14095013792876283322.Spec := by
  intro n
  simp only [A165836, Nat.add_sub_cancel]

end A165836

/-! ## A165836.P14028064057588030029

`15^∑{e}[n+1, #]`
-/

namespace A165836.P14028064057588030029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165836.P14028064057588030029

namespace A165836

/-- `15^∑{e}[n+1, #]` -/
def P14028064057588030029.Spec : Prop :=
  ∀ n, (P14028064057588030029.a n : ℤ) = A165836 (n + 1)

end A165836

/-! ## A165836.P13412268682580648514

`∏{e}[n+1, 15^#]`
-/

namespace A165836.P13412268682580648514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 15 ^ Nat.factorization (f1 n) p

end

end A165836.P13412268682580648514

namespace A165836

/-- `∏{e}[n+1, 15^#]` -/
def P13412268682580648514.Spec : Prop :=
  ∀ n, (P13412268682580648514.a n : ℤ) = A165836 (n + 1)

end A165836

/-! ## A165836.P17880476705054112893

`15^Δ[A022559(n)]`
-/

namespace A165836.P17880476705054112893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165836.P17880476705054112893

namespace A165836

/-- `15^Δ[A022559(n)]` -/
def P17880476705054112893.Spec : Prop :=
  ∀ n, P17880476705054112893.a n = (A165836 (n + 1) : ℚ)

end A165836

/-! ## A165836.P4859413466959711498

`A001024(∑{e}[n+1, #])`
-/

namespace A165836.P4859413466959711498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165836.P4859413466959711498

namespace A165836

/-- `A001024(∑{e}[n+1, #])` -/
def P4859413466959711498.Spec : Prop :=
  ∀ n, P4859413466959711498.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P5574939454800105572

`A033051(A061142(n+1))`
-/

namespace A165836.P5574939454800105572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (A061142 (n + 1)).toNat

end

end A165836.P5574939454800105572

namespace A165836

/-- `A033051(A061142(n+1))` -/
def P5574939454800105572.Spec : Prop :=
  ∀ n, P5574939454800105572.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P2679866335578994327

`A017949(A255201(n+1))`
-/

namespace A165836.P2679866335578994327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (A255201 (n + 1)).toNat

end

end A165836.P2679866335578994327

namespace A165836

/-- `A017949(A255201(n+1))` -/
def P2679866335578994327.Spec : Prop :=
  ∀ n, P2679866335578994327.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P891877639491292951

`A167322(sqrt(A165825(n+1)))`
-/

namespace A165836.P891877639491292951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167322 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165836.P891877639491292951

namespace A165836

/-- `A167322(sqrt(A165825(n+1)))` -/
def P891877639491292951.Spec : Prop :=
  ∀ n, P891877639491292951.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P4081842617647989700

`A017949(2*A001222(n+1))`
-/

namespace A165836.P4081842617647989700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (2 * A001222 (n + 1)).toNat

end

end A165836.P4081842617647989700

namespace A165836

/-- `A017949(2*A001222(n+1))` -/
def P4081842617647989700.Spec : Prop :=
  ∀ n, P4081842617647989700.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P12327863220017469527

`A100747(2*A001222(n+1))`
-/

namespace A165836.P12327863220017469527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100747 (2 * A001222 (n + 1)).toNat

end

end A165836.P12327863220017469527

namespace A165836

/-- `A100747(2*A001222(n+1))` -/
def P12327863220017469527.Spec : Prop :=
  ∀ n, P12327863220017469527.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P13624863885037749329

`A165824(n+1)*A165826(n+1)`
-/

namespace A165836.P13624863885037749329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165826 (n + 1)

end

end A165836.P13624863885037749329

namespace A165836

/-- `A165824(n+1)*A165826(n+1)` -/
def P13624863885037749329.Spec : Prop :=
  ∀ n, P13624863885037749329.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P9264896842003306669

`A165851(n+1)/A061142(n+1)`
-/

namespace A165836.P9264896842003306669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165851 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165836.P9264896842003306669

namespace A165836

/-- `A165851(n+1)/A061142(n+1)` -/
def P9264896842003306669.Spec : Prop :=
  ∀ n, P9264896842003306669.a n = (A165836 (n + 1) : ℚ)

end A165836

/-! ## A165836.P10688883343023328012

`A165866(n+1)/A165824(n+1)`
-/

namespace A165836.P10688883343023328012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165866 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165836.P10688883343023328012

namespace A165836

/-- `A165866(n+1)/A165824(n+1)` -/
def P10688883343023328012.Spec : Prop :=
  ∀ n, P10688883343023328012.a n = (A165836 (n + 1) : ℚ)

end A165836

/-! ## A165836.P1007161350150854548

`A167353(A061142(2*n+1-n))`
-/

namespace A165836.P1007161350150854548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167353 (A061142 (2 * n + 1 - n)).toNat

end

end A165836.P1007161350150854548

namespace A165836

/-- `A167353(A061142(2*n+1-n))` -/
def P1007161350150854548.Spec : Prop :=
  ∀ n, P1007161350150854548.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P12268952537446810487

`gcd(A165851(n+1), A165866(n+1))`
-/

namespace A165836.P12268952537446810487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165851 (n + 1)) (A165866 (n + 1))

end

end A165836.P12268952537446810487

namespace A165836

/-- `gcd(A165851(n+1), A165866(n+1))` -/
def P12268952537446810487.Spec : Prop :=
  ∀ n, (P12268952537446810487.a n : ℤ) = A165836 (n + 1)

end A165836

/-! ## A165836.P2871999031573007511

`A000351(A001222(n+1))*A165824(n+1)`
-/

namespace A165836.P2871999031573007511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A001222 (n + 1)).toNat * A165824 (n + 1)

end

end A165836.P2871999031573007511

namespace A165836

/-- `A000351(A001222(n+1))*A165824(n+1)` -/
def P2871999031573007511.Spec : Prop :=
  ∀ n, P2871999031573007511.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P3049930361529819278

`A003959(A061142(n+1))*A165826(n+1)`
-/

namespace A165836.P3049930361529819278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A165826 (n + 1)

end

end A165836.P3049930361529819278

namespace A165836

/-- `A003959(A061142(n+1))*A165826(n+1)` -/
def P3049930361529819278.Spec : Prop :=
  ∀ n, P3049930361529819278.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P7788073783994074181

`A165824(n+1)*A166635(A061142(n+1))`
-/

namespace A165836.P7788073783994074181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166635 (A061142 (n + 1)).toNat

end

end A165836.P7788073783994074181

namespace A165836

/-- `A165824(n+1)*A166635(A061142(n+1))` -/
def P7788073783994074181.Spec : Prop :=
  ∀ n, P7788073783994074181.a n = A165836 (n + 1)

end A165836

/-! ## A165836.P7522930432831940162

`A167322(A167321(n+1)/A166591(n+1))`
-/

namespace A165836.P7522930432831940162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167322 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165836.P7522930432831940162

namespace A165836

/-- `A167322(A167321(n+1)/A166591(n+1))` -/
def P7522930432831940162.Spec : Prop :=
  ∀ n, P7522930432831940162.a n = A165836 (n + 1)

end A165836

/-!
# A165837: Totally multiplicative sequence with a(p) = 16.

The programs for A165837, the canonical program `A165837.P14027273194055988795` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165837 has offset 1).

The definition of A165837 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165837.P3207051736649248622

`16^A001222(n+1)`
-/

namespace A165837.P3207051736649248622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165837.P3207051736649248622

namespace A165837

/-- `16^A001222(n+1)` -/
def P3207051736649248622.Spec : Prop :=
  ∀ n, P3207051736649248622.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P14027273194055988795

`A001025(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165837

/-- `A001025(A001222(n+1))` -/
def P14027273194055988795.Spec : Prop :=
  ∀ n, P14027273194055988795.a n = A165837 (n + 1)

theorem P14027273194055988795.correct : P14027273194055988795.Spec := by
  intro n
  simp only [A165837, Nat.add_sub_cancel]

end A165837

/-! ## A165837.P5414797878693146646

`16^∑{e}[n+1, #]`
-/

namespace A165837.P5414797878693146646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165837.P5414797878693146646

namespace A165837

/-- `16^∑{e}[n+1, #]` -/
def P5414797878693146646.Spec : Prop :=
  ∀ n, (P5414797878693146646.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P17257922015434112191

`∏{e}[n+1, 16^#]`
-/

namespace A165837.P17257922015434112191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 16 ^ Nat.factorization (f1 n) p

end

end A165837.P17257922015434112191

namespace A165837

/-- `∏{e}[n+1, 16^#]` -/
def P17257922015434112191.Spec : Prop :=
  ∀ n, (P17257922015434112191.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P4625790646568935504

`(4^∑{e}[2*n-(n-1), #])²`
-/

namespace A165837.P4625790646568935504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A165837.P4625790646568935504

namespace A165837

/-- `(4^∑{e}[2*n-(n-1), #])²` -/
def P4625790646568935504.Spec : Prop :=
  ∀ n, (P4625790646568935504.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P4387830947937264645

`∏{e}[2*n-(n-1), 4^#]²`
-/

namespace A165837.P4387830947937264645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 4 ^ Nat.factorization (f1 n).natAbs p) ^ 2

end

end A165837.P4387830947937264645

namespace A165837

/-- `∏{e}[2*n-(n-1), 4^#]²` -/
def P4387830947937264645.Spec : Prop :=
  ∀ n, (P4387830947937264645.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P14244945481338555334

`(4^∑{p}[n+1, val(n+1, #)])²`
-/

namespace A165837.P14244945481338555334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)) ^ 2

end

end A165837.P14244945481338555334

namespace A165837

/-- `(4^∑{p}[n+1, val(n+1, #)])²` -/
def P14244945481338555334.Spec : Prop :=
  ∀ n, (P14244945481338555334.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P1291359379185555891

`∏{p}[n+1, (4^val(n+1, #))²]`
-/

namespace A165837.P1291359379185555891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 ^ SequenceMachineLib.valuation (n + 1) p) ^ 2

end

end A165837.P1291359379185555891

namespace A165837

/-- `∏{p}[n+1, (4^val(n+1, #))²]` -/
def P1291359379185555891.Spec : Prop :=
  ∀ n, (P1291359379185555891.a n : ℤ) = A165837 (n + 1)

end A165837

/-! ## A165837.P18317724160882597897

`A165825(n+1)²`
-/

namespace A165837.P18317724160882597897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) ^ 2

end

end A165837.P18317724160882597897

namespace A165837

/-- `A165825(n+1)²` -/
def P18317724160882597897.Spec : Prop :=
  ∀ n, P18317724160882597897.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P3679192806734146101

`16^Δ[A022559(n)]`
-/

namespace A165837.P3679192806734146101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165837.P3679192806734146101

namespace A165837

/-- `16^Δ[A022559(n)]` -/
def P3679192806734146101.Spec : Prop :=
  ∀ n, P3679192806734146101.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P7777737634330521866

`A061142(n+1)^4`
-/

namespace A165837.P7777737634330521866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 4

end

end A165837.P7777737634330521866

namespace A165837

/-- `A061142(n+1)^4` -/
def P7777737634330521866.Spec : Prop :=
  ∀ n, P7777737634330521866.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P553234126832304156

`A165872(n+1)^4`
-/

namespace A165837.P553234126832304156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) ^ 4

end

end A165837.P553234126832304156

namespace A165837

/-- `A165872(n+1)^4` -/
def P553234126832304156.Spec : Prop :=
  ∀ n, P553234126832304156.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P16262705816012473713

`4^A255201(n+1)`
-/

namespace A165837.P16262705816012473713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165837.P16262705816012473713

namespace A165837

/-- `4^A255201(n+1)` -/
def P16262705816012473713.Spec : Prop :=
  ∀ n, P16262705816012473713.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P1646933940750898507

`A001025(∑{e}[n+1, #])`
-/

namespace A165837.P1646933940750898507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001025 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165837.P1646933940750898507

namespace A165837

/-- `A001025(∑{e}[n+1, #])` -/
def P1646933940750898507.Spec : Prop :=
  ∀ n, P1646933940750898507.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P18127853637626321339

`A000302(∑{e}[n+1, #])²`
-/

namespace A165837.P18127853637626321339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A165837.P18127853637626321339

namespace A165837

/-- `A000302(∑{e}[n+1, #])²` -/
def P18127853637626321339.Spec : Prop :=
  ∀ n, P18127853637626321339.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P11915468527978592393

`(A166625(n+1)/(n+1))²`
-/

namespace A165837.P11915468527978592393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166625 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A165837.P11915468527978592393

namespace A165837

/-- `(A166625(n+1)/(n+1))²` -/
def P11915468527978592393.Spec : Prop :=
  ∀ n, P11915468527978592393.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P3449605322585302333

`(A123667(n+1)/(n+1))²²`
-/

namespace A165837.P3449605322585302333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A123667 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2) ^ 2

end

end A165837.P3449605322585302333

namespace A165837

/-- `(A123667(n+1)/(n+1))²²` -/
def P3449605322585302333.Spec : Prop :=
  ∀ n, P3449605322585302333.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P6202527945012842752

`(4^A001222(2*n-(n-1)))²`
-/

namespace A165837.P6202527945012842752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165837.P6202527945012842752

namespace A165837

/-- `(4^A001222(2*n-(n-1)))²` -/
def P6202527945012842752.Spec : Prop :=
  ∀ n, P6202527945012842752.a n = (A165837 (n + 1) : ℚ)

end A165837

/-! ## A165837.P15968076484451140981

`A000583(A061142(n+1))`
-/

namespace A165837.P15968076484451140981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A061142 (n + 1)).toNat

end

end A165837.P15968076484451140981

namespace A165837

/-- `A000583(A061142(n+1))` -/
def P15968076484451140981.Spec : Prop :=
  ∀ n, P15968076484451140981.a n = A165837 (n + 1)

end A165837

/-! ## A165837.P1895692096198119624

`A000302(A255201(n+1))`
-/

namespace A165837.P1895692096198119624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A255201 (n + 1)).toNat

end

end A165837.P1895692096198119624

namespace A165837

/-- `A000302(A255201(n+1))` -/
def P1895692096198119624.Spec : Prop :=
  ∀ n, P1895692096198119624.a n = A165837 (n + 1)

end A165837

/-!
# A165838: Totally multiplicative sequence with a(p) = 17.

The programs for A165838, the canonical program `A165838.P5083133961345176841` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165838 has offset 1).

The definition of A165838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165838.P14945776428181192733

`17^A001222(n+1)`
-/

namespace A165838.P14945776428181192733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165838.P14945776428181192733

namespace A165838

/-- `17^A001222(n+1)` -/
def P14945776428181192733.Spec : Prop :=
  ∀ n, P14945776428181192733.a n = (A165838 (n + 1) : ℚ)

end A165838

/-! ## A165838.P5083133961345176841

`A001026(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165838

/-- `A001026(A001222(n+1))` -/
def P5083133961345176841.Spec : Prop :=
  ∀ n, P5083133961345176841.a n = A165838 (n + 1)

theorem P5083133961345176841.correct : P5083133961345176841.Spec := by
  intro n
  simp only [A165838, Nat.add_sub_cancel]

end A165838

/-! ## A165838.P15517565417024606594

`17^∑{e}[n+1, #]`
-/

namespace A165838.P15517565417024606594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165838.P15517565417024606594

namespace A165838

/-- `17^∑{e}[n+1, #]` -/
def P15517565417024606594.Spec : Prop :=
  ∀ n, (P15517565417024606594.a n : ℤ) = A165838 (n + 1)

end A165838

/-! ## A165838.P16192709604983636572

`∏{e}[n+1, 17^#]`
-/

namespace A165838.P16192709604983636572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 17 ^ Nat.factorization (f1 n) p

end

end A165838.P16192709604983636572

namespace A165838

/-- `∏{e}[n+1, 17^#]` -/
def P16192709604983636572.Spec : Prop :=
  ∀ n, (P16192709604983636572.a n : ℤ) = A165838 (n + 1)

end A165838

/-! ## A165838.P1624035120064581795

`17^Δ[A022559(n)]`
-/

namespace A165838.P1624035120064581795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165838.P1624035120064581795

namespace A165838

/-- `17^Δ[A022559(n)]` -/
def P1624035120064581795.Spec : Prop :=
  ∀ n, P1624035120064581795.a n = (A165838 (n + 1) : ℚ)

end A165838

/-! ## A165838.P9709660314721123180

`A001026(∑{e}[n+1, #])`
-/

namespace A165838.P9709660314721123180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165838.P9709660314721123180

namespace A165838

/-- `A001026(∑{e}[n+1, #])` -/
def P9709660314721123180.Spec : Prop :=
  ∀ n, P9709660314721123180.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P2340691824484201106

`A116523(A061142(n+1))`
-/

namespace A165838.P2340691824484201106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116523 (A061142 (n + 1)).toNat

end

end A165838.P2340691824484201106

namespace A165838

/-- `A116523(A061142(n+1))` -/
def P2340691824484201106.Spec : Prop :=
  ∀ n, P2340691824484201106.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P5210909947935464438

`A017955(A255201(n+1))`
-/

namespace A165838.P5210909947935464438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (A255201 (n + 1)).toNat

end

end A165838.P5210909947935464438

namespace A165838

/-- `A017955(A255201(n+1))` -/
def P5210909947935464438.Spec : Prop :=
  ∀ n, P5210909947935464438.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P4741242814929865760

`A017955(2*A001222(n+1))`
-/

namespace A165838.P4741242814929865760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (2 * A001222 (n + 1)).toNat

end

end A165838.P4741242814929865760

namespace A165838

/-- `A017955(2*A001222(n+1))` -/
def P4741242814929865760.Spec : Prop :=
  ∀ n, P4741242814929865760.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P2674807483888157848

`A017956(2*A001222(n+1))`
-/

namespace A165838.P2674807483888157848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017956 (2 * A001222 (n + 1)).toNat

end

end A165838.P2674807483888157848

namespace A165838

/-- `A017956(2*A001222(n+1))` -/
def P2674807483888157848.Spec : Prop :=
  ∀ n, P2674807483888157848.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P996301729822231723

`A017957(2*A001222(n+1))`
-/

namespace A165838.P996301729822231723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 (2 * A001222 (n + 1)).toNat

end

end A165838.P996301729822231723

namespace A165838

/-- `A017957(2*A001222(n+1))` -/
def P996301729822231723.Spec : Prop :=
  ∀ n, P996301729822231723.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P11959393501717238357

`A165855(n+1)/A061142(n+1)`
-/

namespace A165838.P11959393501717238357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165855 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165838.P11959393501717238357

namespace A165838

/-- `A165855(n+1)/A061142(n+1)` -/
def P11959393501717238357.Spec : Prop :=
  ∀ n, P11959393501717238357.a n = (A165838 (n + 1) : ℚ)

end A165838

/-! ## A165838.P10714591597213485532

`A017955(∑{e}[(n+1)², #])`
-/

namespace A165838.P10714591597213485532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165838.P10714591597213485532

namespace A165838

/-- `A017955(∑{e}[(n+1)², #])` -/
def P10714591597213485532.Spec : Prop :=
  ∀ n, P10714591597213485532.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P16911518107449895090

`A017956(∑{e}[(n+1)², #])`
-/

namespace A165838.P16911518107449895090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017956 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165838.P16911518107449895090

namespace A165838

/-- `A017956(∑{e}[(n+1)², #])` -/
def P16911518107449895090.Spec : Prop :=
  ∀ n, P16911518107449895090.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P10289730678844658398

`A017957(∑{e}[(n+1)², #])`
-/

namespace A165838.P10289730678844658398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165838.P10289730678844658398

namespace A165838

/-- `A017957(∑{e}[(n+1)², #])` -/
def P10289730678844658398.Spec : Prop :=
  ∀ n, P10289730678844658398.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P11511895637333414653

`A166655(A165824(n+1))`
-/

namespace A165838.P11511895637333414653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166655 (A165824 (n + 1)).toNat

end

end A165838.P11511895637333414653

namespace A165838

/-- `A166655(A165824(n+1))` -/
def P11511895637333414653.Spec : Prop :=
  ∀ n, P11511895637333414653.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P16629041342617571152

`A017955(A001222((n+1)²))`
-/

namespace A165838.P16629041342617571152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (A001222 ((n + 1) ^ 2)).toNat

end

end A165838.P16629041342617571152

namespace A165838

/-- `A017955(A001222((n+1)²))` -/
def P16629041342617571152.Spec : Prop :=
  ∀ n, P16629041342617571152.a n = A165838 (n + 1)

end A165838

/-! ## A165838.P12238374499753185869

`17^A001221(A076734(n+1))`
-/

namespace A165838.P12238374499753185869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A001221 (A076734 (n + 1)).toNat : ℤ)

end

end A165838.P12238374499753185869

namespace A165838

/-- `17^A001221(A076734(n+1))` -/
def P12238374499753185869.Spec : Prop :=
  ∀ n, P12238374499753185869.a n = (A165838 (n + 1) : ℚ)

end A165838

/-!
# A165839: Totally multiplicative sequence with a(p) = 18.

The programs for A165839, the canonical program `A165839.P6712792213881481991` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165839 has offset 1).

The definition of A165839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165839.P12062751241099144537

`18^A001222(n+1)`
-/

namespace A165839.P12062751241099144537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165839.P12062751241099144537

namespace A165839

/-- `18^A001222(n+1)` -/
def P12062751241099144537.Spec : Prop :=
  ∀ n, P12062751241099144537.a n = (A165839 (n + 1) : ℚ)

end A165839

/-! ## A165839.P6712792213881481991

`A001027(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165839

/-- `A001027(A001222(n+1))` -/
def P6712792213881481991.Spec : Prop :=
  ∀ n, P6712792213881481991.a n = A165839 (n + 1)

theorem P6712792213881481991.correct : P6712792213881481991.Spec := by
  intro n
  simp only [A165839, Nat.add_sub_cancel]

end A165839

/-! ## A165839.P4502574691545968922

`18^∑{e}[n+1, #]`
-/

namespace A165839.P4502574691545968922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165839.P4502574691545968922

namespace A165839

/-- `18^∑{e}[n+1, #]` -/
def P4502574691545968922.Spec : Prop :=
  ∀ n, (P4502574691545968922.a n : ℤ) = A165839 (n + 1)

end A165839

/-! ## A165839.P16220389130872704914

`∏{e}[n+1, 18^#]`
-/

namespace A165839.P16220389130872704914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 18 ^ Nat.factorization (f1 n) p

end

end A165839.P16220389130872704914

namespace A165839

/-- `∏{e}[n+1, 18^#]` -/
def P16220389130872704914.Spec : Prop :=
  ∀ n, (P16220389130872704914.a n : ℤ) = A165839 (n + 1)

end A165839

/-! ## A165839.P8546216795712495812

`A001027(∑{e}[n+1, #])`
-/

namespace A165839.P8546216795712495812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165839.P8546216795712495812

namespace A165839

/-- `A001027(∑{e}[n+1, #])` -/
def P8546216795712495812.Spec : Prop :=
  ∀ n, P8546216795712495812.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P11526955450400755245

`A166630(A061142(n+1))`
-/

namespace A165839.P11526955450400755245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166630 (A061142 (n + 1)).toNat

end

end A165839.P11526955450400755245

namespace A165839

/-- `A166630(A061142(n+1))` -/
def P11526955450400755245.Spec : Prop :=
  ∀ n, P11526955450400755245.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P17482897399461141149

`A017958(A255201(n+1))`
-/

namespace A165839.P17482897399461141149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 (A255201 (n + 1)).toNat

end

end A165839.P17482897399461141149

namespace A165839

/-- `A017958(A255201(n+1))` -/
def P17482897399461141149.Spec : Prop :=
  ∀ n, P17482897399461141149.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P14524268997950643680

`A167336(abs(A165872(n+1)))`
-/

namespace A165839.P14524268997950643680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 |A165872 (n + 1)|.toNat

end

end A165839.P14524268997950643680

namespace A165839

/-- `A167336(abs(A165872(n+1)))` -/
def P14524268997950643680.Spec : Prop :=
  ∀ n, P14524268997950643680.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P5888353826373119684

`A167336(sqrt(A165825(n+1)))`
-/

namespace A165839.P5888353826373119684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165839.P5888353826373119684

namespace A165839

/-- `A167336(sqrt(A165825(n+1)))` -/
def P5888353826373119684.Spec : Prop :=
  ∀ n, P5888353826373119684.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P12602309423727781730

`A017958(2*A001222(n+1))`
-/

namespace A165839.P12602309423727781730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 (2 * A001222 (n + 1)).toNat

end

end A165839.P12602309423727781730

namespace A165839

/-- `A017958(2*A001222(n+1))` -/
def P12602309423727781730.Spec : Prop :=
  ∀ n, P12602309423727781730.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P8714504188429505413

`A017959(2*A001222(n+1))`
-/

namespace A165839.P8714504188429505413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017959 (2 * A001222 (n + 1)).toNat

end

end A165839.P8714504188429505413

namespace A165839

/-- `A017959(2*A001222(n+1))` -/
def P8714504188429505413.Spec : Prop :=
  ∀ n, P8714504188429505413.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P15726298342179302349

`A061142(n+1)*A165830(n+1)`
-/

namespace A165839.P15726298342179302349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165830 (n + 1)

end

end A165839.P15726298342179302349

namespace A165839

/-- `A061142(n+1)*A165830(n+1)` -/
def P15726298342179302349.Spec : Prop :=
  ∀ n, P15726298342179302349.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P18053177582761663905

`A165824(n+1)*A165827(n+1)`
-/

namespace A165839.P18053177582761663905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165827 (n + 1)

end

end A165839.P18053177582761663905

namespace A165839

/-- `A165824(n+1)*A165827(n+1)` -/
def P18053177582761663905.Spec : Prop :=
  ∀ n, P18053177582761663905.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P3714387173064910291

`A165857(n+1)/A061142(n+1)`
-/

namespace A165839.P3714387173064910291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165857 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165839.P3714387173064910291

namespace A165839

/-- `A165857(n+1)/A061142(n+1)` -/
def P3714387173064910291.Spec : Prop :=
  ∀ n, P3714387173064910291.a n = (A165839 (n + 1) : ℚ)

end A165839

/-! ## A165839.P14131696146847061116

`A167333(A123667(n+1)/(n+1))`
-/

namespace A165839.P14131696146847061116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167333 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165839.P14131696146847061116

namespace A165839

/-- `A167333(A123667(n+1)/(n+1))` -/
def P14131696146847061116.Spec : Prop :=
  ∀ n, P14131696146847061116.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P15299110012785962342

`A167336(A123667(n+1)/(n+1))`
-/

namespace A165839.P15299110012785962342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165839.P15299110012785962342

namespace A165839

/-- `A167336(A123667(n+1)/(n+1))` -/
def P15299110012785962342.Spec : Prop :=
  ∀ n, P15299110012785962342.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P17275875421588219795

`A167336(A061142(2*n+1-n))`
-/

namespace A165839.P17275875421588219795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (A061142 (2 * n + 1 - n)).toNat

end

end A165839.P17275875421588219795

namespace A165839

/-- `A167336(A061142(2*n+1-n))` -/
def P17275875421588219795.Spec : Prop :=
  ∀ n, P17275875421588219795.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P7986865247431109718

`A165824(n+1)²*A061142(n+1)`
-/

namespace A165839.P7986865247431109718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A061142 (n + 1)

end

end A165839.P7986865247431109718

namespace A165839

/-- `A165824(n+1)²*A061142(n+1)` -/
def P7986865247431109718.Spec : Prop :=
  ∀ n, P7986865247431109718.a n = A165839 (n + 1)

end A165839

/-! ## A165839.P4060216070806554527

`A165827(n+1)²/A061142(n+1)`
-/

namespace A165839.P4060216070806554527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) ^ 2 : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165839.P4060216070806554527

namespace A165839

/-- `A165827(n+1)²/A061142(n+1)` -/
def P4060216070806554527.Spec : Prop :=
  ∀ n, P4060216070806554527.a n = (A165839 (n + 1) : ℚ)

end A165839

/-! ## A165839.P12347667349353200489

`A017959(A001222(n+1)+A001222(n+1))`
-/

namespace A165839.P12347667349353200489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017959 (A001222 (n + 1) + A001222 (n + 1)).toNat

end

end A165839.P12347667349353200489

namespace A165839

/-- `A017959(A001222(n+1)+A001222(n+1))` -/
def P12347667349353200489.Spec : Prop :=
  ∀ n, P12347667349353200489.a n = A165839 (n + 1)

end A165839

/-!
# A165840: Totally multiplicative sequence with a(p) = 19.

The programs for A165840, the canonical program `A165840.P2237934329416837817` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165840 has offset 1).

The definition of A165840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165840.P5209787288413726061

`19^A001222(n+1)`
-/

namespace A165840.P5209787288413726061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165840.P5209787288413726061

namespace A165840

/-- `19^A001222(n+1)` -/
def P5209787288413726061.Spec : Prop :=
  ∀ n, P5209787288413726061.a n = (A165840 (n + 1) : ℚ)

end A165840

/-! ## A165840.P2237934329416837817

`A001029(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165840

/-- `A001029(A001222(n+1))` -/
def P2237934329416837817.Spec : Prop :=
  ∀ n, P2237934329416837817.a n = A165840 (n + 1)

theorem P2237934329416837817.correct : P2237934329416837817.Spec := by
  intro n
  simp only [A165840, Nat.add_sub_cancel]

end A165840

/-! ## A165840.P14249722850165904089

`19^∑{e}[n+1, #]`
-/

namespace A165840.P14249722850165904089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165840.P14249722850165904089

namespace A165840

/-- `19^∑{e}[n+1, #]` -/
def P14249722850165904089.Spec : Prop :=
  ∀ n, (P14249722850165904089.a n : ℤ) = A165840 (n + 1)

end A165840

/-! ## A165840.P18414410171263367252

`∏{e}[n+1, 19^#]`
-/

namespace A165840.P18414410171263367252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 19 ^ Nat.factorization (f1 n) p

end

end A165840.P18414410171263367252

namespace A165840

/-- `∏{e}[n+1, 19^#]` -/
def P18414410171263367252.Spec : Prop :=
  ∀ n, (P18414410171263367252.a n : ℤ) = A165840 (n + 1)

end A165840

/-! ## A165840.P16616889547996935424

`19^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165840.P16616889547996935424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165840.P16616889547996935424

namespace A165840

/-- `19^∑{p}[n+1, val(n+1, #)]` -/
def P16616889547996935424.Spec : Prop :=
  ∀ n, (P16616889547996935424.a n : ℤ) = A165840 (n + 1)

end A165840

/-! ## A165840.P13039347555295760670

`19^Δ[A022559(n)]`
-/

namespace A165840.P13039347555295760670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165840.P13039347555295760670

namespace A165840

/-- `19^Δ[A022559(n)]` -/
def P13039347555295760670.Spec : Prop :=
  ∀ n, P13039347555295760670.a n = (A165840 (n + 1) : ℚ)

end A165840

/-! ## A165840.P1950956107895847495

`A001029(∑{e}[n+1, #])`
-/

namespace A165840.P1950956107895847495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165840.P1950956107895847495

namespace A165840

/-- `A001029(∑{e}[n+1, #])` -/
def P1950956107895847495.Spec : Prop :=
  ∀ n, P1950956107895847495.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P8961533638549987940

`19^val(A165825(n+1), 4)`
-/

namespace A165840.P8961533638549987940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165840.P8961533638549987940

namespace A165840

/-- `19^val(A165825(n+1), 4)` -/
def P8961533638549987940.Spec : Prop :=
  ∀ n, (P8961533638549987940.a n : ℤ) = A165840 (n + 1)

end A165840

/-! ## A165840.P16234052056720745542

`19^(A001222(3*n-(n-2))-1)`
-/

namespace A165840.P16234052056720745542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1 : ℤ)

end

end A165840.P16234052056720745542

namespace A165840

/-- `19^(A001222(3*n-(n-2))-1)` -/
def P16234052056720745542.Spec : Prop :=
  ∀ n, P16234052056720745542.a n = (A165840 (n + 1) : ℚ)

end A165840

/-! ## A165840.P2845675436694164538

`A166659(A061142(n+1))`
-/

namespace A165840.P2845675436694164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (A061142 (n + 1)).toNat

end

end A165840.P2845675436694164538

namespace A165840

/-- `A166659(A061142(n+1))` -/
def P2845675436694164538.Spec : Prop :=
  ∀ n, P2845675436694164538.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P17176871809536166689

`A017961(A255201(n+1))`
-/

namespace A165840.P17176871809536166689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (A255201 (n + 1)).toNat

end

end A165840.P17176871809536166689

namespace A165840

/-- `A017961(A255201(n+1))` -/
def P17176871809536166689.Spec : Prop :=
  ∀ n, P17176871809536166689.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P3322866548502013774

`A017961(2*A001222(n+1))`
-/

namespace A165840.P3322866548502013774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (2 * A001222 (n + 1)).toNat

end

end A165840.P3322866548502013774

namespace A165840

/-- `A017961(2*A001222(n+1))` -/
def P3322866548502013774.Spec : Prop :=
  ∀ n, P3322866548502013774.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P15598723640618943695

`A017963(2*A001222(n+1))`
-/

namespace A165840.P15598723640618943695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017963 (2 * A001222 (n + 1)).toNat

end

end A165840.P15598723640618943695

namespace A165840

/-- `A017963(2*A001222(n+1))` -/
def P15598723640618943695.Spec : Prop :=
  ∀ n, P15598723640618943695.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P14147996361481196430

`A018100(2*2*A001222(n+1))`
-/

namespace A165840.P14147996361481196430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018100 (2 * (2 * A001222 (n + 1))).toNat

end

end A165840.P14147996361481196430

namespace A165840

/-- `A018100(2*2*A001222(n+1))` -/
def P14147996361481196430.Spec : Prop :=
  ∀ n, P14147996361481196430.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P17768913228953141129

`A165859(n+1)/A061142(n+1)`
-/

namespace A165840.P17768913228953141129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165859 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165840.P17768913228953141129

namespace A165840

/-- `A165859(n+1)/A061142(n+1)` -/
def P17768913228953141129.Spec : Prop :=
  ∀ n, P17768913228953141129.a n = (A165840 (n + 1) : ℚ)

end A165840

/-! ## A165840.P14703531222993361197

`19^(A057427(n)*A086436(n+1))`
-/

namespace A165840.P14703531222993361197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A057427 n * A086436 (n + 1) : ℤ)

end

end A165840.P14703531222993361197

namespace A165840

/-- `19^(A057427(n)*A086436(n+1))` -/
def P14703531222993361197.Spec : Prop :=
  ∀ n, P14703531222993361197.a n = (A165840 (n + 1) : ℚ)

end A165840

/-! ## A165840.P14619975681929578366

`19^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))`
-/

namespace A165840.P14619975681929578366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (19 : ℝ) ^ ((A046660 (n + 1) : ℝ) + Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ))

end

end A165840.P14619975681929578366

namespace A165840

/-- `19^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))` -/
def P14619975681929578366.Spec : Prop :=
  ∀ n, P14619975681929578366.a n = (A165840 (n + 1) : ℝ)

end A165840

/-! ## A165840.P17054868292638823258

`A166659(A166638(n+1)/A166634(n+1))`
-/

namespace A165840.P17054868292638823258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (SequenceMachineLib.roundAway ((A166638 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ))).toNat

end

end A165840.P17054868292638823258

namespace A165840

/-- `A166659(A166638(n+1)/A166634(n+1))` -/
def P17054868292638823258.Spec : Prop :=
  ∀ n, P17054868292638823258.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P15853375635017201570

`A166667(A166638(n+1)/A166634(n+1))`
-/

namespace A165840.P15853375635017201570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166667 (SequenceMachineLib.roundAway ((A166638 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ))).toNat

end

end A165840.P15853375635017201570

namespace A165840

/-- `A166667(A166638(n+1)/A166634(n+1))` -/
def P15853375635017201570.Spec : Prop :=
  ∀ n, P15853375635017201570.a n = A165840 (n + 1)

end A165840

/-! ## A165840.P17290624457922406654

`19^(A046660(n+1)+A000005(∏{p}[n+1, A000005(#)])-1)`
-/

namespace A165840.P17290624457922406654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A046660 (n + 1) + (A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000005 p).toNat - 1) : ℤ)

end

end A165840.P17290624457922406654

namespace A165840

/-- `19^(A046660(n+1)+A000005(∏{p}[n+1, A000005(#)])-1)` -/
def P17290624457922406654.Spec : Prop :=
  ∀ n, P17290624457922406654.a n = (A165840 (n + 1) : ℚ)

end A165840

/-!
# A165841: Totally multiplicative sequence with a(p) = 20.

The programs for A165841, the canonical program `A165841.P14052452319099915515` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165841 has offset 1).

The definition of A165841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165841.P11002559461426143646

`20^A001222(n+1)`
-/

namespace A165841.P11002559461426143646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165841.P11002559461426143646

namespace A165841

/-- `20^A001222(n+1)` -/
def P11002559461426143646.Spec : Prop :=
  ∀ n, P11002559461426143646.a n = (A165841 (n + 1) : ℚ)

end A165841

/-! ## A165841.P14052452319099915515

`A009964(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165841

/-- `A009964(A001222(n+1))` -/
def P14052452319099915515.Spec : Prop :=
  ∀ n, P14052452319099915515.a n = A165841 (n + 1)

theorem P14052452319099915515.correct : P14052452319099915515.Spec := by
  intro n
  simp only [A165841, Nat.add_sub_cancel]

end A165841

/-! ## A165841.P3543872802182213806

`20^∑{e}[n+1, #]`
-/

namespace A165841.P3543872802182213806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165841.P3543872802182213806

namespace A165841

/-- `20^∑{e}[n+1, #]` -/
def P3543872802182213806.Spec : Prop :=
  ∀ n, (P3543872802182213806.a n : ℤ) = A165841 (n + 1)

end A165841

/-! ## A165841.P46008275358195687

`∏{e}[n+1, 20^#]`
-/

namespace A165841.P46008275358195687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 20 ^ Nat.factorization (f1 n) p

end

end A165841.P46008275358195687

namespace A165841

/-- `∏{e}[n+1, 20^#]` -/
def P46008275358195687.Spec : Prop :=
  ∀ n, (P46008275358195687.a n : ℤ) = A165841 (n + 1)

end A165841

/-! ## A165841.P15629937689290728804

`A009964(∑{e}[n+1, #])`
-/

namespace A165841.P15629937689290728804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165841.P15629937689290728804

namespace A165841

/-- `A009964(∑{e}[n+1, #])` -/
def P15629937689290728804.Spec : Prop :=
  ∀ n, P15629937689290728804.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P17027413789054931147

`A063012(A061142(n+1))`
-/

namespace A165841.P17027413789054931147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063012 (A061142 (n + 1)).toNat

end

end A165841.P17027413789054931147

namespace A165841

/-- `A063012(A061142(n+1))` -/
def P17027413789054931147.Spec : Prop :=
  ∀ n, P17027413789054931147.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P1284924833870895315

`A017964(A255201(n+1))`
-/

namespace A165841.P1284924833870895315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 (A255201 (n + 1)).toNat

end

end A165841.P1284924833870895315

namespace A165841

/-- `A017964(A255201(n+1))` -/
def P1284924833870895315.Spec : Prop :=
  ∀ n, P1284924833870895315.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P6964341239369173407

`A167323(sqrt(A165825(n+1)))`
-/

namespace A165841.P6964341239369173407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167323 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165841.P6964341239369173407

namespace A165841

/-- `A167323(sqrt(A165825(n+1)))` -/
def P6964341239369173407.Spec : Prop :=
  ∀ n, P6964341239369173407.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P18395410398362104078

`A017964(2*A001222(n+1))`
-/

namespace A165841.P18395410398362104078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 (2 * A001222 (n + 1)).toNat

end

end A165841.P18395410398362104078

namespace A165841

/-- `A017964(2*A001222(n+1))` -/
def P18395410398362104078.Spec : Prop :=
  ∀ n, P18395410398362104078.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P6186114131069425323

`A009964(val(A165825(n+1), 4))`
-/

namespace A165841.P6186114131069425323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4)

end

end A165841.P6186114131069425323

namespace A165841

/-- `A009964(val(A165825(n+1), 4))` -/
def P6186114131069425323.Spec : Prop :=
  ∀ n, P6186114131069425323.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P5629976939147377056

`A009964(log2(sqrt(A165825(n+1))))`
-/

namespace A165841.P5629976939147377056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (A165825 (n + 1) : ℝ)))).toNat

end

end A165841.P5629976939147377056

namespace A165841

/-- `A009964(log2(sqrt(A165825(n+1))))` -/
def P5629976939147377056.Spec : Prop :=
  ∀ n, P5629976939147377056.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P6290067001411276546

`A009964(log2(A165825(n+1))/2)`
-/

namespace A165841.P6290067001411276546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (SequenceMachineLib.roundAway (Real.logb 2 (A165825 (n + 1) : ℝ) / 2)).toNat

end

end A165841.P6290067001411276546

namespace A165841

/-- `A009964(log2(A165825(n+1))/2)` -/
def P6290067001411276546.Spec : Prop :=
  ∀ n, P6290067001411276546.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P16314148274231521571

`A018103(2*2*A001222(n+1))`
-/

namespace A165841.P16314148274231521571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018103 (2 * (2 * A001222 (n + 1))).toNat

end

end A165841.P16314148274231521571

namespace A165841

/-- `A018103(2*2*A001222(n+1))` -/
def P16314148274231521571.Spec : Prop :=
  ∀ n, P16314148274231521571.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P5305680062306209422

`A061142(n+1)*A165831(n+1)`
-/

namespace A165841.P5305680062306209422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165831 (n + 1)

end

end A165841.P5305680062306209422

namespace A165841

/-- `A061142(n+1)*A165831(n+1)` -/
def P5305680062306209422.Spec : Prop :=
  ∀ n, P5305680062306209422.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P2409094017205309684

`A165825(n+1)*A165826(n+1)`
-/

namespace A165841.P2409094017205309684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165826 (n + 1)

end

end A165841.P2409094017205309684

namespace A165841

/-- `A165825(n+1)*A165826(n+1)` -/
def P2409094017205309684.Spec : Prop :=
  ∀ n, P2409094017205309684.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P9183164343520464728

`A165861(n+1)/A061142(n+1)`
-/

namespace A165841.P9183164343520464728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165861 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165841.P9183164343520464728

namespace A165841

/-- `A165861(n+1)/A061142(n+1)` -/
def P9183164343520464728.Spec : Prop :=
  ∀ n, P9183164343520464728.a n = (A165841 (n + 1) : ℚ)

end A165841

/-! ## A165841.P10495602836006249587

`A166631(A123667(n+1)/(n+1))`
-/

namespace A165841.P10495602836006249587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166631 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165841.P10495602836006249587

namespace A165841

/-- `A166631(A123667(n+1)/(n+1))` -/
def P10495602836006249587.Spec : Prop :=
  ∀ n, P10495602836006249587.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P11848930963203777914

`A167360(A061142(2*n+1-n))`
-/

namespace A165841.P11848930963203777914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167360 (A061142 (2 * n + 1 - n)).toNat

end

end A165841.P11848930963203777914

namespace A165841

/-- `A167360(A061142(2*n+1-n))` -/
def P11848930963203777914.Spec : Prop :=
  ∀ n, P11848930963203777914.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P8066228594701124104

`A061142(n+1)²*A165826(n+1)`
-/

namespace A165841.P8066228594701124104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165826 (n + 1)

end

end A165841.P8066228594701124104

namespace A165841

/-- `A061142(n+1)²*A165826(n+1)` -/
def P8066228594701124104.Spec : Prop :=
  ∀ n, P8066228594701124104.a n = A165841 (n + 1)

end A165841

/-! ## A165841.P16973070733096167575

`A165831(n+1)²/A165826(n+1)`
-/

namespace A165841.P16973070733096167575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) ^ 2 : ℚ) / (A165826 (n + 1) : ℚ)

end

end A165841.P16973070733096167575

namespace A165841

/-- `A165831(n+1)²/A165826(n+1)` -/
def P16973070733096167575.Spec : Prop :=
  ∀ n, P16973070733096167575.a n = (A165841 (n + 1) : ℚ)

end A165841

/-!
# A165842: Totally multiplicative sequence with a(p) = 21.

The programs for A165842, the canonical program `A165842.P5032537310093836169` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165842 has offset 1).

The definition of A165842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165842.P7866692134385148055

`21^A001222(n+1)`
-/

namespace A165842.P7866692134385148055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165842.P7866692134385148055

namespace A165842

/-- `21^A001222(n+1)` -/
def P7866692134385148055.Spec : Prop :=
  ∀ n, P7866692134385148055.a n = (A165842 (n + 1) : ℚ)

end A165842

/-! ## A165842.P5032537310093836169

`A009965(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165842

/-- `A009965(A001222(n+1))` -/
def P5032537310093836169.Spec : Prop :=
  ∀ n, P5032537310093836169.a n = A165842 (n + 1)

theorem P5032537310093836169.correct : P5032537310093836169.Spec := by
  intro n
  simp only [A165842, Nat.add_sub_cancel]

end A165842

/-! ## A165842.P1312671664042074676

`21^∑{e}[n+1, #]`
-/

namespace A165842.P1312671664042074676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165842.P1312671664042074676

namespace A165842

/-- `21^∑{e}[n+1, #]` -/
def P1312671664042074676.Spec : Prop :=
  ∀ n, (P1312671664042074676.a n : ℤ) = A165842 (n + 1)

end A165842

/-! ## A165842.P7922157303675991397

`∏{e}[n+1, 21^#]`
-/

namespace A165842.P7922157303675991397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 21 ^ Nat.factorization (f1 n) p

end

end A165842.P7922157303675991397

namespace A165842

/-- `∏{e}[n+1, 21^#]` -/
def P7922157303675991397.Spec : Prop :=
  ∀ n, (P7922157303675991397.a n : ℤ) = A165842 (n + 1)

end A165842

/-! ## A165842.P12097042439056061277

`A009965(∑{e}[n+1, #])`
-/

namespace A165842.P12097042439056061277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165842.P12097042439056061277

namespace A165842

/-- `A009965(∑{e}[n+1, #])` -/
def P12097042439056061277.Spec : Prop :=
  ∀ n, P12097042439056061277.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P13606249916114005847

`A166647(A061142(n+1))`
-/

namespace A165842.P13606249916114005847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166647 (A061142 (n + 1)).toNat

end

end A165842.P13606249916114005847

namespace A165842

/-- `A166647(A061142(n+1))` -/
def P13606249916114005847.Spec : Prop :=
  ∀ n, P13606249916114005847.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P5821438980243054494

`A017967(A255201(n+1))`
-/

namespace A165842.P5821438980243054494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 (A255201 (n + 1)).toNat

end

end A165842.P5821438980243054494

namespace A165842

/-- `A017967(A255201(n+1))` -/
def P5821438980243054494.Spec : Prop :=
  ∀ n, P5821438980243054494.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P12700777431191574915

`A017967(2*A001222(n+1))`
-/

namespace A165842.P12700777431191574915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 (2 * A001222 (n + 1)).toNat

end

end A165842.P12700777431191574915

namespace A165842

/-- `A017967(2*A001222(n+1))` -/
def P12700777431191574915.Spec : Prop :=
  ∀ n, P12700777431191574915.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P3147558852691986127

`A018105(2*2*A001222(n+1))`
-/

namespace A165842.P3147558852691986127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * (2 * A001222 (n + 1))).toNat

end

end A165842.P3147558852691986127

namespace A165842

/-- `A018105(2*2*A001222(n+1))` -/
def P3147558852691986127.Spec : Prop :=
  ∀ n, P3147558852691986127.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P971581374332330891

`A018106(2*2*A001222(n+1))`
-/

namespace A165842.P971581374332330891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018106 (2 * (2 * A001222 (n + 1))).toNat

end

end A165842.P971581374332330891

namespace A165842

/-- `A018106(2*2*A001222(n+1))` -/
def P971581374332330891.Spec : Prop :=
  ∀ n, P971581374332330891.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P3313765217422860364

`A165824(n+1)*A165828(n+1)`
-/

namespace A165842.P3313765217422860364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165828 (n + 1)

end

end A165842.P3313765217422860364

namespace A165842

/-- `A165824(n+1)*A165828(n+1)` -/
def P3313765217422860364.Spec : Prop :=
  ∀ n, P3313765217422860364.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P10316606054792351223

`A165863(n+1)/A061142(n+1)`
-/

namespace A165842.P10316606054792351223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165863 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165842.P10316606054792351223

namespace A165842

/-- `A165863(n+1)/A061142(n+1)` -/
def P10316606054792351223.Spec : Prop :=
  ∀ n, P10316606054792351223.a n = (A165842 (n + 1) : ℚ)

end A165842

/-! ## A165842.P13744250580327551258

`A000244(A001222(n+1))*A165828(n+1)`
-/

namespace A165842.P13744250580327551258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A001222 (n + 1)).toNat * A165828 (n + 1)

end

end A165842.P13744250580327551258

namespace A165842

/-- `A000244(A001222(n+1))*A165828(n+1)` -/
def P13744250580327551258.Spec : Prop :=
  ∀ n, P13744250580327551258.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P13416875760429431508

`A003959(A061142(n+1))*A165828(n+1)`
-/

namespace A165842.P13416875760429431508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A165828 (n + 1)

end

end A165842.P13416875760429431508

namespace A165842

/-- `A003959(A061142(n+1))*A165828(n+1)` -/
def P13416875760429431508.Spec : Prop :=
  ∀ n, P13416875760429431508.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P6512201162271666615

`A166647(A166638(n+1)/A166634(n+1))`
-/

namespace A165842.P6512201162271666615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166647 (SequenceMachineLib.roundAway ((A166638 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ))).toNat

end

end A165842.P6512201162271666615

namespace A165842

/-- `A166647(A166638(n+1)/A166634(n+1))` -/
def P6512201162271666615.Spec : Prop :=
  ∀ n, P6512201162271666615.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P2917351797344408589

`A166647(A166641(n+1)/A166635(n+1))`
-/

namespace A165842.P2917351797344408589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166647 (SequenceMachineLib.roundAway ((A166641 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ))).toNat

end

end A165842.P2917351797344408589

namespace A165842

/-- `A166647(A166641(n+1)/A166635(n+1))` -/
def P2917351797344408589.Spec : Prop :=
  ∀ n, P2917351797344408589.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P10335244856498483032

`A166668(A166638(n+1)/A166634(n+1))`
-/

namespace A165842.P10335244856498483032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166668 (SequenceMachineLib.roundAway ((A166638 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ))).toNat

end

end A165842.P10335244856498483032

namespace A165842

/-- `A166668(A166638(n+1)/A166634(n+1))` -/
def P10335244856498483032.Spec : Prop :=
  ∀ n, P10335244856498483032.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P11468213792888395464

`A166647(A166644(n+1)/A166642(n+1))`
-/

namespace A165842.P11468213792888395464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166647 (SequenceMachineLib.roundAway ((A166644 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165842.P11468213792888395464

namespace A165842

/-- `A166647(A166644(n+1)/A166642(n+1))` -/
def P11468213792888395464.Spec : Prop :=
  ∀ n, P11468213792888395464.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P12053216094350423015

`A166647(A166646(n+1)/A166643(n+1))`
-/

namespace A165842.P12053216094350423015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166647 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166643 (n + 1) : ℚ))).toNat

end

end A165842.P12053216094350423015

namespace A165842

/-- `A166647(A166646(n+1)/A166643(n+1))` -/
def P12053216094350423015.Spec : Prop :=
  ∀ n, P12053216094350423015.a n = A165842 (n + 1)

end A165842

/-! ## A165842.P16075781727334475938

`A018038(A001222(n+1)+2*A001222(n+1))`
-/

namespace A165842.P16075781727334475938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 (A001222 (n + 1) + 2 * A001222 (n + 1)).toNat

end

end A165842.P16075781727334475938

namespace A165842

/-- `A018038(A001222(n+1)+2*A001222(n+1))` -/
def P16075781727334475938.Spec : Prop :=
  ∀ n, P16075781727334475938.a n = A165842 (n + 1)

end A165842

/-!
# A165843: Totally multiplicative sequence with a(p) = 22.

The programs for A165843, the canonical program `A165843.P5763867915767332634` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165843 has offset 1).

The definition of A165843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165843.P12734601457801178673

`22^A001222(n+1)`
-/

namespace A165843.P12734601457801178673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165843.P12734601457801178673

namespace A165843

/-- `22^A001222(n+1)` -/
def P12734601457801178673.Spec : Prop :=
  ∀ n, P12734601457801178673.a n = (A165843 (n + 1) : ℚ)

end A165843

/-! ## A165843.P5763867915767332634

`A009966(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165843

/-- `A009966(A001222(n+1))` -/
def P5763867915767332634.Spec : Prop :=
  ∀ n, P5763867915767332634.a n = A165843 (n + 1)

theorem P5763867915767332634.correct : P5763867915767332634.Spec := by
  intro n
  simp only [A165843, Nat.add_sub_cancel]

end A165843

/-! ## A165843.P5537178282678332232

`22^∑{e}[n+1, #]`
-/

namespace A165843.P5537178282678332232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165843.P5537178282678332232

namespace A165843

/-- `22^∑{e}[n+1, #]` -/
def P5537178282678332232.Spec : Prop :=
  ∀ n, (P5537178282678332232.a n : ℤ) = A165843 (n + 1)

end A165843

/-! ## A165843.P11122194541353534239

`∏{e}[n+1, 22^#]`
-/

namespace A165843.P11122194541353534239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 22 ^ Nat.factorization (f1 n) p

end

end A165843.P11122194541353534239

namespace A165843

/-- `∏{e}[n+1, 22^#]` -/
def P11122194541353534239.Spec : Prop :=
  ∀ n, (P11122194541353534239.a n : ℤ) = A165843 (n + 1)

end A165843

/-! ## A165843.P2983834664425623904

`A009966(∑{e}[n+1, #])`
-/

namespace A165843.P2983834664425623904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165843.P2983834664425623904

namespace A165843

/-- `A009966(∑{e}[n+1, #])` -/
def P2983834664425623904.Spec : Prop :=
  ∀ n, P2983834664425623904.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P2245816695679547934

`A167337(A061142(n+1))`
-/

namespace A165843.P2245816695679547934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (A061142 (n + 1)).toNat

end

end A165843.P2245816695679547934

namespace A165843

/-- `A167337(A061142(n+1))` -/
def P2245816695679547934.Spec : Prop :=
  ∀ n, P2245816695679547934.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P8186782679306756645

`A167337(sqrt(A165825(n+1)))`
-/

namespace A165843.P8186782679306756645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165843.P8186782679306756645

namespace A165843

/-- `A167337(sqrt(A165825(n+1)))` -/
def P8186782679306756645.Spec : Prop :=
  ∀ n, P8186782679306756645.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P13367380765420641882

`A017970(2*A001222(n+1))`
-/

namespace A165843.P13367380765420641882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 (2 * A001222 (n + 1)).toNat

end

end A165843.P13367380765420641882

namespace A165843

/-- `A017970(2*A001222(n+1))` -/
def P13367380765420641882.Spec : Prop :=
  ∀ n, P13367380765420641882.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P11767865044562226391

`A017971(2*A001222(n+1))`
-/

namespace A165843.P11767865044562226391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017971 (2 * A001222 (n + 1)).toNat

end

end A165843.P11767865044562226391

namespace A165843

/-- `A017971(2*A001222(n+1))` -/
def P11767865044562226391.Spec : Prop :=
  ∀ n, P11767865044562226391.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P15605625939924546801

`A061142(n+1)*A165832(n+1)`
-/

namespace A165843.P15605625939924546801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165832 (n + 1)

end

end A165843.P15605625939924546801

namespace A165843

/-- `A061142(n+1)*A165832(n+1)` -/
def P15605625939924546801.Spec : Prop :=
  ∀ n, P15605625939924546801.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P4228773816039561747

`A165865(n+1)/A061142(n+1)`
-/

namespace A165843.P4228773816039561747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165865 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165843.P4228773816039561747

namespace A165843

/-- `A165865(n+1)/A061142(n+1)` -/
def P4228773816039561747.Spec : Prop :=
  ∀ n, P4228773816039561747.a n = (A165843 (n + 1) : ℚ)

end A165843

/-! ## A165843.P1718426392044398403

`A167337(A123667(n+1)/(n+1))`
-/

namespace A165843.P1718426392044398403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A165843.P1718426392044398403

namespace A165843

/-- `A167337(A123667(n+1)/(n+1))` -/
def P1718426392044398403.Spec : Prop :=
  ∀ n, P1718426392044398403.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P16403742725403354136

`A167337(A166632(n+1)/A003958(n+1))`
-/

namespace A165843.P16403742725403354136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A165843.P16403742725403354136

namespace A165843

/-- `A167337(A166632(n+1)/A003958(n+1))` -/
def P16403742725403354136.Spec : Prop :=
  ∀ n, P16403742725403354136.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P3866549923155535933

`A167337(A166642(n+1)/A003959(n+1))`
-/

namespace A165843.P3866549923155535933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A165843.P3866549923155535933

namespace A165843

/-- `A167337(A166642(n+1)/A003959(n+1))` -/
def P3866549923155535933.Spec : Prop :=
  ∀ n, P3866549923155535933.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P1537462119745450964

`A167337(A167330(n+1)/A166651(n+1))`
-/

namespace A165843.P1537462119745450964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167330 (n + 1) : ℚ) / (A166651 (n + 1) : ℚ))).toNat

end

end A165843.P1537462119745450964

namespace A165843

/-- `A167337(A167330(n+1)/A166651(n+1))` -/
def P1537462119745450964.Spec : Prop :=
  ∀ n, P1537462119745450964.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P18218420918493257286

`A167337(A167331(n+1)/A166652(n+1))`
-/

namespace A165843.P18218420918493257286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167331 (n + 1) : ℚ) / (A166652 (n + 1) : ℚ))).toNat

end

end A165843.P18218420918493257286

namespace A165843

/-- `A167337(A167331(n+1)/A166652(n+1))` -/
def P18218420918493257286.Spec : Prop :=
  ∀ n, P18218420918493257286.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P14476034150503664707

`A167337(A167332(n+1)/A166653(n+1))`
-/

namespace A165843.P14476034150503664707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167332 (n + 1) : ℚ) / (A166653 (n + 1) : ℚ))).toNat

end

end A165843.P14476034150503664707

namespace A165843

/-- `A167337(A167332(n+1)/A166653(n+1))` -/
def P14476034150503664707.Spec : Prop :=
  ∀ n, P14476034150503664707.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P1240269525451265101

`A167337(A167333(n+1)/A166654(n+1))`
-/

namespace A165843.P1240269525451265101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167333 (n + 1) : ℚ) / (A166654 (n + 1) : ℚ))).toNat

end

end A165843.P1240269525451265101

namespace A165843

/-- `A167337(A167333(n+1)/A166654(n+1))` -/
def P1240269525451265101.Spec : Prop :=
  ∀ n, P1240269525451265101.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P953239112643894037

`A167337(A167334(n+1)/A166660(n+1))`
-/

namespace A165843.P953239112643894037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167334 (n + 1) : ℚ) / (A166660 (n + 1) : ℚ))).toNat

end

end A165843.P953239112643894037

namespace A165843

/-- `A167337(A167334(n+1)/A166660(n+1))` -/
def P953239112643894037.Spec : Prop :=
  ∀ n, P953239112643894037.a n = A165843 (n + 1)

end A165843

/-! ## A165843.P6384533102168239398

`A167337(A167335(n+1)/A166661(n+1))`
-/

namespace A165843.P6384533102168239398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167337 (SequenceMachineLib.roundAway ((A167335 (n + 1) : ℚ) / (A166661 (n + 1) : ℚ))).toNat

end

end A165843.P6384533102168239398

namespace A165843

/-- `A167337(A167335(n+1)/A166661(n+1))` -/
def P6384533102168239398.Spec : Prop :=
  ∀ n, P6384533102168239398.a n = A165843 (n + 1)

end A165843

/-!
# A165844: Totally multiplicative sequence with a(p) = 23.

The programs for A165844, the canonical program `A165844.P2909997289907765342` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165844 has offset 1).

The definition of A165844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165844.P9892116590923174445

`23^A001222(n+1)`
-/

namespace A165844.P9892116590923174445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165844.P9892116590923174445

namespace A165844

/-- `23^A001222(n+1)` -/
def P9892116590923174445.Spec : Prop :=
  ∀ n, P9892116590923174445.a n = (A165844 (n + 1) : ℚ)

end A165844

/-! ## A165844.P2909997289907765342

`A009967(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165844

/-- `A009967(A001222(n+1))` -/
def P2909997289907765342.Spec : Prop :=
  ∀ n, P2909997289907765342.a n = A165844 (n + 1)

theorem P2909997289907765342.correct : P2909997289907765342.Spec := by
  intro n
  simp only [A165844, Nat.add_sub_cancel]

end A165844

/-! ## A165844.P17006266080569577245

`23^∑{e}[n+1, #]`
-/

namespace A165844.P17006266080569577245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165844.P17006266080569577245

namespace A165844

/-- `23^∑{e}[n+1, #]` -/
def P17006266080569577245.Spec : Prop :=
  ∀ n, (P17006266080569577245.a n : ℤ) = A165844 (n + 1)

end A165844

/-! ## A165844.P14810530179594421568

`∏{e}[n+1, 23^#]`
-/

namespace A165844.P14810530179594421568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 23 ^ Nat.factorization (f1 n) p

end

end A165844.P14810530179594421568

namespace A165844

/-- `∏{e}[n+1, 23^#]` -/
def P14810530179594421568.Spec : Prop :=
  ∀ n, (P14810530179594421568.a n : ℤ) = A165844 (n + 1)

end A165844

/-! ## A165844.P16325561386142324697

`A009967(∑{e}[n+1, #])`
-/

namespace A165844.P16325561386142324697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165844.P16325561386142324697

namespace A165844

/-- `A009967(∑{e}[n+1, #])` -/
def P16325561386142324697.Spec : Prop :=
  ∀ n, P16325561386142324697.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P6813307268985226027

`A017973(2*A001222(n+1))`
-/

namespace A165844.P6813307268985226027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (2 * A001222 (n + 1)).toNat

end

end A165844.P6813307268985226027

namespace A165844

/-- `A017973(2*A001222(n+1))` -/
def P6813307268985226027.Spec : Prop :=
  ∀ n, P6813307268985226027.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P13629989590836109424

`A017974(2*A001222(n+1))`
-/

namespace A165844.P13629989590836109424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017974 (2 * A001222 (n + 1)).toNat

end

end A165844.P13629989590836109424

namespace A165844

/-- `A017974(2*A001222(n+1))` -/
def P13629989590836109424.Spec : Prop :=
  ∀ n, P13629989590836109424.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P6577020633900271388

`A017975(2*A001222(n+1))`
-/

namespace A165844.P6577020633900271388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 (2 * A001222 (n + 1)).toNat

end

end A165844.P6577020633900271388

namespace A165844

/-- `A017975(2*A001222(n+1))` -/
def P6577020633900271388.Spec : Prop :=
  ∀ n, P6577020633900271388.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P7322423233866560586

`A165867(n+1)/A061142(n+1)`
-/

namespace A165844.P7322423233866560586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165867 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165844.P7322423233866560586

namespace A165844

/-- `A165867(n+1)/A061142(n+1)` -/
def P7322423233866560586.Spec : Prop :=
  ∀ n, P7322423233866560586.a n = (A165844 (n + 1) : ℚ)

end A165844

/-! ## A165844.P3706772958325368735

`A166657(A165824(n+1))`
-/

namespace A165844.P3706772958325368735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166657 (A165824 (n + 1)).toNat

end

end A165844.P3706772958325368735

namespace A165844

/-- `A166657(A165824(n+1))` -/
def P3706772958325368735.Spec : Prop :=
  ∀ n, P3706772958325368735.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P1226198090915240680

`A166657(A166646(n+1)/A166642(n+1))`
-/

namespace A165844.P1226198090915240680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166657 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165844.P1226198090915240680

namespace A165844

/-- `A166657(A166646(n+1)/A166642(n+1))` -/
def P1226198090915240680.Spec : Prop :=
  ∀ n, P1226198090915240680.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P4726429755751202612

`A166657(A166649(n+1)/A166643(n+1))`
-/

namespace A165844.P4726429755751202612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166657 (SequenceMachineLib.roundAway ((A166649 (n + 1) : ℚ) / (A166643 (n + 1) : ℚ))).toNat

end

end A165844.P4726429755751202612

namespace A165844

/-- `A166657(A166649(n+1)/A166643(n+1))` -/
def P4726429755751202612.Spec : Prop :=
  ∀ n, P4726429755751202612.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P650071083952110259

`A166675(A166646(n+1)/A166642(n+1))`
-/

namespace A165844.P650071083952110259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166675 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165844.P650071083952110259

namespace A165844

/-- `A166675(A166646(n+1)/A166642(n+1))` -/
def P650071083952110259.Spec : Prop :=
  ∀ n, P650071083952110259.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P5887063486494106099

`A017973(A001222((n+1)²))`
-/

namespace A165844.P5887063486494106099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (A001222 ((n + 1) ^ 2)).toNat

end

end A165844.P5887063486494106099

namespace A165844

/-- `A017973(A001222((n+1)²))` -/
def P5887063486494106099.Spec : Prop :=
  ∀ n, P5887063486494106099.a n = A165844 (n + 1)

end A165844

/-! ## A165844.P6982663041817632178

`23^A001221(A332462(n+1))`
-/

namespace A165844.P6982663041817632178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (A001221 (A332462 (n + 1)).toNat : ℤ)

end

end A165844.P6982663041817632178

namespace A165844

/-- `23^A001221(A332462(n+1))` -/
def P6982663041817632178.Spec : Prop :=
  ∀ n, P6982663041817632178.a n = (A165844 (n + 1) : ℚ)

end A165844

/-!
# A165845: Totally multiplicative sequence with a(p) = 24.

The programs for A165845, the canonical program `A165845.P16982408470161344518` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165845 has offset 1).

The definition of A165845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165845.P3048314976125390518

`24^A001222(n+1)`
-/

namespace A165845.P3048314976125390518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165845.P3048314976125390518

namespace A165845

/-- `24^A001222(n+1)` -/
def P3048314976125390518.Spec : Prop :=
  ∀ n, P3048314976125390518.a n = (A165845 (n + 1) : ℚ)

end A165845

/-! ## A165845.P16982408470161344518

`A009968(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165845

/-- `A009968(A001222(n+1))` -/
def P16982408470161344518.Spec : Prop :=
  ∀ n, P16982408470161344518.a n = A165845 (n + 1)

theorem P16982408470161344518.correct : P16982408470161344518.Spec := by
  intro n
  simp only [A165845, Nat.add_sub_cancel]

end A165845

/-! ## A165845.P6140001737360993585

`24^∑{e}[n+1, #]`
-/

namespace A165845.P6140001737360993585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165845.P6140001737360993585

namespace A165845

/-- `24^∑{e}[n+1, #]` -/
def P6140001737360993585.Spec : Prop :=
  ∀ n, (P6140001737360993585.a n : ℤ) = A165845 (n + 1)

end A165845

/-! ## A165845.P160049066498118874

`∏{e}[n+1, 24^#]`
-/

namespace A165845.P160049066498118874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 24 ^ Nat.factorization (f1 n) p

end

end A165845.P160049066498118874

namespace A165845

/-- `∏{e}[n+1, 24^#]` -/
def P160049066498118874.Spec : Prop :=
  ∀ n, (P160049066498118874.a n : ℤ) = A165845 (n + 1)

end A165845

/-! ## A165845.P5072570522233154565

`A009968(∑{e}[n+1, #])`
-/

namespace A165845.P5072570522233154565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165845.P5072570522233154565

namespace A165845

/-- `A009968(∑{e}[n+1, #])` -/
def P5072570522233154565.Spec : Prop :=
  ∀ n, P5072570522233154565.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P17783987518345682812

`A166648(A061142(n+1))`
-/

namespace A165845.P17783987518345682812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166648 (A061142 (n + 1)).toNat

end

end A165845.P17783987518345682812

namespace A165845

/-- `A166648(A061142(n+1))` -/
def P17783987518345682812.Spec : Prop :=
  ∀ n, P17783987518345682812.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P11761422563083498251

`A017976(2*A001222(n+1))`
-/

namespace A165845.P11761422563083498251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 (2 * A001222 (n + 1)).toNat

end

end A165845.P11761422563083498251

namespace A165845

/-- `A017976(2*A001222(n+1))` -/
def P11761422563083498251.Spec : Prop :=
  ∀ n, P11761422563083498251.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P6686215081950989441

`A017978(2*A001222(n+1))`
-/

namespace A165845.P6686215081950989441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 (2 * A001222 (n + 1)).toNat

end

end A165845.P6686215081950989441

namespace A165845

/-- `A017978(2*A001222(n+1))` -/
def P6686215081950989441.Spec : Prop :=
  ∀ n, P6686215081950989441.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P8828648658569858992

`24^A056239(A181819(n+1))`
-/

namespace A165845.P8828648658569858992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165845.P8828648658569858992

namespace A165845

/-- `24^A056239(A181819(n+1))` -/
def P8828648658569858992.Spec : Prop :=
  ∀ n, P8828648658569858992.a n = (A165845 (n + 1) : ℚ)

end A165845

/-! ## A165845.P4104959386891596631

`A061142(n+1)*A165833(n+1)`
-/

namespace A165845.P4104959386891596631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165833 (n + 1)

end

end A165845.P4104959386891596631

namespace A165845

/-- `A061142(n+1)*A165833(n+1)` -/
def P4104959386891596631.Spec : Prop :=
  ∀ n, P4104959386891596631.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P11149186675345175608

`A165824(n+1)*A165829(n+1)`
-/

namespace A165845.P11149186675345175608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165829 (n + 1)

end

end A165845.P11149186675345175608

namespace A165845

/-- `A165824(n+1)*A165829(n+1)` -/
def P11149186675345175608.Spec : Prop :=
  ∀ n, P11149186675345175608.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P13841566969920613086

`A165825(n+1)*A165827(n+1)`
-/

namespace A165845.P13841566969920613086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165827 (n + 1)

end

end A165845.P13841566969920613086

namespace A165845

/-- `A165825(n+1)*A165827(n+1)` -/
def P13841566969920613086.Spec : Prop :=
  ∀ n, P13841566969920613086.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P14552120033407358042

`A165869(n+1)/A061142(n+1)`
-/

namespace A165845.P14552120033407358042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165869 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165845.P14552120033407358042

namespace A165845

/-- `A165869(n+1)/A061142(n+1)` -/
def P14552120033407358042.Spec : Prop :=
  ∀ n, P14552120033407358042.a n = (A165845 (n + 1) : ℚ)

end A165845

/-! ## A165845.P2386729267896448600

`A061142(n+1)²*A165827(n+1)`
-/

namespace A165845.P2386729267896448600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165827 (n + 1)

end

end A165845.P2386729267896448600

namespace A165845

/-- `A061142(n+1)²*A165827(n+1)` -/
def P2386729267896448600.Spec : Prop :=
  ∀ n, P2386729267896448600.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P11757807507499089328

`A000244(A001222(n+1))*A165829(n+1)`
-/

namespace A165845.P11757807507499089328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A001222 (n + 1)).toNat * A165829 (n + 1)

end

end A165845.P11757807507499089328

namespace A165845

/-- `A000244(A001222(n+1))*A165829(n+1)` -/
def P11757807507499089328.Spec : Prop :=
  ∀ n, P11757807507499089328.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P17564607848370898393

`A003959(A061142(n+1))*A165829(n+1)`
-/

namespace A165845.P17564607848370898393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A165829 (n + 1)

end

end A165845.P17564607848370898393

namespace A165845

/-- `A003959(A061142(n+1))*A165829(n+1)` -/
def P17564607848370898393.Spec : Prop :=
  ∀ n, P17564607848370898393.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P5468274118146762188

`A165824(n+1)*A166625(A061142(n+1))`
-/

namespace A165845.P5468274118146762188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166625 (A061142 (n + 1)).toNat

end

end A165845.P5468274118146762188

namespace A165845

/-- `A165824(n+1)*A166625(A061142(n+1))` -/
def P5468274118146762188.Spec : Prop :=
  ∀ n, P5468274118146762188.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P595992190774383404

`A165825(n+1)*A166624(A061142(n+1))`
-/

namespace A165845.P595992190774383404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166624 (A061142 (n + 1)).toNat

end

end A165845.P595992190774383404

namespace A165845

/-- `A165825(n+1)*A166624(A061142(n+1))` -/
def P595992190774383404.Spec : Prop :=
  ∀ n, P595992190774383404.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P13220127310427809221

`A166648(A165831(n+1)/A165826(n+1))`
-/

namespace A165845.P13220127310427809221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166648 (SequenceMachineLib.roundAway ((A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ))).toNat

end

end A165845.P13220127310427809221

namespace A165845

/-- `A166648(A165831(n+1)/A165826(n+1))` -/
def P13220127310427809221.Spec : Prop :=
  ∀ n, P13220127310427809221.a n = A165845 (n + 1)

end A165845

/-! ## A165845.P16157678208177142444

`A166648(A166648(n+1)/A166644(n+1))`
-/

namespace A165845.P16157678208177142444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166648 (SequenceMachineLib.roundAway ((A166648 (n + 1) : ℚ) / (A166644 (n + 1) : ℚ))).toNat

end

end A165845.P16157678208177142444

namespace A165845

/-- `A166648(A166648(n+1)/A166644(n+1))` -/
def P16157678208177142444.Spec : Prop :=
  ∀ n, P16157678208177142444.a n = A165845 (n + 1)

end A165845

/-!
# A165846: Totally multiplicative sequence with a(p) = 25.

The programs for A165846, the canonical program `A165846.P15448378011374713456` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165846 has offset 1).

The definition of A165846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165846.P12623835842719639999

`25^A001222(n+1)`
-/

namespace A165846.P12623835842719639999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165846.P12623835842719639999

namespace A165846

/-- `25^A001222(n+1)` -/
def P12623835842719639999.Spec : Prop :=
  ∀ n, P12623835842719639999.a n = (A165846 (n + 1) : ℚ)

end A165846

/-! ## A165846.P15448378011374713456

`A009969(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165846

/-- `A009969(A001222(n+1))` -/
def P15448378011374713456.Spec : Prop :=
  ∀ n, P15448378011374713456.a n = A165846 (n + 1)

theorem P15448378011374713456.correct : P15448378011374713456.Spec := by
  intro n
  simp only [A165846, Nat.add_sub_cancel]

end A165846

/-! ## A165846.P17286594119222249588

`25^∑{e}[n+1, #]`
-/

namespace A165846.P17286594119222249588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165846.P17286594119222249588

namespace A165846

/-- `25^∑{e}[n+1, #]` -/
def P17286594119222249588.Spec : Prop :=
  ∀ n, (P17286594119222249588.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P10523400325672617330

`∏{e}[n+1, 25^#]`
-/

namespace A165846.P10523400325672617330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 25 ^ Nat.factorization (f1 n) p

end

end A165846.P10523400325672617330

namespace A165846

/-- `∏{e}[n+1, 25^#]` -/
def P10523400325672617330.Spec : Prop :=
  ∀ n, (P10523400325672617330.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P17537645253055303191

`(5^∑{e}[2*n-(n-1), #])²`
-/

namespace A165846.P17537645253055303191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A165846.P17537645253055303191

namespace A165846

/-- `(5^∑{e}[2*n-(n-1), #])²` -/
def P17537645253055303191.Spec : Prop :=
  ∀ n, (P17537645253055303191.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P4159899298542618385

`∏{e}[2*n-(n-1), 5^#]²`
-/

namespace A165846.P4159899298542618385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 5 ^ Nat.factorization (f1 n).natAbs p) ^ 2

end

end A165846.P4159899298542618385

namespace A165846

/-- `∏{e}[2*n-(n-1), 5^#]²` -/
def P4159899298542618385.Spec : Prop :=
  ∀ n, (P4159899298542618385.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P6365257460206713125

`(5^∑{p}[n+1, val(n+1, #)])²`
-/

namespace A165846.P6365257460206713125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)) ^ 2

end

end A165846.P6365257460206713125

namespace A165846

/-- `(5^∑{p}[n+1, val(n+1, #)])²` -/
def P6365257460206713125.Spec : Prop :=
  ∀ n, (P6365257460206713125.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P18362384229431113167

`∏{p}[n+1, (5^val(n+1, #))²]`
-/

namespace A165846.P18362384229431113167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (5 ^ SequenceMachineLib.valuation (n + 1) p) ^ 2

end

end A165846.P18362384229431113167

namespace A165846

/-- `∏{p}[n+1, (5^val(n+1, #))²]` -/
def P18362384229431113167.Spec : Prop :=
  ∀ n, (P18362384229431113167.a n : ℤ) = A165846 (n + 1)

end A165846

/-! ## A165846.P16998113667996258917

`A165826(n+1)²`
-/

namespace A165846.P16998113667996258917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) ^ 2

end

end A165846.P16998113667996258917

namespace A165846

/-- `A165826(n+1)²` -/
def P16998113667996258917.Spec : Prop :=
  ∀ n, P16998113667996258917.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P1647236792188155720

`5^A255201(n+1)`
-/

namespace A165846.P1647236792188155720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165846.P1647236792188155720

namespace A165846

/-- `5^A255201(n+1)` -/
def P1647236792188155720.Spec : Prop :=
  ∀ n, P1647236792188155720.a n = (A165846 (n + 1) : ℚ)

end A165846

/-! ## A165846.P8693069834729508549

`A009969(∑{e}[n+1, #])`
-/

namespace A165846.P8693069834729508549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009969 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165846.P8693069834729508549

namespace A165846

/-- `A009969(∑{e}[n+1, #])` -/
def P8693069834729508549.Spec : Prop :=
  ∀ n, P8693069834729508549.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P3769001272277647830

`5^log2(A165825(n+1))`
-/

namespace A165846.P3769001272277647830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (Real.logb 2 (A165825 (n + 1) : ℝ))

end

end A165846.P3769001272277647830

namespace A165846

/-- `5^log2(A165825(n+1))` -/
def P3769001272277647830.Spec : Prop :=
  ∀ n, P3769001272277647830.a n = (A165846 (n + 1) : ℝ)

end A165846

/-! ## A165846.P9318587397228597376

`(A166626(n+1)/(n+1))²`
-/

namespace A165846.P9318587397228597376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166626 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A165846.P9318587397228597376

namespace A165846

/-- `(A166626(n+1)/(n+1))²` -/
def P9318587397228597376.Spec : Prop :=
  ∀ n, P9318587397228597376.a n = (A165846 (n + 1) : ℚ)

end A165846

/-! ## A165846.P6873590587768143254

`(5^A001222(2*n-(n-1)))²`
-/

namespace A165846.P6873590587768143254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165846.P6873590587768143254

namespace A165846

/-- `(5^A001222(2*n-(n-1)))²` -/
def P6873590587768143254.Spec : Prop :=
  ∀ n, P6873590587768143254.a n = (A165846 (n + 1) : ℚ)

end A165846

/-! ## A165846.P5351483775575997929

`A167324(A061142(n+1))`
-/

namespace A165846.P5351483775575997929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167324 (A061142 (n + 1)).toNat

end

end A165846.P5351483775575997929

namespace A165846

/-- `A167324(A061142(n+1))` -/
def P5351483775575997929.Spec : Prop :=
  ∀ n, P5351483775575997929.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P5535858132254674984

`A167324(sqrt(A165825(n+1)))`
-/

namespace A165846.P5535858132254674984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167324 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165846.P5535858132254674984

namespace A165846

/-- `A167324(sqrt(A165825(n+1)))` -/
def P5535858132254674984.Spec : Prop :=
  ∀ n, P5535858132254674984.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P16591854078530352519

`A000351(2*A001222(n+1))`
-/

namespace A165846.P16591854078530352519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (2 * A001222 (n + 1)).toNat

end

end A165846.P16591854078530352519

namespace A165846

/-- `A000351(2*A001222(n+1))` -/
def P16591854078530352519.Spec : Prop :=
  ∀ n, P16591854078530352519.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P14677834497676800385

`A017919(2*A255201(n+1))`
-/

namespace A165846.P14677834497676800385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 (2 * A255201 (n + 1)).toNat

end

end A165846.P14677834497676800385

namespace A165846

/-- `A017919(2*A255201(n+1))` -/
def P14677834497676800385.Spec : Prop :=
  ∀ n, P14677834497676800385.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P17704444760158334696

`A166652(sqrt(A165825(n+1)))²`
-/

namespace A165846.P17704444760158334696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166652 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat ^ 2

end

end A165846.P17704444760158334696

namespace A165846

/-- `A166652(sqrt(A165825(n+1)))²` -/
def P17704444760158334696.Spec : Prop :=
  ∀ n, P17704444760158334696.a n = A165846 (n + 1)

end A165846

/-! ## A165846.P17428951193732099411

`A166660(sqrt(A165825(n+1)))²`
-/

namespace A165846.P17428951193732099411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166660 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat ^ 2

end

end A165846.P17428951193732099411

namespace A165846

/-- `A166660(sqrt(A165825(n+1)))²` -/
def P17428951193732099411.Spec : Prop :=
  ∀ n, P17428951193732099411.a n = A165846 (n + 1)

end A165846

/-!
# A165847: Totally multiplicative sequence with a(p) = 26.

The programs for A165847, the canonical program `A165847.P4089340418137391067` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165847 has offset 1).

The definition of A165847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165847.P15723664589890347751

`26^A001222(n+1)`
-/

namespace A165847.P15723664589890347751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (26 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165847.P15723664589890347751

namespace A165847

/-- `26^A001222(n+1)` -/
def P15723664589890347751.Spec : Prop :=
  ∀ n, P15723664589890347751.a n = (A165847 (n + 1) : ℚ)

end A165847

/-! ## A165847.P4089340418137391067

`A009970(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165847

/-- `A009970(A001222(n+1))` -/
def P4089340418137391067.Spec : Prop :=
  ∀ n, P4089340418137391067.a n = A165847 (n + 1)

theorem P4089340418137391067.correct : P4089340418137391067.Spec := by
  intro n
  simp only [A165847, Nat.add_sub_cancel]

end A165847

/-! ## A165847.P16946839273531924410

`26^∑{e}[n+1, #]`
-/

namespace A165847.P16946839273531924410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165847.P16946839273531924410

namespace A165847

/-- `26^∑{e}[n+1, #]` -/
def P16946839273531924410.Spec : Prop :=
  ∀ n, (P16946839273531924410.a n : ℤ) = A165847 (n + 1)

end A165847

/-! ## A165847.P9776101317711657547

`∏{e}[n+1, 26^#]`
-/

namespace A165847.P9776101317711657547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 26 ^ Nat.factorization (f1 n) p

end

end A165847.P9776101317711657547

namespace A165847

/-- `∏{e}[n+1, 26^#]` -/
def P9776101317711657547.Spec : Prop :=
  ∀ n, (P9776101317711657547.a n : ℤ) = A165847 (n + 1)

end A165847

/-! ## A165847.P8191862200611639571

`A009970(∑{e}[n+1, #])`
-/

namespace A165847.P8191862200611639571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165847.P8191862200611639571

namespace A165847

/-- `A009970(∑{e}[n+1, #])` -/
def P8191862200611639571.Spec : Prop :=
  ∀ n, P8191862200611639571.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P5856649893492453639

`26*a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A165847.P5856649893492453639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  26 * a (A052126 (n + 1) - 1).toNat

end

end A165847.P5856649893492453639

namespace A165847

/-- `26*a(A052126(n+1)-1)` -/
def P5856649893492453639.Spec : Prop :=
  ∀ n, (P5856649893492453639.a n : ℤ) = A165847 (n + 1)

end A165847

/-! ## A165847.P9581247044304128950

`A061142(n+1)*A165834(n+1)`
-/

namespace A165847.P9581247044304128950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165834 (n + 1)

end

end A165847.P9581247044304128950

namespace A165847

/-- `A061142(n+1)*A165834(n+1)` -/
def P9581247044304128950.Spec : Prop :=
  ∀ n, P9581247044304128950.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P17757317860668338621

`26^(A046660(n+1)+A001221(n+1))`
-/

namespace A165847.P17757317860668338621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (26 : ℚ) ^ (A046660 (n + 1) + A001221 (n + 1) : ℤ)

end

end A165847.P17757317860668338621

namespace A165847

/-- `26^(A046660(n+1)+A001221(n+1))` -/
def P17757317860668338621.Spec : Prop :=
  ∀ n, P17757317860668338621.a n = (A165847 (n + 1) : ℚ)

end A165847

/-! ## A165847.P4645341453567970878

`26^log2(A167323(n+1)/A167321(n+1))`
-/

namespace A165847.P4645341453567970878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (26 : ℝ) ^ (Real.logb 2 ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) : ℝ))

end

end A165847.P4645341453567970878

namespace A165847

/-- `26^log2(A167323(n+1)/A167321(n+1))` -/
def P4645341453567970878.Spec : Prop :=
  ∀ n, P4645341453567970878.a n = (A165847 (n + 1) : ℝ)

end A165847

/-! ## A165847.P17740926919874591645

`26^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))`
-/

namespace A165847.P17740926919874591645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (26 : ℝ) ^ ((A046660 (n + 1) : ℝ) + Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ))

end

end A165847.P17740926919874591645

namespace A165847

/-- `26^(A046660(n+1)+log2(A000005(∏{p}[n+1, #])))` -/
def P17740926919874591645.Spec : Prop :=
  ∀ n, P17740926919874591645.a n = (A165847 (n + 1) : ℝ)

end A165847

/-! ## A165847.P14130361731993936499

`A166658(A165824(n+1))`
-/

namespace A165847.P14130361731993936499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166658 (A165824 (n + 1)).toNat

end

end A165847.P14130361731993936499

namespace A165847

/-- `A166658(A165824(n+1))` -/
def P14130361731993936499.Spec : Prop :=
  ∀ n, P14130361731993936499.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P4482993281555312757

`A167336(A003959(A061142(n+1)))`
-/

namespace A165847.P4482993281555312757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (A003959 (A061142 (n + 1)).toNat).toNat

end

end A165847.P4482993281555312757

namespace A165847

/-- `A167336(A003959(A061142(n+1)))` -/
def P4482993281555312757.Spec : Prop :=
  ∀ n, P4482993281555312757.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P6151421838219685745

`A166658(A166646(n+1)/A166642(n+1))`
-/

namespace A165847.P6151421838219685745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166658 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165847.P6151421838219685745

namespace A165847

/-- `A166658(A166646(n+1)/A166642(n+1))` -/
def P6151421838219685745.Spec : Prop :=
  ∀ n, P6151421838219685745.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P14009943120828394593

`A166658(A166649(n+1)/A166643(n+1))`
-/

namespace A165847.P14009943120828394593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166658 (SequenceMachineLib.roundAway ((A166649 (n + 1) : ℚ) / (A166643 (n + 1) : ℚ))).toNat

end

end A165847.P14009943120828394593

namespace A165847

/-- `A166658(A166649(n+1)/A166643(n+1))` -/
def P14009943120828394593.Spec : Prop :=
  ∀ n, P14009943120828394593.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P7301067076885146342

`A167336(A167307(n+1)/A167303(n+1))`
-/

namespace A165847.P7301067076885146342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (SequenceMachineLib.roundAway ((A167307 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ))).toNat

end

end A165847.P7301067076885146342

namespace A165847

/-- `A167336(A167307(n+1)/A167303(n+1))` -/
def P7301067076885146342.Spec : Prop :=
  ∀ n, P7301067076885146342.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P15448382919476207816

`A167336(A167310(n+1)/A167304(n+1))`
-/

namespace A165847.P15448382919476207816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (SequenceMachineLib.roundAway ((A167310 (n + 1) : ℚ) / (A167304 (n + 1) : ℚ))).toNat

end

end A165847.P15448382919476207816

namespace A165847

/-- `A167336(A167310(n+1)/A167304(n+1))` -/
def P15448382919476207816.Spec : Prop :=
  ∀ n, P15448382919476207816.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P16389364085877745904

`A167336(A167325(n+1)/A167321(n+1))`
-/

namespace A165847.P16389364085877745904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165847.P16389364085877745904

namespace A165847

/-- `A167336(A167325(n+1)/A167321(n+1))` -/
def P16389364085877745904.Spec : Prop :=
  ∀ n, P16389364085877745904.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P2552402551779380125

`A167336(A003961(A061142(A003961(n+1))))`
-/

namespace A165847.P2552402551779380125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167336 (A003961 (A061142 (A003961 (n + 1)).toNat).toNat).toNat

end

end A165847.P2552402551779380125

namespace A165847

/-- `A167336(A003961(A061142(A003961(n+1))))` -/
def P2552402551779380125.Spec : Prop :=
  ∀ n, P2552402551779380125.a n = A165847 (n + 1)

end A165847

/-! ## A165847.P8128483234173880550

`26^(A001222(∑[comp[2*n]])/2)`
-/

namespace A165847.P8128483234173880550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (26 : ℝ) ^ ((A001222 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A165847.P8128483234173880550

namespace A165847

/-- `26^(A001222(∑[comp[2*n]])/2)` -/
def P8128483234173880550.Spec : Prop :=
  ∀ n, P8128483234173880550.a n = (A165847 (n + 1) : ℝ)

end A165847

/-! ## A165847.P15220800834843425608

`26^A001221(A086568(n+1))`
-/

namespace A165847.P15220800834843425608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (26 : ℚ) ^ (A001221 (A086568 (n + 1)).toNat : ℤ)

end

end A165847.P15220800834843425608

namespace A165847

/-- `26^A001221(A086568(n+1))` -/
def P15220800834843425608.Spec : Prop :=
  ∀ n, P15220800834843425608.a n = (A165847 (n + 1) : ℚ)

end A165847

/-!
# A165848: Totally multiplicative sequence with a(p) = 27.

The programs for A165848, the canonical program `A165848.P15695634691562620467` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165848 has offset 1).

The definition of A165848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165848.P2472529010832787732

`27^A001222(n+1)`
-/

namespace A165848.P2472529010832787732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (27 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165848.P2472529010832787732

namespace A165848

/-- `27^A001222(n+1)` -/
def P2472529010832787732.Spec : Prop :=
  ∀ n, P2472529010832787732.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P15695634691562620467

`A009971(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165848

/-- `A009971(A001222(n+1))` -/
def P15695634691562620467.Spec : Prop :=
  ∀ n, P15695634691562620467.a n = A165848 (n + 1)

theorem P15695634691562620467.correct : P15695634691562620467.Spec := by
  intro n
  simp only [A165848, Nat.add_sub_cancel]

end A165848

/-! ## A165848.P14478900368037407368

`27^∑{e}[n+1, #]`
-/

namespace A165848.P14478900368037407368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165848.P14478900368037407368

namespace A165848

/-- `27^∑{e}[n+1, #]` -/
def P14478900368037407368.Spec : Prop :=
  ∀ n, (P14478900368037407368.a n : ℤ) = A165848 (n + 1)

end A165848

/-! ## A165848.P12036749337599007740

`∏{e}[n+1, 27^#]`
-/

namespace A165848.P12036749337599007740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 27 ^ Nat.factorization (f1 n) p

end

end A165848.P12036749337599007740

namespace A165848

/-- `∏{e}[n+1, 27^#]` -/
def P12036749337599007740.Spec : Prop :=
  ∀ n, (P12036749337599007740.a n : ℤ) = A165848 (n + 1)

end A165848

/-! ## A165848.P17305946168907425665

`27^Δ[A022559(n)]`
-/

namespace A165848.P17305946168907425665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (27 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165848.P17305946168907425665

namespace A165848

/-- `27^Δ[A022559(n)]` -/
def P17305946168907425665.Spec : Prop :=
  ∀ n, P17305946168907425665.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P12725373470892128199

`A165824(n+1)^3`
-/

namespace A165848.P12725373470892128199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 3

end

end A165848.P12725373470892128199

namespace A165848

/-- `A165824(n+1)^3` -/
def P12725373470892128199.Spec : Prop :=
  ∀ n, P12725373470892128199.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P10352793495012006942

`A009971(∑{e}[n+1, #])`
-/

namespace A165848.P10352793495012006942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009971 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165848.P10352793495012006942

namespace A165848

/-- `A009971(∑{e}[n+1, #])` -/
def P10352793495012006942.Spec : Prop :=
  ∀ n, P10352793495012006942.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P12468991982840862059

`sqrt(A165830(n+1)^3)`
-/

namespace A165848.P12468991982840862059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165830 (n + 1) ^ 3 : ℝ)

end

end A165848.P12468991982840862059

namespace A165848

/-- `sqrt(A165830(n+1)^3)` -/
def P12468991982840862059.Spec : Prop :=
  ∀ n, P12468991982840862059.a n = (A165848 (n + 1) : ℝ)

end A165848

/-! ## A165848.P6269523536943368544

`(A166624(n+1)/(n+1))^3`
-/

namespace A165848.P6269523536943368544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166624 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A165848.P6269523536943368544

namespace A165848

/-- `(A166624(n+1)/(n+1))^3` -/
def P6269523536943368544.Spec : Prop :=
  ∀ n, P6269523536943368544.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P5347047361595828934

`3^(3*A001222(2*n-(n-1)))`
-/

namespace A165848.P5347047361595828934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (3 * A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)

end

end A165848.P5347047361595828934

namespace A165848

/-- `3^(3*A001222(2*n-(n-1)))` -/
def P5347047361595828934.Spec : Prop :=
  ∀ n, P5347047361595828934.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P9641486652379321179

`A166649(A061142(n+1))`
-/

namespace A165848.P9641486652379321179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166649 (A061142 (n + 1)).toNat

end

end A165848.P9641486652379321179

namespace A165848

/-- `A166649(A061142(n+1))` -/
def P9641486652379321179.Spec : Prop :=
  ∀ n, P9641486652379321179.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P3125112112598477493

`A000244(log2(A165829(n+1)))`
-/

namespace A165848.P3125112112598477493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.roundAway (Real.logb 2 (A165829 (n + 1) : ℝ))).toNat

end

end A165848.P3125112112598477493

namespace A165848

/-- `A000244(log2(A165829(n+1)))` -/
def P3125112112598477493.Spec : Prop :=
  ∀ n, P3125112112598477493.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P10960670183637558355

`A000244(3*A001222(n+1))`
-/

namespace A165848.P10960670183637558355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (3 * A001222 (n + 1)).toNat

end

end A165848.P10960670183637558355

namespace A165848

/-- `A000244(3*A001222(n+1))` -/
def P10960670183637558355.Spec : Prop :=
  ∀ n, P10960670183637558355.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P13229925098362863309

`A165824(n+1)*A165830(n+1)`
-/

namespace A165848.P13229925098362863309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165830 (n + 1)

end

end A165848.P13229925098362863309

namespace A165848

/-- `A165824(n+1)*A165830(n+1)` -/
def P13229925098362863309.Spec : Prop :=
  ∀ n, P13229925098362863309.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P17714835078577266868

`A165839(n+1)²/A165833(n+1)`
-/

namespace A165848.P17714835078577266868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165839 (n + 1) ^ 2 : ℚ) / (A165833 (n + 1) : ℚ)

end

end A165848.P17714835078577266868

namespace A165848

/-- `A165839(n+1)²/A165833(n+1)` -/
def P17714835078577266868.Spec : Prop :=
  ∀ n, P17714835078577266868.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P10709052731302857731

`A003959(A061142(n+1))*A165830(n+1)`
-/

namespace A165848.P10709052731302857731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A165830 (n + 1)

end

end A165848.P10709052731302857731

namespace A165848

/-- `A003959(A061142(n+1))*A165830(n+1)` -/
def P10709052731302857731.Spec : Prop :=
  ∀ n, P10709052731302857731.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P16715970564846883539

`A165824(n+1)*A166643(A061142(n+1))`
-/

namespace A165848.P16715970564846883539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166643 (A061142 (n + 1)).toNat

end

end A165848.P16715970564846883539

namespace A165848

/-- `A165824(n+1)*A166643(A061142(n+1))` -/
def P16715970564846883539.Spec : Prop :=
  ∀ n, P16715970564846883539.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P4888980766504118235

`A166649(A165831(n+1)/A165826(n+1))`
-/

namespace A165848.P4888980766504118235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166649 (SequenceMachineLib.roundAway ((A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ))).toNat

end

end A165848.P4888980766504118235

namespace A165848

/-- `A166649(A165831(n+1)/A165826(n+1))` -/
def P4888980766504118235.Spec : Prop :=
  ∀ n, P4888980766504118235.a n = A165848 (n + 1)

end A165848

/-! ## A165848.P18387374926358588560

`A165830(n+1)/A166591(n+1)*A167322(n+1)`
-/

namespace A165848.P18387374926358588560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A165848.P18387374926358588560

namespace A165848

/-- `A165830(n+1)/A166591(n+1)*A167322(n+1)` -/
def P18387374926358588560.Spec : Prop :=
  ∀ n, P18387374926358588560.a n = (A165848 (n + 1) : ℚ)

end A165848

/-! ## A165848.P2819584899988441392

`A165830(n+1)/A167322(n+1)*A167328(n+1)`
-/

namespace A165848.P2819584899988441392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A165848.P2819584899988441392

namespace A165848

/-- `A165830(n+1)/A167322(n+1)*A167328(n+1)` -/
def P2819584899988441392.Spec : Prop :=
  ∀ n, P2819584899988441392.a n = (A165848 (n + 1) : ℚ)

end A165848

/-!
# A165849: Totally multiplicative sequence with a(p) = 28.

The programs for A165849, the canonical program `A165849.P17595593499798088489` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165849 has offset 1).

The definition of A165849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165849.P9852024078273919174

`28^A001222(n+1)`
-/

namespace A165849.P9852024078273919174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (28 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165849.P9852024078273919174

namespace A165849

/-- `28^A001222(n+1)` -/
def P9852024078273919174.Spec : Prop :=
  ∀ n, P9852024078273919174.a n = (A165849 (n + 1) : ℚ)

end A165849

/-! ## A165849.P17595593499798088489

`A009972(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165849

/-- `A009972(A001222(n+1))` -/
def P17595593499798088489.Spec : Prop :=
  ∀ n, P17595593499798088489.a n = A165849 (n + 1)

theorem P17595593499798088489.correct : P17595593499798088489.Spec := by
  intro n
  simp only [A165849, Nat.add_sub_cancel]

end A165849

/-! ## A165849.P7889595082975167629

`28^∑{e}[n+1, #]`
-/

namespace A165849.P7889595082975167629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165849.P7889595082975167629

namespace A165849

/-- `28^∑{e}[n+1, #]` -/
def P7889595082975167629.Spec : Prop :=
  ∀ n, (P7889595082975167629.a n : ℤ) = A165849 (n + 1)

end A165849

/-! ## A165849.P11387738403067512094

`∏{e}[n+1, 28^#]`
-/

namespace A165849.P11387738403067512094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 28 ^ Nat.factorization (f1 n) p

end

end A165849.P11387738403067512094

namespace A165849

/-- `∏{e}[n+1, 28^#]` -/
def P11387738403067512094.Spec : Prop :=
  ∀ n, (P11387738403067512094.a n : ℤ) = A165849 (n + 1)

end A165849

/-! ## A165849.P12046811550922192797

`A009972(∑{e}[n+1, #])`
-/

namespace A165849.P12046811550922192797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009972 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165849.P12046811550922192797

namespace A165849

/-- `A009972(∑{e}[n+1, #])` -/
def P12046811550922192797.Spec : Prop :=
  ∀ n, P12046811550922192797.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P15746276750776424060

`A167308(A061142(n+1))`
-/

namespace A165849.P15746276750776424060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167308 (A061142 (n + 1)).toNat

end

end A165849.P15746276750776424060

namespace A165849

/-- `A167308(A061142(n+1))` -/
def P15746276750776424060.Spec : Prop :=
  ∀ n, P15746276750776424060.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P6847727031445690032

`A061142(n+1)*A165835(n+1)`
-/

namespace A165849.P6847727031445690032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165835 (n + 1)

end

end A165849.P6847727031445690032

namespace A165849

/-- `A061142(n+1)*A165835(n+1)` -/
def P6847727031445690032.Spec : Prop :=
  ∀ n, P6847727031445690032.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P12171422270360015751

`A165825(n+1)*A165828(n+1)`
-/

namespace A165849.P12171422270360015751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165828 (n + 1)

end

end A165849.P12171422270360015751

namespace A165849

/-- `A165825(n+1)*A165828(n+1)` -/
def P12171422270360015751.Spec : Prop :=
  ∀ n, P12171422270360015751.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P15313993714556514213

`A061142(n+1)²*A165828(n+1)`
-/

namespace A165849.P15313993714556514213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165828 (n + 1)

end

end A165849.P15313993714556514213

namespace A165849

/-- `A061142(n+1)²*A165828(n+1)` -/
def P15313993714556514213.Spec : Prop :=
  ∀ n, P15313993714556514213.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P8818134393980762898

`A000302(A001222(n+1))*A165828(n+1)`
-/

namespace A165849.P8818134393980762898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A001222 (n + 1)).toNat * A165828 (n + 1)

end

end A165849.P8818134393980762898

namespace A165849

/-- `A000302(A001222(n+1))*A165828(n+1)` -/
def P8818134393980762898.Spec : Prop :=
  ∀ n, P8818134393980762898.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P4087468860991895771

`A165825(n+1)*A166653(A061142(n+1))`
-/

namespace A165849.P4087468860991895771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166653 (A061142 (n + 1)).toNat

end

end A165849.P4087468860991895771

namespace A165849

/-- `A165825(n+1)*A166653(A061142(n+1))` -/
def P4087468860991895771.Spec : Prop :=
  ∀ n, P4087468860991895771.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P9828474762359407167

`A167308(A167305(n+1)/A167303(n+1))`
-/

namespace A165849.P9828474762359407167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167308 (SequenceMachineLib.roundAway ((A167305 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ))).toNat

end

end A165849.P9828474762359407167

namespace A165849

/-- `A167308(A167305(n+1)/A167303(n+1))` -/
def P9828474762359407167.Spec : Prop :=
  ∀ n, P9828474762359407167.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P15591661121800234508

`A167308(A167311(n+1)/A167306(n+1))`
-/

namespace A165849.P15591661121800234508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167308 (SequenceMachineLib.roundAway ((A167311 (n + 1) : ℚ) / (A167306 (n + 1) : ℚ))).toNat

end

end A165849.P15591661121800234508

namespace A165849

/-- `A167308(A167311(n+1)/A167306(n+1))` -/
def P15591661121800234508.Spec : Prop :=
  ∀ n, P15591661121800234508.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P15963041449696866364

`A165825(n+1)*A166653(sqrt(A165825(n+1)))`
-/

namespace A165849.P15963041449696866364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166653 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165849.P15963041449696866364

namespace A165849

/-- `A165825(n+1)*A166653(sqrt(A165825(n+1)))` -/
def P15963041449696866364.Spec : Prop :=
  ∀ n, P15963041449696866364.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P9693744184485513368

`A165825(n+1)*A166661(sqrt(A165825(n+1)))`
-/

namespace A165849.P9693744184485513368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166661 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165849.P9693744184485513368

namespace A165849

/-- `A165825(n+1)*A166661(sqrt(A165825(n+1)))` -/
def P9693744184485513368.Spec : Prop :=
  ∀ n, P9693744184485513368.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P6598551963498329003

`A000079(2*A001222(n+1))*A165828(n+1)`
-/

namespace A165849.P6598551963498329003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A001222 (n + 1)).toNat * A165828 (n + 1)

end

end A165849.P6598551963498329003

namespace A165849

/-- `A000079(2*A001222(n+1))*A165828(n+1)` -/
def P6598551963498329003.Spec : Prop :=
  ∀ n, P6598551963498329003.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P4150268791455481513

`A165872(n+1)²*A166661(abs(A165872(n+1)))`
-/

namespace A165849.P4150268791455481513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) ^ 2 * A166661 |A165872 (n + 1)|.toNat

end

end A165849.P4150268791455481513

namespace A165849

/-- `A165872(n+1)²*A166661(abs(A165872(n+1)))` -/
def P4150268791455481513.Spec : Prop :=
  ∀ n, P4150268791455481513.a n = A165849 (n + 1)

end A165849

/-! ## A165849.P582576864170910667

`A165828(n+1)/A166590(n+1)*A167305(n+1)`
-/

namespace A165849.P582576864170910667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A165849.P582576864170910667

namespace A165849

/-- `A165828(n+1)/A166590(n+1)*A167305(n+1)` -/
def P582576864170910667.Spec : Prop :=
  ∀ n, P582576864170910667.a n = (A165849 (n + 1) : ℚ)

end A165849

/-! ## A165849.P16582404798214142011

`A165828(n+1)/A166591(n+1)*A167323(n+1)`
-/

namespace A165849.P16582404798214142011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A165849.P16582404798214142011

namespace A165849

/-- `A165828(n+1)/A166591(n+1)*A167323(n+1)` -/
def P16582404798214142011.Spec : Prop :=
  ∀ n, P16582404798214142011.a n = (A165849 (n + 1) : ℚ)

end A165849

/-! ## A165849.P5261704950492723612

`A167305(n+1)*A167308(n+1)/A167358(n+1)`
-/

namespace A165849.P5261704950492723612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) * A167308 (n + 1) : ℚ) / (A167358 (n + 1) : ℚ)

end

end A165849.P5261704950492723612

namespace A165849

/-- `A167305(n+1)*A167308(n+1)/A167358(n+1)` -/
def P5261704950492723612.Spec : Prop :=
  ∀ n, P5261704950492723612.a n = (A165849 (n + 1) : ℚ)

end A165849

/-!
# A165850: Totally multiplicative sequence with a(p) = 29.

The programs for A165850, the canonical program `A165850.P3497399414355724484` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165850 has offset 1).

The definition of A165850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165850.P12455504098643450028

`29^A001222(n+1)`
-/

namespace A165850.P12455504098643450028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (29 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165850.P12455504098643450028

namespace A165850

/-- `29^A001222(n+1)` -/
def P12455504098643450028.Spec : Prop :=
  ∀ n, P12455504098643450028.a n = (A165850 (n + 1) : ℚ)

end A165850

/-! ## A165850.P3497399414355724484

`A009973(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165850

/-- `A009973(A001222(n+1))` -/
def P3497399414355724484.Spec : Prop :=
  ∀ n, P3497399414355724484.a n = A165850 (n + 1)

theorem P3497399414355724484.correct : P3497399414355724484.Spec := by
  intro n
  simp only [A165850, Nat.add_sub_cancel]

end A165850

/-! ## A165850.P2442517977389554857

`29^∑{e}[n+1, #]`
-/

namespace A165850.P2442517977389554857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165850.P2442517977389554857

namespace A165850

/-- `29^∑{e}[n+1, #]` -/
def P2442517977389554857.Spec : Prop :=
  ∀ n, (P2442517977389554857.a n : ℤ) = A165850 (n + 1)

end A165850

/-! ## A165850.P13661078274095900698

`∏{e}[n+1, 29^#]`
-/

namespace A165850.P13661078274095900698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 29 ^ Nat.factorization (f1 n) p

end

end A165850.P13661078274095900698

namespace A165850

/-- `∏{e}[n+1, 29^#]` -/
def P13661078274095900698.Spec : Prop :=
  ∀ n, (P13661078274095900698.a n : ℤ) = A165850 (n + 1)

end A165850

/-! ## A165850.P2983283623451218493

`29^Δ[A022559(n)]`
-/

namespace A165850.P2983283623451218493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (29 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165850.P2983283623451218493

namespace A165850

/-- `29^Δ[A022559(n)]` -/
def P2983283623451218493.Spec : Prop :=
  ∀ n, P2983283623451218493.a n = (A165850 (n + 1) : ℚ)

end A165850

/-! ## A165850.P16850567443951490752

`A009973(∑{e}[n+1, #])`
-/

namespace A165850.P16850567443951490752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009973 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165850.P16850567443951490752

namespace A165850

/-- `A009973(∑{e}[n+1, #])` -/
def P16850567443951490752.Spec : Prop :=
  ∀ n, P16850567443951490752.a n = A165850 (n + 1)

end A165850

/-! ## A165850.P3169549366281575475

`29^log2(A061142(n+1))`
-/

namespace A165850.P3169549366281575475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (29 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165850.P3169549366281575475

namespace A165850

/-- `29^log2(A061142(n+1))` -/
def P3169549366281575475.Spec : Prop :=
  ∀ n, P3169549366281575475.a n = (A165850 (n + 1) : ℝ)

end A165850

/-! ## A165850.P14263438767036664489

`29*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A165850.P14263438767036664489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  29 * a (A032742 (n + 1) - 1).toNat

end

end A165850.P14263438767036664489

namespace A165850

/-- `29*a(A032742(n+1)-1)` -/
def P14263438767036664489.Spec : Prop :=
  ∀ n, (P14263438767036664489.a n : ℤ) = A165850 (n + 1)

end A165850

/-! ## A165850.P11668969608180521908

`A166659(A165824(n+1))`
-/

namespace A165850.P11668969608180521908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (A165824 (n + 1)).toNat

end

end A165850.P11668969608180521908

namespace A165850

/-- `A166659(A165824(n+1))` -/
def P11668969608180521908.Spec : Prop :=
  ∀ n, P11668969608180521908.a n = A165850 (n + 1)

end A165850

/-! ## A165850.P13281315832976635576

`A166659(A166646(n+1)/A166642(n+1))`
-/

namespace A165850.P13281315832976635576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165850.P13281315832976635576

namespace A165850

/-- `A166659(A166646(n+1)/A166642(n+1))` -/
def P13281315832976635576.Spec : Prop :=
  ∀ n, P13281315832976635576.a n = A165850 (n + 1)

end A165850

/-! ## A165850.P9869812105716008874

`A166659(A166649(n+1)/A166643(n+1))`
-/

namespace A165850.P9869812105716008874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (SequenceMachineLib.roundAway ((A166649 (n + 1) : ℚ) / (A166643 (n + 1) : ℚ))).toNat

end

end A165850.P9869812105716008874

namespace A165850

/-- `A166659(A166649(n+1)/A166643(n+1))` -/
def P9869812105716008874.Spec : Prop :=
  ∀ n, P9869812105716008874.a n = A165850 (n + 1)

end A165850

/-! ## A165850.P6151814997587270952

`A166676(A166646(n+1)/A166642(n+1))`
-/

namespace A165850.P6151814997587270952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166676 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165850.P6151814997587270952

namespace A165850

/-- `A166676(A166646(n+1)/A166642(n+1))` -/
def P6151814997587270952.Spec : Prop :=
  ∀ n, P6151814997587270952.a n = A165850 (n + 1)

end A165850

/-!
# A165851: Totally multiplicative sequence with a(p) = 30.

The programs for A165851, the canonical program `A165851.P17796726547911974971` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165851 has offset 1).

The definition of A165851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165851.P4342448690585302929

`30^A001222(n+1)`
-/

namespace A165851.P4342448690585302929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165851.P4342448690585302929

namespace A165851

/-- `30^A001222(n+1)` -/
def P4342448690585302929.Spec : Prop :=
  ∀ n, P4342448690585302929.a n = (A165851 (n + 1) : ℚ)

end A165851

/-! ## A165851.P17796726547911974971

`A009974(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165851

/-- `A009974(A001222(n+1))` -/
def P17796726547911974971.Spec : Prop :=
  ∀ n, P17796726547911974971.a n = A165851 (n + 1)

theorem P17796726547911974971.correct : P17796726547911974971.Spec := by
  intro n
  simp only [A165851, Nat.add_sub_cancel]

end A165851

/-! ## A165851.P13127678700090456655

`30^∑{e}[n+1, #]`
-/

namespace A165851.P13127678700090456655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165851.P13127678700090456655

namespace A165851

/-- `30^∑{e}[n+1, #]` -/
def P13127678700090456655.Spec : Prop :=
  ∀ n, (P13127678700090456655.a n : ℤ) = A165851 (n + 1)

end A165851

/-! ## A165851.P15024744452219328244

`∏{e}[n+1, 30^#]`
-/

namespace A165851.P15024744452219328244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 30 ^ Nat.factorization (f1 n) p

end

end A165851.P15024744452219328244

namespace A165851

/-- `∏{e}[n+1, 30^#]` -/
def P15024744452219328244.Spec : Prop :=
  ∀ n, (P15024744452219328244.a n : ℤ) = A165851 (n + 1)

end A165851

/-! ## A165851.P4659602591752826043

`A009974(∑{e}[n+1, #])`
-/

namespace A165851.P4659602591752826043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009974 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165851.P4659602591752826043

namespace A165851

/-- `A009974(∑{e}[n+1, #])` -/
def P4659602591752826043.Spec : Prop :=
  ∀ n, P4659602591752826043.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P7628869237486254883

`A166650(A061142(n+1))`
-/

namespace A165851.P7628869237486254883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166650 (A061142 (n + 1)).toNat

end

end A165851.P7628869237486254883

namespace A165851

/-- `A166650(A061142(n+1))` -/
def P7628869237486254883.Spec : Prop :=
  ∀ n, P7628869237486254883.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P4115249427988851282

`A167325(sqrt(A165825(n+1)))`
-/

namespace A165851.P4115249427988851282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167325 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165851.P4115249427988851282

namespace A165851

/-- `A167325(sqrt(A165825(n+1)))` -/
def P4115249427988851282.Spec : Prop :=
  ∀ n, P4115249427988851282.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P14534674234446644426

`A061142(n+1)*A165836(n+1)`
-/

namespace A165851.P14534674234446644426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165836 (n + 1)

end

end A165851.P14534674234446644426

namespace A165851

/-- `A061142(n+1)*A165836(n+1)` -/
def P14534674234446644426.Spec : Prop :=
  ∀ n, P14534674234446644426.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P5252344241623783493

`A165824(n+1)*A165831(n+1)`
-/

namespace A165851.P5252344241623783493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165831 (n + 1)

end

end A165851.P5252344241623783493

namespace A165851

/-- `A165824(n+1)*A165831(n+1)` -/
def P5252344241623783493.Spec : Prop :=
  ∀ n, P5252344241623783493.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P12698338510018414643

`A165826(n+1)*A165827(n+1)`
-/

namespace A165851.P12698338510018414643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A165827 (n + 1)

end

end A165851.P12698338510018414643

namespace A165851

/-- `A165826(n+1)*A165827(n+1)` -/
def P12698338510018414643.Spec : Prop :=
  ∀ n, P12698338510018414643.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P4975042742230951705

`A003959(A061142(n+1))*A165831(n+1)`
-/

namespace A165851.P4975042742230951705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A165831 (n + 1)

end

end A165851.P4975042742230951705

namespace A165851

/-- `A003959(A061142(n+1))*A165831(n+1)` -/
def P4975042742230951705.Spec : Prop :=
  ∀ n, P4975042742230951705.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P3330974455261598315

`A166650(A166642(n+1)/A003959(n+1))`
-/

namespace A165851.P3330974455261598315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166650 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A165851.P3330974455261598315

namespace A165851

/-- `A166650(A166642(n+1)/A003959(n+1))` -/
def P3330974455261598315.Spec : Prop :=
  ∀ n, P3330974455261598315.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P12711654363702590789

`A166650(A165831(n+1)/A165826(n+1))`
-/

namespace A165851.P12711654363702590789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166650 (SequenceMachineLib.roundAway ((A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ))).toNat

end

end A165851.P12711654363702590789

namespace A165851

/-- `A166650(A165831(n+1)/A165826(n+1))` -/
def P12711654363702590789.Spec : Prop :=
  ∀ n, P12711654363702590789.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P9306975007530235818

`A167325(A167323(n+1)/A167321(n+1))`
-/

namespace A165851.P9306975007530235818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167325 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165851.P9306975007530235818

namespace A165851

/-- `A167325(A167323(n+1)/A167321(n+1))` -/
def P9306975007530235818.Spec : Prop :=
  ∀ n, P9306975007530235818.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P5604618154849667075

`A167325(A167325(n+1)/A167322(n+1))`
-/

namespace A165851.P5604618154849667075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167325 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165851.P5604618154849667075

namespace A165851

/-- `A167325(A167325(n+1)/A167322(n+1))` -/
def P5604618154849667075.Spec : Prop :=
  ∀ n, P5604618154849667075.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P11728638291995444035

`A167325(A167327(n+1)/A167323(n+1))`
-/

namespace A165851.P11728638291995444035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167325 (SequenceMachineLib.roundAway ((A167327 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ))).toNat

end

end A165851.P11728638291995444035

namespace A165851

/-- `A167325(A167327(n+1)/A167323(n+1))` -/
def P11728638291995444035.Spec : Prop :=
  ∀ n, P11728638291995444035.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P13302743420001182628

`A167325(A167329(n+1)/A167324(n+1))`
-/

namespace A165851.P13302743420001182628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167325 (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ))).toNat

end

end A165851.P13302743420001182628

namespace A165851

/-- `A167325(A167329(n+1)/A167324(n+1))` -/
def P13302743420001182628.Spec : Prop :=
  ∀ n, P13302743420001182628.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P7455229222683790954

`A061142(n+1)*A165824(n+1)*A165826(n+1)`
-/

namespace A165851.P7455229222683790954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165824 (n + 1) * A165826 (n + 1)

end

end A165851.P7455229222683790954

namespace A165851

/-- `A061142(n+1)*A165824(n+1)*A165826(n+1)` -/
def P7455229222683790954.Spec : Prop :=
  ∀ n, P7455229222683790954.a n = A165851 (n + 1)

end A165851

/-! ## A165851.P7450206828304554373

`A165826(n+1)/A166590(n+1)*A167307(n+1)`
-/

namespace A165851.P7450206828304554373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A165851.P7450206828304554373

namespace A165851

/-- `A165826(n+1)/A166590(n+1)*A167307(n+1)` -/
def P7450206828304554373.Spec : Prop :=
  ∀ n, P7450206828304554373.a n = (A165851 (n + 1) : ℚ)

end A165851

/-! ## A165851.P4595891748956983872

`A165831(n+1)/A166591(n+1)*A167322(n+1)`
-/

namespace A165851.P4595891748956983872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A165851.P4595891748956983872

namespace A165851

/-- `A165831(n+1)/A166591(n+1)*A167322(n+1)` -/
def P4595891748956983872.Spec : Prop :=
  ∀ n, P4595891748956983872.a n = (A165851 (n + 1) : ℚ)

end A165851

/-!
# A165852: Totally multiplicative sequence with a(p) = 31.

The programs for A165852, the canonical program `A165852.P18213510886168504377` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165852 has offset 1).

The definition of A165852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165852.P9382418510758058822

`31^A001222(n+1)`
-/

namespace A165852.P9382418510758058822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (31 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165852.P9382418510758058822

namespace A165852

/-- `31^A001222(n+1)` -/
def P9382418510758058822.Spec : Prop :=
  ∀ n, P9382418510758058822.a n = (A165852 (n + 1) : ℚ)

end A165852

/-! ## A165852.P18213510886168504377

`A009975(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165852

/-- `A009975(A001222(n+1))` -/
def P18213510886168504377.Spec : Prop :=
  ∀ n, P18213510886168504377.a n = A165852 (n + 1)

theorem P18213510886168504377.correct : P18213510886168504377.Spec := by
  intro n
  simp only [A165852, Nat.add_sub_cancel]

end A165852

/-! ## A165852.P2842870613823826314

`31^∑{e}[n+1, #]`
-/

namespace A165852.P2842870613823826314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165852.P2842870613823826314

namespace A165852

/-- `31^∑{e}[n+1, #]` -/
def P2842870613823826314.Spec : Prop :=
  ∀ n, (P2842870613823826314.a n : ℤ) = A165852 (n + 1)

end A165852

/-! ## A165852.P16731578171693391776

`∏{e}[n+1, 31^#]`
-/

namespace A165852.P16731578171693391776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 31 ^ Nat.factorization (f1 n) p

end

end A165852.P16731578171693391776

namespace A165852

/-- `∏{e}[n+1, 31^#]` -/
def P16731578171693391776.Spec : Prop :=
  ∀ n, (P16731578171693391776.a n : ℤ) = A165852 (n + 1)

end A165852

/-! ## A165852.P2609347853487131607

`A009975(∑{e}[n+1, #])`
-/

namespace A165852.P2609347853487131607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009975 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165852.P2609347853487131607

namespace A165852

/-- `A009975(∑{e}[n+1, #])` -/
def P2609347853487131607.Spec : Prop :=
  ∀ n, P2609347853487131607.a n = A165852 (n + 1)

end A165852

/-! ## A165852.P8692293321890156601

`31^log2(A061142(n+1))`
-/

namespace A165852.P8692293321890156601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (31 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165852.P8692293321890156601

namespace A165852

/-- `31^log2(A061142(n+1))` -/
def P8692293321890156601.Spec : Prop :=
  ∀ n, P8692293321890156601.a n = (A165852 (n + 1) : ℝ)

end A165852

/-! ## A165852.P978060591440561302

`31^A056239(A181819(n+1))`
-/

namespace A165852.P978060591440561302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (31 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165852.P978060591440561302

namespace A165852

/-- `31^A056239(A181819(n+1))` -/
def P978060591440561302.Spec : Prop :=
  ∀ n, P978060591440561302.a n = (A165852 (n + 1) : ℚ)

end A165852

/-! ## A165852.P17696216121587253308

`A166668(A165824(n+1))`
-/

namespace A165852.P17696216121587253308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166668 (A165824 (n + 1)).toNat

end

end A165852.P17696216121587253308

namespace A165852

/-- `A166668(A165824(n+1))` -/
def P17696216121587253308.Spec : Prop :=
  ∀ n, P17696216121587253308.a n = A165852 (n + 1)

end A165852

/-! ## A165852.P16030595629798924154

`A166668(A166646(n+1)/A166642(n+1))`
-/

namespace A165852.P16030595629798924154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166668 (SequenceMachineLib.roundAway ((A166646 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ))).toNat

end

end A165852.P16030595629798924154

namespace A165852

/-- `A166668(A166646(n+1)/A166642(n+1))` -/
def P16030595629798924154.Spec : Prop :=
  ∀ n, P16030595629798924154.a n = A165852 (n + 1)

end A165852

/-! ## A165852.P13265405437116105498

`A070921(A076734(n+1))`
-/

namespace A165852.P13265405437116105498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070921 (A076734 (n + 1)).toNat

end

end A165852.P13265405437116105498

namespace A165852

/-- `A070921(A076734(n+1))` -/
def P13265405437116105498.Spec : Prop :=
  ∀ n, P13265405437116105498.a n = A165852 (n + 1)

end A165852

/-!
# A165853: Totally multiplicative sequence with a(p) = 32.

The programs for A165853, the canonical program `A165853.P10925487056640305467` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165853 has offset 1).

The definition of A165853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165853.P629899801616357740

`32^A001222(n+1)`
-/

namespace A165853.P629899801616357740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165853.P629899801616357740

namespace A165853

/-- `32^A001222(n+1)` -/
def P629899801616357740.Spec : Prop :=
  ∀ n, P629899801616357740.a n = (A165853 (n + 1) : ℚ)

end A165853

/-! ## A165853.P10925487056640305467

`A009976(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165853

/-- `A009976(A001222(n+1))` -/
def P10925487056640305467.Spec : Prop :=
  ∀ n, P10925487056640305467.a n = A165853 (n + 1)

theorem P10925487056640305467.correct : P10925487056640305467.Spec := by
  intro n
  simp only [A165853, Nat.add_sub_cancel]

end A165853

/-! ## A165853.P14538389401843658688

`32^∑{e}[n+1, #]`
-/

namespace A165853.P14538389401843658688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165853.P14538389401843658688

namespace A165853

/-- `32^∑{e}[n+1, #]` -/
def P14538389401843658688.Spec : Prop :=
  ∀ n, (P14538389401843658688.a n : ℤ) = A165853 (n + 1)

end A165853

/-! ## A165853.P9645311796299496877

`∏{e}[n+1, 32^#]`
-/

namespace A165853.P9645311796299496877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 32 ^ Nat.factorization (f1 n) p

end

end A165853.P9645311796299496877

namespace A165853

/-- `∏{e}[n+1, 32^#]` -/
def P9645311796299496877.Spec : Prop :=
  ∀ n, (P9645311796299496877.a n : ℤ) = A165853 (n + 1)

end A165853

/-! ## A165853.P10845751581036879764

`A061142(n+1)^5`
-/

namespace A165853.P10845751581036879764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 5

end

end A165853.P10845751581036879764

namespace A165853

/-- `A061142(n+1)^5` -/
def P10845751581036879764.Spec : Prop :=
  ∀ n, P10845751581036879764.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P5988043430212673607

`A009976(∑{e}[n+1, #])`
-/

namespace A165853.P5988043430212673607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009976 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165853.P5988043430212673607

namespace A165853

/-- `A009976(∑{e}[n+1, #])` -/
def P5988043430212673607.Spec : Prop :=
  ∀ n, P5988043430212673607.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P5677339665237670545

`sqrt(A165825(n+1)^5)`
-/

namespace A165853.P5677339665237670545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) ^ 5 : ℝ)

end

end A165853.P5677339665237670545

namespace A165853

/-- `sqrt(A165825(n+1)^5)` -/
def P5677339665237670545.Spec : Prop :=
  ∀ n, P5677339665237670545.a n = (A165853 (n + 1) : ℝ)

end A165853

/-! ## A165853.P17974183972403507945

`2^(5*A001222(2*n-(n-1)))`
-/

namespace A165853.P17974183972403507945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (5 * A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)

end

end A165853.P17974183972403507945

namespace A165853

/-- `2^(5*A001222(2*n-(n-1)))` -/
def P17974183972403507945.Spec : Prop :=
  ∀ n, P17974183972403507945.a n = (A165853 (n + 1) : ℚ)

end A165853

/-! ## A165853.P9359398008918305542

`A000584(A061142(n+1))`
-/

namespace A165853.P9359398008918305542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A061142 (n + 1)).toNat

end

end A165853.P9359398008918305542

namespace A165853

/-- `A000584(A061142(n+1))` -/
def P9359398008918305542.Spec : Prop :=
  ∀ n, P9359398008918305542.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P1939897560457623353

`A000225(5*A001222(n+1))+1`
-/

namespace A165853.P1939897560457623353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (5 * A001222 (n + 1)).toNat + 1

end

end A165853.P1939897560457623353

namespace A165853

/-- `A000225(5*A001222(n+1))+1` -/
def P1939897560457623353.Spec : Prop :=
  ∀ n, P1939897560457623353.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P2021754299609926078

`A061142(n+1)*A165837(n+1)`
-/

namespace A165853.P2021754299609926078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165837 (n + 1)

end

end A165853.P2021754299609926078

namespace A165853

/-- `A061142(n+1)*A165837(n+1)` -/
def P2021754299609926078.Spec : Prop :=
  ∀ n, P2021754299609926078.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P14019796958432692903

`A165825(n+1)*A165829(n+1)`
-/

namespace A165853.P14019796958432692903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165829 (n + 1)

end

end A165853.P14019796958432692903

namespace A165853

/-- `A165825(n+1)*A165829(n+1)` -/
def P14019796958432692903.Spec : Prop :=
  ∀ n, P14019796958432692903.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P10099384452699920394

`A061142(n+1)²*A165829(n+1)`
-/

namespace A165853.P10099384452699920394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165829 (n + 1)

end

end A165853.P10099384452699920394

namespace A165853

/-- `A061142(n+1)²*A165829(n+1)` -/
def P10099384452699920394.Spec : Prop :=
  ∀ n, P10099384452699920394.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P14543492474639409355

`A165825(n+1)²*A061142(n+1)`
-/

namespace A165853.P14543492474639409355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) ^ 2 * A061142 (n + 1)

end

end A165853.P14543492474639409355

namespace A165853

/-- `A165825(n+1)²*A061142(n+1)` -/
def P14543492474639409355.Spec : Prop :=
  ∀ n, P14543492474639409355.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P17968700332516248060

`abs(A165872(n+1))*A165872(n+1)²²`
-/

namespace A165853.P17968700332516248060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1)| * (A165872 (n + 1) ^ 2) ^ 2

end

end A165853.P17968700332516248060

namespace A165853

/-- `abs(A165872(n+1))*A165872(n+1)²²` -/
def P17968700332516248060.Spec : Prop :=
  ∀ n, P17968700332516248060.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P13664199275276584594

`A000079(A001222(n+1))*A165837(n+1)`
-/

namespace A165853.P13664199275276584594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A165837 (n + 1)

end

end A165853.P13664199275276584594

namespace A165853

/-- `A000079(A001222(n+1))*A165837(n+1)` -/
def P13664199275276584594.Spec : Prop :=
  ∀ n, P13664199275276584594.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P5668783484591332742

`A000302(A001222(n+1))*A165829(n+1)`
-/

namespace A165853.P5668783484591332742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A001222 (n + 1)).toNat * A165829 (n + 1)

end

end A165853.P5668783484591332742

namespace A165853

/-- `A000302(A001222(n+1))*A165829(n+1)` -/
def P5668783484591332742.Spec : Prop :=
  ∀ n, P5668783484591332742.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P15342941837509092178

`A167309(A167303(n+1)/A166590(n+1))`
-/

namespace A165853.P15342941837509092178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167309 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A165853.P15342941837509092178

namespace A165853

/-- `A167309(A167303(n+1)/A166590(n+1))` -/
def P15342941837509092178.Spec : Prop :=
  ∀ n, P15342941837509092178.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P7301391753381159483

`A167309(A167307(n+1)/A167304(n+1))`
-/

namespace A165853.P7301391753381159483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167309 (SequenceMachineLib.roundAway ((A167307 (n + 1) : ℚ) / (A167304 (n + 1) : ℚ))).toNat

end

end A165853.P7301391753381159483

namespace A165853

/-- `A167309(A167307(n+1)/A167304(n+1))` -/
def P7301391753381159483.Spec : Prop :=
  ∀ n, P7301391753381159483.a n = A165853 (n + 1)

end A165853

/-! ## A165853.P2557145069386455241

`A167309(A167309(n+1)/A167305(n+1))`
-/

namespace A165853.P2557145069386455241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167309 (SequenceMachineLib.roundAway ((A167309 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ))).toNat

end

end A165853.P2557145069386455241

namespace A165853

/-- `A167309(A167309(n+1)/A167305(n+1))` -/
def P2557145069386455241.Spec : Prop :=
  ∀ n, P2557145069386455241.a n = A165853 (n + 1)

end A165853

/-!
# A165854: Totally multiplicative sequence with a(p) = 33.

The programs for A165854, the canonical program `A165854.P7914514876152478852` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165854 has offset 1).

The definition of A165854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165854.P930860463676902613

`33^A001222(n+1)`
-/

namespace A165854.P930860463676902613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (33 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165854.P930860463676902613

namespace A165854

/-- `33^A001222(n+1)` -/
def P930860463676902613.Spec : Prop :=
  ∀ n, P930860463676902613.a n = (A165854 (n + 1) : ℚ)

end A165854

/-! ## A165854.P7914514876152478852

`A009977(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165854

/-- `A009977(A001222(n+1))` -/
def P7914514876152478852.Spec : Prop :=
  ∀ n, P7914514876152478852.a n = A165854 (n + 1)

theorem P7914514876152478852.correct : P7914514876152478852.Spec := by
  intro n
  simp only [A165854, Nat.add_sub_cancel]

end A165854

/-! ## A165854.P4273003550944017915

`33^∑{e}[n+1, #]`
-/

namespace A165854.P4273003550944017915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165854.P4273003550944017915

namespace A165854

/-- `33^∑{e}[n+1, #]` -/
def P4273003550944017915.Spec : Prop :=
  ∀ n, (P4273003550944017915.a n : ℤ) = A165854 (n + 1)

end A165854

/-! ## A165854.P7547492867354447406

`∏{e}[n+1, 33^#]`
-/

namespace A165854.P7547492867354447406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 33 ^ Nat.factorization (f1 n) p

end

end A165854.P7547492867354447406

namespace A165854

/-- `∏{e}[n+1, 33^#]` -/
def P7547492867354447406.Spec : Prop :=
  ∀ n, (P7547492867354447406.a n : ℤ) = A165854 (n + 1)

end A165854

/-! ## A165854.P16724282022635494172

`33^Δ[A022559(n)]`
-/

namespace A165854.P16724282022635494172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (33 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165854.P16724282022635494172

namespace A165854

/-- `33^Δ[A022559(n)]` -/
def P16724282022635494172.Spec : Prop :=
  ∀ n, P16724282022635494172.a n = (A165854 (n + 1) : ℚ)

end A165854

/-! ## A165854.P14746900640728482912

`A009977(∑{e}[n+1, #])`
-/

namespace A165854.P14746900640728482912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009977 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165854.P14746900640728482912

namespace A165854

/-- `A009977(∑{e}[n+1, #])` -/
def P14746900640728482912.Spec : Prop :=
  ∀ n, P14746900640728482912.a n = A165854 (n + 1)

end A165854

/-! ## A165854.P13168614411210196706

`A165824(n+1)*A165832(n+1)`
-/

namespace A165854.P13168614411210196706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165832 (n + 1)

end

end A165854.P13168614411210196706

namespace A165854

/-- `A165824(n+1)*A165832(n+1)` -/
def P13168614411210196706.Spec : Prop :=
  ∀ n, P13168614411210196706.a n = A165854 (n + 1)

end A165854

/-! ## A165854.P16676454448447667785

`A166671(A165826(n+1))`
-/

namespace A165854.P16676454448447667785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166671 (A165826 (n + 1)).toNat

end

end A165854.P16676454448447667785

namespace A165854

/-- `A166671(A165826(n+1))` -/
def P16676454448447667785.Spec : Prop :=
  ∀ n, P16676454448447667785.a n = A165854 (n + 1)

end A165854

/-!
# A165855: Totally multiplicative sequence with a(p) = 34.

The programs for A165855, the canonical program `A165855.P13066396038362190654` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165855 has offset 1).

The definition of A165855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165855.P12882843854379540155

`34^A001222(n+1)`
-/

namespace A165855.P12882843854379540155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (34 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165855.P12882843854379540155

namespace A165855

/-- `34^A001222(n+1)` -/
def P12882843854379540155.Spec : Prop :=
  ∀ n, P12882843854379540155.a n = (A165855 (n + 1) : ℚ)

end A165855

/-! ## A165855.P13066396038362190654

`A009978(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165855

/-- `A009978(A001222(n+1))` -/
def P13066396038362190654.Spec : Prop :=
  ∀ n, P13066396038362190654.a n = A165855 (n + 1)

theorem P13066396038362190654.correct : P13066396038362190654.Spec := by
  intro n
  simp only [A165855, Nat.add_sub_cancel]

end A165855

/-! ## A165855.P13195829022646112688

`34^∑{e}[n+1, #]`
-/

namespace A165855.P13195829022646112688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165855.P13195829022646112688

namespace A165855

/-- `34^∑{e}[n+1, #]` -/
def P13195829022646112688.Spec : Prop :=
  ∀ n, (P13195829022646112688.a n : ℤ) = A165855 (n + 1)

end A165855

/-! ## A165855.P12751395059658774738

`∏{e}[n+1, 34^#]`
-/

namespace A165855.P12751395059658774738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 34 ^ Nat.factorization (f1 n) p

end

end A165855.P12751395059658774738

namespace A165855

/-- `∏{e}[n+1, 34^#]` -/
def P12751395059658774738.Spec : Prop :=
  ∀ n, (P12751395059658774738.a n : ℤ) = A165855 (n + 1)

end A165855

/-! ## A165855.P17184773506011192139

`A009978(∑{e}[n+1, #])`
-/

namespace A165855.P17184773506011192139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009978 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165855.P17184773506011192139

namespace A165855

/-- `A009978(∑{e}[n+1, #])` -/
def P17184773506011192139.Spec : Prop :=
  ∀ n, P17184773506011192139.a n = A165855 (n + 1)

end A165855

/-! ## A165855.P17498577330843058329

`34^A056239(A181819(n+1))`
-/

namespace A165855.P17498577330843058329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (34 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165855.P17498577330843058329

namespace A165855

/-- `34^A056239(A181819(n+1))` -/
def P17498577330843058329.Spec : Prop :=
  ∀ n, P17498577330843058329.a n = (A165855 (n + 1) : ℚ)

end A165855

/-! ## A165855.P4125584765551470702

`A061142(n+1)*A165838(n+1)`
-/

namespace A165855.P4125584765551470702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165838 (n + 1)

end

end A165855.P4125584765551470702

namespace A165855

/-- `A061142(n+1)*A165838(n+1)` -/
def P4125584765551470702.Spec : Prop :=
  ∀ n, P4125584765551470702.a n = A165855 (n + 1)

end A165855

/-! ## A165855.P11656196064438506670

`A166656(A165826(n+1))`
-/

namespace A165855.P11656196064438506670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166656 (A165826 (n + 1)).toNat

end

end A165855.P11656196064438506670

namespace A165855

/-- `A166656(A165826(n+1))` -/
def P11656196064438506670.Spec : Prop :=
  ∀ n, P11656196064438506670.a n = A165855 (n + 1)

end A165855

/-!
# A165856: Totally multiplicative sequence with a(p) = 35.

The programs for A165856, the canonical program `A165856.P5802177516445775874` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165856 has offset 1).

The definition of A165856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165856.P11606865503855905176

`35^A001222(n+1)`
-/

namespace A165856.P11606865503855905176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (35 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165856.P11606865503855905176

namespace A165856

/-- `35^A001222(n+1)` -/
def P11606865503855905176.Spec : Prop :=
  ∀ n, P11606865503855905176.a n = (A165856 (n + 1) : ℚ)

end A165856

/-! ## A165856.P5802177516445775874

`A009979(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165856

/-- `A009979(A001222(n+1))` -/
def P5802177516445775874.Spec : Prop :=
  ∀ n, P5802177516445775874.a n = A165856 (n + 1)

theorem P5802177516445775874.correct : P5802177516445775874.Spec := by
  intro n
  simp only [A165856, Nat.add_sub_cancel]

end A165856

/-! ## A165856.P595485537127571207

`35^∑{e}[n+1, #]`
-/

namespace A165856.P595485537127571207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165856.P595485537127571207

namespace A165856

/-- `35^∑{e}[n+1, #]` -/
def P595485537127571207.Spec : Prop :=
  ∀ n, (P595485537127571207.a n : ℤ) = A165856 (n + 1)

end A165856

/-! ## A165856.P6311423563572367492

`∏{e}[n+1, 35^#]`
-/

namespace A165856.P6311423563572367492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 35 ^ Nat.factorization (f1 n) p

end

end A165856.P6311423563572367492

namespace A165856

/-- `∏{e}[n+1, 35^#]` -/
def P6311423563572367492.Spec : Prop :=
  ∀ n, (P6311423563572367492.a n : ℤ) = A165856 (n + 1)

end A165856

/-! ## A165856.P8762004710088281300

`A009979(∑{e}[n+1, #])`
-/

namespace A165856.P8762004710088281300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009979 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165856.P8762004710088281300

namespace A165856

/-- `A009979(∑{e}[n+1, #])` -/
def P8762004710088281300.Spec : Prop :=
  ∀ n, P8762004710088281300.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P12147263846746217340

`A167326(A061142(n+1))`
-/

namespace A165856.P12147263846746217340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (A061142 (n + 1)).toNat

end

end A165856.P12147263846746217340

namespace A165856

/-- `A167326(A061142(n+1))` -/
def P12147263846746217340.Spec : Prop :=
  ∀ n, P12147263846746217340.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P12625133115101786218

`A165826(n+1)*A165828(n+1)`
-/

namespace A165856.P12625133115101786218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A165828 (n + 1)

end

end A165856.P12625133115101786218

namespace A165856

/-- `A165826(n+1)*A165828(n+1)` -/
def P12625133115101786218.Spec : Prop :=
  ∀ n, P12625133115101786218.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P10075679445742385608

`A000351(A001222(n+1))*A165828(n+1)`
-/

namespace A165856.P10075679445742385608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A001222 (n + 1)).toNat * A165828 (n + 1)

end

end A165856.P10075679445742385608

namespace A165856

/-- `A000351(A001222(n+1))*A165828(n+1)` -/
def P10075679445742385608.Spec : Prop :=
  ∀ n, P10075679445742385608.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P3464164125180575405

`A165826(n+1)*A166653(A061142(n+1))`
-/

namespace A165856.P3464164125180575405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166653 (A061142 (n + 1)).toNat

end

end A165856.P3464164125180575405

namespace A165856

/-- `A165826(n+1)*A166653(A061142(n+1))` -/
def P3464164125180575405.Spec : Prop :=
  ∀ n, P3464164125180575405.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P14830972971019307204

`A167326(A167321(n+1)/A166591(n+1))`
-/

namespace A165856.P14830972971019307204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165856.P14830972971019307204

namespace A165856

/-- `A167326(A167321(n+1)/A166591(n+1))` -/
def P14830972971019307204.Spec : Prop :=
  ∀ n, P14830972971019307204.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P3696377833816751842

`A167326(A167323(n+1)/A167321(n+1))`
-/

namespace A165856.P3696377833816751842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165856.P3696377833816751842

namespace A165856

/-- `A167326(A167323(n+1)/A167321(n+1))` -/
def P3696377833816751842.Spec : Prop :=
  ∀ n, P3696377833816751842.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P14874571337176487558

`A167326(A167325(n+1)/A167322(n+1))`
-/

namespace A165856.P14874571337176487558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165856.P14874571337176487558

namespace A165856

/-- `A167326(A167325(n+1)/A167322(n+1))` -/
def P14874571337176487558.Spec : Prop :=
  ∀ n, P14874571337176487558.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P18396652229967499610

`A167326(A167327(n+1)/A167323(n+1))`
-/

namespace A165856.P18396652229967499610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167327 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ))).toNat

end

end A165856.P18396652229967499610

namespace A165856

/-- `A167326(A167327(n+1)/A167323(n+1))` -/
def P18396652229967499610.Spec : Prop :=
  ∀ n, P18396652229967499610.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P10868742552837136946

`A167326(A167329(n+1)/A167324(n+1))`
-/

namespace A165856.P10868742552837136946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ))).toNat

end

end A165856.P10868742552837136946

namespace A165856

/-- `A167326(A167329(n+1)/A167324(n+1))` -/
def P10868742552837136946.Spec : Prop :=
  ∀ n, P10868742552837136946.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P18286521008036169660

`A165828(n+1)/A166591(n+1)*A167324(n+1)`
-/

namespace A165856.P18286521008036169660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A165856.P18286521008036169660

namespace A165856

/-- `A165828(n+1)/A166591(n+1)*A167324(n+1)` -/
def P18286521008036169660.Spec : Prop :=
  ∀ n, P18286521008036169660.a n = (A165856 (n + 1) : ℚ)

end A165856

/-! ## A165856.P4683390585669514

`A167324(n+1)/A166591(n+1)²*A167326(n+1)`
-/

namespace A165856.P4683390585669514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A166591 (n + 1) ^ 2 : ℚ) * (A167326 (n + 1) : ℚ)

end

end A165856.P4683390585669514

namespace A165856

/-- `A167324(n+1)/A166591(n+1)²*A167326(n+1)` -/
def P4683390585669514.Spec : Prop :=
  ∀ n, P4683390585669514.a n = (A165856 (n + 1) : ℚ)

end A165856

/-! ## A165856.P17003392771462273254

`A167321(A061142(n+1))/A061142(n+1)*A165828(n+1)`
-/

namespace A165856.P17003392771462273254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (A061142 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ) * (A165828 (n + 1) : ℚ)

end

end A165856.P17003392771462273254

namespace A165856

/-- `A167321(A061142(n+1))/A061142(n+1)*A165828(n+1)` -/
def P17003392771462273254.Spec : Prop :=
  ∀ n, P17003392771462273254.a n = (A165856 (n + 1) : ℚ)

end A165856

/-! ## A165856.P14766123964167309625

`A165826(n+1)*A166653(A165831(n+1)/A165826(n+1))`
-/

namespace A165856.P14766123964167309625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166653 (SequenceMachineLib.roundAway ((A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ))).toNat

end

end A165856.P14766123964167309625

namespace A165856

/-- `A165826(n+1)*A166653(A165831(n+1)/A165826(n+1))` -/
def P14766123964167309625.Spec : Prop :=
  ∀ n, P14766123964167309625.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P7336774727973822412

`A167308(A165824(n+1))`
-/

namespace A165856.P7336774727973822412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167308 (A165824 (n + 1)).toNat

end

end A165856.P7336774727973822412

namespace A165856

/-- `A167308(A165824(n+1))` -/
def P7336774727973822412.Spec : Prop :=
  ∀ n, P7336774727973822412.a n = A165856 (n + 1)

end A165856

/-! ## A165856.P682872540586640038

`A167308(A167304(n+1)/A166590(n+1))`
-/

namespace A165856.P682872540586640038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167308 (SequenceMachineLib.roundAway ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A165856.P682872540586640038

namespace A165856

/-- `A167308(A167304(n+1)/A166590(n+1))` -/
def P682872540586640038.Spec : Prop :=
  ∀ n, P682872540586640038.a n = A165856 (n + 1)

end A165856

/-!
# A165857: Totally multiplicative sequence with a(p) = 36.

The programs for A165857, the canonical program `A165857.P17164663293495663433` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165857 has offset 1).

The definition of A165857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165857.P18147470019393959714

`36^A001222(n+1)`
-/

namespace A165857.P18147470019393959714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (36 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165857.P18147470019393959714

namespace A165857

/-- `36^A001222(n+1)` -/
def P18147470019393959714.Spec : Prop :=
  ∀ n, P18147470019393959714.a n = (A165857 (n + 1) : ℚ)

end A165857

/-! ## A165857.P17164663293495663433

`A009980(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165857

/-- `A009980(A001222(n+1))` -/
def P17164663293495663433.Spec : Prop :=
  ∀ n, P17164663293495663433.a n = A165857 (n + 1)

theorem P17164663293495663433.correct : P17164663293495663433.Spec := by
  intro n
  simp only [A165857, Nat.add_sub_cancel]

end A165857

/-! ## A165857.P15362043861246662911

`36^∑{e}[n+1, #]`
-/

namespace A165857.P15362043861246662911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165857.P15362043861246662911

namespace A165857

/-- `36^∑{e}[n+1, #]` -/
def P15362043861246662911.Spec : Prop :=
  ∀ n, (P15362043861246662911.a n : ℤ) = A165857 (n + 1)

end A165857

/-! ## A165857.P1972652168222452937

`∏{e}[n+1, 36^#]`
-/

namespace A165857.P1972652168222452937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 36 ^ Nat.factorization (f1 n) p

end

end A165857.P1972652168222452937

namespace A165857

/-- `∏{e}[n+1, 36^#]` -/
def P1972652168222452937.Spec : Prop :=
  ∀ n, (P1972652168222452937.a n : ℤ) = A165857 (n + 1)

end A165857

/-! ## A165857.P1780790104656794107

`A165827(n+1)²`
-/

namespace A165857.P1780790104656794107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) ^ 2

end

end A165857.P1780790104656794107

namespace A165857

/-- `A165827(n+1)²` -/
def P1780790104656794107.Spec : Prop :=
  ∀ n, P1780790104656794107.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P10174385627941226524

`6^A255201(n+1)`
-/

namespace A165857.P10174385627941226524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165857.P10174385627941226524

namespace A165857

/-- `6^A255201(n+1)` -/
def P10174385627941226524.Spec : Prop :=
  ∀ n, P10174385627941226524.a n = (A165857 (n + 1) : ℚ)

end A165857

/-! ## A165857.P17525241689079488627

`A009980(∑{e}[n+1, #])`
-/

namespace A165857.P17525241689079488627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009980 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165857.P17525241689079488627

namespace A165857

/-- `A009980(∑{e}[n+1, #])` -/
def P17525241689079488627.Spec : Prop :=
  ∀ n, P17525241689079488627.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P401152228868901001

`6^log2(A165825(n+1))`
-/

namespace A165857.P401152228868901001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ (Real.logb 2 (A165825 (n + 1) : ℝ))

end

end A165857.P401152228868901001

namespace A165857

/-- `6^log2(A165825(n+1))` -/
def P401152228868901001.Spec : Prop :=
  ∀ n, P401152228868901001.a n = (A165857 (n + 1) : ℝ)

end A165857

/-! ## A165857.P9170649306738780961

`(A166627(n+1)/(n+1))²`
-/

namespace A165857.P9170649306738780961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166627 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A165857.P9170649306738780961

namespace A165857

/-- `(A166627(n+1)/(n+1))²` -/
def P9170649306738780961.Spec : Prop :=
  ∀ n, P9170649306738780961.a n = (A165857 (n + 1) : ℚ)

end A165857

/-! ## A165857.P18268905990880438594

`(6^A001222(2*n-(n-1)))²`
-/

namespace A165857.P18268905990880438594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165857.P18268905990880438594

namespace A165857

/-- `(6^A001222(2*n-(n-1)))²` -/
def P18268905990880438594.Spec : Prop :=
  ∀ n, P18268905990880438594.a n = (A165857 (n + 1) : ℚ)

end A165857

/-! ## A165857.P13929998709689482934

`A167310(A061142(n+1))`
-/

namespace A165857.P13929998709689482934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167310 (A061142 (n + 1)).toNat

end

end A165857.P13929998709689482934

namespace A165857

/-- `A167310(A061142(n+1))` -/
def P13929998709689482934.Spec : Prop :=
  ∀ n, P13929998709689482934.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P5448888220780889675

`A000400(2*A001222(n+1))`
-/

namespace A165857.P5448888220780889675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (2 * A001222 (n + 1)).toNat

end

end A165857.P5448888220780889675

namespace A165857

/-- `A000400(2*A001222(n+1))` -/
def P5448888220780889675.Spec : Prop :=
  ∀ n, P5448888220780889675.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P10116253403175335715

`A017922(2*A255201(n+1))`
-/

namespace A165857.P10116253403175335715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * A255201 (n + 1)).toNat

end

end A165857.P10116253403175335715

namespace A165857

/-- `A017922(2*A255201(n+1))` -/
def P10116253403175335715.Spec : Prop :=
  ∀ n, P10116253403175335715.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P7785071123006065815

`A167338(sqrt(A165825(n+1)))²`
-/

namespace A165857.P7785071123006065815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167338 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat ^ 2

end

end A165857.P7785071123006065815

namespace A165857

/-- `A167338(sqrt(A165825(n+1)))²` -/
def P7785071123006065815.Spec : Prop :=
  ∀ n, P7785071123006065815.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P11220728189761908991

`A017922(2*A001222(n+1))²`
-/

namespace A165857.P11220728189761908991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165857.P11220728189761908991

namespace A165857

/-- `A017922(2*A001222(n+1))²` -/
def P11220728189761908991.Spec : Prop :=
  ∀ n, P11220728189761908991.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P4127661979821614224

`A017924(2*A001222(n+1))²`
-/

namespace A165857.P4127661979821614224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165857.P4127661979821614224

namespace A165857

/-- `A017924(2*A001222(n+1))²` -/
def P4127661979821614224.Spec : Prop :=
  ∀ n, P4127661979821614224.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P16773992338985800140

`A026549(2*A001222(n+1))²`
-/

namespace A165857.P16773992338985800140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165857.P16773992338985800140

namespace A165857

/-- `A026549(2*A001222(n+1))²` -/
def P16773992338985800140.Spec : Prop :=
  ∀ n, P16773992338985800140.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P8323221081475228581

`A024062(2*A001222(n+1))+1`
-/

namespace A165857.P8323221081475228581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 (2 * A001222 (n + 1)).toNat + 1

end

end A165857.P8323221081475228581

namespace A165857

/-- `A024062(2*A001222(n+1))+1` -/
def P8323221081475228581.Spec : Prop :=
  ∀ n, P8323221081475228581.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P17702879044568600397

`A017922(2*2*A001222(n+1))`
-/

namespace A165857.P17702879044568600397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * (2 * A001222 (n + 1))).toNat

end

end A165857.P17702879044568600397

namespace A165857

/-- `A017922(2*2*A001222(n+1))` -/
def P17702879044568600397.Spec : Prop :=
  ∀ n, P17702879044568600397.a n = A165857 (n + 1)

end A165857

/-! ## A165857.P13371104908961219819

`A017924(2*2*A001222(n+1))`
-/

namespace A165857.P13371104908961219819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 (2 * (2 * A001222 (n + 1))).toNat

end

end A165857.P13371104908961219819

namespace A165857

/-- `A017924(2*2*A001222(n+1))` -/
def P13371104908961219819.Spec : Prop :=
  ∀ n, P13371104908961219819.a n = A165857 (n + 1)

end A165857

/-!
# A165858: Totally multiplicative sequence with a(p) = 37.

The programs for A165858, the canonical program `A165858.P3718234211881732985` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165858 has offset 1).

The definition of A165858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165858.P6287910786974772410

`37^A001222(n+1)`
-/

namespace A165858.P6287910786974772410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (37 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165858.P6287910786974772410

namespace A165858

/-- `37^A001222(n+1)` -/
def P6287910786974772410.Spec : Prop :=
  ∀ n, P6287910786974772410.a n = (A165858 (n + 1) : ℚ)

end A165858

/-! ## A165858.P3718234211881732985

`A009981(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165858

/-- `A009981(A001222(n+1))` -/
def P3718234211881732985.Spec : Prop :=
  ∀ n, P3718234211881732985.a n = A165858 (n + 1)

theorem P3718234211881732985.correct : P3718234211881732985.Spec := by
  intro n
  simp only [A165858, Nat.add_sub_cancel]

end A165858

/-! ## A165858.P4597439853830661785

`37^∑{e}[n+1, #]`
-/

namespace A165858.P4597439853830661785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165858.P4597439853830661785

namespace A165858

/-- `37^∑{e}[n+1, #]` -/
def P4597439853830661785.Spec : Prop :=
  ∀ n, (P4597439853830661785.a n : ℤ) = A165858 (n + 1)

end A165858

/-! ## A165858.P10412148142754320408

`∏{e}[n+1, 37^#]`
-/

namespace A165858.P10412148142754320408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 37 ^ Nat.factorization (f1 n) p

end

end A165858.P10412148142754320408

namespace A165858

/-- `∏{e}[n+1, 37^#]` -/
def P10412148142754320408.Spec : Prop :=
  ∀ n, (P10412148142754320408.a n : ℤ) = A165858 (n + 1)

end A165858

/-! ## A165858.P7782912331117586737

`A009981(∑{e}[n+1, #])`
-/

namespace A165858.P7782912331117586737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009981 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165858.P7782912331117586737

namespace A165858

/-- `A009981(∑{e}[n+1, #])` -/
def P7782912331117586737.Spec : Prop :=
  ∀ n, P7782912331117586737.a n = A165858 (n + 1)

end A165858

/-! ## A165858.P11390087066808348386

`A166675(A165826(n+1))`
-/

namespace A165858.P11390087066808348386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166675 (A165826 (n + 1)).toNat

end

end A165858.P11390087066808348386

namespace A165858

/-- `A166675(A165826(n+1))` -/
def P11390087066808348386.Spec : Prop :=
  ∀ n, P11390087066808348386.a n = A165858 (n + 1)

end A165858

/-!
# A165859: Totally multiplicative sequence with a(p) = 38.

The programs for A165859, the canonical program `A165859.P13366309492400885190` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165859 has offset 1).

The definition of A165859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165859.P17091668096362936040

`38^A001222(n+1)`
-/

namespace A165859.P17091668096362936040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (38 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165859.P17091668096362936040

namespace A165859

/-- `38^A001222(n+1)` -/
def P17091668096362936040.Spec : Prop :=
  ∀ n, P17091668096362936040.a n = (A165859 (n + 1) : ℚ)

end A165859

/-! ## A165859.P13366309492400885190

`A009982(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165859

/-- `A009982(A001222(n+1))` -/
def P13366309492400885190.Spec : Prop :=
  ∀ n, P13366309492400885190.a n = A165859 (n + 1)

theorem P13366309492400885190.correct : P13366309492400885190.Spec := by
  intro n
  simp only [A165859, Nat.add_sub_cancel]

end A165859

/-! ## A165859.P12009072254626659198

`38^∑{e}[n+1, #]`
-/

namespace A165859.P12009072254626659198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165859.P12009072254626659198

namespace A165859

/-- `38^∑{e}[n+1, #]` -/
def P12009072254626659198.Spec : Prop :=
  ∀ n, (P12009072254626659198.a n : ℤ) = A165859 (n + 1)

end A165859

/-! ## A165859.P12368390715500342517

`∏{e}[n+1, 38^#]`
-/

namespace A165859.P12368390715500342517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 38 ^ Nat.factorization (f1 n) p

end

end A165859.P12368390715500342517

namespace A165859

/-- `∏{e}[n+1, 38^#]` -/
def P12368390715500342517.Spec : Prop :=
  ∀ n, (P12368390715500342517.a n : ℤ) = A165859 (n + 1)

end A165859

/-! ## A165859.P12194593307400916850

`A009982(∑{e}[n+1, #])`
-/

namespace A165859.P12194593307400916850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009982 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165859.P12194593307400916850

namespace A165859

/-- `A009982(∑{e}[n+1, #])` -/
def P12194593307400916850.Spec : Prop :=
  ∀ n, P12194593307400916850.a n = A165859 (n + 1)

end A165859

/-! ## A165859.P17173145764590081779

`38^(A001222(3*n-(n-2))-1)`
-/

namespace A165859.P17173145764590081779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (38 : ℚ) ^ (A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1 : ℤ)

end

end A165859.P17173145764590081779

namespace A165859

/-- `38^(A001222(3*n-(n-2))-1)` -/
def P17173145764590081779.Spec : Prop :=
  ∀ n, P17173145764590081779.a n = (A165859 (n + 1) : ℚ)

end A165859

/-! ## A165859.P12787582683704784673

`A061142(n+1)*A165840(n+1)`
-/

namespace A165859.P12787582683704784673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165840 (n + 1)

end

end A165859.P12787582683704784673

namespace A165859

/-- `A061142(n+1)*A165840(n+1)` -/
def P12787582683704784673.Spec : Prop :=
  ∀ n, P12787582683704784673.a n = A165859 (n + 1)

end A165859

/-! ## A165859.P10305014841587563477

`A167332(A165826(n+1))`
-/

namespace A165859.P10305014841587563477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167332 (A165826 (n + 1)).toNat

end

end A165859.P10305014841587563477

namespace A165859

/-- `A167332(A165826(n+1))` -/
def P10305014841587563477.Spec : Prop :=
  ∀ n, P10305014841587563477.a n = A165859 (n + 1)

end A165859

/-! ## A165859.P1622663187366199193

`A167332(A166652(A061142(n+1)))`
-/

namespace A165859.P1622663187366199193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167332 (A166652 (A061142 (n + 1)).toNat).toNat

end

end A165859.P1622663187366199193

namespace A165859

/-- `A167332(A166652(A061142(n+1)))` -/
def P1622663187366199193.Spec : Prop :=
  ∀ n, P1622663187366199193.a n = A165859 (n + 1)

end A165859

/-! ## A165859.P8437470210845256152

`A061142(n+1)*A166653(A165826(n+1))`
-/

namespace A165859.P8437470210845256152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166653 (A165826 (n + 1)).toNat

end

end A165859.P8437470210845256152

namespace A165859

/-- `A061142(n+1)*A166653(A165826(n+1))` -/
def P8437470210845256152.Spec : Prop :=
  ∀ n, P8437470210845256152.a n = A165859 (n + 1)

end A165859

/-!
# A165860: Totally multiplicative sequence with a(p) = 39.

The programs for A165860, the canonical program `A165860.P7953139741850917803` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165860 has offset 1).

The definition of A165860 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165860.P9532254734461289022

`39^A001222(n+1)`
-/

namespace A165860.P9532254734461289022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (39 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165860.P9532254734461289022

namespace A165860

/-- `39^A001222(n+1)` -/
def P9532254734461289022.Spec : Prop :=
  ∀ n, P9532254734461289022.a n = (A165860 (n + 1) : ℚ)

end A165860

/-! ## A165860.P7953139741850917803

`A009983(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165860

/-- `A009983(A001222(n+1))` -/
def P7953139741850917803.Spec : Prop :=
  ∀ n, P7953139741850917803.a n = A165860 (n + 1)

theorem P7953139741850917803.correct : P7953139741850917803.Spec := by
  intro n
  simp only [A165860, Nat.add_sub_cancel]

end A165860

/-! ## A165860.P5274310088406955279

`39^∑{e}[n+1, #]`
-/

namespace A165860.P5274310088406955279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165860.P5274310088406955279

namespace A165860

/-- `39^∑{e}[n+1, #]` -/
def P5274310088406955279.Spec : Prop :=
  ∀ n, (P5274310088406955279.a n : ℤ) = A165860 (n + 1)

end A165860

/-! ## A165860.P15660329846815355257

`∏{e}[n+1, 39^#]`
-/

namespace A165860.P15660329846815355257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 39 ^ Nat.factorization (f1 n) p

end

end A165860.P15660329846815355257

namespace A165860

/-- `∏{e}[n+1, 39^#]` -/
def P15660329846815355257.Spec : Prop :=
  ∀ n, (P15660329846815355257.a n : ℤ) = A165860 (n + 1)

end A165860

/-! ## A165860.P12257525327667067633

`39^Δ[A022559(n)]`
-/

namespace A165860.P12257525327667067633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (39 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165860.P12257525327667067633

namespace A165860

/-- `39^Δ[A022559(n)]` -/
def P12257525327667067633.Spec : Prop :=
  ∀ n, P12257525327667067633.a n = (A165860 (n + 1) : ℚ)

end A165860

/-! ## A165860.P11361886240543689897

`A009983(∑{e}[n+1, #])`
-/

namespace A165860.P11361886240543689897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009983 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165860.P11361886240543689897

namespace A165860

/-- `A009983(∑{e}[n+1, #])` -/
def P11361886240543689897.Spec : Prop :=
  ∀ n, P11361886240543689897.a n = A165860 (n + 1)

end A165860

/-! ## A165860.P1572985637263770343

`39*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A165860.P1572985637263770343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  39 * a (A032742 (n + 1) - 1).toNat

end

end A165860.P1572985637263770343

namespace A165860

/-- `39*a(A032742(n+1)-1)` -/
def P1572985637263770343.Spec : Prop :=
  ∀ n, (P1572985637263770343.a n : ℤ) = A165860 (n + 1)

end A165860

/-! ## A165860.P4995187294048422887

`39*a((n+1)/A020639(n+1)-1)` with `a(0)=1`
-/

namespace A165860.P4995187294048422887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  39 * a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ) - 1)).toNat

end

end A165860.P4995187294048422887

namespace A165860

/-- `39*a((n+1)/A020639(n+1)-1)` -/
def P4995187294048422887.Spec : Prop :=
  ∀ n, (P4995187294048422887.a n : ℤ) = A165860 (n + 1)

end A165860

/-! ## A165860.P15270365056295996408

`A165824(n+1)*A165834(n+1)`
-/

namespace A165860.P15270365056295996408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165834 (n + 1)

end

end A165860.P15270365056295996408

namespace A165860

/-- `A165824(n+1)*A165834(n+1)` -/
def P15270365056295996408.Spec : Prop :=
  ∀ n, P15270365056295996408.a n = A165860 (n + 1)

end A165860

/-! ## A165860.P5021043460835004754

`A166657(A165826(n+1))`
-/

namespace A165860.P5021043460835004754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166657 (A165826 (n + 1)).toNat

end

end A165860.P5021043460835004754

namespace A165860

/-- `A166657(A165826(n+1))` -/
def P5021043460835004754.Spec : Prop :=
  ∀ n, P5021043460835004754.a n = A165860 (n + 1)

end A165860

/-!
# A165861: Totally multiplicative sequence with a(p) = 40.

The programs for A165861, the canonical program `A165861.P1496784283148483735` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165861 has offset 1).

The definition of A165861 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165861.P4284958417324402527

`40^A001222(n+1)`
-/

namespace A165861.P4284958417324402527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (40 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165861.P4284958417324402527

namespace A165861

/-- `40^A001222(n+1)` -/
def P4284958417324402527.Spec : Prop :=
  ∀ n, P4284958417324402527.a n = (A165861 (n + 1) : ℚ)

end A165861

/-! ## A165861.P1496784283148483735

`A009984(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165861

/-- `A009984(A001222(n+1))` -/
def P1496784283148483735.Spec : Prop :=
  ∀ n, P1496784283148483735.a n = A165861 (n + 1)

theorem P1496784283148483735.correct : P1496784283148483735.Spec := by
  intro n
  simp only [A165861, Nat.add_sub_cancel]

end A165861

/-! ## A165861.P3299411844724958876

`40^∑{e}[n+1, #]`
-/

namespace A165861.P3299411844724958876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165861.P3299411844724958876

namespace A165861

/-- `40^∑{e}[n+1, #]` -/
def P3299411844724958876.Spec : Prop :=
  ∀ n, (P3299411844724958876.a n : ℤ) = A165861 (n + 1)

end A165861

/-! ## A165861.P6196410618670105036

`∏{e}[n+1, 40^#]`
-/

namespace A165861.P6196410618670105036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 40 ^ Nat.factorization (f1 n) p

end

end A165861.P6196410618670105036

namespace A165861

/-- `∏{e}[n+1, 40^#]` -/
def P6196410618670105036.Spec : Prop :=
  ∀ n, (P6196410618670105036.a n : ℤ) = A165861 (n + 1)

end A165861

/-! ## A165861.P10011473874711535240

`A009984(∑{e}[n+1, #])`
-/

namespace A165861.P10011473874711535240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009984 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165861.P10011473874711535240

namespace A165861

/-- `A009984(∑{e}[n+1, #])` -/
def P10011473874711535240.Spec : Prop :=
  ∀ n, P10011473874711535240.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P5083547876415603097

`A167311(A061142(n+1))`
-/

namespace A165861.P5083547876415603097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167311 (A061142 (n + 1)).toNat

end

end A165861.P5083547876415603097

namespace A165861

/-- `A167311(A061142(n+1))` -/
def P5083547876415603097.Spec : Prop :=
  ∀ n, P5083547876415603097.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P1375372356673813289

`A061142(n+1)*A165841(n+1)`
-/

namespace A165861.P1375372356673813289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165841 (n + 1)

end

end A165861.P1375372356673813289

namespace A165861

/-- `A061142(n+1)*A165841(n+1)` -/
def P1375372356673813289.Spec : Prop :=
  ∀ n, P1375372356673813289.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P10997820938781989310

`A165825(n+1)*A165831(n+1)`
-/

namespace A165861.P10997820938781989310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165831 (n + 1)

end

end A165861.P10997820938781989310

namespace A165861

/-- `A165825(n+1)*A165831(n+1)` -/
def P10997820938781989310.Spec : Prop :=
  ∀ n, P10997820938781989310.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P9816536119309867312

`A165826(n+1)*A165829(n+1)`
-/

namespace A165861.P9816536119309867312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A165829 (n + 1)

end

end A165861.P9816536119309867312

namespace A165861

/-- `A165826(n+1)*A165829(n+1)` -/
def P9816536119309867312.Spec : Prop :=
  ∀ n, P9816536119309867312.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P13155199774119898048

`A061142(n+1)²*A165831(n+1)`
-/

namespace A165861.P13155199774119898048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165831 (n + 1)

end

end A165861.P13155199774119898048

namespace A165861

/-- `A061142(n+1)²*A165831(n+1)` -/
def P13155199774119898048.Spec : Prop :=
  ∀ n, P13155199774119898048.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P13682808247492416083

`A000351(A001222(n+1))*A165829(n+1)`
-/

namespace A165861.P13682808247492416083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A001222 (n + 1)).toNat * A165829 (n + 1)

end

end A165861.P13682808247492416083

namespace A165861

/-- `A000351(A001222(n+1))*A165829(n+1)` -/
def P13682808247492416083.Spec : Prop :=
  ∀ n, P13682808247492416083.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P13142976420893802652

`A165825(n+1)*A166626(A061142(n+1))`
-/

namespace A165861.P13142976420893802652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166626 (A061142 (n + 1)).toNat

end

end A165861.P13142976420893802652

namespace A165861

/-- `A165825(n+1)*A166626(A061142(n+1))` -/
def P13142976420893802652.Spec : Prop :=
  ∀ n, P13142976420893802652.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P12519493214587690890

`A167311(A167303(n+1)/A166590(n+1))`
-/

namespace A165861.P12519493214587690890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167311 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A165861.P12519493214587690890

namespace A165861

/-- `A167311(A167303(n+1)/A166590(n+1))` -/
def P12519493214587690890.Spec : Prop :=
  ∀ n, P12519493214587690890.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P14322407360769863638

`A167327(A167321(n+1)/A166591(n+1))`
-/

namespace A165861.P14322407360769863638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167327 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165861.P14322407360769863638

namespace A165861

/-- `A167327(A167321(n+1)/A166591(n+1))` -/
def P14322407360769863638.Spec : Prop :=
  ∀ n, P14322407360769863638.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P17684668056890517057

`A167311(A167311(n+1)/A167306(n+1))`
-/

namespace A165861.P17684668056890517057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167311 (SequenceMachineLib.roundAway ((A167311 (n + 1) : ℚ) / (A167306 (n + 1) : ℚ))).toNat

end

end A165861.P17684668056890517057

namespace A165861

/-- `A167311(A167311(n+1)/A167306(n+1))` -/
def P17684668056890517057.Spec : Prop :=
  ∀ n, P17684668056890517057.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P17681350261287930872

`A167327(A167323(n+1)/A167321(n+1))`
-/

namespace A165861.P17681350261287930872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167327 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165861.P17681350261287930872

namespace A165861

/-- `A167327(A167323(n+1)/A167321(n+1))` -/
def P17681350261287930872.Spec : Prop :=
  ∀ n, P17681350261287930872.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P8439032314266098616

`A167327(A167325(n+1)/A167322(n+1))`
-/

namespace A165861.P8439032314266098616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167327 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165861.P8439032314266098616

namespace A165861

/-- `A167327(A167325(n+1)/A167322(n+1))` -/
def P8439032314266098616.Spec : Prop :=
  ∀ n, P8439032314266098616.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P17488263819318907934

`A167327(A167327(n+1)/A167323(n+1))`
-/

namespace A165861.P17488263819318907934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167327 (SequenceMachineLib.roundAway ((A167327 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ))).toNat

end

end A165861.P17488263819318907934

namespace A165861

/-- `A167327(A167327(n+1)/A167323(n+1))` -/
def P17488263819318907934.Spec : Prop :=
  ∀ n, P17488263819318907934.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P18214381640906405125

`A167327(A167329(n+1)/A167324(n+1))`
-/

namespace A165861.P18214381640906405125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167327 (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ))).toNat

end

end A165861.P18214381640906405125

namespace A165861

/-- `A167327(A167329(n+1)/A167324(n+1))` -/
def P18214381640906405125.Spec : Prop :=
  ∀ n, P18214381640906405125.a n = A165861 (n + 1)

end A165861

/-! ## A165861.P11005553432590987576

`A165825(n+1)*A167321(sqrt(A165825(n+1)))`
-/

namespace A165861.P11005553432590987576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A167321 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165861.P11005553432590987576

namespace A165861

/-- `A165825(n+1)*A167321(sqrt(A165825(n+1)))` -/
def P11005553432590987576.Spec : Prop :=
  ∀ n, P11005553432590987576.a n = A165861 (n + 1)

end A165861

/-!
# A165862: Totally multiplicative sequence with a(p) = 41.

The programs for A165862, the canonical program `A165862.P4425763062884177657` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165862 has offset 1).

The definition of A165862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165862.P7565439701237492666

`41^A001222(n+1)`
-/

namespace A165862.P7565439701237492666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165862.P7565439701237492666

namespace A165862

/-- `41^A001222(n+1)` -/
def P7565439701237492666.Spec : Prop :=
  ∀ n, P7565439701237492666.a n = (A165862 (n + 1) : ℚ)

end A165862

/-! ## A165862.P4425763062884177657

`A009985(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165862

/-- `A009985(A001222(n+1))` -/
def P4425763062884177657.Spec : Prop :=
  ∀ n, P4425763062884177657.a n = A165862 (n + 1)

theorem P4425763062884177657.correct : P4425763062884177657.Spec := by
  intro n
  simp only [A165862, Nat.add_sub_cancel]

end A165862

/-! ## A165862.P16905742902635824555

`41^∑{e}[n+1, #]`
-/

namespace A165862.P16905742902635824555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165862.P16905742902635824555

namespace A165862

/-- `41^∑{e}[n+1, #]` -/
def P16905742902635824555.Spec : Prop :=
  ∀ n, (P16905742902635824555.a n : ℤ) = A165862 (n + 1)

end A165862

/-! ## A165862.P4228873768500542765

`∏{e}[n+1, 41^#]`
-/

namespace A165862.P4228873768500542765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 41 ^ Nat.factorization (f1 n) p

end

end A165862.P4228873768500542765

namespace A165862

/-- `∏{e}[n+1, 41^#]` -/
def P4228873768500542765.Spec : Prop :=
  ∀ n, (P4228873768500542765.a n : ℤ) = A165862 (n + 1)

end A165862

/-! ## A165862.P16164516058705175324

`A009985(∑{e}[n+1, #])`
-/

namespace A165862.P16164516058705175324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009985 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165862.P16164516058705175324

namespace A165862

/-- `A009985(∑{e}[n+1, #])` -/
def P16164516058705175324.Spec : Prop :=
  ∀ n, P16164516058705175324.a n = A165862 (n + 1)

end A165862

/-! ## A165862.P11102815240628907207

`41^A008554(A073093(n+1))`
-/

namespace A165862.P11102815240628907207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 : ℚ) ^ (A008554 (A073093 (n + 1)).toNat : ℤ)

end

end A165862.P11102815240628907207

namespace A165862

/-- `41^A008554(A073093(n+1))` -/
def P11102815240628907207.Spec : Prop :=
  ∀ n, P11102815240628907207.a n = (A165862 (n + 1) : ℚ)

end A165862

/-! ## A165862.P16806348647346799201

`41^A000720(A105560(n+1))`
-/

namespace A165862.P16806348647346799201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 : ℚ) ^ (A000720 (A105560 (n + 1)).toNat : ℤ)

end

end A165862.P16806348647346799201

namespace A165862

/-- `41^A000720(A105560(n+1))` -/
def P16806348647346799201.Spec : Prop :=
  ∀ n, P16806348647346799201.a n = (A165862 (n + 1) : ℚ)

end A165862

/-! ## A165862.P12346226307620243470

`41^A056239(A181819(n+1))`
-/

namespace A165862.P12346226307620243470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165862.P12346226307620243470

namespace A165862

/-- `41^A056239(A181819(n+1))` -/
def P12346226307620243470.Spec : Prop :=
  ∀ n, P12346226307620243470.a n = (A165862 (n + 1) : ℚ)

end A165862

/-! ## A165862.P1334753788123169169

`A166666(A165826(n+1))`
-/

namespace A165862.P1334753788123169169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166666 (A165826 (n + 1)).toNat

end

end A165862.P1334753788123169169

namespace A165862

/-- `A166666(A165826(n+1))` -/
def P1334753788123169169.Spec : Prop :=
  ∀ n, P1334753788123169169.a n = A165862 (n + 1)

end A165862

/-!
# A165863: Totally multiplicative sequence with a(p) = 42.

The programs for A165863, the canonical program `A165863.P992363060869858210` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165863 has offset 1).

The definition of A165863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165863.P7694242849994585457

`42^A001222(n+1)`
-/

namespace A165863.P7694242849994585457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (42 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165863.P7694242849994585457

namespace A165863

/-- `42^A001222(n+1)` -/
def P7694242849994585457.Spec : Prop :=
  ∀ n, P7694242849994585457.a n = (A165863 (n + 1) : ℚ)

end A165863

/-! ## A165863.P992363060869858210

`A009986(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165863

/-- `A009986(A001222(n+1))` -/
def P992363060869858210.Spec : Prop :=
  ∀ n, P992363060869858210.a n = A165863 (n + 1)

theorem P992363060869858210.correct : P992363060869858210.Spec := by
  intro n
  simp only [A165863, Nat.add_sub_cancel]

end A165863

/-! ## A165863.P3649058472912635343

`42^∑{e}[n+1, #]`
-/

namespace A165863.P3649058472912635343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165863.P3649058472912635343

namespace A165863

/-- `42^∑{e}[n+1, #]` -/
def P3649058472912635343.Spec : Prop :=
  ∀ n, (P3649058472912635343.a n : ℤ) = A165863 (n + 1)

end A165863

/-! ## A165863.P427967255619245033

`∏{e}[n+1, 42^#]`
-/

namespace A165863.P427967255619245033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 42 ^ Nat.factorization (f1 n) p

end

end A165863.P427967255619245033

namespace A165863

/-- `∏{e}[n+1, 42^#]` -/
def P427967255619245033.Spec : Prop :=
  ∀ n, (P427967255619245033.a n : ℤ) = A165863 (n + 1)

end A165863

/-! ## A165863.P9967256967024794534

`A009986(∑{e}[n+1, #])`
-/

namespace A165863.P9967256967024794534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009986 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165863.P9967256967024794534

namespace A165863

/-- `A009986(∑{e}[n+1, #])` -/
def P9967256967024794534.Spec : Prop :=
  ∀ n, P9967256967024794534.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P6231071665376457899

`A061142(n+1)*A165842(n+1)`
-/

namespace A165863.P6231071665376457899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165842 (n + 1)

end

end A165863.P6231071665376457899

namespace A165863

/-- `A061142(n+1)*A165842(n+1)` -/
def P6231071665376457899.Spec : Prop :=
  ∀ n, P6231071665376457899.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P950193690670773967

`A165824(n+1)*A165835(n+1)`
-/

namespace A165863.P950193690670773967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165835 (n + 1)

end

end A165863.P950193690670773967

namespace A165863

/-- `A165824(n+1)*A165835(n+1)` -/
def P950193690670773967.Spec : Prop :=
  ∀ n, P950193690670773967.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P17926487785585847132

`A165827(n+1)*A165828(n+1)`
-/

namespace A165863.P17926487785585847132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A165828 (n + 1)

end

end A165863.P17926487785585847132

namespace A165863

/-- `A165827(n+1)*A165828(n+1)` -/
def P17926487785585847132.Spec : Prop :=
  ∀ n, P17926487785585847132.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P3734998007366046645

`A165828(n+1)/A166590(n+1)*A167307(n+1)`
-/

namespace A165863.P3734998007366046645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A165863.P3734998007366046645

namespace A165863

/-- `A165828(n+1)/A166590(n+1)*A167307(n+1)` -/
def P3734998007366046645.Spec : Prop :=
  ∀ n, P3734998007366046645.a n = (A165863 (n + 1) : ℚ)

end A165863

/-! ## A165863.P1912051726196856493

`A167325(n+1)*A167326(n+1)/A167363(n+1)`
-/

namespace A165863.P1912051726196856493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) * A167326 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ)

end

end A165863.P1912051726196856493

namespace A165863

/-- `A167325(n+1)*A167326(n+1)/A167363(n+1)` -/
def P1912051726196856493.Spec : Prop :=
  ∀ n, P1912051726196856493.a n = (A165863 (n + 1) : ℚ)

end A165863

/-! ## A165863.P5775909539836086703

`A061142(n+1)*A165828(n+1)*A003959(A061142(n+1))`
-/

namespace A165863.P5775909539836086703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165828 (n + 1) * A003959 (A061142 (n + 1)).toNat

end

end A165863.P5775909539836086703

namespace A165863

/-- `A061142(n+1)*A165828(n+1)*A003959(A061142(n+1))` -/
def P5775909539836086703.Spec : Prop :=
  ∀ n, P5775909539836086703.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P623696593873491854

`A167326(A165824(n+1))`
-/

namespace A165863.P623696593873491854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (A165824 (n + 1)).toNat

end

end A165863.P623696593873491854

namespace A165863

/-- `A167326(A165824(n+1))` -/
def P623696593873491854.Spec : Prop :=
  ∀ n, P623696593873491854.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P13097562482241765321

`A167326(A167307(n+1)/A167303(n+1))`
-/

namespace A165863.P13097562482241765321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167307 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ))).toNat

end

end A165863.P13097562482241765321

namespace A165863

/-- `A167326(A167307(n+1)/A167303(n+1))` -/
def P13097562482241765321.Spec : Prop :=
  ∀ n, P13097562482241765321.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P2992563913699793923

`A167326(A167310(n+1)/A167304(n+1))`
-/

namespace A165863.P2992563913699793923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167310 (n + 1) : ℚ) / (A167304 (n + 1) : ℚ))).toNat

end

end A165863.P2992563913699793923

namespace A165863

/-- `A167326(A167310(n+1)/A167304(n+1))` -/
def P2992563913699793923.Spec : Prop :=
  ∀ n, P2992563913699793923.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P939105908403616557

`A167326(A167325(n+1)/A167321(n+1))`
-/

namespace A165863.P939105908403616557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165863.P939105908403616557

namespace A165863

/-- `A167326(A167325(n+1)/A167321(n+1))` -/
def P939105908403616557.Spec : Prop :=
  ∀ n, P939105908403616557.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P8200082393276978570

`A167326(A167328(n+1)/A167322(n+1))`
-/

namespace A165863.P8200082393276978570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167326 (SequenceMachineLib.roundAway ((A167328 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165863.P8200082393276978570

namespace A165863

/-- `A167326(A167328(n+1)/A167322(n+1))` -/
def P8200082393276978570.Spec : Prop :=
  ∀ n, P8200082393276978570.a n = A165863 (n + 1)

end A165863

/-! ## A165863.P7370146961106486223

`A167322(A165824(n+1))/A165824(n+1)*A165828(n+1)`
-/

namespace A165863.P7370146961106486223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (A165824 (n + 1)).toNat : ℚ) / (A165824 (n + 1) : ℚ) * (A165828 (n + 1) : ℚ)

end

end A165863.P7370146961106486223

namespace A165863

/-- `A167322(A165824(n+1))/A165824(n+1)*A165828(n+1)` -/
def P7370146961106486223.Spec : Prop :=
  ∀ n, P7370146961106486223.a n = (A165863 (n + 1) : ℚ)

end A165863

/-! ## A165863.P3671588473262189945

`A165828(n+1)*A166591(A167322(n+1)/A166591(n+1))`
-/

namespace A165863.P3671588473262189945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A166591 (SequenceMachineLib.roundAway ((A167322 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165863.P3671588473262189945

namespace A165863

/-- `A165828(n+1)*A166591(A167322(n+1)/A166591(n+1))` -/
def P3671588473262189945.Spec : Prop :=
  ∀ n, P3671588473262189945.a n = A165863 (n + 1)

end A165863

/-!
# A165864: Totally multiplicative sequence with a(p) = 43.

The programs for A165864, the canonical program `A165864.P18323365507929884974` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165864 has offset 1).

The definition of A165864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165864.P12228403539844132213

`43^A001222(n+1)`
-/

namespace A165864.P12228403539844132213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (43 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165864.P12228403539844132213

namespace A165864

/-- `43^A001222(n+1)` -/
def P12228403539844132213.Spec : Prop :=
  ∀ n, P12228403539844132213.a n = (A165864 (n + 1) : ℚ)

end A165864

/-! ## A165864.P18323365507929884974

`A009987(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165864

/-- `A009987(A001222(n+1))` -/
def P18323365507929884974.Spec : Prop :=
  ∀ n, P18323365507929884974.a n = A165864 (n + 1)

theorem P18323365507929884974.correct : P18323365507929884974.Spec := by
  intro n
  simp only [A165864, Nat.add_sub_cancel]

end A165864

/-! ## A165864.P16758650944357564477

`43^∑{e}[n+1, #]`
-/

namespace A165864.P16758650944357564477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165864.P16758650944357564477

namespace A165864

/-- `43^∑{e}[n+1, #]` -/
def P16758650944357564477.Spec : Prop :=
  ∀ n, (P16758650944357564477.a n : ℤ) = A165864 (n + 1)

end A165864

/-! ## A165864.P17728184504114266833

`∏{e}[n+1, 43^#]`
-/

namespace A165864.P17728184504114266833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 43 ^ Nat.factorization (f1 n) p

end

end A165864.P17728184504114266833

namespace A165864

/-- `∏{e}[n+1, 43^#]` -/
def P17728184504114266833.Spec : Prop :=
  ∀ n, (P17728184504114266833.a n : ℤ) = A165864 (n + 1)

end A165864

/-! ## A165864.P7214880353489421198

`43^Δ[A022559(n)]`
-/

namespace A165864.P7214880353489421198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (43 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165864.P7214880353489421198

namespace A165864

/-- `43^Δ[A022559(n)]` -/
def P7214880353489421198.Spec : Prop :=
  ∀ n, P7214880353489421198.a n = (A165864 (n + 1) : ℚ)

end A165864

/-! ## A165864.P13923275666534601907

`A009987(∑{e}[n+1, #])`
-/

namespace A165864.P13923275666534601907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009987 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165864.P13923275666534601907

namespace A165864

/-- `A009987(∑{e}[n+1, #])` -/
def P13923275666534601907.Spec : Prop :=
  ∀ n, P13923275666534601907.a n = A165864 (n + 1)

end A165864

/-! ## A165864.P3685180610430899044

`43^log2(A061142(n+1))`
-/

namespace A165864.P3685180610430899044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (43 : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A165864.P3685180610430899044

namespace A165864

/-- `43^log2(A061142(n+1))` -/
def P3685180610430899044.Spec : Prop :=
  ∀ n, P3685180610430899044.a n = (A165864 (n + 1) : ℝ)

end A165864

/-! ## A165864.P8039922504554719521

`43^A056239(A181819(n+1))`
-/

namespace A165864.P8039922504554719521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (43 : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A165864.P8039922504554719521

namespace A165864

/-- `43^A056239(A181819(n+1))` -/
def P8039922504554719521.Spec : Prop :=
  ∀ n, P8039922504554719521.a n = (A165864 (n + 1) : ℚ)

end A165864

/-! ## A165864.P6699172463846056151

`43^(A325226(n+1)+A071178(n+1))`
-/

namespace A165864.P6699172463846056151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (43 : ℚ) ^ (A325226 (n + 1) + A071178 (n + 1) : ℤ)

end

end A165864.P6699172463846056151

namespace A165864

/-- `43^(A325226(n+1)+A071178(n+1))` -/
def P6699172463846056151.Spec : Prop :=
  ∀ n, P6699172463846056151.a n = (A165864 (n + 1) : ℚ)

end A165864

/-! ## A165864.P12547744999147896256

`A166672(A165826(n+1))`
-/

namespace A165864.P12547744999147896256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166672 (A165826 (n + 1)).toNat

end

end A165864.P12547744999147896256

namespace A165864

/-- `A166672(A165826(n+1))` -/
def P12547744999147896256.Spec : Prop :=
  ∀ n, P12547744999147896256.a n = A165864 (n + 1)

end A165864

/-!
# A165865: Totally multiplicative sequence with a(p) = 44.

The programs for A165865, the canonical program `A165865.P17000396365909108431` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165865 has offset 1).

The definition of A165865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165865.P11868917140535574167

`44^A001222(n+1)`
-/

namespace A165865.P11868917140535574167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (44 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165865.P11868917140535574167

namespace A165865

/-- `44^A001222(n+1)` -/
def P11868917140535574167.Spec : Prop :=
  ∀ n, P11868917140535574167.a n = (A165865 (n + 1) : ℚ)

end A165865

/-! ## A165865.P17000396365909108431

`A009988(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165865

/-- `A009988(A001222(n+1))` -/
def P17000396365909108431.Spec : Prop :=
  ∀ n, P17000396365909108431.a n = A165865 (n + 1)

theorem P17000396365909108431.correct : P17000396365909108431.Spec := by
  intro n
  simp only [A165865, Nat.add_sub_cancel]

end A165865

/-! ## A165865.P6466349550438659527

`44^∑{e}[n+1, #]`
-/

namespace A165865.P6466349550438659527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165865.P6466349550438659527

namespace A165865

/-- `44^∑{e}[n+1, #]` -/
def P6466349550438659527.Spec : Prop :=
  ∀ n, (P6466349550438659527.a n : ℤ) = A165865 (n + 1)

end A165865

/-! ## A165865.P5346293978357420604

`∏{e}[n+1, 44^#]`
-/

namespace A165865.P5346293978357420604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 44 ^ Nat.factorization (f1 n) p

end

end A165865.P5346293978357420604

namespace A165865

/-- `∏{e}[n+1, 44^#]` -/
def P5346293978357420604.Spec : Prop :=
  ∀ n, (P5346293978357420604.a n : ℤ) = A165865 (n + 1)

end A165865

/-! ## A165865.P1486133919508516116

`A009988(∑{e}[n+1, #])`
-/

namespace A165865.P1486133919508516116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009988 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165865.P1486133919508516116

namespace A165865

/-- `A009988(∑{e}[n+1, #])` -/
def P1486133919508516116.Spec : Prop :=
  ∀ n, P1486133919508516116.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P13503010558332217792

`A061142(n+1)*A165843(n+1)`
-/

namespace A165865.P13503010558332217792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165843 (n + 1)

end

end A165865.P13503010558332217792

namespace A165865

/-- `A061142(n+1)*A165843(n+1)` -/
def P13503010558332217792.Spec : Prop :=
  ∀ n, P13503010558332217792.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P8211638563700973452

`A165825(n+1)*A165832(n+1)`
-/

namespace A165865.P8211638563700973452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165832 (n + 1)

end

end A165865.P8211638563700973452

namespace A165865

/-- `A165825(n+1)*A165832(n+1)` -/
def P8211638563700973452.Spec : Prop :=
  ∀ n, P8211638563700973452.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P2131484632882941533

`A061142(n+1)²*A165832(n+1)`
-/

namespace A165865.P2131484632882941533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165832 (n + 1)

end

end A165865.P2131484632882941533

namespace A165865

/-- `A061142(n+1)²*A165832(n+1)` -/
def P2131484632882941533.Spec : Prop :=
  ∀ n, P2131484632882941533.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P3662831055749759993

`A165843(n+1)²/A165832(n+1)`
-/

namespace A165865.P3662831055749759993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165843 (n + 1) ^ 2 : ℚ) / (A165832 (n + 1) : ℚ)

end

end A165865.P3662831055749759993

namespace A165865

/-- `A165843(n+1)²/A165832(n+1)` -/
def P3662831055749759993.Spec : Prop :=
  ∀ n, P3662831055749759993.a n = (A165865 (n + 1) : ℚ)

end A165865

/-! ## A165865.P8393668342701318599

`A165825(n+1)*A166663(A061142(n+1))`
-/

namespace A165865.P8393668342701318599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166663 (A061142 (n + 1)).toNat

end

end A165865.P8393668342701318599

namespace A165865

/-- `A165825(n+1)*A166663(A061142(n+1))` -/
def P8393668342701318599.Spec : Prop :=
  ∀ n, P8393668342701318599.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P15119860614527996102

`A165825(n+1)*A166663(sqrt(A165825(n+1)))`
-/

namespace A165865.P15119860614527996102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166663 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165865.P15119860614527996102

namespace A165865

/-- `A165825(n+1)*A166663(sqrt(A165825(n+1)))` -/
def P15119860614527996102.Spec : Prop :=
  ∀ n, P15119860614527996102.a n = A165865 (n + 1)

end A165865

/-! ## A165865.P14852628947949725990

`A165843(n+1)²/gcd(A165843(n+1), A165854(n+1))`
-/

namespace A165865.P14852628947949725990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165843 (n + 1) ^ 2 : ℚ) / (Int.gcd (A165843 (n + 1)) (A165854 (n + 1)) : ℚ)

end

end A165865.P14852628947949725990

namespace A165865

/-- `A165843(n+1)²/gcd(A165843(n+1), A165854(n+1))` -/
def P14852628947949725990.Spec : Prop :=
  ∀ n, P14852628947949725990.a n = (A165865 (n + 1) : ℚ)

end A165865

/-!
# A165866: Totally multiplicative sequence with a(p) = 45.

The programs for A165866, the canonical program `A165866.P14532051783926075687` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165866 has offset 1).

The definition of A165866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165866.P8048191520462220067

`45^A001222(n+1)`
-/

namespace A165866.P8048191520462220067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (45 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165866.P8048191520462220067

namespace A165866

/-- `45^A001222(n+1)` -/
def P8048191520462220067.Spec : Prop :=
  ∀ n, P8048191520462220067.a n = (A165866 (n + 1) : ℚ)

end A165866

/-! ## A165866.P14532051783926075687

`A009989(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165866

/-- `A009989(A001222(n+1))` -/
def P14532051783926075687.Spec : Prop :=
  ∀ n, P14532051783926075687.a n = A165866 (n + 1)

theorem P14532051783926075687.correct : P14532051783926075687.Spec := by
  intro n
  simp only [A165866, Nat.add_sub_cancel]

end A165866

/-! ## A165866.P7830470894376693955

`45^∑{e}[n+1, #]`
-/

namespace A165866.P7830470894376693955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165866.P7830470894376693955

namespace A165866

/-- `45^∑{e}[n+1, #]` -/
def P7830470894376693955.Spec : Prop :=
  ∀ n, (P7830470894376693955.a n : ℤ) = A165866 (n + 1)

end A165866

/-! ## A165866.P3202473242263760685

`∏{e}[n+1, 45^#]`
-/

namespace A165866.P3202473242263760685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 45 ^ Nat.factorization (f1 n) p

end

end A165866.P3202473242263760685

namespace A165866

/-- `∏{e}[n+1, 45^#]` -/
def P3202473242263760685.Spec : Prop :=
  ∀ n, (P3202473242263760685.a n : ℤ) = A165866 (n + 1)

end A165866

/-! ## A165866.P13903074249171842206

`A009989(∑{e}[n+1, #])`
-/

namespace A165866.P13903074249171842206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009989 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165866.P13903074249171842206

namespace A165866

/-- `A009989(∑{e}[n+1, #])` -/
def P13903074249171842206.Spec : Prop :=
  ∀ n, P13903074249171842206.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P7978507764166311529

`A167328(A061142(n+1))`
-/

namespace A165866.P7978507764166311529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (A061142 (n + 1)).toNat

end

end A165866.P7978507764166311529

namespace A165866

/-- `A167328(A061142(n+1))` -/
def P7978507764166311529.Spec : Prop :=
  ∀ n, P7978507764166311529.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P14549809519627144184

`A167328(sqrt(A165825(n+1)))`
-/

namespace A165866.P14549809519627144184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165866.P14549809519627144184

namespace A165866

/-- `A167328(sqrt(A165825(n+1)))` -/
def P14549809519627144184.Spec : Prop :=
  ∀ n, P14549809519627144184.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P1946475255785847796

`A165824(n+1)*A165836(n+1)`
-/

namespace A165866.P1946475255785847796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165836 (n + 1)

end

end A165866.P1946475255785847796

namespace A165866

/-- `A165824(n+1)*A165836(n+1)` -/
def P1946475255785847796.Spec : Prop :=
  ∀ n, P1946475255785847796.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P18054560849976508713

`A165826(n+1)*A165830(n+1)`
-/

namespace A165866.P18054560849976508713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A165830 (n + 1)

end

end A165866.P18054560849976508713

namespace A165866

/-- `A165826(n+1)*A165830(n+1)` -/
def P18054560849976508713.Spec : Prop :=
  ∀ n, P18054560849976508713.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P6512245834662731090

`A165824(n+1)²*A165826(n+1)`
-/

namespace A165866.P6512245834662731090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A165826 (n + 1)

end

end A165866.P6512245834662731090

namespace A165866

/-- `A165824(n+1)²*A165826(n+1)` -/
def P6512245834662731090.Spec : Prop :=
  ∀ n, P6512245834662731090.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P5107855574978894021

`A165824(n+1)*A166645(A061142(n+1))`
-/

namespace A165866.P5107855574978894021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166645 (A061142 (n + 1)).toNat

end

end A165866.P5107855574978894021

namespace A165866

/-- `A165824(n+1)*A166645(A061142(n+1))` -/
def P5107855574978894021.Spec : Prop :=
  ∀ n, P5107855574978894021.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P7281496644898593395

`A165826(n+1)*A166654(A061142(n+1))`
-/

namespace A165866.P7281496644898593395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166654 (A061142 (n + 1)).toNat

end

end A165866.P7281496644898593395

namespace A165866

/-- `A165826(n+1)*A166654(A061142(n+1))` -/
def P7281496644898593395.Spec : Prop :=
  ∀ n, P7281496644898593395.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P90340128020108087

`A167328(A167321(n+1)/A166591(n+1))`
-/

namespace A165866.P90340128020108087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165866.P90340128020108087

namespace A165866

/-- `A167328(A167321(n+1)/A166591(n+1))` -/
def P90340128020108087.Spec : Prop :=
  ∀ n, P90340128020108087.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P10673275234812358925

`A167328(A167323(n+1)/A167321(n+1))`
-/

namespace A165866.P10673275234812358925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165866.P10673275234812358925

namespace A165866

/-- `A167328(A167323(n+1)/A167321(n+1))` -/
def P10673275234812358925.Spec : Prop :=
  ∀ n, P10673275234812358925.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P12906130261186642597

`A167328(A167325(n+1)/A167322(n+1))`
-/

namespace A165866.P12906130261186642597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165866.P12906130261186642597

namespace A165866

/-- `A167328(A167325(n+1)/A167322(n+1))` -/
def P12906130261186642597.Spec : Prop :=
  ∀ n, P12906130261186642597.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P18090629412568817069

`A167328(A167327(n+1)/A167323(n+1))`
-/

namespace A165866.P18090629412568817069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway ((A167327 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ))).toNat

end

end A165866.P18090629412568817069

namespace A165866

/-- `A167328(A167327(n+1)/A167323(n+1))` -/
def P18090629412568817069.Spec : Prop :=
  ∀ n, P18090629412568817069.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P4962365270959262370

`A167328(A167329(n+1)/A167324(n+1))`
-/

namespace A165866.P4962365270959262370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167328 (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ))).toNat

end

end A165866.P4962365270959262370

namespace A165866

/-- `A167328(A167329(n+1)/A167324(n+1))` -/
def P4962365270959262370.Spec : Prop :=
  ∀ n, P4962365270959262370.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P2439053803943354868

`A165824(n+1)²*A000351(A001222(n+1))`
-/

namespace A165866.P2439053803943354868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A000351 (A001222 (n + 1)).toNat

end

end A165866.P2439053803943354868

namespace A165866

/-- `A165824(n+1)²*A000351(A001222(n+1))` -/
def P2439053803943354868.Spec : Prop :=
  ∀ n, P2439053803943354868.a n = A165866 (n + 1)

end A165866

/-! ## A165866.P9137429279394231169

`A165830(n+1)/A166591(n+1)*A167324(n+1)`
-/

namespace A165866.P9137429279394231169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A165866.P9137429279394231169

namespace A165866

/-- `A165830(n+1)/A166591(n+1)*A167324(n+1)` -/
def P9137429279394231169.Spec : Prop :=
  ∀ n, P9137429279394231169.a n = (A165866 (n + 1) : ℚ)

end A165866

/-! ## A165866.P1776358994103091600

`A165824(n+1)²/A003958(n+1)*A166635(n+1)`
-/

namespace A165866.P1776358994103091600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A003958 (n + 1) : ℚ) * (A166635 (n + 1) : ℚ)

end

end A165866.P1776358994103091600

namespace A165866

/-- `A165824(n+1)²/A003958(n+1)*A166635(n+1)` -/
def P1776358994103091600.Spec : Prop :=
  ∀ n, P1776358994103091600.a n = (A165866 (n + 1) : ℚ)

end A165866

/-!
# A165867: Totally multiplicative sequence with a(p) = 46.

The programs for A165867, the canonical program `A165867.P18347111077468795038` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165867 has offset 1).

The definition of A165867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165867.P9081271829578959895

`46^A001222(n+1)`
-/

namespace A165867.P9081271829578959895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (46 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165867.P9081271829578959895

namespace A165867

/-- `46^A001222(n+1)` -/
def P9081271829578959895.Spec : Prop :=
  ∀ n, P9081271829578959895.a n = (A165867 (n + 1) : ℚ)

end A165867

/-! ## A165867.P18347111077468795038

`A009990(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165867

/-- `A009990(A001222(n+1))` -/
def P18347111077468795038.Spec : Prop :=
  ∀ n, P18347111077468795038.a n = A165867 (n + 1)

theorem P18347111077468795038.correct : P18347111077468795038.Spec := by
  intro n
  simp only [A165867, Nat.add_sub_cancel]

end A165867

/-! ## A165867.P16384128333616606501

`46^∑{e}[n+1, #]`
-/

namespace A165867.P16384128333616606501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165867.P16384128333616606501

namespace A165867

/-- `46^∑{e}[n+1, #]` -/
def P16384128333616606501.Spec : Prop :=
  ∀ n, (P16384128333616606501.a n : ℤ) = A165867 (n + 1)

end A165867

/-! ## A165867.P2256553425674245546

`∏{e}[n+1, 46^#]`
-/

namespace A165867.P2256553425674245546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 46 ^ Nat.factorization (f1 n) p

end

end A165867.P2256553425674245546

namespace A165867

/-- `∏{e}[n+1, 46^#]` -/
def P2256553425674245546.Spec : Prop :=
  ∀ n, (P2256553425674245546.a n : ℤ) = A165867 (n + 1)

end A165867

/-! ## A165867.P18267672391561681240

`A009990(∑{e}[n+1, #])`
-/

namespace A165867.P18267672391561681240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009990 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165867.P18267672391561681240

namespace A165867

/-- `A009990(∑{e}[n+1, #])` -/
def P18267672391561681240.Spec : Prop :=
  ∀ n, P18267672391561681240.a n = A165867 (n + 1)

end A165867

/-! ## A165867.P4656975822909435038

`46*a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A165867.P4656975822909435038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  46 * a (A052126 (n + 1) - 1).toNat

end

end A165867.P4656975822909435038

namespace A165867

/-- `46*a(A052126(n+1)-1)` -/
def P4656975822909435038.Spec : Prop :=
  ∀ n, (P4656975822909435038.a n : ℤ) = A165867 (n + 1)

end A165867

/-! ## A165867.P17101133097610520720

`A061142(n+1)*A165844(n+1)`
-/

namespace A165867.P17101133097610520720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165844 (n + 1)

end

end A165867.P17101133097610520720

namespace A165867

/-- `A061142(n+1)*A165844(n+1)` -/
def P17101133097610520720.Spec : Prop :=
  ∀ n, P17101133097610520720.a n = A165867 (n + 1)

end A165867

/-! ## A165867.P2535730328769248015

`A166667(A165826(n+1))`
-/

namespace A165867.P2535730328769248015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166667 (A165826 (n + 1)).toNat

end

end A165867.P2535730328769248015

namespace A165867

/-- `A166667(A165826(n+1))` -/
def P2535730328769248015.Spec : Prop :=
  ∀ n, P2535730328769248015.a n = A165867 (n + 1)

end A165867

/-!
# A165868: Totally multiplicative sequence with a(p) = 47.

The programs for A165868, the canonical program `A165868.P14978725313786192994` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165868 has offset 1).

The definition of A165868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165868.P19580391859348152

`47^A001222(n+1)`
-/

namespace A165868.P19580391859348152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (47 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165868.P19580391859348152

namespace A165868

/-- `47^A001222(n+1)` -/
def P19580391859348152.Spec : Prop :=
  ∀ n, P19580391859348152.a n = (A165868 (n + 1) : ℚ)

end A165868

/-! ## A165868.P14978725313786192994

`A009991(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165868

/-- `A009991(A001222(n+1))` -/
def P14978725313786192994.Spec : Prop :=
  ∀ n, P14978725313786192994.a n = A165868 (n + 1)

theorem P14978725313786192994.correct : P14978725313786192994.Spec := by
  intro n
  simp only [A165868, Nat.add_sub_cancel]

end A165868

/-! ## A165868.P14218819488562097498

`47^∑{e}[n+1, #]`
-/

namespace A165868.P14218819488562097498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165868.P14218819488562097498

namespace A165868

/-- `47^∑{e}[n+1, #]` -/
def P14218819488562097498.Spec : Prop :=
  ∀ n, (P14218819488562097498.a n : ℤ) = A165868 (n + 1)

end A165868

/-! ## A165868.P13482802267897547824

`∏{e}[n+1, 47^#]`
-/

namespace A165868.P13482802267897547824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 47 ^ Nat.factorization (f1 n) p

end

end A165868.P13482802267897547824

namespace A165868

/-- `∏{e}[n+1, 47^#]` -/
def P13482802267897547824.Spec : Prop :=
  ∀ n, (P13482802267897547824.a n : ℤ) = A165868 (n + 1)

end A165868

/-! ## A165868.P7131622171288311568

`A009991(∑{e}[n+1, #])`
-/

namespace A165868.P7131622171288311568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009991 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165868.P7131622171288311568

namespace A165868

/-- `A009991(∑{e}[n+1, #])` -/
def P7131622171288311568.Spec : Prop :=
  ∀ n, P7131622171288311568.a n = A165868 (n + 1)

end A165868

/-! ## A165868.P5354880359120261880

`A166676(A165826(n+1))`
-/

namespace A165868.P5354880359120261880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166676 (A165826 (n + 1)).toNat

end

end A165868.P5354880359120261880

namespace A165868

/-- `A166676(A165826(n+1))` -/
def P5354880359120261880.Spec : Prop :=
  ∀ n, P5354880359120261880.a n = A165868 (n + 1)

end A165868

/-!
# A165869: Totally multiplicative sequence with a(p) = 48.

The programs for A165869, the canonical program `A165869.P11993690607599438549` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165869 has offset 1).

The definition of A165869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165869.P3126368546219952516

`48^A001222(n+1)`
-/

namespace A165869.P3126368546219952516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (48 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165869.P3126368546219952516

namespace A165869

/-- `48^A001222(n+1)` -/
def P3126368546219952516.Spec : Prop :=
  ∀ n, P3126368546219952516.a n = (A165869 (n + 1) : ℚ)

end A165869

/-! ## A165869.P11993690607599438549

`A009992(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165869

/-- `A009992(A001222(n+1))` -/
def P11993690607599438549.Spec : Prop :=
  ∀ n, P11993690607599438549.a n = A165869 (n + 1)

theorem P11993690607599438549.correct : P11993690607599438549.Spec := by
  intro n
  simp only [A165869, Nat.add_sub_cancel]

end A165869

/-! ## A165869.P9185070282761321320

`48^∑{e}[n+1, #]`
-/

namespace A165869.P9185070282761321320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165869.P9185070282761321320

namespace A165869

/-- `48^∑{e}[n+1, #]` -/
def P9185070282761321320.Spec : Prop :=
  ∀ n, (P9185070282761321320.a n : ℤ) = A165869 (n + 1)

end A165869

/-! ## A165869.P10429776093281139529

`∏{e}[n+1, 48^#]`
-/

namespace A165869.P10429776093281139529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 48 ^ Nat.factorization (f1 n) p

end

end A165869.P10429776093281139529

namespace A165869

/-- `∏{e}[n+1, 48^#]` -/
def P10429776093281139529.Spec : Prop :=
  ∀ n, (P10429776093281139529.a n : ℤ) = A165869 (n + 1)

end A165869

/-! ## A165869.P6881856931371734099

`A009992(∑{e}[n+1, #])`
-/

namespace A165869.P6881856931371734099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009992 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165869.P6881856931371734099

namespace A165869

/-- `A009992(∑{e}[n+1, #])` -/
def P6881856931371734099.Spec : Prop :=
  ∀ n, P6881856931371734099.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P4087401657442068197

`A061142(n+1)*A165845(n+1)`
-/

namespace A165869.P4087401657442068197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165845 (n + 1)

end

end A165869.P4087401657442068197

namespace A165869

/-- `A061142(n+1)*A165845(n+1)` -/
def P4087401657442068197.Spec : Prop :=
  ∀ n, P4087401657442068197.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P14937382998314854052

`A165824(n+1)*A165837(n+1)`
-/

namespace A165869.P14937382998314854052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A165837 (n + 1)

end

end A165869.P14937382998314854052

namespace A165869

/-- `A165824(n+1)*A165837(n+1)` -/
def P14937382998314854052.Spec : Prop :=
  ∀ n, P14937382998314854052.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P16876762891499455535

`A165825(n+1)*A165833(n+1)`
-/

namespace A165869.P16876762891499455535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A165833 (n + 1)

end

end A165869.P16876762891499455535

namespace A165869

/-- `A165825(n+1)*A165833(n+1)` -/
def P16876762891499455535.Spec : Prop :=
  ∀ n, P16876762891499455535.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P8699296832089663189

`A165827(n+1)*A165829(n+1)`
-/

namespace A165869.P8699296832089663189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A165829 (n + 1)

end

end A165869.P8699296832089663189

namespace A165869

/-- `A165827(n+1)*A165829(n+1)` -/
def P8699296832089663189.Spec : Prop :=
  ∀ n, P8699296832089663189.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P4880843813000633360

`A061142(n+1)²*A165833(n+1)`
-/

namespace A165869.P4880843813000633360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A165833 (n + 1)

end

end A165869.P4880843813000633360

namespace A165869

/-- `A061142(n+1)²*A165833(n+1)` -/
def P4880843813000633360.Spec : Prop :=
  ∀ n, P4880843813000633360.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P7932992672932012807

`A165825(n+1)²*A165824(n+1)`
-/

namespace A165869.P7932992672932012807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) ^ 2 * A165824 (n + 1)

end

end A165869.P7932992672932012807

namespace A165869

/-- `A165825(n+1)²*A165824(n+1)` -/
def P7932992672932012807.Spec : Prop :=
  ∀ n, P7932992672932012807.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P8475994791931675961

`A165833(n+1)²/A165824(n+1)`
-/

namespace A165869.P8475994791931675961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165833 (n + 1) ^ 2 : ℚ) / (A165824 (n + 1) : ℚ)

end

end A165869.P8475994791931675961

namespace A165869

/-- `A165833(n+1)²/A165824(n+1)` -/
def P8475994791931675961.Spec : Prop :=
  ∀ n, P8475994791931675961.a n = (A165869 (n + 1) : ℚ)

end A165869

/-! ## A165869.P17257141765199616907

`A061142(n+1)²²*A165824(n+1)`
-/

namespace A165869.P17257141765199616907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2) ^ 2 * A165824 (n + 1)

end

end A165869.P17257141765199616907

namespace A165869

/-- `A061142(n+1)²²*A165824(n+1)` -/
def P17257141765199616907.Spec : Prop :=
  ∀ n, P17257141765199616907.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P427236854856669824

`A000302(A001222(n+1))*A165833(n+1)`
-/

namespace A165869.P427236854856669824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A001222 (n + 1)).toNat * A165833 (n + 1)

end

end A165869.P427236854856669824

namespace A165869

/-- `A000302(A001222(n+1))*A165833(n+1)` -/
def P427236854856669824.Spec : Prop :=
  ∀ n, P427236854856669824.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P16865115749849257727

`A000400(A001222(n+1))*A165829(n+1)`
-/

namespace A165869.P16865115749849257727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A001222 (n + 1)).toNat * A165829 (n + 1)

end

end A165869.P16865115749849257727

namespace A165869

/-- `A000400(A001222(n+1))*A165829(n+1)` -/
def P16865115749849257727.Spec : Prop :=
  ∀ n, P16865115749849257727.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P2994830974933613418

`A165825(n+1)*A166644(A061142(n+1))`
-/

namespace A165869.P2994830974933613418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166644 (A061142 (n + 1)).toNat

end

end A165869.P2994830974933613418

namespace A165869

/-- `A165825(n+1)*A166644(A061142(n+1))` -/
def P2994830974933613418.Spec : Prop :=
  ∀ n, P2994830974933613418.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P1162063012671683919

`A165824(n+1)*A167305(A061142(n+1))`
-/

namespace A165869.P1162063012671683919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167305 (A061142 (n + 1)).toNat

end

end A165869.P1162063012671683919

namespace A165869

/-- `A165824(n+1)*A167305(A061142(n+1))` -/
def P1162063012671683919.Spec : Prop :=
  ∀ n, P1162063012671683919.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P17666089331893922496

`A165825(n+1)*A166644(sqrt(A165825(n+1)))`
-/

namespace A165869.P17666089331893922496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166644 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165869.P17666089331893922496

namespace A165869

/-- `A165825(n+1)*A166644(sqrt(A165825(n+1)))` -/
def P17666089331893922496.Spec : Prop :=
  ∀ n, P17666089331893922496.a n = A165869 (n + 1)

end A165869

/-! ## A165869.P16795705752070427787

`A165829(n+1)/A166590(n+1)*A167307(n+1)`
-/

namespace A165869.P16795705752070427787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A165869.P16795705752070427787

namespace A165869

/-- `A165829(n+1)/A166590(n+1)*A167307(n+1)` -/
def P16795705752070427787.Spec : Prop :=
  ∀ n, P16795705752070427787.a n = (A165869 (n + 1) : ℚ)

end A165869

/-! ## A165869.P8836114586898148748

`A165827(n+1)/A166591(n+1)*A167327(n+1)`
-/

namespace A165869.P8836114586898148748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A165869.P8836114586898148748

namespace A165869

/-- `A165827(n+1)/A166591(n+1)*A167327(n+1)` -/
def P8836114586898148748.Spec : Prop :=
  ∀ n, P8836114586898148748.a n = (A165869 (n + 1) : ℚ)

end A165869

/-!
# A165870: Totally multiplicative sequence with a(p) = 49.

The programs for A165870, the canonical program `A165870.P12113986638084041405` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165870 has offset 1).

The definition of A165870 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165870.P6044136480120058746

`49^A001222(n+1)`
-/

namespace A165870.P6044136480120058746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165870.P6044136480120058746

namespace A165870

/-- `49^A001222(n+1)` -/
def P6044136480120058746.Spec : Prop :=
  ∀ n, P6044136480120058746.a n = (A165870 (n + 1) : ℚ)

end A165870

/-! ## A165870.P12113986638084041405

`A087752(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165870

/-- `A087752(A001222(n+1))` -/
def P12113986638084041405.Spec : Prop :=
  ∀ n, P12113986638084041405.a n = A165870 (n + 1)

theorem P12113986638084041405.correct : P12113986638084041405.Spec := by
  intro n
  simp only [A165870, Nat.add_sub_cancel]

end A165870

/-! ## A165870.P10511603017089740606

`49^∑{e}[n+1, #]`
-/

namespace A165870.P10511603017089740606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165870.P10511603017089740606

namespace A165870

/-- `49^∑{e}[n+1, #]` -/
def P10511603017089740606.Spec : Prop :=
  ∀ n, (P10511603017089740606.a n : ℤ) = A165870 (n + 1)

end A165870

/-! ## A165870.P6534275249503287155

`∏{e}[n+1, 49^#]`
-/

namespace A165870.P6534275249503287155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 49 ^ Nat.factorization (f1 n) p

end

end A165870.P6534275249503287155

namespace A165870

/-- `∏{e}[n+1, 49^#]` -/
def P6534275249503287155.Spec : Prop :=
  ∀ n, (P6534275249503287155.a n : ℤ) = A165870 (n + 1)

end A165870

/-! ## A165870.P9877100733115525622

`A165828(n+1)²`
-/

namespace A165870.P9877100733115525622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) ^ 2

end

end A165870.P9877100733115525622

namespace A165870

/-- `A165828(n+1)²` -/
def P9877100733115525622.Spec : Prop :=
  ∀ n, P9877100733115525622.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P14367889654365449631

`49^Δ[A022559(n)]`
-/

namespace A165870.P14367889654365449631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165870.P14367889654365449631

namespace A165870

/-- `49^Δ[A022559(n)]` -/
def P14367889654365449631.Spec : Prop :=
  ∀ n, P14367889654365449631.a n = (A165870 (n + 1) : ℚ)

end A165870

/-! ## A165870.P14871921318003551273

`7^A255201(n+1)`
-/

namespace A165870.P14871921318003551273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A165870.P14871921318003551273

namespace A165870

/-- `7^A255201(n+1)` -/
def P14871921318003551273.Spec : Prop :=
  ∀ n, P14871921318003551273.a n = (A165870 (n + 1) : ℚ)

end A165870

/-! ## A165870.P9780995572798636641

`A087752(∑{e}[n+1, #])`
-/

namespace A165870.P9780995572798636641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087752 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165870.P9780995572798636641

namespace A165870

/-- `A087752(∑{e}[n+1, #])` -/
def P9780995572798636641.Spec : Prop :=
  ∀ n, P9780995572798636641.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P6092650527779492963

`7^log2(A165825(n+1))`
-/

namespace A165870.P6092650527779492963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 : ℝ) ^ (Real.logb 2 (A165825 (n + 1) : ℝ))

end

end A165870.P6092650527779492963

namespace A165870

/-- `7^log2(A165825(n+1))` -/
def P6092650527779492963.Spec : Prop :=
  ∀ n, P6092650527779492963.a n = (A165870 (n + 1) : ℝ)

end A165870

/-! ## A165870.P1782374415835496208

`(A166628(n+1)/(n+1))²`
-/

namespace A165870.P1782374415835496208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166628 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A165870.P1782374415835496208

namespace A165870

/-- `(A166628(n+1)/(n+1))²` -/
def P1782374415835496208.Spec : Prop :=
  ∀ n, P1782374415835496208.a n = (A165870 (n + 1) : ℚ)

end A165870

/-! ## A165870.P4577361697491144543

`(7^A001222(2*n-(n-1)))²`
-/

namespace A165870.P4577361697491144543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 : ℚ) ^ (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

end

end A165870.P4577361697491144543

namespace A165870

/-- `(7^A001222(2*n-(n-1)))²` -/
def P4577361697491144543.Spec : Prop :=
  ∀ n, P4577361697491144543.a n = (A165870 (n + 1) : ℚ)

end A165870

/-! ## A165870.P2085639840544690756

`A000420(2*A001222(n+1))`
-/

namespace A165870.P2085639840544690756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (2 * A001222 (n + 1)).toNat

end

end A165870.P2085639840544690756

namespace A165870

/-- `A000420(2*A001222(n+1))` -/
def P2085639840544690756.Spec : Prop :=
  ∀ n, P2085639840544690756.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P13420935312595498825

`A017925(2*A255201(n+1))`
-/

namespace A165870.P13420935312595498825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * A255201 (n + 1)).toNat

end

end A165870.P13420935312595498825

namespace A165870

/-- `A017925(2*A255201(n+1))` -/
def P13420935312595498825.Spec : Prop :=
  ∀ n, P13420935312595498825.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P455800724821782096

`A166661(sqrt(A165825(n+1)))²`
-/

namespace A165870.P455800724821782096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat ^ 2

end

end A165870.P455800724821782096

namespace A165870

/-- `A166661(sqrt(A165825(n+1)))²` -/
def P455800724821782096.Spec : Prop :=
  ∀ n, P455800724821782096.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P16484398132791354115

`A017925(2*A001222(n+1))²`
-/

namespace A165870.P16484398132791354115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165870.P16484398132791354115

namespace A165870

/-- `A017925(2*A001222(n+1))²` -/
def P16484398132791354115.Spec : Prop :=
  ∀ n, P16484398132791354115.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P38707574810670637

`A017927(2*A001222(n+1))²`
-/

namespace A165870.P38707574810670637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165870.P38707574810670637

namespace A165870

/-- `A017927(2*A001222(n+1))²` -/
def P38707574810670637.Spec : Prop :=
  ∀ n, P38707574810670637.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P6122313761354718476

`A123752(2*A001222(n+1))²`
-/

namespace A165870.P6122313761354718476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * A001222 (n + 1)).toNat ^ 2

end

end A165870.P6122313761354718476

namespace A165870

/-- `A123752(2*A001222(n+1))²` -/
def P6122313761354718476.Spec : Prop :=
  ∀ n, P6122313761354718476.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P5732293157804500884

`A017925(2*2*A001222(n+1))`
-/

namespace A165870.P5732293157804500884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * (2 * A001222 (n + 1))).toNat

end

end A165870.P5732293157804500884

namespace A165870

/-- `A017925(2*2*A001222(n+1))` -/
def P5732293157804500884.Spec : Prop :=
  ∀ n, P5732293157804500884.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P16803126704339740229

`A017927(2*2*A001222(n+1))`
-/

namespace A165870.P16803126704339740229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 (2 * (2 * A001222 (n + 1))).toNat

end

end A165870.P16803126704339740229

namespace A165870

/-- `A017927(2*2*A001222(n+1))` -/
def P16803126704339740229.Spec : Prop :=
  ∀ n, P16803126704339740229.a n = A165870 (n + 1)

end A165870

/-! ## A165870.P14949067066354244915

`A123752(2*2*A001222(n+1))`
-/

namespace A165870.P14949067066354244915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * (2 * A001222 (n + 1))).toNat

end

end A165870.P14949067066354244915

namespace A165870

/-- `A123752(2*2*A001222(n+1))` -/
def P14949067066354244915.Spec : Prop :=
  ∀ n, P14949067066354244915.a n = A165870 (n + 1)

end A165870

/-!
# A165871: Totally multiplicative sequence with a(p) = 50.

The programs for A165871, the canonical program `A165871.P13269622015636055377` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165871 has offset 1).

The definition of A165871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165871.P8517557118370130937

`50^A001222(n+1)`
-/

namespace A165871.P8517557118370130937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (50 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165871.P8517557118370130937

namespace A165871

/-- `50^A001222(n+1)` -/
def P8517557118370130937.Spec : Prop :=
  ∀ n, P8517557118370130937.a n = (A165871 (n + 1) : ℚ)

end A165871

/-! ## A165871.P13269622015636055377

`A165800(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165871

/-- `A165800(A001222(n+1))` -/
def P13269622015636055377.Spec : Prop :=
  ∀ n, P13269622015636055377.a n = A165871 (n + 1)

theorem P13269622015636055377.correct : P13269622015636055377.Spec := by
  intro n
  simp only [A165871, Nat.add_sub_cancel]

end A165871

/-! ## A165871.P2200518547866356850

`50^∑{e}[n+1, #]`
-/

namespace A165871.P2200518547866356850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165871.P2200518547866356850

namespace A165871

/-- `50^∑{e}[n+1, #]` -/
def P2200518547866356850.Spec : Prop :=
  ∀ n, (P2200518547866356850.a n : ℤ) = A165871 (n + 1)

end A165871

/-! ## A165871.P15697428037074041065

`∏{e}[n+1, 50^#]`
-/

namespace A165871.P15697428037074041065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 50 ^ Nat.factorization (f1 n) p

end

end A165871.P15697428037074041065

namespace A165871

/-- `∏{e}[n+1, 50^#]` -/
def P15697428037074041065.Spec : Prop :=
  ∀ n, (P15697428037074041065.a n : ℤ) = A165871 (n + 1)

end A165871

/-! ## A165871.P17658259860608242905

`A165800(∑{e}[n+1, #])`
-/

namespace A165871.P17658259860608242905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165800 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165871.P17658259860608242905

namespace A165871

/-- `A165800(∑{e}[n+1, #])` -/
def P17658259860608242905.Spec : Prop :=
  ∀ n, P17658259860608242905.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P12544008360579599182

`A167329(A061142(n+1))`
-/

namespace A165871.P12544008360579599182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (A061142 (n + 1)).toNat

end

end A165871.P12544008360579599182

namespace A165871

/-- `A167329(A061142(n+1))` -/
def P12544008360579599182.Spec : Prop :=
  ∀ n, P12544008360579599182.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P1826279250389479267

`A167329(sqrt(A165825(n+1)))`
-/

namespace A165871.P1826279250389479267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165871.P1826279250389479267

namespace A165871

/-- `A167329(sqrt(A165825(n+1)))` -/
def P1826279250389479267.Spec : Prop :=
  ∀ n, P1826279250389479267.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P8275718488496517511

`A096882(2*A001222(n+1))`
-/

namespace A165871.P8275718488496517511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096882 (2 * A001222 (n + 1)).toNat

end

end A165871.P8275718488496517511

namespace A165871

/-- `A096882(2*A001222(n+1))` -/
def P8275718488496517511.Spec : Prop :=
  ∀ n, P8275718488496517511.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P10718237265359017469

`A061142(n+1)*A165846(n+1)`
-/

namespace A165871.P10718237265359017469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165846 (n + 1)

end

end A165871.P10718237265359017469

namespace A165871

/-- `A061142(n+1)*A165846(n+1)` -/
def P10718237265359017469.Spec : Prop :=
  ∀ n, P10718237265359017469.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P16964967593821155382

`A165826(n+1)*A165831(n+1)`
-/

namespace A165871.P16964967593821155382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A165831 (n + 1)

end

end A165871.P16964967593821155382

namespace A165871

/-- `A165826(n+1)*A165831(n+1)` -/
def P16964967593821155382.Spec : Prop :=
  ∀ n, P16964967593821155382.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P6694836649517861692

`A165826(n+1)²*A061142(n+1)`
-/

namespace A165871.P6694836649517861692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) ^ 2 * A061142 (n + 1)

end

end A165871.P6694836649517861692

namespace A165871

/-- `A165826(n+1)²*A061142(n+1)` -/
def P6694836649517861692.Spec : Prop :=
  ∀ n, P6694836649517861692.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P15018277038535287464

`A165831(n+1)²/A061142(n+1)`
-/

namespace A165871.P15018277038535287464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) ^ 2 : ℚ) / (A061142 (n + 1) : ℚ)

end

end A165871.P15018277038535287464

namespace A165871

/-- `A165831(n+1)²/A061142(n+1)` -/
def P15018277038535287464.Spec : Prop :=
  ∀ n, P15018277038535287464.a n = (A165871 (n + 1) : ℚ)

end A165871

/-! ## A165871.P5798588547796530040

`A167329(A167321(n+1)/A166591(n+1))`
-/

namespace A165871.P5798588547796530040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A165871.P5798588547796530040

namespace A165871

/-- `A167329(A167321(n+1)/A166591(n+1))` -/
def P5798588547796530040.Spec : Prop :=
  ∀ n, P5798588547796530040.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P14207446213688242711

`A167329(A167323(n+1)/A167321(n+1))`
-/

namespace A165871.P14207446213688242711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A165871.P14207446213688242711

namespace A165871

/-- `A167329(A167323(n+1)/A167321(n+1))` -/
def P14207446213688242711.Spec : Prop :=
  ∀ n, P14207446213688242711.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P3177987565729836138

`A167329(A167325(n+1)/A167322(n+1))`
-/

namespace A165871.P3177987565729836138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ))).toNat

end

end A165871.P3177987565729836138

namespace A165871

/-- `A167329(A167325(n+1)/A167322(n+1))` -/
def P3177987565729836138.Spec : Prop :=
  ∀ n, P3177987565729836138.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P14004396819847944986

`A167329(A167327(n+1)/A167323(n+1))`
-/

namespace A165871.P14004396819847944986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway ((A167327 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ))).toNat

end

end A165871.P14004396819847944986

namespace A165871

/-- `A167329(A167327(n+1)/A167323(n+1))` -/
def P14004396819847944986.Spec : Prop :=
  ∀ n, P14004396819847944986.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P17251779131617379596

`A167329(A167329(n+1)/A167324(n+1))`
-/

namespace A165871.P17251779131617379596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ))).toNat

end

end A165871.P17251779131617379596

namespace A165871

/-- `A167329(A167329(n+1)/A167324(n+1))` -/
def P17251779131617379596.Spec : Prop :=
  ∀ n, P17251779131617379596.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P4401080586624718853

`A167329(gcd(A165872(n+1), A167329(n+1)))`
-/

namespace A165871.P4401080586624718853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167329 (Int.gcd (A165872 (n + 1)) (A167329 (n + 1)))

end

end A165871.P4401080586624718853

namespace A165871

/-- `A167329(gcd(A165872(n+1), A167329(n+1)))` -/
def P4401080586624718853.Spec : Prop :=
  ∀ n, P4401080586624718853.a n = A165871 (n + 1)

end A165871

/-! ## A165871.P7223223891475401377

`A165831(n+1)/A166591(n+1)*A167324(n+1)`
-/

namespace A165871.P7223223891475401377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A165871.P7223223891475401377

namespace A165871

/-- `A165831(n+1)/A166591(n+1)*A167324(n+1)` -/
def P7223223891475401377.Spec : Prop :=
  ∀ n, P7223223891475401377.a n = (A165871 (n + 1) : ℚ)

end A165871

/-! ## A165871.P537773315894788058

`A165831(n+1)/A167303(n+1)*A167311(n+1)`
-/

namespace A165871.P537773315894788058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A165871.P537773315894788058

namespace A165871

/-- `A165831(n+1)/A167303(n+1)*A167311(n+1)` -/
def P537773315894788058.Spec : Prop :=
  ∀ n, P537773315894788058.a n = (A165871 (n + 1) : ℚ)

end A165871

/-!
# A165872: Totally multiplicative sequence with a(p^e) = (-2)^e.

The programs for A165872, the canonical program `A165872.P161038239831318740` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165872 has offset 1).

The definition of A165872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165872.P3864226365880529417

`(-2)^A001222(n+1)`
-/

namespace A165872.P3864226365880529417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A165872.P3864226365880529417

namespace A165872

/-- `(-2)^A001222(n+1)` -/
def P3864226365880529417.Spec : Prop :=
  ∀ n, P3864226365880529417.a n = (A165872 (n + 1) : ℚ)

end A165872

/-! ## A165872.P161038239831318740

`A122803(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165872

/-- `A122803(A001222(n+1))` -/
def P161038239831318740.Spec : Prop :=
  ∀ n, P161038239831318740.a n = A165872 (n + 1)

theorem P161038239831318740.correct : P161038239831318740.Spec := by
  intro n
  simp only [A165872, Nat.add_sub_cancel]

end A165872

/-! ## A165872.P7444279087604159515

`(-2)^∑{e}[n+1, #]`
-/

namespace A165872.P7444279087604159515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165872.P7444279087604159515

namespace A165872

/-- `(-2)^∑{e}[n+1, #]` -/
def P7444279087604159515.Spec : Prop :=
  ∀ n, P7444279087604159515.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P11670719687077002647

`∏{e}[n+1, (-2)^#]`
-/

namespace A165872.P11670719687077002647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-2) ^ Nat.factorization (f1 n) p

end

end A165872.P11670719687077002647

namespace A165872

/-- `∏{e}[n+1, (-2)^#]` -/
def P11670719687077002647.Spec : Prop :=
  ∀ n, P11670719687077002647.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P3591303822474290925

`(-2)^∑{p}[n+1, val(n+1, #)]`
-/

namespace A165872.P3591303822474290925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A165872.P3591303822474290925

namespace A165872

/-- `(-2)^∑{p}[n+1, val(n+1, #)]` -/
def P3591303822474290925.Spec : Prop :=
  ∀ n, P3591303822474290925.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P10349955187376987354

`∏{p}[n+1, (-2)^val(n+1, #)]`
-/

namespace A165872.P10349955187376987354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-2) ^ SequenceMachineLib.valuation (n + 1) p

end

end A165872.P10349955187376987354

namespace A165872

/-- `∏{p}[n+1, (-2)^val(n+1, #)]` -/
def P10349955187376987354.Spec : Prop :=
  ∀ n, P10349955187376987354.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P17846382461436145738

`(-2)^Δ[A022559(n)]`
-/

namespace A165872.P17846382461436145738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A165872.P17846382461436145738

namespace A165872

/-- `(-2)^Δ[A022559(n)]` -/
def P17846382461436145738.Spec : Prop :=
  ∀ n, P17846382461436145738.a n = (A165872 (n + 1) : ℚ)

end A165872

/-! ## A165872.P14377642989517271636

`A122803(∑{e}[n+1, #])`
-/

namespace A165872.P14377642989517271636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A165872.P14377642989517271636

namespace A165872

/-- `A122803(∑{e}[n+1, #])` -/
def P14377642989517271636.Spec : Prop :=
  ∀ n, P14377642989517271636.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P18313892316227503001

`(-2)^val(A165825(n+1), 4)`
-/

namespace A165872.P18313892316227503001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A165872.P18313892316227503001

namespace A165872

/-- `(-2)^val(A165825(n+1), 4)` -/
def P18313892316227503001.Spec : Prop :=
  ∀ n, P18313892316227503001.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P15190044124541714315

`A030207(A061142(n+1))`
-/

namespace A165872.P15190044124541714315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030207 (A061142 (n + 1)).toNat

end

end A165872.P15190044124541714315

namespace A165872

/-- `A030207(A061142(n+1))` -/
def P15190044124541714315.Spec : Prop :=
  ∀ n, P15190044124541714315.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P1922711834982850209

`A123344(A073093(n+1))`
-/

namespace A165872.P1922711834982850209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A073093 (n + 1)).toNat

end

end A165872.P1922711834982850209

namespace A165872

/-- `A123344(A073093(n+1))` -/
def P1922711834982850209.Spec : Prop :=
  ∀ n, P1922711834982850209.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P11941260237962067405

`A077966(A255201(n+1))`
-/

namespace A165872.P11941260237962067405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A255201 (n + 1)).toNat

end

end A165872.P11941260237962067405

namespace A165872

/-- `A077966(A255201(n+1))` -/
def P11941260237962067405.Spec : Prop :=
  ∀ n, P11941260237962067405.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P11189005893262510726

`A167312(sqrt(A165825(n+1)))`
-/

namespace A165872.P11189005893262510726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167312 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A165872.P11189005893262510726

namespace A165872

/-- `A167312(sqrt(A165825(n+1)))` -/
def P11189005893262510726.Spec : Prop :=
  ∀ n, P11189005893262510726.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P11006324557857541781

`A141531(A001222(n+1)+2)`
-/

namespace A165872.P11006324557857541781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (A001222 (n + 1) + 2).toNat

end

end A165872.P11006324557857541781

namespace A165872

/-- `A141531(A001222(n+1)+2)` -/
def P11006324557857541781.Spec : Prop :=
  ∀ n, P11006324557857541781.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P14168606116852706976

`A077966(2*A001222(n+1))`
-/

namespace A165872.P14168606116852706976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * A001222 (n + 1)).toNat

end

end A165872.P14168606116852706976

namespace A165872

/-- `A077966(2*A001222(n+1))` -/
def P14168606116852706976.Spec : Prop :=
  ∀ n, P14168606116852706976.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P4393335514263153557

`A117575(2*A001222(n+1)+1)`
-/

namespace A165872.P4393335514263153557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * A001222 (n + 1) + 1).toNat

end

end A165872.P4393335514263153557

namespace A165872

/-- `A117575(2*A001222(n+1)+1)` -/
def P4393335514263153557.Spec : Prop :=
  ∀ n, P4393335514263153557.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P1305459072832242829

`A008836(n+1)*A061142(n+1)`
-/

namespace A165872.P1305459072832242829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A061142 (n + 1)

end

end A165872.P1305459072832242829

namespace A165872

/-- `A008836(n+1)*A061142(n+1)` -/
def P1305459072832242829.Spec : Prop :=
  ∀ n, P1305459072832242829.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P9271985986918926395

`A034444(n+1)*A162512(n+1)`
-/

namespace A165872.P9271985986918926395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A162512 (n + 1)

end

end A165872.P9271985986918926395

namespace A165872

/-- `A034444(n+1)*A162512(n+1)` -/
def P9271985986918926395.Spec : Prop :=
  ∀ n, P9271985986918926395.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P17857635257030730498

`A158522(n+1)*A162510(n+1)`
-/

namespace A165872.P17857635257030730498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (n + 1) * A162510 (n + 1)

end

end A165872.P17857635257030730498

namespace A165872

/-- `A158522(n+1)*A162510(n+1)` -/
def P17857635257030730498.Spec : Prop :=
  ∀ n, P17857635257030730498.a n = A165872 (n + 1)

end A165872

/-! ## A165872.P2949154026161592747

`A123667(n+1)/A061019(n+1)`
-/

namespace A165872.P2949154026161592747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A165872.P2949154026161592747

namespace A165872

/-- `A123667(n+1)/A061019(n+1)` -/
def P2949154026161592747.Spec : Prop :=
  ∀ n, P2949154026161592747.a n = (A165872 (n + 1) : ℚ)

end A165872

/-!
# A165877: Number of disconnected 7-regular (septic) graphs on 2n vertices.

The programs for A165877, there is no canonical definition to state claims against.
-/

/-! ## A165877.P12922863446634963179

`A071281(A308908(n)^A343342(n))`
-/

namespace A165877.P12922863446634963179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (SequenceMachineLib.roundAway ((A308908 n : ℚ) ^ (A343342 n : ℤ))).toNat

end

end A165877.P12922863446634963179

/-!
# A165878: Number of disconnected 8-regular simple graphs on n vertices.

The programs for A165878, there is no canonical definition to state claims against.
-/

/-! ## A165878.P15395679320434127701

`A193513(A185044(n))-A193518(n+1)`
-/

namespace A165878.P15395679320434127701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 (A185044 n).toNat - A193518 (n + 1)

end

end A165878.P15395679320434127701

/-!
# A165880: Number of reduced words of length n in Coxeter group on 18 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A165880, there is no canonical definition to state claims against.
-/

/-! ## A165880.P17597649581480800631

`A166412(A077741(n+1))-Δ[A166599(n)]`
-/

namespace A165880.P17597649581480800631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166412 (A077741 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A165880.P17597649581480800631

/-! ## A165880.P14364962631848734245

`A166412(A077741(n+1))-Δ[A167048(n)]`
-/

namespace A165880.P14364962631848734245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166412 (A077741 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A165880.P14364962631848734245

/-!
# A165883: Irregular triangle T(n, k) = [x^k]( p(n, x) ), where p(n, x) = (1-x)^(2*n+3)*( Sum_{j >= 0} (2*j+ 1)^n*x^j )*( Sum_{j >= 0} j^(n+1)*x^j ), read by rows.

The programs for A165883, there is no canonical definition to state claims against.
-/

/-! ## A165883.P10579766302768737860

`A137620(A165889(n))`
-/

namespace A165883.P10579766302768737860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A165889 n).toNat

end

end A165883.P10579766302768737860

/-! ## A165883.P17637810062004299180

`A340854(A384968(n+1))`
-/

namespace A165883.P17637810062004299180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A384968 (n + 1)).toNat

end

end A165883.P17637810062004299180

/-!
# A165884: Irregular table of negated A080092 and a leading column of 1's.

The programs for A165884, there is no canonical definition to state claims against.
-/

/-! ## A165884.P7558538037487175843

`A057077(A327471(n))-A180662(n)`
-/

namespace A165884.P7558538037487175843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A327471 n).toNat - A180662 n

end

end A165884.P7558538037487175843

/-! ## A165884.P3584379628094771533

`A108299(A152036(n))-A046051(7^A002262(n))`
-/

namespace A165884.P3584379628094771533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A152036 n).toNat - A046051 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A165884.P3584379628094771533

/-! ## A165884.P10565516959635738897

`A141664(A183534(n+1)^5)`
-/

namespace A165884.P10565516959635738897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141664 (A183534 (n + 1) ^ 5).toNat

end

end A165884.P10565516959635738897

/-! ## A165884.P13352101690757581588

`A000039(A002262(n)^A047789(n))`
-/

namespace A165884.P13352101690757581588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000039 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A047789 n : ℤ))).toNat

end

end A165884.P13352101690757581588

/-! ## A165884.P13666946525226554170

`A349385(A158405(n+1)^A001316(n))`
-/

namespace A165884.P13666946525226554170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349385 (SequenceMachineLib.roundAway ((A158405 (n + 1) : ℚ) ^ (A001316 n : ℤ))).toNat

end

end A165884.P13666946525226554170

/-!
# A165886: a(n) = A165641(n+1)/A165641(n).

The programs for A165886, the canonical program `A165886.P760249657169127056` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165886 has offset 0).

The definition of A165886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165886.P760249657169127056

`A165641(n+1)/A165641(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A165886

/-- `A165641(n+1)/A165641(n)` -/
def P760249657169127056.Spec : Prop :=
  ∀ n, P760249657169127056.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P13262656348176301893

`A027760(n+1)/ratio[A001316(n)]`
-/

namespace A165886.P13262656348176301893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A165886.P13262656348176301893

namespace A165886

/-- `A027760(n+1)/ratio[A001316(n)]` -/
def P13262656348176301893.Spec : Prop :=
  ∀ n, P13262656348176301893.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P4416972026774253037

`A006519(n+1)*A141459(n+1)`
-/

namespace A165886.P4416972026774253037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A141459 (n + 1)

end

end A165886.P4416972026774253037

namespace A165886

/-- `A006519(n+1)*A141459(n+1)` -/
def P4416972026774253037.Spec : Prop :=
  ∀ n, P4416972026774253037.a n = A165886 n

end A165886

/-! ## A165886.P4863747434795121368

`A006519(n+1)/2*A027760(n+1)`
-/

namespace A165886.P4863747434795121368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) : ℚ) / 2 * (A027760 (n + 1) : ℚ)

end

end A165886.P4863747434795121368

namespace A165886

/-- `A006519(n+1)/2*A027760(n+1)` -/
def P4863747434795121368.Spec : Prop :=
  ∀ n, P4863747434795121368.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P8382063774422429725

`lcm(A006519(n+1), A141459(A000027(n+1)))`
-/

namespace A165886.P8382063774422429725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A141459 (A000027 (n + 1)).toNat)

end

end A165886.P8382063774422429725

namespace A165886

/-- `lcm(A006519(n+1), A141459(A000027(n+1)))` -/
def P8382063774422429725.Spec : Prop :=
  ∀ n, (P8382063774422429725.a n : ℤ) = A165886 n

end A165886

/-! ## A165886.P3572197515307685545

`A001316(n)/A001316(n+1)*A141056(n+1)`
-/

namespace A165886.P3572197515307685545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A001316 (n + 1) : ℚ) * (A141056 (n + 1) : ℚ)

end

end A165886.P3572197515307685545

namespace A165886

/-- `A001316(n)/A001316(n+1)*A141056(n+1)` -/
def P3572197515307685545.Spec : Prop :=
  ∀ n, P3572197515307685545.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P6793993319124910914

`2*A001316(n)/A001316(n+1)*A141459(n+1)`
-/

namespace A165886.P6793993319124910914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n : ℚ) / (A001316 (n + 1) : ℚ) * (A141459 (n + 1) : ℚ)

end

end A165886.P6793993319124910914

namespace A165886

/-- `2*A001316(n)/A001316(n+1)*A141459(n+1)` -/
def P6793993319124910914.Spec : Prop :=
  ∀ n, P6793993319124910914.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P7305202551494009602

`A160467(2*(n+1))/A176591(2*n+1)*A176591(n+1)`
-/

namespace A165886.P7305202551494009602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160467 (2 * (n + 1)) : ℚ) / (A176591 (2 * n + 1) : ℚ) * (A176591 (n + 1) : ℚ)

end

end A165886.P7305202551494009602

namespace A165886

/-- `A160467(2*(n+1))/A176591(2*n+1)*A176591(n+1)` -/
def P7305202551494009602.Spec : Prop :=
  ∀ n, P7305202551494009602.a n = (A165886 n : ℚ)

end A165886

/-! ## A165886.P8767280576667559087

`lcm(2^val(n+1, 2), A176289(n+1))`
-/

namespace A165886.P8767280576667559087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A176289 (n + 1))

end

end A165886.P8767280576667559087

namespace A165886

/-- `lcm(2^val(n+1, 2), A176289(n+1))` -/
def P8767280576667559087.Spec : Prop :=
  ∀ n, (P8767280576667559087.a n : ℤ) = A165886 n

end A165886

/-! ## A165886.P3517733867844161249

`lcm(A006519(n+1), A176289(n+1))`
-/

namespace A165886.P3517733867844161249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A176289 (n + 1))

end

end A165886.P3517733867844161249

namespace A165886

/-- `lcm(A006519(n+1), A176289(n+1))` -/
def P3517733867844161249.Spec : Prop :=
  ∀ n, (P3517733867844161249.a n : ℤ) = A165886 n

end A165886

/-! ## A165886.P10864015383985922181

`gcd(n+1, A011782(n+1))*A141459(n+1)`
-/

namespace A165886.P10864015383985922181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A011782 (n + 1)) : ℤ) * A141459 (n + 1)

end

end A165886.P10864015383985922181

namespace A165886

/-- `gcd(n+1, A011782(n+1))*A141459(n+1)` -/
def P10864015383985922181.Spec : Prop :=
  ∀ n, P10864015383985922181.a n = A165886 n

end A165886

/-!
# A165887: Numbers n such that x^4 + y^4 != 0 (mod n) when both x, y (positive) are expressed mod n (i.e., 0 < x,y < n).

The programs for A165887, there is no canonical definition to state claims against.
-/

/-! ## A165887.P12454467309452716805

`lt[A134194(n+1), A126773(A118239(n+1)-n²)]`
-/

namespace A165887.P12454467309452716805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (A118239 (n + 1) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165887.P12454467309452716805

/-! ## A165887.P5658410743312410310

`∑[A372288(A225246(2*n+5))+1]+1`
-/

namespace A165887.P5658410743312410310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372288 (A225246 (2 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A165887.P5658410743312410310

/-! ## A165887.P8897476766263420916

`eq[A276689(A019428(n)), A309913(2*n+1)]`
-/

namespace A165887.P8897476766263420916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A019428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165887.P8897476766263420916

/-! ## A165887.P12663515338031016057

`record[or(A258208(n+1), A282194(n))]`
-/

namespace A165887.P12663515338031016057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A258208 (n + 1)) (A282194 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165887.P12663515338031016057

/-!
# A165888: Primes arising in A126938.

The programs for A165888, there is no canonical definition to state claims against.
-/

/-! ## A165888.P12480933566119899538

`(A126938(n+1)+A126938(n+2))/2`
-/

namespace A165888.P12480933566119899538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126938 (n + 1) + A126938 (n + 2) : ℚ) / 2

end

end A165888.P12480933566119899538

/-! ## A165888.P15047135485435848156

`A084696(2*(n+1))`
-/

namespace A165888.P15047135485435848156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * (n + 1))

end

end A165888.P15047135485435848156

/-! ## A165888.P1366127608600820549

`record[A084696(xor(1, n)+1)]`
-/

namespace A165888.P1366127608600820549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165888.P1366127608600820549

/-! ## A165888.P93042446839307588

`p?[A084696(Δ[lcm(n, n+1)])]`
-/

namespace A165888.P93042446839307588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165888.P93042446839307588

/-! ## A165888.P12511266020228440557

`record[A084696(A004442(n)+1)]`
-/

namespace A165888.P12511266020228440557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165888.P12511266020228440557

/-!
# A165892: Triangular numbers of form n(n+2)(n+4).

The programs for A165892, there is no canonical definition to state claims against.
-/

/-! ## A165892.P2139337318514247820

`∩[A130200(n+1), A370912(n)]`
-/

namespace A165892.P2139337318514247820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165892.P2139337318514247820

/-! ## A165892.P3467486983541670123

`∩[A050760(n+1), A370912(n)]`
-/

namespace A165892.P3467486983541670123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165892.P3467486983541670123

/-!
# A165896: a(n) = (a(n-1)^2+a(n-2)^2+a(n-3)^2+a(n-1)*a(n-2)+a(n-1)*a(n-3)+a(n-2)*a(n-3))/a(n-4) with four initial ones.

The programs for A165896, there is no canonical definition to state claims against.
-/

/-! ## A165896.P3524067626187240502

`(a(n-1)²+a(n-2)²+a(n-3)²+a(n-1)*a(n-2)+a(n-1)*a(n-3)+a(n-2)*a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A165896.P3524067626187240502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + a (n - 1) * a (n - 2) + a (n - 1) * a (n - 3) + a (n - 2) * a (n - 3)) / a (n - 4)

end

end A165896.P3524067626187240502

/-! ## A165896.P3166672179979726612

`A216345(C(A003242(n), A130823(n+1)))`
-/

namespace A165896.P3166672179979726612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (Nat.choose (A003242 n).toNat (A130823 (n + 1)).toNat)

end

end A165896.P3166672179979726612

/-!
# A165897: a(n) = a(n-1) + largest proper divisor of a(n-1), a(1)=4.

The programs for A165897, the canonical program `A165897.P5736021139905314312` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165897 has offset 1).

The definition of A165897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165897.P5736021139905314312

`3*a(n-3)` with `a(0)=4, a(1)=6, a(2)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165897

/-- `3*a(n-3)` -/
def P5736021139905314312.Spec : Prop :=
  ∀ n, (P5736021139905314312.a n : ℤ) = A165897 (n + 1)

theorem P5736021139905314312.correct : P5736021139905314312.Spec := by
  intro n
  simp only [A165897, Nat.add_sub_cancel]

end A165897

/-! ## A165897.P16595963278413260516

`a(n-1)+a(n-1)/(a(n-1)%2+2)` with `a(0)=4`
-/

namespace A165897.P16595963278413260516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + a (n - 1) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 + 2 : ℚ)

end

end A165897.P16595963278413260516

namespace A165897

/-- `a(n-1)+a(n-1)/(a(n-1)%2+2)` -/
def P16595963278413260516.Spec : Prop :=
  ∀ n, P16595963278413260516.a n = (A165897 (n + 1) : ℚ)

end A165897

/-! ## A165897.P7320520564230731655

`a(n-1)+a(n-1)/(4-gcd(2, a(n-1)))` with `a(0)=4`
-/

namespace A165897.P7320520564230731655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + a (n - 1) / (4 - (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) : ℚ)

end

end A165897.P7320520564230731655

namespace A165897

/-- `a(n-1)+a(n-1)/(4-gcd(2, a(n-1)))` -/
def P7320520564230731655.Spec : Prop :=
  ∀ n, P7320520564230731655.a n = (A165897 (n + 1) : ℚ)

end A165897

/-! ## A165897.P17117164493122224873

`A000792(n+4)`
-/

namespace A165897.P17117164493122224873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (n + 4)

end

end A165897.P17117164493122224873

namespace A165897

/-- `A000792(n+4)` -/
def P17117164493122224873.Spec : Prop :=
  ∀ n, P17117164493122224873.a n = A165897 (n + 1)

end A165897

/-! ## A165897.P13098815762479309450

`record[A036561(n+3)]`
-/

namespace A165897.P13098815762479309450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165897.P13098815762479309450

namespace A165897

/-- `record[A036561(n+3)]` -/
def P13098815762479309450.Spec : Prop :=
  ∀ n, P13098815762479309450.a n = A165897 (n + 1)

end A165897

/-! ## A165897.P15426715406523702166

`ogf((4+6x+9x^2)/(1-3x^3))`
-/

namespace A165897.P15426715406523702166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6, 9] [1, 0, 0, -3] n

end

end A165897.P15426715406523702166

namespace A165897

/-- `ogf((4+6x+9x^2)/(1-3x^3))` -/
def P15426715406523702166.Spec : Prop :=
  ∀ n, P15426715406523702166.a n = A165897 (n + 1)

end A165897

/-! ## A165897.P11928538951933104307

`record[A141396(n+3)]`
-/

namespace A165897.P11928538951933104307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165897.P11928538951933104307

namespace A165897

/-- `record[A141396(n+3)]` -/
def P11928538951933104307.Spec : Prop :=
  ∀ n, P11928538951933104307.a n = A165897 (n + 1)

end A165897

/-! ## A165897.P12665746856841294591

`A133374(n+4)+A005520(n+4)`
-/

namespace A165897.P12665746856841294591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133374 (n + 4) + A005520 (n + 4)

end

end A165897.P12665746856841294591

namespace A165897

/-- `A133374(n+4)+A005520(n+4)` -/
def P12665746856841294591.Spec : Prop :=
  ∀ n, P12665746856841294591.a n = A165897 (n + 1)

end A165897

/-! ## A165897.P1198807011709764219

`record[gcd(A003946(n+1), A155118(n))]`
-/

namespace A165897.P1198807011709764219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003946 (n + 1)) (A155118 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165897.P1198807011709764219

namespace A165897

/-- `record[gcd(A003946(n+1), A155118(n))]` -/
def P1198807011709764219.Spec : Prop :=
  ∀ n, (P1198807011709764219.a n : ℤ) = A165897 (n + 1)

end A165897

/-!
# A165898: a(n) = sum of the quadratic nonresidues of n.

The programs for A165898, there is no canonical definition to state claims against.
-/

/-! ## A165898.P5042512715115052938

`∑[n]-A165909(n+1)`
-/

namespace A165898.P5042512715115052938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A165909 (n + 1)

end

end A165898.P5042512715115052938

/-! ## A165898.P13751255438506460632

`abs(A000217(n)-A165909(n+1))`
-/

namespace A165898.P13751255438506460632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A165909 (n + 1)|

end

end A165898.P13751255438506460632

/-! ## A165898.P10645430516353886772

`A165926(n+1)+A165917(n+1)`
-/

namespace A165898.P10645430516353886772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165926 (n + 1) + A165917 (n + 1)

end

end A165898.P10645430516353886772

/-! ## A165898.P11366080863710669140

`A000124(n)-(A165909(n+1)+1)`
-/

namespace A165898.P11366080863710669140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165909 (n + 1) + 1)

end

end A165898.P11366080863710669140

/-! ## A165898.P2059730859091305404

`Δ[A000292(n)]-(A165909(n+1)+n+1)`
-/

namespace A165898.P2059730859091305404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A165909 (n + 1) + (n + 1 : ℤ))

end

end A165898.P2059730859091305404

/-! ## A165898.P11866518785320372046

`A003215(n)-(A165909(n+1)+A005891(n))`
-/

namespace A165898.P11866518785320372046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (A165909 (n + 1) + A005891 n)

end

end A165898.P11866518785320372046

/-! ## A165898.P1718364005414315977

`(∑[n]-A255644(n+1))/2`
-/

namespace A165898.P1718364005414315977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A255644 (n + 1) : ℚ) / 2

end

end A165898.P1718364005414315977

/-! ## A165898.P2745919594045854143

`A165909(n+1)-A255644(n+1)`
-/

namespace A165898.P2745919594045854143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - A255644 (n + 1)

end

end A165898.P2745919594045854143

