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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A094800: First term of a run of exactly two consecutive numbers such that for each m in the run, exactly m 1's are used in writing out all numbers 1 through m.

The programs for A094800, there is no canonical definition to state claims against.
-/

/-! ## A094800.P8967649904703120002

`∪[A130428(n+1), A200863(n+1)]%A094799(n+1)`
-/

namespace A094800.P8967649904703120002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200863 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094799 (n + 1))

end

end A094800.P8967649904703120002

/-! ## A094800.P10096926800176085946

`∪[A130429(n+1), A200863(n+1)]%A094799(n+1)`
-/

namespace A094800.P10096926800176085946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200863 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094799 (n + 1))

end

end A094800.P10096926800176085946

/-!
# A094802: a(n) = smallest k such that all of 1 through n divides k!.

The programs for A094802, there is no canonical definition to state claims against.
-/

/-! ## A094802.P10221520979990483575

`A136548(n+2)+char[3]`
-/

namespace A094802.P10221520979990483575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094802.P10221520979990483575

/-! ## A094802.P15873426448314718758

`ceil(log(∑[exp(A000010(n+1))]))`
-/

namespace A094802.P15873426448314718758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A000010 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A094802.P15873426448314718758

/-! ## A094802.P12687309777148135563

`round(log(∑[exp(A006530(n+1))]))`
-/

namespace A094802.P12687309777148135563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A006530 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A094802.P12687309777148135563

/-! ## A094802.P5790818634746907668

`round(log(∑[exp(A014963(n+1))]))`
-/

namespace A094802.P5790818634746907668
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A014963 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A094802.P5790818634746907668

/-! ## A094802.P2038550522643042637

`round(log(∑[exp(A020639(n+1))]))`
-/

namespace A094802.P2038550522643042637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A020639 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A094802.P2038550522643042637

/-! ## A094802.P14875003637771503259

`A002034((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A094802.P14875003637771503259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002034 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A094802.P14875003637771503259

/-! ## A094802.P555980131668835891

`A025492((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A094802.P555980131668835891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025492 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A094802.P555980131668835891

/-! ## A094802.P7663827518638242603

`A064760((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A094802.P7663827518638242603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064760 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A094802.P7663827518638242603

/-! ## A094802.P3955330953779381360

`A081810((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A094802.P3955330953779381360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081810 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A094802.P3955330953779381360

/-! ## A094802.P6564542537924657092

`A345931((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A094802.P6564542537924657092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345931 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A094802.P6564542537924657092

/-!
# A094803: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 8 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 1, s(2n) = 3.

The programs for A094803, the canonical program `A094803.P14895930446765090741` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094803 has offset 1).

The definition of A094803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094803.P14895930446765090741

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094803

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P14895930446765090741.Spec : Prop :=
  ∀ n, P14895930446765090741.a n = A094803 (n + 1)

theorem P14895930446765090741.correct : P14895930446765090741.Spec := by
  intro n
  simp only [A094803, Nat.add_sub_cancel]

end A094803

/-! ## A094803.P2072685392393502333

`1/4*(2^(n+1)+2*A007070(n))`
-/

namespace A094803.P2072685392393502333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((2 ^ (n + 1) : ℤ) + 2 * A007070 n : ℚ)

end

end A094803.P2072685392393502333

namespace A094803

/-- `1/4*(2^(n+1)+2*A007070(n))` -/
def P2072685392393502333.Spec : Prop :=
  ∀ n, P2072685392393502333.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P217903040790225314

`ogf((1-3x+x^2)/(1-6x+10x^2-4x^3))`
-/

namespace A094803.P217903040790225314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 10, -4] n

end

end A094803.P217903040790225314

namespace A094803

/-- `ogf((1-3x+x^2)/(1-6x+10x^2-4x^3))` -/
def P217903040790225314.Spec : Prop :=
  ∀ n, P217903040790225314.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P584535957224944331

`Δ[A024175(n+1)]`
-/

namespace A094803.P584535957224944331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094803.P584535957224944331

namespace A094803

/-- `Δ[A024175(n+1)]` -/
def P584535957224944331.Spec : Prop :=
  ∀ n, P584535957224944331.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P524691488019494041

`A094817(n)+a(n-1)` with `a(0)=1`
-/

namespace A094803.P524691488019494041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094817 n + a (n - 1)

end

end A094803.P524691488019494041

namespace A094803

/-- `A094817(n)+a(n-1)` -/
def P524691488019494041.Spec : Prop :=
  ∀ n, P524691488019494041.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P10750371954336442159

`A003480(n)+Δ[round(2^(n-1))]`
-/

namespace A094803.P10750371954336442159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n + (f1 (n + 1) - f1 n)

end

end A094803.P10750371954336442159

namespace A094803

/-- `A003480(n)+Δ[round(2^(n-1))]` -/
def P10750371954336442159.Spec : Prop :=
  ∀ n, P10750371954336442159.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P12749507024894979121

`floor((2^n+A007070(n)+1)/2)`
-/

namespace A094803.P12749507024894979121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) + (A007070 n + 1) : ℚ) / 2⌋

end

end A094803.P12749507024894979121

namespace A094803

/-- `floor((2^n+A007070(n)+1)/2)` -/
def P12749507024894979121.Spec : Prop :=
  ∀ n, P12749507024894979121.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P13409849388513153853

`A007052(n-1)+2*a(n-1)` with `a(0)=1`
-/

namespace A094803.P13409849388513153853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007052 (n - 1) + 2 * a (n - 1)

end

end A094803.P13409849388513153853

namespace A094803

/-- `A007052(n-1)+2*a(n-1)` -/
def P13409849388513153853.Spec : Prop :=
  ∀ n, P13409849388513153853.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P14063072460975757282

`A131577(n)+A003480(n)`
-/

namespace A094803.P14063072460975757282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A003480 n

end

end A094803.P14063072460975757282

namespace A094803

/-- `A131577(n)+A003480(n)` -/
def P14063072460975757282.Spec : Prop :=
  ∀ n, P14063072460975757282.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P1076705678267352965

`A034008(n+1)+A003480(n)`
-/

namespace A094803.P1076705678267352965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) + A003480 n

end

end A094803.P1076705678267352965

namespace A094803

/-- `A034008(n+1)+A003480(n)` -/
def P1076705678267352965.Spec : Prop :=
  ∀ n, P1076705678267352965.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P6749869992530959161

`A094817(n+1)-A007052(n)`
-/

namespace A094803.P6749869992530959161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094817 (n + 1) - A007052 n

end

end A094803.P6749869992530959161

namespace A094803

/-- `A094817(n+1)-A007052(n)` -/
def P6749869992530959161.Spec : Prop :=
  ∀ n, P6749869992530959161.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P12609729677140506067

`(A007070(n)+A000079(n))/2`
-/

namespace A094803.P12609729677140506067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n + A000079 n : ℚ) / 2

end

end A094803.P12609729677140506067

namespace A094803

/-- `(A007070(n)+A000079(n))/2` -/
def P12609729677140506067.Spec : Prop :=
  ∀ n, P12609729677140506067.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P1689492106530890047

`A006012(n)+∑[A024175(n)]-1`
-/

namespace A094803.P1689492106530890047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A094803.P1689492106530890047

namespace A094803

/-- `A006012(n)+∑[A024175(n)]-1` -/
def P1689492106530890047.Spec : Prop :=
  ∀ n, P1689492106530890047.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P12903586863682035537

`A094817(n+1)-∑[A003480(n)]`
-/

namespace A094803.P12903586863682035537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094817 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094803.P12903586863682035537

namespace A094803

/-- `A094817(n+1)-∑[A003480(n)]` -/
def P12903586863682035537.Spec : Prop :=
  ∀ n, P12903586863682035537.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P6301477252159770760

`(A000079(n)+∑[A007052(n)])/2`
-/

namespace A094803.P6301477252159770760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A094803.P6301477252159770760

namespace A094803

/-- `(A000079(n)+∑[A007052(n)])/2` -/
def P6301477252159770760.Spec : Prop :=
  ∀ n, P6301477252159770760.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P13970393663348413892

`(A007070(n)+∑[A011782(n)])/2`
-/

namespace A094803.P13970393663348413892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007070 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A094803.P13970393663348413892

namespace A094803

/-- `(A007070(n)+∑[A011782(n)])/2` -/
def P13970393663348413892.Spec : Prop :=
  ∀ n, P13970393663348413892.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P806455809513801025

`(A000079(n)+Δ[A006012(n)])/2`
-/

namespace A094803.P806455809513801025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A094803.P806455809513801025

namespace A094803

/-- `(A000079(n)+Δ[A006012(n)])/2` -/
def P806455809513801025.Spec : Prop :=
  ∀ n, P806455809513801025.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P5919072781497256741

`(A007070(n)+Δ[A000225(n)])/2`
-/

namespace A094803.P5919072781497256741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A094803.P5919072781497256741

namespace A094803

/-- `(A007070(n)+Δ[A000225(n)])/2` -/
def P5919072781497256741.Spec : Prop :=
  ∀ n, P5919072781497256741.a n = (A094803 (n + 1) : ℚ)

end A094803

/-! ## A094803.P2394116082159843456

`A024175(n+2)-A024175(n+1)`
-/

namespace A094803.P2394116082159843456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 2) - A024175 (n + 1)

end

end A094803.P2394116082159843456

namespace A094803

/-- `A024175(n+2)-A024175(n+1)` -/
def P2394116082159843456.Spec : Prop :=
  ∀ n, P2394116082159843456.a n = A094803 (n + 1)

end A094803

/-! ## A094803.P17509641510349064031

`A094817(n+1)-A062113(2*n)`
-/

namespace A094803.P17509641510349064031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094817 (n + 1) - A062113 (2 * n)

end

end A094803.P17509641510349064031

namespace A094803

/-- `A094817(n+1)-A062113(2*n)` -/
def P17509641510349064031.Spec : Prop :=
  ∀ n, P17509641510349064031.a n = A094803 (n + 1)

end A094803

/-!
# A094804: Number of primes in the trajectory of n under the juggler map of A094683.

The programs for A094804, there is no canonical definition to state claims against.
-/

/-! ## A094804.P13985962418693774950

`A171453(A054845(n)+A006130(n))`
-/

namespace A094804.P13985962418693774950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (A054845 n + A006130 n).toNat

end

end A094804.P13985962418693774950

/-! ## A094804.P10577557876324361687

`A051903(A018016(n+2))-A004601(n+2)`
-/

namespace A094804.P10577557876324361687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A018016 (n + 2)).toNat - A004601 (n + 2)

end

end A094804.P10577557876324361687

/-! ## A094804.P8436420410252278135

`A031235(A000631(n+2)-A051903(n+2))`
-/

namespace A094804.P8436420410252278135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A000631 (n + 2) - A051903 (n + 2)).toNat

end

end A094804.P8436420410252278135

/-! ## A094804.P17451507440044409927

`A031235(A000631(n+2)-A345992(3*n+4))`
-/

namespace A094804.P17451507440044409927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A000631 (n + 2) - A345992 (3 * n + 4)).toNat

end

end A094804.P17451507440044409927

/-! ## A094804.P14925652152761602244

`A333768(A074018(n+1)%A073491(2*n+5))`
-/

namespace A094804.P14925652152761602244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (Int.tmod (A074018 (n + 1)) (A073491 (2 * n + 5))).toNat

end

end A094804.P14925652152761602244

/-!
# A094806: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 8 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 1, s(2n) = 5.

The programs for A094806, the canonical program `A094806.P11480500948347374134` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094806 has offset 2).

The definition of A094806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094806.P11480500948347374134

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094806

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P11480500948347374134.Spec : Prop :=
  ∀ n, P11480500948347374134.a n = A094806 (n + 2)

theorem P11480500948347374134.correct : P11480500948347374134.Spec := by
  intro n
  simp only [A094806, Nat.add_sub_cancel]

end A094806

/-! ## A094806.P9793277578286355853

`ogf((1-x)/(1-6x+10x^2-4x^3))`
-/

namespace A094806.P9793277578286355853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 10, -4] n

end

end A094806.P9793277578286355853

namespace A094806

/-- `ogf((1-x)/(1-6x+10x^2-4x^3))` -/
def P9793277578286355853.Spec : Prop :=
  ∀ n, P9793277578286355853.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P3457840131119083915

`∑[A094821(n+1)]`
-/

namespace A094806.P3457840131119083915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094806.P3457840131119083915

namespace A094806

/-- `∑[A094821(n+1)]` -/
def P3457840131119083915.Spec : Prop :=
  ∀ n, P3457840131119083915.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P15115716352423983587

`A369626(n+2)-1`
-/

namespace A094806.P15115716352423983587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369626 (n + 2) - 1

end

end A094806.P15115716352423983587

namespace A094806

/-- `A369626(n+2)-1` -/
def P15115716352423983587.Spec : Prop :=
  ∀ n, P15115716352423983587.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P17110411611286722451

`A020727(n)-2^n`
-/

namespace A094806.P17110411611286722451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - (2 ^ n : ℤ)

end

end A094806.P17110411611286722451

namespace A094806

/-- `A020727(n)-2^n` -/
def P17110411611286722451.Spec : Prop :=
  ∀ n, P17110411611286722451.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P18175691221176785701

`Δ[A007052(n)-2^n]`
-/

namespace A094806.P18175691221176785701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094806.P18175691221176785701

namespace A094806

/-- `Δ[A007052(n)-2^n]` -/
def P18175691221176785701.Spec : Prop :=
  ∀ n, P18175691221176785701.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P2861640785084352089

`A003480(n+1)-2^n`
-/

namespace A094806.P2861640785084352089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) - (2 ^ n : ℤ)

end

end A094806.P2861640785084352089

namespace A094806

/-- `A003480(n+1)-2^n` -/
def P2861640785084352089.Spec : Prop :=
  ∀ n, P2861640785084352089.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P8284495508540788827

`∑[∑[A181367(n+1)/2]]`
-/

namespace A094806.P8284495508540788827
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181367 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094806.P8284495508540788827

namespace A094806

/-- `∑[∑[A181367(n+1)/2]]` -/
def P8284495508540788827.Spec : Prop :=
  ∀ n, P8284495508540788827.a n = (A094806 (n + 2) : ℚ)

end A094806

/-! ## A094806.P9038937582144929453

`A094803(n+2)-2^(n+1)`
-/

namespace A094806.P9038937582144929453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A094806.P9038937582144929453

namespace A094806

/-- `A094803(n+2)-2^(n+1)` -/
def P9038937582144929453.Spec : Prop :=
  ∀ n, P9038937582144929453.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P12405751006839478669

`A181367(n+1)-A011782(n)`
-/

namespace A094806.P12405751006839478669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181367 (n + 1) - A011782 n

end

end A094806.P12405751006839478669

namespace A094806

/-- `A181367(n+1)-A011782(n)` -/
def P12405751006839478669.Spec : Prop :=
  ∀ n, P12405751006839478669.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P679413207434143443

`A094821(n+2)-A048580(n)`
-/

namespace A094806.P679413207434143443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 2) - A048580 n

end

end A094806.P679413207434143443

namespace A094806

/-- `A094821(n+2)-A048580(n)` -/
def P679413207434143443.Spec : Prop :=
  ∀ n, P679413207434143443.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P4687738374170739890

`Δ[∑[A003480(n)]-A000079(n)]`
-/

namespace A094806.P4687738374170739890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094806.P4687738374170739890

namespace A094806

/-- `Δ[∑[A003480(n)]-A000079(n)]` -/
def P4687738374170739890.Spec : Prop :=
  ∀ n, P4687738374170739890.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P100187995160906095

`A007052(n+1)-A024175(n+2)`
-/

namespace A094806.P100187995160906095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) - A024175 (n + 2)

end

end A094806.P100187995160906095

namespace A094806

/-- `A007052(n+1)-A024175(n+2)` -/
def P100187995160906095.Spec : Prop :=
  ∀ n, P100187995160906095.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P5525479821772511657

`A007070(n+1)-A094803(n+2)`
-/

namespace A094806.P5525479821772511657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - A094803 (n + 2)

end

end A094806.P5525479821772511657

namespace A094806

/-- `A007070(n+1)-A094803(n+2)` -/
def P5525479821772511657.Spec : Prop :=
  ∀ n, P5525479821772511657.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P12649630718211890036

`A094821(n+2)-A007052(n+1)`
-/

namespace A094806.P12649630718211890036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 2) - A007052 (n + 1)

end

end A094806.P12649630718211890036

namespace A094806

/-- `A094821(n+2)-A007052(n+1)` -/
def P12649630718211890036.Spec : Prop :=
  ∀ n, P12649630718211890036.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P9917949836778708246

`∑[A006012(n+1)-A024175(n+1)]`
-/

namespace A094806.P9917949836778708246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - A024175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094806.P9917949836778708246

namespace A094806

/-- `∑[A006012(n+1)-A024175(n+1)]` -/
def P9917949836778708246.Spec : Prop :=
  ∀ n, P9917949836778708246.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P10372882365298804311

`A062113(2*n+1)-∑[A011782(n)]`
-/

namespace A094806.P10372882365298804311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094806.P10372882365298804311

namespace A094806

/-- `A062113(2*n+1)-∑[A011782(n)]` -/
def P10372882365298804311.Spec : Prop :=
  ∀ n, P10372882365298804311.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P15845979197303779033

`A062113(2*n+1)-A011782(n+1)`
-/

namespace A094806.P15845979197303779033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n + 1) - A011782 (n + 1)

end

end A094806.P15845979197303779033

namespace A094806

/-- `A062113(2*n+1)-A011782(n+1)` -/
def P15845979197303779033.Spec : Prop :=
  ∀ n, P15845979197303779033.a n = A094806 (n + 2)

end A094806

/-! ## A094806.P7804880250214672102

`(A007070(n+1)-A000079(n+1))/2`
-/

namespace A094806.P7804880250214672102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 (n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A094806.P7804880250214672102

namespace A094806

/-- `(A007070(n+1)-A000079(n+1))/2` -/
def P7804880250214672102.Spec : Prop :=
  ∀ n, P7804880250214672102.a n = (A094806 (n + 2) : ℚ)

end A094806

/-! ## A094806.P13838202156894799816

`A007070(n+1)/2-A011782(n+1)`
-/

namespace A094806.P13838202156894799816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 (n + 1) : ℚ) / 2 - (A011782 (n + 1) : ℚ)

end

end A094806.P13838202156894799816

namespace A094806

/-- `A007070(n+1)/2-A011782(n+1)` -/
def P13838202156894799816.Spec : Prop :=
  ∀ n, P13838202156894799816.a n = (A094806 (n + 2) : ℚ)

end A094806

/-!
# A094807: Numbers n such that primitive solutions for 1/n^2 = 1/x^2 + 1/y^2 exist.

The programs for A094807, there is no canonical definition to state claims against.
-/

/-! ## A094807.P2113276897106751787

`2*A024365(n+1)`
-/

namespace A094807.P2113276897106751787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024365 (n + 1)

end

end A094807.P2113276897106751787

/-! ## A094807.P15634227229690100894

`12*A258151(n+1)`
-/

namespace A094807.P15634227229690100894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A258151 (n + 1)

end

end A094807.P15634227229690100894

/-! ## A094807.P1875496071773144854

`2*record[A024406(round(lcm(2, n+3)/6))]`
-/

namespace A094807.P1875496071773144854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P1875496071773144854

/-! ## A094807.P9307316949244880380

`2*record[A024406(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A094807.P9307316949244880380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P9307316949244880380

/-! ## A094807.P3054688222677340375

`record[2*A024406(A058933(n+1))]`
-/

namespace A094807.P3054688222677340375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024406 (A058933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P3054688222677340375

/-! ## A094807.P15162923823208766739

`record[2*A024406(A322805(n+1))]`
-/

namespace A094807.P15162923823208766739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024406 (A322805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P15162923823208766739

/-! ## A094807.P8957536438523672454

`record[2*A024406(A094193(n+1))]`
-/

namespace A094807.P8957536438523672454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024406 (A094193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P8957536438523672454

/-! ## A094807.P12958611141690859202

`record[2*A024406(A054531(n+1))]`
-/

namespace A094807.P12958611141690859202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024406 (A054531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P12958611141690859202

/-! ## A094807.P17439767704272359746

`record[2*A024406(A226314(n+1))]`
-/

namespace A094807.P17439767704272359746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024406 (A226314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094807.P17439767704272359746

/-! ## A094807.P10128856896233623621

`A008594(A258151(n+1))`
-/

namespace A094807.P10128856896233623621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A258151 (n + 1)).toNat

end

end A094807.P10128856896233623621

/-!
# A094808: Numbers of the form Fibonacci(p-1)/p, where p are primes ending in 1 or 9 (i.e., A045468).

The programs for A094808, there is no canonical definition to state claims against.
-/

/-! ## A094808.P10326528014090562389

`A212804(A045468(n+1))/A045468(n+1)`
-/

namespace A094808.P10326528014090562389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A045468 (n + 1)).toNat : ℚ) / (A045468 (n + 1) : ℚ)

end

end A094808.P10326528014090562389

/-! ## A094808.P11477216295162906596

`A212804(A038872(n+2))/A038872(n+2)`
-/

namespace A094808.P11477216295162906596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A038872 (n + 2)).toNat : ℚ) / (A038872 (n + 2) : ℚ)

end

end A094808.P11477216295162906596

/-! ## A094808.P6727079722915864228

`A212804(A064739(n+2))/A064739(n+2)`
-/

namespace A094808.P6727079722915864228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A064739 (n + 2)).toNat : ℚ) / (A064739 (n + 2) : ℚ)

end

end A094808.P6727079722915864228

/-!
# A094809: Numbers of the form Fibonacci(p+1)/p, where p are primes >= 7 that end in 3 or 7 (i.e., p = A003631(n) for n > 2).

The programs for A094809, there is no canonical definition to state claims against.
-/

/-! ## A094809.P10180349995798237850

`A096028(n+2)`
-/

namespace A094809.P10180349995798237850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096028 (n + 2)

end

end A094809.P10180349995798237850

/-! ## A094809.P5065270275680819789

`record[A096028(A328578(n))]`
-/

namespace A094809.P5065270275680819789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096028 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094809.P5065270275680819789

/-! ## A094809.P4525541775534993777

`record[A096028(or(n, A000038(n)))]`
-/

namespace A094809.P4525541775534993777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096028 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094809.P4525541775534993777

/-! ## A094809.P5585915615091245096

`record[A096028(xor(n, A000038(n)))]`
-/

namespace A094809.P5585915615091245096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096028 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094809.P5585915615091245096

/-! ## A094809.P14385218391099765610

`record[A096028(A095701(n))]`
-/

namespace A094809.P14385218391099765610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096028 (A095701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094809.P14385218391099765610

/-!
# A094810: Primes of the form F(k)*F(k+1) + F(k+2) where F(x) = Fibonacci(x).

The programs for A094810, there is no canonical definition to state claims against.
-/

/-! ## A094810.P14383289051116378379

`A305412(A305414(n+1))`
-/

namespace A094810.P14383289051116378379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305412 (A305414 (n + 1)).toNat

end

end A094810.P14383289051116378379

/-! ## A094810.P17225458513113669286

`p?[A305412(n)]`
-/

namespace A094810.P17225458513113669286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094810.P17225458513113669286

/-! ## A094810.P6636980334866863762

`p?[∑[A059727(n)]+1]`
-/

namespace A094810.P6636980334866863762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094810.P6636980334866863762

/-! ## A094810.P7232788593752479563

`p?[∑[A002378(A000045(n))]+1]`
-/

namespace A094810.P7232788593752479563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000045 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094810.P7232788593752479563

/-! ## A094810.P10243076967652192009

`p?[A286983(n+1)+A000045(n)]`
-/

namespace A094810.P10243076967652192009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094810.P10243076967652192009

/-!
# A094812: Number of odd composites between 2^n and 2^(n + 1).

The programs for A094812, there is no canonical definition to state claims against.
-/

/-! ## A094812.P10355444261635174419

`A000010(2^n)-A036378(n)`
-/

namespace A094812.P10355444261635174419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) - A036378 n

end

end A094812.P10355444261635174419

/-! ## A094812.P16610634355025439178

`A067856(2^n)-A036378(n)`
-/

namespace A094812.P16610634355025439178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (2 ^ n) - A036378 n

end

end A094812.P16610634355025439178

/-! ## A094812.P6107647560474223271

`A131577(n)-A085341(2^n)`
-/

namespace A094812.P6107647560474223271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A085341 (2 ^ n)

end

end A094812.P6107647560474223271

/-! ## A094812.P4033350460641429821

`A273943(2^n)-A036378(n)`
-/

namespace A094812.P4033350460641429821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 ^ n) - A036378 n

end

end A094812.P4033350460641429821

/-! ## A094812.P4165239799770384864

`A011782(n)+A001489(A036378(n))`
-/

namespace A094812.P4165239799770384864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A001489 (A036378 n).toNat

end

end A094812.P4165239799770384864

/-!
# A094814: 

The programs for A094814, there is no canonical definition to state claims against.
-/

/-! ## A094814.P4093652076284464351

`(n+1)^A000040(A100110(n))`
-/

namespace A094814.P4093652076284464351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (A100110 n).toNat : ℤ)

end

end A094814.P4093652076284464351

/-! ## A094814.P2869644271034528668

`(n+1)^A000040(A109860(n))`
-/

namespace A094814.P2869644271034528668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (A109860 n).toNat : ℤ)

end

end A094814.P2869644271034528668

/-! ## A094814.P14359150945277397037

`(n+1)^A000040(A000040(n+1))`
-/

namespace A094814.P14359150945277397037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (A000040 (n + 1)).toNat : ℤ)

end

end A094814.P14359150945277397037

/-!
# A094815: (prime(prime(n)))^n.

The programs for A094815, the canonical program `A094815.P3201288856371613790` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094815 has offset 1).

The definition of A094815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094815.P3201288856371613790

`A006450(n+1)^(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094815

/-- `A006450(n+1)^(n+1)` -/
def P3201288856371613790.Spec : Prop :=
  ∀ n, P3201288856371613790.a n = A094815 (n + 1)

theorem P3201288856371613790.correct : P3201288856371613790.Spec := by
  intro n
  simp only [A094815, Nat.add_sub_cancel]

end A094815

/-! ## A094815.P7957687032666643598

`A259923(p?[comp[n²]])`
-/

namespace A094815.P7957687032666643598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259923 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094815.P7957687032666643598

namespace A094815

/-- `A259923(p?[comp[n²]])` -/
def P7957687032666643598.Spec : Prop :=
  ∀ n, P7957687032666643598.a n = A094815 (n + 1)

end A094815

/-! ## A094815.P10529020310098035426

`A175247(n+2)^(n+1)`
-/

namespace A094815.P10529020310098035426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) ^ (n + 1)

end

end A094815.P10529020310098035426

namespace A094815

/-- `A175247(n+2)^(n+1)` -/
def P10529020310098035426.Spec : Prop :=
  ∀ n, P10529020310098035426.a n = A094815 (n + 1)

end A094815

/-! ## A094815.P9922188254136712145

`sqrt(A092769(n+1))^(n+1)`
-/

namespace A094815.P9922188254136712145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ) ^ (n + 1)

end

end A094815.P9922188254136712145

namespace A094815

/-- `sqrt(A092769(n+1))^(n+1)` -/
def P9922188254136712145.Spec : Prop :=
  ∀ n, P9922188254136712145.a n = (A094815 (n + 1) : ℝ)

end A094815

/-! ## A094815.P12114211138349349302

`p?[A048989(n+1)]^(n+1)`
-/

namespace A094815.P12114211138349349302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ (n + 1)

end

end A094815.P12114211138349349302

namespace A094815

/-- `p?[A048989(n+1)]^(n+1)` -/
def P12114211138349349302.Spec : Prop :=
  ∀ n, P12114211138349349302.a n = A094815 (n + 1)

end A094815

/-!
# A094816: Triangle read by rows: T(n,k) are the coefficients of Charlier polynomials: A046716 transposed, for 0 <= k <= n.

The programs for A094816, there is no canonical definition to state claims against.
-/

/-! ## A094816.P6725975918717228170

`A046716(∑[2*n]%A080036(n))`
-/

namespace A094816.P6725975918717228170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A094816.P6725975918717228170

/-! ## A094816.P14979515894111003204

`A046716(gcd(A010816(n), A061579(n)))`
-/

namespace A094816.P14979515894111003204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (Int.gcd (A010816 n) (A061579 n))

end

end A094816.P14979515894111003204

/-! ## A094816.P16321597947558160692

`A046716(A038722(n+1)-A131821(n+1))`
-/

namespace A094816.P16321597947558160692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A038722 (n + 1) - A131821 (n + 1)).toNat

end

end A094816.P16321597947558160692

/-! ## A094816.P9392813046823911396

`A046716(A061579(n))`
-/

namespace A094816.P9392813046823911396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A061579 n).toNat

end

end A094816.P9392813046823911396

/-! ## A094816.P11405757222302544176

`A046716(A114327(n)+n)`
-/

namespace A094816.P11405757222302544176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A114327 n + (n : ℤ)).toNat

end

end A094816.P11405757222302544176

/-! ## A094816.P1126590488479828796

`A046716(A038722(n+1)-1)`
-/

namespace A094816.P1126590488479828796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A038722 (n + 1) - 1).toNat

end

end A094816.P1126590488479828796

/-! ## A094816.P7844787295963976515

`A046716(A023443(A038722(n+1)))`
-/

namespace A094816.P7844787295963976515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A094816.P7844787295963976515

/-! ## A094816.P3466928937562691491

`A046716(A038722(n+2))`
-/

namespace A094816.P3466928937562691491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A038722 (n + 2)).toNat

end

end A094816.P3466928937562691491

/-!
# A094817: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 8 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 3, s(2n) = 3.

The programs for A094817, the canonical program `A094817.P15384354926670045934` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094817 has offset 1).

The definition of A094817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094817.P15384354926670045934

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=6, a(2)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094817

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P15384354926670045934.Spec : Prop :=
  ∀ n, P15384354926670045934.a n = A094817 (n + 1)

theorem P15384354926670045934.correct : P15384354926670045934.Spec := by
  intro n
  simp only [A094817, Nat.add_sub_cancel]

end A094817

/-! ## A094817.P3233356281585096009

`1/4*(2^(n+1)+2*A007070(n+1)-2*A007070(n))`
-/

namespace A094817.P3233356281585096009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((2 ^ (n + 1) : ℤ) + 2 * A007070 (n + 1) - 2 * A007070 n : ℚ)

end

end A094817.P3233356281585096009

namespace A094817

/-- `1/4*(2^(n+1)+2*A007070(n+1)-2*A007070(n))` -/
def P3233356281585096009.Spec : Prop :=
  ∀ n, P3233356281585096009.a n = (A094817 (n + 1) : ℚ)

end A094817

/-! ## A094817.P14750073128183551508

`ogf((2-6x+3x^2)/(1-6x+10x^2-4x^3))`
-/

namespace A094817.P14750073128183551508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 3] [1, -6, 10, -4] n

end

end A094817.P14750073128183551508

namespace A094817

/-- `ogf((2-6x+3x^2)/(1-6x+10x^2-4x^3))` -/
def P14750073128183551508.Spec : Prop :=
  ∀ n, P14750073128183551508.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P12660481576136453856

`A094821(n+1)+2^n`
-/

namespace A094817.P12660481576136453856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 1) + (2 ^ n : ℤ)

end

end A094817.P12660481576136453856

namespace A094817

/-- `A094821(n+1)+2^n` -/
def P12660481576136453856.Spec : Prop :=
  ∀ n, P12660481576136453856.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P17428063492403195221

`A003480(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A094817.P17428063492403195221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003480 n + 2 * a (n - 1)

end

end A094817.P17428063492403195221

namespace A094817

/-- `A003480(n)+2*a(n-1)` -/
def P17428063492403195221.Spec : Prop :=
  ∀ n, P17428063492403195221.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P1141786136324718250

`A024175(n+1)+A007070(n)`
-/

namespace A094817.P1141786136324718250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) + A007070 n

end

end A094817.P1141786136324718250

namespace A094817

/-- `A024175(n+1)+A007070(n)` -/
def P1141786136324718250.Spec : Prop :=
  ∀ n, P1141786136324718250.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P13217643068672752599

`A094803(n+1)+A007052(n)`
-/

namespace A094817.P13217643068672752599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1) + A007052 n

end

end A094817.P13217643068672752599

namespace A094817

/-- `A094803(n+1)+A007052(n)` -/
def P13217643068672752599.Spec : Prop :=
  ∀ n, P13217643068672752599.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P11314990515628987087

`A094803(n+1)+∑[A003480(n)]`
-/

namespace A094817.P11314990515628987087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094817.P11314990515628987087

namespace A094817

/-- `A094803(n+1)+∑[A003480(n)]` -/
def P11314990515628987087.Spec : Prop :=
  ∀ n, P11314990515628987087.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P18088088072077076927

`A000225(n)+A094821(n+1)+1`
-/

namespace A094817.P18088088072077076927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A094821 (n + 1) + 1)

end

end A094817.P18088088072077076927

namespace A094817

/-- `A000225(n)+A094821(n+1)+1` -/
def P18088088072077076927.Spec : Prop :=
  ∀ n, P18088088072077076927.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P11798026190237147077

`A094803(n+1)+A062113(2*n)`
-/

namespace A094817.P11798026190237147077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1) + A062113 (2 * n)

end

end A094817.P11798026190237147077

namespace A094817

/-- `A094803(n+1)+A062113(2*n)` -/
def P11798026190237147077.Spec : Prop :=
  ∀ n, P11798026190237147077.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P14037881632433189751

`A094803(n+1)+A030436(2*n+1)`
-/

namespace A094817.P14037881632433189751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1) + A030436 (2 * n + 1)

end

end A094817.P14037881632433189751

namespace A094817

/-- `A094803(n+1)+A030436(2*n+1)` -/
def P14037881632433189751.Spec : Prop :=
  ∀ n, P14037881632433189751.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P10057872715767923504

`A006012(n+1)+A024175(n+1)-A006012(n)`
-/

namespace A094817.P10057872715767923504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + (A024175 (n + 1) - A006012 n)

end

end A094817.P10057872715767923504

namespace A094817

/-- `A006012(n+1)+A024175(n+1)-A006012(n)` -/
def P10057872715767923504.Spec : Prop :=
  ∀ n, P10057872715767923504.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P18002679036678714919

`Δ[A094803(n+1)]`
-/

namespace A094817.P18002679036678714919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094817.P18002679036678714919

namespace A094817

/-- `Δ[A094803(n+1)]` -/
def P18002679036678714919.Spec : Prop :=
  ∀ n, P18002679036678714919.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P2081140058655029199

`Δ[Δ[A024175(n+1)]]`
-/

namespace A094817.P2081140058655029199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094817.P2081140058655029199

namespace A094817

/-- `Δ[Δ[A024175(n+1)]]` -/
def P2081140058655029199.Spec : Prop :=
  ∀ n, P2081140058655029199.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P2452808078034560051

`A011782(n)+Δ[A003480(n)]`
-/

namespace A094817.P2452808078034560051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A094817.P2452808078034560051

namespace A094817

/-- `A011782(n)+Δ[A003480(n)]` -/
def P2452808078034560051.Spec : Prop :=
  ∀ n, P2452808078034560051.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P11554341188602535680

`Δ[A131577(n)+A003480(n)]`
-/

namespace A094817.P11554341188602535680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094817.P11554341188602535680

namespace A094817

/-- `Δ[A131577(n)+A003480(n)]` -/
def P11554341188602535680.Spec : Prop :=
  ∀ n, P11554341188602535680.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P4451806740970004611

`A048580(n)-A094821(n+1)`
-/

namespace A094817.P4451806740970004611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - A094821 (n + 1)

end

end A094817.P4451806740970004611

namespace A094817

/-- `A048580(n)-A094821(n+1)` -/
def P4451806740970004611.Spec : Prop :=
  ∀ n, P4451806740970004611.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P6253051974742021580

`(A048580(n)+A000079(n))/2`
-/

namespace A094817.P6253051974742021580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048580 n + A000079 n : ℚ) / 2

end

end A094817.P6253051974742021580

namespace A094817

/-- `(A048580(n)+A000079(n))/2` -/
def P6253051974742021580.Spec : Prop :=
  ∀ n, P6253051974742021580.a n = (A094817 (n + 1) : ℚ)

end A094817

/-! ## A094817.P14387697539737916413

`Δ[A003480(n)-Δ[A122958(n)]]`
-/

namespace A094817.P14387697539737916413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094817.P14387697539737916413

namespace A094817

/-- `Δ[A003480(n)-Δ[A122958(n)]]` -/
def P14387697539737916413.Spec : Prop :=
  ∀ n, P14387697539737916413.a n = A094817 (n + 1)

end A094817

/-! ## A094817.P15753549271352955144

`(A000079(n)+Δ[A007070(n)])/2`
-/

namespace A094817.P15753549271352955144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A094817.P15753549271352955144

namespace A094817

/-- `(A000079(n)+Δ[A007070(n)])/2` -/
def P15753549271352955144.Spec : Prop :=
  ∀ n, P15753549271352955144.a n = (A094817 (n + 1) : ℚ)

end A094817

/-!
# A094818: Number of classes of dp-homogeneous spherical curves with n double points.

The programs for A094818, there is no canonical definition to state claims against.
-/

/-! ## A094818.P5789738285071575989

`A144968(A328578(n)%A192866(n))`
-/

namespace A094818.P5789738285071575989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (Int.tmod (A328578 n) (A192866 n)).toNat

end

end A094818.P5789738285071575989

/-!
# A094820: Partial sums of A038548.

The programs for A094820, the canonical program `A094820.P5005010765945633983` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094820 has offset 1).

The definition of A094820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094820.P17152774485298379603

`A161842(n+1)/2`
-/

namespace A094820.P17152774485298379603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161842 (n + 1) : ℚ) / 2

end

end A094820.P17152774485298379603

namespace A094820

/-- `A161842(n+1)/2` -/
def P17152774485298379603.Spec : Prop :=
  ∀ n, P17152774485298379603.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P5005010765945633983

`A211264(n+1)+A000196(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094820

/-- `A211264(n+1)+A000196(n+1)` -/
def P5005010765945633983.Spec : Prop :=
  ∀ n, P5005010765945633983.a n = A094820 (n + 1)

theorem P5005010765945633983.correct : P5005010765945633983.Spec := by
  intro n
  simp only [A094820, Nat.add_sub_cancel]

end A094820

/-! ## A094820.P18444230427947151341

`A006218(n+1)-A211264(n+1)`
-/

namespace A094820.P18444230427947151341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A211264 (n + 1)

end

end A094820.P18444230427947151341

namespace A094820

/-- `A006218(n+1)-A211264(n+1)` -/
def P18444230427947151341.Spec : Prop :=
  ∀ n, P18444230427947151341.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P7553418826548246360

`(A006218(n+1)+A000196(n+1))/2`
-/

namespace A094820.P7553418826548246360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) + A000196 (n + 1) : ℚ) / 2

end

end A094820.P7553418826548246360

namespace A094820

/-- `(A006218(n+1)+A000196(n+1))/2` -/
def P7553418826548246360.Spec : Prop :=
  ∀ n, P7553418826548246360.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P14829816627737113378

`∑[ceil(∏{e}[n+1, #+1]/2)]`
-/

namespace A094820.P14829816627737113378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P14829816627737113378

namespace A094820

/-- `∑[ceil(∏{e}[n+1, #+1]/2)]` -/
def P14829816627737113378.Spec : Prop :=
  ∀ n, P14829816627737113378.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P14895618529594659007

`∑[round(∏{e}[n+1, #+1]/2)]`
-/

namespace A094820.P14895618529594659007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P14895618529594659007

namespace A094820

/-- `∑[round(∏{e}[n+1, #+1]/2)]` -/
def P14895618529594659007.Spec : Prop :=
  ∀ n, P14895618529594659007.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P17744666703277729953

`∑[floor((∏{e}[n+1, #+1]+1)/2)]`
-/

namespace A094820.P17744666703277729953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 : ℕ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P17744666703277729953

namespace A094820

/-- `∑[floor((∏{e}[n+1, #+1]+1)/2)]` -/
def P17744666703277729953.Spec : Prop :=
  ∀ n, P17744666703277729953.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P5914021166262343412

`∑[A038548(n+1)]`
-/

namespace A094820.P5914021166262343412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P5914021166262343412

namespace A094820

/-- `∑[A038548(n+1)]` -/
def P5914021166262343412.Spec : Prop :=
  ∀ n, P5914021166262343412.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P1629222045684169630

`∑[A072670(n)+1]`
-/

namespace A094820.P1629222045684169630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P1629222045684169630

namespace A094820

/-- `∑[A072670(n)+1]` -/
def P1629222045684169630.Spec : Prop :=
  ∀ n, P1629222045684169630.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P2612343304246386753

`A091627(n+1)+1`
-/

namespace A094820.P2612343304246386753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (n + 1) + 1

end

end A094820.P2612343304246386753

namespace A094820

/-- `A091627(n+1)+1` -/
def P2612343304246386753.Spec : Prop :=
  ∀ n, P2612343304246386753.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P9504799221702883524

`∑[sqrt(A330571(n+1))]`
-/

namespace A094820.P9504799221702883524
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330571 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P9504799221702883524

namespace A094820

/-- `∑[sqrt(A330571(n+1))]` -/
def P9504799221702883524.Spec : Prop :=
  ∀ n, P9504799221702883524.a n = (A094820 (n + 1) : ℝ)

end A094820

/-! ## A094820.P12785938777620777647

`∑[Δ[A132106(n)]/2]`
-/

namespace A094820.P12785938777620777647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P12785938777620777647

namespace A094820

/-- `∑[Δ[A132106(n)]/2]` -/
def P12785938777620777647.Spec : Prop :=
  ∀ n, P12785938777620777647.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P14591757095220935806

`floor(A132106(n+1)/2)`
-/

namespace A094820.P14591757095220935806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132106 (n + 1) : ℚ) / 2⌋

end

end A094820.P14591757095220935806

namespace A094820

/-- `floor(A132106(n+1)/2)` -/
def P14591757095220935806.Spec : Prop :=
  ∀ n, P14591757095220935806.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P11842283521439845267

`∑[A161841(n+1)/2]`
-/

namespace A094820.P11842283521439845267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P11842283521439845267

namespace A094820

/-- `∑[A161841(n+1)/2]` -/
def P11842283521439845267.Spec : Prop :=
  ∀ n, P11842283521439845267.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P11638129596805043523

`∑[round(Δ[A006218(n)/2])]`
-/

namespace A094820.P11638129596805043523
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P11638129596805043523

namespace A094820

/-- `∑[round(Δ[A006218(n)/2])]` -/
def P11638129596805043523.Spec : Prop :=
  ∀ n, P11638129596805043523.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P12600659859333925265

`A183003(n+1)+1+n`
-/

namespace A094820.P12600659859333925265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (n + 1) + 1 + (n : ℤ)

end

end A094820.P12600659859333925265

namespace A094820

/-- `A183003(n+1)+1+n` -/
def P12600659859333925265.Spec : Prop :=
  ∀ n, P12600659859333925265.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P15099334744295896728

`∑[ceil(A000005(n+1)/2)]`
-/

namespace A094820.P15099334744295896728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P15099334744295896728

namespace A094820

/-- `∑[ceil(A000005(n+1)/2)]` -/
def P15099334744295896728.Spec : Prop :=
  ∀ n, P15099334744295896728.a n = A094820 (n + 1)

end A094820

/-! ## A094820.P10683472957646324285

`∑[A161840(n+1)/2+1]`
-/

namespace A094820.P10683472957646324285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161840 (n + 1) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P10683472957646324285

namespace A094820

/-- `∑[A161840(n+1)/2+1]` -/
def P10683472957646324285.Spec : Prop :=
  ∀ n, P10683472957646324285.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P16043751764717050008

`∑[A060872(n+1)/(n+1)]`
-/

namespace A094820.P16043751764717050008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060872 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094820.P16043751764717050008

namespace A094820

/-- `∑[A060872(n+1)/(n+1)]` -/
def P16043751764717050008.Spec : Prop :=
  ∀ n, P16043751764717050008.a n = (A094820 (n + 1) : ℚ)

end A094820

/-! ## A094820.P1641376032148845323

`A183002(n+1)/2+n+1`
-/

namespace A094820.P1641376032148845323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183002 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A094820.P1641376032148845323

namespace A094820

/-- `A183002(n+1)/2+n+1` -/
def P1641376032148845323.Spec : Prop :=
  ∀ n, P1641376032148845323.a n = (A094820 (n + 1) : ℚ)

end A094820

/-!
# A094821: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 8 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 3, s(2n) = 5.

The programs for A094821, the canonical program `A094821.P16979317007006139674` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094821 has offset 1).

The definition of A094821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094821.P16979317007006139674

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094821

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P16979317007006139674.Spec : Prop :=
  ∀ n, P16979317007006139674.a n = A094821 (n + 1)

theorem P16979317007006139674.correct : P16979317007006139674.Spec := by
  intro n
  simp only [A094821, Nat.add_sub_cancel]

end A094821

/-! ## A094821.P5691880969400864280

`ogf((1-2x+x^2)/(1-6x+10x^2-4x^3))`
-/

namespace A094821.P5691880969400864280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -6, 10, -4] n

end

end A094821.P5691880969400864280

namespace A094821

/-- `ogf((1-2x+x^2)/(1-6x+10x^2-4x^3))` -/
def P5691880969400864280.Spec : Prop :=
  ∀ n, P5691880969400864280.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P16139143247294964977

`A094817(n+1)-2^n`
-/

namespace A094821.P16139143247294964977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094817 (n + 1) - (2 ^ n : ℤ)

end

end A094821.P16139143247294964977

namespace A094821

/-- `A094817(n+1)-2^n` -/
def P16139143247294964977.Spec : Prop :=
  ∀ n, P16139143247294964977.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P16506054880365819168

`A003480(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094821.P16506054880365819168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003480 n + 2 * a (n - 1)

end

end A094821.P16506054880365819168

namespace A094821

/-- `A003480(n)+2*a(n-1)` -/
def P16506054880365819168.Spec : Prop :=
  ∀ n, P16506054880365819168.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P9204386356281073737

`A094803(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A094821.P9204386356281073737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094803 n + 3 * a (n - 1)

end

end A094821.P9204386356281073737

namespace A094821

/-- `A094803(n)+3*a(n-1)` -/
def P9204386356281073737.Spec : Prop :=
  ∀ n, P9204386356281073737.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P445274788413347159

`A006012(n+1)-A024175(n+1)`
-/

namespace A094821.P445274788413347159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - A024175 (n + 1)

end

end A094821.P445274788413347159

namespace A094821

/-- `A006012(n+1)-A024175(n+1)` -/
def P445274788413347159.Spec : Prop :=
  ∀ n, P445274788413347159.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P8964506479272030905

`A030436(2*(n+1))-A024175(n+1)`
-/

namespace A094821.P8964506479272030905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * (n + 1)) - A024175 (n + 1)

end

end A094821.P8964506479272030905

namespace A094821

/-- `A030436(2*(n+1))-A024175(n+1)` -/
def P8964506479272030905.Spec : Prop :=
  ∀ n, P8964506479272030905.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P12823935190014599136

`A030435(2*n+1)-A024175(n+1)`
-/

namespace A094821.P12823935190014599136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * n + 1) - A024175 (n + 1)

end

end A094821.P12823935190014599136

namespace A094821

/-- `A030435(2*n+1)-A024175(n+1)` -/
def P12823935190014599136.Spec : Prop :=
  ∀ n, P12823935190014599136.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P8634550026409994940

`∑[A003480(n)/A000079(n)]*A000079(n)`
-/

namespace A094821.P8634550026409994940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A094821.P8634550026409994940

namespace A094821

/-- `∑[A003480(n)/A000079(n)]*A000079(n)` -/
def P8634550026409994940.Spec : Prop :=
  ∀ n, P8634550026409994940.a n = (A094821 (n + 1) : ℚ)

end A094821

/-! ## A094821.P9888315112849196917

`A007052(n)+A007052(n)-A024175(n+1)`
-/

namespace A094821.P9888315112849196917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n + (A007052 n - A024175 (n + 1))

end

end A094821.P9888315112849196917

namespace A094821

/-- `A007052(n)+A007052(n)-A024175(n+1)` -/
def P9888315112849196917.Spec : Prop :=
  ∀ n, P9888315112849196917.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P16220339370604483515

`A006012(n+1)+A007070(n)-A094817(n+1)`
-/

namespace A094821.P16220339370604483515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + (A007070 n - A094817 (n + 1))

end

end A094821.P16220339370604483515

namespace A094821

/-- `A006012(n+1)+A007070(n)-A094817(n+1)` -/
def P16220339370604483515.Spec : Prop :=
  ∀ n, P16220339370604483515.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P4224562273548099171

`Δ[A369626(n+1)]`
-/

namespace A094821.P4224562273548099171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094821.P4224562273548099171

namespace A094821

/-- `Δ[A369626(n+1)]` -/
def P4224562273548099171.Spec : Prop :=
  ∀ n, P4224562273548099171.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P15066459988092246307

`∑[A181367(n+1)/2]`
-/

namespace A094821.P15066459988092246307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181367 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094821.P15066459988092246307

namespace A094821

/-- `∑[A181367(n+1)/2]` -/
def P15066459988092246307.Spec : Prop :=
  ∀ n, P15066459988092246307.a n = (A094821 (n + 1) : ℚ)

end A094821

/-! ## A094821.P18247501048742100399

`Δ[A122958(n)+A003480(n)]`
-/

namespace A094821.P18247501048742100399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n + A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094821.P18247501048742100399

namespace A094821

/-- `Δ[A122958(n)+A003480(n)]` -/
def P18247501048742100399.Spec : Prop :=
  ∀ n, P18247501048742100399.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P4656742841319169113

`Δ[A003480(n)-A011782(n)]`
-/

namespace A094821.P4656742841319169113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094821.P4656742841319169113

namespace A094821

/-- `Δ[A003480(n)-A011782(n)]` -/
def P4656742841319169113.Spec : Prop :=
  ∀ n, P4656742841319169113.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P6060602509301171388

`Δ[A003480(n)]-A131577(n)`
-/

namespace A094821.P6060602509301171388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131577 n

end

end A094821.P6060602509301171388

namespace A094821

/-- `Δ[A003480(n)]-A131577(n)` -/
def P6060602509301171388.Spec : Prop :=
  ∀ n, P6060602509301171388.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P5331047427896999992

`A020727(n)-A094803(n+1)`
-/

namespace A094821.P5331047427896999992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A094803 (n + 1)

end

end A094821.P5331047427896999992

namespace A094821

/-- `A020727(n)-A094803(n+1)` -/
def P5331047427896999992.Spec : Prop :=
  ∀ n, P5331047427896999992.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P6991573997012444963

`A048580(n)-A094817(n+1)`
-/

namespace A094821.P6991573997012444963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - A094817 (n + 1)

end

end A094821.P6991573997012444963

namespace A094821

/-- `A048580(n)-A094817(n+1)` -/
def P6991573997012444963.Spec : Prop :=
  ∀ n, P6991573997012444963.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P7181683403269268802

`A181367(n+1)-A003480(n)`
-/

namespace A094821.P7181683403269268802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181367 (n + 1) - A003480 n

end

end A094821.P7181683403269268802

namespace A094821

/-- `A181367(n+1)-A003480(n)` -/
def P7181683403269268802.Spec : Prop :=
  ∀ n, P7181683403269268802.a n = A094821 (n + 1)

end A094821

/-! ## A094821.P17960005720325670199

`(A048580(n)-A000079(n))/2`
-/

namespace A094821.P17960005720325670199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048580 n - A000079 n : ℚ) / 2

end

end A094821.P17960005720325670199

namespace A094821

/-- `(A048580(n)-A000079(n))/2` -/
def P17960005720325670199.Spec : Prop :=
  ∀ n, P17960005720325670199.a n = (A094821 (n + 1) : ℚ)

end A094821

/-!
# A094822: Expansion of e.g.f.: exp(3*x)/(1-3*x)^(1/3).

The programs for A094822, there is no canonical definition to state claims against.
-/

/-! ## A094822.P17839162679271227588

`∑[A206913(∏[Δ[n²]])]`
-/

namespace A094822.P17839162679271227588
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094822.P17839162679271227588

/-!
# A094823: If n = c0 + c1*10 + c2*10^2 + ...cn*10^n then a(n) = c0 + c1*13 + c2*13^2 + ...cn*13^k.

The programs for A094823, there is no canonical definition to state claims against.
-/

/-! ## A094823.P16994842261310639538

`eq[A039723(A055648(n)), A055648(n)]`
-/

namespace A094823.P16994842261310639538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094823.P16994842261310639538

/-! ## A094823.P11296701707010695062

`lt[A039723(A055648(n)), A055648(n+4)]`
-/

namespace A094823.P11296701707010695062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094823.P11296701707010695062

/-! ## A094823.P2562336485206584306

`∑[A326625(2*A123895(n))]`
-/

namespace A094823.P2562336485206584306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (2 * A123895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094823.P2562336485206584306

/-! ## A094823.P14771532134652301091

`∑[A070481(A123895(n)²)%7]`
-/

namespace A094823.P14771532134652301091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070481 (A123895 n ^ 2).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094823.P14771532134652301091

/-!
# A094824: Maximum number of longest common substrings of two binary sequences of length n.

The programs for A094824, there is no canonical definition to state claims against.
-/

/-! ## A094824.P6443320326467830445

`A095861(∑[A309222(n)]+6)`
-/

namespace A094824.P6443320326467830445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A094824.P6443320326467830445

/-! ## A094824.P7695037152068891405

`∑[A116633(n)%p?[A232539(n)]]`
-/

namespace A094824.P7695037152068891405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232539 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116633 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094824.P7695037152068891405

/-! ## A094824.P12603763763171256198

`∑[A006257(A096116(n+1))%3]`
-/

namespace A094824.P12603763763171256198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006257 (A096116 (n + 1)).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094824.P12603763763171256198

/-! ## A094824.P14296803677019790717

`∑[A008612(A174273(A039320(n+1)))]`
-/

namespace A094824.P14296803677019790717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A174273 (A039320 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094824.P14296803677019790717

/-! ## A094824.P13121457182971239847

`∑[A067147(A008612(A252023(n+1)))]`
-/

namespace A094824.P13121457182971239847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A008612 (A252023 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094824.P13121457182971239847

/-!
# A094825: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 10 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 1, s(2n) = 7.

The programs for A094825, the canonical program `A094825.P15200098355374966176` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094825 has offset 3).

The definition of A094825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094825.P15200098355374966176

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=7, a(2)=35, a(3)=153`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094825

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P15200098355374966176.Spec : Prop :=
  ∀ n, P15200098355374966176.a n = A094825 (n + 3)

theorem P15200098355374966176.correct : P15200098355374966176.Spec := by
  intro n
  simp only [A094825, Nat.add_sub_cancel]

end A094825

/-! ## A094825.P15376619484908109939

`1/10*(2*A093131(n+4)-5*A093131(n+3)-5*A001906(n+3))`
-/

namespace A094825.P15376619484908109939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 10 * (2 * A093131 (n + 4) - 5 * A093131 (n + 3) - 5 * A001906 (n + 3) : ℚ)

end

end A094825.P15376619484908109939

namespace A094825

/-- `1/10*(2*A093131(n+4)-5*A093131(n+3)-5*A001906(n+3))` -/
def P15376619484908109939.Spec : Prop :=
  ∀ n, P15376619484908109939.a n = (A094825 (n + 3) : ℚ)

end A094825

/-! ## A094825.P9617248115661404843

`Δ[A094865(n+2)]`
-/

namespace A094825.P9617248115661404843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094825.P9617248115661404843

namespace A094825

/-- `Δ[A094865(n+2)]` -/
def P9617248115661404843.Spec : Prop :=
  ∀ n, P9617248115661404843.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P13676441561233943815

`A206947(n+3)/2`
-/

namespace A094825.P13676441561233943815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206947 (n + 3) : ℚ) / 2

end

end A094825.P13676441561233943815

namespace A094825

/-- `A206947(n+3)/2` -/
def P13676441561233943815.Spec : Prop :=
  ∀ n, P13676441561233943815.a n = (A094825 (n + 3) : ℚ)

end A094825

/-! ## A094825.P9836197756335494778

`A217783(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094825.P9836197756335494778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217783 n + 2 * a (n - 1)

end

end A094825.P9836197756335494778

namespace A094825

/-- `A217783(n)+2*a(n-1)` -/
def P9836197756335494778.Spec : Prop :=
  ∀ n, P9836197756335494778.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P2471178654615943423

`A336602(n)-A094865(n)`
-/

namespace A094825.P2471178654615943423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336602 n - A094865 n

end

end A094825.P2471178654615943423

namespace A094825

/-- `A336602(n)-A094865(n)` -/
def P2471178654615943423.Spec : Prop :=
  ∀ n, P2471178654615943423.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P10981808519803791981

`∑[A094865(n+2)+A030191(n)]`
-/

namespace A094825.P10981808519803791981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2) + A030191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094825.P10981808519803791981

namespace A094825

/-- `∑[A094865(n+2)+A030191(n)]` -/
def P10981808519803791981.Spec : Prop :=
  ∀ n, P10981808519803791981.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P15136776110992504052

`A094865(n+2)+A094788(n+2)`
-/

namespace A094825.P15136776110992504052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2) + A094788 (n + 2)

end

end A094825.P15136776110992504052

namespace A094825

/-- `A094865(n+2)+A094788(n+2)` -/
def P15136776110992504052.Spec : Prop :=
  ∀ n, P15136776110992504052.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P7448638669760657638

`A094788(n+3)-A030191(n+1)`
-/

namespace A094825.P7448638669760657638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094788 (n + 3) - A030191 (n + 1)

end

end A094825.P7448638669760657638

namespace A094825

/-- `A094788(n+3)-A030191(n+1)` -/
def P7448638669760657638.Spec : Prop :=
  ∀ n, P7448638669760657638.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P6846118623206903397

`A094788(n+3)-A093131(n+2)`
-/

namespace A094825.P6846118623206903397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094788 (n + 3) - A093131 (n + 2)

end

end A094825.P6846118623206903397

namespace A094825

/-- `A094788(n+3)-A093131(n+2)` -/
def P6846118623206903397.Spec : Prop :=
  ∀ n, P6846118623206903397.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P2319513852288490374

`A094865(n+3)-A094865(n+2)`
-/

namespace A094825.P2319513852288490374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 3) - A094865 (n + 2)

end

end A094825.P2319513852288490374

namespace A094825

/-- `A094865(n+3)-A094865(n+2)` -/
def P2319513852288490374.Spec : Prop :=
  ∀ n, P2319513852288490374.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P3524726924050135311

`∑[A094865(n+2)+A093131(n+1)]`
-/

namespace A094825.P3524726924050135311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2) + A093131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094825.P3524726924050135311

namespace A094825

/-- `∑[A094865(n+2)+A093131(n+1)]` -/
def P3524726924050135311.Spec : Prop :=
  ∀ n, P3524726924050135311.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P17441217439530421427

`A001519(n+1)+A336602(n)-A033191(n+1)`
-/

namespace A094825.P17441217439530421427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A336602 n - A033191 (n + 1))

end

end A094825.P17441217439530421427

namespace A094825

/-- `A001519(n+1)+A336602(n)-A033191(n+1)` -/
def P17441217439530421427.Spec : Prop :=
  ∀ n, P17441217439530421427.a n = A094825 (n + 3)

end A094825

/-! ## A094825.P11192006590293945195

`A094788(n+3)-(A094788(n+2)+A094667(n+2))`
-/

namespace A094825.P11192006590293945195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094788 (n + 3) - (A094788 (n + 2) + A094667 (n + 2))

end

end A094825.P11192006590293945195

namespace A094825

/-- `A094788(n+3)-(A094788(n+2)+A094667(n+2))` -/
def P11192006590293945195.Spec : Prop :=
  ∀ n, P11192006590293945195.a n = A094825 (n + 3)

end A094825

/-!
# A094826: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 1, s(2n) = 3.

The programs for A094826, the canonical program `A094826.P1596488058289889085` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094826 has offset 1).

The definition of A094826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094826.P1596488058289889085

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094826

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P1596488058289889085.Spec : Prop :=
  ∀ n, P1596488058289889085.a n = A094826 (n + 1)

theorem P1596488058289889085.correct : P1596488058289889085.Spec := by
  intro n
  simp only [A094826, Nat.add_sub_cancel]

end A094826

/-! ## A094826.P12025044304019391800

`ogf((1-3x)/(1-6x+9x^2-x^3))`
-/

namespace A094826.P12025044304019391800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 9, -1] n

end

end A094826.P12025044304019391800

namespace A094826

/-- `ogf((1-3x)/(1-6x+9x^2-x^3))` -/
def P12025044304019391800.Spec : Prop :=
  ∀ n, P12025044304019391800.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P1000441649069460413

`∑[A094831(n)]`
-/

namespace A094826.P1000441649069460413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094826.P1000441649069460413

namespace A094826

/-- `∑[A094831(n)]` -/
def P1000441649069460413.Spec : Prop :=
  ∀ n, P1000441649069460413.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P8277295378460330911

`A052931(2*n)`
-/

namespace A094826.P8277295378460330911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n)

end

end A094826.P8277295378460330911

namespace A094826

/-- `A052931(2*n)` -/
def P8277295378460330911.Spec : Prop :=
  ∀ n, P8277295378460330911.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P15494126807351953993

`∑[A188048(2*n)]`
-/

namespace A094826.P15494126807351953993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094826.P15494126807351953993

namespace A094826

/-- `∑[A188048(2*n)]` -/
def P15494126807351953993.Spec : Prop :=
  ∀ n, P15494126807351953993.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P11025465944141068450

`A187497(6*n+3)`
-/

namespace A094826.P11025465944141068450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * n + 3)

end

end A094826.P11025465944141068450

namespace A094826

/-- `A187497(6*n+3)` -/
def P11025465944141068450.Spec : Prop :=
  ∀ n, P11025465944141068450.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P188628859768743634

`A187496(6*n+4)`
-/

namespace A094826.P188628859768743634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * n + 4)

end

end A094826.P188628859768743634

namespace A094826

/-- `A187496(6*n+4)` -/
def P188628859768743634.Spec : Prop :=
  ∀ n, P188628859768743634.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P13204361992503679073

`A187495(6*n+7)`
-/

namespace A094826.P13204361992503679073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * n + 7)

end

end A094826.P13204361992503679073

namespace A094826

/-- `A187495(6*n+7)` -/
def P13204361992503679073.Spec : Prop :=
  ∀ n, P13204361992503679073.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P13198674717524273754

`record[A052931(A004275(n))]`
-/

namespace A094826.P13198674717524273754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094826.P13198674717524273754

namespace A094826

/-- `record[A052931(A004275(n))]` -/
def P13198674717524273754.Spec : Prop :=
  ∀ n, P13198674717524273754.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P17543201891675113890

`record[A052931(A014681(n))]`
-/

namespace A094826.P17543201891675113890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094826.P17543201891675113890

namespace A094826

/-- `record[A052931(A014681(n))]` -/
def P17543201891675113890.Spec : Prop :=
  ∀ n, P17543201891675113890.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P6583533418754850951

`record[A052931(A093178(n)-1)]`
-/

namespace A094826.P6583533418754850951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094826.P6583533418754850951

namespace A094826

/-- `record[A052931(A093178(n)-1)]` -/
def P6583533418754850951.Spec : Prop :=
  ∀ n, P6583533418754850951.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P10171592081601855796

`record[A052931(n/A093178(n))]`
-/

namespace A094826.P10171592081601855796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094826.P10171592081601855796

namespace A094826

/-- `record[A052931(n/A093178(n))]` -/
def P10171592081601855796.Spec : Prop :=
  ∀ n, P10171592081601855796.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P16554477166217197052

`record[A052931(A006257(n+1)-1)]`
-/

namespace A094826.P16554477166217197052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094826.P16554477166217197052

namespace A094826

/-- `record[A052931(A006257(n+1)-1)]` -/
def P16554477166217197052.Spec : Prop :=
  ∀ n, P16554477166217197052.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P10480799477556849068

`Δ[A080938(n+1)]`
-/

namespace A094826.P10480799477556849068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094826.P10480799477556849068

namespace A094826

/-- `Δ[A080938(n+1)]` -/
def P10480799477556849068.Spec : Prop :=
  ∀ n, P10480799477556849068.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P12627678173399080417

`∑[A215455(n)/3]`
-/

namespace A094826.P12627678173399080417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215455 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094826.P12627678173399080417

namespace A094826

/-- `∑[A215455(n)/3]` -/
def P12627678173399080417.Spec : Prop :=
  ∀ n, P12627678173399080417.a n = (A094826 (n + 1) : ℚ)

end A094826

/-! ## A094826.P11830645899921612129

`A214699(Δ[n²])/3`
-/

namespace A094826.P11830645899921612129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214699 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A094826.P11830645899921612129

namespace A094826

/-- `A214699(Δ[n²])/3` -/
def P11830645899921612129.Spec : Prop :=
  ∀ n, P11830645899921612129.a n = (A094826 (n + 1) : ℚ)

end A094826

/-! ## A094826.P1665072822578250600

`A094831(n+1)-A094832(n)`
-/

namespace A094826.P1665072822578250600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 (n + 1) - A094832 n

end

end A094826.P1665072822578250600

namespace A094826

/-- `A094831(n+1)-A094832(n)` -/
def P1665072822578250600.Spec : Prop :=
  ∀ n, P1665072822578250600.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P15226095453709260904

`A080938(n+2)-A080938(n+1)`
-/

namespace A094826.P15226095453709260904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 (n + 2) - A080938 (n + 1)

end

end A094826.P15226095453709260904

namespace A094826

/-- `A080938(n+2)-A080938(n+1)` -/
def P15226095453709260904.Spec : Prop :=
  ∀ n, P15226095453709260904.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P904746729182645806

`∑[A188022(2*n+1)-A188022(2*n)]`
-/

namespace A094826.P904746729182645806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n + 1) - A188022 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094826.P904746729182645806

namespace A094826

/-- `∑[A188022(2*n+1)-A188022(2*n)]` -/
def P904746729182645806.Spec : Prop :=
  ∀ n, P904746729182645806.a n = A094826 (n + 1)

end A094826

/-! ## A094826.P12506879491067626696

`A188021(2*(n+1))-A188021(2*n+1)`
-/

namespace A094826.P12506879491067626696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * (n + 1)) - A188021 (2 * n + 1)

end

end A094826.P12506879491067626696

namespace A094826

/-- `A188021(2*(n+1))-A188021(2*n+1)` -/
def P12506879491067626696.Spec : Prop :=
  ∀ n, P12506879491067626696.a n = A094826 (n + 1)

end A094826

/-!
# A094827: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 1, s(2n+1) = 4.

The programs for A094827, the canonical program `A094827.P13320971099337243996` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094827 has offset 1).

The definition of A094827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094827.P13320971099337243996

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=48`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094827

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P13320971099337243996.Spec : Prop :=
  ∀ n, P13320971099337243996.a n = A094827 (n + 1)

theorem P13320971099337243996.correct : P13320971099337243996.Spec := by
  intro n
  simp only [A094827, Nat.add_sub_cancel]

end A094827

/-! ## A094827.P5226352755966098275

`∑[A094832(n)]`
-/

namespace A094827.P5226352755966098275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094827.P5226352755966098275

namespace A094827

/-- `∑[A094832(n)]` -/
def P5226352755966098275.Spec : Prop :=
  ∀ n, P5226352755966098275.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P15390026386389114909

`A188021(2*(n+1))`
-/

namespace A094827.P15390026386389114909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * (n + 1))

end

end A094827.P15390026386389114909

namespace A094827

/-- `A188021(2*(n+1))` -/
def P15390026386389114909.Spec : Prop :=
  ∀ n, P15390026386389114909.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P656035081104134822

`A187498(6*(n+1))`
-/

namespace A094827.P656035081104134822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (6 * (n + 1))

end

end A094827.P656035081104134822

namespace A094827

/-- `A187498(6*(n+1))` -/
def P656035081104134822.Spec : Prop :=
  ∀ n, P656035081104134822.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P11839433145293794115

`A187496(6*n+8)`
-/

namespace A094827.P11839433145293794115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * n + 8)

end

end A094827.P11839433145293794115

namespace A094827

/-- `A187496(6*n+8)` -/
def P11839433145293794115.Spec : Prop :=
  ∀ n, P11839433145293794115.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P13788561325426513498

`∑[A188022(2*n+1)]`
-/

namespace A094827.P13788561325426513498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094827.P13788561325426513498

namespace A094827

/-- `∑[A188022(2*n+1)]` -/
def P13788561325426513498.Spec : Prop :=
  ∀ n, P13788561325426513498.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P14618596923166246982

`A094854(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094827.P14618596923166246982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094854 n + 2 * a (n - 1)

end

end A094827.P14618596923166246982

namespace A094827

/-- `A094854(n)+2*a(n-1)` -/
def P14618596923166246982.Spec : Prop :=
  ∀ n, P14618596923166246982.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P5200402417239449855

`A187495(A016969(n+1))`
-/

namespace A094827.P5200402417239449855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A016969 (n + 1)).toNat

end

end A094827.P5200402417239449855

namespace A094827

/-- `A187495(A016969(n+1))` -/
def P5200402417239449855.Spec : Prop :=
  ∀ n, P5200402417239449855.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P1651401354814691401

`2*A094832(n)-A094854(n)`
-/

namespace A094827.P1651401354814691401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094832 n - A094854 n

end

end A094827.P1651401354814691401

namespace A094827

/-- `2*A094832(n)-A094854(n)` -/
def P1651401354814691401.Spec : Prop :=
  ∀ n, P1651401354814691401.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P12895870846541953982

`A187495(A112414(2*n+1)+1)`
-/

namespace A094827.P12895870846541953982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A112414 (2 * n + 1) + 1).toNat

end

end A094827.P12895870846541953982

namespace A094827

/-- `A187495(A112414(2*n+1)+1)` -/
def P12895870846541953982.Spec : Prop :=
  ∀ n, P12895870846541953982.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P8800096311654279200

`A094826(n+2)-A080938(n+2)`
-/

namespace A094827.P8800096311654279200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094826 (n + 2) - A080938 (n + 2)

end

end A094827.P8800096311654279200

namespace A094827

/-- `A094826(n+2)-A080938(n+2)` -/
def P8800096311654279200.Spec : Prop :=
  ∀ n, P8800096311654279200.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P14376762600732488091

`∑[Δ[A052931(2*n)]-A052931(2*n)]`
-/

namespace A094827.P14376762600732488091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094827.P14376762600732488091

namespace A094827

/-- `∑[Δ[A052931(2*n)]-A052931(2*n)]` -/
def P14376762600732488091.Spec : Prop :=
  ∀ n, P14376762600732488091.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P8140499820951043702

`2*A188022(2*n+1)-A061551(2*n)`
-/

namespace A094827.P8140499820951043702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188022 (2 * n + 1) - A061551 (2 * n)

end

end A094827.P8140499820951043702

namespace A094827

/-- `2*A188022(2*n+1)-A061551(2*n)` -/
def P8140499820951043702.Spec : Prop :=
  ∀ n, P8140499820951043702.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P2268306258843681168

`A094832(n+1)-A094854(n+1)`
-/

namespace A094827.P2268306258843681168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - A094854 (n + 1)

end

end A094827.P2268306258843681168

namespace A094827

/-- `A094832(n+1)-A094854(n+1)` -/
def P2268306258843681168.Spec : Prop :=
  ∀ n, P2268306258843681168.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P17871851309380770868

`Δ[Δ[A080938(n+1)]]-A080938(n+1)`
-/

namespace A094827.P17871851309380770868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080938 (n + 1)

end

end A094827.P17871851309380770868

namespace A094827

/-- `Δ[Δ[A080938(n+1)]]-A080938(n+1)` -/
def P17871851309380770868.Spec : Prop :=
  ∀ n, P17871851309380770868.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P3112993966856486251

`A094832(n+1)-(A094855(n)+A094832(n))`
-/

namespace A094827.P3112993966856486251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - (A094855 n + A094832 n)

end

end A094827.P3112993966856486251

namespace A094827

/-- `A094832(n+1)-(A094855(n)+A094832(n))` -/
def P3112993966856486251.Spec : Prop :=
  ∀ n, P3112993966856486251.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P7905125178467803105

`A217733(2*n+3)-A065455(2*n+3)`
-/

namespace A094827.P7905125178467803105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (2 * n + 3) - A065455 (2 * n + 3)

end

end A094827.P7905125178467803105

namespace A094827

/-- `A217733(2*n+3)-A065455(2*n+3)` -/
def P7905125178467803105.Spec : Prop :=
  ∀ n, P7905125178467803105.a n = A094827 (n + 1)

end A094827

/-! ## A094827.P13882231377038134199

`A095364(2*(n+1))+A095367(2*(n+1))-A095367(2*n+3)`
-/

namespace A094827.P13882231377038134199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095364 (2 * (n + 1)) + (A095367 (2 * (n + 1)) - A095367 (2 * n + 3))

end

end A094827.P13882231377038134199

namespace A094827

/-- `A095364(2*(n+1))+A095367(2*(n+1))-A095367(2*n+3)` -/
def P13882231377038134199.Spec : Prop :=
  ∀ n, P13882231377038134199.a n = A094827 (n + 1)

end A094827

/-!
# A094828: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 1, s(2n) = 5.

The programs for A094828, the canonical program `A094828.P9585980669845455272` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094828 has offset 2).

The definition of A094828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094828.P9585980669845455272

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=75`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094828

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P9585980669845455272.Spec : Prop :=
  ∀ n, P9585980669845455272.a n = A094828 (n + 2)

theorem P9585980669845455272.correct : P9585980669845455272.Spec := by
  intro n
  simp only [A094828, Nat.add_sub_cancel]

end A094828

/-! ## A094828.P16323469004628198873

`∑[ogf((1-2x)/(1-6x+9x^2-x^3))]`
-/

namespace A094828.P16323469004628198873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 9, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P16323469004628198873

namespace A094828

/-- `∑[ogf((1-2x)/(1-6x+9x^2-x^3))]` -/
def P16323469004628198873.Spec : Prop :=
  ∀ n, P16323469004628198873.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P18321732933922991885

`∑[A094833(n+1)]`
-/

namespace A094828.P18321732933922991885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P18321732933922991885

namespace A094828

/-- `∑[A094833(n+1)]` -/
def P18321732933922991885.Spec : Prop :=
  ∀ n, P18321732933922991885.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P13534306933352975096

`A188021(2*n+3)`
-/

namespace A094828.P13534306933352975096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n + 3)

end

end A094828.P13534306933352975096

namespace A094828

/-- `A188021(2*n+3)` -/
def P13534306933352975096.Spec : Prop :=
  ∀ n, P13534306933352975096.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P4196065775821978120

`A187498(6*n+9)`
-/

namespace A094828.P4196065775821978120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (6 * n + 9)

end

end A094828.P4196065775821978120

namespace A094828

/-- `A187498(6*n+9)` -/
def P4196065775821978120.Spec : Prop :=
  ∀ n, P4196065775821978120.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P7335991106264326857

`A187496(6*n+11)`
-/

namespace A094828.P7335991106264326857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * n + 11)

end

end A094828.P7335991106264326857

namespace A094828

/-- `A187496(6*n+11)` -/
def P7335991106264326857.Spec : Prop :=
  ∀ n, P7335991106264326857.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P1830935192442862262

`∑[A188022(2*(n+1))]`
-/

namespace A094828.P1830935192442862262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P1830935192442862262

namespace A094828

/-- `∑[A188022(2*(n+1))]` -/
def P1830935192442862262.Spec : Prop :=
  ∀ n, P1830935192442862262.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P8441903520060450660

`a(n-1)+A094855(n)+a(n-1)` with `a(0)=1`
-/

namespace A094828.P8441903520060450660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A094855 n + a (n - 1))

end

end A094828.P8441903520060450660

namespace A094828

/-- `a(n-1)+A094855(n)+a(n-1)` -/
def P8441903520060450660.Spec : Prop :=
  ∀ n, P8441903520060450660.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P1689267180983657860

`A187495(2*A112414(n))`
-/

namespace A094828.P1689267180983657860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (2 * A112414 n).toNat

end

end A094828.P1689267180983657860

namespace A094828

/-- `A187495(2*A112414(n))` -/
def P1689267180983657860.Spec : Prop :=
  ∀ n, P1689267180983657860.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P13135018716525846822

`A094832(n+1)-A080938(n+2)`
-/

namespace A094828.P13135018716525846822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - A080938 (n + 2)

end

end A094828.P13135018716525846822

namespace A094828

/-- `A094832(n+1)-A080938(n+2)` -/
def P13135018716525846822.Spec : Prop :=
  ∀ n, P13135018716525846822.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P8724878928798284290

`A094833(n+2)-A094855(n+1)`
-/

namespace A094828.P8724878928798284290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - A094855 (n + 1)

end

end A094828.P8724878928798284290

namespace A094828

/-- `A094833(n+2)-A094855(n+1)` -/
def P8724878928798284290.Spec : Prop :=
  ∀ n, P8724878928798284290.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P926043353564824357

`A094827(n+2)-A094826(n+2)`
-/

namespace A094828.P926043353564824357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094827 (n + 2) - A094826 (n + 2)

end

end A094828.P926043353564824357

namespace A094828

/-- `A094827(n+2)-A094826(n+2)` -/
def P926043353564824357.Spec : Prop :=
  ∀ n, P926043353564824357.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P18106420638497856148

`A217733(2*(n+1))-A094832(n+1)`
-/

namespace A094828.P18106420638497856148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (2 * (n + 1)) - A094832 (n + 1)

end

end A094828.P18106420638497856148

namespace A094828

/-- `A217733(2*(n+1))-A094832(n+1)` -/
def P18106420638497856148.Spec : Prop :=
  ∀ n, P18106420638497856148.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P15858482308369456668

`2*A094829(n+2)-A094256(n+1)`
-/

namespace A094828.P15858482308369456668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094829 (n + 2) - A094256 (n + 1)

end

end A094828.P15858482308369456668

namespace A094828

/-- `2*A094829(n+2)-A094256(n+1)` -/
def P15858482308369456668.Spec : Prop :=
  ∀ n, P15858482308369456668.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P1241579954558503578

`∑[A052931(2*n+1)+A052931(2*n)]`
-/

namespace A094828.P1241579954558503578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n + 1) + A052931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P1241579954558503578

namespace A094828

/-- `∑[A052931(2*n+1)+A052931(2*n)]` -/
def P1241579954558503578.Spec : Prop :=
  ∀ n, P1241579954558503578.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P11968134763410718013

`∑[∑[A188048(2*n+1)+A188048(2*n)]]`
-/

namespace A094828.P11968134763410718013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 1) + A188048 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P11968134763410718013

namespace A094828

/-- `∑[∑[A188048(2*n+1)+A188048(2*n)]]` -/
def P11968134763410718013.Spec : Prop :=
  ∀ n, P11968134763410718013.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P4988495470543361438

`∑[∑[A065455(2*n+1)-A065455(2*n)]]`
-/

namespace A094828.P4988495470543361438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (2 * n + 1) - A065455 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P4988495470543361438

namespace A094828

/-- `∑[∑[A065455(2*n+1)-A065455(2*n)]]` -/
def P4988495470543361438.Spec : Prop :=
  ∀ n, P4988495470543361438.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P7600789380235857835

`A094833(n+2)-(A094854(n+1)+A094833(n+1))`
-/

namespace A094828.P7600789380235857835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - (A094854 (n + 1) + A094833 (n + 1))

end

end A094828.P7600789380235857835

namespace A094828

/-- `A094833(n+2)-(A094854(n+1)+A094833(n+1))` -/
def P7600789380235857835.Spec : Prop :=
  ∀ n, P7600789380235857835.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P4858872498545349873

`A095368(2*n+3)-A095367(2*n+3)`
-/

namespace A094828.P4858872498545349873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095368 (2 * n + 3) - A095367 (2 * n + 3)

end

end A094828.P4858872498545349873

namespace A094828

/-- `A095368(2*n+3)-A095367(2*n+3)` -/
def P4858872498545349873.Spec : Prop :=
  ∀ n, P4858872498545349873.a n = A094828 (n + 2)

end A094828

/-! ## A094828.P2913308215723620456

`∑[A095367(2*(n+1))-A095364(2*(n+1))]`
-/

namespace A094828.P2913308215723620456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (2 * (n + 1)) - A095364 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094828.P2913308215723620456

namespace A094828

/-- `∑[A095367(2*(n+1))-A095364(2*(n+1))]` -/
def P2913308215723620456.Spec : Prop :=
  ∀ n, P2913308215723620456.a n = A094828 (n + 2)

end A094828

/-!
# A094829: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 1, s(2n+1) = 6.

The programs for A094829, the canonical program `A094829.P4287629282361900753` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094829 has offset 2).

The definition of A094829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094829.P4287629282361900753

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=27`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094829

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P4287629282361900753.Spec : Prop :=
  ∀ n, P4287629282361900753.a n = A094829 (n + 2)

theorem P4287629282361900753.correct : P4287629282361900753.Spec := by
  intro n
  simp only [A094829, Nat.add_sub_cancel]

end A094829

/-! ## A094829.P17950920648472840397

`ogf(1/(1-6x+9x^2-x^3))`
-/

namespace A094829.P17950920648472840397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 9, -1] n

end

end A094829.P17950920648472840397

namespace A094829

/-- `ogf(1/(1-6x+9x^2-x^3))` -/
def P17950920648472840397.Spec : Prop :=
  ∀ n, P17950920648472840397.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P8087439457184859215

`∑[A094834(n+1)]`
-/

namespace A094829.P8087439457184859215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094829.P8087439457184859215

namespace A094829

/-- `∑[A094834(n+1)]` -/
def P8087439457184859215.Spec : Prop :=
  ∀ n, P8087439457184859215.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P3085649928391396927

`A052931(2*n+3)`
-/

namespace A094829.P3085649928391396927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n + 3)

end

end A094829.P3085649928391396927

namespace A094829

/-- `A052931(2*n+3)` -/
def P3085649928391396927.Spec : Prop :=
  ∀ n, P3085649928391396927.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P6830352645250216676

`A187497(6*(n+2))`
-/

namespace A094829.P6830352645250216676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * (n + 2))

end

end A094829.P6830352645250216676

namespace A094829

/-- `A187497(6*(n+2))` -/
def P6830352645250216676.Spec : Prop :=
  ∀ n, P6830352645250216676.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P11960995031951691735

`∑[A188048(2*n+3)]`
-/

namespace A094829.P11960995031951691735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094829.P11960995031951691735

namespace A094829

/-- `∑[A188048(2*n+3)]` -/
def P11960995031951691735.Spec : Prop :=
  ∀ n, P11960995031951691735.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P2735250029457586370

`record[A052931(A004273(n))]`
-/

namespace A094829.P2735250029457586370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P2735250029457586370

namespace A094829

/-- `record[A052931(A004273(n))]` -/
def P2735250029457586370.Spec : Prop :=
  ∀ n, P2735250029457586370.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P427425728807899540

`record[A052931(A006257(n))]`
-/

namespace A094829.P427425728807899540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P427425728807899540

namespace A094829

/-- `record[A052931(A006257(n))]` -/
def P427425728807899540.Spec : Prop :=
  ∀ n, P427425728807899540.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P11925079238638898177

`A187496(A016969(n)+8)`
-/

namespace A094829.P11925079238638898177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (A016969 n + 8).toNat

end

end A094829.P11925079238638898177

namespace A094829

/-- `A187496(A016969(n)+8)` -/
def P11925079238638898177.Spec : Prop :=
  ∀ n, P11925079238638898177.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P10526897319474062515

`∑[record[A188048(A106617(n))]]`
-/

namespace A094829.P10526897319474062515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A106617 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094829.P10526897319474062515

namespace A094829

/-- `∑[record[A188048(A106617(n))]]` -/
def P10526897319474062515.Spec : Prop :=
  ∀ n, P10526897319474062515.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P17484472380485730752

`record[A052931(A093178(n)+2)]`
-/

namespace A094829.P17484472380485730752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A093178 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P17484472380485730752

namespace A094829

/-- `record[A052931(A093178(n)+2)]` -/
def P17484472380485730752.Spec : Prop :=
  ∀ n, P17484472380485730752.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P9891416285634643464

`record[A052931(A014681(2*n))]`
-/

namespace A094829.P9891416285634643464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A014681 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P9891416285634643464

namespace A094829

/-- `record[A052931(A014681(2*n))]` -/
def P9891416285634643464.Spec : Prop :=
  ∀ n, P9891416285634643464.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P14215524120786798397

`A187495(2*(A112414(n)+1))`
-/

namespace A094829.P14215524120786798397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (2 * (A112414 n + 1)).toNat

end

end A094829.P14215524120786798397

namespace A094829

/-- `A187495(2*(A112414(n)+1))` -/
def P14215524120786798397.Spec : Prop :=
  ∀ n, P14215524120786798397.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P8030589446602270050

`record[A052931(A004275(n+1)-1)]`
-/

namespace A094829.P8030589446602270050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A004275 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P8030589446602270050

namespace A094829

/-- `record[A052931(A004275(n+1)-1)]` -/
def P8030589446602270050.Spec : Prop :=
  ∀ n, P8030589446602270050.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P12487391201399469144

`record[A052931(A004275(2*n)/2)]`
-/

namespace A094829.P12487391201399469144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094829.P12487391201399469144

namespace A094829

/-- `record[A052931(A004275(2*n)/2)]` -/
def P12487391201399469144.Spec : Prop :=
  ∀ n, P12487391201399469144.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P14997832284794884726

`A094833(n+2)-A094826(n+2)`
-/

namespace A094829.P14997832284794884726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - A094826 (n + 2)

end

end A094829.P14997832284794884726

namespace A094829

/-- `A094833(n+2)-A094826(n+2)` -/
def P14997832284794884726.Spec : Prop :=
  ∀ n, P14997832284794884726.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P1295697402033604292

`2*A094834(n+1)-A094833(n+1)`
-/

namespace A094829.P1295697402033604292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094834 (n + 1) - A094833 (n + 1)

end

end A094829.P1295697402033604292

namespace A094829

/-- `2*A094834(n+1)-A094833(n+1)` -/
def P1295697402033604292.Spec : Prop :=
  ∀ n, P1295697402033604292.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P6591812110546040332

`A187495(A112414(n)+A112414(n)+2)`
-/

namespace A094829.P6591812110546040332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A112414 n + (A112414 n + 2)).toNat

end

end A094829.P6591812110546040332

namespace A094829

/-- `A187495(A112414(n)+A112414(n)+2)` -/
def P6591812110546040332.Spec : Prop :=
  ∀ n, P6591812110546040332.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P1902681561978475282

`∑[∑[record[A214779(n+1)]]]`
-/

namespace A094829.P1902681561978475282
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094829.P1902681561978475282

namespace A094829

/-- `∑[∑[record[A214779(n+1)]]]` -/
def P1902681561978475282.Spec : Prop :=
  ∀ n, P1902681561978475282.a n = A094829 (n + 2)

end A094829

/-! ## A094829.P183001727959538851

`∑[∑[A214779(2*n+1)]]`
-/

namespace A094829.P183001727959538851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214779 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094829.P183001727959538851

namespace A094829

/-- `∑[∑[A214779(2*n+1)]]` -/
def P183001727959538851.Spec : Prop :=
  ∀ n, P183001727959538851.a n = A094829 (n + 2)

end A094829

/-!
# A094831: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 3, s(2n) = 3.

The programs for A094831, the canonical program `A094831.P5975046112413152253` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094831 has offset 0).

The definition of A094831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094831.P5975046112413152253

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094831

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P5975046112413152253.Spec : Prop :=
  ∀ n, P5975046112413152253.a n = A094831 n

theorem P5975046112413152253.correct : P5975046112413152253.Spec := by
  intro n
  simp only [A094831]

end A094831

/-! ## A094831.P12650481676200628299

`ogf((1-4x+3x^2)/(1-6x+9x^2-x^3))`
-/

namespace A094831.P12650481676200628299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -6, 9, -1] n

end

end A094831.P12650481676200628299

namespace A094831

/-- `ogf((1-4x+3x^2)/(1-6x+9x^2-x^3))` -/
def P12650481676200628299.Spec : Prop :=
  ∀ n, P12650481676200628299.a n = A094831 n

end A094831

/-! ## A094831.P1201610797249016204

`A188048(2*n)`
-/

namespace A094831.P1201610797249016204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n)

end

end A094831.P1201610797249016204

namespace A094831

/-- `A188048(2*n)` -/
def P1201610797249016204.Spec : Prop :=
  ∀ n, P1201610797249016204.a n = A094831 n

end A094831

/-! ## A094831.P17843875190507167668

`A187497(6*n+1)`
-/

namespace A094831.P17843875190507167668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * n + 1)

end

end A094831.P17843875190507167668

namespace A094831

/-- `A187497(6*n+1)` -/
def P17843875190507167668.Spec : Prop :=
  ∀ n, P17843875190507167668.a n = A094831 n

end A094831

/-! ## A094831.P2175721286925054683

`Δ[A187495(6*n+1)]`
-/

namespace A094831.P2175721286925054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094831.P2175721286925054683

namespace A094831

/-- `Δ[A187495(6*n+1)]` -/
def P2175721286925054683.Spec : Prop :=
  ∀ n, P2175721286925054683.a n = A094831 n

end A094831

/-! ## A094831.P1626367572568261257

`A187497(or(1, 6*n))^ceil(sin(n)²)`
-/

namespace A094831.P1626367572568261257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187497 (Nat.lor 1 (6 * n)) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A094831.P1626367572568261257

namespace A094831

/-- `A187497(or(1, 6*n))^ceil(sin(n)²)` -/
def P1626367572568261257.Spec : Prop :=
  ∀ n, P1626367572568261257.a n = (A094831 n : ℚ)

end A094831

/-! ## A094831.P11621690500104236903

`record[A188048(n/A093178(n))]`
-/

namespace A094831.P11621690500104236903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094831.P11621690500104236903

namespace A094831

/-- `record[A188048(n/A093178(n))]` -/
def P11621690500104236903.Spec : Prop :=
  ∀ n, P11621690500104236903.a n = A094831 n

end A094831

/-! ## A094831.P11790441532642245336

`A094826(n+1)-Δ[A080938(n)]`
-/

namespace A094831.P11790441532642245336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094826 (n + 1) - (f1 (n + 1) - f1 n)

end

end A094831.P11790441532642245336

namespace A094831

/-- `A094826(n+1)-Δ[A080938(n)]` -/
def P11790441532642245336.Spec : Prop :=
  ∀ n, P11790441532642245336.a n = A094831 n

end A094831

/-! ## A094831.P10167725496305200074

`A094826(n+1)+A080938(n)-A080938(n+1)`
-/

namespace A094831.P10167725496305200074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094826 (n + 1) + (A080938 n - A080938 (n + 1))

end

end A094831.P10167725496305200074

namespace A094831

/-- `A094826(n+1)+A080938(n)-A080938(n+1)` -/
def P10167725496305200074.Spec : Prop :=
  ∀ n, P10167725496305200074.a n = A094831 n

end A094831

/-! ## A094831.P4194532793353088163

`A215455(n)/3`
-/

namespace A094831.P4194532793353088163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215455 n : ℚ) / 3

end

end A094831.P4194532793353088163

namespace A094831

/-- `A215455(n)/3` -/
def P4194532793353088163.Spec : Prop :=
  ∀ n, P4194532793353088163.a n = (A094831 n : ℚ)

end A094831

/-! ## A094831.P6079877007665373374

`Δ[Δ[A080938(n)]]`
-/

namespace A094831.P6079877007665373374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094831.P6079877007665373374

namespace A094831

/-- `Δ[Δ[A080938(n)]]` -/
def P6079877007665373374.Spec : Prop :=
  ∀ n, P6079877007665373374.a n = A094831 n

end A094831

/-! ## A094831.P12389755057786365263

`record[A215664(n)/3]`
-/

namespace A094831.P12389755057786365263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215664 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094831.P12389755057786365263

namespace A094831

/-- `record[A215664(n)/3]` -/
def P12389755057786365263.Spec : Prop :=
  ∀ n, P12389755057786365263.a n = (A094831 n : ℚ)

end A094831

/-! ## A094831.P18097165457976259182

`A215664(2*n)/3`
-/

namespace A094831.P18097165457976259182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215664 (2 * n) : ℚ) / 3

end

end A094831.P18097165457976259182

namespace A094831

/-- `A215664(2*n)/3` -/
def P18097165457976259182.Spec : Prop :=
  ∀ n, P18097165457976259182.a n = (A094831 n : ℚ)

end A094831

/-! ## A094831.P5220907038786965448

`(A094649(2*n)-1)/3`
-/

namespace A094831.P5220907038786965448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094649 (2 * n) - 1 : ℚ) / 3

end

end A094831.P5220907038786965448

namespace A094831

/-- `(A094649(2*n)-1)/3` -/
def P5220907038786965448.Spec : Prop :=
  ∀ n, P5220907038786965448.a n = (A094831 n : ℚ)

end A094831

/-! ## A094831.P6294096104862381674

`A094832(n)-A188022(2*n)`
-/

namespace A094831.P6294096104862381674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 n - A188022 (2 * n)

end

end A094831.P6294096104862381674

namespace A094831

/-- `A094832(n)-A188022(2*n)` -/
def P6294096104862381674.Spec : Prop :=
  ∀ n, P6294096104862381674.a n = A094831 n

end A094831

/-! ## A094831.P2655205655649963183

`A188022(2*n+1)-A188022(2*n)`
-/

namespace A094831.P2655205655649963183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n + 1) - A188022 (2 * n)

end

end A094831.P2655205655649963183

namespace A094831

/-- `A188022(2*n+1)-A188022(2*n)` -/
def P2655205655649963183.Spec : Prop :=
  ∀ n, P2655205655649963183.a n = A094831 n

end A094831

/-! ## A094831.P8898986422174474804

`record[A188022(A141310(n))-A188022(n)]`
-/

namespace A094831.P8898986422174474804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (A141310 n).toNat - A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094831.P8898986422174474804

namespace A094831

/-- `record[A188022(A141310(n))-A188022(n)]` -/
def P8898986422174474804.Spec : Prop :=
  ∀ n, P8898986422174474804.a n = A094831 n

end A094831

/-! ## A094831.P4495005333757366438

`A094832(n)+A094854(n)-A094855(n)`
-/

namespace A094831.P4495005333757366438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 n + (A094854 n - A094855 n)

end

end A094831.P4495005333757366438

namespace A094831

/-- `A094832(n)+A094854(n)-A094855(n)` -/
def P4495005333757366438.Spec : Prop :=
  ∀ n, P4495005333757366438.a n = A094831 n

end A094831

/-! ## A094831.P9153614674581535804

`A215664(2*n+1)+A094834(n+1)`
-/

namespace A094831.P9153614674581535804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (2 * n + 1) + A094834 (n + 1)

end

end A094831.P9153614674581535804

namespace A094831

/-- `A215664(2*n+1)+A094834(n+1)` -/
def P9153614674581535804.Spec : Prop :=
  ∀ n, P9153614674581535804.a n = A094831 n

end A094831

/-! ## A094831.P14982751382262663663

`A094832(n+1)-2*A065455(2*n)`
-/

namespace A094831.P14982751382262663663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - 2 * A065455 (2 * n)

end

end A094831.P14982751382262663663

namespace A094831

/-- `A094832(n+1)-2*A065455(2*n)` -/
def P14982751382262663663.Spec : Prop :=
  ∀ n, P14982751382262663663.a n = A094831 n

end A094831

/-!
# A094832: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 3, s(2n+1) = 4.

The programs for A094832, the canonical program `A094832.P12128190827125383389` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094832 has offset 0).

The definition of A094832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094832.P12128190827125383389

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094832

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P12128190827125383389.Spec : Prop :=
  ∀ n, P12128190827125383389.a n = A094832 n

theorem P12128190827125383389.correct : P12128190827125383389.Spec := by
  intro n
  simp only [A094832]

end A094832

/-! ## A094832.P2121987987542766468

`A094833(n+2)-3*A094833(n+1)`
-/

namespace A094832.P2121987987542766468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - 3 * A094833 (n + 1)

end

end A094832.P2121987987542766468

namespace A094832

/-- `A094833(n+2)-3*A094833(n+1)` -/
def P2121987987542766468.Spec : Prop :=
  ∀ n, P2121987987542766468.a n = A094832 n

end A094832

/-! ## A094832.P13173651266319599918

`ogf((1-3x+x^2)/(1-6x+9x^2-x^3))`
-/

namespace A094832.P13173651266319599918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 9, -1] n

end

end A094832.P13173651266319599918

namespace A094832

/-- `ogf((1-3x+x^2)/(1-6x+9x^2-x^3))` -/
def P13173651266319599918.Spec : Prop :=
  ∀ n, P13173651266319599918.a n = A094832 n

end A094832

/-! ## A094832.P12767886945670032122

`A188022(Δ[n²])`
-/

namespace A094832.P12767886945670032122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094832.P12767886945670032122

namespace A094832

/-- `A188022(Δ[n²])` -/
def P12767886945670032122.Spec : Prop :=
  ∀ n, P12767886945670032122.a n = A094832 n

end A094832

/-! ## A094832.P11056734263053349338

`Δ[A188021(2*n)]`
-/

namespace A094832.P11056734263053349338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094832.P11056734263053349338

namespace A094832

/-- `Δ[A188021(2*n)]` -/
def P11056734263053349338.Spec : Prop :=
  ∀ n, P11056734263053349338.a n = A094832 n

end A094832

/-! ## A094832.P10669958177793105359

`A187498(6*n+4)`
-/

namespace A094832.P10669958177793105359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (6 * n + 4)

end

end A094832.P10669958177793105359

namespace A094832

/-- `A187498(6*n+4)` -/
def P10669958177793105359.Spec : Prop :=
  ∀ n, P10669958177793105359.a n = A094832 n

end A094832

/-! ## A094832.P3857287870023395616

`A187497(6*n+5)`
-/

namespace A094832.P3857287870023395616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * n + 5)

end

end A094832.P3857287870023395616

namespace A094832

/-- `A187497(6*n+5)` -/
def P3857287870023395616.Spec : Prop :=
  ∀ n, P3857287870023395616.a n = A094832 n

end A094832

/-! ## A094832.P6780627948966288365

`Δ[A187496(6*n+2)]`
-/

namespace A094832.P6780627948966288365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094832.P6780627948966288365

namespace A094832

/-- `Δ[A187496(6*n+2)]` -/
def P6780627948966288365.Spec : Prop :=
  ∀ n, P6780627948966288365.a n = A094832 n

end A094832

/-! ## A094832.P2893769344752158288

`record[A188022(A141310(n))]`
-/

namespace A094832.P2893769344752158288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094832.P2893769344752158288

namespace A094832

/-- `record[A188022(A141310(n))]` -/
def P2893769344752158288.Spec : Prop :=
  ∀ n, P2893769344752158288.a n = A094832 n

end A094832

/-! ## A094832.P14624461940477684301

`A094854(n+1)-A094855(n)`
-/

namespace A094832.P14624461940477684301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094854 (n + 1) - A094855 n

end

end A094832.P14624461940477684301

namespace A094832

/-- `A094854(n+1)-A094855(n)` -/
def P14624461940477684301.Spec : Prop :=
  ∀ n, P14624461940477684301.a n = A094832 n

end A094832

/-! ## A094832.P3487307107643122008

`A094831(n+1)-∑[A094831(n)]`
-/

namespace A094832.P3487307107643122008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094832.P3487307107643122008

namespace A094832

/-- `A094831(n+1)-∑[A094831(n)]` -/
def P3487307107643122008.Spec : Prop :=
  ∀ n, P3487307107643122008.a n = A094832 n

end A094832

/-! ## A094832.P12527901795083512747

`A094831(n+1)-A094826(n+1)`
-/

namespace A094832.P12527901795083512747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 (n + 1) - A094826 (n + 1)

end

end A094832.P12527901795083512747

namespace A094832

/-- `A094831(n+1)-A094826(n+1)` -/
def P12527901795083512747.Spec : Prop :=
  ∀ n, P12527901795083512747.a n = A094832 n

end A094832

/-! ## A094832.P5165650167214339557

`A094831(n+1)-A052931(2*n)`
-/

namespace A094832.P5165650167214339557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 (n + 1) - A052931 (2 * n)

end

end A094832.P5165650167214339557

namespace A094832

/-- `A094831(n+1)-A052931(2*n)` -/
def P5165650167214339557.Spec : Prop :=
  ∀ n, P5165650167214339557.a n = A094832 n

end A094832

/-! ## A094832.P6833513823440355282

`A061551(2*(n+1))-A094855(n)`
-/

namespace A094832.P6833513823440355282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (2 * (n + 1)) - A094855 n

end

end A094832.P6833513823440355282

namespace A094832

/-- `A061551(2*(n+1))-A094855(n)` -/
def P6833513823440355282.Spec : Prop :=
  ∀ n, P6833513823440355282.a n = A094832 n

end A094832

/-! ## A094832.P13673222135233518955

`A188021(2*n)+A061551(2*n)`
-/

namespace A094832.P13673222135233518955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n) + A061551 (2 * n)

end

end A094832.P13673222135233518955

namespace A094832

/-- `A188021(2*n)+A061551(2*n)` -/
def P13673222135233518955.Spec : Prop :=
  ∀ n, P13673222135233518955.a n = A094832 n

end A094832

/-! ## A094832.P13616149664955639521

`A188048(2*n)+A188022(2*n)`
-/

namespace A094832.P13616149664955639521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n) + A188022 (2 * n)

end

end A094832.P13616149664955639521

namespace A094832

/-- `A188048(2*n)+A188022(2*n)` -/
def P13616149664955639521.Spec : Prop :=
  ∀ n, P13616149664955639521.a n = A094832 n

end A094832

/-! ## A094832.P17506803454247456456

`Δ[A187495(A016777(2*n+1)+1)]`
-/

namespace A094832.P17506803454247456456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A016777 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094832.P17506803454247456456

namespace A094832

/-- `Δ[A187495(A016777(2*n+1)+1)]` -/
def P17506803454247456456.Spec : Prop :=
  ∀ n, P17506803454247456456.a n = A094832 n

end A094832

/-! ## A094832.P16565876338495283742

`A094854(n+1)-A061551(2*n+1)`
-/

namespace A094832.P16565876338495283742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094854 (n + 1) - A061551 (2 * n + 1)

end

end A094832.P16565876338495283742

namespace A094832

/-- `A094854(n+1)-A061551(2*n+1)` -/
def P16565876338495283742.Spec : Prop :=
  ∀ n, P16565876338495283742.a n = A094832 n

end A094832

/-! ## A094832.P9340531720097856063

`2*A188022(2*n+1)-A188022(2*n+1)`
-/

namespace A094832.P9340531720097856063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188022 (2 * n + 1) - A188022 (2 * n + 1)

end

end A094832.P9340531720097856063

namespace A094832

/-- `2*A188022(2*n+1)-A188022(2*n+1)` -/
def P9340531720097856063.Spec : Prop :=
  ∀ n, P9340531720097856063.a n = A094832 n

end A094832

/-! ## A094832.P9539812047318500437

`2*A188022(2*n+1)/A141310(2*n+1)`
-/

namespace A094832.P9539812047318500437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A188022 (2 * n + 1) : ℚ) / (A141310 (2 * n + 1) : ℚ)

end

end A094832.P9539812047318500437

namespace A094832

/-- `2*A188022(2*n+1)/A141310(2*n+1)` -/
def P9539812047318500437.Spec : Prop :=
  ∀ n, P9539812047318500437.a n = (A094832 n : ℚ)

end A094832

/-!
# A094833: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 3, s(2n) = 5.

The programs for A094833, the canonical program `A094833.P5956395002308263022` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094833 has offset 1).

The definition of A094833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094833.P5956395002308263022

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094833

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P5956395002308263022.Spec : Prop :=
  ∀ n, P5956395002308263022.a n = A094833 (n + 1)

theorem P5956395002308263022.correct : P5956395002308263022.Spec := by
  intro n
  simp only [A094833, Nat.add_sub_cancel]

end A094833

/-! ## A094833.P8066081703352795800

`ogf((1-2x)/(1-6x+9x^2-x^3))`
-/

namespace A094833.P8066081703352795800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 9, -1] n

end

end A094833.P8066081703352795800

namespace A094833

/-- `ogf((1-2x)/(1-6x+9x^2-x^3))` -/
def P8066081703352795800.Spec : Prop :=
  ∀ n, P8066081703352795800.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P7861141132315577695

`A188022(2*(n+1))`
-/

namespace A094833.P7861141132315577695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * (n + 1))

end

end A094833.P7861141132315577695

namespace A094833

/-- `A188022(2*(n+1))` -/
def P7861141132315577695.Spec : Prop :=
  ∀ n, P7861141132315577695.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P9008125921156327614

`A187498(6*n+7)`
-/

namespace A094833.P9008125921156327614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (6 * n + 7)

end

end A094833.P9008125921156327614

namespace A094833

/-- `A187498(6*n+7)` -/
def P9008125921156327614.Spec : Prop :=
  ∀ n, P9008125921156327614.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P2363878631443011964

`A187497(6*n+8)`
-/

namespace A094833.P2363878631443011964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * n + 8)

end

end A094833.P2363878631443011964

namespace A094833

/-- `A187497(6*n+8)` -/
def P2363878631443011964.Spec : Prop :=
  ∀ n, P2363878631443011964.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P18305951940023849758

`record[A188022(A141310(n+1)-1)]`
-/

namespace A094833.P18305951940023849758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (A141310 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094833.P18305951940023849758

namespace A094833

/-- `record[A188022(A141310(n+1)-1)]` -/
def P18305951940023849758.Spec : Prop :=
  ∀ n, P18305951940023849758.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P2805910416836401344

`A052931(2*n+1)+A052931(2*n)`
-/

namespace A094833.P2805910416836401344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n + 1) + A052931 (2 * n)

end

end A094833.P2805910416836401344

namespace A094833

/-- `A052931(2*n+1)+A052931(2*n)` -/
def P2805910416836401344.Spec : Prop :=
  ∀ n, P2805910416836401344.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P3911226187073697534

`∑[A188048(2*n+1)+A188048(2*n)]`
-/

namespace A094833.P3911226187073697534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 1) + A188048 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094833.P3911226187073697534

namespace A094833

/-- `∑[A188048(2*n+1)+A188048(2*n)]` -/
def P3911226187073697534.Spec : Prop :=
  ∀ n, P3911226187073697534.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P13164389287384551464

`A188021(2*n+1)+A061551(2*n+1)`
-/

namespace A094833.P13164389287384551464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n + 1) + A061551 (2 * n + 1)

end

end A094833.P13164389287384551464

namespace A094833

/-- `A188021(2*n+1)+A061551(2*n+1)` -/
def P13164389287384551464.Spec : Prop :=
  ∀ n, P13164389287384551464.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P1888349787986795541

`A187495(6*n+10)+A187495(A112414(2*n))`
-/

namespace A094833.P1888349787986795541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * n + 10) + A187495 (A112414 (2 * n)).toNat

end

end A094833.P1888349787986795541

namespace A094833

/-- `A187495(6*n+10)+A187495(A112414(2*n))` -/
def P1888349787986795541.Spec : Prop :=
  ∀ n, P1888349787986795541.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P8217722163919112484

`Δ[A188021(Δ[n²])]`
-/

namespace A094833.P8217722163919112484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094833.P8217722163919112484

namespace A094833

/-- `Δ[A188021(Δ[n²])]` -/
def P8217722163919112484.Spec : Prop :=
  ∀ n, P8217722163919112484.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P8782384713157659692

`Δ[A187496(6*n+5)]`
-/

namespace A094833.P8782384713157659692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094833.P8782384713157659692

namespace A094833

/-- `Δ[A187496(6*n+5)]` -/
def P8782384713157659692.Spec : Prop :=
  ∀ n, P8782384713157659692.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P16654510527953449116

`Δ[A187495(6*n+8)]`
-/

namespace A094833.P16654510527953449116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094833.P16654510527953449116

namespace A094833

/-- `Δ[A187495(6*n+8)]` -/
def P16654510527953449116.Spec : Prop :=
  ∀ n, P16654510527953449116.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P15238029949680118466

`A094832(n+1)-A094831(n+1)`
-/

namespace A094833.P15238029949680118466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - A094831 (n + 1)

end

end A094833.P15238029949680118466

namespace A094833

/-- `A094832(n+1)-A094831(n+1)` -/
def P15238029949680118466.Spec : Prop :=
  ∀ n, P15238029949680118466.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P1359704570599486962

`A094855(n+1)-A094854(n+1)`
-/

namespace A094833.P1359704570599486962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094855 (n + 1) - A094854 (n + 1)

end

end A094833.P1359704570599486962

namespace A094833

/-- `A094855(n+1)-A094854(n+1)` -/
def P1359704570599486962.Spec : Prop :=
  ∀ n, P1359704570599486962.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P4708501785879094931

`A065455(2*n+1)-A094832(n)`
-/

namespace A094833.P4708501785879094931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (2 * n + 1) - A094832 n

end

end A094833.P4708501785879094931

namespace A094833

/-- `A065455(2*n+1)-A094832(n)` -/
def P4708501785879094931.Spec : Prop :=
  ∀ n, P4708501785879094931.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P9798612401665289611

`(A094855(n)+A094828(n+2))/2`
-/

namespace A094833.P9798612401665289611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094855 n + A094828 (n + 2) : ℚ) / 2

end

end A094833.P9798612401665289611

namespace A094833

/-- `(A094855(n)+A094828(n+2))/2` -/
def P9798612401665289611.Spec : Prop :=
  ∀ n, P9798612401665289611.a n = (A094833 (n + 1) : ℚ)

end A094833

/-! ## A094833.P10503440756120568156

`A094855(n+1)-A061551(2*(n+1))`
-/

namespace A094833.P10503440756120568156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094855 (n + 1) - A061551 (2 * (n + 1))

end

end A094833.P10503440756120568156

namespace A094833

/-- `A094855(n+1)-A061551(2*(n+1))` -/
def P10503440756120568156.Spec : Prop :=
  ∀ n, P10503440756120568156.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P1194389777102086954

`A217733(2*n+1)-A094827(n+1)`
-/

namespace A094833.P1194389777102086954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (2 * n + 1) - A094827 (n + 1)

end

end A094833.P1194389777102086954

namespace A094833

/-- `A217733(2*n+1)-A094827(n+1)` -/
def P1194389777102086954.Spec : Prop :=
  ∀ n, P1194389777102086954.a n = A094833 (n + 1)

end A094833

/-! ## A094833.P8816794398835568957

`2*A094834(n+1)-A094829(n+2)`
-/

namespace A094833.P8816794398835568957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094834 (n + 1) - A094829 (n + 2)

end

end A094833.P8816794398835568957

namespace A094833

/-- `2*A094834(n+1)-A094829(n+2)` -/
def P8816794398835568957.Spec : Prop :=
  ∀ n, P8816794398835568957.a n = A094833 (n + 1)

end A094833

/-!
# A094834: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 3, s(2n+1) = 6.

The programs for A094834, the canonical program `A094834.P3052643865141503945` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094834 has offset 1).

The definition of A094834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094834.P3052643865141503945

`6*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094834

/-- `6*a(n-1)-9*a(n-2)+a(n-3)` -/
def P3052643865141503945.Spec : Prop :=
  ∀ n, P3052643865141503945.a n = A094834 (n + 1)

theorem P3052643865141503945.correct : P3052643865141503945.Spec := by
  intro n
  simp only [A094834, Nat.add_sub_cancel]

end A094834

/-! ## A094834.P16776084501232160904

`ogf((1-x)/(1-6x+9x^2-x^3))`
-/

namespace A094834.P16776084501232160904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 9, -1] n

end

end A094834.P16776084501232160904

namespace A094834

/-- `ogf((1-x)/(1-6x+9x^2-x^3))` -/
def P16776084501232160904.Spec : Prop :=
  ∀ n, P16776084501232160904.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P13921131319505502634

`Δ[A052931(Δ[n²])]`
-/

namespace A094834.P13921131319505502634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094834.P13921131319505502634

namespace A094834

/-- `Δ[A052931(Δ[n²])]` -/
def P13921131319505502634.Spec : Prop :=
  ∀ n, P13921131319505502634.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P2949811188953568434

`A188048(2*n+3)`
-/

namespace A094834.P2949811188953568434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 3)

end

end A094834.P2949811188953568434

namespace A094834

/-- `A188048(2*n+3)` -/
def P2949811188953568434.Spec : Prop :=
  ∀ n, P2949811188953568434.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P11703316419697793556

`A187497(6*n+10)`
-/

namespace A094834.P11703316419697793556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (6 * n + 10)

end

end A094834.P11703316419697793556

namespace A094834

/-- `A187497(6*n+10)` -/
def P11703316419697793556.Spec : Prop :=
  ∀ n, P11703316419697793556.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P9297170341788384754

`record[A188048(n*and(1, n))]`
-/

namespace A094834.P9297170341788384754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094834.P9297170341788384754

namespace A094834

/-- `record[A188048(n*and(1, n))]` -/
def P9297170341788384754.Spec : Prop :=
  ∀ n, P9297170341788384754.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P7448441386075455130

`record[A188048(n)^and(1, n)]`
-/

namespace A094834.P7448441386075455130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094834.P7448441386075455130

namespace A094834

/-- `record[A188048(n)^and(1, n)]` -/
def P7448441386075455130.Spec : Prop :=
  ∀ n, P7448441386075455130.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P9062616392524627970

`record[A188048(A106617(n))]`
-/

namespace A094834.P9062616392524627970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094834.P9062616392524627970

namespace A094834

/-- `record[A188048(A106617(n))]` -/
def P9062616392524627970.Spec : Prop :=
  ∀ n, P9062616392524627970.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P16208435536849766508

`record[A188048(record[A014682(n)]-n)]`
-/

namespace A094834.P16208435536849766508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094834.P16208435536849766508

namespace A094834

/-- `record[A188048(record[A014682(n)]-n)]` -/
def P16208435536849766508.Spec : Prop :=
  ∀ n, P16208435536849766508.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P7829843548849850814

`A094833(n+2)-A094832(n+1)`
-/

namespace A094834.P7829843548849850814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - A094832 (n + 1)

end

end A094834.P7829843548849850814

namespace A094834

/-- `A094833(n+2)-A094832(n+1)` -/
def P7829843548849850814.Spec : Prop :=
  ∀ n, P7829843548849850814.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P7597243316787626562

`A094831(n)-A215664(2*n+1)`
-/

namespace A094834.P7597243316787626562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094831 n - A215664 (2 * n + 1)

end

end A094834.P7597243316787626562

namespace A094834

/-- `A094831(n)-A215664(2*n+1)` -/
def P7597243316787626562.Spec : Prop :=
  ∀ n, P7597243316787626562.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P8599255199138820473

`A094833(n+1)+A052931(2*n+1)`
-/

namespace A094834.P8599255199138820473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 1) + A052931 (2 * n + 1)

end

end A094834.P8599255199138820473

namespace A094834

/-- `A094833(n+1)+A052931(2*n+1)` -/
def P8599255199138820473.Spec : Prop :=
  ∀ n, P8599255199138820473.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P16234090987954298941

`2*A094833(n+1)-A094826(n+1)`
-/

namespace A094834.P16234090987954298941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094833 (n + 1) - A094826 (n + 1)

end

end A094834.P16234090987954298941

namespace A094834

/-- `2*A094833(n+1)-A094826(n+1)` -/
def P16234090987954298941.Spec : Prop :=
  ∀ n, P16234090987954298941.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P13700921142963964427

`A094829(n+2)-A052931(2*n+1)`
-/

namespace A094834.P13700921142963964427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 2) - A052931 (2 * n + 1)

end

end A094834.P13700921142963964427

namespace A094834

/-- `A094829(n+2)-A052931(2*n+1)` -/
def P13700921142963964427.Spec : Prop :=
  ∀ n, P13700921142963964427.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P17593111128443539009

`(A094833(n+1)+A094829(n+2))/2`
-/

namespace A094834.P17593111128443539009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094833 (n + 1) + A094829 (n + 2) : ℚ) / 2

end

end A094834.P17593111128443539009

namespace A094834

/-- `(A094833(n+1)+A094829(n+2))/2` -/
def P17593111128443539009.Spec : Prop :=
  ∀ n, P17593111128443539009.a n = (A094834 (n + 1) : ℚ)

end A094834

/-! ## A094834.P15821276967510093532

`A094833(n+2)-A188022(2*n+3)`
-/

namespace A094834.P15821276967510093532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 2) - A188022 (2 * n + 3)

end

end A094834.P15821276967510093532

namespace A094834

/-- `A094833(n+2)-A188022(2*n+3)` -/
def P15821276967510093532.Spec : Prop :=
  ∀ n, P15821276967510093532.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P8772034894330020688

`A188022(2*(n+1))+A052931(2*n+1)`
-/

namespace A094834.P8772034894330020688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * (n + 1)) + A052931 (2 * n + 1)

end

end A094834.P8772034894330020688

namespace A094834

/-- `A188022(2*(n+1))+A052931(2*n+1)` -/
def P8772034894330020688.Spec : Prop :=
  ∀ n, P8772034894330020688.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P12392415861998664612

`A052931(2*n+3)-A052931(2*n+1)`
-/

namespace A094834.P12392415861998664612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n + 3) - A052931 (2 * n + 1)

end

end A094834.P12392415861998664612

namespace A094834

/-- `A052931(2*n+3)-A052931(2*n+1)` -/
def P12392415861998664612.Spec : Prop :=
  ∀ n, P12392415861998664612.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P5239238392263657003

`A052931(2*n)+2*A052931(2*n+1)`
-/

namespace A094834.P5239238392263657003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n) + 2 * A052931 (2 * n + 1)

end

end A094834.P5239238392263657003

namespace A094834

/-- `A052931(2*n)+2*A052931(2*n+1)` -/
def P5239238392263657003.Spec : Prop :=
  ∀ n, P5239238392263657003.a n = A094834 (n + 1)

end A094834

/-! ## A094834.P18336226893218142034

`A215664(2*n)/3-A215664(2*n+1)`
-/

namespace A094834.P18336226893218142034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215664 (2 * n) : ℚ) / 3 - (A215664 (2 * n + 1) : ℚ)

end

end A094834.P18336226893218142034

namespace A094834

/-- `A215664(2*n)/3-A215664(2*n+1)` -/
def P18336226893218142034.Spec : Prop :=
  ∀ n, P18336226893218142034.a n = (A094834 (n + 1) : ℚ)

end A094834

/-!
# A094835: a(n) = 2702*a(n-1) - a(n-2); a(-1) = a(0) = 26.

The programs for A094835, there is no canonical definition to state claims against.
-/

/-! ## A094835.P17772420002456380779

`A114052(or(1, A004273(n)))`
-/

namespace A094835.P17772420002456380779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114052 (Int.lor 1 (A004273 n)).toNat

end

end A094835.P17772420002456380779

/-! ## A094835.P17845106882422704829

`A114052(floor(sqrt(A054552(n))))`
-/

namespace A094835.P17845106882422704829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114052 (Int.sqrt (A054552 n)).toNat

end

end A094835.P17845106882422704829

/-!
# A094837: Maximal number of longest common subsequences between any two binary strings of length n (Version 1).

The programs for A094837, there is no canonical definition to state claims against.
-/

/-! ## A094837.P16895487207633670771

`A259333(n+1)+floor(A274312(3*(n+1))/2)`
-/

namespace A094837.P16895487207633670771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259333 (n + 1) + ⌊(A274312 (3 * (n + 1)) : ℚ) / 2⌋

end

end A094837.P16895487207633670771

/-! ## A094837.P15238231746799607815

`A094315(A094307(n+3))+A094291(n+1)`
-/

namespace A094837.P15238231746799607815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A094307 (n + 3)).toNat + A094291 (n + 1)

end

end A094837.P15238231746799607815

/-!
# A094838: The longest subsequence length that provides an example for A094837.

The programs for A094838, there is no canonical definition to state claims against.
-/

/-! ## A094838.P314639367843921217

`round(A314005(n+1)/9)`
-/

namespace A094838.P314639367843921217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314005 (n + 1) : ℚ) / 9)

end

end A094838.P314639367843921217

/-! ## A094838.P13567069958943139023

`A100679(1-char[4]+n)`
-/

namespace A094838.P13567069958943139023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A094838.P13567069958943139023

/-! ## A094838.P14114739297272795874

`xor(char[4], A100679(n+1))`
-/

namespace A094838.P14114739297272795874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A100679 (n + 1))

end

end A094838.P14114739297272795874

/-! ## A094838.P11966380518303349108

`A061375(round(∑[atan(n+2)]))`
-/

namespace A094838.P11966380518303349108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A094838.P11966380518303349108

/-! ## A094838.P2102997309720299294

`∑[A191704(3*n+4)%2]`
-/

namespace A094838.P2102997309720299294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191704 (3 * n + 4)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094838.P2102997309720299294

/-!
# A094839: 5th row of array in A094781.

The programs for A094839, there is no canonical definition to state claims against.
-/

/-! ## A094839.P15546739210575997480

`A081604(and(A000010(n+5), A269303(2*n+3)))`
-/

namespace A094839.P15546739210575997480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.land (A000010 (n + 5)) (A269303 (2 * n + 3))).toNat

end

end A094839.P15546739210575997480

/-! ## A094839.P15937174703273187742

`A284559(A126792(∑[A005378(n)]))`
-/

namespace A094839.P15937174703273187742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A126792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A094839.P15937174703273187742

/-! ## A094839.P14158642037433467288

`A001221(∑{d}[A007096(n), A096916(#)])`
-/

namespace A094839.P14158642037433467288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n).natAbs, A096916 d).toNat

end

end A094839.P14158642037433467288

/-! ## A094839.P1790561671656830058

`A090822(∑[A005246(A007386(n+1))])`
-/

namespace A094839.P1790561671656830058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (A007386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094839.P1790561671656830058

/-! ## A094839.P9927943686097280096

`A090822(lt[A327069(n), A007429(n+1)])`
-/

namespace A094839.P9927943686097280096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327069 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094839.P9927943686097280096

/-!
# A094840: a(1) = 1; for n > 1, a(n) = curling number of (b(1),...,b(n-1)), where b() = Linus sequence A006345.

The programs for A094840, there is no canonical definition to state claims against.
-/

/-! ## A094840.P6631735264633102609

`A139355(n+1)-A038189(A098851(n+1))`
-/

namespace A094840.P6631735264633102609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (n + 1) - A038189 (A098851 (n + 1)).toNat

end

end A094840.P6631735264633102609

/-! ## A094840.P10727932969941183671

`A257990(A069488(3*n+5)-A249772(n+1))`
-/

namespace A094840.P10727932969941183671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A069488 (3 * n + 5) - A249772 (n + 1)).toNat

end

end A094840.P10727932969941183671

/-! ## A094840.P10200498587890306787

`gcd(A005843(A000578(n+1)), A300983(3*(n+1)))`
-/

namespace A094840.P10200498587890306787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A000578 (n + 1)).toNat) (A300983 (3 * (n + 1)))

end

end A094840.P10200498587890306787

/-! ## A094840.P15054174596523758241

`gcd(2, A324770((n+1)/2^val(n+1, 2)))`
-/

namespace A094840.P15054174596523758241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A324770 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A094840.P15054174596523758241

/-! ## A094840.P12686415832299411045

`A103587(A213267(n))`
-/

namespace A094840.P12686415832299411045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103587 (A213267 n).toNat

end

end A094840.P12686415832299411045

/-!
# A094841: Let p = n-th odd prime. Then a(n) = least positive integer congruent to 3 modulo 8 such that Legendre(-a(n), q) = -1 for all odd primes q <= p.

The programs for A094841, there is no canonical definition to state claims against.
-/

/-! ## A094841.P15786563695031943750

`4*A181667(n+2)-1`
-/

namespace A094841.P15786563695031943750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A181667 (n + 2) - 1

end

end A094841.P15786563695031943750

/-! ## A094841.P2175460511433412571

`A008683(A007918(n))+4*A181667(n+2)`
-/

namespace A094841.P2175460511433412571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P2175460511433412571

/-! ## A094841.P5272914063384338742

`A008683(A051698(n))+4*A181667(n+2)`
-/

namespace A094841.P5272914063384338742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P5272914063384338742

/-! ## A094841.P4956320431569017610

`A057428(A003558(n))+4*A181667(n+2)`
-/

namespace A094841.P4956320431569017610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003558 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P4956320431569017610

/-! ## A094841.P13656270333192903862

`A057428(A008619(n))+4*A181667(n+2)`
-/

namespace A094841.P13656270333192903862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008619 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P13656270333192903862

/-! ## A094841.P85985329870687892

`A008683(A088732(n))+4*A181667(n+2)`
-/

namespace A094841.P85985329870687892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A088732 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P85985329870687892

/-! ## A094841.P1099623364076696709

`A057428(A133310(n))+4*A181667(n+2)`
-/

namespace A094841.P1099623364076696709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A133310 n).toNat + 4 * A181667 (n + 2)

end

end A094841.P1099623364076696709

/-! ## A094841.P2046027442825043127

`A008683(A104272(n+1))+4*A181667(n+2)`
-/

namespace A094841.P2046027442825043127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A104272 (n + 1)).toNat + 4 * A181667 (n + 2)

end

end A094841.P2046027442825043127

/-! ## A094841.P8398047298503584851

`A008683(A167833(n+1))+4*A181667(n+2)`
-/

namespace A094841.P8398047298503584851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A167833 (n + 1)).toNat + 4 * A181667 (n + 2)

end

end A094841.P8398047298503584851

/-! ## A094841.P127674495314302407

`A008683(A008578(n+2))+4*A181667(n+2)`
-/

namespace A094841.P127674495314302407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2)).toNat + 4 * A181667 (n + 2)

end

end A094841.P127674495314302407

/-!
# A094842: Class numbers associated with entries of A094841.

The programs for A094842, there is no canonical definition to state claims against.
-/

/-! ## A094842.P8501812784616012218

`A069932(A261585(n)^A261357(n))`
-/

namespace A094842.P8501812784616012218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (SequenceMachineLib.roundAway ((A261585 n : ℚ) ^ (A261357 n : ℤ))).toNat

end

end A094842.P8501812784616012218

/-! ## A094842.P14699885172505313156

`A094844(A246337(n+2)-A025528(n+1))`
-/

namespace A094842.P14699885172505313156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094844 (A246337 (n + 2) - A025528 (n + 1)).toNat

end

end A094842.P14699885172505313156

/-! ## A094842.P4959186184576088546

`A094844(round(A094860(n+3)/A094871(n+1)))`
-/

namespace A094842.P4959186184576088546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094844 (SequenceMachineLib.roundAway ((A094860 (n + 3) : ℚ) / (A094871 (n + 1) : ℚ))).toNat

end

end A094842.P4959186184576088546

/-!
# A094843: Records in A094841.

The programs for A094843, there is no canonical definition to state claims against.
-/

/-! ## A094843.P8159657763865960798

`record[A094841(A052938(n))]`
-/

namespace A094843.P8159657763865960798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094843.P8159657763865960798

/-! ## A094843.P9701593793480743043

`record[A094841(A065648(n))]`
-/

namespace A094843.P9701593793480743043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094843.P9701593793480743043

/-! ## A094843.P8713250015539029375

`record[A094841(A062050(n+1))]`
-/

namespace A094843.P8713250015539029375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A062050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094843.P8713250015539029375

/-! ## A094843.P10107346874802612174

`record[A094841(A008611(n+2))]`
-/

namespace A094843.P10107346874802612174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094843.P10107346874802612174

/-! ## A094843.P15950791319125458311

`record[A094841(A008624(n+2))]`
-/

namespace A094843.P15950791319125458311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094843.P15950791319125458311

/-!
# A094844: Class numbers associated with the entries of A094843.

The programs for A094844, there is no canonical definition to state claims against.
-/

/-! ## A094844.P15045512528353664242

`A094842(lt[A060380(n+1), A181667(n+1)])`
-/

namespace A094844.P15045512528353664242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094842 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094844.P15045512528353664242

/-! ## A094844.P5347971391681471031

`A094842(eq[A060380(n+2), A181667(n+1)])`
-/

namespace A094844.P5347971391681471031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060380 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094842 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094844.P5347971391681471031

/-! ## A094844.P5088665760003379279

`A094842(A094842(n+1)*A284790(n+4))`
-/

namespace A094844.P5088665760003379279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094842 (A094842 (n + 1) * A284790 (n + 4)).toNat

end

end A094844.P5088665760003379279

/-!
# A094845: Records in A001986.

The programs for A094845, there is no canonical definition to state claims against.
-/

/-! ## A094845.P9543112077608457008

`record[A001986(A065648(n))]`
-/

namespace A094845.P9543112077608457008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094845.P9543112077608457008

/-! ## A094845.P15497549016171854541

`record[A001986(A141256(n))]`
-/

namespace A094845.P15497549016171854541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094845.P15497549016171854541

/-! ## A094845.P14602538114204288009

`record[A001986(A324347(n))]`
-/

namespace A094845.P14602538114204288009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094845.P14602538114204288009

/-! ## A094845.P17573970438867377279

`record[A001986(A004736(n+1))]`
-/

namespace A094845.P17573970438867377279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094845.P17573970438867377279

/-! ## A094845.P6296998906466361862

`record[A001986(A028242(n+3))]`
-/

namespace A094845.P6296998906466361862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001986 (A028242 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094845.P6296998906466361862

/-!
# A094846: Records in A001987.

The programs for A094846, there is no canonical definition to state claims against.
-/

/-! ## A094846.P1445163274512051460

`record[A001987(n+1)-char[1]]`
-/

namespace A094846.P1445163274512051460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094846.P1445163274512051460

/-! ## A094846.P15282916934683444807

`record[A001987(ceil(or(2, n+1)/2))]`
-/

namespace A094846.P15282916934683444807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 ⌈(Nat.lor 2 (n + 1) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094846.P15282916934683444807

/-! ## A094846.P6636783172466602089

`record[A001987(floor(n/(n%2+2))+1)]`
-/

namespace A094846.P6636783172466602089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094846.P6636783172466602089

/-! ## A094846.P2430318007345249462

`record[A001987(gcd(1-n, floor(n/2))+2)]`
-/

namespace A094846.P2430318007345249462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094846.P2430318007345249462

/-! ## A094846.P7554300290676968639

`record[A001987(∏{p}[n+1, gcd(n+1, #²)])]`
-/

namespace A094846.P7554300290676968639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001987 (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094846.P7554300290676968639

/-!
# A094847: Let p = n-th odd prime. Then a(n) = least positive integer congruent to 5 modulo 8 such that Legendre(a(n), q) = -1 for all odd primes q <= p.

The programs for A094847, there is no canonical definition to state claims against.
-/

/-! ## A094847.P8288608229446182143

`A094849(A172104(n+1))%A249482(3*(n+1))`
-/

namespace A094847.P8288608229446182143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094849 (A172104 (n + 1)).toNat) (A249482 (3 * (n + 1)))

end

end A094847.P8288608229446182143

/-! ## A094847.P17650060194949024675

`A094849(∑[A351609(n)%2])`
-/

namespace A094847.P17650060194949024675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351609 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094847.P17650060194949024675

/-!
# A094849: Records in A094847.

The programs for A094849, there is no canonical definition to state claims against.
-/

/-! ## A094849.P17565017121922713241

`record[A094847(n+1)-char[3]]`
-/

namespace A094849.P17565017121922713241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094847 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094849.P17565017121922713241

/-! ## A094849.P122972276066164648

`record[A094847(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A094849.P122972276066164648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094847 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094849.P122972276066164648

/-! ## A094849.P6535236392622983927

`record[A094847(∑[floor(sqrt((n+1)%6))-n%2])]`
-/

namespace A094849.P6535236392622983927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt ((n + 1) % 6) : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094847 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094849.P6535236392622983927

/-! ## A094849.P12215778483170410505

`record[A094847(A000174(n))]`
-/

namespace A094849.P12215778483170410505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094847 (A000174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094849.P12215778483170410505

/-! ## A094849.P13524204472322803902

`record[A094847(A028920(n))]`
-/

namespace A094849.P13524204472322803902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094847 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094849.P13524204472322803902

/-!
# A094850: Class numbers associated with entries in A094849.

The programs for A094850, there is no canonical definition to state claims against.
-/

/-! ## A094850.P8283077167475793236

`A094848(ceil(sqrt(A103389(n+1))))`
-/

namespace A094850.P8283077167475793236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094848 ⌈Real.sqrt (A103389 (n + 1) : ℝ)⌉.toNat

end

end A094850.P8283077167475793236

/-!
# A094852: Records in A001992.

The programs for A094852, there is no canonical definition to state claims against.
-/

/-! ## A094852.P18040667303210736129

`record[A001992(n+1)-char[3]]`
-/

namespace A094852.P18040667303210736129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001992 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094852.P18040667303210736129

/-! ## A094852.P6994574403566417012

`record[A001992(∑[n]%(n+1)+1)]`
-/

namespace A094852.P6994574403566417012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001992 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094852.P6994574403566417012

/-! ## A094852.P9781691128650891325

`record[A001992(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A094852.P9781691128650891325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001992 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094852.P9781691128650891325

/-! ## A094852.P16728559060307635540

`record[A001992(A028920(n))]`
-/

namespace A094852.P16728559060307635540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001992 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094852.P16728559060307635540

/-! ## A094852.P15801720038872524608

`record[A001992(A051340(n))]`
-/

namespace A094852.P15801720038872524608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001992 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094852.P15801720038872524608

/-!
# A094854: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 4, s(2n) = 4.

The programs for A094854, the canonical program `A094854.P13897041044567914249` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094854 has offset 0).

The definition of A094854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094854.P13897041044567914249

`A061551(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094854

/-- `A061551(2*n)` -/
def P13897041044567914249.Spec : Prop :=
  ∀ n, P13897041044567914249.a n = A094854 n

theorem P13897041044567914249.correct : P13897041044567914249.Spec := by
  intro n
  simp only [A094854]

end A094854

/-! ## A094854.P521808173842235418

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A094854.P521808173842235418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A094854.P521808173842235418

namespace A094854

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P521808173842235418.Spec : Prop :=
  ∀ n, P521808173842235418.a n = A094854 n

end A094854

/-! ## A094854.P12712637860094637830

`A187498(2*(3*n+1))`
-/

namespace A094854.P12712637860094637830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (2 * (3 * n + 1))

end

end A094854.P12712637860094637830

namespace A094854

/-- `A187498(2*(3*n+1))` -/
def P12712637860094637830.Spec : Prop :=
  ∀ n, P12712637860094637830.a n = A094854 n

end A094854

/-! ## A094854.P10366393804640205029

`record[A061551(n)^and(1, n+1)]`
-/

namespace A094854.P10366393804640205029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P10366393804640205029

namespace A094854

/-- `record[A061551(n)^and(1, n+1)]` -/
def P10366393804640205029.Spec : Prop :=
  ∀ n, P10366393804640205029.a n = A094854 n

end A094854

/-! ## A094854.P4276945302949897050

`record[A061551(A005131(n))]`
-/

namespace A094854.P4276945302949897050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P4276945302949897050

namespace A094854

/-- `record[A061551(A005131(n))]` -/
def P4276945302949897050.Spec : Prop :=
  ∀ n, P4276945302949897050.a n = A094854 n

end A094854

/-! ## A094854.P7865056005891942939

`record[A061551(A014681(n))]`
-/

namespace A094854.P7865056005891942939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P7865056005891942939

namespace A094854

/-- `record[A061551(A014681(n))]` -/
def P7865056005891942939.Spec : Prop :=
  ∀ n, P7865056005891942939.a n = A094854 n

end A094854

/-! ## A094854.P5410207989941397906

`record[A061551(A124625(n))]`
-/

namespace A094854.P5410207989941397906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P5410207989941397906

namespace A094854

/-- `record[A061551(A124625(n))]` -/
def P5410207989941397906.Spec : Prop :=
  ∀ n, P5410207989941397906.a n = A094854 n

end A094854

/-! ## A094854.P8604552272707861811

`record[A061551(A093178(n)-1)]`
-/

namespace A094854.P8604552272707861811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P8604552272707861811

namespace A094854

/-- `record[A061551(A093178(n)-1)]` -/
def P8604552272707861811.Spec : Prop :=
  ∀ n, P8604552272707861811.a n = A094854 n

end A094854

/-! ## A094854.P3263218767135360281

`record[A061551(n/A093178(n))]`
-/

namespace A094854.P3263218767135360281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P3263218767135360281

namespace A094854

/-- `record[A061551(n/A093178(n))]` -/
def P3263218767135360281.Spec : Prop :=
  ∀ n, P3263218767135360281.a n = A094854 n

end A094854

/-! ## A094854.P14903041599773328932

`A188022(2*n)+A080938(n)`
-/

namespace A094854.P14903041599773328932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n) + A080938 n

end

end A094854.P14903041599773328932

namespace A094854

/-- `A188022(2*n)+A080938(n)` -/
def P14903041599773328932.Spec : Prop :=
  ∀ n, P14903041599773328932.a n = A094854 n

end A094854

/-! ## A094854.P9133725215672067136

`∑[A065455(2*log2(A011782(n)))]`
-/

namespace A094854.P9133725215672067136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094854.P9133725215672067136

namespace A094854

/-- `∑[A065455(2*log2(A011782(n)))]` -/
def P9133725215672067136.Spec : Prop :=
  ∀ n, P9133725215672067136.a n = A094854 n

end A094854

/-! ## A094854.P12775706388197947475

`record[A061551(A000265(n+1)-1)]`
-/

namespace A094854.P12775706388197947475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094854.P12775706388197947475

namespace A094854

/-- `record[A061551(A000265(n+1)-1)]` -/
def P12775706388197947475.Spec : Prop :=
  ∀ n, P12775706388197947475.a n = A094854 n

end A094854

/-! ## A094854.P3850525591345918760

`gcd(A000038(n), A061551(A005843(n)))`
-/

namespace A094854.P3850525591345918760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A061551 (A005843 n).toNat)

end

end A094854.P3850525591345918760

namespace A094854

/-- `gcd(A000038(n), A061551(A005843(n)))` -/
def P3850525591345918760.Spec : Prop :=
  ∀ n, (P3850525591345918760.a n : ℤ) = A094854 n

end A094854

/-! ## A094854.P1427581728149181139

`2*A094832(n)-∑[A094832(n)]`
-/

namespace A094854.P1427581728149181139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094832 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094854.P1427581728149181139

namespace A094854

/-- `2*A094832(n)-∑[A094832(n)]` -/
def P1427581728149181139.Spec : Prop :=
  ∀ n, P1427581728149181139.a n = A094854 n

end A094854

/-! ## A094854.P5678324059566507798

`2*A094832(n)-A094827(n+1)`
-/

namespace A094854.P5678324059566507798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094832 n - A094827 (n + 1)

end

end A094854.P5678324059566507798

namespace A094854

/-- `2*A094832(n)-A094827(n+1)` -/
def P5678324059566507798.Spec : Prop :=
  ∀ n, P5678324059566507798.a n = A094854 n

end A094854

/-! ## A094854.P13649438621520927717

`Δ[A188021(2*n)]-A188021(2*n)`
-/

namespace A094854.P13649438621520927717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188021 (2 * n)

end

end A094854.P13649438621520927717

namespace A094854

/-- `Δ[A188021(2*n)]-A188021(2*n)` -/
def P13649438621520927717.Spec : Prop :=
  ∀ n, P13649438621520927717.a n = A094854 n

end A094854

/-! ## A094854.P1743422505705805800

`A188022(2*n+1)-A188021(2*n)`
-/

namespace A094854.P1743422505705805800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n + 1) - A188021 (2 * n)

end

end A094854.P1743422505705805800

namespace A094854

/-- `A188022(2*n+1)-A188021(2*n)` -/
def P1743422505705805800.Spec : Prop :=
  ∀ n, P1743422505705805800.a n = A094854 n

end A094854

/-! ## A094854.P458055376064340023

`A188048(2*n+1)+A188048(2*n)-A188021(2*n+1)`
-/

namespace A094854.P458055376064340023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 1) + (A188048 (2 * n) - A188021 (2 * n + 1))

end

end A094854.P458055376064340023

namespace A094854

/-- `A188048(2*n+1)+A188048(2*n)-A188021(2*n+1)` -/
def P458055376064340023.Spec : Prop :=
  ∀ n, P458055376064340023.a n = A094854 n

end A094854

/-! ## A094854.P10921387815823948200

`A153340(2*n+1)-A090992(2*n+1)`
-/

namespace A094854.P10921387815823948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153340 (2 * n + 1) - A090992 (2 * n + 1)

end

end A094854.P10921387815823948200

namespace A094854

/-- `A153340(2*n+1)-A090992(2*n+1)` -/
def P10921387815823948200.Spec : Prop :=
  ∀ n, P10921387815823948200.a n = A094854 n

end A094854

/-! ## A094854.P17105218462445138254

`A153340(2*n+1)-A153340(2*(n+1))/2`
-/

namespace A094854.P17105218462445138254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153340 (2 * n + 1) : ℚ) - (A153340 (2 * (n + 1)) : ℚ) / 2

end

end A094854.P17105218462445138254

namespace A094854

/-- `A153340(2*n+1)-A153340(2*(n+1))/2` -/
def P17105218462445138254.Spec : Prop :=
  ∀ n, P17105218462445138254.a n = (A094854 n : ℚ)

end A094854

/-!
# A094855: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 4, s(2n+1) = 5.

The programs for A094855, the canonical program `A094855.P17759453849454924405` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094855 has offset 0).

The definition of A094855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094855.P17759453849454924405

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094855

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P17759453849454924405.Spec : Prop :=
  ∀ n, P17759453849454924405.a n = A094855 n

theorem P17759453849454924405.correct : P17759453849454924405.Spec := by
  intro n
  simp only [A094855]

end A094855

/-! ## A094855.P9537694740381282371

`A061551(2*n+1)`
-/

namespace A094855.P9537694740381282371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (2 * n + 1)

end

end A094855.P9537694740381282371

namespace A094855

/-- `A061551(2*n+1)` -/
def P9537694740381282371.Spec : Prop :=
  ∀ n, P9537694740381282371.a n = A094855 n

end A094855

/-! ## A094855.P10629236594946798012

`A187498(6*n+5)`
-/

namespace A094855.P10629236594946798012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (6 * n + 5)

end

end A094855.P10629236594946798012

namespace A094855

/-- `A187498(6*n+5)` -/
def P10629236594946798012.Spec : Prop :=
  ∀ n, P10629236594946798012.a n = A094855 n

end A094855

/-! ## A094855.P13925523285182721282

`record[A061551(xor(1, n+1))]`
-/

namespace A094855.P13925523285182721282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P13925523285182721282

namespace A094855

/-- `record[A061551(xor(1, n+1))]` -/
def P13925523285182721282.Spec : Prop :=
  ∀ n, P13925523285182721282.a n = A094855 n

end A094855

/-! ## A094855.P16253100152740969054

`record[A061551(n*n%2)]`
-/

namespace A094855.P16253100152740969054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P16253100152740969054

namespace A094855

/-- `record[A061551(n*n%2)]` -/
def P16253100152740969054.Spec : Prop :=
  ∀ n, P16253100152740969054.a n = A094855 n

end A094855

/-! ## A094855.P17246606376226981116

`∑[A065455(A004273(n))]`
-/

namespace A094855.P17246606376226981116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094855.P17246606376226981116

namespace A094855

/-- `∑[A065455(A004273(n))]` -/
def P17246606376226981116.Spec : Prop :=
  ∀ n, P17246606376226981116.a n = A094855 n

end A094855

/-! ## A094855.P9176427156902514452

`record[A061551(A004442(n))]`
-/

namespace A094855.P9176427156902514452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P9176427156902514452

namespace A094855

/-- `record[A061551(A004442(n))]` -/
def P9176427156902514452.Spec : Prop :=
  ∀ n, P9176427156902514452.a n = A094855 n

end A094855

/-! ## A094855.P11697428147633359377

`record[A061551(A093178(n))]`
-/

namespace A094855.P11697428147633359377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P11697428147633359377

namespace A094855

/-- `record[A061551(A093178(n))]` -/
def P11697428147633359377.Spec : Prop :=
  ∀ n, P11697428147633359377.a n = A094855 n

end A094855

/-! ## A094855.P16989502772676616310

`record[A061551(A000265(n+1))]`
-/

namespace A094855.P16989502772676616310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P16989502772676616310

namespace A094855

/-- `record[A061551(A000265(n+1))]` -/
def P16989502772676616310.Spec : Prop :=
  ∀ n, P16989502772676616310.a n = A094855 n

end A094855

/-! ## A094855.P11591540432563042772

`record[A061551(A014681(n)+1)]`
-/

namespace A094855.P11591540432563042772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094855.P11591540432563042772

namespace A094855

/-- `record[A061551(A014681(n)+1)]` -/
def P11591540432563042772.Spec : Prop :=
  ∀ n, P11591540432563042772.a n = A094855 n

end A094855

/-! ## A094855.P9690576157077629195

`A094854(n+1)-A094832(n)`
-/

namespace A094855.P9690576157077629195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094854 (n + 1) - A094832 n

end

end A094855.P9690576157077629195

namespace A094855

/-- `A094854(n+1)-A094832(n)` -/
def P9690576157077629195.Spec : Prop :=
  ∀ n, P9690576157077629195.a n = A094855 n

end A094855

/-! ## A094855.P11371928408749333592

`∑[A065455(log2(A011782(n))+n)]`
-/

namespace A094855.P11371928408749333592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094855.P11371928408749333592

namespace A094855

/-- `∑[A065455(log2(A011782(n))+n)]` -/
def P11371928408749333592.Spec : Prop :=
  ∀ n, P11371928408749333592.a n = A094855 n

end A094855

/-! ## A094855.P292775488789040548

`A188021(2*n+1)+A188021(2*n)+1`
-/

namespace A094855.P292775488789040548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (2 * n + 1) + (A188021 (2 * n) + 1)

end

end A094855.P292775488789040548

namespace A094855

/-- `A188021(2*n+1)+A188021(2*n)+1` -/
def P292775488789040548.Spec : Prop :=
  ∀ n, P292775488789040548.a n = A094855 n

end A094855

/-! ## A094855.P18281441864008186658

`gcd(A000038(n), A061551(A005843(n)+1))`
-/

namespace A094855.P18281441864008186658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A061551 (A005843 n + 1).toNat)

end

end A094855.P18281441864008186658

namespace A094855

/-- `gcd(A000038(n), A061551(A005843(n)+1))` -/
def P18281441864008186658.Spec : Prop :=
  ∀ n, (P18281441864008186658.a n : ℤ) = A094855 n

end A094855

/-! ## A094855.P2769674538778265807

`2*A094833(n+1)-A094828(n+2)`
-/

namespace A094855.P2769674538778265807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094833 (n + 1) - A094828 (n + 2)

end

end A094855.P2769674538778265807

namespace A094855

/-- `2*A094833(n+1)-A094828(n+2)` -/
def P2769674538778265807.Spec : Prop :=
  ∀ n, P2769674538778265807.a n = A094855 n

end A094855

/-! ## A094855.P18206180827730644268

`A065455(2*n+1)-A217733(2*n)`
-/

namespace A094855.P18206180827730644268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065455 (2 * n + 1) - A217733 (2 * n)

end

end A094855.P18206180827730644268

namespace A094855

/-- `A065455(2*n+1)-A217733(2*n)` -/
def P18206180827730644268.Spec : Prop :=
  ∀ n, P18206180827730644268.a n = A094855 n

end A094855

/-! ## A094855.P13335107825706322546

`Δ[A217733(2*n)]-A217733(2*n+1)`
-/

namespace A094855.P13335107825706322546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A217733 (2 * n + 1)

end

end A094855.P13335107825706322546

namespace A094855

/-- `Δ[A217733(2*n)]-A217733(2*n+1)` -/
def P13335107825706322546.Spec : Prop :=
  ∀ n, P13335107825706322546.a n = A094855 n

end A094855

/-! ## A094855.P7489829947909483751

`A094832(n+1)-(A094832(n)+A094827(n+1))`
-/

namespace A094855.P7489829947909483751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 (n + 1) - (A094832 n + A094827 (n + 1))

end

end A094855.P7489829947909483751

namespace A094855

/-- `A094832(n+1)-(A094832(n)+A094827(n+1))` -/
def P7489829947909483751.Spec : Prop :=
  ∀ n, P7489829947909483751.a n = A094855 n

end A094855

/-! ## A094855.P10019621687838525327

`A153340(2*(n+1))-A090992(2*(n+1))`
-/

namespace A094855.P10019621687838525327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153340 (2 * (n + 1)) - A090992 (2 * (n + 1))

end

end A094855.P10019621687838525327

namespace A094855

/-- `A153340(2*(n+1))-A090992(2*(n+1))` -/
def P10019621687838525327.Spec : Prop :=
  ∀ n, P10019621687838525327.a n = A094855 n

end A094855

/-!
# A094856: E.g.f.: exp(4x)/(1-4x)^(1/4).

The programs for A094856, there is no canonical definition to state claims against.
-/

/-! ## A094856.P3033363193646025605

`∑[A294456((n+2)^n+1)]`
-/

namespace A094856.P3033363193646025605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 ((n + 2) ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094856.P3033363193646025605

/-!
# A094857: Coefficient of identity representation in k-th tensor power of the irreducible representation of S_n indexed by (n-2,1,1).

The programs for A094857, there is no canonical definition to state claims against.
-/

/-! ## A094857.P11606202237690244361

`A360558(a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094857.P11606202237690244361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A360558 (a (n - 1) + 1).toNat

end

end A094857.P11606202237690244361

/-!
# A094858: Maximal number of longest common subsequences between any two binary strings of length n (Version 2).

The programs for A094858, there is no canonical definition to state claims against.
-/

/-! ## A094858.P10745254632658390890

`A049639(n)+A018128(n)`
-/

namespace A094858.P10745254632658390890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 n + A018128 n

end

end A094858.P10745254632658390890

/-! ## A094858.P7489918579004914051

`A008619(A213678(n)+A007095(n))`
-/

namespace A094858.P7489918579004914051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A213678 n + A007095 n).toNat

end

end A094858.P7489918579004914051

/-! ## A094858.P5756434343791090005

`A276796(A000792(n))+A276796(n)`
-/

namespace A094858.P5756434343791090005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A000792 n).toNat + A276796 n

end

end A094858.P5756434343791090005

/-! ## A094858.P16993133980401064377

`A124425(A292596(n+1))+A099559(n)`
-/

namespace A094858.P16993133980401064377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124425 (A292596 (n + 1)).toNat + A099559 n

end

end A094858.P16993133980401064377

/-! ## A094858.P12754452324399421228

`A247908(A325347(n+1)-A075443(n))`
-/

namespace A094858.P12754452324399421228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A325347 (n + 1) - A075443 n).toNat

end

end A094858.P12754452324399421228

/-!
# A094859: Maximal number of longest common subsequences between any two ternary strings of length n (Version 2).

The programs for A094859, there is no canonical definition to state claims against.
-/

/-! ## A094859.P1678854452197577819

`A071377(A118728(n))`
-/

namespace A094859.P1678854452197577819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 (A118728 n).toNat

end

end A094859.P1678854452197577819

/-! ## A094859.P1140433727134117406

`A379262(A018062(n))`
-/

namespace A094859.P1140433727134117406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379262 (A018062 n).toNat

end

end A094859.P1140433727134117406

/-! ## A094859.P2061657036025165674

`A100795(A333680(n))`
-/

namespace A094859.P2061657036025165674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A333680 n).toNat

end

end A094859.P2061657036025165674

/-! ## A094859.P18438144860333671772

`A182625(A271486(n))`
-/

namespace A094859.P18438144860333671772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182625 (A271486 n).toNat

end

end A094859.P18438144860333671772

/-! ## A094859.P3240274977276267035

`A091374(A180684(n+1))`
-/

namespace A094859.P3240274977276267035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091374 (A180684 (n + 1)).toNat

end

end A094859.P3240274977276267035

/-!
# A094860: Same as A094858, except that we fix X = 121212...12(1).

The programs for A094860, there is no canonical definition to state claims against.
-/

/-! ## A094860.P3099760908746751416

`A137734(or(A050728(n), A164166(n)))`
-/

namespace A094860.P3099760908746751416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Int.lor (A050728 n) (A164166 n)).toNat

end

end A094860.P3099760908746751416

/-! ## A094860.P11664360808864948708

`A094858(n+1)-A014081(A366713(n))`
-/

namespace A094860.P11664360808864948708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094858 (n + 1) - A014081 (A366713 n).toNat

end

end A094860.P11664360808864948708

/-! ## A094860.P16706746846023319305

`A094858(n+1)-A131103(A273110(n+3))`
-/

namespace A094860.P16706746846023319305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094858 (n + 1) - A131103 (A273110 (n + 3)).toNat

end

end A094860.P16706746846023319305

/-! ## A094860.P3121346838249578379

`A094858(n+1)-A157687(∑[2-A000002(n+1)])`
-/

namespace A094860.P3121346838249578379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094858 (n + 1) - A157687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094860.P3121346838249578379

/-! ## A094860.P9900874624151300909

`A112318(A046682(n)+A027193(n))`
-/

namespace A094860.P9900874624151300909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A046682 n + A027193 n).toNat

end

end A094860.P9900874624151300909

/-!
# A094862: Same as A094858, except that we fix X = 123412341234...

The programs for A094862, there is no canonical definition to state claims against.
-/

/-! ## A094862.P11768476826562199839

`∑[∏[gcd(2, n)]-1-and(n, -2)]`
-/

namespace A094862.P11768476826562199839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 - Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094862.P11768476826562199839

/-! ## A094862.P12962406641960056369

`∑[A145957(n+5)]`
-/

namespace A094862.P12962406641960056369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145957 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094862.P12962406641960056369

/-! ## A094862.P15784916335160390935

`∑[A146474(n+7)]`
-/

namespace A094862.P15784916335160390935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146474 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094862.P15784916335160390935

/-! ## A094862.P17248012872062965638

`∑[A146663(n+7)]`
-/

namespace A094862.P17248012872062965638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094862.P17248012872062965638

/-! ## A094862.P12868628519027787825

`∑[A146820(n+7)]`
-/

namespace A094862.P12868628519027787825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146820 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094862.P12868628519027787825

/-!
# A094864: a(0)=1, a(1)=2, a(2)=6, a(3)=18; for n >= 4, a(n) = 6*a(n-1) - 11*a(n-2) + 6*a(n-3) - a(n-4).

The programs for A094864, the canonical program `A094864.P4837053295833192980` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094864 has offset 0).

The definition of A094864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` (program `A094864.P4837053295833192980`, by `A094864.P4837053295833192980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094864.P4837053295833192980

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094864

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P4837053295833192980.Spec : Prop :=
  ∀ n, P4837053295833192980.a n = A094864 n

theorem P4837053295833192980.correct : P4837053295833192980.Spec := by
  intro n
  simp only [A094864]

end A094864

/-! ## A094864.P4729768229916913260

`Δ[A059502(n)]`
-/

namespace A094864.P4729768229916913260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094864.P4729768229916913260

namespace A094864

/-- `Δ[A059502(n)]` -/
def P4729768229916913260.Spec : Prop :=
  ∀ n, P4729768229916913260.a n = A094864 n

end A094864

/-! ## A094864.P2739460369795634511

`A059502(n+1)-A059502(n)`
-/

namespace A094864.P2739460369795634511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) - A059502 n

end

end A094864.P2739460369795634511

namespace A094864

/-- `A059502(n+1)-A059502(n)` -/
def P2739460369795634511.Spec : Prop :=
  ∀ n, P2739460369795634511.a n = A094864 n

end A094864

/-! ## A094864.P14674758045485938710

`A116845(n+1)+A001519(n)-1`
-/

namespace A094864.P14674758045485938710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116845 (n + 1) + (A001519 n - 1)

end

end A094864.P14674758045485938710

namespace A094864

/-- `A116845(n+1)+A001519(n)-1` -/
def P14674758045485938710.Spec : Prop :=
  ∀ n, P14674758045485938710.a n = A094864 n

end A094864

/-! ## A094864.P16140433263706979698

`(A010049(2*n)+A000032(2*n))/2`
-/

namespace A094864.P16140433263706979698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010049 (2 * n) + A000032 (2 * n) : ℚ) / 2

end

end A094864.P16140433263706979698

namespace A094864

/-- `(A010049(2*n)+A000032(2*n))/2` -/
def P16140433263706979698.Spec : Prop :=
  ∀ n, P16140433263706979698.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P12689843298925544496

`A206268(2*n)+A191830(2*n)/2`
-/

namespace A094864.P12689843298925544496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206268 (2 * n) : ℚ) + (A191830 (2 * n) : ℚ) / 2

end

end A094864.P12689843298925544496

namespace A094864

/-- `A206268(2*n)+A191830(2*n)/2` -/
def P12689843298925544496.Spec : Prop :=
  ∀ n, P12689843298925544496.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P17245207021248081878

`(A118658(2*n)+A006367(2*n+1))/2`
-/

namespace A094864.P17245207021248081878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (2 * n) + A006367 (2 * n + 1) : ℚ) / 2

end

end A094864.P17245207021248081878

namespace A094864

/-- `(A118658(2*n)+A006367(2*n+1))/2` -/
def P17245207021248081878.Spec : Prop :=
  ∀ n, P17245207021248081878.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P14065619743163775025

`(A208354(2*n)+A000045(2*n+1))/2`
-/

namespace A094864.P14065619743163775025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208354 (2 * n) + A000045 (2 * n + 1) : ℚ) / 2

end

end A094864.P14065619743163775025

namespace A094864

/-- `(A208354(2*n)+A000045(2*n+1))/2` -/
def P14065619743163775025.Spec : Prop :=
  ∀ n, P14065619743163775025.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P13201851815385234936

`A212804(2*n)+A006367(2*n+1)/2`
-/

namespace A094864.P13201851815385234936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (2 * n) : ℚ) + (A006367 (2 * n + 1) : ℚ) / 2

end

end A094864.P13201851815385234936

namespace A094864

/-- `A212804(2*n)+A006367(2*n+1)/2` -/
def P13201851815385234936.Spec : Prop :=
  ∀ n, P13201851815385234936.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P3483449291475158022

`(A206268(2*n+1)+A206268(2*n))/2`
-/

namespace A094864.P3483449291475158022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206268 (2 * n + 1) + A206268 (2 * n) : ℚ) / 2

end

end A094864.P3483449291475158022

namespace A094864

/-- `(A206268(2*n+1)+A206268(2*n))/2` -/
def P3483449291475158022.Spec : Prop :=
  ∀ n, P3483449291475158022.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P4378516198840275051

`A129722(A004275(n))+A122367(n)`
-/

namespace A094864.P4378516198840275051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (A004275 n).toNat + A122367 n

end

end A094864.P4378516198840275051

namespace A094864

/-- `A129722(A004275(n))+A122367(n)` -/
def P4378516198840275051.Spec : Prop :=
  ∀ n, P4378516198840275051.a n = A094864 n

end A094864

/-! ## A094864.P6778688038336051118

`record[A059502(A008676(n))]-A059502(n)`
-/

namespace A094864.P6778688038336051118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (A008676 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059502 n

end

end A094864.P6778688038336051118

namespace A094864

/-- `record[A059502(A008676(n))]-A059502(n)` -/
def P6778688038336051118.Spec : Prop :=
  ∀ n, P6778688038336051118.a n = A094864 n

end A094864

/-! ## A094864.P791260082002199368

`A280227(2*(n+1))/4`
-/

namespace A094864.P791260082002199368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280227 (2 * (n + 1)) : ℚ) / 4

end

end A094864.P791260082002199368

namespace A094864

/-- `A280227(2*(n+1))/4` -/
def P791260082002199368.Spec : Prop :=
  ∀ n, P791260082002199368.a n = (A094864 n : ℚ)

end A094864

/-! ## A094864.P1516886498953992035

`A027989(n)-A117202(n)`
-/

namespace A094864.P1516886498953992035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 n - A117202 n

end

end A094864.P1516886498953992035

namespace A094864

/-- `A027989(n)-A117202(n)` -/
def P1516886498953992035.Spec : Prop :=
  ∀ n, P1516886498953992035.a n = A094864 n

end A094864

/-! ## A094864.P4184782465676841581

`A027989(n)-n*A001519(n)`
-/

namespace A094864.P4184782465676841581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 n - (n : ℤ) * A001519 n

end

end A094864.P4184782465676841581

namespace A094864

/-- `A027989(n)-n*A001519(n)` -/
def P4184782465676841581.Spec : Prop :=
  ∀ n, P4184782465676841581.a n = A094864 n

end A094864

/-! ## A094864.P6664804238084164927

`2*A038731(n)-∑[A038731(n)]`
-/

namespace A094864.P6664804238084164927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038731 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094864.P6664804238084164927

namespace A094864

/-- `2*A038731(n)-∑[A038731(n)]` -/
def P6664804238084164927.Spec : Prop :=
  ∀ n, P6664804238084164927.a n = A094864 n

end A094864

/-! ## A094864.P13065702532937429999

`A030267(n+1)-A029907(2*n)`
-/

namespace A094864.P13065702532937429999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) - A029907 (2 * n)

end

end A094864.P13065702532937429999

namespace A094864

/-- `A030267(n+1)-A029907(2*n)` -/
def P13065702532937429999.Spec : Prop :=
  ∀ n, P13065702532937429999.a n = A094864 n

end A094864

/-! ## A094864.P3724399377751328508

`2*A038731(n)-A030267(n+1)`
-/

namespace A094864.P3724399377751328508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038731 n - A030267 (n + 1)

end

end A094864.P3724399377751328508

namespace A094864

/-- `2*A038731(n)-A030267(n+1)` -/
def P3724399377751328508.Spec : Prop :=
  ∀ n, P3724399377751328508.a n = A094864 n

end A094864

/-! ## A094864.P14840026855991958975

`A010049(2*n+1)-A117202(n)`
-/

namespace A094864.P14840026855991958975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n + 1) - A117202 n

end

end A094864.P14840026855991958975

namespace A094864

/-- `A010049(2*n+1)-A117202(n)` -/
def P14840026855991958975.Spec : Prop :=
  ∀ n, P14840026855991958975.a n = A094864 n

end A094864

/-! ## A094864.P13641648784810885271

`A134512(2*n+1)-A029907(2*n)`
-/

namespace A094864.P13641648784810885271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n + 1) - A029907 (2 * n)

end

end A094864.P13641648784810885271

namespace A094864

/-- `A134512(2*n+1)-A029907(2*n)` -/
def P13641648784810885271.Spec : Prop :=
  ∀ n, P13641648784810885271.a n = A094864 n

end A094864

/-!
# A094865: Expansion of x^3/((1-3*x+x^2)*(1-5*x+5*x^2)).

The programs for A094865, the canonical program `A094865.P5792462987724488191` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094865 has offset 0).

The definition of A094865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^3/(1-8x+21x^2-20x^3+5x^4))` (program `A094865.P5792462987724488191`, by `A094865.P5792462987724488191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094865.P5792462987724488191

`ogf(x^3/(1-8x+21x^2-20x^3+5x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094865

/-- `ogf(x^3/(1-8x+21x^2-20x^3+5x^4))` -/
def P5792462987724488191.Spec : Prop :=
  ∀ n, P5792462987724488191.a n = A094865 n

theorem P5792462987724488191.correct : P5792462987724488191.Spec := by
  intro n
  simp only [A094865]

end A094865

/-! ## A094865.P8950881032727768352

`A093129(n)/2-A122367(n)/2`
-/

namespace A094865.P8950881032727768352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093129 n : ℚ) / 2 - (A122367 n : ℚ) / 2

end

end A094865.P8950881032727768352

namespace A094865

/-- `A093129(n)/2-A122367(n)/2` -/
def P8950881032727768352.Spec : Prop :=
  ∀ n, P8950881032727768352.a n = (A094865 n : ℚ)

end A094865

/-! ## A094865.P12960832491818064699

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A094865.P12960832491818064699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A094865.P12960832491818064699

namespace A094865

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P12960832491818064699.Spec : Prop :=
  ∀ n, P12960832491818064699.a n = A094865 n

end A094865

/-! ## A094865.P47438844881261854

`∑[A206947(n)/2]`
-/

namespace A094865.P47438844881261854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206947 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094865.P47438844881261854

namespace A094865

/-- `∑[A206947(n)/2]` -/
def P47438844881261854.Spec : Prop :=
  ∀ n, P47438844881261854.a n = (A094865 n : ℚ)

end A094865

/-! ## A094865.P12754705971723978895

`∑[A033190(n)-A001906(n)]`
-/

namespace A094865.P12754705971723978895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n - A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094865.P12754705971723978895

namespace A094865

/-- `∑[A033190(n)-A001906(n)]` -/
def P12754705971723978895.Spec : Prop :=
  ∀ n, P12754705971723978895.a n = A094865 n

end A094865

/-! ## A094865.P17388829610167011441

`∑[A033190(n)]-A027941(n)`
-/

namespace A094865.P17388829610167011441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027941 n

end

end A094865.P17388829610167011441

namespace A094865

/-- `∑[A033190(n)]-A027941(n)` -/
def P17388829610167011441.Spec : Prop :=
  ∀ n, P17388829610167011441.a n = A094865 n

end A094865

/-! ## A094865.P4689229285372272016

`A093129(n)-A033191(n+1)`
-/

namespace A094865.P4689229285372272016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n - A033191 (n + 1)

end

end A094865.P4689229285372272016

namespace A094865

/-- `A093129(n)-A033191(n+1)` -/
def P4689229285372272016.Spec : Prop :=
  ∀ n, P4689229285372272016.a n = A094865 n

end A094865

/-! ## A094865.P15991749028041224668

`(A093129(n)-A122367(n))/2`
-/

namespace A094865.P15991749028041224668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093129 n - A122367 n : ℚ) / 2

end

end A094865.P15991749028041224668

namespace A094865

/-- `(A093129(n)-A122367(n))/2` -/
def P15991749028041224668.Spec : Prop :=
  ∀ n, P15991749028041224668.a n = (A094865 n : ℚ)

end A094865

/-! ## A094865.P1348295080528826362

`∑[A033190(n)-Δ[A001519(n)]]`
-/

namespace A094865.P1348295080528826362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094865.P1348295080528826362

namespace A094865

/-- `∑[A033190(n)-Δ[A001519(n)]]` -/
def P1348295080528826362.Spec : Prop :=
  ∀ n, P1348295080528826362.a n = A094865 n

end A094865

/-! ## A094865.P15099135083109879381

`∑[A033190(n)-A000045(2*n)]`
-/

namespace A094865.P15099135083109879381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n - A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094865.P15099135083109879381

namespace A094865

/-- `∑[A033190(n)-A000045(2*n)]` -/
def P15099135083109879381.Spec : Prop :=
  ∀ n, P15099135083109879381.a n = A094865 n

end A094865

/-! ## A094865.P14274886992309016594

`A033191(n+1)-A001519(n+1)`
-/

namespace A094865.P14274886992309016594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 (n + 1) - A001519 (n + 1)

end

end A094865.P14274886992309016594

namespace A094865

/-- `A033191(n+1)-A001519(n+1)` -/
def P14274886992309016594.Spec : Prop :=
  ∀ n, P14274886992309016594.a n = A094865 n

end A094865

/-! ## A094865.P11476295309886196492

`A033191(n+1)-A000045(2*n+1)`
-/

namespace A094865.P11476295309886196492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 (n + 1) - A000045 (2 * n + 1)

end

end A094865.P11476295309886196492

namespace A094865

/-- `A033191(n+1)-A000045(2*n+1)` -/
def P11476295309886196492.Spec : Prop :=
  ∀ n, P11476295309886196492.a n = A094865 n

end A094865

/-! ## A094865.P17120641047230667284

`A147748(n)-A033193(n)`
-/

namespace A094865.P17120641047230667284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n - A033193 n

end

end A094865.P17120641047230667284

namespace A094865

/-- `A147748(n)-A033193(n)` -/
def P17120641047230667284.Spec : Prop :=
  ∀ n, P17120641047230667284.a n = A094865 n

end A094865

/-! ## A094865.P5288818393979415870

`A081567(n)-A217778(n)`
-/

namespace A094865.P5288818393979415870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - A217778 n

end

end A094865.P5288818393979415870

namespace A094865

/-- `A081567(n)-A217778(n)` -/
def P5288818393979415870.Spec : Prop :=
  ∀ n, P5288818393979415870.a n = A094865 n

end A094865

/-! ## A094865.P10785807192105958592

`A178381(2*n+1)-A217778(n)`
-/

namespace A094865.P10785807192105958592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) - A217778 n

end

end A094865.P10785807192105958592

namespace A094865

/-- `A178381(2*n+1)-A217778(n)` -/
def P10785807192105958592.Spec : Prop :=
  ∀ n, P10785807192105958592.a n = A094865 n

end A094865

/-! ## A094865.P6046115831402124045

`A093129(n+1)-(A217778(n)+A093129(n))`
-/

namespace A094865.P6046115831402124045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - (A217778 n + A093129 n)

end

end A094865.P6046115831402124045

namespace A094865

/-- `A093129(n+1)-(A217778(n)+A093129(n))` -/
def P6046115831402124045.Spec : Prop :=
  ∀ n, P6046115831402124045.a n = A094865 n

end A094865

/-! ## A094865.P6859640653337457504

`A217779(n)-A039717(n+1)`
-/

namespace A094865.P6859640653337457504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A039717 (n + 1)

end

end A094865.P6859640653337457504

namespace A094865

/-- `A217779(n)-A039717(n+1)` -/
def P6859640653337457504.Spec : Prop :=
  ∀ n, P6859640653337457504.a n = A094865 n

end A094865

/-! ## A094865.P10400557628363824105

`A217779(n)-A217777(2*n)`
-/

namespace A094865.P10400557628363824105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A217777 (2 * n)

end

end A094865.P10400557628363824105

namespace A094865

/-- `A217779(n)-A217777(2*n)` -/
def P10400557628363824105.Spec : Prop :=
  ∀ n, P10400557628363824105.a n = A094865 n

end A094865

/-! ## A094865.P13856704525425044388

`A217782(n+1)%A217778(n)`
-/

namespace A094865.P13856704525425044388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217782 (n + 1)) (A217778 n)

end

end A094865.P13856704525425044388

namespace A094865

/-- `A217782(n+1)%A217778(n)` -/
def P13856704525425044388.Spec : Prop :=
  ∀ n, P13856704525425044388.a n = A094865 n

end A094865

/-! ## A094865.P6665089802509475425

`Δ[A217782(n)]-A094667(n+1)`
-/

namespace A094865.P6665089802509475425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094667 (n + 1)

end

end A094865.P6665089802509475425

namespace A094865

/-- `Δ[A217782(n)]-A094667(n+1)` -/
def P6665089802509475425.Spec : Prop :=
  ∀ n, P6665089802509475425.a n = A094865 n

end A094865

/-!
# A094866: Number of truncated ST-pairs O(q^n).

The programs for A094866, there is no canonical definition to state claims against.
-/

/-! ## A094866.P14098584205882147245

`A325456(∑[A000013(n)])`
-/

namespace A094866.P14098584205882147245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094866.P14098584205882147245

/-! ## A094866.P4050223366027375004

`A317492(A048814(n)+n)`
-/

namespace A094866.P4050223366027375004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A048814 (n + 10) + (n : ℤ)).toNat

end

end A094866.P4050223366027375004

/-! ## A094866.P2957316443531214854

`A307707(2*(A072684(n)+n))`
-/

namespace A094866.P2957316443531214854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (2 * (A072684 n + (n : ℤ))).toNat

end

end A094866.P2957316443531214854

/-! ## A094866.P1719399387195216777

`A018068(n)+A001222(A001003(n))`
-/

namespace A094866.P1719399387195216777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n + A001222 (A001003 n).toNat

end

end A094866.P1719399387195216777

/-! ## A094866.P18417613980392977772

`A101268(n)+A001222(A006318(n))`
-/

namespace A094866.P18417613980392977772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n + A001222 (A006318 n).toNat

end

end A094866.P18417613980392977772

/-!
# A094867: Number of iterations of the LQTL cellular automaton required to generate a square of cells in identical states.

The programs for A094867, there is no canonical definition to state claims against.
-/

/-! ## A094867.P7219686018460361294

`((floor(n/2)+2)!+2)*2^n`
-/

namespace A094867.P7219686018460361294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (⌊(n : ℚ) / 2⌋ + 2).toNat + 2) * 2 ^ n

end

end A094867.P7219686018460361294

/-!
# A094869: E.g.f.: exp(5x)/(1-5x)^(1/5).

The programs for A094869, there is no canonical definition to state claims against.
-/

/-! ## A094869.P9007438503139277418

`A104275(A260332(n))+A000217(n)`
-/

namespace A094869.P9007438503139277418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (A260332 n).toNat + A000217 n

end

end A094869.P9007438503139277418

/-!
# A094870: a(1)=1; for n > 1, a(n) is the minimal positive integer t not equal to a(1), ..., a(n-1) such that t - a(n-i) is not equal to a(n-i) - a(n-2i) for all 1 <= i < n/2.

The programs for A094870, there is no canonical definition to state claims against.
-/

/-! ## A094870.P17746550876656456914

`A095690(n+1)-A178798(A036469(n))`
-/

namespace A094870.P17746550876656456914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095690 (n + 1) - A178798 (A036469 n).toNat

end

end A094870.P17746550876656456914

/-! ## A094870.P7590858350629809400

`A075618(or(n+1, A185293(n)))-char[10]`
-/

namespace A094870.P7590858350629809400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075618 (Int.lor (n + 1 : ℤ) (A185293 n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094870.P7590858350629809400

/-! ## A094870.P2658325915114303246

`(n%4)!%3+n-A178798(round(A153080(n)/2))`
-/

namespace A094870.P2658325915114303246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n % 4) % 3 + n : ℕ) : ℤ) - A178798 (SequenceMachineLib.roundAway ((A153080 n : ℚ) / 2)).toNat

end

end A094870.P2658325915114303246

/-! ## A094870.P17915433817913033532

`xor(A000035(A185293(n)), A095690(n+1))`
-/

namespace A094870.P17915433817913033532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A185293 n).toNat) (A095690 (n + 1))

end

end A094870.P17915433817913033532

/-! ## A094870.P15665773026229243511

`A095689(n+1)-A235145(A002513(2*n+1))`
-/

namespace A094870.P15665773026229243511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095689 (n + 1) - A235145 (A002513 (2 * n + 1)).toNat

end

end A094870.P15665773026229243511

/-!
# A094872: phi(n)/tau(n), for odd squarefree n > 1 (A056911), phi = A000010, tau = A000005.

The programs for A094872, the canonical program `A094872.P17805697036999434631` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094872 has offset 1).

The definition of A094872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094872.P17805697036999434631

`A000010(A056911(n+2))/A000005(A056911(n+2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094872

/-- `A000010(A056911(n+2))/A000005(A056911(n+2))` -/
def P17805697036999434631.Spec : Prop :=
  ∀ n, P17805697036999434631.a n = (A094872 (n + 1) : ℚ)

end A094872

/-! ## A094872.P6478163868656098483

`A003970(A264387(n+2)+1)`
-/

namespace A094872.P6478163868656098483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A264387 (n + 2) + 1).toNat

end

end A094872.P6478163868656098483

namespace A094872

/-- `A003970(A264387(n+2)+1)` -/
def P6478163868656098483.Spec : Prop :=
  ∀ n, P6478163868656098483.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P16203901722696810488

`A046073(A056911(n+2))`
-/

namespace A094872.P16203901722696810488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A056911 (n + 2)).toNat

end

end A094872.P16203901722696810488

namespace A094872

/-- `A046073(A056911(n+2))` -/
def P16203901722696810488.Spec : Prop :=
  ∀ n, P16203901722696810488.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P13598280517264266834

`A046073(A039956(n+2)/2)`
-/

namespace A094872.P13598280517264266834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.roundAway ((A039956 (n + 2) : ℚ) / 2)).toNat

end

end A094872.P13598280517264266834

namespace A094872

/-- `A046073(A039956(n+2)/2)` -/
def P13598280517264266834.Spec : Prop :=
  ∀ n, P13598280517264266834.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P11771216084284879900

`A046073(A039956(n+2))`
-/

namespace A094872.P11771216084284879900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A039956 (n + 2)).toNat

end

end A094872.P11771216084284879900

namespace A094872

/-- `A046073(A039956(n+2))` -/
def P11771216084284879900.Spec : Prop :=
  ∀ n, P11771216084284879900.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P15670389639152380367

`A046073(A364999(n+1)/2)`
-/

namespace A094872.P15670389639152380367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.roundAway ((A364999 (n + 1) : ℚ) / 2)).toNat

end

end A094872.P15670389639152380367

namespace A094872

/-- `A046073(A364999(n+1)/2)` -/
def P15670389639152380367.Spec : Prop :=
  ∀ n, P15670389639152380367.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P8643778305537234965

`A046073(A081770(n+2)/2)`
-/

namespace A094872.P8643778305537234965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.roundAway ((A081770 (n + 2) : ℚ) / 2)).toNat

end

end A094872.P8643778305537234965

namespace A094872

/-- `A046073(A081770(n+2)/2)` -/
def P8643778305537234965.Spec : Prop :=
  ∀ n, P8643778305537234965.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P12844705647269171273

`A046073(A364999(n+1))`
-/

namespace A094872.P12844705647269171273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A364999 (n + 1)).toNat

end

end A094872.P12844705647269171273

namespace A094872

/-- `A046073(A364999(n+1))` -/
def P12844705647269171273.Spec : Prop :=
  ∀ n, P12844705647269171273.a n = A094872 (n + 1)

end A094872

/-! ## A094872.P658194248277395429

`A046073(A081770(n+2))`
-/

namespace A094872.P658194248277395429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A081770 (n + 2)).toNat

end

end A094872.P658194248277395429

namespace A094872

/-- `A046073(A081770(n+2))` -/
def P658194248277395429.Spec : Prop :=
  ∀ n, P658194248277395429.a n = A094872 (n + 1)

end A094872

/-!
# A094873: n! has a triangular number of digits.

The programs for A094873, there is no canonical definition to state claims against.
-/

/-! ## A094873.P5032492358169101813

`eq[0, A002262(A034886(n))]`
-/

namespace A094873.P5032492358169101813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094873.P5032492358169101813

/-! ## A094873.P14061738087232250850

`eq[A057427(n+1), A288515(A034886(n))]`
-/

namespace A094873.P14061738087232250850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094873.P14061738087232250850

/-! ## A094873.P11692253799047373717

`eq[1, A288515(A034886(n)*A057427(n))]`
-/

namespace A094873.P11692253799047373717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034886 n * A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094873.P11692253799047373717

/-! ## A094873.P15029118045462305329

`eq[A001511(2*n+1), A288515(A034886(n))]`
-/

namespace A094873.P15029118045462305329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094873.P15029118045462305329

/-! ## A094873.P5282140024077972758

`eq[A019425(2*(n+1)), A288515(A034886(n))]`
-/

namespace A094873.P5282140024077972758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094873.P5282140024077972758

/-! ## A094873.P2326774662216024438

`eq[2*n, A005843(n*A010054(A034886(n)))]`
-/

namespace A094873.P2326774662216024438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) * A010054 (A034886 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094873.P2326774662216024438

/-! ## A094873.P14986350932851723527

`eq[A010054(A034886(n)), A349906(12*n+2)]`
-/

namespace A094873.P14986350932851723527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A034886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (12 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094873.P14986350932851723527

/-!
# A094874: Decimal expansion of (5-sqrt(5))/2.

The programs for A094874, there is no canonical definition to state claims against.
-/

/-! ## A094874.P2362179006239442134

`A079585(n)-A000007(n)`
-/

namespace A094874.P2362179006239442134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1) - A000007 n

end

end A094874.P2362179006239442134

/-! ## A094874.P5261160728951865767

`A109866(n+1)%A040042(n)`
-/

namespace A094874.P5261160728951865767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109866 (n + 1)) (A040042 n)

end

end A094874.P5261160728951865767

/-! ## A094874.P6001937921113448561

`gcd(A000038(n)/2, A109866(n+1))`
-/

namespace A094874.P6001937921113448561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A109866 (n + 1))

end

end A094874.P6001937921113448561

/-! ## A094874.P695161731299901510

`A109866(A057427(a(n-1)+1)+n)` with `a(0)=1`
-/

namespace A094874.P695161731299901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A057427 (a (n - 1) + 1).toNat + (n : ℤ)).toNat

end

end A094874.P695161731299901510

/-! ## A094874.P8106660789538339185

`A109866(A000041(and(1, a(n-1)))+n)` with `a(0)=1`
-/

namespace A094874.P8106660789538339185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A000041 (Int.land 1 (a (n - 1))).toNat + (n : ℤ)).toNat

end

end A094874.P8106660789538339185

/-! ## A094874.P18139418747654938883

`A109866(A307721(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A094874.P18139418747654938883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (A307721 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat

end

end A094874.P18139418747654938883

/-! ## A094874.P15195834182954708615

`A109866(C(a(n-1), A049872(a(n-1)))+n)` with `a(0)=1`
-/

namespace A094874.P15195834182954708615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109866 (Nat.choose (a (n - 1)).toNat (A049872 (a (n - 1)).toNat).toNat + n)

end

end A094874.P15195834182954708615

/-! ## A094874.P12038362366908627718

`A109866(n+1)^A008288(A008288(a(n-1)))` with `a(0)=1`
-/

namespace A094874.P12038362366908627718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A109866 (n + 1) : ℚ) ^ (A008288 (A008288 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℤ)

end

end A094874.P12038362366908627718

/-! ## A094874.P447692097231949869

`9-A038573(A220777(a(n-1)))*A104457(n)` with `a(0)=1`
-/

namespace A094874.P447692097231949869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - A038573 (A220777 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A094874.P447692097231949869

/-! ## A094874.P10625813075833520158

`9-A002802(A326626(a(n-1)))*A104457(n)` with `a(0)=1`
-/

namespace A094874.P10625813075833520158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - A002802 (A326626 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A094874.P10625813075833520158

/-! ## A094874.P17318701465106327077

`9-(A179006(A000720(a(n-1)+1))+A104457(n))` with `a(0)=1`
-/

namespace A094874.P17318701465106327077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - (A179006 (A000720 (a (n - 1) + 1).toNat).toNat + A104457 (n + 1))

end

end A094874.P17318701465106327077

/-! ## A094874.P14764148891345540023

`A079585(n)/A141044(n+1)`
-/

namespace A094874.P14764148891345540023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) / (A141044 (n + 1) : ℚ)

end

end A094874.P14764148891345540023

/-! ## A094874.P3461211873461890510

`A294619(n+1)+A079585(n)-A141044(n)`
-/

namespace A094874.P3461211873461890510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (n + 1) + (A079585 (n + 1) - A141044 n)

end

end A094874.P3461211873461890510

/-! ## A094874.P9187972694870267928

`A329684(n+1)+A079585(n)-A141044(n)`
-/

namespace A094874.P9187972694870267928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (n + 1) + (A079585 (n + 1) - A141044 n)

end

end A094874.P9187972694870267928

/-! ## A094874.P14720921419356962180

`A079585(n)/A294619(n+2)`
-/

namespace A094874.P14720921419356962180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) / (A294619 (n + 2) : ℚ)

end

end A094874.P14720921419356962180

/-! ## A094874.P18092708576604245174

`A079585(n)/A329684(n+2)`
-/

namespace A094874.P18092708576604245174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) / (A329684 (n + 2) : ℚ)

end

end A094874.P18092708576604245174

/-! ## A094874.P13455058450298790689

`A079585(n)/A135560(2*n+1)`
-/

namespace A094874.P13455058450298790689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) / (A135560 (2 * n + 1) : ℚ)

end

end A094874.P13455058450298790689

/-! ## A094874.P15984033394059914963

`A079585(n)/A306821(2*n+1)`
-/

namespace A094874.P15984033394059914963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) / (A306821 (2 * n + 1) : ℚ)

end

end A094874.P15984033394059914963

/-! ## A094874.P5232041938549117898

`a(n-1)-A095943(n)` with `a(0)=1, a(1)=3`
-/

namespace A094874.P5232041938549117898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - A095943 n

end

end A094874.P5232041938549117898

/-!
# A094875: Numbers k such that floor(10^k * Pi) is prime.

The programs for A094875, there is no canonical definition to state claims against.
-/

/-! ## A094875.P16086824281613696006

`A060421(n+1)-1`
-/

namespace A094875.P16086824281613696006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060421 (n + 1) - 1

end

end A094875.P16086824281613696006

/-! ## A094875.P399089354282911095

`A102283(3*n+2)+A060421(n+1)`
-/

namespace A094875.P399089354282911095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 2) + A060421 (n + 1)

end

end A094875.P399089354282911095

/-! ## A094875.P12459797614472249852

`A376604(Δ[round(ϕ*n)])+A060421(n+1)`
-/

namespace A094875.P12459797614472249852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376604 (f1 (n + 1) - f1 n).toNat + A060421 (n + 1)

end

end A094875.P12459797614472249852

/-! ## A094875.P11186392828230071914

`A145466(A048996(n))+A060421(n+1)`
-/

namespace A094875.P11186392828230071914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145466 (A048996 n).toNat + A060421 (n + 1)

end

end A094875.P11186392828230071914

/-!
# A094876: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1; then a(n) = sum( a(2*i)*a(3*j)) where 1< = i< = n, 1< = j< = n and 2*i+3*j = n.

The programs for A094876, the canonical program `A094876.P8387167060202303753` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094876 has offset 1).

The definition of A094876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094876.P8387167060202303753

`A000108(Δ[round(C(n, 3)/(2*(n+1)))])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094876

/-- `A000108(Δ[round(C(n, 3)/(2*(n+1)))])` -/
def P8387167060202303753.Spec : Prop :=
  ∀ n, P8387167060202303753.a n = A094876 (n + 1)

theorem P8387167060202303753.correct : P8387167060202303753.Spec := by
  intro n
  simp only [A094876, Nat.add_sub_cancel]

end A094876

/-! ## A094876.P14325471957557546616

`A000108(Δ[A211540(n)])`
-/

namespace A094876.P14325471957557546616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A094876.P14325471957557546616

namespace A094876

/-- `A000108(Δ[A211540(n)])` -/
def P14325471957557546616.Spec : Prop :=
  ∀ n, P14325471957557546616.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P6052664486475550529

`A120588(A011960(n+2))`
-/

namespace A094876.P6052664486475550529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A011960 (n + 2)).toNat

end

end A094876.P6052664486475550529

namespace A094876

/-- `A120588(A011960(n+2))` -/
def P6052664486475550529.Spec : Prop :=
  ∀ n, P6052664486475550529.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P591770982545871660

`A089408(A063195(n+2))`
-/

namespace A094876.P591770982545871660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A063195 (n + 2)).toNat

end

end A094876.P591770982545871660

namespace A094876

/-- `A089408(A063195(n+2))` -/
def P591770982545871660.Spec : Prop :=
  ∀ n, P591770982545871660.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P11680059187192340933

`A120588(A010764(n+4))`
-/

namespace A094876.P11680059187192340933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A010764 (n + 4)).toNat

end

end A094876.P11680059187192340933

namespace A094876

/-- `A120588(A010764(n+4))` -/
def P11680059187192340933.Spec : Prop :=
  ∀ n, P11680059187192340933.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P3498174581267615059

`A000108(A008647(2*n+1))`
-/

namespace A094876.P3498174581267615059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008647 (2 * n + 1)).toNat

end

end A094876.P3498174581267615059

namespace A094876

/-- `A000108(A008647(2*n+1))` -/
def P3498174581267615059.Spec : Prop :=
  ∀ n, P3498174581267615059.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P12568490500119201484

`A000108(A002265(2*n)-ceil((n-1)/3))`
-/

namespace A094876.P12568490500119201484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002265 (2 * n) - ⌈((n : ℤ) - 1 : ℚ) / 3⌉).toNat

end

end A094876.P12568490500119201484

namespace A094876

/-- `A000108(A002265(2*n)-ceil((n-1)/3))` -/
def P12568490500119201484.Spec : Prop :=
  ∀ n, P12568490500119201484.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P7301023212418739569

`A000108(A008612(A010892(n)+n))`
-/

namespace A094876.P7301023212418739569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008612 (A010892 n + (n : ℤ)).toNat).toNat

end

end A094876.P7301023212418739569

namespace A094876

/-- `A000108(A008612(A010892(n)+n))` -/
def P7301023212418739569.Spec : Prop :=
  ∀ n, P7301023212418739569.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P13691221005994485937

`A000108(Δ[A008748(n)-A001399(n)])`
-/

namespace A094876.P13691221005994485937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A094876.P13691221005994485937

namespace A094876

/-- `A000108(Δ[A008748(n)-A001399(n)])` -/
def P13691221005994485937.Spec : Prop :=
  ∀ n, P13691221005994485937.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P13121577121578505758

`A000108(Δ[A008748(n)%A001399(n)])`
-/

namespace A094876.P13121577121578505758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008748 n) (A001399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A094876.P13121577121578505758

namespace A094876

/-- `A000108(Δ[A008748(n)%A001399(n)])` -/
def P13121577121578505758.Spec : Prop :=
  ∀ n, P13121577121578505758.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P10451364280215200619

`A000108(A211540(n+1)-A211540(n))`
-/

namespace A094876.P10451364280215200619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A211540 (n + 1) - A211540 n).toNat

end

end A094876.P10451364280215200619

namespace A094876

/-- `A000108(A211540(n+1)-A211540(n))` -/
def P10451364280215200619.Spec : Prop :=
  ∀ n, P10451364280215200619.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P733526973070536516

`A126120(A109613(n)-A130823(n+2))`
-/

namespace A094876.P733526973070536516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A109613 n - A130823 (n + 2)).toNat

end

end A094876.P733526973070536516

namespace A094876

/-- `A126120(A109613(n)-A130823(n+2))` -/
def P733526973070536516.Spec : Prop :=
  ∀ n, P733526973070536516.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P5695443887701243162

`A000108(A103221(2*n+1)-A103221(n+1))`
-/

namespace A094876.P5695443887701243162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A103221 (2 * n + 1) - A103221 (n + 1)).toNat

end

end A094876.P5695443887701243162

namespace A094876

/-- `A000108(A103221(2*n+1)-A103221(n+1))` -/
def P5695443887701243162.Spec : Prop :=
  ∀ n, P5695443887701243162.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P5138124109027196571

`A000108(A002264(2*n+1)-A002265(2*(n+1)))`
-/

namespace A094876.P5138124109027196571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002264 (2 * n + 1) - A002265 (2 * (n + 1))).toNat

end

end A094876.P5138124109027196571

namespace A094876

/-- `A000108(A002264(2*n+1)-A002265(2*(n+1)))` -/
def P5138124109027196571.Spec : Prop :=
  ∀ n, P5138124109027196571.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P9728183782874551892

`A039598(A024163(n+1))`
-/

namespace A094876.P9728183782874551892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A024163 (n + 1)).toNat

end

end A094876.P9728183782874551892

namespace A094876

/-- `A039598(A024163(n+1))` -/
def P9728183782874551892.Spec : Prop :=
  ∀ n, P9728183782874551892.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P3491344844539877186

`A000108(val(A135530(n), 8))`
-/

namespace A094876.P3491344844539877186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A135530 n).toNat 8)

end

end A094876.P3491344844539877186

namespace A094876

/-- `A000108(val(A135530(n), 8))` -/
def P3491344844539877186.Spec : Prop :=
  ∀ n, P3491344844539877186.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P15335273828923793634

`A000108(val(A029744(n+2), 8))`
-/

namespace A094876.P15335273828923793634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A029744 (n + 2)).toNat 8)

end

end A094876.P15335273828923793634

namespace A094876

/-- `A000108(val(A029744(n+2), 8))` -/
def P15335273828923793634.Spec : Prop :=
  ∀ n, P15335273828923793634.a n = A094876 (n + 1)

end A094876

/-! ## A094876.P3876977355551171155

`A000108(val(A051109(n), 4))`
-/

namespace A094876.P3876977355551171155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A051109 n).toNat 4)

end

end A094876.P3876977355551171155

namespace A094876

/-- `A000108(val(A051109(n), 4))` -/
def P3876977355551171155.Spec : Prop :=
  ∀ n, P3876977355551171155.a n = A094876 (n + 1)

end A094876

/-!
# A094877: Primes that are reached in A094830.

The programs for A094877, there is no canonical definition to state claims against.
-/

/-! ## A094877.P13516376164411256945

`A020639(xor(3^n*n!, p?[4*6*n+5]))`
-/

namespace A094877.P13516376164411256945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (6 * n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor (3 ^ n * Nat.factorial n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A094877.P13516376164411256945

/-! ## A094877.P6393173836907303676

`A006530(A202826(n)+A002513(n))`
-/

namespace A094877.P6393173836907303676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A202826 n + A002513 n).toNat

end

end A094877.P6393173836907303676

/-!
# A094878: n sets a new record in A094830.

The programs for A094878, there is no canonical definition to state claims against.
-/

/-! ## A094878.P13541692943227394246

`A094658(record[A094830(n+1)])`
-/

namespace A094878.P13541692943227394246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094658 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094878.P13541692943227394246

/-!
# A094879: Where 1's occur in A094830 (nonprimes that reach a prime in one step under iteration of "x -> x + sum of squares of digits of x").

The programs for A094879, there is no canonical definition to state claims against.
-/

/-! ## A094879.P7152297741614107877

`eq[1, A094830(n+1)]+1`
-/

namespace A094879.P7152297741614107877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094879.P7152297741614107877

/-! ## A094879.P1552865672842297553

`filter[A076161(n+1), A005171(#)]`
-/

namespace A094879.P1552865672842297553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A094879.P1552865672842297553

/-! ## A094879.P17844473787150668683

`eq[1, A094830(A000038(n)+n)]`
-/

namespace A094879.P17844473787150668683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094879.P17844473787150668683

/-! ## A094879.P14167172464543336041

`∩[A018252(n+1), A076161(n+1)]`
-/

namespace A094879.P14167172464543336041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P14167172464543336041

/-! ## A094879.P16350312873540305456

`∩[A056653(n+1), A076161(n+1)]`
-/

namespace A094879.P16350312873540305456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P16350312873540305456

/-! ## A094879.P4561719547869074814

`∩[A065090(n+1), A076161(n+1)]`
-/

namespace A094879.P4561719547869074814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P4561719547869074814

/-! ## A094879.P10613191152896074643

`∩[A076161(n+1), A141468(n+1)]`
-/

namespace A094879.P10613191152896074643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P10613191152896074643

/-! ## A094879.P11195541532726548147

`∩[A076161(n+1), A171581(n+1)]`
-/

namespace A094879.P11195541532726548147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P11195541532726548147

/-! ## A094879.P10983056594229578769

`∩[A076161(n+1), A173905(n+1)]`
-/

namespace A094879.P10983056594229578769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094879.P10983056594229578769

/-! ## A094879.P4864361733961169195

`eq[A057427(n), A094830(A028310(n))]`
-/

namespace A094879.P4864361733961169195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094879.P4864361733961169195

/-!
# A094890: Triangular numbers whose sum of squared digits is also triangular.

The programs for A094890, there is no canonical definition to state claims against.
-/

/-! ## A094890.P13825751190765743222

`eq[A010054(A003132(n)), A063007(n)]`
-/

namespace A094890.P13825751190765743222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094890.P13825751190765743222

/-! ## A094890.P6833189650677946802

`eq[A074909(A003132(n)), A074909(n)]`
-/

namespace A094890.P6833189650677946802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094890.P6833189650677946802

/-! ## A094890.P17806717985308449335

`eq[A208341(A003132(n)), A208341(n)]`
-/

namespace A094890.P17806717985308449335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094890.P17806717985308449335

/-! ## A094890.P747410424194302359

`eq[A254858(A003132(n)), A254858(n)]`
-/

namespace A094890.P747410424194302359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094890.P747410424194302359

/-! ## A094890.P5274120248041412695

`eq[A002260(n+1), A010054(A003132(n))]`
-/

namespace A094890.P5274120248041412695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094890.P5274120248041412695

/-!
# A094891: Total area below the lattice paths of a given length defined by the rule [(0),(k)->(k-1)(k)(k+1)] (Motzkin paths).

The programs for A094891, there is no canonical definition to state claims against.
-/

/-! ## A094891.P12356613854807303899

`A093848(A289786(n))`
-/

namespace A094891.P12356613854807303899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (A289786 n).toNat

end

end A094891.P12356613854807303899

/-!
# A094892: a(n) is the number of primes between n*210 and (n+1)*210.

The programs for A094892, the canonical program `A094892.P3447562354296670442` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094892 has offset 0).

The definition of A094892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094892.P3447562354296670442

`Δ[A000720(A008458(35*n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094892

/-- `Δ[A000720(A008458(35*n))]` -/
def P3447562354296670442.Spec : Prop :=
  ∀ n, P3447562354296670442.a n = A094892 n

theorem P3447562354296670442.correct : P3447562354296670442.Spec := by
  intro n
  simp only [A094892]

end A094892

/-! ## A094892.P5295073280657574961

`Δ[A230980(A249674(7*n))]`
-/

namespace A094892.P5295073280657574961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A249674 (7 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094892.P5295073280657574961

namespace A094892

/-- `Δ[A230980(A249674(7*n))]` -/
def P5295073280657574961.Spec : Prop :=
  ∀ n, P5295073280657574961.a n = A094892 n

end A094892

/-! ## A094892.P5381760913861837714

`Δ[A230980(A008592(21*n))]`
-/

namespace A094892.P5381760913861837714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008592 (21 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094892.P5381760913861837714

namespace A094892

/-- `Δ[A230980(A008592(21*n))]` -/
def P5381760913861837714.Spec : Prop :=
  ∀ n, P5381760913861837714.a n = A094892 n

end A094892

/-! ## A094892.P7602223106171223840

`Δ[A000720(A028310(3*70*n))]`
-/

namespace A094892.P7602223106171223840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 (3 * (70 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094892.P7602223106171223840

namespace A094892

/-- `Δ[A000720(A028310(3*70*n))]` -/
def P7602223106171223840.Spec : Prop :=
  ∀ n, P7602223106171223840.a n = A094892 n

end A094892

/-!
# A094893: Total area below the lattice paths of length n defined by the rule [(0),(k)->(k-1)(k+1)] (Dyck paths).

The programs for A094893, there is no canonical definition to state claims against.
-/

/-! ## A094893.P13384312314164119501

`A380934(A015889(n+1))`
-/

namespace A094893.P13384312314164119501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380934 (A015889 (n + 1)).toNat

end

end A094893.P13384312314164119501

/-! ## A094893.P5106854613799051970

`∑[∑[A272620(A084297(n+1))]]`
-/

namespace A094893.P5106854613799051970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (A084297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094893.P5106854613799051970

/-!
# A094894: a(n) = prime(Lucas(n)), Lucas numbers beginning at 2 (A000032).

The programs for A094894, the canonical program `A094894.P10948820553726470902` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094894 has offset 0).

The definition of A094894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094894.P10948820553726470902

`A000040(A000032(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094894

/-- `A000040(A000032(n))` -/
def P10948820553726470902.Spec : Prop :=
  ∀ n, P10948820553726470902.a n = A094894 n

theorem P10948820553726470902.correct : P10948820553726470902.Spec := by
  intro n
  simp only [A094894]

end A094894

/-! ## A094894.P13146615183250207344

`A180363(n+1)-A180367(n)`
-/

namespace A094894.P13146615183250207344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180363 (n + 1) - A180367 n

end

end A094894.P13146615183250207344

namespace A094894

/-- `A180363(n+1)-A180367(n)` -/
def P13146615183250207344.Spec : Prop :=
  ∀ n, P13146615183250207344.a n = A094894 n

end A094894

/-! ## A094894.P15576353811754790159

`A001748(A000211(n)-2)/3`
-/

namespace A094894.P15576353811754790159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000211 n - 2).toNat : ℚ) / 3

end

end A094894.P15576353811754790159

namespace A094894

/-- `A001748(A000211(n)-2)/3` -/
def P15576353811754790159.Spec : Prop :=
  ∀ n, P15576353811754790159.a n = (A094894 n : ℚ)

end A094894

/-! ## A094894.P9334657392894586660

`A001748(A127218(2*n))/3`
-/

namespace A094894.P9334657392894586660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A127218 (2 * n)).toNat : ℚ) / 3

end

end A094894.P9334657392894586660

namespace A094894

/-- `A001748(A127218(2*n))/3` -/
def P9334657392894586660.Spec : Prop :=
  ∀ n, P9334657392894586660.a n = (A094894 n : ℚ)

end A094894

/-! ## A094894.P3685518759542636231

`A001748(A000032(n))/A010702(2*n)`
-/

namespace A094894.P3685518759542636231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000032 n).toNat : ℚ) / (A010702 (2 * n) : ℚ)

end

end A094894.P3685518759542636231

namespace A094894

/-- `A001748(A000032(n))/A010702(2*n)` -/
def P3685518759542636231.Spec : Prop :=
  ∀ n, P3685518759542636231.a n = (A094894 n : ℚ)

end A094894

/-!
# A094895: Sequence generated from a Knight's tour of a 4 X 4 chessboard considered as a matrix.

The programs for A094895, the canonical program `A094895.P6891657185804721639` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094895 has offset 1).

The definition of A094895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094895.P6891657185804721639

`2^(n-1)*((-4)^(n+1)+9*(-1)^(n+1)+15*17^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094895

/-- `2^(n-1)*((-4)^(n+1)+9*(-1)^(n+1)+15*17^n)` -/
def P6891657185804721639.Spec : Prop :=
  ∀ n, P6891657185804721639.a n = (A094895 (n + 1) : ℚ)

end A094895

/-!
# A094896: If 4*n+1 is prime and 4*n+3 is not prime then a(n)=4*n+1, else a(n)=0.

The programs for A094896, there is no canonical definition to state claims against.
-/

/-! ## A094896.P11095720293279665234

`(4*n+1)*A163533(A049653(2*(n+1)))`
-/

namespace A094896.P11095720293279665234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A163533 (A049653 (2 * (n + 1))).toNat

end

end A094896.P11095720293279665234

/-! ## A094896.P6049994666647012259

`A061397(4*n+1)%A001065(4*n+3)²`
-/

namespace A094896.P6049994666647012259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061397 (4 * n + 1)) (A001065 (4 * n + 3) ^ 2)

end

end A094896.P6049994666647012259

/-! ## A094896.P15542144235861066720

`(1-A101264(2*n+1))*A085090(2*n+1)`
-/

namespace A094896.P15542144235861066720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A101264 (2 * n + 1)) * A085090 (2 * n + 1)

end

end A094896.P15542144235861066720

/-! ## A094896.P2373868992921231147

`C(A085090(2*n+1), A085090(2*(n+1))+1)`
-/

namespace A094896.P2373868992921231147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085090 (2 * n + 1)).toNat (A085090 (2 * (n + 1)) + 1).toNat

end

end A094896.P2373868992921231147

/-! ## A094896.P15173325793530193170

`A016813(n)*A316864(A049653(2*(n+1)))`
-/

namespace A094896.P15173325793530193170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A316864 (A049653 (2 * (n + 1))).toNat

end

end A094896.P15173325793530193170

/-! ## A094896.P6846626678295678785

`A061397(A061397(4*n+3)+A016813(n))`
-/

namespace A094896.P6846626678295678785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A061397 (4 * n + 3) + A016813 n).toNat

end

end A094896.P6846626678295678785

/-! ## A094896.P17359409609119299663

`A085090(gcd(A005408(n), A085090(2*(n+1))))`
-/

namespace A094896.P17359409609119299663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (Int.gcd (A005408 n) (A085090 (2 * (n + 1))))

end

end A094896.P17359409609119299663

/-! ## A094896.P8527208955328333659

`C(A110560(4*n), A110560(A110560(4*n)))`
-/

namespace A094896.P8527208955328333659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110560 (4 * n)).toNat (A110560 (A110560 (4 * n)).toNat).toNat

end

end A094896.P8527208955328333659

/-! ## A094896.P4857463674483515359

`A061397(A061397(4*n+3)+A005408(2*n))`
-/

namespace A094896.P4857463674483515359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A061397 (4 * n + 3) + A005408 (2 * n)).toNat

end

end A094896.P4857463674483515359

/-! ## A094896.P15816536697508707267

`A061397(A061397(4*n+3)+A004442(4*n))`
-/

namespace A094896.P15816536697508707267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A061397 (4 * n + 3) + A004442 (4 * n)).toNat

end

end A094896.P15816536697508707267

/-!
# A094897: If 4*n+1 is not prime and 4*n+3 is prime then a(n)=4*n+3, else a(n)=0.

The programs for A094897, there is no canonical definition to state claims against.
-/

/-! ## A094897.P6503198149862616059

`(1-A101264(2*n))*A085090(2*(n+1))`
-/

namespace A094897.P6503198149862616059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A101264 (2 * n)) * A085090 (2 * (n + 1))

end

end A094897.P6503198149862616059

/-! ## A094897.P14312755227607959327

`A061397(A010051(4*n+1)+4*n+3)`
-/

namespace A094897.P14312755227607959327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A010051 (4 * n + 1) + (4 * n + 3 : ℤ)).toNat

end

end A094897.P14312755227607959327

/-! ## A094897.P17304237290675966017

`A061397(A061397(4*n+1)+4*n+3)`
-/

namespace A094897.P17304237290675966017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A061397 (4 * n + 1) + (4 * n + 3 : ℤ)).toNat

end

end A094897.P17304237290675966017

/-! ## A094897.P3994096887815397974

`A023889(gcd(4*n+3, A051698(4*n+2)))`
-/

namespace A094897.P3994096887815397974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (Int.gcd (4 * n + 3 : ℤ) (A051698 (4 * n + 2)))

end

end A094897.P3994096887815397974

/-! ## A094897.P6005020592858235268

`C(2, A085090(2*n+1))*A085090(2*(n+1))`
-/

namespace A094897.P6005020592858235268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A085090 (2 * n + 1)).toNat : ℤ) * A085090 (2 * (n + 1))

end

end A094897.P6005020592858235268

/-! ## A094897.P16896641684021525503

`A061397(A272476(2*n)-A101264(2*n))`
-/

namespace A094897.P16896641684021525503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A272476 (2 * n) - A101264 (2 * n)).toNat

end

end A094897.P16896641684021525503

/-! ## A094897.P16429331095861553751

`A003982(A085090(2*n+1))*A085090(2*(n+1))`
-/

namespace A094897.P16429331095861553751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A085090 (2 * n + 1)).toNat * A085090 (2 * (n + 1))

end

end A094897.P16429331095861553751

/-! ## A094897.P13527719377346894192

`A010892(A085090(2*n+1))*A085090(2*n+2)`
-/

namespace A094897.P13527719377346894192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A085090 (2 * n + 1)).toNat * A085090 (2 * n + 2)

end

end A094897.P13527719377346894192

/-! ## A094897.P11289644378790348689

`A049283(A016813(n)+A005171(A016813(n)))`
-/

namespace A094897.P11289644378790348689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A016813 n + A005171 (A016813 n).toNat).toNat

end

end A094897.P11289644378790348689

/-!
# A094898: This sequence needs a proper name.

The programs for A094898, there is no canonical definition to state claims against.
-/

/-! ## A094898.P8148054046899680531

`A000007(A359935(n+2))*A000040(n+4)`
-/

namespace A094898.P8148054046899680531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A359935 (n + 2)).toNat * A000040 (n + 4)

end

end A094898.P8148054046899680531

/-! ## A094898.P17216574977783867820

`A151685(A083024(n))*A352128(n)`
-/

namespace A094898.P17216574977783867820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151685 (A083024 n).toNat * A352128 n

end

end A094898.P17216574977783867820

/-! ## A094898.P16180270698188755215

`A000035(A014371(n))*A000040(n+4)`
-/

namespace A094898.P16180270698188755215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014371 n).toNat * A000040 (n + 4)

end

end A094898.P16180270698188755215

/-! ## A094898.P12776267151902962044

`A000040(n+4)*A088534(A180354(n))`
-/

namespace A094898.P12776267151902962044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) * A088534 (A180354 n).toNat

end

end A094898.P12776267151902962044

/-! ## A094898.P17961110899158671976

`A078873(n+1)*A079559(A128336(n+1))`
-/

namespace A094898.P17961110899158671976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078873 (n + 1) * A079559 (A128336 (n + 1)).toNat

end

end A094898.P17961110899158671976

/-!
# A094899: a(n) = Floor[Exp[(Prime[n]-n*Log[3])/n]].

The programs for A094899, there is no canonical definition to state claims against.
-/

/-! ## A094899.P5394776005929550966

`floor(exp(A000040(n+1)/(n+1))/3)`
-/

namespace A094899.P5394776005929550966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) / 3⌋

end

end A094899.P5394776005929550966

/-! ## A094899.P7706527005403865195

`floor(exp(A008578(n+2)/(n+1))/3)`
-/

namespace A094899.P7706527005403865195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((A008578 (n + 2) : ℚ) / (n + 1 : ℚ) : ℝ) / 3⌋

end

end A094899.P7706527005403865195

