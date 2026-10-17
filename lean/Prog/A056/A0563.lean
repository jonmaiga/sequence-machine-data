import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A056300: Number of primitive (period n) n-bead necklace structures using a maximum of four different colored beads.

The programs for A056300, there is no canonical definition to state claims against.
-/

/-! ## A056300.P14706807268770564914

`A056305(n+1)+A002075(n+1)`
-/

namespace A056300.P14706807268770564914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056305 (n + 1) + A002075 (n + 1)

end

end A056300.P14706807268770564914

/-! ## A056300.P5153315809861592521

`∑{d}[n+1, A008683(#)*A056292((n+1)/#)]`
-/

namespace A056300.P5153315809861592521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056300.P5153315809861592521

/-! ## A056300.P7963803060249708549

`A002075(n+1)+∑{d}[n+1, A008683(#)*A056297((n+1)/#)]`
-/

namespace A056300.P7963803060249708549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056300.P7963803060249708549

/-! ## A056300.P1259951503950409302

`A056301(n+1)-A056306(n+1)`
-/

namespace A056300.P1259951503950409302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056301 (n + 1) - A056306 (n + 1)

end

end A056300.P1259951503950409302

/-! ## A056300.P16482467835691877237

`∑{d}[n+1, A008683(#)*A056293((n+1)/#)]-A056306(n+1)`
-/

namespace A056300.P16482467835691877237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056306 (n + 1)

end

end A056300.P16482467835691877237

/-! ## A056300.P17056069246765373221

`A056302(n+1)-(A056307(n+1)+A056306(n+1))`
-/

namespace A056300.P17056069246765373221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - (A056307 (n + 1) + A056306 (n + 1))

end

end A056300.P17056069246765373221

/-! ## A056300.P2489890581862268309

`A056302(n+1)-A056307(n+1)-A107424(A077169(n+1))`
-/

namespace A056300.P2489890581862268309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - A056307 (n + 1) - A107424 (A077169 (n + 1)).toNat

end

end A056300.P2489890581862268309

/-!
# A056301: Number of primitive (period n) n-bead necklace structures using a maximum of five different colored beads.

The programs for A056301, there is no canonical definition to state claims against.
-/

/-! ## A056301.P14754854956871585134

`A056306(n+1)+A056300(n+1)`
-/

namespace A056301.P14754854956871585134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056306 (n + 1) + A056300 (n + 1)

end

end A056301.P14754854956871585134

/-! ## A056301.P16169789985794032523

`∑{d}[n+1, A008683(#)*A056293((n+1)/#)]`
-/

namespace A056301.P16169789985794032523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056301.P16169789985794032523

/-! ## A056301.P16151305765439582566

`A002075(n+1)+A056306(n+1)+A056305(n+1)`
-/

namespace A056301.P16151305765439582566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) + (A056306 (n + 1) + A056305 (n + 1))

end

end A056301.P16151305765439582566

/-! ## A056301.P15948263994246558106

`A056306(n+1)+∑{d}[n+1, A008683(#)*A056292((n+1)/#)]`
-/

namespace A056301.P15948263994246558106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056306 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056301.P15948263994246558106

/-! ## A056301.P12701463428675701470

`A056302(n+1)-A056307(n+1)`
-/

namespace A056301.P12701463428675701470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - A056307 (n + 1)

end

end A056301.P12701463428675701470

/-! ## A056301.P8785538410863646227

`A056302(n+1)-A107424(A184218(n+1)+7)`
-/

namespace A056301.P8785538410863646227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - A107424 (A184218 (n + 1) + 7).toNat

end

end A056301.P8785538410863646227

/-! ## A056301.P10798776319581067561

`A056302(n+1)-A107424(A077169(n)+1+n)`
-/

namespace A056301.P10798776319581067561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - A107424 (A077169 n + 1 + (n : ℤ)).toNat

end

end A056301.P10798776319581067561

/-! ## A056301.P15285834543981640210

`A107424(A077169(n+1))+A056305(n+1)+A002075(n+1)`
-/

namespace A056301.P15285834543981640210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A077169 (n + 1)).toNat + (A056305 (n + 1) + A002075 (n + 1))

end

end A056301.P15285834543981640210

/-!
# A056302: Number of primitive (period n) n-bead necklace structures using a maximum of six different colored beads.

The programs for A056302, there is no canonical definition to state claims against.
-/

/-! ## A056302.P9451457003784365813

`A056307(n+1)+A056301(n+1)`
-/

namespace A056302.P9451457003784365813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056307 (n + 1) + A056301 (n + 1)

end

end A056302.P9451457003784365813

/-! ## A056302.P18078462284126693269

`∑{d}[n+1, A008683(#)*A056294((n+1)/#)]`
-/

namespace A056302.P18078462284126693269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056294 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056302.P18078462284126693269

/-! ## A056302.P10312909009940727650

`A056300(n+1)+A056307(n+1)+A056306(n+1)`
-/

namespace A056302.P10312909009940727650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056300 (n + 1) + (A056307 (n + 1) + A056306 (n + 1))

end

end A056302.P10312909009940727650

/-! ## A056302.P17204660386903807060

`A056301(n+1)+∑{d}[n+1, A008683(#)*A056299((n+1)/#)]`
-/

namespace A056302.P17204660386903807060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056301 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056302.P17204660386903807060

/-! ## A056302.P3375150253107581296

`A056307(n+1)+∑{d}[n+1, A008683(#)*A056293((n+1)/#)]`
-/

namespace A056302.P3375150253107581296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056307 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056302.P3375150253107581296

/-! ## A056302.P5094410749770202992

`A056307(n+1)+A002075(n+1)+A056306(n+1)+A056305(n+1)`
-/

namespace A056302.P5094410749770202992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056307 (n + 1) + (A002075 (n + 1) + (A056306 (n + 1) + A056305 (n + 1)))

end

end A056302.P5094410749770202992

/-!
# A056303: Number of primitive (period n) n-bead necklace structures using exactly two different colored beads.

The programs for A056303, the canonical program `A056303.P18308971732008802848` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056303 has offset 1).

The definition of A056303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056303.P1855606776800731

`ceil(n/(n+1))*A000048(n+1)`
-/

namespace A056303.P1855606776800731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A000048 (n + 1)

end

end A056303.P1855606776800731

namespace A056303

/-- `ceil(n/(n+1))*A000048(n+1)` -/
def P1855606776800731.Spec : Prop :=
  ∀ n, P1855606776800731.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P14734355991729481499

`A000048(n+1)-A000007(n)`
-/

namespace A056303.P14734355991729481499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - A000007 n

end

end A056303.P14734355991729481499

namespace A056303

/-- `A000048(n+1)-A000007(n)` -/
def P14734355991729481499.Spec : Prop :=
  ∀ n, P14734355991729481499.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P4759515346306188702

`A000048(n+1)*A057427(n)`
-/

namespace A056303.P4759515346306188702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) * A057427 n

end

end A056303.P4759515346306188702

namespace A056303

/-- `A000048(n+1)*A057427(n)` -/
def P4759515346306188702.Spec : Prop :=
  ∀ n, P4759515346306188702.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P1279533429004794396

`A000048(n+1)%A000031(n)`
-/

namespace A056303.P1279533429004794396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000048 (n + 1)) (A000031 n)

end

end A056303.P1279533429004794396

namespace A056303

/-- `A000048(n+1)%A000031(n)` -/
def P1279533429004794396.Spec : Prop :=
  ∀ n, P1279533429004794396.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P5337179221401589418

`A308706(n+1)+A056366(n+1)`
-/

namespace A056303.P5337179221401589418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308706 (n + 1) + A056366 (n + 1)

end

end A056303.P5337179221401589418

namespace A056303

/-- `A308706(n+1)+A056366(n+1)` -/
def P5337179221401589418.Spec : Prop :=
  ∀ n, P5337179221401589418.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P14497027350600670292

`A000048(n+1)*A066247(2*(n+1))`
-/

namespace A056303.P14497027350600670292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) * A066247 (2 * (n + 1))

end

end A056303.P14497027350600670292

namespace A056303

/-- `A000048(n+1)*A066247(2*(n+1))` -/
def P14497027350600670292.Spec : Prop :=
  ∀ n, P14497027350600670292.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P5078912745758112583

`A000048(n+1)-A130713(2*n+1)/2`
-/

namespace A056303.P5078912745758112583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 (n + 1) : ℚ) - (A130713 (2 * n + 1) : ℚ) / 2

end

end A056303.P5078912745758112583

namespace A056303

/-- `A000048(n+1)-A130713(2*n+1)/2` -/
def P5078912745758112583.Spec : Prop :=
  ∀ n, P5078912745758112583.a n = (A056303 (n + 1) : ℚ)

end A056303

/-! ## A056303.P18308971732008802848

`∑{d}[n+1, A008683(#)*A056295((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056303

/-- `∑{d}[n+1, A008683(#)*A056295((n+1)/#)]` -/
def P18308971732008802848.Spec : Prop :=
  ∀ n, P18308971732008802848.a n = A056303 (n + 1)

theorem P18308971732008802848.correct : P18308971732008802848.Spec := by
  intro n
  simp only [A056303, Nat.add_sub_cancel]

end A056303

/-! ## A056303.P16848781192335406968

`A000048(n+1)*A089309(A089309(2*n)²)`
-/

namespace A056303.P16848781192335406968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) * A089309 (A089309 (2 * n) ^ 2).toNat

end

end A056303.P16848781192335406968

namespace A056303

/-- `A000048(n+1)*A089309(A089309(2*n)²)` -/
def P16848781192335406968.Spec : Prop :=
  ∀ n, P16848781192335406968.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P3125890208150523664

`A000048(n+1)+A056366(n+1)-A000046(n+1)`
-/

namespace A056303.P3125890208150523664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A056366 (n + 1) - A000046 (n + 1))

end

end A056303.P3125890208150523664

namespace A056303

/-- `A000048(n+1)+A056366(n+1)-A000046(n+1)` -/
def P3125890208150523664.Spec : Prop :=
  ∀ n, P3125890208150523664.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P11636908724772572637

`A000046(n+1)+A056366(n+1)-A179781(n+1)`
-/

namespace A056303.P11636908724772572637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) + (A056366 (n + 1) - A179781 (n + 1))

end

end A056303.P11636908724772572637

namespace A056303

/-- `A000046(n+1)+A056366(n+1)-A179781(n+1)` -/
def P11636908724772572637.Spec : Prop :=
  ∀ n, P11636908724772572637.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P15790544384912971118

`A130713(2*n)+A000048(n+1)-A130713(n+1)`
-/

namespace A056303.P15790544384912971118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (2 * n) + (A000048 (n + 1) - A130713 (n + 1))

end

end A056303.P15790544384912971118

namespace A056303

/-- `A130713(2*n)+A000048(n+1)-A130713(n+1)` -/
def P15790544384912971118.Spec : Prop :=
  ∀ n, P15790544384912971118.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P10494555808176081205

`Δ[A173278(n)]%A173270(n)`
-/

namespace A056303.P10494555808176081205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A173270 n)

end

end A056303.P10494555808176081205

namespace A056303

/-- `Δ[A173278(n)]%A173270(n)` -/
def P10494555808176081205.Spec : Prop :=
  ∀ n, P10494555808176081205.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P16603307093476160447

`A173278(n+1)%A173278(n)`
-/

namespace A056303.P16603307093476160447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173278 (n + 1)) (A173278 n)

end

end A056303.P16603307093476160447

namespace A056303

/-- `A173278(n+1)%A173278(n)` -/
def P16603307093476160447.Spec : Prop :=
  ∀ n, P16603307093476160447.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P17252022121408797389

`A059966(n+1)-A051841(n+1)`
-/

namespace A056303.P17252022121408797389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A051841 (n + 1)

end

end A056303.P17252022121408797389

namespace A056303

/-- `A059966(n+1)-A051841(n+1)` -/
def P17252022121408797389.Spec : Prop :=
  ∀ n, P17252022121408797389.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P14746142268570538114

`A000048(n+1)+A059966(n+1)-A001037(n+1)`
-/

namespace A056303.P14746142268570538114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A059966 (n + 1) - A001037 (n + 1))

end

end A056303.P14746142268570538114

namespace A056303

/-- `A000048(n+1)+A059966(n+1)-A001037(n+1)` -/
def P14746142268570538114.Spec : Prop :=
  ∀ n, P14746142268570538114.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P3255419906829653037

`A000048(n+1)+A001037(n+1)-A060477(n+1)`
-/

namespace A056303.P3255419906829653037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A001037 (n + 1) - A060477 (n + 1))

end

end A056303.P3255419906829653037

namespace A056303

/-- `A000048(n+1)+A001037(n+1)-A060477(n+1)` -/
def P3255419906829653037.Spec : Prop :=
  ∀ n, P3255419906829653037.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P11427294456348853721

`A000048(n+1)+A000007(n)*A140505(n+1)`
-/

namespace A056303.P11427294456348853721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + A000007 n * A140505 (n + 1)

end

end A056303.P11427294456348853721

namespace A056303

/-- `A000048(n+1)+A000007(n)*A140505(n+1)` -/
def P11427294456348853721.Spec : Prop :=
  ∀ n, P11427294456348853721.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P13495161913576373844

`A000048(n+1)+A038199(n+1)-A027375(n+1)`
-/

namespace A056303.P13495161913576373844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A038199 (n + 1) - A027375 (n + 1))

end

end A056303.P13495161913576373844

namespace A056303

/-- `A000048(n+1)+A038199(n+1)-A027375(n+1)` -/
def P13495161913576373844.Spec : Prop :=
  ∀ n, P13495161913576373844.a n = A056303 (n + 1)

end A056303

/-! ## A056303.P3058320894516925823

`A000048(n+1)-and(A000035(n+1), A000048(2*n))`
-/

namespace A056303.P3058320894516925823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - Int.land (A000035 (n + 1)) (A000048 (2 * n))

end

end A056303.P3058320894516925823

namespace A056303

/-- `A000048(n+1)-and(A000035(n+1), A000048(2*n))` -/
def P3058320894516925823.Spec : Prop :=
  ∀ n, P3058320894516925823.a n = A056303 (n + 1)

end A056303

/-!
# A056304: Number of primitive (period n) n-bead necklace structures using exactly three different colored beads.

The programs for A056304, there is no canonical definition to state claims against.
-/

/-! ## A056304.P1896873242578074206

`A002075(n+1)-Δ[A173278(n)]`
-/

namespace A056304.P1896873242578074206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) - (f1 (n + 1) - f1 n)

end

end A056304.P1896873242578074206

/-! ## A056304.P6433876964169680691

`A002075(n+1)-A000048(n+1)`
-/

namespace A056304.P6433876964169680691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) - A000048 (n + 1)

end

end A056304.P6433876964169680691

/-! ## A056304.P2501372765942520346

`∑{d}[n+1, A008683(#)*A056296((n+1)/#)]`
-/

namespace A056304.P2501372765942520346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056304.P2501372765942520346

/-! ## A056304.P13805768590846527214

`A002075(n+1)-A053633(A000096(n))`
-/

namespace A056304.P13805768590846527214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) - A053633 (A000096 n).toNat

end

end A056304.P13805768590846527214

/-! ## A056304.P10924484567663058587

`A107424(A133263(n)+1)`
-/

namespace A056304.P10924484567663058587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A133263 n + 1).toNat

end

end A056304.P10924484567663058587

/-! ## A056304.P6723393938318012459

`A107424(A238531(n+1)+1)`
-/

namespace A056304.P6723393938318012459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A238531 (n + 1) + 1).toNat

end

end A056304.P6723393938318012459

/-! ## A056304.P14096118342401903585

`A107424(A158799(n+1)+∑[n])`
-/

namespace A056304.P14096118342401903585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A158799 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A056304.P14096118342401903585

/-!
# A056305: Number of primitive (period n) n-bead necklace structures using exactly four different colored beads.

The programs for A056305, there is no canonical definition to state claims against.
-/

/-! ## A056305.P6331828528476803762

`A056300(n+1)-A002075(n+1)`
-/

namespace A056305.P6331828528476803762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056300 (n + 1) - A002075 (n + 1)

end

end A056305.P6331828528476803762

/-! ## A056305.P15725702699260726023

`∑{d}[n+1, A008683(#)*A056297((n+1)/#)]`
-/

namespace A056305.P15725702699260726023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056305.P15725702699260726023

/-! ## A056305.P502366272005116111

`A056301(n+1)-(A056306(n+1)+A002075(n+1))`
-/

namespace A056305.P502366272005116111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056301 (n + 1) - (A056306 (n + 1) + A002075 (n + 1))

end

end A056305.P502366272005116111

/-! ## A056305.P17482095380168482516

`A107424(A158799(n)+∑[n]+1)`
-/

namespace A056305.P17482095380168482516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A158799 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A056305.P17482095380168482516

/-! ## A056305.P12011135358950030470

`A107424(∑[n+2]-A004275(n))`
-/

namespace A056305.P12011135358950030470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004275 n).toNat

end

end A056305.P12011135358950030470

/-! ## A056305.P3883867957928456109

`A060576(n)*A107424(A145018(n+1))`
-/

namespace A056305.P3883867957928456109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A107424 (A145018 (n + 1)).toNat

end

end A056305.P3883867957928456109

/-! ## A056305.P16535549862285804880

`A107424(A145018(n+1)+A060576(n)-1)`
-/

namespace A056305.P16535549862285804880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A145018 (n + 1) + (A060576 n - 1)).toNat

end

end A056305.P16535549862285804880

/-! ## A056305.P10160562685356889444

`A107424(A000124(n)-A004275(n)+2*n+1)`
-/

namespace A056305.P10160562685356889444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A000124 n - A004275 n + (2 * n + 1 : ℤ)).toNat

end

end A056305.P10160562685356889444

/-!
# A056306: Number of primitive (period n) n-bead necklace structures using exactly five different colored beads.

The programs for A056306, there is no canonical definition to state claims against.
-/

/-! ## A056306.P15737621941688878499

`A056301(n+1)-A056300(n+1)`
-/

namespace A056306.P15737621941688878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056301 (n + 1) - A056300 (n + 1)

end

end A056306.P15737621941688878499

/-! ## A056306.P6422104321143106130

`∑{d}[n+1, A008683(#)*A056298((n+1)/#)]`
-/

namespace A056306.P6422104321143106130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056306.P6422104321143106130

/-! ## A056306.P16383909267960594142

`∑{d}[n+1, A056298(#)*A069158((n+1)/#)]`
-/

namespace A056306.P16383909267960594142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056298 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056306.P16383909267960594142

/-! ## A056306.P18167136371329605513

`∑{d}[n+1, A056298(#)*A253206((n+1)/#)]`
-/

namespace A056306.P18167136371329605513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056298 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056306.P18167136371329605513

/-! ## A056306.P17361846026023008563

`A056301(n+1)-(A056305(n+1)+A002075(n+1))`
-/

namespace A056306.P17361846026023008563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056301 (n + 1) - (A056305 (n + 1) + A002075 (n + 1))

end

end A056306.P17361846026023008563

/-! ## A056306.P16727684202878766626

`A056302(n+1)-(A056307(n+1)+A056300(n+1))`
-/

namespace A056306.P16727684202878766626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - (A056307 (n + 1) + A056300 (n + 1))

end

end A056306.P16727684202878766626

/-! ## A056306.P9448732203338007047

`A107424(A077169(n+1))`
-/

namespace A056306.P9448732203338007047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A077169 (n + 1)).toNat

end

end A056306.P9448732203338007047

/-!
# A056307: Number of primitive (period n) n-bead necklace structures using exactly six different colored beads.

The programs for A056307, there is no canonical definition to state claims against.
-/

/-! ## A056307.P4702011484582089548

`A056302(n+1)-A056301(n+1)`
-/

namespace A056307.P4702011484582089548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - A056301 (n + 1)

end

end A056307.P4702011484582089548

/-! ## A056307.P14216761083422927282

`∑{d}[n+1, A008683(#)*A056299((n+1)/#)]`
-/

namespace A056307.P14216761083422927282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056307.P14216761083422927282

/-! ## A056307.P1055170370674123309

`∑{d}[n+1, A056299(#)*A069158((n+1)/#)]`
-/

namespace A056307.P1055170370674123309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056299 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056307.P1055170370674123309

/-! ## A056307.P11258795784832827226

`∑{d}[n+1, A056299(#)*A133639((n+1)/#)]`
-/

namespace A056307.P11258795784832827226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056299 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056307.P11258795784832827226

/-! ## A056307.P5598113079792523520

`∑{d}[n+1, A056299(#)*A253206((n+1)/#)]`
-/

namespace A056307.P5598113079792523520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056299 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056307.P5598113079792523520

/-! ## A056307.P4213468382994356278

`A056302(n+1)-(A056306(n+1)+A056300(n+1))`
-/

namespace A056307.P4213468382994356278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056302 (n + 1) - (A056306 (n + 1) + A056300 (n + 1))

end

end A056307.P4213468382994356278

/-! ## A056307.P2783233490920449354

`A107424(A184218(n+1)+7)`
-/

namespace A056307.P2783233490920449354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A184218 (n + 1) + 7).toNat

end

end A056307.P2783233490920449354

/-! ## A056307.P601664925515216576

`A107424(A077169(n)+1+n)`
-/

namespace A056307.P601664925515216576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (A077169 n + 1 + (n : ℤ)).toNat

end

end A056307.P601664925515216576

/-!
# A056308: Number of reversible strings with n beads using a maximum of six different colors.

The programs for A056308, the canonical program `A056308.P5326903351242616596` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056308 has offset 0).

The definition of A056308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056308.P9415628952588659188

`(6^n+6^floor((n+1)/2))/2`
-/

namespace A056308.P9415628952588659188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℚ) + (6 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)) / 2

end

end A056308.P9415628952588659188

namespace A056308

/-- `(6^n+6^floor((n+1)/2))/2` -/
def P9415628952588659188.Spec : Prop :=
  ∀ n, P9415628952588659188.a n = (A056308 n : ℚ)

end A056308

/-! ## A056308.P5326903351242616596

`6*a(n-1)+6*a(n-2)-36*a(n-3)` with `a(0)=1, a(1)=6, a(2)=21`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056308

/-- `6*a(n-1)+6*a(n-2)-36*a(n-3)` -/
def P5326903351242616596.Spec : Prop :=
  ∀ n, P5326903351242616596.a n = A056308 n

theorem P5326903351242616596.correct : P5326903351242616596.Spec := by
  intro n
  simp only [A056308]

end A056308

/-! ## A056308.P4896816618856407663

`A284979(∑[n+4]+12)`
-/

namespace A056308.P4896816618856407663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284979 (∑ j ∈ Finset.range (n + 1), f1 j + 12)

end

end A056308.P4896816618856407663

namespace A056308

/-- `A284979(∑[n+4]+12)` -/
def P4896816618856407663.Spec : Prop :=
  ∀ n, P4896816618856407663.a n = A056308 n

end A056308

/-! ## A056308.P7172979269556535887

`A277504(A000096(n+6)-6)`
-/

namespace A056308.P7172979269556535887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 (A000096 (n + 6) - 6).toNat

end

end A056308.P7172979269556535887

namespace A056308

/-- `A277504(A000096(n+6)-6)` -/
def P7172979269556535887.Spec : Prop :=
  ∀ n, P7172979269556535887.a n = A056308 n

end A056308

/-! ## A056308.P6406686934619815261

`A277504(A000124(n+7)-8)`
-/

namespace A056308.P6406686934619815261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 (A000124 (n + 7) - 8).toNat

end

end A056308.P6406686934619815261

namespace A056308

/-- `A277504(A000124(n+7)-8)` -/
def P6406686934619815261.Spec : Prop :=
  ∀ n, P6406686934619815261.a n = A056308 n

end A056308

/-!
# A056309: Number of reversible strings with n beads using exactly two different colors.

The programs for A056309, the canonical program `A056309.P616732123275629309` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056309 has offset 1).

The definition of A056309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056309.P616732123275629309

`A005418(n+2)-2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056309

/-- `A005418(n+2)-2` -/
def P616732123275629309.Spec : Prop :=
  ∀ n, P616732123275629309.a n = A056309 (n + 1)

theorem P616732123275629309.correct : P616732123275629309.Spec := by
  intro n
  simp only [A056309, Nat.add_sub_cancel]

end A056309

/-! ## A056309.P4784187716644864809

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=8`
-/

namespace A056309.P4784187716644864809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 8] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A056309.P4784187716644864809

namespace A056309

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P4784187716644864809.Spec : Prop :=
  ∀ n, P4784187716644864809.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P13547206017846062300

`A056326(n+2)-1`
-/

namespace A056309.P13547206017846062300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 2) - 1

end

end A056309.P13547206017846062300

namespace A056309

/-- `A056326(n+2)-1` -/
def P13547206017846062300.Spec : Prop :=
  ∀ n, P13547206017846062300.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P5255073101584950946

`∑{d}[n+1, A056318(#)]`
-/

namespace A056309.P5255073101584950946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056318 d

end

end A056309.P5255073101584950946

namespace A056309

/-- `∑{d}[n+1, A056318(#)]` -/
def P5255073101584950946.Spec : Prop :=
  ∀ n, P5255073101584950946.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P10615258413239173523

`∑[∑[A113979(n)]]-1`
-/

namespace A056309.P10615258413239173523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056309.P10615258413239173523

namespace A056309

/-- `∑[∑[A113979(n)]]-1` -/
def P10615258413239173523.Spec : Prop :=
  ∀ n, P10615258413239173523.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P15019816857385955491

`∑[A052957(n)/2]-1`
-/

namespace A056309.P15019816857385955491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052957 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056309.P15019816857385955491

namespace A056309

/-- `∑[A052957(n)/2]-1` -/
def P15019816857385955491.Spec : Prop :=
  ∀ n, P15019816857385955491.a n = (A056309 (n + 1) : ℚ)

end A056309

/-! ## A056309.P14675542378194466744

`A016116(n)+A000918(n)`
-/

namespace A056309.P14675542378194466744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A000918 n

end

end A056309.P14675542378194466744

namespace A056309

/-- `A016116(n)+A000918(n)` -/
def P14675542378194466744.Spec : Prop :=
  ∀ n, P14675542378194466744.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P2981297297459737171

`A140253(n)+A106624(n)`
-/

namespace A056309.P2981297297459737171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A106624 n

end

end A056309.P2981297297459737171

namespace A056309

/-- `A140253(n)+A106624(n)` -/
def P2981297297459737171.Spec : Prop :=
  ∀ n, P2981297297459737171.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P7056868199037366480

`A354788(n)+A274230(n)`
-/

namespace A056309.P7056868199037366480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A274230 n

end

end A056309.P7056868199037366480

namespace A056309

/-- `A354788(n)+A274230(n)` -/
def P7056868199037366480.Spec : Prop :=
  ∀ n, P7056868199037366480.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P4770191652652939197

`A000225(n)+A016116(n)-1`
-/

namespace A056309.P4770191652652939197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A016116 n - 1)

end

end A056309.P4770191652652939197

namespace A056309

/-- `A000225(n)+A016116(n)-1` -/
def P4770191652652939197.Spec : Prop :=
  ∀ n, P4770191652652939197.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P161658318359594623

`A158780(n+2)+A000918(n)`
-/

namespace A056309.P161658318359594623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A000918 n

end

end A056309.P161658318359594623

namespace A056309

/-- `A158780(n+2)+A000918(n)` -/
def P161658318359594623.Spec : Prop :=
  ∀ n, P161658318359594623.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P15629544733275053997

`A027383(n)+A274230(n)-1`
-/

namespace A056309.P15629544733275053997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + (A274230 n - 1)

end

end A056309.P15629544733275053997

namespace A056309

/-- `A027383(n)+A274230(n)-1` -/
def P15629544733275053997.Spec : Prop :=
  ∀ n, P15629544733275053997.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P15409756303245369929

`A000079(n)+A016116(n)-2`
-/

namespace A056309.P15409756303245369929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A016116 n - 2)

end

end A056309.P15409756303245369929

namespace A056309

/-- `A000079(n)+A016116(n)-2` -/
def P15409756303245369929.Spec : Prop :=
  ∀ n, P15409756303245369929.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P17316807302668503776

`A051437(n)+A077957(n)-2`
-/

namespace A056309.P17316807302668503776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n + (A077957 n - 2)

end

end A056309.P17316807302668503776

namespace A056309

/-- `A051437(n)+A077957(n)-2` -/
def P17316807302668503776.Spec : Prop :=
  ∀ n, P17316807302668503776.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P13576181086732590077

`A200675(2*n)+A000918(n)`
-/

namespace A056309.P13576181086732590077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (2 * n) + A000918 n

end

end A056309.P13576181086732590077

namespace A056309

/-- `A200675(2*n)+A000918(n)` -/
def P13576181086732590077.Spec : Prop :=
  ∀ n, P13576181086732590077.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P6642213205978745941

`∑[A011782(n)]+A016116(n)-2`
-/

namespace A056309.P6642213205978745941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A016116 n - 2)

end

end A056309.P6642213205978745941

namespace A056309

/-- `∑[A011782(n)]+A016116(n)-2` -/
def P6642213205978745941.Spec : Prop :=
  ∀ n, P6642213205978745941.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P6642901636788765313

`A016116(n)+record[A131575(n)-2]`
-/

namespace A056309.P6642901636788765313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056309.P6642901636788765313

namespace A056309

/-- `A016116(n)+record[A131575(n)-2]` -/
def P6642901636788765313.Spec : Prop :=
  ∀ n, P6642901636788765313.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P3896962525101928652

`A158780(n+2)-A122958(n+1)`
-/

namespace A056309.P3896962525101928652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) - A122958 (n + 1)

end

end A056309.P3896962525101928652

namespace A056309

/-- `A158780(n+2)-A122958(n+1)` -/
def P3896962525101928652.Spec : Prop :=
  ∀ n, P3896962525101928652.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P1402110629863230050

`A016116(n)*A051032(n+1)-2`
-/

namespace A056309.P1402110629863230050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A051032 (n + 1) - 2

end

end A056309.P1402110629863230050

namespace A056309

/-- `A016116(n)*A051032(n+1)-2` -/
def P1402110629863230050.Spec : Prop :=
  ∀ n, P1402110629863230050.a n = A056309 (n + 1)

end A056309

/-! ## A056309.P15721175302076920321

`A007179(n+1)+A016116(n+1)-2`
-/

namespace A056309.P15721175302076920321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) + (A016116 (n + 1) - 2)

end

end A056309.P15721175302076920321

namespace A056309

/-- `A007179(n+1)+A016116(n+1)-2` -/
def P15721175302076920321.Spec : Prop :=
  ∀ n, P15721175302076920321.a n = A056309 (n + 1)

end A056309

/-!
# A056310: Number of reversible strings with n beads using exactly three different colors.

The programs for A056310, the canonical program `A056310.P14264531669807976388` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056310 has offset 1).

The definition of A056310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056310.P5425523772023029285

`∑{d}[n+1, A056319(#)]`
-/

namespace A056310.P5425523772023029285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056319 d

end

end A056310.P5425523772023029285

namespace A056310

/-- `∑{d}[n+1, A056319(#)]` -/
def P5425523772023029285.Spec : Prop :=
  ∀ n, P5425523772023029285.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P7200095994467490219

`A305623(n+1)+A056454(n+1)`
-/

namespace A056310.P7200095994467490219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305623 (n + 1) + A056454 (n + 1)

end

end A056310.P7200095994467490219

namespace A056310

/-- `A305623(n+1)+A056454(n+1)` -/
def P7200095994467490219.Spec : Prop :=
  ∀ n, P7200095994467490219.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P14264531669807976388

`A094033(∑[(n+1)%2])+A094033(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056310

/-- `A094033(∑[(n+1)%2])+A094033(n+1)` -/
def P14264531669807976388.Spec : Prop :=
  ∀ n, P14264531669807976388.a n = A056310 (n + 1)

theorem P14264531669807976388.correct : P14264531669807976388.Spec := by
  intro n
  simp only [A056310, Nat.add_sub_cancel]

end A056310

/-! ## A056310.P9490677080191134644

`A094033(n+1)+A094033(A008619(n))`
-/

namespace A056310.P9490677080191134644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) + A094033 (A008619 n).toNat

end

end A056310.P9490677080191134644

namespace A056310

/-- `A094033(n+1)+A094033(A008619(n))` -/
def P9490677080191134644.Spec : Prop :=
  ∀ n, P9490677080191134644.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P13263946697121162071

`A094033(A065033(n+1))+A094033(n+1)`
-/

namespace A056310.P13263946697121162071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (A065033 (n + 1)).toNat + A094033 (n + 1)

end

end A056310.P13263946697121162071

namespace A056310

/-- `A094033(A065033(n+1))+A094033(n+1)` -/
def P13263946697121162071.Spec : Prop :=
  ∀ n, P13263946697121162071.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P17224949681276669462

`A094033(n+1)+A094033(A110654(n+1))`
-/

namespace A056310.P17224949681276669462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) + A094033 (A110654 (n + 1)).toNat

end

end A056310.P17224949681276669462

namespace A056310

/-- `A094033(n+1)+A094033(A110654(n+1))` -/
def P17224949681276669462.Spec : Prop :=
  ∀ n, P17224949681276669462.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P11795705993985915396

`A094033(A008621(2*n))+A094033(n+1)`
-/

namespace A056310.P11795705993985915396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (A008621 (2 * n)).toNat + A094033 (n + 1)

end

end A056310.P11795705993985915396

namespace A056310

/-- `A094033(A008621(2*n))+A094033(n+1)` -/
def P11795705993985915396.Spec : Prop :=
  ∀ n, P11795705993985915396.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P14672950673056048382

`A001117(n+1)-A305623(n+1)`
-/

namespace A056310.P14672950673056048382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1) - A305623 (n + 1)

end

end A056310.P14672950673056048382

namespace A056310

/-- `A001117(n+1)-A305623(n+1)` -/
def P14672950673056048382.Spec : Prop :=
  ∀ n, P14672950673056048382.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P10663173909921571489

`A056489(2*n+1)-A305623(n+1)`
-/

namespace A056310.P10663173909921571489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (2 * n + 1) - A305623 (n + 1)

end

end A056310.P10663173909921571489

namespace A056310

/-- `A056489(2*n+1)-A305623(n+1)` -/
def P10663173909921571489.Spec : Prop :=
  ∀ n, P10663173909921571489.a n = A056310 (n + 1)

end A056310

/-! ## A056310.P1305007887272062797

`(A056454(2*(n+1))+A056454(n+1))/2`
-/

namespace A056310.P1305007887272062797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (2 * (n + 1)) + A056454 (n + 1) : ℚ) / 2

end

end A056310.P1305007887272062797

namespace A056310

/-- `(A056454(2*(n+1))+A056454(n+1))/2` -/
def P1305007887272062797.Spec : Prop :=
  ∀ n, P1305007887272062797.a n = (A056310 (n + 1) : ℚ)

end A056310

/-!
# A056311: Number of reversible strings with n beads using exactly four different colors.

The programs for A056311, the canonical program `A056311.P8895079700223021216` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056311 has offset 1).

The definition of A056311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056311.P778185750093127599

`∑{d}[n+1, A056320(#)]`
-/

namespace A056311.P778185750093127599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056320 d

end

end A056311.P778185750093127599

namespace A056311

/-- `∑{d}[n+1, A056320(#)]` -/
def P778185750093127599.Spec : Prop :=
  ∀ n, P778185750093127599.a n = A056311 (n + 1)

end A056311

/-! ## A056311.P2526979286714612545

`A305624(n+1)+A056455(n+1)`
-/

namespace A056311.P2526979286714612545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305624 (n + 1) + A056455 (n + 1)

end

end A056311.P2526979286714612545

namespace A056311

/-- `A305624(n+1)+A056455(n+1)` -/
def P2526979286714612545.Spec : Prop :=
  ∀ n, P2526979286714612545.a n = A056311 (n + 1)

end A056311

/-! ## A056311.P16273295855980433067

`A000919(n+1)-A305624(n+1)`
-/

namespace A056311.P16273295855980433067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - A305624 (n + 1)

end

end A056311.P16273295855980433067

namespace A056311

/-- `A000919(n+1)-A305624(n+1)` -/
def P16273295855980433067.Spec : Prop :=
  ∀ n, P16273295855980433067.a n = A056311 (n + 1)

end A056311

/-! ## A056311.P15559345228326286309

`(A056455(n+1)+A000919(n+1))/2`
-/

namespace A056311.P15559345228326286309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) + A000919 (n + 1) : ℚ) / 2

end

end A056311.P15559345228326286309

namespace A056311

/-- `(A056455(n+1)+A000919(n+1))/2` -/
def P15559345228326286309.Spec : Prop :=
  ∀ n, P15559345228326286309.a n = (A056311 (n + 1) : ℚ)

end A056311

/-! ## A056311.P8247540471619108424

`A056490(2*n+1)-A305624(n+1)`
-/

namespace A056311.P8247540471619108424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (2 * n + 1) - A305624 (n + 1)

end

end A056311.P8247540471619108424

namespace A056311

/-- `A056490(2*n+1)-A305624(n+1)` -/
def P8247540471619108424.Spec : Prop :=
  ∀ n, P8247540471619108424.a n = A056311 (n + 1)

end A056311

/-! ## A056311.P8895079700223021216

`2*(A028244(n+1)+A028244(A008619(n)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056311

/-- `2*(A028244(n+1)+A028244(A008619(n)))` -/
def P8895079700223021216.Spec : Prop :=
  ∀ n, P8895079700223021216.a n = A056311 (n + 1)

theorem P8895079700223021216.correct : P8895079700223021216.Spec := by
  intro n
  simp only [A056311, Nat.add_sub_cancel]

end A056311

/-! ## A056311.P11472723763491001043

`(A000919(n+1)+A000919(A008619(n)))/2`
-/

namespace A056311.P11472723763491001043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000919 (n + 1) + A000919 (A008619 n).toNat : ℚ) / 2

end

end A056311.P11472723763491001043

namespace A056311

/-- `(A000919(n+1)+A000919(A008619(n)))/2` -/
def P11472723763491001043.Spec : Prop :=
  ∀ n, P11472723763491001043.a n = (A056311 (n + 1) : ℚ)

end A056311

/-! ## A056311.P2431145431166565873

`(A000919(n+1)+A000919(A263997(n+1)))/2`
-/

namespace A056311.P2431145431166565873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000919 (n + 1) + A000919 (A263997 (n + 1)).toNat : ℚ) / 2

end

end A056311.P2431145431166565873

namespace A056311

/-- `(A000919(n+1)+A000919(A263997(n+1)))/2` -/
def P2431145431166565873.Spec : Prop :=
  ∀ n, P2431145431166565873.a n = (A056311 (n + 1) : ℚ)

end A056311

/-!
# A056312: Number of reversible strings with n beads using exactly five different colors.

The programs for A056312, there is no canonical definition to state claims against.
-/

/-! ## A056312.P17854997970659683438

`∑{d}[n+1, A056321(#)]`
-/

namespace A056312.P17854997970659683438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056321 d

end

end A056312.P17854997970659683438

/-! ## A056312.P5633547409519867401

`A305625(n+1)+A056456(n+1)`
-/

namespace A056312.P5633547409519867401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305625 (n + 1) + A056456 (n + 1)

end

end A056312.P5633547409519867401

/-! ## A056312.P13450504163359550468

`A001118(n+1)-A305625(n+1)`
-/

namespace A056312.P13450504163359550468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001118 (n + 1) - A305625 (n + 1)

end

end A056312.P13450504163359550468

/-! ## A056312.P1469138439229427388

`A056491(2*n+1)-A305625(n+1)`
-/

namespace A056312.P1469138439229427388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (2 * n + 1) - A305625 (n + 1)

end

end A056312.P1469138439229427388

/-! ## A056312.P10632805634205777909

`A305625(n+1)+A001118(A008619(n))`
-/

namespace A056312.P10632805634205777909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305625 (n + 1) + A001118 (A008619 n).toNat

end

end A056312.P10632805634205777909

/-!
# A056313: Number of reversible strings with n beads using exactly six different colors.

The programs for A056313, there is no canonical definition to state claims against.
-/

/-! ## A056313.P5690705391183417805

`∑{d}[n+1, A056322(#)]`
-/

namespace A056313.P5690705391183417805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056322 d

end

end A056313.P5690705391183417805

/-! ## A056313.P11933678743279050271

`A305626(n+1)+A056457(n+1)`
-/

namespace A056313.P11933678743279050271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305626 (n + 1) + A056457 (n + 1)

end

end A056313.P11933678743279050271

/-! ## A056313.P663984143600841875

`A000920(n+1)-A305626(n+1)`
-/

namespace A056313.P663984143600841875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000920 (n + 1) - A305626 (n + 1)

end

end A056313.P663984143600841875

/-! ## A056313.P14714739857959901626

`(A056457(n+1)+A000920(n+1))/2`
-/

namespace A056313.P14714739857959901626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056457 (n + 1) + A000920 (n + 1) : ℚ) / 2

end

end A056313.P14714739857959901626

/-! ## A056313.P15636112157316587682

`A056492(2*n+1)-A305626(n+1)`
-/

namespace A056313.P15636112157316587682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (2 * n + 1) - A305626 (n + 1)

end

end A056313.P15636112157316587682

/-! ## A056313.P14602043157240911838

`A305626(n+1)+A000920(A008619(n))`
-/

namespace A056313.P14602043157240911838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305626 (n + 1) + A000920 (A008619 n).toNat

end

end A056313.P14602043157240911838

/-! ## A056313.P6859915486607270471

`A305626(n+1)+A000920(A065033(n+1))`
-/

namespace A056313.P6859915486607270471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305626 (n + 1) + A000920 (A065033 (n + 1)).toNat

end

end A056313.P6859915486607270471

/-! ## A056313.P2915084298059628340

`(A000920(n+1)+A000920(A008619(n)))/2`
-/

namespace A056313.P2915084298059628340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000920 (n + 1) + A000920 (A008619 n).toNat : ℚ) / 2

end

end A056313.P2915084298059628340

/-!
# A056314: Number of primitive (aperiodic) reversible strings with n beads using a maximum of three different colors.

The programs for A056314, there is no canonical definition to state claims against.
-/

/-! ## A056314.P8933105842117204380

`A284871(∑[n+3]+1)`
-/

namespace A056314.P8933105842117204380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A056314.P8933105842117204380

/-! ## A056314.P11724125485696345714

`lcm(3, A284871(A000124(n+3)-3))`
-/

namespace A056314.P11724125485696345714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A284871 (A000124 (n + 3) - 3).toNat)

end

end A056314.P11724125485696345714

/-! ## A056314.P5201256024135234515

`A284871(A000124(n+3)-3)%A000051(n)²`
-/

namespace A056314.P5201256024135234515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284871 (A000124 (n + 3) - 3).toNat) (A000051 n ^ 2)

end

end A056314.P5201256024135234515

/-! ## A056314.P14757278762891638755

`A007318(val(n²+1, 2))*A284871(A000124(n+3)-3)`
-/

namespace A056314.P14757278762891638755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A284871 (A000124 (n + 3) - 3).toNat

end

end A056314.P14757278762891638755

/-! ## A056314.P9657628682270825304

`A284871(A000124(n+3)-3)/A000108(n²%(n+1))`
-/

namespace A056314.P9657628682270825304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284871 (A000124 (n + 3) - 3).toNat : ℚ) / (A000108 (n ^ 2 % (n + 1)) : ℚ)

end

end A056314.P9657628682270825304

/-!
# A056315: Number of primitive (aperiodic) reversible strings with n beads using a maximum of four different colors.

The programs for A056315, there is no canonical definition to state claims against.
-/

/-! ## A056315.P12963973150973310935

`A284871(A027379(n+2))`
-/

namespace A056315.P12963973150973310935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A027379 (n + 2)).toNat

end

end A056315.P12963973150973310935

/-! ## A056315.P10871830534748482589

`A284871(A055998(n+2))`
-/

namespace A056315.P10871830534748482589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A055998 (n + 2)).toNat

end

end A056315.P10871830534748482589

/-! ## A056315.P7298737905883630491

`A284871(A046691(n+2)+1)`
-/

namespace A056315.P7298737905883630491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A046691 (n + 2) + 1).toNat

end

end A056315.P7298737905883630491

/-! ## A056315.P17749093146259625016

`A284871(A052905(n+1)+2)`
-/

namespace A056315.P17749093146259625016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A052905 (n + 1) + 2).toNat

end

end A056315.P17749093146259625016

/-! ## A056315.P2024408530744630230

`A284871(A000096(n+3)-2)`
-/

namespace A056315.P2024408530744630230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000096 (n + 3) - 2).toNat

end

end A056315.P2024408530744630230

/-!
# A056316: Number of primitive (aperiodic) reversible strings with n beads using a maximum of five different colors.

The programs for A056316, there is no canonical definition to state claims against.
-/

/-! ## A056316.P9675997528824538137

`A284871(Δ[A023545(n+1)])`
-/

namespace A056316.P9675997528824538137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (f1 (n + 1) - f1 n).toNat

end

end A056316.P9675997528824538137

/-! ## A056316.P13488054209849353140

`A284871(A000217(n+5)-4)`
-/

namespace A056316.P13488054209849353140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000217 (n + 5) - 4).toNat

end

end A056316.P13488054209849353140

/-! ## A056316.P4430947182497083016

`A284871(A000124(n+5)-5)`
-/

namespace A056316.P4430947182497083016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000124 (n + 5) - 5).toNat

end

end A056316.P4430947182497083016

/-! ## A056316.P4761922075346036441

`A284871(A000096(n+3)+n+2)`
-/

namespace A056316.P4761922075346036441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A056316.P4761922075346036441

/-! ## A056316.P871000893023593513

`A284871(A155212(n+2)-(n+2))`
-/

namespace A056316.P871000893023593513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A155212 (n + 2) - (n + 2 : ℤ)).toNat

end

end A056316.P871000893023593513

/-!
# A056317: Number of primitive (aperiodic) reversible strings with n beads using a maximum of six different colors.

The programs for A056317, there is no canonical definition to state claims against.
-/

/-! ## A056317.P3715113855453100878

`A284871(A052905(n+3))`
-/

namespace A056317.P3715113855453100878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A052905 (n + 3)).toNat

end

end A056317.P3715113855453100878

/-! ## A056317.P9515782283463521309

`A284871(A000096(n+5)-4)`
-/

namespace A056317.P9515782283463521309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000096 (n + 5) - 4).toNat

end

end A056317.P9515782283463521309

/-! ## A056317.P13451548829517113117

`A284871(A000217(n+6)-5)`
-/

namespace A056317.P13451548829517113117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000217 (n + 6) - 5).toNat

end

end A056317.P13451548829517113117

/-! ## A056317.P7808102714400353908

`A284871(A000124(n+6)-6)`
-/

namespace A056317.P7808102714400353908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000124 (n + 6) - 6).toNat

end

end A056317.P7808102714400353908

/-! ## A056317.P853157411261416121

`A284871(Δ[Δ[A006504(n+1)]])`
-/

namespace A056317.P853157411261416121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (f1 (n + 1) - f1 n).toNat

end

end A056317.P853157411261416121

/-!
# A056318: Number of primitive (aperiodic) reversible strings with n beads using exactly two different colors.

The programs for A056318, the canonical program `A056318.P12116274168460168988` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056318 has offset 1).

The definition of A056318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056318.P6498360488380928087

`a(n-1)-Δ[-A045625(n)]` with `a(0)=0, a(1)=1`
-/

namespace A056318.P6498360488380928087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A045625 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A056318.P6498360488380928087

namespace A056318

/-- `a(n-1)-Δ[-A045625(n)]` -/
def P6498360488380928087.Spec : Prop :=
  ∀ n, P6498360488380928087.a n = A056318 (n + 1)

end A056318

/-! ## A056318.P8299706713845111979

`A045625(n+1)-A000038(n)`
-/

namespace A056318.P8299706713845111979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045625 (n + 1) - A000038 n

end

end A056318.P8299706713845111979

namespace A056318

/-- `A045625(n+1)-A000038(n)` -/
def P8299706713845111979.Spec : Prop :=
  ∀ n, P8299706713845111979.a n = A056318 (n + 1)

end A056318

/-! ## A056318.P13849596293868793501

`(1-A063524(n+1))*A045625(n+1)`
-/

namespace A056318.P13849596293868793501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A063524 (n + 1)) * A045625 (n + 1)

end

end A056318.P13849596293868793501

namespace A056318

/-- `(1-A063524(n+1))*A045625(n+1)` -/
def P13849596293868793501.Spec : Prop :=
  ∀ n, P13849596293868793501.a n = A056318 (n + 1)

end A056318

/-! ## A056318.P12116274168460168988

`∑{d}[n+1, A008683(#)*A056309((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056318

/-- `∑{d}[n+1, A008683(#)*A056309((n+1)/#)]` -/
def P12116274168460168988.Spec : Prop :=
  ∀ n, P12116274168460168988.a n = A056318 (n + 1)

theorem P12116274168460168988.correct : P12116274168460168988.Spec := by
  intro n
  simp only [A056318, Nat.add_sub_cancel]

end A056318

/-! ## A056318.P15696440553057379502

`A045625(n+1)/A056331(n+1)*A056336(n+1)`
-/

namespace A056318.P15696440553057379502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045625 (n + 1) : ℚ) / (A056331 (n + 1) : ℚ) * (A056336 (n + 1) : ℚ)

end

end A056318.P15696440553057379502

namespace A056318

/-- `A045625(n+1)/A056331(n+1)*A056336(n+1)` -/
def P15696440553057379502.Spec : Prop :=
  ∀ n, P15696440553057379502.a n = (A056318 (n + 1) : ℚ)

end A056318

/-!
# A056319: Number of primitive (aperiodic) reversible strings with n beads using exactly three different colors.

The programs for A056319, the canonical program `A056319.P2109455741368262411` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056319 has offset 1).

The definition of A056319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056319.P8316871684859125948

`3*(A056482(n+1)+A056279(n+1))`
-/

namespace A056319.P8316871684859125948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A056482 (n + 1) + A056279 (n + 1))

end

end A056319.P8316871684859125948

namespace A056319

/-- `3*(A056482(n+1)+A056279(n+1))` -/
def P8316871684859125948.Spec : Prop :=
  ∀ n, P8316871684859125948.a n = A056319 (n + 1)

end A056319

/-! ## A056319.P2109455741368262411

`∑{d}[n+1, A008683(#)*A056310((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056319

/-- `∑{d}[n+1, A008683(#)*A056310((n+1)/#)]` -/
def P2109455741368262411.Spec : Prop :=
  ∀ n, P2109455741368262411.a n = A056319 (n + 1)

theorem P2109455741368262411.correct : P2109455741368262411.Spec := by
  intro n
  simp only [A056319, Nat.add_sub_cancel]

end A056319

/-! ## A056319.P6692599127882404928

`A056310(n+1)-A358479(A072513(n+1))`
-/

namespace A056319.P6692599127882404928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056310 (n + 1) - A358479 (A072513 (n + 1)).toNat

end

end A056319.P6692599127882404928

namespace A056319

/-- `A056310(n+1)-A358479(A072513(n+1))` -/
def P6692599127882404928.Spec : Prop :=
  ∀ n, P6692599127882404928.a n = A056319 (n + 1)

end A056319

/-!
# A056320: Number of primitive (aperiodic) reversible strings with n beads using exactly four different colors.

The programs for A056320, the canonical program `A056320.P10734550537264793216` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056320 has offset 1).

The definition of A056320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056320.P10734550537264793216

`∑{d}[n+1, A008683(#)*A056311((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056320

/-- `∑{d}[n+1, A008683(#)*A056311((n+1)/#)]` -/
def P10734550537264793216.Spec : Prop :=
  ∀ n, P10734550537264793216.a n = A056320 (n + 1)

theorem P10734550537264793216.correct : P10734550537264793216.Spec := by
  intro n
  simp only [A056320, Nat.add_sub_cancel]

end A056320

/-!
# A056321: Number of primitive (aperiodic) reversible strings with n beads using exactly five different colors.

The programs for A056321, there is no canonical definition to state claims against.
-/

/-! ## A056321.P18401030015545653977

`∑{d}[n+1, A008683(#)*A056312((n+1)/#)]`
-/

namespace A056321.P18401030015545653977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056312 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056321.P18401030015545653977

/-! ## A056321.P12140566206266770327

`∑{d}[n+1, A056312(#)*A069158((n+1)/#)]`
-/

namespace A056321.P12140566206266770327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056312 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056321.P12140566206266770327

/-! ## A056321.P14643319120034034187

`∑{d}[n+1, A056312(#)*A253206((n+1)/#)]`
-/

namespace A056321.P14643319120034034187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056312 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056321.P14643319120034034187

/-!
# A056322: Number of primitive (aperiodic) reversible strings with n beads using exactly six different colors.

The programs for A056322, there is no canonical definition to state claims against.
-/

/-! ## A056322.P16358059429879357547

`∑{d}[n+1, A008683(#)*A056313((n+1)/#)]`
-/

namespace A056322.P16358059429879357547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056313 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056322.P16358059429879357547

/-! ## A056322.P10987569585989631847

`∑{d}[n+1, A056313(#)*A069158((n+1)/#)]`
-/

namespace A056322.P10987569585989631847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056313 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056322.P10987569585989631847

/-! ## A056322.P5065311169595433239

`∑{d}[n+1, A056313(#)*A352953((n+1)/#)]`
-/

namespace A056322.P5065311169595433239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056313 d * A352953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056322.P5065311169595433239

/-!
# A056323: Number of reversible string structures with n beads using a maximum of four different colors.

The programs for A056323, the canonical program `A056323.P14802106134183311547` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056323 has offset 0).

The definition of A056323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056323.P14802106134183311547

`(A124303(n)+A305750(n))/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056323

/-- `(A124303(n)+A305750(n))/2` -/
def P14802106134183311547.Spec : Prop :=
  ∀ n, P14802106134183311547.a n = (A056323 n : ℚ)

end A056323

/-! ## A056323.P13003490340616779981

`∑{d}[A028310(n), A056333(#)]`
-/

namespace A056323.P13003490340616779981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056333 d

end

end A056323.P13003490340616779981

namespace A056323

/-- `∑{d}[A028310(n), A056333(#)]` -/
def P13003490340616779981.Spec : Prop :=
  ∀ n, P13003490340616779981.a n = A056323 n

end A056323

/-! ## A056323.P11695004183622290374

`∑{d}[A065033(2*n), A056333(#)]`
-/

namespace A056323.P11695004183622290374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056333 d

end

end A056323.P11695004183622290374

namespace A056323

/-- `∑{d}[A065033(2*n), A056333(#)]` -/
def P11695004183622290374.Spec : Prop :=
  ∀ n, P11695004183622290374.a n = A056323 n

end A056323

/-! ## A056323.P13183535445609507878

`∑{d}[gcd(n, A008458(n)), A056333(#)]`
-/

namespace A056323.P13183535445609507878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008458 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056333 d

end

end A056323.P13183535445609507878

namespace A056323

/-- `∑{d}[gcd(n, A008458(n)), A056333(#)]` -/
def P13183535445609507878.Spec : Prop :=
  ∀ n, P13183535445609507878.a n = A056323 n

end A056323

/-! ## A056323.P10317648563672054019

`A124303(n)-A320934(A028310(n))`
-/

namespace A056323.P10317648563672054019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 n - A320934 (A028310 n).toNat

end

end A056323.P10317648563672054019

namespace A056323

/-- `A124303(n)-A320934(A028310(n))` -/
def P10317648563672054019.Spec : Prop :=
  ∀ n, P10317648563672054019.a n = A056323 n

end A056323

/-!
# A056324: Number of reversible string structures with n beads using a maximum of five different colors.

The programs for A056324, the canonical program `A056324.P15857874115330470588` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056324 has offset 0).

The definition of A056324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056324.P15857874115330470588

`(A056272(n)+A305751(n))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056324

/-- `(A056272(n)+A305751(n))/2` -/
def P15857874115330470588.Spec : Prop :=
  ∀ n, P15857874115330470588.a n = (A056324 n : ℚ)

end A056324

/-! ## A056324.P13694625851913478962

`∑{d}[A028310(n), A056334(#)]`
-/

namespace A056324.P13694625851913478962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056334 d

end

end A056324.P13694625851913478962

namespace A056324

/-- `∑{d}[A028310(n), A056334(#)]` -/
def P13694625851913478962.Spec : Prop :=
  ∀ n, P13694625851913478962.a n = A056324 n

end A056324

/-! ## A056324.P12601560315903939799

`A320935(A028310(n))+A305751(n)`
-/

namespace A056324.P12601560315903939799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (A028310 n).toNat + A305751 n

end

end A056324.P12601560315903939799

namespace A056324

/-- `A320935(A028310(n))+A305751(n)` -/
def P12601560315903939799.Spec : Prop :=
  ∀ n, P12601560315903939799.a n = A056324 n

end A056324

/-! ## A056324.P16843699198233565172

`A056272(n)-A320935(A028310(n))`
-/

namespace A056324.P16843699198233565172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n - A320935 (A028310 n).toNat

end

end A056324.P16843699198233565172

namespace A056324

/-- `A056272(n)-A320935(A028310(n))` -/
def P16843699198233565172.Spec : Prop :=
  ∀ n, P16843699198233565172.a n = A056324 n

end A056324

/-! ## A056324.P3156491900334389397

`A320935(A233583(n+1))+A305751(n)`
-/

namespace A056324.P3156491900334389397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (A233583 (n + 1)).toNat + A305751 n

end

end A056324.P3156491900334389397

namespace A056324

/-- `A320935(A233583(n+1))+A305751(n)` -/
def P3156491900334389397.Spec : Prop :=
  ∀ n, P3156491900334389397.a n = A056324 n

end A056324

/-! ## A056324.P8912301985802407495

`A056272(n)-A320935(A233583(n+1))`
-/

namespace A056324.P8912301985802407495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n - A320935 (A233583 (n + 1)).toNat

end

end A056324.P8912301985802407495

namespace A056324

/-- `A056272(n)-A320935(A233583(n+1))` -/
def P8912301985802407495.Spec : Prop :=
  ∀ n, P8912301985802407495.a n = A056324 n

end A056324

/-!
# A056325: Number of reversible string structures with n beads using a maximum of six different colors.

The programs for A056325, there is no canonical definition to state claims against.
-/

/-! ## A056325.P5731177809760217490

`(A056273(n)+A305752(n))/2`
-/

namespace A056325.P5731177809760217490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056273 n + A305752 n : ℚ) / 2

end

end A056325.P5731177809760217490

/-! ## A056325.P4255036975051689340

`∑{d}[A028310(n), A056335(#)]`
-/

namespace A056325.P4255036975051689340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056335 d

end

end A056325.P4255036975051689340

/-! ## A056325.P4320847025910943

`A056330(abs(1-n)+1)+A056324(n)`
-/

namespace A056325.P4320847025910943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056330 (|1 - (n : ℤ)| + 1).toNat + A056324 n

end

end A056325.P4320847025910943

/-! ## A056325.P14501896209152214157

`A320936(A028310(n))+A305752(n)`
-/

namespace A056325.P14501896209152214157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (A028310 n).toNat + A305752 n

end

end A056325.P14501896209152214157

/-! ## A056325.P16960465196292897495

`A056273(n)-A320936(A028310(n))`
-/

namespace A056325.P16960465196292897495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n - A320936 (A028310 n).toNat

end

end A056325.P16960465196292897495

/-!
# A056326: Number of reversible string structures with n beads using exactly two different colors.

The programs for A056326, the canonical program `A056326.P13285734018320765165` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056326 has offset 1).

The definition of A056326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056326.P13285734018320765165

`A005418(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056326

/-- `A005418(n+1)-1` -/
def P13285734018320765165.Spec : Prop :=
  ∀ n, P13285734018320765165.a n = A056326 (n + 1)

theorem P13285734018320765165.correct : P13285734018320765165.Spec := by
  intro n
  simp only [A056326, Nat.add_sub_cancel]

end A056326

/-! ## A056326.P6115098931913081899

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A056326.P6115098931913081899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A056326.P6115098931913081899

namespace A056326

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P6115098931913081899.Spec : Prop :=
  ∀ n, P6115098931913081899.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P7961799363507514808

`∑{d}[n+1, A056336(#)]`
-/

namespace A056326.P7961799363507514808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056336 d

end

end A056326.P7961799363507514808

namespace A056326

/-- `∑{d}[n+1, A056336(#)]` -/
def P7961799363507514808.Spec : Prop :=
  ∀ n, P7961799363507514808.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P2723602677614944160

`A158780(n+1)+floor(2^(n-1))-1`
-/

namespace A056326.P2723602677614944160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - 1

end

end A056326.P2723602677614944160

namespace A056326

/-- `A158780(n+1)+floor(2^(n-1))-1` -/
def P2723602677614944160.Spec : Prop :=
  ∀ n, P2723602677614944160.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P649611238485943680

`A007179(n)+A016116(n)-1`
-/

namespace A056326.P649611238485943680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n + (A016116 n - 1)

end

end A056326.P649611238485943680

namespace A056326

/-- `A007179(n)+A016116(n)-1` -/
def P649611238485943680.Spec : Prop :=
  ∀ n, P649611238485943680.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P5899552118040713919

`∪[A007582(n), A161168(n)]-1`
-/

namespace A056326.P5899552118040713919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056326.P5899552118040713919

namespace A056326

/-- `∪[A007582(n), A161168(n)]-1` -/
def P5899552118040713919.Spec : Prop :=
  ∀ n, P5899552118040713919.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P896944148777185285

`∑[∑[A113979(n)]-A113979(n)]`
-/

namespace A056326.P896944148777185285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A113979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056326.P896944148777185285

namespace A056326

/-- `∑[∑[A113979(n)]-A113979(n)]` -/
def P896944148777185285.Spec : Prop :=
  ∀ n, P896944148777185285.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P11641168583338720864

`abs(A117575(n))+A131577(n)-1`
-/

namespace A056326.P11641168583338720864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 n| + (A131577 n - 1)

end

end A056326.P11641168583338720864

namespace A056326

/-- `abs(A117575(n))+A131577(n)-1` -/
def P11641168583338720864.Spec : Prop :=
  ∀ n, P11641168583338720864.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P10031174399920622734

`A000011(n+1)+A059078(n+1)-1`
-/

namespace A056326.P10031174399920622734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059078 (n + 1) - 1)

end

end A056326.P10031174399920622734

namespace A056326

/-- `A000011(n+1)+A059078(n+1)-1` -/
def P10031174399920622734.Spec : Prop :=
  ∀ n, P10031174399920622734.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P11592053213380232460

`A158780(2*n)+A158780(n+1)-1`
-/

namespace A056326.P11592053213380232460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + (A158780 (n + 1) - 1)

end

end A056326.P11592053213380232460

namespace A056326

/-- `A158780(2*n)+A158780(n+1)-1` -/
def P11592053213380232460.Spec : Prop :=
  ∀ n, P11592053213380232460.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P8518843292356622762

`A018240(n+3)+A090597(n+3)-1`
-/

namespace A056326.P8518843292356622762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018240 (n + 3) + (A090597 (n + 3) - 1)

end

end A056326.P8518843292356622762

namespace A056326

/-- `A018240(n+3)+A090597(n+3)-1` -/
def P8518843292356622762.Spec : Prop :=
  ∀ n, P8518843292356622762.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P3418182438946832290

`A280193(A109613(n))+A005418(n+1)`
-/

namespace A056326.P3418182438946832290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A109613 n).toNat + A005418 (n + 1)

end

end A056326.P3418182438946832290

namespace A056326

/-- `A280193(A109613(n))+A005418(n+1)` -/
def P3418182438946832290.Spec : Prop :=
  ∀ n, P3418182438946832290.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P12069903455980298022

`A131577(A065033(n))+A131577(n)-1`
-/

namespace A056326.P12069903455980298022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A065033 n).toNat + (A131577 n - 1)

end

end A056326.P12069903455980298022

namespace A056326

/-- `A131577(A065033(n))+A131577(n)-1` -/
def P12069903455980298022.Spec : Prop :=
  ∀ n, P12069903455980298022.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P5875617477010626147

`A228693(A053438(n))+A228693(n)-2`
-/

namespace A056326.P5875617477010626147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (A053438 n).toNat + (A228693 n - 2)

end

end A056326.P5875617477010626147

namespace A056326

/-- `A228693(A053438(n))+A228693(n)-2` -/
def P5875617477010626147.Spec : Prop :=
  ∀ n, P5875617477010626147.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P564522897315406080

`A007179(n)+A027383(n)-A052955(n)`
-/

namespace A056326.P564522897315406080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n + (A027383 n - A052955 n)

end

end A056326.P564522897315406080

namespace A056326

/-- `A007179(n)+A027383(n)-A052955(n)` -/
def P564522897315406080.Spec : Prop :=
  ∀ n, P564522897315406080.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P12901000945132609111

`A029884(A007814(2*n+5))+A005418(n+1)`
-/

namespace A056326.P12901000945132609111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 (A007814 (2 * n + 5)).toNat + A005418 (n + 1)

end

end A056326.P12901000945132609111

namespace A056326

/-- `A029884(A007814(2*n+5))+A005418(n+1)` -/
def P12901000945132609111.Spec : Prop :=
  ∀ n, P12901000945132609111.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P13486299353408621809

`A052955(n+1)+A007179(n)-A029744(n+2)`
-/

namespace A056326.P13486299353408621809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 1) + (A007179 n - A029744 (n + 2))

end

end A056326.P13486299353408621809

namespace A056326

/-- `A052955(n+1)+A007179(n)-A029744(n+2)` -/
def P13486299353408621809.Spec : Prop :=
  ∀ n, P13486299353408621809.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P2772142283720674807

`Δ[A290075(n+3)]-1`
-/

namespace A056326.P2772142283720674807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A056326.P2772142283720674807

namespace A056326

/-- `Δ[A290075(n+3)]-1` -/
def P2772142283720674807.Spec : Prop :=
  ∀ n, P2772142283720674807.a n = A056326 (n + 1)

end A056326

/-! ## A056326.P5001108670349498341

`Δ[ceil(2^(n-1))]+Δ[A029744(n+1)]-1`
-/

namespace A056326.P5001108670349498341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) - 1

end

end A056326.P5001108670349498341

namespace A056326

/-- `Δ[ceil(2^(n-1))]+Δ[A029744(n+1)]-1` -/
def P5001108670349498341.Spec : Prop :=
  ∀ n, P5001108670349498341.a n = A056326 (n + 1)

end A056326

/-!
# A056327: Number of reversible string structures with n beads using exactly three different colors.

The programs for A056327, the canonical program `A056327.P11311420995062191100` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056327 has offset 1).

The definition of A056327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056327.P8891016236170108950

`∑{d}[n+1, A056337(#)]`
-/

namespace A056327.P8891016236170108950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056337 d

end

end A056327.P8891016236170108950

namespace A056327

/-- `∑{d}[n+1, A056337(#)]` -/
def P8891016236170108950.Spec : Prop :=
  ∀ n, P8891016236170108950.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P11311420995062191100

`A001998(n)-A005418(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056327

/-- `A001998(n)-A005418(n+1)` -/
def P11311420995062191100.Spec : Prop :=
  ∀ n, P11311420995062191100.a n = A056327 (n + 1)

theorem P11311420995062191100.correct : P11311420995062191100.Spec := by
  intro n
  simp only [A056327, Nat.add_sub_cancel]

end A056327

/-! ## A056327.P8177596328471330209

`A320526(n+1)+A304973(n+1)`
-/

namespace A056327.P8177596328471330209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320526 (n + 1) + A304973 (n + 1)

end

end A056327.P8177596328471330209

namespace A056327

/-- `A320526(n+1)+A304973(n+1)` -/
def P8177596328471330209.Spec : Prop :=
  ∀ n, P8177596328471330209.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P3451137237348999686

`A001998(n)-(A056326(n+1)+1)`
-/

namespace A056327.P3451137237348999686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n - (A056326 (n + 1) + 1)

end

end A056327.P3451137237348999686

namespace A056327

/-- `A001998(n)-(A056326(n+1)+1)` -/
def P3451137237348999686.Spec : Prop :=
  ∀ n, P3451137237348999686.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P17900261110368868359

`A000392(n+1)-A320526(n+1)`
-/

namespace A056327.P17900261110368868359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A320526 (n + 1)

end

end A056327.P17900261110368868359

namespace A056327

/-- `A000392(n+1)-A320526(n+1)` -/
def P17900261110368868359.Spec : Prop :=
  ∀ n, P17900261110368868359.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P17991297868170720024

`∑{d}[n+1, A056332(#)]-A005418(n+1)`
-/

namespace A056327.P17991297868170720024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056332 d - A005418 (n + 1)

end

end A056327.P17991297868170720024

namespace A056327

/-- `∑{d}[n+1, A056332(#)]-A005418(n+1)` -/
def P17991297868170720024.Spec : Prop :=
  ∀ n, P17991297868170720024.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P4712717756029830279

`A122983(n)+A232801(n)-A005418(n+1)`
-/

namespace A056327.P4712717756029830279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n + (A232801 n - A005418 (n + 1))

end

end A056327.P4712717756029830279

namespace A056327

/-- `A122983(n)+A232801(n)-A005418(n+1)` -/
def P4712717756029830279.Spec : Prop :=
  ∀ n, P4712717756029830279.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P9680341126111279753

`A001998(n)-(A090597(n+3)+A018240(n+3))`
-/

namespace A056327.P9680341126111279753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n - (A090597 (n + 3) + A018240 (n + 3))

end

end A056327.P9680341126111279753

namespace A056327

/-- `A001998(n)-(A090597(n+3)+A018240(n+3))` -/
def P9680341126111279753.Spec : Prop :=
  ∀ n, P9680341126111279753.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P1387174606830476928

`A056323(n+1)-(A056328(n+1)+A005418(n+1))`
-/

namespace A056327.P1387174606830476928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - (A056328 (n + 1) + A005418 (n + 1))

end

end A056327.P1387174606830476928

namespace A056327

/-- `A056323(n+1)-(A056328(n+1)+A005418(n+1))` -/
def P1387174606830476928.Spec : Prop :=
  ∀ n, P1387174606830476928.a n = A056327 (n + 1)

end A056327

/-! ## A056327.P856032354737956176

`A001998(n)-A048645(A061925(n))`
-/

namespace A056327.P856032354737956176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n - A048645 (A061925 n).toNat

end

end A056327.P856032354737956176

namespace A056327

/-- `A001998(n)-A048645(A061925(n))` -/
def P856032354737956176.Spec : Prop :=
  ∀ n, P856032354737956176.a n = A056327 (n + 1)

end A056327

/-!
# A056328: Number of reversible string structures with n beads using exactly four different colors.

The programs for A056328, the canonical program `A056328.P13611939948640542517` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056328 has offset 1).

The definition of A056328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056328.P2068006021456715509

`∑{d}[n+1, A056338(#)]`
-/

namespace A056328.P2068006021456715509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056338 d

end

end A056328.P2068006021456715509

namespace A056328

/-- `∑{d}[n+1, A056338(#)]` -/
def P2068006021456715509.Spec : Prop :=
  ∀ n, P2068006021456715509.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P13611939948640542517

`A056323(n+1)-A001998(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056328

/-- `A056323(n+1)-A001998(n)` -/
def P13611939948640542517.Spec : Prop :=
  ∀ n, P13611939948640542517.a n = A056328 (n + 1)

theorem P13611939948640542517.correct : P13611939948640542517.Spec := by
  intro n
  simp only [A056328, Nat.add_sub_cancel]

end A056328

/-! ## A056328.P15112550729211806611

`A327611(n+1)+A056473(n+1)`
-/

namespace A056328.P15112550729211806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327611 (n + 1) + A056473 (n + 1)

end

end A056328.P15112550729211806611

namespace A056328

/-- `A327611(n+1)+A056473(n+1)` -/
def P15112550729211806611.Spec : Prop :=
  ∀ n, P15112550729211806611.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P2062912126449807984

`A320527(n+1)+A304974(n+1)`
-/

namespace A056328.P2062912126449807984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320527 (n + 1) + A304974 (n + 1)

end

end A056328.P2062912126449807984

namespace A056328

/-- `A320527(n+1)+A304974(n+1)` -/
def P2062912126449807984.Spec : Prop :=
  ∀ n, P2062912126449807984.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P5981793443650379045

`A056473(2*n+1)-A320527(n+1)`
-/

namespace A056328.P5981793443650379045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * n + 1) - A320527 (n + 1)

end

end A056328.P5981793443650379045

namespace A056328

/-- `A056473(2*n+1)-A320527(n+1)` -/
def P5981793443650379045.Spec : Prop :=
  ∀ n, P5981793443650379045.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P13022458833494328220

`A056510(2*n+1)-A320527(n+1)`
-/

namespace A056328.P13022458833494328220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 1) - A320527 (n + 1)

end

end A056328.P13022458833494328220

namespace A056328

/-- `A056510(2*n+1)-A320527(n+1)` -/
def P13022458833494328220.Spec : Prop :=
  ∀ n, P13022458833494328220.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P18170623029844646975

`A056323(n+1)-(A056327(n+1)+A005418(n+1))`
-/

namespace A056328.P18170623029844646975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - (A056327 (n + 1) + A005418 (n + 1))

end

end A056328.P18170623029844646975

namespace A056328

/-- `A056323(n+1)-(A056327(n+1)+A005418(n+1))` -/
def P18170623029844646975.Spec : Prop :=
  ∀ n, P18170623029844646975.a n = A056328 (n + 1)

end A056328

/-! ## A056328.P155288898819951399

`A056324(n+1)-(A056329(n+1)+A001998(n))`
-/

namespace A056328.P155288898819951399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056324 (n + 1) - (A056329 (n + 1) + A001998 n)

end

end A056328.P155288898819951399

namespace A056328

/-- `A056324(n+1)-(A056329(n+1)+A001998(n))` -/
def P155288898819951399.Spec : Prop :=
  ∀ n, P155288898819951399.a n = A056328 (n + 1)

end A056328

/-!
# A056329: Number of reversible string structures with n beads using exactly five different colors.

The programs for A056329, the canonical program `A056329.P340607529314105081` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056329 has offset 1).

The definition of A056329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056329.P8670057016338892248

`∑{d}[n+1, A056339(#)]`
-/

namespace A056329.P8670057016338892248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056339 d

end

end A056329.P8670057016338892248

namespace A056329

/-- `∑{d}[n+1, A056339(#)]` -/
def P8670057016338892248.Spec : Prop :=
  ∀ n, P8670057016338892248.a n = A056329 (n + 1)

end A056329

/-! ## A056329.P13483802093334440477

`A320528(n+1)+A304975(n+1)`
-/

namespace A056329.P13483802093334440477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320528 (n + 1) + A304975 (n + 1)

end

end A056329.P13483802093334440477

namespace A056329

/-- `A320528(n+1)+A304975(n+1)` -/
def P13483802093334440477.Spec : Prop :=
  ∀ n, P13483802093334440477.a n = A056329 (n + 1)

end A056329

/-! ## A056329.P340607529314105081

`A056324(n+1)-A056323(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056329

/-- `A056324(n+1)-A056323(n+1)` -/
def P340607529314105081.Spec : Prop :=
  ∀ n, P340607529314105081.a n = A056329 (n + 1)

theorem P340607529314105081.correct : P340607529314105081.Spec := by
  intro n
  simp only [A056329, Nat.add_sub_cancel]

end A056329

/-! ## A056329.P15091840309855757137

`A056474(2*(n+1))-A320528(n+1)`
-/

namespace A056329.P15091840309855757137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056474 (2 * (n + 1)) - A320528 (n + 1)

end

end A056329.P15091840309855757137

namespace A056329

/-- `A056474(2*(n+1))-A320528(n+1)` -/
def P15091840309855757137.Spec : Prop :=
  ∀ n, P15091840309855757137.a n = A056329 (n + 1)

end A056329

/-! ## A056329.P9749577636865410081

`A056324(n+1)-(A056328(n+1)+A001998(n))`
-/

namespace A056329.P9749577636865410081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056324 (n + 1) - (A056328 (n + 1) + A001998 n)

end

end A056329.P9749577636865410081

namespace A056329

/-- `A056324(n+1)-(A056328(n+1)+A001998(n))` -/
def P9749577636865410081.Spec : Prop :=
  ∀ n, P9749577636865410081.a n = A056329 (n + 1)

end A056329

/-!
# A056330: Number of reversible string structures with n beads using exactly six different colors.

The programs for A056330, there is no canonical definition to state claims against.
-/

/-! ## A056330.P6752534296813755094

`∑{d}[n+1, A056340(#)]`
-/

namespace A056330.P6752534296813755094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056340 d

end

end A056330.P6752534296813755094

/-! ## A056330.P8297600823180219684

`A320529(n+1)+A304976(n+1)`
-/

namespace A056330.P8297600823180219684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320529 (n + 1) + A304976 (n + 1)

end

end A056330.P8297600823180219684

/-! ## A056330.P14973779650105276918

`A056325(n+1)-A056324(n+1)`
-/

namespace A056330.P14973779650105276918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056325 (n + 1) - A056324 (n + 1)

end

end A056330.P14973779650105276918

/-! ## A056330.P12192407186068564345

`A056475(2*(n+1))-A320529(n+1)`
-/

namespace A056330.P12192407186068564345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056475 (2 * (n + 1)) - A320529 (n + 1)

end

end A056330.P12192407186068564345

/-! ## A056330.P933144308754801338

`A056512(2*n+1)-A320529(n+1)`
-/

namespace A056330.P933144308754801338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (2 * n + 1) - A320529 (n + 1)

end

end A056330.P933144308754801338

/-! ## A056330.P17433330206035887088

`A056325(n+1)-(A056329(n+1)+A056323(n+1))`
-/

namespace A056330.P17433330206035887088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056325 (n + 1) - (A056329 (n + 1) + A056323 (n + 1))

end

end A056330.P17433330206035887088

/-!
# A056331: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of two different colors.

The programs for A056331, the canonical program `A056331.P8690430006443515307` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056331 has offset 1).

The definition of A056331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056331.P17280266507514166411

`or(char[n²²], A056336(n+1))`
-/

namespace A056331.P17280266507514166411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056336 (n + 1))

end

end A056331.P17280266507514166411

namespace A056331

/-- `or(char[n²²], A056336(n+1))` -/
def P17280266507514166411.Spec : Prop :=
  ∀ n, P17280266507514166411.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P17238797177814388671

`A056336(A028310(n)+1)`
-/

namespace A056331.P17238797177814388671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (A028310 n + 1).toNat

end

end A056331.P17238797177814388671

namespace A056331

/-- `A056336(A028310(n)+1)` -/
def P17238797177814388671.Spec : Prop :=
  ∀ n, P17238797177814388671.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P15996123528451784511

`A056336(A254667(n+1))`
-/

namespace A056331.P15996123528451784511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (A254667 (n + 1)).toNat

end

end A056331.P15996123528451784511

namespace A056331

/-- `A056336(A254667(n+1))` -/
def P15996123528451784511.Spec : Prop :=
  ∀ n, P15996123528451784511.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P4421925626043749622

`A056336(A233583(n+2))`
-/

namespace A056331.P4421925626043749622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (A233583 (n + 2)).toNat

end

end A056331.P4421925626043749622

namespace A056331

/-- `A056336(A233583(n+2))` -/
def P4421925626043749622.Spec : Prop :=
  ∀ n, P4421925626043749622.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P17599980392827113746

`A056336(A123108(2*n)+1)`
-/

namespace A056331.P17599980392827113746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (A123108 (2 * n) + 1).toNat

end

end A056331.P17599980392827113746

namespace A056331

/-- `A056336(A123108(2*n)+1)` -/
def P17599980392827113746.Spec : Prop :=
  ∀ n, P17599980392827113746.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P17259879083281533461

`A056336(n+1)+A000007(n)`
-/

namespace A056331.P17259879083281533461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + A000007 n

end

end A056331.P17259879083281533461

namespace A056331

/-- `A056336(n+1)+A000007(n)` -/
def P17259879083281533461.Spec : Prop :=
  ∀ n, P17259879083281533461.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P7867673170965507427

`A056336(gcd(n, A008458(n))+1)`
-/

namespace A056331.P7867673170965507427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (Int.gcd (n : ℤ) (A008458 n) + 1)

end

end A056331.P7867673170965507427

namespace A056331

/-- `A056336(gcd(n, A008458(n))+1)` -/
def P7867673170965507427.Spec : Prop :=
  ∀ n, P7867673170965507427.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P10678277017813852812

`A056336(A063524(n+1)+n+1)`
-/

namespace A056331.P10678277017813852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (A063524 (n + 1) + (n + 1 : ℤ)).toNat

end

end A056331.P10678277017813852812

namespace A056331

/-- `A056336(A063524(n+1)+n+1)` -/
def P10678277017813852812.Spec : Prop :=
  ∀ n, P10678277017813852812.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P11986005725429759323

`A056336(n+1)+A000122(n)%2`
-/

namespace A056331.P11986005725429759323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + Int.tmod (A000122 n) 2

end

end A056331.P11986005725429759323

namespace A056331

/-- `A056336(n+1)+A000122(n)%2` -/
def P11986005725429759323.Spec : Prop :=
  ∀ n, P11986005725429759323.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P2237995021639716560

`A056336(n+1)+A010051(2*(n+1))`
-/

namespace A056331.P2237995021639716560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + A010051 (2 * (n + 1))

end

end A056331.P2237995021639716560

namespace A056331

/-- `A056336(n+1)+A010051(2*(n+1))` -/
def P2237995021639716560.Spec : Prop :=
  ∀ n, P2237995021639716560.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P8690430006443515307

`∑{d}[n+1, A005418(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056331

/-- `∑{d}[n+1, A005418(#)*A008683((n+1)/#)]` -/
def P8690430006443515307.Spec : Prop :=
  ∀ n, P8690430006443515307.a n = A056331 (n + 1)

theorem P8690430006443515307.correct : P8690430006443515307.Spec := by
  intro n
  simp only [A056331, Nat.add_sub_cancel]

end A056331

/-! ## A056331.P11213851441531539892

`A056336(n+1)+A000079(n)%2`
-/

namespace A056331.P11213851441531539892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + Int.tmod (A000079 n) 2

end

end A056331.P11213851441531539892

namespace A056331

/-- `A056336(n+1)+A000079(n)%2` -/
def P11213851441531539892.Spec : Prop :=
  ∀ n, P11213851441531539892.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P4183643526829141539

`A056336(n+1)+A003418(n+1)%2`
-/

namespace A056331.P4183643526829141539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + Int.tmod (A003418 (n + 1)) 2

end

end A056331.P4183643526829141539

namespace A056331

/-- `A056336(n+1)+A003418(n+1)%2` -/
def P4183643526829141539.Spec : Prop :=
  ∀ n, P4183643526829141539.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P1265971899947233976

`A056332(n+1)-A056337(n+1)`
-/

namespace A056331.P1265971899947233976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - A056337 (n + 1)

end

end A056331.P1265971899947233976

namespace A056331

/-- `A056332(n+1)-A056337(n+1)` -/
def P1265971899947233976.Spec : Prop :=
  ∀ n, P1265971899947233976.a n = A056331 (n + 1)

end A056331

/-! ## A056331.P15061306465898009718

`A056333(n+1)-(A056338(n+1)+A056337(n+1))`
-/

namespace A056331.P15061306465898009718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) - (A056338 (n + 1) + A056337 (n + 1))

end

end A056331.P15061306465898009718

namespace A056331

/-- `A056333(n+1)-(A056338(n+1)+A056337(n+1))` -/
def P15061306465898009718.Spec : Prop :=
  ∀ n, P15061306465898009718.a n = A056331 (n + 1)

end A056331

/-!
# A056332: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of three different colors.

The programs for A056332, the canonical program `A056332.P657932963027548123` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056332 has offset 1).

The definition of A056332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056332.P13329498303769522416

`A056337(n+1)+A056331(n+1)`
-/

namespace A056332.P13329498303769522416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056337 (n + 1) + A056331 (n + 1)

end

end A056332.P13329498303769522416

namespace A056332

/-- `A056337(n+1)+A056331(n+1)` -/
def P13329498303769522416.Spec : Prop :=
  ∀ n, P13329498303769522416.a n = A056332 (n + 1)

end A056332

/-! ## A056332.P657932963027548123

`∑{d}[n+1, A001998(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056332

/-- `∑{d}[n+1, A001998(#-1)*A008683((n+1)/#)]` -/
def P657932963027548123.Spec : Prop :=
  ∀ n, P657932963027548123.a n = A056332 (n + 1)

theorem P657932963027548123.correct : P657932963027548123.Spec := by
  intro n
  simp only [A056332, Nat.add_sub_cancel]

end A056332

/-! ## A056332.P8019187272955635655

`A056336(n+1)+A056337(n+1)+A000007(n)`
-/

namespace A056332.P8019187272955635655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) + (A056337 (n + 1) + A000007 n)

end

end A056332.P8019187272955635655

namespace A056332

/-- `A056336(n+1)+A056337(n+1)+A000007(n)` -/
def P8019187272955635655.Spec : Prop :=
  ∀ n, P8019187272955635655.a n = A056332 (n + 1)

end A056332

/-! ## A056332.P15697338225144025349

`A056333(n+1)-A056338(n+1)`
-/

namespace A056332.P15697338225144025349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) - A056338 (n + 1)

end

end A056332.P15697338225144025349

namespace A056332

/-- `A056333(n+1)-A056338(n+1)` -/
def P15697338225144025349.Spec : Prop :=
  ∀ n, P15697338225144025349.a n = A056332 (n + 1)

end A056332

/-! ## A056332.P2838631152975823197

`A276544(A133263(n))+A056337(n+1)`
-/

namespace A056332.P2838631152975823197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A133263 n).toNat + A056337 (n + 1)

end

end A056332.P2838631152975823197

namespace A056332

/-- `A276544(A133263(n))+A056337(n+1)` -/
def P2838631152975823197.Spec : Prop :=
  ∀ n, P2838631152975823197.a n = A056332 (n + 1)

end A056332

/-!
# A056333: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of four different colors.

The programs for A056333, the canonical program `A056333.P3348555914057923111` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056333 has offset 1).

The definition of A056333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056333.P3178822228920496761

`A056338(n+1)+A056332(n+1)`
-/

namespace A056333.P3178822228920496761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056338 (n + 1) + A056332 (n + 1)

end

end A056333.P3178822228920496761

namespace A056333

/-- `A056338(n+1)+A056332(n+1)` -/
def P3178822228920496761.Spec : Prop :=
  ∀ n, P3178822228920496761.a n = A056333 (n + 1)

end A056333

/-! ## A056333.P3431291800829778398

`A056331(n+1)+A056338(n+1)+A056337(n+1)`
-/

namespace A056333.P3431291800829778398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) + (A056338 (n + 1) + A056337 (n + 1))

end

end A056333.P3431291800829778398

namespace A056333

/-- `A056331(n+1)+A056338(n+1)+A056337(n+1)` -/
def P3431291800829778398.Spec : Prop :=
  ∀ n, P3431291800829778398.a n = A056333 (n + 1)

end A056333

/-! ## A056333.P3348555914057923111

`A056332(n+1)+∑{d}[n+1, A008683(#)*A056328((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056333

/-- `A056332(n+1)+∑{d}[n+1, A008683(#)*A056328((n+1)/#)]` -/
def P3348555914057923111.Spec : Prop :=
  ∀ n, P3348555914057923111.a n = A056333 (n + 1)

theorem P3348555914057923111.correct : P3348555914057923111.Spec := by
  intro n
  simp only [A056333, Nat.add_sub_cancel]

end A056333

/-! ## A056333.P1977986131641519813

`A056334(n+1)-A056339(n+1)`
-/

namespace A056333.P1977986131641519813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) - A056339 (n + 1)

end

end A056333.P1977986131641519813

namespace A056333

/-- `A056334(n+1)-A056339(n+1)` -/
def P1977986131641519813.Spec : Prop :=
  ∀ n, P1977986131641519813.a n = A056333 (n + 1)

end A056333

/-! ## A056333.P302993906596650922

`A056335(n+1)-(A056340(n+1)+A056339(n+1))`
-/

namespace A056333.P302993906596650922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - (A056340 (n + 1) + A056339 (n + 1))

end

end A056333.P302993906596650922

namespace A056333

/-- `A056335(n+1)-(A056340(n+1)+A056339(n+1))` -/
def P302993906596650922.Spec : Prop :=
  ∀ n, P302993906596650922.a n = A056333 (n + 1)

end A056333

/-! ## A056333.P12090755163288093281

`A276544(A238531(n)+A065475(n+1))+A056332(n+1)`
-/

namespace A056333.P12090755163288093281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A238531 n + A065475 (n + 1)).toNat + A056332 (n + 1)

end

end A056333.P12090755163288093281

namespace A056333

/-- `A276544(A238531(n)+A065475(n+1))+A056332(n+1)` -/
def P12090755163288093281.Spec : Prop :=
  ∀ n, P12090755163288093281.a n = A056333 (n + 1)

end A056333

/-!
# A056334: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of five different colors.

The programs for A056334, the canonical program `A056334.P4039898044514616302` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056334 has offset 1).

The definition of A056334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056334.P14674643074684392736

`A056339(n+1)+A056333(n+1)`
-/

namespace A056334.P14674643074684392736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056339 (n + 1) + A056333 (n + 1)

end

end A056334.P14674643074684392736

namespace A056334

/-- `A056339(n+1)+A056333(n+1)` -/
def P14674643074684392736.Spec : Prop :=
  ∀ n, P14674643074684392736.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P9114869471365045308

`A056332(n+1)+A056339(n+1)+A056338(n+1)`
-/

namespace A056334.P9114869471365045308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) + (A056339 (n + 1) + A056338 (n + 1))

end

end A056334.P9114869471365045308

namespace A056334

/-- `A056332(n+1)+A056339(n+1)+A056338(n+1)` -/
def P9114869471365045308.Spec : Prop :=
  ∀ n, P9114869471365045308.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P4039898044514616302

`A056333(n+1)+∑{d}[n+1, A008683(#)*A056329((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056334

/-- `A056333(n+1)+∑{d}[n+1, A008683(#)*A056329((n+1)/#)]` -/
def P4039898044514616302.Spec : Prop :=
  ∀ n, P4039898044514616302.a n = A056334 (n + 1)

theorem P4039898044514616302.correct : P4039898044514616302.Spec := by
  intro n
  simp only [A056334, Nat.add_sub_cancel]

end A056334

/-! ## A056334.P4976293179805637344

`A056333(n+1)+∑{d}[n+1, A056329(#)*A069158((n+1)/#)]`
-/

namespace A056334.P4976293179805637344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056329 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056334.P4976293179805637344

namespace A056334

/-- `A056333(n+1)+∑{d}[n+1, A056329(#)*A069158((n+1)/#)]` -/
def P4976293179805637344.Spec : Prop :=
  ∀ n, P4976293179805637344.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P4808982660382600322

`A056335(n+1)-A056340(n+1)`
-/

namespace A056334.P4808982660382600322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - A056340 (n + 1)

end

end A056334.P4808982660382600322

namespace A056334

/-- `A056335(n+1)-A056340(n+1)` -/
def P4808982660382600322.Spec : Prop :=
  ∀ n, P4808982660382600322.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P14651020555197388607

`A056335(n+1)+A056340(n+1)*A057428(n)`
-/

namespace A056334.P14651020555197388607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) + A056340 (n + 1) * A057428 n

end

end A056334.P14651020555197388607

namespace A056334

/-- `A056335(n+1)+A056340(n+1)*A057428(n)` -/
def P14651020555197388607.Spec : Prop :=
  ∀ n, P14651020555197388607.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P16571878234813983378

`A276544(A077169(n+1))+A056333(n+1)`
-/

namespace A056334.P16571878234813983378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A077169 (n + 1)).toNat + A056333 (n + 1)

end

end A056334.P16571878234813983378

namespace A056334

/-- `A276544(A077169(n+1))+A056333(n+1)` -/
def P16571878234813983378.Spec : Prop :=
  ∀ n, P16571878234813983378.a n = A056334 (n + 1)

end A056334

/-! ## A056334.P8626838129220747127

`A276544(A077169(n+1))+A056338(n+1)+A056332(n+1)`
-/

namespace A056334.P8626838129220747127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A077169 (n + 1)).toNat + (A056338 (n + 1) + A056332 (n + 1))

end

end A056334.P8626838129220747127

namespace A056334

/-- `A276544(A077169(n+1))+A056338(n+1)+A056332(n+1)` -/
def P8626838129220747127.Spec : Prop :=
  ∀ n, P8626838129220747127.a n = A056334 (n + 1)

end A056334

/-!
# A056335: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of six different colors.

The programs for A056335, there is no canonical definition to state claims against.
-/

/-! ## A056335.P5517098517979965429

`A056340(n+1)+A056334(n+1)`
-/

namespace A056335.P5517098517979965429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056340 (n + 1) + A056334 (n + 1)

end

end A056335.P5517098517979965429

/-! ## A056335.P17598264284750215903

`A056333(n+1)+A056340(n+1)+A056339(n+1)`
-/

namespace A056335.P17598264284750215903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) + (A056340 (n + 1) + A056339 (n + 1))

end

end A056335.P17598264284750215903

/-! ## A056335.P9950610688762046191

`A056334(n+1)+∑{d}[n+1, A008683(#)*A056330((n+1)/#)]`
-/

namespace A056335.P9950610688762046191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056335.P9950610688762046191

/-! ## A056335.P10740379920106833610

`A056334(n+1)+∑{d}[n+1, A056330(#)*A069158((n+1)/#)]`
-/

namespace A056335.P10740379920106833610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056330 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056335.P10740379920106833610

/-! ## A056335.P14754857136532330116

`A056334(n+1)+∑{d}[n+1, A056330(#)*A133639((n+1)/#)]`
-/

namespace A056335.P14754857136532330116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056330 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056335.P14754857136532330116

/-! ## A056335.P15822306757035882349

`A056340(n+1)+A056332(n+1)+A056339(n+1)+A056338(n+1)`
-/

namespace A056335.P15822306757035882349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056340 (n + 1) + (A056332 (n + 1) + (A056339 (n + 1) + A056338 (n + 1)))

end

end A056335.P15822306757035882349

/-! ## A056335.P10731852547859653973

`A276544(A184218(n+1)+7)+A056334(n+1)`
-/

namespace A056335.P10731852547859653973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A184218 (n + 1) + 7).toNat + A056334 (n + 1)

end

end A056335.P10731852547859653973

/-!
# A056336: Number of primitive (aperiodic) reversible string structures with n beads using exactly two different colors.

The programs for A056336, the canonical program `A056336.P1841425493249592598` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056336 has offset 1).

The definition of A056336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056336.P1841425493249592598

`A056331(n+1)-A000007(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056336

/-- `A056331(n+1)-A000007(n)` -/
def P1841425493249592598.Spec : Prop :=
  ∀ n, P1841425493249592598.a n = A056336 (n + 1)

theorem P1841425493249592598.correct : P1841425493249592598.Spec := by
  intro n
  simp only [A056336, Nat.add_sub_cancel]

end A056336

/-! ## A056336.P12684788564139427098

`A056331(n+1)*A057427(n)`
-/

namespace A056336.P12684788564139427098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) * A057427 n

end

end A056336.P12684788564139427098

namespace A056336

/-- `A056331(n+1)*A057427(n)` -/
def P12684788564139427098.Spec : Prop :=
  ∀ n, P12684788564139427098.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P13069963886743231422

`and(A056331(n+1), A057428(n))`
-/

namespace A056336.P13069963886743231422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A057428 n)

end

end A056336.P13069963886743231422

namespace A056336

/-- `and(A056331(n+1), A057428(n))` -/
def P13069963886743231422.Spec : Prop :=
  ∀ n, P13069963886743231422.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P15279165115692867518

`and(A056331(n+1), A116362(n))`
-/

namespace A056336.P15279165115692867518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A116362 n)

end

end A056336.P15279165115692867518

namespace A056336

/-- `and(A056331(n+1), A116362(n))` -/
def P15279165115692867518.Spec : Prop :=
  ∀ n, P15279165115692867518.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P1081594925733173841

`and(A056331(n+1), A134824(n))`
-/

namespace A056336.P1081594925733173841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A134824 n)

end

end A056336.P1081594925733173841

namespace A056336

/-- `and(A056331(n+1), A134824(n))` -/
def P1081594925733173841.Spec : Prop :=
  ∀ n, P1081594925733173841.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P2765752604607793615

`A056518(n+1)+A011949(n+1)`
-/

namespace A056336.P2765752604607793615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (n + 1) + A011949 (n + 1)

end

end A056336.P2765752604607793615

namespace A056336

/-- `A056518(n+1)+A011949(n+1)` -/
def P2765752604607793615.Spec : Prop :=
  ∀ n, P2765752604607793615.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P11547497222831665764

`A056331(n+1)-A063524(n+1)`
-/

namespace A056336.P11547497222831665764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - A063524 (n + 1)

end

end A056336.P11547497222831665764

namespace A056336

/-- `A056331(n+1)-A063524(n+1)` -/
def P11547497222831665764.Spec : Prop :=
  ∀ n, P11547497222831665764.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P15504180853554057451

`A056331(n+1)-A036987(2*n)`
-/

namespace A056336.P15504180853554057451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - A036987 (2 * n)

end

end A056336.P15504180853554057451

namespace A056336

/-- `A056331(n+1)-A036987(2*n)` -/
def P15504180853554057451.Spec : Prop :=
  ∀ n, P15504180853554057451.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P5627569827608346974

`and(A056326(n+1), A056331(n+1))`
-/

namespace A056336.P5627569827608346974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056326 (n + 1)) (A056331 (n + 1))

end

end A056336.P5627569827608346974

namespace A056336

/-- `and(A056326(n+1), A056331(n+1))` -/
def P5627569827608346974.Spec : Prop :=
  ∀ n, P5627569827608346974.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P14747201326174504511

`A056331(n+1)-char[A056313(n+1)]`
-/

namespace A056336.P14747201326174504511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056336.P14747201326174504511

namespace A056336

/-- `A056331(n+1)-char[A056313(n+1)]` -/
def P14747201326174504511.Spec : Prop :=
  ∀ n, P14747201326174504511.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P657103437215728245

`A056331(n+1)-char[A056322(n+1)]`
-/

namespace A056336.P657103437215728245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056336.P657103437215728245

namespace A056336

/-- `A056331(n+1)-char[A056322(n+1)]` -/
def P657103437215728245.Spec : Prop :=
  ∀ n, P657103437215728245.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P17492013201177590511

`∑{d}[n+1, A008683(#)*A056326((n+1)/#)]`
-/

namespace A056336.P17492013201177590511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056336.P17492013201177590511

namespace A056336

/-- `∑{d}[n+1, A008683(#)*A056326((n+1)/#)]` -/
def P17492013201177590511.Spec : Prop :=
  ∀ n, P17492013201177590511.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P1488585251095154817

`A056331(n+1)%A000079(n)`
-/

namespace A056336.P1488585251095154817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056331 (n + 1)) (A000079 n)

end

end A056336.P1488585251095154817

namespace A056336

/-- `A056331(n+1)%A000079(n)` -/
def P1488585251095154817.Spec : Prop :=
  ∀ n, P1488585251095154817.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P17828898958099666801

`and(A000225(n), A056331(n+1))`
-/

namespace A056336.P17828898958099666801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056331 (n + 1))

end

end A056336.P17828898958099666801

namespace A056336

/-- `and(A000225(n), A056331(n+1))` -/
def P17828898958099666801.Spec : Prop :=
  ∀ n, P17828898958099666801.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P14872521919239609376

`A056318(n+1)/A045625(n+1)*A056331(n+1)`
-/

namespace A056336.P14872521919239609376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056318 (n + 1) : ℚ) / (A045625 (n + 1) : ℚ) * (A056331 (n + 1) : ℚ)

end

end A056336.P14872521919239609376

namespace A056336

/-- `A056318(n+1)/A045625(n+1)*A056331(n+1)` -/
def P14872521919239609376.Spec : Prop :=
  ∀ n, P14872521919239609376.a n = (A056336 (n + 1) : ℚ)

end A056336

/-! ## A056336.P12477689445542741089

`and(A056331(n+1), A303611(n+2))`
-/

namespace A056336.P12477689445542741089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A303611 (n + 2))

end

end A056336.P12477689445542741089

namespace A056336

/-- `and(A056331(n+1), A303611(n+2))` -/
def P12477689445542741089.Spec : Prop :=
  ∀ n, P12477689445542741089.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P783046456645206043

`and(A056331(n+1), A140683(n))`
-/

namespace A056336.P783046456645206043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A140683 n)

end

end A056336.P783046456645206043

namespace A056336

/-- `and(A056331(n+1), A140683(n))` -/
def P783046456645206043.Spec : Prop :=
  ∀ n, P783046456645206043.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P5910661801438552509

`and(A056331(n+1), A153893(n))`
-/

namespace A056336.P5910661801438552509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A153893 n)

end

end A056336.P5910661801438552509

namespace A056336

/-- `and(A056331(n+1), A153893(n))` -/
def P5910661801438552509.Spec : Prop :=
  ∀ n, P5910661801438552509.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P4260910097983193855

`and(A056331(n+1), A086224(n))`
-/

namespace A056336.P4260910097983193855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A086224 n)

end

end A056336.P4260910097983193855

namespace A056336

/-- `and(A056331(n+1), A086224(n))` -/
def P4260910097983193855.Spec : Prop :=
  ∀ n, P4260910097983193855.a n = A056336 (n + 1)

end A056336

/-! ## A056336.P1145093046398804463

`and(A056331(n+1), A153894(n))`
-/

namespace A056336.P1145093046398804463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056331 (n + 1)) (A153894 n)

end

end A056336.P1145093046398804463

namespace A056336

/-- `and(A056331(n+1), A153894(n))` -/
def P1145093046398804463.Spec : Prop :=
  ∀ n, P1145093046398804463.a n = A056336 (n + 1)

end A056336

/-!
# A056337: Number of primitive (aperiodic) reversible string structures with n beads using exactly three different colors.

The programs for A056337, the canonical program `A056337.P9761899805015618625` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056337 has offset 1).

The definition of A056337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056331, A056332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056337.P9761899805015618625

`A056332(n+1)-A056331(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056337

/-- `A056332(n+1)-A056331(n+1)` -/
def P9761899805015618625.Spec : Prop :=
  ∀ n, P9761899805015618625.a n = A056337 (n + 1)

theorem P9761899805015618625.correct : P9761899805015618625.Spec := by
  intro n
  simp only [A056337, Nat.add_sub_cancel]

end A056337

/-! ## A056337.P12595820083889966324

`∑{d}[n+1, A008683(#)*A056327((n+1)/#)]`
-/

namespace A056337.P12595820083889966324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056337.P12595820083889966324

namespace A056337

/-- `∑{d}[n+1, A008683(#)*A056327((n+1)/#)]` -/
def P12595820083889966324.Spec : Prop :=
  ∀ n, P12595820083889966324.a n = A056337 (n + 1)

end A056337

/-! ## A056337.P6507178909526836462

`A056332(n+1)-A056336(n+1)^(n²%(n+1))`
-/

namespace A056337.P6507178909526836462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - A056336 (n + 1) ^ (n ^ 2 % (n + 1))

end

end A056337.P6507178909526836462

namespace A056337

/-- `A056332(n+1)-A056336(n+1)^(n²%(n+1))` -/
def P6507178909526836462.Spec : Prop :=
  ∀ n, P6507178909526836462.a n = A056337 (n + 1)

end A056337

/-! ## A056337.P8664818209644836102

`A056332(n+1)-A056336(A233583(n+2))`
-/

namespace A056337.P8664818209644836102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - A056336 (A233583 (n + 2)).toNat

end

end A056337.P8664818209644836102

namespace A056337

/-- `A056332(n+1)-A056336(A233583(n+2))` -/
def P8664818209644836102.Spec : Prop :=
  ∀ n, P8664818209644836102.a n = A056337 (n + 1)

end A056337

/-! ## A056337.P879254520816195643

`A056332(n+1)-(A056336(n+1)+A000122(n)%2)`
-/

namespace A056337.P879254520816195643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - (A056336 (n + 1) + Int.tmod (A000122 n) 2)

end

end A056337.P879254520816195643

namespace A056337

/-- `A056332(n+1)-(A056336(n+1)+A000122(n)%2)` -/
def P879254520816195643.Spec : Prop :=
  ∀ n, P879254520816195643.a n = A056337 (n + 1)

end A056337

/-! ## A056337.P1787402637040910901

`A056332(n+1)-∑{d}[n+1, A008683(#)*A005418((n+1)/#)]`
-/

namespace A056337.P1787402637040910901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A005418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056337.P1787402637040910901

namespace A056337

/-- `A056332(n+1)-∑{d}[n+1, A008683(#)*A005418((n+1)/#)]` -/
def P1787402637040910901.Spec : Prop :=
  ∀ n, P1787402637040910901.a n = A056337 (n + 1)

end A056337

/-! ## A056337.P17963660459528522357

`A276544(∑[abs(char[1]-1+n)]+n+1)`
-/

namespace A056337.P17963660459528522357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat

end

end A056337.P17963660459528522357

namespace A056337

/-- `A276544(∑[abs(char[1]-1+n)]+n+1)` -/
def P17963660459528522357.Spec : Prop :=
  ∀ n, P17963660459528522357.a n = A056337 (n + 1)

end A056337

/-!
# A056338: Number of primitive (aperiodic) reversible string structures with n beads using exactly four different colors.

The programs for A056338, the canonical program `A056338.P9536420642399995847` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056338 has offset 1).

The definition of A056338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056332, A056333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056338.P9536420642399995847

`A056333(n+1)-A056332(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056338

/-- `A056333(n+1)-A056332(n+1)` -/
def P9536420642399995847.Spec : Prop :=
  ∀ n, P9536420642399995847.a n = A056338 (n + 1)

theorem P9536420642399995847.correct : P9536420642399995847.Spec := by
  intro n
  simp only [A056338, Nat.add_sub_cancel]

end A056338

/-! ## A056338.P4323484332574398871

`∑{d}[n+1, A008683(#)*A056328((n+1)/#)]`
-/

namespace A056338.P4323484332574398871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056338.P4323484332574398871

namespace A056338

/-- `∑{d}[n+1, A008683(#)*A056328((n+1)/#)]` -/
def P4323484332574398871.Spec : Prop :=
  ∀ n, P4323484332574398871.a n = A056338 (n + 1)

end A056338

/-! ## A056338.P5749258062323951478

`A276544(A238531(n)+A065475(n+1))`
-/

namespace A056338.P5749258062323951478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A238531 n + A065475 (n + 1)).toNat

end

end A056338.P5749258062323951478

namespace A056338

/-- `A276544(A238531(n)+A065475(n+1))` -/
def P5749258062323951478.Spec : Prop :=
  ∀ n, P5749258062323951478.a n = A056338 (n + 1)

end A056338

/-! ## A056338.P14799196661863322649

`A060576(n)*A276544(A145018(n+1))`
-/

namespace A056338.P14799196661863322649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A276544 (A145018 (n + 1)).toNat

end

end A056338.P14799196661863322649

namespace A056338

/-- `A060576(n)*A276544(A145018(n+1))` -/
def P14799196661863322649.Spec : Prop :=
  ∀ n, P14799196661863322649.a n = A056338 (n + 1)

end A056338

/-! ## A056338.P15227136141275093978

`A276544(A145018(n+1))%A081560(n)`
-/

namespace A056338.P15227136141275093978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276544 (A145018 (n + 1)).toNat) (A081560 n)

end

end A056338.P15227136141275093978

namespace A056338

/-- `A276544(A145018(n+1))%A081560(n)` -/
def P15227136141275093978.Spec : Prop :=
  ∀ n, P15227136141275093978.a n = A056338 (n + 1)

end A056338

/-! ## A056338.P4967842579947180749

`A276544(A145018(n+1)+A060576(n)-1)`
-/

namespace A056338.P4967842579947180749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A145018 (n + 1) + (A060576 n - 1)).toNat

end

end A056338.P4967842579947180749

namespace A056338

/-- `A276544(A145018(n+1)+A060576(n)-1)` -/
def P4967842579947180749.Spec : Prop :=
  ∀ n, P4967842579947180749.a n = A056338 (n + 1)

end A056338

/-!
# A056339: Number of primitive (aperiodic) reversible string structures with n beads using exactly five different colors.

The programs for A056339, the canonical program `A056339.P12728329773781981216` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056339 has offset 1).

The definition of A056339 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056333, A056334, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056339.P12728329773781981216

`A056334(n+1)-A056333(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056339

/-- `A056334(n+1)-A056333(n+1)` -/
def P12728329773781981216.Spec : Prop :=
  ∀ n, P12728329773781981216.a n = A056339 (n + 1)

theorem P12728329773781981216.correct : P12728329773781981216.Spec := by
  intro n
  simp only [A056339, Nat.add_sub_cancel]

end A056339

/-! ## A056339.P14805249735267325774

`∑{d}[n+1, A008683(#)*A056329((n+1)/#)]`
-/

namespace A056339.P14805249735267325774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056339.P14805249735267325774

namespace A056339

/-- `∑{d}[n+1, A008683(#)*A056329((n+1)/#)]` -/
def P14805249735267325774.Spec : Prop :=
  ∀ n, P14805249735267325774.a n = A056339 (n + 1)

end A056339

/-! ## A056339.P7070125633958480270

`∑{d}[n+1, A056329(#)*A069158((n+1)/#)]`
-/

namespace A056339.P7070125633958480270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056329 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056339.P7070125633958480270

namespace A056339

/-- `∑{d}[n+1, A056329(#)*A069158((n+1)/#)]` -/
def P7070125633958480270.Spec : Prop :=
  ∀ n, P7070125633958480270.a n = A056339 (n + 1)

end A056339

/-! ## A056339.P3515778554196877946

`∑{d}[n+1, A056329(#)*A253206((n+1)/#)]`
-/

namespace A056339.P3515778554196877946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056329 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056339.P3515778554196877946

namespace A056339

/-- `∑{d}[n+1, A056329(#)*A253206((n+1)/#)]` -/
def P3515778554196877946.Spec : Prop :=
  ∀ n, P3515778554196877946.a n = A056339 (n + 1)

end A056339

/-! ## A056339.P4551405172379147232

`A056334(n+1)-(A056338(n+1)+A056332(n+1))`
-/

namespace A056339.P4551405172379147232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) - (A056338 (n + 1) + A056332 (n + 1))

end

end A056339.P4551405172379147232

namespace A056339

/-- `A056334(n+1)-(A056338(n+1)+A056332(n+1))` -/
def P4551405172379147232.Spec : Prop :=
  ∀ n, P4551405172379147232.a n = A056339 (n + 1)

end A056339

/-! ## A056339.P3355884351078595263

`A276544(A077169(n+1))`
-/

namespace A056339.P3355884351078595263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A077169 (n + 1)).toNat

end

end A056339.P3355884351078595263

namespace A056339

/-- `A276544(A077169(n+1))` -/
def P3355884351078595263.Spec : Prop :=
  ∀ n, P3355884351078595263.a n = A056339 (n + 1)

end A056339

/-!
# A056340: Number of primitive (aperiodic) reversible string structures with n beads using exactly six different colors.

The programs for A056340, there is no canonical definition to state claims against.
-/

/-! ## A056340.P2506672570758264380

`A056335(n+1)-A056334(n+1)`
-/

namespace A056340.P2506672570758264380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - A056334 (n + 1)

end

end A056340.P2506672570758264380

/-! ## A056340.P13723243170531498038

`∑{d}[n+1, A008683(#)*A056330((n+1)/#)]`
-/

namespace A056340.P13723243170531498038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056340.P13723243170531498038

/-! ## A056340.P16720270523635756043

`∑{d}[n+1, A056330(#)*A069158((n+1)/#)]`
-/

namespace A056340.P16720270523635756043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056330 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056340.P16720270523635756043

/-! ## A056340.P17034133322606320978

`∑{d}[n+1, A056330(#)*A133639((n+1)/#)]`
-/

namespace A056340.P17034133322606320978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056330 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056340.P17034133322606320978

/-! ## A056340.P2498844191318480079

`∑{d}[n+1, A056330(#)*A253206((n+1)/#)]`
-/

namespace A056340.P2498844191318480079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056330 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056340.P2498844191318480079

/-! ## A056340.P6855179446083984389

`A056335(n+1)-(A056339(n+1)+A056333(n+1))`
-/

namespace A056340.P6855179446083984389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - (A056339 (n + 1) + A056333 (n + 1))

end

end A056340.P6855179446083984389

/-! ## A056340.P367725049988710203

`A056335(n+1)-(A056332(n+1)+A056339(n+1)+A056338(n+1))`
-/

namespace A056340.P367725049988710203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - (A056332 (n + 1) + (A056339 (n + 1) + A056338 (n + 1)))

end

end A056340.P367725049988710203

/-! ## A056340.P9197664740066916427

`A276544(A184218(n+1)+7)`
-/

namespace A056340.P9197664740066916427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A184218 (n + 1) + 7).toNat

end

end A056340.P9197664740066916427

/-! ## A056340.P8771469113226709495

`A276544(A077169(n)+1+n)`
-/

namespace A056340.P8771469113226709495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276544 (A077169 n + 1 + (n : ℤ)).toNat

end

end A056340.P8771469113226709495

/-!
# A056341: Number of bracelets of length n using a maximum of six different colored beads.

The programs for A056341, there is no canonical definition to state claims against.
-/

/-! ## A056341.P6605949986099580821

`∑{d}[n+1, A056347(#)]`
-/

namespace A056341.P6605949986099580821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056347 d

end

end A056341.P6605949986099580821

/-! ## A056341.P4164915077721895455

`record[∑{d}[A008611(n), A056347(#)]]`
-/

namespace A056341.P4164915077721895455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A056347 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056341.P4164915077721895455

/-! ## A056341.P9274029131993097705

`record[∑{d}[A028242(n), A056347(#)]]`
-/

namespace A056341.P9274029131993097705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A056347 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056341.P9274029131993097705

/-! ## A056341.P8114105162832858997

`record[∑{d}[A158416(n), A056347(#)]]`
-/

namespace A056341.P8114105162832858997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A056347 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056341.P8114105162832858997

/-! ## A056341.P13703893352106149240

`A278642(n+1)+A056488(n+1)`
-/

namespace A056341.P13703893352106149240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278642 (n + 1) + A056488 (n + 1)

end

end A056341.P13703893352106149240

/-! ## A056341.P3114043104816768477

`∑{d}[A028242(2*n), A056347(#)]-log2(1/2)-1`
-/

namespace A056341.P3114043104816768477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A056347 d : ℤ) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A056341.P3114043104816768477

/-! ## A056341.P6228976609212332300

`A051137(A161680(n+7)+5)`
-/

namespace A056341.P6228976609212332300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A161680 (n + 7) + 5).toNat

end

end A056341.P6228976609212332300

/-! ## A056341.P14631236236547509137

`A051137(A052905(n+3)+10)`
-/

namespace A056341.P14631236236547509137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A052905 (n + 3) + 10).toNat

end

end A056341.P14631236236547509137

/-! ## A056341.P9162089948439852778

`A051137(A000217(n+7)-(n+2))`
-/

namespace A056341.P9162089948439852778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A000217 (n + 7) - (n + 2 : ℤ)).toNat

end

end A056341.P9162089948439852778

/-! ## A056341.P673194328719853267

`A051137(A000124(n+7)-(n+3))`
-/

namespace A056341.P673194328719853267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A000124 (n + 7) - (n + 3 : ℤ)).toNat

end

end A056341.P673194328719853267

/-!
# A056342: Number of bracelets of length n using exactly two different colored beads.

The programs for A056342, the canonical program `A056342.P15846794555017869734` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056342 has offset 1).

The definition of A056342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056342.P15846794555017869734

`A091696(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A056342

/-- `A091696(n+1)-1` -/
def P15846794555017869734.Spec : Prop :=
  ∀ n, P15846794555017869734.a n = A056342 (n + 1)

theorem P15846794555017869734.correct : P15846794555017869734.Spec := by
  intro n
  simp only [A056342, Nat.add_sub_cancel]

end A056342

/-! ## A056342.P16520513500978853199

`A000029(n+1)-2`
-/

namespace A056342.P16520513500978853199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - 2

end

end A056342.P16520513500978853199

namespace A056342

/-- `A000029(n+1)-2` -/
def P16520513500978853199.Spec : Prop :=
  ∀ n, P16520513500978853199.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P7957668392615290848

`∑{d}[n+1, A056348(#)]`
-/

namespace A056342.P7957668392615290848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056348 d

end

end A056342.P7957668392615290848

namespace A056342

/-- `∑{d}[n+1, A056348(#)]` -/
def P7957668392615290848.Spec : Prop :=
  ∀ n, P7957668392615290848.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P16300693986027603955

`∑[abs(Δ[A000029(n)])]-1`
-/

namespace A056342.P16300693986027603955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056342.P16300693986027603955

namespace A056342

/-- `∑[abs(Δ[A000029(n)])]-1` -/
def P16300693986027603955.Spec : Prop :=
  ∀ n, P16300693986027603955.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P7571602583899139251

`∑[A000029(n+1)%A000029(n)]`
-/

namespace A056342.P7571602583899139251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000029 (n + 1)) (A000029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056342.P7571602583899139251

namespace A056342

/-- `∑[A000029(n+1)%A000029(n)]` -/
def P7571602583899139251.Spec : Prop :=
  ∀ n, P7571602583899139251.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P12452780657346000959

`A007147(n+1)+A056357(n+1)-1`
-/

namespace A056342.P12452780657346000959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 1) + (A056357 (n + 1) - 1)

end

end A056342.P12452780657346000959

namespace A056342

/-- `A007147(n+1)+A056357(n+1)-1` -/
def P12452780657346000959.Spec : Prop :=
  ∀ n, P12452780657346000959.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P7481943544573752493

`A001371(n+1)+A115119(n+1)-2`
-/

namespace A056342.P7481943544573752493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) + (A115119 (n + 1) - 2)

end

end A056342.P7481943544573752493

namespace A056342

/-- `A001371(n+1)+A115119(n+1)-2` -/
def P7481943544573752493.Spec : Prop :=
  ∀ n, P7481943544573752493.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P4687610879347734541

`A059076(n+1)+A029744(n+2)-2`
-/

namespace A056342.P4687610879347734541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + (A029744 (n + 2) - 2)

end

end A056342.P4687610879347734541

namespace A056342

/-- `A059076(n+1)+A029744(n+2)-2` -/
def P4687610879347734541.Spec : Prop :=
  ∀ n, P4687610879347734541.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P16148862338361671132

`A059076(n+1)+A027383(n)-A016116(n)`
-/

namespace A056342.P16148862338361671132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + (A027383 n - A016116 n)

end

end A056342.P16148862338361671132

namespace A056342

/-- `A059076(n+1)+A027383(n)-A016116(n)` -/
def P16148862338361671132.Spec : Prop :=
  ∀ n, P16148862338361671132.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P4412046532230883835

`A027383(n+1)+A059076(n+1)-A164090(n+1)`
-/

namespace A056342.P4412046532230883835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) + (A059076 (n + 1) - A164090 (n + 1))

end

end A056342.P4412046532230883835

namespace A056342

/-- `A027383(n+1)+A059076(n+1)-A164090(n+1)` -/
def P4412046532230883835.Spec : Prop :=
  ∀ n, P4412046532230883835.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P17252067738663808287

`A052823(n+1)-A059076(n+1)`
-/

namespace A056342.P17252067738663808287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) - A059076 (n + 1)

end

end A056342.P17252067738663808287

namespace A056342

/-- `A052823(n+1)-A059076(n+1)` -/
def P17252067738663808287.Spec : Prop :=
  ∀ n, P17252067738663808287.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P14728027436134541283

`A000031(n+1)-(A059076(n+1)+2)`
-/

namespace A056342.P14728027436134541283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A059076 (n + 1) + 2)

end

end A056342.P14728027436134541283

namespace A056342

/-- `A000031(n+1)-(A059076(n+1)+2)` -/
def P14728027436134541283.Spec : Prop :=
  ∀ n, P14728027436134541283.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P4639599577066248322

`A004526(n+1)+A262232(n+1)-A059076(n+1)`
-/

namespace A056342.P4639599577066248322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A262232 (n + 1) - A059076 (n + 1))

end

end A056342.P4639599577066248322

namespace A056342

/-- `A004526(n+1)+A262232(n+1)-A059076(n+1)` -/
def P4639599577066248322.Spec : Prop :=
  ∀ n, P4639599577066248322.a n = A056342 (n + 1)

end A056342

/-! ## A056342.P12076410656811960316

`A052310(∑[n+1])-2`
-/

namespace A056342.P12076410656811960316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A056342.P12076410656811960316

namespace A056342

/-- `A052310(∑[n+1])-2` -/
def P12076410656811960316.Spec : Prop :=
  ∀ n, P12076410656811960316.a n = A056342 (n + 1)

end A056342

/-!
# A056343: Number of bracelets of length n using exactly three different colored beads.

The programs for A056343, the canonical program `A056343.P18158920682156565457` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056343 has offset 1).

The definition of A056343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056343.P16423346637390636633

`∑{d}[n+1, A056349(#)]`
-/

namespace A056343.P16423346637390636633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056349 d

end

end A056343.P16423346637390636633

namespace A056343

/-- `∑{d}[n+1, A056349(#)]` -/
def P16423346637390636633.Spec : Prop :=
  ∀ n, P16423346637390636633.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P10725982754856828120

`A305542(n+1)+A056489(n+1)`
-/

namespace A056343.P10725982754856828120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305542 (n + 1) + A056489 (n + 1)

end

end A056343.P10725982754856828120

namespace A056343

/-- `A305542(n+1)+A056489(n+1)` -/
def P10725982754856828120.Spec : Prop :=
  ∀ n, P10725982754856828120.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P12186797739644362647

`A056283(n+1)-A305542(n+1)`
-/

namespace A056343.P12186797739644362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - A305542 (n + 1)

end

end A056343.P12186797739644362647

namespace A056343

/-- `A056283(n+1)-A305542(n+1)` -/
def P12186797739644362647.Spec : Prop :=
  ∀ n, P12186797739644362647.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P18158920682156565457

`(A056489(n+1)+A056283(n+1))/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056343

/-- `(A056489(n+1)+A056283(n+1))/2` -/
def P18158920682156565457.Spec : Prop :=
  ∀ n, P18158920682156565457.a n = (A056343 (n + 1) : ℚ)

end A056343

/-! ## A056343.P11427462906417443606

`A056283(n+1)-∑{d}[n+1, A326660(#)]`
-/

namespace A056343.P11427462906417443606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A326660 d

end

end A056343.P11427462906417443606

namespace A056343

/-- `A056283(n+1)-∑{d}[n+1, A326660(#)]` -/
def P11427462906417443606.Spec : Prop :=
  ∀ n, P11427462906417443606.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P11522981335623850730

`∑{d}[n+1, A056499(#)]+∑{d}[n+1, A326660(#)]`
-/

namespace A056343.P11522981335623850730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056499 d + ∑ d ∈ Nat.divisors (f2 n), A326660 d

end

end A056343.P11522981335623850730

namespace A056343

/-- `∑{d}[n+1, A056499(#)]+∑{d}[n+1, A326660(#)]` -/
def P11522981335623850730.Spec : Prop :=
  ∀ n, P11522981335623850730.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P15352452472823235939

`A305541(A152950(n+1))+A056489(n+1)`
-/

namespace A056343.P15352452472823235939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A152950 (n + 1)).toNat + A056489 (n + 1)

end

end A056343.P15352452472823235939

namespace A056343

/-- `A305541(A152950(n+1))+A056489(n+1)` -/
def P15352452472823235939.Spec : Prop :=
  ∀ n, P15352452472823235939.a n = A056343 (n + 1)

end A056343

/-! ## A056343.P300091640547453004

`A056283(n+1)-A305541(A152950(n+1))`
-/

namespace A056343.P300091640547453004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - A305541 (A152950 (n + 1)).toNat

end

end A056343.P300091640547453004

namespace A056343

/-- `A056283(n+1)-A305541(A152950(n+1))` -/
def P300091640547453004.Spec : Prop :=
  ∀ n, P300091640547453004.a n = A056343 (n + 1)

end A056343

/-!
# A056344: Number of bracelets of length n using exactly four different colored beads.

The programs for A056344, the canonical program `A056344.P7012098588156965107` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056344 has offset 1).

The definition of A056344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, A056490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056344.P9590837279793873544

`A305543(n+1)+A056490(n+1)`
-/

namespace A056344.P9590837279793873544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305543 (n + 1) + A056490 (n + 1)

end

end A056344.P9590837279793873544

namespace A056344

/-- `A305543(n+1)+A056490(n+1)` -/
def P9590837279793873544.Spec : Prop :=
  ∀ n, P9590837279793873544.a n = A056344 (n + 1)

end A056344

/-! ## A056344.P4526693002890099083

`A056284(n+1)-A305543(n+1)`
-/

namespace A056344.P4526693002890099083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056284 (n + 1) - A305543 (n + 1)

end

end A056344.P4526693002890099083

namespace A056344

/-- `A056284(n+1)-A305543(n+1)` -/
def P4526693002890099083.Spec : Prop :=
  ∀ n, P4526693002890099083.a n = A056344 (n + 1)

end A056344

/-! ## A056344.P7012098588156965107

`(A056284(n+1)+A056490(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056344

/-- `(A056284(n+1)+A056490(n+1))/2` -/
def P7012098588156965107.Spec : Prop :=
  ∀ n, P7012098588156965107.a n = (A056344 (n + 1) : ℚ)

end A056344

/-! ## A056344.P8317582337524254982

`∑{d}[n+1, A056350(#)]`
-/

namespace A056344.P8317582337524254982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056350 d

end

end A056344.P8317582337524254982

namespace A056344

/-- `∑{d}[n+1, A056350(#)]` -/
def P8317582337524254982.Spec : Prop :=
  ∀ n, P8317582337524254982.a n = A056344 (n + 1)

end A056344

/-! ## A056344.P763358392304932631

`∑{d}[n+1, A056500(#)]+∑{d}[n+1, A326789(#)]`
-/

namespace A056344.P763358392304932631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056500 d + ∑ d ∈ Nat.divisors (f2 n), A326789 d

end

end A056344.P763358392304932631

namespace A056344

/-- `∑{d}[n+1, A056500(#)]+∑{d}[n+1, A326789(#)]` -/
def P763358392304932631.Spec : Prop :=
  ∀ n, P763358392304932631.a n = A056344 (n + 1)

end A056344

/-!
# A056345: Number of bracelets of length n using exactly five different colored beads.

The programs for A056345, there is no canonical definition to state claims against.
-/

/-! ## A056345.P11988826687751148176

`∑{d}[n+1, A056351(#)]`
-/

namespace A056345.P11988826687751148176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056351 d

end

end A056345.P11988826687751148176

/-! ## A056345.P4533049997932797366

`A305544(n+1)+A056491(n+1)`
-/

namespace A056345.P4533049997932797366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305544 (n + 1) + A056491 (n + 1)

end

end A056345.P4533049997932797366

/-! ## A056345.P13532763608490197495

`A056285(n+1)-A305544(n+1)`
-/

namespace A056345.P13532763608490197495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056285 (n + 1) - A305544 (n + 1)

end

end A056345.P13532763608490197495

/-! ## A056345.P4176786105810594381

`(A056491(n+1)+A056285(n+1))/2`
-/

namespace A056345.P4176786105810594381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056491 (n + 1) + A056285 (n + 1) : ℚ) / 2

end

end A056345.P4176786105810594381

/-! ## A056345.P14082968834405760224

`A305544(n+1)+∑{d}[n+1, A056501(#)]`
-/

namespace A056345.P14082968834405760224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305544 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056501 d

end

end A056345.P14082968834405760224

/-!
# A056346: Number of bracelets of length n using exactly six different colored beads.

The programs for A056346, there is no canonical definition to state claims against.
-/

/-! ## A056346.P4695749237726402807

`∑{d}[n+1, A056352(#)]`
-/

namespace A056346.P4695749237726402807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056352 d

end

end A056346.P4695749237726402807

/-! ## A056346.P6189581363308015002

`A305545(n+1)+A056492(n+1)`
-/

namespace A056346.P6189581363308015002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305545 (n + 1) + A056492 (n + 1)

end

end A056346.P6189581363308015002

/-! ## A056346.P5492378004090461756

`A056286(n+1)-A305545(n+1)`
-/

namespace A056346.P5492378004090461756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056286 (n + 1) - A305545 (n + 1)

end

end A056346.P5492378004090461756

/-! ## A056346.P11135101700674695568

`(A056492(n+1)+A056286(n+1))/2`
-/

namespace A056346.P11135101700674695568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056492 (n + 1) + A056286 (n + 1) : ℚ) / 2

end

end A056346.P11135101700674695568

/-! ## A056346.P1448302865620161503

`A305541(A077169(n+1)+1)+A056492(n+1)`
-/

namespace A056346.P1448302865620161503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A077169 (n + 1) + 1).toNat + A056492 (n + 1)

end

end A056346.P1448302865620161503

/-!
# A056347: Number of primitive (period n) bracelets using a maximum of six different colored beads.

The programs for A056347, there is no canonical definition to state claims against.
-/

/-! ## A056347.P5693226390845747470

`∑{d}[n+1, A008683(#)*A056341((n+1)/#)]`
-/

namespace A056347.P5693226390845747470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056347.P5693226390845747470

/-! ## A056347.P2391012561804204323

`A276550(A052905(n+3))`
-/

namespace A056347.P2391012561804204323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A052905 (n + 3)).toNat

end

end A056347.P2391012561804204323

/-! ## A056347.P16881620081196572273

`A276550(A056119(n)+16)`
-/

namespace A056347.P16881620081196572273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A056119 n + 16).toNat

end

end A056347.P16881620081196572273

/-! ## A056347.P5695671308724706355

`A276550(A000096(n+5)-4)`
-/

namespace A056347.P5695671308724706355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A000096 (n + 5) - 4).toNat

end

end A056347.P5695671308724706355

/-! ## A056347.P3803594676257360717

`A276550(A000217(n+6)-5)`
-/

namespace A056347.P3803594676257360717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A000217 (n + 6) - 5).toNat

end

end A056347.P3803594676257360717

/-! ## A056347.P13271447326421191191

`A276550(A000124(n+6)-6)`
-/

namespace A056347.P13271447326421191191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A000124 (n + 6) - 6).toNat

end

end A056347.P13271447326421191191

/-!
# A056348: Number of primitive (period n) bracelets using exactly two different colored beads.

The programs for A056348, the canonical program `A056348.P5265838265426207479` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056348 has offset 1).

The definition of A056348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056348.P10509071798241399842

`A001371(n+1)-A000038(n)`
-/

namespace A056348.P10509071798241399842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) - A000038 n

end

end A056348.P10509071798241399842

namespace A056348

/-- `A001371(n+1)-A000038(n)` -/
def P10509071798241399842.Spec : Prop :=
  ∀ n, P10509071798241399842.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P13842911602092103052

`A001371(n+1)*A057427(n)`
-/

namespace A056348.P13842911602092103052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) * A057427 n

end

end A056348.P13842911602092103052

namespace A056348

/-- `A001371(n+1)*A057427(n)` -/
def P13842911602092103052.Spec : Prop :=
  ∀ n, P13842911602092103052.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P2898424275684405073

`(1-A000007(n))*A001371(n+1)`
-/

namespace A056348.P2898424275684405073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A001371 (n + 1)

end

end A056348.P2898424275684405073

namespace A056348

/-- `(1-A000007(n))*A001371(n+1)` -/
def P2898424275684405073.Spec : Prop :=
  ∀ n, P2898424275684405073.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P6590460519856455659

`and(1, A000040(n+1))*A001371(n+1)`
-/

namespace A056348.P6590460519856455659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A001371 (n + 1)

end

end A056348.P6590460519856455659

namespace A056348

/-- `and(1, A000040(n+1))*A001371(n+1)` -/
def P6590460519856455659.Spec : Prop :=
  ∀ n, P6590460519856455659.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P4630754241199354816

`n/A065033(2*n)*A001371(n+1)`
-/

namespace A056348.P4630754241199354816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A065033 (2 * n) : ℚ) * (A001371 (n + 1) : ℚ)

end

end A056348.P4630754241199354816

namespace A056348

/-- `n/A065033(2*n)*A001371(n+1)` -/
def P4630754241199354816.Spec : Prop :=
  ∀ n, P4630754241199354816.a n = (A056348 (n + 1) : ℚ)

end A056348

/-! ## A056348.P5265838265426207479

`∑{d}[n+1, A008683(#)*A056342((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056348

/-- `∑{d}[n+1, A008683(#)*A056342((n+1)/#)]` -/
def P5265838265426207479.Spec : Prop :=
  ∀ n, P5265838265426207479.a n = A056348 (n + 1)

theorem P5265838265426207479.correct : P5265838265426207479.Spec := by
  intro n
  simp only [A056348, Nat.add_sub_cancel]

end A056348

/-! ## A056348.P5661232777188938733

`(2*n+1-A028310(2*n))*A001371(n+1)`
-/

namespace A056348.P5661232777188938733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A028310 (2 * n)) * A001371 (n + 1)

end

end A056348.P5661232777188938733

namespace A056348

/-- `(2*n+1-A028310(2*n))*A001371(n+1)` -/
def P5661232777188938733.Spec : Prop :=
  ∀ n, P5661232777188938733.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P12992830299825474666

`(A115119(n+1)-A000029(n+1))*A057428(n)`
-/

namespace A056348.P12992830299825474666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115119 (n + 1) - A000029 (n + 1)) * A057428 n

end

end A056348.P12992830299825474666

namespace A056348

/-- `(A115119(n+1)-A000029(n+1))*A057428(n)` -/
def P12992830299825474666.Spec : Prop :=
  ∀ n, P12992830299825474666.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P3413247565295069812

`(A065033(2*n+1)-A065033(2*n))*A001371(n+1)`
-/

namespace A056348.P3413247565295069812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n + 1) - A065033 (2 * n)) * A001371 (n + 1)

end

end A056348.P3413247565295069812

namespace A056348

/-- `(A065033(2*n+1)-A065033(2*n))*A001371(n+1)` -/
def P3413247565295069812.Spec : Prop :=
  ∀ n, P3413247565295069812.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P944945588380893959

`A001371(n+1)%A008965(n+1)`
-/

namespace A056348.P944945588380893959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001371 (n + 1)) (A008965 (n + 1))

end

end A056348.P944945588380893959

namespace A056348

/-- `A001371(n+1)%A008965(n+1)` -/
def P944945588380893959.Spec : Prop :=
  ∀ n, P944945588380893959.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P14782890773911725616

`A001371(n+1)%A000051(n)`
-/

namespace A056348.P14782890773911725616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001371 (n + 1)) (A000051 n)

end

end A056348.P14782890773911725616

namespace A056348

/-- `A001371(n+1)%A000051(n)` -/
def P14782890773911725616.Spec : Prop :=
  ∀ n, P14782890773911725616.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P14822603217721274925

`and(A000225(n), A001371(n+1))`
-/

namespace A056348.P14822603217721274925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A001371 (n + 1))

end

end A056348.P14822603217721274925

namespace A056348

/-- `and(A000225(n), A001371(n+1))` -/
def P14822603217721274925.Spec : Prop :=
  ∀ n, P14822603217721274925.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P13235357084431426061

`and(∑[A000079(n)], A001371(n+1))`
-/

namespace A056348.P13235357084431426061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A001371 (n + 1))

end

end A056348.P13235357084431426061

namespace A056348

/-- `and(∑[A000079(n)], A001371(n+1))` -/
def P13235357084431426061.Spec : Prop :=
  ∀ n, P13235357084431426061.a n = A056348 (n + 1)

end A056348

/-! ## A056348.P3539577185522144003

`and(A000079(n+1)-1, A001371(n+1))`
-/

namespace A056348.P3539577185522144003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 (n + 1) - 1) (A001371 (n + 1))

end

end A056348.P3539577185522144003

namespace A056348

/-- `and(A000079(n+1)-1, A001371(n+1))` -/
def P3539577185522144003.Spec : Prop :=
  ∀ n, P3539577185522144003.a n = A056348 (n + 1)

end A056348

/-!
# A056349: Number of primitive (period n) bracelets using exactly three different colored beads.

The programs for A056349, the canonical program `A056349.P11554127501764149273` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056349 has offset 1).

The definition of A056349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056349.P11554127501764149273

`∑{d}[n+1, A008683(#)*A056343((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056349

/-- `∑{d}[n+1, A008683(#)*A056343((n+1)/#)]` -/
def P11554127501764149273.Spec : Prop :=
  ∀ n, P11554127501764149273.a n = A056349 (n + 1)

theorem P11554127501764149273.correct : P11554127501764149273.Spec := by
  intro n
  simp only [A056349, Nat.add_sub_cancel]

end A056349

/-! ## A056349.P9947805873144716285

`(A056499(n+1)+A056288(n+1))/2`
-/

namespace A056349.P9947805873144716285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056499 (n + 1) + A056288 (n + 1) : ℚ) / 2

end

end A056349.P9947805873144716285

namespace A056349

/-- `(A056499(n+1)+A056288(n+1))/2` -/
def P9947805873144716285.Spec : Prop :=
  ∀ n, P9947805873144716285.a n = (A056349 (n + 1) : ℚ)

end A056349

/-! ## A056349.P6624675312852677614

`A326660(n+1)+A056499(n+1)`
-/

namespace A056349.P6624675312852677614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326660 (n + 1) + A056499 (n + 1)

end

end A056349.P6624675312852677614

namespace A056349

/-- `A326660(n+1)+A056499(n+1)` -/
def P6624675312852677614.Spec : Prop :=
  ∀ n, P6624675312852677614.a n = A056349 (n + 1)

end A056349

/-! ## A056349.P9720107794648517316

`A056288(n+1)-A326660(n+1)`
-/

namespace A056349.P9720107794648517316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - A326660 (n + 1)

end

end A056349.P9720107794648517316

namespace A056349

/-- `A056288(n+1)-A326660(n+1)` -/
def P9720107794648517316.Spec : Prop :=
  ∀ n, P9720107794648517316.a n = A056349 (n + 1)

end A056349

/-! ## A056349.P819081396061696751

`A309651(A152950(n+1))+A056499(n+1)`
-/

namespace A056349.P819081396061696751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (A152950 (n + 1)).toNat + A056499 (n + 1)

end

end A056349.P819081396061696751

namespace A056349

/-- `A309651(A152950(n+1))+A056499(n+1)` -/
def P819081396061696751.Spec : Prop :=
  ∀ n, P819081396061696751.a n = A056349 (n + 1)

end A056349

/-! ## A056349.P1804680750030538900

`A056288(n+1)-A309651(A152950(n+1))`
-/

namespace A056349.P1804680750030538900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - A309651 (A152950 (n + 1)).toNat

end

end A056349.P1804680750030538900

namespace A056349

/-- `A056288(n+1)-A309651(A152950(n+1))` -/
def P1804680750030538900.Spec : Prop :=
  ∀ n, P1804680750030538900.a n = A056349 (n + 1)

end A056349

/-!
# A056350: Number of primitive (period n) bracelets using exactly four different colored beads.

The programs for A056350, the canonical program `A056350.P5772277267185425881` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056350 has offset 1).

The definition of A056350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056350.P5772277267185425881

`A326789(n+1)+A056500(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056350

/-- `A326789(n+1)+A056500(n+1)` -/
def P5772277267185425881.Spec : Prop :=
  ∀ n, P5772277267185425881.a n = A056350 (n + 1)

theorem P5772277267185425881.correct : P5772277267185425881.Spec := by
  intro n
  simp only [A056350, Nat.add_sub_cancel]

end A056350

/-! ## A056350.P3493572781239555048

`∑{d}[n+1, A008683(#)*A056344((n+1)/#)]`
-/

namespace A056350.P3493572781239555048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056350.P3493572781239555048

namespace A056350

/-- `∑{d}[n+1, A008683(#)*A056344((n+1)/#)]` -/
def P3493572781239555048.Spec : Prop :=
  ∀ n, P3493572781239555048.a n = A056350 (n + 1)

end A056350

/-! ## A056350.P2727618900799936145

`A056289(n+1)-A326789(n+1)`
-/

namespace A056350.P2727618900799936145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056289 (n + 1) - A326789 (n + 1)

end

end A056350.P2727618900799936145

namespace A056350

/-- `A056289(n+1)-A326789(n+1)` -/
def P2727618900799936145.Spec : Prop :=
  ∀ n, P2727618900799936145.a n = A056350 (n + 1)

end A056350

/-! ## A056350.P10285230214615467561

`(A056500(n+1)+A056289(n+1))/2`
-/

namespace A056350.P10285230214615467561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056500 (n + 1) + A056289 (n + 1) : ℚ) / 2

end

end A056350.P10285230214615467561

namespace A056350

/-- `(A056500(n+1)+A056289(n+1))/2` -/
def P10285230214615467561.Spec : Prop :=
  ∀ n, P10285230214615467561.a n = (A056350 (n + 1) : ℚ)

end A056350

/-!
# A056351: Number of primitive (period n) bracelets using exactly five different colored beads.

The programs for A056351, there is no canonical definition to state claims against.
-/

/-! ## A056351.P11751189064127949707

`∑{d}[n+1, A008683(#)*A056345((n+1)/#)]`
-/

namespace A056351.P11751189064127949707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056351.P11751189064127949707

/-! ## A056351.P7533766357235900256

`∑{d}[n+1, A056345(#)*A069158((n+1)/#)]`
-/

namespace A056351.P7533766357235900256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056345 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056351.P7533766357235900256

/-! ## A056351.P1393586029868786128

`∑{d}[n+1, A056345(#)*A253206((n+1)/#)]`
-/

namespace A056351.P1393586029868786128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056345 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056351.P1393586029868786128

/-!
# A056352: Number of primitive (period n) bracelets using exactly six different colored beads.

The programs for A056352, there is no canonical definition to state claims against.
-/

/-! ## A056352.P2810086314347486778

`∑{d}[n+1, A008683(#)*A056346((n+1)/#)]`
-/

namespace A056352.P2810086314347486778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056352.P2810086314347486778

/-! ## A056352.P16921783472467199475

`∑{d}[n+1, A056346(#)*A069158((n+1)/#)]`
-/

namespace A056352.P16921783472467199475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056346 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056352.P16921783472467199475

/-! ## A056352.P1839241167292267145

`∑{d}[n+1, A056346(#)*A352953((n+1)/#)]`
-/

namespace A056352.P1839241167292267145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056346 d * A352953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056352.P1839241167292267145

/-!
# A056353: Number of bracelet structures using a maximum of three different colored beads.

The programs for A056353, there is no canonical definition to state claims against.
-/

/-! ## A056353.P10357137213495937247

`∑{d}[A028310(n), A056362(#)]`
-/

namespace A056353.P10357137213495937247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056362 d

end

end A056353.P10357137213495937247

/-! ## A056353.P645434152778352018

`(A182522(n)+A002076(n))/2`
-/

namespace A056353.P645434152778352018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182522 n + A002076 n : ℚ) / 2

end

end A056353.P645434152778352018

/-! ## A056353.P9719245437477991010

`A056354(n)-A056359(A028310(n))`
-/

namespace A056353.P9719245437477991010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056354 n - A056359 (A028310 n).toNat

end

end A056353.P9719245437477991010

/-! ## A056353.P11556387800723358145

`A056354(n)-A056359(A233583(n+1))`
-/

namespace A056353.P11556387800723358145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056354 n - A056359 (A233583 (n + 1)).toNat

end

end A056353.P11556387800723358145

/-! ## A056353.P5297147311056348206

`A320748(∑[n+2]-1)`
-/

namespace A056353.P5297147311056348206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A056353.P5297147311056348206

/-!
# A056354: Number of bracelet structures using a maximum of four different colored beads.

The programs for A056354, there is no canonical definition to state claims against.
-/

/-! ## A056354.P17586502576729551142

`∑{d}[A028310(n), A056363(#)]`
-/

namespace A056354.P17586502576729551142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056363 d

end

end A056354.P17586502576729551142

/-! ## A056354.P11070331756513710527

`A056359(abs(1-n)+1)+A056353(n)`
-/

namespace A056354.P11070331756513710527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056359 (|1 - (n : ℤ)| + 1).toNat + A056353 n

end

end A056354.P11070331756513710527

/-! ## A056354.P15628072501341750545

`A320744(round(sqrt(n²+1)))+A305750(n)`
-/

namespace A056354.P15628072501341750545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A305750 n

end

end A056354.P15628072501341750545

/-! ## A056354.P417159682637841333

`A320748(∑[n+3])`
-/

namespace A056354.P417159682637841333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056354.P417159682637841333

/-! ## A056354.P2147032600572259336

`or(char[1], A320748(A055998(n+1)))`
-/

namespace A056354.P2147032600572259336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A320748 (A055998 (n + 1)).toNat)

end

end A056354.P2147032600572259336

/-!
# A056355: Number of bracelet structures using a maximum of five different colored beads.

The programs for A056355, there is no canonical definition to state claims against.
-/

/-! ## A056355.P4000560566766282715

`∑{d}[A028310(n), A056364(#)]`
-/

namespace A056355.P4000560566766282715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056364 d

end

end A056355.P4000560566766282715

/-! ## A056355.P1535498649631294700

`∑{d}[A101279(2*n+1), A056364(#)]`
-/

namespace A056355.P1535498649631294700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056364 d

end

end A056355.P1535498649631294700

/-! ## A056355.P13374413898855848454

`A056360(round(acot(n)+n))+A056354(n)`
-/

namespace A056355.P13374413898855848454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056360 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A056354 n

end

end A056355.P13374413898855848454

/-! ## A056355.P9174625788975325564

`A056360(A028310(n))+A056354(n)`
-/

namespace A056355.P9174625788975325564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056360 (A028310 n).toNat + A056354 n

end

end A056355.P9174625788975325564

/-! ## A056355.P7142537300968339699

`A056356(n)-A056361(round(acot(n)+n))`
-/

namespace A056355.P7142537300968339699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 n - A056361 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A056355.P7142537300968339699

/-!
# A056356: Number of bracelet structures using a maximum of six different colored beads.

The programs for A056356, there is no canonical definition to state claims against.
-/

/-! ## A056356.P12134138742106846561

`∑{d}[A028310(n), A056365(#)]`
-/

namespace A056356.P12134138742106846561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056365 d

end

end A056356.P12134138742106846561

/-! ## A056356.P4658486075392311908

`∑{d}[A004273(n)+1-n, A056365(#)]`
-/

namespace A056356.P4658486075392311908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056365 d

end

end A056356.P4658486075392311908

/-! ## A056356.P845568402934968110

`A056361(A028310(n))+A056355(n)`
-/

namespace A056356.P845568402934968110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (A028310 n).toNat + A056355 n

end

end A056356.P845568402934968110

/-! ## A056356.P119925577647444464

`A320746(A028310(n))+A305752(n)`
-/

namespace A056356.P119925577647444464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320746 (A028310 n).toNat + A305752 n

end

end A056356.P119925577647444464

/-! ## A056356.P3769780863992018765

`∑{d}[A008619(A004275(n)), A056365(#)]`
-/

namespace A056356.P3769780863992018765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056365 d

end

end A056356.P3769780863992018765

/-! ## A056356.P1056790119760065890

`A056361(A233583(n+1))+A056355(n)`
-/

namespace A056356.P1056790119760065890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (A233583 (n + 1)).toNat + A056355 n

end

end A056356.P1056790119760065890

/-! ## A056356.P12756422955361947574

`A320746(A233583(n+1))+A305752(n)`
-/

namespace A056356.P12756422955361947574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320746 (A233583 (n + 1)).toNat + A305752 n

end

end A056356.P12756422955361947574

/-! ## A056356.P12210045793435399234

`A056361(A065033(2*n))+A056355(n)`
-/

namespace A056356.P12210045793435399234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (A065033 (2 * n)).toNat + A056355 n

end

end A056356.P12210045793435399234

/-! ## A056356.P8693969658105097456

`A056361(A000007(n)+n)+A056355(n)`
-/

namespace A056356.P8693969658105097456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (A000007 n + (n : ℤ)).toNat + A056355 n

end

end A056356.P8693969658105097456

/-!
# A056357: Number of bracelet structures using exactly two different colored beads.

The programs for A056357, the canonical program `A056357.P954925566983066654` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056357 has offset 1).

The definition of A056357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056357.P954925566983066654

`∑[abs(Δ[A000011(n)])]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056357

/-- `∑[abs(Δ[A000011(n)])]` -/
def P954925566983066654.Spec : Prop :=
  ∀ n, P954925566983066654.a n = A056357 (n + 1)

theorem P954925566983066654.correct : P954925566983066654.Spec := by
  intro n
  simp only [A056357, Nat.add_sub_cancel]

end A056357

/-! ## A056357.P4842207205344538288

`A000011(n+1)-1`
-/

namespace A056357.P4842207205344538288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) - 1

end

end A056357.P4842207205344538288

namespace A056357

/-- `A000011(n+1)-1` -/
def P4842207205344538288.Spec : Prop :=
  ∀ n, P4842207205344538288.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P17956245612886818032

`∑{d}[n+1, A056366(#)]`
-/

namespace A056357.P17956245612886818032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056366 d

end

end A056357.P17956245612886818032

namespace A056357

/-- `∑{d}[n+1, A056366(#)]` -/
def P17956245612886818032.Spec : Prop :=
  ∀ n, P17956245612886818032.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P17224588065380569844

`A016116(n+1)+A059053(n+1)-1`
-/

namespace A056357.P17224588065380569844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A059053 (n + 1) - 1)

end

end A056357.P17224588065380569844

namespace A056357

/-- `A016116(n+1)+A059053(n+1)-1` -/
def P17224588065380569844.Spec : Prop :=
  ∀ n, P17224588065380569844.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P8002061220962424503

`A059053(n+1)+A131572(n+1)-1`
-/

namespace A056357.P8002061220962424503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + (A131572 (n + 1) - 1)

end

end A056357.P8002061220962424503

namespace A056357

/-- `A059053(n+1)+A131572(n+1)-1` -/
def P8002061220962424503.Spec : Prop :=
  ∀ n, P8002061220962424503.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P15173782998363315154

`A256216(n+1)+A256217(n+1)-1`
-/

namespace A056357.P15173782998363315154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1) + (A256217 (n + 1) - 1)

end

end A056357.P15173782998363315154

namespace A056357

/-- `A256216(n+1)+A256217(n+1)-1` -/
def P15173782998363315154.Spec : Prop :=
  ∀ n, P15173782998363315154.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P2743744725323992158

`A052551(n+1)+A059053(n+1)-A060546(n)`
-/

namespace A056357.P2743744725323992158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) + (A059053 (n + 1) - A060546 n)

end

end A056357.P2743744725323992158

namespace A056357

/-- `A052551(n+1)+A059053(n+1)-A060546(n)` -/
def P2743744725323992158.Spec : Prop :=
  ∀ n, P2743744725323992158.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P620813765064080375

`A091696(n+1)-A007147(n+1)`
-/

namespace A056357.P620813765064080375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) - A007147 (n + 1)

end

end A056357.P620813765064080375

namespace A056357

/-- `A091696(n+1)-A007147(n+1)` -/
def P620813765064080375.Spec : Prop :=
  ∀ n, P620813765064080375.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P10244607743806412054

`A056295(n+1)-A059053(n+1)`
-/

namespace A056357.P10244607743806412054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (n + 1) - A059053 (n + 1)

end

end A056357.P10244607743806412054

namespace A056357

/-- `A056295(n+1)-A059053(n+1)` -/
def P10244607743806412054.Spec : Prop :=
  ∀ n, P10244607743806412054.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P9644082748345535297

`A000013(n+1)-(A059053(n+1)+1)`
-/

namespace A056357.P9644082748345535297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) - (A059053 (n + 1) + 1)

end

end A056357.P9644082748345535297

namespace A056357

/-- `A000013(n+1)-(A059053(n+1)+1)` -/
def P9644082748345535297.Spec : Prop :=
  ∀ n, P9644082748345535297.a n = A056357 (n + 1)

end A056357

/-! ## A056357.P10810841637671234916

`A053656(n+1)-(A256216(n+1)+1)`
-/

namespace A056357.P10810841637671234916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) - (A256216 (n + 1) + 1)

end

end A056357.P10810841637671234916

namespace A056357

/-- `A053656(n+1)-(A256216(n+1)+1)` -/
def P10810841637671234916.Spec : Prop :=
  ∀ n, P10810841637671234916.a n = A056357 (n + 1)

end A056357

/-!
# A056358: Number of bracelet structures using exactly three different colored beads.

The programs for A056358, there is no canonical definition to state claims against.
-/

/-! ## A056358.P2065671661416841607

`A320643(n+1)+A304973(n+1)`
-/

namespace A056358.P2065671661416841607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320643 (n + 1) + A304973 (n + 1)

end

end A056358.P2065671661416841607

/-! ## A056358.P2192001829751392242

`A056353(n+1)-A000011(n+1)`
-/

namespace A056358.P2192001829751392242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056353 (n + 1) - A000011 (n + 1)

end

end A056358.P2192001829751392242

/-! ## A056358.P3256295793268951333

`A056296(n+1)-A320643(n+1)`
-/

namespace A056358.P3256295793268951333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056296 (n + 1) - A320643 (n + 1)

end

end A056358.P3256295793268951333

/-! ## A056358.P2699919591541633471

`A000016(n+1)+A002076(n+1)-A000031(n+1)-A320643(n+1)`
-/

namespace A056358.P2699919591541633471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A002076 (n + 1) - A000031 (n + 1)) - A320643 (n + 1)

end

end A056358.P2699919591541633471

/-! ## A056358.P6388881249010915608

`A056354(n+1)-(A056359(n+1)+A000011(n+1))`
-/

namespace A056358.P6388881249010915608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056354 (n + 1) - (A056359 (n + 1) + A000011 (n + 1))

end

end A056358.P6388881249010915608

/-!
# A056359: Number of bracelet structures using exactly four different colored beads.

The programs for A056359, there is no canonical definition to state claims against.
-/

/-! ## A056359.P17856975480769627810

`∑{d}[n+1, A056368(#)]`
-/

namespace A056359.P17856975480769627810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056368 d

end

end A056359.P17856975480769627810

/-! ## A056359.P751865704840287691

`A320644(n+1)+A304974(n+1)`
-/

namespace A056359.P751865704840287691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320644 (n + 1) + A304974 (n + 1)

end

end A056359.P751865704840287691

/-! ## A056359.P11043134871568097204

`A056354(n+1)-A056353(n+1)`
-/

namespace A056359.P11043134871568097204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056354 (n + 1) - A056353 (n + 1)

end

end A056359.P11043134871568097204

/-! ## A056359.P11256007157127382138

`A056297(n+1)-A320644(n+1)`
-/

namespace A056359.P11256007157127382138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056297 (n + 1) - A320644 (n + 1)

end

end A056359.P11256007157127382138

/-! ## A056359.P8667249241239980747

`A056292(n+1)-A002076(n+1)-A320644(n+1)`
-/

namespace A056359.P8667249241239980747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1) - A002076 (n + 1) - A320644 (n + 1)

end

end A056359.P8667249241239980747

/-! ## A056359.P12179106112930926504

`A056328(n+1)+A320644(n+1)-A320527(n+1)`
-/

namespace A056359.P12179106112930926504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) + (A320644 (n + 1) - A320527 (n + 1))

end

end A056359.P12179106112930926504

/-! ## A056359.P2308117142912012312

`A056297(n+1)-A320647(A145018(n+1))`
-/

namespace A056359.P2308117142912012312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056297 (n + 1) - A320647 (A145018 (n + 1)).toNat

end

end A056359.P2308117142912012312

/-!
# A056360: Number of bracelet structures using exactly five different colored beads.

The programs for A056360, there is no canonical definition to state claims against.
-/

/-! ## A056360.P13433410526738877422

`∑{d}[n+1, A056369(#)]`
-/

namespace A056360.P13433410526738877422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056369 d

end

end A056360.P13433410526738877422

/-! ## A056360.P6265044547035284026

`A320645(n+1)+A304975(n+1)`
-/

namespace A056360.P6265044547035284026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320645 (n + 1) + A304975 (n + 1)

end

end A056360.P6265044547035284026

/-! ## A056360.P2864030043929323076

`A056355(n+1)-A056354(n+1)`
-/

namespace A056360.P2864030043929323076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056355 (n + 1) - A056354 (n + 1)

end

end A056360.P2864030043929323076

/-! ## A056360.P6561163081187814922

`A056298(n+1)-A320645(n+1)`
-/

namespace A056360.P6561163081187814922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056298 (n + 1) - A320645 (n + 1)

end

end A056360.P6561163081187814922

/-! ## A056360.P7107302303879190011

`A056293(n+1)-(A320645(n+1)+A056292(n+1))`
-/

namespace A056360.P7107302303879190011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) - (A320645 (n + 1) + A056292 (n + 1))

end

end A056360.P7107302303879190011

/-!
# A056361: Number of bracelet structures using exactly six different colored beads.

The programs for A056361, there is no canonical definition to state claims against.
-/

/-! ## A056361.P8386403671308465447

`∑{d}[n+1, A056370(#)]`
-/

namespace A056361.P8386403671308465447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056370 d

end

end A056361.P8386403671308465447

/-! ## A056361.P6971014635469403092

`A320646(n+1)+A304976(n+1)`
-/

namespace A056361.P6971014635469403092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320646 (n + 1) + A304976 (n + 1)

end

end A056361.P6971014635469403092

/-! ## A056361.P4997868692574718070

`A056356(n+1)-A056355(n+1)`
-/

namespace A056361.P4997868692574718070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 (n + 1) - A056355 (n + 1)

end

end A056361.P4997868692574718070

/-! ## A056361.P10174685227089450095

`A056299(n+1)-A320646(n+1)`
-/

namespace A056361.P10174685227089450095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056299 (n + 1) - A320646 (n + 1)

end

end A056361.P10174685227089450095

/-! ## A056361.P4757373686573292392

`A056294(n+1)-(A320646(n+1)+A056293(n+1))`
-/

namespace A056361.P4757373686573292392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - (A320646 (n + 1) + A056293 (n + 1))

end

end A056361.P4757373686573292392

/-!
# A056362: Number of primitive (period n) bracelet structures using a maximum of three different colored beads.

The programs for A056362, there is no canonical definition to state claims against.
-/

/-! ## A056362.P8309181162990775350

`A328657(A028310(n))+A056514(n)`
-/

namespace A056362.P8309181162990775350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (A028310 n).toNat + A056514 n

end

end A056362.P8309181162990775350

/-! ## A056362.P13457381922464044299

`A328657(A233583(n+1))+A056514(n)`
-/

namespace A056362.P13457381922464044299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (A233583 (n + 1)).toNat + A056514 n

end

end A056362.P13457381922464044299

/-! ## A056362.P16258585543167804977

`A056367(A028310(n))+A000046(n)`
-/

namespace A056362.P16258585543167804977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056367 (A028310 n).toNat + A000046 n

end

end A056362.P16258585543167804977

/-! ## A056362.P3489944997850824342

`A056367(A233583(n+1))+A000046(n)`
-/

namespace A056362.P3489944997850824342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056367 (A233583 (n + 1)).toNat + A000046 n

end

end A056362.P3489944997850824342

/-! ## A056362.P6866086688520597829

`A276543(A238531(n))+A056367(A233583(n+1))`
-/

namespace A056362.P6866086688520597829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A238531 n).toNat + A056367 (A233583 (n + 1)).toNat

end

end A056362.P6866086688520597829

/-!
# A056363: Number of primitive (period n) bracelet structures using a maximum of four different colored beads.

The programs for A056363, there is no canonical definition to state claims against.
-/

/-! ## A056363.P6955006001420346176

`A056368(A028310(n))+A056362(n)`
-/

namespace A056363.P6955006001420346176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (A028310 n).toNat + A056362 n

end

end A056363.P6955006001420346176

/-! ## A056363.P9626736379279577638

`A328658(A028310(n))+A056515(n)`
-/

namespace A056363.P9626736379279577638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328658 (A028310 n).toNat + A056515 n

end

end A056363.P9626736379279577638

/-! ## A056363.P8202906428707084738

`A056368(A233583(n+1))+A056362(n)`
-/

namespace A056363.P8202906428707084738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (A233583 (n + 1)).toNat + A056362 n

end

end A056363.P8202906428707084738

/-! ## A056363.P8497477636604327297

`A328658(A233583(n+1))+A056515(n)`
-/

namespace A056363.P8497477636604327297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328658 (A233583 (n + 1)).toNat + A056515 n

end

end A056363.P8497477636604327297

/-! ## A056363.P9119264495185116147

`A056368(A000007(n)+n)+A056362(n)`
-/

namespace A056363.P9119264495185116147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (A000007 n + (n : ℤ)).toNat + A056362 n

end

end A056363.P9119264495185116147

/-!
# A056364: Number of primitive (period n) bracelet structures using a maximum of five different colored beads.

The programs for A056364, there is no canonical definition to state claims against.
-/

/-! ## A056364.P10928726740861448921

`A056369(abs(1-n)+1)+A056363(n)`
-/

namespace A056364.P10928726740861448921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056369 (|1 - (n : ℤ)| + 1).toNat + A056363 n

end

end A056364.P10928726740861448921

/-! ## A056364.P6582115966855200110

`A056365(n)-A056370(round(sqrt(n²+1)))`
-/

namespace A056364.P6582115966855200110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056365 n - A056370 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A056364.P6582115966855200110

/-! ## A056364.P7204189158770509780

`A028310(A056365(n))-A056361(A028310(n))`
-/

namespace A056364.P7204189158770509780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056365 n).toNat - A056361 (A028310 n).toNat

end

end A056364.P7204189158770509780

/-!
# A056365: Number of primitive (period n) bracelet structures using a maximum of six different colored beads.

The programs for A056365, there is no canonical definition to state claims against.
-/

/-! ## A056365.P16533397268999260361

`A056370(abs(1-n)+1)+A056364(n)`
-/

namespace A056365.P16533397268999260361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056370 (|1 - (n : ℤ)| + 1).toNat + A056364 n

end

end A056365.P16533397268999260361

/-! ## A056365.P9335552721437309866

`A056370(A028310(n))+A028310(A056364(n))`
-/

namespace A056365.P9335552721437309866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056370 (A028310 n).toNat + A028310 (A056364 n).toNat

end

end A056365.P9335552721437309866

/-!
# A056366: Number of primitive (period n) bracelet structures using exactly two different colored beads.

The programs for A056366, the canonical program `A056366.P11464598418181165535` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056366 has offset 1).

The definition of A056366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056366.P7833367673363860687

`A000046(n+1)-C(2, n+2)`
-/

namespace A056366.P7833367673363860687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A056366.P7833367673363860687

namespace A056366

/-- `A000046(n+1)-C(2, n+2)` -/
def P7833367673363860687.Spec : Prop :=
  ∀ n, P7833367673363860687.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P1049814690296584702

`A000046(n+1)-A000007(n)`
-/

namespace A056366.P1049814690296584702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A000007 n

end

end A056366.P1049814690296584702

namespace A056366

/-- `A000046(n+1)-A000007(n)` -/
def P1049814690296584702.Spec : Prop :=
  ∀ n, P1049814690296584702.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P11635967925249338676

`A000046(n+1)*A057427(n)`
-/

namespace A056366.P11635967925249338676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) * A057427 n

end

end A056366.P11635967925249338676

namespace A056366

/-- `A000046(n+1)*A057427(n)` -/
def P11635967925249338676.Spec : Prop :=
  ∀ n, P11635967925249338676.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P4156050327411448037

`A000046(n+1)%A000029(n)`
-/

namespace A056366.P4156050327411448037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000046 (n + 1)) (A000029 n)

end

end A056366.P4156050327411448037

namespace A056366

/-- `A000046(n+1)%A000029(n)` -/
def P4156050327411448037.Spec : Prop :=
  ∀ n, P4156050327411448037.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P7061504370741134617

`xor(A000007(2*n), A000046(n+1))`
-/

namespace A056366.P7061504370741134617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A000046 (n + 1))

end

end A056366.P7061504370741134617

namespace A056366

/-- `xor(A000007(2*n), A000046(n+1))` -/
def P7061504370741134617.Spec : Prop :=
  ∀ n, P7061504370741134617.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P4843535545005540086

`A000046(n+1)-val(A000040(n+1), 2)`
-/

namespace A056366.P4843535545005540086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A056366.P4843535545005540086

namespace A056366

/-- `A000046(n+1)-val(A000040(n+1), 2)` -/
def P4843535545005540086.Spec : Prop :=
  ∀ n, P4843535545005540086.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P12335495016299210526

`A000046(n+1)-val(A004680(n+1), 2)`
-/

namespace A056366.P12335495016299210526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - (SequenceMachineLib.valuation (A004680 (n + 1)).toNat 2 : ℤ)

end

end A056366.P12335495016299210526

namespace A056366

/-- `A000046(n+1)-val(A004680(n+1), 2)` -/
def P12335495016299210526.Spec : Prop :=
  ∀ n, P12335495016299210526.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P9449261236039206284

`A000046(n+1)-A065033(2*n)+n`
-/

namespace A056366.P9449261236039206284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A065033 (2 * n) + (n : ℤ)

end

end A056366.P9449261236039206284

namespace A056366

/-- `A000046(n+1)-A065033(2*n)+n` -/
def P9449261236039206284.Spec : Prop :=
  ∀ n, P9449261236039206284.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P11464598418181165535

`∑{d}[n+1, A008683(#)*A056357((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056366

/-- `∑{d}[n+1, A008683(#)*A056357((n+1)/#)]` -/
def P11464598418181165535.Spec : Prop :=
  ∀ n, P11464598418181165535.a n = A056366 (n + 1)

theorem P11464598418181165535.correct : P11464598418181165535.Spec := by
  intro n
  simp only [A056366, Nat.add_sub_cancel]

end A056366

/-! ## A056366.P14705665490478276799

`(2*n+1-A028310(2*n))*A000046(n+1)`
-/

namespace A056366.P14705665490478276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A028310 (2 * n)) * A000046 (n + 1)

end

end A056366.P14705665490478276799

namespace A056366

/-- `(2*n+1-A028310(2*n))*A000046(n+1)` -/
def P14705665490478276799.Spec : Prop :=
  ∀ n, P14705665490478276799.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P3893878242180567928

`A000035(A000040(n+1))*A000046(n+1)`
-/

namespace A056366.P3893878242180567928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat * A000046 (n + 1)

end

end A056366.P3893878242180567928

namespace A056366

/-- `A000035(A000040(n+1))*A000046(n+1)` -/
def P3893878242180567928.Spec : Prop :=
  ∀ n, P3893878242180567928.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P16967219154972803922

`A000046(n+1)*A193239(A053644(n+1))`
-/

namespace A056366.P16967219154972803922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) * A193239 (A053644 (n + 1)).toNat

end

end A056366.P16967219154972803922

namespace A056366

/-- `A000046(n+1)*A193239(A053644(n+1))` -/
def P16967219154972803922.Spec : Prop :=
  ∀ n, P16967219154972803922.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P9629534770162669974

`round(A000046(n+1)-A016924(n)/A016925(n))`
-/

namespace A056366.P9629534770162669974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000046 (n + 1) : ℚ) - (A016924 n : ℚ) / (A016925 n : ℚ))

end

end A056366.P9629534770162669974

namespace A056366

/-- `round(A000046(n+1)-A016924(n)/A016925(n))` -/
def P9629534770162669974.Spec : Prop :=
  ∀ n, P9629534770162669974.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P17453383113580300362

`A053644(2*n)+A000046(n+1)-A053644(2*n+1)`
-/

namespace A056366.P17453383113580300362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n) + (A000046 (n + 1) - A053644 (2 * n + 1))

end

end A056366.P17453383113580300362

namespace A056366

/-- `A053644(2*n)+A000046(n+1)-A053644(2*n+1)` -/
def P17453383113580300362.Spec : Prop :=
  ∀ n, P17453383113580300362.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P12740702408867574949

`(A233583(2*(n+1))-A233583(2*n+1))*A000046(n+1)`
-/

namespace A056366.P12740702408867574949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * (n + 1)) - A233583 (2 * n + 1)) * A000046 (n + 1)

end

end A056366.P12740702408867574949

namespace A056366

/-- `(A233583(2*(n+1))-A233583(2*n+1))*A000046(n+1)` -/
def P12740702408867574949.Spec : Prop :=
  ∀ n, P12740702408867574949.a n = A056366 (n + 1)

end A056366

/-! ## A056366.P12532340777304410247

`A000046(n+1)-A331739(A045392(n+1))`
-/

namespace A056366.P12532340777304410247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A331739 (A045392 (n + 1)).toNat

end

end A056366.P12532340777304410247

namespace A056366

/-- `A000046(n+1)-A331739(A045392(n+1))` -/
def P12532340777304410247.Spec : Prop :=
  ∀ n, P12532340777304410247.a n = A056366 (n + 1)

end A056366

/-!
# A056367: Number of primitive (period n) bracelet structures using exactly three different colored beads.

The programs for A056367, there is no canonical definition to state claims against.
-/

/-! ## A056367.P1641693641829279298

`A276543(A133263(n)+1)`
-/

namespace A056367.P1641693641829279298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A133263 n + 1).toNat

end

end A056367.P1641693641829279298

/-! ## A056367.P4101238416267284432

`A276543(∑[A233583(n+1)])`
-/

namespace A056367.P4101238416267284432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056367.P4101238416267284432

/-! ## A056367.P672886623676645605

`A276543(A238531(n+1)+1)`
-/

namespace A056367.P672886623676645605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A238531 (n + 1) + 1).toNat

end

end A056367.P672886623676645605

/-! ## A056367.P7472793690103786275

`A276543(∑[n+2]-A004273(n))`
-/

namespace A056367.P7472793690103786275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004273 n).toNat

end

end A056367.P7472793690103786275

/-! ## A056367.P12796071392776845155

`A328038(n+1)+A056519(n+1)`
-/

namespace A056367.P12796071392776845155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328038 (n + 1) + A056519 (n + 1)

end

end A056367.P12796071392776845155

/-!
# A056368: Number of primitive (period n) bracelet structures using exactly four different colored beads.

The programs for A056368, there is no canonical definition to state claims against.
-/

/-! ## A056368.P16043302107450091668

`A328039(n+1)+A056521(n+1)`
-/

namespace A056368.P16043302107450091668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328039 (n + 1) + A056521 (n + 1)

end

end A056368.P16043302107450091668

/-! ## A056368.P16816488814945609333

`A056363(n+1)-A056362(n+1)`
-/

namespace A056368.P16816488814945609333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 (n + 1) - A056362 (n + 1)

end

end A056368.P16816488814945609333

/-! ## A056368.P9716479146537667967

`∑{d}[n+1, A008683(#)*A056359((n+1)/#)]`
-/

namespace A056368.P9716479146537667967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056368.P9716479146537667967

/-! ## A056368.P11171653645849792588

`A056515(n+1)+A328039(n+1)-A056514(n+1)`
-/

namespace A056368.P11171653645849792588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056515 (n + 1) + (A328039 (n + 1) - A056514 (n + 1))

end

end A056368.P11171653645849792588

/-! ## A056368.P17730366481652945529

`A276543(A152950(n+1)+A060576(n))`
-/

namespace A056368.P17730366481652945529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A152950 (n + 1) + A060576 n).toNat

end

end A056368.P17730366481652945529

/-!
# A056369: Number of primitive (period n) bracelet structures using exactly five different colored beads.

The programs for A056369, there is no canonical definition to state claims against.
-/

/-! ## A056369.P4580093266763809551

`A056364(n+1)-A056363(n+1)`
-/

namespace A056369.P4580093266763809551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056364 (n + 1) - A056363 (n + 1)

end

end A056369.P4580093266763809551

/-! ## A056369.P16567852621207294634

`∑{d}[n+1, A008683(#)*A056360((n+1)/#)]`
-/

namespace A056369.P16567852621207294634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056360 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056369.P16567852621207294634

/-! ## A056369.P3721266419456344454

`∑{d}[n+1, A056360(#)*A069158((n+1)/#)]`
-/

namespace A056369.P3721266419456344454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056360 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056369.P3721266419456344454

/-! ## A056369.P8761436906595179350

`∑{d}[n+1, A056360(#)*A253206((n+1)/#)]`
-/

namespace A056369.P8761436906595179350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056360 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056369.P8761436906595179350

/-! ## A056369.P7918650349390411175

`A056364(n+1)-(A056368(n+1)+A056362(n+1))`
-/

namespace A056369.P7918650349390411175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056364 (n + 1) - (A056368 (n + 1) + A056362 (n + 1))

end

end A056369.P7918650349390411175

/-! ## A056369.P17225193865632547371

`A276543(A077169(n+1))`
-/

namespace A056369.P17225193865632547371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A077169 (n + 1)).toNat

end

end A056369.P17225193865632547371

/-!
# A056370: Number of primitive (period n) bracelet structures using exactly six different colored beads.

The programs for A056370, there is no canonical definition to state claims against.
-/

/-! ## A056370.P7065545960196074515

`A056365(n+1)-A056364(n+1)`
-/

namespace A056370.P7065545960196074515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056365 (n + 1) - A056364 (n + 1)

end

end A056370.P7065545960196074515

/-! ## A056370.P9628827064832981963

`∑{d}[n+1, A008683(#)*A056361((n+1)/#)]`
-/

namespace A056370.P9628827064832981963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056370.P9628827064832981963

/-! ## A056370.P16324742911502903175

`∑{d}[n+1, A056361(#)*A069158((n+1)/#)]`
-/

namespace A056370.P16324742911502903175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056361 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056370.P16324742911502903175

/-! ## A056370.P16094971816176326754

`∑{d}[n+1, A056361(#)*A133639((n+1)/#)]`
-/

namespace A056370.P16094971816176326754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056361 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056370.P16094971816176326754

/-! ## A056370.P10833910683646662006

`∑{d}[n+1, A056361(#)*A253206((n+1)/#)]`
-/

namespace A056370.P10833910683646662006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056361 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056370.P10833910683646662006

/-! ## A056370.P16707720960684566871

`A276543(A184218(n+1)+7)`
-/

namespace A056370.P16707720960684566871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A184218 (n + 1) + 7).toNat

end

end A056370.P16707720960684566871

/-! ## A056370.P12590761983431530522

`A276543(A077169(n)+1+n)`
-/

namespace A056370.P12590761983431530522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (A077169 n + 1 + (n : ℤ)).toNat

end

end A056370.P12590761983431530522

/-!
# A056371: Number of step shifted (decimated) sequences using a maximum of two different symbols.

The programs for A056371, there is no canonical definition to state claims against.
-/

/-! ## A056371.P2183461705768303800

`A056376(n+1)+2`
-/

namespace A056371.P2183461705768303800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056376 (n + 1) + 2

end

end A056371.P2183461705768303800

/-! ## A056371.P13908985737815931345

`2*A056391(n+1)`
-/

namespace A056371.P13908985737815931345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056391 (n + 1)

end

end A056371.P13908985737815931345

/-! ## A056371.P580888664873259075

`∑{d}[n+1, A056381(#)]`
-/

namespace A056371.P580888664873259075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056381 d

end

end A056371.P580888664873259075

/-! ## A056371.P14236080196567414364

`2*(A056396(n+1)+1)`
-/

namespace A056371.P14236080196567414364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056396 (n + 1) + 1)

end

end A056371.P14236080196567414364

/-! ## A056371.P6728303520665000397

`A056391(n+1)+A056396(n+1)+1`
-/

namespace A056371.P6728303520665000397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) + (A056396 (n + 1) + 1)

end

end A056371.P6728303520665000397

/-! ## A056371.P12864698971564159619

`A056391(char[3]+1+n)+A056391(n+1)`
-/

namespace A056371.P12864698971564159619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A056391 (n + 1)

end

end A056371.P12864698971564159619

/-! ## A056371.P13140654201376358947

`A056396(A000027(n+1))+A056396(n+1)+2`
-/

namespace A056371.P13140654201376358947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056396 (A000027 (n + 1)).toNat + (A056396 (n + 1) + 2)

end

end A056371.P13140654201376358947

/-! ## A056371.P7289834764876015749

`A056391(n+1)+A056391(n+1)+A000007(n+1)`
-/

namespace A056371.P7289834764876015749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) + (A056391 (n + 1) + A000007 (n + 1))

end

end A056371.P7289834764876015749

/-! ## A056371.P9776801971161079885

`2*(A056392(n+1)-A056397(n+1))`
-/

namespace A056371.P9776801971161079885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056392 (n + 1) - A056397 (n + 1))

end

end A056371.P9776801971161079885

/-! ## A056371.P17376478043645725365

`A056391(n+1)+A056392(n+1)-A056397(n+1)`
-/

namespace A056371.P17376478043645725365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) + (A056392 (n + 1) - A056397 (n + 1))

end

end A056371.P17376478043645725365

/-!
# A056372: Number of step shifted (decimated) sequences using a maximum of three different symbols.

The programs for A056372, there is no canonical definition to state claims against.
-/

/-! ## A056372.P9573115237801138300

`∑{d}[n+1, A056382(#)]`
-/

namespace A056372.P9573115237801138300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056382 d

end

end A056372.P9573115237801138300

/-! ## A056372.P551071026734568298

`A132191(∑[n+2]+4)`
-/

namespace A056372.P551071026734568298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A056372.P551071026734568298

/-! ## A056372.P12309136008928355751

`lcm(3, A132191(A167614(n+1)))`
-/

namespace A056372.P12309136008928355751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A132191 (A167614 (n + 1)).toNat)

end

end A056372.P12309136008928355751

/-! ## A056372.P15676826454909243778

`or(A000007(n), A132191(A167614(n+1)))`
-/

namespace A056372.P15676826454909243778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A132191 (A167614 (n + 1)).toNat)

end

end A056372.P15676826454909243778

/-! ## A056372.P10298348308027698501

`A132191(A167614(n+1))*A152271(2*n)`
-/

namespace A056372.P10298348308027698501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A167614 (n + 1)).toNat * A152271 (2 * n)

end

end A056372.P10298348308027698501

/-! ## A056372.P5604711797452959124

`A132191(A167614(n+1))%A283858(n+1)`
-/

namespace A056372.P5604711797452959124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132191 (A167614 (n + 1)).toNat) (A283858 (n + 1))

end

end A056372.P5604711797452959124

/-! ## A056372.P17033945203925902275

`and(A093112(2*n+1), A132191(A167614(n+1)))`
-/

namespace A056372.P17033945203925902275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093112 (2 * n + 1)) (A132191 (A167614 (n + 1)).toNat)

end

end A056372.P17033945203925902275

/-!
# A056373: Number of step shifted (decimated) sequences using a maximum of four different symbols.

The programs for A056373, there is no canonical definition to state claims against.
-/

/-! ## A056373.P3894821299806717589

`∑{d}[n+1, A056383(#)]`
-/

namespace A056373.P3894821299806717589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056383 d

end

end A056373.P3894821299806717589

/-! ## A056373.P10547025601963611042

`A132191(C(3*n+5-2*n, 2)-n)`
-/

namespace A056373.P10547025601963611042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (Nat.choose ((3 * n + 5 : ℤ) - (2 * n : ℤ)).toNat 2 - n)

end

end A056373.P10547025601963611042

/-! ## A056373.P17860498414077963127

`A132191(A052905(n)+9)`
-/

namespace A056373.P17860498414077963127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A052905 n + 9).toNat

end

end A056373.P17860498414077963127

/-! ## A056373.P14846619959896420169

`A132191(A055999(n)+10)`
-/

namespace A056373.P14846619959896420169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A055999 n + 10).toNat

end

end A056373.P14846619959896420169

/-! ## A056373.P17439831877557910491

`record[A132191(A167499(n)-1)]`
-/

namespace A056373.P17439831877557910491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056373.P17439831877557910491

/-! ## A056373.P3284665854629851692

`record[A132191(A000096(n)+5)]`
-/

namespace A056373.P3284665854629851692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056373.P3284665854629851692

/-! ## A056373.P8609503015795053124

`A132191(A167614(n+2)+1)`
-/

namespace A056373.P8609503015795053124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A167614 (n + 2) + 1).toNat

end

end A056373.P8609503015795053124

/-! ## A056373.P238788813935982987

`A132191(A166136(n+2)-2)`
-/

namespace A056373.P238788813935982987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A166136 (n + 2) - 2).toNat

end

end A056373.P238788813935982987

/-! ## A056373.P776758448729642149

`A132191(A166136(n+1)+1+n)`
-/

namespace A056373.P776758448729642149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A056373.P776758448729642149

/-!
# A056374: Number of step shifted (decimated) sequences using a maximum of five different symbols.

The programs for A056374, there is no canonical definition to state claims against.
-/

/-! ## A056374.P15975756954503983030

`∑{d}[n+1, A056384(#)]`
-/

namespace A056374.P15975756954503983030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056384 d

end

end A056374.P15975756954503983030

/-! ## A056374.P10388798263168624048

`A132191(A167499(n+3))`
-/

namespace A056374.P10388798263168624048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A167499 (n + 3)).toNat

end

end A056374.P10388798263168624048

/-! ## A056374.P18358629229693623482

`A132191(A056000(n)+15)`
-/

namespace A056374.P18358629229693623482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A056000 n + 15).toNat

end

end A056374.P18358629229693623482

/-! ## A056374.P13933062473848493081

`A132191(A133263(n+4)+3)`
-/

namespace A056374.P13933062473848493081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A133263 (n + 4) + 3).toNat

end

end A056374.P13933062473848493081

/-! ## A056374.P46875922079533773

`A132191(A152950(n+5)+2)`
-/

namespace A056374.P46875922079533773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A152950 (n + 5) + 2).toNat

end

end A056374.P46875922079533773

/-! ## A056374.P106682321762094179

`A132191(A000124(n+4)+4)`
-/

namespace A056374.P106682321762094179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000124 (n + 4) + 4).toNat

end

end A056374.P106682321762094179

/-! ## A056374.P9310207942617775539

`A132191(A000096(n+3)+6)`
-/

namespace A056374.P9310207942617775539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000096 (n + 3) + 6).toNat

end

end A056374.P9310207942617775539

/-! ## A056374.P1800440788245126858

`A132191(A000217(n+4)+5)`
-/

namespace A056374.P1800440788245126858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000217 (n + 4) + 5).toNat

end

end A056374.P1800440788245126858

/-!
# A056375: Number of step shifted (decimated) sequences using a maximum of six different symbols.

The programs for A056375, there is no canonical definition to state claims against.
-/

/-! ## A056375.P15060781956896114909

`∑{d}[n+1, A056385(#)]`
-/

namespace A056375.P15060781956896114909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056385 d

end

end A056375.P15060781956896114909

/-! ## A056375.P11504887500260020843

`A132191(A166136(n+4))`
-/

namespace A056375.P11504887500260020843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A166136 (n + 4)).toNat

end

end A056375.P11504887500260020843

/-! ## A056375.P3766691105698236667

`A132191(A167499(n+4)+1)`
-/

namespace A056375.P3766691105698236667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A167499 (n + 4) + 1).toNat

end

end A056375.P3766691105698236667

/-! ## A056375.P16455342870063989328

`A132191(A000124(n+5)+5)`
-/

namespace A056375.P16455342870063989328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000124 (n + 5) + 5).toNat

end

end A056375.P16455342870063989328

/-! ## A056375.P14257889126389647593

`A132191(A000217(n+5)+6)`
-/

namespace A056375.P14257889126389647593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A000217 (n + 5) + 6).toNat

end

end A056375.P14257889126389647593

/-! ## A056375.P3318478147817330085

`A132191(A103517(n+9)+A052905(n))`
-/

namespace A056375.P3318478147817330085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A103517 (n + 9) + A052905 n).toNat

end

end A056375.P3318478147817330085

/-! ## A056375.P7517773248475608069

`A132191(A052905(n)+A005843(n+10))`
-/

namespace A056375.P7517773248475608069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132191 (A052905 n + A005843 (n + 10)).toNat

end

end A056375.P7517773248475608069

/-!
# A056376: Number of step shifted (decimated) sequences using exactly two different symbols.

The programs for A056376, there is no canonical definition to state claims against.
-/

/-! ## A056376.P14732214712936180600

`A056371(n+1)-2`
-/

namespace A056376.P14732214712936180600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056371 (n + 1) - 2

end

end A056376.P14732214712936180600

/-! ## A056376.P9810089758107825871

`2*A056396(n+1)`
-/

namespace A056376.P9810089758107825871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056396 (n + 1)

end

end A056376.P9810089758107825871

/-! ## A056376.P16293639171709870889

`∑{d}[n+1, A056386(#)]`
-/

namespace A056376.P16293639171709870889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056386 d

end

end A056376.P16293639171709870889

/-! ## A056376.P15512992384084845397

`2*(A056391(n+1)-1)`
-/

namespace A056376.P15512992384084845397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056391 (n + 1) - 1)

end

end A056376.P15512992384084845397

/-! ## A056376.P13121576965981726447

`A056391(n+1)+A056396(n+1)-1`
-/

namespace A056376.P13121576965981726447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) + (A056396 (n + 1) - 1)

end

end A056376.P13121576965981726447

/-! ## A056376.P4224334718409503856

`A173069(A001316(n))+A056371(n+1)`
-/

namespace A056376.P4224334718409503856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (A001316 n).toNat + A056371 (n + 1)

end

end A056376.P4224334718409503856

/-! ## A056376.P16049134918905244370

`A173069(A117973(n))+A056371(n+1)`
-/

namespace A056376.P16049134918905244370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (A117973 n).toNat + A056371 (n + 1)

end

end A056376.P16049134918905244370

/-! ## A056376.P17634585376473585267

`A056396(A000027(n+1))+A056396(n+1)`
-/

namespace A056376.P17634585376473585267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056396 (A000027 (n + 1)).toNat + A056396 (n + 1)

end

end A056376.P17634585376473585267

/-! ## A056376.P10627810795262924721

`A173069(A006519(n+1))+A056371(n+1)`
-/

namespace A056376.P10627810795262924721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (A006519 (n + 1)).toNat + A056371 (n + 1)

end

end A056376.P10627810795262924721

/-! ## A056376.P8867381882750724033

`A173069(A061142(n+1))+A056371(n+1)`
-/

namespace A056376.P8867381882750724033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (A061142 (n + 1)).toNat + A056371 (n + 1)

end

end A056376.P8867381882750724033

/-!
# A056377: Number of step shifted (decimated) sequences using exactly three different symbols.

The programs for A056377, there is no canonical definition to state claims against.
-/

/-! ## A056377.P1981950167365239230

`A056372(n+1)-3*A056371(n+1)+3`
-/

namespace A056377.P1981950167365239230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056372 (n + 1) - 3 * A056371 (n + 1) + 3

end

end A056377.P1981950167365239230

/-! ## A056377.P15334924583812717631

`∑{d}[n+1, A056387(#)]`
-/

namespace A056377.P15334924583812717631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056387 d

end

end A056377.P15334924583812717631

/-! ## A056377.P7301371254571942431

`A056974(A025168(n))+A056387(n+1)`
-/

namespace A056377.P7301371254571942431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (A025168 n).toNat + A056387 (n + 1)

end

end A056377.P7301371254571942431

/-!
# A056378: Number of step shifted (decimated) sequences using exactly four different symbols.

The programs for A056378, there is no canonical definition to state claims against.
-/

/-! ## A056378.P6767683543595526859

`A056373(n+1)-4*A056372(n+1)+6*A056371(n+1)-4`
-/

namespace A056378.P6767683543595526859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056373 (n + 1) - 4 * A056372 (n + 1) + 6 * A056371 (n + 1) - 4

end

end A056378.P6767683543595526859

/-! ## A056378.P8839539906990059366

`∑{d}[n+1, A056388(#)]`
-/

namespace A056378.P8839539906990059366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056388 d

end

end A056378.P8839539906990059366

/-! ## A056378.P14967624944222196058

`A056388(∑[A053497(n)])`
-/

namespace A056378.P14967624944222196058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056378.P14967624944222196058

/-!
# A056379: Number of step shifted (decimated) sequences using exactly five different symbols.

The programs for A056379, there is no canonical definition to state claims against.
-/

/-! ## A056379.P1276074071185558892

`A056374(n+1)-5*A056373(n+1)+10*A056372(n+1)-10*A056371(n+1)+5`
-/

namespace A056379.P1276074071185558892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056374 (n + 1) - 5 * A056373 (n + 1) + 10 * A056372 (n + 1) - 10 * A056371 (n + 1) + 5

end

end A056379.P1276074071185558892

/-! ## A056379.P2656375605733905184

`∑{d}[n+1, A056389(#)]`
-/

namespace A056379.P2656375605733905184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056389 d

end

end A056379.P2656375605733905184

/-! ## A056379.P2179672312969269455

`A056389(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A056379.P2179672312969269455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056389 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A056379.P2179672312969269455

/-! ## A056379.P15827248858597765686

`A056389(A032563(n+1))`
-/

namespace A056379.P15827248858597765686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056389 (A032563 (n + 1)).toNat

end

end A056379.P15827248858597765686

/-! ## A056379.P8602170878830196143

`A056389(A276142(n+1))`
-/

namespace A056379.P8602170878830196143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056389 (A276142 (n + 1)).toNat

end

end A056379.P8602170878830196143

/-!
# A056380: Number of step shifted (decimated) sequences using exactly six different symbols.

The programs for A056380, there is no canonical definition to state claims against.
-/

/-! ## A056380.P7306319520008198621

`A056375(n+1)-6*A056374(n+1)+15*A056373(n+1)-20*A056372(n+1)+15*A056371(n+1)-6`
-/

namespace A056380.P7306319520008198621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056375 (n + 1) - 6 * A056374 (n + 1) + 15 * A056373 (n + 1) - 20 * A056372 (n + 1) + 15 * A056371 (n + 1) - 6

end

end A056380.P7306319520008198621

/-! ## A056380.P3889723815162346931

`∑{d}[n+1, A056390(#)]`
-/

namespace A056380.P3889723815162346931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056390 d

end

end A056380.P3889723815162346931

/-! ## A056380.P13779445118919136456

`A056390(∑[A037217(n)!])`
-/

namespace A056380.P13779445118919136456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A037217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056380.P13779445118919136456

/-! ## A056380.P12692291673353608602

`A056390(∑[A201195(n+1)!])`
-/

namespace A056380.P12692291673353608602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A201195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056380.P12692291673353608602

/-! ## A056380.P1245558024501544321

`lcm(A007413(A025515(n+1)), A056390(n+1))`
-/

namespace A056380.P1245558024501544321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007413 (A025515 (n + 1)).toNat) (A056390 (n + 1))

end

end A056380.P1245558024501544321

/-!
# A056381: Number of primitive (aperiodic) step shifted (decimated) sequences using a maximum of two different symbols.

The programs for A056381, there is no canonical definition to state claims against.
-/

/-! ## A056381.P10146780661936764574

`2*A056401(n+1)`
-/

namespace A056381.P10146780661936764574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056401 (n + 1)

end

end A056381.P10146780661936764574

/-! ## A056381.P11944413118423397123

`A056386(ceil(acot(n)+n))`
-/

namespace A056381.P11944413118423397123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A056381.P11944413118423397123

/-! ## A056381.P14377012791710746954

`A056386(n+1)+2*C(2, n+2)`
-/

namespace A056381.P14377012791710746954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (n + 1) + (2 * Nat.choose 2 (n + 2) : ℤ)

end

end A056381.P14377012791710746954

/-! ## A056381.P6262709014726076353

`A056386(A254667(n+1))`
-/

namespace A056381.P6262709014726076353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (A254667 (n + 1)).toNat

end

end A056381.P6262709014726076353

/-! ## A056381.P16998393034549117586

`A056386(A233583(n+2))`
-/

namespace A056381.P16998393034549117586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (A233583 (n + 2)).toNat

end

end A056381.P16998393034549117586

/-! ## A056381.P10610265839106467257

`2*A056406(A028310(n)+1)`
-/

namespace A056381.P10610265839106467257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056406 (A028310 n + 1).toNat

end

end A056381.P10610265839106467257

/-! ## A056381.P9477404044419535959

`A056386(A065033(2*n)+1)`
-/

namespace A056381.P9477404044419535959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (A065033 (2 * n) + 1).toNat

end

end A056381.P9477404044419535959

/-! ## A056381.P14869599493783310975

`A056386(A000007(n)+1+n)`
-/

namespace A056381.P14869599493783310975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (A000007 n + 1 + (n : ℤ)).toNat

end

end A056381.P14869599493783310975

/-! ## A056381.P8164012445957542982

`A056386(n+1)+A000038(n)`
-/

namespace A056381.P8164012445957542982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056386 (n + 1) + A000038 n

end

end A056381.P8164012445957542982

/-! ## A056381.P1719444780135996074

`2*(A056406(n+1)+A000007(n))`
-/

namespace A056381.P1719444780135996074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056406 (n + 1) + A000007 n)

end

end A056381.P1719444780135996074

/-! ## A056381.P9244873228866314151

`∑{d}[n+1, A008683(#)*A056371((n+1)/#)]`
-/

namespace A056381.P9244873228866314151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056381.P9244873228866314151

/-! ## A056381.P3637296764125571651

`2*∑{d}[n+1, A008683(#)*A056391((n+1)/#)]`
-/

namespace A056381.P3637296764125571651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A056391 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A056381.P3637296764125571651

/-! ## A056381.P6740177456102957950

`A056401(n+1)+A056406(n+1)+A000007(n)`
-/

namespace A056381.P6740177456102957950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) + (A056406 (n + 1) + A000007 n)

end

end A056381.P6740177456102957950

/-! ## A056381.P2944546953674032012

`A056401(n+1)+A056401(n+1)+A000007(n+1)`
-/

namespace A056381.P2944546953674032012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) + (A056401 (n + 1) + A000007 (n + 1))

end

end A056381.P2944546953674032012

/-! ## A056381.P310835328184534087

`2*(A056402(n+1)-A056407(n+1))`
-/

namespace A056381.P310835328184534087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056402 (n + 1) - A056407 (n + 1))

end

end A056381.P310835328184534087

/-! ## A056381.P10697256803505478920

`A056401(n+1)+A056402(n+1)-A056407(n+1)`
-/

namespace A056381.P10697256803505478920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) + (A056402 (n + 1) - A056407 (n + 1))

end

end A056381.P10697256803505478920

/-!
# A056382: Number of primitive (aperiodic) step shifted (decimated) sequences using a maximum of three different symbols.

The programs for A056382, there is no canonical definition to state claims against.
-/

/-! ## A056382.P4399962708848400698

`∑{d}[n+1, A008683(#)*A056372((n+1)/#)]`
-/

namespace A056382.P4399962708848400698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056382.P4399962708848400698

/-!
# A056383: Number of primitive (aperiodic) step shifted (decimated) sequences using a maximum of four different symbols.

The programs for A056383, there is no canonical definition to state claims against.
-/

/-! ## A056383.P13599361678103079079

`∑{d}[n+1, A008683(#)*A056373((n+1)/#)]`
-/

namespace A056383.P13599361678103079079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056383.P13599361678103079079

/-!
# A056384: Number of primitive (aperiodic) step shifted (decimated) sequences using a maximum of five different symbols.

The programs for A056384, there is no canonical definition to state claims against.
-/

/-! ## A056384.P11387337879257247756

`∑{d}[n+1, A008683(#)*A056374((n+1)/#)]`
-/

namespace A056384.P11387337879257247756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056384.P11387337879257247756

/-!
# A056385: Number of primitive (aperiodic) step shifted (decimated) sequences using a maximum of six different symbols.

The programs for A056385, there is no canonical definition to state claims against.
-/

/-! ## A056385.P2226540977638034857

`∑{d}[n+1, A008683(#)*A056375((n+1)/#)]`
-/

namespace A056385.P2226540977638034857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056385.P2226540977638034857

/-!
# A056386: Number of primitive (aperiodic) step shifted (decimated) sequences using exactly two different symbols.

The programs for A056386, there is no canonical definition to state claims against.
-/

/-! ## A056386.P6259517173073702766

`2*A056406(n+1)`
-/

namespace A056386.P6259517173073702766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056406 (n + 1)

end

end A056386.P6259517173073702766

/-! ## A056386.P12194391366994673625

`A056381(n+1)-A000038(n)`
-/

namespace A056386.P12194391366994673625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056381 (n + 1) - A000038 n

end

end A056386.P12194391366994673625

/-! ## A056386.P13035442660657294365

`A056381(n+1)*A057427(n)`
-/

namespace A056386.P13035442660657294365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056381 (n + 1) * A057427 n

end

end A056386.P13035442660657294365

/-! ## A056386.P786277956412108551

`and(A056381(n+1), A057428(n))`
-/

namespace A056386.P786277956412108551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056381 (n + 1)) (A057428 n)

end

end A056386.P786277956412108551

/-! ## A056386.P16383194861042323808

`(1-A000007(n))*A056381(n+1)`
-/

namespace A056386.P16383194861042323808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A056381 (n + 1)

end

end A056386.P16383194861042323808

/-! ## A056386.P3221382460947583495

`2*(A056401(n+1)-A000007(n))`
-/

namespace A056386.P3221382460947583495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056401 (n + 1) - A000007 n)

end

end A056386.P3221382460947583495

/-! ## A056386.P4597572943002337444

`2*A056401(n+1)*A057427(n)`
-/

namespace A056386.P4597572943002337444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056401 (n + 1) * A057427 n)

end

end A056386.P4597572943002337444

/-! ## A056386.P17516692720534638814

`and(A056381(n+1), A153881(n+1))`
-/

namespace A056386.P17516692720534638814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056381 (n + 1)) (A153881 (n + 1))

end

end A056386.P17516692720534638814

/-! ## A056386.P11106504979099104951

`2*and(A056401(n+1), A057428(n))`
-/

namespace A056386.P11106504979099104951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A056401 (n + 1)) (A057428 n)

end

end A056386.P11106504979099104951

/-! ## A056386.P8450378880247596241

`2*and(A056401(n+1), A134824(n))`
-/

namespace A056386.P8450378880247596241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A056401 (n + 1)) (A134824 n)

end

end A056386.P8450378880247596241

/-! ## A056386.P13629736196667153877

`xor(A000038(2*n), A056381(n+1))`
-/

namespace A056386.P13629736196667153877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (2 * n)) (A056381 (n + 1))

end

end A056386.P13629736196667153877

/-! ## A056386.P309698559602487083

`∑{d}[n+1, A008683(#)*A056376((n+1)/#)]`
-/

namespace A056386.P309698559602487083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056386.P309698559602487083

/-! ## A056386.P8399806154885452286

`A056401(n+1)+A056406(n+1)-A000007(n)`
-/

namespace A056386.P8399806154885452286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) + (A056406 (n + 1) - A000007 n)

end

end A056386.P8399806154885452286

/-! ## A056386.P2310423531712823463

`A056406(n+1)+A056406(n+1)+A000007(n+1)`
-/

namespace A056386.P2310423531712823463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (n + 1) + (A056406 (n + 1) + A000007 (n + 1))

end

end A056386.P2310423531712823463

/-! ## A056386.P11435651267335795329

`A056381(n+1)%A000051(n)`
-/

namespace A056386.P11435651267335795329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056381 (n + 1)) (A000051 n)

end

end A056386.P11435651267335795329

/-! ## A056386.P7714028341556526464

`2*A056401(n+1)%A000079(n)`
-/

namespace A056386.P7714028341556526464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A056401 (n + 1)) (A000079 n)

end

end A056386.P7714028341556526464

/-! ## A056386.P6761040274755439389

`2*and(A000225(n), A056401(n+1))`
-/

namespace A056386.P6761040274755439389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A000225 n) (A056401 (n + 1))

end

end A056386.P6761040274755439389

/-! ## A056386.P3954576216650760028

`and(A056381(n+1), A095121(n))`
-/

namespace A056386.P3954576216650760028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056381 (n + 1)) (A095121 n)

end

end A056386.P3954576216650760028

/-! ## A056386.P12604626177006580771

`and(A056381(n+1), A126646(n))`
-/

namespace A056386.P12604626177006580771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056381 (n + 1)) (A126646 n)

end

end A056386.P12604626177006580771

/-! ## A056386.P9221360681700506168

`and(A056381(n+1), A286521(n))`
-/

namespace A056386.P9221360681700506168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056381 (n + 1)) (A286521 n)

end

end A056386.P9221360681700506168

/-!
# A056387: Number of primitive (aperiodic) step shifted (decimated) sequences using exactly three different symbols.

The programs for A056387, there is no canonical definition to state claims against.
-/

/-! ## A056387.P404271049892018261

`∑{d}[n+1, A008683(#)*A056377((n+1)/#)]`
-/

namespace A056387.P404271049892018261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056387.P404271049892018261

/-! ## A056387.P15653323543236180390

`lcm(3, A066328(A108459(n)))`
-/

namespace A056387.P15653323543236180390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A066328 (A108459 n).toNat)

end

end A056387.P15653323543236180390

/-!
# A056388: Number of primitive (aperiodic) step shifted (decimated) sequences using exactly four different symbols.

The programs for A056388, there is no canonical definition to state claims against.
-/

/-! ## A056388.P14557046498362150315

`∑{d}[n+1, A008683(#)*A056378((n+1)/#)]`
-/

namespace A056388.P14557046498362150315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056388.P14557046498362150315

/-!
# A056389: Number of primitive (aperiodic) step shifted (decimated) sequences using exactly five different symbols.

The programs for A056389, there is no canonical definition to state claims against.
-/

/-! ## A056389.P17266678595905762124

`∑{d}[n+1, A008683(#)*A056379((n+1)/#)]`
-/

namespace A056389.P17266678595905762124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056389.P17266678595905762124

/-! ## A056389.P17845277382610284881

`∑{d}[n+1, A056379(#)*A069158((n+1)/#)]`
-/

namespace A056389.P17845277382610284881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056379 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056389.P17845277382610284881

/-! ## A056389.P14068703864195751080

`∑{d}[n+1, A056379(#)*A253206((n+1)/#)]`
-/

namespace A056389.P14068703864195751080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056379 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056389.P14068703864195751080

/-!
# A056390: Number of primitive (aperiodic) step shifted (decimated) sequences using exactly six different symbols.

The programs for A056390, there is no canonical definition to state claims against.
-/

/-! ## A056390.P654928851862785419

`∑{d}[n+1, A008683(#)*A056380((n+1)/#)]`
-/

namespace A056390.P654928851862785419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056390.P654928851862785419

/-! ## A056390.P14755052852501166828

`∑{d}[n+1, A056380(#)*A069158((n+1)/#)]`
-/

namespace A056390.P14755052852501166828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056380 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056390.P14755052852501166828

/-! ## A056390.P6370207374839633300

`∑{d}[n+1, A056380(#)*A352953((n+1)/#)]`
-/

namespace A056390.P6370207374839633300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056380 d * A352953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056390.P6370207374839633300

/-!
# A056391: Number of step shifted (decimated) sequence structures using a maximum of two different symbols.

The programs for A056391, there is no canonical definition to state claims against.
-/

/-! ## A056391.P4549529612878095276

`A056371(n+1)/2`
-/

namespace A056391.P4549529612878095276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056371 (n + 1) : ℚ) / 2

end

end A056391.P4549529612878095276

/-! ## A056391.P7929376439491960316

`A056396(n+1)+1`
-/

namespace A056391.P7929376439491960316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056396 (n + 1) + 1

end

end A056391.P7929376439491960316

/-! ## A056391.P9827083858188922501

`∑{d}[n+1, A056401(#)]`
-/

namespace A056391.P9827083858188922501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056401 d

end

end A056391.P9827083858188922501

/-! ## A056391.P6689090852522634938

`A056376(n+1)/2+1`
-/

namespace A056391.P6689090852522634938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056376 (n + 1) : ℚ) / 2 + 1

end

end A056391.P6689090852522634938

/-! ## A056391.P9663363971047185442

`∑{d}[n+1, A056381(#)]/2`
-/

namespace A056391.P9663363971047185442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A056381 d : ℤ) : ℚ) / 2

end

end A056391.P9663363971047185442

/-! ## A056391.P16900707647995362622

`A056392(n+1)-A056397(n+1)`
-/

namespace A056391.P16900707647995362622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) - A056397 (n + 1)

end

end A056391.P16900707647995362622

/-! ## A056391.P10953080712313145807

`A056393(n+1)-(A056398(n+1)+A056397(n+1))`
-/

namespace A056391.P10953080712313145807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - (A056398 (n + 1) + A056397 (n + 1))

end

end A056391.P10953080712313145807

/-! ## A056391.P13037193326401070123

`A132191(A133263(n+1))/2`
-/

namespace A056391.P13037193326401070123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (A133263 (n + 1)).toNat : ℚ) / 2

end

end A056391.P13037193326401070123

/-! ## A056391.P10736432968251037368

`A132191(A152950(n+2)-1)/2`
-/

namespace A056391.P10736432968251037368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132191 (A152950 (n + 2) - 1).toNat : ℚ) / 2

end

end A056391.P10736432968251037368

/-! ## A056391.P14963580252503227198

`A288620(A152950(n+1)-1)+A057427(n)`
-/

namespace A056391.P14963580252503227198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288620 (A152950 (n + 1) - 1).toNat + A057427 n

end

end A056391.P14963580252503227198

/-!
# A056392: Number of step shifted (decimated) sequence structures using a maximum of three different symbols.

The programs for A056392, there is no canonical definition to state claims against.
-/

/-! ## A056392.P15463249258774663870

`∑{d}[n+1, A056402(#)]`
-/

namespace A056392.P15463249258774663870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056402 d

end

end A056392.P15463249258774663870

/-! ## A056392.P17062586129946511726

`A056397(n+1)+A056391(n+1)`
-/

namespace A056392.P17062586129946511726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056397 (n + 1) + A056391 (n + 1)

end

end A056392.P17062586129946511726

/-! ## A056392.P7952473703623741360

`A056396(n+1)+A056397(n+1)+1`
-/

namespace A056392.P7952473703623741360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056396 (n + 1) + (A056397 (n + 1) + 1)

end

end A056392.P7952473703623741360

/-! ## A056392.P10679127183332536364

`A056397(n+1)+A056371(n+1)/2`
-/

namespace A056392.P10679127183332536364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056397 (n + 1) : ℚ) + (A056371 (n + 1) : ℚ) / 2

end

end A056392.P10679127183332536364

/-! ## A056392.P17708508260369732252

`A056397(n+1)+∑{d}[n+1, A056401(#)]`
-/

namespace A056392.P17708508260369732252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056397 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056401 d

end

end A056392.P17708508260369732252

/-! ## A056392.P3042508993494873380

`A056393(n+1)-A056398(n+1)`
-/

namespace A056392.P3042508993494873380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - A056398 (n + 1)

end

end A056392.P3042508993494873380

/-!
# A056393: Number of step shifted (decimated) sequence structures using a maximum of four different symbols.

The programs for A056393, there is no canonical definition to state claims against.
-/

/-! ## A056393.P15154700986230573151

`∑{d}[n+1, A056403(#)]`
-/

namespace A056393.P15154700986230573151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056403 d

end

end A056393.P15154700986230573151

/-! ## A056393.P7433516831511997126

`A056398(n+1)+A056392(n+1)`
-/

namespace A056393.P7433516831511997126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056398 (n + 1) + A056392 (n + 1)

end

end A056393.P7433516831511997126

/-! ## A056393.P782749450764930303

`A056391(n+1)+A056398(n+1)+A056397(n+1)`
-/

namespace A056393.P782749450764930303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) + (A056398 (n + 1) + A056397 (n + 1))

end

end A056393.P782749450764930303

/-! ## A056393.P14077049924683244542

`A056394(n+1)-A056399(n+1)`
-/

namespace A056393.P14077049924683244542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056394 (n + 1) - A056399 (n + 1)

end

end A056393.P14077049924683244542

/-! ## A056393.P13823021872278084256

`A056395(n+1)-(A056400(n+1)+A056399(n+1))`
-/

namespace A056393.P13823021872278084256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - (A056400 (n + 1) + A056399 (n + 1))

end

end A056393.P13823021872278084256

/-!
# A056394: Number of step shifted (decimated) sequence structures using a maximum of five different symbols.

The programs for A056394, there is no canonical definition to state claims against.
-/

/-! ## A056394.P4011431892582239425

`∑{d}[n+1, A056404(#)]`
-/

namespace A056394.P4011431892582239425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056404 d

end

end A056394.P4011431892582239425

/-! ## A056394.P13327571609636366009

`record[∑{d}[A008612(n), A056404(#)]]`
-/

namespace A056394.P13327571609636366009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A056404 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056394.P13327571609636366009

/-! ## A056394.P14747307870642815416

`A056399(n+1)+A056393(n+1)`
-/

namespace A056394.P14747307870642815416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056399 (n + 1) + A056393 (n + 1)

end

end A056394.P14747307870642815416

/-! ## A056394.P9265541336337088662

`A056392(n+1)+A056399(n+1)+A056398(n+1)`
-/

namespace A056394.P9265541336337088662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) + (A056399 (n + 1) + A056398 (n + 1))

end

end A056394.P9265541336337088662

/-! ## A056394.P6346566622585921817

`A056395(n+1)-A056400(n+1)`
-/

namespace A056394.P6346566622585921817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - A056400 (n + 1)

end

end A056394.P6346566622585921817

/-!
# A056395: Number of step shifted (decimated) sequence structures using a maximum of six different symbols.

The programs for A056395, there is no canonical definition to state claims against.
-/

/-! ## A056395.P13582268511404811659

`∑{d}[n+1, A056405(#)]`
-/

namespace A056395.P13582268511404811659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056405 d

end

end A056395.P13582268511404811659

/-! ## A056395.P3135101948467621175

`A056400(n+1)+A056394(n+1)`
-/

namespace A056395.P3135101948467621175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056400 (n + 1) + A056394 (n + 1)

end

end A056395.P3135101948467621175

/-! ## A056395.P4336340841930992887

`A056400(n+1)+∑{d}[n+1, A056404(#)]`
-/

namespace A056395.P4336340841930992887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056400 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056404 d

end

end A056395.P4336340841930992887

/-! ## A056395.P9159283366793385933

`∑{d}[n+1, A056404(#)]+∑{d}[n+1, A056410(#)]`
-/

namespace A056395.P9159283366793385933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056404 d + ∑ d ∈ Nat.divisors (f2 n), A056410 d

end

end A056395.P9159283366793385933

/-! ## A056395.P2369951183575578911

`A056393(n+1)+A056400(n+1)+A056399(n+1)`
-/

namespace A056395.P2369951183575578911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) + (A056400 (n + 1) + A056399 (n + 1))

end

end A056395.P2369951183575578911

/-! ## A056395.P3099211224613755660

`A056400(n+1)+A056392(n+1)+A056399(n+1)+A056398(n+1)`
-/

namespace A056395.P3099211224613755660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056400 (n + 1) + (A056392 (n + 1) + (A056399 (n + 1) + A056398 (n + 1)))

end

end A056395.P3099211224613755660

/-!
# A056396: Number of step shifted (decimated) sequence structures using exactly two different symbols.

The programs for A056396, there is no canonical definition to state claims against.
-/

/-! ## A056396.P4247325536741816416

`A056391(n+1)-1`
-/

namespace A056396.P4247325536741816416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) - 1

end

end A056396.P4247325536741816416

/-! ## A056396.P8651252531881458439

`∑{d}[n+1, A056406(#)]`
-/

namespace A056396.P8651252531881458439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056406 d

end

end A056396.P8651252531881458439

/-! ## A056396.P11507552237013593717

`∑{d}[n+1, A056401(#)]-1`
-/

namespace A056396.P11507552237013593717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056401 d - 1

end

end A056396.P11507552237013593717

/-! ## A056396.P10906818441740389221

`A056376(n+1)/2`
-/

namespace A056396.P10906818441740389221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056376 (n + 1) : ℚ) / 2

end

end A056396.P10906818441740389221

/-! ## A056396.P9027502376298809559

`A056371(n+1)/2-1`
-/

namespace A056396.P9027502376298809559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056371 (n + 1) : ℚ) / 2 - 1

end

end A056396.P9027502376298809559

/-! ## A056396.P14662931193850424211

`A056371(n+1)%(A056391(n+1)+1)`
-/

namespace A056396.P14662931193850424211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056371 (n + 1)) (A056391 (n + 1) + 1)

end

end A056396.P14662931193850424211

/-! ## A056396.P9253999969628634964

`(A173069(A001316(n))+A056371(n+1))/2`
-/

namespace A056396.P9253999969628634964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173069 (A001316 n).toNat + A056371 (n + 1) : ℚ) / 2

end

end A056396.P9253999969628634964

/-! ## A056396.P3408439078397828310

`A054354(A074276(n+1))+A056371(n+1)/2`
-/

namespace A056396.P3408439078397828310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054354 (A074276 (n + 1)).toNat : ℚ) + (A056371 (n + 1) : ℚ) / 2

end

end A056396.P3408439078397828310

/-! ## A056396.P16276738320747202676

`(A173069(A006519(n+1))+A056371(n+1))/2`
-/

namespace A056396.P16276738320747202676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173069 (A006519 (n + 1)).toNat + A056371 (n + 1) : ℚ) / 2

end

end A056396.P16276738320747202676

/-! ## A056396.P10205947450871861013

`(A173069(A061142(n+1))+A056371(n+1))/2`
-/

namespace A056396.P10205947450871861013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173069 (A061142 (n + 1)).toNat + A056371 (n + 1) : ℚ) / 2

end

end A056396.P10205947450871861013

/-! ## A056396.P13282791885902742573

`A056392(n+1)-(A056397(n+1)+1)`
-/

namespace A056396.P13282791885902742573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) - (A056397 (n + 1) + 1)

end

end A056396.P13282791885902742573

/-!
# A056397: Number of step shifted (decimated) sequence structures using exactly three different symbols.

The programs for A056397, there is no canonical definition to state claims against.
-/

/-! ## A056397.P3131055956305580197

`A056392(n+1)-A056391(n+1)`
-/

namespace A056397.P3131055956305580197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) - A056391 (n + 1)

end

end A056397.P3131055956305580197

/-! ## A056397.P16545832267939144229

`∑{d}[n+1, A056407(#)]`
-/

namespace A056397.P16545832267939144229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056407 d

end

end A056397.P16545832267939144229

/-! ## A056397.P7781612671856343834

`A056392(n+1)-(A056396(n+1)+1)`
-/

namespace A056397.P7781612671856343834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) - (A056396 (n + 1) + 1)

end

end A056397.P7781612671856343834

/-! ## A056397.P1233716874346415825

`A056392(n+1)-A056371(n+1)/2`
-/

namespace A056397.P1233716874346415825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056392 (n + 1) : ℚ) - (A056371 (n + 1) : ℚ) / 2

end

end A056397.P1233716874346415825

/-! ## A056397.P164520698566140564

`A056392(n+1)-∑{d}[n+1, A056401(#)]`
-/

namespace A056397.P164520698566140564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056392 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056401 d

end

end A056397.P164520698566140564

/-! ## A056397.P14475130089037380492

`A056393(n+1)-(A056398(n+1)+A056391(n+1))`
-/

namespace A056397.P14475130089037380492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - (A056398 (n + 1) + A056391 (n + 1))

end

end A056397.P14475130089037380492

/-! ## A056397.P8549602787456727872

`A057427(A029578(n))*A288620(A152950(n+1))`
-/

namespace A056397.P8549602787456727872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029578 n).toNat * A288620 (A152950 (n + 1)).toNat

end

end A056397.P8549602787456727872

/-!
# A056398: Number of step shifted (decimated) sequence structures using exactly four different symbols.

The programs for A056398, there is no canonical definition to state claims against.
-/

/-! ## A056398.P5846553102939164991

`A056393(n+1)-A056392(n+1)`
-/

namespace A056398.P5846553102939164991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - A056392 (n + 1)

end

end A056398.P5846553102939164991

/-! ## A056398.P364077334763918535

`∑{d}[n+1, A056408(#)]`
-/

namespace A056398.P364077334763918535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056408 d

end

end A056398.P364077334763918535

/-! ## A056398.P14846020879136646179

`A056393(n+1)-∑{d}[n+1, A056402(#)]`
-/

namespace A056398.P14846020879136646179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056402 d

end

end A056398.P14846020879136646179

/-! ## A056398.P39553987212976011

`A056393(n+1)-(A056397(n+1)+A056391(n+1))`
-/

namespace A056398.P39553987212976011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056393 (n + 1) - (A056397 (n + 1) + A056391 (n + 1))

end

end A056398.P39553987212976011

/-! ## A056398.P13746326012517631303

`A056394(n+1)-(A056399(n+1)+A056392(n+1))`
-/

namespace A056398.P13746326012517631303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056394 (n + 1) - (A056399 (n + 1) + A056392 (n + 1))

end

end A056398.P13746326012517631303

/-!
# A056399: Number of step shifted (decimated) sequence structures using exactly five different symbols.

The programs for A056399, there is no canonical definition to state claims against.
-/

/-! ## A056399.P15547252119065729272

`A056394(n+1)-A056393(n+1)`
-/

namespace A056399.P15547252119065729272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056394 (n + 1) - A056393 (n + 1)

end

end A056399.P15547252119065729272

/-! ## A056399.P8390337202094030570

`∑{d}[n+1, A056409(#)]`
-/

namespace A056399.P8390337202094030570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056409 d

end

end A056399.P8390337202094030570

/-! ## A056399.P4786855322491784801

`∑{d}[n+1, A056404(#)]-A056393(n+1)`
-/

namespace A056399.P4786855322491784801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056404 d - A056393 (n + 1)

end

end A056399.P4786855322491784801

/-! ## A056399.P2270881386896397229

`A056394(n+1)-(A056398(n+1)+A056392(n+1))`
-/

namespace A056399.P2270881386896397229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056394 (n + 1) - (A056398 (n + 1) + A056392 (n + 1))

end

end A056399.P2270881386896397229

/-! ## A056399.P1411518443735645222

`A056395(n+1)-(A056400(n+1)+A056393(n+1))`
-/

namespace A056399.P1411518443735645222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - (A056400 (n + 1) + A056393 (n + 1))

end

end A056399.P1411518443735645222

