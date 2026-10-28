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
import Seq.B000.C023
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024

/-!
# A293003: Expansion of Product_{k>=1} (1 - x^(2*k))/(1 - x^(3*k)).

The programs for A293003, there is no canonical definition to state claims against.
-/

/-! ## A293003.P9673661926842856836

`A104468(n)-A010057(A007088(n+4))`
-/

namespace A293003.P9673661926842856836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104468 n - A010057 (A007088 (n + 4)).toNat

end

end A293003.P9673661926842856836

/-! ## A293003.P10200036641745892795

`or(A008683(A316299(n+1)), A104468(n))`
-/

namespace A293003.P10200036641745892795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A316299 (n + 1)).toNat) (A104468 n)

end

end A293003.P10200036641745892795

/-! ## A293003.P17997373752726578821

`A104468(n)-A230403(A250412(2*(n+2)))`
-/

namespace A293003.P17997373752726578821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104468 n - A230403 (A250412 (2 * (n + 2))).toNat

end

end A293003.P17997373752726578821

/-! ## A293003.P8498375042134245832

`A104468(n)-A008683(n+1)*A008683(A316299(n+1))`
-/

namespace A293003.P8498375042134245832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104468 n - A008683 (n + 1) * A008683 (A316299 (n + 1)).toNat

end

end A293003.P8498375042134245832

/-!
# A293004: Expansion of 2*x^2 / (x^3 + x^2 - 3x + 1).

The programs for A293004, the canonical program `A293004.P2859193245018456132` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293004 has offset 0).

The definition of A293004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2x^2/(1-3x+x^2+x^3))` (program `A293004.P2859193245018456132`, by `A293004.P2859193245018456132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293004.P2859193245018456132

`ogf(2x^2/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293004

/-- `ogf(2x^2/(1-3x+x^2+x^3))` -/
def P2859193245018456132.Spec : Prop :=
  ∀ n, P2859193245018456132.a n = A293004 n

theorem P2859193245018456132.correct : P2859193245018456132.Spec := by
  intro n
  simp only [A293004]

end A293004

/-! ## A293004.P2435840653244476224

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293004.P2435840653244476224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A293004.P2435840653244476224

namespace A293004

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P2435840653244476224.Spec : Prop :=
  ∀ n, P2435840653244476224.a n = A293004 n

end A293004

/-! ## A293004.P11600523907754708031

`a(n-2)+2*(a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A293004.P11600523907754708031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + 1)

end

end A293004.P11600523907754708031

namespace A293004

/-- `a(n-2)+2*(a(n-1)+1)` -/
def P11600523907754708031.Spec : Prop :=
  ∀ n, (P11600523907754708031.a n : ℤ) = A293004 n

end A293004

/-! ## A293004.P4740430572859924572

`a(n-2)+lcm(2, a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A293004.P4740430572859924572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1) + 1)

end

end A293004.P4740430572859924572

namespace A293004

/-- `a(n-2)+lcm(2, a(n-1)+1)` -/
def P4740430572859924572.Spec : Prop :=
  ∀ n, (P4740430572859924572.a n : ℤ) = A293004 n

end A293004

/-! ## A293004.P5132966151256487337

`4-(2*(1-a(n-1))-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A293004.P5132966151256487337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A293004.P5132966151256487337

namespace A293004

/-- `4-(2*(1-a(n-1))-a(n-2))` -/
def P5132966151256487337.Spec : Prop :=
  ∀ n, P5132966151256487337.a n = A293004 n

end A293004

/-! ## A293004.P15486645002121118340

`a(n-1)+2+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A293004.P15486645002121118340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + a (n - 2))

end

end A293004.P15486645002121118340

namespace A293004

/-- `a(n-1)+2+a(n-1)+a(n-2)` -/
def P15486645002121118340.Spec : Prop :=
  ∀ n, (P15486645002121118340.a n : ℤ) = A293004 n

end A293004

/-! ## A293004.P11555864153125944560

`A001333(n)-1`
-/

namespace A293004.P11555864153125944560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - 1

end

end A293004.P11555864153125944560

namespace A293004

/-- `A001333(n)-1` -/
def P11555864153125944560.Spec : Prop :=
  ∀ n, P11555864153125944560.a n = A293004 n

end A293004

/-! ## A293004.P15190130993858248349

`abs(A123335(n))-1`
-/

namespace A293004.P15190130993858248349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n| - 1

end

end A293004.P15190130993858248349

namespace A293004

/-- `abs(A123335(n))-1` -/
def P15190130993858248349.Spec : Prop :=
  ∀ n, P15190130993858248349.a n = A293004 n

end A293004

/-! ## A293004.P15126315740814060287

`and(-2, A265278(n))`
-/

namespace A293004.P15126315740814060287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A265278 n)

end

end A293004.P15126315740814060287

namespace A293004

/-- `and(-2, A265278(n))` -/
def P15126315740814060287.Spec : Prop :=
  ∀ n, P15126315740814060287.a n = A293004 n

end A293004

/-! ## A293004.P12506357706243757727

`A119016(2*n)-1`
-/

namespace A293004.P12506357706243757727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n) - 1

end

end A293004.P12506357706243757727

namespace A293004

/-- `A119016(2*n)-1` -/
def P12506357706243757727.Spec : Prop :=
  ∀ n, P12506357706243757727.a n = A293004 n

end A293004

/-! ## A293004.P11039256740028750913

`2*(A171842(n)-1)`
-/

namespace A293004.P11039256740028750913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171842 n - 1)

end

end A293004.P11039256740028750913

namespace A293004

/-- `2*(A171842(n)-1)` -/
def P11039256740028750913.Spec : Prop :=
  ∀ n, P11039256740028750913.a n = A293004 n

end A293004

/-! ## A293004.P3852206352628793649

`A002965(Δ[n²])-1`
-/

namespace A293004.P3852206352628793649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A293004.P3852206352628793649

namespace A293004

/-- `A002965(Δ[n²])-1` -/
def P3852206352628793649.Spec : Prop :=
  ∀ n, P3852206352628793649.a n = A293004 n

end A293004

/-! ## A293004.P10831732622938916606

`2*(1-∑[A176981(n)])`
-/

namespace A293004.P10831732622938916606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293004.P10831732622938916606

namespace A293004

/-- `2*(1-∑[A176981(n)])` -/
def P10831732622938916606.Spec : Prop :=
  ∀ n, P10831732622938916606.a n = A293004 n

end A293004

/-! ## A293004.P6332031992344715802

`A116560(6*n+1)-1`
-/

namespace A293004.P6332031992344715802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n + 1) - 1

end

end A293004.P6332031992344715802

namespace A293004

/-- `A116560(6*n+1)-1` -/
def P6332031992344715802.Spec : Prop :=
  ∀ n, P6332031992344715802.a n = A293004 n

end A293004

/-! ## A293004.P1053455188296730088

`abs(Δ[A215936(n+1)])-1`
-/

namespace A293004.P1053455188296730088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A293004.P1053455188296730088

namespace A293004

/-- `abs(Δ[A215936(n+1)])-1` -/
def P1053455188296730088.Spec : Prop :=
  ∀ n, P1053455188296730088.a n = A293004 n

end A293004

/-! ## A293004.P11454933494504227512

`A265278(A199969(n+1))`
-/

namespace A293004.P11454933494504227512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A199969 (n + 1)).toNat

end

end A293004.P11454933494504227512

namespace A293004

/-- `A265278(A199969(n+1))` -/
def P11454933494504227512.Spec : Prop :=
  ∀ n, P11454933494504227512.a n = A293004 n

end A293004

/-! ## A293004.P2975275578181312048

`A082766(A004277(n))-1`
-/

namespace A293004.P2975275578181312048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004277 n).toNat - 1

end

end A293004.P2975275578181312048

namespace A293004

/-- `A082766(A004277(n))-1` -/
def P2975275578181312048.Spec : Prop :=
  ∀ n, P2975275578181312048.a n = A293004 n

end A293004

/-! ## A293004.P1610365500458967455

`A152113(A053438(n))-1`
-/

namespace A293004.P1610365500458967455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A053438 n).toNat - 1

end

end A293004.P1610365500458967455

namespace A293004

/-- `A152113(A053438(n))-1` -/
def P1610365500458967455.Spec : Prop :=
  ∀ n, P1610365500458967455.a n = A293004 n

end A293004

/-! ## A293004.P14910901391027759241

`2*A247311(A016789(n))`
-/

namespace A293004.P14910901391027759241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247311 (A016789 n).toNat

end

end A293004.P14910901391027759241

namespace A293004

/-- `2*A247311(A016789(n))` -/
def P14910901391027759241.Spec : Prop :=
  ∀ n, P14910901391027759241.a n = A293004 n

end A293004

/-! ## A293004.P9115705873593026279

`A265278(A159075(n)+n)`
-/

namespace A293004.P9115705873593026279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (A159075 n + (n : ℤ)).toNat

end

end A293004.P9115705873593026279

namespace A293004

/-- `A265278(A159075(n)+n)` -/
def P9115705873593026279.Spec : Prop :=
  ∀ n, P9115705873593026279.a n = A293004 n

end A293004

/-!
# A293005: Number of associative, quasitrivial, and order-preserving binary operations on the n-element set {1,...,n}.

The programs for A293005, the canonical program `A293005.P12894819006512335077` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293005 has offset 0).

The definition of A293005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293005.P12894819006512335077

`ogf((x+x^2)/(1-3x+2x^3))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293005

/-- `ogf((x+x^2)/(1-3x+2x^3))` -/
def P12894819006512335077.Spec : Prop :=
  ∀ n, P12894819006512335077.a n = A293005 n

theorem P12894819006512335077.correct : P12894819006512335077.Spec := by
  intro n
  simp only [A293005]

end A293005

/-! ## A293005.P14028279368973899385

`ceil((sqrt(3)+1)*a(n-1))+1` with `a(0)=0`
-/

namespace A293005.P14028279368973899385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 1

end

end A293005.P14028279368973899385

namespace A293005

/-- `ceil((sqrt(3)+1)*a(n-1))+1` -/
def P14028279368973899385.Spec : Prop :=
  ∀ n, P14028279368973899385.a n = A293005 n

end A293005

/-! ## A293005.P9193922527263821491

`round((sqrt(3)+1)*a(n-1))+1` with `a(0)=0`
-/

namespace A293005.P9193922527263821491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)) + 1

end

end A293005.P9193922527263821491

namespace A293005

/-- `round((sqrt(3)+1)*a(n-1))+1` -/
def P9193922527263821491.Spec : Prop :=
  ∀ n, P9193922527263821491.a n = A293005 n

end A293005

/-! ## A293005.P10418663808111691882

`floor((sqrt(3)+1)*a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A293005.P10418663808111691882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 2

end

end A293005.P10418663808111691882

namespace A293005

/-- `floor((sqrt(3)+1)*a(n-1))+2` -/
def P10418663808111691882.Spec : Prop :=
  ∀ n, P10418663808111691882.a n = A293005 n

end A293005

/-! ## A293005.P11385989424980555830

`2*(a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`
-/

namespace A293005.P11385989424980555830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + (a (n - 2) + 1))

end

end A293005.P11385989424980555830

namespace A293005

/-- `2*(a(n-1)+a(n-2)+1)` -/
def P11385989424980555830.Spec : Prop :=
  ∀ n, (P11385989424980555830.a n : ℤ) = A293005 n

end A293005

/-! ## A293005.P6705910367448122707

`3*a(n-1)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A293005.P6705910367448122707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A293005.P6705910367448122707

namespace A293005

/-- `3*a(n-1)-2*a(n-3)` -/
def P6705910367448122707.Spec : Prop :=
  ∀ n, P6705910367448122707.a n = A293005 n

end A293005

/-! ## A293005.P14350258868600827620

`a(n-1)+2+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A293005.P14350258868600827620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 2 + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A293005.P14350258868600827620

namespace A293005

/-- `a(n-1)+2+a(n-2)+a(n-1)+a(n-2)` -/
def P14350258868600827620.Spec : Prop :=
  ∀ n, (P14350258868600827620.a n : ℤ) = A293005 n

end A293005

/-! ## A293005.P6223965394651231463

`A057960(n)-1`
-/

namespace A293005.P6223965394651231463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n - 1

end

end A293005.P6223965394651231463

namespace A293005

/-- `A057960(n)-1` -/
def P6223965394651231463.Spec : Prop :=
  ∀ n, P6223965394651231463.a n = A293005 n

end A293005

/-! ## A293005.P7808861284801017898

`∑[A155020(n)]-1`
-/

namespace A293005.P7808861284801017898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A293005.P7808861284801017898

namespace A293005

/-- `∑[A155020(n)]-1` -/
def P7808861284801017898.Spec : Prop :=
  ∀ n, P7808861284801017898.a n = A293005 n

end A293005

/-! ## A293005.P16465408450942687233

`∑[ceil(A005665(n)/2)]`
-/

namespace A293005.P16465408450942687233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005665 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293005.P16465408450942687233

namespace A293005

/-- `∑[ceil(A005665(n)/2)]` -/
def P16465408450942687233.Spec : Prop :=
  ∀ n, P16465408450942687233.a n = A293005 n

end A293005

/-! ## A293005.P14108327122016972937

`∑[floor(∑[A026150(n)/2])]`
-/

namespace A293005.P14108327122016972937
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293005.P14108327122016972937

namespace A293005

/-- `∑[floor(∑[A026150(n)/2])]` -/
def P14108327122016972937.Spec : Prop :=
  ∀ n, P14108327122016972937.a n = A293005 n

end A293005

/-! ## A293005.P18288967718568131218

`∑[floor(A002605(n+1)/2)]`
-/

namespace A293005.P18288967718568131218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002605 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293005.P18288967718568131218

namespace A293005

/-- `∑[floor(A002605(n+1)/2)]` -/
def P18288967718568131218.Spec : Prop :=
  ∀ n, P18288967718568131218.a n = A293005 n

end A293005

/-! ## A293005.P14308723263908902658

`∑[A028859(n)-A052945(n)]`
-/

namespace A293005.P14308723263908902658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293005.P14308723263908902658

namespace A293005

/-- `∑[A028859(n)-A052945(n)]` -/
def P14308723263908902658.Spec : Prop :=
  ∀ n, P14308723263908902658.a n = A293005 n

end A293005

/-! ## A293005.P12585799394471547675

`∑[A155020(n)%A028859(n)]`
-/

namespace A293005.P12585799394471547675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155020 n) (A028859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293005.P12585799394471547675

namespace A293005

/-- `∑[A155020(n)%A028859(n)]` -/
def P12585799394471547675.Spec : Prop :=
  ∀ n, P12585799394471547675.a n = A293005 n

end A293005

/-! ## A293005.P17328039677033895062

`A002605(n)+A052948(n)-1`
-/

namespace A293005.P17328039677033895062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (A052948 n - 1)

end

end A293005.P17328039677033895062

namespace A293005

/-- `A002605(n)+A052948(n)-1` -/
def P17328039677033895062.Spec : Prop :=
  ∀ n, P17328039677033895062.a n = A293005 n

end A293005

/-! ## A293005.P5963877879723261927

`xor(1, A057960(n)*A060576(n))`
-/

namespace A293005.P5963877879723261927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A057960 n * A060576 n)

end

end A293005.P5963877879723261927

namespace A293005

/-- `xor(1, A057960(n)*A060576(n))` -/
def P5963877879723261927.Spec : Prop :=
  ∀ n, P5963877879723261927.a n = A293005 n

end A293005

/-! ## A293005.P6779059423602508012

`∑[A002605(abs(1-n))+A002605(n)]-1`
-/

namespace A293005.P6779059423602508012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 |1 - (n : ℤ)|.toNat + A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A293005.P6779059423602508012

namespace A293005

/-- `∑[A002605(abs(1-n))+A002605(n)]-1` -/
def P6779059423602508012.Spec : Prop :=
  ∀ n, P6779059423602508012.a n = A293005 n

end A293005

/-! ## A293005.P15337084168339899382

`floor(A077846(n)/2)`
-/

namespace A293005.P15337084168339899382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077846 n : ℚ) / 2⌋

end

end A293005.P15337084168339899382

namespace A293005

/-- `floor(A077846(n)/2)` -/
def P15337084168339899382.Spec : Prop :=
  ∀ n, P15337084168339899382.a n = A293005 n

end A293005

/-! ## A293005.P2246445798788193473

`A293006(n+1)/2`
-/

namespace A293005.P2246445798788193473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293006 (n + 1) : ℚ) / 2

end

end A293005.P2246445798788193473

namespace A293005

/-- `A293006(n+1)/2` -/
def P2246445798788193473.Spec : Prop :=
  ∀ n, P2246445798788193473.a n = (A293005 n : ℚ)

end A293005

/-! ## A293005.P11405615013766329398

`floor(A052945(n+1)/3)`
-/

namespace A293005.P11405615013766329398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052945 (n + 1) : ℚ) / 3⌋

end

end A293005.P11405615013766329398

namespace A293005

/-- `floor(A052945(n+1)/3)` -/
def P11405615013766329398.Spec : Prop :=
  ∀ n, P11405615013766329398.a n = A293005 n

end A293005

/-!
# A293006: Expansion of 2*x^2*(x+1) / (2*x^3-3*x+1).

The programs for A293006, the canonical program `A293006.P8217338305864484120` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293006 has offset 0).

The definition of A293006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^2+2x^3)/(1-3x+2x^3))` (program `A293006.P8217338305864484120`, by `A293006.P8217338305864484120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293006.P8217338305864484120

`ogf((2x^2+2x^3)/(1-3x+2x^3))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293006

/-- `ogf((2x^2+2x^3)/(1-3x+2x^3))` -/
def P8217338305864484120.Spec : Prop :=
  ∀ n, P8217338305864484120.a n = A293006 n

theorem P8217338305864484120.correct : P8217338305864484120.Spec := by
  intro n
  simp only [A293006]

end A293006

/-! ## A293006.P2286851990042196178

`3*a(n-1)-2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8`
-/

namespace A293006.P2286851990042196178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 8] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A293006.P2286851990042196178

namespace A293006

/-- `3*a(n-1)-2*a(n-3)` -/
def P2286851990042196178.Spec : Prop :=
  ∀ n, P2286851990042196178.a n = A293006 n

end A293006

/-! ## A293006.P12997298131965941105

`ceil((sqrt(3)+1)*a(n-1))+2` with `a(0)=0, a(1)=0`
-/

namespace A293006.P12997298131965941105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 2

end

end A293006.P12997298131965941105

namespace A293006

/-- `ceil((sqrt(3)+1)*a(n-1))+2` -/
def P12997298131965941105.Spec : Prop :=
  ∀ n, P12997298131965941105.a n = A293006 n

end A293006

/-! ## A293006.P8354816508030175616

`2*(a(n-1)+a(n-2)+2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293006.P8354816508030175616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (a (n - 1) + (a (n - 2) + 2))

end

end A293006.P8354816508030175616

namespace A293006

/-- `2*(a(n-1)+a(n-2)+2)` -/
def P8354816508030175616.Spec : Prop :=
  ∀ n, (P8354816508030175616.a n : ℤ) = A293006 n

end A293006

/-! ## A293006.P10596414840308075965

`4-(a(n-1)+a(n-2))/(1/2-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293006.P10596414840308075965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  4 - (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2 - 1)

end

end A293006.P10596414840308075965

namespace A293006

/-- `4-(a(n-1)+a(n-2))/(1/2-1)` -/
def P10596414840308075965.Spec : Prop :=
  ∀ n, P10596414840308075965.a n = (A293006 n : ℚ)

end A293006

/-! ## A293006.P14640314445583734600

`and(∑[A002605(n)], -2)`
-/

namespace A293006.P14640314445583734600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-2)

end

end A293006.P14640314445583734600

namespace A293006

/-- `and(∑[A002605(n)], -2)` -/
def P14640314445583734600.Spec : Prop :=
  ∀ n, P14640314445583734600.a n = A293006 n

end A293006

/-! ## A293006.P6968809566717544685

`∑[A002605(n-char[1])]`
-/

namespace A293006.P6968809566717544685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P6968809566717544685

namespace A293006

/-- `∑[A002605(n-char[1])]` -/
def P6968809566717544685.Spec : Prop :=
  ∀ n, P6968809566717544685.a n = A293006 n

end A293006

/-! ## A293006.P12814228534802882505

`A005666(n)%A057960(n)`
-/

namespace A293006.P12814228534802882505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005666 n) (A057960 n)

end

end A293006.P12814228534802882505

namespace A293006

/-- `A005666(n)%A057960(n)` -/
def P12814228534802882505.Spec : Prop :=
  ∀ n, P12814228534802882505.a n = A293006 n

end A293006

/-! ## A293006.P6869542504397947834

`∑[A002605(n)%A026150(n)]`
-/

namespace A293006.P6869542504397947834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002605 n) (A026150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P6869542504397947834

namespace A293006

/-- `∑[A002605(n)%A026150(n)]` -/
def P6869542504397947834.Spec : Prop :=
  ∀ n, P6869542504397947834.a n = A293006 n

end A293006

/-! ## A293006.P9864589103533692945

`∑[A057960(n)%A052948(n)]`
-/

namespace A293006.P9864589103533692945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 n) (A052948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P9864589103533692945

namespace A293006

/-- `∑[A057960(n)%A052948(n)]` -/
def P9864589103533692945.Spec : Prop :=
  ∀ n, P9864589103533692945.a n = A293006 n

end A293006

/-! ## A293006.P6363557565614926128

`∑[A028859(n)%A155020(n)]`
-/

namespace A293006.P6363557565614926128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028859 n) (A155020 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P6363557565614926128

namespace A293006

/-- `∑[A028859(n)%A155020(n)]` -/
def P6363557565614926128.Spec : Prop :=
  ∀ n, P6363557565614926128.a n = A293006 n

end A293006

/-! ## A293006.P14658412170716360442

`∑[2*A293007(n)]-A293007(n)`
-/

namespace A293006.P14658412170716360442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293007 n

end

end A293006.P14658412170716360442

namespace A293006

/-- `∑[2*A293007(n)]-A293007(n)` -/
def P14658412170716360442.Spec : Prop :=
  ∀ n, P14658412170716360442.a n = A293006 n

end A293006

/-! ## A293006.P2042395243331533945

`(∑[A002605(n)]-1)%A002605(n+1)`
-/

namespace A293006.P2042395243331533945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A002605 (n + 1))

end

end A293006.P2042395243331533945

namespace A293006

/-- `(∑[A002605(n)]-1)%A002605(n+1)` -/
def P2042395243331533945.Spec : Prop :=
  ∀ n, P2042395243331533945.a n = A293006 n

end A293006

/-! ## A293006.P661109970809304117

`∑[A028859(n)]%A057960(n)`
-/

namespace A293006.P661109970809304117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A057960 n)

end

end A293006.P661109970809304117

namespace A293006

/-- `∑[A028859(n)]%A057960(n)` -/
def P661109970809304117.Spec : Prop :=
  ∀ n, P661109970809304117.a n = A293006 n

end A293006

/-! ## A293006.P2385973350190729793

`(A057960(n+1)-1)%A057960(n)`
-/

namespace A293006.P2385973350190729793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 (n + 1) - 1) (A057960 n)

end

end A293006.P2385973350190729793

namespace A293006

/-- `(A057960(n+1)-1)%A057960(n)` -/
def P2385973350190729793.Spec : Prop :=
  ∀ n, P2385973350190729793.a n = A293006 n

end A293006

/-! ## A293006.P16867611352765863621

`∑[Δ[A080040(n)/6]%A026150(n)]`
-/

namespace A293006.P16867611352765863621
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)) (A026150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P16867611352765863621

namespace A293006

/-- `∑[Δ[A080040(n)/6]%A026150(n)]` -/
def P16867611352765863621.Spec : Prop :=
  ∀ n, P16867611352765863621.a n = A293006 n

end A293006

/-! ## A293006.P12804529352948846537

`∑[Δ[A026150(n)/3]%A215936(2*n+1)]`
-/

namespace A293006.P12804529352948846537
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)) (A215936 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P12804529352948846537

namespace A293006

/-- `∑[Δ[A026150(n)/3]%A215936(2*n+1)]` -/
def P12804529352948846537.Spec : Prop :=
  ∀ n, P12804529352948846537.a n = A293006 n

end A293006

/-! ## A293006.P1356528226136273279

`∑[(A099156(n)/A026150(n))%A026150(n)]`
-/

namespace A293006.P1356528226136273279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A099156 n : ℚ) / (A026150 n : ℚ))) (A026150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293006.P1356528226136273279

namespace A293006

/-- `∑[(A099156(n)/A026150(n))%A026150(n)]` -/
def P1356528226136273279.Spec : Prop :=
  ∀ n, P1356528226136273279.a n = A293006 n

end A293006

/-! ## A293006.P4423291357582876852

`A077846(A259361(n²))-1`
-/

namespace A293006.P4423291357582876852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (A259361 (n ^ 2)).toNat - 1

end

end A293006.P4423291357582876852

namespace A293006

/-- `A077846(A259361(n²))-1` -/
def P4423291357582876852.Spec : Prop :=
  ∀ n, P4423291357582876852.a n = A293006 n

end A293006

/-!
# A293007: Expansion of 2*x^2 / (1-2*x-2*x^2).

The programs for A293007, the canonical program `A293007.P2874444190022530406` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293007 has offset 0).

The definition of A293007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2x^2/(1-2x-2x^2))` (program `A293007.P2874444190022530406`, by `A293007.P2874444190022530406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293007.P2874444190022530406

`ogf(2x^2/(1-2x-2x^2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293007

/-- `ogf(2x^2/(1-2x-2x^2))` -/
def P2874444190022530406.Spec : Prop :=
  ∀ n, P2874444190022530406.a n = A293007 n

theorem P2874444190022530406.correct : P2874444190022530406.Spec := by
  intro n
  simp only [A293007]

end A293007

/-! ## A293007.P17383166126206360520

`2*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293007.P17383166126206360520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A293007.P17383166126206360520

namespace A293007

/-- `2*a(n-1)+2*a(n-2)` -/
def P17383166126206360520.Spec : Prop :=
  ∀ n, (P17383166126206360520.a n : ℤ) = A293007 n

end A293007

/-! ## A293007.P9709414034552672900

`2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293007.P9709414034552672900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A293007.P9709414034552672900

namespace A293007

/-- `2*(a(n-1)+a(n-2))` -/
def P9709414034552672900.Spec : Prop :=
  ∀ n, (P9709414034552672900.a n : ℤ) = A293007 n

end A293007

/-! ## A293007.P15662857944706405500

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A293007.P15662857944706405500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A293007.P15662857944706405500

namespace A293007

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P15662857944706405500.Spec : Prop :=
  ∀ n, P15662857944706405500.a n = A293007 n

end A293007

/-! ## A293007.P4532393250795958115

`2*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293007.P4532393250795958115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A293007.P4532393250795958115

namespace A293007

/-- `2*(a(n-1)-(char[1]-a(n-2)))` -/
def P4532393250795958115.Spec : Prop :=
  ∀ n, P4532393250795958115.a n = A293007 n

end A293007

/-! ## A293007.P10088400907816245079

`2*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293007.P10088400907816245079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A293007.P10088400907816245079

namespace A293007

/-- `2*(2-(4/2-a(n-1)-a(n-2)))` -/
def P10088400907816245079.Spec : Prop :=
  ∀ n, P10088400907816245079.a n = (A293007 n : ℚ)

end A293007

/-! ## A293007.P4027991227804312095

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293007.P4027991227804312095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A293007.P4027991227804312095

namespace A293007

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P4027991227804312095.Spec : Prop :=
  ∀ n, (P4027991227804312095.a n : ℤ) = A293007 n

end A293007

/-! ## A293007.P17355759098172746203

`Δ[A052948(abs(1-n))]`
-/

namespace A293007.P17355759098172746203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293007.P17355759098172746203

namespace A293007

/-- `Δ[A052948(abs(1-n))]` -/
def P17355759098172746203.Spec : Prop :=
  ∀ n, P17355759098172746203.a n = A293007 n

end A293007

/-! ## A293007.P11989290291471624334

`A002605(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A293007.P11989290291471624334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A002605 n - a (n - 1)

end

end A293007.P11989290291471624334

namespace A293007

/-- `A002605(n)-a(n-1)` -/
def P11989290291471624334.Spec : Prop :=
  ∀ n, P11989290291471624334.a n = A293007 n

end A293007

/-! ## A293007.P13622182624608829044

`A028860(round(root(2, n+1)+n))`
-/

namespace A293007.P13622182624608829044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (1 / (n + 1 : ℝ)) + (n : ℝ))).toNat

end

end A293007.P13622182624608829044

namespace A293007

/-- `A028860(round(root(2, n+1)+n))` -/
def P13622182624608829044.Spec : Prop :=
  ∀ n, P13622182624608829044.a n = A293007 n

end A293007

/-! ## A293007.P14501120464315924563

`A028860(n+1)-A000007(n)`
-/

namespace A293007.P14501120464315924563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1) - A000007 n

end

end A293007.P14501120464315924563

namespace A293007

/-- `A028860(n+1)-A000007(n)` -/
def P14501120464315924563.Spec : Prop :=
  ∀ n, P14501120464315924563.a n = A293007 n

end A293007

/-! ## A293007.P5416193107754756719

`2*A002605(A004273(n)-n)`
-/

namespace A293007.P5416193107754756719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002605 (A004273 n - (n : ℤ)).toNat

end

end A293007.P5416193107754756719

namespace A293007

/-- `2*A002605(A004273(n)-n)` -/
def P5416193107754756719.Spec : Prop :=
  ∀ n, P5416193107754756719.a n = A293007 n

end A293007

/-! ## A293007.P16814602417678127736

`(A184985(n+1)-n)*A028860(A184985(n+1))`
-/

namespace A293007.P16814602417678127736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184985 (n + 1) - (n : ℤ)) * A028860 (A184985 (n + 1)).toNat

end

end A293007.P16814602417678127736

namespace A293007

/-- `(A184985(n+1)-n)*A028860(A184985(n+1))` -/
def P16814602417678127736.Spec : Prop :=
  ∀ n, P16814602417678127736.a n = A293007 n

end A293007

/-! ## A293007.P2603541041530035439

`A005665(n)%A108898(n)`
-/

namespace A293007.P2603541041530035439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005665 n) (A108898 n)

end

end A293007.P2603541041530035439

namespace A293007

/-- `A005665(n)%A108898(n)` -/
def P2603541041530035439.Spec : Prop :=
  ∀ n, P2603541041530035439.a n = A293007 n

end A293007

/-! ## A293007.P6756806884175933569

`A080040(n)%A155020(n)`
-/

namespace A293007.P6756806884175933569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080040 n) (A155020 n)

end

end A293007.P6756806884175933569

namespace A293007

/-- `A080040(n)%A155020(n)` -/
def P6756806884175933569.Spec : Prop :=
  ∀ n, P6756806884175933569.a n = A293007 n

end A293007

/-! ## A293007.P3714398062038603409

`A287594(n)%A038508(n)`
-/

namespace A293007.P3714398062038603409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287594 n) (A038508 n)

end

end A293007.P3714398062038603409

namespace A293007

/-- `A287594(n)%A038508(n)` -/
def P3714398062038603409.Spec : Prop :=
  ∀ n, P3714398062038603409.a n = A293007 n

end A293007

/-! ## A293007.P2857646516683526831

`A002605(n+1)-A152035(n)`
-/

namespace A293007.P2857646516683526831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - A152035 n

end

end A293007.P2857646516683526831

namespace A293007

/-- `A002605(n+1)-A152035(n)` -/
def P2857646516683526831.Spec : Prop :=
  ∀ n, P2857646516683526831.a n = A293007 n

end A293007

/-! ## A293007.P13503277588091517427

`2*(A026150(n)-A155020(n))`
-/

namespace A293007.P13503277588091517427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026150 n - A155020 n)

end

end A293007.P13503277588091517427

namespace A293007

/-- `2*(A026150(n)-A155020(n))` -/
def P13503277588091517427.Spec : Prop :=
  ∀ n, P13503277588091517427.a n = A293007 n

end A293007

/-! ## A293007.P8552782442931539214

`2*(A052945(n)-A152035(n))`
-/

namespace A293007.P8552782442931539214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052945 n - A152035 n)

end

end A293007.P8552782442931539214

namespace A293007

/-- `2*(A052945(n)-A152035(n))` -/
def P8552782442931539214.Spec : Prop :=
  ∀ n, P8552782442931539214.a n = A293007 n

end A293007

/-! ## A293007.P1313703807745523197

`A162562(n)%A155020(n)`
-/

namespace A293007.P1313703807745523197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162562 n) (A155020 n)

end

end A293007.P1313703807745523197

namespace A293007

/-- `A162562(n)%A155020(n)` -/
def P1313703807745523197.Spec : Prop :=
  ∀ n, P1313703807745523197.a n = A293007 n

end A293007

/-!
# A293008: Primes of the form 2^q * 3^r * 7^s + 1.

The programs for A293008, there is no canonical definition to state claims against.
-/

/-! ## A293008.P14731456483123374800

`p?[A108319(n+1)+1]`
-/

namespace A293008.P14731456483123374800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293008.P14731456483123374800

/-! ## A293008.P3905044279431381304

`p?[A342950(n+1)+1]`
-/

namespace A293008.P3905044279431381304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293008.P3905044279431381304

/-! ## A293008.P14479367091799855324

`record[A006530(A108319(n+1)+1)]`
-/

namespace A293008.P14479367091799855324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A108319 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293008.P14479367091799855324

/-! ## A293008.P10157142456611535985

`record[A008472(A108319(n+1)+1)]`
-/

namespace A293008.P10157142456611535985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A108319 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293008.P10157142456611535985

/-! ## A293008.P15871942809299772357

`record[A020639(A108319(n+1)+1)]`
-/

namespace A293008.P15871942809299772357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A108319 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293008.P15871942809299772357

/-! ## A293008.P9726469052508205934

`record[A006530(A342950(n+1)+1)]`
-/

namespace A293008.P9726469052508205934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342950 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293008.P9726469052508205934

/-! ## A293008.P14149342278584778618

`∩[A042991(n+1), A174144(n+1)]`
-/

namespace A293008.P14149342278584778618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293008.P14149342278584778618

/-! ## A293008.P203264862740813327

`∩[A174144(n+1), A187332(n+1)]`
-/

namespace A293008.P203264862740813327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293008.P203264862740813327

/-! ## A293008.P7201649865716360793

`∩[A047203(n+1), A174144(n+1)]`
-/

namespace A293008.P7201649865716360793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293008.P7201649865716360793

/-!
# A293010: a(n) is the smallest x > 2 to satisfy pi(x-1)/(x-1)^n < pi(x)/x^n, where pi(x) is the prime counting function (A000720).

The programs for A293010, there is no canonical definition to state claims against.
-/

/-! ## A293010.P11014621057317193114

`A177681(A003477(n))`
-/

namespace A293010.P11014621057317193114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177681 (A003477 n).toNat

end

end A293010.P11014621057317193114

/-!
# A293012: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x/(1 - x)^k).

The programs for A293012, there is no canonical definition to state claims against.
-/

/-! ## A293012.P15493053138263171360

`A262882(A341033(n))`
-/

namespace A293012.P15493053138263171360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A341033 n).toNat

end

end A293012.P15493053138263171360

/-! ## A293012.P7129657327944838365

`A262882(A382101(n))`
-/

namespace A293012.P7129657327944838365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A382101 n).toNat

end

end A293012.P7129657327944838365

/-! ## A293012.P9826410997906843578

`A006530(∏{d}[A294746(n), #])`
-/

namespace A293012.P9826410997906843578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A293012.P9826410997906843578

/-! ## A293012.P1970805648297000136

`A006530(A294746(n)^A005812(n))`
-/

namespace A293012.P1970805648297000136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A294746 n : ℚ) ^ (A005812 n : ℤ))).toNat

end

end A293012.P1970805648297000136

/-! ## A293012.P7771124064346763855

`A006530(A294746(n)^A131294(n))`
-/

namespace A293012.P7771124064346763855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A294746 n : ℚ) ^ (A131294 n : ℤ))).toNat

end

end A293012.P7771124064346763855

/-!
# A293013: a(n) = n! * [x^n] exp(x/(1 - x)^n).

The programs for A293013, there is no canonical definition to state claims against.
-/

/-! ## A293013.P1378962035754352497

`A293012(∑[4*n])`
-/

namespace A293013.P1378962035754352497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293013.P1378962035754352497

/-! ## A293013.P7160853753930159891

`or(1, A293012(A046092(n)))`
-/

namespace A293013.P7160853753930159891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293012 (A046092 n).toNat)

end

end A293013.P7160853753930159891

/-! ## A293013.P5404332470474903975

`A293012(A046092(n))+A025469(n)`
-/

namespace A293013.P5404332470474903975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A046092 n).toNat + A025469 n

end

end A293013.P5404332470474903975

/-! ## A293013.P5552124869600026808

`A293012(A046092(n))+A185246(n)`
-/

namespace A293013.P5552124869600026808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A046092 n).toNat + A185246 n

end

end A293013.P5552124869600026808

/-! ## A293013.P7899889557541572662

`A293012(A046092(n))+A185284(n)`
-/

namespace A293013.P7899889557541572662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A046092 n).toNat + A185284 n

end

end A293013.P7899889557541572662

/-!
# A293014: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-4) for n > 4, where a(n)=0 for n < 4 and a(4) = 1.

The programs for A293014, the canonical program `A293014.P2654624143572222600` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293014 has offset 0).

The definition of A293014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293014.P2654624143572222600

`ogf(x^4/(1-x-x^2+x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293014

/-- `ogf(x^4/(1-x-x^2+x^3-x^4-x^5))` -/
def P2654624143572222600.Spec : Prop :=
  ∀ n, P2654624143572222600.a n = A293014 n

theorem P2654624143572222600.correct : P2654624143572222600.Spec := by
  intro n
  simp only [A293014]

end A293014

/-! ## A293014.P8453026757887853128

`A000045(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293014.P8453026757887853128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 (n - 3) - a (n - 3)

end

end A293014.P8453026757887853128

namespace A293014

/-- `A000045(n-3)-a(n-3)` -/
def P8453026757887853128.Spec : Prop :=
  ∀ n, P8453026757887853128.a n = A293014 n

end A293014

/-! ## A293014.P3525134858699537002

`abs(1-∑[A106511(n)])`
-/

namespace A293014.P3525134858699537002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A293014.P3525134858699537002

namespace A293014

/-- `abs(1-∑[A106511(n)])` -/
def P3525134858699537002.Spec : Prop :=
  ∀ n, P3525134858699537002.a n = A293014 n

end A293014

/-! ## A293014.P3491791334376396572

`(A290968(n)-A130151(n))/2`
-/

namespace A293014.P3491791334376396572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290968 n - A130151 n : ℚ) / 2

end

end A293014.P3491791334376396572

namespace A293014

/-- `(A290968(n)-A130151(n))/2` -/
def P3491791334376396572.Spec : Prop :=
  ∀ n, P3491791334376396572.a n = (A293014 n : ℚ)

end A293014

/-! ## A293014.P9247457651118283671

`floor((A000035(n+1)-A152163(n))/2)`
-/

namespace A293014.P9247457651118283671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 (n + 1) - A152163 n : ℚ) / 2⌋

end

end A293014.P9247457651118283671

namespace A293014

/-- `floor((A000035(n+1)-A152163(n))/2)` -/
def P9247457651118283671.Spec : Prop :=
  ∀ n, P9247457651118283671.a n = A293014 n

end A293014

/-! ## A293014.P870251068525113844

`A141325(n)-A005252(n)`
-/

namespace A293014.P870251068525113844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n - A005252 n

end

end A293014.P870251068525113844

namespace A293014

/-- `A141325(n)-A005252(n)` -/
def P870251068525113844.Spec : Prop :=
  ∀ n, P870251068525113844.a n = A293014 n

end A293014

/-! ## A293014.P2842661997606851338

`Δ[Δ[round(A002062(n)/2)]]`
-/

namespace A293014.P2842661997606851338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002062 n : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293014.P2842661997606851338

namespace A293014

/-- `Δ[Δ[round(A002062(n)/2)]]` -/
def P2842661997606851338.Spec : Prop :=
  ∀ n, P2842661997606851338.a n = A293014 n

end A293014

/-! ## A293014.P2457044107387321513

`A279890(n+1)-A014217(n)`
-/

namespace A293014.P2457044107387321513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279890 (n + 1) - A014217 n

end

end A293014.P2457044107387321513

namespace A293014

/-- `A279890(n+1)-A014217(n)` -/
def P2457044107387321513.Spec : Prop :=
  ∀ n, P2457044107387321513.a n = A293014 n

end A293014

/-! ## A293014.P11525837584220684777

`Δ[A173433(n+2)-Δ[A324969(n+2)]]`
-/

namespace A293014.P11525837584220684777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293014.P11525837584220684777

namespace A293014

/-- `Δ[A173433(n+2)-Δ[A324969(n+2)]]` -/
def P11525837584220684777.Spec : Prop :=
  ∀ n, P11525837584220684777.a n = A293014 n

end A293014

/-! ## A293014.P7116131333631681543

`ceil(A014217(n+1)/2-A000045(n+1))`
-/

namespace A293014.P7116131333631681543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014217 (n + 1) : ℚ) / 2 - (A000045 (n + 1) : ℚ)⌉

end

end A293014.P7116131333631681543

namespace A293014

/-- `ceil(A014217(n+1)/2-A000045(n+1))` -/
def P7116131333631681543.Spec : Prop :=
  ∀ n, P7116131333631681543.a n = A293014 n

end A293014

/-! ## A293014.P12880925849725127443

`abs(∑[A106511(n)%A026790(n)])`
-/

namespace A293014.P12880925849725127443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106511 n) (A026790 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A293014.P12880925849725127443

namespace A293014

/-- `abs(∑[A106511(n)%A026790(n)])` -/
def P12880925849725127443.Spec : Prop :=
  ∀ n, P12880925849725127443.a n = A293014 n

end A293014

/-! ## A293014.P15476663490005761203

`round(A001654(n)/(2*A020695(n)))`
-/

namespace A293014.P15476663490005761203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001654 n : ℚ) / (2 * A020695 n : ℚ))

end

end A293014.P15476663490005761203

namespace A293014

/-- `round(A001654(n)/(2*A020695(n)))` -/
def P15476663490005761203.Spec : Prop :=
  ∀ n, P15476663490005761203.a n = A293014 n

end A293014

/-! ## A293014.P6819237749044629945

`round(A001654(n)/A118658(n+4))`
-/

namespace A293014.P6819237749044629945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001654 n : ℚ) / (A118658 (n + 4) : ℚ))

end

end A293014.P6819237749044629945

namespace A293014

/-- `round(A001654(n)/A118658(n+4))` -/
def P6819237749044629945.Spec : Prop :=
  ∀ n, P6819237749044629945.a n = A293014 n

end A293014

/-! ## A293014.P5091475647025753123

`round(A000045(n)²/A068922(n+1))`
-/

namespace A293014.P5091475647025753123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 n ^ 2 : ℚ) / (A068922 (n + 1) : ℚ))

end

end A293014.P5091475647025753123

namespace A293014

/-- `round(A000045(n)²/A068922(n+1))` -/
def P5091475647025753123.Spec : Prop :=
  ∀ n, P5091475647025753123.a n = A293014 n

end A293014

/-! ## A293014.P14399801580104722677

`round(A000045(2*n)/A022112(n+1))`
-/

namespace A293014.P14399801580104722677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (2 * n) : ℚ) / (A022112 (n + 1) : ℚ))

end

end A293014.P14399801580104722677

namespace A293014

/-- `round(A000045(2*n)/A022112(n+1))` -/
def P14399801580104722677.Spec : Prop :=
  ∀ n, P14399801580104722677.a n = A293014 n

end A293014

/-! ## A293014.P7573330773070256897

`round(A052952(2*n)/A022112(n+3))`
-/

namespace A293014.P7573330773070256897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052952 (2 * n) : ℚ) / (A022112 (n + 3) : ℚ))

end

end A293014.P7573330773070256897

namespace A293014

/-- `round(A052952(2*n)/A022112(n+3))` -/
def P7573330773070256897.Spec : Prop :=
  ∀ n, P7573330773070256897.a n = A293014 n

end A293014

/-! ## A293014.P7329503178325747250

`round(A099919(n)/A099921(n+2))`
-/

namespace A293014.P7329503178325747250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099919 n : ℚ) / (A099921 (n + 2) : ℚ))

end

end A293014.P7329503178325747250

namespace A293014

/-- `round(A099919(n)/A099921(n+2))` -/
def P7329503178325747250.Spec : Prop :=
  ∀ n, P7329503178325747250.a n = A293014 n

end A293014

/-!
# A293015: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(0,k) = 1 and A(n,k) = - Sum_{i=0..n-1} binomial(n-1,i) * binomial(i+1,k) * A(n-1-i,k) for n > 0.

The programs for A293015, there is no canonical definition to state claims against.
-/

/-! ## A293015.P27458952083530435

`A293019(n)/A096591(A048993(n))`
-/

namespace A293015.P27458952083530435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 n : ℚ) / (A096591 (A048993 n).toNat : ℚ)

end

end A293015.P27458952083530435

/-! ## A293015.P2895714813738622815

`A293019(n)/A000120(A155971(n))`
-/

namespace A293015.P2895714813738622815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 n : ℚ) / (A000120 (A155971 n).toNat : ℚ)

end

end A293015.P2895714813738622815

/-! ## A293015.P17971248164502513912

`A293019(n)/A010177(A288972(n))`
-/

namespace A293015.P17971248164502513912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 n : ℚ) / (A010177 (A288972 n).toNat : ℚ)

end

end A293015.P17971248164502513912

/-! ## A293015.P16582792018523670196

`A293019(n)/A040001(A273712(n))`
-/

namespace A293015.P16582792018523670196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 n : ℚ) / (A040001 (A273712 n).toNat : ℚ)

end

end A293015.P16582792018523670196

/-! ## A293015.P7252484009777582355

`A293019(n)/A143965(A333901(n))`
-/

namespace A293015.P7252484009777582355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 n : ℚ) / (A143965 (A333901 n).toNat : ℚ)

end

end A293015.P7252484009777582355

/-!
# A293016: E.g.f.: exp(-x^2 * exp(x)).

The programs for A293016, there is no canonical definition to state claims against.
-/

/-! ## A293016.P10791068926122704047

`A293019(∑[n+3])`
-/

namespace A293016.P10791068926122704047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293016.P10791068926122704047

/-! ## A293016.P6423257528343033607

`A293019(A055998(n+1))-val(2*n+1, 2)`
-/

namespace A293016.P6423257528343033607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A055998 (n + 1)).toNat - (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A293016.P6423257528343033607

/-! ## A293016.P2182056689282970453

`A293019(A055998(n+1))^A178334(n)`
-/

namespace A293016.P2182056689282970453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 (A055998 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A293016.P2182056689282970453

/-! ## A293016.P9620401794259233847

`A293019(A055998(n+1))+A000007(n+1)`
-/

namespace A293016.P9620401794259233847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293016.P9620401794259233847

/-! ## A293016.P9913482814751834767

`gcd(3, A172071(n+1))*A293019(A055998(n+1))`
-/

namespace A293016.P9913482814751834767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A172071 (n + 1)) : ℤ) * A293019 (A055998 (n + 1)).toNat

end

end A293016.P9913482814751834767

/-! ## A293016.P353437895286362419

`((-1)^A007318(n))²*A293019(A055998(n+1))`
-/

namespace A293016.P353437895286362419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A293019 (A055998 (n + 1)).toNat : ℚ)

end

end A293016.P353437895286362419

/-! ## A293016.P10268158499201768778

`A293019(A055998(n+1))+A008683(A051698(n))+1`
-/

namespace A293016.P10268158499201768778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A055998 (n + 1)).toNat + (A008683 (A051698 n).toNat + 1)

end

end A293016.P10268158499201768778

/-! ## A293016.P3045023593618352574

`A293019(A055998(n+1))/A285337(A000040(n+1))`
-/

namespace A293016.P3045023593618352574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293019 (A055998 (n + 1)).toNat : ℚ) / (A285337 (A000040 (n + 1)).toNat : ℚ)

end

end A293016.P3045023593618352574

/-!
# A293017: E.g.f.: exp(-x^3 * exp(x)).

The programs for A293017, there is no canonical definition to state claims against.
-/

/-! ## A293017.P2228380703804500388

`(-1)^n*A292908(n)`
-/

namespace A293017.P2228380703804500388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A292908 n

end

end A293017.P2228380703804500388

/-! ## A293017.P6310066334927232201

`A292908(n)/A057077(2*n)`
-/

namespace A293017.P6310066334927232201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292908 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A293017.P6310066334927232201

/-! ## A293017.P15327976880477714916

`A293019(∑[n+3]+n+3)`
-/

namespace A293017.P15327976880477714916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293017.P15327976880477714916

/-! ## A293017.P8806318592155869408

`A062157(n+1)*A292973(∑[n+3]+n+3)`
-/

namespace A293017.P8806318592155869408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A292973 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293017.P8806318592155869408

/-! ## A293017.P2258537597803497076

`A292908(n)/A103718(A000096(n))`
-/

namespace A293017.P2258537597803497076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292908 n : ℚ) / (A103718 (A000096 n).toNat : ℚ)

end

end A293017.P2258537597803497076

/-!
# A293018: E.g.f.: exp(-x^4 * exp(x)).

The programs for A293018, there is no canonical definition to state claims against.
-/

/-! ## A293018.P16319353301571167675

`A293019(A052905(n+2))`
-/

namespace A293018.P16319353301571167675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A052905 (n + 2)).toNat

end

end A293018.P16319353301571167675

/-! ## A293018.P14857882482867627197

`A293019(A000217(n+5)-5)`
-/

namespace A293018.P14857882482867627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A000217 (n + 5) - 5).toNat

end

end A293018.P14857882482867627197

/-! ## A293018.P11087739882733287243

`A293019(eq[5, A004736(n+1)])`
-/

namespace A293018.P11087739882733287243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293018.P11087739882733287243

/-! ## A293018.P16329448340601832784

`A293019(Δ[Δ[A022815(n+1)]])`
-/

namespace A293018.P16329448340601832784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (f1 (n + 1) - f1 n).toNat

end

end A293018.P16329448340601832784

/-! ## A293018.P12521126353243577140

`A293019(A000096(n+3)+n+1)`
-/

namespace A293018.P12521126353243577140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A293018.P12521126353243577140

/-! ## A293018.P321220178138835098

`A293019(Δ[n²]+Δ[A008778(n)]+5)`
-/

namespace A293018.P321220178138835098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (f2 (n + 1) - f2 n + 5)).toNat

end

end A293018.P321220178138835098

/-!
# A293019: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(0,k) = 1 and A(n,k) = - k! * Sum_{i=0..n-1} binomial(n-1,i) * binomial(i+1,k) * A(n-1-i,k) for n > 0.

The programs for A293019, there is no canonical definition to state claims against.
-/

/-! ## A293019.P9687687546898062525

`A096591(A048993(n))*A293015(n)`
-/

namespace A293019.P9687687546898062525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A048993 n).toNat * A293015 n

end

end A293019.P9687687546898062525

/-! ## A293019.P3986253447176109314

`A000120(A155971(n))*A293015(n)`
-/

namespace A293019.P3986253447176109314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A155971 n).toNat * A293015 n

end

end A293019.P3986253447176109314

/-! ## A293019.P226458208215334911

`A010177(A288972(n))*A293015(n)`
-/

namespace A293019.P226458208215334911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A288972 n).toNat * A293015 n

end

end A293019.P226458208215334911

/-! ## A293019.P17252040200529317636

`A040001(A273712(n))*A293015(n)`
-/

namespace A293019.P17252040200529317636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A273712 n).toNat * A293015 n

end

end A293019.P17252040200529317636

/-! ## A293019.P13541027210457163717

`A143965(A333901(n))*A293015(n)`
-/

namespace A293019.P13541027210457163717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (A333901 n).toNat * A293015 n

end

end A293019.P13541027210457163717

/-!
# A293020: a(n) = n! * [x^n] exp(n*tan(x)).

The programs for A293020, there is no canonical definition to state claims against.
-/

/-! ## A293020.P9286118520826014020

`A028310(n)*A227465(A028310(n))`
-/

namespace A293020.P9286118520826014020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A227465 (A028310 n).toNat

end

end A293020.P9286118520826014020

/-!
# A293021: a(n) = n! * [x^n] exp(n*sin(x)).

The programs for A293021, there is no canonical definition to state claims against.
-/

/-! ## A293021.P4861118938685241093

`A028310(n)*A334856(A028310(n))`
-/

namespace A293021.P4861118938685241093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A334856 (A028310 n).toNat

end

end A293021.P4861118938685241093

/-! ## A293021.P15243607016259075948

`(A000007(n)+n)*A334856(A000007(n)+n)`
-/

namespace A293021.P15243607016259075948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A334856 (A000007 n + (n : ℤ)).toNat

end

end A293021.P15243607016259075948

/-! ## A293021.P967943755526028267

`A000196(A002522(n))*A334856(A000007(n)+n)`
-/

namespace A293021.P967943755526028267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002522 n).toNat * A334856 (A000007 n + (n : ℤ)).toNat

end

end A293021.P967943755526028267

/-! ## A293021.P2823625327914045547

`A046854(A027379(n))*A334856(A000007(n)+n)`
-/

namespace A293021.P2823625327914045547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A027379 n).toNat * A334856 (A000007 n + (n : ℤ)).toNat

end

end A293021.P2823625327914045547

/-! ## A293021.P6033434615581801592

`A000005(A011782(n))*A334856(A000007(n)+n)`
-/

namespace A293021.P6033434615581801592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A334856 (A000007 n + (n : ℤ)).toNat

end

end A293021.P6033434615581801592

/-!
# A293022: a(n) = n! * [x^n] exp(n*sinh(x)).

The programs for A293022, there is no canonical definition to state claims against.
-/

/-! ## A293022.P9266218280064910218

`A028310(n)*A227463(A028310(n))`
-/

namespace A293022.P9266218280064910218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A227463 (A028310 n).toNat

end

end A293022.P9266218280064910218

/-! ## A293022.P17068506529784530045

`(A000007(n)+n)*A227463(A000007(n)+n)`
-/

namespace A293022.P17068506529784530045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A227463 (A000007 n + (n : ℤ)).toNat

end

end A293022.P17068506529784530045

/-!
# A293024: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(exp(x) - Sum_{i=0..k} x^i/i!).

The programs for A293024, there is no canonical definition to state claims against.
-/

/-! ## A293024.P2175648514745269927

`A182931(A038722(round(acot(n)+n))-1)`
-/

namespace A293024.P2175648514745269927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 (A038722 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1).toNat

end

end A293024.P2175648514745269927

/-! ## A293024.P16727191399170902223

`A182931(gcd(A010816(n), A038722(n+1)))`
-/

namespace A293024.P16727191399170902223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A293024.P16727191399170902223

/-! ## A293024.P8228255356808914783

`A182931(∑[char[∑[n]]]²-n)`
-/

namespace A293024.P8228255356808914783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A293024.P8228255356808914783

/-! ## A293024.P10376574371859478889

`A182931(A038722(n+1))%A016890(n)`
-/

namespace A293024.P10376574371859478889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182931 (A038722 (n + 1)).toNat) (A016890 n)

end

end A293024.P10376574371859478889

/-! ## A293024.P5834274986410490638

`A182931(A038722(n+1))^A014963(6*(n+2))`
-/

namespace A293024.P5834274986410490638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182931 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (6 * (n + 2)) : ℤ)

end

end A293024.P5834274986410490638

/-! ## A293024.P15673642606475764467

`A014963(9*n+6)*A182931(A038722(n+1))`
-/

namespace A293024.P15673642606475764467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A182931 (A038722 (n + 1)).toNat

end

end A293024.P15673642606475764467

/-! ## A293024.P15496099495560908220

`A182931(A038722(n+1))+A007318(C(6, n))-1`
-/

namespace A293024.P15496099495560908220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 (A038722 (n + 1)).toNat + (A007318 (Nat.choose 6 n) - 1)

end

end A293024.P15496099495560908220

/-! ## A293024.P7280676546850570492

`A182931(A038722(n+1))+C(n, A000041(2*n))`
-/

namespace A293024.P7280676546850570492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 (A038722 (n + 1)).toNat + (Nat.choose n (A000041 (2 * n)).toNat : ℤ)

end

end A293024.P7280676546850570492

/-! ## A293024.P14943022669039895342

`A000010(Δ[floor(n/γ)])*A182931(A038722(n+1))`
-/

namespace A293024.P14943022669039895342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A182931 (A038722 (n + 1)).toNat

end

end A293024.P14943022669039895342

/-! ## A293024.P15544971975128309479

`A007318(Δ[floor(n/γ)])*A182931(A038722(n+1))`
-/

namespace A293024.P15544971975128309479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A182931 (A038722 (n + 1)).toNat

end

end A293024.P15544971975128309479

/-!
# A293025: E.g.f.: exp(exp(x) - Sum_{i=0..5} x^i/i!).

The programs for A293025, there is no canonical definition to state claims against.
-/

/-! ## A293025.P17887709126313864839

`A293024(A055999(n+3))`
-/

namespace A293025.P17887709126313864839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A055999 (n + 3)).toNat

end

end A293025.P17887709126313864839

/-! ## A293025.P5373422984231949252

`A293024(Δ[A026054(n+3)])`
-/

namespace A293025.P5373422984231949252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (f1 (n + 1) - f1 n).toNat

end

end A293025.P5373422984231949252

/-! ## A293025.P2632309725067248705

`A293024(A052905(n+3)-1)`
-/

namespace A293025.P2632309725067248705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A052905 (n + 3) - 1).toNat

end

end A293025.P2632309725067248705

/-! ## A293025.P6786213691128050347

`A293024(eq[6, A004736(n+1)])`
-/

namespace A293025.P6786213691128050347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293025.P6786213691128050347

/-! ## A293025.P17958826730849194634

`A293024(A000124(n+5)+n-1)`
-/

namespace A293025.P17958826730849194634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A293025.P17958826730849194634

/-! ## A293025.P6490561187629127596

`A293024(2*n+A000124(n+4)+4)`
-/

namespace A293025.P6490561187629127596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A293025.P6490561187629127596

/-! ## A293025.P14763497924445001030

`A293024(A000217(A020710(n))+n)`
-/

namespace A293025.P14763497924445001030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A000217 (A020710 n).toNat + (n : ℤ)).toNat

end

end A293025.P14763497924445001030

/-!
# A293027: Numbers k such that (23*10^k - 83)/3 is prime.

The programs for A293027, there is no canonical definition to state claims against.
-/

/-! ## A293027.P695917332091540419

`A213478(A014314(n)+2)`
-/

namespace A293027.P695917332091540419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213478 (A014314 n + 2).toNat

end

end A293027.P695917332091540419

/-! ## A293027.P10114447956488196493

`∑[A002326(A209322(n)²)]`
-/

namespace A293027.P10114447956488196493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A209322 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293027.P10114447956488196493

/-!
# A293028: Period of the continued fraction for sqrt(5^(2n+1)).

The programs for A293028, there is no canonical definition to state claims against.
-/

/-! ## A293028.P1189266459415100206

`A064850(5^n)`
-/

namespace A293028.P1189266459415100206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064850 (5 ^ n)

end

end A293028.P1189266459415100206

/-! ## A293028.P7177440666989158341

`A290013(2*5^n)`
-/

namespace A293028.P7177440666989158341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290013 (2 * 5 ^ n)

end

end A293028.P7177440666989158341

/-!
# A293030: Square array read by antidiagonals downwards: a(n, k) is smallest number m > a(n, k-1) that is not in a previous row, and that avoids any 3-term arithmetic progression in a(n, 1), a(n, 2), ..., a(n, k-1), m.

The programs for A293030, there is no canonical definition to state claims against.
-/

/-! ## A293030.P6800810437256428720

`A262057(∑[char[∑[n]]]²-n)+1`
-/

namespace A293030.P6800810437256428720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A293030.P6800810437256428720

/-!
# A293031: Number of patterns enumerated in Phase 2 of an algorithm to enumerate flat-foldable single-vertex crease patterns with unit angle 180/n degrees.

The programs for A293031, there is no canonical definition to state claims against.
-/

/-! ## A293031.P1745101059228222302

`or(A001222(A021354(n)), A265266(n))`
-/

namespace A293031.P1745101059228222302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A021354 n).toNat) (A265266 n)

end

end A293031.P1745101059228222302

/-! ## A293031.P1292985858609657239

`A049990(A189857(n+1))+A022166(n)`
-/

namespace A293031.P1292985858609657239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A189857 (n + 1)).toNat + A022166 n

end

end A293031.P1292985858609657239

/-!
# A293037: E.g.f.: exp(1 + x - exp(x)).

The programs for A293037, there is no canonical definition to state claims against.
-/

/-! ## A293037.P14783123439478398673

`-A000587(n+1)`
-/

namespace A293037.P14783123439478398673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000587 (n + 1)

end

end A293037.P14783123439478398673

/-! ## A293037.P9746987983286290848

`Δ[-∑[A000587(n)]]`
-/

namespace A293037.P9746987983286290848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293037.P9746987983286290848

/-! ## A293037.P15277073761934139716

`-A213953(∑[n+1])`
-/

namespace A293037.P15277073761934139716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A213953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293037.P15277073761934139716

/-! ## A293037.P13968312708260263985

`-A293051(∑[n+2])`
-/

namespace A293037.P13968312708260263985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A293051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293037.P13968312708260263985

/-! ## A293037.P9896149567657906819

`A293051(∑[n+2]-1)`
-/

namespace A293037.P9896149567657906819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293037.P9896149567657906819

/-! ## A293037.P225167463074212581

`∑{#}[n, C(n, #)*A000587(#)]`
-/

namespace A293037.P225167463074212581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000587 k

end

end A293037.P225167463074212581

/-! ## A293037.P2744756253045813863

`A014182(n)*A033999(n)`
-/

namespace A293037.P2744756253045813863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 n * A033999 n

end

end A293037.P2744756253045813863

/-! ## A293037.P5640898042946927230

`A000007(n+1)-A000587(n+1)`
-/

namespace A293037.P5640898042946927230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A000587 (n + 1)

end

end A293037.P5640898042946927230

/-! ## A293037.P5911852274879493508

`A000587(n+1)*A153881(n+2)`
-/

namespace A293037.P5911852274879493508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1) * A153881 (n + 2)

end

end A293037.P5911852274879493508

/-! ## A293037.P7558465215706392755

`1-(A000587(n+1)+A000034(2*n))`
-/

namespace A293037.P7558465215706392755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000587 (n + 1) + A000034 (2 * n))

end

end A293037.P7558465215706392755

/-!
# A293038: E.g.f.: exp(1 + x + x^2/2! - exp(x)).

The programs for A293038, there is no canonical definition to state claims against.
-/

/-! ## A293038.P1088366825649438985

`A293051(∑[n+3])`
-/

namespace A293038.P1088366825649438985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293038.P1088366825649438985

/-! ## A293038.P14198865291119291647

`floor(A293051(A055998(n+1))+sin(n)²)`
-/

namespace A293038.P14198865291119291647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293051 (A055998 (n + 1)).toNat : ℝ) + Real.sin (n : ℝ) ^ 2⌋

end

end A293038.P14198865291119291647

/-! ## A293038.P6938953055034177749

`or(A000007(n), A293051(A055998(n+1)))`
-/

namespace A293038.P6938953055034177749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293051 (A055998 (n + 1)).toNat)

end

end A293038.P6938953055034177749

/-! ## A293038.P3713203661188395883

`A293051(A055998(n+1))^A000038(n)!`
-/

namespace A293038.P3713203661188395883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A055998 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A293038.P3713203661188395883

/-! ## A293038.P2393394356759276075

`A293051(A055998(n+1))+A000007(n+1)`
-/

namespace A293038.P2393394356759276075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293038.P2393394356759276075

/-! ## A293038.P10976012825567451709

`A007318(A000217(n))*A293051(A055998(n+1))`
-/

namespace A293038.P10976012825567451709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A293051 (A055998 (n + 1)).toNat

end

end A293038.P10976012825567451709

/-! ## A293038.P4925639258947671050

`A007318(A014963(2*(n+1)))*A293051(A055998(n+1))`
-/

namespace A293038.P4925639258947671050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A293051 (A055998 (n + 1)).toNat

end

end A293038.P4925639258947671050

/-! ## A293038.P5177706648204698183

`A000040(A000040(n+1)+1)%2*A293051(A055998(n+1))`
-/

namespace A293038.P5177706648204698183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000040 (n + 1) + 1).toNat) 2 * A293051 (A055998 (n + 1)).toNat

end

end A293038.P5177706648204698183

/-!
# A293039: E.g.f.: exp(1 + x + x^2/2! + x^3/3! - exp(x)).

The programs for A293039, there is no canonical definition to state claims against.
-/

/-! ## A293039.P9484726560069113148

`A293051(∑[n+4]+2)`
-/

namespace A293039.P9484726560069113148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293039.P9484726560069113148

/-! ## A293039.P8663277611067056912

`(1-char[1])*A293051(A046691(n+2))`
-/

namespace A293039.P8663277611067056912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A293051 (A046691 (n + 2)).toNat

end

end A293039.P8663277611067056912

/-! ## A293039.P15126904437203860183

`A293051(A046691(n+2))^A178334(n)`
-/

namespace A293039.P15126904437203860183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293051 (A046691 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A293039.P15126904437203860183

/-! ## A293039.P3754726907020839769

`A293051(A046691(n+2))+A000035(2*n)`
-/

namespace A293039.P3754726907020839769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A293039.P3754726907020839769

/-! ## A293039.P9515267859340202414

`and(A153881(n+1), A293051(A046691(n+2)))`
-/

namespace A293039.P9515267859340202414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A293051 (A046691 (n + 2)).toNat)

end

end A293039.P9515267859340202414

/-! ## A293039.P12749362982259125024

`A014963(12*n+6)+A293051(A046691(n+2))-1`
-/

namespace A293039.P12749362982259125024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) + (A293051 (A046691 (n + 2)).toNat - 1)

end

end A293039.P12749362982259125024

/-! ## A293039.P13461102426876675517

`1-(A007318(and(n, -(n+1)))-A293051(A046691(n+2)))`
-/

namespace A293039.P13461102426876675517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007318 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat - A293051 (A046691 (n + 2)).toNat)

end

end A293039.P13461102426876675517

/-!
# A293040: E.g.f.: exp(1 + x + x^2/2! + x^3/3! + x^4/4! - exp(x)).

The programs for A293040, there is no canonical definition to state claims against.
-/

/-! ## A293040.P13721204159253867439

`A293051(A052905(n+2))`
-/

namespace A293040.P13721204159253867439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A052905 (n + 2)).toNat

end

end A293040.P13721204159253867439

/-! ## A293040.P4269469019354952222

`A293051(A000124(n+5)-6)`
-/

namespace A293040.P4269469019354952222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A000124 (n + 5) - 6).toNat

end

end A293040.P4269469019354952222

/-! ## A293040.P15902507426762595895

`A293051(Δ[Δ[A022815(n+1)]])`
-/

namespace A293040.P15902507426762595895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (f1 (n + 1) - f1 n).toNat

end

end A293040.P15902507426762595895

/-! ## A293040.P17195372528315793652

`A293051(A000096(n+3)+n+1)`
-/

namespace A293040.P17195372528315793652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A293040.P17195372528315793652

/-! ## A293040.P11546296369420071289

`A293051(A000217(A020705(n))+n)`
-/

namespace A293040.P11546296369420071289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A000217 (A020705 n).toNat + (n : ℤ)).toNat

end

end A293040.P11546296369420071289

/-! ## A293040.P4558718928025817512

`A293051(A167499(n)+A059558(n+1))`
-/

namespace A293040.P4558718928025817512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (A167499 n + A059558 (n + 1)).toNat

end

end A293040.P4558718928025817512

/-!
# A293042: Number of even permutations p of {1,...,n} such that p(i) is not i or i+1.

The programs for A293042, the canonical program `A293042.P15673851028626043613` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293042 has offset 0).

The definition of A293042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293042.P15673851028626043613

`(A000271(n)+(-1)^(n-1)*floor((n-1)/2))/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293042

/-- `(A000271(n)+(-1)^(n-1)*floor((n-1)/2))/2` -/
def P15673851028626043613.Spec : Prop :=
  ∀ n, P15673851028626043613.a n = (A293042 n : ℚ)

end A293042

/-! ## A293042.P13499501642923788359

`A000271(n)-A293043(n)`
-/

namespace A293042.P13499501642923788359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n - A293043 n

end

end A293042.P13499501642923788359

namespace A293042

/-- `A000271(n)-A293043(n)` -/
def P13499501642923788359.Spec : Prop :=
  ∀ n, P13499501642923788359.a n = A293042 n

end A293042

/-! ## A293042.P4964926417069443980

`∑[A000179(n)]-A293043(n)`
-/

namespace A293042.P4964926417069443980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293043 n

end

end A293042.P4964926417069443980

namespace A293042

/-- `∑[A000179(n)]-A293043(n)` -/
def P4964926417069443980.Spec : Prop :=
  ∀ n, P4964926417069443980.a n = A293042 n

end A293042

/-! ## A293042.P13101913270877073156

`A156368(∑[n])-A293043(n)`
-/

namespace A293042.P13101913270877073156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f1 j) - A293043 n

end

end A293042.P13101913270877073156

namespace A293042

/-- `A156368(∑[n])-A293043(n)` -/
def P13101913270877073156.Spec : Prop :=
  ∀ n, P13101913270877073156.a n = A293042 n

end A293042

/-! ## A293042.P4177534044873145057

`A296030(A268581(n))+A293043(n)`
-/

namespace A293042.P4177534044873145057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A268581 n).toNat + A293043 n

end

end A293042.P4177534044873145057

namespace A293042

/-- `A296030(A268581(n))+A293043(n)` -/
def P4177534044873145057.Spec : Prop :=
  ∀ n, P4177534044873145057.a n = A293042 n

end A293042

/-!
# A293043: Number of odd permutations p of {1,...,n} such that p(i) is not i or i+1.

The programs for A293043, the canonical program `A293043.P8438911873217089998` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293043 has offset 0).

The definition of A293043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293043.P8438911873217089998

`(A000271(n)+(-1)^n*floor((n-1)/2))/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293043

/-- `(A000271(n)+(-1)^n*floor((n-1)/2))/2` -/
def P8438911873217089998.Spec : Prop :=
  ∀ n, P8438911873217089998.a n = (A293043 n : ℚ)

end A293043

/-! ## A293043.P8094125489724713258

`A000271(n)-A293042(n)`
-/

namespace A293043.P8094125489724713258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n - A293042 n

end

end A293043.P8094125489724713258

namespace A293043

/-- `A000271(n)-A293042(n)` -/
def P8094125489724713258.Spec : Prop :=
  ∀ n, P8094125489724713258.a n = A293043 n

end A293043

/-! ## A293043.P1534829494430291254

`∑[A000179(n)]-A293042(n)`
-/

namespace A293043.P1534829494430291254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293042 n

end

end A293043.P1534829494430291254

namespace A293043

/-- `∑[A000179(n)]-A293042(n)` -/
def P1534829494430291254.Spec : Prop :=
  ∀ n, P1534829494430291254.a n = A293043 n

end A293043

/-! ## A293043.P14782534300960501117

`A156368(∑[n])-A293042(n)`
-/

namespace A293043.P14782534300960501117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f1 j) - A293042 n

end

end A293043.P14782534300960501117

namespace A293043

/-- `A156368(∑[n])-A293042(n)` -/
def P14782534300960501117.Spec : Prop :=
  ∀ n, P14782534300960501117.a n = A293043 n

end A293043

/-! ## A293043.P36115628220272249

`A047922(A000096(n))-A293042(n)`
-/

namespace A293043.P36115628220272249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (A000096 n).toNat - A293042 n

end

end A293043.P36115628220272249

namespace A293043

/-- `A047922(A000096(n))-A293042(n)` -/
def P36115628220272249.Spec : Prop :=
  ∀ n, P36115628220272249.a n = A293043 n

end A293043

/-!
# A293044: Number of even permutations s of {1,2,...,n} such that |s(i)-i| > 1 for each i=1,2,...,n.

The programs for A293044, there is no canonical definition to state claims against.
-/

/-! ## A293044.P8656653039618006782

`A001883(n)-A293045(n)`
-/

namespace A293044.P8656653039618006782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 n - A293045 n

end

end A293044.P8656653039618006782

/-! ## A293044.P12830270921702664866

`A323671(∑[n])-A293045(n)`
-/

namespace A293044.P12830270921702664866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323671 (∑ j ∈ Finset.range (n + 1), f1 j) - A293045 n

end

end A293044.P12830270921702664866

/-! ## A293044.P13041014147367261475

`A000166(n)-(A296050(n)+A293045(n))`
-/

namespace A293044.P13041014147367261475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - (A296050 n + A293045 n)

end

end A293044.P13041014147367261475

/-! ## A293044.P3305631682144895920

`abs(A182386(n))-(A296050(n)+A293045(n))`
-/

namespace A293044.P3305631682144895920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - (A296050 n + A293045 n)

end

end A293044.P3305631682144895920

/-! ## A293044.P3098228825159453820

`A000142(n)-(A296050(n)+A002467(n))-A293045(n)`
-/

namespace A293044.P3098228825159453820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A296050 n + A002467 n) - A293045 n

end

end A293044.P3098228825159453820

/-!
# A293045: Number of odd permutations s of {1,2,...,n} such that |s(i)-i| > 1 for each i=1,2,...,n.

The programs for A293045, there is no canonical definition to state claims against.
-/

/-! ## A293045.P9882950246854004757

`A001883(n)-A293044(n)`
-/

namespace A293045.P9882950246854004757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 n - A293044 n

end

end A293045.P9882950246854004757

/-! ## A293045.P8054113392426972790

`A323671(∑[n])-A293044(n)`
-/

namespace A293045.P8054113392426972790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323671 (∑ j ∈ Finset.range (n + 1), f1 j) - A293044 n

end

end A293045.P8054113392426972790

/-! ## A293045.P1566925073970408705

`A000166(n)-(A296050(n)+A293044(n))`
-/

namespace A293045.P1566925073970408705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - (A296050 n + A293044 n)

end

end A293045.P1566925073970408705

/-! ## A293045.P5735635916348038651

`abs(A182386(n))-(A296050(n)+A293044(n))`
-/

namespace A293045.P5735635916348038651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - (A296050 n + A293044 n)

end

end A293045.P5735635916348038651

/-! ## A293045.P12946772715480763309

`A080018(∑[n])-A293044(n)`
-/

namespace A293045.P12946772715480763309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080018 (∑ j ∈ Finset.range (n + 1), f1 j) - A293044 n

end

end A293045.P12946772715480763309

/-!
# A293046: Number of even permutations on {1,2,...,n} with exactly 2 weak excedances.

The programs for A293046, the canonical program `A293046.P4899036897174396438` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293046 has offset 0).

The definition of A293046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293046.P8413755944602419405

`ceil(2^(n-1)-n^(n%2))`
-/

namespace A293046.P8413755944602419405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ (n % 2) : ℚ)⌉

end

end A293046.P8413755944602419405

namespace A293046

/-- `ceil(2^(n-1)-n^(n%2))` -/
def P8413755944602419405.Spec : Prop :=
  ∀ n, P8413755944602419405.a n = A293046 n

end A293046

/-! ## A293046.P16052434814557486359

`ceil(2^(n-1)-n^and(1, n))`
-/

namespace A293046.P16052434814557486359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ Nat.land 1 n : ℚ)⌉

end

end A293046.P16052434814557486359

namespace A293046

/-- `ceil(2^(n-1)-n^and(1, n))` -/
def P16052434814557486359.Spec : Prop :=
  ∀ n, P16052434814557486359.a n = A293046 n

end A293046

/-! ## A293046.P4899036897174396438

`ceil(2^(n-1)-gcd(n, or(1, n)))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293046

/-- `ceil(2^(n-1)-gcd(n, or(1, n)))` -/
def P4899036897174396438.Spec : Prop :=
  ∀ n, P4899036897174396438.a n = A293046 n

theorem P4899036897174396438.correct : P4899036897174396438.Spec := by
  intro n
  simp only [A293046]

end A293046

/-! ## A293046.P8163005269320248631

`round(2^(n-1))-C(n, and(1, n))`
-/

namespace A293046.P8163005269320248631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - (Nat.choose n (Nat.land 1 n) : ℤ)

end

end A293046.P8163005269320248631

namespace A293046

/-- `round(2^(n-1))-C(n, and(1, n))` -/
def P8163005269320248631.Spec : Prop :=
  ∀ n, P8163005269320248631.a n = A293046 n

end A293046

/-! ## A293046.P10175820492963914502

`A011782(n)-A093178(n)`
-/

namespace A293046.P10175820492963914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A093178 n

end

end A293046.P10175820492963914502

namespace A293046

/-- `A011782(n)-A093178(n)` -/
def P10175820492963914502.Spec : Prop :=
  ∀ n, P10175820492963914502.a n = A293046 n

end A293046

/-! ## A293046.P6556468376272602557

`A052968(n)-A321220(n)`
-/

namespace A293046.P6556468376272602557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - A321220 n

end

end A293046.P6556468376272602557

namespace A293046

/-- `A052968(n)-A321220(n)` -/
def P6556468376272602557.Spec : Prop :=
  ∀ n, P6556468376272602557.a n = A293046 n

end A293046

/-! ## A293046.P13305941298151971071

`A288133(n+1)-A043547(n+1)`
-/

namespace A293046.P13305941298151971071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) - A043547 (n + 1)

end

end A293046.P13305941298151971071

namespace A293046

/-- `A288133(n+1)-A043547(n+1)` -/
def P13305941298151971071.Spec : Prop :=
  ∀ n, P13305941298151971071.a n = A293046 n

end A293046

/-! ## A293046.P16676355476576233079

`A000295(n)-A293047(n)`
-/

namespace A293046.P16676355476576233079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A293047 n

end

end A293046.P16676355476576233079

namespace A293046

/-- `A000295(n)-A293047(n)` -/
def P16676355476576233079.Spec : Prop :=
  ∀ n, P16676355476576233079.a n = A293046 n

end A293046

/-! ## A293046.P8418142110003550242

`∑{#}[floor(n/2)-1, C(n, 2*#)]`
-/

namespace A293046.P8418142110003550242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (2 * k)

end

end A293046.P8418142110003550242

namespace A293046

/-- `∑{#}[floor(n/2)-1, C(n, 2*#)]` -/
def P8418142110003550242.Spec : Prop :=
  ∀ n, (P8418142110003550242.a n : ℤ) = A293046 n

end A293046

/-!
# A293047: Number of odd permutations on {1,2,...,n} with exactly 2 weak excedances.

The programs for A293047, the canonical program `A293047.P5879048148784163837` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293047 has offset 0).

The definition of A293047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293047.P5879048148784163837

`floor(2^(n-1)-gcd(n, n%2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293047

/-- `floor(2^(n-1)-gcd(n, n%2))` -/
def P5879048148784163837.Spec : Prop :=
  ∀ n, P5879048148784163837.a n = A293047 n

theorem P5879048148784163837.correct : P5879048148784163837.Spec := by
  intro n
  simp only [A293047]

end A293047

/-! ## A293047.P10238539447992320414

`floor(2^(n-1)-n^((n+1)%2))`
-/

namespace A293047.P10238539447992320414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ ((n + 1) % 2) : ℚ)⌋

end

end A293047.P10238539447992320414

namespace A293047

/-- `floor(2^(n-1)-n^((n+1)%2))` -/
def P10238539447992320414.Spec : Prop :=
  ∀ n, P10238539447992320414.a n = A293047 n

end A293047

/-! ## A293047.P8274426267695881138

`floor(2^(n-1)-n^and(1, n+1))`
-/

namespace A293047.P8274426267695881138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n ^ Nat.land 1 (n + 1) : ℚ)⌋

end

end A293047.P8274426267695881138

namespace A293047

/-- `floor(2^(n-1)-n^and(1, n+1))` -/
def P8274426267695881138.Spec : Prop :=
  ∀ n, P8274426267695881138.a n = A293047 n

end A293047

/-! ## A293047.P2258233059504369171

`floor(2^(n-1)-C(n, and(1, 1-n)))`
-/

namespace A293047.P2258233059504369171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Nat.choose n (Int.land 1 (1 - (n : ℤ))).toNat : ℚ)⌋

end

end A293047.P2258233059504369171

namespace A293047

/-- `floor(2^(n-1)-C(n, and(1, 1-n)))` -/
def P2258233059504369171.Spec : Prop :=
  ∀ n, P2258233059504369171.a n = A293047 n

end A293047

/-! ## A293047.P15646553725241584495

`floor(2^(n-1)-xor(1, C(xor(1, n), n)))`
-/

namespace A293047.P15646553725241584495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Nat.xor 1 (Nat.choose (Nat.xor 1 n) n) : ℚ)⌋

end

end A293047.P15646553725241584495

namespace A293047

/-- `floor(2^(n-1)-xor(1, C(xor(1, n), n)))` -/
def P15646553725241584495.Spec : Prop :=
  ∀ n, P15646553725241584495.a n = A293047 n

end A293047

/-! ## A293047.P12071675910493388976

`A094373(n)-A141310(n)`
-/

namespace A293047.P12071675910493388976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A141310 n

end

end A293047.P12071675910493388976

namespace A293047

/-- `A094373(n)-A141310(n)` -/
def P12071675910493388976.Spec : Prop :=
  ∀ n, P12071675910493388976.a n = A293047 n

end A293047

/-! ## A293047.P16281017973998933411

`A277800(n)%A288133(n+1)`
-/

namespace A293047.P16281017973998933411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277800 n) (A288133 (n + 1))

end

end A293047.P16281017973998933411

namespace A293047

/-- `A277800(n)%A288133(n+1)` -/
def P16281017973998933411.Spec : Prop :=
  ∀ n, P16281017973998933411.a n = A293047 n

end A293047

/-! ## A293047.P16876691531288875508

`A000295(n)-A293046(n)`
-/

namespace A293047.P16876691531288875508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A293046 n

end

end A293047.P16876691531288875508

namespace A293047

/-- `A000295(n)-A293046(n)` -/
def P16876691531288875508.Spec : Prop :=
  ∀ n, P16876691531288875508.a n = A293047 n

end A293047

/-! ## A293047.P17440757347393779810

`A283507(n)%A132736(n)`
-/

namespace A293047.P17440757347393779810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283507 n) (A132736 n)

end

end A293047.P17440757347393779810

namespace A293047

/-- `A283507(n)%A132736(n)` -/
def P17440757347393779810.Spec : Prop :=
  ∀ n, P17440757347393779810.a n = A293047 n

end A293047

/-!
# A293048: Primes of the form 2^q * 3^r * 11^s + 1.

The programs for A293048, there is no canonical definition to state claims against.
-/

/-! ## A293048.P11224334373344273442

`p?[(n+2)*A118541(A065330(n+1))]`
-/

namespace A293048.P11224334373344273442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A118541 (A065330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293048.P11224334373344273442

/-! ## A293048.P5355585889367507221

`p?[((n+1)*A128143(A126759(n)))%A008080(n)]`
-/

namespace A293048.P5355585889367507221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A128143 (A126759 n).toNat) (A008080 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293048.P5355585889367507221

/-! ## A293048.P16733941232175140131

`p?[(n+1)*A128143(A126759(n))*A267115(n+1)]`
-/

namespace A293048.P16733941232175140131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128143 (A126759 n).toNat * A267115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293048.P16733941232175140131

/-!
# A293049: Expansion of e.g.f. exp(x^3/(1 - x)).

The programs for A293049, there is no canonical definition to state claims against.
-/

/-! ## A293049.P11295383889375906822

`abs(A293123(n))`
-/

namespace A293049.P11295383889375906822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293123 n|

end

end A293049.P11295383889375906822

/-! ## A293049.P17520851432299959352

`lcm(A007318(n), A293123(n))`
-/

namespace A293049.P17520851432299959352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A293123 n)

end

end A293049.P17520851432299959352

/-! ## A293049.P131665056762278509

`lcm(-A293123(n), A028310(n))`
-/

namespace A293049.P131665056762278509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A293123 n) (A028310 n)

end

end A293049.P131665056762278509

/-! ## A293049.P6244935642661749661

`gcd(A261225(∑{e}[n, #]), A293123(n))`
-/

namespace A293049.P6244935642661749661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261225 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A293123 n)

end

end A293049.P6244935642661749661

/-! ## A293049.P14662861343762139925

`(-2)^n/A000079(n)*A293123(n)`
-/

namespace A293049.P14662861343762139925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n : ℚ) / (A000079 n : ℚ) * (A293123 n : ℚ)

end

end A293049.P14662861343762139925

/-! ## A293049.P1429275679644148552

`A008683(A116570(n))*A293123(n)`
-/

namespace A293049.P1429275679644148552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A293123 n

end

end A293049.P1429275679644148552

/-! ## A293049.P17155015662689990048

`A293053(∑[n+3])`
-/

namespace A293049.P17155015662689990048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293049.P17155015662689990048

/-! ## A293049.P5996718470850557890

`abs(A293134(∑[n+3]))`
-/

namespace A293049.P5996718470850557890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293134 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A293049.P5996718470850557890

/-! ## A293049.P13632790991382775662

`A293053(A027379(n+1))+A000007(n+1)`
-/

namespace A293049.P13632790991382775662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A293049.P13632790991382775662

/-!
# A293050: Expansion of e.g.f. exp(x^4/(1 - x)).

The programs for A293050, there is no canonical definition to state claims against.
-/

/-! ## A293050.P836130267900606512

`A293053(∑[n+4]+2)`
-/

namespace A293050.P836130267900606512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293050.P836130267900606512

/-! ## A293050.P706408800077534433

`or(2, A293053(A046691(n+2)))-2`
-/

namespace A293050.P706408800077534433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A293053 (A046691 (n + 2)).toNat) - 2

end

end A293050.P706408800077534433

/-! ## A293050.P1339328641894451200

`or(A000007(n), A293053(A046691(n+2)))`
-/

namespace A293050.P1339328641894451200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293053 (A046691 (n + 2)).toNat)

end

end A293050.P1339328641894451200

/-! ## A293050.P11373617983362791123

`or(A151909(n), A293053(A046691(n+2)))`
-/

namespace A293050.P11373617983362791123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151909 n) (A293053 (A046691 (n + 2)).toNat)

end

end A293050.P11373617983362791123

/-! ## A293050.P10694077149192246228

`A293053(A046691(n+2))+A000007(n+1)`
-/

namespace A293050.P10694077149192246228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A293050.P10694077149192246228

/-! ## A293050.P803172145384011579

`A008683(n+1)²!*A293053(A046691(n+2))`
-/

namespace A293050.P803172145384011579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A293053 (A046691 (n + 2)).toNat

end

end A293050.P803172145384011579

/-!
# A293051: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{i=0..k} x^i/i! - exp(x)).

The programs for A293051, there is no canonical definition to state claims against.
-/

/-! ## A293051.P5161497471700262234

`A292894(n)/A185679(A118180(n))`
-/

namespace A293051.P5161497471700262234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292894 n : ℚ) / (A185679 (A118180 n).toNat : ℚ)

end

end A293051.P5161497471700262234

/-! ## A293051.P1329738662833816816

`A292894(n)/A110591(A022167(n))`
-/

namespace A293051.P1329738662833816816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292894 n : ℚ) / (A110591 (A022167 n).toNat : ℚ)

end

end A293051.P1329738662833816816

/-! ## A293051.P13920577501301387366

`A292894(n)/A000120(A116694(n+1))`
-/

namespace A293051.P13920577501301387366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292894 n : ℚ) / (A000120 (A116694 (n + 1)).toNat : ℚ)

end

end A293051.P13920577501301387366

/-! ## A293051.P1692915819181822214

`A016332(A183053(n)%A013610(n))`
-/

namespace A293051.P1692915819181822214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 (Int.tmod (A183053 n) (A013610 n)).toNat

end

end A293051.P1692915819181822214

/-! ## A293051.P12376478969984191671

`A292894(n)/A043562(A008958(n))`
-/

namespace A293051.P12376478969984191671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292894 n : ℚ) / (A043562 (A008958 n).toNat : ℚ)

end

end A293051.P12376478969984191671

/-!
# A293052: Rectangular array by antidiagonals: T(n,m) = rank of n*sqrt(3)+m when all the numbers k*sqrt(3)+h, for k >= 1, h >= 0, are jointly ranked.

The programs for A293052, there is no canonical definition to state claims against.
-/

/-! ## A293052.P3974727886112201304

`A283940(A038722(n+1))`
-/

namespace A293052.P3974727886112201304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283940 (A038722 (n + 1)).toNat

end

end A293052.P3974727886112201304

/-! ## A293052.P4608179370263781368

`A283940(A061579(n)+1)`
-/

namespace A293052.P4608179370263781368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283940 (A061579 n + 1).toNat

end

end A293052.P4608179370263781368

/-! ## A293052.P16426537729158623000

`A283940(A114327(n)+1+n)`
-/

namespace A293052.P16426537729158623000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283940 (A114327 n + 1 + (n : ℤ)).toNat

end

end A293052.P16426537729158623000

/-! ## A293052.P12226330713317080108

`A283940(A093995(n+1)-n)`
-/

namespace A293052.P12226330713317080108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283940 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A293052.P12226330713317080108

/-! ## A293052.P7808935702782057225

`A283940(A057944(n)+A004736(n+1))`
-/

namespace A293052.P7808935702782057225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283940 (A057944 n + A004736 (n + 1)).toNat

end

end A293052.P7808935702782057225

/-!
# A293053: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>k} exp(x^i).

The programs for A293053, there is no canonical definition to state claims against.
-/

/-! ## A293053.P12647629819749167534

`A118759(lcm(A293133(n), A293134(n)))`
-/

namespace A293053.P12647629819749167534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lcm (A293133 n) (A293134 n))

end

end A293053.P12647629819749167534

/-! ## A293053.P1458698686302162929

`abs(A293134(n)%A119185(n+1))`
-/

namespace A293053.P1458698686302162929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A293134 n) (A119185 (n + 1))|

end

end A293053.P1458698686302162929

/-! ## A293053.P13998836466160335651

`gcd(A010815(A299282(n)), A293134(n))`
-/

namespace A293053.P13998836466160335651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A299282 n).toNat) (A293134 n)

end

end A293053.P13998836466160335651

/-! ## A293053.P13638069022697149427

`abs(A293134(A000005(ceil(2^(n-1)))))`
-/

namespace A293053.P13638069022697149427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293134 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat|

end

end A293053.P13638069022697149427

/-!
# A293054: Rectangular array by antidiagonals: T(n,m) = rank of n*sqrt(5)+m when all the numbers k*sqrt(5)+h, for k >= 1, h >= 0, are jointly ranked.

The programs for A293054, there is no canonical definition to state claims against.
-/

/-! ## A293054.P11946680184001927695

`A283941(A038722(n+1))`
-/

namespace A293054.P11946680184001927695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (A038722 (n + 1)).toNat

end

end A293054.P11946680184001927695

/-! ## A293054.P18412911828031173681

`A283941(A061579(n)+1)`
-/

namespace A293054.P18412911828031173681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (A061579 n + 1).toNat

end

end A293054.P18412911828031173681

/-! ## A293054.P15762697097263360310

`A283941(A114327(n)+1+n)`
-/

namespace A293054.P15762697097263360310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (A114327 n + 1 + (n : ℤ)).toNat

end

end A293054.P15762697097263360310

/-! ## A293054.P14851368132343760896

`A283941(A093995(n+1)-n)`
-/

namespace A293054.P14851368132343760896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A293054.P14851368132343760896

/-! ## A293054.P10911198441479589225

`A283941(A002024(n+1)²-n)`
-/

namespace A293054.P10911198441479589225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A293054.P10911198441479589225

/-!
# A293055: a(n) = n! * [x^n] Product_{k>0} exp(binomial(n+k-1,n)*x^k).

The programs for A293055, there is no canonical definition to state claims against.
-/

/-! ## A293055.P692964777187452884

`A293012(A056220(n+1))`
-/

namespace A293055.P692964777187452884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A056220 (n + 1)).toNat

end

end A293055.P692964777187452884

/-! ## A293055.P11925776601143873450

`A293012(eq[1, A114327(n)])`
-/

namespace A293055.P11925776601143873450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293055.P11925776601143873450

/-! ## A293055.P8992517425321194153

`A293012(eq[2, A007913(n+1)])`
-/

namespace A293055.P8992517425321194153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293055.P8992517425321194153

/-! ## A293055.P15826399375890053258

`A293012(eq[2, A185914(n+1)])`
-/

namespace A293055.P15826399375890053258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293055.P15826399375890053258

/-! ## A293055.P8557844941049386480

`A293012(A005843((n+1)²)-1)`
-/

namespace A293055.P8557844941049386480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A005843 ((n + 1) ^ 2) - 1).toNat

end

end A293055.P8557844941049386480

/-!
# A293056: Rectangular array by antidiagonals: T(n,m) = rank of n*log(2)+m when all the numbers k*log(2)+h, for k >= 1, h >= 0, are jointly ranked.

The programs for A293056, there is no canonical definition to state claims against.
-/

/-! ## A293056.P4925500473780671367

`or(A005831(A058348(n)), A283939(n+1))`
-/

namespace A293056.P4925500473780671367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005831 (A058348 n).toNat) (A283939 (n + 1))

end

end A293056.P4925500473780671367

/-! ## A293056.P2927954797820418953

`or(A249832(A249982(n+1)), A283939(n+1))`
-/

namespace A293056.P2927954797820418953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249832 (A249982 (n + 1)).toNat) (A283939 (n + 1))

end

end A293056.P2927954797820418953

/-! ## A293056.P7653747547268185218

`A283939(n+1)+A010052(A219173(n+1))`
-/

namespace A293056.P7653747547268185218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (n + 1) + A010052 (A219173 (n + 1)).toNat

end

end A293056.P7653747547268185218

/-! ## A293056.P2027448153069182505

`A283962(A038722(n+1))+A010052(A219173(n+1))`
-/

namespace A293056.P2027448153069182505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A038722 (n + 1)).toNat + A010052 (A219173 (n + 1)).toNat

end

end A293056.P2027448153069182505

/-! ## A293056.P13005799503660937465

`A283939(n+1)+A178798(A018843(n))`
-/

namespace A293056.P13005799503660937465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (n + 1) + A178798 (A018843 n).toNat

end

end A293056.P13005799503660937465

/-!
# A293057: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293057, there is no canonical definition to state claims against.
-/

/-! ## A293057.P9389590009765904249

`(A295951(n)-A006355(n))%A001567(A204674(n))`
-/

namespace A293057.P9389590009765904249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295951 n - A006355 n) (A001567 (A204674 n).toNat)

end

end A293057.P9389590009765904249

/-! ## A293057.P5316615174270421858

`A006519(A075707(n+1))*A295951(n)-A006355(n)`
-/

namespace A293057.P5316615174270421858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A075707 (n + 1)).toNat * A295951 n - A006355 n

end

end A293057.P5316615174270421858

/-! ## A293057.P2573681554118186229

`A293406(n)-A004526(A006355(n))`
-/

namespace A293057.P2573681554118186229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293406 n - A004526 (A006355 n).toNat

end

end A293057.P2573681554118186229

/-! ## A293057.P2244342153185306395

`A028310(A293406(n)-A212804(n))`
-/

namespace A293057.P2244342153185306395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A293406 n - A212804 n).toNat

end

end A293057.P2244342153185306395

/-!
# A293058: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 3, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293058, there is no canonical definition to state claims against.
-/

/-! ## A293058.P3385739959811964684

`A293317(n+1)-2`
-/

namespace A293058.P3385739959811964684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293317 (n + 1) - 2

end

end A293058.P3385739959811964684

/-! ## A293058.P14774809098132588023

`record[A293317(A328396(n))-2]`
-/

namespace A293058.P14774809098132588023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293317 (A328396 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293058.P14774809098132588023

/-! ## A293058.P2415214427465235117

`A293765(n)-A305516(A179865(n+1))`
-/

namespace A293058.P2415214427465235117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293765 n - A305516 (A179865 (n + 1)).toNat

end

end A293058.P2415214427465235117

/-! ## A293058.P10046061570941412582

`A000027(A295958(n)-A006355(n))`
-/

namespace A293058.P10046061570941412582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295958 n - A006355 n).toNat

end

end A293058.P10046061570941412582

/-! ## A293058.P3148819496476864827

`A000027(A293765(n))-A212804(A028310(n))`
-/

namespace A293058.P3148819496476864827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A293765 n).toNat - A212804 (A028310 n).toNat

end

end A293058.P3148819496476864827

/-!
# A293059: Numbers k such that sigma(phi(k))/k > sigma(phi(m))/m for all m < k, where sigma is the sum of divisors function (A000203) and phi is Euler's totient function (A000010).

The programs for A293059, there is no canonical definition to state claims against.
-/

/-! ## A293059.P7478982331305921630

`A343250(A067573(n+2))`
-/

namespace A293059.P7478982331305921630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (A067573 (n + 2)).toNat

end

end A293059.P7478982331305921630

/-! ## A293059.P10537239130010432743

`A343250(A103199(n+2))`
-/

namespace A293059.P10537239130010432743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (A103199 (n + 2)).toNat

end

end A293059.P10537239130010432743

/-! ## A293059.P3886553167239015094

`A067573(n+2)-A000038((11*n)²)`
-/

namespace A293059.P3886553167239015094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067573 (n + 2) - A000038 ((11 * n) ^ 2)

end

end A293059.P3886553167239015094

/-! ## A293059.P14907820235977217182

`A103199(n+2)%A102021(3*n+2)`
-/

namespace A293059.P14907820235977217182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103199 (n + 2)) (A102021 (3 * n + 2))

end

end A293059.P14907820235977217182

/-! ## A293059.P16082405264024016510

`A103199(n+2)%A157936(A032669(n+1))`
-/

namespace A293059.P16082405264024016510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103199 (n + 2)) (A157936 (A032669 (n + 1)).toNat)

end

end A293059.P16082405264024016510

/-!
# A293060: Triangle read by rows (n >= 0, 0 <= k <= n): T(n,k) = number of k-dimensional subperiodic groups in n-dimensional space, not counting enantiomorphs.

The programs for A293060, there is no canonical definition to state claims against.
-/

/-! ## A293060.P8099131017472082455

`A293061(n)-A357645(A321611(n+1))`
-/

namespace A293060.P8099131017472082455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293061 n - A357645 (A321611 (n + 1)).toNat

end

end A293060.P8099131017472082455

/-!
# A293061: Triangle read by rows (n >= 0, 0 <= k <= n): T(n,k) = number of k-dimensional subperiodic groups in n-dimensional space, counting enantiomorphs.

The programs for A293061, there is no canonical definition to state claims against.
-/

/-! ## A293061.P8851754601283856091

`A357645(A321611(n+1))+A293060(n)`
-/

namespace A293061.P8851754601283856091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (A321611 (n + 1)).toNat + A293060 n

end

end A293061.P8851754601283856091

/-!
# A293062: Triangle read by rows (n >= 0, 0 <= k <= n): T(n,k) = number of k-dimensional magnetic subperiodic groups in n-dimensional space, not counting enantiomorphs.

The programs for A293062, there is no canonical definition to state claims against.
-/

/-! ## A293062.P11310831382469922586

`A293063(C(n, and(2, n^3)!))`
-/

namespace A293062.P11310831382469922586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293063 (Nat.choose n (Nat.factorial (Nat.land 2 (n ^ 3))))

end

end A293062.P11310831382469922586

/-! ## A293062.P4478527690867495184

`A293063(7*C(∑[n+1], 36)+n)`
-/

namespace A293062.P4478527690867495184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293063 (7 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 36 + n)

end

end A293062.P4478527690867495184

/-! ## A293062.P7470982033776366949

`A293063(C(n, (n+1)/∏{p}[n+1, #]))`
-/

namespace A293062.P7470982033776366949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293063 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A293062.P7470982033776366949

/-!
# A293064: Number of vertices of type B at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293064, the canonical program `A293064.P2457053488063224355` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293064 has offset 0).

The definition of A293064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293064.P17091468185727053233

`ogf(x^3/(1-4x+4x^2-x^3))`
-/

namespace A293064.P17091468185727053233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -4, 4, -1] n

end

end A293064.P17091468185727053233

namespace A293064

/-- `ogf(x^3/(1-4x+4x^2-x^3))` -/
def P17091468185727053233.Spec : Prop :=
  ∀ n, P17091468185727053233.a n = A293064 n

end A293064

/-! ## A293064.P2457053488063224355

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293064

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P2457053488063224355.Spec : Prop :=
  ∀ n, P2457053488063224355.a n = A293064 n

theorem P2457053488063224355.correct : P2457053488063224355.Spec := by
  intro n
  simp only [A293064]

end A293064

/-! ## A293064.P18104654006958500912

`∑[ogf(x^3/(1-3x+x^2))]`
-/

namespace A293064.P18104654006958500912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P18104654006958500912

namespace A293064

/-- `∑[ogf(x^3/(1-3x+x^2))]` -/
def P18104654006958500912.Spec : Prop :=
  ∀ n, P18104654006958500912.a n = A293064 n

end A293064

/-! ## A293064.P15890266665867591919

`ceil(ϕ²*a(n-1))+1` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293064.P15890266665867591919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ + 1

end

end A293064.P15890266665867591919

namespace A293064

/-- `ceil(ϕ²*a(n-1))+1` -/
def P15890266665867591919.Spec : Prop :=
  ∀ n, P15890266665867591919.a n = A293064 n

end A293064

/-! ## A293064.P8084471963408744434

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A293064.P8084471963408744434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P8084471963408744434

namespace A293064

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P8084471963408744434.Spec : Prop :=
  ∀ n, P8084471963408744434.a n = A293064 n

end A293064

/-! ## A293064.P14159059804372585200

`1-floor(a(n-1)/(ϕ-2))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293064.P14159059804372585200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋

end

end A293064.P14159059804372585200

namespace A293064

/-- `1-floor(a(n-1)/(ϕ-2))` -/
def P14159059804372585200.Spec : Prop :=
  ∀ n, P14159059804372585200.a n = A293064 n

end A293064

/-! ## A293064.P17759340928156368153

`∑[∑[floor(ϕ²*a(n-1))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A293064.P17759340928156368153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  ⌊Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P17759340928156368153

namespace A293064

/-- `∑[∑[floor(ϕ²*a(n-1))]]` -/
def P17759340928156368153.Spec : Prop :=
  ∀ n, P17759340928156368153.a n = A293064 n

end A293064

/-! ## A293064.P11144887176919261901

`3*a(n-1)+1-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293064.P11144887176919261901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  3 * a (n - 1) + (1 - a (n - 2))

end

end A293064.P11144887176919261901

namespace A293064

/-- `3*a(n-1)+1-a(n-2)` -/
def P11144887176919261901.Spec : Prop :=
  ∀ n, P11144887176919261901.a n = A293064 n

end A293064

/-! ## A293064.P16005777347680193061

`1-(a(n-2)-3*a(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293064.P16005777347680193061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - (a (n - 2) - 3 * a (n - 1))

end

end A293064.P16005777347680193061

namespace A293064

/-- `1-(a(n-2)-3*a(n-1))` -/
def P16005777347680193061.Spec : Prop :=
  ∀ n, P16005777347680193061.a n = A293064 n

end A293064

/-! ## A293064.P1494422022843503301

`A001519(abs(1-n))-1`
-/

namespace A293064.P1494422022843503301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 |1 - (n : ℤ)|.toNat - 1

end

end A293064.P1494422022843503301

namespace A293064

/-- `A001519(abs(1-n))-1` -/
def P1494422022843503301.Spec : Prop :=
  ∀ n, P1494422022843503301.a n = A293064 n

end A293064

/-! ## A293064.P12186145547344714791

`∑[A000045(2*floor(n-atan(n)))]`
-/

namespace A293064.P12186145547344714791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P12186145547344714791

namespace A293064

/-- `∑[A000045(2*floor(n-atan(n)))]` -/
def P12186145547344714791.Spec : Prop :=
  ∀ n, P12186145547344714791.a n = A293064 n

end A293064

/-! ## A293064.P9458443387165801147

`∑[A000045(abs(2-n)+n-2)]`
-/

namespace A293064.P9458443387165801147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P9458443387165801147

namespace A293064

/-- `∑[A000045(abs(2-n)+n-2)]` -/
def P9458443387165801147.Spec : Prop :=
  ∀ n, P9458443387165801147.a n = A293064 n

end A293064

/-! ## A293064.P15605753410781924881

`A212804(abs(1-n)+n-1)-1`
-/

namespace A293064.P15605753410781924881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat - 1

end

end A293064.P15605753410781924881

namespace A293064

/-- `A212804(abs(1-n)+n-1)-1` -/
def P15605753410781924881.Spec : Prop :=
  ∀ n, P15605753410781924881.a n = A293064 n

end A293064

/-! ## A293064.P4165573488721000187

`A000045(abs(2-n)+n-1)-1`
-/

namespace A293064.P4165573488721000187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + ((n : ℤ) - 1)).toNat - 1

end

end A293064.P4165573488721000187

namespace A293064

/-- `A000045(abs(2-n)+n-1)-1` -/
def P4165573488721000187.Spec : Prop :=
  ∀ n, P4165573488721000187.a n = A293064 n

end A293064

/-! ## A293064.P4852367529076242481

`A000032(2*n-5)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293064.P4852367529076242481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000032 (2 * n - 5) + a (n - 2)

end

end A293064.P4852367529076242481

namespace A293064

/-- `A000032(2*n-5)+a(n-2)` -/
def P4852367529076242481.Spec : Prop :=
  ∀ n, P4852367529076242481.a n = A293064 n

end A293064

/-! ## A293064.P4466628230835291281

`A027941(A289207(n))`
-/

namespace A293064.P4466628230835291281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (A289207 n).toNat

end

end A293064.P4466628230835291281

namespace A293064

/-- `A027941(A289207(n))` -/
def P4466628230835291281.Spec : Prop :=
  ∀ n, P4466628230835291281.a n = A293064 n

end A293064

/-! ## A293064.P3879886268902574538

`A119282(lcm(2, A004275(n)))`
-/

namespace A293064.P3879886268902574538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (Int.lcm 2 (A004275 n))

end

end A293064.P3879886268902574538

namespace A293064

/-- `A119282(lcm(2, A004275(n)))` -/
def P3879886268902574538.Spec : Prop :=
  ∀ n, P3879886268902574538.a n = A293064 n

end A293064

/-! ## A293064.P2849123647794910579

`A000071(abs(3-A004277(n)))`
-/

namespace A293064.P2849123647794910579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 |3 - A004277 n|.toNat

end

end A293064.P2849123647794910579

namespace A293064

/-- `A000071(abs(3-A004277(n)))` -/
def P2849123647794910579.Spec : Prop :=
  ∀ n, P2849123647794910579.a n = A293064 n

end A293064

/-! ## A293064.P5450237618220885384

`∑[A001906(A004275(n)-n)]`
-/

namespace A293064.P5450237618220885384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293064.P5450237618220885384

namespace A293064

/-- `∑[A001906(A004275(n)-n)]` -/
def P5450237618220885384.Spec : Prop :=
  ∀ n, P5450237618220885384.a n = A293064 n

end A293064

/-! ## A293064.P3295885875455329698

`A093467(A233583(n+1))-2`
-/

namespace A293064.P3295885875455329698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (A233583 (n + 1)).toNat - 2

end

end A293064.P3295885875455329698

namespace A293064

/-- `A093467(A233583(n+1))-2` -/
def P3295885875455329698.Spec : Prop :=
  ∀ n, P3295885875455329698.a n = A293064 n

end A293064

/-!
# A293065: Number of vertices of type D at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293065, the canonical program `A293065.P12601897613863676820` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293065 has offset 0).

The definition of A293065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293065.P2122037415147930175

`ogf((x^3-2x^4)/(1-5x+8x^2-5x^3+x^4))`
-/

namespace A293065.P2122037415147930175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -2] [1, -5, 8, -5, 1] n

end

end A293065.P2122037415147930175

namespace A293065

/-- `ogf((x^3-2x^4)/(1-5x+8x^2-5x^3+x^4))` -/
def P2122037415147930175.Spec : Prop :=
  ∀ n, P2122037415147930175.a n = A293065 n

end A293065

/-! ## A293065.P12601897613863676820

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293065

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P12601897613863676820.Spec : Prop :=
  ∀ n, P12601897613863676820.a n = A293065 n

theorem P12601897613863676820.correct : P12601897613863676820.Spec := by
  intro n
  simp only [A293065]

end A293065

/-! ## A293065.P4582776343710241503

`1-n+3*(a(n-1)+1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293065.P4582776343710241503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - (n : ℤ) + (3 * (a (n - 1) + 1) - a (n - 2))

end

end A293065.P4582776343710241503

namespace A293065

/-- `1-n+3*(a(n-1)+1)-a(n-2)` -/
def P4582776343710241503.Spec : Prop :=
  ∀ n, P4582776343710241503.a n = A293065 n

end A293065

/-! ## A293065.P6116316222971535841

`A289207(n)+A001519(A289207(n))-1`
-/

namespace A293065.P6116316222971535841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + (A001519 (A289207 n).toNat - 1)

end

end A293065.P6116316222971535841

namespace A293065

/-- `A289207(n)+A001519(A289207(n))-1` -/
def P6116316222971535841.Spec : Prop :=
  ∀ n, P6116316222971535841.a n = A293065 n

end A293065

/-! ## A293065.P17252613173518651603

`A293064(n)+A293064(n)-∑[A293064(n)]`
-/

namespace A293065.P17252613173518651603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n + (A293064 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293065.P17252613173518651603

namespace A293065

/-- `A293064(n)+A293064(n)-∑[A293064(n)]` -/
def P17252613173518651603.Spec : Prop :=
  ∀ n, P17252613173518651603.a n = A293065 n

end A293065

/-! ## A293065.P11181761488943891296

`2*A293064(n)-∑[A293064(n)]`
-/

namespace A293065.P11181761488943891296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293064 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293065.P11181761488943891296

namespace A293065

/-- `2*A293064(n)-∑[A293064(n)]` -/
def P11181761488943891296.Spec : Prop :=
  ∀ n, P11181761488943891296.a n = A293065 n

end A293065

/-! ## A293065.P5991186334426894227

`A331347(n+1)%A192908(n)`
-/

namespace A293065.P5991186334426894227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331347 (n + 1)) (A192908 n)

end

end A293065.P5991186334426894227

namespace A293065

/-- `A331347(n+1)%A192908(n)` -/
def P5991186334426894227.Spec : Prop :=
  ∀ n, P5991186334426894227.a n = A293065 n

end A293065

/-! ## A293065.P18195722962486731675

`(A027941(n)+n)%A192908(n)`
-/

namespace A293065.P18195722962486731675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027941 n + (n : ℤ)) (A192908 n)

end

end A293065.P18195722962486731675

namespace A293065

/-- `(A027941(n)+n)%A192908(n)` -/
def P18195722962486731675.Spec : Prop :=
  ∀ n, P18195722962486731675.a n = A293065 n

end A293065

/-! ## A293065.P12969782285684256507

`∑[A301791(2*(n+1))%A001519(n)]`
-/

namespace A293065.P12969782285684256507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301791 (2 * (n + 1))) (A001519 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293065.P12969782285684256507

namespace A293065

/-- `∑[A301791(2*(n+1))%A001519(n)]` -/
def P12969782285684256507.Spec : Prop :=
  ∀ n, P12969782285684256507.a n = A293065 n

end A293065

/-! ## A293065.P16285571950931351609

`∑[A293064(n)²%A032908(n)]`
-/

namespace A293065.P16285571950931351609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293064 n ^ 2) (A032908 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293065.P16285571950931351609

namespace A293065

/-- `∑[A293064(n)²%A032908(n)]` -/
def P16285571950931351609.Spec : Prop :=
  ∀ n, P16285571950931351609.a n = A293065 n

end A293065

/-!
# A293066: Number of vertices at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293066, the canonical program `A293066.P15606337087235491504` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293066 has offset 0).

The definition of A293066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293066.P3895396429216148032

`ogf((1-2x-x^2)/(1-5x+8x^2-5x^3+x^4))`
-/

namespace A293066.P3895396429216148032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -5, 8, -5, 1] n

end

end A293066.P3895396429216148032

namespace A293066

/-- `ogf((1-2x-x^2)/(1-5x+8x^2-5x^3+x^4))` -/
def P3895396429216148032.Spec : Prop :=
  ∀ n, P3895396429216148032.a n = A293066 n

end A293066

/-! ## A293066.P15606337087235491504

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293066

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P15606337087235491504.Spec : Prop :=
  ∀ n, P15606337087235491504.a n = A293066 n

theorem P15606337087235491504.correct : P15606337087235491504.Spec := by
  intro n
  simp only [A293066]

end A293066

/-! ## A293066.P6479646158026346720

`∑[ogf((-1+2x+x^2)/(-1+4x-4x^2+x^3))]`
-/

namespace A293066.P6479646158026346720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 4, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P6479646158026346720

namespace A293066

/-- `∑[ogf((-1+2x+x^2)/(-1+4x-4x^2+x^3))]` -/
def P6479646158026346720.Spec : Prop :=
  ∀ n, P6479646158026346720.a n = A293066 n

end A293066

/-! ## A293066.P6530296565385912026

`∑[∑[floor(ϕ²*a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A293066.P6530296565385912026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  ⌊Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P6530296565385912026

namespace A293066

/-- `∑[∑[floor(ϕ²*a(n-1))]]` -/
def P6530296565385912026.Spec : Prop :=
  ∀ n, P6530296565385912026.a n = A293066 n

end A293066

/-! ## A293066.P563937048277566940

`∑[record[a(n-2)+2-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A293066.P563937048277566940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P563937048277566940

namespace A293066

/-- `∑[record[a(n-2)+2-a(n-1)]]` -/
def P563937048277566940.Spec : Prop :=
  ∀ n, P563937048277566940.a n = A293066 n

end A293066

/-! ## A293066.P5958279275502526310

`∑[record[2-(a(n-1)-a(n-2))]]` with `a(0)=1, a(1)=1`
-/

namespace A293066.P5958279275502526310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 - (f2 (n - 1) - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P5958279275502526310

namespace A293066

/-- `∑[record[2-(a(n-1)-a(n-2))]]` -/
def P5958279275502526310.Spec : Prop :=
  ∀ n, P5958279275502526310.a n = A293066 n

end A293066

/-! ## A293066.P12572747304711614242

`∑[3*a(n-1)-(a(n-2)+2)]` with `a(0)=1, a(1)=2`
-/

namespace A293066.P12572747304711614242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) - (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P12572747304711614242

namespace A293066

/-- `∑[3*a(n-1)-(a(n-2)+2)]` -/
def P12572747304711614242.Spec : Prop :=
  ∀ n, P12572747304711614242.a n = A293066 n

end A293066

/-! ## A293066.P12064137115159145305

`∑[3*a(n-1)-2-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A293066.P12064137115159145305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) - 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P12064137115159145305

namespace A293066

/-- `∑[3*a(n-1)-2-a(n-2)]` -/
def P12064137115159145305.Spec : Prop :=
  ∀ n, P12064137115159145305.a n = A293066 n

end A293066

/-! ## A293066.P11914471405843013859

`∑[∑[lcm(3, a(n-1))-a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A293066.P11914471405843013859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  (Int.lcm 3 (f2 (n - 1)) : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P11914471405843013859

namespace A293066

/-- `∑[∑[lcm(3, a(n-1))-a(n-2)]]` -/
def P11914471405843013859.Spec : Prop :=
  ∀ n, P11914471405843013859.a n = A293066 n

end A293066

/-! ## A293066.P7257309560538251342

`record[∑[A355020(n)]]`
-/

namespace A293066.P7257309560538251342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293066.P7257309560538251342

namespace A293066

/-- `record[∑[A355020(n)]]` -/
def P7257309560538251342.Spec : Prop :=
  ∀ n, P7257309560538251342.a n = A293066 n

end A293066

/-! ## A293066.P5099212100882389571

`∑[A078024(2*n)]`
-/

namespace A293066.P5099212100882389571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P5099212100882389571

namespace A293066

/-- `∑[A078024(2*n)]` -/
def P5099212100882389571.Spec : Prop :=
  ∀ n, P5099212100882389571.a n = A293066 n

end A293066

/-! ## A293066.P483008757760190855

`A001519(n)+2*n`
-/

namespace A293066.P483008757760190855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (2 * n : ℤ)

end

end A293066.P483008757760190855

namespace A293066

/-- `A001519(n)+2*n` -/
def P483008757760190855.Spec : Prop :=
  ∀ n, P483008757760190855.a n = A293066 n

end A293066

/-! ## A293066.P47135889299041715

`∑[∑[A293064(n)+1]]`
-/

namespace A293066.P47135889299041715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P47135889299041715

namespace A293066

/-- `∑[∑[A293064(n)+1]]` -/
def P47135889299041715.Spec : Prop :=
  ∀ n, P47135889299041715.a n = A293066 n

end A293066

/-! ## A293066.P10979346779028070053

`∑[2-A152163(2*n)]`
-/

namespace A293066.P10979346779028070053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A152163 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293066.P10979346779028070053

namespace A293066

/-- `∑[2-A152163(2*n)]` -/
def P10979346779028070053.Spec : Prop :=
  ∀ n, P10979346779028070053.a n = A293066 n

end A293066

/-! ## A293066.P17230779108141248368

`A293065(n+2)+n+1`
-/

namespace A293066.P17230779108141248368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293065 (n + 2) + (n + 1 : ℤ)

end

end A293066.P17230779108141248368

namespace A293066

/-- `A293065(n+2)+n+1` -/
def P17230779108141248368.Spec : Prop :=
  ∀ n, P17230779108141248368.a n = A293066 n

end A293066

/-! ## A293066.P704720757329838054

`A212804(2*n)+2*n`
-/

namespace A293066.P704720757329838054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + (2 * n : ℤ)

end

end A293066.P704720757329838054

namespace A293066

/-- `A212804(2*n)+2*n` -/
def P704720757329838054.Spec : Prop :=
  ∀ n, P704720757329838054.a n = A293066 n

end A293066

/-! ## A293066.P1918493336918025032

`A293064(n+1)+Δ[n²]`
-/

namespace A293066.P1918493336918025032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A293066.P1918493336918025032

namespace A293066

/-- `A293064(n+1)+Δ[n²]` -/
def P1918493336918025032.Spec : Prop :=
  ∀ n, P1918493336918025032.a n = A293066 n

end A293066

/-!
# A293067: Sum of values of vertices of type A at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293067, the canonical program `A293067.P17129522566663133156` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293067 has offset 0).

The definition of A293067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293067.P1200111615694145939

`ogf((2x^2-4x^3)/(1-5x+6x^2-2x^3))`
-/

namespace A293067.P1200111615694145939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -4] [1, -5, 6, -2] n

end

end A293067.P1200111615694145939

namespace A293067

/-- `ogf((2x^2-4x^3)/(1-5x+6x^2-2x^3))` -/
def P1200111615694145939.Spec : Prop :=
  ∀ n, P1200111615694145939.a n = A293067 n

end A293067

/-! ## A293067.P17129522566663133156

`5*a(n-1)-6*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293067

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)` -/
def P17129522566663133156.Spec : Prop :=
  ∀ n, P17129522566663133156.a n = A293067 n

theorem P17129522566663133156.correct : P17129522566663133156.Spec := by
  intro n
  simp only [A293067]

end A293067

/-! ## A293067.P14318760729913243621

`∑[ogf((2x^2-4x^3)/(1-4x+2x^2))]`
-/

namespace A293067.P14318760729913243621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -4] [1, -4, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293067.P14318760729913243621

namespace A293067

/-- `∑[ogf((2x^2-4x^3)/(1-4x+2x^2))]` -/
def P14318760729913243621.Spec : Prop :=
  ∀ n, P14318760729913243621.a n = A293067 n

end A293067

/-! ## A293067.P6733084071346165207

`lcm(2, 2*a(n-1)-(a(n-2)+1))` with `a(0)=0, a(1)=0`
-/

namespace A293067.P6733084071346165207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lcm 2 ((2 * a (n - 1) : ℤ) - (a (n - 2) + 1 : ℤ))

end

end A293067.P6733084071346165207

namespace A293067

/-- `lcm(2, 2*a(n-1)-(a(n-2)+1))` -/
def P6733084071346165207.Spec : Prop :=
  ∀ n, (P6733084071346165207.a n : ℤ) = A293067 n

end A293067

/-! ## A293067.P9979347040120345871

`2*(2*a(n-1)-(a(n-2)+1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293067.P9979347040120345871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 2) + 1))

end

end A293067.P9979347040120345871

namespace A293067

/-- `2*(2*a(n-1)-(a(n-2)+1))` -/
def P9979347040120345871.Spec : Prop :=
  ∀ n, P9979347040120345871.a n = A293067 n

end A293067

/-! ## A293067.P116714103856959350

`2*(2*a(n-1)-1-a(n-2))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A293067.P116714103856959350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * (2 * a (n - 1) - 1 - a (n - 2))

end

end A293067.P116714103856959350

namespace A293067

/-- `2*(2*a(n-1)-1-a(n-2))` -/
def P116714103856959350.Spec : Prop :=
  ∀ n, P116714103856959350.a n = A293067 n

end A293067

/-! ## A293067.P9053104576053489008

`A292295(n)/3`
-/

namespace A293067.P9053104576053489008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292295 n : ℚ) / 3

end

end A293067.P9053104576053489008

namespace A293067

/-- `A292295(n)/3` -/
def P9053104576053489008.Spec : Prop :=
  ∀ n, P9053104576053489008.a n = (A293067 n : ℚ)

end A293067

/-! ## A293067.P13777912649271892904

`∑[Δ[A007070(n)]%A204089(n)]`
-/

namespace A293067.P13777912649271892904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A204089 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293067.P13777912649271892904

namespace A293067

/-- `∑[Δ[A007070(n)]%A204089(n)]` -/
def P13777912649271892904.Spec : Prop :=
  ∀ n, P13777912649271892904.a n = A293067 n

end A293067

/-! ## A293067.P1543676428316952585

`∑[(3*A204089(n+1))%A204089(n)]`
-/

namespace A293067.P1543676428316952585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A204089 (n + 1)) (A204089 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293067.P1543676428316952585

namespace A293067

/-- `∑[(3*A204089(n+1))%A204089(n)]` -/
def P1543676428316952585.Spec : Prop :=
  ∀ n, P1543676428316952585.a n = A293067 n

end A293067

/-!
# A293068: Sum of values of vertices of type D at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293068, there is no canonical definition to state claims against.
-/

/-! ## A293068.P7822692784398749095

`A002003(n)%A068962(A026939(n))`
-/

namespace A293068.P7822692784398749095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002003 n) (A068962 (A026939 n).toNat)

end

end A293068.P7822692784398749095

/-! ## A293068.P11975578212934302830

`A123164(n)%A068962(A026939(n))`
-/

namespace A293068.P11975578212934302830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123164 n) (A068962 (A026939 n).toNat)

end

end A293068.P11975578212934302830

/-!
# A293069: Sum of values of vertices of type E at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293069, there is no canonical definition to state claims against.
-/

/-! ## A293069.P9170270393982048508

`A235049(A147493(2*n+1)²)`
-/

namespace A293069.P9170270393982048508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A147493 (2 * n + 1) ^ 2).toNat

end

end A293069.P9170270393982048508

/-! ## A293069.P10123824690444552177

`∑{p}[A247364(record[A221314(n+1)]), #]`
-/

namespace A293069.P10123824690444552177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293069.P10123824690444552177

/-! ## A293069.P769688472314196782

`∑[A366622(n+1)%A099952(n+1)]`
-/

namespace A293069.P769688472314196782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366622 (n + 1)) (A099952 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293069.P769688472314196782

/-!
# A293070: Sum of values of vertices at level n of the hyperbolic Pascal pyramid PP_(4,5).

The programs for A293070, the canonical program `A293070.P2450786926907195132` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293070 has offset 0).

The definition of A293070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293070.P10067665919137399913

`ogf((1-5x+4x^2)/(1-8x+19x^2-14x^3))`
-/

namespace A293070.P10067665919137399913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 4] [1, -8, 19, -14] n

end

end A293070.P10067665919137399913

namespace A293070

/-- `ogf((1-5x+4x^2)/(1-8x+19x^2-14x^3))` -/
def P10067665919137399913.Spec : Prop :=
  ∀ n, P10067665919137399913.a n = A293070 n

end A293070

/-! ## A293070.P2450786926907195132

`8*a(n-1)-19*a(n-2)+14*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293070

/-- `8*a(n-1)-19*a(n-2)+14*a(n-3)` -/
def P2450786926907195132.Spec : Prop :=
  ∀ n, P2450786926907195132.a n = A293070 n

theorem P2450786926907195132.correct : P2450786926907195132.Spec := by
  intro n
  simp only [A293070]

end A293070

/-! ## A293070.P1765557062562979699

`A083878(n-1)+2*a(n-1)` with `a(0)=1`
-/

namespace A293070.P1765557062562979699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083878 (n - 1) + 2 * a (n - 1)

end

end A293070.P1765557062562979699

namespace A293070

/-- `A083878(n-1)+2*a(n-1)` -/
def P1765557062562979699.Spec : Prop :=
  ∀ n, P1765557062562979699.a n = A293070 n

end A293070

/-!
# A293071: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} Sum_{j=0..k} (-1)^j*j!*x^(j*i).

The programs for A293071, there is no canonical definition to state claims against.
-/

/-! ## A293071.P11347885600249727916

`A073203(A073204(n))*A293305(n)`
-/

namespace A293071.P11347885600249727916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (A073204 n).toNat * A293305 n

end

end A293071.P11347885600249727916

/-! ## A293071.P4558191282466007727

`A293305(n)*A293630(A093557(3*n+1))`
-/

namespace A293071.P4558191282466007727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 n * A293630 (A093557 (3 * n + 1)).toNat

end

end A293071.P4558191282466007727

/-! ## A293071.P1321896788680235857

`A273730(A293135(n))*A293305(n)`
-/

namespace A293071.P1321896788680235857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A293135 n).toNat * A293305 n

end

end A293071.P1321896788680235857

/-! ## A293071.P2312669540657507458

`A273730(A293301(n))*A293305(n)`
-/

namespace A293071.P2312669540657507458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A293301 n).toNat * A293305 n

end

end A293071.P2312669540657507458

/-! ## A293071.P6173295294199830675

`A293305(n)*A361633(A091855(n+5))`
-/

namespace A293071.P6173295294199830675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 n * A361633 (A091855 (n + 5)).toNat

end

end A293071.P6173295294199830675

/-!
# A293072: G.f.: Product_{m>0} (1-x^m+2!*x^(2*m)).

The programs for A293072, there is no canonical definition to state claims against.
-/

/-! ## A293072.P3421935297975198994

`A293071(∑[n+3])`
-/

namespace A293072.P3421935297975198994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293072.P3421935297975198994

/-! ## A293072.P3797359906541243331

`A293305(∑[n+3])`
-/

namespace A293072.P3797359906541243331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293072.P3797359906541243331

/-! ## A293072.P13191372684654875989

`or(char[1], A293305(A055998(n+1)))`
-/

namespace A293072.P13191372684654875989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293305 (A055998 (n + 1)).toNat)

end

end A293072.P13191372684654875989

/-! ## A293072.P16709889286737197343

`A293305(A055998(n+1))%A001703(n)`
-/

namespace A293072.P16709889286737197343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293305 (A055998 (n + 1)).toNat) (A001703 n)

end

end A293072.P16709889286737197343

/-! ## A293072.P12644131325121889899

`abs(A293305(A055998(n+1)))*A033999(n)`
-/

namespace A293072.P12644131325121889899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293305 (A055998 (n + 1)).toNat| * A033999 n

end

end A293072.P12644131325121889899

/-! ## A293072.P1003866068205390686

`A293305(A055998(n+1))+A000007(n+1)`
-/

namespace A293072.P1003866068205390686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293072.P1003866068205390686

/-! ## A293072.P986948048275334595

`A293305(A055998(n+1))+A000038(n+1)`
-/

namespace A293072.P986948048275334595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A293072.P986948048275334595

/-! ## A293072.P2832227967867754196

`A001492(2*n)*A293305(A055998(n+1))`
-/

namespace A293072.P2832227967867754196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (2 * n) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P2832227967867754196

/-! ## A293072.P1844157564463011641

`A007318(C(2, n))*A293305(A055998(n+1))`
-/

namespace A293072.P1844157564463011641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P1844157564463011641

/-! ## A293072.P4468823166921740994

`A010054(C(n, 2))*A293305(A055998(n+1))`
-/

namespace A293072.P4468823166921740994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose n 2) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P4468823166921740994

/-! ## A293072.P17435043407726417220

`A293305(A055998(n+1))+A008683(4*(n+1))`
-/

namespace A293072.P17435043407726417220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293305 (A055998 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A293072.P17435043407726417220

/-! ## A293072.P32288185452855508

`A014963(6*(n+1))*A293305(A055998(n+1))`
-/

namespace A293072.P32288185452855508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P32288185452855508

/-! ## A293072.P2394831880160985530

`A000041(C(2, n+2))*A293305(A055998(n+1))`
-/

namespace A293072.P2394831880160985530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P2394831880160985530

/-! ## A293072.P12938507029907394046

`A000108(C(2, n+2))*A293305(A055998(n+1))`
-/

namespace A293072.P12938507029907394046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A293305 (A055998 (n + 1)).toNat

end

end A293072.P12938507029907394046

/-! ## A293072.P16087130431041812753

`A293305(A055998(n+1))^and(1, A000040(n+1))`
-/

namespace A293072.P16087130431041812753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293305 (A055998 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A293072.P16087130431041812753

/-! ## A293072.P4153125226247375047

`A293305(A055998(n+1))/A014963(A008458(n))`
-/

namespace A293072.P4153125226247375047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293305 (A055998 (n + 1)).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A293072.P4153125226247375047

/-! ## A293072.P2060436434422478379

`A293305(A055998(n+1))^A001221(A001316(n))`
-/

namespace A293072.P2060436434422478379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293305 (A055998 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A293072.P2060436434422478379

/-! ## A293072.P8206428499496722416

`A001222(A003627(n+2))*A293305(A055998(n+1))`
-/

namespace A293072.P8206428499496722416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003627 (n + 2)).toNat * A293305 (A055998 (n + 1)).toNat

end

end A293072.P8206428499496722416

/-!
# A293073: Number of matchings in the n-cocktail party graph.

The programs for A293073, there is no canonical definition to state claims against.
-/

/-! ## A293073.P1146781430398487314

`A095375(A001147(n+1))+A005843(n)`
-/

namespace A293073.P1146781430398487314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (A001147 (n + 1)).toNat + A005843 n

end

end A293073.P1146781430398487314

/-!
# A293074: Primes of the form 2^q * 3^r * 11^s - 1.

The programs for A293074, there is no canonical definition to state claims against.
-/

/-! ## A293074.P12316916594959165237

`p?[n*A118541(A065330(n+1))]`
-/

namespace A293074.P12316916594959165237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118541 (A065330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293074.P12316916594959165237

/-! ## A293074.P4479350164950321358

`p?[C(n, A296150(A357982(n+1)))]`
-/

namespace A293074.P4479350164950321358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A296150 (A357982 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293074.P4479350164950321358

/-! ## A293074.P9731501105789511917

`eq[A003415(n), A326625(A006530(n+1))]`
-/

namespace A293074.P9731501105789511917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293074.P9731501105789511917

/-! ## A293074.P15314671188865878915

`∩[A382393(n+1), A386356(n+1)]`
-/

namespace A293074.P15314671188865878915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293074.P15314671188865878915

/-! ## A293074.P518156500792161280

`eq[A269378(n+1), A341701(n)]`
-/

namespace A293074.P518156500792161280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293074.P518156500792161280

/-!
# A293076: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293076, there is no canonical definition to state claims against.
-/

/-! ## A293076.P12487417441487703457

`A294541(n)+A024000(A006355(n))`
-/

namespace A293076.P12487417441487703457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294541 n + A024000 (A006355 n).toNat

end

end A293076.P12487417441487703457

/-! ## A293076.P5124799633034764692

`A293767(n)-A004526(A006355(n))`
-/

namespace A293076.P5124799633034764692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293767 n - A004526 (A006355 n).toNat

end

end A293076.P5124799633034764692

/-! ## A293076.P13602533560086370145

`A000007(a(n-1))+A293767(n)-A212804(n)` with `a(0)=1`
-/

namespace A293076.P13602533560086370145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + (A293767 n - A212804 n)

end

end A293076.P13602533560086370145

/-! ## A293076.P15170162625574044025

`A000038(a(n-1))+A293767(n)-A212804(n)` with `a(0)=1`
-/

namespace A293076.P15170162625574044025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000038 (a (n - 1)).toNat + (A293767 n - A212804 n)

end

end A293076.P15170162625574044025

/-! ## A293076.P6559851123571184146

`A293767(n)+A000007(A336383(n))-A212804(n)`
-/

namespace A293076.P6559851123571184146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293767 n + (A000007 (A336383 n).toNat - A212804 n)

end

end A293076.P6559851123571184146

/-!
# A293077: Number of letters (0's and 1's) in the n-th iterate of the final-letter-removed mapping defined at A289035.

The programs for A293077, the canonical program `A293077.P7359774592078491563` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293077 has offset 1).

The definition of A293077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293077.P7359774592078491563

`2*a(n-1)-a(n-2)+2*floor(a(n-2)/4)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293077

/-- `2*a(n-1)-a(n-2)+2*floor(a(n-2)/4)` -/
def P7359774592078491563.Spec : Prop :=
  ∀ n, P7359774592078491563.a n = A293077 (n + 1)

theorem P7359774592078491563.correct : P7359774592078491563.Spec := by
  intro n
  simp only [A293077, Nat.add_sub_cancel]

end A293077

/-! ## A293077.P9096313660292603422

`2*floor(a(n-1)-a(n-2)/4)` with `a(0)=2, a(1)=4`
-/

namespace A293077.P9096313660292603422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) - (a (n - 2) : ℚ) / 4⌋

end

end A293077.P9096313660292603422

namespace A293077

/-- `2*floor(a(n-1)-a(n-2)/4)` -/
def P9096313660292603422.Spec : Prop :=
  ∀ n, P9096313660292603422.a n = A293077 (n + 1)

end A293077

/-! ## A293077.P12193327585443034484

`2*(a(n-1)-ceil(a(n-2)/4))` with `a(0)=2, a(1)=4`
-/

namespace A293077.P12193327585443034484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (a (n - 1) - ⌈(a (n - 2) : ℚ) / 4⌉)

end

end A293077.P12193327585443034484

namespace A293077

/-- `2*(a(n-1)-ceil(a(n-2)/4))` -/
def P12193327585443034484.Spec : Prop :=
  ∀ n, P12193327585443034484.a n = A293077 (n + 1)

end A293077

/-! ## A293077.P14568714108038657388

`2*A293078(n+1)`
-/

namespace A293077.P14568714108038657388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293078 (n + 1)

end

end A293077.P14568714108038657388

namespace A293077

/-- `2*A293078(n+1)` -/
def P14568714108038657388.Spec : Prop :=
  ∀ n, P14568714108038657388.a n = A293077 (n + 1)

end A293077

/-! ## A293077.P17527063181670434247

`A293078(C(n+1, n))+A293078(n+1)`
-/

namespace A293077.P17527063181670434247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (Nat.choose (n + 1) n) + A293078 (n + 1)

end

end A293077.P17527063181670434247

namespace A293077

/-- `A293078(C(n+1, n))+A293078(n+1)` -/
def P17527063181670434247.Spec : Prop :=
  ∀ n, P17527063181670434247.a n = A293077 (n + 1)

end A293077

/-!
# A293078: a(n) = (1/2)*A293077(n).

The programs for A293078, the canonical program `A293078.P16857755642706999247` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293078 has offset 1).

The definition of A293078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293078.P16857755642706999247

`1/2*A293077(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293078

/-- `1/2*A293077(n+1)` -/
def P16857755642706999247.Spec : Prop :=
  ∀ n, P16857755642706999247.a n = (A293078 (n + 1) : ℚ)

end A293078

/-! ## A293078.P3230829132018890095

`floor(a(n-1)/(2-sqrt(2)))` with `a(0)=1, a(1)=2`
-/

namespace A293078.P3230829132018890095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A293078.P3230829132018890095

namespace A293078

/-- `floor(a(n-1)/(2-sqrt(2)))` -/
def P3230829132018890095.Spec : Prop :=
  ∀ n, P3230829132018890095.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P7405428188709753269

`floor((sin(atan(1))+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A293078.P7405428188709753269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sin (Real.arctan (1 : ℝ)) + 1) * (a (n - 1) : ℝ)⌋

end

end A293078.P7405428188709753269

namespace A293078

/-- `floor((sin(atan(1))+1)*a(n-1))` -/
def P7405428188709753269.Spec : Prop :=
  ∀ n, P7405428188709753269.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P5825313340014347913

`ceil(a(n-1)/(2-sqrt(2)))-1` with `a(0)=1, a(1)=2`
-/

namespace A293078.P5825313340014347913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉ - 1

end

end A293078.P5825313340014347913

namespace A293078

/-- `ceil(a(n-1)/(2-sqrt(2)))-1` -/
def P5825313340014347913.Spec : Prop :=
  ∀ n, P5825313340014347913.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P2938736912053238980

`floor(2*a(n-1)-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A293078.P2938736912053238980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) - (a (n - 2) : ℚ) / 2⌋

end

end A293078.P2938736912053238980

namespace A293078

/-- `floor(2*a(n-1)-a(n-2)/2)` -/
def P2938736912053238980.Spec : Prop :=
  ∀ n, P2938736912053238980.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P12255645670213040796

`floor(a(n-1)+a(n-1)-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A293078.P12255645670213040796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) - (a (n - 2) : ℚ) / 2)⌋

end

end A293078.P12255645670213040796

namespace A293078

/-- `floor(a(n-1)+a(n-1)-a(n-2)/2)` -/
def P12255645670213040796.Spec : Prop :=
  ∀ n, P12255645670213040796.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P11731544357696873384

`floor(a(n-1)-(a(n-2)/2-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A293078.P11731544357696873384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((a (n - 2) : ℚ) / 2 - (a (n - 1) : ℚ))⌋

end

end A293078.P11731544357696873384

namespace A293078

/-- `floor(a(n-1)-(a(n-2)/2-a(n-1)))` -/
def P11731544357696873384.Spec : Prop :=
  ∀ n, P11731544357696873384.a n = A293078 (n + 1)

end A293078

/-! ## A293078.P3995829486723998672

`A293077(n+1)/2`
-/

namespace A293078.P3995829486723998672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293077 (n + 1) : ℚ) / 2

end

end A293078.P3995829486723998672

namespace A293078

/-- `A293077(n+1)/2` -/
def P3995829486723998672.Spec : Prop :=
  ∀ n, P3995829486723998672.a n = (A293078 (n + 1) : ℚ)

end A293078

/-!
# A293080: Number of n X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293080, there is no canonical definition to state claims against.
-/

/-! ## A293080.P12512485206042303682

`A293087(∑[4*n]+1)`
-/

namespace A293080.P12512485206042303682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293080.P12512485206042303682

/-! ## A293080.P8697243708626823813

`A293087(A001844(n))+A193581(n)`
-/

namespace A293080.P8697243708626823813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A001844 n).toNat + A193581 n

end

end A293080.P8697243708626823813

/-! ## A293080.P13683441338479742243

`A293087(A001844(n))+A262889(n)`
-/

namespace A293080.P13683441338479742243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A001844 n).toNat + A262889 n

end

end A293080.P13683441338479742243

/-! ## A293080.P1406277708129927919

`A015250(n)*A293087(A001844(n))`
-/

namespace A293080.P1406277708129927919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015250 n * A293087 (A001844 n).toNat

end

end A293080.P1406277708129927919

/-! ## A293080.P14666206246159601615

`A057427(n)*A293087(A001844(n))`
-/

namespace A293080.P14666206246159601615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A293087 (A001844 n).toNat

end

end A293080.P14666206246159601615

/-!
# A293081: Number of n X 2 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293081, there is no canonical definition to state claims against.
-/

/-! ## A293081.P11420672229615662603

`A286209(2*(n+1))`
-/

namespace A293081.P11420672229615662603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286209 (2 * (n + 1))

end

end A293081.P11420672229615662603

/-! ## A293081.P11789244205077394149

`A286209(A103517(n))+val(n+1, n+2)`
-/

namespace A293081.P11789244205077394149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286209 (A103517 n).toNat + (SequenceMachineLib.valuation (n + 1) (n + 2) : ℤ)

end

end A293081.P11789244205077394149

/-! ## A293081.P923380459780750764

`A054977(n)*A286209(A103517(n))`
-/

namespace A293081.P923380459780750764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A286209 (A103517 n).toNat

end

end A293081.P923380459780750764

/-! ## A293081.P8732158089467283801

`lcm(A010892(3*n), A286209(A103517(n)))`
-/

namespace A293081.P8732158089467283801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (3 * n)) (A286209 (A103517 n).toNat)

end

end A293081.P8732158089467283801

/-! ## A293081.P1321363937826380312

`A010892(3*2*n)*A286209(A103517(n))`
-/

namespace A293081.P1321363937826380312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * (2 * n)) * A286209 (A103517 n).toNat

end

end A293081.P1321363937826380312

/-! ## A293081.P6519321221700864634

`A286209(A103517(n))/(A008619(2*n)-n)`
-/

namespace A293081.P6519321221700864634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286209 (A103517 n).toNat : ℚ) / (A008619 (2 * n) - (n : ℤ) : ℚ)

end

end A293081.P6519321221700864634

/-! ## A293081.P2764981699432668190

`gcd((-1)^n, A001057(n))*A286209(A103517(n))`
-/

namespace A293081.P2764981699432668190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((-1) ^ n) (A001057 n) : ℤ) * A286209 (A103517 n).toNat

end

end A293081.P2764981699432668190

/-! ## A293081.P3013728866311026133

`A286209(A103517(n))^A000041((n+2)%(n+1))`
-/

namespace A293081.P3013728866311026133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286209 (A103517 n).toNat : ℚ) ^ (A000041 ((n + 2) % (n + 1)) : ℤ)

end

end A293081.P3013728866311026133

/-! ## A293081.P10557649491595952657

`A286209(A103517(n))%A286186(n+1)`
-/

namespace A293081.P10557649491595952657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286209 (A103517 n).toNat) (A286186 (n + 1))

end

end A293081.P10557649491595952657

/-! ## A293081.P3769994523698417842

`A286209(A103517(n))%A275707(n)`
-/

namespace A293081.P3769994523698417842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286209 (A103517 n).toNat) (A275707 n)

end

end A293081.P3769994523698417842

/-!
# A293082: Number of n X 3 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293082, there is no canonical definition to state claims against.
-/

/-! ## A293082.P2198533501002645049

`A293087(∑[n+3]+1)`
-/

namespace A293082.P2198533501002645049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293082.P2198533501002645049

/-! ## A293082.P7231303764011420067

`record[A293087(∑[A158416(n)])]`
-/

namespace A293082.P7231303764011420067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293082.P7231303764011420067

/-! ## A293082.P18375282822867797820

`record[A293087(sqrt(A303054(n+1)))]`
-/

namespace A293082.P18375282822867797820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293082.P18375282822867797820

/-! ## A293082.P13281018322690083712

`record[A293087(record[A132128(n+1)])]`
-/

namespace A293082.P13281018322690083712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293082.P13281018322690083712

/-! ## A293082.P13470030413536126573

`record[A185018(n)*A293087(n+1)]`
-/

namespace A293082.P13470030413536126573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A293087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293082.P13470030413536126573

/-!
# A293083: Number of n X 4 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293083, there is no canonical definition to state claims against.
-/

/-! ## A293083.P4094673229736985500

`A293087(A141214(n+1))`
-/

namespace A293083.P4094673229736985500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A141214 (n + 1)).toNat

end

end A293083.P4094673229736985500

/-! ## A293083.P18080703814454094848

`A293087(A027379(n+2))`
-/

namespace A293083.P18080703814454094848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A027379 (n + 2)).toNat

end

end A293083.P18080703814454094848

/-! ## A293083.P445846208142249549

`A293087(A155212(n)+5)`
-/

namespace A293083.P445846208142249549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A155212 n + 5).toNat

end

end A293083.P445846208142249549

/-! ## A293083.P14607080629303812626

`A293087(A056000(n)+7)`
-/

namespace A293083.P14607080629303812626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A056000 n + 7).toNat

end

end A293083.P14607080629303812626

/-! ## A293083.P15418939125624148203

`A293087(eq[4, A140996(n)])`
-/

namespace A293083.P15418939125624148203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293083.P15418939125624148203

/-!
# A293084: Number of n X 5 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293084, there is no canonical definition to state claims against.
-/

/-! ## A293084.P4268720864013402736

`A293087(Δ[A264443(n)])`
-/

namespace A293084.P4268720864013402736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (f1 (n + 1) - f1 n).toNat

end

end A293084.P4268720864013402736

/-! ## A293084.P8369328995376763059

`A293087(eq[4, A193592(n)])`
-/

namespace A293084.P8369328995376763059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293084.P8369328995376763059

/-! ## A293084.P10523832426566144367

`A293087(eq[8, A140996(n)])`
-/

namespace A293084.P10523832426566144367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293084.P10523832426566144367

/-! ## A293084.P6698246115618757905

`A293087(Δ[A023545(n+1)])`
-/

namespace A293084.P6698246115618757905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (f1 (n + 1) - f1 n).toNat

end

end A293084.P6698246115618757905

/-! ## A293084.P2123118642441921022

`A293087(A141214(n+2)-1)`
-/

namespace A293084.P2123118642441921022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A141214 (n + 2) - 1).toNat

end

end A293084.P2123118642441921022

/-!
# A293085: Number of n X 6 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293085, there is no canonical definition to state claims against.
-/

/-! ## A293085.P12165583574401757054

`A293087(A052905(n+3))`
-/

namespace A293085.P12165583574401757054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A052905 (n + 3)).toNat

end

end A293085.P12165583574401757054

/-! ## A293085.P3700841426936391294

`A293087(A302537(n)+15)`
-/

namespace A293085.P3700841426936391294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A302537 n + 15).toNat

end

end A293085.P3700841426936391294

/-! ## A293085.P4390645681227319961

`A293087(eq[3, A219347(n)])`
-/

namespace A293085.P4390645681227319961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293085.P4390645681227319961

/-! ## A293085.P1190938027143537784

`A293087(eq[5, A193592(n)])`
-/

namespace A293085.P1190938027143537784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293085.P1190938027143537784

/-! ## A293085.P13550650591508254880

`A293087(eq[6, A200370(n+1)])`
-/

namespace A293085.P13550650591508254880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293085.P13550650591508254880

/-!
# A293086: Number of n X 7 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293086, there is no canonical definition to state claims against.
-/

/-! ## A293086.P3144736846732040970

`A293087(eq[4, A219347(n)])`
-/

namespace A293086.P3144736846732040970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293086.P3144736846732040970

/-! ## A293086.P17225483911086150384

`A293087(eq[5, A332954(n)])`
-/

namespace A293086.P17225483911086150384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293086.P17225483911086150384

/-! ## A293086.P14036018503687022717

`A293087(eq[6, A193592(n)])`
-/

namespace A293086.P14036018503687022717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293086.P14036018503687022717

/-! ## A293086.P252437354273698352

`A293087(eq[7, A200370(n+1)])`
-/

namespace A293086.P252437354273698352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293086.P252437354273698352

/-! ## A293086.P930560551631901111

`A293087(eq[10, A185782(n+1)])`
-/

namespace A293086.P930560551631901111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293086.P930560551631901111

/-!
# A293087: T(n,k) = Number of n X k 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293087, there is no canonical definition to state claims against.
-/

/-! ## A293087.P5121604097212836838

`xor(A264728(n+1), A269974(A133263(n)))`
-/

namespace A293087.P5121604097212836838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A264728 (n + 1)) (A269974 (A133263 n).toNat)

end

end A293087.P5121604097212836838

/-! ## A293087.P9092020088403964006

`A156580(A156584(n))-A156587(A156579(n))`
-/

namespace A293087.P9092020088403964006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156580 (A156584 n).toNat - A156587 (A156579 n).toNat

end

end A293087.P9092020088403964006

/-!
# A293088: Number of 2 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293088, there is no canonical definition to state claims against.
-/

/-! ## A293088.P10455000173756021206

`A293087(∑[n+1]+2)`
-/

namespace A293088.P10455000173756021206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293088.P10455000173756021206

/-! ## A293088.P17006937559110846622

`C(A293087(A133263(n+1)), ceil(acot(n)))`
-/

namespace A293088.P17006937559110846622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293087 (A133263 (n + 1)).toNat).toNat ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A293088.P17006937559110846622

/-! ## A293088.P14198659861590511784

`A293087(A133263(n+1))%A000302(n)`
-/

namespace A293088.P14198659861590511784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293087 (A133263 (n + 1)).toNat) (A000302 n)

end

end A293088.P14198659861590511784

/-! ## A293088.P10790814150654408270

`C(A293087(A133263(n+1)), A158416(2*n+1))`
-/

namespace A293088.P10790814150654408270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293087 (A133263 (n + 1)).toNat).toNat (A158416 (2 * n + 1)).toNat

end

end A293088.P10790814150654408270

/-!
# A293089: Number of 3 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293089, there is no canonical definition to state claims against.
-/

/-! ## A293089.P5965094347418953838

`A293087(∑[n+2]+4)`
-/

namespace A293089.P5965094347418953838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A293089.P5965094347418953838

/-! ## A293089.P2807496167189982053

`C(A293087(A167614(n+1)), ceil(acot(n)))`
-/

namespace A293089.P2807496167189982053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293087 (A167614 (n + 1)).toNat).toNat ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A293089.P2807496167189982053

/-! ## A293089.P14702539423010183609

`A293087(A167614(n+1))+A185284(n)`
-/

namespace A293089.P14702539423010183609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A167614 (n + 1)).toNat + A185284 n

end

end A293089.P14702539423010183609

/-! ## A293089.P1328316077228863085

`A054977(n)*A293087(A167614(n+1))`
-/

namespace A293089.P1328316077228863085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A293087 (A167614 (n + 1)).toNat

end

end A293089.P1328316077228863085

/-! ## A293089.P2042730748985535125

`A291168(n)*A293087(A167614(n+1))`
-/

namespace A293089.P2042730748985535125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A293087 (A167614 (n + 1)).toNat

end

end A293089.P2042730748985535125

/-!
# A293090: Number of 4 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293090, there is no canonical definition to state claims against.
-/

/-! ## A293090.P11631274792627579775

`A293087(A141214(n)+7)`
-/

namespace A293090.P11631274792627579775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A141214 n + 7).toNat

end

end A293090.P11631274792627579775

/-! ## A293090.P7817883692526640547

`A293087(A055999(n)+10)`
-/

namespace A293090.P7817883692526640547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A055999 n + 10).toNat

end

end A293090.P7817883692526640547

/-! ## A293090.P6618041501001975600

`A293087(A167614(n+2)+1)`
-/

namespace A293090.P6618041501001975600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A167614 (n + 2) + 1).toNat

end

end A293090.P6618041501001975600

/-! ## A293090.P13994976699888047397

`A293087(A112355(n+1)+4)`
-/

namespace A293090.P13994976699888047397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A112355 (n + 1) + 4).toNat

end

end A293090.P13994976699888047397

/-! ## A293090.P15571273480152253744

`A293087(A166136(n+2)-2)`
-/

namespace A293090.P15571273480152253744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A166136 (n + 2) - 2).toNat

end

end A293090.P15571273480152253744

/-!
# A293091: Number of 5 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293091, there is no canonical definition to state claims against.
-/

/-! ## A293091.P14277913545696794132

`A293087(A167499(n+3))`
-/

namespace A293091.P14277913545696794132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A167499 (n + 3)).toNat

end

end A293091.P14277913545696794132

/-! ## A293091.P9960977629103944239

`A293087(A155212(n)+13)`
-/

namespace A293091.P9960977629103944239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A155212 n + 13).toNat

end

end A293091.P9960977629103944239

/-! ## A293091.P5434155067316873012

`A293087(A056000(n)+15)`
-/

namespace A293091.P5434155067316873012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A056000 n + 15).toNat

end

end A293091.P5434155067316873012

/-! ## A293091.P11334795311099775475

`A293087(eq[7, A066657(n)])`
-/

namespace A293091.P11334795311099775475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293091.P11334795311099775475

/-! ## A293091.P576163968047213378

`A293087(A141214(n+1)+8)`
-/

namespace A293091.P576163968047213378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A141214 (n + 1) + 8).toNat

end

end A293091.P576163968047213378

/-!
# A293092: Number of 6 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293092, there is no canonical definition to state claims against.
-/

/-! ## A293092.P12025199844299414133

`A293087(A056115(n)+21)`
-/

namespace A293092.P12025199844299414133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A056115 n + 21).toNat

end

end A293092.P12025199844299414133

/-! ## A293092.P3379565323769003831

`A293087(A167614(n+4)+3)`
-/

namespace A293092.P3379565323769003831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A167614 (n + 4) + 3).toNat

end

end A293092.P3379565323769003831

/-! ## A293092.P2313256554895166903

`A293087(eq[6, A130270(n+1)])`
-/

namespace A293092.P2313256554895166903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293092.P2313256554895166903

/-! ## A293092.P16925684317189421994

`A293087(eq[7, A131818(n+1)])`
-/

namespace A293092.P16925684317189421994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293092.P16925684317189421994

/-! ## A293092.P15352190679181567361

`A293087(eq[11, A158405(n+1)]+1)`
-/

namespace A293092.P15352190679181567361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293092.P15352190679181567361

/-!
# A293093: Number of 7 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293093, there is no canonical definition to state claims against.
-/

/-! ## A293093.P15936360762293585399

`A293087(eq[11, A066657(n)])`
-/

namespace A293093.P15936360762293585399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293093.P15936360762293585399

/-! ## A293093.P7971105836631697798

`A293087(A167614(n+5)+4)`
-/

namespace A293093.P7971105836631697798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A167614 (n + 5) + 4).toNat

end

end A293093.P7971105836631697798

/-! ## A293093.P16076344060158554489

`A293087(A112355(n+4)+7)`
-/

namespace A293093.P16076344060158554489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A112355 (n + 4) + 7).toNat

end

end A293093.P16076344060158554489

/-! ## A293093.P5961539153975318973

`A293087(A000217(n+6)+7)`
-/

namespace A293093.P5961539153975318973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (A000217 (n + 6) + 7).toNat

end

end A293093.P5961539153975318973

/-! ## A293093.P4523251702717252550

`A293087(eq[8, A131818(n+1)])`
-/

namespace A293093.P4523251702717252550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293093.P4523251702717252550

/-!
# A293094: Number of n X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293094, there is no canonical definition to state claims against.
-/

/-! ## A293094.P1974269714564399434

`A293100(∑[4*n]+1)`
-/

namespace A293094.P1974269714564399434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293094.P1974269714564399434

/-! ## A293094.P14451595432123013354

`A293100(A001844(n))+A025442(n)`
-/

namespace A293094.P14451595432123013354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A001844 n).toNat + A025442 n

end

end A293094.P14451595432123013354

/-! ## A293094.P13792783982673939577

`A293100(A001844(n))+A040115(n)`
-/

namespace A293094.P13792783982673939577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A001844 n).toNat + A040115 n

end

end A293094.P13792783982673939577

/-! ## A293094.P4596374970980655847

`A326443(n)+A293100(A001844(n))`
-/

namespace A293094.P4596374970980655847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326443 n + A293100 (A001844 n).toNat

end

end A293094.P4596374970980655847

/-!
# A293095: Number of n X 3 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293095, there is no canonical definition to state claims against.
-/

/-! ## A293095.P3613705900935119741

`A293100(∑[n+3]+1)`
-/

namespace A293095.P3613705900935119741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293095.P3613705900935119741

/-! ## A293095.P1656682909719091086

`record[A293100(A101881(n))]`
-/

namespace A293095.P1656682909719091086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293095.P1656682909719091086

/-! ## A293095.P17524924786956718623

`record[A293100(∑[A158416(n)])]`
-/

namespace A293095.P17524924786956718623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293095.P17524924786956718623

/-! ## A293095.P3956394221930428161

`record[A293100(record[A132128(n+1)])]`
-/

namespace A293095.P3956394221930428161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293095.P3956394221930428161

/-! ## A293095.P15565660607663873670

`record[A185018(n)*A293100(n+1)]`
-/

namespace A293095.P15565660607663873670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A293100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293095.P15565660607663873670

/-!
# A293096: Number of n X 4 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293096, there is no canonical definition to state claims against.
-/

/-! ## A293096.P9728910212251257062

`A293100(A141214(n+1))`
-/

namespace A293096.P9728910212251257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A141214 (n + 1)).toNat

end

end A293096.P9728910212251257062

/-! ## A293096.P15353223523829664122

`A293100(A027379(n+2))`
-/

namespace A293096.P15353223523829664122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A027379 (n + 2)).toNat

end

end A293096.P15353223523829664122

/-! ## A293096.P13532000966703600801

`A293100(A155212(n)+5)`
-/

namespace A293096.P13532000966703600801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A155212 n + 5).toNat

end

end A293096.P13532000966703600801

/-! ## A293096.P3252720597930965025

`A293100(A056000(n)+7)`
-/

namespace A293096.P3252720597930965025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A056000 n + 7).toNat

end

end A293096.P3252720597930965025

/-! ## A293096.P18282477812553109258

`A293100(eq[4, A140996(n)])`
-/

namespace A293096.P18282477812553109258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293096.P18282477812553109258

/-!
# A293097: Number of n X 5 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293097, there is no canonical definition to state claims against.
-/

/-! ## A293097.P16795298458810983530

`A293100(Δ[A264443(n)])`
-/

namespace A293097.P16795298458810983530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (f1 (n + 1) - f1 n).toNat

end

end A293097.P16795298458810983530

/-! ## A293097.P17850224457411702297

`A293100(A056115(n)+11)`
-/

namespace A293097.P17850224457411702297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A056115 n + 11).toNat

end

end A293097.P17850224457411702297

/-! ## A293097.P14899999037952289366

`A293100(eq[4, A193592(n)])`
-/

namespace A293097.P14899999037952289366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293097.P14899999037952289366

/-! ## A293097.P16935349082802316846

`A293100(eq[8, A140996(n)])`
-/

namespace A293097.P16935349082802316846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293097.P16935349082802316846

/-! ## A293097.P13264585488209010654

`A293100(Δ[A023545(n+1)])`
-/

namespace A293097.P13264585488209010654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (f1 (n + 1) - f1 n).toNat

end

end A293097.P13264585488209010654

/-!
# A293098: Number of n X 6 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293098, there is no canonical definition to state claims against.
-/

/-! ## A293098.P12909022500177792959

`A293100(A052905(n+3))`
-/

namespace A293098.P12909022500177792959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A052905 (n + 3)).toNat

end

end A293098.P12909022500177792959

/-! ## A293098.P13922049046688714183

`A293100(eq[3, A219347(n)])`
-/

namespace A293098.P13922049046688714183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293098.P13922049046688714183

/-! ## A293098.P2966060989746334033

`A293100(eq[5, A193592(n)])`
-/

namespace A293098.P2966060989746334033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293098.P2966060989746334033

/-! ## A293098.P9196944068475843362

`A293100(eq[6, A200370(n+1)])`
-/

namespace A293098.P9196944068475843362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293098.P9196944068475843362

/-! ## A293098.P2578379258436368662

`A293100(eq[8, A185782(n+1)])`
-/

namespace A293098.P2578379258436368662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293098.P2578379258436368662

/-!
# A293099: Number of n X 7 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A293099, there is no canonical definition to state claims against.
-/

/-! ## A293099.P3216608732242977047

`A293100(A056121(n)+22)`
-/

namespace A293099.P3216608732242977047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (A056121 n + 22).toNat

end

end A293099.P3216608732242977047

/-! ## A293099.P3271853592229786921

`A293100(eq[4, A219347(n)])`
-/

namespace A293099.P3271853592229786921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293099.P3271853592229786921

/-! ## A293099.P9164721962319030282

`A293100(eq[6, A193592(n)])`
-/

namespace A293099.P9164721962319030282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293099.P9164721962319030282

/-! ## A293099.P8115703043821826885

`A293100(eq[7, A200370(n+1)])`
-/

namespace A293099.P8115703043821826885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293099.P8115703043821826885

/-! ## A293099.P8233539390288469099

`A293100(eq[10, A185782(n+1)])`
-/

namespace A293099.P8233539390288469099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293099.P8233539390288469099

