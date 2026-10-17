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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
# A187700: Number of 4X4 0..n arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under horizontal and vertical reflection.

The programs for A187700, there is no canonical definition to state claims against.
-/

/-! ## A187700.P6336027239774707130

`A187699(∑[n+2]+4)`
-/

namespace A187700.P6336027239774707130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187700.P6336027239774707130

/-! ## A187700.P14087753518484787342

`lcm(2, A187699(A167614(n+1)))`
-/

namespace A187700.P14087753518484787342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187699 (A167614 (n + 1)).toNat)

end

end A187700.P14087753518484787342

/-!
# A187701: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 subblock off diagonal and antidiagonal nonsingular and the array of 2X2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187701, there is no canonical definition to state claims against.
-/

/-! ## A187701.P7738466069318046889

`A187705(∑[n+2])`
-/

namespace A187701.P7738466069318046889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187701.P7738466069318046889

/-!
# A187702: Number of (n+1) X (n+1) 0..3 arrays with each 2 X 2 subblock off diagonal and antidiagonal nonsingular and the array of 2 X 2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187702, there is no canonical definition to state claims against.
-/

/-! ## A187702.P1498204419476198013

`A187705(∑[n+3]+1)`
-/

namespace A187702.P1498204419476198013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187702.P1498204419476198013

/-!
# A187703: Number of (n+1) X (n+1) 0..4 arrays with each 2 X 2 subblock off diagonal and antidiagonal nonsingular and the array of 2 X 2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187703, there is no canonical definition to state claims against.
-/

/-! ## A187703.P8690526696670612982

`A187705(∑[n+4]+3)`
-/

namespace A187703.P8690526696670612982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187703.P8690526696670612982

/-!
# A187704: Number of (n+1)X(n+1) 0..5 arrays with each 2X2 subblock off diagonal and antidiagonal nonsingular and the array of 2X2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187704, there is no canonical definition to state claims against.
-/

/-! ## A187704.P3450238222203857841

`A187705(Δ[A264443(n)])`
-/

namespace A187704.P3450238222203857841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (f1 (n + 1) - f1 n).toNat

end

end A187704.P3450238222203857841

/-!
# A187706: Number of 3X3 0..n arrays with each 2X2 subblock off diagonal and antidiagonal nonsingular and the array of 2X2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187706, there is no canonical definition to state claims against.
-/

/-! ## A187706.P5393481320606867434

`A187705(∑[n+1]+2)`
-/

namespace A187706.P5393481320606867434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187706.P5393481320606867434

/-! ## A187706.P8846709733153918607

`record[A187705(A255128(n+4))]`
-/

namespace A187706.P8846709733153918607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (A255128 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187706.P8846709733153918607

/-! ## A187706.P11878705967274228789

`record[A187705(n+3)/A157149(n)]`
-/

namespace A187706.P11878705967274228789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187705 (n + 3) : ℚ) / (A157149 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187706.P11878705967274228789

/-! ## A187706.P15671074375921692267

`record[gcd(A048720(n), A187705(n+3))]`
-/

namespace A187706.P15671074375921692267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048720 n) (A187705 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187706.P15671074375921692267

/-!
# A187707: Number of 4X4 0..n arrays with each 2X2 subblock off diagonal and antidiagonal nonsingular and the array of 2X2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187707, there is no canonical definition to state claims against.
-/

/-! ## A187707.P6113745136115130793

`A187705(∑[n+2]+4)`
-/

namespace A187707.P6113745136115130793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187707.P6113745136115130793

/-! ## A187707.P7420647522766948086

`lcm(2, A187705(A167614(n+1)))`
-/

namespace A187707.P7420647522766948086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187705 (A167614 (n + 1)).toNat)

end

end A187707.P7420647522766948086

/-! ## A187707.P15914315352755914521

`A187705(A167614(n+1))+A025469(n)`
-/

namespace A187707.P15914315352755914521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (A167614 (n + 1)).toNat + A025469 n

end

end A187707.P15914315352755914521

/-!
# A187708: Number of 5 X 5 0..n arrays with each 2 X 2 subblock off diagonal and antidiagonal nonsingular and the array of 2 X 2 subblock determinants antisymmetric about the diagonal and antidiagonal.

The programs for A187708, there is no canonical definition to state claims against.
-/

/-! ## A187708.P15404717764974973267

`A187705(C(n+4, 2)+4)`
-/

namespace A187708.P15404717764974973267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (Nat.choose (n + 4) 2 + 4)

end

end A187708.P15404717764974973267

/-! ## A187708.P14217724468613473514

`A187705(A020752(n+1))`
-/

namespace A187708.P14217724468613473514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (A020752 (n + 1)).toNat

end

end A187708.P14217724468613473514

/-!
# A187709: a(n) = (7*9^n + 1)/8.

The programs for A187709, the canonical program `A187709.P7602302860313164779` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187709 has offset 0).

The definition of A187709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187709.P7602302860313164779

`10*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187709

/-- `10*a(n-1)-9*a(n-2)` -/
def P7602302860313164779.Spec : Prop :=
  ∀ n, P7602302860313164779.a n = A187709 n

theorem P7602302860313164779.correct : P7602302860313164779.Spec := by
  intro n
  simp only [A187709]

end A187709

/-! ## A187709.P17548554076632064856

`(7*9^n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187709.P17548554076632064856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 9 ^ n + 1 : ℚ) / 8

end

end A187709.P17548554076632064856

namespace A187709

/-- `(7*9^n+1)/8` -/
def P17548554076632064856.Spec : Prop :=
  ∀ n, P17548554076632064856.a n = (A187709 n : ℚ)

end A187709

/-! ## A187709.P8579308607157162676

`9*a(n-1)-1` with `a(0)=1`
-/

namespace A187709.P8579308607157162676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - 1

end

end A187709.P8579308607157162676

namespace A187709

/-- `9*a(n-1)-1` -/
def P8579308607157162676.Spec : Prop :=
  ∀ n, P8579308607157162676.a n = A187709 n

end A187709

/-! ## A187709.P10621816720039047153

`lcm(9, a(n-1))-1` with `a(0)=1`
-/

namespace A187709.P10621816720039047153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 1

end

end A187709.P10621816720039047153

namespace A187709

/-- `lcm(9, a(n-1))-1` -/
def P10621816720039047153.Spec : Prop :=
  ∀ n, P10621816720039047153.a n = A187709 n

end A187709

/-! ## A187709.P7988942684179087675

`a(n-1)/(1/3)²-1` with `a(0)=1`
-/

namespace A187709.P7988942684179087675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 1

end

end A187709.P7988942684179087675

namespace A187709

/-- `a(n-1)/(1/3)²-1` -/
def P7988942684179087675.Spec : Prop :=
  ∀ n, P7988942684179087675.a n = (A187709 n : ℚ)

end A187709

/-! ## A187709.P12078084034837595585

`∑[A270472(n)]`
-/

namespace A187709.P12078084034837595585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187709.P12078084034837595585

namespace A187709

/-- `∑[A270472(n)]` -/
def P12078084034837595585.Spec : Prop :=
  ∀ n, P12078084034837595585.a n = A187709 n

end A187709

/-! ## A187709.P13185941857537813623

`A153774(Δ[n²])`
-/

namespace A187709.P13185941857537813623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153774 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A187709.P13185941857537813623

namespace A187709

/-- `A153774(Δ[n²])` -/
def P13185941857537813623.Spec : Prop :=
  ∀ n, P13185941857537813623.a n = A187709 n

end A187709

/-! ## A187709.P16273169290315226662

`ceil(A198964(n)/4)`
-/

namespace A187709.P16273169290315226662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198964 n : ℚ) / 4⌉

end

end A187709.P16273169290315226662

namespace A187709

/-- `ceil(A198964(n)/4)` -/
def P16273169290315226662.Spec : Prop :=
  ∀ n, P16273169290315226662.a n = A187709 n

end A187709

/-! ## A187709.P11563083999279422488

`∑[A141495(2*n)]`
-/

namespace A187709.P11563083999279422488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187709.P11563083999279422488

namespace A187709

/-- `∑[A141495(2*n)]` -/
def P11563083999279422488.Spec : Prop :=
  ∀ n, P11563083999279422488.a n = A187709 n

end A187709

/-! ## A187709.P2670887249758692941

`7*A002452(n)+1`
-/

namespace A187709.P2670887249758692941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002452 n + 1

end

end A187709.P2670887249758692941

namespace A187709

/-- `7*A002452(n)+1` -/
def P2670887249758692941.Spec : Prop :=
  ∀ n, P2670887249758692941.a n = A187709 n

end A187709

/-! ## A187709.P16523705469961488732

`A141495(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A187709.P16523705469961488732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141495 (n + n) + a (n - 1)

end

end A187709.P16523705469961488732

namespace A187709

/-- `A141495(n+n)+a(n-1)` -/
def P16523705469961488732.Spec : Prop :=
  ∀ n, P16523705469961488732.a n = A187709 n

end A187709

/-! ## A187709.P15569816667713454343

`A066443(n)+A002452(n)`
-/

namespace A187709.P15569816667713454343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n + A002452 n

end

end A187709.P15569816667713454343

namespace A187709

/-- `A066443(n)+A002452(n)` -/
def P15569816667713454343.Spec : Prop :=
  ∀ n, P15569816667713454343.a n = A187709 n

end A187709

/-! ## A187709.P8256061349424073203

`A001019(n)-A002452(n)`
-/

namespace A187709.P8256061349424073203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A002452 n

end

end A187709.P8256061349424073203

namespace A187709

/-- `A001019(n)-A002452(n)` -/
def P8256061349424073203.Spec : Prop :=
  ∀ n, P8256061349424073203.a n = A187709 n

end A187709

/-! ## A187709.P1856200344179768185

`A000244(n)²-A002452(n)`
-/

namespace A187709.P1856200344179768185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A002452 n

end

end A187709.P1856200344179768185

namespace A187709

/-- `A000244(n)²-A002452(n)` -/
def P1856200344179768185.Spec : Prop :=
  ∀ n, P1856200344179768185.a n = A187709 n

end A187709

/-! ## A187709.P6007260038071975755

`A000244(2*n)-A002452(n)`
-/

namespace A187709.P6007260038071975755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) - A002452 n

end

end A187709.P6007260038071975755

namespace A187709

/-- `A000244(2*n)-A002452(n)` -/
def P6007260038071975755.Spec : Prop :=
  ∀ n, P6007260038071975755.a n = A187709 n

end A187709

/-! ## A187709.P5173287255181106736

`A000244(n)²-A099583(2*n)`
-/

namespace A187709.P5173287255181106736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A099583 (2 * n)

end

end A187709.P5173287255181106736

namespace A187709

/-- `A000244(n)²-A099583(2*n)` -/
def P5173287255181106736.Spec : Prop :=
  ∀ n, P5173287255181106736.a n = A187709 n

end A187709

/-! ## A187709.P638210496977575894

`A002452(n+1)-A125857(n+1)`
-/

namespace A187709.P638210496977575894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (n + 1) - A125857 (n + 1)

end

end A187709.P638210496977575894

namespace A187709

/-- `A002452(n+1)-A125857(n+1)` -/
def P638210496977575894.Spec : Prop :=
  ∀ n, P638210496977575894.a n = A187709 n

end A187709

/-! ## A187709.P12528182238021450349

`A006342(2*n)+A003462(2*n)`
-/

namespace A187709.P12528182238021450349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * n) + A003462 (2 * n)

end

end A187709.P12528182238021450349

namespace A187709

/-- `A006342(2*n)+A003462(2*n)` -/
def P12528182238021450349.Spec : Prop :=
  ∀ n, P12528182238021450349.a n = A187709 n

end A187709

/-! ## A187709.P1428039141495445626

`A000244(2*n)-A099583(2*n)`
-/

namespace A187709.P1428039141495445626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) - A099583 (2 * n)

end

end A187709.P1428039141495445626

namespace A187709

/-- `A000244(2*n)-A099583(2*n)` -/
def P1428039141495445626.Spec : Prop :=
  ∀ n, P1428039141495445626.a n = A187709 n

end A187709

/-!
# A187710: a(n) = n^2 + n + 10.

The programs for A187710, the canonical program `A187710.P1062527429048793538` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187710 has offset 0).

The definition of A187710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+10` (program `A187710.P1062527429048793538`, by `A187710.P1062527429048793538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187710.P1062527429048793538

`n²+n+10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187710

/-- `n²+n+10` -/
def P1062527429048793538.Spec : Prop :=
  ∀ n, (P1062527429048793538.a n : ℤ) = A187710 n

theorem P1062527429048793538.correct : P1062527429048793538.Spec := by
  intro n
  simp only [A187710]

end A187710

/-! ## A187710.P15725527841238666799

`∑[a(n-1)+2]` with `a(0)=10, a(1)=2`
-/

namespace A187710.P15725527841238666799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187710.P15725527841238666799

namespace A187710

/-- `∑[a(n-1)+2]` -/
def P15725527841238666799.Spec : Prop :=
  ∀ n, (P15725527841238666799.a n : ℤ) = A187710 n

end A187710

/-!
# A187711: Integers k which equal (product of divisors of k) mod (sum of divisors of k).

The programs for A187711, the canonical program `A187711.P3919054973118783065` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187711 has offset 1).

The definition of A187711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187711.P3919054973118783065

`eq[n+1, A187680(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187711

/-- `eq[n+1, A187680(n+1)]+1` -/
def P3919054973118783065.Spec : Prop :=
  ∀ n, (P3919054973118783065.a n : ℤ) = A187711 (n + 1)

theorem P3919054973118783065.correct : P3919054973118783065.Spec := by
  intro n
  simp only [A187711, Nat.add_sub_cancel]

end A187711

/-! ## A187711.P4776873405183461288

`A020725(eq[n+1, A187680(n+1)])`
-/

namespace A187711.P4776873405183461288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187711.P4776873405183461288

namespace A187711

/-- `A020725(eq[n+1, A187680(n+1)])` -/
def P4776873405183461288.Spec : Prop :=
  ∀ n, P4776873405183461288.a n = A187711 (n + 1)

end A187711

/-! ## A187711.P15563878394645133500

`eq[A028310(n), A187680(A028310(n))]`
-/

namespace A187711.P15563878394645133500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187711.P15563878394645133500

namespace A187711

/-- `eq[A028310(n), A187680(A028310(n))]` -/
def P15563878394645133500.Spec : Prop :=
  ∀ n, (P15563878394645133500.a n : ℤ) = A187711 (n + 1)

end A187711

/-! ## A187711.P15659689596816674516

`eq[A008486(n)-2*n, A187680(A008486(n)-2*n)]`
-/

namespace A187711.P15659689596816674516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187711.P15659689596816674516

namespace A187711

/-- `eq[A008486(n)-2*n, A187680(A008486(n)-2*n)]` -/
def P15659689596816674516.Spec : Prop :=
  ∀ n, (P15659689596816674516.a n : ℤ) = A187711 (n + 1)

end A187711

/-! ## A187711.P402671318758777056

`eq[A065033(2*n), A187680(A065033(2*n))]`
-/

namespace A187711.P402671318758777056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187711.P402671318758777056

namespace A187711

/-- `eq[A065033(2*n), A187680(A065033(2*n))]` -/
def P402671318758777056.Spec : Prop :=
  ∀ n, (P402671318758777056.a n : ℤ) = A187711 (n + 1)

end A187711

/-! ## A187711.P11517529993094241652

`eq[A123108(2*n), A187680(A123108(2*n))]`
-/

namespace A187711.P11517529993094241652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187711.P11517529993094241652

namespace A187711

/-- `eq[A123108(2*n), A187680(A123108(2*n))]` -/
def P11517529993094241652.Spec : Prop :=
  ∀ n, (P11517529993094241652.a n : ℤ) = A187711 (n + 1)

end A187711

/-! ## A187711.P7400164960197493810

`eq[n, A187680(A233583(n+1))]`
-/

namespace A187711.P7400164960197493810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187711.P7400164960197493810

namespace A187711

/-- `eq[n, A187680(A233583(n+1))]` -/
def P7400164960197493810.Spec : Prop :=
  ∀ n, (P7400164960197493810.a n : ℤ) = A187711 (n + 1)

end A187711

/-!
# A187712: Composite numbers k such that k = (product of divisors of k) mod (sum of divisors of k).

The programs for A187712, there is no canonical definition to state claims against.
-/

/-! ## A187712.P8297904811983522753

`filter[A187711(n+1), A005171(#)]`
-/

namespace A187712.P8297904811983522753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A187712.P8297904811983522753

/-! ## A187712.P25771077520284403

`filter[A187711(n+1), A066247(#)]`
-/

namespace A187712.P25771077520284403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A187712.P25771077520284403

/-! ## A187712.P7141310138075536705

`filter[A187711(n+1), A202238(#)]`
-/

namespace A187712.P7141310138075536705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A187712.P7141310138075536705

/-! ## A187712.P956141649305194470

`filter[A187711(n+1), A292438(#)]`
-/

namespace A187712.P956141649305194470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A187712.P956141649305194470

/-! ## A187712.P10484455013760810639

`filter[A187711(n+1), A174898(#)]`
-/

namespace A187712.P10484455013760810639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A187712.P10484455013760810639

/-!
# A187713: Base-5 Keith numbers.

The programs for A187713, there is no canonical definition to state claims against.
-/

/-! ## A187713.P18234529509709306912

`lt[A139327(A097721(n+1)), A339970(n)]`
-/

namespace A187713.P18234529509709306912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139327 (A097721 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187713.P18234529509709306912

/-!
# A187715: a(n) = 5*n - (9 + (-1)^n)/2.

The programs for A187715, the canonical program `A187715.P14605898143551736519` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187715 has offset 1).

The definition of A187715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187715.P14605898143551736519

`or(1, 5*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187715

/-- `or(1, 5*n)` -/
def P14605898143551736519.Spec : Prop :=
  ∀ n, (P14605898143551736519.a n : ℤ) = A187715 (n + 1)

theorem P14605898143551736519.correct : P14605898143551736519.Spec := by
  intro n
  simp only [A187715, Nat.add_sub_cancel]

end A187715

/-! ## A187715.P11000253890948125809

`and(5*n, -2)+1`
-/

namespace A187715.P11000253890948125809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n : ℤ) (-2) + 1

end

end A187715.P11000253890948125809

namespace A187715

/-- `and(5*n, -2)+1` -/
def P11000253890948125809.Spec : Prop :=
  ∀ n, P11000253890948125809.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P4426602358126512543

`xor(1, and(5*n, -2))`
-/

namespace A187715.P4426602358126512543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (5 * n : ℤ) (-2))

end

end A187715.P4426602358126512543

namespace A187715

/-- `xor(1, and(5*n, -2))` -/
def P4426602358126512543.Spec : Prop :=
  ∀ n, P4426602358126512543.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P8511884772231512236

`a(n-2)+10` with `a(0)=1, a(1)=5`
-/

namespace A187715.P8511884772231512236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 10

end

end A187715.P8511884772231512236

namespace A187715

/-- `a(n-2)+10` -/
def P8511884772231512236.Spec : Prop :=
  ∀ n, (P8511884772231512236.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P1100501607261061761

`log2(gcd(2, n))+5*n`
-/

namespace A187715.P1100501607261061761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (5 * n : ℝ)

end

end A187715.P1100501607261061761

namespace A187715

/-- `log2(gcd(2, n))+5*n` -/
def P1100501607261061761.Spec : Prop :=
  ∀ n, P1100501607261061761.a n = (A187715 (n + 1) : ℝ)

end A187715

/-! ## A187715.P16897120756051242541

`char[2*n]+5*n`
-/

namespace A187715.P16897120756051242541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * n

end

end A187715.P16897120756051242541

namespace A187715

/-- `char[2*n]+5*n` -/
def P16897120756051242541.Spec : Prop :=
  ∀ n, (P16897120756051242541.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P12722026850087256180

`xor(5*n, char[2*n])`
-/

namespace A187715.P12722026850087256180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A187715.P12722026850087256180

namespace A187715

/-- `xor(5*n, char[2*n])` -/
def P12722026850087256180.Spec : Prop :=
  ∀ n, (P12722026850087256180.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P3519383354505309160

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A187715.P3519383354505309160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187715.P3519383354505309160

namespace A187715

/-- `∑[abs(a(n-2))]` -/
def P3519383354505309160.Spec : Prop :=
  ∀ n, (P3519383354505309160.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P3628379081903128321

`∑[10-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A187715.P3628379081903128321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187715.P3628379081903128321

namespace A187715

/-- `∑[10-a(n-1)]` -/
def P3628379081903128321.Spec : Prop :=
  ∀ n, P3628379081903128321.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P7041210359799337425

`record[(n+1)²%10+n]`
-/

namespace A187715.P7041210359799337425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 10 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187715.P7041210359799337425

namespace A187715

/-- `record[(n+1)²%10+n]` -/
def P7041210359799337425.Spec : Prop :=
  ∀ n, (P7041210359799337425.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P16945868690732625048

`floor(6*n-a(n-1)/5)` with `a(0)=1`
-/

namespace A187715.P16945868690732625048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(6 * n : ℚ) - (a (n - 1) : ℚ) / 5⌋

end

end A187715.P16945868690732625048

namespace A187715

/-- `floor(6*n-a(n-1)/5)` -/
def P16945868690732625048.Spec : Prop :=
  ∀ n, P16945868690732625048.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P8576276135595457088

`record[5*(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A187715.P8576276135595457088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 * ((n : ℤ) - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187715.P8576276135595457088

namespace A187715

/-- `record[5*(n-1)-a(n-2)]` -/
def P8576276135595457088.Spec : Prop :=
  ∀ n, P8576276135595457088.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P5237049940653079563

`floor(a(n-1)-2*(n%2-3))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A187715.P5237049940653079563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * (((n % 2 : ℕ) : ℤ) - 3)

end

end A187715.P5237049940653079563

namespace A187715

/-- `floor(a(n-1)-2*(n%2-3))` -/
def P5237049940653079563.Spec : Prop :=
  ∀ n, P5237049940653079563.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P1344873652036077849

`record[(2*n+1)/((2*n+1)%5)!]`
-/

namespace A187715.P1344873652036077849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.factorial ((2 * n + 1) % 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187715.P1344873652036077849

namespace A187715

/-- `record[(2*n+1)/((2*n+1)%5)!]` -/
def P1344873652036077849.Spec : Prop :=
  ∀ n, P1344873652036077849.a n = (A187715 (n + 1) : ℚ)

end A187715

/-! ## A187715.P9826253513690796061

`∩[2*n+1, floor((2*n+1)*5/3)]`
-/

namespace A187715.P9826253513690796061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * ((5 : ℚ) / 3)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187715.P9826253513690796061

namespace A187715

/-- `∩[2*n+1, floor((2*n+1)*5/3)]` -/
def P9826253513690796061.Spec : Prop :=
  ∀ n, (P9826253513690796061.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P1398392298249531897

`∑[A168428(n)]`
-/

namespace A187715.P1398392298249531897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187715.P1398392298249531897

namespace A187715

/-- `∑[A168428(n)]` -/
def P1398392298249531897.Spec : Prop :=
  ∀ n, P1398392298249531897.a n = A187715 (n + 1)

end A187715

/-! ## A187715.P12552523309163263978

`∑[C(4, A158478(n))]`
-/

namespace A187715.P12552523309163263978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A158478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187715.P12552523309163263978

namespace A187715

/-- `∑[C(4, A158478(n))]` -/
def P12552523309163263978.Spec : Prop :=
  ∀ n, (P12552523309163263978.a n : ℤ) = A187715 (n + 1)

end A187715

/-! ## A187715.P496278756038863566

`∑[A003572(a(n-1))]` with `a(0)=1`
-/

namespace A187715.P496278756038863566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003572 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187715.P496278756038863566

namespace A187715

/-- `∑[A003572(a(n-1))]` -/
def P496278756038863566.Spec : Prop :=
  ∀ n, P496278756038863566.a n = A187715 (n + 1)

end A187715

/-!
# A187717: a(n) = A001676(n) / A187595(n).

The programs for A187717, there is no canonical definition to state claims against.
-/

/-! ## A187717.P851162342947608405

`A001676(n+1)/A187595(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187717.P851162342947608405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001676 (n + 1) : ℚ) / (A187595 (n + 1) : ℚ)

end

end A187717.P851162342947608405

/-!
# A187718: Number of partitions of n into maximum number (=A184956(n)) of pairwise coprime parts that are >= 2.

The programs for A187718, there is no canonical definition to state claims against.
-/

/-! ## A187718.P663283208166902515

`A008619(A029198(n)!)%A014683(n+1)`
-/

namespace A187718.P663283208166902515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (Nat.factorial (A029198 n).toNat)) (A014683 (n + 1))

end

end A187718.P663283208166902515

/-! ## A187718.P3010693807496707898

`A328399(A029198(n)!)%A332809(n+1)`
-/

namespace A187718.P3010693807496707898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328399 (Nat.factorial (A029198 n).toNat)) (A332809 (n + 1))

end

end A187718.P3010693807496707898

/-! ## A187718.P16384541848933314396

`gcd(A051493(n+1), A276797(A233018(n+1)))`
-/

namespace A187718.P16384541848933314396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051493 (n + 1)) (A276797 (A233018 (n + 1)).toNat)

end

end A187718.P16384541848933314396

/-! ## A187718.P2435905982867677114

`A318816(A025806(n)!)%A052938(n)`
-/

namespace A187718.P2435905982867677114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318816 (Nat.factorial (A025806 n).toNat)) (A052938 n)

end

end A187718.P2435905982867677114

/-! ## A187718.P6596461206166660238

`A001222(or(A175413(n+1), A331562(3*n+2)))`
-/

namespace A187718.P6596461206166660238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A175413 (n + 1)) (A331562 (3 * n + 2))).toNat

end

end A187718.P6596461206166660238

/-!
# A187720: Number of (n+1)X(n+1) binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187720, there is no canonical definition to state claims against.
-/

/-! ## A187720.P3611508077774070433

`A187729(∑[4*n]+1)`
-/

namespace A187720.P3611508077774070433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187720.P3611508077774070433

/-! ## A187720.P13454890200958672899

`A187729(A001844(n))+A185037(n)`
-/

namespace A187720.P13454890200958672899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A001844 n).toNat + A185037 n

end

end A187720.P13454890200958672899

/-! ## A187720.P7431519063899435256

`A321537(n)+A187729(A001844(n))`
-/

namespace A187720.P7431519063899435256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A187729 (A001844 n).toNat

end

end A187720.P7431519063899435256

/-! ## A187720.P16404048551598440826

`A007318(∑[n])*A187729(A001844(n))`
-/

namespace A187720.P16404048551598440826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A187729 (A001844 n).toNat

end

end A187720.P16404048551598440826

/-! ## A187720.P7764421949877487868

`A187729(A001844(n))+(A007318(n)-1)%-1`
-/

namespace A187720.P7764421949877487868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A001844 n).toNat + Int.tmod (A007318 n - 1) (-1)

end

end A187720.P7764421949877487868

/-!
# A187721: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock commuting with any of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A187721, there is no canonical definition to state claims against.
-/

/-! ## A187721.P17361232822070240391

`A187729(∑[n]+1)`
-/

namespace A187721.P17361232822070240391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187721.P17361232822070240391

/-! ## A187721.P11311231828785297843

`record[A010054(n)*A187729(n+1)]`
-/

namespace A187721.P11311231828785297843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A187729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187721.P11311231828785297843

/-! ## A187721.P8821428157342417461

`record[gcd(A002262(n), A187729(n+1))]`
-/

namespace A187721.P8821428157342417461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A187729 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187721.P8821428157342417461

/-! ## A187721.P15707184089303141254

`record[(A286237(n+1)-n)*A187729(n+1)]`
-/

namespace A187721.P15707184089303141254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286237 (n + 1) - (n : ℤ)) * A187729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187721.P15707184089303141254

/-! ## A187721.P5316582877190388704

`A187729(A000124(n))%A187722(n+1)`
-/

namespace A187721.P5316582877190388704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187729 (A000124 n).toNat) (A187722 (n + 1))

end

end A187721.P5316582877190388704

/-!
# A187722: Number of (n+1)X3 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187722, there is no canonical definition to state claims against.
-/

/-! ## A187722.P6777805906418621706

`A187729(∑[n+1]+2)`
-/

namespace A187722.P6777805906418621706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187722.P6777805906418621706

/-! ## A187722.P3582080811442739949

`gcd(n, n+1)*A187729(C(n+2, 2)+2)`
-/

namespace A187722.P3582080811442739949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A187729 (Nat.choose (n + 2) 2 + 2)

end

end A187722.P3582080811442739949

/-! ## A187722.P10205283550111005819

`record[A187729(A286237(n+1)+1)]`
-/

namespace A187722.P10205283550111005819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187722.P10205283550111005819

/-! ## A187722.P10155310310652687212

`record[A010054(n)*A187729(n+2)]`
-/

namespace A187722.P10155310310652687212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A187729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187722.P10155310310652687212

/-! ## A187722.P16933509371006994786

`record[gcd(A002262(n), A187729(n+2))]`
-/

namespace A187722.P16933509371006994786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A187729 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187722.P16933509371006994786

/-!
# A187723: Number of (n+1)X4 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187723, there is no canonical definition to state claims against.
-/

/-! ## A187723.P235917158489951009

`A187729(∑[n+2]+4)`
-/

namespace A187723.P235917158489951009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187723.P235917158489951009

/-! ## A187723.P12854220306826736350

`A326544(n)+A187729(A167614(n+1))`
-/

namespace A187723.P12854220306826736350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A187729 (A167614 (n + 1)).toNat

end

end A187723.P12854220306826736350

/-! ## A187723.P12551432469910714678

`lcm(A187729(A167614(n+1)), A228572(n))`
-/

namespace A187723.P12551432469910714678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A187729 (A167614 (n + 1)).toNat) (A228572 n)

end

end A187723.P12551432469910714678

/-! ## A187723.P1739943768367339250

`A248805(n+1)+A187729(A167614(n+1))`
-/

namespace A187723.P1739943768367339250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 1) + A187729 (A167614 (n + 1)).toNat

end

end A187723.P1739943768367339250

/-! ## A187723.P7398158856334967120

`A187729(A167614(n+1))%A187724(n+1)`
-/

namespace A187723.P7398158856334967120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187729 (A167614 (n + 1)).toNat) (A187724 (n + 1))

end

end A187723.P7398158856334967120

/-!
# A187724: Number of (n+1)X5 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187724, there is no canonical definition to state claims against.
-/

/-! ## A187724.P5780200035345450077

`A187729(A141214(n)+7)`
-/

namespace A187724.P5780200035345450077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A141214 n + 7).toNat

end

end A187724.P5780200035345450077

/-! ## A187724.P7848188030260118439

`A187729(A052905(n)+9)`
-/

namespace A187724.P7848188030260118439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A052905 n + 9).toNat

end

end A187724.P7848188030260118439

/-! ## A187724.P14335950473653480479

`A187729(A055999(n)+10)`
-/

namespace A187724.P14335950473653480479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A055999 n + 10).toNat

end

end A187724.P14335950473653480479

/-! ## A187724.P18290093086410232895

`A187729(A167614(n+2)+1)`
-/

namespace A187724.P18290093086410232895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A167614 (n + 2) + 1).toNat

end

end A187724.P18290093086410232895

/-! ## A187724.P2409374971684380561

`A187729(A167499(n+2)-1)`
-/

namespace A187724.P2409374971684380561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A167499 (n + 2) - 1).toNat

end

end A187724.P2409374971684380561

/-!
# A187725: Number of (n+1)X6 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187725, there is no canonical definition to state claims against.
-/

/-! ## A187725.P15018718239480265594

`A187729(A167499(n+3))`
-/

namespace A187725.P15018718239480265594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A167499 (n + 3)).toNat

end

end A187725.P15018718239480265594

/-! ## A187725.P12144653685449359628

`A187729(A155212(n)+13)`
-/

namespace A187725.P12144653685449359628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A155212 n + 13).toNat

end

end A187725.P12144653685449359628

/-! ## A187725.P18325411914414801523

`A187729(A056000(n)+15)`
-/

namespace A187725.P18325411914414801523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A056000 n + 15).toNat

end

end A187725.P18325411914414801523

/-! ## A187725.P4848190918953235381

`A187729(eq[6, A131818(n+1)])`
-/

namespace A187725.P4848190918953235381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187725.P4848190918953235381

/-! ## A187725.P3052553444552031506

`A187729(Δ[A264443(n)])`
-/

namespace A187725.P3052553444552031506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (f1 (n + 1) - f1 n).toNat

end

end A187725.P3052553444552031506

/-!
# A187726: Number of (n+1)X7 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187726, there is no canonical definition to state claims against.
-/

/-! ## A187726.P1439869275042220986

`A187729(eq[7, A131818(n+1)])`
-/

namespace A187726.P1439869275042220986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187726.P1439869275042220986

/-! ## A187726.P7198095911941474561

`A187729(A374007(n+1))`
-/

namespace A187726.P7198095911941474561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A374007 (n + 1)).toNat

end

end A187726.P7198095911941474561

/-! ## A187726.P9186775174577669380

`A187729(eq[3, A219347(n)])`
-/

namespace A187726.P9186775174577669380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187726.P9186775174577669380

/-! ## A187726.P995141648077217086

`A187729(eq[5, A193592(n)])`
-/

namespace A187726.P995141648077217086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187726.P995141648077217086

/-! ## A187726.P15614834505463873258

`A187729(eq[8, A185782(n+1)])`
-/

namespace A187726.P15614834505463873258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187726.P15614834505463873258

/-!
# A187727: Number of (n+1)X8 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187727, there is no canonical definition to state claims against.
-/

/-! ## A187727.P7184334593289536410

`A187729(eq[8, A131818(n+1)])`
-/

namespace A187727.P7184334593289536410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187727.P7184334593289536410

/-! ## A187727.P16989956796589896672

`A187729(A374008(n+1))`
-/

namespace A187727.P16989956796589896672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A374008 (n + 1)).toNat

end

end A187727.P16989956796589896672

/-! ## A187727.P11185814477467109884

`A187729(A055999(n+4))`
-/

namespace A187727.P11185814477467109884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A055999 (n + 4)).toNat

end

end A187727.P11185814477467109884

/-! ## A187727.P14635005335179180341

`A187729(eq[4, A219347(n)])`
-/

namespace A187727.P14635005335179180341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187727.P14635005335179180341

/-! ## A187727.P12870908500712337131

`A187729(eq[6, A193592(n)])`
-/

namespace A187727.P12870908500712337131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187727.P12870908500712337131

/-!
# A187728: Number of (n+1)X9 binary arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187728, there is no canonical definition to state claims against.
-/

/-! ## A187728.P11448107317541916217

`A187729(A000217(n+7)+8)`
-/

namespace A187728.P11448107317541916217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A000217 (n + 7) + 8).toNat

end

end A187728.P11448107317541916217

/-! ## A187728.P1636919050855373860

`A187729(eq[9, A131818(n+1)])`
-/

namespace A187728.P1636919050855373860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187728.P1636919050855373860

/-! ## A187728.P13458136080232869230

`A187729(A374009(n+1))`
-/

namespace A187728.P13458136080232869230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (A374009 (n + 1)).toNat

end

end A187728.P13458136080232869230

/-! ## A187728.P1893651795048522

`A187729(eq[5, A219347(n)])`
-/

namespace A187728.P1893651795048522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187728.P1893651795048522

/-! ## A187728.P1124247392223010901

`A187729(eq[7, A193592(n)])`
-/

namespace A187728.P1124247392223010901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187728.P1124247392223010901

/-!
# A187730: Greatest common divisor of Carmichael lambda(n) and n - 1.

The programs for A187730, there is no canonical definition to state claims against.
-/

/-! ## A187730.P11056613884471895927

`gcd(n, A002322(n+1))`
-/

namespace A187730.P11056613884471895927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002322 (n + 1))

end

end A187730.P11056613884471895927

/-! ## A187730.P8723275270693426250

`gcd(char[1]+n, A011773(n+1))`
-/

namespace A187730.P8723275270693426250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A011773 (n + 1))

end

end A187730.P8723275270693426250

/-! ## A187730.P3273770142200530964

`gcd(A038608(n), A174824(n+1))`
-/

namespace A187730.P3273770142200530964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A174824 (n + 1))

end

end A187730.P3273770142200530964

/-! ## A187730.P11442488462765234035

`gcd(A013636(n), A341857(n+1))`
-/

namespace A187730.P11442488462765234035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013636 n) (A341857 (n + 1))

end

end A187730.P11442488462765234035

/-! ## A187730.P16770146330194619100

`gcd(A274922(n), A277030(n+1))`
-/

namespace A187730.P16770146330194619100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274922 n) (A277030 (n + 1))

end

end A187730.P16770146330194619100

/-! ## A187730.P12060914509770595328

`A049559(n+1)/A353801(n+1)`
-/

namespace A187730.P12060914509770595328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049559 (n + 1) : ℚ) / (A353801 (n + 1) : ℚ)

end

end A187730.P12060914509770595328

/-! ## A187730.P9697083854250673503

`gcd(1-A263027(n+1), A219428(n+1))`
-/

namespace A187730.P9697083854250673503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A263027 (n + 1)) (A219428 (n + 1))

end

end A187730.P9697083854250673503

/-! ## A187730.P12093795673854130516

`gcd(A268336(n+1)+n, A268336(n+1))`
-/

namespace A187730.P12093795673854130516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268336 (n + 1) + (n : ℤ)) (A268336 (n + 1))

end

end A187730.P12093795673854130516

/-! ## A187730.P14257432105348494075

`gcd(A011773(n+1), A263273(A263273(n)))`
-/

namespace A187730.P14257432105348494075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011773 (n + 1)) (A263273 (A263273 n).toNat)

end

end A187730.P14257432105348494075

/-! ## A187730.P16741763313955830221

`gcd(A173614(2*(n+1))+n, A173614(2*(n+1)))`
-/

namespace A187730.P16741763313955830221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173614 (2 * (n + 1)) + (n : ℤ)) (A173614 (2 * (n + 1)))

end

end A187730.P16741763313955830221

/-! ## A187730.P16364687249018552712

`gcd(2*n-n, A231333(n+1))`
-/

namespace A187730.P16364687249018552712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (A231333 (n + 1))

end

end A187730.P16364687249018552712

/-! ## A187730.P5716280879819477239

`gcd(A004951(n), A236563(n+1))`
-/

namespace A187730.P5716280879819477239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004951 n) (A236563 (n + 1))

end

end A187730.P5716280879819477239

/-! ## A187730.P18315009760866618893

`A050873(A002322(n+1)+∑[n]-n)`
-/

namespace A187730.P18315009760866618893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A002322 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A187730.P18315009760866618893

/-!
# A187731: Numbers k such that rad(phi(k)) divides k-1.

The programs for A187731, there is no canonical definition to state claims against.
-/

/-! ## A187731.P3178905271820172827

`∪[A008578(n+1), A238574(n+1)]`
-/

namespace A187731.P3178905271820172827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187731.P3178905271820172827

/-! ## A187731.P14646107980110358963

`∪[A238574(n+1), A324050(n+1)]`
-/

namespace A187731.P14646107980110358963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187731.P14646107980110358963

/-! ## A187731.P12381058146423660504

`∪[A324050(n+1), A333314(n+1)]`
-/

namespace A187731.P12381058146423660504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187731.P12381058146423660504

/-! ## A187731.P14460862463604094617

`eq[0, n%A080400(n+1)]+1`
-/

namespace A187731.P14460862463604094617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A080400 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187731.P14460862463604094617

/-! ## A187731.P3933126638296630108

`∩[A320055(n+1), A339879(n+1)]`
-/

namespace A187731.P3933126638296630108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187731.P3933126638296630108

/-!
# A187732: Expansion of x/(x^4 - 13x^3 + 36x^2 - 13x + 1).

The programs for A187732, the canonical program `A187732.P15378941196358763360` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187732 has offset 0).

The definition of A187732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187732.P15378941196358763360

`13*a(n-1)-36*a(n-2)+13*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=133`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187732

/-- `13*a(n-1)-36*a(n-2)+13*a(n-3)-a(n-4)` -/
def P15378941196358763360.Spec : Prop :=
  ∀ n, P15378941196358763360.a n = A187732 n

theorem P15378941196358763360.correct : P15378941196358763360.Spec := by
  intro n
  simp only [A187732]

end A187732

/-!
# A187733: Primes of the form 2^n + n + 2.

The programs for A187733, there is no canonical definition to state claims against.
-/

/-! ## A187733.P5565164807623616524

`A005126(A309328(n+1))+1`
-/

namespace A187733.P5565164807623616524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (A309328 (n + 1)).toNat + 1

end

end A187733.P5565164807623616524

/-! ## A187733.P10160909508252418022

`A052968(A309328(n+1)+1)`
-/

namespace A187733.P10160909508252418022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 (A309328 (n + 1) + 1).toNat

end

end A187733.P10160909508252418022

/-! ## A187733.P7638438391031652101

`A288382(A309328(n+1)+3)`
-/

namespace A187733.P7638438391031652101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (A309328 (n + 1) + 3).toNat

end

end A187733.P7638438391031652101

/-! ## A187733.P1985117817759615226

`A069003(A076566(n+1))+A006127(A309328(n+1))`
-/

namespace A187733.P1985117817759615226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A076566 (n + 1)).toNat + A006127 (A309328 (n + 1)).toNat

end

end A187733.P1985117817759615226

/-! ## A187733.P9097481305380067785

`A006127(A309328(n+1))+A020639(A295904(n+1))`
-/

namespace A187733.P9097481305380067785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A309328 (n + 1)).toNat + A020639 (A295904 (n + 1)).toNat

end

end A187733.P9097481305380067785

/-!
# A187734: a(n) is the number of n-walks between the vertices 1 and 3 of the Graph on the chalkboard in 'Good Will Hunting', (1997).

The programs for A187734, there is no canonical definition to state claims against.
-/

/-! ## A187734.P970308588182276661

`A002375(A302344(n+1)+A000203(n+1))`
-/

namespace A187734.P970308588182276661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A302344 (n + 1) + A000203 (n + 1)).toNat

end

end A187734.P970308588182276661

/-!
# A187735: G.f.: Sum_{n>=0} (2*n+1)^n * x^n / (1 + (2*n+1)*x)^n.

The programs for A187735, the canonical program `A187735.P17225680831461543796` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187735 has offset 0).

The definition of A187735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187735.P17225680831461543796

`(n+2)*2^(n-1)*n!`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187735

/-- `(n+2)*2^(n-1)*n!` -/
def P17225680831461543796.Spec : Prop :=
  ∀ n, P17225680831461543796.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P13725756190625949128

`n!*Δ[n*2^(n-1)]`
-/

namespace A187735.P13725756190625949128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n)

end

end A187735.P13725756190625949128

namespace A187735

/-- `n!*Δ[n*2^(n-1)]` -/
def P13725756190625949128.Spec : Prop :=
  ∀ n, P13725756190625949128.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P13920936774590294731

`(1+n/2)*n!*2^n`
-/

namespace A187735.P13920936774590294731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n : ℚ) / 2) * (Nat.factorial n : ℚ) * (2 ^ n : ℚ)

end

end A187735.P13920936774590294731

namespace A187735

/-- `(1+n/2)*n!*2^n` -/
def P13920936774590294731.Spec : Prop :=
  ∀ n, P13920936774590294731.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P8122136676656194139

`2^(n-1)/(n+1)*∏[n+2]`
-/

namespace A187735.P8122136676656194139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A187735.P8122136676656194139

namespace A187735

/-- `2^(n-1)/(n+1)*∏[n+2]` -/
def P8122136676656194139.Spec : Prop :=
  ∀ n, P8122136676656194139.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P8944379389520630148

`∏[comp[2*(n+1)]+1-char[1]]+2*n*a(n-1)` with `a(0)=1`
-/

namespace A187735.P8944379389520630148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * ((n : ℤ) * a (n - 1))

end

end A187735.P8944379389520630148

namespace A187735

/-- `∏[comp[2*(n+1)]+1-char[1]]+2*n*a(n-1)` -/
def P8944379389520630148.Spec : Prop :=
  ∀ n, P8944379389520630148.a n = A187735 n

end A187735

/-! ## A187735.P11557829192018713920

`A392473(n²+n+1)`
-/

namespace A187735.P11557829192018713920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392473 (n ^ 2 + (n + 1))

end

end A187735.P11557829192018713920

namespace A187735

/-- `A392473(n²+n+1)` -/
def P11557829192018713920.Spec : Prop :=
  ∀ n, P11557829192018713920.a n = A187735 n

end A187735

/-! ## A187735.P11755351390008891290

`(n+2)*A000165(n)/2`
-/

namespace A187735.P11755351390008891290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A000165 n : ℚ) / 2

end

end A187735.P11755351390008891290

namespace A187735

/-- `(n+2)*A000165(n)/2` -/
def P11755351390008891290.Spec : Prop :=
  ∀ n, P11755351390008891290.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P5347572353460618874

`A000165(n)+n*A002866(n)`
-/

namespace A187735.P5347572353460618874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + (n : ℤ) * A002866 n

end

end A187735.P5347572353460618874

namespace A187735

/-- `A000165(n)+n*A002866(n)` -/
def P5347572353460618874.Spec : Prop :=
  ∀ n, P5347572353460618874.a n = A187735 n

end A187735

/-! ## A187735.P1838506002198016930

`(A006882(2*n)+A002866(n+1))/2`
-/

namespace A187735.P1838506002198016930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n) + A002866 (n + 1) : ℚ) / 2

end

end A187735.P1838506002198016930

namespace A187735

/-- `(A006882(2*n)+A002866(n+1))/2` -/
def P1838506002198016930.Spec : Prop :=
  ∀ n, P1838506002198016930.a n = (A187735 n : ℚ)

end A187735

/-! ## A187735.P15586128701722621609

`A001792(n)+A001792(n)*A033312(n)`
-/

namespace A187735.P15586128701722621609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + A001792 n * A033312 n

end

end A187735.P15586128701722621609

namespace A187735

/-- `A001792(n)+A001792(n)*A033312(n)` -/
def P15586128701722621609.Spec : Prop :=
  ∀ n, P15586128701722621609.a n = A187735 n

end A187735

/-!
# A187736: G.f. satisfies: A(x) = x*Sum{n>=0} A( n*x/(1+n*x) )^n.

The programs for A187736, there is no canonical definition to state claims against.
-/

/-! ## A187736.P14473366825978499810

`A322849(∑[ceil(n/3)]^5)`
-/

namespace A187736.P14473366825978499810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322849 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5).toNat

end

end A187736.P14473366825978499810

/-!
# A187737: a(n) = floor(sum_{1 < k <= n} p(k)/P(k)), where p(k) is the smallest prime factor of k and P(k) is the largest prime factor of k.

The programs for A187737, there is no canonical definition to state claims against.
-/

/-! ## A187737.P10096960307963954834

`floor(∑[A020639(n+2)/A006530(n+2)])`
-/

namespace A187737.P10096960307963954834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / (A006530 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187737.P10096960307963954834

/-! ## A187737.P12737469923240775570

`∑[A030190(A000005(A215255(n)))]`
-/

namespace A187737.P12737469923240775570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A000005 (A215255 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187737.P12737469923240775570

/-! ## A187737.P4540381250993800614

`∑[A360071(A279357(n+3))]`
-/

namespace A187737.P4540381250993800614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360071 (A279357 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187737.P4540381250993800614

/-! ## A187737.P13219148307784066265

`∑[A109004(A100823(n))%2]`
-/

namespace A187737.P13219148307784066265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109004 (A100823 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187737.P13219148307784066265

/-! ## A187737.P18089894852422787964

`∑[A000035(A109004(A100823(n)))]`
-/

namespace A187737.P18089894852422787964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A109004 (A100823 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187737.P18089894852422787964

/-!
# A187738: G.f.: Sum_{n>=0} (3*n+1)^n * x^n / (1 + (3*n+1)*x)^n.

The programs for A187738, there is no canonical definition to state claims against.
-/

/-! ## A187738.P17698294436893057408

`A047210(A166906(n)+A003114(n))`
-/

namespace A187738.P17698294436893057408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A166906 n + A003114 n).toNat

end

end A187738.P17698294436893057408

/-!
# A187739: G.f.: Sum_{n>=0} (3*n+2)^n * x^n / (1 + (3*n+2)*x)^n.

The programs for A187739, there is no canonical definition to state claims against.
-/

/-! ## A187739.P6684411904333612186

`A276573((n+1)*a(n-1))-A278521(n)+1` with `a(0)=1`
-/

namespace A187739.P6684411904333612186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276573 ((n + 1 : ℤ) * a (n - 1)).toNat - A278521 n + 1

end

end A187739.P6684411904333612186

/-!
# A187741: G.f.: Sum_{n>=0} (1 + n*x)^n * x^n / (1 + x + n*x^2)^n.

The programs for A187741, the canonical program `A187741.P17570354956731861493` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187741 has offset 0).

The definition of A187741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187741.P2028236088630841401

`ceil(cosh(log(n)))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A187741.P2028236088630841401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌈Real.cosh (Real.log (n : ℝ))⌉ * a (n - 2)

end

end A187741.P2028236088630841401

namespace A187741

/-- `ceil(cosh(log(n)))*a(n-2)` -/
def P2028236088630841401.Spec : Prop :=
  ∀ n, P2028236088630841401.a n = A187741 n

end A187741

/-! ## A187741.P10480355616813476890

`a(n-2)*∑[char[2*n]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A187741.P10480355616813476890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187741.P10480355616813476890

namespace A187741

/-- `a(n-2)*∑[char[2*n]]` -/
def P10480355616813476890.Spec : Prop :=
  ∀ n, (P10480355616813476890.a n : ℤ) = A187741 n

end A187741

/-! ## A187741.P17570354956731861493

`ceil(∑[n]/n)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187741

/-- `ceil(∑[n]/n)*a(n-2)` -/
def P17570354956731861493.Spec : Prop :=
  ∀ n, P17570354956731861493.a n = A187741 n

theorem P17570354956731861493.correct : P17570354956731861493.Spec := by
  intro n
  simp only [A187741]

end A187741

/-! ## A187741.P11401614565578080353

`A008279(A165157(n))`
-/

namespace A187741.P11401614565578080353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A165157 n).toNat

end

end A187741.P11401614565578080353

namespace A187741

/-- `A008279(A165157(n))` -/
def P11401614565578080353.Spec : Prop :=
  ∀ n, P11401614565578080353.a n = A187741 n

end A187741

/-! ## A187741.P17807962721466674158

`A145888(A134519(n+1))`
-/

namespace A187741.P17807962721466674158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145888 (A134519 (n + 1)).toNat

end

end A187741.P17807962721466674158

namespace A187741

/-- `A145888(A134519(n+1))` -/
def P17807962721466674158.Spec : Prop :=
  ∀ n, P17807962721466674158.a n = A187741 n

end A187741

/-! ## A187741.P1750942303982393303

`A123316(A055802(n+2))`
-/

namespace A187741.P1750942303982393303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123316 (A055802 (n + 2)).toNat

end

end A187741.P1750942303982393303

namespace A187741

/-- `A123316(A055802(n+2))` -/
def P1750942303982393303.Spec : Prop :=
  ∀ n, P1750942303982393303.a n = A187741 n

end A187741

/-! ## A187741.P11163082377242307130

`A130850(A055802(n+3))`
-/

namespace A187741.P11163082377242307130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (A055802 (n + 3)).toNat

end

end A187741.P11163082377242307130

namespace A187741

/-- `A130850(A055802(n+3))` -/
def P11163082377242307130.Spec : Prop :=
  ∀ n, P11163082377242307130.a n = A187741 n

end A187741

/-! ## A187741.P11048428645451283687

`A130850(eq[A002262(n)², A002262(n)])`
-/

namespace A187741.P11048428645451283687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A187741.P11048428645451283687

namespace A187741

/-- `A130850(eq[A002262(n)², A002262(n)])` -/
def P11048428645451283687.Spec : Prop :=
  ∀ n, P11048428645451283687.a n = A187741 n

end A187741

/-! ## A187741.P18381486448316786758

`A213934(A117142(n+2))`
-/

namespace A187741.P18381486448316786758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213934 (A117142 (n + 2)).toNat

end

end A187741.P18381486448316786758

namespace A187741

/-- `A213934(A117142(n+2))` -/
def P18381486448316786758.Spec : Prop :=
  ∀ n, P18381486448316786758.a n = A187741 n

end A187741

/-! ## A187741.P7083026105676510124

`A292892(A087327(n+1))`
-/

namespace A187741.P7083026105676510124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (A087327 (n + 1)).toNat

end

end A187741.P7083026105676510124

namespace A187741

/-- `A292892(A087327(n+1))` -/
def P7083026105676510124.Spec : Prop :=
  ∀ n, P7083026105676510124.a n = A187741 n

end A187741

/-!
# A187742: G.f.: Sum_{n>=0} (n+x)^n * x^n / (1 + n*x + x^2)^n.

The programs for A187742, there is no canonical definition to state claims against.
-/

/-! ## A187742.P4536039840900543191

`A059171(n+1)/(n+1)*A000124(n)`
-/

namespace A187742.P4536039840900543191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059171 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000124 n : ℚ)

end

end A187742.P4536039840900543191

/-! ## A187742.P1555540256967731057

`A121635(n+1)+A000142(n)*A157928(n)`
-/

namespace A187742.P1555540256967731057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121635 (n + 1) + A000142 n * A157928 n

end

end A187742.P1555540256967731057

/-! ## A187742.P3566559614627300088

`A001710(n+1)+A001710(n+1)-A202365(n)`
-/

namespace A187742.P3566559614627300088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1) + (A001710 (n + 1) - A202365 n)

end

end A187742.P3566559614627300088

/-! ## A187742.P8321993445380150310

`A098361(A000124(n))*A134869(A028310(n))`
-/

namespace A187742.P8321993445380150310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat * A134869 (A028310 n).toNat

end

end A187742.P8321993445380150310

/-! ## A187742.P1121779910275107418

`A094587(A161680(n))*A134869(A028310(n))`
-/

namespace A187742.P1121779910275107418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A161680 n).toNat * A134869 (A028310 n).toNat

end

end A187742.P1121779910275107418

/-! ## A187742.P9337481121907188691

`A094587(A152947(n+1))*A245300(A152947(n+1))`
-/

namespace A187742.P9337481121907188691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A152947 (n + 1)).toNat * A245300 (A152947 (n + 1)).toNat

end

end A187742.P9337481121907188691

/-!
# A187744: Numbers whose digital sum is a triangular number.

The programs for A187744, the canonical program `A187744.P5382630201904644489` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187744 has offset 1).

The definition of A187744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187744.P5382630201904644489

`eq[0, A002262(A007953(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187744

/-- `eq[0, A002262(A007953(n))]` -/
def P5382630201904644489.Spec : Prop :=
  ∀ n, (P5382630201904644489.a n : ℤ) = A187744 (n + 1)

theorem P5382630201904644489.correct : P5382630201904644489.Spec := by
  intro n
  simp only [A187744, Nat.add_sub_cancel]

end A187744

/-! ## A187744.P13150476479012976153

`eq[1, A002260(A007953(n)+1)]`
-/

namespace A187744.P13150476479012976153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P13150476479012976153

namespace A187744

/-- `eq[1, A002260(A007953(n)+1)]` -/
def P13150476479012976153.Spec : Prop :=
  ∀ n, (P13150476479012976153.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P1984426489887425560

`eq[1, A081532(A007953(n)+1)]`
-/

namespace A187744.P1984426489887425560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P1984426489887425560

namespace A187744

/-- `eq[1, A081532(A007953(n)+1)]` -/
def P1984426489887425560.Spec : Prop :=
  ∀ n, (P1984426489887425560.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P2796232516129214861

`eq[1, A166350(A007953(n)+1)]`
-/

namespace A187744.P2796232516129214861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P2796232516129214861

namespace A187744

/-- `eq[1, A166350(A007953(n)+1)]` -/
def P2796232516129214861.Spec : Prop :=
  ∀ n, (P2796232516129214861.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P13164548109642711760

`eq[1, A201811(A007953(n)+1)]`
-/

namespace A187744.P13164548109642711760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P13164548109642711760

namespace A187744

/-- `eq[1, A201811(A007953(n)+1)]` -/
def P13164548109642711760.Spec : Prop :=
  ∀ n, (P13164548109642711760.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P11210495876510360129

`eq[1, A209996(A007953(n)+1)]`
-/

namespace A187744.P11210495876510360129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209996 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P11210495876510360129

namespace A187744

/-- `eq[1, A209996(A007953(n)+1)]` -/
def P11210495876510360129.Spec : Prop :=
  ∀ n, (P11210495876510360129.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P12857715191721023617

`eq[2, A029656(A007953(n)+1)]`
-/

namespace A187744.P12857715191721023617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P12857715191721023617

namespace A187744

/-- `eq[2, A029656(A007953(n)+1)]` -/
def P12857715191721023617.Spec : Prop :=
  ∀ n, (P12857715191721023617.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P13680064206509650604

`eq[1, A144331(2*A007953(n))]`
-/

namespace A187744.P13680064206509650604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P13680064206509650604

namespace A187744

/-- `eq[1, A144331(2*A007953(n))]` -/
def P13680064206509650604.Spec : Prop :=
  ∀ n, (P13680064206509650604.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P7784893159565463083

`eq[1, A124927(A062028(n)-n)]`
-/

namespace A187744.P7784893159565463083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P7784893159565463083

namespace A187744

/-- `eq[1, A124927(A062028(n)-n)]` -/
def P7784893159565463083.Spec : Prop :=
  ∀ n, (P7784893159565463083.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P13673932357753540645

`lt[A002262(A062028(n)-n), 1]`
-/

namespace A187744.P13673932357753540645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A062028 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187744.P13673932357753540645

namespace A187744

/-- `lt[A002262(A062028(n)-n), 1]` -/
def P13673932357753540645.Spec : Prop :=
  ∀ n, (P13673932357753540645.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P2567501166483794854

`eq[2, A035214(A062028(n)-n)]`
-/

namespace A187744.P2567501166483794854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P2567501166483794854

namespace A187744

/-- `eq[2, A035214(A062028(n)-n)]` -/
def P2567501166483794854.Spec : Prop :=
  ∀ n, (P2567501166483794854.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P13878141563840918835

`eq[1, A144331(A007953(n)+A007953(n))]`
-/

namespace A187744.P13878141563840918835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A007953 n + A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P13878141563840918835

namespace A187744

/-- `eq[1, A144331(A007953(n)+A007953(n))]` -/
def P13878141563840918835.Spec : Prop :=
  ∀ n, (P13878141563840918835.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P6129545535399437272

`lt[A155551(A007953(n)+1), A007953(n)]`
-/

namespace A187744.P6129545535399437272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (A007953 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187744.P6129545535399437272

namespace A187744

/-- `lt[A155551(A007953(n)+1), A007953(n)]` -/
def P6129545535399437272.Spec : Prop :=
  ∀ n, (P6129545535399437272.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P227504721735440785

`eq[0, A281392(n)*A304336(A007953(n))]`
-/

namespace A187744.P227504721735440785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n * A304336 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P227504721735440785

namespace A187744

/-- `eq[0, A281392(n)*A304336(A007953(n))]` -/
def P227504721735440785.Spec : Prop :=
  ∀ n, (P227504721735440785.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P7977299842546190727

`eq[1, A124927(∑{digits}[n, #])]`
-/

namespace A187744.P7977299842546190727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P7977299842546190727

namespace A187744

/-- `eq[1, A124927(∑{digits}[n, #])]` -/
def P7977299842546190727.Spec : Prop :=
  ∀ n, (P7977299842546190727.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P14632872282138577497

`eq[1, A266213(∑{digits}[n, #])]`
-/

namespace A187744.P14632872282138577497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P14632872282138577497

namespace A187744

/-- `eq[1, A266213(∑{digits}[n, #])]` -/
def P14632872282138577497.Spec : Prop :=
  ∀ n, (P14632872282138577497.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P11665210018635234206

`lt[A193588(∑{digits}[n, #]), 2]`
-/

namespace A187744.P11665210018635234206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A187744.P11665210018635234206

namespace A187744

/-- `lt[A193588(∑{digits}[n, #]), 2]` -/
def P11665210018635234206.Spec : Prop :=
  ∀ n, (P11665210018635234206.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P12571545676306532162

`eq[1, A002260(∑{digits}[n, #]+1)]`
-/

namespace A187744.P12571545676306532162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P12571545676306532162

namespace A187744

/-- `eq[1, A002260(∑{digits}[n, #]+1)]` -/
def P12571545676306532162.Spec : Prop :=
  ∀ n, (P12571545676306532162.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P2067342921322847333

`lt[A215078(A169805(n)/2), 1]`
-/

namespace A187744.P2067342921322847333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187744.P2067342921322847333

namespace A187744

/-- `lt[A215078(A169805(n)/2), 1]` -/
def P2067342921322847333.Spec : Prop :=
  ∀ n, (P2067342921322847333.a n : ℤ) = A187744 (n + 1)

end A187744

/-! ## A187744.P12313446740746690672

`lt[A002262(A062329(n)+A007954(n)), 1]`
-/

namespace A187744.P12313446740746690672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A062329 n + A007954 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187744.P12313446740746690672

namespace A187744

/-- `lt[A002262(A062329(n)+A007954(n)), 1]` -/
def P12313446740746690672.Spec : Prop :=
  ∀ n, (P12313446740746690672.a n : ℤ) = A187744 (n + 1)

end A187744

/-!
# A187745: Numerators of Bernoulli numbers B(2^n).

The programs for A187745, there is no canonical definition to state claims against.
-/

/-! ## A187745.P1030146514158981435

`A164555(A131577(n))`
-/

namespace A187745.P1030146514158981435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (A131577 n).toNat

end

end A187745.P1030146514158981435

/-! ## A187745.P12975857051228403491

`A176144(2^n)`
-/

namespace A187745.P12975857051228403491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (2 ^ n)

end

end A187745.P12975857051228403491

/-! ## A187745.P4795191100646890871

`A164555(2^abs(1-n))`
-/

namespace A187745.P4795191100646890871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

end

end A187745.P4795191100646890871

/-! ## A187745.P18175381028642617030

`A000367(floor(2^(n-2)))`
-/

namespace A187745.P18175381028642617030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat

end

end A187745.P18175381028642617030

/-!
# A187746: G.f.: Sum_{n>=0} (2*n+x)^n * x^n / (1 + 2*n*x + x^2)^n.

The programs for A187746, there is no canonical definition to state claims against.
-/

/-! ## A187746.P12658609395400822974

`floor(A000165(abs(1-n))*A001844(n)/2)`
-/

namespace A187746.P12658609395400822974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000165 |1 - (n : ℤ)|.toNat * A001844 n : ℚ) / 2⌋

end

end A187746.P12658609395400822974

/-!
# A187747: (n-th digit of Pi) - (n-th digit of e).

The programs for A187747, there is no canonical definition to state claims against.
-/

/-! ## A187747.P12726977939522315286

`A000796(n)-A001113(n)`
-/

namespace A187747.P12726977939522315286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A001113 (n + 1)

end

end A187747.P12726977939522315286

/-! ## A187747.P3984556917352679821

`2*A000796(n)-A073212(n)`
-/

namespace A187747.P3984556917352679821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000796 (n + 1) - A073212 n

end

end A187747.P3984556917352679821

/-! ## A187747.P1824622620423524397

`A073212(n)-2*A001113(n)`
-/

namespace A187747.P1824622620423524397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - 2 * A001113 (n + 1)

end

end A187747.P1824622620423524397

/-! ## A187747.P8854227413370020144

`9-A030644(n)-A001113(n)`
-/

namespace A187747.P8854227413370020144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1) - A001113 (n + 1)

end

end A187747.P8854227413370020144

/-! ## A187747.P5033755119698446627

`A123152(n+1)-(A001113(n)+1)`
-/

namespace A187747.P5033755119698446627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - (A001113 (n + 1) + 1)

end

end A187747.P5033755119698446627

/-! ## A187747.P15843533892934208248

`A065253(n+1)%10-A001113(n)`
-/

namespace A187747.P15843533892934208248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 - A001113 (n + 1)

end

end A187747.P15843533892934208248

/-! ## A187747.P16934015728711546558

`A054249(n+1)+A033999(n)-A001113(n)`
-/

namespace A187747.P16934015728711546558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (A033999 n - A001113 (n + 1))

end

end A187747.P16934015728711546558

/-! ## A187747.P16767473363617151414

`A062157(n+1)+A054249(n+1)-A001113(n)`
-/

namespace A187747.P16767473363617151414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A054249 (n + 1) - A001113 (n + 1)

end

end A187747.P16767473363617151414

/-! ## A187747.P1588485192646469221

`A054249(n+1)+2-A010684(n)-A001113(n)`
-/

namespace A187747.P1588485192646469221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (2 - A010684 n) - A001113 (n + 1)

end

end A187747.P1588485192646469221

/-! ## A187747.P14761607303420407790

`A000796(n)-A004426(A073212(n)-A000796(n))`
-/

namespace A187747.P14761607303420407790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A004426 (A073212 n - A000796 (n + 1)).toNat

end

end A187747.P14761607303420407790

/-! ## A187747.P11806599713097874616

`A001355(Δ[n²])-A001113(n)`
-/

namespace A187747.P11806599713097874616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A001113 (n + 1)

end

end A187747.P11806599713097874616

/-! ## A187747.P3257100687632803576

`A000796(n)-A001355(2*(n+1))`
-/

namespace A187747.P3257100687632803576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A001355 (2 * (n + 1))

end

end A187747.P3257100687632803576

/-! ## A187747.P18090533319591183442

`A076790(2*n+1)-A001113(n)`
-/

namespace A187747.P18090533319591183442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1) - A001113 (n + 1)

end

end A187747.P18090533319591183442

/-! ## A187747.P14670344316590371542

`A000796(n)-A110779(2*n+1)`
-/

namespace A187747.P14670344316590371542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A110779 (2 * n + 1)

end

end A187747.P14670344316590371542

/-! ## A187747.P14796697129233408580

`A110766(2*n+1)-A001113(n)`
-/

namespace A187747.P14796697129233408580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) - A001113 (n + 1)

end

end A187747.P14796697129233408580

/-! ## A187747.P5979956609972609293

`A001355(2*n+1)-A001355(2*(n+1))`
-/

namespace A187747.P5979956609972609293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) - A001355 (2 * (n + 1))

end

end A187747.P5979956609972609293

/-! ## A187747.P742801493752903052

`A110766(2*n+1)-A110779(2*n+1)`
-/

namespace A187747.P742801493752903052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) - A110779 (2 * n + 1)

end

end A187747.P742801493752903052

/-! ## A187747.P11244594966041114190

`Δ[A059582(n)]-A001113(n)`
-/

namespace A187747.P11244594966041114190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001113 (n + 1)

end

end A187747.P11244594966041114190

/-! ## A187747.P13866880805536423135

`Δ[2*A059582(n)]-A073212(n)`
-/

namespace A187747.P13866880805536423135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073212 n

end

end A187747.P13866880805536423135

/-! ## A187747.P12139262581290452811

`A097902(∑[n+2]-1)-A001113(n)`
-/

namespace A187747.P12139262581290452811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A001113 (n + 1)

end

end A187747.P12139262581290452811

/-!
# A187748: Determinant of the n X n matrix m_(i,j) = gcd(2^i-1, 2^j-1).

The programs for A187748, there is no canonical definition to state claims against.
-/

/-! ## A187748.P11028488090545818046

`∏[A038199(n+1)]`
-/

namespace A187748.P11028488090545818046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187748.P11028488090545818046

/-! ## A187748.P16853520980048647477

`∏[A027375(n+1)]/2`
-/

namespace A187748.P16853520980048647477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A187748.P16853520980048647477

/-! ## A187748.P14044133111937389728

`∏[2*A000740(n+1)]/2`
-/

namespace A187748.P14044133111937389728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000740 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A187748.P14044133111937389728

/-! ## A187748.P939149935104259539

`∏[(n+1)*A059966(n+1)]`
-/

namespace A187748.P939149935104259539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187748.P939149935104259539

/-! ## A187748.P2180467688096145255

`∏[floor(A056267(n+1)+acot(n))]`
-/

namespace A187748.P2180467688096145255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056267 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187748.P2180467688096145255

/-!
# A187749: Maximum k for which a partition of the product of the first k primes (the k-th primorial) into the sum of two products gives a sum that yields only n composites from that sum down to 1+1=2 by sequential deletion of the largest prime.

The programs for A187749, there is no canonical definition to state claims against.
-/

/-! ## A187749.P17853491028425855813

`lt[A322794(2*n+3), A025581(A374700(n))]`
-/

namespace A187749.P17853491028425855813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A374700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187749.P17853491028425855813

/-! ## A187749.P1016605571740381807

`A028755(A396179(n+2))`
-/

namespace A187749.P1016605571740381807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (A396179 (n + 2)).toNat

end

end A187749.P1016605571740381807

/-!
# A187750: Recursively adding to a sum beginning with 1 the product of the smallest k primes not dividing the predecessor yields a prime for these values of k.

The programs for A187750, there is no canonical definition to state claims against.
-/

/-! ## A187750.P6481144262047678210

`eq[A025921(n)+A002448(3*n+4), A025863(n)]`
-/

namespace A187750.P6481144262047678210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + A002448 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187750.P6481144262047678210

/-!
# A187751: a(n) = n^(n!) mod (n!)^n.

The programs for A187751, the canonical program `A187751.P17871456132749753009` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187751 has offset 0).

The definition of A187751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187751.P17871456132749753009

`(n^n!)%(n!^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187751

/-- `(n^n!)%(n!^n)` -/
def P17871456132749753009.Spec : Prop :=
  ∀ n, (P17871456132749753009.a n : ℤ) = A187751 n

theorem P17871456132749753009.correct : P17871456132749753009.Spec := by
  intro n
  simp only [A187751]

end A187751

/-! ## A187751.P2704931680142261171

`A053986(n)%A036740(n)`
-/

namespace A187751.P2704931680142261171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053986 n) (A036740 n)

end

end A187751.P2704931680142261171

namespace A187751

/-- `A053986(n)%A036740(n)` -/
def P2704931680142261171.Spec : Prop :=
  ∀ n, P2704931680142261171.a n = A187751 n

end A187751

/-!
# A187752: Number of times the binary representation of n occurs in the concatenation of the binary representation of all smaller numbers.

The programs for A187752, there is no canonical definition to state claims against.
-/

/-! ## A187752.P1150842135931277566

`A117127(A028310(n))-A321751(A000040(n+1))`
-/

namespace A187752.P1150842135931277566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117127 (A028310 n).toNat - A321751 (A000040 (n + 1)).toNat

end

end A187752.P1150842135931277566

/-! ## A187752.P18425500731367379021

`A117127(A028310(n))-A007913(A076503(n+1)²)`
-/

namespace A187752.P18425500731367379021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117127 (A028310 n).toNat - A007913 (A076503 (n + 1) ^ 2).toNat

end

end A187752.P18425500731367379021

/-! ## A187752.P3054446663378187341

`A345197(A053176(n+1)-A066099(n+1))`
-/

namespace A187752.P3054446663378187341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A053176 (n + 1) - A066099 (n + 1)).toNat

end

end A187752.P3054446663378187341

/-!
# A187753: Number of different ways to divide an n X 5 rectangle into subsquares, considering only the list of parts.

The programs for A187753, there is no canonical definition to state claims against.
-/

/-! ## A187753.P12359839896021116855

`A224697((n+4)²-C(n+2, 2))`
-/

namespace A187753.P12359839896021116855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 ((n + 4) ^ 2 - Nat.choose (n + 2) 2)

end

end A187753.P12359839896021116855

/-! ## A187753.P1712422504174935850

`A224697(2*n+∑[n+4]+11)`
-/

namespace A187753.P1712422504174935850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 11))

end

end A187753.P1712422504174935850

/-! ## A187753.P17905390315531446770

`A224697(A055999(n+3))+char[23]`
-/

namespace A187753.P17905390315531446770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A055999 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187753.P17905390315531446770

/-! ## A187753.P13859876973383395861

`∏{d}[A224697(A055999(n+3)), A014963(#)]`
-/

namespace A187753.P13859876973383395861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A055999 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A187753.P13859876973383395861

/-! ## A187753.P17635922207454563126

`A007318(∑[n])*A224697(A055999(n+3))`
-/

namespace A187753.P17635922207454563126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224697 (A055999 (n + 3)).toNat

end

end A187753.P17635922207454563126

/-!
# A187755: E.g.f.: Sum_{n>=0} (1 - exp(-n^2*x))^n.

The programs for A187755, there is no canonical definition to state claims against.
-/

/-! ## A187755.P10929590051645907542

`A136126(A006137(n))`
-/

namespace A187755.P10929590051645907542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A006137 n).toNat

end

end A187755.P10929590051645907542

/-! ## A187755.P10621879856047910105

`A136126(A022267(n)+1)`
-/

namespace A187755.P10621879856047910105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A022267 n + 1).toNat

end

end A187755.P10621879856047910105

/-! ## A187755.P898337807557218451

`A136126(A038764(n)-n)`
-/

namespace A187755.P898337807557218451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A038764 n - (n : ℤ)).toNat

end

end A187755.P898337807557218451

/-! ## A187755.P6230979426166520431

`A136126(A016742(n)+A000124(n))`
-/

namespace A187755.P6230979426166520431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A016742 n + A000124 n).toNat

end

end A187755.P6230979426166520431

/-! ## A187755.P9649720988745731920

`A136126(A022266(n)+A000007(n))`
-/

namespace A187755.P9649720988745731920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A022266 n + A000007 n).toNat

end

end A187755.P9649720988745731920

/-!
# A187756: a(n) = n^2 * (4*n^2 - 1) / 3.

The programs for A187756, the canonical program `A187756.P18320331554880121416` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187756 has offset 0).

The definition of A187756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187756.P18320331554880121416

`n²*(4*n²-1)/3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A187756

/-- `n²*(4*n²-1)/3` -/
def P18320331554880121416.Spec : Prop :=
  ∀ n, P18320331554880121416.a n = (A187756 n : ℚ)

end A187756

/-! ## A187756.P1534677762179885034

`C((2*n)², 2)/6`
-/

namespace A187756.P1534677762179885034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * n) ^ 2) 2 : ℚ) / 6

end

end A187756.P1534677762179885034

namespace A187756

/-- `C((2*n)², 2)/6` -/
def P1534677762179885034.Spec : Prop :=
  ∀ n, P1534677762179885034.a n = (A187756 n : ℚ)

end A187756

/-! ## A187756.P16281003698397170554

`Δ[C(2*n+1, 5)]`
-/

namespace A187756.P16281003698397170554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A187756.P16281003698397170554

namespace A187756

/-- `Δ[C(2*n+1, 5)]` -/
def P16281003698397170554.Spec : Prop :=
  ∀ n, P16281003698397170554.a n = A187756 n

end A187756

/-! ## A187756.P13268415275647600414

`∑[C(2*n, 3)]+n^4`
-/

namespace A187756.P13268415275647600414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 4

end

end A187756.P13268415275647600414

namespace A187756

/-- `∑[C(2*n, 3)]+n^4` -/
def P13268415275647600414.Spec : Prop :=
  ∀ n, (P13268415275647600414.a n : ℤ) = A187756 n

end A187756

/-! ## A187756.P4938012623748512119

`-Δ[-C(n+1+n, 5)]`
-/

namespace A187756.P4938012623748512119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1 + n) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A187756.P4938012623748512119

namespace A187756

/-- `-Δ[-C(n+1+n, 5)]` -/
def P4938012623748512119.Spec : Prop :=
  ∀ n, P4938012623748512119.a n = A187756 n

end A187756

/-! ## A187756.P3935464892302332355

`lcm(n, n*C(2*n+1, 3))`
-/

namespace A187756.P3935464892302332355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * Nat.choose (2 * n + 1) 3)

end

end A187756.P3935464892302332355

namespace A187756

/-- `lcm(n, n*C(2*n+1, 3))` -/
def P3935464892302332355.Spec : Prop :=
  ∀ n, (P3935464892302332355.a n : ℤ) = A187756 n

end A187756

/-! ## A187756.P14335058287425884716

`and(n*C(2*n+1, 3), -3)`
-/

namespace A187756.P14335058287425884716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * Nat.choose (2 * n + 1) 3 : ℤ) (-3)

end

end A187756.P14335058287425884716

namespace A187756

/-- `and(n*C(2*n+1, 3), -3)` -/
def P14335058287425884716.Spec : Prop :=
  ∀ n, P14335058287425884716.a n = A187756 n

end A187756

/-! ## A187756.P5801516281963919361

`sqrt(C(2*n+1, 3)²*n²)`
-/

namespace A187756.P5801516281963919361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose (2 * n + 1) 3 ^ 2 * n ^ 2 : ℝ)

end

end A187756.P5801516281963919361

namespace A187756

/-- `sqrt(C(2*n+1, 3)²*n²)` -/
def P5801516281963919361.Spec : Prop :=
  ∀ n, P5801516281963919361.a n = (A187756 n : ℝ)

end A187756

/-! ## A187756.P9432274694489164021

`abs((2*n-n)*C(2*n+1, 3))`
-/

namespace A187756.P9432274694489164021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - (n : ℤ)) * (Nat.choose (2 * n + 1) 3 : ℤ)|

end

end A187756.P9432274694489164021

namespace A187756

/-- `abs((2*n-n)*C(2*n+1, 3))` -/
def P9432274694489164021.Spec : Prop :=
  ∀ n, P9432274694489164021.a n = A187756 n

end A187756

/-! ## A187756.P1366149550376925739

`-(n-2*n)*C(2*n+1, 3)`
-/

namespace A187756.P1366149550376925739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - (2 * n : ℤ)) * (Nat.choose (2 * n + 1) 3 : ℤ))

end

end A187756.P1366149550376925739

namespace A187756

/-- `-(n-2*n)*C(2*n+1, 3)` -/
def P1366149550376925739.Spec : Prop :=
  ∀ n, P1366149550376925739.a n = A187756 n

end A187756

/-! ## A187756.P1193135622141979863

`C(2*n+1, 3)*∑[2*n]/(n+1)`
-/

namespace A187756.P1193135622141979863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) 3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A187756.P1193135622141979863

namespace A187756

/-- `C(2*n+1, 3)*∑[2*n]/(n+1)` -/
def P1193135622141979863.Spec : Prop :=
  ∀ n, P1193135622141979863.a n = (A187756 n : ℚ)

end A187756

/-! ## A187756.P14890994304091365397

`A112742(n)+n²²`
-/

namespace A187756.P14890994304091365397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + ((n ^ 2) ^ 2 : ℤ)

end

end A187756.P14890994304091365397

namespace A187756

/-- `A112742(n)+n²²` -/
def P14890994304091365397.Spec : Prop :=
  ∀ n, P14890994304091365397.a n = A187756 n

end A187756

/-! ## A187756.P15071585160209156525

`n²+2*A072819(n)`
-/

namespace A187756.P15071585160209156525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A072819 n

end

end A187756.P15071585160209156525

namespace A187756

/-- `n²+2*A072819(n)` -/
def P15071585160209156525.Spec : Prop :=
  ∀ n, P15071585160209156525.a n = A187756 n

end A187756

/-! ## A187756.P14769284323647552852

`2*A071270(n)-n²`
-/

namespace A187756.P14769284323647552852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071270 n - (n ^ 2 : ℤ)

end

end A187756.P14769284323647552852

namespace A187756

/-- `2*A071270(n)-n²` -/
def P14769284323647552852.Spec : Prop :=
  ∀ n, P14769284323647552852.a n = A187756 n

end A187756

/-! ## A187756.P14365763462971229481

`A072819(n)+A071270(n)`
-/

namespace A187756.P14365763462971229481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + A071270 n

end

end A187756.P14365763462971229481

namespace A187756

/-- `A072819(n)+A071270(n)` -/
def P14365763462971229481.Spec : Prop :=
  ∀ n, P14365763462971229481.a n = A187756 n

end A187756

/-! ## A187756.P14527293725838274165

`A008413(n)-A005919(n)`
-/

namespace A187756.P14527293725838274165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 n - A005919 n

end

end A187756.P14527293725838274165

namespace A187756

/-- `A008413(n)-A005919(n)` -/
def P14527293725838274165.Spec : Prop :=
  ∀ n, P14527293725838274165.a n = A187756 n

end A187756

/-! ## A187756.P8979792285244628680

`A002593(n)-A072819(n)`
-/

namespace A187756.P8979792285244628680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n - A072819 n

end

end A187756.P8979792285244628680

namespace A187756

/-- `A002593(n)-A072819(n)` -/
def P8979792285244628680.Spec : Prop :=
  ∀ n, P8979792285244628680.a n = A187756 n

end A187756

/-! ## A187756.P16710864260038020521

`A260810(n)-A008911(n)`
-/

namespace A187756.P16710864260038020521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260810 n - A008911 n

end

end A187756.P16710864260038020521

namespace A187756

/-- `A260810(n)-A008911(n)` -/
def P16710864260038020521.Spec : Prop :=
  ∀ n, P16710864260038020521.a n = A187756 n

end A187756

/-! ## A187756.P2388534988170690371

`A244730(n)-A071270(n)`
-/

namespace A187756.P2388534988170690371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 n - A071270 n

end

end A187756.P2388534988170690371

namespace A187756

/-- `A244730(n)-A071270(n)` -/
def P2388534988170690371.Spec : Prop :=
  ∀ n, P2388534988170690371.a n = A187756 n

end A187756

/-! ## A187756.P7084298775656520656

`lcm(A000447(n), A046162(n+1))`
-/

namespace A187756.P7084298775656520656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000447 n) (A046162 (n + 1))

end

end A187756.P7084298775656520656

namespace A187756

/-- `lcm(A000447(n), A046162(n+1))` -/
def P7084298775656520656.Spec : Prop :=
  ∀ n, (P7084298775656520656.a n : ℤ) = A187756 n

end A187756

/-!
# A187759: Number of ways to write n=x+y (0

The programs for A187759, there is no canonical definition to state claims against.
-/

/-! ## A187759.P1525881473528028191

`A159700(3*(n+1))/2`
-/

namespace A187759.P1525881473528028191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159700 (3 * (n + 1)) : ℚ) / 2

end

end A187759.P1525881473528028191

/-! ## A187759.P15736062207792355445

`ceil((A339625(n+1)-1)/2)`
-/

namespace A187759.P15736062207792355445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339625 (n + 1) - 1 : ℚ) / 2⌉

end

end A187759.P15736062207792355445

/-! ## A187759.P7720540607462574446

`A004526(A339625(n+1))`
-/

namespace A187759.P7720540607462574446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339625 (n + 1)).toNat

end

end A187759.P7720540607462574446

/-! ## A187759.P364925031356997019

`A004526(A159700(3*(n+1)))`
-/

namespace A187759.P364925031356997019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159700 (3 * (n + 1))).toNat

end

end A187759.P364925031356997019

/-! ## A187759.P1835385974491945108

`A059995(5*A339625(n+1))`
-/

namespace A187759.P1835385974491945108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (5 * A339625 (n + 1)).toNat

end

end A187759.P1835385974491945108

/-! ## A187759.P6791826010602612354

`A110654(A339625(n+1)+1)-1`
-/

namespace A187759.P6791826010602612354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A339625 (n + 1) + 1).toNat - 1

end

end A187759.P6791826010602612354

/-! ## A187759.P965627647843134377

`A302231(3*(n+1))`
-/

namespace A187759.P965627647843134377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302231 (3 * (n + 1))

end

end A187759.P965627647843134377

/-! ## A187759.P6194706204267140658

`A004526(A129363(3*(n+1)))`
-/

namespace A187759.P6194706204267140658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A129363 (3 * (n + 1))).toNat

end

end A187759.P6194706204267140658

/-! ## A187759.P9885207098301432005

`A339625(n+1)-A235644(n+1)`
-/

namespace A187759.P9885207098301432005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339625 (n + 1) - A235644 (n + 1)

end

end A187759.P9885207098301432005

/-!
# A187760: Table T(n,k) read by antidiagonals. T(n,k)=n-k+1, if n>=k, T(n,k)=k-n+2, if n < k.

The programs for A187760, the canonical program `A187760.P14445012374948674786` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187760 has offset 1).

The definition of A187760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187760.P14445012374948674786

`A143182(n)+1-A101688(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A187760

/-- `A143182(n)+1-A101688(n)` -/
def P14445012374948674786.Spec : Prop :=
  ∀ n, P14445012374948674786.a n = A187760 (n + 1)

theorem P14445012374948674786.correct : P14445012374948674786.Spec := by
  intro n
  simp only [A187760, Nat.add_sub_cancel]

end A187760

/-! ## A187760.P13008421660013372956

`A049581(n)+2-A101688(n)`
-/

namespace A187760.P13008421660013372956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + (2 - A101688 n)

end

end A187760.P13008421660013372956

namespace A187760

/-- `A049581(n)+2-A101688(n)` -/
def P13008421660013372956.Spec : Prop :=
  ∀ n, P13008421660013372956.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P4760426702292651435

`A130517(n+1)+A068344(n)²`
-/

namespace A187760.P4760426702292651435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + A068344 n ^ 2

end

end A187760.P4760426702292651435

namespace A187760

/-- `A130517(n+1)+A068344(n)²` -/
def P4760426702292651435.Spec : Prop :=
  ∀ n, P4760426702292651435.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P12071895378036039598

`2*A143182(n)-A220073(n+1)`
-/

namespace A187760.P12071895378036039598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143182 n - A220073 (n + 1)

end

end A187760.P12071895378036039598

namespace A187760

/-- `2*A143182(n)-A220073(n+1)` -/
def P12071895378036039598.Spec : Prop :=
  ∀ n, P12071895378036039598.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P11651935503340302813

`A130517(n+1)+(A130517(n+1)-A220073(n+1))²`
-/

namespace A187760.P11651935503340302813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) + (A130517 (n + 1) - A220073 (n + 1)) ^ 2

end

end A187760.P11651935503340302813

namespace A187760

/-- `A130517(n+1)+(A130517(n+1)-A220073(n+1))²` -/
def P11651935503340302813.Spec : Prop :=
  ∀ n, P11651935503340302813.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P1626612051142121444

`2*A143182(n)-A002260(A185180(n+1))`
-/

namespace A187760.P1626612051142121444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143182 n - A002260 (A185180 (n + 1)).toNat

end

end A187760.P1626612051142121444

namespace A187760

/-- `2*A143182(n)-A002260(A185180(n+1))` -/
def P1626612051142121444.Spec : Prop :=
  ∀ n, P1626612051142121444.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P16737348464356952830

`A130517(A183572(n+1)+1)`
-/

namespace A187760.P16737348464356952830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A183572 (n + 1) + 1).toNat

end

end A187760.P16737348464356952830

namespace A187760

/-- `A130517(A183572(n+1)+1)` -/
def P16737348464356952830.Spec : Prop :=
  ∀ n, P16737348464356952830.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P2898654380766108022

`A209301(A060736(n+1))`
-/

namespace A187760.P2898654380766108022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (A060736 (n + 1)).toNat

end

end A187760.P2898654380766108022

namespace A187760

/-- `A209301(A060736(n+1))` -/
def P2898654380766108022.Spec : Prop :=
  ∀ n, P2898654380766108022.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P7594659484655881220

`A130517(A000196(2*n+1)+n+2)`
-/

namespace A187760.P7594659484655881220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A000196 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A187760.P7594659484655881220

namespace A187760

/-- `A130517(A000196(2*n+1)+n+2)` -/
def P7594659484655881220.Spec : Prop :=
  ∀ n, P7594659484655881220.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P9974339667979083865

`A023969(2*n+1)+A053188(2*n+1)+1`
-/

namespace A187760.P9974339667979083865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (2 * n + 1) + (A053188 (2 * n + 1) + 1)

end

end A187760.P9974339667979083865

namespace A187760

/-- `A023969(2*n+1)+A053188(2*n+1)+1` -/
def P9974339667979083865.Spec : Prop :=
  ∀ n, P9974339667979083865.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P1631896298779116568

`A004737(2*n+1)+1-A004530(2*n+1)`
-/

namespace A187760.P1631896298779116568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * n + 1) + (1 - A004530 (2 * n + 1))

end

end A187760.P1631896298779116568

namespace A187760

/-- `A004737(2*n+1)+1-A004530(2*n+1)` -/
def P1631896298779116568.Spec : Prop :=
  ∀ n, P1631896298779116568.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P8503998328469368197

`A004737(2*n+1)+1-A010052(2*n+1)`
-/

namespace A187760.P8503998328469368197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * n + 1) + (1 - A010052 (2 * n + 1))

end

end A187760.P8503998328469368197

namespace A187760

/-- `A004737(2*n+1)+1-A010052(2*n+1)` -/
def P8503998328469368197.Spec : Prop :=
  ∀ n, P8503998328469368197.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P1850293329003862690

`A209302(2*n+1)+1-A000196(2*n+1)`
-/

namespace A187760.P1850293329003862690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (2 * n + 1) + (1 - A000196 (2 * n + 1))

end

end A187760.P1850293329003862690

namespace A187760

/-- `A209302(2*n+1)+1-A000196(2*n+1)` -/
def P1850293329003862690.Spec : Prop :=
  ∀ n, P1850293329003862690.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P17304874069072744003

`A053188(2*n+1)+2-A267708(2*n+1)`
-/

namespace A187760.P17304874069072744003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (2 * n + 1) + (2 - A267708 (2 * n + 1))

end

end A187760.P17304874069072744003

namespace A187760

/-- `A053188(2*n+1)+2-A267708(2*n+1)` -/
def P17304874069072744003.Spec : Prop :=
  ∀ n, P17304874069072744003.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P13330249333983774260

`A004737(2*(n+1))+2*A118175(2*n+1)`
-/

namespace A187760.P13330249333983774260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * (n + 1)) + 2 * A118175 (2 * n + 1)

end

end A187760.P13330249333983774260

namespace A187760

/-- `A004737(2*(n+1))+2*A118175(2*n+1)` -/
def P13330249333983774260.Spec : Prop :=
  ∀ n, P13330249333983774260.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P16890760385170906063

`A004737(2*n+1)+A028391(2*n+1)-A028391(2*n)`
-/

namespace A187760.P16890760385170906063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * n + 1) + (A028391 (2 * n + 1) - A028391 (2 * n))

end

end A187760.P16890760385170906063

namespace A187760

/-- `A004737(2*n+1)+A028391(2*n+1)-A028391(2*n)` -/
def P16890760385170906063.Spec : Prop :=
  ∀ n, P16890760385170906063.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P14915553402437902138

`A209301(A001614(n+1))`
-/

namespace A187760.P14915553402437902138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (A001614 (n + 1)).toNat

end

end A187760.P14915553402437902138

namespace A187760

/-- `A209301(A001614(n+1))` -/
def P14915553402437902138.Spec : Prop :=
  ∀ n, P14915553402437902138.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P7736956440847048387

`A209301(A133280(n)+1)`
-/

namespace A187760.P7736956440847048387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (A133280 n + 1).toNat

end

end A187760.P7736956440847048387

namespace A187760

/-- `A209301(A133280(n)+1)` -/
def P7736956440847048387.Spec : Prop :=
  ∀ n, P7736956440847048387.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P13850768353382181398

`A004738(A078358(2*(n+1)))`
-/

namespace A187760.P13850768353382181398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A078358 (2 * (n + 1))).toNat

end

end A187760.P13850768353382181398

namespace A187760

/-- `A004738(A078358(2*(n+1)))` -/
def P13850768353382181398.Spec : Prop :=
  ∀ n, P13850768353382181398.a n = A187760 (n + 1)

end A187760

/-! ## A187760.P1309770337587087150

`A053615(A028392(2*n+1))+1`
-/

namespace A187760.P1309770337587087150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028392 (2 * n + 1)).toNat + 1

end

end A187760.P1309770337587087150

namespace A187760

/-- `A053615(A028392(2*n+1))+1` -/
def P1309770337587087150.Spec : Prop :=
  ∀ n, P1309770337587087150.a n = A187760 (n + 1)

end A187760

/-!
# A187761: Number of maps f: [n] -> [n] with f(x)<=x and f(f(x)) = f(f(f(x))).

The programs for A187761, there is no canonical definition to state claims against.
-/

/-! ## A187761.P9954101722422566411

`A265312(∑[n+3])`
-/

namespace A187761.P9954101722422566411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187761.P9954101722422566411

/-! ## A187761.P2972594830941453723

`A264430(∑[n+1]+1)`
-/

namespace A187761.P2972594830941453723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264430 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187761.P2972594830941453723

/-! ## A187761.P17232310659308637218

`A125273(n)+A049087(n^n)`
-/

namespace A187761.P17232310659308637218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125273 n + A049087 (n ^ n)

end

end A187761.P17232310659308637218

/-!
# A187762: a(n) = smallest final prime in a chain of 2n+1 consecutive primes such that sum of the last 1, 3, 5, ..., 2n+1 terms in the sequence is also a prime.

The programs for A187762, there is no canonical definition to state claims against.
-/

/-! ## A187762.P9676878015565671567

`p?[record[A274528(A121718(n))]]`
-/

namespace A187762.P9676878015565671567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A121718 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187762.P9676878015565671567

/-!
# A187764: Number of uud-avoiding rooted non-crossing trees of n+1 vertices with the root 1.

The programs for A187764, there is no canonical definition to state claims against.
-/

/-! ## A187764.P7992672793067921197

`A007852(round(sqrt(n²+1))+1)-A153294(n)`
-/

namespace A187764.P7992672793067921197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - A153294 n

end

end A187764.P7992672793067921197

/-! ## A187764.P10515492588077271761

`A007852(n+1)+A000007(n)-A153294(n)`
-/

namespace A187764.P10515492588077271761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + (A000007 n - A153294 n)

end

end A187764.P10515492588077271761

/-! ## A187764.P7017779016632641125

`A007852(n+1)-A008683(A100484(n+1))*A153294(n)`
-/

namespace A187764.P7017779016632641125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) - A008683 (A100484 (n + 1)).toNat * A153294 n

end

end A187764.P7017779016632641125

/-! ## A187764.P1888602973135440507

`A007852(n+1)-A153294(n)%A006629(n)`
-/

namespace A187764.P1888602973135440507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) - Int.tmod (A153294 n) (A006629 n)

end

end A187764.P1888602973135440507

/-!
# A187765: The (n-1)th decimal place of the fractional part of the square root of n.

The programs for A187765, there is no canonical definition to state claims against.
-/

/-! ## A187765.P8844543408310549045

`A037022(∑[n+1])-floor(acot(n))`
-/

namespace A187765.P8844543408310549045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A187765.P8844543408310549045

/-! ## A187765.P11013528335890919580

`A037022(∑[n+1])-A000007(n)`
-/

namespace A187765.P11013528335890919580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) - A000007 n

end

end A187765.P11013528335890919580

/-! ## A187765.P7512879142074682555

`A037022(∑[n+1])*A057427(n)`
-/

namespace A187765.P7512879142074682555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A187765.P7512879142074682555

/-! ## A187765.P9793705936255349738

`and(A037022(∑[n+1]), A057428(n))`
-/

namespace A187765.P9793705936255349738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037022 (∑ j ∈ Finset.range (n + 1), f1 j)) (A057428 n)

end

end A187765.P9793705936255349738

/-! ## A187765.P7476773068726091930

`A037022(∑[n+1])-A063524(n+1)`
-/

namespace A187765.P7476773068726091930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) - A063524 (n + 1)

end

end A187765.P7476773068726091930

/-! ## A187765.P15596243345410378736

`A037022(∑[n+1])-A002445(n)%2`
-/

namespace A187765.P15596243345410378736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) - Int.tmod (A002445 n) 2

end

end A187765.P15596243345410378736

/-! ## A187765.P3588517053526466449

`A037022(∑[n+1])-A008683((n+1)²)`
-/

namespace A187765.P3588517053526466449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037022 (∑ j ∈ Finset.range (n + 1), f1 j) - A008683 ((n + 1) ^ 2)

end

end A187765.P3588517053526466449

/-! ## A187765.P7522249677431905666

`A000040(n+1)%2*A037022(∑[n+1])`
-/

namespace A187765.P7522249677431905666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A037022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187765.P7522249677431905666

/-! ## A187765.P760649100505008133

`record[A006530(n+2)]%2*A037022(∑[n+1])`
-/

namespace A187765.P760649100505008133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A037022 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A187765.P760649100505008133

/-!
# A187767: Number of bicolored cyclic patterns n X n.

The programs for A187767, the canonical program `A187767.P2032594768100003987` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187767 has offset 1).

The definition of A187767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187767.P2032594768100003987

`A127804(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187767

/-- `A127804(n)-1` -/
def P2032594768100003987.Spec : Prop :=
  ∀ n, P2032594768100003987.a n = A187767 (n + 1)

theorem P2032594768100003987.correct : P2032594768100003987.Spec := by
  intro n
  simp only [A187767, Nat.add_sub_cancel]

end A187767

/-! ## A187767.P8859850818083832172

`A045654(n+1)/2-1`
-/

namespace A187767.P8859850818083832172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045654 (n + 1) : ℚ) / 2 - 1

end

end A187767.P8859850818083832172

namespace A187767

/-- `A045654(n+1)/2-1` -/
def P8859850818083832172.Spec : Prop :=
  ∀ n, P8859850818083832172.a n = (A187767 (n + 1) : ℚ)

end A187767

/-! ## A187767.P775808676405033236

`A129342(n+1)/2-1`
-/

namespace A187767.P775808676405033236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129342 (n + 1) : ℚ) / 2 - 1

end

end A187767.P775808676405033236

namespace A187767

/-- `A129342(n+1)/2-1` -/
def P775808676405033236.Spec : Prop :=
  ∀ n, P775808676405033236.a n = (A187767 (n + 1) : ℚ)

end A187767

/-! ## A187767.P12900923037389959760

`Δ[∑[A045654(n)]/2]-1`
-/

namespace A187767.P12900923037389959760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A187767.P12900923037389959760

namespace A187767

/-- `Δ[∑[A045654(n)]/2]-1` -/
def P12900923037389959760.Spec : Prop :=
  ∀ n, P12900923037389959760.a n = (A187767 (n + 1) : ℚ)

end A187767

/-! ## A187767.P10455908429054738988

`∑{d}[n+1, #*A056303(#)]`
-/

namespace A187767.P10455908429054738988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A056303 d

end

end A187767.P10455908429054738988

namespace A187767

/-- `∑{d}[n+1, #*A056303(#)]` -/
def P10455908429054738988.Spec : Prop :=
  ∀ n, P10455908429054738988.a n = A187767 (n + 1)

end A187767

/-! ## A187767.P8651947276521993993

`∑{d}[n+1, #*A000048(#)]-1`
-/

namespace A187767.P8651947276521993993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000048 d - 1

end

end A187767.P8651947276521993993

namespace A187767

/-- `∑{d}[n+1, #*A000048(#)]-1` -/
def P8651947276521993993.Spec : Prop :=
  ∀ n, P8651947276521993993.a n = A187767 (n + 1)

end A187767

/-! ## A187767.P17434289281845884081

`or(a(A004524(n)), A166920(n))` with `a(0)=0`
-/

namespace A187767.P17434289281845884081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A004524 n).toNat) (A166920 n)

end

end A187767.P17434289281845884081

namespace A187767

/-- `or(a(A004524(n)), A166920(n))` -/
def P17434289281845884081.Spec : Prop :=
  ∀ n, P17434289281845884081.a n = A187767 (n + 1)

end A187767

/-! ## A187767.P3251379271145938367

`A057428(n+1)+A045654(n+1)/2`
-/

namespace A187767.P3251379271145938367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (n + 1) : ℚ) + (A045654 (n + 1) : ℚ) / 2

end

end A187767.P3251379271145938367

namespace A187767

/-- `A057428(n+1)+A045654(n+1)/2` -/
def P3251379271145938367.Spec : Prop :=
  ∀ n, P3251379271145938367.a n = (A187767 (n + 1) : ℚ)

end A187767

/-! ## A187767.P12413037526253055266

`∑{d}[n+1, A036987(#-1)*A166920((n+1)/#-1)]`
-/

namespace A187767.P12413037526253055266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A166920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A187767.P12413037526253055266

namespace A187767

/-- `∑{d}[n+1, A036987(#-1)*A166920((n+1)/#-1)]` -/
def P12413037526253055266.Spec : Prop :=
  ∀ n, P12413037526253055266.a n = A187767 (n + 1)

end A187767

/-!
# A187769: Triangle read by rows: equivalence classes of natural numbers, where numbers are equivalent when having equal numbers of zeros and ones in binary representation, respectively.

The programs for A187769, there is no canonical definition to state claims against.
-/

/-! ## A187769.P6128272680444033563

`A048679(A371590(n))`
-/

namespace A187769.P6128272680444033563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A371590 n).toNat

end

end A187769.P6128272680444033563

/-! ## A187769.P16994857422537716390

`A048675(A381500(n))`
-/

namespace A187769.P16994857422537716390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A381500 n).toNat

end

end A187769.P16994857422537716390

/-! ## A187769.P10391013158437785262

`A335426(A381500(n)/A145327(3*n+2))`
-/

namespace A187769.P10391013158437785262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (SequenceMachineLib.roundAway ((A381500 n : ℚ) / (A145327 (3 * n + 2) : ℚ))).toNat

end

end A187769.P10391013158437785262

/-!
# A187773: Discriminants of norm-Euclidean complex cubic fields (negated).

The programs for A187773, there is no canonical definition to state claims against.
-/

/-! ## A187773.P17344194147582971982

`A374092(A185036(n))+A023679(n+1)`
-/

namespace A187773.P17344194147582971982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374092 (A185036 n).toNat + A023679 (n + 1)

end

end A187773.P17344194147582971982

/-! ## A187773.P11708241821062154515

`A374092(A185236(n))+A023679(n+1)`
-/

namespace A187773.P11708241821062154515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374092 (A185236 n).toNat + A023679 (n + 1)

end

end A187773.P11708241821062154515

/-!
# A187774: Positive values of n for which the quadratic field Q(n^(1/4)) is norm-Euclidean.

The programs for A187774, there is no canonical definition to state claims against.
-/

/-! ## A187774.P8989924321581219827

`eq[A117814(n), A255934(n)]`
-/

namespace A187774.P8989924321581219827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187774.P8989924321581219827

/-! ## A187774.P4003044210876465688

`A018261(n+2)+A002375(n+1)²`
-/

namespace A187774.P4003044210876465688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 2) + A002375 (n + 1) ^ 2

end

end A187774.P4003044210876465688

/-! ## A187774.P15369939539302130657

`eq[A008647(A233276(n)), A290260(n+1)]`
-/

namespace A187774.P15369939539302130657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A233276 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187774.P15369939539302130657

/-! ## A187774.P1796173469410348546

`A115878(A122781(n+1))+A018261(n+2)`
-/

namespace A187774.P1796173469410348546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A122781 (n + 1)).toNat + A018261 (n + 2)

end

end A187774.P1796173469410348546

/-! ## A187774.P767279063211047296

`or(A018261(n+2), A271724(A000005(2*(n+2))))`
-/

namespace A187774.P767279063211047296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018261 (n + 2)) (A271724 (A000005 (2 * (n + 2))).toNat)

end

end A187774.P767279063211047296

/-!
# A187778: Numbers k dividing psi(k), where psi is the Dedekind psi function (A001615).

The programs for A187778, there is no canonical definition to state claims against.
-/

/-! ## A187778.P4167854898368470457

`A007694(n+1)*A122553(n)`
-/

namespace A187778.P4167854898368470457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) * A122553 n

end

end A187778.P4167854898368470457

/-! ## A187778.P10230095666837505404

`A007694(n+1)*A022330(n²%(n+1))`
-/

namespace A187778.P10230095666837505404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) * A022330 (n ^ 2 % (n + 1))

end

end A187778.P10230095666837505404

/-! ## A187778.P13068046725805383785

`A001615(3-ceil(2/(n+1)))*A007694(n+1)`
-/

namespace A187778.P13068046725805383785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (3 - ⌈2 / (n + 1 : ℚ)⌉).toNat * A007694 (n + 1)

end

end A187778.P13068046725805383785

/-! ## A187778.P62510523623234632

`ceil(A007310(n+1)/(n+1))*A007694(n+1)`
-/

namespace A187778.P62510523623234632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007310 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ * A007694 (n + 1)

end

end A187778.P62510523623234632

/-! ## A187778.P6149903533089545755

`A007694(n+1)*A268670(round(n/(n+1))+1)`
-/

namespace A187778.P6149903533089545755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) * A268670 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A187778.P6149903533089545755

/-! ## A187778.P12258005354527246939

`A032766(A266722(n))%6*A007694(n+1)`
-/

namespace A187778.P12258005354527246939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 (A266722 n).toNat) 6 * A007694 (n + 1)

end

end A187778.P12258005354527246939

/-! ## A187778.P10054234694679310179

`A032766(A266722(2*n))*A007694(n+1)`
-/

namespace A187778.P10054234694679310179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A266722 (2 * n)).toNat * A007694 (n + 1)

end

end A187778.P10054234694679310179

/-! ## A187778.P7920830975947156953

`∩[A003586(n+1), A329878(n+1)]`
-/

namespace A187778.P7920830975947156953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P7920830975947156953

/-! ## A187778.P9408689514878563090

`∩[A007694(n+1), A329878(n+1)]`
-/

namespace A187778.P9408689514878563090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P9408689514878563090

/-! ## A187778.P1518889626689728551

`∩[A130074(n+1), A329878(n+1)]`
-/

namespace A187778.P1518889626689728551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P1518889626689728551

/-! ## A187778.P15007705565087527734

`∩[A257997(n+1), A329878(n+1)]`
-/

namespace A187778.P15007705565087527734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P15007705565087527734

/-! ## A187778.P15377639854050829517

`∩[A308299(n+1), A329878(n+1)]`
-/

namespace A187778.P15377639854050829517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P15377639854050829517

/-! ## A187778.P3781356265736945721

`∩[A122254(n+1), A329878(n+1)]`
-/

namespace A187778.P3781356265736945721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P3781356265736945721

/-! ## A187778.P9235210177145544612

`∩[A003586(n+1), A212308(n+1)]`
-/

namespace A187778.P9235210177145544612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P9235210177145544612

/-! ## A187778.P9642347875288979263

`∩[A007694(n+1), A212308(n+1)]`
-/

namespace A187778.P9642347875288979263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P9642347875288979263

/-! ## A187778.P3669834363172599061

`∩[A212308(n+1), A283808(n+1)]`
-/

namespace A187778.P3669834363172599061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P3669834363172599061

/-! ## A187778.P9167748521022727314

`∩[A212308(n+1), A337800(n+1)]`
-/

namespace A187778.P9167748521022727314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P9167748521022727314

/-! ## A187778.P8653249025529630952

`∩[A003586(n+1), A231959(n+1)]`
-/

namespace A187778.P8653249025529630952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P8653249025529630952

/-! ## A187778.P3414887067211287355

`∩[A007694(n+1), A231959(n+1)]`
-/

namespace A187778.P3414887067211287355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P3414887067211287355

/-! ## A187778.P1973799519254415694

`∩[A231959(n+1), A283808(n+1)]`
-/

namespace A187778.P1973799519254415694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187778.P1973799519254415694

/-!
# A187779: Numbers n for which the terms of A014320 up to n=A014320(k) are a permutation of {1,2,4,6,...,2*(k-1)}.

The programs for A187779, there is no canonical definition to state claims against.
-/

/-! ## A187779.P2375343094415554781

`record[gcd(A002183(n+1), A332277(n))]`
-/

namespace A187779.P2375343094415554781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002183 (n + 1)) (A332277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187779.P2375343094415554781

/-! ## A187779.P1114157377295519634

`record[A071364(xor(n, A335423(n+1)))]`
-/

namespace A187779.P1114157377295519634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.xor (n : ℤ) (A335423 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187779.P1114157377295519634

/-! ## A187779.P13278938642467097526

`A216392(n+1)*A279686(n+1)`
-/

namespace A187779.P13278938642467097526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216392 (n + 1) * A279686 (n + 1)

end

end A187779.P13278938642467097526

/-! ## A187779.P1013368422774889474

`A216392(n+1)*A317246(n+1)`
-/

namespace A187779.P1013368422774889474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216392 (n + 1) * A317246 (n + 1)

end

end A187779.P1013368422774889474

/-! ## A187779.P11338142003508743032

`A216392(n+1)*A332276(n+1)`
-/

namespace A187779.P11338142003508743032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216392 (n + 1) * A332276 (n + 1)

end

end A187779.P11338142003508743032

/-!
# A187780: Sum_{k=0..n} Lucas(k)^(n-k).

The programs for A187780, there is no canonical definition to state claims against.
-/

/-! ## A187780.P10923762288578679305

`A056926(n)+A023190(A092090(n))`
-/

namespace A187780.P10923762288578679305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n + A023190 (A092090 n).toNat

end

end A187780.P10923762288578679305

/-!
# A187782: Number of different kinds of polygons in a regular n-gon with all diagonals drawn.

The programs for A187782, there is no canonical definition to state claims against.
-/

/-! ## A187782.P9356669693518125498

`A304034(3*n+4)+A003849(A000740(n+1))`
-/

namespace A187782.P9356669693518125498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304034 (3 * n + 4) + A003849 (A000740 (n + 1)).toNat

end

end A187782.P9356669693518125498

/-! ## A187782.P5038918049885336143

`A342739(A275677(n+1))`
-/

namespace A187782.P5038918049885336143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342739 (A275677 (n + 1)).toNat

end

end A187782.P5038918049885336143

/-! ## A187782.P14514334133340584806

`A216763(A051724(n)+A027642(n))`
-/

namespace A187782.P14514334133340584806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A051724 n + A027642 n).toNat

end

end A187782.P14514334133340584806

/-! ## A187782.P969167507661574362

`A318663(A020701(n)*A290673(n))`
-/

namespace A187782.P969167507661574362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318663 (A020701 n * A290673 n).toNat

end

end A187782.P969167507661574362

/-! ## A187782.P13807152054349007872

`A043556(A363151(n)+A340764(n+1))`
-/

namespace A187782.P13807152054349007872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A363151 n + A340764 (n + 1)).toNat

end

end A187782.P13807152054349007872

/-!
# A187783: De Bruijn's triangle, T(m,n) = (m*n)!/(n!^m) read by downward antidiagonals.

The programs for A187783, the canonical program `A187783.P697227911959604546` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187783 has offset 0).

The definition of A187783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187783.P11062020457696446706

`A089759(A002378(n)%A080036(n))`
-/

namespace A187783.P11062020457696446706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A187783.P11062020457696446706

namespace A187783

/-- `A089759(A002378(n)%A080036(n))` -/
def P11062020457696446706.Spec : Prop :=
  ∀ n, P11062020457696446706.a n = A187783 n

end A187783

/-! ## A187783.P6575619905609524202

`A089759(∑[2*n]%comp[∑[n]])`
-/

namespace A187783.P6575619905609524202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A187783.P6575619905609524202

namespace A187783

/-- `A089759(∑[2*n]%comp[∑[n]])` -/
def P6575619905609524202.Spec : Prop :=
  ∀ n, P6575619905609524202.a n = A187783 n

end A187783

/-! ## A187783.P15834088233013681337

`A089759(∑[char[∑[n]]]²-n-1)`
-/

namespace A187783.P15834088233013681337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A187783.P15834088233013681337

namespace A187783

/-- `A089759(∑[char[∑[n]]]²-n-1)` -/
def P15834088233013681337.Spec : Prop :=
  ∀ n, P15834088233013681337.a n = A187783 n

end A187783

/-! ## A187783.P15672249109623792383

`A089759(A061579(n))/(1-and(2, n))²`
-/

namespace A187783.P15672249109623792383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A061579 n).toNat : ℚ) / ((1 - (Nat.land 2 n : ℤ)) ^ 2 : ℚ)

end

end A187783.P15672249109623792383

namespace A187783

/-- `A089759(A061579(n))/(1-and(2, n))²` -/
def P15672249109623792383.Spec : Prop :=
  ∀ n, P15672249109623792383.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P3379957300680823756

`A089759(A114327(n)+n)/(1-and(2, n))²`
-/

namespace A187783.P3379957300680823756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A114327 n + (n : ℤ)).toNat : ℚ) / ((1 - (Nat.land 2 n : ℤ)) ^ 2 : ℚ)

end

end A187783.P3379957300680823756

namespace A187783

/-- `A089759(A114327(n)+n)/(1-and(2, n))²` -/
def P3379957300680823756.Spec : Prop :=
  ∀ n, P3379957300680823756.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P3464533173001808886

`A089759(∑[A198954(n)-1])/(1-and(2, n))²`
-/

namespace A187783.P3464533173001808886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / ((1 - (Nat.land 2 n : ℤ)) ^ 2 : ℚ)

end

end A187783.P3464533173001808886

namespace A187783

/-- `A089759(∑[A198954(n)-1])/(1-and(2, n))²` -/
def P3464533173001808886.Spec : Prop :=
  ∀ n, P3464533173001808886.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P9512114042852619081

`A089759(∑[A010054(n)]²-(n+1))/(1-and(2, n))²`
-/

namespace A187783.P9512114042852619081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)).toNat : ℚ) / ((1 - (Nat.land 2 n : ℤ)) ^ 2 : ℚ)

end

end A187783.P9512114042852619081

namespace A187783

/-- `A089759(∑[A010054(n)]²-(n+1))/(1-and(2, n))²` -/
def P9512114042852619081.Spec : Prop :=
  ∀ n, P9512114042852619081.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P3962139639696915263

`A089759(A061579(n))^A198954(n)!`
-/

namespace A187783.P3962139639696915263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A061579 n).toNat ^ Nat.factorial (A198954 n).toNat

end

end A187783.P3962139639696915263

namespace A187783

/-- `A089759(A061579(n))^A198954(n)!` -/
def P3962139639696915263.Spec : Prop :=
  ∀ n, P3962139639696915263.a n = A187783 n

end A187783

/-! ## A187783.P10106765263731257375

`A089759(A061579(n))+char[A246285(n)]`
-/

namespace A187783.P10106765263731257375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246285 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187783.P10106765263731257375

namespace A187783

/-- `A089759(A061579(n))+char[A246285(n)]` -/
def P10106765263731257375.Spec : Prop :=
  ∀ n, P10106765263731257375.a n = A187783 n

end A187783

/-! ## A187783.P11754489840675811161

`A089759(A038722(n+2))/(1-and(2, n))²`
-/

namespace A187783.P11754489840675811161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A038722 (n + 2)).toNat : ℚ) / ((1 - (Nat.land 2 n : ℤ)) ^ 2 : ℚ)

end

end A187783.P11754489840675811161

namespace A187783

/-- `A089759(A038722(n+2))/(1-and(2, n))²` -/
def P11754489840675811161.Spec : Prop :=
  ∀ n, P11754489840675811161.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P15078503968505850892

`A089759(A038722(n+2))^A198954(n)!`
-/

namespace A187783.P15078503968505850892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A038722 (n + 2)).toNat ^ Nat.factorial (A198954 n).toNat

end

end A187783.P15078503968505850892

namespace A187783

/-- `A089759(A038722(n+2))^A198954(n)!` -/
def P15078503968505850892.Spec : Prop :=
  ∀ n, P15078503968505850892.a n = A187783 n

end A187783

/-! ## A187783.P14083680268830723477

`A089759(A038722(n+2))+char[A246285(n)]`
-/

namespace A187783.P14083680268830723477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246285 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A038722 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187783.P14083680268830723477

namespace A187783

/-- `A089759(A038722(n+2))+char[A246285(n)]` -/
def P14083680268830723477.Spec : Prop :=
  ∀ n, P14083680268830723477.a n = A187783 n

end A187783

/-! ## A187783.P4135865112150326685

`A089759(A038722(n+2))%(A355357(n)+1)`
-/

namespace A187783.P4135865112150326685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089759 (A038722 (n + 2)).toNat) (A355357 n + 1)

end

end A187783.P4135865112150326685

namespace A187783

/-- `A089759(A038722(n+2))%(A355357(n)+1)` -/
def P4135865112150326685.Spec : Prop :=
  ∀ n, P4135865112150326685.a n = A187783 n

end A187783

/-! ## A187783.P697227911959604546

`A155794(n)/A225816(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187783

/-- `A155794(n)/A225816(n)` -/
def P697227911959604546.Spec : Prop :=
  ∀ n, P697227911959604546.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P16904604971251748974

`A089759(A038722(n+2))²/A089759(A061579(n))`
-/

namespace A187783.P16904604971251748974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A038722 (n + 2)).toNat ^ 2 : ℚ) / (A089759 (A061579 n).toNat : ℚ)

end

end A187783.P16904604971251748974

namespace A187783

/-- `A089759(A038722(n+2))²/A089759(A061579(n))` -/
def P16904604971251748974.Spec : Prop :=
  ∀ n, P16904604971251748974.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P13276054526998244658

`A089759(A038722(n+2))²/A089759(A114327(n)+n)`
-/

namespace A187783.P13276054526998244658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A038722 (n + 2)).toNat ^ 2 : ℚ) / (A089759 (A114327 n + (n : ℤ)).toNat : ℚ)

end

end A187783.P13276054526998244658

namespace A187783

/-- `A089759(A038722(n+2))²/A089759(A114327(n)+n)` -/
def P13276054526998244658.Spec : Prop :=
  ∀ n, P13276054526998244658.a n = (A187783 n : ℚ)

end A187783

/-! ## A187783.P13114400251908969767

`A089759(A038722(n+2))²/A089759(A038722(n+1)-1)`
-/

namespace A187783.P13114400251908969767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (A038722 (n + 2)).toNat ^ 2 : ℚ) / (A089759 (A038722 (n + 1) - 1).toNat : ℚ)

end

end A187783.P13114400251908969767

namespace A187783

/-- `A089759(A038722(n+2))²/A089759(A038722(n+1)-1)` -/
def P13114400251908969767.Spec : Prop :=
  ∀ n, P13114400251908969767.a n = (A187783 n : ℚ)

end A187783

/-!
# A187784: Triangular array read by rows: T(n,k) is the number of ordered set partitions of {1,2,...,n} with exactly k singletons, n>=0, 0<=k<=n.

The programs for A187784, there is no canonical definition to state claims against.
-/

/-! ## A187784.P126064136781810340

`A220222(n)/A193592(A187829(n+1))`
-/

namespace A187784.P126064136781810340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220222 n : ℚ) / (A193592 (A187829 (n + 1)).toNat : ℚ)

end

end A187784.P126064136781810340

/-!
# A187787: Numbers k such that 2^(k+1) == 1 (mod k).

The programs for A187787, there is no canonical definition to state claims against.
-/

/-! ## A187787.P8942336037352102908

`A087965(n+1)-1`
-/

namespace A187787.P8942336037352102908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087965 (n + 1) - 1

end

end A187787.P8942336037352102908

/-! ## A187787.P13309029835213806864

`abs(1-A087965(Δ[n²]-n))`
-/

namespace A187787.P13309029835213806864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A087965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A187787.P13309029835213806864

/-! ## A187787.P4623955512238991532

`A146540(A019425(2*(n+1)))+A087965(n+1)`
-/

namespace A187787.P4623955512238991532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146540 (A019425 (2 * (n + 1))).toNat + A087965 (n + 1)

end

end A187787.P4623955512238991532

/-! ## A187787.P2161954840676094465

`abs(A087965(n+1)+A001489(n+1)+n)`
-/

namespace A187787.P2161954840676094465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087965 (n + 1) + (A001489 (n + 1) + (n : ℤ))|

end

end A187787.P2161954840676094465

/-! ## A187787.P9742366253282622667

`A317950(A278040(n))+A087965(n+1)`
-/

namespace A187787.P9742366253282622667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (A278040 n).toNat + A087965 (n + 1)

end

end A187787.P9742366253282622667

/-! ## A187787.P1938150416975540320

`A307445(A248595(n+1))+A087965(n+1)`
-/

namespace A187787.P1938150416975540320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A248595 (n + 1)).toNat + A087965 (n + 1)

end

end A187787.P1938150416975540320

/-!
# A187788: a(n) is the least step for the Sankt-Petrus-game with n white and n black stones.

The programs for A187788, there is no canonical definition to state claims against.
-/

/-! ## A187788.P8458864620918836314

`A321781(∑[n+1]+1)`
-/

namespace A187788.P8458864620918836314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321781 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187788.P8458864620918836314

/-! ## A187788.P699905112559557924

`A321781(A000124(n+1))+A264668(n)`
-/

namespace A187788.P699905112559557924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321781 (A000124 (n + 1)).toNat + A264668 n

end

end A187788.P699905112559557924

/-!
# A187791: Repeat n+1 times 2^A005187(n).

The programs for A187791, there is no canonical definition to state claims against.
-/

/-! ## A187791.P10570523335455217475

`gcd(2^n, ∑[2*char[∑[n+1]]]!)`
-/

namespace A187791.P10570523335455217475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A187791.P10570523335455217475

/-! ## A187791.P16977324268827223968

`∏[gcd(16, A076034(n+1))]`
-/

namespace A187791.P16977324268827223968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A076034 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187791.P16977324268827223968

/-! ## A187791.P6921337173702659904

`∏[gcd(32, A255545(n+1))]`
-/

namespace A187791.P6921337173702659904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A255545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187791.P6921337173702659904

/-! ## A187791.P7592227978646468354

`∏[gcd(64, A278505(n+1))]`
-/

namespace A187791.P7592227978646468354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 64 (A278505 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187791.P7592227978646468354

/-! ## A187791.P1163817431831793022

`A046161(∑[char[∑[n+1]]])`
-/

namespace A187791.P1163817431831793022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187791.P1163817431831793022

/-! ## A187791.P14642671086590013935

`lcm(a(n-1), A144816(n))` with `a(0)=1`
-/

namespace A187791.P14642671086590013935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A144816 n)

end

end A187791.P14642671086590013935

/-! ## A187791.P9232579620197406903

`A060818(2*∑[char[∑[n+1]]])`
-/

namespace A187791.P9232579620197406903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A187791.P9232579620197406903

/-! ## A187791.P14441254936638914698

`2^A005187(∑[char[∑[n+1]]])`
-/

namespace A187791.P14441254936638914698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A187791.P14441254936638914698

/-! ## A187791.P17954725279154335410

`A046644(2^∑[char[∑[n+1]]])`
-/

namespace A187791.P17954725279154335410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A187791.P17954725279154335410

/-! ## A187791.P3035547485370904653

`A317932(2^∑[char[∑[n+1]]])`
-/

namespace A187791.P3035547485370904653
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A187791.P3035547485370904653

/-!
# A187792: Fixed points of the permutation A093506.

The programs for A187792, there is no canonical definition to state claims against.
-/

/-! ## A187792.P16466177459715258081

`record[gcd(n+1, A093506(n+1))]`
-/

namespace A187792.P16466177459715258081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A093506 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187792.P16466177459715258081

/-! ## A187792.P15482482751687902762

`eq[n, A093506(A028310(n))]`
-/

namespace A187792.P15482482751687902762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093506 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187792.P15482482751687902762

/-! ## A187792.P16064129727369390275

`record[gcd(A093506(n+1), A103517(n))]`
-/

namespace A187792.P16064129727369390275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093506 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187792.P16064129727369390275

/-! ## A187792.P1097038977200948898

`record[gcd(A000027(n+1), A187790(n+1))]`
-/

namespace A187792.P1097038977200948898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A187790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187792.P1097038977200948898

/-! ## A187792.P13645765093378547512

`eq[A005349(n+1), A005349(A187790(n+1))]+1`
-/

namespace A187792.P13645765093378547512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A187790 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187792.P13645765093378547512

/-! ## A187792.P15818920584036650675

`eq[A065701(n+1), A065701(A187790(n+1))]+1`
-/

namespace A187792.P15818920584036650675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065701 (A187790 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187792.P15818920584036650675

/-!
# A187793: Sum of the deficient divisors of n.

The programs for A187793, the canonical program `A187793.P5149541496451924796` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187793 has offset 1).

The definition of A187793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187793.P5149541496451924796

`∑{d}[n+1, #*A294934(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A187793

/-- `∑{d}[n+1, #*A294934(#)]` -/
def P5149541496451924796.Spec : Prop :=
  ∀ n, P5149541496451924796.a n = A187793 (n + 1)

theorem P5149541496451924796.correct : P5149541496451924796.Spec := by
  intro n
  simp only [A187793, Nat.add_sub_cancel]

end A187793

/-! ## A187793.P8639756631270626531

`∑{d}[n+1, #*(1-A294936(#))]`
-/

namespace A187793.P8639756631270626531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - A294936 d)

end

end A187793.P8639756631270626531

namespace A187793

/-- `∑{d}[n+1, #*(1-A294936(#))]` -/
def P8639756631270626531.Spec : Prop :=
  ∀ n, P8639756631270626531.a n = A187793 (n + 1)

end A187793

/-! ## A187793.P17711184000225552873

`A294886(n+1)+(n+1)*A294934(n+1)`
-/

namespace A187793.P17711184000225552873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + (n + 1 : ℤ) * A294934 (n + 1)

end

end A187793.P17711184000225552873

namespace A187793

/-- `A294886(n+1)+(n+1)*A294934(n+1)` -/
def P17711184000225552873.Spec : Prop :=
  ∀ n, P17711184000225552873.a n = A187793 (n + 1)

end A187793

/-! ## A187793.P150769416258217948

`A000203(n+1)-(A187795(n+1)+A187794(n+1))`
-/

namespace A187793.P150769416258217948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A187795 (n + 1) + A187794 (n + 1))

end

end A187793.P150769416258217948

namespace A187793

/-- `A000203(n+1)-(A187795(n+1)+A187794(n+1))` -/
def P150769416258217948.Spec : Prop :=
  ∀ n, P150769416258217948.a n = A187793 (n + 1)

end A187793

/-! ## A187793.P17383022107919565125

`A296075(n+1)+A118759(A300657(n+1))`
-/

namespace A187793.P17383022107919565125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) + A118759 (A300657 (n + 1)).toNat

end

end A187793.P17383022107919565125

namespace A187793

/-- `A296075(n+1)+A118759(A300657(n+1))` -/
def P17383022107919565125.Spec : Prop :=
  ∀ n, P17383022107919565125.a n = A187793 (n + 1)

end A187793

/-! ## A187793.P5898282652552441940

`A118759(A300657(n+1))+∑{d}[n+1, 2*#-A000203(#)]`
-/

namespace A187793.P5898282652552441940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A300657 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - A000203 d)

end

end A187793.P5898282652552441940

namespace A187793

/-- `A118759(A300657(n+1))+∑{d}[n+1, 2*#-A000203(#)]` -/
def P5898282652552441940.Spec : Prop :=
  ∀ n, P5898282652552441940.a n = A187793 (n + 1)

end A187793

/-!
# A187794: Sum of the perfect divisors of n.

The programs for A187794, the canonical program `A187794.P17499645583050046868` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187794 has offset 1).

The definition of A187794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187794.P17499645583050046868

`A000203(n+1)-(A187795(n+1)+A187793(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187794

/-- `A000203(n+1)-(A187795(n+1)+A187793(n+1))` -/
def P17499645583050046868.Spec : Prop :=
  ∀ n, P17499645583050046868.a n = A187794 (n + 1)

theorem P17499645583050046868.correct : P17499645583050046868.Spec := by
  intro n
  simp only [A187794, Nat.add_sub_cancel]

end A187794

/-! ## A187794.P10701974302479263148

`A325470(A245453(n+1))-1`
-/

namespace A187794.P10701974302479263148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (A245453 (n + 1)).toNat - 1

end

end A187794.P10701974302479263148

namespace A187794

/-- `A325470(A245453(n+1))-1` -/
def P10701974302479263148.Spec : Prop :=
  ∀ n, P10701974302479263148.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P6502524595184206164

`Δ[A027642(n)]%A325470(A245453(n+1))`
-/

namespace A187794.P6502524595184206164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A325470 (A245453 (n + 1)).toNat)

end

end A187794.P6502524595184206164

namespace A187794

/-- `Δ[A027642(n)]%A325470(A245453(n+1))` -/
def P6502524595184206164.Spec : Prop :=
  ∀ n, P6502524595184206164.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P7747782551120405812

`and(2*A056594(2*n), A325470(A245453(n+1)))`
-/

namespace A187794.P7747782551120405812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A056594 (2 * n)) (A325470 (A245453 (n + 1)).toNat)

end

end A187794.P7747782551120405812

namespace A187794

/-- `and(2*A056594(2*n), A325470(A245453(n+1)))` -/
def P7747782551120405812.Spec : Prop :=
  ∀ n, P7747782551120405812.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P17326742464588137025

`(A325470(A245453(n+1))+A005843(n))%Δ[n²]`
-/

namespace A187794.P17326742464588137025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325470 (A245453 (n + 1)).toNat + A005843 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187794.P17326742464588137025

namespace A187794

/-- `(A325470(A245453(n+1))+A005843(n))%Δ[n²]` -/
def P17326742464588137025.Spec : Prop :=
  ∀ n, P17326742464588137025.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P17098251959525113756

`(A325470(A245453(n+1))+2*n+1)%A005843(n+1)`
-/

namespace A187794.P17098251959525113756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325470 (A245453 (n + 1)).toNat + (2 * n + 1 : ℤ)) (A005843 (n + 1))

end

end A187794.P17098251959525113756

namespace A187794

/-- `(A325470(A245453(n+1))+2*n+1)%A005843(n+1)` -/
def P17098251959525113756.Spec : Prop :=
  ∀ n, P17098251959525113756.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P9195637053121544438

`(A325470(n+1)-1)%A222233(A245612(n))`
-/

namespace A187794.P9195637053121544438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325470 (n + 1) - 1) (A222233 (A245612 n).toNat)

end

end A187794.P9195637053121544438

namespace A187794

/-- `(A325470(n+1)-1)%A222233(A245612(n))` -/
def P9195637053121544438.Spec : Prop :=
  ∀ n, P9195637053121544438.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P8139668222662740690

`A130696(A325470(n+1))`
-/

namespace A187794.P8139668222662740690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A325470 (n + 1)).toNat

end

end A187794.P8139668222662740690

namespace A187794

/-- `A130696(A325470(n+1))` -/
def P8139668222662740690.Spec : Prop :=
  ∀ n, P8139668222662740690.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P12884490839547556015

`A057918(A325470(n+1)²)`
-/

namespace A187794.P12884490839547556015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A325470 (n + 1) ^ 2).toNat

end

end A187794.P12884490839547556015

namespace A187794

/-- `A057918(A325470(n+1)²)` -/
def P12884490839547556015.Spec : Prop :=
  ∀ n, P12884490839547556015.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P15245538654146567441

`A214526(A325470(n+1)²)`
-/

namespace A187794.P15245538654146567441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A325470 (n + 1) ^ 2).toNat

end

end A187794.P15245538654146567441

namespace A187794

/-- `A214526(A325470(n+1)²)` -/
def P15245538654146567441.Spec : Prop :=
  ∀ n, P15245538654146567441.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P7675397952897241426

`A259361(A325470(n+1)²)`
-/

namespace A187794.P7675397952897241426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A325470 (n + 1) ^ 2).toNat

end

end A187794.P7675397952897241426

namespace A187794

/-- `A259361(A325470(n+1)²)` -/
def P7675397952897241426.Spec : Prop :=
  ∀ n, P7675397952897241426.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P450748479885031311

`A089867(A325470(n+1)-1)`
-/

namespace A187794.P450748479885031311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A325470 (n + 1) - 1).toNat

end

end A187794.P450748479885031311

namespace A187794

/-- `A089867(A325470(n+1)-1)` -/
def P450748479885031311.Spec : Prop :=
  ∀ n, P450748479885031311.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P12878158052261291492

`A000188(A325470(n+1)²)-1`
-/

namespace A187794.P12878158052261291492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A325470 (n + 1) ^ 2).toNat - 1

end

end A187794.P12878158052261291492

namespace A187794

/-- `A000188(A325470(n+1)²)-1` -/
def P12878158052261291492.Spec : Prop :=
  ∀ n, P12878158052261291492.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P655937512447265991

`2*A319571(A325470(n+1)²)`
-/

namespace A187794.P655937512447265991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319571 (A325470 (n + 1) ^ 2).toNat

end

end A187794.P655937512447265991

namespace A187794

/-- `2*A319571(A325470(n+1)²)` -/
def P655937512447265991.Spec : Prop :=
  ∀ n, P655937512447265991.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P11635869223533397682

`A236674(A325470(n+1)+3)-3`
-/

namespace A187794.P11635869223533397682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A325470 (n + 1) + 3).toNat - 3

end

end A187794.P11635869223533397682

namespace A187794

/-- `A236674(A325470(n+1)+3)-3` -/
def P11635869223533397682.Spec : Prop :=
  ∀ n, P11635869223533397682.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P4244238812827371158

`A325470(n+1)-A325470(∑{d}[∑[n], #]+1)`
-/

namespace A187794.P4244238812827371158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1) - A325470 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A187794.P4244238812827371158

namespace A187794

/-- `A325470(n+1)-A325470(∑{d}[∑[n], #]+1)` -/
def P4244238812827371158.Spec : Prop :=
  ∀ n, P4244238812827371158.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P14947988270586239731

`A319571(A004275(A325470(n+1))²)`
-/

namespace A187794.P14947988270586239731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A004275 (A325470 (n + 1)).toNat ^ 2).toNat

end

end A187794.P14947988270586239731

namespace A187794

/-- `A319571(A004275(A325470(n+1))²)` -/
def P14947988270586239731.Spec : Prop :=
  ∀ n, P14947988270586239731.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P10688542054898798194

`A325470(n+1)-A325470(A130321(n+1))`
-/

namespace A187794.P10688542054898798194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1) - A325470 (A130321 (n + 1)).toNat

end

end A187794.P10688542054898798194

namespace A187794

/-- `A325470(n+1)-A325470(A130321(n+1))` -/
def P10688542054898798194.Spec : Prop :=
  ∀ n, P10688542054898798194.a n = A187794 (n + 1)

end A187794

/-! ## A187794.P12478200958193538951

`A325470(n+1)-A061494(A325470(n+1)+1)`
-/

namespace A187794.P12478200958193538951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1) - A061494 (A325470 (n + 1) + 1).toNat

end

end A187794.P12478200958193538951

namespace A187794

/-- `A325470(n+1)-A061494(A325470(n+1)+1)` -/
def P12478200958193538951.Spec : Prop :=
  ∀ n, P12478200958193538951.a n = A187794 (n + 1)

end A187794

/-!
# A187795: Sum of the abundant divisors of n.

The programs for A187795, the canonical program `A187795.P6752293008617933550` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187795 has offset 1).

The definition of A187795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187795.P6752293008617933550

`∑{d}[n+1, #*A294937(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187795

/-- `∑{d}[n+1, #*A294937(#)]` -/
def P6752293008617933550.Spec : Prop :=
  ∀ n, P6752293008617933550.a n = A187795 (n + 1)

theorem P6752293008617933550.correct : P6752293008617933550.Spec := by
  intro n
  simp only [A187795, Nat.add_sub_cancel]

end A187795

/-! ## A187795.P11791481027215895853

`A294889(n+1)+(n+1)*A294937(n+1)`
-/

namespace A187795.P11791481027215895853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1) + (n + 1 : ℤ) * A294937 (n + 1)

end

end A187795.P11791481027215895853

namespace A187795

/-- `A294889(n+1)+(n+1)*A294937(n+1)` -/
def P11791481027215895853.Spec : Prop :=
  ∀ n, P11791481027215895853.a n = A187795 (n + 1)

end A187795

/-! ## A187795.P8822369187517082347

`A000203(n+1)-(A187794(n+1)+A187793(n+1))`
-/

namespace A187795.P8822369187517082347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A187794 (n + 1) + A187793 (n + 1))

end

end A187795.P8822369187517082347

namespace A187795

/-- `A000203(n+1)-(A187794(n+1)+A187793(n+1))` -/
def P8822369187517082347.Spec : Prop :=
  ∀ n, P8822369187517082347.a n = A187795 (n + 1)

end A187795

/-! ## A187795.P9593888900929859989

`(A000203(n+1)-A294888(n+1))*A294937(n+1)`
-/

namespace A187795.P9593888900929859989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A294888 (n + 1)) * A294937 (n + 1)

end

end A187795.P9593888900929859989

namespace A187795

/-- `(A000203(n+1)-A294888(n+1))*A294937(n+1)` -/
def P9593888900929859989.Spec : Prop :=
  ∀ n, P9593888900929859989.a n = A187795 (n + 1)

end A187795

/-!
# A187796: Primes whose digits are a permutation of (0, ..., m) for some m.

The programs for A187796, there is no canonical definition to state claims against.
-/

/-! ## A187796.P4328690204294945682

`∩[A068710(n+1), A199168(n+1)]`
-/

namespace A187796.P4328690204294945682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187796.P4328690204294945682

/-! ## A187796.P11173592885758459589

`∩[A068710(n+1), A107411(n)]`
-/

namespace A187796.P11173592885758459589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187796.P11173592885758459589

/-! ## A187796.P9228001990624845450

`∩[A177119(n+1), A199168(n+1)]`
-/

namespace A187796.P9228001990624845450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187796.P9228001990624845450

/-! ## A187796.P15564714109424476702

`∩[A177119(n+1), A107411(n)]`
-/

namespace A187796.P15564714109424476702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187796.P15564714109424476702

/-!
# A187797: Numbers having at least two different ordered partitions p+q and (p+2)+(q-2) where p, q, p+2 and q-2 are all prime.

The programs for A187797, there is no canonical definition to state claims against.
-/

/-! ## A187797.P14342190381860125198

`A334160(n+1)-2`
-/

namespace A187797.P14342190381860125198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1) - 2

end

end A187797.P14342190381860125198

/-! ## A187797.P16125899974526105945

`A249628(ceil(sqrt(∑[2*n]))+2)`
-/

namespace A187797.P16125899974526105945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 2).toNat

end

end A187797.P16125899974526105945

/-! ## A187797.P14200722672794287685

`A249628(n+3)-floor(acot(n)²)`
-/

namespace A187797.P14200722672794287685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (n + 3) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A187797.P14200722672794287685

/-! ## A187797.P5675334234969866606

`2*(eq[2, A240697(n+1)]+1)`
-/

namespace A187797.P5675334234969866606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187797.P5675334234969866606

/-! ## A187797.P8606310473278410814

`eq[2, A240697(gcd(n, ceil(n/2))+1)]+2`
-/

namespace A187797.P8606310473278410814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (Int.gcd (n : ℤ) ⌈(n : ℚ) / 2⌉ + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A187797.P8606310473278410814

/-! ## A187797.P12890025613419021176

`A023444(A334160(n+1))`
-/

namespace A187797.P12890025613419021176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A334160 (n + 1)).toNat

end

end A187797.P12890025613419021176

/-! ## A187797.P10818626822034919593

`record[A249628(A305793(n+5))]`
-/

namespace A187797.P10818626822034919593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (A305793 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187797.P10818626822034919593

/-! ## A187797.P10859849370243647110

`A103517(eq[2, A240697(n+1)])`
-/

namespace A187797.P10859849370243647110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187797.P10859849370243647110

/-! ## A187797.P11185571812600633030

`A020739(eq[2, A240697(n+3)])`
-/

namespace A187797.P11185571812600633030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187797.P11185571812600633030

/-! ## A187797.P2013321752293892699

`A249628(n+3)-A000038(n)`
-/

namespace A187797.P2013321752293892699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (n + 3) - A000038 n

end

end A187797.P2013321752293892699

/-!
# A187798: Decimal expansion of (3-phi)/2, where phi is the golden ratio.

The programs for A187798, there is no canonical definition to state claims against.
-/

/-! ## A187798.P5805250027036232464

`9-A019827(n)`
-/

namespace A187798.P5805250027036232464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019827 n

end

end A187798.P5805250027036232464

/-! ## A187798.P4419850928701713840

`A187426(n)+C(A027746(a(n-1)+1), 8)` with `a(0)=6`
-/

namespace A187798.P4419850928701713840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A187426 (n + 1) + (Nat.choose (A027746 (a (n - 1) + 1).toNat).toNat 8 : ℤ)

end

end A187798.P4419850928701713840

/-! ## A187798.P4053155157002469635

`A187426(n)+C(a(n-1), A129852(a(n-1)+1))` with `a(0)=6`
-/

namespace A187798.P4053155157002469635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A187426 (n + 1) + (Nat.choose (a (n - 1)).toNat (A129852 (a (n - 1) + 1).toNat).toNat : ℤ)

end

end A187798.P4053155157002469635

/-! ## A187798.P17157400897628974397

`A187426(n)+A187799(n)-A229760(n)`
-/

namespace A187798.P17157400897628974397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187426 (n + 1) + (A187799 (n + 1) - A229760 (n + 1))

end

end A187798.P17157400897628974397

/-! ## A187798.P6582073609423982634

`9-A239798(n+1)`
-/

namespace A187798.P6582073609423982634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A239798 (n + 1 + 1)

end

end A187798.P6582073609423982634

/-! ## A187798.P2454913003462242982

`floor(ratio[A016861(n)])*A187426(n)`
-/

namespace A187798.P2454913003462242982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ * A187426 (n + 1)

end

end A187798.P2454913003462242982

/-! ## A187798.P2973478338338994365

`A225667(n+1)+A187426(n)-A229759(n+1)`
-/

namespace A187798.P2973478338338994365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225667 (n + 1 + 1) + (A187426 (n + 1) - A229759 (n + 1 + 1))

end

end A187798.P2973478338338994365

/-! ## A187798.P7198167180101286122

`A001622(A151878(n))*A187426(n)`
-/

namespace A187798.P7198167180101286122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A151878 n).toNat + 1) * A187426 (n + 1)

end

end A187798.P7198167180101286122

/-!
# A187799: Decimal expansion of 20/phi^2, where phi is the golden ratio. Also (with offset 0), decimal expansion of 3 - sqrt(5).

The programs for A187799, there is no canonical definition to state claims against.
-/

/-! ## A187799.P13676069420152446535

`9-A002163(n+1)`
-/

namespace A187799.P13676069420152446535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002163 (n + 1 + 1)

end

end A187799.P13676069420152446535

/-! ## A187799.P15161189987448843040

`A244847(n+1)`
-/

namespace A187799.P15161189987448843040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244847 (n + 1)

end

end A187799.P15161189987448843040

/-! ## A187799.P369717669693905491

`9-A098317(n+1)`
-/

namespace A187799.P369717669693905491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A098317 (n + 1 + 1)

end

end A187799.P369717669693905491

/-! ## A187799.P15428267053463174591

`9-A134945(n+1)`
-/

namespace A187799.P15428267053463174591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A134945 (n + 1 + 1)

end

end A187799.P15428267053463174591

/-! ## A187799.P1196984069088705891

`9-A134972(n+1)`
-/

namespace A187799.P1196984069088705891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A134972 (n + 1 + 1)

end

end A187799.P1196984069088705891

/-! ## A187799.P16414056000023037587

`9-A229780(n+1)`
-/

namespace A187799.P16414056000023037587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A229780 (n + 1)

end

end A187799.P16414056000023037587

/-! ## A187799.P87263462131224111

`9-A242671(n+1)`
-/

namespace A187799.P87263462131224111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A242671 (n + 1)

end

end A187799.P87263462131224111

