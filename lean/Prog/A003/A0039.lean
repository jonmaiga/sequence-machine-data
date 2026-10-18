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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003901: Degrees of irreducible representations of group L5(2).

The programs for A003901, there is no canonical definition to state claims against.
-/

/-! ## A003901.P3888738778884662198

`or(31, A282177(a(n-1)+1))*A001651(n+1)` with `a(0)=1, a(1)=30`
-/

namespace A003901.P3888738778884662198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  Int.lor 31 (A282177 (a (n - 1) + 1).toNat) * A001651 (n + 1)

end

end A003901.P3888738778884662198

/-!
# A003906: Degrees of irreducible representations of Janko group J3.

The programs for A003906, there is no canonical definition to state claims against.
-/

/-! ## A003906.P14426380025650110304

`A137897(A147812(n+5)-A194840(3*n+1))`
-/

namespace A003906.P14426380025650110304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137897 (A147812 (n + 5) - A194840 (3 * n + 1)).toNat

end

end A003906.P14426380025650110304

/-!
# A003908: Degrees of irreducible representations of Higman-Sims group HS.

The programs for A003908, there is no canonical definition to state claims against.
-/

/-! ## A003908.P5072912379531701232

`∑[A347436(A005586(n))]`
-/

namespace A003908.P5072912379531701232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 (A005586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003908.P5072912379531701232

/-!
# A003909: Degrees of irreducible representations of McLaughlin group McL.

The programs for A003909, there is no canonical definition to state claims against.
-/

/-! ## A003909.P1304301704447939749

`A008948(∑[A008971(floor(ϕ*(n+1)))])`
-/

namespace A003909.P1304301704447939749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003909.P1304301704447939749

/-!
# A003910: Degrees of irreducible representations of Conway group Co3.

The programs for A003910, there is no canonical definition to state claims against.
-/

/-! ## A003910.P15277127649181454590

`A003911(floor(sqrt(A003871(3*n+1))))`
-/

namespace A003910.P15277127649181454590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003911 (Int.sqrt (A003871 (3 * n + 1))).toNat

end

end A003910.P15277127649181454590

/-!
# A003911: Degrees of irreducible representations of Conway group Co2.

The programs for A003911, there is no canonical definition to state claims against.
-/

/-! ## A003911.P16287166900686444000

`A003910(A041871(n))`
-/

namespace A003911.P16287166900686444000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003910 (A041871 n).toNat

end

end A003911.P16287166900686444000

/-!
# A003912: Degrees of irreducible representations of Held group He.

The programs for A003912, there is no canonical definition to state claims against.
-/

/-! ## A003912.P17254587621357796554

`A155109(A188274(n+1))`
-/

namespace A003912.P17254587621357796554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155109 (A188274 (n + 1)).toNat

end

end A003912.P17254587621357796554

/-!
# A003921: 

The programs for A003921, there is no canonical definition to state claims against.
-/

/-! ## A003921.P18045411504638640899

`∏[A171499(A000005(Δ[4^n]))]`
-/

namespace A003921.P18045411504638640899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171499 (A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003921.P18045411504638640899

/-!
# A003923: Order of universal Chevalley group B_n (2) or symplectic group Sp(2n,2).

The programs for A003923, there is no canonical definition to state claims against.
-/

/-! ## A003923.P17548417504177147411

`C(4^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A003923.P17548417504177147411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (4 ^ n) 2 * a (n - 1)

end

end A003923.P17548417504177147411

/-! ## A003923.P4148331856380738622

`((4^n)²-4^n)/2*a(n-1)` with `a(0)=1`
-/

namespace A003923.P4148331856380738622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((4 ^ n) ^ 2 : ℤ) - (4 ^ n : ℤ) : ℚ) / 2 * a (n - 1)

end

end A003923.P4148331856380738622

/-! ## A003923.P123801484149526852

`A003053(Δ[n²])`
-/

namespace A003923.P123801484149526852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003923.P123801484149526852

/-! ## A003923.P542661553259906275

`2^n*A053291(n)`
-/

namespace A003923.P542661553259906275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A053291 n

end

end A003923.P542661553259906275

/-!
# A003931: Order of universal Chevalley group B_2(q), q = prime power.

The programs for A003931, there is no canonical definition to state claims against.
-/

/-! ## A003931.P13105754821308728738

`A208139(A060615(n))`
-/

namespace A003931.P13105754821308728738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208139 (A060615 n).toNat

end

end A003931.P13105754821308728738

/-! ## A003931.P8166769317738583004

`A002378(A056798(n+2))*A003841(n+1)`
-/

namespace A003931.P8166769317738583004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A056798 (n + 2)).toNat * A003841 (n + 1)

end

end A003931.P8166769317738583004

/-! ## A003931.P18250888066627620519

`A329119(n+1)²*A002378(A056798(n+2))`
-/

namespace A003931.P18250888066627620519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) ^ 2 * A002378 (A056798 (n + 2)).toNat

end

end A003931.P18250888066627620519

/-! ## A003931.P16198570471308297374

`A002378(A056798(n+2))*A099764(A181062(n+2))`
-/

namespace A003931.P16198570471308297374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A056798 (n + 2)).toNat * A099764 (A181062 (n + 2)).toNat

end

end A003931.P16198570471308297374

/-! ## A003931.P18189555746818238351

`A329119(n+1)^A020639(2*(n+1))*A002378(A056798(n+2))`
-/

namespace A003931.P18189555746818238351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) * (A002378 (A056798 (n + 2)).toNat : ℚ)

end

end A003931.P18189555746818238351

/-!
# A003938: Order of (usually) simple Chevalley group B_2(q), q = prime power.

The programs for A003938, there is no canonical definition to state claims against.
-/

/-! ## A003938.P6813044547493532125

`A003931(n+1)/A054546(A003949(n))`
-/

namespace A003938.P6813044547493532125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003931 (n + 1) : ℚ) / (A054546 (A003949 n).toNat : ℚ)

end

end A003938.P6813044547493532125

/-! ## A003938.P3258051366917395329

`A208139(A060615(n))/A054546(A003949(n))`
-/

namespace A003938.P3258051366917395329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208139 (A060615 n).toNat : ℚ) / (A054546 (A003949 n).toNat : ℚ)

end

end A003938.P3258051366917395329

/-!
# A003945: Expansion of g.f. (1+x)/(1-2*x).

The programs for A003945, the canonical program `A003945.P5232319813539648853` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003945 has offset 0).

The definition of A003945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003945.P5232319813539648853

`2*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003945

/-- `2*a(n-1)` -/
def P5232319813539648853.Spec : Prop :=
  ∀ n, (P5232319813539648853.a n : ℤ) = A003945 n

theorem P5232319813539648853.correct : P5232319813539648853.Spec := by
  intro n
  simp only [A003945]

end A003945

/-! ## A003945.P4196177522689467056

`2^n+floor(2^(n-1))`
-/

namespace A003945.P4196177522689467056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003945.P4196177522689467056

namespace A003945

/-- `2^n+floor(2^(n-1))` -/
def P4196177522689467056.Spec : Prop :=
  ∀ n, P4196177522689467056.a n = A003945 n

end A003945

/-! ## A003945.P6174743706793884484

`or(2^n, floor(2^(n-1)))`
-/

namespace A003945.P6174743706793884484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003945.P6174743706793884484

namespace A003945

/-- `or(2^n, floor(2^(n-1)))` -/
def P6174743706793884484.Spec : Prop :=
  ∀ n, P6174743706793884484.a n = A003945 n

end A003945

/-! ## A003945.P15269197902648107838

`xor(2^n, floor(2^(n-1)))`
-/

namespace A003945.P15269197902648107838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003945.P15269197902648107838

namespace A003945

/-- `xor(2^n, floor(2^(n-1)))` -/
def P15269197902648107838.Spec : Prop :=
  ∀ n, P15269197902648107838.a n = A003945 n

end A003945

/-! ## A003945.P231627098116967719

`a(n-1)/sqrt(1/4)` with `a(0)=1, a(1)=3`
-/

namespace A003945.P231627098116967719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A003945.P231627098116967719

namespace A003945

/-- `a(n-1)/sqrt(1/4)` -/
def P231627098116967719.Spec : Prop :=
  ∀ n, P231627098116967719.a n = (A003945 n : ℝ)

end A003945

/-! ## A003945.P4190189336440928078

`lcm(2^(n-1), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A003945.P4190189336440928078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003945.P4190189336440928078

namespace A003945

/-- `lcm(2^(n-1), a(n-1))` -/
def P4190189336440928078.Spec : Prop :=
  ∀ n, (P4190189336440928078.a n : ℤ) = A003945 n

end A003945

/-! ## A003945.P7244658928653343480

`∑[a(n-1)-(char[2]-a(n-1))]` with `a(0)=1`
-/

namespace A003945.P7244658928653343480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003945.P7244658928653343480

namespace A003945

/-- `∑[a(n-1)-(char[2]-a(n-1))]` -/
def P7244658928653343480.Spec : Prop :=
  ∀ n, P7244658928653343480.a n = A003945 n

end A003945

/-! ## A003945.P816726731273335506

`record[A074323(n)]`
-/

namespace A003945.P816726731273335506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003945.P816726731273335506

namespace A003945

/-- `record[A074323(n)]` -/
def P816726731273335506.Spec : Prop :=
  ∀ n, P816726731273335506.a n = A003945 n

end A003945

/-! ## A003945.P10988703006634946680

`A122391(n+2)`
-/

namespace A003945.P10988703006634946680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 2)

end

end A003945.P10988703006634946680

namespace A003945

/-- `A122391(n+2)` -/
def P10988703006634946680.Spec : Prop :=
  ∀ n, P10988703006634946680.a n = A003945 n

end A003945

/-! ## A003945.P9044957326373577161

`A074323(2*n)`
-/

namespace A003945.P9044957326373577161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n)

end

end A003945.P9044957326373577161

namespace A003945

/-- `A074323(2*n)` -/
def P9044957326373577161.Spec : Prop :=
  ∀ n, P9044957326373577161.a n = A003945 n

end A003945

/-! ## A003945.P6176428215007547484

`∑[abs(A110164(n))]`
-/

namespace A003945.P6176428215007547484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110164 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003945.P6176428215007547484

namespace A003945

/-- `∑[abs(A110164(n))]` -/
def P6176428215007547484.Spec : Prop :=
  ∀ n, P6176428215007547484.a n = A003945 n

end A003945

/-! ## A003945.P16887728893142702796

`A029744(Δ[n²])`
-/

namespace A003945.P16887728893142702796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003945.P16887728893142702796

namespace A003945

/-- `A029744(Δ[n²])` -/
def P16887728893142702796.Spec : Prop :=
  ∀ n, P16887728893142702796.a n = A003945 n

end A003945

/-! ## A003945.P5903071896140758923

`A081026(Δ[n²])`
-/

namespace A003945.P5903071896140758923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003945.P5903071896140758923

namespace A003945

/-- `A081026(Δ[n²])` -/
def P5903071896140758923.Spec : Prop :=
  ∀ n, P5903071896140758923.a n = A003945 n

end A003945

/-! ## A003945.P11313814400460775886

`∑[∑[A122391(n)]]`
-/

namespace A003945.P11313814400460775886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003945.P11313814400460775886

namespace A003945

/-- `∑[∑[A122391(n)]]` -/
def P11313814400460775886.Spec : Prop :=
  ∀ n, P11313814400460775886.a n = A003945 n

end A003945

/-! ## A003945.P7760041777094754790

`∑[A098011(n+2)]`
-/

namespace A003945.P7760041777094754790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003945.P7760041777094754790

namespace A003945

/-- `∑[A098011(n+2)]` -/
def P7760041777094754790.Spec : Prop :=
  ∀ n, P7760041777094754790.a n = A003945 n

end A003945

/-! ## A003945.P14854577614751689155

`record[A164073(n+1)]`
-/

namespace A003945.P14854577614751689155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003945.P14854577614751689155

namespace A003945

/-- `record[A164073(n+1)]` -/
def P14854577614751689155.Spec : Prop :=
  ∀ n, P14854577614751689155.a n = A003945 n

end A003945

/-! ## A003945.P14749588469157410551

`record[A302784(n+2)]`
-/

namespace A003945.P14749588469157410551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003945.P14749588469157410551

namespace A003945

/-- `record[A302784(n+2)]` -/
def P14749588469157410551.Spec : Prop :=
  ∀ n, P14749588469157410551.a n = A003945 n

end A003945

/-! ## A003945.P14542039822484484685

`record[Δ[A076736(n+3)]]`
-/

namespace A003945.P14542039822484484685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003945.P14542039822484484685

namespace A003945

/-- `record[Δ[A076736(n+3)]]` -/
def P14542039822484484685.Spec : Prop :=
  ∀ n, P14542039822484484685.a n = A003945 n

end A003945

/-!
# A003946: Expansion of (1+x)/(1-3*x).

The programs for A003946, the canonical program `A003946.P6303885415535079842` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003946 has offset 0).

The definition of A003946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003946.P6303885415535079842

`floor(4*3^(n-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003946

/-- `floor(4*3^(n-1))` -/
def P6303885415535079842.Spec : Prop :=
  ∀ n, P6303885415535079842.a n = A003946 n

theorem P6303885415535079842.correct : P6303885415535079842.Spec := by
  intro n
  simp only [A003946]

end A003946

/-! ## A003946.P3894009957641767943

`3*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A003946.P3894009957641767943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1)

end

end A003946.P3894009957641767943

namespace A003946

/-- `3*a(n-1)` -/
def P3894009957641767943.Spec : Prop :=
  ∀ n, (P3894009957641767943.a n : ℤ) = A003946 n

end A003946

/-! ## A003946.P4617755420985108596

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A003946.P4617755420985108596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003946.P4617755420985108596

namespace A003946

/-- `abs(∏[-a(n-1)])` -/
def P4617755420985108596.Spec : Prop :=
  ∀ n, P4617755420985108596.a n = A003946 n

end A003946

/-! ## A003946.P786447192712073441

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=4`
-/

namespace A003946.P786447192712073441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A003946.P786447192712073441

namespace A003946

/-- `a(n-1)/cot(atan(3))` -/
def P786447192712073441.Spec : Prop :=
  ∀ n, P786447192712073441.a n = (A003946 n : ℝ)

end A003946

/-! ## A003946.P17277516742043965716

`a(n-1)/sqrt(1/9)` with `a(0)=1, a(1)=4`
-/

namespace A003946.P17277516742043965716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A003946.P17277516742043965716

namespace A003946

/-- `a(n-1)/sqrt(1/9)` -/
def P17277516742043965716.Spec : Prop :=
  ∀ n, P17277516742043965716.a n = (A003946 n : ℝ)

end A003946

/-! ## A003946.P2997598858420107073

`lcm(3^(n-1), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A003946.P2997598858420107073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003946.P2997598858420107073

namespace A003946

/-- `lcm(3^(n-1), a(n-1))` -/
def P2997598858420107073.Spec : Prop :=
  ∀ n, (P2997598858420107073.a n : ℤ) = A003946 n

end A003946

/-! ## A003946.P7039176567862457169

`a(n-1)/(1/2)²-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A003946.P7039176567862457169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 1)

end

end A003946.P7039176567862457169

namespace A003946

/-- `a(n-1)/(1/2)²-a(n-1)` -/
def P7039176567862457169.Spec : Prop :=
  ∀ n, P7039176567862457169.a n = (A003946 n : ℚ)

end A003946

/-! ## A003946.P17627202505766200733

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A003946.P17627202505766200733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A003946.P17627202505766200733

namespace A003946

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P17627202505766200733.Spec : Prop :=
  ∀ n, (P17627202505766200733.a n : ℤ) = A003946 n

end A003946

/-! ## A003946.P467205792999269438

`2-((2-a(n-1))%a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A003946.P467205792999269438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (Int.tmod (2 - a (n - 1)) (a (n - 1)) - a (n - 1) - a (n - 1))

end

end A003946.P467205792999269438

namespace A003946

/-- `2-((2-a(n-1))%a(n-1)-a(n-1)-a(n-1))` -/
def P467205792999269438.Spec : Prop :=
  ∀ n, P467205792999269438.a n = A003946 n

end A003946

/-! ## A003946.P7904148628910053489

`∑[A080923(n)]`
-/

namespace A003946.P7904148628910053489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003946.P7904148628910053489

namespace A003946

/-- `∑[A080923(n)]` -/
def P7904148628910053489.Spec : Prop :=
  ∀ n, P7904148628910053489.a n = A003946 n

end A003946

/-! ## A003946.P4119188633142768379

`record[A074324(n)]`
-/

namespace A003946.P4119188633142768379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003946.P4119188633142768379

namespace A003946

/-- `record[A074324(n)]` -/
def P4119188633142768379.Spec : Prop :=
  ∀ n, P4119188633142768379.a n = A003946 n

end A003946

/-! ## A003946.P6543039813360425553

`record[A326339(n)]`
-/

namespace A003946.P6543039813360425553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003946.P6543039813360425553

namespace A003946

/-- `record[A326339(n)]` -/
def P6543039813360425553.Spec : Prop :=
  ∀ n, P6543039813360425553.a n = A003946 n

end A003946

/-! ## A003946.P14591841500590012815

`A052156(n+1)`
-/

namespace A003946.P14591841500590012815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1)

end

end A003946.P14591841500590012815

namespace A003946

/-- `A052156(n+1)` -/
def P14591841500590012815.Spec : Prop :=
  ∀ n, P14591841500590012815.a n = A003946 n

end A003946

/-! ## A003946.P12950039815346284622

`A326339(n+2)`
-/

namespace A003946.P12950039815346284622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 2)

end

end A003946.P12950039815346284622

namespace A003946

/-- `A326339(n+2)` -/
def P12950039815346284622.Spec : Prop :=
  ∀ n, P12950039815346284622.a n = A003946 n

end A003946

/-! ## A003946.P1830897220928199770

`A068911(2*n)`
-/

namespace A003946.P1830897220928199770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (2 * n)

end

end A003946.P1830897220928199770

namespace A003946

/-- `A068911(2*n)` -/
def P1830897220928199770.Spec : Prop :=
  ∀ n, P1830897220928199770.a n = A003946 n

end A003946

/-! ## A003946.P12767496719021897021

`A074324(2*n)`
-/

namespace A003946.P12767496719021897021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n)

end

end A003946.P12767496719021897021

namespace A003946

/-- `A074324(2*n)` -/
def P12767496719021897021.Spec : Prop :=
  ∀ n, P12767496719021897021.a n = A003946 n

end A003946

/-! ## A003946.P18066692764607374359

`A211221(Δ[n²])`
-/

namespace A003946.P18066692764607374359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003946.P18066692764607374359

namespace A003946

/-- `A211221(Δ[n²])` -/
def P18066692764607374359.Spec : Prop :=
  ∀ n, P18066692764607374359.a n = A003946 n

end A003946

/-! ## A003946.P2605020344986586932

`∑[record[A118264(n)]]`
-/

namespace A003946.P2605020344986586932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003946.P2605020344986586932

namespace A003946

/-- `∑[record[A118264(n)]]` -/
def P2605020344986586932.Spec : Prop :=
  ∀ n, P2605020344986586932.a n = A003946 n

end A003946

/-! ## A003946.P14109173983835014358

`record[A166552(n+1)]`
-/

namespace A003946.P14109173983835014358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003946.P14109173983835014358

namespace A003946

/-- `record[A166552(n+1)]` -/
def P14109173983835014358.Spec : Prop :=
  ∀ n, P14109173983835014358.a n = A003946 n

end A003946

/-!
# A003947: Expansion of (1+x)/(1-4*x).

The programs for A003947, the canonical program `A003947.P6343020803482352576` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003947 has offset 0).

The definition of A003947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003947.P6343020803482352576

`4*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003947

/-- `4*a(n-1)` -/
def P6343020803482352576.Spec : Prop :=
  ∀ n, (P6343020803482352576.a n : ℤ) = A003947 n

theorem P6343020803482352576.correct : P6343020803482352576.Spec := by
  intro n
  simp only [A003947]

end A003947

/-! ## A003947.P804148364369748000

`A146523(n)*A011782(n)`
-/

namespace A003947.P804148364369748000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n * A011782 n

end

end A003947.P804148364369748000

namespace A003947

/-- `A146523(n)*A011782(n)` -/
def P804148364369748000.Spec : Prop :=
  ∀ n, P804148364369748000.a n = A003947 n

end A003947

/-! ## A003947.P7694129770829434718

`floor(5*4^(n-1))`
-/

namespace A003947.P7694129770829434718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003947.P7694129770829434718

namespace A003947

/-- `floor(5*4^(n-1))` -/
def P7694129770829434718.Spec : Prop :=
  ∀ n, P7694129770829434718.a n = A003947 n

end A003947

/-! ## A003947.P15807946172040387124

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A003947.P15807946172040387124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003947.P15807946172040387124

namespace A003947

/-- `abs(∏[-a(n-1)])` -/
def P15807946172040387124.Spec : Prop :=
  ∀ n, P15807946172040387124.a n = A003947 n

end A003947

/-! ## A003947.P6551990623829850528

`or(4^n, floor(4^(n-1)))`
-/

namespace A003947.P6551990623829850528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003947.P6551990623829850528

namespace A003947

/-- `or(4^n, floor(4^(n-1)))` -/
def P6551990623829850528.Spec : Prop :=
  ∀ n, P6551990623829850528.a n = A003947 n

end A003947

/-! ## A003947.P13321412869317925530

`xor(4^n, floor(4^(n-1)))`
-/

namespace A003947.P13321412869317925530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003947.P13321412869317925530

namespace A003947

/-- `xor(4^n, floor(4^(n-1)))` -/
def P13321412869317925530.Spec : Prop :=
  ∀ n, P13321412869317925530.a n = A003947 n

end A003947

/-! ## A003947.P8633164620534703908

`round(record[5*(-2)^(n-2)])`
-/

namespace A003947.P8633164620534703908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A003947.P8633164620534703908

namespace A003947

/-- `round(record[5*(-2)^(n-2)])` -/
def P8633164620534703908.Spec : Prop :=
  ∀ n, P8633164620534703908.a n = A003947 n

end A003947

/-! ## A003947.P324374998049746581

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=5`
-/

namespace A003947.P324374998049746581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A003947.P324374998049746581

namespace A003947

/-- `a(n-1)/(1/2)²` -/
def P324374998049746581.Spec : Prop :=
  ∀ n, P324374998049746581.a n = (A003947 n : ℚ)

end A003947

/-! ## A003947.P16944819663336109955

`lcm(4^(n-1), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A003947.P16944819663336109955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003947.P16944819663336109955

namespace A003947

/-- `lcm(4^(n-1), a(n-1))` -/
def P16944819663336109955.Spec : Prop :=
  ∀ n, (P16944819663336109955.a n : ℤ) = A003947 n

end A003947

/-! ## A003947.P14809445079747524806

`floor(a(n-1))/(1-3/4)` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A003947.P14809445079747524806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (⌊a (n - 1)⌋ : ℚ) / (1 - (3 : ℚ) / 4)

end

end A003947.P14809445079747524806

namespace A003947

/-- `floor(a(n-1))/(1-3/4)` -/
def P14809445079747524806.Spec : Prop :=
  ∀ n, P14809445079747524806.a n = (A003947 n : ℚ)

end A003947

/-! ## A003947.P16577304350729271014

`a(n-1)+a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A003947.P16577304350729271014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 1)))

end

end A003947.P16577304350729271014

namespace A003947

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)` -/
def P16577304350729271014.Spec : Prop :=
  ∀ n, (P16577304350729271014.a n : ℤ) = A003947 n

theorem P16577304350729271014.correct : P16577304350729271014.Spec := by
  intro n
  simp only [A003947, Nat.add_sub_cancel, A003947.P16577304350729271014.a, A003947.P6343020803482352576.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003947

/-! ## A003947.P12195796390482152128

`A084215(2*n)`
-/

namespace A003947.P12195796390482152128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (2 * n)

end

end A003947.P12195796390482152128

namespace A003947

/-- `A084215(2*n)` -/
def P12195796390482152128.Spec : Prop :=
  ∀ n, P12195796390482152128.a n = A003947 n

end A003947

/-! ## A003947.P15911888109455811100

`A104721(2*n)`
-/

namespace A003947.P15911888109455811100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (2 * n)

end

end A003947.P15911888109455811100

namespace A003947

/-- `A104721(2*n)` -/
def P15911888109455811100.Spec : Prop :=
  ∀ n, P15911888109455811100.a n = A003947 n

end A003947

/-! ## A003947.P16134515952606629749

`record[Δ[A134683(n)]]`
-/

namespace A003947.P16134515952606629749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003947.P16134515952606629749

namespace A003947

/-- `record[Δ[A134683(n)]]` -/
def P16134515952606629749.Spec : Prop :=
  ∀ n, P16134515952606629749.a n = A003947 n

end A003947

/-! ## A003947.P206296390322147437

`record[Δ[A284354(n)]]`
-/

namespace A003947.P206296390322147437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003947.P206296390322147437

namespace A003947

/-- `record[Δ[A284354(n)]]` -/
def P206296390322147437.Spec : Prop :=
  ∀ n, P206296390322147437.a n = A003947 n

end A003947

/-! ## A003947.P15431672426742915843

`abs(A166577(2*n))`
-/

namespace A003947.P15431672426742915843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166577 (2 * n)|

end

end A003947.P15431672426742915843

namespace A003947

/-- `abs(A166577(2*n))` -/
def P15431672426742915843.Spec : Prop :=
  ∀ n, P15431672426742915843.a n = A003947 n

end A003947

/-! ## A003947.P2013445950279197349

`Δ[A305750(2*n)]`
-/

namespace A003947.P2013445950279197349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003947.P2013445950279197349

namespace A003947

/-- `Δ[A305750(2*n)]` -/
def P2013445950279197349.Spec : Prop :=
  ∀ n, P2013445950279197349.a n = A003947 n

end A003947

/-! ## A003947.P5647459401319020402

`A084215(Δ[n²])/2`
-/

namespace A003947.P5647459401319020402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A003947.P5647459401319020402

namespace A003947

/-- `A084215(Δ[n²])/2` -/
def P5647459401319020402.Spec : Prop :=
  ∀ n, P5647459401319020402.a n = (A003947 n : ℚ)

end A003947

/-!
# A003948: Expansion of (1+x)/(1-5*x).

The programs for A003948, the canonical program `A003948.P12066992895393399357` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003948 has offset 0).

The definition of A003948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003948.P12066992895393399357

`5*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003948

/-- `5*a(n-1)` -/
def P12066992895393399357.Spec : Prop :=
  ∀ n, (P12066992895393399357.a n : ℤ) = A003948 n

theorem P12066992895393399357.correct : P12066992895393399357.Spec := by
  intro n
  simp only [A003948]

end A003948

/-! ## A003948.P9118491099315874743

`floor(6*5^(n-1))`
-/

namespace A003948.P9118491099315874743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003948.P9118491099315874743

namespace A003948

/-- `floor(6*5^(n-1))` -/
def P9118491099315874743.Spec : Prop :=
  ∀ n, P9118491099315874743.a n = A003948 n

end A003948

/-! ## A003948.P1436784481465966759

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=5`
-/

namespace A003948.P1436784481465966759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003948.P1436784481465966759

namespace A003948

/-- `abs(∏[-a(n-1)])` -/
def P1436784481465966759.Spec : Prop :=
  ∀ n, P1436784481465966759.a n = A003948 n

end A003948

/-! ## A003948.P2689420670944396706

`6*(ceil(acot(n))+4)^(n-1)`
-/

namespace A003948.P2689420670944396706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A003948.P2689420670944396706

namespace A003948

/-- `6*(ceil(acot(n))+4)^(n-1)` -/
def P2689420670944396706.Spec : Prop :=
  ∀ n, P2689420670944396706.a n = (A003948 n : ℚ)

end A003948

/-! ## A003948.P16785239216324549765

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=6`
-/

namespace A003948.P16785239216324549765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A003948.P16785239216324549765

namespace A003948

/-- `a(n-1)/(1-4/5)` -/
def P16785239216324549765.Spec : Prop :=
  ∀ n, P16785239216324549765.a n = (A003948 n : ℚ)

end A003948

/-! ## A003948.P11622420677531953644

`lcm(5^(n-1), a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A003948.P11622420677531953644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003948.P11622420677531953644

namespace A003948

/-- `lcm(5^(n-1), a(n-1))` -/
def P11622420677531953644.Spec : Prop :=
  ∀ n, (P11622420677531953644.a n : ℤ) = A003948 n

end A003948

/-! ## A003948.P7722014085947065540

`Δ[A005053(n)/2]`
-/

namespace A003948.P7722014085947065540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005053 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003948.P7722014085947065540

namespace A003948

/-- `Δ[A005053(n)/2]` -/
def P7722014085947065540.Spec : Prop :=
  ∀ n, P7722014085947065540.a n = (A003948 n : ℚ)

end A003948

/-! ## A003948.P13599393548270476211

`ceil(A235702(n+1)/4)`
-/

namespace A003948.P13599393548270476211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A235702 (n + 1) : ℚ) / 4⌉

end

end A003948.P13599393548270476211

namespace A003948

/-- `ceil(A235702(n+1)/4)` -/
def P13599393548270476211.Spec : Prop :=
  ∀ n, P13599393548270476211.a n = A003948 n

end A003948

/-! ## A003948.P16844759017633806033

`xor(3, 3*A020699(n))+1`
-/

namespace A003948.P16844759017633806033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (3 * A020699 n) + 1

end

end A003948.P16844759017633806033

namespace A003948

/-- `xor(3, 3*A020699(n))+1` -/
def P16844759017633806033.Spec : Prop :=
  ∀ n, P16844759017633806033.a n = A003948 n

end A003948

/-! ## A003948.P2726667412752927122

`ceil(A289586(2*n+1)/2)`
-/

namespace A003948.P2726667412752927122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289586 (2 * n + 1) : ℚ) / 2⌉

end

end A003948.P2726667412752927122

namespace A003948

/-- `ceil(A289586(2*n+1)/2)` -/
def P2726667412752927122.Spec : Prop :=
  ∀ n, P2726667412752927122.a n = A003948 n

end A003948

/-! ## A003948.P8135524132246473719

`A020729(n)-A005054(n)`
-/

namespace A003948.P8135524132246473719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n - A005054 n

end

end A003948.P8135524132246473719

namespace A003948

/-- `A020729(n)-A005054(n)` -/
def P8135524132246473719.Spec : Prop :=
  ∀ n, P8135524132246473719.a n = A003948 n

end A003948

/-! ## A003948.P10485346455279973257

`lcm(A005053(n), A020699(n))`
-/

namespace A003948.P10485346455279973257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005053 n) (A020699 n)

end

end A003948.P10485346455279973257

namespace A003948

/-- `lcm(A005053(n), A020699(n))` -/
def P10485346455279973257.Spec : Prop :=
  ∀ n, (P10485346455279973257.a n : ℤ) = A003948 n

end A003948

/-! ## A003948.P326241441116006684

`A081655(n)+1-A005054(n)`
-/

namespace A003948.P326241441116006684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 n + (1 - A005054 n)

end

end A003948.P326241441116006684

namespace A003948

/-- `A081655(n)+1-A005054(n)` -/
def P326241441116006684.Spec : Prop :=
  ∀ n, P326241441116006684.a n = A003948 n

end A003948

/-! ## A003948.P9336617785441310348

`(2-A000007(n))*A005053(n)`
-/

namespace A003948.P9336617785441310348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A005053 n

end

end A003948.P9336617785441310348

namespace A003948

/-- `(2-A000007(n))*A005053(n)` -/
def P9336617785441310348.Spec : Prop :=
  ∀ n, P9336617785441310348.a n = A003948 n

end A003948

/-! ## A003948.P12251317576090695792

`2*A000351(n)-A005054(n)`
-/

namespace A003948.P12251317576090695792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A005054 n

end

end A003948.P12251317576090695792

namespace A003948

/-- `2*A000351(n)-A005054(n)` -/
def P12251317576090695792.Spec : Prop :=
  ∀ n, P12251317576090695792.a n = A003948 n

end A003948

/-! ## A003948.P1702457965048570792

`A005053(n)*A174296(2*n)`
-/

namespace A003948.P1702457965048570792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 n * A174296 (2 * n)

end

end A003948.P1702457965048570792

namespace A003948

/-- `A005053(n)*A174296(2*n)` -/
def P1702457965048570792.Spec : Prop :=
  ∀ n, P1702457965048570792.a n = A003948 n

end A003948

/-! ## A003948.P15146930799197377037

`A026383(2*n+1)-A026395(2*n)`
-/

namespace A003948.P15146930799197377037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (2 * n + 1) - A026395 (2 * n)

end

end A003948.P15146930799197377037

namespace A003948

/-- `A026383(2*n+1)-A026395(2*n)` -/
def P15146930799197377037.Spec : Prop :=
  ∀ n, P15146930799197377037.a n = A003948 n

end A003948

/-! ## A003948.P4225224572482650520

`A026395(2*n+1)-A026395(2*n)`
-/

namespace A003948.P4225224572482650520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (2 * n + 1) - A026395 (2 * n)

end

end A003948.P4225224572482650520

namespace A003948

/-- `A026395(2*n+1)-A026395(2*n)` -/
def P4225224572482650520.Spec : Prop :=
  ∀ n, P4225224572482650520.a n = A003948 n

end A003948

/-! ## A003948.P7785961357340986275

`A020639(A004011(n))*A005053(n)`
-/

namespace A003948.P7785961357340986275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A005053 n

end

end A003948.P7785961357340986275

namespace A003948

/-- `A020639(A004011(n))*A005053(n)` -/
def P7785961357340986275.Spec : Prop :=
  ∀ n, P7785961357340986275.a n = A003948 n

end A003948

/-!
# A003949: Expansion of g.f. (1+x)/(1-6*x).

The programs for A003949, the canonical program `A003949.P13597451553281504701` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003949 has offset 0).

The definition of A003949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003949.P13597451553281504701

`6*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003949

/-- `6*a(n-1)` -/
def P13597451553281504701.Spec : Prop :=
  ∀ n, (P13597451553281504701.a n : ℤ) = A003949 n

theorem P13597451553281504701.correct : P13597451553281504701.Spec := by
  intro n
  simp only [A003949]

end A003949

/-! ## A003949.P9046870772160793664

`floor(7*6^(n-1))`
-/

namespace A003949.P9046870772160793664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003949.P9046870772160793664

namespace A003949

/-- `floor(7*6^(n-1))` -/
def P9046870772160793664.Spec : Prop :=
  ∀ n, P9046870772160793664.a n = A003949 n

end A003949

/-! ## A003949.P3731298131984778999

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=6`
-/

namespace A003949.P3731298131984778999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003949.P3731298131984778999

namespace A003949

/-- `abs(∏[-a(n-1)])` -/
def P3731298131984778999.Spec : Prop :=
  ∀ n, P3731298131984778999.a n = A003949 n

end A003949

/-! ## A003949.P14420121942261581532

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=7`
-/

namespace A003949.P14420121942261581532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A003949.P14420121942261581532

namespace A003949

/-- `a(n-1)/(1-5/6)` -/
def P14420121942261581532.Spec : Prop :=
  ∀ n, P14420121942261581532.a n = (A003949 n : ℚ)

end A003949

/-! ## A003949.P1634235951377677041

`lcm(6^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A003949.P1634235951377677041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003949.P1634235951377677041

namespace A003949

/-- `lcm(6^(n-1), a(n-1))` -/
def P1634235951377677041.Spec : Prop :=
  ∀ n, (P1634235951377677041.a n : ℤ) = A003949 n

end A003949

/-! ## A003949.P7640599861397879148

`record[a(n-2)+lcm(5, a(n-2))]` with `a(0)=1, a(1)=7`
-/

namespace A003949.P7640599861397879148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) + Nat.lcm 5 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003949.P7640599861397879148

namespace A003949

/-- `record[a(n-2)+lcm(5, a(n-2))]` -/
def P7640599861397879148.Spec : Prop :=
  ∀ n, (P7640599861397879148.a n : ℤ) = A003949 n

end A003949

/-! ## A003949.P9241913230405282132

`3^(n-1)*A125176(n+2)`
-/

namespace A003949.P9241913230405282132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A125176 (n + 2) : ℚ)

end

end A003949.P9241913230405282132

namespace A003949

/-- `3^(n-1)*A125176(n+2)` -/
def P9241913230405282132.Spec : Prop :=
  ∀ n, P9241913230405282132.a n = (A003949 n : ℚ)

end A003949

/-! ## A003949.P16956814631487241888

`A011782(n)*A082541(n)`
-/

namespace A003949.P16956814631487241888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A082541 n

end

end A003949.P16956814631487241888

namespace A003949

/-- `A011782(n)*A082541(n)` -/
def P16956814631487241888.Spec : Prop :=
  ∀ n, P16956814631487241888.a n = A003949 n

end A003949

/-! ## A003949.P1560274131146021081

`A133494(n)*A135092(n)`
-/

namespace A003949.P1560274131146021081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n * A135092 n

end

end A003949.P1560274131146021081

namespace A003949

/-- `A133494(n)*A135092(n)` -/
def P1560274131146021081.Spec : Prop :=
  ∀ n, P1560274131146021081.a n = A003949 n

end A003949

/-! ## A003949.P11613193732041056180

`∑[A084215(n)*A141495(n)]`
-/

namespace A003949.P11613193732041056180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n * A141495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003949.P11613193732041056180

namespace A003949

/-- `∑[A084215(n)*A141495(n)]` -/
def P11613193732041056180.Spec : Prop :=
  ∀ n, P11613193732041056180.a n = A003949 n

end A003949

/-! ## A003949.P13356746381474212287

`2*A000400(n)-A052934(n)`
-/

namespace A003949.P13356746381474212287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n - A052934 n

end

end A003949.P13356746381474212287

namespace A003949

/-- `2*A000400(n)-A052934(n)` -/
def P13356746381474212287.Spec : Prop :=
  ∀ n, P13356746381474212287.a n = A003949 n

end A003949

/-! ## A003949.P16156984199255771397

`(A270576(n)+A000400(n))/2`
-/

namespace A003949.P16156984199255771397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270576 n + A000400 n : ℚ) / 2

end

end A003949.P16156984199255771397

namespace A003949

/-- `(A270576(n)+A000400(n))/2` -/
def P16156984199255771397.Spec : Prop :=
  ∀ n, P16156984199255771397.a n = (A003949 n : ℚ)

end A003949

/-! ## A003949.P10679661580590476109

`record[A016116(n)*A166481(n+1)]`
-/

namespace A003949.P10679661580590476109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A166481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003949.P10679661580590476109

namespace A003949

/-- `record[A016116(n)*A166481(n+1)]` -/
def P10679661580590476109.Spec : Prop :=
  ∀ n, P10679661580590476109.a n = A003949 n

end A003949

/-! ## A003949.P15687244564680212239

`A026549(2*n+1)-A052934(n)`
-/

namespace A003949.P15687244564680212239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1) - A052934 n

end

end A003949.P15687244564680212239

namespace A003949

/-- `A026549(2*n+1)-A052934(n)` -/
def P15687244564680212239.Spec : Prop :=
  ∀ n, P15687244564680212239.a n = A003949 n

end A003949

/-! ## A003949.P8640843187773824688

`A011782(n)*A135765(A034856(n+1))`
-/

namespace A003949.P8640843187773824688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A135765 (A034856 (n + 1)).toNat

end

end A003949.P8640843187773824688

namespace A003949

/-- `A011782(n)*A135765(A034856(n+1))` -/
def P8640843187773824688.Spec : Prop :=
  ∀ n, P8640843187773824688.a n = A003949 n

end A003949

/-! ## A003949.P266427548298762737

`A000079(n+1)*A000244(n)-A052934(n)`
-/

namespace A003949.P266427548298762737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000244 n - A052934 n

end

end A003949.P266427548298762737

namespace A003949

/-- `A000079(n+1)*A000244(n)-A052934(n)` -/
def P266427548298762737.Spec : Prop :=
  ∀ n, P266427548298762737.a n = A003949 n

end A003949

/-! ## A003949.P17507909997581280509

`A011782(n+1)*A025192(n+1)-A052934(n)`
-/

namespace A003949.P17507909997581280509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A025192 (n + 1) - A052934 n

end

end A003949.P17507909997581280509

namespace A003949

/-- `A011782(n+1)*A025192(n+1)-A052934(n)` -/
def P17507909997581280509.Spec : Prop :=
  ∀ n, P17507909997581280509.a n = A003949 n

end A003949

/-! ## A003949.P15994657172131247112

`A055846(n+1)-A169604(n)`
-/

namespace A003949.P15994657172131247112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055846 (n + 1) - A169604 n

end

end A003949.P15994657172131247112

namespace A003949

/-- `A055846(n+1)-A169604(n)` -/
def P15994657172131247112.Spec : Prop :=
  ∀ n, P15994657172131247112.a n = A003949 n

end A003949

/-! ## A003949.P12057822467070964829

`A055846(n+1)-3*A000400(n)`
-/

namespace A003949.P12057822467070964829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055846 (n + 1) - 3 * A000400 n

end

end A003949.P12057822467070964829

namespace A003949

/-- `A055846(n+1)-3*A000400(n)` -/
def P12057822467070964829.Spec : Prop :=
  ∀ n, P12057822467070964829.a n = A003949 n

end A003949

/-!
# A003950: Expansion of g.f.: (1+x)/(1-7*x).

The programs for A003950, the canonical program `A003950.P14499265844489917575` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003950 has offset 0).

The definition of A003950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003950.P14499265844489917575

`7*a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003950

/-- `7*a(n-1)` -/
def P14499265844489917575.Spec : Prop :=
  ∀ n, (P14499265844489917575.a n : ℤ) = A003950 n

theorem P14499265844489917575.correct : P14499265844489917575.Spec := by
  intro n
  simp only [A003950]

end A003950

/-! ## A003950.P5150721599708619004

`floor(8*7^(n-1))`
-/

namespace A003950.P5150721599708619004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003950.P5150721599708619004

namespace A003950

/-- `floor(8*7^(n-1))` -/
def P5150721599708619004.Spec : Prop :=
  ∀ n, P5150721599708619004.a n = A003950 n

end A003950

/-! ## A003950.P5421167084923896547

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=7`
-/

namespace A003950.P5421167084923896547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003950.P5421167084923896547

namespace A003950

/-- `abs(∏[-a(n-1)])` -/
def P5421167084923896547.Spec : Prop :=
  ∀ n, P5421167084923896547.a n = A003950 n

end A003950

/-! ## A003950.P12892899476946489864

`a(n-1)/(1-6/7)` with `a(0)=1, a(1)=8`
-/

namespace A003950.P12892899476946489864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7)

end

end A003950.P12892899476946489864

namespace A003950

/-- `a(n-1)/(1-6/7)` -/
def P12892899476946489864.Spec : Prop :=
  ∀ n, P12892899476946489864.a n = (A003950 n : ℚ)

end A003950

/-! ## A003950.P1035812195402020611

`lcm(7^(n-1), a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A003950.P1035812195402020611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003950.P1035812195402020611

namespace A003950

/-- `lcm(7^(n-1), a(n-1))` -/
def P1035812195402020611.Spec : Prop :=
  ∀ n, (P1035812195402020611.a n : ℤ) = A003950 n

end A003950

/-! ## A003950.P7282536832619357046

`7*floor(a(A023443(n)))` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A003950.P7282536832619357046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * a (A023443 n).toNat

end

end A003950.P7282536832619357046

namespace A003950

/-- `7*floor(a(A023443(n)))` -/
def P7282536832619357046.Spec : Prop :=
  ∀ n, (P7282536832619357046.a n : ℤ) = A003950 n

end A003950

/-! ## A003950.P2394596152018850665

`record[gcd(A055258(n), A105422(n))]`
-/

namespace A003950.P2394596152018850665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055258 n) (A105422 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003950.P2394596152018850665

namespace A003950

/-- `record[gcd(A055258(n), A105422(n))]` -/
def P2394596152018850665.Spec : Prop :=
  ∀ n, (P2394596152018850665.a n : ℤ) = A003950 n

end A003950

/-! ## A003950.P5198723183723281382

`A014963(A001316(n))*A270471(n)`
-/

namespace A003950.P5198723183723281382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A270471 n

end

end A003950.P5198723183723281382

namespace A003950

/-- `A014963(A001316(n))*A270471(n)` -/
def P5198723183723281382.Spec : Prop :=
  ∀ n, P5198723183723281382.a n = A003950 n

end A003950

/-! ## A003950.P16857285081218894518

`A059268(A000124(n))*A270471(n)`
-/

namespace A003950.P16857285081218894518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A000124 n).toNat * A270471 n

end

end A003950.P16857285081218894518

namespace A003950

/-- `A059268(A000124(n))*A270471(n)` -/
def P16857285081218894518.Spec : Prop :=
  ∀ n, P16857285081218894518.a n = A003950 n

end A003950

/-! ## A003950.P3427500865047400708

`A006530(A270438(n))*A270471(n)`
-/

namespace A003950.P3427500865047400708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270438 n).toNat * A270471 n

end

end A003950.P3427500865047400708

namespace A003950

/-- `A006530(A270438(n))*A270471(n)` -/
def P3427500865047400708.Spec : Prop :=
  ∀ n, P3427500865047400708.a n = A003950 n

end A003950

/-! ## A003950.P8607801996495370032

`A036452(A087246(n+1))*A270471(n)`
-/

namespace A003950.P8607801996495370032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A087246 (n + 1)).toNat * A270471 n

end

end A003950.P8607801996495370032

namespace A003950

/-- `A036452(A087246(n+1))*A270471(n)` -/
def P8607801996495370032.Spec : Prop :=
  ∀ n, P8607801996495370032.a n = A003950 n

end A003950

/-! ## A003950.P6550098422228660800

`A000420(n)+A000420(n)-A055272(n)`
-/

namespace A003950.P6550098422228660800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (A000420 n - A055272 n)

end

end A003950.P6550098422228660800

namespace A003950

/-- `A000420(n)+A000420(n)-A055272(n)` -/
def P6550098422228660800.Spec : Prop :=
  ∀ n, P6550098422228660800.a n = A003950 n

end A003950

/-! ## A003950.P10784429902202807166

`∑[A002001(n)]/A002001(n)*A055272(n)`
-/

namespace A003950.P10784429902202807166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A002001 n : ℚ) * (A055272 n : ℚ)

end

end A003950.P10784429902202807166

namespace A003950

/-- `∑[A002001(n)]/A002001(n)*A055272(n)` -/
def P10784429902202807166.Spec : Prop :=
  ∀ n, P10784429902202807166.a n = (A003950 n : ℚ)

end A003950

/-! ## A003950.P9308046816836558406

`∑[A011782(n)]/A011782(n)*A270471(n)`
-/

namespace A003950.P9308046816836558406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A011782 n : ℚ) * (A270471 n : ℚ)

end

end A003950.P9308046816836558406

namespace A003950

/-- `∑[A011782(n)]/A011782(n)*A270471(n)` -/
def P9308046816836558406.Spec : Prop :=
  ∀ n, P9308046816836558406.a n = (A003950 n : ℚ)

end A003950

/-! ## A003950.P3521853591361794641

`A223564(n+1)/8`
-/

namespace A003950.P3521853591361794641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223564 (n + 1) : ℚ) / 8

end

end A003950.P3521853591361794641

namespace A003950

/-- `A223564(n+1)/8` -/
def P3521853591361794641.Spec : Prop :=
  ∀ n, P3521853591361794641.a n = (A003950 n : ℚ)

end A003950

/-! ## A003950.P12903453292593399155

`2*A000420(n)-A055272(n)`
-/

namespace A003950.P12903453292593399155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n - A055272 n

end

end A003950.P12903453292593399155

namespace A003950

/-- `2*A000420(n)-A055272(n)` -/
def P12903453292593399155.Spec : Prop :=
  ∀ n, P12903453292593399155.a n = A003950 n

end A003950

/-! ## A003950.P10570648857294993948

`A123752(2*n+1)-A055272(n)`
-/

namespace A003950.P10570648857294993948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n + 1) - A055272 n

end

end A003950.P10570648857294993948

namespace A003950

/-- `A123752(2*n+1)-A055272(n)` -/
def P10570648857294993948.Spec : Prop :=
  ∀ n, P10570648857294993948.a n = A003950 n

end A003950

/-! ## A003950.P18293965470156928658

`∏{digits}[A002281(n)+1, #]`
-/

namespace A003950.P18293965470156928658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A003950.P18293965470156928658

namespace A003950

/-- `∏{digits}[A002281(n)+1, #]` -/
def P18293965470156928658.Spec : Prop :=
  ∀ n, (P18293965470156928658.a n : ℤ) = A003950 n

end A003950

/-!
# A003951: Expansion of g.f.: (1+x)/(1-8*x).

The programs for A003951, the canonical program `A003951.P1869996062675345711` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003951 has offset 0).

The definition of A003951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003951.P1869996062675345711

`8*a(n-1)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003951

/-- `8*a(n-1)` -/
def P1869996062675345711.Spec : Prop :=
  ∀ n, (P1869996062675345711.a n : ℤ) = A003951 n

theorem P1869996062675345711.correct : P1869996062675345711.Spec := by
  intro n
  simp only [A003951]

end A003951

/-! ## A003951.P13500436176835802320

`floor(9*8^(n-1))`
-/

namespace A003951.P13500436176835802320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003951.P13500436176835802320

namespace A003951

/-- `floor(9*8^(n-1))` -/
def P13500436176835802320.Spec : Prop :=
  ∀ n, P13500436176835802320.a n = A003951 n

end A003951

/-! ## A003951.P17416520114585404265

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=9, a(2)=8`
-/

namespace A003951.P17416520114585404265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003951.P17416520114585404265

namespace A003951

/-- `abs(∏[-a(n-1)])` -/
def P17416520114585404265.Spec : Prop :=
  ∀ n, P17416520114585404265.a n = A003951 n

end A003951

/-! ## A003951.P12203503330970940462

`lcm(8^(n-1), a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A003951.P12203503330970940462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003951.P12203503330970940462

namespace A003951

/-- `lcm(8^(n-1), a(n-1))` -/
def P12203503330970940462.Spec : Prop :=
  ∀ n, (P12203503330970940462.a n : ℤ) = A003951 n

end A003951

/-! ## A003951.P1086002092223647169

`abs(A279634(3*n))`
-/

namespace A003951.P1086002092223647169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279634 (3 * n)|

end

end A003951.P1086002092223647169

namespace A003951

/-- `abs(A279634(3*n))` -/
def P1086002092223647169.Spec : Prop :=
  ∀ n, P1086002092223647169.a n = A003951 n

end A003951

/-! ## A003951.P1646571842775905325

`2^(n-1)*A055841(n+1)`
-/

namespace A003951.P1646571842775905325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A055841 (n + 1) : ℚ)

end

end A003951.P1646571842775905325

namespace A003951

/-- `2^(n-1)*A055841(n+1)` -/
def P1646571842775905325.Spec : Prop :=
  ∀ n, P1646571842775905325.a n = (A003951 n : ℚ)

end A003951

/-! ## A003951.P4082468965366198615

`A003945(n)²*ceil(2^(n-1))`
-/

namespace A003951.P4082468965366198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n ^ 2 * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A003951.P4082468965366198615

namespace A003951

/-- `A003945(n)²*ceil(2^(n-1))` -/
def P4082468965366198615.Spec : Prop :=
  ∀ n, P4082468965366198615.a n = A003951 n

end A003951

/-! ## A003951.P760760770728393489

`A160824(A101328(n+2))`
-/

namespace A003951.P760760770728393489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (A101328 (n + 2)).toNat

end

end A003951.P760760770728393489

namespace A003951

/-- `A160824(A101328(n+2))` -/
def P760760770728393489.Spec : Prop :=
  ∀ n, P760760770728393489.a n = A003951 n

end A003951

/-! ## A003951.P17124838501632356021

`A002001(n)*A003945(n)`
-/

namespace A003951.P17124838501632356021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n * A003945 n

end

end A003951.P17124838501632356021

namespace A003951

/-- `A002001(n)*A003945(n)` -/
def P17124838501632356021.Spec : Prop :=
  ∀ n, P17124838501632356021.a n = A003951 n

end A003951

/-! ## A003951.P5374701063798664383

`record[A110164(n)]*A003945(n)`
-/

namespace A003951.P5374701063798664383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003945 n

end

end A003951.P5374701063798664383

namespace A003951

/-- `record[A110164(n)]*A003945(n)` -/
def P5374701063798664383.Spec : Prop :=
  ∀ n, P5374701063798664383.a n = A003951 n

end A003951

/-! ## A003951.P13877696856482897430

`2*A001018(n)-A055274(n)`
-/

namespace A003951.P13877696856482897430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n - A055274 n

end

end A003951.P13877696856482897430

namespace A003951

/-- `2*A001018(n)-A055274(n)` -/
def P13877696856482897430.Spec : Prop :=
  ∀ n, P13877696856482897430.a n = A003951 n

end A003951

/-! ## A003951.P11005889399432319750

`A003945(n)*A110164(2*n)`
-/

namespace A003951.P11005889399432319750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A110164 (2 * n)

end

end A003951.P11005889399432319750

namespace A003951

/-- `A003945(n)*A110164(2*n)` -/
def P11005889399432319750.Spec : Prop :=
  ∀ n, P11005889399432319750.a n = A003951 n

end A003951

/-! ## A003951.P18360403575632733061

`Δ[A042950(n)]*A110164(2*n)`
-/

namespace A003951.P18360403575632733061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110164 (2 * n)

end

end A003951.P18360403575632733061

namespace A003951

/-- `Δ[A042950(n)]*A110164(2*n)` -/
def P18360403575632733061.Spec : Prop :=
  ∀ n, P18360403575632733061.a n = A003951 n

end A003951

/-! ## A003951.P6426223852355030217

`A003945(n)*A098011(2*(n+1))`
-/

namespace A003951.P6426223852355030217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A098011 (2 * (n + 1))

end

end A003951.P6426223852355030217

namespace A003951

/-- `A003945(n)*A098011(2*(n+1))` -/
def P6426223852355030217.Spec : Prop :=
  ∀ n, P6426223852355030217.a n = A003951 n

end A003951

/-! ## A003951.P9174574463540969224

`A003945(n)*A122391(2*n+1)`
-/

namespace A003951.P9174574463540969224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A122391 (2 * n + 1)

end

end A003951.P9174574463540969224

namespace A003951

/-- `A003945(n)*A122391(2*n+1)` -/
def P9174574463540969224.Spec : Prop :=
  ∀ n, P9174574463540969224.a n = A003951 n

end A003951

/-! ## A003951.P10920134510434293964

`A110164(2*n)*A122391(n+2)`
-/

namespace A003951.P10920134510434293964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 (2 * n) * A122391 (n + 2)

end

end A003951.P10920134510434293964

namespace A003951

/-- `A110164(2*n)*A122391(n+2)` -/
def P10920134510434293964.Spec : Prop :=
  ∀ n, P10920134510434293964.a n = A003951 n

end A003951

/-! ## A003951.P3123084744066492496

`A029744(2*n+1)²*A011782(n)`
-/

namespace A003951.P3123084744066492496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * n + 1) ^ 2 * A011782 n

end

end A003951.P3123084744066492496

namespace A003951

/-- `A029744(2*n+1)²*A011782(n)` -/
def P3123084744066492496.Spec : Prop :=
  ∀ n, P3123084744066492496.a n = A003951 n

end A003951

/-! ## A003951.P366186768617954934

`Δ[A266550(n+2)]*A110164(2*n)`
-/

namespace A003951.P366186768617954934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110164 (2 * n)

end

end A003951.P366186768617954934

namespace A003951

/-- `Δ[A266550(n+2)]*A110164(2*n)` -/
def P366186768617954934.Spec : Prop :=
  ∀ n, P366186768617954934.a n = A003951 n

end A003951

/-! ## A003951.P606559378054805858

`A122391(2*n+1)*A122391(n+2)`
-/

namespace A003951.P606559378054805858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (2 * n + 1) * A122391 (n + 2)

end

end A003951.P606559378054805858

namespace A003951

/-- `A122391(2*n+1)*A122391(n+2)` -/
def P606559378054805858.Spec : Prop :=
  ∀ n, P606559378054805858.a n = A003951 n

end A003951

/-!
# A003952: Expansion of g.f.: (1+x)/(1-9*x).

The programs for A003952, the canonical program `A003952.P12613609292870275338` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003952 has offset 0).

The definition of A003952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003952.P12613609292870275338

`9*a(n-1)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003952

/-- `9*a(n-1)` -/
def P12613609292870275338.Spec : Prop :=
  ∀ n, (P12613609292870275338.a n : ℤ) = A003952 n

theorem P12613609292870275338.correct : P12613609292870275338.Spec := by
  intro n
  simp only [A003952]

end A003952

/-! ## A003952.P2774770865345904390

`floor(10*9^(n-1))`
-/

namespace A003952.P2774770865345904390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003952.P2774770865345904390

namespace A003952

/-- `floor(10*9^(n-1))` -/
def P2774770865345904390.Spec : Prop :=
  ∀ n, P2774770865345904390.a n = A003952 n

end A003952

/-! ## A003952.P13030168346976968837

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=10, a(2)=9`
-/

namespace A003952.P13030168346976968837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003952.P13030168346976968837

namespace A003952

/-- `abs(∏[-a(n-1)])` -/
def P13030168346976968837.Spec : Prop :=
  ∀ n, P13030168346976968837.a n = A003952 n

end A003952

/-! ## A003952.P11063405985140795924

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=10`
-/

namespace A003952.P11063405985140795924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A003952.P11063405985140795924

namespace A003952

/-- `a(n-1)/(1/3)²` -/
def P11063405985140795924.Spec : Prop :=
  ∀ n, P11063405985140795924.a n = (A003952 n : ℚ)

end A003952

/-! ## A003952.P13215898686164340176

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A003952.P13215898686164340176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003952.P13215898686164340176

namespace A003952

/-- `lcm(9^(n-1), a(n-1))` -/
def P13215898686164340176.Spec : Prop :=
  ∀ n, (P13215898686164340176.a n : ℤ) = A003952 n

end A003952

/-! ## A003952.P1303281402903881028

`Δ[A067403(n)/4]`
-/

namespace A003952.P1303281402903881028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067403 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003952.P1303281402903881028

namespace A003952

/-- `Δ[A067403(n)/4]` -/
def P1303281402903881028.Spec : Prop :=
  ∀ n, P1303281402903881028.a n = (A003952 n : ℚ)

end A003952

/-! ## A003952.P7222388924194927760

`A062107(2*(n+1))`
-/

namespace A003952.P7222388924194927760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062107 (2 * (n + 1))

end

end A003952.P7222388924194927760

namespace A003952

/-- `A062107(2*(n+1))` -/
def P7222388924194927760.Spec : Prop :=
  ∀ n, P7222388924194927760.a n = A003952 n

end A003952

/-! ## A003952.P13264825624364071604

`A280731(4*n+1)`
-/

namespace A003952.P13264825624364071604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280731 (4 * n + 1)

end

end A003952.P13264825624364071604

namespace A003952

/-- `A280731(4*n+1)` -/
def P13264825624364071604.Spec : Prop :=
  ∀ n, P13264825624364071604.a n = A003952 n

end A003952

/-! ## A003952.P1120595233280678033

`A062107(n+3+n)/3`
-/

namespace A003952.P1120595233280678033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062107 (n + 3 + n) : ℚ) / 3

end

end A003952.P1120595233280678033

namespace A003952

/-- `A062107(n+3+n)/3` -/
def P1120595233280678033.Spec : Prop :=
  ∀ n, P1120595233280678033.a n = (A003952 n : ℚ)

end A003952

/-! ## A003952.P3719037598009497060

`lcm(A067403(n), A270369(n))`
-/

namespace A003952.P3719037598009497060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067403 n) (A270369 n)

end

end A003952.P3719037598009497060

namespace A003952

/-- `lcm(A067403(n), A270369(n))` -/
def P3719037598009497060.Spec : Prop :=
  ∀ n, (P3719037598009497060.a n : ℤ) = A003952 n

end A003952

/-! ## A003952.P11844513150816174347

`A270369(n+1)-A055275(n)`
-/

namespace A003952.P11844513150816174347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 (n + 1) - A055275 n

end

end A003952.P11844513150816174347

namespace A003952

/-- `A270369(n+1)-A055275(n)` -/
def P11844513150816174347.Spec : Prop :=
  ∀ n, P11844513150816174347.a n = A003952 n

end A003952

/-! ## A003952.P15836929262671536511

`2*A001019(n)-A055275(n)`
-/

namespace A003952.P15836929262671536511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001019 n - A055275 n

end

end A003952.P15836929262671536511

namespace A003952

/-- `2*A001019(n)-A055275(n)` -/
def P15836929262671536511.Spec : Prop :=
  ∀ n, P15836929262671536511.a n = A003952 n

end A003952

/-! ## A003952.P1619464737779757988

`A008776(2*n)-A055275(n)`
-/

namespace A003952.P1619464737779757988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (2 * n) - A055275 n

end

end A003952.P1619464737779757988

namespace A003952

/-- `A008776(2*n)-A055275(n)` -/
def P1619464737779757988.Spec : Prop :=
  ∀ n, P1619464737779757988.a n = A003952 n

end A003952

/-! ## A003952.P2647705088261119421

`A000244(n)²+A140429(n)²`
-/

namespace A003952.P2647705088261119421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 + A140429 n ^ 2

end

end A003952.P2647705088261119421

namespace A003952

/-- `A000244(n)²+A140429(n)²` -/
def P2647705088261119421.Spec : Prop :=
  ∀ n, P2647705088261119421.a n = A003952 n

end A003952

/-! ## A003952.P9980931193741059812

`A141413(2*n)+A000244(n)²`
-/

namespace A003952.P9980931193741059812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (2 * n) + A000244 n ^ 2

end

end A003952.P9980931193741059812

namespace A003952

/-- `A141413(2*n)+A000244(n)²` -/
def P9980931193741059812.Spec : Prop :=
  ∀ n, P9980931193741059812.a n = A003952 n

end A003952

/-! ## A003952.P13360493615228493915

`A083423(2*n)+A140429(n)²`
-/

namespace A003952.P13360493615228493915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 (2 * n) + A140429 n ^ 2

end

end A003952.P13360493615228493915

namespace A003952

/-- `A083423(2*n)+A140429(n)²` -/
def P13360493615228493915.Spec : Prop :=
  ∀ n, P13360493615228493915.a n = A003952 n

end A003952

/-! ## A003952.P672248850839653561

`2*A000244(n)²-A055275(n)`
-/

namespace A003952.P672248850839653561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n ^ 2 - A055275 n

end

end A003952.P672248850839653561

namespace A003952

/-- `2*A000244(n)²-A055275(n)` -/
def P672248850839653561.Spec : Prop :=
  ∀ n, P672248850839653561.a n = A003952 n

end A003952

/-! ## A003952.P2238838378736336146

`A008776(n)²/2-A055275(n)`
-/

namespace A003952.P2238838378736336146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n ^ 2 : ℚ) / 2 - (A055275 n : ℚ)

end

end A003952.P2238838378736336146

namespace A003952

/-- `A008776(n)²/2-A055275(n)` -/
def P2238838378736336146.Spec : Prop :=
  ∀ n, P2238838378736336146.a n = (A003952 n : ℚ)

end A003952

/-! ## A003952.P2658978726164048127

`A025192(2*n+1)-A055275(n)`
-/

namespace A003952.P2658978726164048127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n + 1) - A055275 n

end

end A003952.P2658978726164048127

namespace A003952

/-- `A025192(2*n+1)-A055275(n)` -/
def P2658978726164048127.Spec : Prop :=
  ∀ n, P2658978726164048127.a n = A003952 n

end A003952

/-!
# A003953: Expansion of g.f.: (1+x)/(1-10*x).

The programs for A003953, the canonical program `A003953.P13265434498614281132` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003953 has offset 0).

The definition of A003953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003953.P13265434498614281132

`10*a(n-1)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003953

/-- `10*a(n-1)` -/
def P13265434498614281132.Spec : Prop :=
  ∀ n, (P13265434498614281132.a n : ℤ) = A003953 n

theorem P13265434498614281132.correct : P13265434498614281132.Spec := by
  intro n
  simp only [A003953]

end A003953

/-! ## A003953.P16396449455853709540

`floor(11*10^(n-1))`
-/

namespace A003953.P16396449455853709540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003953.P16396449455853709540

namespace A003953

/-- `floor(11*10^(n-1))` -/
def P16396449455853709540.Spec : Prop :=
  ∀ n, P16396449455853709540.a n = A003953 n

end A003953

/-! ## A003953.P13817358120395379369

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=11, a(2)=10`
-/

namespace A003953.P13817358120395379369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003953.P13817358120395379369

namespace A003953

/-- `abs(∏[-a(n-1)])` -/
def P13817358120395379369.Spec : Prop :=
  ∀ n, P13817358120395379369.a n = A003953 n

end A003953

/-! ## A003953.P4514178150723100508

`record[∏[10/a(n-1)]]` with `a(0)=1, a(1)=11`
-/

namespace A003953.P4514178150723100508
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 11] fun n f2 =>
  10 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003953.P4514178150723100508

namespace A003953

/-- `record[∏[10/a(n-1)]]` -/
def P4514178150723100508.Spec : Prop :=
  ∀ n, P4514178150723100508.a n = (A003953 n : ℚ)

end A003953

/-! ## A003953.P5924130383896061892

`record[a(n-2)+a(n-2)/(1/3)²]` with `a(0)=1, a(1)=11`
-/

namespace A003953.P5924130383896061892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 2) + f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003953.P5924130383896061892

namespace A003953

/-- `record[a(n-2)+a(n-2)/(1/3)²]` -/
def P5924130383896061892.Spec : Prop :=
  ∀ n, P5924130383896061892.a n = (A003953 n : ℚ)

end A003953

/-! ## A003953.P11149760181460233410

`∑[A105694(n)]`
-/

namespace A003953.P11149760181460233410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003953.P11149760181460233410

namespace A003953

/-- `∑[A105694(n)]` -/
def P11149760181460233410.Spec : Prop :=
  ∀ n, P11149760181460233410.a n = A003953 n

end A003953

/-! ## A003953.P6807305447035294604

`A164851(∑[n])`
-/

namespace A003953.P6807305447035294604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003953.P6807305447035294604

namespace A003953

/-- `A164851(∑[n])` -/
def P6807305447035294604.Spec : Prop :=
  ∀ n, P6807305447035294604.a n = A003953 n

end A003953

/-! ## A003953.P5176898630609046113

`record[A164851(n)]`
-/

namespace A003953.P5176898630609046113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003953.P5176898630609046113

namespace A003953

/-- `record[A164851(n)]` -/
def P5176898630609046113.Spec : Prop :=
  ∀ n, P5176898630609046113.a n = A003953 n

end A003953

/-! ## A003953.P17073270553139012263

`A109868(Δ[n²])`
-/

namespace A003953.P17073270553139012263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109868 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003953.P17073270553139012263

namespace A003953

/-- `A109868(Δ[n²])` -/
def P17073270553139012263.Spec : Prop :=
  ∀ n, P17073270553139012263.a n = A003953 n

end A003953

/-! ## A003953.P7619695075520633126

`A164899(∑[n+2])`
-/

namespace A003953.P7619695075520633126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003953.P7619695075520633126

namespace A003953

/-- `A164899(∑[n+2])` -/
def P7619695075520633126.Spec : Prop :=
  ∀ n, P7619695075520633126.a n = A003953 n

end A003953

/-! ## A003953.P5082663377129207023

`A281366(4*n+1)`
-/

namespace A003953.P5082663377129207023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (4 * n + 1)

end

end A003953.P5082663377129207023

namespace A003953

/-- `A281366(4*n+1)` -/
def P5082663377129207023.Spec : Prop :=
  ∀ n, P5082663377129207023.a n = A003953 n

end A003953

/-! ## A003953.P8784537297974867761

`A356520(∑[n+1]+n)`
-/

namespace A003953.P8784537297974867761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003953.P8784537297974867761

namespace A003953

/-- `A356520(∑[n+1]+n)` -/
def P8784537297974867761.Spec : Prop :=
  ∀ n, P8784537297974867761.a n = A003953 n

end A003953

/-! ## A003953.P10587628290862916474

`Δ[A094624(log2(ceil(4^n/2)))]`
-/

namespace A003953.P10587628290862916474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(4 ^ n : ℚ) / 2⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003953.P10587628290862916474

namespace A003953

/-- `Δ[A094624(log2(ceil(4^n/2)))]` -/
def P10587628290862916474.Spec : Prop :=
  ∀ n, P10587628290862916474.a n = A003953 n

end A003953

/-! ## A003953.P6537815913453340171

`A104459(A103517(n))`
-/

namespace A003953.P6537815913453340171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A103517 n).toNat

end

end A003953.P6537815913453340171

namespace A003953

/-- `A104459(A103517(n))` -/
def P6537815913453340171.Spec : Prop :=
  ∀ n, P6537815913453340171.a n = A003953 n

end A003953

/-! ## A003953.P8641944989256480787

`A309761(A133263(n))`
-/

namespace A003953.P8641944989256480787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A133263 n).toNat

end

end A003953.P8641944989256480787

namespace A003953

/-- `A309761(A133263(n))` -/
def P8641944989256480787.Spec : Prop :=
  ∀ n, P8641944989256480787.a n = A003953 n

end A003953

/-! ## A003953.P17778786961565222359

`A347765(A065383(n+1))`
-/

namespace A003953.P17778786961565222359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347765 (A065383 (n + 1)).toNat

end

end A003953.P17778786961565222359

namespace A003953

/-- `A347765(A065383(n+1))` -/
def P17778786961565222359.Spec : Prop :=
  ∀ n, P17778786961565222359.a n = A003953 n

end A003953

/-! ## A003953.P15434341554150583555

`A347765(A097050(n+1))`
-/

namespace A003953.P15434341554150583555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347765 (A097050 (n + 1)).toNat

end

end A003953.P15434341554150583555

namespace A003953

/-- `A347765(A097050(n+1))` -/
def P15434341554150583555.Spec : Prop :=
  ∀ n, P15434341554150583555.a n = A003953 n

end A003953

/-! ## A003953.P16920020046424010713

`A178501(n)+A011557(n)`
-/

namespace A003953.P16920020046424010713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n + A011557 n

end

end A003953.P16920020046424010713

namespace A003953

/-- `A178501(n)+A011557(n)` -/
def P16920020046424010713.Spec : Prop :=
  ∀ n, P16920020046424010713.a n = A003953 n

end A003953

/-! ## A003953.P14158719001022283724

`record[A347765(A006530(n+1))]`
-/

namespace A003953.P14158719001022283724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347765 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003953.P14158719001022283724

namespace A003953

/-- `record[A347765(A006530(n+1))]` -/
def P14158719001022283724.Spec : Prop :=
  ∀ n, P14158719001022283724.a n = A003953 n

end A003953

/-!
# A003954: Expansion of g.f.: (1+x)/(1-11*x).

The programs for A003954, the canonical program `A003954.P15406399533759637214` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003954 has offset 0).

The definition of A003954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003954.P15406399533759637214

`11*a(n-1)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003954

/-- `11*a(n-1)` -/
def P15406399533759637214.Spec : Prop :=
  ∀ n, (P15406399533759637214.a n : ℤ) = A003954 n

theorem P15406399533759637214.correct : P15406399533759637214.Spec := by
  intro n
  simp only [A003954]

end A003954

/-! ## A003954.P12258474526210828954

`floor(12*11^(n-1))`
-/

namespace A003954.P12258474526210828954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊12 * (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003954.P12258474526210828954

namespace A003954

/-- `floor(12*11^(n-1))` -/
def P12258474526210828954.Spec : Prop :=
  ∀ n, P12258474526210828954.a n = A003954 n

end A003954

/-! ## A003954.P5522733351018208971

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=12, a(2)=11`
-/

namespace A003954.P5522733351018208971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 11] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A003954.P5522733351018208971

namespace A003954

/-- `abs(∏[-a(n-1)])` -/
def P5522733351018208971.Spec : Prop :=
  ∀ n, P5522733351018208971.a n = A003954 n

end A003954

/-! ## A003954.P8124778704842971641

`lcm(11^(n-1), a(n-1))` with `a(0)=1, a(1)=12`
-/

namespace A003954.P8124778704842971641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((11 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A003954.P8124778704842971641

namespace A003954

/-- `lcm(11^(n-1), a(n-1))` -/
def P8124778704842971641.Spec : Prop :=
  ∀ n, (P8124778704842971641.a n : ℤ) = A003954 n

end A003954

/-! ## A003954.P10439098424898584471

`∏{digits}[A059482(n), A007093(#)]`
-/

namespace A003954.P10439098424898584471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007093 x).prod

end

end A003954.P10439098424898584471

namespace A003954

/-- `∏{digits}[A059482(n), A007093(#)]` -/
def P10439098424898584471.Spec : Prop :=
  ∀ n, P10439098424898584471.a n = A003954 n

end A003954

/-! ## A003954.P15106968299697103511

`∏{digits}[A059482(n), A007401(#)]`
-/

namespace A003954.P15106968299697103511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007401 x).prod

end

end A003954.P15106968299697103511

namespace A003954

/-- `∏{digits}[A059482(n), A007401(#)]` -/
def P15106968299697103511.Spec : Prop :=
  ∀ n, P15106968299697103511.a n = A003954 n

end A003954

/-! ## A003954.P6983865414500622792

`∏{digits}[A093137(n), A007931(#)]`
-/

namespace A003954.P6983865414500622792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007931 x).prod

end

end A003954.P6983865414500622792

namespace A003954

/-- `∏{digits}[A093137(n), A007931(#)]` -/
def P6983865414500622792.Spec : Prop :=
  ∀ n, P6983865414500622792.a n = A003954 n

end A003954

/-! ## A003954.P7213666769529061119

`∏{digits}[A059482(n), A197911(#)]`
-/

namespace A003954.P7213666769529061119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A197911 x).prod

end

end A003954.P7213666769529061119

namespace A003954

/-- `∏{digits}[A059482(n), A197911(#)]` -/
def P7213666769529061119.Spec : Prop :=
  ∀ n, P7213666769529061119.a n = A003954 n

end A003954

/-! ## A003954.P3563582214959682977

`2*A001020(n)-A055276(n)`
-/

namespace A003954.P3563582214959682977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001020 n - A055276 n

end

end A003954.P3563582214959682977

namespace A003954

/-- `2*A001020(n)-A055276(n)` -/
def P3563582214959682977.Spec : Prop :=
  ∀ n, P3563582214959682977.a n = A003954 n

end A003954

/-!
# A003955: a(n) = (2*n + 4) * (1*3*5*...*(2*n+1))^2.

The programs for A003955, the canonical program `A003955.P7618811074422816313` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003955 has offset 0).

The definition of A003955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003955.P7618811074422816313

`(2*n+4)*A001818(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003955

/-- `(2*n+4)*A001818(n+1)` -/
def P7618811074422816313.Spec : Prop :=
  ∀ n, P7618811074422816313.a n = A003955 n

theorem P7618811074422816313.correct : P7618811074422816313.Spec := by
  intro n
  simp only [A003955]

end A003955

/-! ## A003955.P11040620563577520866

`2*(n+2)*∏[(2*n+1)²]`
-/

namespace A003955.P11040620563577520866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A003955.P11040620563577520866

namespace A003955

/-- `2*(n+2)*∏[(2*n+1)²]` -/
def P11040620563577520866.Spec : Prop :=
  ∀ n, (P11040620563577520866.a n : ℤ) = A003955 n

end A003955

/-! ## A003955.P15934879086587993138

`A079484(n+1)+A001818(n+1)`
-/

namespace A003955.P15934879086587993138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079484 (n + 1) + A001818 (n + 1)

end

end A003955.P15934879086587993138

namespace A003955

/-- `A079484(n+1)+A001818(n+1)` -/
def P15934879086587993138.Spec : Prop :=
  ∀ n, P15934879086587993138.a n = A003955 n

end A003955

/-! ## A003955.P14363094132887046168

`A079484(n+1)+A001147(n+1)²`
-/

namespace A003955.P14363094132887046168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079484 (n + 1) + A001147 (n + 1) ^ 2

end

end A003955.P14363094132887046168

namespace A003955

/-- `A079484(n+1)+A001147(n+1)²` -/
def P14363094132887046168.Spec : Prop :=
  ∀ n, P14363094132887046168.a n = A003955 n

end A003955

/-! ## A003955.P12495430387858023471

`A079484(n+1)+A006882(2*n+1)²`
-/

namespace A003955.P12495430387858023471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079484 (n + 1) + A006882 (2 * n + 1) ^ 2

end

end A003955.P12495430387858023471

namespace A003955

/-- `A079484(n+1)+A006882(2*n+1)²` -/
def P12495430387858023471.Spec : Prop :=
  ∀ n, P12495430387858023471.a n = A003955 n

end A003955

/-!
# A003956: Order of complex Clifford group of degree 2^n arising in quantum coding theory.

The programs for A003956, there is no canonical definition to state claims against.
-/

/-! ## A003956.P1676873049710780466

`2*A027638(n)`
-/

namespace A003956.P1676873049710780466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027638 n

end

end A003956.P1676873049710780466

/-! ## A003956.P12482380832388009300

`4*A090770(n)`
-/

namespace A003956.P12482380832388009300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A090770 n

end

end A003956.P12482380832388009300

/-! ## A003956.P11232874897857674903

`4*A003053(2*(n+1))`
-/

namespace A003956.P11232874897857674903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003053 (2 * (n + 1))

end

end A003956.P11232874897857674903

/-! ## A003956.P3840601540020011561

`2*∏[A032087(2*n+1)]`
-/

namespace A003956.P3840601540020011561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032087 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A003956.P3840601540020011561

/-! ## A003956.P63658739901053216

`A000079(3*n+3)*A053291(n)`
-/

namespace A003956.P63658739901053216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n + 3) * A053291 n

end

end A003956.P63658739901053216

/-!
# A003958: If n = Product p(k)^e(k) then a(n) = Product (p(k)-1)^e(k).

The programs for A003958, the canonical program `A003958.P196685604458257440` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003958 has offset 1).

The definition of A003958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003958.P196685604458257440

`abs(A125131(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A003958

/-- `abs(A125131(n+1))` -/
def P196685604458257440.Spec : Prop :=
  ∀ n, P196685604458257440.a n = A003958 (n + 1)

theorem P196685604458257440.correct : P196685604458257440.Spec := by
  intro n
  simp only [A003958, Nat.add_sub_cancel]

end A003958

/-! ## A003958.P10209268232876253578

`sqrt(A167343(n+1))`
-/

namespace A003958.P10209268232876253578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167343 (n + 1) : ℝ)

end

end A003958.P10209268232876253578

namespace A003958

/-- `sqrt(A167343(n+1))` -/
def P10209268232876253578.Spec : Prop :=
  ∀ n, P10209268232876253578.a n = (A003958 (n + 1) : ℝ)

end A003958

/-! ## A003958.P3368626195653852053

`∑{d}[n+1, A003966(#)]`
-/

namespace A003958.P3368626195653852053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d

end

end A003958.P3368626195653852053

namespace A003958

/-- `∑{d}[n+1, A003966(#)]` -/
def P3368626195653852053.Spec : Prop :=
  ∀ n, P3368626195653852053.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P4752408607865364255

`1-A322582(n+1)+n`
-/

namespace A003958.P4752408607865364255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322582 (n + 1) + (n : ℤ)

end

end A003958.P4752408607865364255

namespace A003958

/-- `1-A322582(n+1)+n` -/
def P4752408607865364255.Spec : Prop :=
  ∀ n, P4752408607865364255.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P11703094530400648175

`A079579(n+1)/(n+1)`
-/

namespace A003958.P11703094530400648175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003958.P11703094530400648175

namespace A003958

/-- `A079579(n+1)/(n+1)` -/
def P11703094530400648175.Spec : Prop :=
  ∀ n, P11703094530400648175.a n = (A003958 (n + 1) : ℚ)

end A003958

/-! ## A003958.P6856786999383915990

`abs(∏{d}[n+1, 1-A120007(#)])`
-/

namespace A003958.P6856786999383915990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ d ∈ Nat.divisors (f1 n), (1 - A120007 d)|

end

end A003958.P6856786999383915990

namespace A003958

/-- `abs(∏{d}[n+1, 1-A120007(#)])` -/
def P6856786999383915990.Spec : Prop :=
  ∀ n, P6856786999383915990.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P15981580097092078542

`∑{d}[n+1, #*A349340((n+1)/#)]`
-/

namespace A003958.P15981580097092078542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003958.P15981580097092078542

namespace A003958

/-- `∑{d}[n+1, #*A349340((n+1)/#)]` -/
def P15981580097092078542.Spec : Prop :=
  ∀ n, P15981580097092078542.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P7115373559863610215

`A333787(A000265(n+1))`
-/

namespace A003958.P7115373559863610215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A000265 (n + 1)).toNat

end

end A003958.P7115373559863610215

namespace A003958

/-- `A333787(A000265(n+1))` -/
def P7115373559863610215.Spec : Prop :=
  ∀ n, P7115373559863610215.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P9003983141999833098

`A339905(A064989(n+1))`
-/

namespace A003958.P9003983141999833098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (A064989 (n + 1)).toNat

end

end A003958.P9003983141999833098

namespace A003958

/-- `A339905(A064989(n+1))` -/
def P9003983141999833098.Spec : Prop :=
  ∀ n, P9003983141999833098.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P15100005428515884040

`gcd(A000038(n), A125131(n+1))`
-/

namespace A003958.P15100005428515884040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125131 (n + 1))

end

end A003958.P15100005428515884040

namespace A003958

/-- `gcd(A000038(n), A125131(n+1))` -/
def P15100005428515884040.Spec : Prop :=
  ∀ n, (P15100005428515884040.a n : ℤ) = A003958 (n + 1)

end A003958

/-! ## A003958.P5926879887457739727

`lcm(A006466(n), A125131(n+1))`
-/

namespace A003958.P5926879887457739727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A125131 (n + 1))

end

end A003958.P5926879887457739727

namespace A003958

/-- `lcm(A006466(n), A125131(n+1))` -/
def P5926879887457739727.Spec : Prop :=
  ∀ n, (P5926879887457739727.a n : ℤ) = A003958 (n + 1)

end A003958

/-! ## A003958.P3079338981033375646

`∏{d}[n+1, A000010(A014963(#))]`
-/

namespace A003958.P3079338981033375646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d).toNat

end

end A003958.P3079338981033375646

namespace A003958

/-- `∏{d}[n+1, A000010(A014963(#))]` -/
def P3079338981033375646.Spec : Prop :=
  ∀ n, P3079338981033375646.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P1686102993546534421

`A324044(n+1)+A033879(n+1)`
-/

namespace A003958.P1686102993546534421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324044 (n + 1) + A033879 (n + 1)

end

end A003958.P1686102993546534421

namespace A003958

/-- `A324044(n+1)+A033879(n+1)` -/
def P1686102993546534421.Spec : Prop :=
  ∀ n, P1686102993546534421.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P9440840732678232925

`A168065(n+1)-A168066(n+1)`
-/

namespace A003958.P9440840732678232925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168065 (n + 1) - A168066 (n + 1)

end

end A003958.P9440840732678232925

namespace A003958

/-- `A168065(n+1)-A168066(n+1)` -/
def P9440840732678232925.Spec : Prop :=
  ∀ n, P9440840732678232925.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P1632193431471444837

`A324044(n+1)-A033880(n+1)`
-/

namespace A003958.P1632193431471444837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324044 (n + 1) - A033880 (n + 1)

end

end A003958.P1632193431471444837

namespace A003958

/-- `A324044(n+1)-A033880(n+1)` -/
def P1632193431471444837.Spec : Prop :=
  ∀ n, P1632193431471444837.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P16199862210973130079

`A322581(n+1)-A097945(n+1)`
-/

namespace A003958.P16199862210973130079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322581 (n + 1) - A097945 (n + 1)

end

end A003958.P16199862210973130079

namespace A003958

/-- `A322581(n+1)-A097945(n+1)` -/
def P16199862210973130079.Spec : Prop :=
  ∀ n, P16199862210973130079.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P7378624788757662333

`A348975(n+1)-A168036(n+1)`
-/

namespace A003958.P7378624788757662333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348975 (n + 1) - A168036 (n + 1)

end

end A003958.P7378624788757662333

namespace A003958

/-- `A348975(n+1)-A168036(n+1)` -/
def P7378624788757662333.Spec : Prop :=
  ∀ n, P7378624788757662333.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P7637270736712966838

`A351442(n+1)-A351445(n+1)`
-/

namespace A003958.P7637270736712966838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1) - A351445 (n + 1)

end

end A003958.P7637270736712966838

namespace A003958

/-- `A351442(n+1)-A351445(n+1)` -/
def P7637270736712966838.Spec : Prop :=
  ∀ n, P7637270736712966838.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P16532400826541094613

`A008836(n+1)*A125131(n+1)`
-/

namespace A003958.P16532400826541094613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A125131 (n + 1)

end

end A003958.P16532400826541094613

namespace A003958

/-- `A008836(n+1)*A125131(n+1)` -/
def P16532400826541094613.Spec : Prop :=
  ∀ n, P16532400826541094613.a n = A003958 (n + 1)

end A003958

/-! ## A003958.P4621476823772349620

`A023900(n+1)*A349340(n+1)`
-/

namespace A003958.P4621476823772349620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A349340 (n + 1)

end

end A003958.P4621476823772349620

namespace A003958

/-- `A023900(n+1)*A349340(n+1)` -/
def P4621476823772349620.Spec : Prop :=
  ∀ n, P4621476823772349620.a n = A003958 (n + 1)

end A003958

/-!
# A003959: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(1) = 1.

The programs for A003959, the canonical program `A003959.P10480308691352807012` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003959 has offset 1).

The definition of A003959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003959.P16097580022844921042

`A166642(n+1)/A061142(n+1)`
-/

namespace A003959.P16097580022844921042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166642 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A003959.P16097580022844921042

namespace A003959

/-- `A166642(n+1)/A061142(n+1)` -/
def P16097580022844921042.Spec : Prop :=
  ∀ n, P16097580022844921042.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P1790399902344292050

`A166643(n+1)/A165824(n+1)`
-/

namespace A003959.P1790399902344292050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A003959.P1790399902344292050

namespace A003959

/-- `A166643(n+1)/A165824(n+1)` -/
def P1790399902344292050.Spec : Prop :=
  ∀ n, P1790399902344292050.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P269254412964780574

`A166644(n+1)/A165825(n+1)`
-/

namespace A003959.P269254412964780574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A003959.P269254412964780574

namespace A003959

/-- `A166644(n+1)/A165825(n+1)` -/
def P269254412964780574.Spec : Prop :=
  ∀ n, P269254412964780574.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P17712595425891301230

`A166645(n+1)/A165826(n+1)`
-/

namespace A003959.P17712595425891301230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166645 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A003959.P17712595425891301230

namespace A003959

/-- `A166645(n+1)/A165826(n+1)` -/
def P17712595425891301230.Spec : Prop :=
  ∀ n, P17712595425891301230.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P17497117356682436355

`A166646(n+1)/A165827(n+1)`
-/

namespace A003959.P17497117356682436355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)

end

end A003959.P17497117356682436355

namespace A003959

/-- `A166646(n+1)/A165827(n+1)` -/
def P17497117356682436355.Spec : Prop :=
  ∀ n, P17497117356682436355.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P17691669902435192966

`A166647(n+1)/A165828(n+1)`
-/

namespace A003959.P17691669902435192966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166647 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)

end

end A003959.P17691669902435192966

namespace A003959

/-- `A166647(n+1)/A165828(n+1)` -/
def P17691669902435192966.Spec : Prop :=
  ∀ n, P17691669902435192966.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P497643361498336204

`A166649(n+1)/A165830(n+1)`
-/

namespace A003959.P497643361498336204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166649 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)

end

end A003959.P497643361498336204

namespace A003959

/-- `A166649(n+1)/A165830(n+1)` -/
def P497643361498336204.Spec : Prop :=
  ∀ n, P497643361498336204.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P15947914040672688616

`A166650(n+1)/A165831(n+1)`
-/

namespace A003959.P15947914040672688616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166650 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)

end

end A003959.P15947914040672688616

namespace A003959

/-- `A166650(n+1)/A165831(n+1)` -/
def P15947914040672688616.Spec : Prop :=
  ∀ n, P15947914040672688616.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P12767989820300592824

`A167351(n+1)/A166590(n+1)`
-/

namespace A003959.P12767989820300592824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167351 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A003959.P12767989820300592824

namespace A003959

/-- `A167351(n+1)/A166590(n+1)` -/
def P12767989820300592824.Spec : Prop :=
  ∀ n, P12767989820300592824.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P16044271595641487702

`sqrt(A167349(n+1))`
-/

namespace A003959.P16044271595641487702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ)

end

end A003959.P16044271595641487702

namespace A003959

/-- `sqrt(A167349(n+1))` -/
def P16044271595641487702.Spec : Prop :=
  ∀ n, P16044271595641487702.a n = (A003959 (n + 1) : ℝ)

end A003959

/-! ## A003959.P10480308691352807012

`∑{d}[n+1, A003968(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003959

/-- `∑{d}[n+1, A003968(#)]` -/
def P10480308691352807012.Spec : Prop :=
  ∀ n, P10480308691352807012.a n = A003959 (n + 1)

theorem P10480308691352807012.correct : P10480308691352807012.Spec := by
  intro n
  simp only [A003959, Nat.add_sub_cancel]

end A003959

/-! ## A003959.P2138066567566514558

`A348507(n+1)+1+n`
-/

namespace A003959.P2138066567566514558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) + 1 + (n : ℤ)

end

end A003959.P2138066567566514558

namespace A003959

/-- `A348507(n+1)+1+n` -/
def P2138066567566514558.Spec : Prop :=
  ∀ n, P2138066567566514558.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P6160967309223930698

`A167338(n+1)/(n+1)`
-/

namespace A003959.P6160967309223930698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003959.P6160967309223930698

namespace A003959

/-- `A167338(n+1)/(n+1)` -/
def P6160967309223930698.Spec : Prop :=
  ∀ n, P6160967309223930698.a n = (A003959 (n + 1) : ℚ)

end A003959

/-! ## A003959.P1130504223791573428

`A348508(n+1)+2*(n+1)`
-/

namespace A003959.P1130504223791573428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) + (2 * (n + 1) : ℤ)

end

end A003959.P1130504223791573428

namespace A003959

/-- `A348508(n+1)+2*(n+1)` -/
def P1130504223791573428.Spec : Prop :=
  ∀ n, P1130504223791573428.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P5210633912640812925

`∑{d}[n+1, #*A327564((n+1)/#)]`
-/

namespace A003959.P5210633912640812925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003959.P5210633912640812925

namespace A003959

/-- `∑{d}[n+1, #*A327564((n+1)/#)]` -/
def P5210633912640812925.Spec : Prop :=
  ∀ n, P5210633912640812925.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P4118819690015594160

`∏{d}[n+1, A000203(A014963(#))]`
-/

namespace A003959.P4118819690015594160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat

end

end A003959.P4118819690015594160

namespace A003959

/-- `∏{d}[n+1, A000203(A014963(#))]` -/
def P4118819690015594160.Spec : Prop :=
  ∀ n, P4118819690015594160.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P17123068083062134578

`A168066(n+1)+A168065(n+1)`
-/

namespace A003959.P17123068083062134578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168066 (n + 1) + A168065 (n + 1)

end

end A003959.P17123068083062134578

namespace A003959

/-- `A168066(n+1)+A168065(n+1)` -/
def P17123068083062134578.Spec : Prop :=
  ∀ n, P17123068083062134578.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P16798982556599862592

`A348029(n+1)+A000203(n+1)`
-/

namespace A003959.P16798982556599862592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) + A000203 (n + 1)

end

end A003959.P16798982556599862592

namespace A003959

/-- `A348029(n+1)+A000203(n+1)` -/
def P16798982556599862592.Spec : Prop :=
  ∀ n, P16798982556599862592.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P6977780982989482442

`A348732(n+1)+A034448(n+1)`
-/

namespace A003959.P6977780982989482442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (n + 1) + A034448 (n + 1)

end

end A003959.P6977780982989482442

namespace A003959

/-- `A348732(n+1)+A034448(n+1)` -/
def P6977780982989482442.Spec : Prop :=
  ∀ n, P6977780982989482442.a n = A003959 (n + 1)

end A003959

/-! ## A003959.P5087724268967719902

`A348970(n+1)+A129283(n+1)`
-/

namespace A003959.P5087724268967719902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348970 (n + 1) + A129283 (n + 1)

end

end A003959.P5087724268967719902

namespace A003959

/-- `A348970(n+1)+A129283(n+1)` -/
def P5087724268967719902.Spec : Prop :=
  ∀ n, P5087724268967719902.a n = A003959 (n + 1)

end A003959

/-!
# A003960: Fully multiplicative with a(p) = [ (p+1)/2 ] for prime p.

The programs for A003960, the canonical program `A003960.P16011215527621288421` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003960 has offset 1).

The definition of A003960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003960.P16011215527621288421

`∏{d}[n+1, ceil(A014963(#)/2)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003960

/-- `∏{d}[n+1, ceil(A014963(#)/2)]` -/
def P16011215527621288421.Spec : Prop :=
  ∀ n, P16011215527621288421.a n = A003960 (n + 1)

theorem P16011215527621288421.correct : P16011215527621288421.Spec := by
  intro n
  simp only [A003960, Nat.add_sub_cancel]

end A003960

/-! ## A003960.P9751603356800243098

`A003962(A064989(n+1))`
-/

namespace A003960.P9751603356800243098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (A064989 (n + 1)).toNat

end

end A003960.P9751603356800243098

namespace A003960

/-- `A003962(A064989(n+1))` -/
def P9751603356800243098.Spec : Prop :=
  ∀ n, P9751603356800243098.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P15360232419279346216

`A290323(A000265(n+1))`
-/

namespace A003960.P15360232419279346216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (A000265 (n + 1)).toNat

end

end A003960.P15360232419279346216

namespace A003960

/-- `A290323(A000265(n+1))` -/
def P15360232419279346216.Spec : Prop :=
  ∀ n, P15360232419279346216.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P3634533649760391897

`A290323(A153733(n)+1)`
-/

namespace A003960.P3634533649760391897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (A153733 n + 1).toNat

end

end A003960.P3634533649760391897

namespace A003960

/-- `A290323(A153733(n)+1)` -/
def P3634533649760391897.Spec : Prop :=
  ∀ n, P3634533649760391897.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P4596082107305105396

`A290323(2*A025480(n)+1)`
-/

namespace A003960.P4596082107305105396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (2 * A025480 n + 1).toNat

end

end A003960.P4596082107305105396

namespace A003960

/-- `A290323(2*A025480(n)+1)` -/
def P4596082107305105396.Spec : Prop :=
  ∀ n, P4596082107305105396.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P13053054462948410472

`∏{d}[n+1, A003602(A014963(#))]`
-/

namespace A003960.P13053054462948410472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A003602 (A014963 d).toNat

end

end A003960.P13053054462948410472

namespace A003960

/-- `∏{d}[n+1, A003602(A014963(#))]` -/
def P13053054462948410472.Spec : Prop :=
  ∀ n, P13053054462948410472.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P11562384044827764229

`A133205(n+1)/A394497(n+1)`
-/

namespace A003960.P11562384044827764229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133205 (n + 1) : ℚ) / (A394497 (n + 1) : ℚ)

end

end A003960.P11562384044827764229

namespace A003960

/-- `A133205(n+1)/A394497(n+1)` -/
def P11562384044827764229.Spec : Prop :=
  ∀ n, P11562384044827764229.a n = (A003960 (n + 1) : ℚ)

end A003960

/-! ## A003960.P1104202127744900411

`∏{d}[n+1, A004526(A014963(#)+1)]`
-/

namespace A003960.P1104202127744900411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004526 (A014963 d + 1).toNat

end

end A003960.P1104202127744900411

namespace A003960

/-- `∏{d}[n+1, A004526(A014963(#)+1)]` -/
def P1104202127744900411.Spec : Prop :=
  ∀ n, P1104202127744900411.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P3496260820432779911

`∏{d}[n+1, A008619(A014963(#)-1)]`
-/

namespace A003960.P3496260820432779911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008619 (A014963 d - 1).toNat

end

end A003960.P3496260820432779911

namespace A003960

/-- `∏{d}[n+1, A008619(A014963(#)-1)]` -/
def P3496260820432779911.Spec : Prop :=
  ∀ n, P3496260820432779911.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P15602176777962719858

`∑{d}[n+1, A003971(#)*A008683((n+1)/#)]`
-/

namespace A003960.P15602176777962719858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003971 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003960.P15602176777962719858

namespace A003960

/-- `∑{d}[n+1, A003971(#)*A008683((n+1)/#)]` -/
def P15602176777962719858.Spec : Prop :=
  ∀ n, P15602176777962719858.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P15306859151190044490

`A290323(A025480(n)+A025480(n)+1)`
-/

namespace A003960.P15306859151190044490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (A025480 n + (A025480 n + 1)).toNat

end

end A003960.P15306859151190044490

namespace A003960

/-- `A290323(A025480(n)+A025480(n)+1)` -/
def P15306859151190044490.Spec : Prop :=
  ∀ n, P15306859151190044490.a n = A003960 (n + 1)

end A003960

/-! ## A003960.P11393590697757045353

`A003974(A064989(n+1)²)/A003974(A064989(n+1))`
-/

namespace A003960.P11393590697757045353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003974 (A064989 (n + 1) ^ 2).toNat : ℚ) / (A003974 (A064989 (n + 1)).toNat : ℚ)

end

end A003960.P11393590697757045353

namespace A003960

/-- `A003974(A064989(n+1)²)/A003974(A064989(n+1))` -/
def P11393590697757045353.Spec : Prop :=
  ∀ n, P11393590697757045353.a n = (A003960 (n + 1) : ℚ)

end A003960

/-!
# A003961: Completely multiplicative with a(prime(k)) = prime(k+1).

The programs for A003961, the canonical program `A003961.P5996473960037614004` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003961 has offset 1).

The definition of A003961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003961.P5996473960037614004

`A253885(n)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A003961

/-- `A253885(n)+1` -/
def P5996473960037614004.Spec : Prop :=
  ∀ n, P5996473960037614004.a n = A003961 (n + 1)

theorem P5996473960037614004.correct : P5996473960037614004.Spec := by
  intro n
  simp only [A003961, Nat.add_sub_cancel]

end A003961

/-! ## A003961.P12723637528721698892

`sqrt(A379481(n+1))`
-/

namespace A003961.P12723637528721698892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (n + 1) : ℝ)

end

end A003961.P12723637528721698892

namespace A003961

/-- `sqrt(A379481(n+1))` -/
def P12723637528721698892.Spec : Prop :=
  ∀ n, P12723637528721698892.a n = (A003961 (n + 1) : ℝ)

end A003961

/-! ## A003961.P16037956039101310056

`A243501(n+1)-1`
-/

namespace A003961.P16037956039101310056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - 1

end

end A003961.P16037956039101310056

namespace A003961

/-- `A243501(n+1)-1` -/
def P16037956039101310056.Spec : Prop :=
  ∀ n, P16037956039101310056.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P14627848030279209084

`A249734(n+1)/3`
-/

namespace A003961.P14627848030279209084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249734 (n + 1) : ℚ) / 3

end

end A003961.P14627848030279209084

namespace A003961

/-- `A249734(n+1)/3` -/
def P14627848030279209084.Spec : Prop :=
  ∀ n, P14627848030279209084.a n = (A003961 (n + 1) : ℚ)

end A003961

/-! ## A003961.P17170811033349339505

`∑{d}[n+1, A003972(#)]`
-/

namespace A003961.P17170811033349339505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d

end

end A003961.P17170811033349339505

namespace A003961

/-- `∑{d}[n+1, A003972(#)]` -/
def P17170811033349339505.Spec : Prop :=
  ∀ n, P17170811033349339505.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P12908002071351123994

`2*A108228(n+1)+1`
-/

namespace A003961.P12908002071351123994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108228 (n + 1) + 1

end

end A003961.P12908002071351123994

namespace A003961

/-- `2*A108228(n+1)+1` -/
def P12908002071351123994.Spec : Prop :=
  ∀ n, P12908002071351123994.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P12932629332084520031

`2*A048673(n+1)-1`
-/

namespace A003961.P12932629332084520031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - 1

end

end A003961.P12932629332084520031

namespace A003961

/-- `2*A048673(n+1)-1` -/
def P12932629332084520031.Spec : Prop :=
  ∀ n, P12932629332084520031.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P4294168071881816354

`lcm(2, A045965(n+1))/2`
-/

namespace A003961.P4294168071881816354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A045965 (n + 1)) : ℚ) / 2

end

end A003961.P4294168071881816354

namespace A003961

/-- `lcm(2, A045965(n+1))/2` -/
def P4294168071881816354.Spec : Prop :=
  ∀ n, P4294168071881816354.a n = (A003961 (n + 1) : ℚ)

end A003961

/-! ## A003961.P15280676272348980861

`A336853(n+1)+1+n`
-/

namespace A003961.P15280676272348980861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 1 + (n : ℤ)

end

end A003961.P15280676272348980861

namespace A003961

/-- `A336853(n+1)+1+n` -/
def P15280676272348980861.Spec : Prop :=
  ∀ n, P15280676272348980861.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P5503361767730191527

`A191002(n+1)/(n+1)`
-/

namespace A003961.P5503361767730191527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003961.P5503361767730191527

namespace A003961

/-- `A191002(n+1)/(n+1)` -/
def P5503361767730191527.Spec : Prop :=
  ∀ n, P5503361767730191527.a n = (A003961 (n + 1) : ℚ)

end A003961

/-! ## A003961.P4815750429115050320

`A252748(n+1)+2*(n+1)`
-/

namespace A003961.P4815750429115050320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + (2 * (n + 1) : ℤ)

end

end A003961.P4815750429115050320

namespace A003961

/-- `A252748(n+1)+2*(n+1)` -/
def P4815750429115050320.Spec : Prop :=
  ∀ n, P4815750429115050320.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P8067520875663110214

`∑{d}[n+1, #*A349387((n+1)/#)]`
-/

namespace A003961.P8067520875663110214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003961.P8067520875663110214

namespace A003961

/-- `∑{d}[n+1, #*A349387((n+1)/#)]` -/
def P8067520875663110214.Spec : Prop :=
  ∀ n, P8067520875663110214.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P10539062691243285155

`A045965(n+1)-A000007(n)`
-/

namespace A003961.P10539062691243285155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - A000007 n

end

end A003961.P10539062691243285155

namespace A003961

/-- `A045965(n+1)-A000007(n)` -/
def P10539062691243285155.Spec : Prop :=
  ∀ n, P10539062691243285155.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P1949850597923911392

`A045965(n+1)/A054977(n)`
-/

namespace A003961.P1949850597923911392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A003961.P1949850597923911392

namespace A003961

/-- `A045965(n+1)/A054977(n)` -/
def P1949850597923911392.Spec : Prop :=
  ∀ n, P1949850597923911392.a n = (A003961 (n + 1) : ℚ)

end A003961

/-! ## A003961.P316456862451653788

`A108228(n+1)+A048673(n+1)`
-/

namespace A003961.P316456862451653788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) + A048673 (n + 1)

end

end A003961.P316456862451653788

namespace A003961

/-- `A108228(n+1)+A048673(n+1)` -/
def P316456862451653788.Spec : Prop :=
  ∀ n, P316456862451653788.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P12313988677925234879

`A286385(n+1)+A000203(n+1)`
-/

namespace A003961.P12313988677925234879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + A000203 (n + 1)

end

end A003961.P12313988677925234879

namespace A003961

/-- `A286385(n+1)+A000203(n+1)` -/
def P12313988677925234879.Spec : Prop :=
  ∀ n, P12313988677925234879.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P2283376404555885466

`A348937(n+1)+A003415(n+1)`
-/

namespace A003961.P2283376404555885466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (n + 1) + A003415 (n + 1)

end

end A003961.P2283376404555885466

namespace A003961

/-- `A348937(n+1)+A003415(n+1)` -/
def P2283376404555885466.Spec : Prop :=
  ∀ n, P2283376404555885466.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P8533495726330118898

`A344587(n+1)+A336851(n+1)`
-/

namespace A003961.P8533495726330118898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A336851 (n + 1)

end

end A003961.P8533495726330118898

namespace A003961

/-- `A344587(n+1)+A336851(n+1)` -/
def P8533495726330118898.Spec : Prop :=
  ∀ n, P8533495726330118898.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P2717832454622996141

`A003973(n+1)-A336851(n+1)`
-/

namespace A003961.P2717832454622996141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336851 (n + 1)

end

end A003961.P2717832454622996141

namespace A003961

/-- `A003973(n+1)-A336851(n+1)` -/
def P2717832454622996141.Spec : Prop :=
  ∀ n, P2717832454622996141.a n = A003961 (n + 1)

end A003961

/-! ## A003961.P17436445232954924111

`A389076(n+1)-A389077(n+1)`
-/

namespace A003961.P17436445232954924111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A389077 (n + 1)

end

end A003961.P17436445232954924111

namespace A003961

/-- `A389076(n+1)-A389077(n+1)` -/
def P17436445232954924111.Spec : Prop :=
  ∀ n, P17436445232954924111.a n = A003961 (n + 1)

end A003961

/-!
# A003962: Completely multiplicative with a(prime(k)) = floor( (prime(k+1)+1)/2 ) for k-th prime prime(k).

The programs for A003962, the canonical program `A003962.P5960370020489354738` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003962 has offset 1).

The definition of A003962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003962.P17266172268597918786

`∑{d}[n+1, A003974(#)]`
-/

namespace A003962.P17266172268597918786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003974 d

end

end A003962.P17266172268597918786

namespace A003962

/-- `∑{d}[n+1, A003974(#)]` -/
def P17266172268597918786.Spec : Prop :=
  ∀ n, P17266172268597918786.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P5960370020489354738

`∏{d}[n+1, A048673(A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003962

/-- `∏{d}[n+1, A048673(A014963(#))]` -/
def P5960370020489354738.Spec : Prop :=
  ∀ n, P5960370020489354738.a n = A003962 (n + 1)

theorem P5960370020489354738.correct : P5960370020489354738.Spec := by
  intro n
  simp only [A003962, Nat.add_sub_cancel]

end A003962

/-! ## A003962.P4534783929794148589

`∑{d}[n+1, A003975(#)*A008683((n+1)/#)]`
-/

namespace A003962.P4534783929794148589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003975 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003962.P4534783929794148589

namespace A003962

/-- `∑{d}[n+1, A003975(#)*A008683((n+1)/#)]` -/
def P4534783929794148589.Spec : Prop :=
  ∀ n, P4534783929794148589.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P5461808533967812257

`A003959(A003961(n+1))/A061142(n+1)`
-/

namespace A003962.P5461808533967812257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A003961 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ)

end

end A003962.P5461808533967812257

namespace A003962

/-- `A003959(A003961(n+1))/A061142(n+1)` -/
def P5461808533967812257.Spec : Prop :=
  ∀ n, P5461808533967812257.a n = (A003962 (n + 1) : ℚ)

end A003962

/-! ## A003962.P4105957361888045914

`A003960(A003961(n+1))`
-/

namespace A003962.P4105957361888045914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A003961 (n + 1)).toNat

end

end A003962.P4105957361888045914

namespace A003962

/-- `A003960(A003961(n+1))` -/
def P4105957361888045914.Spec : Prop :=
  ∀ n, P4105957361888045914.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P6505513617588031575

`A003960(A045965(n+1))`
-/

namespace A003962.P6505513617588031575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A045965 (n + 1)).toNat

end

end A003962.P6505513617588031575

namespace A003962

/-- `A003960(A045965(n+1))` -/
def P6505513617588031575.Spec : Prop :=
  ∀ n, P6505513617588031575.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P1432270401911817921

`A003960(A253885(n)+1)`
-/

namespace A003962.P1432270401911817921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A253885 n + 1).toNat

end

end A003962.P1432270401911817921

namespace A003962

/-- `A003960(A253885(n)+1)` -/
def P1432270401911817921.Spec : Prop :=
  ∀ n, P1432270401911817921.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P2719392823129278001

`A003960(or(1, A253885(n)))`
-/

namespace A003962.P2719392823129278001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (Int.lor 1 (A253885 n)).toNat

end

end A003962.P2719392823129278001

namespace A003962

/-- `A003960(or(1, A253885(n)))` -/
def P2719392823129278001.Spec : Prop :=
  ∀ n, P2719392823129278001.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P4580882517076721627

`A003960(xor(1, A253885(n)))`
-/

namespace A003962.P4580882517076721627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (Int.xor 1 (A253885 n)).toNat

end

end A003962.P4580882517076721627

namespace A003962

/-- `A003960(xor(1, A253885(n)))` -/
def P4580882517076721627.Spec : Prop :=
  ∀ n, P4580882517076721627.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P2762601286704905711

`∏{d}[A003961(n+1), A003602(A014963(#))]`
-/

namespace A003962.P2762601286704905711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A003602 (A014963 d).toNat

end

end A003962.P2762601286704905711

namespace A003962

/-- `∏{d}[A003961(n+1), A003602(A014963(#))]` -/
def P2762601286704905711.Spec : Prop :=
  ∀ n, P2762601286704905711.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P12052848280692860833

`A003960(A103517(A253885(n)))`
-/

namespace A003962.P12052848280692860833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A103517 (A253885 n).toNat).toNat

end

end A003962.P12052848280692860833

namespace A003962

/-- `A003960(A103517(A253885(n)))` -/
def P12052848280692860833.Spec : Prop :=
  ∀ n, P12052848280692860833.a n = A003962 (n + 1)

end A003962

/-! ## A003962.P10381756537217065133

`A003974((n+1)²)/A003974(n+1)`
-/

namespace A003962.P10381756537217065133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003974 ((n + 1) ^ 2) : ℚ) / (A003974 (n + 1) : ℚ)

end

end A003962.P10381756537217065133

namespace A003962

/-- `A003974((n+1)²)/A003974(n+1)` -/
def P10381756537217065133.Spec : Prop :=
  ∀ n, P10381756537217065133.a n = (A003962 (n + 1) : ℚ)

end A003962

/-!
# A003963: Fully multiplicative with a(p) = k if p is the k-th prime.

The programs for A003963, the canonical program `A003963.P6853423646423809573` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003963 has offset 1).

The definition of A003963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003963.P6853423646423809573

`A243499(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A003963

/-- `A243499(A156552(n+1))` -/
def P6853423646423809573.Spec : Prop :=
  ∀ n, P6853423646423809573.a n = A003963 (n + 1)

theorem P6853423646423809573.correct : P6853423646423809573.Spec := by
  intro n
  simp only [A003963, Nat.add_sub_cancel]

end A003963

/-! ## A003963.P2736444007854715670

`A227184(A243354(n+1))`
-/

namespace A003963.P2736444007854715670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 (A243354 (n + 1)).toNat

end

end A003963.P2736444007854715670

namespace A003963

/-- `A227184(A243354(n+1))` -/
def P2736444007854715670.Spec : Prop :=
  ∀ n, P2736444007854715670.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P15480829925328952691

`A243504(A241909(n+1))`
-/

namespace A003963.P15480829925328952691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (A241909 (n + 1)).toNat

end

end A003963.P15480829925328952691

namespace A003963

/-- `A243504(A241909(n+1))` -/
def P15480829925328952691.Spec : Prop :=
  ∀ n, P15480829925328952691.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P6627934136317806079

`A064553(A064989(n+1))`
-/

namespace A003963.P6627934136317806079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat

end

end A003963.P6627934136317806079

namespace A003963

/-- `A064553(A064989(n+1))` -/
def P6627934136317806079.Spec : Prop :=
  ∀ n, P6627934136317806079.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P4701592444123160000

`A325036(n+1)+A056239(n+1)`
-/

namespace A003963.P4701592444123160000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) + A056239 (n + 1)

end

end A003963.P4701592444123160000

namespace A003963

/-- `A325036(n+1)+A056239(n+1)` -/
def P4701592444123160000.Spec : Prop :=
  ∀ n, P4701592444123160000.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P1793182814448848396

`A380344(n+1)+A001414(n+1)`
-/

namespace A003963.P1793182814448848396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380344 (n + 1) + A001414 (n + 1)

end

end A003963.P1793182814448848396

namespace A003963

/-- `A380344(n+1)+A001414(n+1)` -/
def P1793182814448848396.Spec : Prop :=
  ∀ n, P1793182814448848396.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P43413844307190451

`A380986(n+1)+A156061(n+1)`
-/

namespace A003963.P43413844307190451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380986 (n + 1) + A156061 (n + 1)

end

end A003963.P43413844307190451

namespace A003963

/-- `A380986(n+1)+A156061(n+1)` -/
def P43413844307190451.Spec : Prop :=
  ∀ n, P43413844307190451.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P11750189935890878615

`A028310(n+1-A175508(n+1))`
-/

namespace A003963.P11750189935890878615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) - A175508 (n + 1)).toNat

end

end A003963.P11750189935890878615

namespace A003963

/-- `A028310(n+1-A175508(n+1))` -/
def P11750189935890878615.Spec : Prop :=
  ∀ n, P11750189935890878615.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P5080216134070823620

`A380409(n+1)-A001414(n+1)`
-/

namespace A003963.P5080216134070823620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 1) - A001414 (n + 1)

end

end A003963.P5080216134070823620

namespace A003963

/-- `A380409(n+1)-A001414(n+1)` -/
def P5080216134070823620.Spec : Prop :=
  ∀ n, P5080216134070823620.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P4512766868978161518

`A379681(n+1)-A056239(n+1)`
-/

namespace A003963.P4512766868978161518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379681 (n + 1) - A056239 (n + 1)

end

end A003963.P4512766868978161518

namespace A003963

/-- `A379681(n+1)-A056239(n+1)` -/
def P4512766868978161518.Spec : Prop :=
  ∀ n, P4512766868978161518.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P2049897008388546086

`A156061(n+1)*A290106(n+1)`
-/

namespace A003963.P2049897008388546086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1) * A290106 (n + 1)

end

end A003963.P2049897008388546086

namespace A003963

/-- `A156061(n+1)*A290106(n+1)` -/
def P2049897008388546086.Spec : Prop :=
  ∀ n, P2049897008388546086.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P8234243287528173040

`A290103(n+1)*A290104(n+1)`
-/

namespace A003963.P8234243287528173040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) * A290104 (n + 1)

end

end A003963.P8234243287528173040

namespace A003963

/-- `A290103(n+1)*A290104(n+1)` -/
def P8234243287528173040.Spec : Prop :=
  ∀ n, P8234243287528173040.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P14034005936737617609

`A290104(n+1)*A316431(2*(n+1))`
-/

namespace A003963.P14034005936737617609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 1) * A316431 (2 * (n + 1))

end

end A003963.P14034005936737617609

namespace A003963

/-- `A290104(n+1)*A316431(2*(n+1))` -/
def P14034005936737617609.Spec : Prop :=
  ∀ n, P14034005936737617609.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P949513962659184485

`A055396(n+1)*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A003963.P949513962659184485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055396 (n + 1) * a (A032742 (n + 1) - 1).toNat

end

end A003963.P949513962659184485

namespace A003963

/-- `A055396(n+1)*a(A032742(n+1)-1)` -/
def P949513962659184485.Spec : Prop :=
  ∀ n, P949513962659184485.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P11231728218485048630

`A061395(n+1)*a(A052126(n+1)-1)` with `a(0)=1`
-/

namespace A003963.P11231728218485048630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061395 (n + 1) * a (A052126 (n + 1) - 1).toNat

end

end A003963.P11231728218485048630

namespace A003963

/-- `A061395(n+1)*a(A052126(n+1)-1)` -/
def P11231728218485048630.Spec : Prop :=
  ∀ n, P11231728218485048630.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P10588982240521679187

`A324933(n+1)/A324932(n+1)*(n+1)`
-/

namespace A003963.P10588982240521679187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324933 (n + 1) : ℚ) / (A324932 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A003963.P10588982240521679187

namespace A003963

/-- `A324933(n+1)/A324932(n+1)*(n+1)` -/
def P10588982240521679187.Spec : Prop :=
  ∀ n, P10588982240521679187.a n = (A003963 (n + 1) : ℚ)

end A003963

/-! ## A003963.P16954938299499573738

`∑{d}[n+1, A003977(#)*A008683((n+1)/#)]`
-/

namespace A003963.P16954938299499573738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003977 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003963.P16954938299499573738

namespace A003963

/-- `∑{d}[n+1, A003977(#)*A008683((n+1)/#)]` -/
def P16954938299499573738.Spec : Prop :=
  ∀ n, P16954938299499573738.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P10839384375532418591

`A290103(n+1)*A290105(n+1)*A290106(n+1)`
-/

namespace A003963.P10839384375532418591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) * A290105 (n + 1) * A290106 (n + 1)

end

end A003963.P10839384375532418591

namespace A003963

/-- `A290103(n+1)*A290105(n+1)*A290106(n+1)` -/
def P10839384375532418591.Spec : Prop :=
  ∀ n, P10839384375532418591.a n = A003963 (n + 1)

end A003963

/-! ## A003963.P14738752556919848623

`A156061(n+1)*A290104(n+1)/A290105(n+1)`
-/

namespace A003963.P14738752556919848623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) * A290104 (n + 1) : ℚ) / (A290105 (n + 1) : ℚ)

end

end A003963.P14738752556919848623

namespace A003963

/-- `A156061(n+1)*A290104(n+1)/A290105(n+1)` -/
def P14738752556919848623.Spec : Prop :=
  ∀ n, P14738752556919848623.a n = (A003963 (n + 1) : ℚ)

end A003963

/-!
# A003964: Fully multiplicative with a(prime(k)) = partition(k+1).

The programs for A003964, there is no canonical definition to state claims against.
-/

/-! ## A003964.P15223039190349245884

`∑{d}[n+1, A003978(#)]`
-/

namespace A003964.P15223039190349245884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003978 d

end

end A003964.P15223039190349245884

/-! ## A003964.P17315308795893801144

`∑{d}[n+1, A003979(#)*A008683((n+1)/#)]`
-/

namespace A003964.P17315308795893801144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003979 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003964.P17315308795893801144

/-! ## A003964.P7298782240341424688

`A299200(A280702(n+1))*A299200(A280703(n+1))`
-/

namespace A003964.P7298782240341424688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A280702 (n + 1)).toNat * A299200 (A280703 (n + 1)).toNat

end

end A003964.P7298782240341424688

/-! ## A003964.P9686124383235743993

`A299200(A003961(n+1))`
-/

namespace A003964.P9686124383235743993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A003961 (n + 1)).toNat

end

end A003964.P9686124383235743993

/-! ## A003964.P7333410082048112342

`A299200(A045965(n+1))`
-/

namespace A003964.P7333410082048112342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A045965 (n + 1)).toNat

end

end A003964.P7333410082048112342

/-! ## A003964.P11670543651995263617

`A299200(A253885(n)+1)`
-/

namespace A003964.P11670543651995263617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A253885 n + 1).toNat

end

end A003964.P11670543651995263617

/-! ## A003964.P9807891981330312545

`A299200(or(1, A253885(n)))`
-/

namespace A003964.P9807891981330312545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (Int.lor 1 (A253885 n)).toNat

end

end A003964.P9807891981330312545

/-! ## A003964.P11095446208031347036

`A299200(A280702(n+1)*A280703(n+1))`
-/

namespace A003964.P11095446208031347036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A280702 (n + 1) * A280703 (n + 1)).toNat

end

end A003964.P11095446208031347036

/-! ## A003964.P8956875632242827050

`A003978((n+1)²)/A003978(n+1)`
-/

namespace A003964.P8956875632242827050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003978 ((n + 1) ^ 2) : ℚ) / (A003978 (n + 1) : ℚ)

end

end A003964.P8956875632242827050

/-! ## A003964.P4677248375411043799

`∏{e}[A181821(n+1), A000041(#+1)]`
-/

namespace A003964.P4677248375411043799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p + 1)

end

end A003964.P4677248375411043799

/-!
# A003965: Fully multiplicative with a(prime(k)) = Fibonacci(k+2).

The programs for A003965, there is no canonical definition to state claims against.
-/

/-! ## A003965.P11872399106407663887

`∑{d}[n+1, A003980(#)]`
-/

namespace A003965.P11872399106407663887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003980 d

end

end A003965.P11872399106407663887

/-! ## A003965.P11417696183077316277

`∑{d}[n+1, A008683(#)*A003981((n+1)/#)]`
-/

namespace A003965.P11417696183077316277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A003981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003965.P11417696183077316277

/-! ## A003965.P13644724639342433905

`A010892(3*n)²*∑{d}[A008619(2*n), A003980(#)]`
-/

namespace A003965.P13644724639342433905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) ^ 2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A003980 d)

end

end A003965.P13644724639342433905

/-! ## A003965.P7695143030011990070

`∏{d}[A003961(n+1), A120250(A014963(#))]`
-/

namespace A003965.P7695143030011990070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A120250 (A014963 d).toNat

end

end A003965.P7695143030011990070

/-! ## A003965.P5461097235014534205

`∏{e}[A181821(n+1), A000045(#+2)]`
-/

namespace A003965.P5461097235014534205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p + 2)

end

end A003965.P5461097235014534205

/-! ## A003965.P12192124548647699426

`∏{e}[A181821(n+1), A304669(A000124(#))]`
-/

namespace A003965.P12192124548647699426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A304669 (A000124 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A003965.P12192124548647699426

/-! ## A003965.P12285104879250790682

`A003980((n+1)²)/A003980(n+1)`
-/

namespace A003965.P12285104879250790682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003980 ((n + 1) ^ 2) : ℚ) / (A003980 (n + 1) : ℚ)

end

end A003965.P12285104879250790682

/-!
# A003966: Möbius transform of A003958.

The programs for A003966, the canonical program `A003966.P8671394006167736022` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003966 has offset 1).

The definition of A003966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003966.P8671394006167736022

`A276833(n+1)*A349340(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003966

/-- `A276833(n+1)*A349340(n+1)` -/
def P8671394006167736022.Spec : Prop :=
  ∀ n, P8671394006167736022.a n = A003966 (n + 1)

theorem P8671394006167736022.correct : P8671394006167736022.Spec := by
  intro n
  simp only [A003966, Nat.add_sub_cancel]

end A003966

/-! ## A003966.P205940162827519583

`∑{d}[n+1, A003967(#)*A007427((n+1)/#)]`
-/

namespace A003966.P205940162827519583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P205940162827519583

namespace A003966

/-- `∑{d}[n+1, A003967(#)*A007427((n+1)/#)]` -/
def P205940162827519583.Spec : Prop :=
  ∀ n, P205940162827519583.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P15553937394853070996

`∑{d}[n+1, A003958(#)*A008683((n+1)/#)]`
-/

namespace A003966.P15553937394853070996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P15553937394853070996

namespace A003966

/-- `∑{d}[n+1, A003958(#)*A008683((n+1)/#)]` -/
def P15553937394853070996.Spec : Prop :=
  ∀ n, P15553937394853070996.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P10334538556311956064

`∑{d}[n+1, A000010(#)*A349340((n+1)/#)]`
-/

namespace A003966.P10334538556311956064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P10334538556311956064

namespace A003966

/-- `∑{d}[n+1, A000010(#)*A349340((n+1)/#)]` -/
def P10334538556311956064.Spec : Prop :=
  ∀ n, P10334538556311956064.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P3867411581643337963

`∑{d}[n+1, A003968(#)*A349355((n+1)/#)]`
-/

namespace A003966.P3867411581643337963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P3867411581643337963

namespace A003966

/-- `∑{d}[n+1, A003968(#)*A349355((n+1)/#)]` -/
def P3867411581643337963.Spec : Prop :=
  ∀ n, P3867411581643337963.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P12905999349071075962

`∑{d}[n+1, A046692(#)*A349130((n+1)/#)]`
-/

namespace A003966.P12905999349071075962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P12905999349071075962

namespace A003966

/-- `∑{d}[n+1, A046692(#)*A349130((n+1)/#)]` -/
def P12905999349071075962.Spec : Prop :=
  ∀ n, P12905999349071075962.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P16566498101237504629

`∑{d}[n+1, A055615(#)*A349131((n+1)/#)]`
-/

namespace A003966.P16566498101237504629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003966.P16566498101237504629

namespace A003966

/-- `∑{d}[n+1, A055615(#)*A349131((n+1)/#)]` -/
def P16566498101237504629.Spec : Prop :=
  ∀ n, P16566498101237504629.a n = A003966 (n + 1)

end A003966

/-! ## A003966.P16265406204288737419

`A003958(n+1)/A023900(n+1)*A276833(n+1)`
-/

namespace A003966.P16265406204288737419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ) * (A276833 (n + 1) : ℚ)

end

end A003966.P16265406204288737419

namespace A003966

/-- `A003958(n+1)/A023900(n+1)*A276833(n+1)` -/
def P16265406204288737419.Spec : Prop :=
  ∀ n, P16265406204288737419.a n = (A003966 (n + 1) : ℚ)

end A003966

/-!
# A003967: Inverse Möbius transform of A003958.

The programs for A003967, the canonical program `A003967.P17708187664325612051` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003967 has offset 1).

The definition of A003967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003967.P17708187664325612051

`∑{d}[n+1, A003958(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A003967

/-- `∑{d}[n+1, A003958(#)]` -/
def P17708187664325612051.Spec : Prop :=
  ∀ n, P17708187664325612051.a n = A003967 (n + 1)

theorem P17708187664325612051.correct : P17708187664325612051.Spec := by
  intro n
  simp only [A003967, Nat.add_sub_cancel]

end A003967

/-! ## A003967.P16066775810282557037

`∑{d}[n+1, A000005(#)*A003966((n+1)/#)]`
-/

namespace A003967.P16066775810282557037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P16066775810282557037

namespace A003967

/-- `∑{d}[n+1, A000005(#)*A003966((n+1)/#)]` -/
def P16066775810282557037.Spec : Prop :=
  ∀ n, P16066775810282557037.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P5376779053693224176

`∑{d}[n+1, A000203(#)*A349340((n+1)/#)]`
-/

namespace A003967.P5376779053693224176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P5376779053693224176

namespace A003967

/-- `∑{d}[n+1, A000203(#)*A349340((n+1)/#)]` -/
def P5376779053693224176.Spec : Prop :=
  ∀ n, P5376779053693224176.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P7000446772562625779

`∑{d}[n+1, A003969(#)*A349355((n+1)/#)]`
-/

namespace A003967.P7000446772562625779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P7000446772562625779

namespace A003967

/-- `∑{d}[n+1, A003969(#)*A349355((n+1)/#)]` -/
def P7000446772562625779.Spec : Prop :=
  ∀ n, P7000446772562625779.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P14493691680234503430

`∑{d}[n+1, A023900(#)*A349130((n+1)/#)]`
-/

namespace A003967.P14493691680234503430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P14493691680234503430

namespace A003967

/-- `∑{d}[n+1, A023900(#)*A349130((n+1)/#)]` -/
def P14493691680234503430.Spec : Prop :=
  ∀ n, P14493691680234503430.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P6017579386406292706

`∑{d}[n+1, A062953(#)*A349129((n+1)/#)]`
-/

namespace A003967.P6017579386406292706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062953 d * A349129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P6017579386406292706

namespace A003967

/-- `∑{d}[n+1, A062953(#)*A349129((n+1)/#)]` -/
def P6017579386406292706.Spec : Prop :=
  ∀ n, P6017579386406292706.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P6454675165856498884

`∑{d}[n+1, A130054(#)*A349131((n+1)/#)]`
-/

namespace A003967.P6454675165856498884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A349131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003967.P6454675165856498884

namespace A003967

/-- `∑{d}[n+1, A130054(#)*A349131((n+1)/#)]` -/
def P6454675165856498884.Spec : Prop :=
  ∀ n, P6454675165856498884.a n = A003967 (n + 1)

end A003967

/-! ## A003967.P8349428441866664330

`A003977(A290641(n+1))`
-/

namespace A003967.P8349428441866664330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A290641 (n + 1)).toNat

end

end A003967.P8349428441866664330

namespace A003967

/-- `A003977(A290641(n+1))` -/
def P8349428441866664330.Spec : Prop :=
  ∀ n, P8349428441866664330.a n = A003967 (n + 1)

end A003967

/-!
# A003968: Möbius transform of A003959.

The programs for A003968, the canonical program `A003968.P10961526323602588276` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003968 has offset 1).

The definition of A003968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003968.P15738104951988964112

`A348030(n+1)+1+n`
-/

namespace A003968.P15738104951988964112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348030 (n + 1) + 1 + (n : ℤ)

end

end A003968.P15738104951988964112

namespace A003968

/-- `A348030(n+1)+1+n` -/
def P15738104951988964112.Spec : Prop :=
  ∀ n, P15738104951988964112.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P13463404116124037239

`A348971(n+1)+A000010(n+1)`
-/

namespace A003968.P13463404116124037239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) + A000010 (n + 1)

end

end A003968.P13463404116124037239

namespace A003968

/-- `A348971(n+1)+A000010(n+1)` -/
def P13463404116124037239.Spec : Prop :=
  ∀ n, P13463404116124037239.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P16206803179398621945

`A007947(n+1)*A327564(n+1)`
-/

namespace A003968.P16206803179398621945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A327564 (n + 1)

end

end A003968.P16206803179398621945

namespace A003968

/-- `A007947(n+1)*A327564(n+1)` -/
def P16206803179398621945.Spec : Prop :=
  ∀ n, P16206803179398621945.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P1092664697610653840

`A348036(n+1)*A348038(n+1)`
-/

namespace A003968.P1092664697610653840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (n + 1) * A348038 (n + 1)

end

end A003968.P1092664697610653840

namespace A003968

/-- `A348036(n+1)*A348038(n+1)` -/
def P1092664697610653840.Spec : Prop :=
  ∀ n, P1092664697610653840.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P10961526323602588276

`A167338(n+1)/A001615(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003968

/-- `A167338(n+1)/A001615(n+1)` -/
def P10961526323602588276.Spec : Prop :=
  ∀ n, P10961526323602588276.a n = (A003968 (n + 1) : ℚ)

end A003968

/-! ## A003968.P8680891515851161931

`abs(A062953(n+1)*A327564(n+1))`
-/

namespace A003968.P8680891515851161931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1) * A327564 (n + 1)|

end

end A003968.P8680891515851161931

namespace A003968

/-- `abs(A062953(n+1)*A327564(n+1))` -/
def P8680891515851161931.Spec : Prop :=
  ∀ n, P8680891515851161931.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P10289279522951277688

`A348971(n+1)-A219428(n+1)+n`
-/

namespace A003968.P10289279522951277688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) - A219428 (n + 1) + (n : ℤ)

end

end A003968.P10289279522951277688

namespace A003968

/-- `A348971(n+1)-A219428(n+1)+n` -/
def P10289279522951277688.Spec : Prop :=
  ∀ n, P10289279522951277688.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P11860518881258952916

`∏{d}[n+1, A089026(#)]*A327564(n+1)`
-/

namespace A003968.P11860518881258952916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), A089026 d) * A327564 (n + 1)

end

end A003968.P11860518881258952916

namespace A003968

/-- `∏{d}[n+1, A089026(#)]*A327564(n+1)` -/
def P11860518881258952916.Spec : Prop :=
  ∀ n, P11860518881258952916.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P11801033718188593395

`A348971(n+1)+1-A051953(n+1)+n`
-/

namespace A003968.P11801033718188593395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) + (1 - A051953 (n + 1) + (n : ℤ))

end

end A003968.P11801033718188593395

namespace A003968

/-- `A348971(n+1)+1-A051953(n+1)+n` -/
def P11801033718188593395.Spec : Prop :=
  ∀ n, P11801033718188593395.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P8655354674922421578

`∑{d}[n+1, A003969(#)*A007427((n+1)/#)]`
-/

namespace A003968.P8655354674922421578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P8655354674922421578

namespace A003968

/-- `∑{d}[n+1, A003969(#)*A007427((n+1)/#)]` -/
def P8655354674922421578.Spec : Prop :=
  ∀ n, P8655354674922421578.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P8932662522188264645

`∑{d}[n+1, A003959(#)*A008683((n+1)/#)]`
-/

namespace A003968.P8932662522188264645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P8932662522188264645

namespace A003968

/-- `∑{d}[n+1, A003959(#)*A008683((n+1)/#)]` -/
def P8932662522188264645.Spec : Prop :=
  ∀ n, P8932662522188264645.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P17145762300475383035

`∑{d}[n+1, A000010(#)*A327564((n+1)/#)]`
-/

namespace A003968.P17145762300475383035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P17145762300475383035

namespace A003968

/-- `∑{d}[n+1, A000010(#)*A327564((n+1)/#)]` -/
def P17145762300475383035.Spec : Prop :=
  ∀ n, P17145762300475383035.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P492125624777729345

`∑{d}[n+1, A003966(#)*A349356((n+1)/#)]`
-/

namespace A003968.P492125624777729345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P492125624777729345

namespace A003968

/-- `∑{d}[n+1, A003966(#)*A349356((n+1)/#)]` -/
def P492125624777729345.Spec : Prop :=
  ∀ n, P492125624777729345.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P13114837532496921206

`∑{d}[n+1, A046692(#)*A349170((n+1)/#)]`
-/

namespace A003968.P13114837532496921206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P13114837532496921206

namespace A003968

/-- `∑{d}[n+1, A046692(#)*A349170((n+1)/#)]` -/
def P13114837532496921206.Spec : Prop :=
  ∀ n, P13114837532496921206.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P3971997798409408853

`∑{d}[n+1, A055615(#)*A349171((n+1)/#)]`
-/

namespace A003968.P3971997798409408853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P3971997798409408853

namespace A003968

/-- `∑{d}[n+1, A055615(#)*A349171((n+1)/#)]` -/
def P3971997798409408853.Spec : Prop :=
  ∀ n, P3971997798409408853.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P18294926048565952149

`∑{d}[n+1, A162510(#)*A340368((n+1)/#)]`
-/

namespace A003968.P18294926048565952149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162510 d * A340368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P18294926048565952149

namespace A003968

/-- `∑{d}[n+1, A162510(#)*A340368((n+1)/#)]` -/
def P18294926048565952149.Spec : Prop :=
  ∀ n, P18294926048565952149.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P16797771148800217454

`∑{d}[n+1, A341635(#)*A349129((n+1)/#)]`
-/

namespace A003968.P16797771148800217454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341635 d * A349129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003968.P16797771148800217454

namespace A003968

/-- `∑{d}[n+1, A341635(#)*A349129((n+1)/#)]` -/
def P16797771148800217454.Spec : Prop :=
  ∀ n, P16797771148800217454.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P9232875010422215462

`A003959(A003557(n+1))*A007947(n+1)`
-/

namespace A003968.P9232875010422215462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A003968.P9232875010422215462

namespace A003968

/-- `A003959(A003557(n+1))*A007947(n+1)` -/
def P9232875010422215462.Spec : Prop :=
  ∀ n, P9232875010422215462.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P208300181458071032

`(A318305(n+1)+A173557(n+1))*A327564(n+1)`
-/

namespace A003968.P208300181458071032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318305 (n + 1) + A173557 (n + 1)) * A327564 (n + 1)

end

end A003968.P208300181458071032

namespace A003968

/-- `(A318305(n+1)+A173557(n+1))*A327564(n+1)` -/
def P208300181458071032.Spec : Prop :=
  ∀ n, P208300181458071032.a n = A003968 (n + 1)

end A003968

/-! ## A003968.P15776762016917352023

`A007947(n+1)*A348038(n+1)*A348039(n+1)`
-/

namespace A003968.P15776762016917352023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A348038 (n + 1) * A348039 (n + 1)

end

end A003968.P15776762016917352023

namespace A003968

/-- `A007947(n+1)*A348038(n+1)*A348039(n+1)` -/
def P15776762016917352023.Spec : Prop :=
  ∀ n, P15776762016917352023.a n = A003968 (n + 1)

end A003968

/-!
# A003969: Inverse Möbius transform of A003959.

The programs for A003969, the canonical program `A003969.P3425583708313804198` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003969 has offset 1).

The definition of A003969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003969.P3425583708313804198

`∑{d}[n+1, A003959(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003969

/-- `∑{d}[n+1, A003959(#)]` -/
def P3425583708313804198.Spec : Prop :=
  ∀ n, P3425583708313804198.a n = A003969 (n + 1)

theorem P3425583708313804198.correct : P3425583708313804198.Spec := by
  intro n
  simp only [A003969, Nat.add_sub_cancel]

end A003969

/-! ## A003969.P15278273893610494004

`∑{d}[n+1, A000005(#)*A003968((n+1)/#)]`
-/

namespace A003969.P15278273893610494004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P15278273893610494004

namespace A003969

/-- `∑{d}[n+1, A000005(#)*A003968((n+1)/#)]` -/
def P15278273893610494004.Spec : Prop :=
  ∀ n, P15278273893610494004.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P6366151808249582984

`∑{d}[n+1, A000203(#)*A327564((n+1)/#)]`
-/

namespace A003969.P6366151808249582984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P6366151808249582984

namespace A003969

/-- `∑{d}[n+1, A000203(#)*A327564((n+1)/#)]` -/
def P6366151808249582984.Spec : Prop :=
  ∀ n, P6366151808249582984.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P12704598330559297922

`∑{d}[n+1, A003967(#)*A349356((n+1)/#)]`
-/

namespace A003969.P12704598330559297922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P12704598330559297922

namespace A003969

/-- `∑{d}[n+1, A003967(#)*A349356((n+1)/#)]` -/
def P12704598330559297922.Spec : Prop :=
  ∀ n, P12704598330559297922.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P16600893433578245240

`∑{d}[n+1, A023900(#)*A349170((n+1)/#)]`
-/

namespace A003969.P16600893433578245240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P16600893433578245240

namespace A003969

/-- `∑{d}[n+1, A023900(#)*A349170((n+1)/#)]` -/
def P16600893433578245240.Spec : Prop :=
  ∀ n, P16600893433578245240.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P9764714040392348075

`∑{d}[n+1, A130054(#)*A349171((n+1)/#)]`
-/

namespace A003969.P9764714040392348075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A349171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P9764714040392348075

namespace A003969

/-- `∑{d}[n+1, A130054(#)*A349171((n+1)/#)]` -/
def P9764714040392348075.Spec : Prop :=
  ∀ n, P9764714040392348075.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P385539454016914880

`∑{d}[n+1, A182139(#)*A340368((n+1)/#)]`
-/

namespace A003969.P385539454016914880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A182139 d * A340368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P385539454016914880

namespace A003969

/-- `∑{d}[n+1, A182139(#)*A340368((n+1)/#)]` -/
def P385539454016914880.Spec : Prop :=
  ∀ n, P385539454016914880.a n = A003969 (n + 1)

end A003969

/-! ## A003969.P4056574233696598011

`∑{d}[n+1, A276833(#)*A349129((n+1)/#)]`
-/

namespace A003969.P4056574233696598011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276833 d * A349129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003969.P4056574233696598011

namespace A003969

/-- `∑{d}[n+1, A276833(#)*A349129((n+1)/#)]` -/
def P4056574233696598011.Spec : Prop :=
  ∀ n, P4056574233696598011.a n = A003969 (n + 1)

end A003969

/-!
# A003970: Möbius transform of A003960 (with alternating zeros omitted).

The programs for A003970, the canonical program `A003970.P10563278233507935513` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003970 has offset 1).

The definition of A003970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003970.P17629431311050557245

`A003974(A064216(n+1))`
-/

namespace A003970.P17629431311050557245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (A064216 (n + 1)).toNat

end

end A003970.P17629431311050557245

namespace A003970

/-- `A003974(A064216(n+1))` -/
def P17629431311050557245.Spec : Prop :=
  ∀ n, P17629431311050557245.a n = A003970 (n + 1)

end A003970

/-! ## A003970.P16617662390526109157

`A003974(A243502(n+1)/2)`
-/

namespace A003970.P16617662390526109157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A003970.P16617662390526109157

namespace A003970

/-- `A003974(A243502(n+1)/2)` -/
def P16617662390526109157.Spec : Prop :=
  ∀ n, P16617662390526109157.a n = A003970 (n + 1)

end A003970

/-! ## A003970.P10563278233507935513

`A340368(2*n+1)/A061142(2*n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003970

/-- `A340368(2*n+1)/A061142(2*n+1)` -/
def P10563278233507935513.Spec : Prop :=
  ∀ n, P10563278233507935513.a n = (A003970 (n + 1) : ℚ)

end A003970

/-! ## A003970.P10046960117174976776

`A003974(A064989(Δ[n²]))`
-/

namespace A003970.P10046960117174976776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A003970.P10046960117174976776

namespace A003970

/-- `A003974(A064989(Δ[n²]))` -/
def P10046960117174976776.Spec : Prop :=
  ∀ n, P10046960117174976776.a n = A003970 (n + 1)

end A003970

/-! ## A003970.P17642442450018689245

`A003974(A283463(2*(n+1)))`
-/

namespace A003970.P17642442450018689245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (A283463 (2 * (n + 1))).toNat

end

end A003970.P17642442450018689245

namespace A003970

/-- `A003974(A283463(2*(n+1)))` -/
def P17642442450018689245.Spec : Prop :=
  ∀ n, P17642442450018689245.a n = A003970 (n + 1)

end A003970

/-!
# A003971: Inverse Möbius transform of A003960.

The programs for A003971, the canonical program `A003971.P11619303163833066473` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003971 has offset 1).

The definition of A003971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003971.P11619303163833066473

`∑{d}[n+1, A003960(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003971

/-- `∑{d}[n+1, A003960(#)]` -/
def P11619303163833066473.Spec : Prop :=
  ∀ n, P11619303163833066473.a n = A003971 (n + 1)

theorem P11619303163833066473.correct : P11619303163833066473.Spec := by
  intro n
  simp only [A003971, Nat.add_sub_cancel]

end A003971

/-! ## A003971.P9310889592712622914

`∑{d}[n+1, A290323(A000265(#))]`
-/

namespace A003971.P9310889592712622914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A290323 (A000265 d).toNat

end

end A003971.P9310889592712622914

namespace A003971

/-- `∑{d}[n+1, A290323(A000265(#))]` -/
def P9310889592712622914.Spec : Prop :=
  ∀ n, P9310889592712622914.a n = A003971 (n + 1)

end A003971

/-! ## A003971.P17896428747864282154

`A210713(A214407(n))+A003977(n+1)`
-/

namespace A003971.P17896428747864282154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A214407 n).toNat + A003977 (n + 1)

end

end A003971.P17896428747864282154

namespace A003971

/-- `A210713(A214407(n))+A003977(n+1)` -/
def P17896428747864282154.Spec : Prop :=
  ∀ n, P17896428747864282154.a n = A003971 (n + 1)

end A003971

/-! ## A003971.P3768421172629303313

`∑{d}[A077168(n), A003960(#)]%14`
-/

namespace A003971.P3768421172629303313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A003960 d) 14

end

end A003971.P3768421172629303313

namespace A003971

/-- `∑{d}[A077168(n), A003960(#)]%14` -/
def P3768421172629303313.Spec : Prop :=
  ∀ n, P3768421172629303313.a n = A003971 (n + 1)

end A003971

/-! ## A003971.P11207043988842547814

`A001222(2^∑{d}[A077168(n), A003960(#)])`
-/

namespace A003971.P11207043988842547814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n).natAbs, A003960 d : ℤ))).toNat

end

end A003971.P11207043988842547814

namespace A003971

/-- `A001222(2^∑{d}[A077168(n), A003960(#)])` -/
def P11207043988842547814.Spec : Prop :=
  ∀ n, P11207043988842547814.a n = A003971 (n + 1)

end A003971

/-!
# A003972: Moebius transform of A003961; a(n) = phi(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

The programs for A003972, the canonical program `A003972.P2423200350467876597` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003972 has offset 1).

The definition of A003972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003972.P2423200350467876597

`A000010(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003972

/-- `A000010(A003961(n+1))` -/
def P2423200350467876597.Spec : Prop :=
  ∀ n, P2423200350467876597.a n = A003972 (n + 1)

theorem P2423200350467876597.correct : P2423200350467876597.Spec := by
  intro n
  simp only [A003972, Nat.add_sub_cancel]

end A003972

/-! ## A003972.P6782717846170800904

`A037225(A108228(n+1))`
-/

namespace A003972.P6782717846170800904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A108228 (n + 1)).toNat

end

end A003972.P6782717846170800904

namespace A003972

/-- `A037225(A108228(n+1))` -/
def P6782717846170800904.Spec : Prop :=
  ∀ n, P6782717846170800904.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P1024871105115088610

`A037225(A048673(n+1)-1)`
-/

namespace A003972.P1024871105115088610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A048673 (n + 1) - 1).toNat

end

end A003972.P1024871105115088610

namespace A003972

/-- `A037225(A048673(n+1)-1)` -/
def P1024871105115088610.Spec : Prop :=
  ∀ n, P1024871105115088610.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P6523093461192837836

`A337549(n+1)+1+n`
-/

namespace A003972.P6523093461192837836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337549 (n + 1) + 1 + (n : ℤ)

end

end A003972.P6523093461192837836

namespace A003972

/-- `A337549(n+1)+1+n` -/
def P6523093461192837836.Spec : Prop :=
  ∀ n, P6523093461192837836.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P3744893521494831719

`A353789(n+1)/(n+1)`
-/

namespace A003972.P3744893521494831719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353789 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003972.P3744893521494831719

namespace A003972

/-- `A353789(n+1)/(n+1)` -/
def P3744893521494831719.Spec : Prop :=
  ∀ n, P3744893521494831719.a n = (A003972 (n + 1) : ℚ)

end A003972

/-! ## A003972.P6308925268737894396

`2*(n+1)-A377985(n+1)`
-/

namespace A003972.P6308925268737894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A377985 (n + 1)

end

end A003972.P6308925268737894396

namespace A003972

/-- `2*(n+1)-A377985(n+1)` -/
def P6308925268737894396.Spec : Prop :=
  ∀ n, P6308925268737894396.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P236897101999511860

`∑{d}[n+1, #*A378606((n+1)/#)]`
-/

namespace A003972.P236897101999511860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P236897101999511860

namespace A003972

/-- `∑{d}[n+1, #*A378606((n+1)/#)]` -/
def P236897101999511860.Spec : Prop :=
  ∀ n, P236897101999511860.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P1987045815683593348

`A347100(n+1)+A000010(n+1)`
-/

namespace A003972.P1987045815683593348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347100 (n + 1) + A000010 (n + 1)

end

end A003972.P1987045815683593348

namespace A003972

/-- `A347100(n+1)+A000010(n+1)` -/
def P1987045815683593348.Spec : Prop :=
  ∀ n, P1987045815683593348.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P3090165760856712303

`A347377(n+1)+A347376(n+1)`
-/

namespace A003972.P3090165760856712303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347377 (n + 1) + A347376 (n + 1)

end

end A003972.P3090165760856712303

namespace A003972

/-- `A347377(n+1)+A347376(n+1)` -/
def P3090165760856712303.Spec : Prop :=
  ∀ n, P3090165760856712303.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P15015176867698335294

`A340071(n+1)*A340072(n+1)`
-/

namespace A003972.P15015176867698335294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (n + 1) * A340072 (n + 1)

end

end A003972.P15015176867698335294

namespace A003972

/-- `A340071(n+1)*A340072(n+1)` -/
def P15015176867698335294.Spec : Prop :=
  ∀ n, P15015176867698335294.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P12373887599810055873

`lcm(A339904(n+1), A378220(n+1))`
-/

namespace A003972.P12373887599810055873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A339904 (n + 1)) (A378220 (n + 1))

end

end A003972.P12373887599810055873

namespace A003972

/-- `lcm(A339904(n+1), A378220(n+1))` -/
def P12373887599810055873.Spec : Prop :=
  ∀ n, (P12373887599810055873.a n : ℤ) = A003972 (n + 1)

end A003972

/-! ## A003972.P14029724726224414166

`A349754(n+1)+2*A000010(n+1)`
-/

namespace A003972.P14029724726224414166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349754 (n + 1) + 2 * A000010 (n + 1)

end

end A003972.P14029724726224414166

namespace A003972

/-- `A349754(n+1)+2*A000010(n+1)` -/
def P14029724726224414166.Spec : Prop :=
  ∀ n, P14029724726224414166.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P1236580899523610969

`(A337544(n+1)+A003961(n+1))/2`
-/

namespace A003972.P1236580899523610969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337544 (n + 1) + A003961 (n + 1) : ℚ) / 2

end

end A003972.P1236580899523610969

namespace A003972

/-- `(A337544(n+1)+A003961(n+1))/2` -/
def P1236580899523610969.Spec : Prop :=
  ∀ n, P1236580899523610969.a n = (A003972 (n + 1) : ℚ)

end A003972

/-! ## A003972.P11371405649949358257

`2*A347100(n+1)-A349754(n+1)`
-/

namespace A003972.P11371405649949358257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347100 (n + 1) - A349754 (n + 1)

end

end A003972.P11371405649949358257

namespace A003972

/-- `2*A347100(n+1)-A349754(n+1)` -/
def P11371405649949358257.Spec : Prop :=
  ∀ n, P11371405649949358257.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P17101197739845174640

`∑{d}[n+1, A003973(#)*A007427((n+1)/#)]`
-/

namespace A003972.P17101197739845174640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P17101197739845174640

namespace A003972

/-- `∑{d}[n+1, A003973(#)*A007427((n+1)/#)]` -/
def P17101197739845174640.Spec : Prop :=
  ∀ n, P17101197739845174640.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P9277212220712253370

`∑{d}[n+1, A003961(#)*A008683((n+1)/#)]`
-/

namespace A003972.P9277212220712253370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P9277212220712253370

namespace A003972

/-- `∑{d}[n+1, A003961(#)*A008683((n+1)/#)]` -/
def P9277212220712253370.Spec : Prop :=
  ∀ n, P9277212220712253370.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P15931014449953397763

`∑{d}[n+1, A000010(#)*A349387((n+1)/#)]`
-/

namespace A003972.P15931014449953397763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P15931014449953397763

namespace A003972

/-- `∑{d}[n+1, A000010(#)*A349387((n+1)/#)]` -/
def P15931014449953397763.Spec : Prop :=
  ∀ n, P15931014449953397763.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P10531275921413039918

`∑{d}[n+1, A046692(#)*A347136((n+1)/#)]`
-/

namespace A003972.P10531275921413039918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P10531275921413039918

namespace A003972

/-- `∑{d}[n+1, A046692(#)*A347136((n+1)/#)]` -/
def P10531275921413039918.Spec : Prop :=
  ∀ n, P10531275921413039918.a n = A003972 (n + 1)

end A003972

/-! ## A003972.P17333963812311548265

`∑{d}[n+1, A055615(#)*A347137((n+1)/#)]`
-/

namespace A003972.P17333963812311548265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A347137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003972.P17333963812311548265

namespace A003972

/-- `∑{d}[n+1, A055615(#)*A347137((n+1)/#)]` -/
def P17333963812311548265.Spec : Prop :=
  ∀ n, P17333963812311548265.a n = A003972 (n + 1)

end A003972

/-!
# A003973: Inverse Möbius transform of A003961; a(n) = sigma(A003961(n)), where A003961 shifts the prime factorization of n one step towards the larger primes.

The programs for A003973, the canonical program `A003973.P4846480468008244812` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003973 has offset 1).

The definition of A003973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003973.P4730425014564180670

`A336838(n+1)*A336856(n+1)`
-/

namespace A003973.P4730425014564180670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336838 (n + 1) * A336856 (n + 1)

end

end A003973.P4730425014564180670

namespace A003973

/-- `A336838(n+1)*A336856(n+1)` -/
def P4730425014564180670.Spec : Prop :=
  ∀ n, P4730425014564180670.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P15034300988572852283

`2*A336840(n+1)-A000005(n+1)`
-/

namespace A003973.P15034300988572852283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336840 (n + 1) - A000005 (n + 1)

end

end A003973.P15034300988572852283

namespace A003973

/-- `2*A336840(n+1)-A000005(n+1)` -/
def P15034300988572852283.Spec : Prop :=
  ∀ n, P15034300988572852283.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P4846480468008244812

`A000203(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A003973

/-- `A000203(A003961(n+1))` -/
def P4846480468008244812.Spec : Prop :=
  ∀ n, P4846480468008244812.a n = A003973 (n + 1)

theorem P4846480468008244812.correct : P4846480468008244812.Spec := by
  intro n
  simp only [A003973, Nat.add_sub_cancel]

end A003973

/-! ## A003973.P11214108774905473755

`A008438(A108228(n+1))`
-/

namespace A003973.P11214108774905473755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A108228 (n + 1)).toNat

end

end A003973.P11214108774905473755

namespace A003973

/-- `A008438(A108228(n+1))` -/
def P11214108774905473755.Spec : Prop :=
  ∀ n, P11214108774905473755.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P17514807780763439098

`A008438(A048673(n+1)-1)`
-/

namespace A003973.P17514807780763439098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A048673 (n + 1) - 1).toNat

end

end A003973.P17514807780763439098

namespace A003973

/-- `A008438(A048673(n+1)-1)` -/
def P17514807780763439098.Spec : Prop :=
  ∀ n, P17514807780763439098.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P6357714780347798190

`∑{d}[n+1, A003961(#)]`
-/

namespace A003973.P6357714780347798190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d

end

end A003973.P6357714780347798190

namespace A003973

/-- `∑{d}[n+1, A003961(#)]` -/
def P6357714780347798190.Spec : Prop :=
  ∀ n, P6357714780347798190.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P14817888257113661948

`A341528(n+1)/(n+1)`
-/

namespace A003973.P14817888257113661948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003973.P14817888257113661948

namespace A003973

/-- `A341528(n+1)/(n+1)` -/
def P14817888257113661948.Spec : Prop :=
  ∀ n, P14817888257113661948.a n = (A003973 (n + 1) : ℚ)

end A003973

/-! ## A003973.P6916568857182274142

`A336852(n+1)+A000203(n+1)`
-/

namespace A003973.P6916568857182274142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1) + A000203 (n + 1)

end

end A003973.P6916568857182274142

namespace A003973

/-- `A336852(n+1)+A000203(n+1)` -/
def P6916568857182274142.Spec : Prop :=
  ∀ n, P6916568857182274142.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P10699635592301202271

`A336851(n+1)+A003961(n+1)`
-/

namespace A003973.P10699635592301202271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (n + 1) + A003961 (n + 1)

end

end A003973.P10699635592301202271

namespace A003973

/-- `A336851(n+1)+A003961(n+1)` -/
def P10699635592301202271.Spec : Prop :=
  ∀ n, P10699635592301202271.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P10266692803937105321

`A336851(n+1)+A253885(n)+1`
-/

namespace A003973.P10266692803937105321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (n + 1) + (A253885 n + 1)

end

end A003973.P10266692803937105321

namespace A003973

/-- `A336851(n+1)+A253885(n)+1` -/
def P10266692803937105321.Spec : Prop :=
  ∀ n, P10266692803937105321.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P8172071126483312879

`A336847(n+1)+A336846(n+1)`
-/

namespace A003973.P8172071126483312879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336847 (n + 1) + A336846 (n + 1)

end

end A003973.P8172071126483312879

namespace A003973

/-- `A336847(n+1)+A336846(n+1)` -/
def P8172071126483312879.Spec : Prop :=
  ∀ n, P8172071126483312879.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P9052325799257367366

`A074400(n+1)-A378752(n+1)`
-/

namespace A003973.P9052325799257367366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A378752 (n + 1)

end

end A003973.P9052325799257367366

namespace A003973

/-- `A074400(n+1)-A378752(n+1)` -/
def P9052325799257367366.Spec : Prop :=
  ∀ n, P9052325799257367366.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P802512592096675944

`A249734(n+1)-A388975(n+1)`
-/

namespace A003973.P802512592096675944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249734 (n + 1) - A388975 (n + 1)

end

end A003973.P802512592096675944

namespace A003973

/-- `A249734(n+1)-A388975(n+1)` -/
def P802512592096675944.Spec : Prop :=
  ∀ n, P802512592096675944.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P17292913443457736358

`A336845(n+1)-A336841(n+1)`
-/

namespace A003973.P17292913443457736358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A336841 (n + 1)

end

end A003973.P17292913443457736358

namespace A003973

/-- `A336845(n+1)-A336841(n+1)` -/
def P17292913443457736358.Spec : Prop :=
  ∀ n, P17292913443457736358.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P8627817569784302131

`A336846(n+1)*A336848(n+1)`
-/

namespace A003973.P8627817569784302131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336846 (n + 1) * A336848 (n + 1)

end

end A003973.P8627817569784302131

namespace A003973

/-- `A336846(n+1)*A336848(n+1)` -/
def P8627817569784302131.Spec : Prop :=
  ∀ n, P8627817569784302131.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P7519228132250630254

`A336850(n+1)*A341525(n+1)`
-/

namespace A003973.P7519228132250630254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (n + 1) * A341525 (n + 1)

end

end A003973.P7519228132250630254

namespace A003973

/-- `A336850(n+1)*A341525(n+1)` -/
def P7519228132250630254.Spec : Prop :=
  ∀ n, P7519228132250630254.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P9972659294634108779

`A354363(n+1)*A354364(n+1)`
-/

namespace A003973.P9972659294634108779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354363 (n + 1) * A354364 (n + 1)

end

end A003973.P9972659294634108779

namespace A003973

/-- `A354363(n+1)*A354364(n+1)` -/
def P9972659294634108779.Spec : Prop :=
  ∀ n, P9972659294634108779.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P2484430358930746191

`A355932(n+1)*A355933(n+1)`
-/

namespace A003973.P2484430358930746191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355932 (n + 1) * A355933 (n + 1)

end

end A003973.P2484430358930746191

namespace A003973

/-- `A355932(n+1)*A355933(n+1)` -/
def P2484430358930746191.Spec : Prop :=
  ∀ n, P2484430358930746191.a n = A003973 (n + 1)

end A003973

/-! ## A003973.P16177475754713408997

`A361467(n+1)/A003961(n+1)`
-/

namespace A003973.P16177475754713408997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361467 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A003973.P16177475754713408997

namespace A003973

/-- `A361467(n+1)/A003961(n+1)` -/
def P16177475754713408997.Spec : Prop :=
  ∀ n, P16177475754713408997.a n = (A003973 (n + 1) : ℚ)

end A003973

/-! ## A003973.P7952416876615122539

`A344587(n+1)+2*A336851(n+1)`
-/

namespace A003973.P7952416876615122539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + 2 * A336851 (n + 1)

end

end A003973.P7952416876615122539

namespace A003973

/-- `A344587(n+1)+2*A336851(n+1)` -/
def P7952416876615122539.Spec : Prop :=
  ∀ n, P7952416876615122539.a n = A003973 (n + 1)

end A003973

/-!
# A003974: Möbius transform of A003962.

The programs for A003974, the canonical program `A003974.P18403113671087007945` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003974 has offset 1).

The definition of A003974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003974.P14395137881141763212

`∑{d}[n+1, A003975(#)*A007427((n+1)/#)]`
-/

namespace A003974.P14395137881141763212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003975 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003974.P14395137881141763212

namespace A003974

/-- `∑{d}[n+1, A003975(#)*A007427((n+1)/#)]` -/
def P14395137881141763212.Spec : Prop :=
  ∀ n, P14395137881141763212.a n = A003974 (n + 1)

end A003974

/-! ## A003974.P18403113671087007945

`∑{d}[n+1, A003962(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003974

/-- `∑{d}[n+1, A003962(#)*A008683((n+1)/#)]` -/
def P18403113671087007945.Spec : Prop :=
  ∀ n, P18403113671087007945.a n = A003974 (n + 1)

theorem P18403113671087007945.correct : P18403113671087007945.Spec := by
  intro n
  simp only [A003974, Nat.add_sub_cancel]

end A003974

/-! ## A003974.P12528884809955106052

`A003970(A048673(n+1))`
-/

namespace A003974.P12528884809955106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A048673 (n + 1)).toNat

end

end A003974.P12528884809955106052

namespace A003974

/-- `A003970(A048673(n+1))` -/
def P12528884809955106052.Spec : Prop :=
  ∀ n, P12528884809955106052.a n = A003974 (n + 1)

end A003974

/-! ## A003974.P12246247886081358281

`A003970(A253885(n)/2+1)`
-/

namespace A003974.P12246247886081358281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A003974.P12246247886081358281

namespace A003974

/-- `A003970(A253885(n)/2+1)` -/
def P12246247886081358281.Spec : Prop :=
  ∀ n, P12246247886081358281.a n = A003974 (n + 1)

end A003974

/-! ## A003974.P2794225988264447831

`A340368(A003961(n+1))/A061142(n+1)`
-/

namespace A003974.P2794225988264447831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340368 (A003961 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ)

end

end A003974.P2794225988264447831

namespace A003974

/-- `A340368(A003961(n+1))/A061142(n+1)` -/
def P2794225988264447831.Spec : Prop :=
  ∀ n, P2794225988264447831.a n = (A003974 (n + 1) : ℚ)

end A003974

/-! ## A003974.P16674792546016800342

`A340368(A045965(n+1))/A061142(n+1)`
-/

namespace A003974.P16674792546016800342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340368 (A045965 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ)

end

end A003974.P16674792546016800342

namespace A003974

/-- `A340368(A045965(n+1))/A061142(n+1)` -/
def P16674792546016800342.Spec : Prop :=
  ∀ n, P16674792546016800342.a n = (A003974 (n + 1) : ℚ)

end A003974

/-! ## A003974.P518941882476682918

`A003970(A008619(A253885(n)))`
-/

namespace A003974.P518941882476682918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A008619 (A253885 n).toNat).toNat

end

end A003974.P518941882476682918

namespace A003974

/-- `A003970(A008619(A253885(n)))` -/
def P518941882476682918.Spec : Prop :=
  ∀ n, P518941882476682918.a n = A003974 (n + 1)

end A003974

/-!
# A003975: Inverse Möbius transform of A003962.

The programs for A003975, the canonical program `A003975.P5207555401224753949` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003975 has offset 1).

The definition of A003975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003975.P5207555401224753949

`∑{d}[n+1, A003962(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A003975

/-- `∑{d}[n+1, A003962(#)]` -/
def P5207555401224753949.Spec : Prop :=
  ∀ n, P5207555401224753949.a n = A003975 (n + 1)

theorem P5207555401224753949.correct : P5207555401224753949.Spec := by
  intro n
  simp only [A003975, Nat.add_sub_cancel]

end A003975

/-! ## A003975.P12063383423088682683

`∑{d}[n+1, A000005(#)*A003974((n+1)/#)]`
-/

namespace A003975.P12063383423088682683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003974 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003975.P12063383423088682683

namespace A003975

/-- `∑{d}[n+1, A000005(#)*A003974((n+1)/#)]` -/
def P12063383423088682683.Spec : Prop :=
  ∀ n, P12063383423088682683.a n = A003975 (n + 1)

end A003975

/-! ## A003975.P4449514685868751938

`A003971(A003961(n+1))`
-/

namespace A003975.P4449514685868751938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003971 (A003961 (n + 1)).toNat

end

end A003975.P4449514685868751938

namespace A003975

/-- `A003971(A003961(n+1))` -/
def P4449514685868751938.Spec : Prop :=
  ∀ n, P4449514685868751938.a n = A003975 (n + 1)

end A003975

/-! ## A003975.P1608146885021402137

`∑{d}[A003961(n+1), A003960(#)]`
-/

namespace A003975.P1608146885021402137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003960 d

end

end A003975.P1608146885021402137

namespace A003975

/-- `∑{d}[A003961(n+1), A003960(#)]` -/
def P1608146885021402137.Spec : Prop :=
  ∀ n, P1608146885021402137.a n = A003975 (n + 1)

end A003975

/-! ## A003975.P3310528981616082513

`∑{d}[A003961(n+1), A290323(#)]`
-/

namespace A003975.P3310528981616082513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A290323 d

end

end A003975.P3310528981616082513

namespace A003975

/-- `∑{d}[A003961(n+1), A290323(#)]` -/
def P3310528981616082513.Spec : Prop :=
  ∀ n, P3310528981616082513.a n = A003975 (n + 1)

end A003975

/-!
# A003976: Möbius transform of A003963 (with alternate 0's omitted).

The programs for A003976, the canonical program `A003976.P6036627677427720074` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003976 has offset 1).

The definition of A003976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003976.P6036627677427720074

`A003963(A065769(2*n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A003976

/-- `A003963(A065769(2*n+1))` -/
def P6036627677427720074.Spec : Prop :=
  ∀ n, P6036627677427720074.a n = A003976 (n + 1)

theorem P6036627677427720074.correct : P6036627677427720074.Spec := by
  intro n
  simp only [A003976, Nat.add_sub_cancel]

end A003976

/-! ## A003976.P1146761399372300300

`A156061(A064989(2*n+1))*A290106(2*n+1)`
-/

namespace A003976.P1146761399372300300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A064989 (2 * n + 1)).toNat * A290106 (2 * n + 1)

end

end A003976.P1146761399372300300

namespace A003976

/-- `A156061(A064989(2*n+1))*A290106(2*n+1)` -/
def P1146761399372300300.Spec : Prop :=
  ∀ n, P1146761399372300300.a n = A003976 (n + 1)

end A003976

/-! ## A003976.P17715137645393159326

`A204987(A243505(n+1))-1`
-/

namespace A003976.P17715137645393159326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A243505 (n + 1)).toNat - 1

end

end A003976.P17715137645393159326

namespace A003976

/-- `A204987(A243505(n+1))-1` -/
def P17715137645393159326.Spec : Prop :=
  ∀ n, P17715137645393159326.a n = A003976 (n + 1)

end A003976

/-! ## A003976.P11972350341465907963

`A003963(A058026(2*n+1)%A286263(n+1))`
-/

namespace A003976.P11972350341465907963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A058026 (2 * n + 1)) (A286263 (n + 1))).toNat

end

end A003976.P11972350341465907963

namespace A003976

/-- `A003963(A058026(2*n+1)%A286263(n+1))` -/
def P11972350341465907963.Spec : Prop :=
  ∀ n, P11972350341465907963.a n = A003976 (n + 1)

end A003976

/-! ## A003976.P233380499922404728

`ceil(A186988(2*n+1)/A122223(n+1))`
-/

namespace A003976.P233380499922404728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186988 (2 * n + 1) : ℚ) / (A122223 (n + 1) : ℚ)⌉

end

end A003976.P233380499922404728

namespace A003976

/-- `ceil(A186988(2*n+1)/A122223(n+1))` -/
def P233380499922404728.Spec : Prop :=
  ∀ n, P233380499922404728.a n = A003976 (n + 1)

end A003976

/-!
# A003977: Inverse Möbius transform of A003963.

The programs for A003977, the canonical program `A003977.P5657404570532761972` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003977 has offset 1).

The definition of A003977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003977.P5657404570532761972

`∑{d}[n+1, A003963(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A003977

/-- `∑{d}[n+1, A003963(#)]` -/
def P5657404570532761972.Spec : Prop :=
  ∀ n, P5657404570532761972.a n = A003977 (n + 1)

theorem P5657404570532761972.correct : P5657404570532761972.Spec := by
  intro n
  simp only [A003977, Nat.add_sub_cancel]

end A003977

/-! ## A003977.P3622922687455608510

`A028310(∑{d}[xor(n, -1), A003963(#)])`
-/

namespace A003977.P3622922687455608510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d).toNat

end

end A003977.P3622922687455608510

namespace A003977

/-- `A028310(∑{d}[xor(n, -1), A003963(#)])` -/
def P3622922687455608510.Spec : Prop :=
  ∀ n, P3622922687455608510.a n = A003977 (n + 1)

end A003977

/-! ## A003977.P8382478240889943097

`∑{d}[xor(n, -1), A003963(#)]%A017101(n)`
-/

namespace A003977.P8382478240889943097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d) (A017101 n)

end

end A003977.P8382478240889943097

namespace A003977

/-- `∑{d}[xor(n, -1), A003963(#)]%A017101(n)` -/
def P8382478240889943097.Spec : Prop :=
  ∀ n, P8382478240889943097.a n = A003977 (n + 1)

end A003977

/-! ## A003977.P5640832914314598750

`A028310(∑{d}[A131738(n), A003963(#)])`
-/

namespace A003977.P5640832914314598750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d).toNat

end

end A003977.P5640832914314598750

namespace A003977

/-- `A028310(∑{d}[A131738(n), A003963(#)])` -/
def P5640832914314598750.Spec : Prop :=
  ∀ n, P5640832914314598750.a n = A003977 (n + 1)

end A003977

/-! ## A003977.P12295674336870293463

`∑{d}[xor(n, -1), A003963(#)]*A000034(2*n)`
-/

namespace A003977.P12295674336870293463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d) * A000034 (2 * n)

end

end A003977.P12295674336870293463

namespace A003977

/-- `∑{d}[xor(n, -1), A003963(#)]*A000034(2*n)` -/
def P12295674336870293463.Spec : Prop :=
  ∀ n, P12295674336870293463.a n = A003977 (n + 1)

end A003977

/-! ## A003977.P14212648270423518627

`∑{d}[n+1, A225395(A102631(#))]`
-/

namespace A003977.P14212648270423518627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A225395 (A102631 d).toNat

end

end A003977.P14212648270423518627

namespace A003977

/-- `∑{d}[n+1, A225395(A102631(#))]` -/
def P14212648270423518627.Spec : Prop :=
  ∀ n, P14212648270423518627.a n = A003977 (n + 1)

end A003977

/-! ## A003977.P4156027367167578402

`∑{d}[n+1, A005361(A181821(#))]`
-/

namespace A003977.P4156027367167578402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 (A181821 d).toNat

end

end A003977.P4156027367167578402

namespace A003977

/-- `∑{d}[n+1, A005361(A181821(#))]` -/
def P4156027367167578402.Spec : Prop :=
  ∀ n, P4156027367167578402.a n = A003977 (n + 1)

end A003977

/-!
# A003978: Möbius transform of A003964.

The programs for A003978, there is no canonical definition to state claims against.
-/

/-! ## A003978.P18345321180907225135

`∑{d}[n+1, A003979(#)*A007427((n+1)/#)]`
-/

namespace A003978.P18345321180907225135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003979 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003978.P18345321180907225135

/-! ## A003978.P6338228030905928773

`∑{d}[n+1, A003964(#)*A008683((n+1)/#)]`
-/

namespace A003978.P6338228030905928773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003964 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003978.P6338228030905928773

/-! ## A003978.P11685050498793948545

`A067036(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A280406(3*n+1))`
-/

namespace A003978.P11685050498793948545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067036 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A280406 (3 * n + 1))).toNat

end

end A003978.P11685050498793948545

/-! ## A003978.P13068262420642976363

`A335462(A175381(n+1))+A000010(n+1)`
-/

namespace A003978.P13068262420642976363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A175381 (n + 1)).toNat + A000010 (n + 1)

end

end A003978.P13068262420642976363

/-! ## A003978.P17934429388115337821

`A178859(A000010(n+1)%A102878(n+1))`
-/

namespace A003978.P17934429388115337821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178859 (Int.tmod (A000010 (n + 1)) (A102878 (n + 1))).toNat

end

end A003978.P17934429388115337821

/-!
# A003979: Inverse Möbius transform of A003964.

The programs for A003979, there is no canonical definition to state claims against.
-/

/-! ## A003979.P18434981895368684086

`∑{d}[n+1, A003964(#)]`
-/

namespace A003979.P18434981895368684086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003964 d

end

end A003979.P18434981895368684086

/-! ## A003979.P9226314142520072865

`∑{d}[n+1, A000005(#)*A003978((n+1)/#)]`
-/

namespace A003979.P9226314142520072865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003979.P9226314142520072865

/-! ## A003979.P1076009027107703255

`∑{d}[A003961(n+1), A299200(#)]`
-/

namespace A003979.P1076009027107703255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A299200 d

end

end A003979.P1076009027107703255

/-! ## A003979.P4895397407537572995

`∑{d}[A280702(n+1)*A280703(n+1), A299200(#)]`
-/

namespace A003979.P4895397407537572995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1) * A280703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A299200 d

end

end A003979.P4895397407537572995

/-! ## A003979.P16188185002925053571

`A241910(A325703(n+1))+∑{d}[n+1, #]`
-/

namespace A003979.P16188185002925053571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241910 (A325703 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A003979.P16188185002925053571

/-!
# A003980: Möbius transform of A003965.

The programs for A003980, there is no canonical definition to state claims against.
-/

/-! ## A003980.P10447866497865104749

`∑{d}[n+1, A003981(#)*A007427((n+1)/#)]`
-/

namespace A003980.P10447866497865104749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003981 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003980.P10447866497865104749

/-! ## A003980.P13789195241770803693

`∑{d}[n+1, A008683(#)*A003965((n+1)/#)]`
-/

namespace A003980.P13789195241770803693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A003965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003980.P13789195241770803693

/-! ## A003980.P17034230917165231589

`A348616(A089408(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A003980.P17034230917165231589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348616 (A089408 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A003980.P17034230917165231589

/-! ## A003980.P5442922073319308082

`A343660(A000930(n))+A000010(n+1)`
-/

namespace A003980.P5442922073319308082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343660 (A000930 n).toNat + A000010 (n + 1)

end

end A003980.P5442922073319308082

/-! ## A003980.P8101762081280215672

`floor(A053191(n+1)/A102508(n+1))`
-/

namespace A003980.P8101762081280215672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053191 (n + 1) : ℚ) / (A102508 (n + 1) : ℚ)⌋

end

end A003980.P8101762081280215672

/-!
# A003981: Inverse Möbius transform of A003965.

The programs for A003981, there is no canonical definition to state claims against.
-/

/-! ## A003981.P10447678697974106138

`∑{d}[n+1, A003965(#)]`
-/

namespace A003981.P10447678697974106138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003965 d

end

end A003981.P10447678697974106138

/-! ## A003981.P118055432737228419

`∑{d}[n+1, A000005(#)*A003980((n+1)/#)]`
-/

namespace A003981.P118055432737228419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003981.P118055432737228419

/-! ## A003981.P6299277481363505501

`A144625(A081408(n))+∑{d}[n+1, #]`
-/

namespace A003981.P6299277481363505501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (A081408 n).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A003981.P6299277481363505501

/-! ## A003981.P8073678693029585986

`A225099(A056904(n))+∑{d}[n+1, #]`
-/

namespace A003981.P8073678693029585986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A056904 n).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A003981.P8073678693029585986

/-! ## A003981.P15578903615265168823

`A346632(A032020(n))+∑{d}[n+1, #]`
-/

namespace A003981.P15578903615265168823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A032020 n).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A003981.P15578903615265168823

/-!
# A003982: Table read by rows: 1 if x = y, 0 otherwise, where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

The programs for A003982, the canonical program `A003982.P6136202056268562101` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003982 has offset 0).

The definition of A003982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003982.P6136202056268562101

`floor(sqrt(2*n+1))-floor(sqrt(2*n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003982

/-- `floor(sqrt(2*n+1))-floor(sqrt(2*n))` -/
def P6136202056268562101.Spec : Prop :=
  ∀ n, P6136202056268562101.a n = A003982 n

theorem P6136202056268562101.correct : P6136202056268562101.Spec := by
  intro n
  simp only [A003982]

end A003982

/-! ## A003982.P13399827333893576201

`∑{d}[comp[2*n], #]%2`
-/

namespace A003982.P13399827333893576201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A003982.P13399827333893576201

namespace A003982

/-- `∑{d}[comp[2*n], #]%2` -/
def P13399827333893576201.Spec : Prop :=
  ∀ n, (P13399827333893576201.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P756891173636122991

`and(1, ∑{d}[comp[2*n], #])`
-/

namespace A003982.P756891173636122991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A003982.P756891173636122991

namespace A003982

/-- `and(1, ∑{d}[comp[2*n], #])` -/
def P756891173636122991.Spec : Prop :=
  ∀ n, (P756891173636122991.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P7707543377849382498

`and(1, char[2*(n²+n)])`
-/

namespace A003982.P7707543377849382498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A003982.P7707543377849382498

namespace A003982

/-- `and(1, char[2*(n²+n)])` -/
def P7707543377849382498.Spec : Prop :=
  ∀ n, (P7707543377849382498.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P2640732717866630534

`∏{e}[Δ[n²], #+1]%2`
-/

namespace A003982.P2640732717866630534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A003982.P2640732717866630534

namespace A003982

/-- `∏{e}[Δ[n²], #+1]%2` -/
def P2640732717866630534.Spec : Prop :=
  ∀ n, (P2640732717866630534.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P17558529930742450221

`(∑{d}[2*n+1, #]%2)²`
-/

namespace A003982.P17558529930742450221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d) % 2) ^ 2

end

end A003982.P17558529930742450221

namespace A003982

/-- `(∑{d}[2*n+1, #]%2)²` -/
def P17558529930742450221.Spec : Prop :=
  ∀ n, (P17558529930742450221.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P11275854689877270036

`and(1, ∑{d}[2*n+1, #])²`
-/

namespace A003982.P11275854689877270036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A003982.P11275854689877270036

namespace A003982

/-- `and(1, ∑{d}[2*n+1, #])²` -/
def P11275854689877270036.Spec : Prop :=
  ∀ n, (P11275854689877270036.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P6949146282007222934

`sqrt(and(1, ∑{d}[2*n+1, #]))`
-/

namespace A003982.P6949146282007222934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A003982.P6949146282007222934

namespace A003982

/-- `sqrt(and(1, ∑{d}[2*n+1, #]))` -/
def P6949146282007222934.Spec : Prop :=
  ∀ n, P6949146282007222934.a n = (A003982 n : ℝ)

end A003982

/-! ## A003982.P9173910297077362663

`∏{e}[2*n+1, log2(gcd(2, #))]`
-/

namespace A003982.P9173910297077362663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.gcd 2 (Nat.factorization (f1 n) p) : ℝ)

end

end A003982.P9173910297077362663

namespace A003982

/-- `∏{e}[2*n+1, log2(gcd(2, #))]` -/
def P9173910297077362663.Spec : Prop :=
  ∀ n, P9173910297077362663.a n = (A003982 n : ℝ)

end A003982

/-! ## A003982.P2736123474180510063

`dr(and(1, ∑{d}[2*n+1, #]))`
-/

namespace A003982.P2736123474180510063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)

end

end A003982.P2736123474180510063

namespace A003982

/-- `dr(and(1, ∑{d}[2*n+1, #]))` -/
def P2736123474180510063.Spec : Prop :=
  ∀ n, (P2736123474180510063.a n : ℤ) = A003982 n

end A003982

/-! ## A003982.P17964664193900842222

`ceil(sin(char[(n+1)*2*n]))`
-/

namespace A003982.P17964664193900842222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A003982.P17964664193900842222

namespace A003982

/-- `ceil(sin(char[(n+1)*2*n]))` -/
def P17964664193900842222.Spec : Prop :=
  ∀ n, P17964664193900842222.a n = A003982 n

end A003982

/-! ## A003982.P12521280249190750886

`floor(tan(char[(n+1)*2*n]))`
-/

namespace A003982.P12521280249190750886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A003982.P12521280249190750886

namespace A003982

/-- `floor(tan(char[(n+1)*2*n]))` -/
def P12521280249190750886.Spec : Prop :=
  ∀ n, P12521280249190750886.a n = A003982 n

end A003982

/-! ## A003982.P5092615604916167179

`round(sin(char[(n+1)*2*n]))`
-/

namespace A003982.P5092615604916167179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A003982.P5092615604916167179

namespace A003982

/-- `round(sin(char[(n+1)*2*n]))` -/
def P5092615604916167179.Spec : Prop :=
  ∀ n, P5092615604916167179.a n = A003982 n

end A003982

/-! ## A003982.P13619905352917548263

`floor(asin(char[(n+1)*2*n]))`
-/

namespace A003982.P13619905352917548263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A003982.P13619905352917548263

namespace A003982

/-- `floor(asin(char[(n+1)*2*n]))` -/
def P13619905352917548263.Spec : Prop :=
  ∀ n, P13619905352917548263.a n = A003982 n

end A003982

/-! ## A003982.P2180655742769356044

`ceil(atan(char[(n+1)*2*n]))`
-/

namespace A003982.P2180655742769356044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A003982.P2180655742769356044

namespace A003982

/-- `ceil(atan(char[(n+1)*2*n]))` -/
def P2180655742769356044.Spec : Prop :=
  ∀ n, P2180655742769356044.a n = A003982 n

end A003982

/-! ## A003982.P1143938474817198517

`round(atan(char[(n+1)*2*n]))`
-/

namespace A003982.P1143938474817198517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A003982.P1143938474817198517

namespace A003982

/-- `round(atan(char[(n+1)*2*n]))` -/
def P1143938474817198517.Spec : Prop :=
  ∀ n, P1143938474817198517.a n = A003982 n

end A003982

/-! ## A003982.P11173762012963101352

`floor(sinh(char[(n+1)*2*n]))`
-/

namespace A003982.P11173762012963101352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A003982.P11173762012963101352

namespace A003982

/-- `floor(sinh(char[(n+1)*2*n]))` -/
def P11173762012963101352.Spec : Prop :=
  ∀ n, P11173762012963101352.a n = A003982 n

end A003982

/-! ## A003982.P5802897996411250125

`round(sinh(char[(n+1)*2*n]))`
-/

namespace A003982.P5802897996411250125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A003982.P5802897996411250125

namespace A003982

/-- `round(sinh(char[(n+1)*2*n]))` -/
def P5802897996411250125.Spec : Prop :=
  ∀ n, P5802897996411250125.a n = A003982 n

end A003982

/-! ## A003982.P10423582149094851207

`ceil(tanh(char[(n+1)*2*n]))`
-/

namespace A003982.P10423582149094851207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A003982.P10423582149094851207

namespace A003982

/-- `ceil(tanh(char[(n+1)*2*n]))` -/
def P10423582149094851207.Spec : Prop :=
  ∀ n, P10423582149094851207.a n = A003982 n

end A003982

/-! ## A003982.P16537003204808623618

`round(tanh(char[(n+1)*2*n]))`
-/

namespace A003982.P16537003204808623618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A003982.P16537003204808623618

namespace A003982

/-- `round(tanh(char[(n+1)*2*n]))` -/
def P16537003204808623618.Spec : Prop :=
  ∀ n, P16537003204808623618.a n = A003982 n

end A003982

/-!
# A003983: Array read by antidiagonals with T(n,k) = min(n,k).

The programs for A003983, the canonical program `A003983.P15269842853270651919` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003983 has offset 1).

The definition of A003983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003983.P11470697313818692882

`A004197(n)+1`
-/

namespace A003983.P11470697313818692882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + 1

end

end A003983.P11470697313818692882

namespace A003983

/-- `A004197(n)+1` -/
def P11470697313818692882.Spec : Prop :=
  ∀ n, P11470697313818692882.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P6011198224900625434

`sqrt(A106314(n+1))`
-/

namespace A003983.P6011198224900625434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106314 (n + 1) : ℝ)

end

end A003983.P6011198224900625434

namespace A003983

/-- `sqrt(A106314(n+1))` -/
def P6011198224900625434.Spec : Prop :=
  ∀ n, P6011198224900625434.a n = (A003983 (n + 1) : ℝ)

end A003983

/-! ## A003983.P9145571930034307561

`log2(A143086(n)+1)`
-/

namespace A003983.P9145571930034307561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A143086 n + 1 : ℝ)

end

end A003983.P9145571930034307561

namespace A003983

/-- `log2(A143086(n)+1)` -/
def P9145571930034307561.Spec : Prop :=
  ∀ n, P9145571930034307561.a n = (A003983 (n + 1) : ℝ)

end A003983

/-! ## A003983.P9916197727697073975

`log2(A144464(n))+1`
-/

namespace A003983.P9916197727697073975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A144464 n : ℝ) + 1

end

end A003983.P9916197727697073975

namespace A003983

/-- `log2(A144464(n))+1` -/
def P9916197727697073975.Spec : Prop :=
  ∀ n, P9916197727697073975.a n = (A003983 (n + 1) : ℝ)

end A003983

/-! ## A003983.P5551533581256826930

`sqrt(A168281(n+1)/2)`
-/

namespace A003983.P5551533581256826930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A168281 (n + 1) : ℚ) / 2 : ℝ)

end

end A003983.P5551533581256826930

namespace A003983

/-- `sqrt(A168281(n+1)/2)` -/
def P5551533581256826930.Spec : Prop :=
  ∀ n, P5551533581256826930.a n = (A003983 (n + 1) : ℝ)

end A003983

/-! ## A003983.P15269842853270651919

`floor(A157458(n)/2)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A003983

/-- `floor(A157458(n)/2)+1` -/
def P15269842853270651919.Spec : Prop :=
  ∀ n, P15269842853270651919.a n = A003983 (n + 1)

theorem P15269842853270651919.correct : P15269842853270651919.Spec := by
  intro n
  simp only [A003983, Nat.add_sub_cancel]

end A003983

/-! ## A003983.P5320529821829566134

`ceil(A157454(n+1)/2)`
-/

namespace A003983.P5320529821829566134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157454 (n + 1) : ℚ) / 2⌉

end

end A003983.P5320529821829566134

namespace A003983

/-- `ceil(A157454(n+1)/2)` -/
def P5320529821829566134.Spec : Prop :=
  ∀ n, P5320529821829566134.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P9764081495516825058

`(A204028(n+1)+2)/3`
-/

namespace A003983.P9764081495516825058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204028 (n + 1) + 2 : ℚ) / 3

end

end A003983.P9764081495516825058

namespace A003983

/-- `(A204028(n+1)+2)/3` -/
def P9764081495516825058.Spec : Prop :=
  ∀ n, P9764081495516825058.a n = (A003983 (n + 1) : ℚ)

end A003983

/-! ## A003983.P5976084113296019088

`A008621(A115281(n))`
-/

namespace A003983.P5976084113296019088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A115281 n).toNat

end

end A003983.P5976084113296019088

namespace A003983

/-- `A008621(A115281(n))` -/
def P5976084113296019088.Spec : Prop :=
  ∀ n, P5976084113296019088.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P15761179597080735777

`A008619(A157458(n))`
-/

namespace A003983.P15761179597080735777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157458 n).toNat

end

end A003983.P15761179597080735777

namespace A003983

/-- `A008619(A157458(n))` -/
def P15761179597080735777.Spec : Prop :=
  ∀ n, P15761179597080735777.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P12942553329423502831

`A002024(A106255(n+1))`
-/

namespace A003983.P12942553329423502831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A106255 (n + 1)).toNat

end

end A003983.P12942553329423502831

namespace A003983

/-- `A002024(A106255(n+1))` -/
def P12942553329423502831.Spec : Prop :=
  ∀ n, P12942553329423502831.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P3166577943448187665

`A000720(A138139(n+1))`
-/

namespace A003983.P3166577943448187665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138139 (n + 1)).toNat

end

end A003983.P3166577943448187665

namespace A003983

/-- `A000720(A138139(n+1))` -/
def P3166577943448187665.Spec : Prop :=
  ∀ n, P3166577943448187665.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P11999264245587031344

`A002262(A379777(n))+1`
-/

namespace A003983.P11999264245587031344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A379777 n).toNat + 1

end

end A003983.P11999264245587031344

namespace A003983

/-- `A002262(A379777(n))+1` -/
def P11999264245587031344.Spec : Prop :=
  ∀ n, P11999264245587031344.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P5367043486355011565

`A008619(2*A004197(n))`
-/

namespace A003983.P5367043486355011565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A004197 n).toNat

end

end A003983.P5367043486355011565

namespace A003983

/-- `A008619(2*A004197(n))` -/
def P5367043486355011565.Spec : Prop :=
  ∀ n, P5367043486355011565.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P1726994077350941106

`A027656(2*A004197(n))`
-/

namespace A003983.P1726994077350941106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A004197 n).toNat

end

end A003983.P1726994077350941106

namespace A003983

/-- `A027656(2*A004197(n))` -/
def P1726994077350941106.Spec : Prop :=
  ∀ n, P1726994077350941106.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P3180581084210692962

`A144480(n)/A007318(n)`
-/

namespace A003983.P3180581084210692962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144480 n : ℚ) / (A007318 n : ℚ)

end

end A003983.P3180581084210692962

namespace A003983

/-- `A144480(n)/A007318(n)` -/
def P3180581084210692962.Spec : Prop :=
  ∀ n, P3180581084210692962.a n = (A003983 (n + 1) : ℚ)

end A003983

/-! ## A003983.P9427478767186547035

`A004736(A106255(n+1)+2)`
-/

namespace A003983.P9427478767186547035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A106255 (n + 1) + 2).toNat

end

end A003983.P9427478767186547035

namespace A003983

/-- `A004736(A106255(n+1)+2)` -/
def P9427478767186547035.Spec : Prop :=
  ∀ n, P9427478767186547035.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P245982946029172791

`A002260(2*A106314(n+1))`
-/

namespace A003983.P245982946029172791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A106314 (n + 1)).toNat

end

end A003983.P245982946029172791

namespace A003983

/-- `A002260(2*A106314(n+1))` -/
def P245982946029172791.Spec : Prop :=
  ∀ n, P245982946029172791.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P12088755204114978709

`A004737(2*A106255(n+1))`
-/

namespace A003983.P12088755204114978709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * A106255 (n + 1)).toNat

end

end A003983.P12088755204114978709

namespace A003983

/-- `A004737(2*A106255(n+1))` -/
def P12088755204114978709.Spec : Prop :=
  ∀ n, P12088755204114978709.a n = A003983 (n + 1)

end A003983

/-! ## A003983.P3339828959791187335

`A077605(n+1)+A053616(n)`
-/

namespace A003983.P3339828959791187335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) + A053616 n

end

end A003983.P3339828959791187335

namespace A003983

/-- `A077605(n+1)+A053616(n)` -/
def P3339828959791187335.Spec : Prop :=
  ∀ n, P3339828959791187335.a n = A003983 (n + 1)

end A003983

/-!
# A003984: Table of max(x,y), where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

The programs for A003984, the canonical program `A003984.P8615453586607429040` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003984 has offset 0).

The definition of A003984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003984.P5078633272988621589

`A003056(n)-A004197(n)`
-/

namespace A003984.P5078633272988621589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A004197 n

end

end A003984.P5078633272988621589

namespace A003984

/-- `A003056(n)-A004197(n)` -/
def P5078633272988621589.Spec : Prop :=
  ∀ n, P5078633272988621589.a n = A003984 n

end A003984

/-! ## A003984.P8615453586607429040

`(A003056(n)+A049581(n))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A003984

/-- `(A003056(n)+A049581(n))/2` -/
def P8615453586607429040.Spec : Prop :=
  ∀ n, P8615453586607429040.a n = (A003984 n : ℚ)

end A003984

/-! ## A003984.P2263735728976258415

`floor(sqrt(A220508(n)))`
-/

namespace A003984.P2263735728976258415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A220508 n)

end

end A003984.P2263735728976258415

namespace A003984

/-- `floor(sqrt(A220508(n)))` -/
def P2263735728976258415.Spec : Prop :=
  ∀ n, P2263735728976258415.a n = A003984 n

end A003984

/-! ## A003984.P13403155692617978208

`floor(sqrt(A316323(n)))`
-/

namespace A003984.P13403155692617978208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A316323 n)

end

end A003984.P13403155692617978208

namespace A003984

/-- `floor(sqrt(A316323(n)))` -/
def P13403155692617978208.Spec : Prop :=
  ∀ n, P13403155692617978208.a n = A003984 n

end A003984

/-! ## A003984.P16862980412406883475

`floor(log2(A131816(n)))`
-/

namespace A003984.P16862980412406883475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A131816 n).toNat

end

end A003984.P16862980412406883475

namespace A003984

/-- `floor(log2(A131816(n)))` -/
def P16862980412406883475.Spec : Prop :=
  ∀ n, (P16862980412406883475.a n : ℤ) = A003984 n

end A003984

/-! ## A003984.P2847722049303985683

`A051125(n+1)-1`
-/

namespace A003984.P2847722049303985683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) - 1

end

end A003984.P2847722049303985683

namespace A003984

/-- `A051125(n+1)-1` -/
def P2847722049303985683.Spec : Prop :=
  ∀ n, P2847722049303985683.a n = A003984 n

end A003984

/-! ## A003984.P8607685689771350563

`ceil(sqrt(A375510(n)))-1`
-/

namespace A003984.P8607685689771350563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A375510 n : ℝ)⌉ - 1

end

end A003984.P8607685689771350563

namespace A003984

/-- `ceil(sqrt(A375510(n)))-1` -/
def P8607685689771350563.Spec : Prop :=
  ∀ n, P8607685689771350563.a n = A003984 n

end A003984

/-! ## A003984.P8314779015735015498

`ceil(log2(A271709(n)))-1`
-/

namespace A003984.P8314779015735015498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A271709 n : ℝ)⌉ - 1

end

end A003984.P8314779015735015498

namespace A003984

/-- `ceil(log2(A271709(n)))-1` -/
def P8314779015735015498.Spec : Prop :=
  ∀ n, P8314779015735015498.a n = A003984 n

end A003984

/-! ## A003984.P1535854526469793219

`floor(A204022(n+1)/2)`
-/

namespace A003984.P1535854526469793219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204022 (n + 1) : ℚ) / 2⌋

end

end A003984.P1535854526469793219

namespace A003984

/-- `floor(A204022(n+1)/2)` -/
def P1535854526469793219.Spec : Prop :=
  ∀ n, P1535854526469793219.a n = A003984 n

end A003984

/-! ## A003984.P18414533486201713477

`floor(sqrt(A060734(n+1)-1))`
-/

namespace A003984.P18414533486201713477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A060734 (n + 1) - 1)

end

end A003984.P18414533486201713477

namespace A003984

/-- `floor(sqrt(A060734(n+1)-1))` -/
def P18414533486201713477.Spec : Prop :=
  ∀ n, P18414533486201713477.a n = A003984 n

end A003984

/-! ## A003984.P667902470801915406

`ceil(sqrt(A060736(n+1)))-1`
-/

namespace A003984.P667902470801915406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060736 (n + 1) : ℝ)⌉ - 1

end

end A003984.P667902470801915406

namespace A003984

/-- `ceil(sqrt(A060736(n+1)))-1` -/
def P667902470801915406.Spec : Prop :=
  ∀ n, P667902470801915406.a n = A003984 n

end A003984

/-! ## A003984.P3066670125756074871

`round(sqrt(2*(n+1)))-A003983(n+1)`
-/

namespace A003984.P3066670125756074871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) - A003983 (n + 1)

end

end A003984.P3066670125756074871

namespace A003984

/-- `round(sqrt(2*(n+1)))-A003983(n+1)` -/
def P3066670125756074871.Spec : Prop :=
  ∀ n, P3066670125756074871.a n = A003984 n

end A003984

/-! ## A003984.P17405846971863193306

`A004524(A204022(n+1))`
-/

namespace A003984.P17405846971863193306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A204022 (n + 1)).toNat

end

end A003984.P17405846971863193306

namespace A003984

/-- `A004524(A204022(n+1))` -/
def P17405846971863193306.Spec : Prop :=
  ∀ n, P17405846971863193306.a n = A003984 n

end A003984

/-! ## A003984.P14049589816980144256

`A049581(n)+A004197(n)`
-/

namespace A003984.P14049589816980144256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + A004197 n

end

end A003984.P14049589816980144256

namespace A003984

/-- `A049581(n)+A004197(n)` -/
def P14049589816980144256.Spec : Prop :=
  ∀ n, P14049589816980144256.a n = A003984 n

end A003984

/-! ## A003984.P10464743060115185096

`A172471(n)-A053616(n)`
-/

namespace A003984.P10464743060115185096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A053616 n

end

end A003984.P10464743060115185096

namespace A003984

/-- `A172471(n)-A053616(n)` -/
def P10464743060115185096.Spec : Prop :=
  ∀ n, P10464743060115185096.a n = A003984 n

end A003984

/-! ## A003984.P12145468264346522055

`xor(A003987(n), A004197(n))`
-/

namespace A003984.P12145468264346522055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A004197 n)

end

end A003984.P12145468264346522055

namespace A003984

/-- `xor(A003987(n), A004197(n))` -/
def P12145468264346522055.Spec : Prop :=
  ∀ n, P12145468264346522055.a n = A003984 n

end A003984

/-! ## A003984.P11016272022293737497

`A131507(n)-A204006(n+1)`
-/

namespace A003984.P11016272022293737497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A204006 (n + 1)

end

end A003984.P11016272022293737497

namespace A003984

/-- `A131507(n)-A204006(n+1)` -/
def P11016272022293737497.Spec : Prop :=
  ∀ n, P11016272022293737497.a n = A003984 n

end A003984

/-! ## A003984.P4114022069626437041

`A204154(n+1)-A143182(n)`
-/

namespace A003984.P4114022069626437041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) - A143182 n

end

end A003984.P4114022069626437041

namespace A003984

/-- `A204154(n+1)-A143182(n)` -/
def P4114022069626437041.Spec : Prop :=
  ∀ n, P4114022069626437041.a n = A003984 n

end A003984

/-! ## A003984.P2258047074571779903

`A059036(n)%A051125(n+1)`
-/

namespace A003984.P2258047074571779903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059036 n) (A051125 (n + 1))

end

end A003984.P2258047074571779903

namespace A003984

/-- `A059036(n)%A051125(n+1)` -/
def P2258047074571779903.Spec : Prop :=
  ∀ n, P2258047074571779903.a n = A003984 n

end A003984

/-! ## A003984.P10680350630328007107

`A141387(n)%A204022(n+1)`
-/

namespace A003984.P10680350630328007107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141387 n) (A204022 (n + 1))

end

end A003984.P10680350630328007107

namespace A003984

/-- `A141387(n)%A204022(n+1)` -/
def P10680350630328007107.Spec : Prop :=
  ∀ n, P10680350630328007107.a n = A003984 n

end A003984

/-!
# A003985: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is i AND j.

The programs for A003985, the canonical program `A003985.P15061473656309770427` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003985 has offset 1).

The definition of A003985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003985.P4265139749828865044

`and(A131818(n+1), A193592(n))`
-/

namespace A003985.P4265139749828865044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131818 (n + 1)) (A193592 n)

end

end A003985.P4265139749828865044

namespace A003985

/-- `and(A131818(n+1), A193592(n))` -/
def P4265139749828865044.Spec : Prop :=
  ∀ n, P4265139749828865044.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P15061473656309770427

`and(A002260(n+1), A004736(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003985

/-- `and(A002260(n+1), A004736(n+1))` -/
def P15061473656309770427.Spec : Prop :=
  ∀ n, P15061473656309770427.a n = A003985 (n + 1)

theorem P15061473656309770427.correct : P15061473656309770427.Spec := by
  intro n
  simp only [A003985, Nat.add_sub_cancel]

end A003985

/-! ## A003985.P3267704758087819987

`and(A002262(n)+1, A004736(n+1))`
-/

namespace A003985.P3267704758087819987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n + 1) (A004736 (n + 1))

end

end A003985.P3267704758087819987

namespace A003985

/-- `and(A002262(n)+1, A004736(n+1))` -/
def P3267704758087819987.Spec : Prop :=
  ∀ n, P3267704758087819987.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P693656001292418886

`and(A003984(n)+1, A003983(n+1))`
-/

namespace A003985.P693656001292418886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003984 n + 1) (A003983 (n + 1))

end

end A003985.P693656001292418886

namespace A003985

/-- `and(A003984(n)+1, A003983(n+1))` -/
def P693656001292418886.Spec : Prop :=
  ∀ n, P693656001292418886.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P4015284971976541184

`and(A002262(n)+1, A025581(n)+1)`
-/

namespace A003985.P4015284971976541184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n + 1) (A025581 n + 1)

end

end A003985.P4015284971976541184

namespace A003985

/-- `and(A002262(n)+1, A025581(n)+1)` -/
def P4015284971976541184.Spec : Prop :=
  ∀ n, P4015284971976541184.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P7460297397813457090

`and(A025581(n)+1, A002260(n+1))`
-/

namespace A003985.P7460297397813457090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n + 1) (A002260 (n + 1))

end

end A003985.P7460297397813457090

namespace A003985

/-- `and(A025581(n)+1, A002260(n+1))` -/
def P7460297397813457090.Spec : Prop :=
  ∀ n, P7460297397813457090.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P8875244450179877652

`and(A003983(n+1), A051125(n+1))`
-/

namespace A003985.P8875244450179877652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003983 (n + 1)) (A051125 (n + 1))

end

end A003985.P8875244450179877652

namespace A003985

/-- `and(A003983(n+1), A051125(n+1))` -/
def P8875244450179877652.Spec : Prop :=
  ∀ n, P8875244450179877652.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P5770273190440965663

`and(A004736(n+1), A128077(n+1))`
-/

namespace A003985.P5770273190440965663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (n + 1)) (A128077 (n + 1))

end

end A003985.P5770273190440965663

namespace A003985

/-- `and(A004736(n+1), A128077(n+1))` -/
def P5770273190440965663.Spec : Prop :=
  ∀ n, P5770273190440965663.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P18073405430464049167

`and(A002260(n+1), A158860(n+1))`
-/

namespace A003985.P18073405430464049167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A158860 (n + 1))

end

end A003985.P18073405430464049167

namespace A003985

/-- `and(A002260(n+1), A158860(n+1))` -/
def P18073405430464049167.Spec : Prop :=
  ∀ n, P18073405430464049167.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P16857139723556808122

`and(A002260(n+1), A158893(n+1))`
-/

namespace A003985.P16857139723556808122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A158893 (n + 1))

end

end A003985.P16857139723556808122

namespace A003985

/-- `and(A002260(n+1), A158893(n+1))` -/
def P16857139723556808122.Spec : Prop :=
  ∀ n, P16857139723556808122.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P16310413182216200203

`and(A128077(n+1), A158860(n+1))`
-/

namespace A003985.P16310413182216200203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128077 (n + 1)) (A158860 (n + 1))

end

end A003985.P16310413182216200203

namespace A003985

/-- `and(A128077(n+1), A158860(n+1))` -/
def P16310413182216200203.Spec : Prop :=
  ∀ n, P16310413182216200203.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P17807749118682805239

`and(A128077(n+1), A158893(n+1))`
-/

namespace A003985.P17807749118682805239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128077 (n + 1)) (A158893 (n + 1))

end

end A003985.P17807749118682805239

namespace A003985

/-- `and(A128077(n+1), A158893(n+1))` -/
def P17807749118682805239.Spec : Prop :=
  ∀ n, P17807749118682805239.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P8043144166586981191

`and(A003057(n+2)-A002260(n+1), A002260(n+1))`
-/

namespace A003985.P8043144166586981191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003057 (n + 2) - A002260 (n + 1)) (A002260 (n + 1))

end

end A003985.P8043144166586981191

namespace A003985

/-- `and(A003057(n+2)-A002260(n+1), A002260(n+1))` -/
def P8043144166586981191.Spec : Prop :=
  ∀ n, P8043144166586981191.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P16153914783872747846

`and(A208233(n+1), A208234(n+1))`
-/

namespace A003985.P16153914783872747846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208233 (n + 1)) (A208234 (n + 1))

end

end A003985.P16153914783872747846

namespace A003985

/-- `and(A208233(n+1), A208234(n+1))` -/
def P16153914783872747846.Spec : Prop :=
  ∀ n, P16153914783872747846.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P16660568177288784557

`A004198(eq[0, A103451(n)])`
-/

namespace A003985.P16660568177288784557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003985.P16660568177288784557

namespace A003985

/-- `A004198(eq[0, A103451(n)])` -/
def P16660568177288784557.Spec : Prop :=
  ∀ n, P16660568177288784557.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P412650656308742389

`A004198(eq[0, A103452(n)])`
-/

namespace A003985.P412650656308742389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003985.P412650656308742389

namespace A003985

/-- `A004198(eq[0, A103452(n)])` -/
def P412650656308742389.Spec : Prop :=
  ∀ n, P412650656308742389.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P17318440012239973605

`A004198(lt[0, A103822(n)])`
-/

namespace A003985.P17318440012239973605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A003985.P17318440012239973605

namespace A003985

/-- `A004198(lt[0, A103822(n)])` -/
def P17318440012239973605.Spec : Prop :=
  ∀ n, P17318440012239973605.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P12928378330626897829

`A004198(lt[1, A007318(n)])`
-/

namespace A003985.P12928378330626897829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A003985.P12928378330626897829

namespace A003985

/-- `A004198(lt[1, A007318(n)])` -/
def P12928378330626897829.Spec : Prop :=
  ∀ n, P12928378330626897829.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P15381587229375908278

`A004198(lt[1, A077028(n)])`
-/

namespace A003985.P15381587229375908278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A003985.P15381587229375908278

namespace A003985

/-- `A004198(lt[1, A077028(n)])` -/
def P15381587229375908278.Spec : Prop :=
  ∀ n, P15381587229375908278.a n = A003985 (n + 1)

end A003985

/-! ## A003985.P7339597647075015581

`A004198(lt[2, A029635(n)])`
-/

namespace A003985.P7339597647075015581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A003985.P7339597647075015581

namespace A003985

/-- `A004198(lt[2, A029635(n)])` -/
def P7339597647075015581.Spec : Prop :=
  ∀ n, P7339597647075015581.a n = A003985 (n + 1)

end A003985

/-!
# A003986: Table T(n,k) = n OR k read by antidiagonals.

The programs for A003986, the canonical program `A003986.P12926496113833734776` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003986 has offset 0).

The definition of A003986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003986.P4458172913538953417

`∑[char[∑[n+1]]]-A004198(n)`
-/

namespace A003986.P4458172913538953417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004198 n

end

end A003986.P4458172913538953417

namespace A003986

/-- `∑[char[∑[n+1]]]-A004198(n)` -/
def P4458172913538953417.Spec : Prop :=
  ∀ n, P4458172913538953417.a n = A003986 n

end A003986

/-! ## A003986.P6124636160391555654

`A003984(A286098(n))`
-/

namespace A003986.P6124636160391555654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A286098 n).toNat

end

end A003986.P6124636160391555654

namespace A003986

/-- `A003984(A286098(n))` -/
def P6124636160391555654.Spec : Prop :=
  ∀ n, P6124636160391555654.a n = A003986 n

end A003986

/-! ## A003986.P15088918341407096622

`A103823(A286099(n))`
-/

namespace A003986.P15088918341407096622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (A286099 n).toNat

end

end A003986.P15088918341407096622

namespace A003986

/-- `A103823(A286099(n))` -/
def P15088918341407096622.Spec : Prop :=
  ∀ n, P15088918341407096622.a n = A003986 n

end A003986

/-! ## A003986.P15328840776118782503

`A004198(n)+A003987(n)`
-/

namespace A003986.P15328840776118782503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A003987 n

end

end A003986.P15328840776118782503

namespace A003986

/-- `A004198(n)+A003987(n)` -/
def P15328840776118782503.Spec : Prop :=
  ∀ n, P15328840776118782503.a n = A003986 n

end A003986

/-! ## A003986.P9041865603085291687

`A099026(n)+A002262(n)`
-/

namespace A003986.P9041865603085291687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + A002262 n

end

end A003986.P9041865603085291687

namespace A003986

/-- `A099026(n)+A002262(n)` -/
def P9041865603085291687.Spec : Prop :=
  ∀ n, P9041865603085291687.a n = A003986 n

end A003986

/-! ## A003986.P8801963033431403711

`A103823(A099026(n)+n)`
-/

namespace A003986.P8801963033431403711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (A099026 n + (n : ℤ)).toNat

end

end A003986.P8801963033431403711

namespace A003986

/-- `A103823(A099026(n)+n)` -/
def P8801963033431403711.Spec : Prop :=
  ∀ n, P8801963033431403711.a n = A003986 n

end A003986

/-! ## A003986.P13356418433707710473

`A286099(n)-A057944(n)`
-/

namespace A003986.P13356418433707710473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A057944 n

end

end A003986.P13356418433707710473

namespace A003986

/-- `A286099(n)-A057944(n)` -/
def P13356418433707710473.Spec : Prop :=
  ∀ n, P13356418433707710473.a n = A003986 n

end A003986

/-! ## A003986.P12740554980894689881

`or(A002262(n), A003987(n))`
-/

namespace A003986.P12740554980894689881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A003987 n)

end

end A003986.P12740554980894689881

namespace A003986

/-- `or(A002262(n), A003987(n))` -/
def P12740554980894689881.Spec : Prop :=
  ∀ n, P12740554980894689881.a n = A003986 n

end A003986

/-! ## A003986.P12926496113833734776

`or(A002262(n), A025581(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003986

/-- `or(A002262(n), A025581(n))` -/
def P12926496113833734776.Spec : Prop :=
  ∀ n, P12926496113833734776.a n = A003986 n

theorem P12926496113833734776.correct : P12926496113833734776.Spec := by
  intro n
  simp only [A003986]

end A003986

/-! ## A003986.P10085823480391030452

`or(A103822(n), A103823(n))`
-/

namespace A003986.P10085823480391030452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103822 n) (A103823 n)

end

end A003986.P10085823480391030452

namespace A003986

/-- `or(A103822(n), A103823(n))` -/
def P10085823480391030452.Spec : Prop :=
  ∀ n, P10085823480391030452.a n = A003986 n

end A003986

/-! ## A003986.P9238255496760631041

`A004736(A286098(n)+1)-1`
-/

namespace A003986.P9238255496760631041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286098 n + 1).toNat - 1

end

end A003986.P9238255496760631041

namespace A003986

/-- `A004736(A286098(n)+1)-1` -/
def P9238255496760631041.Spec : Prop :=
  ∀ n, P9238255496760631041.a n = A003986 n

end A003986

/-! ## A003986.P10342532462850673649

`(A003987(n)+A003056(n))/2`
-/

namespace A003986.P10342532462850673649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003987 n + A003056 n : ℚ) / 2

end

end A003986.P10342532462850673649

namespace A003986

/-- `(A003987(n)+A003056(n))/2` -/
def P10342532462850673649.Spec : Prop :=
  ∀ n, P10342532462850673649.a n = (A003986 n : ℚ)

end A003986

/-! ## A003986.P3772902885356178411

`A003987(n)+A221146(n)/2`
-/

namespace A003986.P3772902885356178411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003987 n : ℚ) + (A221146 n : ℚ) / 2

end

end A003986.P3772902885356178411

namespace A003986

/-- `A003987(n)+A221146(n)/2` -/
def P3772902885356178411.Spec : Prop :=
  ∀ n, P3772902885356178411.a n = (A003986 n : ℚ)

end A003986

/-! ## A003986.P10717000702496475042

`A003056(n)-A221146(n)/2`
-/

namespace A003986.P10717000702496475042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) - (A221146 n : ℚ) / 2

end

end A003986.P10717000702496475042

namespace A003986

/-- `A003056(n)-A221146(n)/2` -/
def P10717000702496475042.Spec : Prop :=
  ∀ n, P10717000702496475042.a n = (A003986 n : ℚ)

end A003986

/-! ## A003986.P17957018261239633149

`A099026(n)+n-A057944(n)`
-/

namespace A003986.P17957018261239633149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + ((n : ℤ) - A057944 n)

end

end A003986.P17957018261239633149

namespace A003986

/-- `A099026(n)+n-A057944(n)` -/
def P17957018261239633149.Spec : Prop :=
  ∀ n, P17957018261239633149.a n = A003986 n

end A003986

/-! ## A003986.P8207404257054759498

`A002262(n)+A286099(n)-n`
-/

namespace A003986.P8207404257054759498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A286099 n - (n : ℤ))

end

end A003986.P8207404257054759498

namespace A003986

/-- `A002262(n)+A286099(n)-n` -/
def P8207404257054759498.Spec : Prop :=
  ∀ n, P8207404257054759498.a n = A003986 n

end A003986

/-! ## A003986.P6368484809835714277

`A280172(n+1)+A004198(n)-1`
-/

namespace A003986.P6368484809835714277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1) + (A004198 n - 1)

end

end A003986.P6368484809835714277

namespace A003986

/-- `A280172(n+1)+A004198(n)-1` -/
def P6368484809835714277.Spec : Prop :=
  ∀ n, P6368484809835714277.a n = A003986 n

end A003986

/-! ## A003986.P7233381884633018073

`A003057(n+2)-(A004198(n)+2)`
-/

namespace A003986.P7233381884633018073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - (A004198 n + 2)

end

end A003986.P7233381884633018073

namespace A003986

/-- `A003057(n+2)-(A004198(n)+2)` -/
def P7233381884633018073.Spec : Prop :=
  ∀ n, P7233381884633018073.a n = A003986 n

end A003986

/-! ## A003986.P12032726620997851921

`or(A057554(2*n+1), A057554(2*(n+1)))`
-/

namespace A003986.P12032726620997851921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057554 (2 * n + 1)) (A057554 (2 * (n + 1)))

end

end A003986.P12032726620997851921

namespace A003986

/-- `or(A057554(2*n+1), A057554(2*(n+1)))` -/
def P12032726620997851921.Spec : Prop :=
  ∀ n, P12032726620997851921.a n = A003986 n

end A003986

/-! ## A003986.P16711838694754063388

`A003987(n)+A002262(A286098(n))`
-/

namespace A003986.P16711838694754063388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A002262 (A286098 n).toNat

end

end A003986.P16711838694754063388

namespace A003986

/-- `A003987(n)+A002262(A286098(n))` -/
def P16711838694754063388.Spec : Prop :=
  ∀ n, P16711838694754063388.a n = A003986 n

end A003986

/-!
# A003987: Table of n XOR m (or Nim-sum of n and m) read by antidiagonals with m>=0, n>=0.

The programs for A003987, the canonical program `A003987.P6522273903622706452` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003987 has offset 0).

The definition of A003987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003987.P18087842351756671947

`A280172(n+1)-1`
-/

namespace A003987.P18087842351756671947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1) - 1

end

end A003987.P18087842351756671947

namespace A003987

/-- `A280172(n+1)-1` -/
def P18087842351756671947.Spec : Prop :=
  ∀ n, P18087842351756671947.a n = A003987 n

end A003987

/-! ## A003987.P734770188110835506

`A059253(A163907(n))`
-/

namespace A003987.P734770188110835506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163907 n).toNat

end

end A003987.P734770188110835506

namespace A003987

/-- `A059253(A163907(n))` -/
def P734770188110835506.Spec : Prop :=
  ∀ n, P734770188110835506.a n = A003987 n

end A003987

/-! ## A003987.P10994513960407222188

`A049581(A286098(n))`
-/

namespace A003987.P10994513960407222188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A286098 n).toNat

end

end A003987.P10994513960407222188

namespace A003987

/-- `A049581(A286098(n))` -/
def P10994513960407222188.Spec : Prop :=
  ∀ n, P10994513960407222188.a n = A003987 n

end A003987

/-! ## A003987.P3629332023537686771

`A003986(n)-A004198(n)`
-/

namespace A003987.P3629332023537686771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A004198 n

end

end A003987.P3629332023537686771

namespace A003987

/-- `A003986(n)-A004198(n)` -/
def P3629332023537686771.Spec : Prop :=
  ∀ n, P3629332023537686771.a n = A003987 n

end A003987

/-! ## A003987.P5493671437487372780

`A003056(n)-A221146(n)`
-/

namespace A003987.P5493671437487372780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A221146 n

end

end A003987.P5493671437487372780

namespace A003987

/-- `A003056(n)-A221146(n)` -/
def P5493671437487372780.Spec : Prop :=
  ∀ n, P5493671437487372780.a n = A003987 n

end A003987

/-! ## A003987.P9237692137525345516

`A286109(n)-A057944(n)`
-/

namespace A003987.P9237692137525345516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n - A057944 n

end

end A003987.P9237692137525345516

namespace A003987

/-- `A286109(n)-A057944(n)` -/
def P9237692137525345516.Spec : Prop :=
  ∀ n, P9237692137525345516.a n = A003987 n

end A003987

/-! ## A003987.P18384479496037492391

`A286099(n)-A286098(n)`
-/

namespace A003987.P18384479496037492391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A286098 n

end

end A003987.P18384479496037492391

namespace A003987

/-- `A286099(n)-A286098(n)` -/
def P18384479496037492391.Spec : Prop :=
  ∀ n, P18384479496037492391.a n = A003987 n

end A003987

/-! ## A003987.P8749498459914967119

`xor(A003984(n), A004197(n))`
-/

namespace A003987.P8749498459914967119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003984 n) (A004197 n)

end

end A003987.P8749498459914967119

namespace A003987

/-- `xor(A003984(n), A004197(n))` -/
def P8749498459914967119.Spec : Prop :=
  ∀ n, P8749498459914967119.a n = A003987 n

end A003987

/-! ## A003987.P6522273903622706452

`xor(A002262(n), A025581(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003987

/-- `xor(A002262(n), A025581(n))` -/
def P6522273903622706452.Spec : Prop :=
  ∀ n, P6522273903622706452.a n = A003987 n

theorem P6522273903622706452.correct : P6522273903622706452.Spec := by
  intro n
  simp only [A003987]

end A003987

/-! ## A003987.P3610400902662732098

`xor(A103822(n), A103823(n))`
-/

namespace A003987.P3610400902662732098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103822 n) (A103823 n)

end

end A003987.P3610400902662732098

namespace A003987

/-- `xor(A103822(n), A103823(n))` -/
def P3610400902662732098.Spec : Prop :=
  ∀ n, P3610400902662732098.a n = A003987 n

end A003987

/-! ## A003987.P6885691674301082669

`xor(A341839(n), A341840(n))`
-/

namespace A003987.P6885691674301082669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341839 n) (A341840 n)

end

end A003987.P6885691674301082669

namespace A003987

/-- `xor(A341839(n), A341840(n))` -/
def P6885691674301082669.Spec : Prop :=
  ∀ n, P6885691674301082669.a n = A003987 n

end A003987

/-! ## A003987.P13295710883231827941

`A002260(A286109(n)+1)-1`
-/

namespace A003987.P13295710883231827941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286109 n + 1).toNat - 1

end

end A003987.P13295710883231827941

namespace A003987

/-- `A002260(A286109(n)+1)-1` -/
def P13295710883231827941.Spec : Prop :=
  ∀ n, P13295710883231827941.a n = A003987 n

end A003987

/-! ## A003987.P10751706601858024584

`A130517(A286098(n)+1)-1`
-/

namespace A003987.P10751706601858024584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A286098 n + 1).toNat - 1

end

end A003987.P10751706601858024584

namespace A003987

/-- `A130517(A286098(n)+1)-1` -/
def P10751706601858024584.Spec : Prop :=
  ∀ n, P10751706601858024584.a n = A003987 n

end A003987

/-! ## A003987.P2382909586930805312

`A114327(xor(1, xor(1, A286098(n))))`
-/

namespace A003987.P2382909586930805312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Int.xor 1 (Int.xor 1 (A286098 n))).toNat

end

end A003987.P2382909586930805312

namespace A003987

/-- `A114327(xor(1, xor(1, A286098(n))))` -/
def P2382909586930805312.Spec : Prop :=
  ∀ n, P2382909586930805312.a n = A003987 n

end A003987

/-! ## A003987.P11681815695847227673

`2*A003986(n)-A003056(n)`
-/

namespace A003987.P11681815695847227673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003986 n - A003056 n

end

end A003987.P11681815695847227673

namespace A003987

/-- `2*A003986(n)-A003056(n)` -/
def P11681815695847227673.Spec : Prop :=
  ∀ n, P11681815695847227673.a n = A003987 n

end A003987

/-! ## A003987.P3144359950924436482

`A003056(n)-2*A004198(n)`
-/

namespace A003987.P3144359950924436482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A004198 n

end

end A003987.P3144359950924436482

namespace A003987

/-- `A003056(n)-2*A004198(n)` -/
def P3144359950924436482.Spec : Prop :=
  ∀ n, P3144359950924436482.a n = A003987 n

end A003987

/-! ## A003987.P9702026752093630775

`2*A099026(n)-A114327(n)`
-/

namespace A003987.P9702026752093630775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099026 n - A114327 n

end

end A003987.P9702026752093630775

namespace A003987

/-- `2*A099026(n)-A114327(n)` -/
def P9702026752093630775.Spec : Prop :=
  ∀ n, P9702026752093630775.a n = A003987 n

end A003987

/-! ## A003987.P7745686283058406324

`A002262(n)+A286109(n)-n`
-/

namespace A003987.P7745686283058406324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A286109 n - (n : ℤ))

end

end A003987.P7745686283058406324

namespace A003987

/-- `A002262(n)+A286109(n)-n` -/
def P7745686283058406324.Spec : Prop :=
  ∀ n, P7745686283058406324.a n = A003987 n

end A003987

/-! ## A003987.P10056169570944743770

`A025581(n)+n-A286108(n)`
-/

namespace A003987.P10056169570944743770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A286108 n)

end

end A003987.P10056169570944743770

namespace A003987

/-- `A025581(n)+n-A286108(n)` -/
def P10056169570944743770.Spec : Prop :=
  ∀ n, P10056169570944743770.a n = A003987 n

end A003987

/-! ## A003987.P17535982976093258770

`A002024(n+1)-(A221146(n)+1)`
-/

namespace A003987.P17535982976093258770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A221146 n + 1)

end

end A003987.P17535982976093258770

namespace A003987

/-- `A002024(n+1)-(A221146(n)+1)` -/
def P17535982976093258770.Spec : Prop :=
  ∀ n, P17535982976093258770.a n = A003987 n

end A003987

/-!
# A003988: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is [ i/j ].

The programs for A003988, the canonical program `A003988.P17998764845825661795` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003988 has offset 1).

The definition of A003988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003988.P5671756726490169513

`floor(ratio[A074909(n)])`
-/

namespace A003988.P5671756726490169513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A003988.P5671756726490169513

namespace A003988

/-- `floor(ratio[A074909(n)])` -/
def P5671756726490169513.Spec : Prop :=
  ∀ n, P5671756726490169513.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P17913134218573142658

`floor(A135278(n)/A074909(n))`
-/

namespace A003988.P17913134218573142658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135278 n : ℚ) / (A074909 n : ℚ)⌋

end

end A003988.P17913134218573142658

namespace A003988

/-- `floor(A135278(n)/A074909(n))` -/
def P17913134218573142658.Spec : Prop :=
  ∀ n, P17913134218573142658.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P15504044330833504111

`floor(A074909(n+1)/A074909(n))`
-/

namespace A003988.P15504044330833504111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 (n + 1) : ℚ) / (A074909 n : ℚ)⌋

end

end A003988.P15504044330833504111

namespace A003988

/-- `floor(A074909(n+1)/A074909(n))` -/
def P15504044330833504111.Spec : Prop :=
  ∀ n, P15504044330833504111.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P17113780742010485303

`A077605(n+1)*A204123(n+1)`
-/

namespace A003988.P17113780742010485303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A204123 (n + 1)

end

end A003988.P17113780742010485303

namespace A003988

/-- `A077605(n+1)*A204123(n+1)` -/
def P17113780742010485303.Spec : Prop :=
  ∀ n, P17113780742010485303.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P17998764845825661795

`floor(A004736(n+1)/A002260(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003988

/-- `floor(A004736(n+1)/A002260(n+1))` -/
def P17998764845825661795.Spec : Prop :=
  ∀ n, P17998764845825661795.a n = A003988 (n + 1)

theorem P17998764845825661795.correct : P17998764845825661795.Spec := by
  intro n
  simp only [A003988, Nat.add_sub_cancel]

end A003988

/-! ## A003988.P17523570450459571821

`floor(A004736(n+1)/(A002262(n)+1))`
-/

namespace A003988.P17523570450459571821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004736 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)⌋

end

end A003988.P17523570450459571821

namespace A003988

/-- `floor(A004736(n+1)/(A002262(n)+1))` -/
def P17523570450459571821.Spec : Prop :=
  ∀ n, P17523570450459571821.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P9046752054448474333

`floor((A025581(n)+1)/A002260(n+1))`
-/

namespace A003988.P9046752054448474333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 n + 1 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A003988.P9046752054448474333

namespace A003988

/-- `floor((A025581(n)+1)/A002260(n+1))` -/
def P9046752054448474333.Spec : Prop :=
  ∀ n, P9046752054448474333.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P4792441907944467884

`floor(A055461(n+1)/A003991(n+1))`
-/

namespace A003988.P4792441907944467884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055461 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)⌋

end

end A003988.P4792441907944467884

namespace A003988

/-- `floor(A055461(n+1)/A003991(n+1))` -/
def P4792441907944467884.Spec : Prop :=
  ∀ n, P4792441907944467884.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P668094459400176272

`A010766(n+1)+A077049(n+1)-1`
-/

namespace A003988.P668094459400176272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + (A077049 (n + 1) - 1)

end

end A003988.P668094459400176272

namespace A003988

/-- `A010766(n+1)+A077049(n+1)-1` -/
def P668094459400176272.Spec : Prop :=
  ∀ n, P668094459400176272.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P13589708111738490103

`floor(A003991(n+1)/A002260(n+1)²)`
-/

namespace A003988.P13589708111738490103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℚ) / (A002260 (n + 1) ^ 2 : ℚ)⌋

end

end A003988.P13589708111738490103

namespace A003988

/-- `floor(A003991(n+1)/A002260(n+1)²)` -/
def P13589708111738490103.Spec : Prop :=
  ∀ n, P13589708111738490103.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P3243673321723717571

`floor(A003057(n+2)/A002260(n+1))-1`
-/

namespace A003988.P3243673321723717571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003057 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)⌋ - 1

end

end A003988.P3243673321723717571

namespace A003988

/-- `floor(A003057(n+2)/A002260(n+1))-1` -/
def P3243673321723717571.Spec : Prop :=
  ∀ n, P3243673321723717571.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P3019133714552368377

`floor(A002260(A278818(n))/A002260(n+1))`
-/

namespace A003988.P3019133714552368377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (A278818 n).toNat : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A003988.P3019133714552368377

namespace A003988

/-- `floor(A002260(A278818(n))/A002260(n+1))` -/
def P3019133714552368377.Spec : Prop :=
  ∀ n, P3019133714552368377.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P17162116124816904319

`floor(A002260(A038722(n+1))/A002260(n+1))`
-/

namespace A003988.P17162116124816904319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (A038722 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A003988.P17162116124816904319

namespace A003988

/-- `floor(A002260(A038722(n+1))/A002260(n+1))` -/
def P17162116124816904319.Spec : Prop :=
  ∀ n, P17162116124816904319.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P9796532187694659724

`(A004736(n+1)-A051127(n+1))/A002260(n+1)`
-/

namespace A003988.P9796532187694659724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - A051127 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A003988.P9796532187694659724

namespace A003988

/-- `(A004736(n+1)-A051127(n+1))/A002260(n+1)` -/
def P9796532187694659724.Spec : Prop :=
  ∀ n, P9796532187694659724.a n = (A003988 (n + 1) : ℚ)

end A003988

/-! ## A003988.P14674982086551129857

`floor(ratio[A395545(n+1)])`
-/

namespace A003988.P14674982086551129857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A003988.P14674982086551129857

namespace A003988

/-- `floor(ratio[A395545(n+1)])` -/
def P14674982086551129857.Spec : Prop :=
  ∀ n, P14674982086551129857.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P9527026487164207497

`floor(ratio[A007318(comp[∑[n+1]])])`
-/

namespace A003988.P9527026487164207497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A003988.P9527026487164207497

namespace A003988

/-- `floor(ratio[A007318(comp[∑[n+1]])])` -/
def P9527026487164207497.Spec : Prop :=
  ∀ n, P9527026487164207497.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P5278561501087009235

`floor(ratio[A029603(n+1)])`
-/

namespace A003988.P5278561501087009235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A003988.P5278561501087009235

namespace A003988

/-- `floor(ratio[A029603(n+1)])` -/
def P5278561501087009235.Spec : Prop :=
  ∀ n, P5278561501087009235.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P10878576984342677979

`A004199(A038722(n+1))`
-/

namespace A003988.P10878576984342677979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (A038722 (n + 1)).toNat

end

end A003988.P10878576984342677979

namespace A003988

/-- `A004199(A038722(n+1))` -/
def P10878576984342677979.Spec : Prop :=
  ∀ n, P10878576984342677979.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P297088291666073136

`A004199(A061579(n)+1)`
-/

namespace A003988.P297088291666073136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (A061579 n + 1).toNat

end

end A003988.P297088291666073136

namespace A003988

/-- `A004199(A061579(n)+1)` -/
def P297088291666073136.Spec : Prop :=
  ∀ n, P297088291666073136.a n = A003988 (n + 1)

end A003988

/-! ## A003988.P7865995660571020172

`A025581(A286157(n+1))`
-/

namespace A003988.P7865995660571020172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286157 (n + 1)).toNat

end

end A003988.P7865995660571020172

namespace A003988

/-- `A025581(A286157(n+1))` -/
def P7865995660571020172.Spec : Prop :=
  ∀ n, P7865995660571020172.a n = A003988 (n + 1)

end A003988

/-!
# A003989: Triangle T from the array A(x, y) = gcd(x,y), for x >= 1, y >= 1, read by antidiagonals.

The programs for A003989, the canonical program `A003989.P4304575530733865990` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003989 has offset 1).

The definition of A003989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003989.P4073821071061386652

`gcd(comp[∑[n]]-n, A193592(n))`
-/

namespace A003989.P4073821071061386652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A193592 n)

end

end A003989.P4073821071061386652

namespace A003989

/-- `gcd(comp[∑[n]]-n, A193592(n))` -/
def P4073821071061386652.Spec : Prop :=
  ∀ n, (P4073821071061386652.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P3636739625284046174

`gcd(n-comp[∑[n]], A003990(n+1))`
-/

namespace A003989.P3636739625284046174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) (A003990 (n + 1))

end

end A003989.P3636739625284046174

namespace A003989

/-- `gcd(n-comp[∑[n]], A003990(n+1))` -/
def P3636739625284046174.Spec : Prop :=
  ∀ n, (P3636739625284046174.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P2954523192389103129

`A007318(n)/A161642(n)`
-/

namespace A003989.P2954523192389103129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A161642 n : ℚ)

end

end A003989.P2954523192389103129

namespace A003989

/-- `A007318(n)/A161642(n)` -/
def P2954523192389103129.Spec : Prop :=
  ∀ n, P2954523192389103129.a n = (A003989 (n + 1) : ℚ)

end A003989

/-! ## A003989.P15733383001247603217

`gcd(A049581(n), A128227(n))`
-/

namespace A003989.P15733383001247603217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A128227 n)

end

end A003989.P15733383001247603217

namespace A003989

/-- `gcd(A049581(n), A128227(n))` -/
def P15733383001247603217.Spec : Prop :=
  ∀ n, (P15733383001247603217.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P15921974996229216687

`gcd(A101447(n), A141387(n))`
-/

namespace A003989.P15921974996229216687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101447 n) (A141387 n)

end

end A003989.P15921974996229216687

namespace A003989

/-- `gcd(A101447(n), A141387(n))` -/
def P15921974996229216687.Spec : Prop :=
  ∀ n, (P15921974996229216687.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P8406331589061254081

`gcd(A114327(n), A131899(n))`
-/

namespace A003989.P8406331589061254081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A131899 n)

end

end A003989.P8406331589061254081

namespace A003989

/-- `gcd(A114327(n), A131899(n))` -/
def P8406331589061254081.Spec : Prop :=
  ∀ n, (P8406331589061254081.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P14906052956420399215

`gcd(A193592(n), A193738(n))`
-/

namespace A003989.P14906052956420399215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193592 n) (A193738 n)

end

end A003989.P14906052956420399215

namespace A003989

/-- `gcd(A193592(n), A193738(n))` -/
def P14906052956420399215.Spec : Prop :=
  ∀ n, (P14906052956420399215.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P1096878810918971337

`gcd(A103217(n), A309557(n))`
-/

namespace A003989.P1096878810918971337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103217 n) (A309557 n)

end

end A003989.P1096878810918971337

namespace A003989

/-- `gcd(A103217(n), A309557(n))` -/
def P1096878810918971337.Spec : Prop :=
  ∀ n, (P1096878810918971337.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P221771935735010315

`gcd(A002260(n+1), A134224(n))`
-/

namespace A003989.P221771935735010315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A134224 n)

end

end A003989.P221771935735010315

namespace A003989

/-- `gcd(A002260(n+1), A134224(n))` -/
def P221771935735010315.Spec : Prop :=
  ∀ n, (P221771935735010315.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P5131464194301528479

`gcd(A003983(n+1), A176270(n))`
-/

namespace A003989.P5131464194301528479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003983 (n + 1)) (A176270 n)

end

end A003989.P5131464194301528479

namespace A003989

/-- `gcd(A003983(n+1), A176270(n))` -/
def P5131464194301528479.Spec : Prop :=
  ∀ n, (P5131464194301528479.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P1029455052586937866

`gcd(A051126(n+1), A193739(n))`
-/

namespace A003989.P1029455052586937866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051126 (n + 1)) (A193739 n)

end

end A003989.P1029455052586937866

namespace A003989

/-- `gcd(A051126(n+1), A193739(n))` -/
def P1029455052586937866.Spec : Prop :=
  ∀ n, (P1029455052586937866.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P4745394471724764448

`gcd(A051125(n+1), A220508(n))`
-/

namespace A003989.P4745394471724764448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051125 (n + 1)) (A220508 n)

end

end A003989.P4745394471724764448

namespace A003989

/-- `gcd(A051125(n+1), A220508(n))` -/
def P4745394471724764448.Spec : Prop :=
  ∀ n, (P4745394471724764448.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P4304575530733865990

`gcd(abs(A114327(n)), A004736(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003989

/-- `gcd(abs(A114327(n)), A004736(n+1))` -/
def P4304575530733865990.Spec : Prop :=
  ∀ n, (P4304575530733865990.a n : ℤ) = A003989 (n + 1)

theorem P4304575530733865990.correct : P4304575530733865990.Spec := by
  intro n
  simp only [A003989, Nat.add_sub_cancel]

end A003989

/-! ## A003989.P12641665992782530688

`A003057(n+2)-A074712(n+1)`
-/

namespace A003989.P12641665992782530688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A074712 (n + 1)

end

end A003989.P12641665992782530688

namespace A003989

/-- `A003057(n+2)-A074712(n+1)` -/
def P12641665992782530688.Spec : Prop :=
  ∀ n, P12641665992782530688.a n = A003989 (n + 1)

end A003989

/-! ## A003989.P7475918897428400057

`A003991(n+1)/A003990(n+1)`
-/

namespace A003989.P7475918897428400057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A003990 (n + 1) : ℚ)

end

end A003989.P7475918897428400057

namespace A003989

/-- `A003991(n+1)/A003990(n+1)` -/
def P7475918897428400057.Spec : Prop :=
  ∀ n, P7475918897428400057.a n = (A003989 (n + 1) : ℚ)

end A003989

/-! ## A003989.P1818092207834236458

`A003057(n+2)/A106448(n+1)`
-/

namespace A003989.P1818092207834236458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (A106448 (n + 1) : ℚ)

end

end A003989.P1818092207834236458

namespace A003989

/-- `A003057(n+2)/A106448(n+1)` -/
def P1818092207834236458.Spec : Prop :=
  ∀ n, P1818092207834236458.a n = (A003989 (n + 1) : ℚ)

end A003989

/-! ## A003989.P17150877366704857417

`gcd(A063657(n+1), A064801(n+1))`
-/

namespace A003989.P17150877366704857417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063657 (n + 1)) (A064801 (n + 1))

end

end A003989.P17150877366704857417

namespace A003989

/-- `gcd(A063657(n+1), A064801(n+1))` -/
def P17150877366704857417.Spec : Prop :=
  ∀ n, (P17150877366704857417.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P17734880758882988258

`gcd(A080521(n+1), A086270(n+1))`
-/

namespace A003989.P17734880758882988258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080521 (n + 1)) (A086270 (n + 1))

end

end A003989.P17734880758882988258

namespace A003989

/-- `gcd(A080521(n+1), A086270(n+1))` -/
def P17734880758882988258.Spec : Prop :=
  ∀ n, (P17734880758882988258.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P10422831781872073253

`gcd(A204154(n+1), A204158(n+1))`
-/

namespace A003989.P10422831781872073253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204154 (n + 1)) (A204158 (n + 1))

end

end A003989.P10422831781872073253

namespace A003989

/-- `gcd(A204154(n+1), A204158(n+1))` -/
def P10422831781872073253.Spec : Prop :=
  ∀ n, (P10422831781872073253.a n : ℤ) = A003989 (n + 1)

end A003989

/-! ## A003989.P12758116608682131679

`gcd(A020725(A002024(n+1)), A189151(n+1))`
-/

namespace A003989.P12758116608682131679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (A002024 (n + 1)).toNat) (A189151 (n + 1))

end

end A003989.P12758116608682131679

namespace A003989

/-- `gcd(A020725(A002024(n+1)), A189151(n+1))` -/
def P12758116608682131679.Spec : Prop :=
  ∀ n, (P12758116608682131679.a n : ℤ) = A003989 (n + 1)

end A003989

/-!
# A003990: Table of lcm(x,y), read along antidiagonals.

The programs for A003990, the canonical program `A003990.P13527658442906090829` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003990 has offset 1).

The definition of A003990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003990.P1856775576504126824

`lcm(A131818(n+1), A193592(n))`
-/

namespace A003990.P1856775576504126824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131818 (n + 1)) (A193592 n)

end

end A003990.P1856775576504126824

namespace A003990

/-- `lcm(A131818(n+1), A193592(n))` -/
def P1856775576504126824.Spec : Prop :=
  ∀ n, (P1856775576504126824.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P5079689895073291201

`lcm(A128227(n), A257522(n+1))`
-/

namespace A003990.P5079689895073291201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128227 n) (A257522 (n + 1))

end

end A003990.P5079689895073291201

namespace A003990

/-- `lcm(A128227(n), A257522(n+1))` -/
def P5079689895073291201.Spec : Prop :=
  ∀ n, (P5079689895073291201.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P9182989203950730293

`A003991(n+1)/A003989(n+1)`
-/

namespace A003990.P9182989203950730293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A003990.P9182989203950730293

namespace A003990

/-- `A003991(n+1)/A003989(n+1)` -/
def P9182989203950730293.Spec : Prop :=
  ∀ n, P9182989203950730293.a n = (A003990 (n + 1) : ℚ)

end A003990

/-! ## A003990.P15488051050102275757

`A003506(n+1)/A050169(n+1)`
-/

namespace A003990.P15488051050102275757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ)

end

end A003990.P15488051050102275757

namespace A003990

/-- `A003506(n+1)/A050169(n+1)` -/
def P15488051050102275757.Spec : Prop :=
  ∀ n, P15488051050102275757.a n = (A003990 (n + 1) : ℚ)

end A003990

/-! ## A003990.P13527658442906090829

`lcm(A002260(n+1), A004736(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003990

/-- `lcm(A002260(n+1), A004736(n+1))` -/
def P13527658442906090829.Spec : Prop :=
  ∀ n, (P13527658442906090829.a n : ℤ) = A003990 (n + 1)

theorem P13527658442906090829.correct : P13527658442906090829.Spec := by
  intro n
  simp only [A003990, Nat.add_sub_cancel]

end A003990

/-! ## A003990.P16519995783003062826

`lcm(A003983(n+1), A051125(n+1))`
-/

namespace A003990.P16519995783003062826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003983 (n + 1)) (A051125 (n + 1))

end

end A003990.P16519995783003062826

namespace A003990

/-- `lcm(A003983(n+1), A051125(n+1))` -/
def P16519995783003062826.Spec : Prop :=
  ∀ n, (P16519995783003062826.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P1782281641950520213

`lcm(A025581(n)+1, A002260(A000027(n+1)))`
-/

namespace A003990.P1782281641950520213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025581 n + 1) (A002260 (A000027 (n + 1)).toNat)

end

end A003990.P1782281641950520213

namespace A003990

/-- `lcm(A025581(n)+1, A002260(A000027(n+1)))` -/
def P1782281641950520213.Spec : Prop :=
  ∀ n, (P1782281641950520213.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P2099688252856159236

`lcm(A057554(2*(n+1))+1, A028310(A002260(n+1)))`
-/

namespace A003990.P2099688252856159236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057554 (2 * (n + 1)) + 1) (A028310 (A002260 (n + 1)).toNat)

end

end A003990.P2099688252856159236

namespace A003990

/-- `lcm(A057554(2*(n+1))+1, A028310(A002260(n+1)))` -/
def P2099688252856159236.Spec : Prop :=
  ∀ n, (P2099688252856159236.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P17470804632594306433

`A002260(n+1)/A003989(n+1)*A004736(n+1)`
-/

namespace A003990.P17470804632594306433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ) * (A004736 (n + 1) : ℚ)

end

end A003990.P17470804632594306433

namespace A003990

/-- `A002260(n+1)/A003989(n+1)*A004736(n+1)` -/
def P17470804632594306433.Spec : Prop :=
  ∀ n, P17470804632594306433.a n = (A003990 (n + 1) : ℚ)

end A003990

/-! ## A003990.P3981030265678655076

`A003983(n+1)/A003989(n+1)*A051125(n+1)`
-/

namespace A003990.P3981030265678655076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003983 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ) * (A051125 (n + 1) : ℚ)

end

end A003990.P3981030265678655076

namespace A003990

/-- `A003983(n+1)/A003989(n+1)*A051125(n+1)` -/
def P3981030265678655076.Spec : Prop :=
  ∀ n, P3981030265678655076.a n = (A003990 (n + 1) : ℚ)

end A003990

/-! ## A003990.P3480976838121421188

`lcm(A208233(n+1), A208234(n+1))`
-/

namespace A003990.P3480976838121421188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A208233 (n + 1)) (A208234 (n + 1))

end

end A003990.P3480976838121421188

namespace A003990

/-- `lcm(A208233(n+1), A208234(n+1))` -/
def P3480976838121421188.Spec : Prop :=
  ∀ n, (P3480976838121421188.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P11025217566477860231

`lcm(A092543(A038722(n+1)), A092543(n+1))`
-/

namespace A003990.P11025217566477860231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092543 (A038722 (n + 1)).toNat) (A092543 (n + 1))

end

end A003990.P11025217566477860231

namespace A003990

/-- `lcm(A092543(A038722(n+1)), A092543(n+1))` -/
def P11025217566477860231.Spec : Prop :=
  ∀ n, (P11025217566477860231.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P3632173458590095003

`A109042(lt[0, A109042(n)])`
-/

namespace A003990.P3632173458590095003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A003990.P3632173458590095003

namespace A003990

/-- `A109042(lt[0, A109042(n)])` -/
def P3632173458590095003.Spec : Prop :=
  ∀ n, P3632173458590095003.a n = A003990 (n + 1)

end A003990

/-! ## A003990.P6840368000333776079

`A003989(n+1)*A089913(n+1)`
-/

namespace A003990.P6840368000333776079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) * A089913 (n + 1)

end

end A003990.P6840368000333776079

namespace A003990

/-- `A003989(n+1)*A089913(n+1)` -/
def P6840368000333776079.Spec : Prop :=
  ∀ n, P6840368000333776079.a n = A003990 (n + 1)

end A003990

/-! ## A003990.P10068147390998262409

`A003983(n+1)*A217029(n+1)`
-/

namespace A003990.P10068147390998262409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A217029 (n + 1)

end

end A003990.P10068147390998262409

namespace A003990

/-- `A003983(n+1)*A217029(n+1)` -/
def P10068147390998262409.Spec : Prop :=
  ∀ n, P10068147390998262409.a n = A003990 (n + 1)

end A003990

/-! ## A003990.P1114281880020217510

`(A003057(n+2)-A074712(n+1))*A089913(n+1)`
-/

namespace A003990.P1114281880020217510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A074712 (n + 1)) * A089913 (n + 1)

end

end A003990.P1114281880020217510

namespace A003990

/-- `(A003057(n+2)-A074712(n+1))*A089913(n+1)` -/
def P1114281880020217510.Spec : Prop :=
  ∀ n, P1114281880020217510.a n = A003990 (n + 1)

end A003990

/-! ## A003990.P1468968472457634029

`lcm(A057555(2*n+1), A057555(2*(n+1)))`
-/

namespace A003990.P1468968472457634029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057555 (2 * n + 1)) (A057555 (2 * (n + 1)))

end

end A003990.P1468968472457634029

namespace A003990

/-- `lcm(A057555(2*n+1), A057555(2*(n+1)))` -/
def P1468968472457634029.Spec : Prop :=
  ∀ n, (P1468968472457634029.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P16104718055694717358

`lcm(A000027(A002260(n+1)), A057555(2*(n+1)))`
-/

namespace A003990.P16104718055694717358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A002260 (n + 1)).toNat) (A057555 (2 * (n + 1)))

end

end A003990.P16104718055694717358

namespace A003990

/-- `lcm(A000027(A002260(n+1)), A057555(2*(n+1)))` -/
def P16104718055694717358.Spec : Prop :=
  ∀ n, (P16104718055694717358.a n : ℤ) = A003990 (n + 1)

end A003990

/-! ## A003990.P6309827833501970543

`A316431(2*A098350(n+1))`
-/

namespace A003990.P6309827833501970543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A098350 (n + 1)).toNat

end

end A003990.P6309827833501970543

namespace A003990

/-- `A316431(2*A098350(n+1))` -/
def P6309827833501970543.Spec : Prop :=
  ∀ n, P6309827833501970543.a n = A003990 (n + 1)

end A003990

/-! ## A003990.P11891760466200909945

`A002260(n+1)*A112543(n+1)`
-/

namespace A003990.P11891760466200909945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A112543 (n + 1)

end

end A003990.P11891760466200909945

namespace A003990

/-- `A002260(n+1)*A112543(n+1)` -/
def P11891760466200909945.Spec : Prop :=
  ∀ n, P11891760466200909945.a n = A003990 (n + 1)

end A003990

/-!
# A003991: Multiplication table read by antidiagonals: T(i,j) = i*j, i>=1, j>=1.

The programs for A003991, the canonical program `A003991.P14084851459366035567` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003991 has offset 1).

The definition of A003991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003991.P14084851459366035567

`A002260(n+1)*A004736(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003991

/-- `A002260(n+1)*A004736(n+1)` -/
def P14084851459366035567.Spec : Prop :=
  ∀ n, P14084851459366035567.a n = A003991 (n + 1)

theorem P14084851459366035567.correct : P14084851459366035567.Spec := by
  intro n
  simp only [A003991, Nat.add_sub_cancel]

end A003991

/-! ## A003991.P7956666990482906048

`A003989(n+1)*A003990(n+1)`
-/

namespace A003991.P7956666990482906048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) * A003990 (n + 1)

end

end A003991.P7956666990482906048

namespace A003991

/-- `A003989(n+1)*A003990(n+1)` -/
def P7956666990482906048.Spec : Prop :=
  ∀ n, P7956666990482906048.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P15943369417457123855

`A059895(n+1)*A059896(n+1)`
-/

namespace A003991.P15943369417457123855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (n + 1) * A059896 (n + 1)

end

end A003991.P15943369417457123855

namespace A003991

/-- `A059895(n+1)*A059896(n+1)` -/
def P15943369417457123855.Spec : Prop :=
  ∀ n, P15943369417457123855.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P4064355609207350472

`A059895(n+1)²*A059897(n+1)`
-/

namespace A003991.P4064355609207350472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (n + 1) ^ 2 * A059897 (n + 1)

end

end A003991.P4064355609207350472

namespace A003991

/-- `A059895(n+1)²*A059897(n+1)` -/
def P4064355609207350472.Spec : Prop :=
  ∀ n, P4064355609207350472.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P7250235948967725192

`A059036(n)+1`
-/

namespace A003991.P7250235948967725192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 1

end

end A003991.P7250235948967725192

namespace A003991

/-- `A059036(n)+1` -/
def P7250235948967725192.Spec : Prop :=
  ∀ n, P7250235948967725192.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P15376353562940529545

`sqrt(A098359(n+1))`
-/

namespace A003991.P15376353562940529545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098359 (n + 1) : ℝ)

end

end A003991.P15376353562940529545

namespace A003991

/-- `sqrt(A098359(n+1))` -/
def P15376353562940529545.Spec : Prop :=
  ∀ n, P15376353562940529545.a n = (A003991 (n + 1) : ℝ)

end A003991

/-! ## A003991.P1115712623400063596

`A098352(n+1)/4`
-/

namespace A003991.P1115712623400063596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 4

end

end A003991.P1115712623400063596

namespace A003991

/-- `A098352(n+1)/4` -/
def P1115712623400063596.Spec : Prop :=
  ∀ n, P1115712623400063596.a n = (A003991 (n + 1) : ℚ)

end A003991

/-! ## A003991.P7941082677604382522

`A004247(n)+∑[char[∑[n]]]`
-/

namespace A003991.P7941082677604382522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003991.P7941082677604382522

namespace A003991

/-- `A004247(n)+∑[char[∑[n]]]` -/
def P7941082677604382522.Spec : Prop :=
  ∀ n, P7941082677604382522.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P2346099984402402553

`A098360(n+1)^(1/3)`
-/

namespace A003991.P2346099984402402553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A003991.P2346099984402402553

namespace A003991

/-- `A098360(n+1)^(1/3)` -/
def P2346099984402402553.Spec : Prop :=
  ∀ n, P2346099984402402553.a n = (A003991 (n + 1) : ℝ)

end A003991

/-! ## A003991.P3917463380739599625

`A077028(n)+∑[char[∑[n+1]]]`
-/

namespace A003991.P3917463380739599625
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003991.P3917463380739599625

namespace A003991

/-- `A077028(n)+∑[char[∑[n+1]]]` -/
def P3917463380739599625.Spec : Prop :=
  ∀ n, P3917463380739599625.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P13825602747973340576

`A049627(n)+A049615(n)`
-/

namespace A003991.P13825602747973340576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n + A049615 n

end

end A003991.P13825602747973340576

namespace A003991

/-- `A049627(n)+A049615(n)` -/
def P13825602747973340576.Spec : Prop :=
  ∀ n, P13825602747973340576.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P2251240284400251716

`A128139(n)+A025581(n)`
-/

namespace A003991.P2251240284400251716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A025581 n

end

end A003991.P2251240284400251716

namespace A003991

/-- `A128139(n)+A025581(n)` -/
def P2251240284400251716.Spec : Prop :=
  ∀ n, P2251240284400251716.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P14247298793136081756

`A123578(n)+A086460(n)`
-/

namespace A003991.P14247298793136081756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A086460 n

end

end A003991.P14247298793136081756

namespace A003991

/-- `A123578(n)+A086460(n)` -/
def P14247298793136081756.Spec : Prop :=
  ∀ n, P14247298793136081756.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P9712153745129831037

`A176270(n)+A141387(n)`
-/

namespace A003991.P9712153745129831037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n + A141387 n

end

end A003991.P9712153745129831037

namespace A003991

/-- `A176270(n)+A141387(n)` -/
def P9712153745129831037.Spec : Prop :=
  ∀ n, P9712153745129831037.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P10543585541172393060

`A067804(n)/A078391(n)`
-/

namespace A003991.P10543585541172393060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A078391 n : ℚ)

end

end A003991.P10543585541172393060

namespace A003991

/-- `A067804(n)/A078391(n)` -/
def P10543585541172393060.Spec : Prop :=
  ∀ n, P10543585541172393060.a n = (A003991 (n + 1) : ℚ)

end A003991

/-! ## A003991.P18163859840052891610

`A141611(n)/A007318(n)`
-/

namespace A003991.P18163859840052891610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A007318 n : ℚ)

end

end A003991.P18163859840052891610

namespace A003991

/-- `A141611(n)/A007318(n)` -/
def P18163859840052891610.Spec : Prop :=
  ∀ n, P18163859840052891610.a n = (A003991 (n + 1) : ℚ)

end A003991

/-! ## A003991.P12991430975983864751

`A003056(n)+A004247(n)+1`
-/

namespace A003991.P12991430975983864751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004247 n + 1)

end

end A003991.P12991430975983864751

namespace A003991

/-- `A003056(n)+A004247(n)+1` -/
def P12991430975983864751.Spec : Prop :=
  ∀ n, P12991430975983864751.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P6802541038819149115

`A049615(n)+A049687(n)+1`
-/

namespace A003991.P6802541038819149115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 n + (A049687 n + 1)

end

end A003991.P6802541038819149115

namespace A003991

/-- `A049615(n)+A049687(n)+1` -/
def P6802541038819149115.Spec : Prop :=
  ∀ n, P6802541038819149115.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P16227994934587492517

`A115262(n)-A271916(n+1)`
-/

namespace A003991.P16227994934587492517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - A271916 (n + 1)

end

end A003991.P16227994934587492517

namespace A003991

/-- `A115262(n)-A271916(n+1)` -/
def P16227994934587492517.Spec : Prop :=
  ∀ n, P16227994934587492517.a n = A003991 (n + 1)

end A003991

/-! ## A003991.P1685600752106486648

`A008867(n+2)-A057944(n)`
-/

namespace A003991.P1685600752106486648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) - A057944 n

end

end A003991.P1685600752106486648

namespace A003991

/-- `A008867(n+2)-A057944(n)` -/
def P1685600752106486648.Spec : Prop :=
  ∀ n, P1685600752106486648.a n = A003991 (n + 1)

end A003991

/-!
# A003992: Square array read by upwards antidiagonals: T(n,k) = n^k for n >= 0, k >= 0.

The programs for A003992, the canonical program `A003992.P8204926085743196475` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003992 has offset 0).

The definition of A003992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003992.P8204926085743196475

`A025581(n)^A002262(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003992

/-- `A025581(n)^A002262(n)` -/
def P8204926085743196475.Spec : Prop :=
  ∀ n, P8204926085743196475.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P11539604932601343966

`(A004736(n+1)-1)^A002262(n)`
-/

namespace A003992.P11539604932601343966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A002262 n : ℤ)

end

end A003992.P11539604932601343966

namespace A003992

/-- `(A004736(n+1)-1)^A002262(n)` -/
def P11539604932601343966.Spec : Prop :=
  ∀ n, P11539604932601343966.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P8856632434504050113

`A025581(n)^(A002260(n+1)-1)`
-/

namespace A003992.P8856632434504050113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A003992.P8856632434504050113

namespace A003992

/-- `A025581(n)^(A002260(n+1)-1)` -/
def P8856632434504050113.Spec : Prop :=
  ∀ n, P8856632434504050113.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P18407152743412745070

`(A004736(n+1)-1)^log2(A059268(n))`
-/

namespace A003992.P18407152743412745070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℝ) ^ (Real.logb 2 (A059268 n : ℝ))

end

end A003992.P18407152743412745070

namespace A003992

/-- `(A004736(n+1)-1)^log2(A059268(n))` -/
def P18407152743412745070.Spec : Prop :=
  ∀ n, P18407152743412745070.a n = (A003992 n : ℝ)

end A003992

/-! ## A003992.P12609946131539915649

`(A004736(n+1)-1)^(A002260(n+1)-1)`
-/

namespace A003992.P12609946131539915649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A003992.P12609946131539915649

namespace A003992

/-- `(A004736(n+1)-1)^(A002260(n+1)-1)` -/
def P12609946131539915649.Spec : Prop :=
  ∀ n, P12609946131539915649.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P11355354989959471483

`(A000217(round(sqrt(2*n+1)))-(n+1))^A002262(n)`
-/

namespace A003992.P11355354989959471483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℚ) ^ (A002262 n : ℤ)

end

end A003992.P11355354989959471483

namespace A003992

/-- `(A000217(round(sqrt(2*n+1)))-(n+1))^A002262(n)` -/
def P11355354989959471483.Spec : Prop :=
  ∀ n, P11355354989959471483.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P6950161209222362434

`(round(sqrt(2*n+1))-A002260(n+1))^A002262(n)`
-/

namespace A003992.P6950161209222362434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℚ) ^ (A002262 n : ℤ)

end

end A003992.P6950161209222362434

namespace A003992

/-- `(round(sqrt(2*n+1))-A002260(n+1))^A002262(n)` -/
def P6950161209222362434.Spec : Prop :=
  ∀ n, P6950161209222362434.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P14758336993362951529

`A025581(n)^A025581(A061579(n))`
-/

namespace A003992.P14758336993362951529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A025581 (A061579 n).toNat : ℤ)

end

end A003992.P14758336993362951529

namespace A003992

/-- `A025581(n)^A025581(A061579(n))` -/
def P14758336993362951529.Spec : Prop :=
  ∀ n, P14758336993362951529.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P9015285856114385528

`(A000096(A003056(n))-n)^A002262(n)`
-/

namespace A003992.P9015285856114385528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A002262 n : ℤ)

end

end A003992.P9015285856114385528

namespace A003992

/-- `(A000096(A003056(n))-n)^A002262(n)` -/
def P9015285856114385528.Spec : Prop :=
  ∀ n, P9015285856114385528.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P18061842337913340430

`A025581(n)^(A026100(A026098(n+1))-1)`
-/

namespace A003992.P18061842337913340430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A003992.P18061842337913340430

namespace A003992

/-- `A025581(n)^(A026100(A026098(n+1))-1)` -/
def P18061842337913340430.Spec : Prop :=
  ∀ n, P18061842337913340430.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P15285236378867447501

`(A000096(A003056(n))-n)^(A002260(n+1)-1)`
-/

namespace A003992.P15285236378867447501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A003992.P15285236378867447501

namespace A003992

/-- `(A000096(A003056(n))-n)^(A002260(n+1)-1)` -/
def P15285236378867447501.Spec : Prop :=
  ∀ n, P15285236378867447501.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P2261133146365314329

`A055652(n)-A004248(n)`
-/

namespace A003992.P2261133146365314329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n - A004248 n

end

end A003992.P2261133146365314329

namespace A003992

/-- `A055652(n)-A004248(n)` -/
def P2261133146365314329.Spec : Prop :=
  ∀ n, P2261133146365314329.a n = A003992 n

end A003992

/-! ## A003992.P8957157366720910310

`A004248(A061579(n))`
-/

namespace A003992.P8957157366720910310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat

end

end A003992.P8957157366720910310

namespace A003992

/-- `A004248(A061579(n))` -/
def P8957157366720910310.Spec : Prop :=
  ∀ n, P8957157366720910310.a n = A003992 n

end A003992

/-! ## A003992.P7544646550908815582

`A004248(A038722(n+1)-1)`
-/

namespace A003992.P7544646550908815582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A038722 (n + 1) - 1).toNat

end

end A003992.P7544646550908815582

namespace A003992

/-- `A004248(A038722(n+1)-1)` -/
def P7544646550908815582.Spec : Prop :=
  ∀ n, P7544646550908815582.a n = A003992 n

end A003992

/-! ## A003992.P1680074854354535515

`A004248(A093995(n+1)-(n+1))`
-/

namespace A003992.P1680074854354535515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A003992.P1680074854354535515

namespace A003992

/-- `A004248(A093995(n+1)-(n+1))` -/
def P1680074854354535515.Spec : Prop :=
  ∀ n, P1680074854354535515.a n = A003992 n

end A003992

/-! ## A003992.P4198829460087553920

`A004248(A083920(n)+2*A025581(n))`
-/

namespace A003992.P4198829460087553920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A083920 n + 2 * A025581 n).toNat

end

end A003992.P4198829460087553920

namespace A003992

/-- `A004248(A083920(n)+2*A025581(n))` -/
def P4198829460087553920.Spec : Prop :=
  ∀ n, P4198829460087553920.a n = A003992 n

end A003992

/-! ## A003992.P14327545208348980250

`A004248(A025581(n)+A083920(A025581(n)+n))`
-/

namespace A003992.P14327545208348980250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A025581 n + A083920 (A025581 n + (n : ℤ)).toNat).toNat

end

end A003992.P14327545208348980250

namespace A003992

/-- `A004248(A025581(n)+A083920(A025581(n)+n))` -/
def P14327545208348980250.Spec : Prop :=
  ∀ n, P14327545208348980250.a n = A003992 n

end A003992

/-! ## A003992.P3080546007532541880

`A055651(n)+A004248(n)`
-/

namespace A003992.P3080546007532541880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 n + A004248 n

end

end A003992.P3080546007532541880

namespace A003992

/-- `A055651(n)+A004248(n)` -/
def P3080546007532541880.Spec : Prop :=
  ∀ n, P3080546007532541880.a n = A003992 n

end A003992

/-! ## A003992.P11773492051236736210

`A059299(n)/A007318(n)`
-/

namespace A003992.P11773492051236736210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059299 n : ℚ) / (A007318 n : ℚ)

end

end A003992.P11773492051236736210

namespace A003992

/-- `A059299(n)/A007318(n)` -/
def P11773492051236736210.Spec : Prop :=
  ∀ n, P11773492051236736210.a n = (A003992 n : ℚ)

end A003992

/-! ## A003992.P14942961760050144065

`A059297(A061579(n))/A007318(n)`
-/

namespace A003992.P14942961760050144065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059297 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A003992.P14942961760050144065

namespace A003992

/-- `A059297(A061579(n))/A007318(n)` -/
def P14942961760050144065.Spec : Prop :=
  ∀ n, P14942961760050144065.a n = (A003992 n : ℚ)

end A003992

/-!
# A003993: Sequence b_3 (n) arising from homology of partitions with even number of blocks.

The programs for A003993, the canonical program `A003993.P9421897418607685741` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003993 has offset 2).

The definition of A003993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003993.P9421897418607685741

`2*3^(n+1)-2*(n+2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003993

/-- `2*3^(n+1)-2*(n+2)` -/
def P9421897418607685741.Spec : Prop :=
  ∀ n, P9421897418607685741.a n = A003993 (n + 2)

theorem P9421897418607685741.correct : P9421897418607685741.Spec := by
  intro n
  simp only [A003993, Nat.add_sub_cancel]

end A003993

/-! ## A003993.P5046077433519310117

`2*∑[xor(3, Δ[3^n])]`
-/

namespace A003993.P5046077433519310117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003993.P5046077433519310117

namespace A003993

/-- `2*∑[xor(3, Δ[3^n])]` -/
def P5046077433519310117.Spec : Prop :=
  ∀ n, P5046077433519310117.a n = A003993 (n + 2)

end A003993

/-! ## A003993.P2829703845624264174

`floor(∑[3*a(n-1)+4])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A003993.P2829703845624264174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003993.P2829703845624264174

namespace A003993

/-- `floor(∑[3*a(n-1)+4])` -/
def P2829703845624264174.Spec : Prop :=
  ∀ n, (P2829703845624264174.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P2749469668685834301

`abs(∑[∑[3*a(n-1)]])` with `a(0)=2, a(1)=8`
-/

namespace A003993.P2749469668685834301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003993.P2749469668685834301

namespace A003993

/-- `abs(∑[∑[3*a(n-1)]])` -/
def P2749469668685834301.Spec : Prop :=
  ∀ n, (P2749469668685834301.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P15466158642508997414

`floor(∑[∑[3*a(n-1)]])` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A003993.P15466158642508997414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003993.P15466158642508997414

namespace A003993

/-- `floor(∑[∑[3*a(n-1)]])` -/
def P15466158642508997414.Spec : Prop :=
  ∀ n, (P15466158642508997414.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P12767855675536216313

`ceil(∑[∑[3*a(n-1)]])` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A003993.P12767855675536216313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003993.P12767855675536216313

namespace A003993

/-- `ceil(∑[∑[3*a(n-1)]])` -/
def P12767855675536216313.Spec : Prop :=
  ∀ n, (P12767855675536216313.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P13502606147355093707

`2*∑[3*a(n-1)+2]` with `a(0)=1`
-/

namespace A003993.P13502606147355093707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003993.P13502606147355093707

namespace A003993

/-- `2*∑[3*a(n-1)+2]` -/
def P13502606147355093707.Spec : Prop :=
  ∀ n, (P13502606147355093707.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P9902102045863922932

`2*∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A003993.P9902102045863922932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003993.P9902102045863922932

namespace A003993

/-- `2*∑[∑[3*a(n-1)]]` -/
def P9902102045863922932.Spec : Prop :=
  ∀ n, (P9902102045863922932.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P62358396493361997

`Δ[3^(n+1)-lcm(n+1, n+2)]`
-/

namespace A003993.P62358396493361997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (Nat.lcm (n + 1) (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003993.P62358396493361997

namespace A003993

/-- `Δ[3^(n+1)-lcm(n+1, n+2)]` -/
def P62358396493361997.Spec : Prop :=
  ∀ n, P62358396493361997.a n = A003993 (n + 2)

end A003993

/-! ## A003993.P14124556041123242370

`floor(∑[a(n-1)+a(n-1)+a(n-1)+4])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A003993.P14124556041123242370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003993.P14124556041123242370

namespace A003993

/-- `floor(∑[a(n-1)+a(n-1)+a(n-1)+4])` -/
def P14124556041123242370.Spec : Prop :=
  ∀ n, (P14124556041123242370.a n : ℤ) = A003993 (n + 2)

end A003993

/-! ## A003993.P12698154928367349604

`Δ[2*A368528(n)]`
-/

namespace A003993.P12698154928367349604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003993.P12698154928367349604

namespace A003993

/-- `Δ[2*A368528(n)]` -/
def P12698154928367349604.Spec : Prop :=
  ∀ n, P12698154928367349604.a n = A003993 (n + 2)

end A003993

/-! ## A003993.P15349553170698964929

`2*A060188(n+2)`
-/

namespace A003993.P15349553170698964929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060188 (n + 2)

end

end A003993.P15349553170698964929

namespace A003993

/-- `2*A060188(n+2)` -/
def P15349553170698964929.Spec : Prop :=
  ∀ n, P15349553170698964929.a n = A003993 (n + 2)

end A003993

/-! ## A003993.P8996755017800947980

`2*(∑[A099856(n)]-n)`
-/

namespace A003993.P8996755017800947980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A003993.P8996755017800947980

namespace A003993

/-- `2*(∑[A099856(n)]-n)` -/
def P8996755017800947980.Spec : Prop :=
  ∀ n, P8996755017800947980.a n = A003993 (n + 2)

end A003993

/-!
# A003995: Sum of (any number of) distinct squares: of form r^2 + s^2 + t^2 + ... with 0 <= r < s < t < ...

The programs for A003995, there is no canonical definition to state claims against.
-/

/-! ## A003995.P6651915747257683294

`lt[A010815(A053176(2*n+3)), A033461(n)]`
-/

namespace A003995.P6651915747257683294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A053176 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003995.P6651915747257683294

/-!
# A003996: Sums of distinct nonzero squares in more than one way.

The programs for A003996, there is no canonical definition to state claims against.
-/

/-! ## A003996.P13128744650453648234

`lt[A001065(A063908(n+1)), A033461(n)]`
-/

namespace A003996.P13128744650453648234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A063908 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003996.P13128744650453648234

/-!
# A003997: Sums of distinct positive cubes.

The programs for A003997, there is no canonical definition to state claims against.
-/

/-! ## A003997.P13607451065535216238

`lt[acot(n), A331845(n)]`
-/

namespace A003997.P13607451065535216238
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A003997.P13607451065535216238

/-! ## A003997.P12138160576484067474

`comp[n*(1-A279329(n))]`
-/

namespace A003997.P12138160576484067474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A279329 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003997.P12138160576484067474

/-! ## A003997.P13756645316102247186

`eq[1, A279329(a(A279329(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A003997.P13756645316102247186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A279329 (f2 (A279329 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003997.P13756645316102247186

/-! ## A003997.P17637090850633729921

`lt[1, A000027(n+1)*A331845(n)]`
-/

namespace A003997.P17637090850633729921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P17637090850633729921

/-! ## A003997.P3933144350777493342

`lt[A010051(2*(n+1)), A279329(n)]`
-/

namespace A003997.P3933144350777493342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003997.P3933144350777493342

/-! ## A003997.P18288490465280137880

`lt[1, A185544(n)*A279329(n)]`
-/

namespace A003997.P18288490465280137880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 n * A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P18288490465280137880

/-! ## A003997.P17723181314676388682

`lt[1, A250120(n)*A331845(n)]`
-/

namespace A003997.P17723181314676388682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P17723181314676388682

/-! ## A003997.P13418159398840729810

`lt[A028310(n), A279329(n)+n]`
-/

namespace A003997.P13418159398840729810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003997.P13418159398840729810

/-! ## A003997.P8705187132291123379

`eq[A000038(n), A000038(A279329(n))]`
-/

namespace A003997.P8705187132291123379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A279329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003997.P8705187132291123379

/-! ## A003997.P11614820545308586802

`lt[1, A048764(n+1)*A331845(n)]`
-/

namespace A003997.P11614820545308586802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (n + 1) * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P11614820545308586802

/-! ## A003997.P11831684839179102852

`lt[1, A183095(n+1)*A331845(n)]`
-/

namespace A003997.P11831684839179102852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P11831684839179102852

/-! ## A003997.P4455640441189358986

`lt[1, A331820(n+1)*A331845(n)]`
-/

namespace A003997.P4455640441189358986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1) * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P4455640441189358986

/-! ## A003997.P9994154763781138366

`lt[1, A331828(n+1)*A331845(n)]`
-/

namespace A003997.P9994154763781138366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) * A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P9994154763781138366

/-! ## A003997.P5757765333107380776

`lt[1, A331845(n)*A331892(n+1)]`
-/

namespace A003997.P5757765333107380776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n * A331892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P5757765333107380776

/-! ## A003997.P15214955349345423133

`lt[1, A331845(n)*A331893(n+1)]`
-/

namespace A003997.P15214955349345423133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n * A331893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P15214955349345423133

/-! ## A003997.P11892104886340789647

`lt[1, A331845(n)*A331896(n+1)]`
-/

namespace A003997.P11892104886340789647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n * A331896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003997.P11892104886340789647

/-! ## A003997.P17032043454276255516

`eq[A000007(n), A000007(A279329(n))]`
-/

namespace A003997.P17032043454276255516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A279329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003997.P17032043454276255516

/-! ## A003997.P12424932525934345678

`lt[A014963(n+1)/A331820(n+1)², A331845(n)]`
-/

namespace A003997.P12424932525934345678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) / (A331820 (n + 1) ^ 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A003997.P12424932525934345678

/-!
# A003998: Numbers that are a sum of distinct positive cubes in more than one way.

The programs for A003998, there is no canonical definition to state claims against.
-/

/-! ## A003998.P8040843170027611246

`lt[1, A279329(n)]`
-/

namespace A003998.P8040843170027611246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003998.P8040843170027611246

/-! ## A003998.P14363551168911720427

`eq[A000034(A002145(n+1)), A279329(n)]`
-/

namespace A003998.P14363551168911720427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002145 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003998.P14363551168911720427

/-!
# A003999: Sums of distinct nonzero 4th powers.

The programs for A003999, there is no canonical definition to state claims against.
-/

/-! ## A003999.P12899350248677288381

`record[lcm(A065033(2*n), A279485(n))]`
-/

namespace A003999.P12899350248677288381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065033 (2 * n)) (A279485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003999.P12899350248677288381

/-! ## A003999.P8573748030114761492

`eq[A019429(A002246(n+1)), A298859(n)]`
-/

namespace A003999.P8573748030114761492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A002246 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003999.P8573748030114761492

/-! ## A003999.P3605380396786085357

`eq[A019429(A062355(n+1)), A298859(n)]`
-/

namespace A003999.P3605380396786085357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A062355 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003999.P3605380396786085357

/-! ## A003999.P3583877846164422751

`A055013(A048794(n+1))`
-/

namespace A003999.P3583877846164422751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 (A048794 (n + 1)).toNat

end

end A003999.P3583877846164422751

/-! ## A003999.P17374291426413150356

`A055013(A063013(n+1))`
-/

namespace A003999.P17374291426413150356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 (A063013 (n + 1)).toNat

end

end A003999.P17374291426413150356

