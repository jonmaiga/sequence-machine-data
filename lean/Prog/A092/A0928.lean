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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092800: Mean (rounded) of primes below 10^n.

The programs for A092800, there is no canonical definition to state claims against.
-/

/-! ## A092800.P17403145013292696860

`round(A046731(n+1)/A006880(n+1))`
-/

namespace A092800.P17403145013292696860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046731 (n + 1) : ℚ) / (A006880 (n + 1) : ℚ))

end

end A092800.P17403145013292696860

/-!
# A092802: Mean (rounded) of composite numbers below 10^n.

The programs for A092802, there is no canonical definition to state claims against.
-/

/-! ## A092802.P2306497676592505438

`floor((10^(n+1)*(10^(n+1)+1)/2-A046731(n+1)-1)/(10^(n+1)-A006880(n+1)-1))`
-/

namespace A092802.P2306497676592505438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 ^ (n + 1) * (10 ^ (n + 1) + 1) : ℚ) / 2 - (A046731 (n + 1) : ℚ) - 1) / ((10 ^ (n + 1) : ℤ) - A006880 (n + 1) - 1 : ℚ)⌋

end

end A092802.P2306497676592505438

/-!
# A092803: Expansion of (1-5*x)/((1-2*x)*(1-6*x)).

The programs for A092803, the canonical program `A092803.P6459068907648682407` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092803 has offset 0).

The definition of A092803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-8x+12x^2))` (program `A092803.P6459068907648682407`, by `A092803.P6459068907648682407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092803.P6459068907648682407

`ogf((1-5x)/(1-8x+12x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092803

/-- `ogf((1-5x)/(1-8x+12x^2))` -/
def P6459068907648682407.Spec : Prop :=
  ∀ n, P6459068907648682407.a n = A092803 n

theorem P6459068907648682407.correct : P6459068907648682407.Spec := by
  intro n
  simp only [A092803]

end A092803

/-! ## A092803.P8517271093069749675

`2^(n-2)*(3^n+3)`
-/

namespace A092803.P8517271093069749675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 ^ n + 3 : ℚ)

end

end A092803.P8517271093069749675

namespace A092803

/-- `2^(n-2)*(3^n+3)` -/
def P8517271093069749675.Spec : Prop :=
  ∀ n, P8517271093069749675.a n = (A092803 n : ℚ)

end A092803

/-! ## A092803.P7168014252199079822

`A241275(n)+∑[2^n]`
-/

namespace A092803.P7168014252199079822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241275 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092803.P7168014252199079822

namespace A092803

/-- `A241275(n)+∑[2^n]` -/
def P7168014252199079822.Spec : Prop :=
  ∀ n, P7168014252199079822.a n = A092803 n

end A092803

/-! ## A092803.P12948719635194682110

`6*a(n-1)-A003945(n)` with `a(0)=1`
-/

namespace A092803.P12948719635194682110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A003945 n

end

end A092803.P12948719635194682110

namespace A092803

/-- `6*a(n-1)-A003945(n)` -/
def P12948719635194682110.Spec : Prop :=
  ∀ n, P12948719635194682110.a n = A092803 n

end A092803

/-! ## A092803.P2026097459298473015

`6*a(n-1)-A018900(∑[n])` with `a(0)=1`
-/

namespace A092803.P2026097459298473015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A018900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092803.P2026097459298473015

namespace A092803

/-- `6*a(n-1)-A018900(∑[n])` -/
def P2026097459298473015.Spec : Prop :=
  ∀ n, P2026097459298473015.a n = A092803 n

end A092803

/-! ## A092803.P18390786564224334102

`6*a(n-1)-Δ[A042950(n)]` with `a(0)=1`
-/

namespace A092803.P18390786564224334102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A092803.P18390786564224334102

namespace A092803

/-- `6*a(n-1)-Δ[A042950(n)]` -/
def P18390786564224334102.Spec : Prop :=
  ∀ n, P18390786564224334102.a n = A092803 n

end A092803

/-! ## A092803.P18017662075932117915

`6*a(n-1)-Δ[A055010(n)]` with `a(0)=1`
-/

namespace A092803.P18017662075932117915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A092803.P18017662075932117915

namespace A092803

/-- `6*a(n-1)-Δ[A055010(n)]` -/
def P18017662075932117915.Spec : Prop :=
  ∀ n, P18017662075932117915.a n = A092803 n

end A092803

/-! ## A092803.P15259327042378135636

`6*a(n-1)+1-A004119(n)` with `a(0)=1`
-/

namespace A092803.P15259327042378135636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (1 - A004119 n)

end

end A092803.P15259327042378135636

namespace A092803

/-- `6*a(n-1)+1-A004119(n)` -/
def P15259327042378135636.Spec : Prop :=
  ∀ n, P15259327042378135636.a n = A092803 n

end A092803

/-! ## A092803.P3809439362175536977

`6*a(n-1)-A007283(n-1)` with `a(0)=1`
-/

namespace A092803.P3809439362175536977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A007283 (n - 1)

end

end A092803.P3809439362175536977

namespace A092803

/-- `6*a(n-1)-A007283(n-1)` -/
def P3809439362175536977.Spec : Prop :=
  ∀ n, P3809439362175536977.a n = A092803 n

end A092803

/-! ## A092803.P2028091241568324891

`6*a(n-1)-A164073(2*n)` with `a(0)=1`
-/

namespace A092803.P2028091241568324891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A164073 (2 * n)

end

end A092803.P2028091241568324891

namespace A092803

/-- `6*a(n-1)-A164073(2*n)` -/
def P2028091241568324891.Spec : Prop :=
  ∀ n, P2028091241568324891.a n = A092803 n

end A092803

/-! ## A092803.P128862026484895224

`A233162(n+2)+A016283(n)`
-/

namespace A092803.P128862026484895224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233162 (n + 2) + A016283 n

end

end A092803.P128862026484895224

namespace A092803

/-- `A233162(n+2)+A016283(n)` -/
def P128862026484895224.Spec : Prop :=
  ∀ n, P128862026484895224.a n = A092803 n

end A092803

/-! ## A092803.P1657035080522823613

`A007582(n)+2*A016283(n)`
-/

namespace A092803.P1657035080522823613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + 2 * A016283 n

end

end A092803.P1657035080522823613

namespace A092803

/-- `A007582(n)+2*A016283(n)` -/
def P1657035080522823613.Spec : Prop :=
  ∀ n, P1657035080522823613.a n = A092803 n

end A092803

/-! ## A092803.P10945862559776400255

`2^n+A003462(n)*A011782(n)`
-/

namespace A092803.P10945862559776400255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A003462 n * A011782 n

end

end A092803.P10945862559776400255

namespace A092803

/-- `2^n+A003462(n)*A011782(n)` -/
def P10945862559776400255.Spec : Prop :=
  ∀ n, P10945862559776400255.a n = A092803 n

end A092803

/-! ## A092803.P6208166350875728824

`A233162(n+2)+A233162(n+2)-A007582(n)`
-/

namespace A092803.P6208166350875728824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233162 (n + 2) + (A233162 (n + 2) - A007582 n)

end

end A092803.P6208166350875728824

namespace A092803

/-- `A233162(n+2)+A233162(n+2)-A007582(n)` -/
def P6208166350875728824.Spec : Prop :=
  ∀ n, P6208166350875728824.a n = A092803 n

end A092803

/-! ## A092803.P2373663012125784617

`(A380996(n)-1)/2`
-/

namespace A092803.P2373663012125784617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380996 n - 1 : ℚ) / 2

end

end A092803.P2373663012125784617

namespace A092803

/-- `(A380996(n)-1)/2` -/
def P2373663012125784617.Spec : Prop :=
  ∀ n, P2373663012125784617.a n = (A092803 n : ℚ)

end A092803

/-! ## A092803.P5060175130367973422

`floor(A155597(n)/4)+2^n`
-/

namespace A092803.P5060175130367973422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155597 n : ℚ) / 4⌋ + (2 ^ n : ℤ)

end

end A092803.P5060175130367973422

namespace A092803

/-- `floor(A155597(n)/4)+2^n` -/
def P5060175130367973422.Spec : Prop :=
  ∀ n, P5060175130367973422.a n = A092803 n

end A092803

/-! ## A092803.P10634187347767871611

`A074601(n)-A090040(n)`
-/

namespace A092803.P10634187347767871611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n - A090040 n

end

end A092803.P10634187347767871611

namespace A092803

/-- `A074601(n)-A090040(n)` -/
def P10634187347767871611.Spec : Prop :=
  ∀ n, P10634187347767871611.a n = A092803 n

end A092803

/-! ## A092803.P15713608309901723425

`A036551(n)-A241275(n)`
-/

namespace A092803.P15713608309901723425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036551 n - A241275 n

end

end A092803.P15713608309901723425

namespace A092803

/-- `A036551(n)-A241275(n)` -/
def P15713608309901723425.Spec : Prop :=
  ∀ n, P15713608309901723425.a n = A092803 n

end A092803

/-! ## A092803.P13961336109694516986

`A016129(n)-Δ[A241275(n)]`
-/

namespace A092803.P13961336109694516986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n - (f1 (n + 1) - f1 n)

end

end A092803.P13961336109694516986

namespace A092803

/-- `A016129(n)-Δ[A241275(n)]` -/
def P13961336109694516986.Spec : Prop :=
  ∀ n, P13961336109694516986.a n = A092803 n

end A092803

/-! ## A092803.P7281371703326206096

`(A081335(n)+A000079(n))/2`
-/

namespace A092803.P7281371703326206096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081335 n + A000079 n : ℚ) / 2

end

end A092803.P7281371703326206096

namespace A092803

/-- `(A081335(n)+A000079(n))/2` -/
def P7281371703326206096.Spec : Prop :=
  ∀ n, P7281371703326206096.a n = (A092803 n : ℚ)

end A092803

/-!
# A092804: Expansion of (1+10x)/((1-1000x^3)).

The programs for A092804, the canonical program `A092804.P6458260001110071265` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092804 has offset 0).

The definition of A092804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092804.P6458260001110071265

`lcm(10, (n+1)%3)^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092804

/-- `lcm(10, (n+1)%3)^n` -/
def P6458260001110071265.Spec : Prop :=
  ∀ n, (P6458260001110071265.a n : ℤ) = A092804 n

theorem P6458260001110071265.correct : P6458260001110071265.Spec := by
  intro n
  simp only [A092804]

end A092804

/-! ## A092804.P6910184383904308045

`lcm(10^n, round(cos(n%6)))`
-/

namespace A092804.P6910184383904308045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 ^ n : ℤ) (SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)))

end

end A092804.P6910184383904308045

namespace A092804

/-- `lcm(10^n, round(cos(n%6)))` -/
def P6910184383904308045.Spec : Prop :=
  ∀ n, (P6910184383904308045.a n : ℤ) = A092804 n

end A092804

/-! ## A092804.P2380136702180540831

`(10*(n+1)²%3)^n`
-/

namespace A092804.P2380136702180540831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * ((n + 1) ^ 2 % 3)) ^ n

end

end A092804.P2380136702180540831

namespace A092804

/-- `(10*(n+1)²%3)^n` -/
def P2380136702180540831.Spec : Prop :=
  ∀ n, (P2380136702180540831.a n : ℤ) = A092804 n

end A092804

/-! ## A092804.P5506262466653327824

`(5*(3-gcd(3, n+1)))^n`
-/

namespace A092804.P5506262466653327824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (3 - (Nat.gcd 3 (n + 1) : ℤ))) ^ n

end

end A092804.P5506262466653327824

namespace A092804

/-- `(5*(3-gcd(3, n+1)))^n` -/
def P5506262466653327824.Spec : Prop :=
  ∀ n, P5506262466653327824.a n = A092804 n

end A092804

/-! ## A092804.P7422973438513307754

`(1-Δ[floor(n/3)])*10^n`
-/

namespace A092804.P7422973438513307754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * (10 ^ n : ℤ)

end

end A092804.P7422973438513307754

namespace A092804

/-- `(1-Δ[floor(n/3)])*10^n` -/
def P7422973438513307754.Spec : Prop :=
  ∀ n, P7422973438513307754.a n = A092804 n

end A092804

/-! ## A092804.P11901386697329578852

`lcm(5, A130772(n))^n`
-/

namespace A092804.P11901386697329578852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A130772 n) ^ n

end

end A092804.P11901386697329578852

namespace A092804

/-- `lcm(5, A130772(n))^n` -/
def P11901386697329578852.Spec : Prop :=
  ∀ n, (P11901386697329578852.a n : ℤ) = A092804 n

end A092804

/-! ## A092804.P15002437091963245358

`A070641(2*(n+1))^n`
-/

namespace A092804.P15002437091963245358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070641 (2 * (n + 1)) ^ n

end

end A092804.P15002437091963245358

namespace A092804

/-- `A070641(2*(n+1))^n` -/
def P15002437091963245358.Spec : Prop :=
  ∀ n, P15002437091963245358.a n = A092804 n

end A092804

/-! ## A092804.P13294585293522510778

`A131722(2*(n+1))^n`
-/

namespace A092804.P13294585293522510778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131722 (2 * (n + 1)) ^ n

end

end A092804.P13294585293522510778

namespace A092804

/-- `A131722(2*(n+1))^n` -/
def P13294585293522510778.Spec : Prop :=
  ∀ n, P13294585293522510778.a n = A092804 n

end A092804

/-! ## A092804.P4867216160120516487

`and(10^n, Δ[A347633(n+1)])`
-/

namespace A092804.P4867216160120516487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A092804.P4867216160120516487

namespace A092804

/-- `and(10^n, Δ[A347633(n+1)])` -/
def P4867216160120516487.Spec : Prop :=
  ∀ n, P4867216160120516487.a n = A092804 n

end A092804

/-! ## A092804.P4508882662708637836

`(10*and(1, A000045(n+1)))^n`
-/

namespace A092804.P4508882662708637836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * Int.land 1 (A000045 (n + 1))) ^ n

end

end A092804.P4508882662708637836

namespace A092804

/-- `(10*and(1, A000045(n+1)))^n` -/
def P4508882662708637836.Spec : Prop :=
  ∀ n, P4508882662708637836.a n = A092804 n

end A092804

/-! ## A092804.P17760334556449032384

`lcm(A010892(n), A011557(n))`
-/

namespace A092804.P17760334556449032384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A011557 n)

end

end A092804.P17760334556449032384

namespace A092804

/-- `lcm(A010892(n), A011557(n))` -/
def P17760334556449032384.Spec : Prop :=
  ∀ n, (P17760334556449032384.a n : ℤ) = A092804 n

end A092804

/-! ## A092804.P9867507190097237575

`A008592(floor(atan(A347633(n+1)))^n)^n`
-/

namespace A092804.P9867507190097237575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (⌊Real.arctan (A347633 (n + 1) : ℝ)⌋ ^ n).toNat ^ n

end

end A092804.P9867507190097237575

namespace A092804

/-- `A008592(floor(atan(A347633(n+1)))^n)^n` -/
def P9867507190097237575.Spec : Prop :=
  ∀ n, P9867507190097237575.a n = A092804 n

end A092804

/-! ## A092804.P10663115220276331732

`A011655(n+1)+A002283(n)*A011655(n+1)`
-/

namespace A092804.P10663115220276331732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + A002283 n * A011655 (n + 1)

end

end A092804.P10663115220276331732

namespace A092804

/-- `A011655(n+1)+A002283(n)*A011655(n+1)` -/
def P10663115220276331732.Spec : Prop :=
  ∀ n, P10663115220276331732.a n = A092804 n

end A092804

/-! ## A092804.P8494558242173899315

`A010872(n+1)*A011557(n)/A069705(n)`
-/

namespace A092804.P8494558242173899315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 1) * A011557 n : ℚ) / (A069705 n : ℚ)

end

end A092804.P8494558242173899315

namespace A092804

/-- `A010872(n+1)*A011557(n)/A069705(n)` -/
def P8494558242173899315.Spec : Prop :=
  ∀ n, P8494558242173899315.a n = (A092804 n : ℚ)

end A092804

/-!
# A092805: Expansion of (1+10x)/((1-x)(1-1000x^3)).

The programs for A092805, the canonical program `A092805.P5872850073892783479` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092805 has offset 0).

The definition of A092805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092805.P5872850073892783479

`∑[lcm(10, (n+1)%3)^n]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092805

/-- `∑[lcm(10, (n+1)%3)^n]` -/
def P5872850073892783479.Spec : Prop :=
  ∀ n, (P5872850073892783479.a n : ℤ) = A092805 n

theorem P5872850073892783479.correct : P5872850073892783479.Spec := by
  intro n
  simp only [A092805]

end A092805

/-! ## A092805.P17469424411849374763

`∑[10^n*char[∑[n%3]]]`
-/

namespace A092805.P17469424411849374763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P17469424411849374763

namespace A092805

/-- `∑[10^n*char[∑[n%3]]]` -/
def P17469424411849374763.Spec : Prop :=
  ∀ n, (P17469424411849374763.a n : ℤ) = A092805 n

end A092805

/-! ## A092805.P7153199814941235037

`∑[(10*(n+1)²%3)^n]`
-/

namespace A092805.P7153199814941235037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * ((n + 1) ^ 2 % 3)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P7153199814941235037

namespace A092805

/-- `∑[(10*(n+1)²%3)^n]` -/
def P7153199814941235037.Spec : Prop :=
  ∀ n, (P7153199814941235037.a n : ℤ) = A092805 n

end A092805

/-! ## A092805.P14023549641776720112

`∑[(5*(3-gcd(3, n+1)))^n]`
-/

namespace A092805.P14023549641776720112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (3 - (Nat.gcd 3 (n + 1) : ℤ))) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P14023549641776720112

namespace A092805

/-- `∑[(5*(3-gcd(3, n+1)))^n]` -/
def P14023549641776720112.Spec : Prop :=
  ∀ n, P14023549641776720112.a n = A092805 n

end A092805

/-! ## A092805.P15637735598824107426

`∑[A092804(n)]`
-/

namespace A092805.P15637735598824107426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P15637735598824107426

namespace A092805

/-- `∑[A092804(n)]` -/
def P15637735598824107426.Spec : Prop :=
  ∀ n, P15637735598824107426.a n = A092805 n

theorem P15637735598824107426.correct : P15637735598824107426.Spec := by
  intro n
  simp only [A092805, Nat.add_sub_cancel, A092805.P15637735598824107426.f1, A092805.P15637735598824107426.a, A092805.P5872850073892783479.f1, A092805.P5872850073892783479.a, A092804, A092804.P6458260001110071265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092805

/-! ## A092805.P2731896950056818879

`∑[lcm(10^n, A257076(n))]`
-/

namespace A092805.P2731896950056818879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 ^ n : ℤ) (A257076 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P2731896950056818879

namespace A092805

/-- `∑[lcm(10^n, A257076(n))]` -/
def P2731896950056818879.Spec : Prop :=
  ∀ n, (P2731896950056818879.a n : ℤ) = A092805 n

end A092805

/-! ## A092805.P17828075848577300198

`∑[10^n*∑[A057078(n)]]`
-/

namespace A092805.P17828075848577300198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P17828075848577300198

namespace A092805

/-- `∑[10^n*∑[A057078(n)]]` -/
def P17828075848577300198.Spec : Prop :=
  ∀ n, P17828075848577300198.a n = A092805 n

end A092805

/-! ## A092805.P3764021710578126233

`∑[A131722(2*(n+1))^n]`
-/

namespace A092805.P3764021710578126233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131722 (2 * (n + 1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P3764021710578126233

namespace A092805

/-- `∑[A131722(2*(n+1))^n]` -/
def P3764021710578126233.Spec : Prop :=
  ∀ n, P3764021710578126233.a n = A092805 n

end A092805

/-! ## A092805.P4960341821874134132

`∑[and(1, A000045(n+1))²*10^n]`
-/

namespace A092805.P4960341821874134132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 (n + 1)) ^ 2 * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P4960341821874134132

namespace A092805

/-- `∑[and(1, A000045(n+1))²*10^n]` -/
def P4960341821874134132.Spec : Prop :=
  ∀ n, P4960341821874134132.a n = A092805 n

end A092805

/-! ## A092805.P7120265671305658714

`∑[lcm(A010892(n), A011557(n))]`
-/

namespace A092805.P7120265671305658714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A011557 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092805.P7120265671305658714

namespace A092805

/-- `∑[lcm(A010892(n), A011557(n))]` -/
def P7120265671305658714.Spec : Prop :=
  ∀ n, (P7120265671305658714.a n : ℤ) = A092805 n

end A092805

/-!
# A092807: Expansion of (1-6*x+4*x^2)/((1-2*x)*(1-6*x)).

The programs for A092807, the canonical program `A092807.P7830710792441340514` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092807 has offset 0).

The definition of A092807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+4x^2)/(1-8x+12x^2))` (program `A092807.P7830710792441340514`, by `A092807.P7830710792441340514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092807.P7830710792441340514

`ogf((1-6x+4x^2)/(1-8x+12x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092807

/-- `ogf((1-6x+4x^2)/(1-8x+12x^2))` -/
def P7830710792441340514.Spec : Prop :=
  ∀ n, P7830710792441340514.a n = A092807 n

theorem P7830710792441340514.correct : P7830710792441340514.Spec := by
  intro n
  simp only [A092807]

end A092807

/-! ## A092807.P10240648439136856490

`8*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A092807.P10240648439136856490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2)

end

end A092807.P10240648439136856490

namespace A092807

/-- `8*a(n-1)-12*a(n-2)` -/
def P10240648439136856490.Spec : Prop :=
  ∀ n, P10240648439136856490.a n = A092807 n

end A092807

/-! ## A092807.P7078050360479227676

`A124302(n)*2^n`
-/

namespace A092807.P7078050360479227676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n * (2 ^ n : ℤ)

end

end A092807.P7078050360479227676

namespace A092807

/-- `A124302(n)*2^n` -/
def P7078050360479227676.Spec : Prop :=
  ∀ n, P7078050360479227676.a n = A092807 n

end A092807

/-! ## A092807.P17681690930489081307

`2^n*ceil(3^n/6)`
-/

namespace A092807.P17681690930489081307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈(3 ^ n : ℚ) / 6⌉

end

end A092807.P17681690930489081307

namespace A092807

/-- `2^n*ceil(3^n/6)` -/
def P17681690930489081307.Spec : Prop :=
  ∀ n, P17681690930489081307.a n = A092807 n

end A092807

/-! ## A092807.P892374913890532775

`6*a(n-1)-2^n` with `a(0)=1, a(1)=2`
-/

namespace A092807.P892374913890532775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1) - (2 ^ n : ℤ)

end

end A092807.P892374913890532775

namespace A092807

/-- `6*a(n-1)-2^n` -/
def P892374913890532775.Spec : Prop :=
  ∀ n, P892374913890532775.a n = A092807 n

end A092807

/-! ## A092807.P14203682990432290398

`floor((floor(3^(n-1))+1)*2^((n-1)*floor(atan(n))))`
-/

namespace A092807.P14203682990432290398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1 : ℚ) * (2 : ℚ) ^ (((n : ℤ) - 1) * ⌊Real.arctan (n : ℝ)⌋ : ℤ)⌋

end

end A092807.P14203682990432290398

namespace A092807

/-- `floor((floor(3^(n-1))+1)*2^((n-1)*floor(atan(n))))` -/
def P14203682990432290398.Spec : Prop :=
  ∀ n, P14203682990432290398.a n = A092807 n

end A092807

/-! ## A092807.P13223115408097315262

`A131577(n)+ceil(6^(n-1))`
-/

namespace A092807.P13223115408097315262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ⌈(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A092807.P13223115408097315262

namespace A092807

/-- `A131577(n)+ceil(6^(n-1))` -/
def P13223115408097315262.Spec : Prop :=
  ∀ n, P13223115408097315262.a n = A092807 n

end A092807

/-! ## A092807.P10995860154990318297

`(A167747(n)+∑[A011782(n)])/2`
-/

namespace A092807.P10995860154990318297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167747 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A092807.P10995860154990318297

namespace A092807

/-- `(A167747(n)+∑[A011782(n)])/2` -/
def P10995860154990318297.Spec : Prop :=
  ∀ n, P10995860154990318297.a n = (A092807 n : ℚ)

end A092807

/-! ## A092807.P8734444157616634928

`abs(record[A059268(n)]*A123183(n+1))`
-/

namespace A092807.P8734444157616634928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A123183 (n + 1)|

end

end A092807.P8734444157616634928

namespace A092807

/-- `abs(record[A059268(n)]*A123183(n+1))` -/
def P8734444157616634928.Spec : Prop :=
  ∀ n, P8734444157616634928.a n = A092807 n

end A092807

/-! ## A092807.P7578436454332573884

`floor((floor(3^(n-1))+1)*A020639(A000010(n+1))^(n-1))`
-/

namespace A092807.P7578436454332573884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1 : ℚ) * (A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A092807.P7578436454332573884

namespace A092807

/-- `floor((floor(3^(n-1))+1)*A020639(A000010(n+1))^(n-1))` -/
def P7578436454332573884.Spec : Prop :=
  ∀ n, P7578436454332573884.a n = A092807 n

end A092807

/-! ## A092807.P6038443210873719269

`A011782(n)+∑[A052934(n)]-A052934(n)`
-/

namespace A092807.P6038443210873719269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (∑ j ∈ Finset.range (n + 1), f1 j - A052934 n)

end

end A092807.P6038443210873719269

namespace A092807

/-- `A011782(n)+∑[A052934(n)]-A052934(n)` -/
def P6038443210873719269.Spec : Prop :=
  ∀ n, P6038443210873719269.a n = A092807 n

end A092807

/-! ## A092807.P5533024887546358927

`∑[A052934(n)+A034008(n)]-A052934(n)`
-/

namespace A092807.P5533024887546358927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052934 n

end

end A092807.P5533024887546358927

namespace A092807

/-- `∑[A052934(n)+A034008(n)]-A052934(n)` -/
def P5533024887546358927.Spec : Prop :=
  ∀ n, P5533024887546358927.a n = A092807 n

end A092807

/-!
# A092808: Pair reversal of Jacobsthal numbers.

The programs for A092808, the canonical program `A092808.P14230957981771632332` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092808 has offset 0).

The definition of A092808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092808.P14230957981771632332

`(-2)^n/4+5*2^n/12+(-1)^n/3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092808

/-- `(-2)^n/4+5*2^n/12+(-1)^n/3` -/
def P14230957981771632332.Spec : Prop :=
  ∀ n, P14230957981771632332.a n = (A092808 n : ℚ)

end A092808

/-! ## A092808.P15541027544300357919

`ogf((1+x-x^2)/(1+x-4x^2-4x^3))`
-/

namespace A092808.P15541027544300357919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 1, -4, -4] n

end

end A092808.P15541027544300357919

namespace A092808

/-- `ogf((1+x-x^2)/(1+x-4x^2-4x^3))` -/
def P15541027544300357919.Spec : Prop :=
  ∀ n, P15541027544300357919.a n = A092808 n

end A092808

/-! ## A092808.P3024982320717272743

`A001045(xor(1, n))`
-/

namespace A092808.P3024982320717272743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.xor 1 n)

end

end A092808.P3024982320717272743

namespace A092808

/-- `A001045(xor(1, n))` -/
def P3024982320717272743.Spec : Prop :=
  ∀ n, P3024982320717272743.a n = A092808 n

end A092808

/-! ## A092808.P11665227172070361566

`A133684(2*xor(1, n))`
-/

namespace A092808.P11665227172070361566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * Nat.xor 1 n)

end

end A092808.P11665227172070361566

namespace A092808

/-- `A133684(2*xor(1, n))` -/
def P11665227172070361566.Spec : Prop :=
  ∀ n, P11665227172070361566.a n = A092808 n

end A092808

/-! ## A092808.P17687057494797814457

`A133730(xor(3, 2*n))`
-/

namespace A092808.P17687057494797814457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (Nat.xor 3 (2 * n))

end

end A092808.P17687057494797814457

namespace A092808

/-- `A133730(xor(3, 2*n))` -/
def P17687057494797814457.Spec : Prop :=
  ∀ n, P17687057494797814457.a n = A092808 n

end A092808

/-! ## A092808.P11873005421641661211

`A001045(2*or(1, n)-n-1)`
-/

namespace A092808.P11873005421641661211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((2 * Nat.lor 1 n : ℤ) - (n : ℤ) - 1).toNat

end

end A092808.P11873005421641661211

namespace A092808

/-- `A001045(2*or(1, n)-n-1)` -/
def P11873005421641661211.Spec : Prop :=
  ∀ n, P11873005421641661211.a n = A092808 n

end A092808

/-! ## A092808.P12565856970597840346

`A001045(A004442(n))`
-/

namespace A092808.P12565856970597840346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004442 n).toNat

end

end A092808.P12565856970597840346

namespace A092808

/-- `A001045(A004442(n))` -/
def P12565856970597840346.Spec : Prop :=
  ∀ n, P12565856970597840346.a n = A092808 n

end A092808

/-! ## A092808.P18394908108721694805

`A133730(A166519(n))`
-/

namespace A092808.P18394908108721694805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A166519 n).toNat

end

end A092808.P18394908108721694805

namespace A092808

/-- `A133730(A166519(n))` -/
def P18394908108721694805.Spec : Prop :=
  ∀ n, P18394908108721694805.a n = A092808 n

end A092808

/-! ## A092808.P7493672196615088591

`A133684(A166519(n)-1)`
-/

namespace A092808.P7493672196615088591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A166519 n - 1).toNat

end

end A092808.P7493672196615088591

namespace A092808

/-- `A133684(A166519(n)-1)` -/
def P7493672196615088591.Spec : Prop :=
  ∀ n, P7493672196615088591.a n = A092808 n

end A092808

/-! ## A092808.P15232025399393875138

`A133684(2*A004442(n))`
-/

namespace A092808.P15232025399393875138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * A004442 n).toNat

end

end A092808.P15232025399393875138

namespace A092808

/-- `A133684(2*A004442(n))` -/
def P15232025399393875138.Spec : Prop :=
  ∀ n, P15232025399393875138.a n = A092808 n

end A092808

/-! ## A092808.P16104607243181919372

`A001045(A033999(n)+n)`
-/

namespace A092808.P16104607243181919372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A033999 n + (n : ℤ)).toNat

end

end A092808.P16104607243181919372

namespace A092808

/-- `A001045(A033999(n)+n)` -/
def P16104607243181919372.Spec : Prop :=
  ∀ n, P16104607243181919372.a n = A092808 n

end A092808

/-! ## A092808.P15886622147325185858

`A001045(A065190(n+2)-2)`
-/

namespace A092808.P15886622147325185858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A065190 (n + 2) - 2).toNat

end

end A092808.P15886622147325185858

namespace A092808

/-- `A001045(A065190(n+2)-2)` -/
def P15886622147325185858.Spec : Prop :=
  ∀ n, P15886622147325185858.a n = A092808 n

end A092808

/-! ## A092808.P5302659252794152896

`A001045(A062157(n+1)+n)`
-/

namespace A092808.P5302659252794152896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A062157 (n + 1) + (n : ℤ)).toNat

end

end A092808.P5302659252794152896

namespace A092808

/-- `A001045(A062157(n+1)+n)` -/
def P5302659252794152896.Spec : Prop :=
  ∀ n, P5302659252794152896.a n = A092808 n

end A092808

/-! ## A092808.P7149364381399771183

`A001045(n+1-A010673(n))`
-/

namespace A092808.P7149364381399771183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n + 1 : ℤ) - A010673 n).toNat

end

end A092808.P7149364381399771183

namespace A092808

/-- `A001045(n+1-A010673(n))` -/
def P7149364381399771183.Spec : Prop :=
  ∀ n, P7149364381399771183.a n = A092808 n

end A092808

/-! ## A092808.P5551313155523753208

`A001045(n+2-A010684(n))`
-/

namespace A092808.P5551313155523753208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n + 2 : ℤ) - A010684 n).toNat

end

end A092808.P5551313155523753208

namespace A092808

/-- `A001045(n+2-A010684(n))` -/
def P5551313155523753208.Spec : Prop :=
  ∀ n, P5551313155523753208.a n = A092808 n

end A092808

/-! ## A092808.P406127708715444512

`A001045(A056594(2*n)+n)`
-/

namespace A092808.P406127708715444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A056594 (2 * n) + (n : ℤ)).toNat

end

end A092808.P406127708715444512

namespace A092808

/-- `A001045(A056594(2*n)+n)` -/
def P406127708715444512.Spec : Prop :=
  ∀ n, P406127708715444512.a n = A092808 n

end A092808

/-! ## A092808.P2886351853638185102

`A001045(A114285(n)+2*n)`
-/

namespace A092808.P2886351853638185102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A114285 n + (2 * n : ℤ)).toNat

end

end A092808.P2886351853638185102

namespace A092808

/-- `A001045(A114285(n)+2*n)` -/
def P2886351853638185102.Spec : Prop :=
  ∀ n, P2886351853638185102.a n = A092808 n

end A092808

/-! ## A092808.P17238467598651796716

`A001045(A133730(2*n)+n)`
-/

namespace A092808.P17238467598651796716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A133730 (2 * n) + (n : ℤ)).toNat

end

end A092808.P17238467598651796716

namespace A092808

/-- `A001045(A133730(2*n)+n)` -/
def P17238467598651796716.Spec : Prop :=
  ∀ n, P17238467598651796716.a n = A092808 n

end A092808

/-! ## A092808.P9269136015284860114

`A001045(A112030(2*n+1)+n)`
-/

namespace A092808.P9269136015284860114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A112030 (2 * n + 1) + (n : ℤ)).toNat

end

end A092808.P9269136015284860114

namespace A092808

/-- `A001045(A112030(2*n+1)+n)` -/
def P9269136015284860114.Spec : Prop :=
  ∀ n, P9269136015284860114.a n = A092808 n

end A092808

/-! ## A092808.P16811758445802035797

`A001045(A117569(2*n+1)+n)`
-/

namespace A092808.P16811758445802035797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A117569 (2 * n + 1) + (n : ℤ)).toNat

end

end A092808.P16811758445802035797

namespace A092808

/-- `A001045(A117569(2*n+1)+n)` -/
def P16811758445802035797.Spec : Prop :=
  ∀ n, P16811758445802035797.a n = A092808 n

end A092808

/-!
# A092809: Expansion of (1+x-x^2) / ((1-x^2)*(1-4*x^2)).

The programs for A092809, the canonical program `A092809.P15273478173038559794` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092809 has offset 0).

The definition of A092809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-5x^2+4x^4))` (program `A092809.P15273478173038559794`, by `A092809.P15273478173038559794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092809.P15273478173038559794

`ogf((1+x-x^2)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092809

/-- `ogf((1+x-x^2)/(1-5x^2+4x^4))` -/
def P15273478173038559794.Spec : Prop :=
  ∀ n, P15273478173038559794.a n = A092809 n

theorem P15273478173038559794.correct : P15273478173038559794.Spec := by
  intro n
  simp only [A092809]

end A092809

/-! ## A092809.P1853984652932138164

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A092809.P1853984652932138164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A092809.P1853984652932138164

namespace A092809

/-- `5*a(n-2)-4*a(n-4)` -/
def P1853984652932138164.Spec : Prop :=
  ∀ n, P1853984652932138164.a n = A092809 n

end A092809

/-! ## A092809.P3797073016922691071

`5*2^n/6+(-2)^n/6+(-1)^n/6-1/6`
-/

namespace A092809.P3797073016922691071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℚ) / 6 + ((-2) ^ n : ℚ) / 6 + ((-1) ^ n : ℚ) / 6 - (1 : ℚ) / 6

end

end A092809.P3797073016922691071

namespace A092809

/-- `5*2^n/6+(-2)^n/6+(-1)^n/6-1/6` -/
def P3797073016922691071.Spec : Prop :=
  ∀ n, P3797073016922691071.a n = (A092809 n : ℚ)

end A092809

/-! ## A092809.P13547134104844946961

`∑[4*a(n-2)-(-1)^n]` with `a(0)=1, a(1)=0`
-/

namespace A092809.P13547134104844946961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P13547134104844946961

namespace A092809

/-- `∑[4*a(n-2)-(-1)^n]` -/
def P13547134104844946961.Spec : Prop :=
  ∀ n, P13547134104844946961.a n = A092809 n

end A092809

/-! ## A092809.P9046413837423028174

`∑[A092808(n)]`
-/

namespace A092809.P9046413837423028174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P9046413837423028174

namespace A092809

/-- `∑[A092808(n)]` -/
def P9046413837423028174.Spec : Prop :=
  ∀ n, P9046413837423028174.a n = A092809 n

end A092809

/-! ## A092809.P4205726927478824765

`∑[A001045(xor(1, n))]`
-/

namespace A092809.P4205726927478824765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P4205726927478824765

namespace A092809

/-- `∑[A001045(xor(1, n))]` -/
def P4205726927478824765.Spec : Prop :=
  ∀ n, P4205726927478824765.a n = A092809 n

end A092809

/-! ## A092809.P14677038541598008479

`∑[abs(Δ[A080880(n)])]`
-/

namespace A092809.P14677038541598008479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P14677038541598008479

namespace A092809

/-- `∑[abs(Δ[A080880(n)])]` -/
def P14677038541598008479.Spec : Prop :=
  ∀ n, P14677038541598008479.a n = A092809 n

end A092809

/-! ## A092809.P4943303691010578645

`A135318(or(1, n)+n)`
-/

namespace A092809.P4943303691010578645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (Nat.lor 1 n + n)

end

end A092809.P4943303691010578645

namespace A092809

/-- `A135318(or(1, n)+n)` -/
def P4943303691010578645.Spec : Prop :=
  ∀ n, P4943303691010578645.a n = A092809 n

end A092809

/-! ## A092809.P14677929090471194978

`∑[xor(ceil(2^(n-1)), A084183(n))]`
-/

namespace A092809.P14677929090471194978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A084183 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P14677929090471194978

namespace A092809

/-- `∑[xor(ceil(2^(n-1)), A084183(n))]` -/
def P14677929090471194978.Spec : Prop :=
  ∀ n, P14677929090471194978.a n = A092809 n

end A092809

/-! ## A092809.P5379730394914580928

`∑[A001045(n-2*and(1, n)+1)]`
-/

namespace A092809.P5379730394914580928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) - (2 * Nat.land 1 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P5379730394914580928

namespace A092809

/-- `∑[A001045(n-2*and(1, n)+1)]` -/
def P5379730394914580928.Spec : Prop :=
  ∀ n, P5379730394914580928.a n = A092809 n

end A092809

/-! ## A092809.P5497072008413112272

`A112387(A014601(n))`
-/

namespace A092809.P5497072008413112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (A014601 n).toNat

end

end A092809.P5497072008413112272

namespace A092809

/-- `A112387(A014601(n))` -/
def P5497072008413112272.Spec : Prop :=
  ∀ n, P5497072008413112272.a n = A092809 n

end A092809

/-! ## A092809.P1660575256400904404

`∑[A001045(A004442(n))]`
-/

namespace A092809.P1660575256400904404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092809.P1660575256400904404

namespace A092809

/-- `∑[A001045(A004442(n))]` -/
def P1660575256400904404.Spec : Prop :=
  ∀ n, P1660575256400904404.a n = A092809 n

end A092809

/-! ## A092809.P16055062442063740123

`A135318(A042948(n)+1)`
-/

namespace A092809.P16055062442063740123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042948 n + 1).toNat

end

end A092809.P16055062442063740123

namespace A092809

/-- `A135318(A042948(n)+1)` -/
def P16055062442063740123.Spec : Prop :=
  ∀ n, P16055062442063740123.a n = A092809 n

end A092809

/-! ## A092809.P17455427275933109445

`A135318(A042963(n+1))`
-/

namespace A092809.P17455427275933109445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042963 (n + 1)).toNat

end

end A092809.P17455427275933109445

namespace A092809

/-- `A135318(A042963(n+1))` -/
def P17455427275933109445.Spec : Prop :=
  ∀ n, P17455427275933109445.a n = A092809 n

end A092809

/-! ## A092809.P3132795882754016628

`A375476(A047243(n+1))`
-/

namespace A092809.P3132795882754016628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A047243 (n + 1)).toNat

end

end A092809.P3132795882754016628

namespace A092809

/-- `A375476(A047243(n+1))` -/
def P3132795882754016628.Spec : Prop :=
  ∀ n, P3132795882754016628.a n = A092809 n

end A092809

/-! ## A092809.P8500540188060715674

`A375476(A244151(n+2))`
-/

namespace A092809.P8500540188060715674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A244151 (n + 2)).toNat

end

end A092809.P8500540188060715674

namespace A092809

/-- `A375476(A244151(n+2))` -/
def P8500540188060715674.Spec : Prop :=
  ∀ n, P8500540188060715674.a n = A092809 n

end A092809

/-! ## A092809.P10018244020095669526

`A285475(n)/A010684(n)`
-/

namespace A092809.P10018244020095669526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285475 n : ℚ) / (A010684 n : ℚ)

end

end A092809.P10018244020095669526

namespace A092809

/-- `A285475(n)/A010684(n)` -/
def P10018244020095669526.Spec : Prop :=
  ∀ n, P10018244020095669526.a n = (A092809 n : ℚ)

end A092809

/-! ## A092809.P13537724372517626879

`and(A051049(n), A052992(n))`
-/

namespace A092809.P13537724372517626879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A052992 n)

end

end A092809.P13537724372517626879

namespace A092809

/-- `and(A051049(n), A052992(n))` -/
def P13537724372517626879.Spec : Prop :=
  ∀ n, P13537724372517626879.a n = A092809 n

end A092809

/-! ## A092809.P9682103194156831428

`and(A052992(n), A280293(n))`
-/

namespace A092809.P9682103194156831428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052992 n) (A280293 n)

end

end A092809.P9682103194156831428

namespace A092809

/-- `and(A052992(n), A280293(n))` -/
def P9682103194156831428.Spec : Prop :=
  ∀ n, P9682103194156831428.a n = A092809 n

end A092809

/-! ## A092809.P3436021041812470706

`and(A051049(n), A283323(n))`
-/

namespace A092809.P3436021041812470706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A283323 n)

end

end A092809.P3436021041812470706

namespace A092809

/-- `and(A051049(n), A283323(n))` -/
def P3436021041812470706.Spec : Prop :=
  ∀ n, P3436021041812470706.a n = A092809 n

end A092809

/-!
# A092810: Binomial transform of a Jacobsthal trisection.

The programs for A092810, the canonical program `A092810.P2353594727514910101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092810 has offset 0).

The definition of A092810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092810.P2353594727514910101

`A000010(9^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092810

/-- `A000010(9^n)` -/
def P2353594727514910101.Spec : Prop :=
  ∀ n, P2353594727514910101.a n = A092810 n

theorem P2353594727514910101.correct : P2353594727514910101.Spec := by
  intro n
  simp only [A092810]

end A092810

/-! ## A092810.P14952100825069553640

`ogf((1-3x)/(1-9x))`
-/

namespace A092810.P14952100825069553640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -9] n

end

end A092810.P14952100825069553640

namespace A092810

/-- `ogf((1-3x)/(1-9x))` -/
def P14952100825069553640.Spec : Prop :=
  ∀ n, P14952100825069553640.a n = A092810 n

end A092810

/-! ## A092810.P14520057561954530689

`9*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A092810.P14520057561954530689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  9 * a (n - 1)

end

end A092810.P14520057561954530689

namespace A092810

/-- `9*a(n-1)` -/
def P14520057561954530689.Spec : Prop :=
  ∀ n, (P14520057561954530689.a n : ℤ) = A092810 n

end A092810

/-! ## A092810.P18168494463619419323

`ceil(2/3*9^n)`
-/

namespace A092810.P18168494463619419323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (9 ^ n : ℚ)⌉

end

end A092810.P18168494463619419323

namespace A092810

/-- `ceil(2/3*9^n)` -/
def P18168494463619419323.Spec : Prop :=
  ∀ n, P18168494463619419323.a n = A092810 n

end A092810

/-! ## A092810.P1129753228209281991

`round(lcm(2, 9^n)/3)`
-/

namespace A092810.P1129753228209281991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (9 ^ n) : ℚ) / 3)

end

end A092810.P1129753228209281991

namespace A092810

/-- `round(lcm(2, 9^n)/3)` -/
def P1129753228209281991.Spec : Prop :=
  ∀ n, P1129753228209281991.a n = A092810 n

end A092810

/-! ## A092810.P3231154115398578457

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=9`
-/

namespace A092810.P3231154115398578457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A092810.P3231154115398578457

namespace A092810

/-- `abs(∏[-a(n-1)])` -/
def P3231154115398578457.Spec : Prop :=
  ∀ n, P3231154115398578457.a n = A092810 n

end A092810

/-! ## A092810.P17971188948440512452

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=6`
-/

namespace A092810.P17971188948440512452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A092810.P17971188948440512452

namespace A092810

/-- `a(n-1)/(1/3)²` -/
def P17971188948440512452.Spec : Prop :=
  ∀ n, P17971188948440512452.a n = (A092810 n : ℚ)

end A092810

/-! ## A092810.P6125599350520092819

`A025192(2*n)`
-/

namespace A092810.P6125599350520092819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n)

end

end A092810.P6125599350520092819

namespace A092810

/-- `A025192(2*n)` -/
def P6125599350520092819.Spec : Prop :=
  ∀ n, P6125599350520092819.a n = A092810 n

end A092810

/-! ## A092810.P4997752139169996127

`A182522(4*n)`
-/

namespace A092810.P4997752139169996127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (4 * n)

end

end A092810.P4997752139169996127

namespace A092810

/-- `A182522(4*n)` -/
def P4997752139169996127.Spec : Prop :=
  ∀ n, P4997752139169996127.a n = A092810 n

end A092810

/-! ## A092810.P306727646306700403

`Δ[record[A014983(n)]]`
-/

namespace A092810.P306727646306700403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092810.P306727646306700403

namespace A092810

/-- `Δ[record[A014983(n)]]` -/
def P306727646306700403.Spec : Prop :=
  ∀ n, P306727646306700403.a n = A092810 n

end A092810

/-! ## A092810.P13006226837073346630

`Δ[record[A084222(n)]]`
-/

namespace A092810.P13006226837073346630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092810.P13006226837073346630

namespace A092810

/-- `Δ[record[A084222(n)]]` -/
def P13006226837073346630.Spec : Prop :=
  ∀ n, P13006226837073346630.a n = A092810 n

end A092810

/-! ## A092810.P10339834062131903126

`floor(A199559(n)/3)`
-/

namespace A092810.P10339834062131903126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199559 n : ℚ) / 3⌋

end

end A092810.P10339834062131903126

namespace A092810

/-- `floor(A199559(n)/3)` -/
def P10339834062131903126.Spec : Prop :=
  ∀ n, P10339834062131903126.a n = A092810 n

end A092810

/-! ## A092810.P9214931488783266557

`A052919(2*n)-1`
-/

namespace A092810.P9214931488783266557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (2 * n) - 1

end

end A092810.P9214931488783266557

namespace A092810

/-- `A052919(2*n)-1` -/
def P9214931488783266557.Spec : Prop :=
  ∀ n, P9214931488783266557.a n = A092810 n

end A092810

/-! ## A092810.P13889357299742576315

`A154992(Δ[n²])+1`
-/

namespace A092810.P13889357299742576315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A092810.P13889357299742576315

namespace A092810

/-- `A154992(Δ[n²])+1` -/
def P13889357299742576315.Spec : Prop :=
  ∀ n, P13889357299742576315.a n = A092810 n

end A092810

/-! ## A092810.P2140094142015885060

`A110593(Δ[n²])/3`
-/

namespace A092810.P2140094142015885060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A092810.P2140094142015885060

namespace A092810

/-- `A110593(Δ[n²])/3` -/
def P2140094142015885060.Spec : Prop :=
  ∀ n, P2140094142015885060.a n = (A092810 n : ℚ)

end A092810

/-! ## A092810.P11665333870438948708

`Δ[record[1-A084567(n)]]`
-/

namespace A092810.P11665333870438948708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092810.P11665333870438948708

namespace A092810

/-- `Δ[record[1-A084567(n)]]` -/
def P11665333870438948708.Spec : Prop :=
  ∀ n, P11665333870438948708.a n = A092810 n

end A092810

/-! ## A092810.P13000344564845670056

`∑[A257970(2*n+1)]`
-/

namespace A092810.P13000344564845670056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092810.P13000344564845670056

namespace A092810

/-- `∑[A257970(2*n+1)]` -/
def P13000344564845670056.Spec : Prop :=
  ∀ n, P13000344564845670056.a n = A092810 n

end A092810

/-! ## A092810.P12017183858438099278

`A025579(2*(n+1))/2`
-/

namespace A092810.P12017183858438099278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025579 (2 * (n + 1)) : ℚ) / 2

end

end A092810.P12017183858438099278

namespace A092810

/-- `A025579(2*(n+1))/2` -/
def P12017183858438099278.Spec : Prop :=
  ∀ n, P12017183858438099278.a n = (A092810 n : ℚ)

end A092810

/-! ## A092810.P14752376886173388929

`A202337(2*(n+1))/2`
-/

namespace A092810.P14752376886173388929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202337 (2 * (n + 1)) : ℚ) / 2

end

end A092810.P14752376886173388929

namespace A092810

/-- `A202337(2*(n+1))/2` -/
def P14752376886173388929.Spec : Prop :=
  ∀ n, P14752376886173388929.a n = (A092810 n : ℚ)

end A092810

/-! ## A092810.P13619313189147462682

`A188825(2*n+1)/8`
-/

namespace A092810.P13619313189147462682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188825 (2 * n + 1) : ℚ) / 8

end

end A092810.P13619313189147462682

namespace A092810

/-- `A188825(2*n+1)/8` -/
def P13619313189147462682.Spec : Prop :=
  ∀ n, P13619313189147462682.a n = (A092810 n : ℚ)

end A092810

/-!
# A092811: Expansion of g.f. (1-4*x)/(1-8*x).

The programs for A092811, the canonical program `A092811.P667196124275537396` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092811 has offset 0).

The definition of A092811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-8x))` (program `A092811.P667196124275537396`, by `A092811.P667196124275537396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092811.P667196124275537396

`ogf((1-4x)/(1-8x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092811

/-- `ogf((1-4x)/(1-8x))` -/
def P667196124275537396.Spec : Prop :=
  ∀ n, P667196124275537396.a n = A092811 n

theorem P667196124275537396.correct : P667196124275537396.Spec := by
  intro n
  simp only [A092811]

end A092811

/-! ## A092811.P3621618092570687861

`A000010(8^n)`
-/

namespace A092811.P3621618092570687861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (8 ^ n)

end

end A092811.P3621618092570687861

namespace A092811

/-- `A000010(8^n)` -/
def P3621618092570687861.Spec : Prop :=
  ∀ n, P3621618092570687861.a n = A092811 n

end A092811

/-! ## A092811.P14164750141300893528

`record[(n%3)^n]`
-/

namespace A092811.P14164750141300893528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092811.P14164750141300893528

namespace A092811

/-- `record[(n%3)^n]` -/
def P14164750141300893528.Spec : Prop :=
  ∀ n, (P14164750141300893528.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P15903093621139277249

`8*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A092811.P15903093621139277249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * a (n - 1)

end

end A092811.P15903093621139277249

namespace A092811

/-- `8*a(n-1)` -/
def P15903093621139277249.Spec : Prop :=
  ∀ n, (P15903093621139277249.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P12535725541496361910

`ceil(2^(3*n-1))`
-/

namespace A092811.P12535725541496361910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ)⌉

end

end A092811.P12535725541496361910

namespace A092811

/-- `ceil(2^(3*n-1))` -/
def P12535725541496361910.Spec : Prop :=
  ∀ n, P12535725541496361910.a n = A092811 n

end A092811

/-! ## A092811.P13622257535716532626

`2^comp[∑[gcd(2, n+1)]]`
-/

namespace A092811.P13622257535716532626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A092811.P13622257535716532626

namespace A092811

/-- `2^comp[∑[gcd(2, n+1)]]` -/
def P13622257535716532626.Spec : Prop :=
  ∀ n, (P13622257535716532626.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P2526113726442323738

`2^comp[∑[(n+1)%3]]`
-/

namespace A092811.P2526113726442323738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A092811.P2526113726442323738

namespace A092811

/-- `2^comp[∑[(n+1)%3]]` -/
def P2526113726442323738.Spec : Prop :=
  ∀ n, (P2526113726442323738.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P17126925774241635743

`2^(floor(3/acot(n))-1)`
-/

namespace A092811.P17126925774241635743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℤ)

end

end A092811.P17126925774241635743

namespace A092811

/-- `2^(floor(3/acot(n))-1)` -/
def P17126925774241635743.Spec : Prop :=
  ∀ n, P17126925774241635743.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P9740725232768548278

`2^(ceil(3/acot(n))-2)`
-/

namespace A092811.P9740725232768548278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - 2 : ℤ)

end

end A092811.P9740725232768548278

namespace A092811

/-- `2^(ceil(3/acot(n))-2)` -/
def P9740725232768548278.Spec : Prop :=
  ∀ n, P9740725232768548278.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P16772312395271416620

`2^(comp[lcm(2, n+1)]+n)`
-/

namespace A092811.P16772312395271416620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A092811.P16772312395271416620

namespace A092811

/-- `2^(comp[lcm(2, n+1)]+n)` -/
def P16772312395271416620.Spec : Prop :=
  ∀ n, (P16772312395271416620.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P4244933704730465568

`2^comp[a(n-2)+3]` with `a(0)=1, a(1)=3`
-/

namespace A092811.P4244933704730465568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A092811.P4244933704730465568

namespace A092811

/-- `2^comp[a(n-2)+3]` -/
def P4244933704730465568.Spec : Prop :=
  ∀ n, (P4244933704730465568.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P2185042670793603676

`2^comp[∑[3-a(n-1)]]` with `a(0)=1`
-/

namespace A092811.P2185042670793603676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092811.P2185042670793603676

namespace A092811

/-- `2^comp[∑[3-a(n-1)]]` -/
def P2185042670793603676.Spec : Prop :=
  ∀ n, (P2185042670793603676.a n : ℤ) = A092811 n

end A092811

/-! ## A092811.P8447063523022763742

`a(n-1)/(1/2)^3` with `a(0)=1, a(1)=4`
-/

namespace A092811.P8447063523022763742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A092811.P8447063523022763742

namespace A092811

/-- `a(n-1)/(1/2)^3` -/
def P8447063523022763742.Spec : Prop :=
  ∀ n, P8447063523022763742.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P11468568454401976203

`2^((3*n-1)%(n+1)²)`
-/

namespace A092811.P11468568454401976203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((3 * n : ℤ) - 1) ((n + 1) ^ 2 : ℤ) : ℤ)

end

end A092811.P11468568454401976203

namespace A092811

/-- `2^((3*n-1)%(n+1)²)` -/
def P11468568454401976203.Spec : Prop :=
  ∀ n, P11468568454401976203.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P2656793598586213067

`round(2^(or(1, 2*n)+n-2))`
-/

namespace A092811.P2656793598586213067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.lor 1 (2 * n) : ℤ) + ((n : ℤ) - 2) : ℤ))

end

end A092811.P2656793598586213067

namespace A092811

/-- `round(2^(or(1, 2*n)+n-2))` -/
def P2656793598586213067.Spec : Prop :=
  ∀ n, P2656793598586213067.a n = A092811 n

end A092811

/-! ## A092811.P4843306953364360383

`round(2^(xor(1, 2*n)+n-2))`
-/

namespace A092811.P4843306953364360383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.xor 1 (2 * n) : ℤ) + ((n : ℤ) - 2) : ℤ))

end

end A092811.P4843306953364360383

namespace A092811

/-- `round(2^(xor(1, 2*n)+n-2))` -/
def P4843306953364360383.Spec : Prop :=
  ∀ n, P4843306953364360383.a n = A092811 n

end A092811

/-! ## A092811.P6127456395145560238

`round(2^(lcm(n, 2*n)+n-1))`
-/

namespace A092811.P6127456395145560238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.lcm n (2 * n) : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A092811.P6127456395145560238

namespace A092811

/-- `round(2^(lcm(n, 2*n)+n-1))` -/
def P6127456395145560238.Spec : Prop :=
  ∀ n, P6127456395145560238.a n = A092811 n

end A092811

/-! ## A092811.P9861294018824392824

`2^((n-1)%(n+1)+2*n)`
-/

namespace A092811.P9861294018824392824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + (2 * n : ℤ) : ℤ)

end

end A092811.P9861294018824392824

namespace A092811

/-- `2^((n-1)%(n+1)+2*n)` -/
def P9861294018824392824.Spec : Prop :=
  ∀ n, P9861294018824392824.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P11207210048584754455

`a(n-1)/(1/3)²-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A092811.P11207210048584754455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - a (n - 1)

end

end A092811.P11207210048584754455

namespace A092811

/-- `a(n-1)/(1/3)²-a(n-1)` -/
def P11207210048584754455.Spec : Prop :=
  ∀ n, P11207210048584754455.a n = (A092811 n : ℚ)

end A092811

/-! ## A092811.P8536711393082580898

`round(2^(and(2*n+1, 2*n)+n-1))`
-/

namespace A092811.P8536711393082580898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A092811.P8536711393082580898

namespace A092811

/-- `round(2^(and(2*n+1, 2*n)+n-1))` -/
def P8536711393082580898.Spec : Prop :=
  ∀ n, P8536711393082580898.a n = A092811 n

end A092811

/-!
# A092812: Number of closed walks of length 2*n on the 4-cube.

The programs for A092812, the canonical program `A092812.P5473523020524607757` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092812 has offset 0).

The definition of A092812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092812.P5473523020524607757

`20*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=4, a(2)=40`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092812

/-- `20*a(n-1)-64*a(n-2)` -/
def P5473523020524607757.Spec : Prop :=
  ∀ n, P5473523020524607757.a n = A092812 n

theorem P5473523020524607757.correct : P5473523020524607757.Spec := by
  intro n
  simp only [A092812]

end A092812

/-! ## A092812.P17521304552530132057

`floor((4^n+2)²/8)`
-/

namespace A092812.P17521304552530132057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 ^ n + 2) ^ 2 : ℚ) / 8⌋

end

end A092812.P17521304552530132057

namespace A092812

/-- `floor((4^n+2)²/8)` -/
def P17521304552530132057.Spec : Prop :=
  ∀ n, P17521304552530132057.a n = A092812 n

end A092812

/-! ## A092812.P86697928706942702

`record[((4^n+4^((n+1)/2))/2)^(n%2)]`
-/

namespace A092812.P86697928706942702
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((4 ^ n : ℝ) + (4 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)) / 2) ^ (n % 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092812.P86697928706942702

namespace A092812

/-- `record[((4^n+4^((n+1)/2))/2)^(n%2)]` -/
def P86697928706942702.Spec : Prop :=
  ∀ n, P86697928706942702.a n = (A092812 n : ℝ)

end A092812

/-! ## A092812.P116611271364526160

`A032121(record[gcd(n, ∑[n])])`
-/

namespace A092812.P116611271364526160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A092812.P116611271364526160

namespace A092812

/-- `A032121(record[gcd(n, ∑[n])])` -/
def P116611271364526160.Spec : Prop :=
  ∀ n, P116611271364526160.a n = A092812 n

end A092812

/-! ## A092812.P13899640614202589858

`A032121(comp[2*(n+1)])`
-/

namespace A092812.P13899640614202589858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092812.P13899640614202589858

namespace A092812

/-- `A032121(comp[2*(n+1)])` -/
def P13899640614202589858.Spec : Prop :=
  ∀ n, P13899640614202589858.a n = A092812 n

end A092812

/-! ## A092812.P15814972381850210648

`record[A032121(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A092812.P15814972381850210648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A032121 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092812.P15814972381850210648

namespace A092812

/-- `record[A032121(C(n, a(n-1)))]` -/
def P15814972381850210648.Spec : Prop :=
  ∀ n, P15814972381850210648.a n = A092812 n

end A092812

/-! ## A092812.P496804909741144338

`record[A032121(A026741(n))]`
-/

namespace A092812.P496804909741144338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092812.P496804909741144338

namespace A092812

/-- `record[A032121(A026741(n))]` -/
def P496804909741144338.Spec : Prop :=
  ∀ n, P496804909741144338.a n = A092812 n

end A092812

/-! ## A092812.P9585992669384673882

`A081294(n)*A123166(n)`
-/

namespace A092812.P9585992669384673882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A123166 n

end

end A092812.P9585992669384673882

namespace A092812

/-- `A081294(n)*A123166(n)` -/
def P9585992669384673882.Spec : Prop :=
  ∀ n, P9585992669384673882.a n = A092812 n

end A092812

/-! ## A092812.P12950608518109911102

`record[and(A032121(n), A033999(n))]`
-/

namespace A092812.P12950608518109911102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032121 n) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092812.P12950608518109911102

namespace A092812

/-- `record[and(A032121(n), A033999(n))]` -/
def P12950608518109911102.Spec : Prop :=
  ∀ n, P12950608518109911102.a n = A092812 n

end A092812

/-! ## A092812.P10172336823096257395

`record[and(A032121(n), A122803(n))]`
-/

namespace A092812.P10172336823096257395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032121 n) (A122803 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092812.P10172336823096257395

namespace A092812

/-- `record[and(A032121(n), A122803(n))]` -/
def P10172336823096257395.Spec : Prop :=
  ∀ n, P10172336823096257395.a n = A092812 n

end A092812

/-!
# A092816: Number of Sophie Germain primes less than 10^n.

The programs for A092816, there is no canonical definition to state claims against.
-/

/-! ## A092816.P8311728873784634864

`A307121(n+1)+A307176(n+1)+1`
-/

namespace A092816.P8311728873784634864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307121 (n + 1) + (A307176 (n + 1) + 1)

end

end A092816.P8311728873784634864

/-! ## A092816.P10381103969867279285

`A307121(n+1)+A014681(A307176(n+1))`
-/

namespace A092816.P10381103969867279285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307121 (n + 1) + A014681 (A307176 (n + 1)).toNat

end

end A092816.P10381103969867279285

/-!
# A092820: a(0) = 1; for n>0, a(n) = 16 times sum of cubes of divisors of n.

The programs for A092820, there is no canonical definition to state claims against.
-/

/-! ## A092820.P18084315750955427670

`ceil(A004009(n)/15)`
-/

namespace A092820.P18084315750955427670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004009 n : ℚ) / 15⌉

end

end A092820.P18084315750955427670

/-! ## A092820.P10582197683197566943

`ceil(A023920(9*n)/15)`
-/

namespace A092820.P10582197683197566943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023920 (9 * n) : ℚ) / 15⌉

end

end A092820.P10582197683197566943

/-! ## A092820.P18126344036760675555

`ceil(A028579(16*n)/15)`
-/

namespace A092820.P18126344036760675555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028579 (16 * n) : ℚ) / 15⌉

end

end A092820.P18126344036760675555

/-! ## A092820.P8605941140908270492

`ceil(A072839(18*n)/15)`
-/

namespace A092820.P8605941140908270492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072839 (18 * n) : ℚ) / 15⌉

end

end A092820.P8605941140908270492

/-! ## A092820.P11735318185921182800

`ceil((A035016(2*n)+2*A007331(4*n))/15)`
-/

namespace A092820.P11735318185921182800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035016 (2 * n) + 2 * A007331 (4 * n) : ℚ) / 15⌉

end

end A092820.P11735318185921182800

/-!
# A092821: Table read by rows: T(n,k)= z (z') or product of z with its complex conjugate, with z=Sum[binomial[n,t] I^t, {t,0,k}].

The programs for A092821, there is no canonical definition to state claims against.
-/

/-! ## A092821.P16798336271064282658

`A351831(A203647(n+1)+A008459(n))`
-/

namespace A092821.P16798336271064282658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A203647 (n + 1) + A008459 n).toNat

end

end A092821.P16798336271064282658

/-! ## A092821.P10615618592567392359

`A204330(A030237(n+1)*A091351(n))`
-/

namespace A092821.P10615618592567392359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A030237 (n + 1) * A091351 n).toNat

end

end A092821.P10615618592567392359

/-! ## A092821.P1436874897817335106

`A004525(A250229(n+1)^A331160(n))`
-/

namespace A092821.P1436874897817335106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A250229 (n + 1) : ℚ) ^ (A331160 n : ℤ))).toNat

end

end A092821.P1436874897817335106

/-!
# A092822: Row sums of A092821.

The programs for A092822, there is no canonical definition to state claims against.
-/

/-! ## A092822.P3899114217126662976

`2^n-n*A158495(n)`
-/

namespace A092822.P3899114217126662976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ) * A158495 n

end

end A092822.P3899114217126662976

/-! ## A092822.P3094236292232797627

`2^n+n*(A000079(n)-A158499(n))`
-/

namespace A092822.P3094236292232797627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (n : ℤ) * (A000079 n - A158499 n)

end

end A092822.P3094236292232797627

/-!
# A092824: Farey-factorial numerators.

The programs for A092824, there is no canonical definition to state claims against.
-/

/-! ## A092824.P14872169870840365299

`record[A093594(floor(lcm(2, n)/4)+1)]`
-/

namespace A092824.P14872169870840365299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092824.P14872169870840365299

/-! ## A092824.P11386273574709652856

`record[A093594(A020986(n))]`
-/

namespace A092824.P11386273574709652856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092824.P11386273574709652856

/-! ## A092824.P13106734259213800060

`record[A093594(A052938(n))]`
-/

namespace A092824.P13106734259213800060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092824.P13106734259213800060

/-! ## A092824.P11206817324627850650

`record[A093594(A065648(n))]`
-/

namespace A092824.P11206817324627850650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092824.P11206817324627850650

/-! ## A092824.P3005260566560838099

`record[A093594(A126759(n))]`
-/

namespace A092824.P3005260566560838099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092824.P3005260566560838099

/-!
# A092825: Indices of prime Apéry numbers.

The programs for A092825, there is no canonical definition to state claims against.
-/

/-! ## A092825.P14148323219765831421

`A174018(a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A092825.P14148323219765831421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A174018 (a (n - 2) + 1).toNat

end

end A092825.P14148323219765831421

/-!
# A092834: Coefficients of a solution to a functional equation.

The programs for A092834, there is no canonical definition to state claims against.
-/

/-! ## A092834.P4374290195505208863

`A033183(A116685(n+1)+A022372(n))`
-/

namespace A092834.P4374290195505208863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A116685 (n + 1) + A022372 n).toNat

end

end A092834.P4374290195505208863

/-! ## A092834.P17357291090406990511

`A293644(n)-A037912(A000079(n))`
-/

namespace A092834.P17357291090406990511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A037912 (A000079 n).toNat

end

end A092834.P17357291090406990511

/-!
# A092835: Indices of prime tribonacci numbers, minus 1.

The programs for A092835, there is no canonical definition to state claims against.
-/

/-! ## A092835.P9583510563706964694

`A122991(n+1)+1`
-/

namespace A092835.P9583510563706964694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122991 (n + 1) + 1

end

end A092835.P9583510563706964694

/-! ## A092835.P14492822277805984144

`A303263(n+1)-1`
-/

namespace A092835.P14492822277805984144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (n + 1) - 1

end

end A092835.P14492822277805984144

/-! ## A092835.P12541439965984079279

`record[A303263(A324347(n))-1]`
-/

namespace A092835.P12541439965984079279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092835.P12541439965984079279

/-! ## A092835.P12870080680197821158

`record[A303263(A328399(n))-1]`
-/

namespace A092835.P12870080680197821158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092835.P12870080680197821158

/-! ## A092835.P5091626410779930067

`A319200(A027023(n))+A303263(n+1)`
-/

namespace A092835.P5091626410779930067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 (A027023 n).toNat + A303263 (n + 1)

end

end A092835.P5091626410779930067

/-!
# A092837: Indices of terms in the series for sec(x) that have prime numerators.

The programs for A092837, there is no canonical definition to state claims against.
-/

/-! ## A092837.P15124658745430188473

`∑[A050315(A295268(n))]+1`
-/

namespace A092837.P15124658745430188473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A295268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092837.P15124658745430188473

/-! ## A092837.P15810595165765411765

`∑[A343668(A192986(n))]+1`
-/

namespace A092837.P15810595165765411765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343668 (A192986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092837.P15810595165765411765

/-!
# A092839: Indices of primes in A001003.

The programs for A092839, there is no canonical definition to state claims against.
-/

/-! ## A092839.P10708639811417709069

`a(n-2)^3` with `a(0)=3, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A092839.P10708639811417709069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6, 10] fun n a =>
  a (n - 2) ^ 3

end

end A092839.P10708639811417709069

/-!
# A092841: Numerator of I(n) = Integral_{x=0..1/(4^n)} (1-sqrt(x))^2 dx; e.g., I(3) = 323/24576. The denominator is b(n) = 96*16^(n-1); e.g., b(3) = 24576.

The programs for A092841, the canonical program `A092841.P3749542624451235503` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092841 has offset 0).

The definition of A092841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092841.P7695016087134836071

`∑[ogf((1+4x+4x^2)/(1-6x+8x^2))]`
-/

namespace A092841.P7695016087134836071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092841.P7695016087134836071

namespace A092841

/-- `∑[ogf((1+4x+4x^2)/(1-6x+8x^2))]` -/
def P7695016087134836071.Spec : Prop :=
  ∀ n, P7695016087134836071.a n = A092841 n

end A092841

/-! ## A092841.P3749542624451235503

`2*Δ[(2-2^n)²]+3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092841

/-- `2*Δ[(2-2^n)²]+3` -/
def P3749542624451235503.Spec : Prop :=
  ∀ n, P3749542624451235503.a n = A092841 n

theorem P3749542624451235503.correct : P3749542624451235503.Spec := by
  intro n
  simp only [A092841]

end A092841

/-! ## A092841.P3413068230955664540

`∑[4*(a(n-1)+2^n)]` with `a(0)=1, a(1)=10`
-/

namespace A092841.P3413068230955664540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  4 * (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092841.P3413068230955664540

namespace A092841

/-- `∑[4*(a(n-1)+2^n)]` -/
def P3413068230955664540.Spec : Prop :=
  ∀ n, (P3413068230955664540.a n : ℤ) = A092841 n

end A092841

/-! ## A092841.P13804788623657531661

`round(lcm(6*2^n-5, ∑[2^n])/2)`
-/

namespace A092841.P13804788623657531661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm ((6 * 2 ^ n : ℤ) - 5) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2)

end

end A092841.P13804788623657531661

namespace A092841

/-- `round(lcm(6*2^n-5, ∑[2^n])/2)` -/
def P13804788623657531661.Spec : Prop :=
  ∀ n, P13804788623657531661.a n = A092841 n

end A092841

/-! ## A092841.P18188481963110294379

`ceil(2*A169721(n)/3)`
-/

namespace A092841.P18188481963110294379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A169721 n : ℚ) / 3⌉

end

end A092841.P18188481963110294379

namespace A092841

/-- `ceil(2*A169721(n)/3)` -/
def P18188481963110294379.Spec : Prop :=
  ∀ n, P18188481963110294379.a n = A092841 n

end A092841

/-! ## A092841.P7562667301314959006

`(A272706(n+1)-3)/2`
-/

namespace A092841.P7562667301314959006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272706 (n + 1) - 3 : ℚ) / 2

end

end A092841.P7562667301314959006

namespace A092841

/-- `(A272706(n+1)-3)/2` -/
def P7562667301314959006.Spec : Prop :=
  ∀ n, P7562667301314959006.a n = (A092841 n : ℚ)

end A092841

/-! ## A092841.P3390958941894232285

`(A388424(n)+A000079(n))/A000079(n+1)`
-/

namespace A092841.P3390958941894232285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388424 n + A000079 n : ℚ) / (A000079 (n + 1) : ℚ)

end

end A092841.P3390958941894232285

namespace A092841

/-- `(A388424(n)+A000079(n))/A000079(n+1)` -/
def P3390958941894232285.Spec : Prop :=
  ∀ n, P3390958941894232285.a n = (A092841 n : ℚ)

theorem P3390958941894232285.correct : P3390958941894232285.Spec := by
  intro n
  simp only [A092841, Nat.add_sub_cancel, A092841.P3390958941894232285.a, A092841.P3749542624451235503.f1, A092841.P3749542624451235503.a, A000079, A000079.P10855139691139572931.a, A388424, A388424.P17691383906920712434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092841

/-!
# A092842: a(n) is the solution of the equation A073666(x) = n (A073666(a(n)) = n).

The programs for A092842, there is no canonical definition to state claims against.
-/

/-! ## A092842.P14226403501389658120

`A117923(A073666(n+1)%A050286(n+1))`
-/

namespace A092842.P14226403501389658120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (Int.tmod (A073666 (n + 1)) (A050286 (n + 1))).toNat

end

end A092842.P14226403501389658120

/-! ## A092842.P17103733170094522254

`A117923(A073666(n+1))%A113350(3*n+1)`
-/

namespace A092842.P17103733170094522254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117923 (A073666 (n + 1)).toNat) (A113350 (3 * n + 1))

end

end A092842.P17103733170094522254

/-!
# A092843: a(n) = Sum_{k|n, k>1} phi(k-1), where phi() is the Euler phi function.

The programs for A092843, the canonical program `A092843.P4025589053211159302` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092843 has offset 1).

The definition of A092843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092843.P4025589053211159302

`∑{d}[n+1, A000010(A038566(A002088(#)))]-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092843

/-- `∑{d}[n+1, A000010(A038566(A002088(#)))]-1` -/
def P4025589053211159302.Spec : Prop :=
  ∀ n, P4025589053211159302.a n = A092843 (n + 1)

theorem P4025589053211159302.correct : P4025589053211159302.Spec := by
  intro n
  simp only [A092843, Nat.add_sub_cancel]

end A092843

/-! ## A092843.P14757212333481876760

`∑{d}[n+1, A000010(A047110(A000217(#)+1))]-1`
-/

namespace A092843.P14757212333481876760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A047110 (A000217 d + 1).toNat).toNat - 1

end

end A092843.P14757212333481876760

namespace A092843

/-- `∑{d}[n+1, A000010(A047110(A000217(#)+1))]-1` -/
def P14757212333481876760.Spec : Prop :=
  ∀ n, P14757212333481876760.a n = A092843 (n + 1)

end A092843

/-! ## A092843.P2866436204615281155

`∑{d}[n+1, A324104(A005940(#))]`
-/

namespace A092843.P2866436204615281155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324104 (A005940 d).toNat

end

end A092843.P2866436204615281155

namespace A092843

/-- `∑{d}[n+1, A324104(A005940(#))]` -/
def P2866436204615281155.Spec : Prop :=
  ∀ n, P2866436204615281155.a n = A092843 (n + 1)

end A092843

/-! ## A092843.P5146560388661266592

`∑{d}[n+1, A000010(A000196(A002061(#)))]-1`
-/

namespace A092843.P5146560388661266592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A000196 (A002061 d).toNat).toNat - 1

end

end A092843.P5146560388661266592

namespace A092843

/-- `∑{d}[n+1, A000010(A000196(A002061(#)))]-1` -/
def P5146560388661266592.Spec : Prop :=
  ∀ n, P5146560388661266592.a n = A092843 (n + 1)

end A092843

/-!
# A092844: a(n) = Sum_{k=1..n} prime(k)*10^(k-1).

The programs for A092844, there is no canonical definition to state claims against.
-/

/-! ## A092844.P11261671952737025537

`∑[10^n*p?[comp[n²]]]`
-/

namespace A092844.P11261671952737025537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P11261671952737025537

/-! ## A092844.P6701511067234668558

`∑[10^n*A000040(n+1)]`
-/

namespace A092844.P6701511067234668558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P6701511067234668558

/-! ## A092844.P6742896873654627131

`∑[10^n*record[A006530(n+2)]]`
-/

namespace A092844.P6742896873654627131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P6742896873654627131

/-! ## A092844.P15986036037192469233

`∑[10^n*record[A014963(n+2)]]`
-/

namespace A092844.P15986036037192469233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P15986036037192469233

/-! ## A092844.P1890464183826563361

`∑[10^n*record[A020639(n+2)]]`
-/

namespace A092844.P1890464183826563361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P1890464183826563361

/-! ## A092844.P6724721615426448383

`∑[(record[A000010(n+1)]+1)*10^n]`
-/

namespace A092844.P6724721615426448383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P6724721615426448383

/-! ## A092844.P16064056779786132555

`∑[Δ[A007504(n)]*A011557(n)]`
-/

namespace A092844.P16064056779786132555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P16064056779786132555

/-! ## A092844.P14007440208880309902

`∑[p?[A007989(n)]*A011557(n)]`
-/

namespace A092844.P14007440208880309902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P14007440208880309902

/-! ## A092844.P13788270268065646050

`∑[p?[A014681(n)]*A011557(n)]`
-/

namespace A092844.P13788270268065646050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P13788270268065646050

/-! ## A092844.P8427687730803613304

`∑[A000040(n+1)*A011557(n)]`
-/

namespace A092844.P8427687730803613304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092844.P8427687730803613304

/-!
# A092845: A011545(n) reversed.

The programs for A092845, there is no canonical definition to state claims against.
-/

/-! ## A092845.P15682278810359483673

`A004086(A011545(n))`
-/

namespace A092845.P15682278810359483673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A011545 n).toNat

end

end A092845.P15682278810359483673

/-! ## A092845.P12554346529197436192

`∑[10^n*A000796(n)]`
-/

namespace A092845.P12554346529197436192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P12554346529197436192

/-! ## A092845.P3953292348365638076

`∑[A000796(n)*A011557(n)]`
-/

namespace A092845.P3953292348365638076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P3953292348365638076

/-! ## A092845.P864434708265542954

`∑[Δ[A059582(n)]*A011557(n)]`
-/

namespace A092845.P864434708265542954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P864434708265542954

/-! ## A092845.P2145504685667472464

`∑[A000796(n)*A017934(2*n)]`
-/

namespace A092845.P2145504685667472464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A017934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P2145504685667472464

/-! ## A092845.P18069050575509874452

`∑[A001355(2*n+1)*A011557(n)]`
-/

namespace A092845.P18069050575509874452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P18069050575509874452

/-! ## A092845.P8955180516547777242

`∑[A011557(n)*A110766(2*n+1)]`
-/

namespace A092845.P8955180516547777242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P8955180516547777242

/-! ## A092845.P10364673366189741219

`∑[A000796(n)*A038303(∑[n])]`
-/

namespace A092845.P10364673366189741219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A038303 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092845.P10364673366189741219

/-!
# A092846: a(n) = 100...001^n, where there are just enough zeros for the result to display the terms in the n-th row of Pascal's triangle.

The programs for A092846, there is no canonical definition to state claims against.
-/

/-! ## A092846.P12540854801821660683

`p?[A278038(A337636(n))]^n`
-/

namespace A092846.P12540854801821660683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A337636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ n

end

end A092846.P12540854801821660683

/-! ## A092846.P17328097190652497981

`p?[A136400(A270999(n+1))]^n`
-/

namespace A092846.P17328097190652497981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A270999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ n

end

end A092846.P17328097190652497981

/-! ## A092846.P7324766930124756742

`A064490(and(A116362(2^n), A279135(n)))^n`
-/

namespace A092846.P7324766930124756742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064490 (Int.land (A116362 (2 ^ n)) (A279135 n)).toNat ^ n

end

end A092846.P7324766930124756742

/-!
# A092847: a(n) = Sum_{k=1..n} round(prime(k) / log(prime(k))).

The programs for A092847, the canonical program `A092847.P13850959851202236546` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092847 has offset 1).

The definition of A092847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092847.P13850959851202236546

`∑[A002036(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092847

/-- `∑[A002036(n+1)]` -/
def P13850959851202236546.Spec : Prop :=
  ∀ n, P13850959851202236546.a n = A092847 (n + 1)

theorem P13850959851202236546.correct : P13850959851202236546.Spec := by
  intro n
  simp only [A092847, Nat.add_sub_cancel]

end A092847

/-! ## A092847.P3293268494547186360

`∑[1-A064662(n+1)+n]`
-/

namespace A092847.P3293268494547186360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064662 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P3293268494547186360

namespace A092847

/-- `∑[1-A064662(n+1)+n]` -/
def P3293268494547186360.Spec : Prop :=
  ∀ n, P3293268494547186360.a n = A092847 (n + 1)

theorem P3293268494547186360.correct : P3293268494547186360.Spec := by
  intro n
  simp only [A092847, Nat.add_sub_cancel, A092847.P3293268494547186360.f1, A092847.P3293268494547186360.a, A092847.P13850959851202236546.f1, A092847.P13850959851202236546.a, A002036, A002036.P16723521533802060613.a, A064662, A064662.P1971353401508973041.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092847

/-! ## A092847.P13733357426686970294

`∑[A050499(Δ[A007504(n)])]`
-/

namespace A092847.P13733357426686970294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P13733357426686970294

namespace A092847

/-- `∑[A050499(Δ[A007504(n)])]` -/
def P13733357426686970294.Spec : Prop :=
  ∀ n, P13733357426686970294.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P15268982198969071441

`∑[A050499(A000040(n+1))]`
-/

namespace A092847.P15268982198969071441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P15268982198969071441

namespace A092847

/-- `∑[A050499(A000040(n+1))]` -/
def P15268982198969071441.Spec : Prop :=
  ∀ n, P15268982198969071441.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P11320687841233894580

`∑[A050499(A008578(n+2))]`
-/

namespace A092847.P11320687841233894580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P11320687841233894580

namespace A092847

/-- `∑[A050499(A008578(n+2))]` -/
def P11320687841233894580.Spec : Prop :=
  ∀ n, P11320687841233894580.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P15624845175810975611

`∑[A050499(A116974(n+2))]`
-/

namespace A092847.P15624845175810975611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A116974 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P15624845175810975611

namespace A092847

/-- `∑[A050499(A116974(n+2))]` -/
def P15624845175810975611.Spec : Prop :=
  ∀ n, P15624845175810975611.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P8976537350000765471

`∑[A050499(A175787(n+2))]`
-/

namespace A092847.P8976537350000765471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A175787 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P8976537350000765471

namespace A092847

/-- `∑[A050499(A175787(n+2))]` -/
def P8976537350000765471.Spec : Prop :=
  ∀ n, P8976537350000765471.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P14109853806778643555

`∑[A050499(A182986(n+2))]`
-/

namespace A092847.P14109853806778643555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A182986 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P14109853806778643555

namespace A092847

/-- `∑[A050499(A182986(n+2))]` -/
def P14109853806778643555.Spec : Prop :=
  ∀ n, P14109853806778643555.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P15535697457584327193

`∑[A050499(A040976(n+1)+2)]`
-/

namespace A092847.P15535697457584327193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P15535697457584327193

namespace A092847

/-- `∑[A050499(A040976(n+1)+2)]` -/
def P15535697457584327193.Spec : Prop :=
  ∀ n, P15535697457584327193.a n = A092847 (n + 1)

end A092847

/-! ## A092847.P15887999444886233252

`∑[A050499(A137922(n+2))]`
-/

namespace A092847.P15887999444886233252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A137922 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092847.P15887999444886233252

namespace A092847

/-- `∑[A050499(A137922(n+2))]` -/
def P15887999444886233252.Spec : Prop :=
  ∀ n, P15887999444886233252.a n = A092847 (n + 1)

end A092847

/-!
# A092848: Expansion of reciprocal of Hauptmodul for Gamma_0(18).

The programs for A092848, there is no canonical definition to state claims against.
-/

/-! ## A092848.P5061595509221919079

`(-1)^n*A128111(n)`
-/

namespace A092848.P5061595509221919079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128111 n

end

end A092848.P5061595509221919079

/-! ## A092848.P10595952462745243773

`A062242(2*n+1)`
-/

namespace A092848.P10595952462745243773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (2 * n + 1)

end

end A092848.P10595952462745243773

/-! ## A092848.P5879020396271512596

`A263526(Δ[n²])/3`
-/

namespace A092848.P5879020396271512596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A092848.P5879020396271512596

/-! ## A092848.P1846587088963371070

`-A062244(2*n+1)`
-/

namespace A092848.P1846587088963371070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062244 (2 * n + 1)

end

end A092848.P1846587088963371070

/-! ## A092848.P2053568312708011974

`A000007(n+1)-A062244(2*n+1)`
-/

namespace A092848.P2053568312708011974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A062244 (2 * n + 1)

end

end A092848.P2053568312708011974

/-! ## A092848.P14065315816637822512

`1-(A062244(2*n+1)+A010684(2*n))`
-/

namespace A092848.P14065315816637822512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A062244 (2 * n + 1) + A010684 (2 * n))

end

end A092848.P14065315816637822512

/-! ## A092848.P14546244368485749865

`1-(A062244(2*n+1)+A033999(2*n))`
-/

namespace A092848.P14546244368485749865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A062244 (2 * n + 1) + A033999 (2 * n))

end

end A092848.P14546244368485749865

/-! ## A092848.P9530215389858231315

`A033999(2*n+1)*A062244(2*n+1)`
-/

namespace A092848.P9530215389858231315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A062244 (2 * n + 1)

end

end A092848.P9530215389858231315

/-! ## A092848.P6440355595816282014

`A004526(2*n)-(A062244(2*n+1)+n)`
-/

namespace A092848.P6440355595816282014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n) - (A062244 (2 * n + 1) + (n : ℤ))

end

end A092848.P6440355595816282014

/-! ## A092848.P6210343523020541328

`2-(A062244(2*n+1)+A020639(2*(n+1)))`
-/

namespace A092848.P6210343523020541328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A062244 (2 * n + 1) + A020639 (2 * (n + 1)))

end

end A092848.P6210343523020541328

/-! ## A092848.P11084640635890621391

`A263526(2*n+1)+2*A062244(2*n+1)`
-/

namespace A092848.P11084640635890621391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263526 (2 * n + 1) + 2 * A062244 (2 * n + 1)

end

end A092848.P11084640635890621391

/-! ## A092848.P16584442988179622858

`A132301(2*n+1)/(A033999(2*n+1)-2)`
-/

namespace A092848.P16584442988179622858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A092848.P16584442988179622858

/-! ## A092848.P9101262070875494865

`A062244(A001511(2*n+1))*A062244(2*n+1)`
-/

namespace A092848.P9101262070875494865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (A001511 (2 * n + 1)).toNat * A062244 (2 * n + 1)

end

end A092848.P9101262070875494865

/-! ## A092848.P9364891387372295003

`A139032(3*n+1)`
-/

namespace A092848.P9364891387372295003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 (3 * n + 1)

end

end A092848.P9364891387372295003

/-!
# A092849: Number of primes <= A092800(n).

The programs for A092849, there is no canonical definition to state claims against.
-/

/-! ## A092849.P583247902795317805

`A000720(A092800(n+1))`
-/

namespace A092849.P583247902795317805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A092800 (n + 1)).toNat

end

end A092849.P583247902795317805

/-! ## A092849.P3050271036387733326

`A092851(n+1)+A092850(n+1)`
-/

namespace A092849.P3050271036387733326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092851 (n + 1) + A092850 (n + 1)

end

end A092849.P3050271036387733326

/-! ## A092849.P7989269938840171840

`A006880(n+1)-A092850(n+1)`
-/

namespace A092849.P7989269938840171840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A092850 (n + 1)

end

end A092849.P7989269938840171840

/-! ## A092849.P17475156402710390128

`A122121(2*(n+1))-A092850(n+1)`
-/

namespace A092849.P17475156402710390128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A092850 (n + 1)

end

end A092849.P17475156402710390128

/-! ## A092849.P6585789490696349161

`A092850(A077168(n))+A006880(n+1)%A092850(n+1)`
-/

namespace A092849.P6585789490696349161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092850 (A077168 n).toNat + Int.tmod (A006880 (n + 1)) (A092850 (n + 1))

end

end A092849.P6585789490696349161

/-!
# A092850: Number of primes between A092800(n) and 10^n.

The programs for A092850, there is no canonical definition to state claims against.
-/

/-! ## A092850.P6630057835615608659

`A006880(n+1)-A092849(n+1)`
-/

namespace A092850.P6630057835615608659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A092849 (n + 1)

end

end A092850.P6630057835615608659

/-! ## A092850.P2969985013879797226

`A092849(n+1)-A092851(n+1)`
-/

namespace A092850.P2969985013879797226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092849 (n + 1) - A092851 (n + 1)

end

end A092850.P2969985013879797226

/-! ## A092850.P12067868767403796760

`∑[A006879(n+1)]-A092849(n+1)`
-/

namespace A092850.P12067868767403796760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092849 (n + 1)

end

end A092850.P12067868767403796760

/-! ## A092850.P7376405475962411092

`A122121(2*(n+1))-A092849(n+1)`
-/

namespace A092850.P7376405475962411092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A092849 (n + 1)

end

end A092850.P7376405475962411092

/-!
# A092851: Difference in count of primes <= mean and > mean below 10^n in A092849 and A092850.

The programs for A092851, there is no canonical definition to state claims against.
-/

/-! ## A092851.P1648292374664669368

`A092849(n+1)-A092850(n+1)`
-/

namespace A092851.P1648292374664669368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092849 (n + 1) - A092850 (n + 1)

end

end A092851.P1648292374664669368

/-! ## A092851.P12555555051476706697

`A006880(n+1)%A092850(n+1)`
-/

namespace A092851.P12555555051476706697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006880 (n + 1)) (A092850 (n + 1))

end

end A092851.P12555555051476706697

/-! ## A092851.P18183088512609236056

`2*A092849(n+1)-A006880(n+1)`
-/

namespace A092851.P18183088512609236056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092849 (n + 1) - A006880 (n + 1)

end

end A092851.P18183088512609236056

/-! ## A092851.P9572481057725077143

`A092849(n+1)-(∑[A006879(n+1)]-A092849(n+1))`
-/

namespace A092851.P9572481057725077143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092849 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A092849 (n + 1))

end

end A092851.P9572481057725077143

/-! ## A092851.P3590729128413652551

`A092849(A000027(n+1))-(A006880(n+1)-A092849(n+1))`
-/

namespace A092851.P3590729128413652551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092849 (A000027 (n + 1)).toNat - (A006880 (n + 1) - A092849 (n + 1))

end

end A092851.P3590729128413652551

/-!
# A092852: Number of composites <= A092802(n).

The programs for A092852, there is no canonical definition to state claims against.
-/

/-! ## A092852.P2548821105325447849

`A092802(n+1)-A000720(A092802(n+1))-1`
-/

namespace A092852.P2548821105325447849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092802 (n + 1) - A000720 (A092802 (n + 1)).toNat - 1

end

end A092852.P2548821105325447849

/-! ## A092852.P6006228831276816909

`A092853(n+1)-A092854(n+1)`
-/

namespace A092852.P6006228831276816909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092853 (n + 1) - A092854 (n + 1)

end

end A092852.P6006228831276816909

/-! ## A092852.P16252605416840025942

`A092871(n+1)-A092853(n+1)`
-/

namespace A092852.P16252605416840025942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092871 (n + 1) - A092853 (n + 1)

end

end A092852.P16252605416840025942

/-! ## A092852.P14547592047428392248

`A065894(n+1)-(A092853(n+1)+1)`
-/

namespace A092852.P14547592047428392248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 (n + 1) - (A092853 (n + 1) + 1)

end

end A092852.P14547592047428392248

/-!
# A092853: Number of composites > mean composite (=A092802(n)) below 10^n.

The programs for A092853, there is no canonical definition to state claims against.
-/

/-! ## A092853.P10376523607525276645

`A092871(n+1)-A092852(n+1)`
-/

namespace A092853.P10376523607525276645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092871 (n + 1) - A092852 (n + 1)

end

end A092853.P10376523607525276645

/-! ## A092853.P10919023272989415005

`A065894(n+1)-1-A092852(n+1)`
-/

namespace A092853.P10919023272989415005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 (n + 1) - 1 - A092852 (n + 1)

end

end A092853.P10919023272989415005

/-! ## A092853.P16667552133827967328

`A092854(n+1)+A092852(n+1)`
-/

namespace A092853.P16667552133827967328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092854 (n + 1) + A092852 (n + 1)

end

end A092853.P16667552133827967328

/-! ## A092853.P17359973617137926127

`A092852(A291769(n))+A092871(n+1)%A092852(n+1)`
-/

namespace A092853.P17359973617137926127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092852 (A291769 n).toNat + Int.tmod (A092871 (n + 1)) (A092852 (n + 1))

end

end A092853.P17359973617137926127

/-!
# A092854: Difference between number of composites > and <= mean (=A092802(n)) below 10^n.

The programs for A092854, there is no canonical definition to state claims against.
-/

/-! ## A092854.P12835009046864887978

`A092853(n+1)-A092852(n+1)`
-/

namespace A092854.P12835009046864887978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092853 (n + 1) - A092852 (n + 1)

end

end A092854.P12835009046864887978

/-! ## A092854.P5760268616239645703

`A092871(n+1)%A092852(n+1)`
-/

namespace A092854.P5760268616239645703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092871 (n + 1)) (A092852 (n + 1))

end

end A092854.P5760268616239645703

/-! ## A092854.P2216859204449085829

`A092853(A031285(n))%A092852(n+1)`
-/

namespace A092854.P2216859204449085829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092853 (A031285 n).toNat) (A092852 (n + 1))

end

end A092854.P2216859204449085829

/-! ## A092854.P17660149581105678450

`A092853(n+1)%A092852(A291769(n))`
-/

namespace A092854.P17660149581105678450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092853 (n + 1)) (A092852 (A291769 n).toNat)

end

end A092854.P17660149581105678450

/-! ## A092854.P18440940835116262407

`A092853(A348553(n))%A092852(n+1)`
-/

namespace A092854.P18440940835116262407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092853 (A348553 n).toNat) (A092852 (n + 1))

end

end A092854.P18440940835116262407

/-!
# A092855: Numbers k such that the k-th bit in the binary expansion of sqrt(2) - 1 is 1: sqrt(2) - 1 = Sum_{n>=1} 1/2^a(n).

The programs for A092855, there is no canonical definition to state claims against.
-/

/-! ## A092855.P14383663803896571562

`comp[A320985(n+1)-1]+1`
-/

namespace A092855.P14383663803896571562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092855.P14383663803896571562

/-! ## A092855.P17358607515177706990

`∪[A246358(n+1), A247356(n+1)]`
-/

namespace A092855.P17358607515177706990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092855.P17358607515177706990

/-! ## A092855.P6454919077071375065

`∪[A247457(n+1), A247458(n+1)]`
-/

namespace A092855.P6454919077071375065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092855.P6454919077071375065

/-! ## A092855.P7210281600777683800

`∪[A247633(n+1), A247634(n+1)]`
-/

namespace A092855.P7210281600777683800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092855.P7210281600777683800

/-! ## A092855.P8138729546701190672

`∪[A293762(n+1), A293764(n+1)]`
-/

namespace A092855.P8138729546701190672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092855.P8138729546701190672

/-! ## A092855.P10544806544540381315

`A004713(n+2)-1`
-/

namespace A092855.P10544806544540381315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 2) - 1

end

end A092855.P10544806544540381315

/-! ## A092855.P13977381125618020274

`∑[abs(Δ[A004713(n+1)])]`
-/

namespace A092855.P13977381125618020274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092855.P13977381125618020274

/-! ## A092855.P9685710414990326042

`lt[acot(n), A004539(n+1)]`
-/

namespace A092855.P9685710414990326042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A092855.P9685710414990326042

/-! ## A092855.P14827875594849306933

`eq[1, A004539(n+2)]+1`
-/

namespace A092855.P14827875594849306933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092855.P14827875594849306933

/-! ## A092855.P10499975932072390724

`A023443(A004713(n+2))`
-/

namespace A092855.P10499975932072390724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004713 (n + 2)).toNat

end

end A092855.P10499975932072390724

/-! ## A092855.P9085737486454226222

`eq[A004539(n+1), A054977(n)]`
-/

namespace A092855.P9085737486454226222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092855.P9085737486454226222

/-! ## A092855.P727140591794575812

`eq[A004539(n+1), A057427(n)]`
-/

namespace A092855.P727140591794575812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092855.P727140591794575812

/-! ## A092855.P6431619494913354025

`eq[A004539(n+1), A141044(n)]`
-/

namespace A092855.P6431619494913354025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092855.P6431619494913354025

/-! ## A092855.P10836573940113630169

`eq[A004539(n+1), A158388(n)]`
-/

namespace A092855.P10836573940113630169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092855.P10836573940113630169

/-! ## A092855.P1796219564377888945

`lt[1/A028310(n), A004539(n+1)]`
-/

namespace A092855.P1796219564377888945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A028310 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A092855.P1796219564377888945

/-! ## A092855.P10695723596797407973

`lt[1/A247324(n+1), A004539(n+1)]`
-/

namespace A092855.P10695723596797407973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A247324 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A092855.P10695723596797407973

/-! ## A092855.P5066339908125672637

`lt[1/A247459(n+1), A004539(n+1)]`
-/

namespace A092855.P5066339908125672637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A247459 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A092855.P5066339908125672637

/-! ## A092855.P3539003212496831056

`lt[acot(n), floor(sqrt(2)*2^n)%2]`
-/

namespace A092855.P3539003212496831056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A092855.P3539003212496831056

/-! ## A092855.P13388065324979856824

`log2(Δ[A099972(n)])`
-/

namespace A092855.P13388065324979856824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099972 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A092855.P13388065324979856824

/-! ## A092855.P18080422322327391208

`floor(log2(A099972(n+1)))`
-/

namespace A092855.P18080422322327391208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A099972 (n + 1)).toNat

end

end A092855.P18080422322327391208

/-!
# A092857: Representation of 1/sqrt(2*Pi) by an infinite sequence.

The programs for A092857, there is no canonical definition to state claims against.
-/

/-! ## A092857.P3208399985755722450

`lt[3, dr(A090801(∑[2*(n+1)])-1)]`
-/

namespace A092857.P3208399985755722450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090801 (∑ j ∈ Finset.range (n + 1), f3 j) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092857.P3208399985755722450

/-!
# A092858: "Sum" of the sequences of primes and the triangular numbers (A000217).

The programs for A092858, there is no canonical definition to state claims against.
-/

/-! ## A092858.P7289972745513900175

`∪[p?[2*n+5], ∑[n+2]+4+n]`
-/

namespace A092858.P7289972745513900175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 4 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A092858.P7289972745513900175

/-! ## A092858.P17133680833352583727

`∪[A215848(n+1), C(n+4, 2)]`
-/

namespace A092858.P17133680833352583727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092858.P17133680833352583727

/-! ## A092858.P60663403692634982

`∪[A000040(n+3), C(n+4, 2)]`
-/

namespace A092858.P60663403692634982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A092858.P60663403692634982

/-! ## A092858.P17140435538062238960

`∪[C(n+4, 2), record[A006530(n+5)]]`
-/

namespace A092858.P17140435538062238960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P17140435538062238960

/-! ## A092858.P4015508281540494500

`∪[A000217(n+3), p?[A267872(n)]]`
-/

namespace A092858.P4015508281540494500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P4015508281540494500

/-! ## A092858.P156124665604725452

`∪[A000040(n+3), A000217(n+3)]`
-/

namespace A092858.P156124665604725452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P156124665604725452

/-! ## A092858.P10208264790334050072

`∪[C(A020705(n), 2), A000040(n+3)]`
-/

namespace A092858.P10208264790334050072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020705 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P10208264790334050072

/-! ## A092858.P7509709164241222740

`∪[A000096(n+2)+1, A000040(n+3)]`
-/

namespace A092858.P7509709164241222740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P7509709164241222740

/-! ## A092858.P15680426330704085520

`∪[A034856(n+2)+2, A000040(n+3)]`
-/

namespace A092858.P15680426330704085520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P15680426330704085520

/-! ## A092858.P17466543599262420555

`∪[A000040(n+3), A167614(n+2)-3]`
-/

namespace A092858.P17466543599262420555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 2) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092858.P17466543599262420555

/-!
# A092859: "Difference" of the sequences of triangular numbers (A000217) and the primes (cf. A092858).

The programs for A092859, there is no canonical definition to state claims against.
-/

/-! ## A092859.P15441928739942143613

`lt[A006877(A294775(3*n)), A262626(n+1)]`
-/

namespace A092859.P15441928739942143613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006877 (A294775 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092859.P15441928739942143613

/-!
# A092860: "3 times the prime sequence".

The programs for A092860, there is no canonical definition to state claims against.
-/

/-! ## A092860.P18206317006732422626

`lt[n+1, ∑{p}[∑[n], #]]`
-/

namespace A092860.P18206317006732422626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092860.P18206317006732422626

/-! ## A092860.P1573006202293333321

`lt[1, ∑{p}[∑[n], #]-n]`
-/

namespace A092860.P1573006202293333321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092860.P1573006202293333321

/-! ## A092860.P15089844660361856598

`p?[or(1, n+3)]-n%2`
-/

namespace A092860.P15089844660361856598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A092860.P15089844660361856598

/-! ## A092860.P497887339286617729

`p?[or(1, n+3)]-and(1, n)`
-/

namespace A092860.P497887339286617729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (Nat.land 1 n : ℤ)

end

end A092860.P497887339286617729

/-! ## A092860.P15454533614947371041

`xor(and(1, n), p?[or(1, n+3)])`
-/

namespace A092860.P15454533614947371041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092860.P15454533614947371041

/-! ## A092860.P4108407513094632282

`A173919(n+3)`
-/

namespace A092860.P4108407513094632282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 3)

end

end A092860.P4108407513094632282

/-! ## A092860.P16850122068728120792

`record[A119257(n+3)]`
-/

namespace A092860.P16850122068728120792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092860.P16850122068728120792

/-! ## A092860.P4757856494893660094

`A111688(n+2)-1`
-/

namespace A092860.P4757856494893660094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 2) - 1

end

end A092860.P4757856494893660094

/-! ## A092860.P17155646788621212630

`A093515(n+3)-1`
-/

namespace A092860.P17155646788621212630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 3) - 1

end

end A092860.P17155646788621212630

/-! ## A092860.P16930612991912071397

`floor(sqrt(A385186(n+3)))`
-/

namespace A092860.P16930612991912071397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A385186 (n + 3))

end

end A092860.P16930612991912071397

/-!
# A092864: Greatest common divisor of triples a,b,c such that a < b < c, (a*b) mod (a+b) = c, (b*c) mod (b+c) = a, (c*a) mod (c+a) = b. The triples are ordered according to sum of first and second component.

The programs for A092864, there is no canonical definition to state claims against.
-/

/-! ## A092864.P9214231506914342264

`gcd(A092817(n+1), A092818(n+1))`
-/

namespace A092864.P9214231506914342264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092817 (n + 1)) (A092818 (n + 1))

end

end A092864.P9214231506914342264

/-! ## A092864.P12663362971622500176

`gcd(lcm(2, A092817(n+1)), A092819(n+1))`
-/

namespace A092864.P12663362971622500176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 2 (A092817 (n + 1)) : ℤ) (A092819 (n + 1))

end

end A092864.P12663362971622500176

/-! ## A092864.P3546103389162570395

`gcd(A092817(A000027(n+1)), A092819(n+1))`
-/

namespace A092864.P3546103389162570395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092817 (A000027 (n + 1)).toNat) (A092819 (n + 1))

end

end A092864.P3546103389162570395

/-!
# A092865: Nonzero elements in Klee's identity Sum[(-1)^k binomial[n,k]binomial[n+k,m],{k,0,n}] == (-1)^n binomial[n,m-n].

The programs for A092865, the canonical program `A092865.P9800871042429563602` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092865 has offset 0).

The definition of A092865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092865.P7999935418970439035

`A033999(A322832(n))*A098925(n)`
-/

namespace A092865.P7999935418970439035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A322832 n).toNat * A098925 n

end

end A092865.P7999935418970439035

namespace A092865

/-- `A033999(A322832(n))*A098925(n)` -/
def P7999935418970439035.Spec : Prop :=
  ∀ n, P7999935418970439035.a n = A092865 n

end A092865

/-! ## A092865.P9800871042429563602

`A007318(A091995(n+1)-1)/A033999(A322832(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092865

/-- `A007318(A091995(n+1)-1)/A033999(A322832(n))` -/
def P9800871042429563602.Spec : Prop :=
  ∀ n, P9800871042429563602.a n = (A092865 n : ℚ)

end A092865

/-! ## A092865.P395420641238787158

`A185331(comp[n²]+n)`
-/

namespace A092865.P395420641238787158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A092865.P395420641238787158

namespace A092865

/-- `A185331(comp[n²]+n)` -/
def P395420641238787158.Spec : Prop :=
  ∀ n, P395420641238787158.a n = A092865 n

end A092865

/-! ## A092865.P9675368675412814965

`A033999(A322832(n))*A284938(A274428(n+1))`
-/

namespace A092865.P9675368675412814965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A322832 n).toNat * A284938 (A274428 (n + 1)).toNat

end

end A092865.P9675368675412814965

namespace A092865

/-- `A033999(A322832(n))*A284938(A274428(n+1))` -/
def P9675368675412814965.Spec : Prop :=
  ∀ n, P9675368675412814965.a n = A092865 n

end A092865

/-! ## A092865.P8508579020177695998

`A284938(A274428(n+1))/A033999(A322832(n)²)`
-/

namespace A092865.P8508579020177695998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284938 (A274428 (n + 1)).toNat : ℚ) / (A033999 (A322832 n ^ 2).toNat : ℚ)

end

end A092865.P8508579020177695998

namespace A092865

/-- `A284938(A274428(n+1))/A033999(A322832(n)²)` -/
def P8508579020177695998.Spec : Prop :=
  ∀ n, P8508579020177695998.a n = (A092865 n : ℚ)

end A092865

/-! ## A092865.P8024451521123396310

`A007318(A090894(n))*A033999(A322832(n))`
-/

namespace A092865.P8024451521123396310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A090894 n).toNat * A033999 (A322832 n).toNat

end

end A092865.P8024451521123396310

namespace A092865

/-- `A007318(A090894(n))*A033999(A322832(n))` -/
def P8024451521123396310.Spec : Prop :=
  ∀ n, P8024451521123396310.a n = A092865 n

end A092865

/-! ## A092865.P17124652565703081017

`A007318(A090894(n))/A033999(A322832(n)²)`
-/

namespace A092865.P17124652565703081017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A090894 n).toNat : ℚ) / (A033999 (A322832 n ^ 2).toNat : ℚ)

end

end A092865.P17124652565703081017

namespace A092865

/-- `A007318(A090894(n))/A033999(A322832(n)²)` -/
def P17124652565703081017.Spec : Prop :=
  ∀ n, P17124652565703081017.a n = (A092865 n : ℚ)

end A092865

/-!
# A092866: Number of intersections inside an equilateral triangular figure formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts. If three or more lines meet at an interior point this intersection is counted only once.

The programs for A092866, there is no canonical definition to state claims against.
-/

/-! ## A092866.P2975637658649378617

`A274585(n+1)-3*(n+1)`
-/

namespace A092866.P2975637658649378617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) - (3 * (n + 1) : ℤ)

end

end A092866.P2975637658649378617

/-! ## A092866.P3237274618630806791

`A274585(n+1)+n-A004767(n)`
-/

namespace A092866.P3237274618630806791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) + (n : ℤ) - A004767 n

end

end A092866.P3237274618630806791

/-! ## A092866.P6009412721608609559

`A274585(n+1)-1-Δ[A005449(n)]`
-/

namespace A092866.P6009412721608609559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) - 1 - (f1 (n + 1) - f1 n)

end

end A092866.P6009412721608609559

/-! ## A092866.P844986474153240996

`A274585(n+1)+1-A016777(n+1)`
-/

namespace A092866.P844986474153240996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) + 1 - A016777 (n + 1)

end

end A092866.P844986474153240996

/-! ## A092866.P9624659731450269960

`A274585(n+1)-2-(A005408(n)+n)`
-/

namespace A092866.P9624659731450269960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274585 (n + 1) - 2 - (A005408 n + (n : ℤ))

end

end A092866.P9624659731450269960

/-! ## A092866.P9504508276295321640

`A274586(n+1)-(A092867(n+1)+A016789(n))`
-/

namespace A092866.P9504508276295321640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274586 (n + 1) - (A092867 (n + 1) + A016789 n)

end

end A092866.P9504508276295321640

/-! ## A092866.P2417182076369355490

`A274586(n+1)%(A016789(n)+A274586(n+1)+1-A274585(n+1))`
-/

namespace A092866.P2417182076369355490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274586 (n + 1)) (A016789 n + (A274586 (n + 1) + (1 - A274585 (n + 1))))

end

end A092866.P2417182076369355490

/-!
# A092867: Number of regions in an equilateral triangular figure formed by the straight line segments connecting all vertices and all points that divide the sides into n equal parts.

The programs for A092867, there is no canonical definition to state claims against.
-/

/-! ## A092867.P9374524475089570654

`A274586(n+1)-A274585(n+1)+1`
-/

namespace A092867.P9374524475089570654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274586 (n + 1) - A274585 (n + 1) + 1

end

end A092867.P9374524475089570654

/-! ## A092867.P18297954948016677583

`A274586(n+1)-(A092866(n+1)+A016789(n))`
-/

namespace A092867.P18297954948016677583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274586 (n + 1) - (A092866 (n + 1) + A016789 n)

end

end A092867.P18297954948016677583

/-! ## A092867.P14033535695913970713

`A367323(∑[n]+3)`
-/

namespace A092867.P14033535695913970713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367323 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A092867.P14033535695913970713

/-! ## A092867.P135665131144653127

`record[A010054(n)*A367323(n+3)]`
-/

namespace A092867.P135665131144653127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A367323 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092867.P135665131144653127

/-! ## A092867.P1563633919065176354

`record[A367323(n+3)/A008288(n)]`
-/

namespace A092867.P1563633919065176354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367323 (n + 3) : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092867.P1563633919065176354

/-!
# A092868: Coefficients c[r,n] in Schmidt's problem Sum[Binomial[n,k]^r Binomial[n+k,k]^r,{k,0,n}] == Sum[Binomial[n,k]Binomial[n+k,k]c[r,k],{k,0,n}] for r=4.

The programs for A092868, there is no canonical definition to state claims against.
-/

/-! ## A092868.P8182241291398773961

`A094424(∑[n+4]+3)`
-/

namespace A092868.P8182241291398773961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A092868.P8182241291398773961

/-! ## A092868.P16052084295863557028

`record[A094424(A198464(n+1)-1)]`
-/

namespace A092868.P16052084295863557028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092868.P16052084295863557028

/-! ## A092868.P4002401680106385854

`record[A094424(eq[1, A247505(n+1)])]`
-/

namespace A092868.P4002401680106385854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092868.P4002401680106385854

/-!
# A092869: Series expansion of the Ramanujan-Goellnitz-Gordon continued fraction.

The programs for A092869, there is no canonical definition to state claims against.
-/

/-! ## A092869.P829509671586781900

`A208274(2*n+1)-A230534(n)`
-/

namespace A092869.P829509671586781900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (2 * n + 1) - A230534 n

end

end A092869.P829509671586781900

/-! ## A092869.P16150743264536587201

`A208274(2*n+1)-A230535(Δ[n²])`
-/

namespace A092869.P16150743264536587201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (2 * n + 1) - A230535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092869.P16150743264536587201

/-!
# A092871: Number of composites < 10^n.

The programs for A092871, there is no canonical definition to state claims against.
-/

/-! ## A092871.P11530309992222299118

`floor(A065894(n)-atan(atan(n)))`
-/

namespace A092871.P11530309992222299118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065894 n : ℝ) - Real.arctan (Real.arctan (n : ℝ))⌋

end

end A092871.P11530309992222299118

/-! ## A092871.P1639560587625318467

`A065894(n)+A057428(n)`
-/

namespace A092871.P1639560587625318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n + A057428 n

end

end A092871.P1639560587625318467

/-! ## A092871.P2339249427711773424

`A065894(n)-char[A007318(n)]`
-/

namespace A092871.P2339249427711773424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092871.P2339249427711773424

/-! ## A092871.P14129477224076762646

`A065894(n)-char[A028920(n)]`
-/

namespace A092871.P14129477224076762646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092871.P14129477224076762646

/-! ## A092871.P2417749788750958135

`A065894(n)-char[A065648(n)]`
-/

namespace A092871.P2417749788750958135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092871.P2417749788750958135

/-!
# A092873: Prime factors of the odd terms of A007755.

The programs for A092873, there is no canonical definition to state claims against.
-/

/-! ## A092873.P13634771971469430326

`A007755(A293715(n+2))`
-/

namespace A092873.P13634771971469430326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A293715 (n + 2)).toNat

end

end A092873.P13634771971469430326

/-! ## A092873.P17638612472159711617

`A007755(A136040(n+1)+2)`
-/

namespace A092873.P17638612472159711617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A136040 (n + 1) + 2).toNat

end

end A092873.P17638612472159711617

/-! ## A092873.P17509162448259461530

`A060611(A136040(n+1)+2)`
-/

namespace A092873.P17509162448259461530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060611 (A136040 (n + 1) + 2).toNat

end

end A092873.P17509162448259461530

/-! ## A092873.P9255541885506144836

`record[A007755(n+3)%A098196(n+3)]`
-/

namespace A092873.P9255541885506144836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007755 (n + 3)) (A098196 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092873.P9255541885506144836

/-! ## A092873.P8838362771620266600

`record[gcd(A007755(n+3), A060611(n+3))]`
-/

namespace A092873.P8838362771620266600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007755 (n + 3)) (A060611 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092873.P8838362771620266600

/-!
# A092875: Aronson transform of the "evil" sequence (A001969).

The programs for A092875, there is no canonical definition to state claims against.
-/

/-! ## A092875.P5468507435515341310

`A227177(A153786(n)+A000032(n))`
-/

namespace A092875.P5468507435515341310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A153786 n + A000032 n).toNat

end

end A092875.P5468507435515341310

/-! ## A092875.P9446661723868554017

`A227177(A153786(n)+A062724(n))`
-/

namespace A092875.P9446661723868554017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A153786 n + A062724 n).toNat

end

end A092875.P9446661723868554017

/-!
# A092876: Expansion of q * (f(-q, -q^12) * f(-q^3, -q^10) * f(-q^4, -q^9)) / (f(-q^2, -q^11) * f(-q^5, -q^8) * f(-q^6, -q^7)) in powers of q where f(, ) is Ramanujan's general theta function.

The programs for A092876, there is no canonical definition to state claims against.
-/

/-! ## A092876.P1771866192421131049

`A117165(A006530(n+1)*A178932(n))`
-/

namespace A092876.P1771866192421131049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (A006530 (n + 1) * A178932 n).toNat

end

end A092876.P1771866192421131049

/-!
# A092877: Expansion of (eta(q^4) / eta(q))^8 in powers of q.

The programs for A092877, there is no canonical definition to state claims against.
-/

/-! ## A092877.P3195908259453795026

`abs(A005798(n+1))`
-/

namespace A092877.P3195908259453795026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005798 (n + 1)|

end

end A092877.P3195908259453795026

/-! ## A092877.P17553177900780628218

`A005798(n+1)/A007248(n)*A112144(n)`
-/

namespace A092877.P17553177900780628218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A007248 n : ℚ) * (A112144 n : ℚ)

end

end A092877.P17553177900780628218

/-! ## A092877.P7217689827490491145

`A005798(n+1)/A014969(n)*A139820(n)`
-/

namespace A092877.P7217689827490491145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A014969 n : ℚ) * (A139820 n : ℚ)

end

end A092877.P7217689827490491145

/-! ## A092877.P631068538247917609

`A107035(2*(n+1))/4`
-/

namespace A092877.P631068538247917609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (2 * (n + 1)) : ℚ) / 4

end

end A092877.P631068538247917609

/-! ## A092877.P7090969303227849532

`A014972(n+1)/A036453(n+2)²²`
-/

namespace A092877.P7090969303227849532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 (n + 1) : ℚ) / ((A036453 (n + 2) ^ 2) ^ 2 : ℚ)

end

end A092877.P7090969303227849532

/-! ## A092877.P3627931848463661318

`A005798(n+1)/A014972(n+1)*A115977(n+1)`
-/

namespace A092877.P3627931848463661318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A014972 (n + 1) : ℚ) * (A115977 (n + 1) : ℚ)

end

end A092877.P3627931848463661318

/-! ## A092877.P14413913857954119183

`A005798(n+1)/A014972(n)*A128692(n)`
-/

namespace A092877.P14413913857954119183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A014972 n : ℚ) * (A128692 n : ℚ)

end

end A092877.P14413913857954119183

/-! ## A092877.P13124294466041879796

`A005798(n+1)/A001936(n)*A079006(n)`
-/

namespace A092877.P13124294466041879796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A001936 n : ℚ) * (A079006 n : ℚ)

end

end A092877.P13124294466041879796

/-! ## A092877.P8669198807707110318

`A005798(2*n+1)/A014972(2*n+1)*A014972(n+1)`
-/

namespace A092877.P8669198807707110318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (2 * n + 1) : ℚ) / (A014972 (2 * n + 1) : ℚ) * (A014972 (n + 1) : ℚ)

end

end A092877.P8669198807707110318

/-!
# A092878: Number of initial odd numbers in class n of the iterated phi function.

The programs for A092878, there is no canonical definition to state claims against.
-/

/-! ## A092878.P9038978917770411759

`A079066(A308246(n+1))+A000041(n)`
-/

namespace A092878.P9038978917770411759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (A308246 (n + 1)).toNat + A000041 n

end

end A092878.P9038978917770411759

/-! ## A092878.P16884987380208746040

`or(A060951(n+1), A088481(A008638(n)))`
-/

namespace A092878.P16884987380208746040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060951 (n + 1)) (A088481 (A008638 n).toNat)

end

end A092878.P16884987380208746040

/-! ## A092878.P16584263798340443124

`A266775(n)+A070109(A000108(n))`
-/

namespace A092878.P16584263798340443124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266775 n + A070109 (A000108 n).toNat

end

end A092878.P16584263798340443124

/-! ## A092878.P15081534374515744203

`A373297(n)+A285963(A016755(n))`
-/

namespace A092878.P15081534374515744203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373297 n + A285963 (A016755 n).toNat

end

end A092878.P15081534374515744203

/-! ## A092878.P8472664549190562147

`A373297(n)+A285963(A285947(n+2))`
-/

namespace A092878.P8472664549190562147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373297 n + A285963 (A285947 (n + 2)).toNat

end

end A092878.P8472664549190562147

/-!
# A092879: Triangle of coefficients of the product of two consecutive Fibonacci polynomials.

The programs for A092879, the canonical program `A092879.P3272304402820809810` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092879 has offset 0).

The definition of A092879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092879.P7186597359841569840

`A158909(∑[2*n]%comp[∑[n]])`
-/

namespace A092879.P7186597359841569840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A092879.P7186597359841569840

namespace A092879

/-- `A158909(∑[2*n]%comp[∑[n]])` -/
def P7186597359841569840.Spec : Prop :=
  ∀ n, P7186597359841569840.a n = A092879 n

end A092879

/-! ## A092879.P1696695850271215457

`A158909(∑[char[∑[n]]]²-n-1)`
-/

namespace A092879.P1696695850271215457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A092879.P1696695850271215457

namespace A092879

/-- `A158909(∑[char[∑[n]]]²-n-1)` -/
def P1696695850271215457.Spec : Prop :=
  ∀ n, P1696695850271215457.a n = A092879 n

end A092879

/-! ## A092879.P3449911660456082604

`or(char[1], A158909(A061579(n)))`
-/

namespace A092879.P3449911660456082604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A158909 (A061579 n).toNat)

end

end A092879.P3449911660456082604

namespace A092879

/-- `or(char[1], A158909(A061579(n)))` -/
def P3449911660456082604.Spec : Prop :=
  ∀ n, P3449911660456082604.a n = A092879 n

end A092879

/-! ## A092879.P3272304402820809810

`gcd(A158909(A061579(n)), A198954(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092879

/-- `gcd(A158909(A061579(n)), A198954(n))` -/
def P3272304402820809810.Spec : Prop :=
  ∀ n, (P3272304402820809810.a n : ℤ) = A092879 n

theorem P3272304402820809810.correct : P3272304402820809810.Spec := by
  intro n
  simp only [A092879]

end A092879

/-! ## A092879.P2960922943459101017

`C(A158909(A061579(n)), A000040(n+1)%2)`
-/

namespace A092879.P2960922943459101017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158909 (A061579 n).toNat).toNat (Int.tmod (A000040 (n + 1)) 2).toNat

end

end A092879.P2960922943459101017

namespace A092879

/-- `C(A158909(A061579(n)), A000040(n+1)%2)` -/
def P2960922943459101017.Spec : Prop :=
  ∀ n, (P2960922943459101017.a n : ℤ) = A092879 n

end A092879

/-!
# A092880: Number of ordered 2-multiantichains on an n-set.

The programs for A092880, the canonical program `A092880.P17673784852893796403` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092880 has offset 0).

The definition of A092880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092880.P17673784852893796403

`4^n-2*3^n+2*2^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092880

/-- `4^n-2*3^n+2*2^n` -/
def P17673784852893796403.Spec : Prop :=
  ∀ n, P17673784852893796403.a n = A092880 n

theorem P17673784852893796403.correct : P17673784852893796403.Spec := by
  intro n
  simp only [A092880]

end A092880

/-! ## A092880.P13899362383730341604

`abs(4^n-3^n-A003063(n+1))`
-/

namespace A092880.P13899362383730341604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - (3 ^ n : ℤ) - A003063 (n + 1)|

end

end A092880.P13899362383730341604

namespace A092880

/-- `abs(4^n-3^n-A003063(n+1))` -/
def P13899362383730341604.Spec : Prop :=
  ∀ n, P13899362383730341604.a n = A092880 n

end A092880

/-! ## A092880.P18180161313316600661

`abs(A000079(n+1)+4^n-Δ[3^n])`
-/

namespace A092880.P18180161313316600661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) + ((4 ^ n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A092880.P18180161313316600661

namespace A092880

/-- `abs(A000079(n+1)+4^n-Δ[3^n])` -/
def P18180161313316600661.Spec : Prop :=
  ∀ n, P18180161313316600661.a n = A092880 n

end A092880

/-! ## A092880.P10745347035076445351

`abs(A032263(n+1)+(2^n+4^n)/2-∑[floor(3^(n-1))])`
-/

namespace A092880.P10745347035076445351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A032263 (n + 1) : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))|

end

end A092880.P10745347035076445351

namespace A092880

/-- `abs(A032263(n+1)+(2^n+4^n)/2-∑[floor(3^(n-1))])` -/
def P10745347035076445351.Spec : Prop :=
  ∀ n, P10745347035076445351.a n = (A092880 n : ℚ)

end A092880

/-! ## A092880.P2522961293029219568

`abs(A001047(n)-A083324(n))`
-/

namespace A092880.P2522961293029219568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A083324 n|

end

end A092880.P2522961293029219568

namespace A092880

/-- `abs(A001047(n)-A083324(n))` -/
def P2522961293029219568.Spec : Prop :=
  ∀ n, P2522961293029219568.a n = A092880 n

end A092880

/-! ## A092880.P11980171420105018907

`abs(A020522(n)-A245804(n))`
-/

namespace A092880.P11980171420105018907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A245804 n|

end

end A092880.P11980171420105018907

namespace A092880

/-- `abs(A020522(n)-A245804(n))` -/
def P11980171420105018907.Spec : Prop :=
  ∀ n, P11980171420105018907.a n = A092880 n

end A092880

/-! ## A092880.P17198962494433986964

`Δ[floor(4^n/3)-A003063(n+1)]`
-/

namespace A092880.P17198962494433986964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 3⌋ - A003063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092880.P17198962494433986964

namespace A092880

/-- `Δ[floor(4^n/3)-A003063(n+1)]` -/
def P17198962494433986964.Spec : Prop :=
  ∀ n, P17198962494433986964.a n = A092880 n

end A092880

/-! ## A092880.P16204159223194556972

`Δ[A047849(n)-2*A134063(n)]`
-/

namespace A092880.P16204159223194556972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - 2 * A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092880.P16204159223194556972

namespace A092880

/-- `Δ[A047849(n)-2*A134063(n)]` -/
def P16204159223194556972.Spec : Prop :=
  ∀ n, P16204159223194556972.a n = A092880 n

end A092880

/-! ## A092880.P17018102779368277328

`abs(A047707(n)-A084870(n))`
-/

namespace A092880.P17018102779368277328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047707 n - A084870 n|

end

end A092880.P17018102779368277328

namespace A092880

/-- `abs(A047707(n)-A084870(n))` -/
def P17018102779368277328.Spec : Prop :=
  ∀ n, P17018102779368277328.a n = A092880 n

end A092880

/-!
# A092881: Number of ordered 3-multiantichains on an n-set.

The programs for A092881, there is no canonical definition to state claims against.
-/

/-! ## A092881.P12872194710036844436

`A014681(A097237(n+1))-(3^n-2^(n+1))`
-/

namespace A092881.P12872194710036844436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A097237 (n + 1)).toNat - ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ))

end

end A092881.P12872194710036844436

/-! ## A092881.P2529494499816595819

`A004277(A000557(n)-A101052(n))`
-/

namespace A092881.P2529494499816595819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000557 n - A101052 n).toNat

end

end A092881.P2529494499816595819

/-!
# A092882: Number of ordered 4-multiantichains on an n-set.

The programs for A092882, there is no canonical definition to state claims against.
-/

/-! ## A092882.P17075027560537176678

`∑[A319279(A249590(n))+1]`
-/

namespace A092882.P17075027560537176678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (A249590 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092882.P17075027560537176678

/-!
# A092885: Number of partitions of n in which no parts are multiples of 25.

The programs for A092885, there is no canonical definition to state claims against.
-/

/-! ## A092885.P14948245738465831180

`A002264(A330642(n)+A139582(n))`
-/

namespace A092885.P14948245738465831180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330642 n + A139582 n).toNat

end

end A092885.P14948245738465831180

/-! ## A092885.P9000514689228148356

`A000041(n)-∑[A185284(A007989(n))]`
-/

namespace A092885.P9000514689228148356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092885.P9000514689228148356

/-! ## A092885.P770530752793312018

`∑[A002865(n)-A185284(A007989(n))]`
-/

namespace A092885.P770530752793312018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A185284 (A007989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092885.P770530752793312018

/-! ## A092885.P17770480761798512724

`A213598(n)-∑[A185284(A007989(n))]`
-/

namespace A092885.P17770480761798512724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092885.P17770480761798512724

/-! ## A092885.P3461720419723197257

`A035363(2*n)-∑[A185284(A007989(n))]`
-/

namespace A092885.P3461720419723197257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092885.P3461720419723197257

/-!
# A092886: Expansion of x/(x^4-x^3-2x^2-x+1).

The programs for A092886, the canonical program `A092886.P4573183649328464816` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092886 has offset 0).

The definition of A092886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-x-2x^2-x^3+x^4))` (program `A092886.P4573183649328464816`, by `A092886.P4573183649328464816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092886.P4573183649328464816

`ogf(x/(1-x-2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092886

/-- `ogf(x/(1-x-2x^2-x^3+x^4))` -/
def P4573183649328464816.Spec : Prop :=
  ∀ n, P4573183649328464816.a n = A092886 n

theorem P4573183649328464816.correct : P4573183649328464816.Spec := by
  intro n
  simp only [A092886]

end A092886

/-! ## A092886.P5116893376255672126

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A092886.P5116893376255672126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A092886.P5116893376255672126

namespace A092886

/-- `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` -/
def P5116893376255672126.Spec : Prop :=
  ∀ n, P5116893376255672126.a n = A092886 n

end A092886

/-! ## A092886.P4651078043940361765

`∑[A105309(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A092886.P4651078043940361765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A105309 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092886.P4651078043940361765

namespace A092886

/-- `∑[A105309(n-1)-a(n-1)]` -/
def P4651078043940361765.Spec : Prop :=
  ∀ n, P4651078043940361765.a n = A092886 n

end A092886

/-! ## A092886.P635532135610730550

`A242510(n)-A105309(n)`
-/

namespace A092886.P635532135610730550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242510 n - A105309 n

end

end A092886.P635532135610730550

namespace A092886

/-- `A242510(n)-A105309(n)` -/
def P635532135610730550.Spec : Prop :=
  ∀ n, P635532135610730550.a n = A092886 n

end A092886

/-! ## A092886.P13260447744620513711

`A101400(n)-A119749(n+1)`
-/

namespace A092886.P13260447744620513711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n - A119749 (n + 1)

end

end A092886.P13260447744620513711

namespace A092886

/-- `A101400(n)-A119749(n+1)` -/
def P13260447744620513711.Spec : Prop :=
  ∀ n, P13260447744620513711.a n = A092886 n

theorem P13260447744620513711.correct : P13260447744620513711.Spec := by
  intro n
  simp only [A092886, Nat.add_sub_cancel, A092886.P13260447744620513711.a, A092886.P4573183649328464816.a, A101400, A101400.P1282599316843606203.a, A119749, A119749.P8910904632272446904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092886

/-! ## A092886.P6720880996143510902

`Δ[A240513(n+1)]-A242510(n)`
-/

namespace A092886.P6720880996143510902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A242510 n

end

end A092886.P6720880996143510902

namespace A092886

/-- `Δ[A240513(n+1)]-A242510(n)` -/
def P6720880996143510902.Spec : Prop :=
  ∀ n, P6720880996143510902.a n = A092886 n

end A092886

/-! ## A092886.P13467346020503891364

`(A101400(n+1)-A242510(n+1))/2`
-/

namespace A092886.P13467346020503891364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101400 (n + 1) - A242510 (n + 1) : ℚ) / 2

end

end A092886.P13467346020503891364

namespace A092886

/-- `(A101400(n+1)-A242510(n+1))/2` -/
def P13467346020503891364.Spec : Prop :=
  ∀ n, P13467346020503891364.a n = (A092886 n : ℚ)

end A092886

/-! ## A092886.P1131143772771727206

`(A119749(n+2)-A105309(n+1))/2`
-/

namespace A092886.P1131143772771727206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119749 (n + 2) - A105309 (n + 1) : ℚ) / 2

end

end A092886.P1131143772771727206

namespace A092886

/-- `(A119749(n+2)-A105309(n+1))/2` -/
def P1131143772771727206.Spec : Prop :=
  ∀ n, P1131143772771727206.a n = (A092886 n : ℚ)

end A092886

/-! ## A092886.P4233564407435947148

`A101400(n+2)-A105309(n+3)`
-/

namespace A092886.P4233564407435947148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 (n + 2) - A105309 (n + 3)

end

end A092886.P4233564407435947148

namespace A092886

/-- `A101400(n+2)-A105309(n+3)` -/
def P4233564407435947148.Spec : Prop :=
  ∀ n, P4233564407435947148.a n = A092886 n

end A092886

/-!
# A092892: Smallest starting value in a Collatz '3x+1' sequence such that the sequence contains exactly n halving steps.

The programs for A092892, there is no canonical definition to state claims against.
-/

/-! ## A092892.P8255229981361406351

`A033491(lt[A033491(n), A033491(n+1)])`
-/

namespace A092892.P8255229981361406351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092892.P8255229981361406351

/-! ## A092892.P12019750835556430116

`A138895(∑[n])`
-/

namespace A092892.P12019750835556430116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092892.P12019750835556430116

/-! ## A092892.P16326016157253966438

`A138895(A000217(n))%A054553(n)`
-/

namespace A092892.P16326016157253966438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138895 (A000217 n).toNat) (A054553 n)

end

end A092892.P16326016157253966438

/-! ## A092892.P4678949870421664320

`A138895(A000217(n))+A019590(n+3)`
-/

namespace A092892.P4678949870421664320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (A000217 n).toNat + A019590 (n + 3)

end

end A092892.P4678949870421664320

/-! ## A092892.P9844748715353699942

`A138895(A000217(n))+A000007(2*(n+1))`
-/

namespace A092892.P9844748715353699942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (A000217 n).toNat + A000007 (2 * (n + 1))

end

end A092892.P9844748715353699942

/-! ## A092892.P13068426085452164641

`C(A138895(A000217(n)), A006519(2*n+3))`
-/

namespace A092892.P13068426085452164641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138895 (A000217 n).toNat).toNat (A006519 (2 * n + 3)).toNat

end

end A092892.P13068426085452164641

/-!
# A092893: Smallest starting value in a Collatz '3x+1' sequence such that the sequence contains exactly n tripling steps.

The programs for A092893, there is no canonical definition to state claims against.
-/

/-! ## A092893.P8309821105191507559

`A354236(∑[n]+1)`
-/

namespace A092893.P8309821105191507559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A092893.P8309821105191507559

/-! ## A092893.P13581852896424060609

`or(1, A354236(A000124(n)))`
-/

namespace A092893.P13581852896424060609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A354236 (A000124 n).toNat)

end

end A092893.P13581852896424060609

/-! ## A092893.P7727328695900212498

`A354236(A000124(n))%A017356(n)`
-/

namespace A092893.P7727328695900212498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354236 (A000124 n).toNat) (A017356 n)

end

end A092893.P7727328695900212498

/-! ## A092893.P14442451170992731719

`lcm(A033999(n), A354236(A000124(n)))`
-/

namespace A092893.P14442451170992731719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A354236 (A000124 n).toNat)

end

end A092893.P14442451170992731719

/-! ## A092893.P8895117695149842041

`A354236(A000124(n))+A080224(Δ[n²])²`
-/

namespace A092893.P8895117695149842041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A000124 n).toNat + A080224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A092893.P8895117695149842041

/-!
# A092896: Related to random walks on the 4-cube.

The programs for A092896, the canonical program `A092896.P3063930393661075188` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092896 has offset 0).

The definition of A092896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092896.P3063930393661075188

`or(1, floor(4^(n-1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092896

/-- `or(1, floor(4^(n-1)))` -/
def P3063930393661075188.Spec : Prop :=
  ∀ n, P3063930393661075188.a n = A092896 n

theorem P3063930393661075188.correct : P3063930393661075188.Spec := by
  intro n
  simp only [A092896]

end A092896

/-! ## A092896.P16401632153267014279

`ogf((1-4x+4x^2-4x^3)/(1-5x+4x^2))`
-/

namespace A092896.P16401632153267014279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4, -4] [1, -5, 4] n

end

end A092896.P16401632153267014279

namespace A092896

/-- `ogf((1-4x+4x^2-4x^3)/(1-5x+4x^2))` -/
def P16401632153267014279.Spec : Prop :=
  ∀ n, P16401632153267014279.a n = A092896 n

end A092896

/-! ## A092896.P5134241810178555182

`4*floor(4^(n-2))+1`
-/

namespace A092896.P5134241810178555182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 1

end

end A092896.P5134241810178555182

namespace A092896

/-- `4*floor(4^(n-2))+1` -/
def P5134241810178555182.Spec : Prop :=
  ∀ n, P5134241810178555182.a n = A092896 n

end A092896

/-! ## A092896.P8810624747589399438

`xor(1, 4*floor(4^(n-2)))`
-/

namespace A092896.P8810624747589399438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * ⌊(4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋)

end

end A092896.P8810624747589399438

namespace A092896

/-- `xor(1, 4*floor(4^(n-2)))` -/
def P8810624747589399438.Spec : Prop :=
  ∀ n, P8810624747589399438.a n = A092896 n

end A092896

/-! ## A092896.P16004092970285951143

`∑[4*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=4, a(3)=12`
-/

namespace A092896.P16004092970285951143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 12] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092896.P16004092970285951143

namespace A092896

/-- `∑[4*a(n-1)]` -/
def P16004092970285951143.Spec : Prop :=
  ∀ n, (P16004092970285951143.a n : ℤ) = A092896 n

end A092896

/-! ## A092896.P3493185930933616227

`floor(a(n-1)-3*(1-a(n-1)))` with `a(0)=1, a(1)=1, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A092896.P3493185930933616227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 1))

end

end A092896.P3493185930933616227

namespace A092896

/-- `floor(a(n-1)-3*(1-a(n-1)))` -/
def P3493185930933616227.Spec : Prop :=
  ∀ n, P3493185930933616227.a n = A092896 n

end A092896

/-! ## A092896.P12379482956938963450

`∑[A092898(n)]`
-/

namespace A092896.P12379482956938963450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092896.P12379482956938963450

namespace A092896

/-- `∑[A092898(n)]` -/
def P12379482956938963450.Spec : Prop :=
  ∀ n, P12379482956938963450.a n = A092896 n

end A092896

/-! ## A092896.P10759464351006283307

`A094373(comp[2*(n+1)]-char[1])`
-/

namespace A092896.P10759464351006283307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (if ∃ j, f2 j = n then 1 else 0))

end

end A092896.P10759464351006283307

namespace A092896

/-- `A094373(comp[2*(n+1)]-char[1])` -/
def P10759464351006283307.Spec : Prop :=
  ∀ n, P10759464351006283307.a n = A092896 n

end A092896

/-! ## A092896.P1934106350278042026

`∑[A087009(A004273(n))]`
-/

namespace A092896.P1934106350278042026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092896.P1934106350278042026

namespace A092896

/-- `∑[A087009(A004273(n))]` -/
def P1934106350278042026.Spec : Prop :=
  ∀ n, P1934106350278042026.a n = A092896 n

end A092896

/-! ## A092896.P10581702346686382411

`A123166(A199969(n+1))`
-/

namespace A092896.P10581702346686382411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 (A199969 (n + 1)).toNat

end

end A092896.P10581702346686382411

namespace A092896

/-- `A123166(A199969(n+1))` -/
def P10581702346686382411.Spec : Prop :=
  ∀ n, P10581702346686382411.a n = A092896 n

end A092896

/-! ## A092896.P11409581450091868885

`A127904(or(1, A004273(n)))`
-/

namespace A092896.P11409581450091868885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (Int.lor 1 (A004273 n)).toNat

end

end A092896.P11409581450091868885

namespace A092896

/-- `A127904(or(1, A004273(n)))` -/
def P11409581450091868885.Spec : Prop :=
  ∀ n, P11409581450091868885.a n = A092896 n

end A092896

/-! ## A092896.P7318221265507833576

`A123166(n)/A373565(n)`
-/

namespace A092896.P7318221265507833576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123166 n : ℚ) / (A373565 n : ℚ)

end

end A092896.P7318221265507833576

namespace A092896

/-- `A123166(n)/A373565(n)` -/
def P7318221265507833576.Spec : Prop :=
  ∀ n, P7318221265507833576.a n = (A092896 n : ℚ)

end A092896

/-! ## A092896.P18249534919125370858

`A083318(1-A248157(2*n))`
-/

namespace A092896.P18249534919125370858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (1 - A248157 (2 * n)).toNat

end

end A092896.P18249534919125370858

namespace A092896

/-- `A083318(1-A248157(2*n))` -/
def P18249534919125370858.Spec : Prop :=
  ∀ n, P18249534919125370858.a n = A092896 n

end A092896

/-! ## A092896.P4784164180250294961

`A083318(2*(A004273(n)-n))`
-/

namespace A092896.P4784164180250294961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * (A004273 n - (n : ℤ))).toNat

end

end A092896.P4784164180250294961

namespace A092896

/-- `A083318(2*(A004273(n)-n))` -/
def P4784164180250294961.Spec : Prop :=
  ∀ n, P4784164180250294961.a n = A092896 n

end A092896

/-! ## A092896.P11395670879493141620

`A123166(n*and(1, A123166(n)))`
-/

namespace A092896.P11395670879493141620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 ((n : ℤ) * Int.land 1 (A123166 n)).toNat

end

end A092896.P11395670879493141620

namespace A092896

/-- `A123166(n*and(1, A123166(n)))` -/
def P11395670879493141620.Spec : Prop :=
  ∀ n, P11395670879493141620.a n = A092896 n

end A092896

/-! ## A092896.P8705907429559668893

`A123166(and(n, A123166(n)-2))`
-/

namespace A092896.P8705907429559668893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 (Int.land (n : ℤ) (A123166 n - 2)).toNat

end

end A092896.P8705907429559668893

namespace A092896

/-- `A123166(and(n, A123166(n)-2))` -/
def P8705907429559668893.Spec : Prop :=
  ∀ n, P8705907429559668893.a n = A092896 n

end A092896

/-! ## A092896.P8063000238636895370

`round(or(4, 4^n)/4)`
-/

namespace A092896.P8063000238636895370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 4 (4 ^ n) : ℚ) / 4)

end

end A092896.P8063000238636895370

namespace A092896

/-- `round(or(4, 4^n)/4)` -/
def P8063000238636895370.Spec : Prop :=
  ∀ n, P8063000238636895370.a n = A092896 n

end A092896

/-! ## A092896.P6580446027998870796

`∑[A087009(log2(A081294(n)))]`
-/

namespace A092896.P6580446027998870796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (SequenceMachineLib.roundAway (Real.logb 2 (A081294 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092896.P6580446027998870796

namespace A092896

/-- `∑[A087009(log2(A081294(n)))]` -/
def P6580446027998870796.Spec : Prop :=
  ∀ n, P6580446027998870796.a n = A092896 n

end A092896

/-! ## A092896.P6532626230795766830

`A056469(2*A199969(n+1))/2`
-/

namespace A092896.P6532626230795766830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056469 (2 * A199969 (n + 1)).toNat : ℚ) / 2

end

end A092896.P6532626230795766830

namespace A092896

/-- `A056469(2*A199969(n+1))/2` -/
def P6532626230795766830.Spec : Prop :=
  ∀ n, P6532626230795766830.a n = (A092896 n : ℚ)

end A092896

/-! ## A092896.P4041998604159922665

`(A288699(2*n)+A158302(2*n))/2`
-/

namespace A092896.P4041998604159922665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288699 (2 * n) + A158302 (2 * n) : ℚ) / 2

end

end A092896.P4041998604159922665

namespace A092896

/-- `(A288699(2*n)+A158302(2*n))/2` -/
def P4041998604159922665.Spec : Prop :=
  ∀ n, P4041998604159922665.a n = (A092896 n : ℚ)

end A092896

/-!
# A092897: Expansion of (1-x-x^2-3*x^3) / ((1+x)^2*(1-3*x)).

The programs for A092897, the canonical program `A092897.P4613445301378569973` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092897 has offset 0).

The definition of A092897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2-3x^3)/(1-x-5x^2-3x^3))` (program `A092897.P4613445301378569973`, by `A092897.P4613445301378569973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092897.P4613445301378569973

`ogf((1-x-x^2-3x^3)/(1-x-5x^2-3x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092897

/-- `ogf((1-x-x^2-3x^3)/(1-x-5x^2-3x^3))` -/
def P4613445301378569973.Spec : Prop :=
  ∀ n, P4613445301378569973.a n = A092897 n

theorem P4613445301378569973.correct : P4613445301378569973.Spec := by
  intro n
  simp only [A092897]

end A092897

/-! ## A092897.P7258880488276061154

`a(n-1)+5*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4`
-/

namespace A092897.P7258880488276061154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 4] fun n a =>
  a (n - 1) + 5 * a (n - 2) + 3 * a (n - 3)

end

end A092897.P7258880488276061154

namespace A092897

/-- `a(n-1)+5*a(n-2)+3*a(n-3)` -/
def P7258880488276061154.Spec : Prop :=
  ∀ n, (P7258880488276061154.a n : ℤ) = A092897 n

end A092897

/-! ## A092897.P18423614003857512556

`A274922(n)+A015518(n)`
-/

namespace A092897.P18423614003857512556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + A015518 n

end

end A092897.P18423614003857512556

namespace A092897

/-- `A274922(n)+A015518(n)` -/
def P18423614003857512556.Spec : Prop :=
  ∀ n, P18423614003857512556.a n = A092897 n

end A092897

/-! ## A092897.P8458563084441601803

`A131738(n)+abs(A084222(n))`
-/

namespace A092897.P8458563084441601803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n + |A084222 n|

end

end A092897.P8458563084441601803

namespace A092897

/-- `A131738(n)+abs(A084222(n))` -/
def P8458563084441601803.Spec : Prop :=
  ∀ n, P8458563084441601803.a n = A092897 n

end A092897

/-! ## A092897.P7369411279569664636

`abs(A065033(2*n)-A014983(n))`
-/

namespace A092897.P7369411279569664636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065033 (2 * n) - A014983 n|

end

end A092897.P7369411279569664636

namespace A092897

/-- `abs(A065033(2*n)-A014983(n))` -/
def P7369411279569664636.Spec : Prop :=
  ∀ n, P7369411279569664636.a n = A092897 n

end A092897

/-! ## A092897.P11886774732492425416

`abs(A084222(n)-(n+1)%A000204(n+1))`
-/

namespace A092897.P11886774732492425416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084222 n - Int.tmod (n + 1 : ℤ) (A000204 (n + 1))|

end

end A092897.P11886774732492425416

namespace A092897

/-- `abs(A084222(n)-(n+1)%A000204(n+1))` -/
def P11886774732492425416.Spec : Prop :=
  ∀ n, P11886774732492425416.a n = A092897 n

end A092897

/-! ## A092897.P3241920937916842300

`A015518(n)+A001057(A053438(n))`
-/

namespace A092897.P3241920937916842300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + A001057 (A053438 n).toNat

end

end A092897.P3241920937916842300

namespace A092897

/-- `A015518(n)+A001057(A053438(n))` -/
def P3241920937916842300.Spec : Prop :=
  ∀ n, P3241920937916842300.a n = A092897 n

end A092897

/-! ## A092897.P7669368333030444446

`abs(A014983(n)-A065033(A005843(n)))`
-/

namespace A092897.P7669368333030444446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 n - A065033 (A005843 n).toNat|

end

end A092897.P7669368333030444446

namespace A092897

/-- `abs(A014983(n)-A065033(A005843(n)))` -/
def P7669368333030444446.Spec : Prop :=
  ∀ n, P7669368333030444446.a n = A092897 n

end A092897

/-! ## A092897.P10711100201027309302

`A015518(n)-xor(A023443(n), A062157(n))`
-/

namespace A092897.P10711100201027309302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n - Int.xor (A023443 n) (A062157 n)

end

end A092897.P10711100201027309302

namespace A092897

/-- `A015518(n)-xor(A023443(n), A062157(n))` -/
def P10711100201027309302.Spec : Prop :=
  ∀ n, P10711100201027309302.a n = A092897 n

end A092897

/-!
# A092898: Expansion of (1 - 4*x + 4*x^2 - 4*x^3)/(1 - 4*x).

The programs for A092898, the canonical program `A092898.P6212188405903337793` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092898 has offset 0).

The definition of A092898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2-4x^3)/(1-4x))` (program `A092898.P6212188405903337793`, by `A092898.P6212188405903337793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092898.P6212188405903337793

`ogf((1-4x+4x^2-4x^3)/(1-4x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092898

/-- `ogf((1-4x+4x^2-4x^3)/(1-4x))` -/
def P6212188405903337793.Spec : Prop :=
  ∀ n, P6212188405903337793.a n = A092898 n

theorem P6212188405903337793.correct : P6212188405903337793.Spec := by
  intro n
  simp only [A092898]

end A092898

/-! ## A092898.P9710797758542510493

`4*a(n-1)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=12`
-/

namespace A092898.P9710797758542510493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 12] fun n a =>
  4 * a (n - 1)

end

end A092898.P9710797758542510493

namespace A092898

/-- `4*a(n-1)` -/
def P9710797758542510493.Spec : Prop :=
  ∀ n, (P9710797758542510493.a n : ℤ) = A092898 n

end A092898

/-! ## A092898.P5776284823856581307

`A087009(comp[2*(n+1)])`
-/

namespace A092898.P5776284823856581307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092898.P5776284823856581307

namespace A092898

/-- `A087009(comp[2*(n+1)])` -/
def P5776284823856581307.Spec : Prop :=
  ∀ n, P5776284823856581307.a n = A092898 n

end A092898

/-! ## A092898.P16589014180805773942

`char[2]+Δ[A166444(n)²]`
-/

namespace A092898.P16589014180805773942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A092898.P16589014180805773942

namespace A092898

/-- `char[2]+Δ[A166444(n)²]` -/
def P16589014180805773942.Spec : Prop :=
  ∀ n, P16589014180805773942.a n = A092898 n

end A092898

/-! ## A092898.P8041537981174402141

`abs(A084509(n)*A113679(n))`
-/

namespace A092898.P8041537981174402141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084509 n * A113679 n|

end

end A092898.P8041537981174402141

namespace A092898

/-- `abs(A084509(n)*A113679(n))` -/
def P8041537981174402141.Spec : Prop :=
  ∀ n, P8041537981174402141.a n = A092898 n

end A092898

/-! ## A092898.P144961011458186740

`Δ[or(A166444(n)², A157928(n))]`
-/

namespace A092898.P144961011458186740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166444 n ^ 2) (A157928 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092898.P144961011458186740

namespace A092898

/-- `Δ[or(A166444(n)², A157928(n))]` -/
def P144961011458186740.Spec : Prop :=
  ∀ n, P144961011458186740.a n = A092898 n

end A092898

/-! ## A092898.P4888942990380261439

`Δ[Δ[A098011(n+1)]]*A011782(n)`
-/

namespace A092898.P4888942990380261439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A092898.P4888942990380261439

namespace A092898

/-- `Δ[Δ[A098011(n+1)]]*A011782(n)` -/
def P4888942990380261439.Spec : Prop :=
  ∀ n, P4888942990380261439.a n = A092898 n

end A092898

/-! ## A092898.P13375261495753672309

`(A159075(n)+A098011(n+1))*A011782(n)`
-/

namespace A092898.P13375261495753672309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n + A098011 (n + 1)) * A011782 n

end

end A092898.P13375261495753672309

namespace A092898

/-- `(A159075(n)+A098011(n+1))*A011782(n)` -/
def P13375261495753672309.Spec : Prop :=
  ∀ n, P13375261495753672309.a n = A092898 n

end A092898

/-!
# A092899: Expansion of (1+2x+3x^2+6x^3)/((1+x)(1-x)^2).

The programs for A092899, the canonical program `A092899.P10684306202148465692` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092899 has offset 0).

The definition of A092899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+6x^3)/(1-x-x^2+x^3))` (program `A092899.P10684306202148465692`, by `A092899.P10684306202148465692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092899.P10684306202148465692

`ogf((1+2x+3x^2+6x^3)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092899

/-- `ogf((1+2x+3x^2+6x^3)/(1-x-x^2+x^3))` -/
def P10684306202148465692.Spec : Prop :=
  ∀ n, P10684306202148465692.a n = A092899 n

theorem P10684306202148465692.correct : P10684306202148465692.Spec := by
  intro n
  simp only [A092899]

end A092899

/-! ## A092899.P16682307759956960537

`a(n-2)+12` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A092899.P16682307759956960537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 2) + 12

end

end A092899.P16682307759956960537

namespace A092899

/-- `a(n-2)+12` -/
def P16682307759956960537.Spec : Prop :=
  ∀ n, (P16682307759956960537.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P15823442153230243187

`∑[4*a(n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A092899.P15823442153230243187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P15823442153230243187

namespace A092899

/-- `∑[4*a(n%2)]` -/
def P15823442153230243187.Spec : Prop :=
  ∀ n, (P15823442153230243187.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P3506387040162005057

`∑[4*a(and(1, n))]` with `a(0)=1, a(1)=2`
-/

namespace A092899.P3506387040162005057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P3506387040162005057

namespace A092899

/-- `∑[4*a(and(1, n))]` -/
def P3506387040162005057.Spec : Prop :=
  ∀ n, (P3506387040162005057.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P5807604818389490945

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A092899.P5807604818389490945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P5807604818389490945

namespace A092899

/-- `∑[abs(a(n-2))]` -/
def P5807604818389490945.Spec : Prop :=
  ∀ n, (P5807604818389490945.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P6084082661092897345

`∑[12-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A092899.P6084082661092897345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P6084082661092897345

namespace A092899

/-- `∑[12-a(n-1)]` -/
def P6084082661092897345.Spec : Prop :=
  ∀ n, P6084082661092897345.a n = A092899 n

end A092899

/-! ## A092899.P18127480517078100966

`record[lcm(3, 1-n)+n-2]`
-/

namespace A092899.P18127480517078100966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (1 - (n : ℤ)) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092899.P18127480517078100966

namespace A092899

/-- `record[lcm(3, 1-n)+n-2]` -/
def P18127480517078100966.Spec : Prop :=
  ∀ n, P18127480517078100966.a n = A092899 n

end A092899

/-! ## A092899.P10663963393073283830

`∑[2*a(gcd(2, n+1))]` with `a(0)=1, a(1)=2`
-/

namespace A092899.P10663963393073283830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P10663963393073283830

namespace A092899

/-- `∑[2*a(gcd(2, n+1))]` -/
def P10663963393073283830.Spec : Prop :=
  ∀ n, (P10663963393073283830.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P1107443298205143002

`∑[8/a((n+1)%2)]` with `a(0)=1, a(1)=2`
-/

namespace A092899.P1107443298205143002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  8 / f1 ((n + 1) % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P1107443298205143002

namespace A092899

/-- `∑[8/a((n+1)%2)]` -/
def P1107443298205143002.Spec : Prop :=
  ∀ n, P1107443298205143002.a n = (A092899 n : ℚ)

end A092899

/-! ## A092899.P9022647221495225906

`record[root(2*n+1, gcd(6, 2-n))]`
-/

namespace A092899.P9022647221495225906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / (Int.gcd 6 (2 - (n : ℤ)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092899.P9022647221495225906

namespace A092899

/-- `record[root(2*n+1, gcd(6, 2-n))]` -/
def P9022647221495225906.Spec : Prop :=
  ∀ n, P9022647221495225906.a n = (A092899 n : ℝ)

end A092899

/-! ## A092899.P15100126361126288350

`∑[2^A158478(n)]`
-/

namespace A092899.P15100126361126288350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A158478 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P15100126361126288350

namespace A092899

/-- `∑[2^A158478(n)]` -/
def P15100126361126288350.Spec : Prop :=
  ∀ n, P15100126361126288350.a n = (A092899 n : ℚ)

end A092899

/-! ## A092899.P1678641385982212339

`∑[A004522(a(n-1))]` with `a(0)=1`
-/

namespace A092899.P1678641385982212339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004522 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P1678641385982212339

namespace A092899

/-- `∑[A004522(a(n-1))]` -/
def P1678641385982212339.Spec : Prop :=
  ∀ n, P1678641385982212339.a n = A092899 n

end A092899

/-! ## A092899.P13310421175815769746

`∑[A088308(a(n-1))]` with `a(0)=1`
-/

namespace A092899.P13310421175815769746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088308 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P13310421175815769746

namespace A092899

/-- `∑[A088308(a(n-1))]` -/
def P13310421175815769746.Spec : Prop :=
  ∀ n, P13310421175815769746.a n = A092899 n

end A092899

/-! ## A092899.P9974465253919849661

`∑[A208741(a(n-1))]` with `a(0)=1`
-/

namespace A092899.P9974465253919849661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A208741 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P9974465253919849661

namespace A092899

/-- `∑[A208741(a(n-1))]` -/
def P9974465253919849661.Spec : Prop :=
  ∀ n, P9974465253919849661.a n = A092899 n

end A092899

/-! ## A092899.P2344342213271653600

`∑[A277517(a(n-1))]` with `a(0)=1`
-/

namespace A092899.P2344342213271653600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A277517 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P2344342213271653600

namespace A092899

/-- `∑[A277517(a(n-1))]` -/
def P2344342213271653600.Spec : Prop :=
  ∀ n, P2344342213271653600.a n = A092899 n

end A092899

/-! ## A092899.P8274192861909375763

`∑[2*a(A124625(n))]` with `a(0)=1`
-/

namespace A092899.P8274192861909375763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A124625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P8274192861909375763

namespace A092899

/-- `∑[2*a(A124625(n))]` -/
def P8274192861909375763.Spec : Prop :=
  ∀ n, (P8274192861909375763.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P2613488736747173169

`∑[2*a(A020639(n)-1)]` with `a(0)=1`
-/

namespace A092899.P2613488736747173169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A020639 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P2613488736747173169

namespace A092899

/-- `∑[2*a(A020639(n)-1)]` -/
def P2613488736747173169.Spec : Prop :=
  ∀ n, (P2613488736747173169.a n : ℤ) = A092899 n

end A092899

/-! ## A092899.P3222643871302892547

`∑[A018252(a(gcd(2, n+1)))]` with `a(0)=1, a(1)=2`
-/

namespace A092899.P3222643871302892547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A018252 (f1 (Nat.gcd 2 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092899.P3222643871302892547

namespace A092899

/-- `∑[A018252(a(gcd(2, n+1)))]` -/
def P3222643871302892547.Spec : Prop :=
  ∀ n, P3222643871302892547.a n = A092899 n

end A092899

/-! ## A092899.P4256723319822633164

`A166639(n)-A040035(n)`
-/

namespace A092899.P4256723319822633164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n - A040035 n

end

end A092899.P4256723319822633164

namespace A092899

/-- `A166639(n)-A040035(n)` -/
def P4256723319822633164.Spec : Prop :=
  ∀ n, P4256723319822633164.a n = A092899 n

end A092899

/-! ## A092899.P17838743719981514418

`A271114(n)-A168428(n)`
-/

namespace A092899.P17838743719981514418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A168428 n

end

end A092899.P17838743719981514418

namespace A092899

/-- `A271114(n)-A168428(n)` -/
def P17838743719981514418.Spec : Prop :=
  ∀ n, P17838743719981514418.a n = A092899 n

end A092899

