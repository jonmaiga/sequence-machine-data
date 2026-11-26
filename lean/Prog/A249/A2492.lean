import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import SequenceMachineLib.Triangle

/-!
# A249200: Number of length 3+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249200, there is no canonical definition to state claims against.
-/

/-! ## A249200.P13508804564727509593

`A249197(∑[n+2]+4)`
-/

namespace A249200.P13508804564727509593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249200.P13508804564727509593

/-!
# A249201: Number of length 4+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249201, there is no canonical definition to state claims against.
-/

/-! ## A249201.P10980585939747751217

`A249197(∑[n+3]+7)`
-/

namespace A249201.P10980585939747751217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249201.P10980585939747751217

/-!
# A249202: Number of length 5+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249202, there is no canonical definition to state claims against.
-/

/-! ## A249202.P8657450008199991029

`A249197(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A249202.P8657450008199991029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249202.P8657450008199991029

/-!
# A249203: Number of length 6+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249203, there is no canonical definition to state claims against.
-/

/-! ## A249203.P123155849037172120

`A249197(A166136(n+4))`
-/

namespace A249203.P123155849037172120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A166136 (n + 4)).toNat

end

end A249203.P123155849037172120

/-!
# A249204: Number of length 7+6 0..n arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

The programs for A249204, there is no canonical definition to state claims against.
-/

/-! ## A249204.P2436694131803593277

`A249197(A302537(n)+27)`
-/

namespace A249204.P2436694131803593277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (A302537 n + 27).toNat

end

end A249204.P2436694131803593277

/-!
# A249207: Number of length n+6 0..3 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249207, there is no canonical definition to state claims against.
-/

/-! ## A249207.P7946171300282872496

`A249212(∑[n+3]+1)`
-/

namespace A249207.P7946171300282872496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249207.P7946171300282872496

/-!
# A249208: Number of length n+6 0..4 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249208, there is no canonical definition to state claims against.
-/

/-! ## A249208.P17822859949510921040

`A249212(∑[n+4]+3)`
-/

namespace A249208.P17822859949510921040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249208.P17822859949510921040

/-!
# A249209: Number of length n+6 0..5 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249209, there is no canonical definition to state claims against.
-/

/-! ## A249209.P14673387139985227707

`A249212(∑[n+5]+6)`
-/

namespace A249209.P14673387139985227707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A249209.P14673387139985227707

/-!
# A249210: Number of length n+6 0..6 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249210, there is no canonical definition to state claims against.
-/

/-! ## A249210.P8320221344615885518

`A249212(∑[n+6]+10)`
-/

namespace A249210.P8320221344615885518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A249210.P8320221344615885518

/-!
# A249211: Number of length n+6 0..7 arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249211, there is no canonical definition to state claims against.
-/

/-! ## A249211.P9967114377703849980

`A249212(A055999(n+4))`
-/

namespace A249211.P9967114377703849980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A055999 (n + 4)).toNat

end

end A249211.P9967114377703849980

/-!
# A249212: T(n,k)=Number of length n+6 0..k arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249212, there is no canonical definition to state claims against.
-/

/-! ## A249212.P11609461097112928765

`A249319(n+1)`
-/

namespace A249212.P11609461097112928765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (n + 1)

end

end A249212.P11609461097112928765

/-!
# A249213: Number of length 1+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249213, there is no canonical definition to state claims against.
-/

/-! ## A249213.P5218226408685519058

`(n+2)^7-A249256(n+1)`
-/

namespace A249213.P5218226408685519058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249256 (n + 1)

end

end A249213.P5218226408685519058

/-! ## A249213.P18115141323471316881

`A249172(n+1)+A249198(n+1)-A249256(n+1)`
-/

namespace A249213.P18115141323471316881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (n + 1) + (A249198 (n + 1) - A249256 (n + 1))

end

end A249213.P18115141323471316881

/-! ## A249213.P7204032935738810805

`A249198(n+1)+A249171(∑[n]+1)-A249256(n+1)`
-/

namespace A249213.P7204032935738810805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249198 (n + 1) + (A249171 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A249256 (n + 1))

end

end A249213.P7204032935738810805

/-! ## A249213.P14488498728261823540

`A249212(1+∑[n])`
-/

namespace A249213.P14488498728261823540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249213.P14488498728261823540

/-! ## A249213.P1908485999597135649

`record[A249212(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A249213.P1908485999597135649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249213.P1908485999597135649

/-!
# A249214: Number of length 2+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249214, there is no canonical definition to state claims against.
-/

/-! ## A249214.P5587207638201600354

`A249212(∑[1+n]+2)`
-/

namespace A249214.P5587207638201600354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249214.P5587207638201600354

/-! ## A249214.P3564273477104287542

`record[gcd(A002262(n+1), A249212(n+3))]`
-/

namespace A249214.P3564273477104287542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A249212 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249214.P3564273477104287542

/-!
# A249215: Number of length 3+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249215, there is no canonical definition to state claims against.
-/

/-! ## A249215.P9820955928391089479

`A249212(∑[n+2]+4)`
-/

namespace A249215.P9820955928391089479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249215.P9820955928391089479

/-!
# A249216: Number of length 4+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249216, there is no canonical definition to state claims against.
-/

/-! ## A249216.P16140260310619206443

`A249212(∑[n+3]+7)`
-/

namespace A249216.P16140260310619206443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249216.P16140260310619206443

/-!
# A249217: Number of length 5+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249217, there is no canonical definition to state claims against.
-/

/-! ## A249217.P5006624300348417728

`A249212(A167499(n+3))`
-/

namespace A249217.P5006624300348417728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A167499 (n + 3)).toNat

end

end A249217.P5006624300348417728

/-!
# A249218: Number of length 6+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249218, there is no canonical definition to state claims against.
-/

/-! ## A249218.P8963312737656297775

`A249212(A056115(n)+21)`
-/

namespace A249218.P8963312737656297775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (A056115 n + 21).toNat

end

end A249218.P8963312737656297775

/-!
# A249219: Number of length 7+6 0..n arrays with no seven consecutive terms having five times the sum of any two elements equal to two times the sum of the remaining five.

The programs for A249219, there is no canonical definition to state claims against.
-/

/-! ## A249219.P7332766123815142086

`A249212(eq[11, A066657(n)])`
-/

namespace A249219.P7332766123815142086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249219.P7332766123815142086

/-!
# A249221: Expansion of x*(1+5*x-2*x^3)/(1-6*x^2+2*x^4).

The programs for A249221, the canonical program `A249221.P1893190362601694124` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249221 has offset 1).

The definition of A249221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x-2x^3)/(1-6x^2+2x^4))` (program `A249221.P1893190362601694124`, by `A249221.P1893190362601694124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249221.P1893190362601694124

`ogf((1+5x-2x^3)/(1-6x^2+2x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249221

/-- `ogf((1+5x-2x^3)/(1-6x^2+2x^4))` -/
def P1893190362601694124.Spec : Prop :=
  ∀ n, P1893190362601694124.a n = A249221 (n + 1)

theorem P1893190362601694124.correct : P1893190362601694124.Spec := by
  intro n
  simp only [A249221, Nat.add_sub_cancel]

end A249221

/-! ## A249221.P5566242368108733584

`6*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=28`
-/

namespace A249221.P5566242368108733584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 28] fun n a =>
  6 * a (n - 2) - 2 * a (n - 4)

end

end A249221.P5566242368108733584

namespace A249221

/-- `6*a(n-2)-2*a(n-4)` -/
def P5566242368108733584.Spec : Prop :=
  ∀ n, P5566242368108733584.a n = A249221 (n + 1)

end A249221

/-! ## A249221.P4807412465709822700

`∪[A154244(n+1), Δ[A154244(n+1)]]`
-/

namespace A249221.P4807412465709822700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249221.P4807412465709822700

namespace A249221

/-- `∪[A154244(n+1), Δ[A154244(n+1)]]` -/
def P4807412465709822700.Spec : Prop :=
  ∀ n, (P4807412465709822700.a n : ℤ) = A249221 (n + 1)

end A249221

/-! ## A249221.P11784262471621574797

`∪[A154244(n+1), A243669(n+1)]`
-/

namespace A249221.P11784262471621574797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249221.P11784262471621574797

namespace A249221

/-- `∪[A154244(n+1), A243669(n+1)]` -/
def P11784262471621574797.Spec : Prop :=
  ∀ n, (P11784262471621574797.a n : ℤ) = A249221 (n + 1)

end A249221

/-!
# A249222: Expansion of x*(1+5*x-5*x^3)/(1-6*x^2+5*x^4).

The programs for A249222, the canonical program `A249222.P12469744307020110175` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249222 has offset 1).

The definition of A249222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x-5x^3)/(1-6x^2+5x^4))` (program `A249222.P12469744307020110175`, by `A249222.P12469744307020110175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249222.P12469744307020110175

`ogf((1+5x-5x^3)/(1-6x^2+5x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249222

/-- `ogf((1+5x-5x^3)/(1-6x^2+5x^4))` -/
def P12469744307020110175.Spec : Prop :=
  ∀ n, P12469744307020110175.a n = A249222 (n + 1)

theorem P12469744307020110175.correct : P12469744307020110175.Spec := by
  intro n
  simp only [A249222, Nat.add_sub_cancel]

end A249222

/-! ## A249222.P14356600746983245691

`6*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=25`
-/

namespace A249222.P14356600746983245691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 25] fun n a =>
  6 * a (n - 2) - 5 * a (n - 4)

end

end A249222.P14356600746983245691

namespace A249222

/-- `6*a(n-2)-5*a(n-4)` -/
def P14356600746983245691.Spec : Prop :=
  ∀ n, P14356600746983245691.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P5326456912794191248

`(n+1)%2+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P5326456912794191248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n + 1) % 2 + 5 * a (n - 2)

end

end A249222.P5326456912794191248

namespace A249222

/-- `(n+1)%2+5*a(n-2)` -/
def P5326456912794191248.Spec : Prop :=
  ∀ n, (P5326456912794191248.a n : ℤ) = A249222 (n + 1)

end A249222

/-! ## A249222.P5385342733929874109

`A059841(n)+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P5385342733929874109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A059841 n + 5 * a (n - 2)

end

end A249222.P5385342733929874109

namespace A249222

/-- `A059841(n)+5*a(n-2)` -/
def P5385342733929874109.Spec : Prop :=
  ∀ n, P5385342733929874109.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P8949616607797589176

`A000035(n+1)+5*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A249222.P8949616607797589176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A000035 (n + 1) + 5 * a (n - 2)

end

end A249222.P8949616607797589176

namespace A249222

/-- `A000035(n+1)+5*a(n-2)` -/
def P8949616607797589176.Spec : Prop :=
  ∀ n, P8949616607797589176.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P11661911698242022891

`floor(A056451(n+1)/ratio[A056450(n)])`
-/

namespace A249222.P11661911698242022891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056451 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A249222.P11661911698242022891

namespace A249222

/-- `floor(A056451(n+1)/ratio[A056450(n)])` -/
def P11661911698242022891.Spec : Prop :=
  ∀ n, P11661911698242022891.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P17266299510085310154

`∪[5^n, ∑[5^n]]`
-/

namespace A249222.P17266299510085310154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A249222.P17266299510085310154

namespace A249222

/-- `∪[5^n, ∑[5^n]]` -/
def P17266299510085310154.Spec : Prop :=
  ∀ n, (P17266299510085310154.a n : ℤ) = A249222 (n + 1)

end A249222

/-! ## A249222.P473918502128867185

`floor(a(n-2)+5^n/a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A249222.P473918502128867185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊(a (n - 2) : ℚ) + (5 ^ n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A249222.P473918502128867185

namespace A249222

/-- `floor(a(n-2)+5^n/a(n-1))` -/
def P473918502128867185.Spec : Prop :=
  ∀ n, P473918502128867185.a n = A249222 (n + 1)

end A249222

/-! ## A249222.P17949955875594018787

`floor((∑[5^n]-1)/a(n-1))` with `a(0)=1`
-/

namespace A249222.P17949955875594018787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A249222.P17949955875594018787

namespace A249222

/-- `floor((∑[5^n]-1)/a(n-1))` -/
def P17949955875594018787.Spec : Prop :=
  ∀ n, P17949955875594018787.a n = A249222 (n + 1)

end A249222

/-!
# A249223: Triangle read by rows: row n gives partial alternating sums of row n of A237048.

The programs for A249223, there is no canonical definition to state claims against.
-/

/-! ## A249223.P5544618123796301155

`A244250(∑[A237591(n+1)])`
-/

namespace A249223.P5544618123796301155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249223.P5544618123796301155

/-! ## A249223.P5993206516583366937

`A249351(A053616(n)+A000040(n+1))`
-/

namespace A249223.P5993206516583366937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A053616 n + A000040 (n + 1)).toNat

end

end A249223.P5993206516583366937

/-! ## A249223.P14085388405607613812

`A106139(A131632(n+1))`
-/

namespace A249223.P14085388405607613812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106139 (A131632 (n + 1)).toNat

end

end A249223.P14085388405607613812

/-!
# A249224: Lpf (n(n+11)/2): least prime dividing n(n+11)/2.

The programs for A249224, the canonical program `A249224.P11735330604214829012` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249224 has offset 1).

The definition of A249224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249224.P11735330604214829012

`A020639((n+1)*(n+12)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A249224

/-- `A020639((n+1)*(n+12)/2)` -/
def P11735330604214829012.Spec : Prop :=
  ∀ n, P11735330604214829012.a n = A249224 (n + 1)

theorem P11735330604214829012.correct : P11735330604214829012.Spec := by
  intro n
  simp only [A249224, Nat.add_sub_cancel]

end A249224

/-! ## A249224.P814428819572341799

`A020639(∑[6+and(n, n)])`
-/

namespace A249224.P814428819572341799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + Nat.land n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249224.P814428819572341799

namespace A249224

/-- `A020639(∑[6+and(n, n)])` -/
def P814428819572341799.Spec : Prop :=
  ∀ n, P814428819572341799.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P198163903000235537

`A057237(∑[n+6])+1`
-/

namespace A249224.P198163903000235537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A249224.P198163903000235537

namespace A249224

/-- `A057237(∑[n+6])+1` -/
def P198163903000235537.Spec : Prop :=
  ∀ n, P198163903000235537.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P9944211765904383090

`A006530(A074828(∑[n+6]))`
-/

namespace A249224.P9944211765904383090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249224.P9944211765904383090

namespace A249224

/-- `A006530(A074828(∑[n+6]))` -/
def P9944211765904383090.Spec : Prop :=
  ∀ n, P9944211765904383090.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P9501513254397652238

`A102457(∑[n+6]+1)`
-/

namespace A249224.P9501513254397652238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249224.P9501513254397652238

namespace A249224

/-- `A102457(∑[n+6]+1)` -/
def P9501513254397652238.Spec : Prop :=
  ∀ n, P9501513254397652238.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P8999719826852143289

`A092067(∑[n+6]-1)`
-/

namespace A249224.P8999719826852143289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A249224.P8999719826852143289

namespace A249224

/-- `A092067(∑[n+6]-1)` -/
def P8999719826852143289.Spec : Prop :=
  ∀ n, P8999719826852143289.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P559977319547799024

`A000040(A055396(∑[n+6]))`
-/

namespace A249224.P559977319547799024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055396 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249224.P559977319547799024

namespace A249224

/-- `A000040(A055396(∑[n+6]))` -/
def P559977319547799024.Spec : Prop :=
  ∀ n, P559977319547799024.a n = A249224 (n + 1)

end A249224

/-! ## A249224.P4929098136360783527

`A014673(A119412(n+1))`
-/

namespace A249224.P4929098136360783527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A119412 (n + 1)).toNat

end

end A249224.P4929098136360783527

namespace A249224

/-- `A014673(A119412(n+1))` -/
def P4929098136360783527.Spec : Prop :=
  ∀ n, P4929098136360783527.a n = A249224 (n + 1)

end A249224

/-!
# A249225: Numerators of constants A(a) related to the asymptotic LCM of arithmetic progressions a*n+b (a and b coprime).

The programs for A249225, there is no canonical definition to state claims against.
-/

/-! ## A249225.P17849479356908496814

`A006530(A074182(n+1))*A093600(n+1)`
-/

namespace A249225.P17849479356908496814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074182 (n + 1)).toNat * A093600 (n + 1)

end

end A249225.P17849479356908496814

/-! ## A249225.P9530162950865013312

`A006530(A074182(n+1))*A116416(A054432(n+1))`
-/

namespace A249225.P9530162950865013312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074182 (n + 1)).toNat * A116416 (A054432 (n + 1)).toNat

end

end A249225.P9530162950865013312

/-! ## A249225.P10848644362329442109

`A026741((n+1)^A092964(n))`
-/

namespace A249225.P10848644362329442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A092964 n : ℤ))).toNat

end

end A249225.P10848644362329442109

/-!
# A249226: Denominators of constants A(a) related to the asymptotic LCM of arithmetic progressions a*n+b (a and b coprime).

The programs for A249226, there is no canonical definition to state claims against.
-/

/-! ## A249226.P987175496363011416

`A028310(A069220(n+1))*A049559(n+1)`
-/

namespace A249226.P987175496363011416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A069220 (n + 1)).toNat * A049559 (n + 1)

end

end A249226.P987175496363011416

/-! ## A249226.P17638465009080138821

`A049559(A249225(n+1))*A069220(n+1)`
-/

namespace A249226.P17638465009080138821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A249225 (n + 1)).toNat * A069220 (n + 1)

end

end A249226.P17638465009080138821

/-! ## A249226.P4245227178275563859

`A055881(A124441(n+1)*A124442(n+1))*A069220(n+1)`
-/

namespace A249226.P4245227178275563859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A124441 (n + 1) * A124442 (n + 1)).toNat * A069220 (n + 1)

end

end A249226.P4245227178275563859

/-! ## A249226.P7468494436497020848

`A055881(A000142(n+1)/A066570(n+1))*A069220(n+1)`
-/

namespace A249226.P7468494436497020848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ))).toNat * A069220 (n + 1)

end

end A249226.P7468494436497020848

/-! ## A249226.P810186972298293829

`A055881(A055067(n+1)/A070251(n+1))*A069220(n+1)`
-/

namespace A249226.P810186972298293829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.roundAway ((A055067 (n + 1) : ℚ) / (A070251 (n + 1) : ℚ))).toNat * A069220 (n + 1)

end

end A249226.P810186972298293829

/-!
# A249227: Number of length n+5 0..2 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249227, the canonical program `A249227.P12364537944248605275` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249227 has offset 1).

The definition of A249227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249227.P12364537944248605275

`2^n*486`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249227

/-- `2^n*486` -/
def P12364537944248605275.Spec : Prop :=
  ∀ n, (P12364537944248605275.a n : ℤ) = A249227 (n + 1)

theorem P12364537944248605275.correct : P12364537944248605275.Spec := by
  intro n
  simp only [A249227, Nat.add_sub_cancel]

end A249227

/-!
# A249228: Number of length n+5 0..3 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249228, there is no canonical definition to state claims against.
-/

/-! ## A249228.P16703774368605771648

`A249233(∑[n+3]+1)`
-/

namespace A249228.P16703774368605771648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249228.P16703774368605771648

/-! ## A249228.P909807969796309903

`record[A249233(lt[A249252(n+2), n-1])]`
-/

namespace A249228.P909807969796309903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249252 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249228.P909807969796309903

/-!
# A249229: Number of length n+5 0..4 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249229, there is no canonical definition to state claims against.
-/

/-! ## A249229.P11962552848445805216

`A249233(A141214(n+1))`
-/

namespace A249229.P11962552848445805216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A141214 (n + 1)).toNat

end

end A249229.P11962552848445805216

/-!
# A249230: Number of length n+5 0..5 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249230, there is no canonical definition to state claims against.
-/

/-! ## A249230.P15355839108195569895

`A249233(A046691(n+3))`
-/

namespace A249230.P15355839108195569895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A046691 (n + 3)).toNat

end

end A249230.P15355839108195569895

/-!
# A249231: Number of length n+5 0..6 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249231, there is no canonical definition to state claims against.
-/

/-! ## A249231.P12862257161504052173

`A249233(A052905(n+3))`
-/

namespace A249231.P12862257161504052173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A052905 (n + 3)).toNat

end

end A249231.P12862257161504052173

/-!
# A249232: Number of length n+5 0..7 arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249232, there is no canonical definition to state claims against.
-/

/-! ## A249232.P2674506279667104848

`A249233(A055999(n+4))`
-/

namespace A249232.P2674506279667104848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A055999 (n + 4)).toNat

end

end A249232.P2674506279667104848

/-!
# A249234: Number of length 1+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249234, there is no canonical definition to state claims against.
-/

/-! ## A249234.P1731773855537927019

`(n+2)^6-A249086(n+1)`
-/

namespace A249234.P1731773855537927019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A249086 (n + 1)

end

end A249234.P1731773855537927019

/-! ## A249234.P17085831993529478390

`abs(A249086(n+1)-A001014(n+2))`
-/

namespace A249234.P17085831993529478390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A249086 (n + 1) - A001014 (n + 2)|

end

end A249234.P17085831993529478390

/-! ## A249234.P11755714088170413639

`A249233(∑[n]+1)`
-/

namespace A249234.P11755714088170413639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249234.P11755714088170413639

/-! ## A249234.P18445318686523694846

`record[gcd(A002262(n), A249233(n+1))]`
-/

namespace A249234.P18445318686523694846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249233 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249234.P18445318686523694846

/-!
# A249235: Number of length 2+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249235, there is no canonical definition to state claims against.
-/

/-! ## A249235.P6336121837624223095

`A249233(∑[n+1]+2)`
-/

namespace A249235.P6336121837624223095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249235.P6336121837624223095

/-! ## A249235.P5507482576124020373

`record[A249233(A133263(abs(1-n)))]`
-/

namespace A249235.P5507482576124020373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249235.P5507482576124020373

/-!
# A249236: Number of length 3+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249236, there is no canonical definition to state claims against.
-/

/-! ## A249236.P12889663965271399483

`A249233(∑[n+2]+4)`
-/

namespace A249236.P12889663965271399483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249236.P12889663965271399483

/-!
# A249237: Number of length 4+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249237, there is no canonical definition to state claims against.
-/

/-! ## A249237.P12923890236798566121

`A249233(A141214(n)+7)`
-/

namespace A249237.P12923890236798566121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A141214 n + 7).toNat

end

end A249237.P12923890236798566121

/-!
# A249238: Number of length 5+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249238, there is no canonical definition to state claims against.
-/

/-! ## A249238.P7230161330833145790

`A249233(A155212(n)+13)`
-/

namespace A249238.P7230161330833145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A155212 n + 13).toNat

end

end A249238.P7230161330833145790

/-!
# A249239: Number of length 6+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249239, there is no canonical definition to state claims against.
-/

/-! ## A249239.P4240614577810648603

`A249233(A167499(n+4)+1)`
-/

namespace A249239.P4240614577810648603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167499 (n + 4) + 1).toNat

end

end A249239.P4240614577810648603

/-!
# A249240: Number of length 7+5 0..n arrays with no six consecutive terms having two times the sum of any two elements equal to the sum of the remaining four.

The programs for A249240, there is no canonical definition to state claims against.
-/

/-! ## A249240.P126886171748002150

`A249233(A167487(n+5))`
-/

namespace A249240.P126886171748002150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249233 (A167487 (n + 5)).toNat

end

end A249240.P126886171748002150

/-!
# A249242: Squarefree primitive abundant numbers (using the second definition: having no abundant proper divisors, cf. A091191).

The programs for A249242, the canonical program `A249242.P1072947971439864743` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249242 has offset 1).

The definition of A249242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249242.P14512275058957722040

`∩[A087248(n+1), A091191(n+1)]`
-/

namespace A249242.P14512275058957722040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P14512275058957722040

namespace A249242

/-- `∩[A087248(n+1), A091191(n+1)]` -/
def P14512275058957722040.Spec : Prop :=
  ∀ n, (P14512275058957722040.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P10819571182469074274

`∩[A034683(n+1), A091191(n+1)]`
-/

namespace A249242.P10819571182469074274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P10819571182469074274

namespace A249242

/-- `∩[A034683(n+1), A091191(n+1)]` -/
def P10819571182469074274.Spec : Prop :=
  ∀ n, (P10819571182469074274.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P10513170201285064369

`filter[A091191(1+n), A008966(#)]`
-/

namespace A249242.P10513170201285064369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P10513170201285064369

namespace A249242

/-- `filter[A091191(1+n), A008966(#)]` -/
def P10513170201285064369.Spec : Prop :=
  ∀ n, P10513170201285064369.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P13177950877072742240

`filter[A302574(n+1), A008966(#)]`
-/

namespace A249242.P13177950877072742240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P13177950877072742240

namespace A249242

/-- `filter[A302574(n+1), A008966(#)]` -/
def P13177950877072742240.Spec : Prop :=
  ∀ n, P13177950877072742240.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P1072947971439864743

`filter[A357696(n+1), A008966(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249242

/-- `filter[A357696(n+1), A008966(#)]` -/
def P1072947971439864743.Spec : Prop :=
  ∀ n, P1072947971439864743.a n = A249242 (n + 1)

theorem P1072947971439864743.correct : P1072947971439864743.Spec := by
  intro n
  simp only [A249242, Nat.add_sub_cancel]

end A249242

/-! ## A249242.P1880961326809976872

`filter[A372299(n+1), A008966(#)]`
-/

namespace A249242.P1880961326809976872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P1880961326809976872

namespace A249242

/-- `filter[A372299(n+1), A008966(#)]` -/
def P1880961326809976872.Spec : Prop :=
  ∀ n, P1880961326809976872.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P11669218396324142657

`filter[A387712(n+1), A008966(#)]`
-/

namespace A249242.P11669218396324142657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P11669218396324142657

namespace A249242

/-- `filter[A387712(n+1), A008966(#)]` -/
def P11669218396324142657.Spec : Prop :=
  ∀ n, P11669218396324142657.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P7869862728937999401

`filter[A091191(n+1), A354819(#)]`
-/

namespace A249242.P7869862728937999401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P7869862728937999401

namespace A249242

/-- `filter[A091191(n+1), A354819(#)]` -/
def P7869862728937999401.Spec : Prop :=
  ∀ n, P7869862728937999401.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P17085815947112943185

`filter[A302574(n+1), A354353(#)]`
-/

namespace A249242.P17085815947112943185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A249242.P17085815947112943185

namespace A249242

/-- `filter[A302574(n+1), A354353(#)]` -/
def P17085815947112943185.Spec : Prop :=
  ∀ n, P17085815947112943185.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P1000391897162176427

`filter[A302574(n+1), A354819(#)]`
-/

namespace A249242.P1000391897162176427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P1000391897162176427

namespace A249242

/-- `filter[A302574(n+1), A354819(#)]` -/
def P1000391897162176427.Spec : Prop :=
  ∀ n, P1000391897162176427.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P7135842939921892265

`filter[A357696(n+1), A354819(#)]`
-/

namespace A249242.P7135842939921892265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P7135842939921892265

namespace A249242

/-- `filter[A357696(n+1), A354819(#)]` -/
def P7135842939921892265.Spec : Prop :=
  ∀ n, P7135842939921892265.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P14573697427297884887

`filter[A357696(n+1), A359473(#)]`
-/

namespace A249242.P14573697427297884887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A249242.P14573697427297884887

namespace A249242

/-- `filter[A357696(n+1), A359473(#)]` -/
def P14573697427297884887.Spec : Prop :=
  ∀ n, P14573697427297884887.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P15379980837776237256

`filter[A372299(n+1), A354353(#)]`
-/

namespace A249242.P15379980837776237256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A249242.P15379980837776237256

namespace A249242

/-- `filter[A372299(n+1), A354353(#)]` -/
def P15379980837776237256.Spec : Prop :=
  ∀ n, P15379980837776237256.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P16622564359517785434

`filter[A372299(n+1), A354819(#)]`
-/

namespace A249242.P16622564359517785434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P16622564359517785434

namespace A249242

/-- `filter[A372299(n+1), A354819(#)]` -/
def P16622564359517785434.Spec : Prop :=
  ∀ n, P16622564359517785434.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P17162550057862985803

`filter[A387712(n+1), A354819(#)]`
-/

namespace A249242.P17162550057862985803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A249242.P17162550057862985803

namespace A249242

/-- `filter[A387712(n+1), A354819(#)]` -/
def P17162550057862985803.Spec : Prop :=
  ∀ n, P17162550057862985803.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P2610869712830147819

`filter[A387712(n+3), A359834(#)]`
-/

namespace A249242.P2610869712830147819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A249242.P2610869712830147819

namespace A249242

/-- `filter[A387712(n+3), A359834(#)]` -/
def P2610869712830147819.Spec : Prop :=
  ∀ n, P2610869712830147819.a n = A249242 (n + 1)

end A249242

/-! ## A249242.P5021378104638619830

`∩[A005117(n+1), A091191(n+1)]`
-/

namespace A249242.P5021378104638619830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P5021378104638619830

namespace A249242

/-- `∩[A005117(n+1), A091191(n+1)]` -/
def P5021378104638619830.Spec : Prop :=
  ∀ n, (P5021378104638619830.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P13993798436378314460

`∩[A005117(n+1), A302574(n+1)]`
-/

namespace A249242.P13993798436378314460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P13993798436378314460

namespace A249242

/-- `∩[A005117(n+1), A302574(n+1)]` -/
def P13993798436378314460.Spec : Prop :=
  ∀ n, (P13993798436378314460.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P12234257874984914323

`∩[A005117(n+1), A357696(n+1)]`
-/

namespace A249242.P12234257874984914323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P12234257874984914323

namespace A249242

/-- `∩[A005117(n+1), A357696(n+1)]` -/
def P12234257874984914323.Spec : Prop :=
  ∀ n, (P12234257874984914323.a n : ℤ) = A249242 (n + 1)

end A249242

/-! ## A249242.P16540172139010141820

`∩[A005117(n+1), A372299(n+1)]`
-/

namespace A249242.P16540172139010141820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249242.P16540172139010141820

namespace A249242

/-- `∩[A005117(n+1), A372299(n+1)]` -/
def P16540172139010141820.Spec : Prop :=
  ∀ n, (P16540172139010141820.a n : ℤ) = A249242 (n + 1)

end A249242

/-!
# A249243: Floor(1/((1 + 1/n)^(n + 1)) - e).

The programs for A249243, there is no canonical definition to state claims against.
-/

/-! ## A249243.P5504652370609381287

`fp[A249245(n+1)]`
-/

namespace A249243.P5504652370609381287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A249243.P5504652370609381287

/-! ## A249243.P13994188859964986689

`∑[char[A249245(1+n)]]`
-/

namespace A249243.P13994188859964986689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249245 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249243.P13994188859964986689

/-! ## A249243.P272560330111672603

`A247784(n+1)-A249245(A247784(n+1))+n`
-/

namespace A249243.P272560330111672603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (n + 1) - A249245 (A247784 (n + 1)).toNat + (n : ℤ)

end

end A249243.P272560330111672603

/-! ## A249243.P10562791185236498467

`A054404(2*(n+2))-1`
-/

namespace A249243.P10562791185236498467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (n + 2)) - 1

end

end A249243.P10562791185236498467

/-! ## A249243.P7789759106807270834

`A003056(C(A054404(2*(n+2)), 2))`
-/

namespace A249243.P7789759106807270834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A054404 (2 * (n + 2))).toNat 2)

end

end A249243.P7789759106807270834

/-! ## A249243.P8684588106292527161

`A004481(C(A054404(2*(n+2)), 2))`
-/

namespace A249243.P8684588106292527161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (Nat.choose (A054404 (2 * (n + 2))).toNat 2)

end

end A249243.P8684588106292527161

/-! ## A249243.P14109898919461779076

`-1+A054404(2*n+4)`
-/

namespace A249243.P14109898919461779076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A054404 (2 * n + 4)

end

end A249243.P14109898919461779076

/-! ## A249243.P3142881000287359210

`A391618(A301302(n))`
-/

namespace A249243.P3142881000287359210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A301302 n).toNat

end

end A249243.P3142881000287359210

/-!
# A249244: Numbers k such that A249243(k+1) = A249243(k).

The programs for A249244, there is no canonical definition to state claims against.
-/

/-! ## A249244.P2516662107749225320

`∑[runs[n-A249243(1+n)]]`
-/

namespace A249244.P2516662107749225320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A249243 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249244.P2516662107749225320

/-! ## A249244.P9526576088133591073

`A249243(A247785(1+n)+2)+n+1`
-/

namespace A249244.P9526576088133591073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A247785 (1 + n) + 2).toNat + (n : ℤ) + 1

end

end A249244.P9526576088133591073

/-! ## A249244.P10170575954028093295

`A247786(A249243(A247785(n+1)+2))`
-/

namespace A249244.P10170575954028093295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (A249243 (A247785 (n + 1) + 2).toNat).toNat

end

end A249244.P10170575954028093295

/-! ## A249244.P10161133903045552162

`A291839(A195019(2*n+3))-A195019(2*n+3)`
-/

namespace A249244.P10161133903045552162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291839 (A195019 (2 * n + 3)).toNat - A195019 (2 * n + 3)

end

end A249244.P10161133903045552162

/-! ## A249244.P10769952792279010831

`∑[5-Δ[A389262(2*n+5)]]`
-/

namespace A249244.P10769952792279010831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389262 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249244.P10769952792279010831

/-!
# A249245: Numbers k such that A249243(k+1) = A249243(k) + 1.

The programs for A249245, there is no canonical definition to state claims against.
-/

/-! ## A249245.P11700025960609606641

`A247778(n+1)-A249243(A247778(n+1))+n`
-/

namespace A249245.P11700025960609606641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1) - A249243 (A247778 (n + 1)).toNat + (n : ℤ)

end

end A249245.P11700025960609606641

/-! ## A249245.P9948553970071882153

`fp[A249243(n+1)]`
-/

namespace A249245.P9948553970071882153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A249245.P9948553970071882153

/-! ## A249245.P6786284099599020623

`∑[runs[A249243(1+n)]]`
-/

namespace A249245.P6786284099599020623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249245.P6786284099599020623

/-! ## A249245.P6309261360755461197

`∑[runs[A249243(A028310(n))]]-1`
-/

namespace A249245.P6309261360755461197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A249245.P6309261360755461197

/-! ## A249245.P8135902418307378629

`A247786(n+1)-A249243(A247786(n+1))+n`
-/

namespace A249245.P8135902418307378629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (n + 1) - A249243 (A247786 (n + 1)).toNat + (n : ℤ)

end

end A249245.P8135902418307378629

/-! ## A249245.P7285843842170636453

`∑[runs[A259361(A054404(2*(n+2))²)]]`
-/

namespace A249245.P7285843842170636453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A054404 (2 * (n + 2)) ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249245.P7285843842170636453

/-! ## A249245.P1815844563318432958

`A000196(∑[A016777(n)+A005229(n+1)])`
-/

namespace A249245.P1815844563318432958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249245.P1815844563318432958

/-!
# A249246: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable side of the triangles of the (n-1)-th generation (this is the "vertex to side" version); for the even n-th generation use the "vertex to vertex" version; a(n) is the number of triangles in the n-th generation.

The programs for A249246, the canonical program `A249246.P7930081007830745941` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249246 has offset 0).

The definition of A249246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249246.P7930081007830745941

`ogf((1+3x+5x^2+12x^3+12x^4+15x^5+6x^6+15x^7+5x^8+12x^9+x^10+3x^11)/(1-x^2-x^8+x^10))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249246

/-- `ogf((1+3x+5x^2+12x^3+12x^4+15x^5+6x^6+15x^7+5x^8+12x^9+x^10+3x^11)/(1-x^2-x^8+x^10))` -/
def P7930081007830745941.Spec : Prop :=
  ∀ n, P7930081007830745941.a n = A249246 n

theorem P7930081007830745941.correct : P7930081007830745941.Spec := by
  intro n
  simp only [A249246]

end A249246

/-! ## A249246.P11445378223942105472

`A096894(A248969(n))`
-/

namespace A249246.P11445378223942105472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (A248969 n).toNat

end

end A249246.P11445378223942105472

namespace A249246

/-- `A096894(A248969(n))` -/
def P11445378223942105472.Spec : Prop :=
  ∀ n, P11445378223942105472.a n = A249246 n

end A249246

/-!
# A249248: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249248, there is no canonical definition to state claims against.
-/

/-! ## A249248.P18265550879952931427

`A392463(A084534(n))+A084534(n)`
-/

namespace A249248.P18265550879952931427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392463 (A084534 n).toNat + A084534 n

end

end A249248.P18265550879952931427

/-!
# A249249: Total number of occurrences of the consecutive step pattern given by the binary expansion of n (where 1=up and 0=down) in all permutations of [n].

The programs for A249249, there is no canonical definition to state claims against.
-/

/-! ## A249249.P17193790778622958982

`A097098(Δ[A147655(n)])`
-/

namespace A249249.P17193790778622958982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097098 (f1 (n + 1) - f1 n).toNat

end

end A249249.P17193790778622958982

/-! ## A249249.P5336466346869291336

`∑[A126016(n+1)%A306356(n)]`
-/

namespace A249249.P5336466346869291336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126016 (n + 1)) (A306356 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249249.P5336466346869291336

/-! ## A249249.P13290061578491041724

`A037955(n)*(A180335(3*n+4)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A249249.P13290061578491041724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  A037955 n * (A180335 (3 * n + 4) + a (n - 2))

end

end A249249.P13290061578491041724

/-!
# A249250: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249250, the canonical program `A249250.P10036823079148551915` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249250 has offset 0).

The definition of A249250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249250.P16304524891620019029

`2*T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A249250.P16304524891620019029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A249250.P16304524891620019029

namespace A249250

/-- `2*T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)` -/
def P16304524891620019029.Spec : Prop :=
  ∀ n, (P16304524891620019029.a n : ℤ) = A249250 n

end A249250

/-! ## A249250.P59666956072549472

`T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A249250.P59666956072549472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n)

end

end A249250.P59666956072549472

namespace A249250

/-- `T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` -/
def P59666956072549472.Spec : Prop :=
  ∀ n, (P59666956072549472.a n : ℤ) = A249250 n

end A249250

/-! ## A249250.P10036823079148551915

`A122016(A099375(n)+1+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A249250

/-- `A122016(A099375(n)+1+n)` -/
def P10036823079148551915.Spec : Prop :=
  ∀ n, P10036823079148551915.a n = A249250 n

theorem P10036823079148551915.correct : P10036823079148551915.Spec := by
  intro n
  simp only [A249250]

end A249250

/-!
# A249251: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249251, the canonical program `A249251.P14980186212896404598` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249251 has offset 0).

The definition of A249251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249251.P14980186212896404598

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249251

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k-1)` -/
def P14980186212896404598.Spec : Prop :=
  ∀ n, (P14980186212896404598.a n : ℤ) = A249251 n

theorem P14980186212896404598.correct : P14980186212896404598.Spec := by
  intro n
  simp only [A249251]

end A249251

/-! ## A249251.P15125476560180307770

`T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A249251.P15125476560180307770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n

end

end A249251.P15125476560180307770

namespace A249251

/-- `T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` -/
def P15125476560180307770.Spec : Prop :=
  ∀ n, (P15125476560180307770.a n : ℤ) = A249251 n

end A249251

/-! ## A249251.P6910578690307594374

`A116412(A061579(n))`
-/

namespace A249251.P6910578690307594374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (A061579 n).toNat

end

end A249251.P6910578690307594374

namespace A249251

/-- `A116412(A061579(n))` -/
def P6910578690307594374.Spec : Prop :=
  ∀ n, P6910578690307594374.a n = A249251 n

end A249251

/-!
# A249252: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249252, the canonical program `A249252.P10988775486435734646` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249252 has offset 0).

The definition of A249252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249252.P10988775486435734646

`A035607(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249252

/-- `A035607(n)*A059268(n)` -/
def P10988775486435734646.Spec : Prop :=
  ∀ n, P10988775486435734646.a n = A249252 n

theorem P10988775486435734646.correct : P10988775486435734646.Spec := by
  intro n
  simp only [A249252]

end A249252

/-! ## A249252.P9302532668661051524

`A035607(n)*(A197870(n)+2)^col(n)`
-/

namespace A249252.P9302532668661051524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * (A197870 n + 2) ^ SequenceMachineLib.triCol n

end

end A249252.P9302532668661051524

namespace A249252

/-- `A035607(n)*(A197870(n)+2)^col(n)` -/
def P9302532668661051524.Spec : Prop :=
  ∀ n, P9302532668661051524.a n = A249252 n

end A249252

/-! ## A249252.P16489259935644044850

`A000079(A002262(n))*A035607(n)`
-/

namespace A249252.P16489259935644044850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A035607 n

end

end A249252.P16489259935644044850

namespace A249252

/-- `A000079(A002262(n))*A035607(n)` -/
def P16489259935644044850.Spec : Prop :=
  ∀ n, P16489259935644044850.a n = A249252 n

end A249252

/-! ## A249252.P8163211665308409738

`A013620(A112367(n))*A035607(n)`
-/

namespace A249252.P8163211665308409738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A035607 n

end

end A249252.P8163211665308409738

namespace A249252

/-- `A013620(A112367(n))*A035607(n)` -/
def P8163211665308409738.Spec : Prop :=
  ∀ n, P8163211665308409738.a n = A249252 n

end A249252

/-! ## A249252.P17953596932640779259

`A035607(n)*A130321(A061579(n))`
-/

namespace A249252.P17953596932640779259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * A130321 (A061579 n).toNat

end

end A249252.P17953596932640779259

namespace A249252

/-- `A035607(n)*A130321(A061579(n))` -/
def P17953596932640779259.Spec : Prop :=
  ∀ n, P17953596932640779259.a n = A249252 n

end A249252

/-! ## A249252.P17848757379568157329

`A059268(n)*A113413(A061579(n))`
-/

namespace A249252.P17848757379568157329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A113413 (A061579 n).toNat

end

end A249252.P17848757379568157329

namespace A249252

/-- `A059268(n)*A113413(A061579(n))` -/
def P17848757379568157329.Spec : Prop :=
  ∀ n, P17848757379568157329.a n = A249252 n

end A249252

/-! ## A249252.P15793791678222448471

`A011782(A002260(n+1))*A035607(n)`
-/

namespace A249252.P15793791678222448471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A035607 n

end

end A249252.P15793791678222448471

namespace A249252

/-- `A011782(A002260(n+1))*A035607(n)` -/
def P15793791678222448471.Spec : Prop :=
  ∀ n, P15793791678222448471.a n = A249252 n

end A249252

/-!
# A249254: Number of length n+6 0..7 arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249254, there is no canonical definition to state claims against.
-/

/-! ## A249254.P9190938831731324027

`A249255(eq[6, A193592(n)])`
-/

namespace A249254.P9190938831731324027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249254.P9190938831731324027

/-!
# A249255: T(n,k)=Number of length n+6 0..k arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249255, there is no canonical definition to state claims against.
-/

/-! ## A249255.P14402560329925489132

`A249256(A004736(n+1))`
-/

namespace A249255.P14402560329925489132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249256 (A004736 (n + 1)).toNat

end

end A249255.P14402560329925489132

/-!
# A249256: Number of length 1+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249256, there is no canonical definition to state claims against.
-/

/-! ## A249256.P10085324715379400041

`(n+2)^7-A249213(n+1)`
-/

namespace A249256.P10085324715379400041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249213 (n + 1)

end

end A249256.P10085324715379400041

/-! ## A249256.P4641254078955292906

`A249172(n+1)+A249198(n+1)-A249213(n+1)`
-/

namespace A249256.P4641254078955292906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249172 (n + 1) + (A249198 (n + 1) - A249213 (n + 1))

end

end A249256.P4641254078955292906

/-! ## A249256.P1224957717890928238

`A249255(∑[n]+1)`
-/

namespace A249256.P1224957717890928238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249256.P1224957717890928238

/-! ## A249256.P10222490756643997541

`record[A249255(A106247(n))]`
-/

namespace A249256.P10222490756643997541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249256.P10222490756643997541

/-! ## A249256.P12297616865778652656

`record[A249255(A114091(n+1))]`
-/

namespace A249256.P12297616865778652656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249256.P12297616865778652656

/-!
# A249257: Number of length 2+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249257, there is no canonical definition to state claims against.
-/

/-! ## A249257.P6058133828033905527

`A249214(n+1)%(A249213(n+1)-A249256(n+1))`
-/

namespace A249257.P6058133828033905527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249214 (n + 1)) (A249213 (n + 1) - A249256 (n + 1))

end

end A249257.P6058133828033905527

/-! ## A249257.P8502241332878171576

`A249255(∑[n+1]+2)`
-/

namespace A249257.P8502241332878171576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249257.P8502241332878171576

/-! ## A249257.P2008087844417203669

`record[A249255(A022856(n+1))]`
-/

namespace A249257.P2008087844417203669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2008087844417203669

/-! ## A249257.P2898187081960125575

`record[A249255(A016028(n+2)-1)]`
-/

namespace A249257.P2898187081960125575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A016028 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2898187081960125575

/-! ## A249257.P2499406896045408567

`record[A249255(A249725(2*(n+1)))]`
-/

namespace A249257.P2499406896045408567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249257.P2499406896045408567

/-!
# A249258: Number of length 3+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249258, there is no canonical definition to state claims against.
-/

/-! ## A249258.P13957839773044321216

`A249255(∑[n+2]+4)`
-/

namespace A249258.P13957839773044321216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249258.P13957839773044321216

/-! ## A249258.P12608667817933548116

`record[A249255(A016028(n+1))]`
-/

namespace A249258.P12608667817933548116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P12608667817933548116

/-! ## A249258.P8381497851115895038

`record[A249255(A249725(n+1)+2)]`
-/

namespace A249258.P8381497851115895038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A249725 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P8381497851115895038

/-! ## A249258.P13092699217431585547

`record[A249255(A022856(n+2)+n)]`
-/

namespace A249258.P13092699217431585547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A022856 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249258.P13092699217431585547

/-!
# A249259: Number of length 4+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249259, there is no canonical definition to state claims against.
-/

/-! ## A249259.P4750755075341731645

`A249255(∑[n+3]+7)`
-/

namespace A249259.P4750755075341731645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249259.P4750755075341731645

/-! ## A249259.P2524059396796155016

`record[A249255(A077169(n)-n)]`
-/

namespace A249259.P2524059396796155016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249259.P2524059396796155016

/-!
# A249260: Number of length 5+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249260, there is no canonical definition to state claims against.
-/

/-! ## A249260.P7429513248794355294

`record[A249255(A077169(n))]`
-/

namespace A249260.P7429513248794355294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249260.P7429513248794355294

/-! ## A249260.P13317306418711730481

`A249255(A167499(n+3))`
-/

namespace A249260.P13317306418711730481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167499 (n + 3)).toNat

end

end A249260.P13317306418711730481

/-!
# A249261: Number of length 6+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249261, there is no canonical definition to state claims against.
-/

/-! ## A249261.P16036976053879766435

`A249255(A056115(n)+21)`
-/

namespace A249261.P16036976053879766435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A056115 n + 21).toNat

end

end A249261.P16036976053879766435

/-!
# A249262: Number of length 7+6 0..n arrays with every seven consecutive terms having five times the sum of some two elements equal to two times the sum of the remaining five.

The programs for A249262, there is no canonical definition to state claims against.
-/

/-! ## A249262.P10100716713766503722

`A249255(A167487(n+5))`
-/

namespace A249262.P10100716713766503722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249255 (A167487 (n + 5)).toNat

end

end A249262.P10100716713766503722

/-!
# A249263: Primitive, odd, squarefree abundant numbers.

The programs for A249263, there is no canonical definition to state claims against.
-/

/-! ## A249263.P3360288797649590393

`∩[A006038(n+1), A298973(n+1)]`
-/

namespace A249263.P3360288797649590393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P3360288797649590393

/-! ## A249263.P12185251806652177877

`∩[A006038(n+1), A360526(n+1)]`
-/

namespace A249263.P12185251806652177877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P12185251806652177877

/-! ## A249263.P15631190897874397678

`∩[A298973(n+1), A360526(n+1)]`
-/

namespace A249263.P15631190897874397678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P15631190897874397678

/-! ## A249263.P4277781039811373835

`∩[A006038(n+1), A339938(n+1)]`
-/

namespace A249263.P4277781039811373835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P4277781039811373835

/-! ## A249263.P10498278278580373859

`∩[A298973(n+1), A339938(n+1)]`
-/

namespace A249263.P10498278278580373859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P10498278278580373859

/-! ## A249263.P10336223791576907215

`∩[A006038(n+1), A302573(n+1)]`
-/

namespace A249263.P10336223791576907215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P10336223791576907215

/-! ## A249263.P17147948265805636435

`∩[A112643(n+1), A302573(n+1)]`
-/

namespace A249263.P17147948265805636435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17147948265805636435

/-! ## A249263.P15123329232897024055

`∩[A006038(n+1), A348605(n+1)]`
-/

namespace A249263.P15123329232897024055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P15123329232897024055

/-! ## A249263.P1903495763422855148

`∩[A298973(n+1), A348605(n+1)]`
-/

namespace A249263.P1903495763422855148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1903495763422855148

/-! ## A249263.P1546655831012782549

`∩[A127666(n+1), A298973(n+1)]`
-/

namespace A249263.P1546655831012782549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1546655831012782549

/-! ## A249263.P1265100275688535464

`∩[A298973(n+1), A381547(n+1)]`
-/

namespace A249263.P1265100275688535464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1265100275688535464

/-! ## A249263.P14606437510158335992

`∩[A112643(n+1), A372298(n+1)]`
-/

namespace A249263.P14606437510158335992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P14606437510158335992

/-! ## A249263.P947629912310530249

`∩[A293186(n+1), A298973(n+1)]`
-/

namespace A249263.P947629912310530249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P947629912310530249

/-! ## A249263.P6206789711208642641

`∩[A005231(n+1), A298973(n+1)]`
-/

namespace A249263.P6206789711208642641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P6206789711208642641

/-! ## A249263.P3244395407351324172

`∩[A006039(n+1), A112643(n+1)]`
-/

namespace A249263.P3244395407351324172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P3244395407351324172

/-! ## A249263.P17445487055367690448

`∩[A006039(n+1), A129485(n+1)]`
-/

namespace A249263.P17445487055367690448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17445487055367690448

/-! ## A249263.P17217083439615370780

`∩[A071395(n+1), A112643(n+1)]`
-/

namespace A249263.P17217083439615370780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P17217083439615370780

/-! ## A249263.P1009402222035178708

`∩[A071395(n+1), A129485(n+1)]`
-/

namespace A249263.P1009402222035178708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P1009402222035178708

/-! ## A249263.P11965721749822705821

`∩[A006039(n+1), A339938(n+1)]`
-/

namespace A249263.P11965721749822705821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P11965721749822705821

/-! ## A249263.P4298100847398339946

`∩[A006039(n+1), A348605(n+1)]`
-/

namespace A249263.P4298100847398339946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249263.P4298100847398339946

/-!
# A249264: Sequence of distinct least nonnegative numbers such that the average of the first n terms is a triangular number.

The programs for A249264, there is no canonical definition to state claims against.
-/

/-! ## A249264.P7805719225405951737

`Δ[A056926(((or(1, n)²-1)*n/8)²)]`
-/

namespace A249264.P7805719225405951737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P7805719225405951737

/-! ## A249264.P7999502608499091259

`Δ[A262689(((or(1, n)²-1)*n/8)²)]`
-/

namespace A249264.P7999502608499091259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P7999502608499091259

/-! ## A249264.P4882773555011735138

`Δ[A056926((n*∑[n-lcm(2, n)/2])²)]`
-/

namespace A249264.P4882773555011735138
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P4882773555011735138

/-! ## A249264.P16248225673748532997

`Δ[A056926((n/2*∑[n%or(1, n)])²)]`
-/

namespace A249264.P16248225673748532997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (((n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P16248225673748532997

/-! ## A249264.P16019958855677295027

`Δ[((or(1, n)²-1)*n/8)%A003111(n)]`
-/

namespace A249264.P16019958855677295027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8))) (A003111 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249264.P16019958855677295027

/-!
# A249265: Sequence of distinct least nonnegative numbers such that the average of the first n terms is a Fibonacci number.

The programs for A249265, the canonical program `A249265.P6978265155124747081` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249265 has offset 1).

The definition of A249265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249265.P6978265155124747081

`ogf((2x+x^2+x^3+5x^4-9x^5+2x^6+22x^7-31x^8+9x^9-5x^10-25x^11+28x^12-12x^13+12x^14)/(1-2x^2-x^4+2x^6+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249265

/-- `ogf((2x+x^2+x^3+5x^4-9x^5+2x^6+22x^7-31x^8+9x^9-5x^10-25x^11+28x^12-12x^13+12x^14)/(1-2x^2-x^4+2x^6+x^8))` -/
def P6978265155124747081.Spec : Prop :=
  ∀ n, P6978265155124747081.a n = A249265 (n + 1)

theorem P6978265155124747081.correct : P6978265155124747081.Spec := by
  intro n
  simp only [A249265, Nat.add_sub_cancel]

end A249265

/-!
# A249275: a(n) is the smallest b > 1 such that p = prime(n) satisfies b^(p-1) == 1 (mod p^3).

The programs for A249275, there is no canonical definition to state claims against.
-/

/-! ## A249275.P11530873916233534722

`A257833(∑[n+1]+3)`
-/

namespace A249275.P11530873916233534722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249275.P11530873916233534722

/-! ## A249275.P1536892635090753204

`A105222(A030078(n+1))`
-/

namespace A249275.P1536892635090753204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A030078 (n + 1)).toNat

end

end A249275.P1536892635090753204

/-!
# A249277: Denominators of fractions appearing in a generalization of Carleman's inequality.

The programs for A249277, there is no canonical definition to state claims against.
-/

/-! ## A249277.P4093043428476587442

`A272109(n)/2^n`
-/

namespace A249277.P4093043428476587442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272109 n : ℚ) / (2 ^ n : ℚ)

end

end A249277.P4093043428476587442

/-!
# A249278: Lexicographically earliest permutation of the nonnegative integers such that the parity of the first digit of a(n+1) equals that of a(n)'s last digit.

The programs for A249278, there is no canonical definition to state claims against.
-/

/-! ## A249278.P12498086222115950222

`fo[A249279(n)]`
-/

namespace A249278.P12498086222115950222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A249278.P12498086222115950222

/-!
# A249279: Inverse permutation of A249278 (such that first digit of a(n+1) has parity of a(n)).

The programs for A249279, there is no canonical definition to state claims against.
-/

/-! ## A249279.P18242775194627837960

`fo[A249278(n)]`
-/

namespace A249279.P18242775194627837960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A249279.P18242775194627837960

/-!
# A249284: Number of length n+3 0..2 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249284, there is no canonical definition to state claims against.
-/

/-! ## A249284.P12621947588155086473

`A249290(∑[n+2])`
-/

namespace A249284.P12621947588155086473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249284.P12621947588155086473

/-! ## A249284.P15267356731133168408

`record[A249290(A101881(n)+1)]`
-/

namespace A249284.P15267356731133168408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P15267356731133168408

/-! ## A249284.P10701823599628221550

`record[A249290(A117142(n+2))]`
-/

namespace A249284.P10701823599628221550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P10701823599628221550

/-! ## A249284.P1653576716474014684

`record[A249290(A000096(A134478(n)))]`
-/

namespace A249284.P1653576716474014684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P1653576716474014684

/-! ## A249284.P8429700368481628337

`record[A249290(A000096(A344180(n)))]`
-/

namespace A249284.P8429700368481628337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P8429700368481628337

/-! ## A249284.P11240583814532579714

`record[A249290(A061579(A257506(n+1)))]`
-/

namespace A249284.P11240583814532579714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A061579 (A257506 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249284.P11240583814532579714

/-!
# A249285: Number of length n+3 0..3 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249285, there is no canonical definition to state claims against.
-/

/-! ## A249285.P4872686388552716205

`A249290(∑[n+3]+1)`
-/

namespace A249285.P4872686388552716205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249285.P4872686388552716205

/-! ## A249285.P7010484410468974201

`record[A249290(A101881(n+2))]`
-/

namespace A249285.P7010484410468974201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249285.P7010484410468974201

/-!
# A249286: Number of length n+3 0..4 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249286, there is no canonical definition to state claims against.
-/

/-! ## A249286.P10742915702390468506

`A249290(A027379(n+2))`
-/

namespace A249286.P10742915702390468506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A027379 (n + 2)).toNat

end

end A249286.P10742915702390468506

/-!
# A249287: Number of length n+3 0..5 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249287, there is no canonical definition to state claims against.
-/

/-! ## A249287.P3810321993375822755

`A249290(A046691(n+3))`
-/

namespace A249287.P3810321993375822755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A046691 (n + 3)).toNat

end

end A249287.P3810321993375822755

/-!
# A249288: Number of length n+3 0..6 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249288, there is no canonical definition to state claims against.
-/

/-! ## A249288.P2486342203306866190

`A249290(A052905(n+3))`
-/

namespace A249288.P2486342203306866190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 (n + 3)).toNat

end

end A249288.P2486342203306866190

/-!
# A249289: Number of length n+3 0..7 arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249289, there is no canonical definition to state claims against.
-/

/-! ## A249289.P2996441589521709570

`A249290(A055999(4+n))`
-/

namespace A249289.P2996441589521709570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A055999 (4 + n)).toNat

end

end A249289.P2996441589521709570

/-!
# A249291: Number of length 1+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249291, the canonical program `A249291.P13295687875097309443` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249291 has offset 1).

The definition of A249291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249291.P13295687875097309443

`ogf((14+24x+34x^2+58x^3+14x^5)/(1-3x+2x^2+x^3-x^5-2x^6+3x^7-x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249291

/-- `ogf((14+24x+34x^2+58x^3+14x^5)/(1-3x+2x^2+x^3-x^5-2x^6+3x^7-x^8))` -/
def P13295687875097309443.Spec : Prop :=
  ∀ n, P13295687875097309443.a n = A249291 (n + 1)

theorem P13295687875097309443.correct : P13295687875097309443.Spec := by
  intro n
  simp only [A249291, Nat.add_sub_cancel]

end A249291

/-! ## A249291.P3653779464842325274

`(2+n)^4-A248538(n+1)`
-/

namespace A249291.P3653779464842325274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 + n) ^ 4 : ℤ) - A248538 (n + 1)

end

end A249291.P3653779464842325274

namespace A249291

/-- `(2+n)^4-A248538(n+1)` -/
def P3653779464842325274.Spec : Prop :=
  ∀ n, P3653779464842325274.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P3743152347372146793

`A249290(∑[n]+1)`
-/

namespace A249291.P3743152347372146793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249291.P3743152347372146793

namespace A249291

/-- `A249290(∑[n]+1)` -/
def P3743152347372146793.Spec : Prop :=
  ∀ n, P3743152347372146793.a n = A249291 (n + 1)

end A249291

/-! ## A249291.P1420460182593036608

`record[A249290(n+1)/A299504(n)]`
-/

namespace A249291.P1420460182593036608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249290 (n + 1) : ℚ) / (A299504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249291.P1420460182593036608

namespace A249291

/-- `record[A249290(n+1)/A299504(n)]` -/
def P1420460182593036608.Spec : Prop :=
  ∀ n, P1420460182593036608.a n = (A249291 (n + 1) : ℚ)

end A249291

/-!
# A249292: Number of length 2+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249292, there is no canonical definition to state claims against.
-/

/-! ## A249292.P2146913757705590574

`A249290(∑[n+1]+2)`
-/

namespace A249292.P2146913757705590574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249292.P2146913757705590574

/-!
# A249293: Number of length 3+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249293, there is no canonical definition to state claims against.
-/

/-! ## A249293.P18291304003572146728

`A249290(∑[n+2]+4)`
-/

namespace A249293.P18291304003572146728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249293.P18291304003572146728

/-!
# A249294: Number of length 4+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249294, there is no canonical definition to state claims against.
-/

/-! ## A249294.P7538230776610004059

`A249290(A052905(n)+9)`
-/

namespace A249294.P7538230776610004059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A052905 n + 9).toNat

end

end A249294.P7538230776610004059

/-!
# A249295: Number of length 5+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249295, there is no canonical definition to state claims against.
-/

/-! ## A249295.P15240121889299495571

`A249290(A167499(n+3))`
-/

namespace A249295.P15240121889299495571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167499 (n + 3)).toNat

end

end A249295.P15240121889299495571

/-!
# A249296: Number of length 6+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249296, there is no canonical definition to state claims against.
-/

/-! ## A249296.P16480983459221620629

`A249290(A167614(n+4)+3)`
-/

namespace A249296.P16480983459221620629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167614 (n + 4) + 3).toNat

end

end A249296.P16480983459221620629

/-!
# A249297: Number of length 7+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

The programs for A249297, there is no canonical definition to state claims against.
-/

/-! ## A249297.P12133523344876488687

`A249290(A167487(n+5))`
-/

namespace A249297.P12133523344876488687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249290 (A167487 (n + 5)).toNat

end

end A249297.P12133523344876488687

/-!
# A249298: Smallest positive integer k, such that s-k*n is a square where s is the smallest square >= k*n.

The programs for A249298, there is no canonical definition to state claims against.
-/

/-! ## A249298.P14176591522887146011

`A008611(A033461(n+4)*A187829(n+2))`
-/

namespace A249298.P14176591522887146011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A033461 (n + 4) * A187829 (n + 2)).toNat

end

end A249298.P14176591522887146011

/-! ## A249298.P4545884151298486440

`gcd(A029923(n), A100795(A187829(n+1)))`
-/

namespace A249298.P4545884151298486440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029923 n) (A100795 (A187829 (n + 1)).toNat)

end

end A249298.P4545884151298486440

/-! ## A249298.P2990418891565653528

`gcd(A055999(A211797(n)), A100795(n+1))`
-/

namespace A249298.P2990418891565653528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055999 (A211797 n).toNat) (A100795 (n + 1))

end

end A249298.P2990418891565653528

/-! ## A249298.P4789808529460343711

`gcd(A026741(A071252(n)), A197702(n+1))`
-/

namespace A249298.P4789808529460343711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A071252 n).toNat) (A197702 (n + 1))

end

end A249298.P4789808529460343711

/-! ## A249298.P10366988225141990066

`A339814(lcm(A096592(n), A339810(n+1)))`
-/

namespace A249298.P10366988225141990066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339814 (Int.lcm (A096592 n) (A339810 (n + 1)))

end

end A249298.P10366988225141990066

/-!
# A249299: Numbers j such that the sum of the first j terms, Sum_{k=1..j} a(k), is not in this list.

The programs for A249299, there is no canonical definition to state claims against.
-/

/-! ## A249299.P5327061593094902436

`comp[A249331(1+n)]`
-/

namespace A249299.P5327061593094902436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249299.P5327061593094902436

/-! ## A249299.P2982704259068302639

`eq[0, char[A249331(A248227(n+1))]]`
-/

namespace A249299.P2982704259068302639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (A248227 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249299.P2982704259068302639

/-! ## A249299.P3587315094254105981

`eq[char[A249331(n+1)], A000038(n)]`
-/

namespace A249299.P3587315094254105981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P3587315094254105981

/-! ## A249299.P7286175366077614261

`eq[char[A249331(n+2)], A000007(n)]`
-/

namespace A249299.P7286175366077614261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P7286175366077614261

/-! ## A249299.P13547562249257431155

`eq[char[A249331(n+2)], A130706(n)]`
-/

namespace A249299.P13547562249257431155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249331 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249299.P13547562249257431155

