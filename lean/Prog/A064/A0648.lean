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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A064800: n plus the number of its prime factors: a(n) = n + A001222(n).

The programs for A064800, the canonical program `A064800.P9178262813478475092` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064800 has offset 1).

The definition of A064800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064800.P9178262813478475092

`n+1+A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A064800

/-- `n+1+A001222(n+1)` -/
def P9178262813478475092.Spec : Prop :=
  ∀ n, P9178262813478475092.a n = A064800 (n + 1)

theorem P9178262813478475092.correct : P9178262813478475092.Spec := by
  intro n
  simp only [A064800, Nat.add_sub_cancel]

end A064800

/-! ## A064800.P18173774812525735957

`∑{e}[n+1, #]+1+n`
-/

namespace A064800.P18173774812525735957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 + n

end

end A064800.P18173774812525735957

namespace A064800

/-- `∑{e}[n+1, #]+1+n` -/
def P18173774812525735957.Spec : Prop :=
  ∀ n, (P18173774812525735957.a n : ℤ) = A064800 (n + 1)

end A064800

/-! ## A064800.P8061624885183276824

`log2(∏{e}[n+1, 2^#])+n+1`
-/

namespace A064800.P8061624885183276824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + (n + 1 : ℝ)

end

end A064800.P8061624885183276824

namespace A064800

/-- `log2(∏{e}[n+1, 2^#])+n+1` -/
def P8061624885183276824.Spec : Prop :=
  ∀ n, P8061624885183276824.a n = (A064800 (n + 1) : ℝ)

end A064800

/-! ## A064800.P694042573473397446

`∑{p}[n+1, val(n+1, #)]+n+1`
-/

namespace A064800.P694042573473397446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p + (n + 1)

end

end A064800.P694042573473397446

namespace A064800

/-- `∑{p}[n+1, val(n+1, #)]+n+1` -/
def P694042573473397446.Spec : Prop :=
  ∀ n, (P694042573473397446.a n : ℤ) = A064800 (n + 1)

end A064800

/-! ## A064800.P7800564261883529307

`A222312(n+1)+1`
-/

namespace A064800.P7800564261883529307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222312 (n + 1) + 1

end

end A064800.P7800564261883529307

namespace A064800

/-- `A222312(n+1)+1` -/
def P7800564261883529307.Spec : Prop :=
  ∀ n, P7800564261883529307.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P15738395513724532907

`A073093(n+1)+n`
-/

namespace A064800.P15738395513724532907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + (n : ℤ)

end

end A064800.P15738395513724532907

namespace A064800

/-- `A073093(n+1)+n` -/
def P15738395513724532907.Spec : Prop :=
  ∀ n, P15738395513724532907.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P8152278837382088719

`Δ[A022559(n)]+n+1`
-/

namespace A064800.P8152278837382088719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A064800.P8152278837382088719

namespace A064800

/-- `Δ[A022559(n)]+n+1` -/
def P8152278837382088719.Spec : Prop :=
  ∀ n, P8152278837382088719.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P2037674215536120427

`Δ[n²]-A075795(n+1)`
-/

namespace A064800.P2037674215536120427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A075795 (n + 1)

end

end A064800.P2037674215536120427

namespace A064800

/-- `Δ[n²]-A075795(n+1)` -/
def P2037674215536120427.Spec : Prop :=
  ∀ n, P2037674215536120427.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P4602228027832893175

`2*(n+1)-A069345(n+1)`
-/

namespace A064800.P4602228027832893175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A069345 (n + 1)

end

end A064800.P4602228027832893175

namespace A064800

/-- `2*(n+1)-A069345(n+1)` -/
def P4602228027832893175.Spec : Prop :=
  ∀ n, P4602228027832893175.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P16258672718525551621

`A255201(n+1)/2+n+1`
-/

namespace A064800.P16258672718525551621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A064800.P16258672718525551621

namespace A064800

/-- `A255201(n+1)/2+n+1` -/
def P16258672718525551621.Spec : Prop :=
  ∀ n, P16258672718525551621.a n = (A064800 (n + 1) : ℚ)

end A064800

/-! ## A064800.P17738485183710380524

`A000005(∏{e}[n+1, 2^#])+n`
-/

namespace A064800.P17738485183710380524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) + (n : ℤ)

end

end A064800.P17738485183710380524

namespace A064800

/-- `A000005(∏{e}[n+1, 2^#])+n` -/
def P17738485183710380524.Spec : Prop :=
  ∀ n, P17738485183710380524.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P2680495151221218116

`A066959(n+1)/(n+1)+n+1`
-/

namespace A064800.P2680495151221218116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066959 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A064800.P2680495151221218116

namespace A064800

/-- `A066959(n+1)/(n+1)+n+1` -/
def P2680495151221218116.Spec : Prop :=
  ∀ n, P2680495151221218116.a n = (A064800 (n + 1) : ℚ)

end A064800

/-! ## A064800.P5876916300088743536

`n-Δ[a(n-1)-A001222(2*n)]` with `a(0)=0`
-/

namespace A064800.P5876916300088743536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A001222 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A064800.P5876916300088743536

namespace A064800

/-- `n-Δ[a(n-1)-A001222(2*n)]` -/
def P5876916300088743536.Spec : Prop :=
  ∀ n, P5876916300088743536.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P1546945429362598214

`A001222(A004277(n+1))+n`
-/

namespace A064800.P1546945429362598214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 (n + 1)).toNat + (n : ℤ)

end

end A064800.P1546945429362598214

namespace A064800

/-- `A001222(A004277(n+1))+n` -/
def P1546945429362598214.Spec : Prop :=
  ∀ n, P1546945429362598214.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P10347550469397237163

`A005555(A001222(n+1))+n`
-/

namespace A064800.P10347550469397237163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A001222 (n + 1)).toNat + (n : ℤ)

end

end A064800.P10347550469397237163

namespace A064800

/-- `A005555(A001222(n+1))+n` -/
def P10347550469397237163.Spec : Prop :=
  ∀ n, P10347550469397237163.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P15904466916052311411

`A001222(A005843(n+1))+n`
-/

namespace A064800.P15904466916052311411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005843 (n + 1)).toNat + (n : ℤ)

end

end A064800.P15904466916052311411

namespace A064800

/-- `A001222(A005843(n+1))+n` -/
def P15904466916052311411.Spec : Prop :=
  ∀ n, P15904466916052311411.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P5395201012098281562

`A001222(A008486(n+1))+n`
-/

namespace A064800.P5395201012098281562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 (n + 1)).toNat + (n : ℤ)

end

end A064800.P5395201012098281562

namespace A064800

/-- `A001222(A008486(n+1))+n` -/
def P5395201012098281562.Spec : Prop :=
  ∀ n, P5395201012098281562.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P15550826669453568216

`A000005(A061142(n+1))+n`
-/

namespace A064800.P15550826669453568216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061142 (n + 1)).toNat + (n : ℤ)

end

end A064800.P15550826669453568216

namespace A064800

/-- `A000005(A061142(n+1))+n` -/
def P15550826669453568216.Spec : Prop :=
  ∀ n, P15550826669453568216.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P16052868536128595725

`A000005(A068794(n+1))+n`
-/

namespace A064800.P16052868536128595725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat + (n : ℤ)

end

end A064800.P16052868536128595725

namespace A064800

/-- `A000005(A068794(n+1))+n` -/
def P16052868536128595725.Spec : Prop :=
  ∀ n, P16052868536128595725.a n = A064800 (n + 1)

end A064800

/-! ## A064800.P12109474721544772000

`A001222(A079890(n+1))+n`
-/

namespace A064800.P12109474721544772000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079890 (n + 1)).toNat + (n : ℤ)

end

end A064800.P12109474721544772000

namespace A064800

/-- `A001222(A079890(n+1))+n` -/
def P12109474721544772000.Spec : Prop :=
  ∀ n, P12109474721544772000.a n = A064800 (n + 1)

end A064800

/-!
# A064801: Take 1, skip 2, take 2, skip 3, take 3, etc.

The programs for A064801, the canonical program `A064801.P16911737620259658980` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064801 has offset 1).

The definition of A064801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064801.P16911737620259658980

`A004202(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064801

/-- `A004202(n+1)-1` -/
def P16911737620259658980.Spec : Prop :=
  ∀ n, P16911737620259658980.a n = A064801 (n + 1)

theorem P16911737620259658980.correct : P16911737620259658980.Spec := by
  intro n
  simp only [A064801, Nat.add_sub_cancel]

end A064801

/-! ## A064801.P3316970447602795480

`C(comp[∑[n]]-n, 2)+n`
-/

namespace A064801.P3316970447602795480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

end

end A064801.P3316970447602795480

namespace A064801

/-- `C(comp[∑[n]]-n, 2)+n` -/
def P3316970447602795480.Spec : Prop :=
  ∀ n, (P3316970447602795480.a n : ℤ) = A064801 (n + 1)

end A064801

/-! ## A064801.P835445458858792318

`lt[0, n-round(sqrt(n))²]-1`
-/

namespace A064801.P835445458858792318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A064801.P835445458858792318

namespace A064801

/-- `lt[0, n-round(sqrt(n))²]-1` -/
def P835445458858792318.Spec : Prop :=
  ∀ n, P835445458858792318.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P9257166835410809779

`eq[0, floor(sqrt(4*n+1))%2]`
-/

namespace A064801.P9257166835410809779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064801.P9257166835410809779

namespace A064801

/-- `eq[0, floor(sqrt(4*n+1))%2]` -/
def P9257166835410809779.Spec : Prop :=
  ∀ n, (P9257166835410809779.a n : ℤ) = A064801 (n + 1)

end A064801

/-! ## A064801.P12179862291016432630

`eq[1, and(1, ceil(2*sqrt(n+1)))]`
-/

namespace A064801.P12179862291016432630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064801.P12179862291016432630

namespace A064801

/-- `eq[1, and(1, ceil(2*sqrt(n+1)))]` -/
def P12179862291016432630.Spec : Prop :=
  ∀ n, (P12179862291016432630.a n : ℤ) = A064801 (n + 1)

end A064801

/-! ## A064801.P5913664456693017337

`A127739(n+1)+n`
-/

namespace A064801.P5913664456693017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (n : ℤ)

end

end A064801.P5913664456693017337

namespace A064801

/-- `A127739(n+1)+n` -/
def P5913664456693017337.Spec : Prop :=
  ∀ n, P5913664456693017337.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P8689716852361121770

`A025581(n)+Δ[n²]`
-/

namespace A064801.P8689716852361121770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A064801.P8689716852361121770

namespace A064801

/-- `A025581(n)+Δ[n²]` -/
def P8689716852361121770.Spec : Prop :=
  ∀ n, P8689716852361121770.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P5461121837800553243

`∑[2-A167407(n)]-1`
-/

namespace A064801.P5461121837800553243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064801.P5461121837800553243

namespace A064801

/-- `∑[2-A167407(n)]-1` -/
def P5461121837800553243.Spec : Prop :=
  ∀ n, P5461121837800553243.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P4312593582403941826

`A004736(n+1)+2*n`
-/

namespace A064801.P4312593582403941826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (2 * n : ℤ)

end

end A064801.P4312593582403941826

namespace A064801

/-- `A004736(n+1)+2*n` -/
def P4312593582403941826.Spec : Prop :=
  ∀ n, P4312593582403941826.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P10946278628464405913

`sqrt(A055461(n+1))+2*n`
-/

namespace A064801.P10946278628464405913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) + (2 * n : ℝ)

end

end A064801.P10946278628464405913

namespace A064801

/-- `sqrt(A055461(n+1))+2*n` -/
def P10946278628464405913.Spec : Prop :=
  ∀ n, P10946278628464405913.a n = (A064801 (n + 1) : ℝ)

end A064801

/-! ## A064801.P5782319695422601462

`log2(A090988(n+1))+2*n`
-/

namespace A064801.P5782319695422601462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) + (2 * n : ℝ)

end

end A064801.P5782319695422601462

namespace A064801

/-- `log2(A090988(n+1))+2*n` -/
def P5782319695422601462.Spec : Prop :=
  ∀ n, P5782319695422601462.a n = (A064801 (n + 1) : ℝ)

end A064801

/-! ## A064801.P13343567185159603029

`∑[A066182(n+1)-n]+n`
-/

namespace A064801.P13343567185159603029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A064801.P13343567185159603029

namespace A064801

/-- `∑[A066182(n+1)-n]+n` -/
def P13343567185159603029.Spec : Prop :=
  ∀ n, P13343567185159603029.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P5680319043224254584

`Δ[n²]+sqrt(A095831(n+1))`
-/

namespace A064801.P5680319043224254584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.sqrt (A095831 (n + 1) : ℝ)

end

end A064801.P5680319043224254584

namespace A064801

/-- `Δ[n²]+sqrt(A095831(n+1))` -/
def P5680319043224254584.Spec : Prop :=
  ∀ n, P5680319043224254584.a n = (A064801 (n + 1) : ℝ)

end A064801

/-! ## A064801.P2961411580651331254

`n+C(A002024(n+1)+1, 2)`
-/

namespace A064801.P2961411580651331254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (A002024 (n + 1) + 1).toNat 2

end

end A064801.P2961411580651331254

namespace A064801

/-- `n+C(A002024(n+1)+1, 2)` -/
def P2961411580651331254.Spec : Prop :=
  ∀ n, (P2961411580651331254.a n : ℤ) = A064801 (n + 1)

end A064801

/-! ## A064801.P7026355039656951130

`A000217(round(sqrt(2*n+1)))+n`
-/

namespace A064801.P7026355039656951130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat + (n : ℤ)

end

end A064801.P7026355039656951130

namespace A064801

/-- `A000217(round(sqrt(2*n+1)))+n` -/
def P7026355039656951130.Spec : Prop :=
  ∀ n, P7026355039656951130.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P1016173475753952353

`comp[2*n+1-A002260(n+1)]`
-/

namespace A064801.P1016173475753952353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064801.P1016173475753952353

namespace A064801

/-- `comp[2*n+1-A002260(n+1)]` -/
def P1016173475753952353.Spec : Prop :=
  ∀ n, (P1016173475753952353.a n : ℤ) = A064801 (n + 1)

end A064801

/-! ## A064801.P14233569593573327409

`sqrt(A000537(round(sqrt(2*n+1))))+n`
-/

namespace A064801.P14233569593573327409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat : ℝ) + (n : ℝ)

end

end A064801.P14233569593573327409

namespace A064801

/-- `sqrt(A000537(round(sqrt(2*n+1))))+n` -/
def P14233569593573327409.Spec : Prop :=
  ∀ n, P14233569593573327409.a n = (A064801 (n + 1) : ℝ)

end A064801

/-! ## A064801.P10160601485640874225

`A105020(n)+A055630(n)`
-/

namespace A064801.P10160601485640874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n + A055630 n

end

end A064801.P10160601485640874225

namespace A064801

/-- `A105020(n)+A055630(n)` -/
def P10160601485640874225.Spec : Prop :=
  ∀ n, P10160601485640874225.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P1203841724675682588

`A131507(n)+A063656(n)`
-/

namespace A064801.P1203841724675682588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A063656 n

end

end A064801.P1203841724675682588

namespace A064801

/-- `A131507(n)+A063656(n)` -/
def P1203841724675682588.Spec : Prop :=
  ∀ n, P1203841724675682588.a n = A064801 (n + 1)

end A064801

/-! ## A064801.P13233807568106558600

`A367964(n)+A271668(n)`
-/

namespace A064801.P13233807568106558600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A271668 n

end

end A064801.P13233807568106558600

namespace A064801

/-- `A367964(n)+A271668(n)` -/
def P13233807568106558600.Spec : Prop :=
  ∀ n, P13233807568106558600.a n = A064801 (n + 1)

end A064801

/-!
# A064803: Number of subgroups of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

The programs for A064803, there is no canonical definition to state claims against.
-/

/-! ## A064803.P17294749637107297825

`∑{d}[n+1, A002618(#)*A344135((n+1)/#)]`
-/

namespace A064803.P17294749637107297825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A344135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064803.P17294749637107297825

/-!
# A064804: Numbers 2*k such that phi(2*k + 2) < phi(2*k).

The programs for A064804, the canonical program `A064804.P11046241250947440996` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064804 has offset 1).

The definition of A064804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064804.P5096335206484418446

`∩[A064805(n+1), A020739(n)]`
-/

namespace A064804.P5096335206484418446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P5096335206484418446

namespace A064804

/-- `∩[A064805(n+1), A020739(n)]` -/
def P5096335206484418446.Spec : Prop :=
  ∀ n, (P5096335206484418446.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P803687604675473784

`∩[A064805(n+1), A020744(n)]`
-/

namespace A064804.P803687604675473784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P803687604675473784

namespace A064804

/-- `∩[A064805(n+1), A020744(n)]` -/
def P803687604675473784.Spec : Prop :=
  ∀ n, (P803687604675473784.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P7962576095314492174

`∩[A064805(n+1), A004275(n)]`
-/

namespace A064804.P7962576095314492174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P7962576095314492174

namespace A064804

/-- `∩[A064805(n+1), A004275(n)]` -/
def P7962576095314492174.Spec : Prop :=
  ∀ n, (P7962576095314492174.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P16397732146876887037

`∩[A064805(n+1), A004277(n)]`
-/

namespace A064804.P16397732146876887037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P16397732146876887037

namespace A064804

/-- `∩[A064805(n+1), A004277(n)]` -/
def P16397732146876887037.Spec : Prop :=
  ∀ n, (P16397732146876887037.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P1201495114475882933

`∩[A064805(n+1), A005843(n)]`
-/

namespace A064804.P1201495114475882933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P1201495114475882933

namespace A064804

/-- `∩[A064805(n+1), A005843(n)]` -/
def P1201495114475882933.Spec : Prop :=
  ∀ n, (P1201495114475882933.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P9354184556355690950

`∩[A064805(n+1), A103517(n)]`
-/

namespace A064804.P9354184556355690950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P9354184556355690950

namespace A064804

/-- `∩[A064805(n+1), A103517(n)]` -/
def P9354184556355690950.Spec : Prop :=
  ∀ n, (P9354184556355690950.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P13413494610751453984

`∩[A004278(n+1), A064805(n+1)]`
-/

namespace A064804.P13413494610751453984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P13413494610751453984

namespace A064804

/-- `∩[A004278(n+1), A064805(n+1)]` -/
def P13413494610751453984.Spec : Prop :=
  ∀ n, (P13413494610751453984.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P16080861380801092712

`∩[A058992(n+1), A064805(n+1)]`
-/

namespace A064804.P16080861380801092712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P16080861380801092712

namespace A064804

/-- `∩[A058992(n+1), A064805(n+1)]` -/
def P16080861380801092712.Spec : Prop :=
  ∀ n, (P16080861380801092712.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P9802732645539079989

`∩[A064805(n+1), A257637(n+1)]`
-/

namespace A064804.P9802732645539079989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P9802732645539079989

namespace A064804

/-- `∩[A064805(n+1), A257637(n+1)]` -/
def P9802732645539079989.Spec : Prop :=
  ∀ n, (P9802732645539079989.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P16190098399716172221

`∩[A064805(n+1), A316571(n+1)]`
-/

namespace A064804.P16190098399716172221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P16190098399716172221

namespace A064804

/-- `∩[A064805(n+1), A316571(n+1)]` -/
def P16190098399716172221.Spec : Prop :=
  ∀ n, (P16190098399716172221.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P11046241250947440996

`2*lt[A055034(n+1), A055034(A028310(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064804

/-- `2*lt[A055034(n+1), A055034(A028310(n))]` -/
def P11046241250947440996.Spec : Prop :=
  ∀ n, (P11046241250947440996.a n : ℤ) = A064804 (n + 1)

theorem P11046241250947440996.correct : P11046241250947440996.Spec := by
  intro n
  simp only [A064804, Nat.add_sub_cancel]

end A064804

/-! ## A064804.P1995590116253149079

`∩[A064805(n+1), A004271(n)]`
-/

namespace A064804.P1995590116253149079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P1995590116253149079

namespace A064804

/-- `∩[A064805(n+1), A004271(n)]` -/
def P1995590116253149079.Spec : Prop :=
  ∀ n, (P1995590116253149079.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P14040996790177074370

`∩[A064805(n+1), A004272(n)]`
-/

namespace A064804.P14040996790177074370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P14040996790177074370

namespace A064804

/-- `∩[A064805(n+1), A004272(n)]` -/
def P14040996790177074370.Spec : Prop :=
  ∀ n, (P14040996790177074370.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P12328887213488688027

`∩[A064805(n+1), A004279(n)]`
-/

namespace A064804.P12328887213488688027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P12328887213488688027

namespace A064804

/-- `∩[A064805(n+1), A004279(n)]` -/
def P12328887213488688027.Spec : Prop :=
  ∀ n, (P12328887213488688027.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P16115583190659291311

`∩[A005152(n+1), A064805(n+1)]`
-/

namespace A064804.P16115583190659291311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P16115583190659291311

namespace A064804

/-- `∩[A005152(n+1), A064805(n+1)]` -/
def P16115583190659291311.Spec : Prop :=
  ∀ n, (P16115583190659291311.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P1529811588411143391

`∩[A030173(n+1), A064805(n+1)]`
-/

namespace A064804.P1529811588411143391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064804.P1529811588411143391

namespace A064804

/-- `∩[A030173(n+1), A064805(n+1)]` -/
def P1529811588411143391.Spec : Prop :=
  ∀ n, (P1529811588411143391.a n : ℤ) = A064804 (n + 1)

end A064804

/-! ## A064804.P2373236475124818516

`filter[A064805(n+1), A135528(#)]`
-/

namespace A064804.P2373236475124818516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A064804.P2373236475124818516

namespace A064804

/-- `filter[A064805(n+1), A135528(#)]` -/
def P2373236475124818516.Spec : Prop :=
  ∀ n, P2373236475124818516.a n = A064804 (n + 1)

end A064804

/-! ## A064804.P1519152704599290049

`record[A038608(A064805(n+2))]`
-/

namespace A064804.P1519152704599290049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A064805 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064804.P1519152704599290049

namespace A064804

/-- `record[A038608(A064805(n+2))]` -/
def P1519152704599290049.Spec : Prop :=
  ∀ n, P1519152704599290049.a n = A064804 (n + 1)

end A064804

/-! ## A064804.P14875041429894185715

`filter[A064805(n+1), A059841(#)]`
-/

namespace A064804.P14875041429894185715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A064804.P14875041429894185715

namespace A064804

/-- `filter[A064805(n+1), A059841(#)]` -/
def P14875041429894185715.Spec : Prop :=
  ∀ n, P14875041429894185715.a n = A064804 (n + 1)

end A064804

/-! ## A064804.P7842675579824344967

`filter[A064805(n+1), A266591(#)]`
-/

namespace A064804.P7842675579824344967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A064804.P7842675579824344967

namespace A064804

/-- `filter[A064805(n+1), A266591(#)]` -/
def P7842675579824344967.Spec : Prop :=
  ∀ n, P7842675579824344967.a n = A064804 (n + 1)

end A064804

/-!
# A064805: Numbers k such that phi(k) > phi(k+2).

The programs for A064805, the canonical program `A064805.P13829295626154547422` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064805 has offset 1).

The definition of A064805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064805.P3943620215451236092

`lt[A000010(n+3), A000010(n+1)]+1`
-/

namespace A064805.P3943620215451236092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A064805.P3943620215451236092

namespace A064805

/-- `lt[A000010(n+3), A000010(n+1)]+1` -/
def P3943620215451236092.Spec : Prop :=
  ∀ n, (P3943620215451236092.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P15883338212585316733

`lt[A062570(n+3), A062570(n+1)]+1`
-/

namespace A064805.P15883338212585316733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A064805.P15883338212585316733

namespace A064805

/-- `lt[A062570(n+3), A062570(n+1)]+1` -/
def P15883338212585316733.Spec : Prop :=
  ∀ n, (P15883338212585316733.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P13829295626154547422

`lt[A109607(n+2), A109607(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064805

/-- `lt[A109607(n+2), A109607(n)]` -/
def P13829295626154547422.Spec : Prop :=
  ∀ n, (P13829295626154547422.a n : ℤ) = A064805 (n + 1)

theorem P13829295626154547422.correct : P13829295626154547422.Spec := by
  intro n
  simp only [A064805, Nat.add_sub_cancel]

end A064805

/-! ## A064805.P5562493294816562468

`lt[A000010(n+2), A000010(A028310(n))]`
-/

namespace A064805.P5562493294816562468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P5562493294816562468

namespace A064805

/-- `lt[A000010(n+2), A000010(A028310(n))]` -/
def P5562493294816562468.Spec : Prop :=
  ∀ n, (P5562493294816562468.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P4547774399206871692

`lt[A062570(2*(n+2)), A062570(A004277(n))]`
-/

namespace A064805.P4547774399206871692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P4547774399206871692

namespace A064805

/-- `lt[A062570(2*(n+2)), A062570(A004277(n))]` -/
def P4547774399206871692.Spec : Prop :=
  ∀ n, (P4547774399206871692.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P3759673843189242162

`lt[A083542(n+1), A083542(A028310(n))]`
-/

namespace A064805.P3759673843189242162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P3759673843189242162

namespace A064805

/-- `lt[A083542(n+1), A083542(A028310(n))]` -/
def P3759673843189242162.Spec : Prop :=
  ∀ n, (P3759673843189242162.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P1913807036518736902

`lt[A092404(n+1), A092404(A028310(n))]`
-/

namespace A064805.P1913807036518736902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092404 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P1913807036518736902

namespace A064805

/-- `lt[A092404(n+1), A092404(A028310(n))]` -/
def P1913807036518736902.Spec : Prop :=
  ∀ n, (P1913807036518736902.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P3419435616534070045

`lt[A039649(n+2), A039649(A028310(n))]`
-/

namespace A064805.P3419435616534070045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P3419435616534070045

namespace A064805

/-- `lt[A039649(n+2), A039649(A028310(n))]` -/
def P3419435616534070045.Spec : Prop :=
  ∀ n, (P3419435616534070045.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P5853311436285919763

`lt[A055034(n+2), A055034(A028310(n))]`
-/

namespace A064805.P5853311436285919763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P5853311436285919763

namespace A064805

/-- `lt[A055034(n+2), A055034(A028310(n))]` -/
def P5853311436285919763.Spec : Prop :=
  ∀ n, (P5853311436285919763.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P15138865155289751113

`lt[A109606(n+2), A109606(A028310(n))]`
-/

namespace A064805.P15138865155289751113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P15138865155289751113

namespace A064805

/-- `lt[A109606(n+2), A109606(A028310(n))]` -/
def P15138865155289751113.Spec : Prop :=
  ∀ n, (P15138865155289751113.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P12102100377931099828

`lt[A039649(n+2), A039649(A123108(2*n))]`
-/

namespace A064805.P12102100377931099828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P12102100377931099828

namespace A064805

/-- `lt[A039649(n+2), A039649(A123108(2*n))]` -/
def P12102100377931099828.Spec : Prop :=
  ∀ n, (P12102100377931099828.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P13117125989674711048

`lt[A055034(n+2), A055034(A101279(2*n+1))]`
-/

namespace A064805.P13117125989674711048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P13117125989674711048

namespace A064805

/-- `lt[A055034(n+2), A055034(A101279(2*n+1))]` -/
def P13117125989674711048.Spec : Prop :=
  ∀ n, (P13117125989674711048.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P7829959266845373882

`lt[A109606(2*(n+2)), A109606(A004277(n))]`
-/

namespace A064805.P7829959266845373882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P7829959266845373882

namespace A064805

/-- `lt[A109606(2*(n+2)), A109606(A004277(n))]` -/
def P7829959266845373882.Spec : Prop :=
  ∀ n, (P7829959266845373882.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P4367253327009132773

`lt[A023022(n+2), A023022(A233583(n+1))]`
-/

namespace A064805.P4367253327009132773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P4367253327009132773

namespace A064805

/-- `lt[A023022(n+2), A023022(A233583(n+1))]` -/
def P4367253327009132773.Spec : Prop :=
  ∀ n, (P4367253327009132773.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P3952804390912038393

`lt[A000010(n+2), A225530(n)]`
-/

namespace A064805.P3952804390912038393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P3952804390912038393

namespace A064805

/-- `lt[A000010(n+2), A225530(n)]` -/
def P3952804390912038393.Spec : Prop :=
  ∀ n, (P3952804390912038393.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P13810659651443161343

`lt[A039649(n+2), A225530(n)]`
-/

namespace A064805.P13810659651443161343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P13810659651443161343

namespace A064805

/-- `lt[A039649(n+2), A225530(n)]` -/
def P13810659651443161343.Spec : Prop :=
  ∀ n, (P13810659651443161343.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P9197139663895517191

`lt[A225530(n+2), A225530(n)]`
-/

namespace A064805.P9197139663895517191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P9197139663895517191

namespace A064805

/-- `lt[A225530(n+2), A225530(n)]` -/
def P9197139663895517191.Spec : Prop :=
  ∀ n, (P9197139663895517191.a n : ℤ) = A064805 (n + 1)

end A064805

/-! ## A064805.P13429514095390025111

`eq[A225530(n+2)%A225530(n), A000010(n+2)]`
-/

namespace A064805.P13429514095390025111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 (n + 2)) (A225530 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064805.P13429514095390025111

namespace A064805

/-- `eq[A225530(n+2)%A225530(n), A000010(n+2)]` -/
def P13429514095390025111.Spec : Prop :=
  ∀ n, (P13429514095390025111.a n : ℤ) = A064805 (n + 1)

end A064805

/-!
# A064806: a(n) = n + digital root of n.

The programs for A064806, the canonical program `A064806.P4738020535382042154` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064806 has offset 1).

The definition of A064806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064806.P16370592727220488081

`n+1+n%9+1`
-/

namespace A064806.P16370592727220488081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n % 9 + 1

end

end A064806.P16370592727220488081

namespace A064806

/-- `n+1+n%9+1` -/
def P16370592727220488081.Spec : Prop :=
  ∀ n, (P16370592727220488081.a n : ℤ) = A064806 (n + 1)

end A064806

/-! ## A064806.P4738020535382042154

`n+1+A010888(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064806

/-- `n+1+A010888(n+1)` -/
def P4738020535382042154.Spec : Prop :=
  ∀ n, P4738020535382042154.a n = A064806 (n + 1)

theorem P4738020535382042154.correct : P4738020535382042154.Spec := by
  intro n
  simp only [A064806, Nat.add_sub_cancel]

end A064806

/-! ## A064806.P8634534989342112423

`n%9+2+n`
-/

namespace A064806.P8634534989342112423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 9 + 2 + n

end

end A064806.P8634534989342112423

namespace A064806

/-- `n%9+2+n` -/
def P8634534989342112423.Spec : Prop :=
  ∀ n, (P8634534989342112423.a n : ℤ) = A064806 (n + 1)

end A064806

/-! ## A064806.P915227841554869865

`n+1+dr(n+1)`
-/

namespace A064806.P915227841554869865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.digitalRoot (n + 1 : ℤ)

end

end A064806.P915227841554869865

namespace A064806

/-- `n+1+dr(n+1)` -/
def P915227841554869865.Spec : Prop :=
  ∀ n, (P915227841554869865.a n : ℤ) = A064806 (n + 1)

end A064806

/-! ## A064806.P16624995686123153731

`∑[2-Δ[n-dr(n)]]`
-/

namespace A064806.P16624995686123153731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064806.P16624995686123153731

namespace A064806

/-- `∑[2-Δ[n-dr(n)]]` -/
def P16624995686123153731.Spec : Prop :=
  ∀ n, P16624995686123153731.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P3864816111553790746

`dr(xor(n, -1))-xor(n, -1)`
-/

namespace A064806.P3864816111553790746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Int.xor (n : ℤ) (-1)) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A064806.P3864816111553790746

namespace A064806

/-- `dr(xor(n, -1))-xor(n, -1)` -/
def P3864816111553790746.Spec : Prop :=
  ∀ n, P3864816111553790746.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P3353374308554142467

`2*n-(n-1-dr(2*n-(n-1)))`
-/

namespace A064806.P3353374308554142467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - (SequenceMachineLib.digitalRoot ((2 * n : ℤ) - ((n : ℤ) - 1)) : ℤ))

end

end A064806.P3353374308554142467

namespace A064806

/-- `2*n-(n-1-dr(2*n-(n-1)))` -/
def P3353374308554142467.Spec : Prop :=
  ∀ n, P3353374308554142467.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P13403684935575065249

`A177274(n)+1+n`
-/

namespace A064806.P13403684935575065249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 n + 1 + (n : ℤ)

end

end A064806.P13403684935575065249

namespace A064806

/-- `A177274(n)+1+n` -/
def P13403684935575065249.Spec : Prop :=
  ∀ n, P13403684935575065249.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P2667563832854856680

`A010878(n)+2+n`
-/

namespace A064806.P2667563832854856680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n + 2 + (n : ℤ)

end

end A064806.P2667563832854856680

namespace A064806

/-- `A010878(n)+2+n` -/
def P2667563832854856680.Spec : Prop :=
  ∀ n, P2667563832854856680.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P17118116794756431798

`Δ[∑[dr(n)]+∑[n]]`
-/

namespace A064806.P17118116794756431798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A064806.P17118116794756431798

namespace A064806

/-- `Δ[∑[dr(n)]+∑[n]]` -/
def P17118116794756431798.Spec : Prop :=
  ∀ n, P17118116794756431798.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P1352422860804198783

`A117230(n+2)+n`
-/

namespace A064806.P1352422860804198783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117230 (n + 2) + (n : ℤ)

end

end A064806.P1352422860804198783

namespace A064806

/-- `A117230(n+2)+n` -/
def P1352422860804198783.Spec : Prop :=
  ∀ n, P1352422860804198783.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P353103414055643854

`A361203(n+1)/(n+1)+n+1`
-/

namespace A064806.P353103414055643854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361203 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A064806.P353103414055643854

namespace A064806

/-- `A361203(n+1)/(n+1)+n+1` -/
def P353103414055643854.Spec : Prop :=
  ∀ n, P353103414055643854.a n = (A064806 (n + 1) : ℚ)

end A064806

/-! ## A064806.P5582125118481314387

`A010879(A067251(n+1))+n+1`
-/

namespace A064806.P5582125118481314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A067251 (n + 1)).toNat + (n + 1 : ℤ)

end

end A064806.P5582125118481314387

namespace A064806

/-- `A010879(A067251(n+1))+n+1` -/
def P5582125118481314387.Spec : Prop :=
  ∀ n, P5582125118481314387.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P11402020235889959936

`A010879(A052382(n+1))+n+1`
-/

namespace A064806.P11402020235889959936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A052382 (n + 1)).toNat + (n + 1 : ℤ)

end

end A064806.P11402020235889959936

namespace A064806

/-- `A010879(A052382(n+1))+n+1` -/
def P11402020235889959936.Spec : Prop :=
  ∀ n, P11402020235889959936.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P10338638123209628628

`A021895(2*n)+n+2`
-/

namespace A064806.P10338638123209628628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021895 (2 * n) + (n + 2 : ℤ)

end

end A064806.P10338638123209628628

namespace A064806

/-- `A021895(2*n)+n+2` -/
def P10338638123209628628.Spec : Prop :=
  ∀ n, P10338638123209628628.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P6957195499747341655

`A180595(2*(n+1))+n+1`
-/

namespace A064806.P6957195499747341655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A064806.P6957195499747341655

namespace A064806

/-- `A180595(2*(n+1))+n+1` -/
def P6957195499747341655.Spec : Prop :=
  ∀ n, P6957195499747341655.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P17589021677375807767

`A279816(3*(n+1))+n+1`
-/

namespace A064806.P17589021677375807767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279816 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A064806.P17589021677375807767

namespace A064806

/-- `A279816(3*(n+1))+n+1` -/
def P17589021677375807767.Spec : Prop :=
  ∀ n, P17589021677375807767.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P15623876274784210487

`A180594(A008589(n+1))+n+1`
-/

namespace A064806.P15623876274784210487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180594 (A008589 (n + 1)).toNat + (n + 1 : ℤ)

end

end A064806.P15623876274784210487

namespace A064806

/-- `A180594(A008589(n+1))+n+1` -/
def P15623876274784210487.Spec : Prop :=
  ∀ n, P15623876274784210487.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P10409509925443053145

`A076312(A280658(n+2))`
-/

namespace A064806.P10409509925443053145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A280658 (n + 2)).toNat

end

end A064806.P10409509925443053145

namespace A064806

/-- `A076312(A280658(n+2))` -/
def P10409509925443053145.Spec : Prop :=
  ∀ n, P10409509925443053145.a n = A064806 (n + 1)

end A064806

/-! ## A064806.P3239862738135339870

`A010888(A017281(n))+n+1`
-/

namespace A064806.P3239862738135339870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A017281 n).toNat + (n + 1 : ℤ)

end

end A064806.P3239862738135339870

namespace A064806

/-- `A010888(A017281(n))+n+1` -/
def P3239862738135339870.Spec : Prop :=
  ∀ n, P3239862738135339870.a n = A064806 (n + 1)

end A064806

/-!
# A064807: Numbers which are divisible by their digital root (A010888).

The programs for A064807, the canonical program `A064807.P15331081347800531989` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064807 has offset 1).

The definition of A064807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064807.P15331081347800531989

`lt[lcm(n, dr(n)), 2*n]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064807

/-- `lt[lcm(n, dr(n)), 2*n]` -/
def P15331081347800531989.Spec : Prop :=
  ∀ n, (P15331081347800531989.a n : ℤ) = A064807 (n + 1)

theorem P15331081347800531989.correct : P15331081347800531989.Spec := by
  intro n
  simp only [A064807, Nat.add_sub_cancel]

end A064807

/-! ## A064807.P15185321648610004943

`eq[n+1, lcm(n+1, dr(n+1))]+1`
-/

namespace A064807.P15185321648610004943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (SequenceMachineLib.digitalRoot (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064807.P15185321648610004943

namespace A064807

/-- `eq[n+1, lcm(n+1, dr(n+1))]+1` -/
def P15185321648610004943.Spec : Prop :=
  ∀ n, (P15185321648610004943.a n : ℤ) = A064807 (n + 1)

end A064807

/-! ## A064807.P10005992523465850689

`record[(n+1)/exp((n+1)%dr(n+1))]`
-/

namespace A064807.P10005992523465850689
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.exp (((n + 1) % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064807.P10005992523465850689

namespace A064807

/-- `record[(n+1)/exp((n+1)%dr(n+1))]` -/
def P10005992523465850689.Spec : Prop :=
  ∀ n, P10005992523465850689.a n = (A064807 (n + 1) : ℝ)

end A064807

/-! ## A064807.P5826930410526286633

`record[or(n+1, -(n+1)%dr(n+1))]`
-/

namespace A064807.P5826930410526286633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (Int.tmod (-(n + 1 : ℤ)) (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064807.P5826930410526286633

namespace A064807

/-- `record[or(n+1, -(n+1)%dr(n+1))]` -/
def P5826930410526286633.Spec : Prop :=
  ∀ n, P5826930410526286633.a n = A064807 (n + 1)

end A064807

/-! ## A064807.P10611213532864895172

`eq[0, ∏{d}[n, dr(n)-#]]`
-/

namespace A064807.P10611213532864895172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), ((SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) - (d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064807.P10611213532864895172

namespace A064807

/-- `eq[0, ∏{d}[n, dr(n)-#]]` -/
def P10611213532864895172.Spec : Prop :=
  ∀ n, (P10611213532864895172.a n : ℤ) = A064807 (n + 1)

end A064807

/-!
# A064808: a(n) is the (n+1)st (n+2)-gonal number.

The programs for A064808, the canonical program `A064808.P202906029436536577` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064808 has offset 0).

The definition of A064808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064808.P7693573962219848764

`(n+1)*(n²+2)/2`
-/

namespace A064808.P7693573962219848764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n ^ 2 + 2) : ℚ) / 2

end

end A064808.P7693573962219848764

namespace A064808

/-- `(n+1)*(n²+2)/2` -/
def P7693573962219848764.Spec : Prop :=
  ∀ n, P7693573962219848764.a n = (A064808 n : ℚ)

theorem P7693573962219848764.correct : P7693573962219848764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A064808, Nat.add_sub_cancel, A064808.P7693573962219848764.a, A064808.P202906029436536577.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A064808, Nat.add_sub_cancel, A064808.P7693573962219848764.a, A064808.P202906029436536577.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A064808

/-! ## A064808.P202906029436536577

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=22`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064808

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P202906029436536577.Spec : Prop :=
  ∀ n, P202906029436536577.a n = A064808 n

theorem P202906029436536577.correct : P202906029436536577.Spec := by
  intro n
  simp only [A064808]

end A064808

/-! ## A064808.P11924052400614736667

`A006003(n+1)-A002378(n)`
-/

namespace A064808.P11924052400614736667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) - A002378 n

end

end A064808.P11924052400614736667

namespace A064808

/-- `A006003(n+1)-A002378(n)` -/
def P11924052400614736667.Spec : Prop :=
  ∀ n, P11924052400614736667.a n = A064808 n

end A064808

/-! ## A064808.P16297020339227840078

`∑[C(n, 2)+n²+1]`
-/

namespace A064808.P16297020339227840078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P16297020339227840078

namespace A064808

/-- `∑[C(n, 2)+n²+1]` -/
def P16297020339227840078.Spec : Prop :=
  ∀ n, (P16297020339227840078.a n : ℤ) = A064808 n

end A064808

/-! ## A064808.P10042472298982734602

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=1`
-/

namespace A064808.P10042472298982734602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P10042472298982734602

namespace A064808

/-- `∑[∑[a(n-1)+3]]` -/
def P10042472298982734602.Spec : Prop :=
  ∀ n, (P10042472298982734602.a n : ℤ) = A064808 n

end A064808

/-! ## A064808.P13631424500150379105

`∑[∑[n-1]+or(2, n²)]`
-/

namespace A064808.P13631424500150379105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.lor 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P13631424500150379105

namespace A064808

/-- `∑[∑[n-1]+or(2, n²)]` -/
def P13631424500150379105.Spec : Prop :=
  ∀ n, P13631424500150379105.a n = A064808 n

end A064808

/-! ## A064808.P2163947707558235669

`∑[∑[n-1]+xor(2, n²)]`
-/

namespace A064808.P2163947707558235669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.xor 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P2163947707558235669

namespace A064808

/-- `∑[∑[n-1]+xor(2, n²)]` -/
def P2163947707558235669.Spec : Prop :=
  ∀ n, P2163947707558235669.a n = A064808 n

end A064808

/-! ## A064808.P6935253726940869097

`floor(n/acot(∑[n])+n+1)`
-/

namespace A064808.P6935253726940869097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A064808.P6935253726940869097

namespace A064808

/-- `floor(n/acot(∑[n])+n+1)` -/
def P6935253726940869097.Spec : Prop :=
  ∀ n, P6935253726940869097.a n = A064808 n

end A064808

/-! ## A064808.P6745538489024127088

`round(n/acot(∑[n])+n+1)`
-/

namespace A064808.P6745538489024127088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ))

end

end A064808.P6745538489024127088

namespace A064808

/-- `round(n/acot(∑[n])+n+1)` -/
def P6745538489024127088.Spec : Prop :=
  ∀ n, P6745538489024127088.a n = A064808 n

end A064808

/-! ## A064808.P10622701658784155021

`∑[∑[ogf((1-x+3x^2)/(1-2x+x^2))]]`
-/

namespace A064808.P10622701658784155021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P10622701658784155021

namespace A064808

/-- `∑[∑[ogf((1-x+3x^2)/(1-2x+x^2))]]` -/
def P10622701658784155021.Spec : Prop :=
  ∀ n, P10622701658784155021.a n = A064808 n

end A064808

/-! ## A064808.P10178779938502736105

`ogf((1-x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A064808.P10178779938502736105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -4, 6, -4, 1] n

end

end A064808.P10178779938502736105

namespace A064808

/-- `ogf((1-x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10178779938502736105.Spec : Prop :=
  ∀ n, P10178779938502736105.a n = A064808 n

end A064808

/-! ## A064808.P3660066355526694259

`∑[3-∑[a(n-1)-3]]` with `a(0)=2`
-/

namespace A064808.P3660066355526694259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P3660066355526694259

namespace A064808

/-- `∑[3-∑[a(n-1)-3]]` -/
def P3660066355526694259.Spec : Prop :=
  ∀ n, P3660066355526694259.a n = A064808 n

end A064808

/-! ## A064808.P13515851806979437901

`∑[lcm(n, n-1)+∑[n]+1]`
-/

namespace A064808.P13515851806979437901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P13515851806979437901

namespace A064808

/-- `∑[lcm(n, n-1)+∑[n]+1]` -/
def P13515851806979437901.Spec : Prop :=
  ∀ n, (P13515851806979437901.a n : ℤ) = A064808 n

end A064808

/-! ## A064808.P130775279156443736

`∑[Δ[n*C(n, 2)]-(n-1)]`
-/

namespace A064808.P130775279156443736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P130775279156443736

namespace A064808

/-- `∑[Δ[n*C(n, 2)]-(n-1)]` -/
def P130775279156443736.Spec : Prop :=
  ∀ n, P130775279156443736.a n = A064808 n

end A064808

/-! ## A064808.P3937974445451549940

`lcm(n+1, n²)/2+n+1`
-/

namespace A064808.P3937974445451549940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℚ) / 2 + (n + 1 : ℚ)

end

end A064808.P3937974445451549940

namespace A064808

/-- `lcm(n+1, n²)/2+n+1` -/
def P3937974445451549940.Spec : Prop :=
  ∀ n, P3937974445451549940.a n = (A064808 n : ℚ)

end A064808

/-! ## A064808.P17347801290531145586

`∑[∑[2*n]-(n-1-C(n, 2))]`
-/

namespace A064808.P17347801290531145586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P17347801290531145586

namespace A064808

/-- `∑[∑[2*n]-(n-1-C(n, 2))]` -/
def P17347801290531145586.Spec : Prop :=
  ∀ n, P17347801290531145586.a n = A064808 n

end A064808

/-! ## A064808.P2416775254968111066

`∑[A143689(n)]`
-/

namespace A064808.P2416775254968111066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P2416775254968111066

namespace A064808

/-- `∑[A143689(n)]` -/
def P2416775254968111066.Spec : Prop :=
  ∀ n, P2416775254968111066.a n = A064808 n

end A064808

/-! ## A064808.P8122241158570590747

`A100119(n)+n`
-/

namespace A064808.P8122241158570590747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 n + (n : ℤ)

end

end A064808.P8122241158570590747

namespace A064808

/-- `A100119(n)+n` -/
def P8122241158570590747.Spec : Prop :=
  ∀ n, P8122241158570590747.a n = A064808 n

end A064808

/-! ## A064808.P14610220193337668648

`∑[A000326(n)+1]`
-/

namespace A064808.P14610220193337668648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P14610220193337668648

namespace A064808

/-- `∑[A000326(n)+1]` -/
def P14610220193337668648.Spec : Prop :=
  ∀ n, P14610220193337668648.a n = A064808 n

end A064808

/-! ## A064808.P1469357243356536810

`∑[A104249(n)-n]`
-/

namespace A064808.P1469357243356536810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064808.P1469357243356536810

namespace A064808

/-- `∑[A104249(n)-n]` -/
def P1469357243356536810.Spec : Prop :=
  ∀ n, P1469357243356536810.a n = A064808 n

end A064808

/-!
# A064811: a(n) = Sum_{k=1..n} binomial(prime(n),k).

The programs for A064811, there is no canonical definition to state claims against.
-/

/-! ## A064811.P4540945310723380267

`A077371(3*(n+1))+A167934(n+1)²`
-/

namespace A064811.P4540945310723380267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077371 (3 * (n + 1)) + A167934 (n + 1) ^ 2

end

end A064811.P4540945310723380267

/-!
# A064812: Smallest prime p such that the infinite sequence {p, p'=2p-1, p''=2p'-1, ...} begins with a string of exactly n primes.

The programs for A064812, there is no canonical definition to state claims against.
-/

/-! ## A064812.P14927950215418709467

`A039649(A163811(n)+A005603(n+1))`
-/

namespace A064812.P14927950215418709467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A163811 n + A005603 (n + 1)).toNat

end

end A064812.P14927950215418709467

/-!
# A064813: a(n) = binomial(composite(n), n), where composite = A002808, composite numbers.

The programs for A064813, the canonical program `A064813.P8078473473580934433` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064813 has offset 1).

The definition of A064813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064813.P8078473473580934433

`C(A002808(n+1), n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064813

/-- `C(A002808(n+1), n+1)` -/
def P8078473473580934433.Spec : Prop :=
  ∀ n, (P8078473473580934433.a n : ℤ) = A064813 (n + 1)

theorem P8078473473580934433.correct : P8078473473580934433.Spec := by
  intro n
  simp only [A064813, Nat.add_sub_cancel]

end A064813

/-! ## A064813.P15677726219188099939

`C(A018252(n+2), n+1)`
-/

namespace A064813.P15677726219188099939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018252 (n + 2)).toNat (n + 1)

end

end A064813.P15677726219188099939

namespace A064813

/-- `C(A018252(n+2), n+1)` -/
def P15677726219188099939.Spec : Prop :=
  ∀ n, (P15677726219188099939.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P8790008269654054668

`C(A065090(n+3), n+1)`
-/

namespace A064813.P8790008269654054668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065090 (n + 3)).toNat (n + 1)

end

end A064813.P8790008269654054668

namespace A064813

/-- `C(A065090(n+3), n+1)` -/
def P8790008269654054668.Spec : Prop :=
  ∀ n, (P8790008269654054668.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P14657110624563041098

`C(A141468(n+3), n+1)`
-/

namespace A064813.P14657110624563041098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141468 (n + 3)).toNat (n + 1)

end

end A064813.P14657110624563041098

namespace A064813

/-- `C(A141468(n+3), n+1)` -/
def P14657110624563041098.Spec : Prop :=
  ∀ n, (P14657110624563041098.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P5723300815796029273

`C(comp[A158611(n+1)], n+1)`
-/

namespace A064813.P5723300815796029273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) (n + 1)

end

end A064813.P5723300815796029273

namespace A064813

/-- `C(comp[A158611(n+1)], n+1)` -/
def P5723300815796029273.Spec : Prop :=
  ∀ n, (P5723300815796029273.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P4161482728650018480

`C(A067747(2*(n+1)), n+1)`
-/

namespace A064813.P4161482728650018480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067747 (2 * (n + 1))).toNat (n + 1)

end

end A064813.P4161482728650018480

namespace A064813

/-- `C(A067747(2*(n+1)), n+1)` -/
def P4161482728650018480.Spec : Prop :=
  ∀ n, (P4161482728650018480.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P17103985955680853881

`C(A129131(2*n+1), n+1)`
-/

namespace A064813.P17103985955680853881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129131 (2 * n + 1)).toNat (n + 1)

end

end A064813.P17103985955680853881

namespace A064813

/-- `C(A129131(2*n+1), n+1)` -/
def P17103985955680853881.Spec : Prop :=
  ∀ n, (P17103985955680853881.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P7512679137438915830

`C(comp[C(A006530(n+1), n)], n+1)`
-/

namespace A064813.P7512679137438915830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 1)

end

end A064813.P7512679137438915830

namespace A064813

/-- `C(comp[C(A006530(n+1), n)], n+1)` -/
def P7512679137438915830.Spec : Prop :=
  ∀ n, (P7512679137438915830.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P15085196418220585625

`C(comp[C(A014963(n+1), n)], n+1)`
-/

namespace A064813.P15085196418220585625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 1)

end

end A064813.P15085196418220585625

namespace A064813

/-- `C(comp[C(A014963(n+1), n)], n+1)` -/
def P15085196418220585625.Spec : Prop :=
  ∀ n, (P15085196418220585625.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P14965343773651119005

`C(comp[C(A020639(n+1), n)], n+1)`
-/

namespace A064813.P14965343773651119005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 1)

end

end A064813.P14965343773651119005

namespace A064813

/-- `C(comp[C(A020639(n+1), n)], n+1)` -/
def P14965343773651119005.Spec : Prop :=
  ∀ n, (P14965343773651119005.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P17478293909673461832

`C(comp[C(A318884(n+1), n)], n+1)`
-/

namespace A064813.P17478293909673461832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318884 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 1)

end

end A064813.P17478293909673461832

namespace A064813

/-- `C(comp[C(A318884(n+1), n)], n+1)` -/
def P17478293909673461832.Spec : Prop :=
  ∀ n, (P17478293909673461832.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P11515588502173479683

`C(lt[1, A001222(n+1)]+1, n+1)`
-/

namespace A064813.P11515588502173479683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) (n + 1)

end

end A064813.P11515588502173479683

namespace A064813

/-- `C(lt[1, A001222(n+1)]+1, n+1)` -/
def P11515588502173479683.Spec : Prop :=
  ∀ n, (P11515588502173479683.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P2954086434811181278

`C(lt[2, A000005(n+1)]+1, n+1)`
-/

namespace A064813.P2954086434811181278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) (n + 1)

end

end A064813.P2954086434811181278

namespace A064813

/-- `C(lt[2, A000005(n+1)]+1, n+1)` -/
def P2954086434811181278.Spec : Prop :=
  ∀ n, (P2954086434811181278.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P10958536175686556806

`C(lt[A000010(n+1), n]+1, n+1)`
-/

namespace A064813.P10958536175686556806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) (n + 1)

end

end A064813.P10958536175686556806

namespace A064813

/-- `C(lt[A000010(n+1), n]+1, n+1)` -/
def P10958536175686556806.Spec : Prop :=
  ∀ n, (P10958536175686556806.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P7962314610019524814

`C(comp[A000040(n+1)-4]+4, n+1)`
-/

namespace A064813.P7962314610019524814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4) (n + 1)

end

end A064813.P7962314610019524814

namespace A064813

/-- `C(comp[A000040(n+1)-4]+4, n+1)` -/
def P7962314610019524814.Spec : Prop :=
  ∀ n, (P7962314610019524814.a n : ℤ) = A064813 (n + 1)

end A064813

/-! ## A064813.P15513450716252650713

`C(lt[A006530(abs(1-n)+1), n], n+1)`
-/

namespace A064813.P15513450716252650713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) (n + 1)

end

end A064813.P15513450716252650713

namespace A064813

/-- `C(lt[A006530(abs(1-n)+1), n], n+1)` -/
def P15513450716252650713.Spec : Prop :=
  ∀ n, (P15513450716252650713.a n : ℤ) = A064813 (n + 1)

end A064813

/-!
# A064814: Greatest common divisor of n and the n-th composite number.

The programs for A064814, the canonical program `A064814.P8119879285267834608` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064814 has offset 1).

The definition of A064814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064814.P8119879285267834608

`gcd(n+1, A002808(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064814

/-- `gcd(n+1, A002808(n+1))` -/
def P8119879285267834608.Spec : Prop :=
  ∀ n, (P8119879285267834608.a n : ℤ) = A064814 (n + 1)

theorem P8119879285267834608.correct : P8119879285267834608.Spec := by
  intro n
  simp only [A064814, Nat.add_sub_cancel]

end A064814

/-! ## A064814.P3800427399039044287

`gcd(n+1, Δ[A053767(n)])`
-/

namespace A064814.P3800427399039044287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A064814.P3800427399039044287

namespace A064814

/-- `gcd(n+1, Δ[A053767(n)])` -/
def P3800427399039044287.Spec : Prop :=
  ∀ n, (P3800427399039044287.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P5652594314520110955

`(n+1)/A171528(n+1)`
-/

namespace A064814.P5652594314520110955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171528 (n + 1) : ℚ)

end

end A064814.P5652594314520110955

namespace A064814

/-- `(n+1)/A171528(n+1)` -/
def P5652594314520110955.Spec : Prop :=
  ∀ n, P5652594314520110955.a n = (A064814 (n + 1) : ℚ)

end A064814

/-! ## A064814.P7032780233881885291

`gcd(abs(1-n)+2, lt[0, A082023(n)])`
-/

namespace A064814.P7032780233881885291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 2) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A064814.P7032780233881885291

namespace A064814

/-- `gcd(abs(1-n)+2, lt[0, A082023(n)])` -/
def P7032780233881885291.Spec : Prop :=
  ∀ n, (P7032780233881885291.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P2894959790082578496

`gcd(C(n+1, n), comp[A158611(n+1)])`
-/

namespace A064814.P2894959790082578496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 1) n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A064814.P2894959790082578496

namespace A064814

/-- `gcd(C(n+1, n), comp[A158611(n+1)])` -/
def P2894959790082578496.Spec : Prop :=
  ∀ n, (P2894959790082578496.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P393538162787886184

`gcd(∑[xor(2*n, (-1)^n)], A191992(n+1))`
-/

namespace A064814.P393538162787886184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ((-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A191992 (n + 1))

end

end A064814.P393538162787886184

namespace A064814

/-- `gcd(∑[xor(2*n, (-1)^n)], A191992(n+1))` -/
def P393538162787886184.Spec : Prop :=
  ∀ n, (P393538162787886184.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P12021164609810806115

`gcd(A056653(n+1), A131738(n))`
-/

namespace A064814.P12021164609810806115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056653 (n + 1)) (A131738 n)

end

end A064814.P12021164609810806115

namespace A064814

/-- `gcd(A056653(n+1), A131738(n))` -/
def P12021164609810806115.Spec : Prop :=
  ∀ n, (P12021164609810806115.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P7829350555740504059

`A071228(n+1)/A071224(n+1)`
-/

namespace A064814.P7829350555740504059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071228 (n + 1) : ℚ) / (A071224 (n + 1) : ℚ)

end

end A064814.P7829350555740504059

namespace A064814

/-- `A071228(n+1)/A071224(n+1)` -/
def P7829350555740504059.Spec : Prop :=
  ∀ n, P7829350555740504059.a n = (A064814 (n + 1) : ℚ)

end A064814

/-! ## A064814.P13330085352181016609

`A002808(n+1)/A171527(n+1)`
-/

namespace A064814.P13330085352181016609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A171527 (n + 1) : ℚ)

end

end A064814.P13330085352181016609

namespace A064814

/-- `A002808(n+1)/A171527(n+1)` -/
def P13330085352181016609.Spec : Prop :=
  ∀ n, P13330085352181016609.a n = (A064814 (n + 1) : ℚ)

end A064814

/-! ## A064814.P2412520137685722410

`A018252(n+2)/A171527(n+1)`
-/

namespace A064814.P2412520137685722410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A171527 (n + 1) : ℚ)

end

end A064814.P2412520137685722410

namespace A064814

/-- `A018252(n+2)/A171527(n+1)` -/
def P2412520137685722410.Spec : Prop :=
  ∀ n, P2412520137685722410.a n = (A064814 (n + 1) : ℚ)

end A064814

/-! ## A064814.P15677021906759899406

`gcd(A000027(n+1), A065860(n+1))`
-/

namespace A064814.P15677021906759899406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A065860 (n + 1))

end

end A064814.P15677021906759899406

namespace A064814

/-- `gcd(A000027(n+1), A065860(n+1))` -/
def P15677021906759899406.Spec : Prop :=
  ∀ n, (P15677021906759899406.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P7007673592049119026

`gcd(A061019(n+1), A067563(n+1))`
-/

namespace A064814.P7007673592049119026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A067563 (n + 1))

end

end A064814.P7007673592049119026

namespace A064814

/-- `gcd(A061019(n+1), A067563(n+1))` -/
def P7007673592049119026.Spec : Prop :=
  ∀ n, (P7007673592049119026.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P6228758079226834026

`gcd(A071224(n+1), A161537(n+1))`
-/

namespace A064814.P6228758079226834026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071224 (n + 1)) (A161537 (n + 1))

end

end A064814.P6228758079226834026

namespace A064814

/-- `gcd(A071224(n+1), A161537(n+1))` -/
def P6228758079226834026.Spec : Prop :=
  ∀ n, (P6228758079226834026.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P943257289531072724

`gcd(A080697(n+1), A191992(n+1))`
-/

namespace A064814.P943257289531072724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080697 (n + 1)) (A191992 (n + 1))

end

end A064814.P943257289531072724

namespace A064814

/-- `gcd(A080697(n+1), A191992(n+1))` -/
def P943257289531072724.Spec : Prop :=
  ∀ n, (P943257289531072724.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P15690992655594628908

`gcd(n*A067563(n+1), A064505(n+1))`
-/

namespace A064814.P15690992655594628908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A067563 (n + 1)) (A064505 (n + 1))

end

end A064814.P15690992655594628908

namespace A064814

/-- `gcd(n*A067563(n+1), A064505(n+1))` -/
def P15690992655594628908.Spec : Prop :=
  ∀ n, (P15690992655594628908.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P8523079786479169730

`gcd(lt[2, A000005(n+1)]+1, A103164(n+1))`
-/

namespace A064814.P8523079786479169730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) (A103164 (n + 1))

end

end A064814.P8523079786479169730

namespace A064814

/-- `gcd(lt[2, A000005(n+1)]+1, A103164(n+1))` -/
def P8523079786479169730.Spec : Prop :=
  ∀ n, (P8523079786479169730.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P17664795298461658346

`(A163871(n+1)-A062825(n+2))/A171527(n+1)`
-/

namespace A064814.P17664795298461658346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163871 (n + 1) - A062825 (n + 2) : ℚ) / (A171527 (n + 1) : ℚ)

end

end A064814.P17664795298461658346

namespace A064814

/-- `(A163871(n+1)-A062825(n+2))/A171527(n+1)` -/
def P17664795298461658346.Spec : Prop :=
  ∀ n, P17664795298461658346.a n = (A064814 (n + 1) : ℚ)

end A064814

/-! ## A064814.P11451059662530327994

`gcd(lt[1, A078898(n)], A103164(n+1))`
-/

namespace A064814.P11451059662530327994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A103164 (n + 1))

end

end A064814.P11451059662530327994

namespace A064814

/-- `gcd(lt[1, A078898(n)], A103164(n+1))` -/
def P11451059662530327994.Spec : Prop :=
  ∀ n, (P11451059662530327994.a n : ℤ) = A064814 (n + 1)

end A064814

/-! ## A064814.P8457475813243206012

`gcd(A018252(n+2), A160793(2*n+1))`
-/

namespace A064814.P8457475813243206012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018252 (n + 2)) (A160793 (2 * n + 1))

end

end A064814.P8457475813243206012

namespace A064814

/-- `gcd(A018252(n+2), A160793(2*n+1))` -/
def P8457475813243206012.Spec : Prop :=
  ∀ n, (P8457475813243206012.a n : ℤ) = A064814 (n + 1)

end A064814

/-!
# A064815: Related to enumeration of finite automata.

The programs for A064815, the canonical program `A064815.P5138657126290158834` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064815 has offset 1).

The definition of A064815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064815.P5138657126290158834

`2*(2*(n+1)-3)*a(n-1)+2*(2*(n+1)-5)*(n-3)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064815

/-- `2*(2*(n+1)-3)*a(n-1)+2*(2*(n+1)-5)*(n-3)*a(n-2)` -/
def P5138657126290158834.Spec : Prop :=
  ∀ n, P5138657126290158834.a n = A064815 (n + 1)

theorem P5138657126290158834.correct : P5138657126290158834.Spec := by
  intro n
  simp only [A064815, Nat.add_sub_cancel]

end A064815

/-!
# A064816: Numbers which are the sums of two positive triangular numbers (A000217) in exactly two different ways.

The programs for A064816, the canonical program `A064816.P8948604951401718138` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064816 has offset 1).

The definition of A064816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064816.P4282874487714021228

`eq[2, A052344(n)]`
-/

namespace A064816.P4282874487714021228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P4282874487714021228

namespace A064816

/-- `eq[2, A052344(n)]` -/
def P4282874487714021228.Spec : Prop :=
  ∀ n, (P4282874487714021228.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P8948604951401718138

`eq[2, ceil(A053603(n)/2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064816

/-- `eq[2, ceil(A053603(n)/2)]` -/
def P8948604951401718138.Spec : Prop :=
  ∀ n, (P8948604951401718138.a n : ℤ) = A064816 (n + 1)

theorem P8948604951401718138.correct : P8948604951401718138.Spec := by
  intro n
  simp only [A064816, Nat.add_sub_cancel]

end A064816

/-! ## A064816.P13089046589614459145

`eq[2, A110654(A053603(n))]`
-/

namespace A064816.P13089046589614459145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P13089046589614459145

namespace A064816

/-- `eq[2, A110654(A053603(n))]` -/
def P13089046589614459145.Spec : Prop :=
  ∀ n, (P13089046589614459145.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P6448122105584500336

`eq[1, A011864(A053603(n)+1)]`
-/

namespace A064816.P6448122105584500336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 (A053603 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P6448122105584500336

namespace A064816

/-- `eq[1, A011864(A053603(n)+1)]` -/
def P6448122105584500336.Spec : Prop :=
  ∀ n, (P6448122105584500336.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P6451946049964902757

`eq[A010054(n)+2, A052343(n)]`
-/

namespace A064816.P6451946049964902757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064816.P6451946049964902757

namespace A064816

/-- `eq[A010054(n)+2, A052343(n)]` -/
def P6451946049964902757.Spec : Prop :=
  ∀ n, (P6451946049964902757.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P8694106319079997109

`eq[A073423(n)+2, A052343(n)]`
-/

namespace A064816.P8694106319079997109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064816.P8694106319079997109

namespace A064816

/-- `eq[A073423(n)+2, A052343(n)]` -/
def P8694106319079997109.Spec : Prop :=
  ∀ n, (P8694106319079997109.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P14249012485975770991

`eq[A073424(n)+2, A052343(n)]`
-/

namespace A064816.P14249012485975770991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064816.P14249012485975770991

namespace A064816

/-- `eq[A073424(n)+2, A052343(n)]` -/
def P14249012485975770991.Spec : Prop :=
  ∀ n, (P14249012485975770991.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P16128801711988703159

`eq[A307597(n)+2, A053603(n)]`
-/

namespace A064816.P16128801711988703159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064816.P16128801711988703159

namespace A064816

/-- `eq[A307597(n)+2, A053603(n)]` -/
def P16128801711988703159.Spec : Prop :=
  ∀ n, (P16128801711988703159.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P979537011296055081

`eq[2, A007318(A007294(2*A053603(n)))]`
-/

namespace A064816.P979537011296055081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007294 (2 * A053603 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P979537011296055081

namespace A064816

/-- `eq[2, A007318(A007294(2*A053603(n)))]` -/
def P979537011296055081.Spec : Prop :=
  ∀ n, (P979537011296055081.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P7208668442593351070

`eq[A052343(n)+1, A010702(A113407(n))]`
-/

namespace A064816.P7208668442593351070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A113407 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064816.P7208668442593351070

namespace A064816

/-- `eq[A052343(n)+1, A010702(A113407(n))]` -/
def P7208668442593351070.Spec : Prop :=
  ∀ n, (P7208668442593351070.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P715635362957560962

`eq[3, A000217(A053603(n)-A307597(n))]`
-/

namespace A064816.P715635362957560962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A053603 n - A307597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P715635362957560962

namespace A064816

/-- `eq[3, A000217(A053603(n)-A307597(n))]` -/
def P715635362957560962.Spec : Prop :=
  ∀ n, (P715635362957560962.a n : ℤ) = A064816 (n + 1)

end A064816

/-! ## A064816.P17621336220106966180

`eq[6, A053603(A053603(n)²²)]`
-/

namespace A064816.P17621336220106966180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 ((A053603 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P17621336220106966180

namespace A064816

/-- `eq[6, A053603(A053603(n)²²)]` -/
def P17621336220106966180.Spec : Prop :=
  ∀ n, (P17621336220106966180.a n : ℤ) = A064816 (n + 1)

end A064816

/-!
# A064819: a(n) = p(1)*p(2)*...*p(n) - p(n+1)^2, where p(i) = i-th prime.

The programs for A064819, there is no canonical definition to state claims against.
-/

/-! ## A064819.P16880456040779004473

`∏[Δ[A007504(n)]]-p?[2*n+1]²`
-/

namespace A064819.P16880456040779004473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 2 : ℤ)

end

end A064819.P16880456040779004473

/-! ## A064819.P21112710997208745

`∏[p?[A014681(n)]]-p?[2*n+1]²`
-/

namespace A064819.P21112710997208745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 2 : ℤ)

end

end A064819.P21112710997208745

/-! ## A064819.P1837512873749924889

`∏[A000040(n+1)]-p?[2*n+1]²`
-/

namespace A064819.P1837512873749924889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ)

end

end A064819.P1837512873749924889

/-! ## A064819.P401749540029414195

`A002110(n+1)-A001248(n+2)`
-/

namespace A064819.P401749540029414195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A001248 (n + 2)

end

end A064819.P401749540029414195

/-! ## A064819.P15724728568426123223

`A002110(n+1)-A000040(n+2)²`
-/

namespace A064819.P15724728568426123223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000040 (n + 2) ^ 2

end

end A064819.P15724728568426123223

/-! ## A064819.P4315604310664425188

`A002110(n+1)-A006005(n+2)²`
-/

namespace A064819.P4315604310664425188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A006005 (n + 2) ^ 2

end

end A064819.P4315604310664425188

/-! ## A064819.P5260543386876172934

`∏[A000040(n+1)]-A065091(n+1)²`
-/

namespace A064819.P5260543386876172934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A065091 (n + 1) ^ 2

end

end A064819.P5260543386876172934

/-! ## A064819.P9285420044902424862

`∏[A008578(n+2)]-A000040(n+2)²`
-/

namespace A064819.P9285420044902424862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 2) ^ 2

end

end A064819.P9285420044902424862

/-! ## A064819.P17225035378293981977

`∏[A015919(n+2)]-A000040(n+2)²`
-/

namespace A064819.P17225035378293981977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 2) ^ 2

end

end A064819.P17225035378293981977

/-!
# A064821: Number of ways of writing the numbers 1 .. n in a sequence so that the sum of any two adjacent numbers is a prime; reversing the sequence does not count as different.

The programs for A064821, there is no canonical definition to state claims against.
-/

/-! ## A064821.P4546297763589686250

`floor(A103839(n+1)/2)`
-/

namespace A064821.P4546297763589686250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103839 (n + 1) : ℚ) / 2⌋

end

end A064821.P4546297763589686250

/-! ## A064821.P10905025482880056553

`A051239(n+1)%(4^n)`
-/

namespace A064821.P10905025482880056553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051239 (n + 1)) (4 ^ n : ℤ)

end

end A064821.P10905025482880056553

/-! ## A064821.P14862535385824321913

`A051239(n+1)-A000007(n)`
-/

namespace A064821.P14862535385824321913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051239 (n + 1) - A000007 n

end

end A064821.P14862535385824321913

/-! ## A064821.P4617853897743535360

`A051239(n+1)-A088157(n)`
-/

namespace A064821.P4617853897743535360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051239 (n + 1) - A088157 n

end

end A064821.P4617853897743535360

/-! ## A064821.P11699572123895190398

`A051239(n+1)-A112315(n)`
-/

namespace A064821.P11699572123895190398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051239 (n + 1) - A112315 n

end

end A064821.P11699572123895190398

/-!
# A064823: Number of indices 1 <= i <= n with A000796(i)=A000796(n).

The programs for A064823, there is no canonical definition to state claims against.
-/

/-! ## A064823.P17743080900052677572

`A008616(A065253(n+1)+A030644(n))`
-/

namespace A064823.P17743080900052677572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A065253 (n + 1) + A030644 (n + 1)).toNat

end

end A064823.P17743080900052677572

/-! ## A064823.P12151533491985466240

`A008616(A065253(n+1)-A000796(n))`
-/

namespace A064823.P12151533491985466240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A065253 (n + 1) - A000796 (n + 1)).toNat

end

end A064823.P12151533491985466240

/-! ## A064823.P94816498000466229

`A059995(A065253(n+1)+10)`
-/

namespace A064823.P94816498000466229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A065253 (n + 1) + 10).toNat

end

end A064823.P94816498000466229

/-! ## A064823.P1022077004143532462

`A008676(3*A004526(A065253(n+1)))`
-/

namespace A064823.P1022077004143532462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (3 * A004526 (A065253 (n + 1)).toNat).toNat

end

end A064823.P1022077004143532462

/-!
# A064824: Same as A065191 but with B_[1]=( i mod 10, i=0,1,2,3..).

The programs for A064824, there is no canonical definition to state claims against.
-/

/-! ## A064824.P10802410472651874373

`(A065191(n+1)-1)%10`
-/

namespace A064824.P10802410472651874373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065191 (n + 1) - 1) 10

end

end A064824.P10802410472651874373

/-! ## A064824.P11566958384931929461

`A010879(A065191(n+1)-1)`
-/

namespace A064824.P11566958384931929461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065191 (n + 1) - 1).toNat

end

end A064824.P11566958384931929461

/-! ## A064824.P15719896185872295080

`A102493(A065191(n+1))%A040870(n)`
-/

namespace A064824.P15719896185872295080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102493 (A065191 (n + 1)).toNat) (A040870 n)

end

end A064824.P15719896185872295080

/-!
# A064825: Numbers which are the sums of three positive triangular numbers in exactly two different ways.

The programs for A064825, there is no canonical definition to state claims against.
-/

/-! ## A064825.P1210324731935263658

`eq[2, A063993(n)]`
-/

namespace A064825.P1210324731935263658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064825.P1210324731935263658

/-! ## A064825.P5131783475674799456

`eq[A052343(n)+2, A002636(n)]`
-/

namespace A064825.P5131783475674799456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064825.P5131783475674799456

/-!
# A064827: Numbers k such that each digit of k occurs among the digits of k^2.

The programs for A064827, there is no canonical definition to state claims against.
-/

/-! ## A064827.P9884645706217481860

`A046827(n+2)`
-/

namespace A064827.P9884645706217481860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (n + 2)

end

end A064827.P9884645706217481860

/-! ## A064827.P17036991080250282038

`record[A046827(A001281(A004277(n)))]`
-/

namespace A064827.P17036991080250282038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P17036991080250282038

/-! ## A064827.P15841966740906950503

`record[A046827(A001281(A007843(n)))]`
-/

namespace A064827.P15841966740906950503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A001281 (A007843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P15841966740906950503

/-! ## A064827.P8080796876484889347

`record[A046827(A133310(A008619(n)))]`
-/

namespace A064827.P8080796876484889347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A133310 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P8080796876484889347

/-! ## A064827.P7409046565399267219

`record[A046827(A133310(A028242(n)))]`
-/

namespace A064827.P7409046565399267219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A133310 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P7409046565399267219

/-! ## A064827.P17243966004352070960

`record[A046827(A000267(A004442(n)))]`
-/

namespace A064827.P17243966004352070960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P17243966004352070960

/-! ## A064827.P4631507017154041278

`record[A046827(A002024(A020484(n)))]`
-/

namespace A064827.P4631507017154041278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A002024 (A020484 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P4631507017154041278

/-! ## A064827.P383935556465165029

`record[A046827(A132749(A000124(n)))]`
-/

namespace A064827.P383935556465165029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (A132749 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064827.P383935556465165029

/-!
# A064828: Numbers which are the sum of two positive triangular numbers in exactly three different ways.

The programs for A064828, the canonical program `A064828.P10612756008420980911` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064828 has offset 1).

The definition of A064828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064828.P6604362733454659447

`eq[3, A052344(n)]`
-/

namespace A064828.P6604362733454659447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P6604362733454659447

namespace A064828

/-- `eq[3, A052344(n)]` -/
def P6604362733454659447.Spec : Prop :=
  ∀ n, (P6604362733454659447.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P10612756008420980911

`eq[3, ceil(A053603(n)/2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064828

/-- `eq[3, ceil(A053603(n)/2)]` -/
def P10612756008420980911.Spec : Prop :=
  ∀ n, (P10612756008420980911.a n : ℤ) = A064828 (n + 1)

theorem P10612756008420980911.correct : P10612756008420980911.Spec := by
  intro n
  simp only [A064828, Nat.add_sub_cancel]

end A064828

/-! ## A064828.P6300465814390965926

`eq[2, A102563(A053603(n))]`
-/

namespace A064828.P6300465814390965926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P6300465814390965926

namespace A064828

/-- `eq[2, A102563(A053603(n))]` -/
def P6300465814390965926.Spec : Prop :=
  ∀ n, (P6300465814390965926.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P2157442821296276824

`eq[A010054(n)+3, A052343(n)]`
-/

namespace A064828.P2157442821296276824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064828.P2157442821296276824

namespace A064828

/-- `eq[A010054(n)+3, A052343(n)]` -/
def P2157442821296276824.Spec : Prop :=
  ∀ n, (P2157442821296276824.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P11857547577326077309

`eq[3, A053603(n)-A307597(n)]`
-/

namespace A064828.P11857547577326077309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n - A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P11857547577326077309

namespace A064828

/-- `eq[3, A053603(n)-A307597(n)]` -/
def P11857547577326077309.Spec : Prop :=
  ∀ n, (P11857547577326077309.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P16096135316904129074

`eq[2, A000045(round(A053603(n)/2))]`
-/

namespace A064828.P16096135316904129074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A053603 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P16096135316904129074

namespace A064828

/-- `eq[2, A000045(round(A053603(n)/2))]` -/
def P16096135316904129074.Spec : Prop :=
  ∀ n, (P16096135316904129074.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P3694298364676037993

`eq[3, A000041(round(A053603(n)/2))]`
-/

namespace A064828.P3694298364676037993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A053603 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P3694298364676037993

namespace A064828

/-- `eq[3, A000041(round(A053603(n)/2))]` -/
def P3694298364676037993.Spec : Prop :=
  ∀ n, (P3694298364676037993.a n : ℤ) = A064828 (n + 1)

end A064828

/-! ## A064828.P16836733652710925653

`eq[A010702(A113407(n)), A052343(n)]`
-/

namespace A064828.P16836733652710925653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A113407 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064828.P16836733652710925653

namespace A064828

/-- `eq[A010702(A113407(n)), A052343(n)]` -/
def P16836733652710925653.Spec : Prop :=
  ∀ n, (P16836733652710925653.a n : ℤ) = A064828 (n + 1)

end A064828

/-!
# A064829: Smallest number greater than 1 which ends in an odd digit in bases 2 through n.

The programs for A064829, there is no canonical definition to state claims against.
-/

/-! ## A064829.P6675363216618589852

`p?[A367505(n)]`
-/

namespace A064829.P6675363216618589852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064829.P6675363216618589852

/-! ## A064829.P911151077420176968

`filter[A367505(n), A010051(#)]`
-/

namespace A064829.P911151077420176968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A064829.P911151077420176968

/-! ## A064829.P6249519139436488690

`filter[A367505(n), A135461(#)]`
-/

namespace A064829.P6249519139436488690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A064829.P6249519139436488690

/-! ## A064829.P5279417253212791973

`filter[A367505(n), A252233(#)]`
-/

namespace A064829.P5279417253212791973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A064829.P5279417253212791973

/-! ## A064829.P3664074099855581803

`filter[A367505(n), A257531(#)]`
-/

namespace A064829.P3664074099855581803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A064829.P3664074099855581803

/-!
# A064830: a(n) = gcd(n, prime(n)^2 - 1).

The programs for A064830, the canonical program `A064830.P10592305738085255730` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064830 has offset 1).

The definition of A064830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064830.P10592305738085255730

`gcd(n+1, A084920(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064830

/-- `gcd(n+1, A084920(n+1))` -/
def P10592305738085255730.Spec : Prop :=
  ∀ n, (P10592305738085255730.a n : ℤ) = A064830 (n + 1)

theorem P10592305738085255730.correct : P10592305738085255730.Spec := by
  intro n
  simp only [A064830, Nat.add_sub_cancel]

end A064830

/-! ## A064830.P6385985509157755767

`gcd(-xor(n, -1), A127917(n+1))`
-/

namespace A064830.P6385985509157755767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (A127917 (n + 1))

end

end A064830.P6385985509157755767

namespace A064830

/-- `gcd(-xor(n, -1), A127917(n+1))` -/
def P6385985509157755767.Spec : Prop :=
  ∀ n, (P6385985509157755767.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P10662193496842764225

`gcd(1-A106588(n+1), 2*n+1-n)`
-/

namespace A064830.P10662193496842764225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A106588 (n + 1)) ((2 * n + 1 : ℤ) - (n : ℤ))

end

end A064830.P10662193496842764225

namespace A064830

/-- `gcd(1-A106588(n+1), 2*n+1-n)` -/
def P10662193496842764225.Spec : Prop :=
  ∀ n, (P10662193496842764225.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P16378879198677133906

`gcd(A000027(n+1), A127917(n+1))`
-/

namespace A064830.P16378879198677133906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A127917 (n + 1))

end

end A064830.P16378879198677133906

namespace A064830

/-- `gcd(A000027(n+1), A127917(n+1))` -/
def P16378879198677133906.Spec : Prop :=
  ∀ n, (P16378879198677133906.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P5417891855192574354

`gcd(A061019(n+1), A138402(n+1))`
-/

namespace A064830.P5417891855192574354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A138402 (n + 1))

end

end A064830.P5417891855192574354

namespace A064830

/-- `gcd(A061019(n+1), A138402(n+1))` -/
def P5417891855192574354.Spec : Prop :=
  ∀ n, (P5417891855192574354.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P5539804965858209801

`gcd(A119972(n+1), A138406(n+1))`
-/

namespace A064830.P5539804965858209801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119972 (n + 1)) (A138406 (n + 1))

end

end A064830.P5539804965858209801

namespace A064830

/-- `gcd(A119972(n+1), A138406(n+1))` -/
def P5539804965858209801.Spec : Prop :=
  ∀ n, (P5539804965858209801.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P16456135852166702492

`gcd(A001248(n+1)-1, A008619(2*n))`
-/

namespace A064830.P16456135852166702492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001248 (n + 1) - 1) (A008619 (2 * n))

end

end A064830.P16456135852166702492

namespace A064830

/-- `gcd(A001248(n+1)-1, A008619(2*n))` -/
def P16456135852166702492.Spec : Prop :=
  ∀ n, (P16456135852166702492.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P1260357462179854316

`gcd(A001057(2*n+1), A062354(A000040(n+1)))`
-/

namespace A064830.P1260357462179854316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (2 * n + 1)) (A062354 (A000040 (n + 1)).toNat)

end

end A064830.P1260357462179854316

namespace A064830

/-- `gcd(A001057(2*n+1), A062354(A000040(n+1)))` -/
def P1260357462179854316.Spec : Prop :=
  ∀ n, (P1260357462179854316.a n : ℤ) = A064830 (n + 1)

end A064830

/-! ## A064830.P9995108341479777516

`gcd(A029578(2*(n+1)), A065430(A000040(n+1)))`
-/

namespace A064830.P9995108341479777516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029578 (2 * (n + 1))) (A065430 (A000040 (n + 1)).toNat)

end

end A064830.P9995108341479777516

namespace A064830

/-- `gcd(A029578(2*(n+1)), A065430(A000040(n+1)))` -/
def P9995108341479777516.Spec : Prop :=
  ∀ n, (P9995108341479777516.a n : ℤ) = A064830 (n + 1)

end A064830

/-!
# A064831: Partial sums of A001654, or sum of the areas of the first n Fibonacci rectangles.

The programs for A064831, the canonical program `A064831.P15565744250995574709` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064831 has offset 0).

The definition of A064831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064831.P15565744250995574709

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064831

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P15565744250995574709.Spec : Prop :=
  ∀ n, P15565744250995574709.a n = A064831 n

theorem P15565744250995574709.correct : P15565744250995574709.Spec := by
  intro n
  simp only [A064831]

end A064831

/-! ## A064831.P5049589565444081129

`a(n-1)+A001654(n)` with `a(0)=0`
-/

namespace A064831.P5049589565444081129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001654 n

end

end A064831.P5049589565444081129

namespace A064831

/-- `a(n-1)+A001654(n)` -/
def P5049589565444081129.Spec : Prop :=
  ∀ n, P5049589565444081129.a n = A064831 n

end A064831

/-! ## A064831.P16072812930057741182

`(A027941(n)+A001654(n))/2`
-/

namespace A064831.P16072812930057741182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027941 n + A001654 n : ℚ) / 2

end

end A064831.P16072812930057741182

namespace A064831

/-- `(A027941(n)+A001654(n))/2` -/
def P16072812930057741182.Spec : Prop :=
  ∀ n, P16072812930057741182.a n = (A064831 n : ℚ)

end A064831

/-! ## A064831.P8765741302045424503

`A005248(n+1)/5-1/2-(-1)^n/10`
-/

namespace A064831.P8765741302045424503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) : ℚ) / 5 - (1 : ℚ) / 2 - ((-1) ^ n : ℚ) / 10

end

end A064831.P8765741302045424503

namespace A064831

/-- `A005248(n+1)/5-1/2-(-1)^n/10` -/
def P8765741302045424503.Spec : Prop :=
  ∀ n, P8765741302045424503.a n = (A064831 n : ℚ)

end A064831

/-! ## A064831.P17864927068562806807

`ogf(x/(1-3x+3x^3-x^4))`
-/

namespace A064831.P17864927068562806807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 0, 3, -1] n

end

end A064831.P17864927068562806807

namespace A064831

/-- `ogf(x/(1-3x+3x^3-x^4))` -/
def P17864927068562806807.Spec : Prop :=
  ∀ n, P17864927068562806807.a n = A064831 n

end A064831

/-! ## A064831.P17378807214512481417

`∑[∑[round(ϕ^n/sqrt(5))²]]`
-/

namespace A064831.P17378807214512481417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064831.P17378807214512481417

namespace A064831

/-- `∑[∑[round(ϕ^n/sqrt(5))²]]` -/
def P17378807214512481417.Spec : Prop :=
  ∀ n, P17378807214512481417.a n = A064831 n

end A064831

/-! ## A064831.P15238139965381966619

`3*a(n-1)+n%2-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A064831.P15238139965381966619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) + (((n % 2 : ℕ) : ℤ) - a (n - 2))

end

end A064831.P15238139965381966619

namespace A064831

/-- `3*a(n-1)+n%2-a(n-2)` -/
def P15238139965381966619.Spec : Prop :=
  ∀ n, P15238139965381966619.a n = A064831 n

end A064831

/-! ## A064831.P8687895097052565969

`round(ϕ*a(n-1))+round(ϕ^n/sqrt(5))²` with `a(0)=0`
-/

namespace A064831.P8687895097052565969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A064831.P8687895097052565969

namespace A064831

/-- `round(ϕ*a(n-1))+round(ϕ^n/sqrt(5))²` -/
def P8687895097052565969.Spec : Prop :=
  ∀ n, P8687895097052565969.a n = A064831 n

end A064831

/-! ## A064831.P14679175399899535875

`(3-a(n-3)/a(n-2))*a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A064831.P14679175399899535875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (3 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A064831.P14679175399899535875

namespace A064831

/-- `(3-a(n-3)/a(n-2))*a(n-1)` -/
def P14679175399899535875.Spec : Prop :=
  ∀ n, P14679175399899535875.a n = (A064831 n : ℚ)

end A064831

/-! ## A064831.P13273455496920395986

`∑[3*a(n-1)-a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A064831.P13273455496920395986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A064831.P13273455496920395986

namespace A064831

/-- `∑[3*a(n-1)-a(n-2)]-a(n-1)` -/
def P13273455496920395986.Spec : Prop :=
  ∀ n, P13273455496920395986.a n = A064831 n

end A064831

/-! ## A064831.P13521600240451712610

`A166516(n+1)-1`
-/

namespace A064831.P13521600240451712610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 1) - 1

end

end A064831.P13521600240451712610

namespace A064831

/-- `A166516(n+1)-1` -/
def P13521600240451712610.Spec : Prop :=
  ∀ n, P13521600240451712610.a n = A064831 n

end A064831

/-! ## A064831.P12053557138879348768

`floor(A192873(n+1)/2)`
-/

namespace A064831.P12053557138879348768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192873 (n + 1) : ℚ) / 2⌋

end

end A064831.P12053557138879348768

namespace A064831

/-- `floor(A192873(n+1)/2)` -/
def P12053557138879348768.Spec : Prop :=
  ∀ n, P12053557138879348768.a n = A064831 n

end A064831

/-! ## A064831.P8202853458756465573

`floor(A293411(2*n)/2)`
-/

namespace A064831.P8202853458756465573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293411 (2 * n) : ℚ) / 2⌋

end

end A064831.P8202853458756465573

namespace A064831

/-- `floor(A293411(2*n)/2)` -/
def P8202853458756465573.Spec : Prop :=
  ∀ n, P8202853458756465573.a n = A064831 n

end A064831

/-! ## A064831.P14831203919789694388

`A005313(n+1)-(n+1)`
-/

namespace A064831.P14831203919789694388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005313 (n + 1) - (n + 1 : ℤ)

end

end A064831.P14831203919789694388

namespace A064831

/-- `A005313(n+1)-(n+1)` -/
def P14831203919789694388.Spec : Prop :=
  ∀ n, P14831203919789694388.a n = A064831 n

end A064831

/-! ## A064831.P8867134313126182651

`floor((A000045(n+2)/ϕ)²)`
-/

namespace A064831.P8867134313126182651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (n + 2) : ℝ) / Real.goldenRatio) ^ 2⌋

end

end A064831.P8867134313126182651

namespace A064831

/-- `floor((A000045(n+2)/ϕ)²)` -/
def P8867134313126182651.Spec : Prop :=
  ∀ n, P8867134313126182651.a n = A064831 n

end A064831

/-! ## A064831.P16692324193725555100

`floor(A000045(2*(n+1))/sqrt(5))`
-/

namespace A064831.P16692324193725555100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (2 * (n + 1)) : ℝ) / Real.sqrt (5 : ℝ)⌋

end

end A064831.P16692324193725555100

namespace A064831

/-- `floor(A000045(2*(n+1))/sqrt(5))` -/
def P16692324193725555100.Spec : Prop :=
  ∀ n, P16692324193725555100.a n = A064831 n

end A064831

/-! ## A064831.P1538249452652400554

`A000045(Δ[n²])-(a(n-1)+1)` with `a(0)=0`
-/

namespace A064831.P1538249452652400554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (a (n - 1) + 1)

end

end A064831.P1538249452652400554

namespace A064831

/-- `A000045(Δ[n²])-(a(n-1)+1)` -/
def P1538249452652400554.Spec : Prop :=
  ∀ n, P1538249452652400554.a n = A064831 n

end A064831

/-! ## A064831.P7680703415213901913

`A000045(2*n+1)-1-a(n-1)` with `a(0)=0`
-/

namespace A064831.P7680703415213901913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n + 1) - 1 - a (n - 1)

end

end A064831.P7680703415213901913

namespace A064831

/-- `A000045(2*n+1)-1-a(n-1)` -/
def P7680703415213901913.Spec : Prop :=
  ∀ n, P7680703415213901913.a n = A064831 n

end A064831

/-! ## A064831.P2544496268211532740

`A000045(2*n-(n-1))²-and(1, n+1)`
-/

namespace A064831.P2544496268211532740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2 - (Nat.land 1 (n + 1) : ℤ)

end

end A064831.P2544496268211532740

namespace A064831

/-- `A000045(2*n-(n-1))²-and(1, n+1)` -/
def P2544496268211532740.Spec : Prop :=
  ∀ n, P2544496268211532740.a n = A064831 n

end A064831

/-!
# A064832: Record numbers in A064791.

The programs for A064832, there is no canonical definition to state claims against.
-/

/-! ## A064832.P12682338785205417099

`record[A064791(n+1)]`
-/

namespace A064832.P12682338785205417099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064832.P12682338785205417099

/-! ## A064832.P14236824649873930039

`A064791(A064833(n+1))`
-/

namespace A064832.P14236824649873930039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064791 (A064833 (n + 1)).toNat

end

end A064832.P14236824649873930039

/-! ## A064832.P5831845798932100242

`record[ratio[A064791(A152271(n))]]`
-/

namespace A064832.P5831845798932100242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064791 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064832.P5831845798932100242

/-!
# A064834: If n (in base 10) is d_1 d_2 ... d_k then a(n) = Sum_{i = 1..[k/2] } |d_i - d_{k-i+1}|.

The programs for A064834, there is no canonical definition to state claims against.
-/

/-! ## A064834.P7490060677875120768

`∑{digits}[A338827(n), #/2]`
-/

namespace A064834.P7490060677875120768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / 2).sum

end

end A064834.P7490060677875120768

/-! ## A064834.P12629800110969078836

`∑{digits}[n-A265558(n), #]`
-/

namespace A064834.P12629800110969078836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A064834.P12629800110969078836

/-! ## A064834.P13485916723972470186

`A007953(A265558(n)-n)`
-/

namespace A064834.P13485916723972470186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A265558 n - (n : ℤ)).toNat

end

end A064834.P13485916723972470186

/-! ## A064834.P9175497594884836202

`A142150(∑{digits}[A338827(n), #])`
-/

namespace A064834.P9175497594884836202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A064834.P9175497594884836202

/-! ## A064834.P17958625364573922526

`A004526(A007953(A338827(n)))`
-/

namespace A064834.P17958625364573922526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007953 (A338827 n).toNat).toNat

end

end A064834.P17958625364573922526

/-! ## A064834.P3409956374916150027

`abs(A076313(A073729(A233583(n+1))))`
-/

namespace A064834.P3409956374916150027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076313 (A073729 (A233583 (n + 1)).toNat).toNat|

end

end A064834.P3409956374916150027

/-! ## A064834.P3289887858014167804

`A040163(A258851(p?[A060681(n+1)]))`
-/

namespace A064834.P3289887858014167804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A258851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A064834.P3289887858014167804

/-! ## A064834.P669768721863843355

`A040163(A002260((n²+n)%∑[n+1]+1)+1)`
-/

namespace A064834.P669768721863843355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A002260 ((n ^ 2 + n) % (∑ j ∈ Finset.range (n + 1), f1 j) + 1) + 1).toNat

end

end A064834.P669768721863843355

/-! ## A064834.P11778464827141685564

`A040163(A002024(∑[n-2]+6)+1)`
-/

namespace A064834.P11778464827141685564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat + 1).toNat

end

end A064834.P11778464827141685564

/-! ## A064834.P13920088070939490147

`A241494(n*A377191(n))`
-/

namespace A064834.P13920088070939490147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 ((n : ℤ) * A377191 n).toNat

end

end A064834.P13920088070939490147

/-!
# A064835: If n mod 2 = 0 then a(n) = n^4/4 - 2*n^2 + 3*n; otherwise, a(n) = n^4/4 - 2*n^2 + 3*n - 5/4.

The programs for A064835, the canonical program `A064835.P551224385011782999` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064835 has offset 0).

The definition of A064835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064835.P551224385011782999

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=10, a(4)=44, a(5)=120`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064835

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P551224385011782999.Spec : Prop :=
  ∀ n, P551224385011782999.a n = A064835 n

theorem P551224385011782999.correct : P551224385011782999.Spec := by
  intro n
  simp only [A064835]

end A064835

/-! ## A064835.P2918611528171318267

`2*A064836(n)`
-/

namespace A064835.P2918611528171318267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064836 n

end

end A064835.P2918611528171318267

namespace A064835

/-- `2*A064836(n)` -/
def P2918611528171318267.Spec : Prop :=
  ∀ n, P2918611528171318267.a n = A064835 n

end A064835

/-! ## A064835.P14729223459669920743

`A064836(n-char[1])+A064836(n)`
-/

namespace A064835.P14729223459669920743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064836 (n - (if ∃ j, f1 j = n then 1 else 0)) + A064836 n

end

end A064835.P14729223459669920743

namespace A064835

/-- `A064836(n-char[1])+A064836(n)` -/
def P14729223459669920743.Spec : Prop :=
  ∀ n, P14729223459669920743.a n = A064835 n

end A064835

/-! ## A064835.P16554166958971338152

`A064836(n)/2^A008683(A007918(n))`
-/

namespace A064835.P16554166958971338152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064836 n : ℚ) / (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A064835.P16554166958971338152

namespace A064835

/-- `A064836(n)/2^A008683(A007918(n))` -/
def P16554166958971338152.Spec : Prop :=
  ∀ n, P16554166958971338152.a n = (A064835 n : ℚ)

end A064835

/-! ## A064835.P17346838825774693365

`A064836(n)+A064836(n)%A056114(n)`
-/

namespace A064835.P17346838825774693365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064836 n + Int.tmod (A064836 n) (A056114 n)

end

end A064835.P17346838825774693365

namespace A064835

/-- `A064836(n)+A064836(n)%A056114(n)` -/
def P17346838825774693365.Spec : Prop :=
  ∀ n, P17346838825774693365.a n = A064835 n

end A064835

/-! ## A064835.P6910088376287896396

`A064836(n)+A064836(n)/A000203(gcd(n, n+1))`
-/

namespace A064835.P6910088376287896396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064836 n : ℚ) + (A064836 n : ℚ) / (A000203 (Nat.gcd n (n + 1)) : ℚ)

end

end A064835.P6910088376287896396

namespace A064835

/-- `A064836(n)+A064836(n)/A000203(gcd(n, n+1))` -/
def P6910088376287896396.Spec : Prop :=
  ∀ n, P6910088376287896396.a n = (A064835 n : ℚ)

end A064835

/-! ## A064835.P12623575849071510602

`2*(A212714(n)-A011848(A004273(n)))`
-/

namespace A064835.P12623575849071510602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212714 n - A011848 (A004273 n).toNat)

end

end A064835.P12623575849071510602

namespace A064835

/-- `2*(A212714(n)-A011848(A004273(n)))` -/
def P12623575849071510602.Spec : Prop :=
  ∀ n, P12623575849071510602.a n = A064835 n

end A064835

/-!
# A064836: a(n) = A064835(n)/2.

The programs for A064836, the canonical program `A064836.P12935499272681872198` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064836 has offset 0).

The definition of A064836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064836.P12935499272681872198

`A064835(n)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064836

/-- `A064835(n)/2` -/
def P12935499272681872198.Spec : Prop :=
  ∀ n, P12935499272681872198.a n = (A064836 n : ℚ)

end A064836

/-! ## A064836.P14987371332853302438

`a(n-2)+A177058(n)+2` with `a(0)=0, a(1)=0`
-/

namespace A064836.P14987371332853302438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (A177058 n + 2)

end

end A064836.P14987371332853302438

namespace A064836

/-- `a(n-2)+A177058(n)+2` -/
def P14987371332853302438.Spec : Prop :=
  ∀ n, P14987371332853302438.a n = A064836 n

end A064836

/-! ## A064836.P16505834499195738437

`A032766(n)+A212714(n)-n²`
-/

namespace A064836.P16505834499195738437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (A212714 n - (n ^ 2 : ℤ))

end

end A064836.P16505834499195738437

namespace A064836

/-- `A032766(n)+A212714(n)-n²` -/
def P16505834499195738437.Spec : Prop :=
  ∀ n, P16505834499195738437.a n = A064836 n

end A064836

/-! ## A064836.P3020259829142954772

`A008619(n)+A212714(n)-A002061(n)`
-/

namespace A064836.P3020259829142954772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A212714 n - A002061 n)

end

end A064836.P3020259829142954772

namespace A064836

/-- `A008619(n)+A212714(n)-A002061(n)` -/
def P3020259829142954772.Spec : Prop :=
  ∀ n, P3020259829142954772.a n = A064836 n

end A064836

/-! ## A064836.P5603530949700987609

`2^A008683(A004139(n+1))*A064835(n)`
-/

namespace A064836.P5603530949700987609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A004139 (n + 1)).toNat : ℤ) * (A064835 n : ℚ)

end

end A064836.P5603530949700987609

namespace A064836

/-- `2^A008683(A004139(n+1))*A064835(n)` -/
def P5603530949700987609.Spec : Prop :=
  ∀ n, P5603530949700987609.a n = (A064836 n : ℚ)

end A064836

/-! ## A064836.P18123766688122082200

`A212714(n)-A011848(A004273(n))`
-/

namespace A064836.P18123766688122082200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n - A011848 (A004273 n).toNat

end

end A064836.P18123766688122082200

namespace A064836

/-- `A212714(n)-A011848(A004273(n))` -/
def P18123766688122082200.Spec : Prop :=
  ∀ n, P18123766688122082200.a n = A064836 n

end A064836

/-!
# A064837: a(n) = (6*n^4 + 30*n^3 - 20*n^2 + 14)*n/30 + (n mod 2).

The programs for A064837, the canonical program `A064837.P15958587566474408411` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064837 has offset 0).

The definition of A064837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064837.P15958587566474408411

`(6*n^4+30*n^3-20*n²+14)*n/30+n%2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064837

/-- `(6*n^4+30*n^3-20*n²+14)*n/30+n%2` -/
def P15958587566474408411.Spec : Prop :=
  ∀ n, P15958587566474408411.a n = (A064837 n : ℚ)

end A064837

/-! ## A064837.P15026940491350859406

`2*A064838(n)`
-/

namespace A064837.P15026940491350859406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064838 n

end

end A064837.P15026940491350859406

namespace A064837

/-- `2*A064838(n)` -/
def P15026940491350859406.Spec : Prop :=
  ∀ n, P15026940491350859406.a n = A064837 n

end A064837

/-! ## A064837.P71879107507798357

`A064838(or(n, char[1]))+A064838(n)`
-/

namespace A064837.P71879107507798357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064838 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + A064838 n

end

end A064837.P71879107507798357

namespace A064837

/-- `A064838(or(n, char[1]))+A064838(n)` -/
def P71879107507798357.Spec : Prop :=
  ∀ n, P71879107507798357.a n = A064837 n

end A064837

/-! ## A064837.P9990479690033413394

`A064838(A005843(n)/2)+A064838(n)`
-/

namespace A064837.P9990479690033413394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064838 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A064838 n

end

end A064837.P9990479690033413394

namespace A064837

/-- `A064838(A005843(n)/2)+A064838(n)` -/
def P9990479690033413394.Spec : Prop :=
  ∀ n, P9990479690033413394.a n = A064837 n

end A064837

/-! ## A064837.P7728793092284516072

`A064838(A005843(n)-n)+A064838(n)`
-/

namespace A064837.P7728793092284516072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064838 (A005843 n - (n : ℤ)).toNat + A064838 n

end

end A064837.P7728793092284516072

namespace A064837

/-- `A064838(A005843(n)-n)+A064838(n)` -/
def P7728793092284516072.Spec : Prop :=
  ∀ n, P7728793092284516072.a n = A064837 n

end A064837

/-! ## A064837.P7966502699522735921

`A064838(n)+A064838(n%A010010(n))`
-/

namespace A064837.P7966502699522735921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064838 n + A064838 (Int.tmod (n : ℤ) (A010010 n)).toNat

end

end A064837.P7966502699522735921

namespace A064837

/-- `A064838(n)+A064838(n%A010010(n))` -/
def P7966502699522735921.Spec : Prop :=
  ∀ n, P7966502699522735921.a n = A064837 n

end A064837

/-!
# A064838: a(n) = A064837(n)/2.

The programs for A064838, the canonical program `A064838.P8528437837125848175` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064838 has offset 0).

The definition of A064838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064838.P8528437837125848175

`A064837(n)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064838

/-- `A064837(n)/2` -/
def P8528437837125848175.Spec : Prop :=
  ∀ n, P8528437837125848175.a n = (A064838 n : ℚ)

end A064838

/-! ## A064838.P4541720942911205063

`∑[2*(∑[n]²-n²)+n]-floor(n^3/2)`
-/

namespace A064838.P4541720942911205063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n ^ 2 : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n ^ 3 : ℚ) / 2⌋

end

end A064838.P4541720942911205063

namespace A064838

/-- `∑[2*(∑[n]²-n²)+n]-floor(n^3/2)` -/
def P4541720942911205063.Spec : Prop :=
  ∀ n, P4541720942911205063.a n = A064838 n

end A064838

/-! ## A064838.P12947605522823570141

`A273943(A064837(n))`
-/

namespace A064838.P12947605522823570141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A064837 n).toNat

end

end A064838.P12947605522823570141

namespace A064838

/-- `A273943(A064837(n))` -/
def P12947605522823570141.Spec : Prop :=
  ∀ n, P12947605522823570141.a n = A064838 n

end A064838

/-! ## A064838.P17693526219059815257

`A014682(lcm(2, A064837(n)))`
-/

namespace A064838.P17693526219059815257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A064837 n))

end

end A064838.P17693526219059815257

namespace A064838

/-- `A014682(lcm(2, A064837(n)))` -/
def P17693526219059815257.Spec : Prop :=
  ∀ n, P17693526219059815257.a n = A064838 n

end A064838

/-! ## A064838.P11283484589249336693

`A014682(A185284(n)+A064837(n))`
-/

namespace A064838.P11283484589249336693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A185284 n + A064837 n).toNat

end

end A064838.P11283484589249336693

namespace A064838

/-- `A014682(A185284(n)+A064837(n))` -/
def P11283484589249336693.Spec : Prop :=
  ∀ n, P11283484589249336693.a n = A064838 n

end A064838

/-!
# A064839: List the natural numbers starting a new row only with each new least prime signature (A025487). a(n) is the column position associated with n.

The programs for A064839, there is no canonical definition to state claims against.
-/

/-! ## A064839.P11054238610364135146

`A326439(n+1)/A325365(n+1)`
-/

namespace A064839.P11054238610364135146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326439 (n + 1) : ℚ) / (A325365 (n + 1) : ℚ)

end

end A064839.P11054238610364135146

/-! ## A064839.P6189706965376632574

`floor(∑[A325263(n+1)]/A325263(n+1))`
-/

namespace A064839.P6189706965376632574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A325263 (n + 1) : ℚ)⌋

end

end A064839.P6189706965376632574

/-! ## A064839.P387673781029079129

`A001511(gcd(A069281(n+1), A372134(n+1)))`
-/

namespace A064839.P387673781029079129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A069281 (n + 1)) (A372134 (n + 1)))

end

end A064839.P387673781029079129

/-! ## A064839.P8090305777229483761

`A326438(n)/A325263(n+1)`
-/

namespace A064839.P8090305777229483761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326438 n : ℚ) / (A325263 (n + 1) : ℚ)

end

end A064839.P8090305777229483761

/-! ## A064839.P8778455983015237912

`A326438(n)/Δ[A326438(n)]`
-/

namespace A064839.P8778455983015237912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326438 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A064839.P8778455983015237912

/-!
# A064840: a(n) = tau(n)*sigma(n).

The programs for A064840, the canonical program `A064840.P9951464707142976250` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064840 has offset 1).

The definition of A064840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064840.P9951464707142976250

`∑{d}[n+1, #]*∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064840

/-- `∑{d}[n+1, #]*∏{e}[n+1, #+1]` -/
def P9951464707142976250.Spec : Prop :=
  ∀ n, (P9951464707142976250.a n : ℤ) = A064840 (n + 1)

theorem P9951464707142976250.correct : P9951464707142976250.Spec := by
  intro n
  simp only [A064840, Nat.add_sub_cancel]

end A064840

/-! ## A064840.P1895839707043077074

`Δ[A006218(n)]*∑{d}[n+1, #]`
-/

namespace A064840.P1895839707043077074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A064840.P1895839707043077074

namespace A064840

/-- `Δ[A006218(n)]*∑{d}[n+1, #]` -/
def P1895839707043077074.Spec : Prop :=
  ∀ n, P1895839707043077074.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P3220815739991821783

`∑{d}[n+1, #]*A000005(n+1)`
-/

namespace A064840.P3220815739991821783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000005 (n + 1)

end

end A064840.P3220815739991821783

namespace A064840

/-- `∑{d}[n+1, #]*A000005(n+1)` -/
def P3220815739991821783.Spec : Prop :=
  ∀ n, P3220815739991821783.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P1203806949011274601

`∑{d}[n+1, A000203(lcm(#, n+1))]`
-/

namespace A064840.P1203806949011274601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (Nat.lcm d (n + 1))

end

end A064840.P1203806949011274601

namespace A064840

/-- `∑{d}[n+1, A000203(lcm(#, n+1))]` -/
def P1203806949011274601.Spec : Prop :=
  ∀ n, P1203806949011274601.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P12843040975221751844

`∏{e}[n+1, #+1]*A000203(n+1)`
-/

namespace A064840.P12843040975221751844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A000203 (n + 1)

end

end A064840.P12843040975221751844

namespace A064840

/-- `∏{e}[n+1, #+1]*A000203(n+1)` -/
def P12843040975221751844.Spec : Prop :=
  ∀ n, P12843040975221751844.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P6613760685553347823

`∑{d}[n+1, #*A328485((n+1)/#)]`
-/

namespace A064840.P6613760685553347823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064840.P6613760685553347823

namespace A064840

/-- `∑{d}[n+1, #*A328485((n+1)/#)]` -/
def P6613760685553347823.Spec : Prop :=
  ∀ n, P6613760685553347823.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P6044687431492046307

`Δ[A006218(n)]*Δ[A160664(n)]`
-/

namespace A064840.P6044687431492046307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A064840.P6044687431492046307

namespace A064840

/-- `Δ[A006218(n)]*Δ[A160664(n)]` -/
def P6044687431492046307.Spec : Prop :=
  ∀ n, P6044687431492046307.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P2771455419030554933

`A000203(n+1)*Δ[A006218(n)]`
-/

namespace A064840.P2771455419030554933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A064840.P2771455419030554933

namespace A064840

/-- `A000203(n+1)*Δ[A006218(n)]` -/
def P2771455419030554933.Spec : Prop :=
  ∀ n, P2771455419030554933.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P3313759572191584611

`A000203(n+1)*Δ[A054519(n)]`
-/

namespace A064840.P3313759572191584611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A064840.P3313759572191584611

namespace A064840

/-- `A000203(n+1)*Δ[A054519(n)]` -/
def P3313759572191584611.Spec : Prop :=
  ∀ n, P3313759572191584611.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P5915433129032530450

`A000005(n+1)*Δ[A160664(n)]`
-/

namespace A064840.P5915433129032530450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A064840.P5915433129032530450

namespace A064840

/-- `A000005(n+1)*Δ[A160664(n)]` -/
def P5915433129032530450.Spec : Prop :=
  ∀ n, P5915433129032530450.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P16237526303760046921

`A064946(n+1)+A064945(n+1)`
-/

namespace A064840.P16237526303760046921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064946 (n + 1) + A064945 (n + 1)

end

end A064840.P16237526303760046921

namespace A064840

/-- `A064946(n+1)+A064945(n+1)` -/
def P16237526303760046921.Spec : Prop :=
  ∀ n, P16237526303760046921.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P6808138110943987091

`A064947(n+1)+A064944(n+1)`
-/

namespace A064840.P6808138110943987091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1) + A064944 (n + 1)

end

end A064840.P6808138110943987091

namespace A064840

/-- `A064947(n+1)+A064944(n+1)` -/
def P6808138110943987091.Spec : Prop :=
  ∀ n, P6808138110943987091.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P16783360370915551610

`A337297(n+1)+A000203(n+1)`
-/

namespace A064840.P16783360370915551610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) + A000203 (n + 1)

end

end A064840.P16783360370915551610

namespace A064840

/-- `A337297(n+1)+A000203(n+1)` -/
def P16783360370915551610.Spec : Prop :=
  ∀ n, P16783360370915551610.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P16193460937596505215

`A343824(n+1)+A038040(n+1)`
-/

namespace A064840.P16193460937596505215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343824 (n + 1) + A038040 (n + 1)

end

end A064840.P16193460937596505215

namespace A064840

/-- `A343824(n+1)+A038040(n+1)` -/
def P16193460937596505215.Spec : Prop :=
  ∀ n, P16193460937596505215.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P955409712614428567

`A337360(n+1)-A000203(n+1)`
-/

namespace A064840.P955409712614428567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A000203 (n + 1)

end

end A064840.P955409712614428567

namespace A064840

/-- `A337360(n+1)-A000203(n+1)` -/
def P955409712614428567.Spec : Prop :=
  ∀ n, P955409712614428567.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P1031066778155785146

`A000005(n+1)*A000203(n+1)`
-/

namespace A064840.P1031066778155785146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1)

end

end A064840.P1031066778155785146

namespace A064840

/-- `A000005(n+1)*A000203(n+1)` -/
def P1031066778155785146.Spec : Prop :=
  ∀ n, P1031066778155785146.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P14293710810766037472

`A009205(n+1)*A009278(n+1)`
-/

namespace A064840.P14293710810766037472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (n + 1) * A009278 (n + 1)

end

end A064840.P14293710810766037472

namespace A064840

/-- `A009205(n+1)*A009278(n+1)` -/
def P14293710810766037472.Spec : Prop :=
  ∀ n, P14293710810766037472.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P7807375853180658754

`A001511(n+1)*A309153(n+1)`
-/

namespace A064840.P7807375853180658754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A309153 (n + 1)

end

end A064840.P7807375853180658754

namespace A064840

/-- `A001511(n+1)*A309153(n+1)` -/
def P7807375853180658754.Spec : Prop :=
  ∀ n, P7807375853180658754.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P8705571202841681714

`A001227(n+1)*A394790(n+1)`
-/

namespace A064840.P8705571202841681714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A394790 (n + 1)

end

end A064840.P8705571202841681714

namespace A064840

/-- `A001227(n+1)*A394790(n+1)` -/
def P8705571202841681714.Spec : Prop :=
  ∀ n, P8705571202841681714.a n = A064840 (n + 1)

end A064840

/-! ## A064840.P12971975124837093335

`A017665(n+1)*A388270(n+1)`
-/

namespace A064840.P12971975124837093335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) * A388270 (n + 1)

end

end A064840.P12971975124837093335

namespace A064840

/-- `A017665(n+1)*A388270(n+1)` -/
def P12971975124837093335.Spec : Prop :=
  ∀ n, P12971975124837093335.a n = A064840 (n + 1)

end A064840

/-!
# A064841: Working in base 2, replace n with the concatenation of its prime divisors in increasing order.

The programs for A064841, there is no canonical definition to state claims against.
-/

/-! ## A064841.P14073801764546297122

`A007088(A048985(n+1))`
-/

namespace A064841.P14073801764546297122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048985 (n + 1)).toNat

end

end A064841.P14073801764546297122

/-! ## A064841.P2987068990025726779

`A185544(2*A048985(n+1))`
-/

namespace A064841.P2987068990025726779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A048985 (n + 1)).toNat

end

end A064841.P2987068990025726779

/-!
# A064842: Maximal value of Sum_{i=1..n} (p(i) - p(i+1))^2, where p(n+1) = p(1), as p ranges over all permutations of {1, 2, ..., n}.

The programs for A064842, the canonical program `A064842.P6641733526798544504` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064842 has offset 1).

The definition of A064842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064842.P6641733526798544504

`(2*(n+1)^3-8*(n+1)+3*(-1)^(n+1)+9)/6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064842

/-- `(2*(n+1)^3-8*(n+1)+3*(-1)^(n+1)+9)/6` -/
def P6641733526798544504.Spec : Prop :=
  ∀ n, P6641733526798544504.a n = (A064842 (n + 1) : ℚ)

end A064842

/-! ## A064842.P14482282685353711943

`2*A064843(n+1)`
-/

namespace A064842.P14482282685353711943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064843 (n + 1)

end

end A064842.P14482282685353711943

namespace A064842

/-- `2*A064843(n+1)` -/
def P14482282685353711943.Spec : Prop :=
  ∀ n, P14482282685353711943.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P15426215918532976831

`2*(1-∑[∑[xor(1, -n)]])`
-/

namespace A064842.P15426215918532976831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064842.P15426215918532976831

namespace A064842

/-- `2*(1-∑[∑[xor(1, -n)]])` -/
def P15426215918532976831.Spec : Prop :=
  ∀ n, P15426215918532976831.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P10590893095795747691

`∑[∑[2*n]]-and(n, -2)`
-/

namespace A064842.P10590893095795747691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.land (n : ℤ) (-2)

end

end A064842.P10590893095795747691

namespace A064842

/-- `∑[∑[2*n]]-and(n, -2)` -/
def P10590893095795747691.Spec : Prop :=
  ∀ n, P10590893095795747691.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P3528554649377598815

`∑[record[xor(1, n²)-(n+1)]]`
-/

namespace A064842.P3528554649377598815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n ^ 2) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064842.P3528554649377598815

namespace A064842

/-- `∑[record[xor(1, n²)-(n+1)]]` -/
def P3528554649377598815.Spec : Prop :=
  ∀ n, P3528554649377598815.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P9886815359140234050

`∑[∑[2*n]]-or(1, n)+1`
-/

namespace A064842.P9886815359140234050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ) + 1

end

end A064842.P9886815359140234050

namespace A064842

/-- `∑[∑[2*n]]-or(1, n)+1` -/
def P9886815359140234050.Spec : Prop :=
  ∀ n, P9886815359140234050.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P16904487590806044961

`and(1, n)+∑[∑[2*n]]-n`
-/

namespace A064842.P16904487590806044961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A064842.P16904487590806044961

namespace A064842

/-- `and(1, n)+∑[∑[2*n]]-n` -/
def P16904487590806044961.Spec : Prop :=
  ∀ n, P16904487590806044961.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P13111990316684640911

`∑[∑[2*n]]-(n-and(1, n))`
-/

namespace A064842.P13111990316684640911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.land 1 n : ℤ))

end

end A064842.P13111990316684640911

namespace A064842

/-- `∑[∑[2*n]]-(n-and(1, n))` -/
def P13111990316684640911.Spec : Prop :=
  ∀ n, P13111990316684640911.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P8483747018822827019

`∑[∑[a(n-2)+4]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=8`
-/

namespace A064842.P8483747018822827019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 8] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064842.P8483747018822827019

namespace A064842

/-- `∑[∑[a(n-2)+4]]` -/
def P8483747018822827019.Spec : Prop :=
  ∀ n, (P8483747018822827019.a n : ℤ) = A064842 (n + 1)

end A064842

/-! ## A064842.P7396874914691020997

`2-∑[∑[a(n-2)-4]]` with `a(0)=2, a(1)=-4`
-/

namespace A064842.P7396874914691020997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -4] fun n f2 =>
  f2 (n - 2) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064842.P7396874914691020997

namespace A064842

/-- `2-∑[∑[a(n-2)-4]]` -/
def P7396874914691020997.Spec : Prop :=
  ∀ n, P7396874914691020997.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P7245662990028799667

`a(n-2)+2*(n²-1)` with `a(0)=0, a(1)=2`
-/

namespace A064842.P7245662990028799667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * ((n ^ 2 : ℤ) - 1)

end

end A064842.P7245662990028799667

namespace A064842

/-- `a(n-2)+2*(n²-1)` -/
def P7245662990028799667.Spec : Prop :=
  ∀ n, P7245662990028799667.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P6663176624786790498

`2*n²-(2-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A064842.P6663176624786790498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 * n ^ 2 : ℤ) - (2 - a (n - 2))

end

end A064842.P6663176624786790498

namespace A064842

/-- `2*n²-(2-a(n-2))` -/
def P6663176624786790498.Spec : Prop :=
  ∀ n, P6663176624786790498.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P3282420115773443577

`∑[∑[2*n]-1]+gcd(2, n+1)`
-/

namespace A064842.P3282420115773443577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd 2 (n + 1) : ℤ)

end

end A064842.P3282420115773443577

namespace A064842

/-- `∑[∑[2*n]-1]+gcd(2, n+1)` -/
def P3282420115773443577.Spec : Prop :=
  ∀ n, P3282420115773443577.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P15514535849026337147

`2*n*n+a(n-2)-2` with `a(0)=0, a(1)=2`
-/

namespace A064842.P15514535849026337147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 * (n * n) : ℤ) + (a (n - 2) - 2)

end

end A064842.P15514535849026337147

namespace A064842

/-- `2*n*n+a(n-2)-2` -/
def P15514535849026337147.Spec : Prop :=
  ∀ n, P15514535849026337147.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P4101638181947880884

`gcd(n-1, 2*n)-∑[1-∑[2*n]]`
-/

namespace A064842.P4101638181947880884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064842.P4101638181947880884

namespace A064842

/-- `gcd(n-1, 2*n)-∑[1-∑[2*n]]` -/
def P4101638181947880884.Spec : Prop :=
  ∀ n, P4101638181947880884.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P15546987457637478043

`A167238(n+1)-Δ[n²]`
-/

namespace A064842.P15546987457637478043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A064842.P15546987457637478043

namespace A064842

/-- `A167238(n+1)-Δ[n²]` -/
def P15546987457637478043.Spec : Prop :=
  ∀ n, P15546987457637478043.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P17522187800239765736

`∑[∑[2*n]]-A109613(n)+1`
-/

namespace A064842.P17522187800239765736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A109613 n + 1

end

end A064842.P17522187800239765736

namespace A064842

/-- `∑[∑[2*n]]-A109613(n)+1` -/
def P17522187800239765736.Spec : Prop :=
  ∀ n, P17522187800239765736.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P7048627695213815253

`A084990(n)+A000035(n)`
-/

namespace A064842.P7048627695213815253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + A000035 n

end

end A064842.P7048627695213815253

namespace A064842

/-- `A084990(n)+A000035(n)` -/
def P7048627695213815253.Spec : Prop :=
  ∀ n, P7048627695213815253.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P7610630737492446575

`A087035(n)+A000982(n)`
-/

namespace A064842.P7610630737492446575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087035 n + A000982 n

end

end A064842.P7610630737492446575

namespace A064842

/-- `A087035(n)+A000982(n)` -/
def P7610630737492446575.Spec : Prop :=
  ∀ n, P7610630737492446575.a n = A064842 (n + 1)

end A064842

/-! ## A064842.P15208541192000518891

`A137932(n)+A033547(n)`
-/

namespace A064842.P15208541192000518891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 n + A033547 n

end

end A064842.P15208541192000518891

namespace A064842

/-- `A137932(n)+A033547(n)` -/
def P15208541192000518891.Spec : Prop :=
  ∀ n, P15208541192000518891.a n = A064842 (n + 1)

end A064842

/-!
# A064843: a(n) = A064842(n)/2.

The programs for A064843, the canonical program `A064843.P4509885471937543371` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064843 has offset 1).

The definition of A064843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064843.P4509885471937543371

`A064842(n+1)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064843

/-- `A064842(n+1)/2` -/
def P4509885471937543371.Spec : Prop :=
  ∀ n, P4509885471937543371.a n = (A064843 (n + 1) : ℚ)

end A064843

/-! ## A064843.P11535894612389662838

`1-∑[∑[xor(1, -n)]]`
-/

namespace A064843.P11535894612389662838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064843.P11535894612389662838

namespace A064843

/-- `1-∑[∑[xor(1, -n)]]` -/
def P11535894612389662838.Spec : Prop :=
  ∀ n, P11535894612389662838.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P16610532510057401342

`∑[∑[n]]-floor(n/2)`
-/

namespace A064843.P16610532510057401342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A064843.P16610532510057401342

namespace A064843

/-- `∑[∑[n]]-floor(n/2)` -/
def P16610532510057401342.Spec : Prop :=
  ∀ n, P16610532510057401342.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P8627717840161815023

`ceil(C(n+2, 3)-n/2)`
-/

namespace A064843.P8627717840161815023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 3 : ℚ) - (n : ℚ) / 2⌉

end

end A064843.P8627717840161815023

namespace A064843

/-- `ceil(C(n+2, 3)-n/2)` -/
def P8627717840161815023.Spec : Prop :=
  ∀ n, P8627717840161815023.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P9442699998104246776

`round(C(n+2, 3)-n/2)`
-/

namespace A064843.P9442699998104246776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 3 : ℚ) - (n : ℚ) / 2)

end

end A064843.P9442699998104246776

namespace A064843

/-- `round(C(n+2, 3)-n/2)` -/
def P9442699998104246776.Spec : Prop :=
  ∀ n, P9442699998104246776.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P3949301492664506652

`∑[∑[n]-char[lcm(2, n+1)]]`
-/

namespace A064843.P3949301492664506652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064843.P3949301492664506652

namespace A064843

/-- `∑[∑[n]-char[lcm(2, n+1)]]` -/
def P3949301492664506652.Spec : Prop :=
  ∀ n, P3949301492664506652.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P7894267317915951626

`abs(∑[∑[n]+n%2]-n)`
-/

namespace A064843.P7894267317915951626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A064843.P7894267317915951626

namespace A064843

/-- `abs(∑[∑[n]+n%2]-n)` -/
def P7894267317915951626.Spec : Prop :=
  ∀ n, P7894267317915951626.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P9219172245420071840

`abs(∑[∑[n]+and(1, n)]-n)`
-/

namespace A064843.P9219172245420071840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A064843.P9219172245420071840

namespace A064843

/-- `abs(∑[∑[n]+and(1, n)]-n)` -/
def P9219172245420071840.Spec : Prop :=
  ∀ n, P9219172245420071840.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P13370917529055627291

`∑[∑[n]-a(∑[(-1)^n])]` with `a(0)=0`
-/

namespace A064843.P13370917529055627291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064843.P13370917529055627291

namespace A064843

/-- `∑[∑[n]-a(∑[(-1)^n])]` -/
def P13370917529055627291.Spec : Prop :=
  ∀ n, P13370917529055627291.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P13334322945484061117

`∑[∑[a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A064843.P13334322945484061117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064843.P13334322945484061117

namespace A064843

/-- `∑[∑[a(n-2)+2]]` -/
def P13334322945484061117.Spec : Prop :=
  ∀ n, (P13334322945484061117.a n : ℤ) = A064843 (n + 1)

end A064843

/-! ## A064843.P15562973321044482248

`floor(a(n-2)+n²-1)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A064843.P15562973321044482248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n ^ 2 : ℤ) - 1)

end

end A064843.P15562973321044482248

namespace A064843

/-- `floor(a(n-2)+n²-1)` -/
def P15562973321044482248.Spec : Prop :=
  ∀ n, P15562973321044482248.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P4875943694430254596

`floor(n²-(1-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A064843.P4875943694430254596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - (1 - a (n - 2))

end

end A064843.P4875943694430254596

namespace A064843

/-- `floor(n²-(1-a(n-2)))` -/
def P4875943694430254596.Spec : Prop :=
  ∀ n, P4875943694430254596.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P13461089106480172963

`∑[∑[∑[2-a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A064843.P13461089106480172963
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 3] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064843.P13461089106480172963

namespace A064843

/-- `∑[∑[∑[2-a(n-1)]]]` -/
def P13461089106480172963.Spec : Prop :=
  ∀ n, P13461089106480172963.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P17907641342148899025

`floor(n*n+a(n-2)-1)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A064843.P17907641342148899025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n * n : ℤ) + (a (n - 2) - 1)

end

end A064843.P17907641342148899025

namespace A064843

/-- `floor(n*n+a(n-2)-1)` -/
def P17907641342148899025.Spec : Prop :=
  ∀ n, P17907641342148899025.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P1206310473799853129

`n*((a(n-2)-1)/n+n)` with `a(0)=0, a(1)=1`
-/

namespace A064843.P1206310473799853129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * ((a (n - 2) - 1) / (n : ℚ) + (n : ℚ))

end

end A064843.P1206310473799853129

namespace A064843

/-- `n*((a(n-2)-1)/n+n)` -/
def P1206310473799853129.Spec : Prop :=
  ∀ n, P1206310473799853129.a n = (A064843 (n + 1) : ℚ)

end A064843

/-! ## A064843.P4895788229362751742

`n*(n-(1-a(n-2))/n)` with `a(0)=0, a(1)=1`
-/

namespace A064843.P4895788229362751742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * ((n : ℚ) - (1 - a (n - 2)) / (n : ℚ))

end

end A064843.P4895788229362751742

namespace A064843

/-- `n*(n-(1-a(n-2))/n)` -/
def P4895788229362751742.Spec : Prop :=
  ∀ n, P4895788229362751742.a n = (A064843 (n + 1) : ℚ)

end A064843

/-! ## A064843.P501352475783260627

`abs(a(n-2)+(n+1)*(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A064843.P501352475783260627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) + (n + 1 : ℤ) * ((n : ℤ) - 1)|

end

end A064843.P501352475783260627

namespace A064843

/-- `abs(a(n-2)+(n+1)*(n-1))` -/
def P501352475783260627.Spec : Prop :=
  ∀ n, P501352475783260627.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P9479254543534331623

`ceil(a(n-2)+(n+1)*(n-1))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A064843.P9479254543534331623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A064843.P9479254543534331623

namespace A064843

/-- `ceil(a(n-2)+(n+1)*(n-1))` -/
def P9479254543534331623.Spec : Prop :=
  ∀ n, P9479254543534331623.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P5467736471406477474

`round(a(n-2)+(n+1)*(n-1))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A064843.P5467736471406477474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A064843.P5467736471406477474

namespace A064843

/-- `round(a(n-2)+(n+1)*(n-1))` -/
def P5467736471406477474.Spec : Prop :=
  ∀ n, P5467736471406477474.a n = A064843 (n + 1)

end A064843

/-! ## A064843.P7188374044699967644

`floor((A084990(n)+1)/2)`
-/

namespace A064843.P7188374044699967644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084990 n + 1 : ℚ) / 2⌋

end

end A064843.P7188374044699967644

namespace A064843

/-- `floor((A084990(n)+1)/2)` -/
def P7188374044699967644.Spec : Prop :=
  ∀ n, P7188374044699967644.a n = A064843 (n + 1)

end A064843

/-!
# A064845: Let r_1 = 1; r_{n+1} = [r_1; r_2, r_3,..., r_n]; n-th term is numerator of r_n.

The programs for A064845, there is no canonical definition to state claims against.
-/

/-! ## A064845.P10145622931587201098

`A183884(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A064845.P10145622931587201098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A183884 (a (n - 1)).toNat

end

end A064845.P10145622931587201098

/-! ## A064845.P8951341337903322728

`A045671(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A064845.P8951341337903322728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A045671 (a (n - 1) ^ 2).toNat

end

end A064845.P8951341337903322728

/-!
# A064846: Let r_1 = 1; r_{n+1} = [r_1; r_2, r_3,..., r_n]; n-th term is denominator of r_n.

The programs for A064846, there is no canonical definition to state claims against.
-/

/-! ## A064846.P14253592695870980311

`A260109(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064846.P14253592695870980311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A260109 (a (n - 1) ^ 2).toNat

end

end A064846.P14253592695870980311

/-! ## A064846.P14864061843805915470

`6*A331043(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A064846.P14864061843805915470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  6 * A331043 (a (n - 1)).toNat

end

end A064846.P14864061843805915470

/-!
# A064847: Sequence a(n) such that there is a sequence b(n) with a(1) = b(1) = 1, a(n+1) = a(n) * b(n) and b(n+1) = a(n) + b(n) for n >= 1.

The programs for A064847, the canonical program `A064847.P969182412453794672` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064847 has offset 1).

The definition of A064847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064847.P969182412453794672

`a(n-1)*(a(n-1)/a(n-2)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064847

/-- `a(n-1)*(a(n-1)/a(n-2)+a(n-2))` -/
def P969182412453794672.Spec : Prop :=
  ∀ n, P969182412453794672.a n = (A064847 (n + 1) : ℚ)

end A064847

/-! ## A064847.P8561144730900609209

`lcm(a(n-1)+a(n-2)², a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A064847.P8561144730900609209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm (a (n - 1) + a (n - 2) ^ 2) (a (n - 1))

end

end A064847.P8561144730900609209

namespace A064847

/-- `lcm(a(n-1)+a(n-2)², a(n-1))` -/
def P8561144730900609209.Spec : Prop :=
  ∀ n, (P8561144730900609209.a n : ℤ) = A064847 (n + 1)

end A064847

/-! ## A064847.P12622582881168266957

`Δ[A003686(n+1)]`
-/

namespace A064847.P12622582881168266957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064847.P12622582881168266957

namespace A064847

/-- `Δ[A003686(n+1)]` -/
def P12622582881168266957.Spec : Prop :=
  ∀ n, P12622582881168266957.a n = A064847 (n + 1)

end A064847

/-! ## A064847.P1558912379286245765

`A094303(n+1)-char[1]`
-/

namespace A064847.P1558912379286245765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094303 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A064847.P1558912379286245765

namespace A064847

/-- `A094303(n+1)-char[1]` -/
def P1558912379286245765.Spec : Prop :=
  ∀ n, P1558912379286245765.a n = A064847 (n + 1)

end A064847

/-! ## A064847.P3336529274351344156

`a(n-1)*A003686(n)` with `a(0)=1`
-/

namespace A064847.P3336529274351344156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A003686 n

end

end A064847.P3336529274351344156

namespace A064847

/-- `a(n-1)*A003686(n)` -/
def P3336529274351344156.Spec : Prop :=
  ∀ n, P3336529274351344156.a n = A064847 (n + 1)

end A064847

/-!
# A064848: Period of continued fraction for sqrt(2)*n.

The programs for A064848, there is no canonical definition to state claims against.
-/

/-! ## A064848.P16773093455433440590

`A003285(2*(n+1)²)`
-/

namespace A064848.P16773093455433440590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (2 * (n + 1) ^ 2)

end

end A064848.P16773093455433440590

/-! ## A064848.P11793981649164005531

`A097853(2*(n+1)²)`
-/

namespace A064848.P11793981649164005531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (2 * (n + 1) ^ 2)

end

end A064848.P11793981649164005531

/-! ## A064848.P1755375025560846597

`A067280(2*(n+1)²)-1`
-/

namespace A064848.P1755375025560846597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (2 * (n + 1) ^ 2) - 1

end

end A064848.P1755375025560846597

/-! ## A064848.P12689937944416843891

`A003285(∑[4*n+2])%63`
-/

namespace A064848.P12689937944416843891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003285 (∑ j ∈ Finset.range (n + 1), f1 j)) 63

end

end A064848.P12689937944416843891

/-! ## A064848.P5668884313817331149

`∑{d}[A003285(∑[4*n+2]), A000010(#)]`
-/

namespace A064848.P5668884313817331149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A064848.P5668884313817331149

/-! ## A064848.P6599848436940632825

`∏{d}[A003285(∑[4*n+2]), A014963(#)]`
-/

namespace A064848.P6599848436940632825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A064848.P6599848436940632825

/-! ## A064848.P5439784874199666901

`A000041(C(2, n+2))*A003285(∑[4*n+2])`
-/

namespace A064848.P5439784874199666901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A003285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064848.P5439784874199666901

/-! ## A064848.P16873784527883787572

`A007318(C(2, 2*n))*A003285(∑[4*n+2])`
-/

namespace A064848.P16873784527883787572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A003285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064848.P16873784527883787572

/-! ## A064848.P8244687307665787214

`A000203(gcd(n, n+1))*A003285(∑[4*n+2])`
-/

namespace A064848.P8244687307665787214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A003285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064848.P8244687307665787214

/-! ## A064848.P11948074552319170716

`A000045(A020639(2*(n+1)))*A003285(∑[4*n+2])`
-/

namespace A064848.P11948074552319170716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A003285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064848.P11948074552319170716

/-!
# A064849: Period of continued fraction for sqrt(3)*n.

The programs for A064849, there is no canonical definition to state claims against.
-/

/-! ## A064849.P6805596692517356944

`A003285(3*(n+1)²)`
-/

namespace A064849.P6805596692517356944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (3 * (n + 1) ^ 2)

end

end A064849.P6805596692517356944

/-! ## A064849.P38095648831538522

`A097853(3*(n+1)²)`
-/

namespace A064849.P38095648831538522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (3 * (n + 1) ^ 2)

end

end A064849.P38095648831538522

/-! ## A064849.P11552712088462983437

`A067280(3*(n+1)²)-1`
-/

namespace A064849.P11552712088462983437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (3 * (n + 1) ^ 2) - 1

end

end A064849.P11552712088462983437

/-! ## A064849.P15318949936643148604

`lcm(2, A097853(∑[6*n+3]))`
-/

namespace A064849.P15318949936643148604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A097853 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A064849.P15318949936643148604

/-! ## A064849.P15860765466309620868

`A028310(A097853(∑[6*n+3]))`
-/

namespace A064849.P15860765466309620868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A097853 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064849.P15860765466309620868

/-! ## A064849.P9957634634471176309

`A028310(A003285((n+1)*3*(n+1)))`
-/

namespace A064849.P9957634634471176309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003285 ((n + 1) * (3 * (n + 1)))).toNat

end

end A064849.P9957634634471176309

/-! ## A064849.P16872504613452758722

`A007318(∑[n])*A097853(∑[6*n+3])`
-/

namespace A064849.P16872504613452758722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A097853 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A064849.P16872504613452758722

/-! ## A064849.P1117741768846175535

`A097853(∑[6*n+3])%A000041(n+3)`
-/

namespace A064849.P1117741768846175535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 (n + 3))

end

end A064849.P1117741768846175535

/-! ## A064849.P6067906938905325889

`A000041(C(2, n+2))*A097853(∑[6*n+3])`
-/

namespace A064849.P6067906938905325889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A097853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064849.P6067906938905325889

/-! ## A064849.P1448033328489312152

`A000041(floor(1/(n+1)))*A097853(∑[6*n+3])`
-/

namespace A064849.P1448033328489312152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A097853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064849.P1448033328489312152

/-!
# A064850: Period of continued fraction for sqrt(5)*n.

The programs for A064850, there is no canonical definition to state claims against.
-/

/-! ## A064850.P1335404420649114023

`A290013(2*(n+1))`
-/

namespace A064850.P1335404420649114023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290013 (2 * (n + 1))

end

end A064850.P1335404420649114023

/-! ## A064850.P12179217643642882091

`A290013(A016789(n)-n)%A234692(n)`
-/

namespace A064850.P12179217643642882091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290013 (A016789 n - (n : ℤ)).toNat) (A234692 n)

end

end A064850.P12179217643642882091

/-! ## A064850.P14735705577100813108

`lcm(A033999(n), A290013(A016789(n)-n))`
-/

namespace A064850.P14735705577100813108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A290013 (A016789 n - (n : ℤ)).toNat)

end

end A064850.P14735705577100813108

/-! ## A064850.P17624884138084803553

`A000034(2*n)*A290013(A016789(n)-n)`
-/

namespace A064850.P17624884138084803553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A290013 (A016789 n - (n : ℤ)).toNat

end

end A064850.P17624884138084803553

/-! ## A064850.P17827908566778682106

`A270870(n)%2*A290013(A016789(n)-n)`
-/

namespace A064850.P17827908566778682106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270870 n) 2 * A290013 (A016789 n - (n : ℤ)).toNat

end

end A064850.P17827908566778682106

/-! ## A064850.P10215127859594222598

`A290013(A016789(n)-n)/A000265(n+1)%2`
-/

namespace A064850.P10215127859594222598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290013 (A016789 n - (n : ℤ)).toNat : ℚ) / (Int.tmod (A000265 (n + 1)) 2 : ℚ)

end

end A064850.P10215127859594222598

/-!
# A064851: Period of continued fraction for sqrt(6)*n.

The programs for A064851, there is no canonical definition to state claims against.
-/

/-! ## A064851.P10264666344946790589

`A003285(6*(n+1)²)`
-/

namespace A064851.P10264666344946790589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (6 * (n + 1) ^ 2)

end

end A064851.P10264666344946790589

/-! ## A064851.P17739752584178765710

`A097853(6*(n+1)²)`
-/

namespace A064851.P17739752584178765710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (6 * (n + 1) ^ 2)

end

end A064851.P17739752584178765710

/-! ## A064851.P12124363978900280983

`A067280(6*(n+1)²)-1`
-/

namespace A064851.P12124363978900280983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (6 * (n + 1) ^ 2) - 1

end

end A064851.P12124363978900280983

/-! ## A064851.P7738978923891953781

`lcm(2, A003285(∑[12*n+6]))`
-/

namespace A064851.P7738978923891953781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A003285 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A064851.P7738978923891953781

/-! ## A064851.P3544277949840039102

`A007318(∑[n])*A003285(∑[12*n+6])`
-/

namespace A064851.P3544277949840039102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A003285 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A064851.P3544277949840039102

/-!
# A064852: Number of orbits in A002619 consisting of n permutations.

The programs for A064852, there is no canonical definition to state claims against.
-/

/-! ## A064852.P3585598153052444757

`A325956(n+1)/(n+1)`
-/

namespace A064852.P3585598153052444757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325956 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A064852.P3585598153052444757

/-! ## A064852.P1225358720480126675

`A047919(∑[n+1])/(n+1)`
-/

namespace A064852.P1225358720480126675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047919 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A064852.P1225358720480126675

/-! ## A064852.P15854891824850989878

`floor(A047919(A000217(n+1))/(n+1))`
-/

namespace A064852.P15854891824850989878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047919 (A000217 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A064852.P15854891824850989878

/-! ## A064852.P1077528958436051925

`round(A047919(A000096(n)+1)/(n+1))`
-/

namespace A064852.P1077528958436051925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047919 (A000096 n + 1).toNat : ℚ) / (n + 1 : ℚ))

end

end A064852.P1077528958436051925

/-! ## A064852.P16906011745195380981

`A047918(∑[n+1])/(n+1)²`
-/

namespace A064852.P16906011745195380981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A064852.P16906011745195380981

/-!
# A064854: a(n) = ((5^n mod 4^n) mod 3^n) mod 2^n.

The programs for A064854, the canonical program `A064854.P2270640745282534819` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064854 has offset 1).

The definition of A064854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064854.P2270640745282534819

`(((5^(n+1))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064854

/-- `(((5^(n+1))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))` -/
def P2270640745282534819.Spec : Prop :=
  ∀ n, (P2270640745282534819.a n : ℤ) = A064854 (n + 1)

theorem P2270640745282534819.correct : P2270640745282534819.Spec := by
  intro n
  simp only [A064854, Nat.add_sub_cancel]

end A064854

/-!
# A064855: a(n) = (((6^n mod 5^n) mod 4^n) mod 3^n) mod 2^n.

The programs for A064855, the canonical program `A064855.P14315810281932359240` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064855 has offset 1).

The definition of A064855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064855.P14315810281932359240

`((((6^(n+1))%(5^(n+1)))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064855

/-- `((((6^(n+1))%(5^(n+1)))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))` -/
def P14315810281932359240.Spec : Prop :=
  ∀ n, (P14315810281932359240.a n : ℤ) = A064855 (n + 1)

theorem P14315810281932359240.correct : P14315810281932359240.Spec := by
  intro n
  simp only [A064855, Nat.add_sub_cancel]

end A064855

/-!
# A064856: Stirling transform of Catalan numbers: a(n) = Sum_{k=0..n} Stirling2(n, k)*binomial(2*k, k) / (k+1).

The programs for A064856, there is no canonical definition to state claims against.
-/

/-! ## A064856.P14214170400396501672

`A278057(A323290(n))`
-/

namespace A064856.P14214170400396501672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278057 (A323290 n).toNat

end

end A064856.P14214170400396501672

/-! ## A064856.P14955377204154755071

`A211964(A055588(n))-n`
-/

namespace A064856.P14955377204154755071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A055588 n).toNat - (n : ℤ)

end

end A064856.P14955377204154755071

/-!
# A064857: Numerators of partial sums of reciprocals of lcm(1..n) = A003418(n).

The programs for A064857, the canonical program `A064857.P14259746257036142487` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064857 has offset 1).

The definition of A064857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064857.P14259746257036142487

`A120109(n)/gcd(A003418(n), A120109(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064857

/-- `A120109(n)/gcd(A003418(n), A120109(n))` -/
def P14259746257036142487.Spec : Prop :=
  ∀ n, P14259746257036142487.a n = (A064857 (n + 1) : ℚ)

end A064857

/-! ## A064857.P9969631156478433885

`A006530(A120109(n)²)`
-/

namespace A064857.P9969631156478433885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A120109 n ^ 2).toNat

end

end A064857.P9969631156478433885

namespace A064857

/-- `A006530(A120109(n)²)` -/
def P9969631156478433885.Spec : Prop :=
  ∀ n, P9969631156478433885.a n = A064857 (n + 1)

end A064857

/-!
# A064860: Period of continued fraction for sqrt(7)*n.

The programs for A064860, there is no canonical definition to state claims against.
-/

/-! ## A064860.P1068901302101750858

`A003285(7*(n+1)²)`
-/

namespace A064860.P1068901302101750858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (7 * (n + 1) ^ 2)

end

end A064860.P1068901302101750858

/-! ## A064860.P12143825164883962198

`A097853(7*(n+1)²)`
-/

namespace A064860.P12143825164883962198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (7 * (n + 1) ^ 2)

end

end A064860.P12143825164883962198

/-! ## A064860.P10956953072221197864

`A067280(7*(n+1)²)-1`
-/

namespace A064860.P10956953072221197864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (7 * (n + 1) ^ 2) - 1

end

end A064860.P10956953072221197864

/-! ## A064860.P5966395209047730419

`A028310(A003285((n+1)*7*(n+1)))`
-/

namespace A064860.P5966395209047730419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003285 ((n + 1) * (7 * (n + 1)))).toNat

end

end A064860.P5966395209047730419

/-!
# A064861: Triangle of Sulanke numbers: T(n,k) = T(n,k-1) + a(n-1,k) for n+k even and a(n,k) = a(n,k-1) + 2*a(n-1,k) for n+k odd.

The programs for A064861, there is no canonical definition to state claims against.
-/

/-! ## A064861.P373510921483289282

`A285189(A062196(n)-char[5])`
-/

namespace A064861.P373510921483289282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A062196 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A064861.P373510921483289282

/-! ## A064861.P15548595826891491920

`A023416(A142963(n+1)²+5)`
-/

namespace A064861.P15548595826891491920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A142963 (n + 1) ^ 2 + 5).toNat

end

end A064861.P15548595826891491920

/-! ## A064861.P17007777040616640064

`A070939(A112356(n))-A337690(n+1)`
-/

namespace A064861.P17007777040616640064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A112356 n).toNat - A337690 (n + 1)

end

end A064861.P17007777040616640064

/-! ## A064861.P9188205980260154756

`A001227(A108558(n)*A173020(n+1))`
-/

namespace A064861.P9188205980260154756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A108558 n * A173020 (n + 1)).toNat

end

end A064861.P9188205980260154756

/-! ## A064861.P3289740177264962332

`A177878(A085852(n)*A183137(n+1))`
-/

namespace A064861.P3289740177264962332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177878 (A085852 n * A183137 (n + 1)).toNat

end

end A064861.P3289740177264962332

/-!
# A064862: Period of continued fraction for sqrt(10)*n.

The programs for A064862, there is no canonical definition to state claims against.
-/

/-! ## A064862.P13268972748076187488

`A003285(10*(n+1)²)`
-/

namespace A064862.P13268972748076187488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (10 * (n + 1) ^ 2)

end

end A064862.P13268972748076187488

/-! ## A064862.P13427237501250803326

`A097853(10*(n+1)²)`
-/

namespace A064862.P13427237501250803326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (10 * (n + 1) ^ 2)

end

end A064862.P13427237501250803326

/-! ## A064862.P14617991385862808735

`A067280(10*(n+1)²)-1`
-/

namespace A064862.P14617991385862808735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (10 * (n + 1) ^ 2) - 1

end

end A064862.P14617991385862808735

/-!
# A064863: Period of continued fraction for sqrt(11)*n.

The programs for A064863, there is no canonical definition to state claims against.
-/

/-! ## A064863.P4975502574191668493

`A003285(11*(n+1)²)`
-/

namespace A064863.P4975502574191668493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (11 * (n + 1) ^ 2)

end

end A064863.P4975502574191668493

/-! ## A064863.P9677206480630072302

`A097853(11*(n+1)²)`
-/

namespace A064863.P9677206480630072302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (11 * (n + 1) ^ 2)

end

end A064863.P9677206480630072302

/-! ## A064863.P10088173170300108084

`abs(2-A067280(11*(n+1)²))+1`
-/

namespace A064863.P10088173170300108084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A067280 (11 * (n + 1) ^ 2)| + 1

end

end A064863.P10088173170300108084

/-!
# A064864: Period of continued fraction for sqrt(13)*n.

The programs for A064864, there is no canonical definition to state claims against.
-/

/-! ## A064864.P2822077138169704343

`A003285(13*(n+1)²)`
-/

namespace A064864.P2822077138169704343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (13 * (n + 1) ^ 2)

end

end A064864.P2822077138169704343

/-! ## A064864.P6976886516571179231

`A097853(13*(n+1)²)`
-/

namespace A064864.P6976886516571179231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (13 * (n + 1) ^ 2)

end

end A064864.P6976886516571179231

/-!
# A064865: Fill a triangular array by rows by writing numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on. The final elements of the rows form the sequence.

The programs for A064865, the canonical program `A064865.P16846928706753949874` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064865 has offset 1).

The definition of A064865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064865.P16846928706753949874

`A064866(∑[n+1])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064865

/-- `A064866(∑[n+1])` -/
def P16846928706753949874.Spec : Prop :=
  ∀ n, P16846928706753949874.a n = A064865 (n + 1)

theorem P16846928706753949874.correct : P16846928706753949874.Spec := by
  intro n
  simp only [A064865, Nat.add_sub_cancel]

end A064865

/-! ## A064865.P11892104673879147646

`A064866(A000217(n+1))%A360417(n)`
-/

namespace A064865.P11892104673879147646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064866 (A000217 (n + 1)).toNat) (A360417 n)

end

end A064865.P11892104673879147646

namespace A064865

/-- `A064866(A000217(n+1))%A360417(n)` -/
def P11892104673879147646.Spec : Prop :=
  ∀ n, P11892104673879147646.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P7030570476784887637

`A064866(A008805(2*n))+A000007(n+2)`
-/

namespace A064865.P7030570476784887637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A008805 (2 * n)).toNat + A000007 (n + 2)

end

end A064865.P7030570476784887637

namespace A064865

/-- `A064866(A008805(2*n))+A000007(n+2)` -/
def P7030570476784887637.Spec : Prop :=
  ∀ n, P7030570476784887637.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P17241356766142849247

`A064866(A161680(n+2))%A074924(n+1)`
-/

namespace A064865.P17241356766142849247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064866 (A161680 (n + 2)).toNat) (A074924 (n + 1))

end

end A064865.P17241356766142849247

namespace A064865

/-- `A064866(A161680(n+2))%A074924(n+1)` -/
def P17241356766142849247.Spec : Prop :=
  ∀ n, P17241356766142849247.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P4644078541556814495

`A064866(A008805(2*n))%A080774(n+1)`
-/

namespace A064865.P4644078541556814495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064866 (A008805 (2 * n)).toNat) (A080774 (n + 1))

end

end A064865.P4644078541556814495

namespace A064865

/-- `A064866(A008805(2*n))%A080774(n+1)` -/
def P4644078541556814495.Spec : Prop :=
  ∀ n, P4644078541556814495.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P672763142298110936

`A064866(A161680(n+2))-A033999(n)²+1`
-/

namespace A064865.P672763142298110936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A161680 (n + 2)).toNat - A033999 n ^ 2 + 1

end

end A064865.P672763142298110936

namespace A064865

/-- `A064866(A161680(n+2))-A033999(n)²+1` -/
def P672763142298110936.Spec : Prop :=
  ∀ n, P672763142298110936.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P11207189250893989424

`A064866(A161680(n+2))-A332433(n)²+1`
-/

namespace A064865.P11207189250893989424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A161680 (n + 2)).toNat - A332433 n ^ 2 + 1

end

end A064865.P11207189250893989424

namespace A064865

/-- `A064866(A161680(n+2))-A332433(n)²+1` -/
def P11207189250893989424.Spec : Prop :=
  ∀ n, P11207189250893989424.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P17290586184282402463

`A064866(A000217(n+1))+A007814(2*n+1)`
-/

namespace A064865.P17290586184282402463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A000217 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A064865.P17290586184282402463

namespace A064865

/-- `A064866(A000217(n+1))+A007814(2*n+1)` -/
def P17290586184282402463.Spec : Prop :=
  ∀ n, P17290586184282402463.a n = A064865 (n + 1)

end A064865

/-! ## A064865.P7552304047304262893

`A064866(A000217(n+1))+A019590(2*(n+2))`
-/

namespace A064865.P7552304047304262893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A000217 (n + 1)).toNat + A019590 (2 * (n + 2))

end

end A064865.P7552304047304262893

namespace A064865

/-- `A064866(A000217(n+1))+A019590(2*(n+2))` -/
def P7552304047304262893.Spec : Prop :=
  ∀ n, P7552304047304262893.a n = A064865 (n + 1)

end A064865

/-!
# A064866: Write numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on.

The programs for A064866, the canonical program `A064866.P4672307026795007307` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064866 has offset 1).

The definition of A064866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064866.P9003634284691910257

`A237451(n+1)+A237452(n+1)*A074279(n+1)+1`
-/

namespace A064866.P9003634284691910257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1) + A237452 (n + 1) * A074279 (n + 1) + 1

end

end A064866.P9003634284691910257

namespace A064866

/-- `A237451(n+1)+A237452(n+1)*A074279(n+1)+1` -/
def P9003634284691910257.Spec : Prop :=
  ∀ n, P9003634284691910257.a n = A064866 (n + 1)

end A064866

/-! ## A064866.P742055638295108105

`abs((char[∑[n²]]-1)*a(n-1))+1` with `a(0)=1`
-/

namespace A064866.P742055638295108105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) * a (n - 1)| + 1

end

end A064866.P742055638295108105

namespace A064866

/-- `abs((char[∑[n²]]-1)*a(n-1))+1` -/
def P742055638295108105.Spec : Prop :=
  ∀ n, P742055638295108105.a n = A064866 (n + 1)

end A064866

/-! ## A064866.P16510617701208127686

`1-A000330(∑[char[∑[(n+1)²]]])+n`
-/

namespace A064866.P16510617701208127686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000330 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A064866.P16510617701208127686

namespace A064866

/-- `1-A000330(∑[char[∑[(n+1)²]]])+n` -/
def P16510617701208127686.Spec : Prop :=
  ∀ n, P16510617701208127686.a n = A064866 (n + 1)

end A064866

/-! ## A064866.P4672307026795007307

`A345018(n+1)+1-A074279(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064866

/-- `A345018(n+1)+1-A074279(n+1)` -/
def P4672307026795007307.Spec : Prop :=
  ∀ n, P4672307026795007307.a n = A064866 (n + 1)

theorem P4672307026795007307.correct : P4672307026795007307.Spec := by
  intro n
  simp only [A064866, Nat.add_sub_cancel]

end A064866

/-! ## A064866.P4486071377614963908

`n+1-A000330(A074279(n+1)-1)`
-/

namespace A064866.P4486071377614963908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000330 (A074279 (n + 1) - 1).toNat

end

end A064866.P4486071377614963908

namespace A064866

/-- `n+1-A000330(A074279(n+1)-1)` -/
def P4486071377614963908.Spec : Prop :=
  ∀ n, P4486071377614963908.a n = A064866 (n + 1)

end A064866

/-! ## A064866.P7368471225157073104

`A121997(n+1)+A074279(n+1)*A237452(n+1)`
-/

namespace A064866.P7368471225157073104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1) + A074279 (n + 1) * A237452 (n + 1)

end

end A064866.P7368471225157073104

namespace A064866

/-- `A121997(n+1)+A074279(n+1)*A237452(n+1)` -/
def P7368471225157073104.Spec : Prop :=
  ∀ n, P7368471225157073104.a n = A064866 (n + 1)

end A064866

/-! ## A064866.P16125187750951948276

`gcd(a(n-1)+1, A332497(A331984(n)))` with `a(0)=1`
-/

namespace A064866.P16125187750951948276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A332497 (A331984 n).toNat)

end

end A064866.P16125187750951948276

namespace A064866

/-- `gcd(a(n-1)+1, A332497(A331984(n)))` -/
def P16125187750951948276.Spec : Prop :=
  ∀ n, (P16125187750951948276.a n : ℤ) = A064866 (n + 1)

end A064866

/-! ## A064866.P12547725408584791920

`A074279(n+1)²+1-A253902(n+1)`
-/

namespace A064866.P12547725408584791920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) ^ 2 + (1 - A253902 (n + 1))

end

end A064866.P12547725408584791920

namespace A064866

/-- `A074279(n+1)²+1-A253902(n+1)` -/
def P12547725408584791920.Spec : Prop :=
  ∀ n, P12547725408584791920.a n = A064866 (n + 1)

end A064866

/-!
# A064867: The minimal number which has multiplicative persistence 3 in base n.

The programs for A064867, the canonical program `A064867.P322936720118734139` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064867 has offset 3).

The definition of A064867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064867.P322936720118734139

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=26, a(1)=63, a(2)=68, a(3)=23, a(4)=27, a(5)=31, a(6)=35, a(7)=39, a(8)=43, a(9)=46`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064867

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P322936720118734139.Spec : Prop :=
  ∀ n, P322936720118734139.a n = A064867 (n + 3)

theorem P322936720118734139.correct : P322936720118734139.Spec := by
  intro n
  simp only [A064867, Nat.add_sub_cancel]

end A064867

/-!
# A064873: First of four sequences representing the lexicographical minimal decomposition of n in 4 squares: n = a(n)^2 + A064874(n)^2 + A064875(n)^2 + A064876(n)^2.

The programs for A064873, there is no canonical definition to state claims against.
-/

/-! ## A064873.P13673326591393100149

`A064874(n-A064874(n)²)`
-/

namespace A064873.P13673326591393100149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 ((n : ℤ) - A064874 n ^ 2).toNat

end

end A064873.P13673326591393100149

/-! ## A064873.P4333967601384784154

`A064874(n-A064874(n)*A064874(n))`
-/

namespace A064873.P4333967601384784154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 ((n : ℤ) - A064874 n * A064874 n).toNat

end

end A064873.P4333967601384784154

/-!
# A064874: Second of four sequences representing the lexicographical minimal decomposition of n in 4 squares: n = A064873(n)^2 + a(n)^2 + A064875(n)^2 + A064876(n)^2.

The programs for A064874, there is no canonical definition to state claims against.
-/

/-! ## A064874.P13739898782761218973

`A064875(n-A064875(n)²)`
-/

namespace A064874.P13739898782761218973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 ((n : ℤ) - A064875 n ^ 2).toNat

end

end A064874.P13739898782761218973

/-! ## A064874.P1521497083391968979

`A375202(n-A064873(n)²)`
-/

namespace A064874.P1521497083391968979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 ((n : ℤ) - A064873 n ^ 2).toNat

end

end A064874.P1521497083391968979

/-! ## A064874.P1722714780932008020

`A064875(n-A000290(A064875(n)))`
-/

namespace A064874.P1722714780932008020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 ((n : ℤ) - A000290 (A064875 n).toNat).toNat

end

end A064874.P1722714780932008020

/-! ## A064874.P9452195651782804776

`val(A054842(A259372(n)%A005994(n²)), 5)`
-/

namespace A064874.P9452195651782804776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (Int.tmod (A259372 n) (A005994 (n ^ 2))).toNat).toNat 5

end

end A064874.P9452195651782804776

/-! ## A064874.P15544060626380855394

`val(A054842(A259372(n)+A000038(n²+1)), 5)`
-/

namespace A064874.P15544060626380855394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (A259372 n + A000038 (n ^ 2 + 1)).toNat).toNat 5

end

end A064874.P15544060626380855394

/-! ## A064874.P4531446852323225766

`val(A054842(A259372(n)+A005369((n+1)²)), 5)`
-/

namespace A064874.P4531446852323225766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (A259372 n + A005369 ((n + 1) ^ 2)).toNat).toNat 5

end

end A064874.P4531446852323225766

/-!
# A064875: Third of four sequences representing the lexicographical minimal decomposition of n in four squares: n = A064873(n)^2 + A064874(n)^2 + a(n)^2 + A064876(n)^2.

The programs for A064875, there is no canonical definition to state claims against.
-/

/-! ## A064875.P3495628642767016179

`A064876(n-A064876(n)²)`
-/

namespace A064875.P3495628642767016179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 ((n : ℤ) - A064876 n ^ 2).toNat

end

end A064875.P3495628642767016179

/-! ## A064875.P4577554836156594309

`A064876(n-A000290(A064876(n)))`
-/

namespace A064875.P4577554836156594309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 ((n : ℤ) - A000290 (A064876 n).toNat).toNat

end

end A064875.P4577554836156594309

/-! ## A064875.P5689858705330589126

`A064876(n-A064876(n)*A064876(n))`
-/

namespace A064875.P5689858705330589126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 ((n : ℤ) - A064876 n * A064876 n).toNat

end

end A064875.P5689858705330589126

/-! ## A064875.P12141605838014903477

`val(A054842(A259372(n)%A005994(n²)), 3)`
-/

namespace A064875.P12141605838014903477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (Int.tmod (A259372 n) (A005994 (n ^ 2))).toNat).toNat 3

end

end A064875.P12141605838014903477

/-! ## A064875.P18078470724268388475

`val(A054842(A259372(n)+A000038(n²+1)), 3)`
-/

namespace A064875.P18078470724268388475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (A259372 n + A000038 (n ^ 2 + 1)).toNat).toNat 3

end

end A064875.P18078470724268388475

/-! ## A064875.P827668713068719658

`val(A054842(A259372(n)+A005369((n+1)²)), 3)`
-/

namespace A064875.P827668713068719658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054842 (A259372 n + A005369 ((n + 1) ^ 2)).toNat).toNat 3

end

end A064875.P827668713068719658

/-! ## A064875.P4293990330015105429

`A054055(A055016(n)-(A055016(n)%A102698(n+1))%10)`
-/

namespace A064875.P4293990330015105429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A055016 n - Int.tmod (Int.tmod (A055016 n) (A102698 (n + 1))) 10).toNat

end

end A064875.P4293990330015105429

/-!
# A064876: Last of four sequences representing the lexicographical minimal decomposition of n in 4 squares: n = A064873(n)^2 + A064874(n)^2 + A064875(n)^2 + a(n)^2.

The programs for A064876, there is no canonical definition to state claims against.
-/

/-! ## A064876.P5167948540036255600

`A262689(n-A064875(n)²)`
-/

namespace A064876.P5167948540036255600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((n : ℤ) - A064875 n ^ 2).toNat

end

end A064876.P5167948540036255600

/-! ## A064876.P9219740182937545249

`A262689(n-A000290(A064875(n)))`
-/

namespace A064876.P9219740182937545249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((n : ℤ) - A000290 (A064875 n).toNat).toNat

end

end A064876.P9219740182937545249

/-! ## A064876.P12730259220238402858

`A259372(A000194(n²))%10`
-/

namespace A064876.P12730259220238402858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 (A000194 (n ^ 2)).toNat) 10

end

end A064876.P12730259220238402858

/-! ## A064876.P6976384652285511881

`A259372(A053615(n²))%10`
-/

namespace A064876.P6976384652285511881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 (A053615 (n ^ 2)).toNat) 10

end

end A064876.P6976384652285511881

/-! ## A064876.P18324485635681723825

`A259372(A279211(∑[n]))%10`
-/

namespace A064876.P18324485635681723825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 (A279211 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) 10

end

end A064876.P18324485635681723825

/-! ## A064876.P6531044065677244092

`A259372(lcm(n, A118759(n)))%10`
-/

namespace A064876.P6531044065677244092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 (Int.lcm (n : ℤ) (A118759 n))) 10

end

end A064876.P6531044065677244092

/-! ## A064876.P8171206016204027557

`A259372(A259361((n+1)²))%10`
-/

namespace A064876.P8171206016204027557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 (A259361 ((n + 1) ^ 2)).toNat) 10

end

end A064876.P8171206016204027557

/-! ## A064876.P7978965481940894912

`(A259372(n)%A005994(n²))%10`
-/

namespace A064876.P7978965481940894912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A259372 n) (A005994 (n ^ 2))) 10

end

end A064876.P7978965481940894912

/-! ## A064876.P5036822469147603726

`(A055016(n)%A102698(n+1))%10`
-/

namespace A064876.P5036822469147603726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A055016 n) (A102698 (n + 1))) 10

end

end A064876.P5036822469147603726

/-! ## A064876.P9442199130752418536

`A054055(A055016(n)%A102698(n+1))`
-/

namespace A064876.P9442199130752418536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (Int.tmod (A055016 n) (A102698 (n + 1))).toNat

end

end A064876.P9442199130752418536

/-! ## A064876.P6473603647778983190

`A054055(A055016(n))+A000038((n+1)²)`
-/

namespace A064876.P6473603647778983190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A055016 n).toNat + A000038 ((n + 1) ^ 2)

end

end A064876.P6473603647778983190

/-! ## A064876.P2175309328139107057

`A054055(A055016(n))*A055491((n+1)²)`
-/

namespace A064876.P2175309328139107057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A055016 n).toNat * A055491 ((n + 1) ^ 2)

end

end A064876.P2175309328139107057

/-! ## A064876.P7224518412837826793

`A054055(A055016(n))+A000007(A002522(n))`
-/

namespace A064876.P7224518412837826793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A055016 n).toNat + A000007 (A002522 n).toNat

end

end A064876.P7224518412837826793

/-!
# A064877: a(n) = n - (A064873(n) + A064874(n) + A064875(n) + A064876(n)).

The programs for A064877, there is no canonical definition to state claims against.
-/

/-! ## A064877.P10445936134799527470

`n-(A064873(n)+A064874(n)+A064875(n)+A064876(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064877.P10445936134799527470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A064873 n + A064874 n + A064875 n + A064876 n)

end

end A064877.P10445936134799527470

/-! ## A064877.P3373573510398859251

`n-A007953(A055016(n)^A304042(n))`
-/

namespace A064877.P3373573510398859251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (SequenceMachineLib.roundAway ((A055016 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A064877.P3373573510398859251

/-! ## A064877.P9188194495169313318

`n-A007953(A259372(n)^A304042(n))`
-/

namespace A064877.P9188194495169313318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (SequenceMachineLib.roundAway ((A259372 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A064877.P9188194495169313318

/-! ## A064877.P3639747711418910572

`n-A326746(A055016(n)^A304042(n))`
-/

namespace A064877.P3639747711418910572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326746 (SequenceMachineLib.roundAway ((A055016 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A064877.P3639747711418910572

/-! ## A064877.P6085310264903539974

`n-∑{digits}[A259372(n), #]%A014418(A270181(n))`
-/

namespace A064877.P6085310264903539974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A014418 (A270181 n).toNat)

end

end A064877.P6085310264903539974

/-!
# A064879: Triangle of numbers composed of certain generalized Catalan numbers.

The programs for A064879, there is no canonical definition to state claims against.
-/

/-! ## A064879.P6060445331286648462

`A005136(A331278(n))*A155586(n)`
-/

namespace A064879.P6060445331286648462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A331278 n).toNat * A155586 n

end

end A064879.P6060445331286648462

/-! ## A064879.P9982497119035655744

`A005136(A331160(n)²)*A155586(n)`
-/

namespace A064879.P9982497119035655744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A331160 n ^ 2).toNat * A155586 n

end

end A064879.P9982497119035655744

/-! ## A064879.P16287178827227930168

`A181196(n+1)-A058276(A331160(n))`
-/

namespace A064879.P16287178827227930168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (n + 1) - A058276 (A331160 n).toNat

end

end A064879.P16287178827227930168

/-! ## A064879.P7186104700229245152

`A181196(n+1)-A058276(A331570(n))`
-/

namespace A064879.P7186104700229245152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (n + 1) - A058276 (A331570 n).toNat

end

end A064879.P7186104700229245152

/-! ## A064879.P10651196110007922502

`A005136(2*A331160(n))*A155586(n)`
-/

namespace A064879.P10651196110007922502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (2 * A331160 n).toNat * A155586 n

end

end A064879.P10651196110007922502

/-!
# A064880: Row sums of triangle A064879.

The programs for A064880, there is no canonical definition to state claims against.
-/

/-! ## A064880.P15948043917112472969

`A090735(A125052(n)+A090725(n+1))`
-/

namespace A064880.P15948043917112472969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A125052 n + A090725 (n + 1)).toNat

end

end A064880.P15948043917112472969

/-! ## A064880.P606542784990706173

`A127763(A261082(n)+A192995(n+1))`
-/

namespace A064880.P606542784990706173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A261082 n + A192995 (n + 1)).toNat

end

end A064880.P606542784990706173

/-! ## A064880.P8740293836524422705

`A127763(A349060(n)+A192995(n+1))`
-/

namespace A064880.P8740293836524422705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A349060 n + A192995 (n + 1)).toNat

end

end A064880.P8740293836524422705

/-!
# A064881: Eisenstein array Ei(1,2).

The programs for A064881, there is no canonical definition to state claims against.
-/

/-! ## A064881.P5098519229620940535

`A049456(n+1)+A049455(n+1)`
-/

namespace A064881.P5098519229620940535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + A049455 (n + 1)

end

end A064881.P5098519229620940535

/-! ## A064881.P12321065988738395155

`A064883(n+1)-A049455(n+1)`
-/

namespace A064881.P12321065988738395155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064883 (n + 1) - A049455 (n + 1)

end

end A064881.P12321065988738395155

/-! ## A064881.P18120233173786890875

`A064886(n+1)-A049456(n+1)`
-/

namespace A064881.P18120233173786890875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - A049456 (n + 1)

end

end A064881.P18120233173786890875

/-! ## A064881.P5372824506961605056

`A070878(n)+2*A049455(n+1)`
-/

namespace A064881.P5372824506961605056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + 2 * A049455 (n + 1)

end

end A064881.P5372824506961605056

/-! ## A064881.P12012578868086036489

`2*A049456(n+1)-A070878(n)`
-/

namespace A064881.P12012578868086036489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049456 (n + 1) - A070878 n

end

end A064881.P12012578868086036489

/-! ## A064881.P16192850698147286332

`(A064883(n+1)+A049456(n+1))/2`
-/

namespace A064881.P16192850698147286332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064883 (n + 1) + A049456 (n + 1) : ℚ) / 2

end

end A064881.P16192850698147286332

/-! ## A064881.P7319399007441663353

`(A064886(n+1)+A049455(n+1))/2`
-/

namespace A064881.P7319399007441663353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064886 (n + 1) + A049455 (n + 1) : ℚ) / 2

end

end A064881.P7319399007441663353

/-! ## A064881.P4910927403499920460

`3*A049456(n+1)-A064882(n+1)`
-/

namespace A064881.P4910927403499920460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049456 (n + 1) - A064882 (n + 1)

end

end A064881.P4910927403499920460

/-! ## A064881.P11706586201350736648

`A070878(n)+A005843(A049455(n+1))`
-/

namespace A064881.P11706586201350736648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A005843 (A049455 (n + 1)).toNat

end

end A064881.P11706586201350736648

/-! ## A064881.P10658010827884352244

`A004277(A049456(n+1))-A070878(n)`
-/

namespace A064881.P10658010827884352244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049456 (n + 1)).toNat - A070878 n

end

end A064881.P10658010827884352244

/-! ## A064881.P17423854573174838708

`A008486(A049456(n+1))-A064882(n+1)`
-/

namespace A064881.P17423854573174838708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A049456 (n + 1)).toNat - A064882 (n + 1)

end

end A064881.P17423854573174838708

/-! ## A064881.P3064013503432109906

`A049455(n+1)+A002487(A103354(n+2))`
-/

namespace A064881.P3064013503432109906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + A002487 (A103354 (n + 2)).toNat

end

end A064881.P3064013503432109906

/-! ## A064881.P4831962470110865885

`A288003(A088948(n+1))+A049455(n+1)`
-/

namespace A064881.P4831962470110865885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat + A049455 (n + 1)

end

end A064881.P4831962470110865885

/-! ## A064881.P11916801311945429659

`A002487(record[A285869(A004754(n+1))])`
-/

namespace A064881.P11916801311945429659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A004754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064881.P11916801311945429659

/-!
# A064882: Eisenstein array Ei(2,1).

The programs for A064882, there is no canonical definition to state claims against.
-/

/-! ## A064882.P9164178047744405788

`A070878(n)+A049456(n+1)`
-/

namespace A064882.P9164178047744405788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A049456 (n + 1)

end

end A064882.P9164178047744405788

/-! ## A064882.P12353954791898459197

`A064884(n+1)-A070878(n)`
-/

namespace A064882.P12353954791898459197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064884 (n + 1) - A070878 n

end

end A064882.P12353954791898459197

/-! ## A064882.P11048982243644242480

`A064885(n+1)-A049456(n+1)`
-/

namespace A064882.P11048982243644242480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064885 (n + 1) - A049456 (n + 1)

end

end A064882.P11048982243644242480

/-! ## A064882.P13202338339840553797

`A049455(n+1)+2*A070878(n)`
-/

namespace A064882.P13202338339840553797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + 2 * A070878 n

end

end A064882.P13202338339840553797

/-! ## A064882.P8149878034165650386

`2*A049456(n+1)-A049455(n+1)`
-/

namespace A064882.P8149878034165650386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049456 (n + 1) - A049455 (n + 1)

end

end A064882.P8149878034165650386

/-! ## A064882.P16618543604716841042

`(A064884(n+1)+A049456(n+1))/2`
-/

namespace A064882.P16618543604716841042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064884 (n + 1) + A049456 (n + 1) : ℚ) / 2

end

end A064882.P16618543604716841042

/-! ## A064882.P2174814303695618441

`A064886(n+1)-2*A049455(n+1)`
-/

namespace A064882.P2174814303695618441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - 2 * A049455 (n + 1)

end

end A064882.P2174814303695618441

/-! ## A064882.P2340664488879086072

`3*A049456(n+1)-A064881(n+1)`
-/

namespace A064882.P2340664488879086072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049456 (n + 1) - A064881 (n + 1)

end

end A064882.P2340664488879086072

/-! ## A064882.P5641967740612530746

`A049455(n+1)+A005843(A070878(n))`
-/

namespace A064882.P5641967740612530746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + A005843 (A070878 n).toNat

end

end A064882.P5641967740612530746

/-! ## A064882.P16696064371165226032

`A004277(A049456(n+1))-A049455(n+1)`
-/

namespace A064882.P16696064371165226032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049456 (n + 1)).toNat - A049455 (n + 1)

end

end A064882.P16696064371165226032

/-! ## A064882.P16192027445962013582

`A049455(n+1)+A064885(n+1)-A064881(n+1)`
-/

namespace A064882.P16192027445962013582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + (A064885 (n + 1) - A064881 (n + 1))

end

end A064882.P16192027445962013582

/-! ## A064882.P996332564789666782

`A049456(n+1)+A064886(n+1)-A064883(n+1)`
-/

namespace A064882.P996332564789666782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + (A064886 (n + 1) - A064883 (n + 1))

end

end A064882.P996332564789666782

/-! ## A064882.P13904021007617577524

`A064881(n+1)+A064885(n+1)-A064886(n+1)`
-/

namespace A064882.P13904021007617577524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + (A064885 (n + 1) - A064886 (n + 1))

end

end A064882.P13904021007617577524

/-! ## A064882.P513999717436930744

`A070878(n)+A002487(A103354(n+2))`
-/

namespace A064882.P513999717436930744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A002487 (A103354 (n + 2)).toNat

end

end A064882.P513999717436930744

/-! ## A064882.P3676988145567889812

`A288003(A088948(n+1))+A070878(n)`
-/

namespace A064882.P3676988145567889812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat + A070878 n

end

end A064882.P3676988145567889812

/-! ## A064882.P2902271430879594032

`A002487(record[A139706(n+3)])`
-/

namespace A064882.P2902271430879594032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064882.P2902271430879594032

/-! ## A064882.P17165617290942018603

`A002487(record[A003188(A153154(n+3))])`
-/

namespace A064882.P17165617290942018603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A153154 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064882.P17165617290942018603

/-! ## A064882.P11880949967224667745

`A002487(record[A153142(A153151(n+3))])`
-/

namespace A064882.P11880949967224667745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A153151 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064882.P11880949967224667745

/-!
# A064883: Eisenstein array Ei(1,3).

The programs for A064883, there is no canonical definition to state claims against.
-/

/-! ## A064883.P1847277443092044077

`A064886(n+1)-A070878(n)`
-/

namespace A064883.P1847277443092044077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - A070878 n

end

end A064883.P1847277443092044077

/-! ## A064883.P17936346901984747911

`A064881(n+1)+A049455(n+1)`
-/

namespace A064883.P17936346901984747911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + A049455 (n + 1)

end

end A064883.P17936346901984747911

/-! ## A064883.P11449858267142789881

`A070878(n)+3*A049455(n+1)`
-/

namespace A064883.P11449858267142789881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + 3 * A049455 (n + 1)

end

end A064883.P11449858267142789881

/-! ## A064883.P13236140402935728415

`A049456(n+1)+2*A049455(n+1)`
-/

namespace A064883.P13236140402935728415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + 2 * A049455 (n + 1)

end

end A064883.P13236140402935728415

/-! ## A064883.P2288679481666843709

`2*A064881(n+1)-A049456(n+1)`
-/

namespace A064883.P2288679481666843709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064881 (n + 1) - A049456 (n + 1)

end

end A064883.P2288679481666843709

/-! ## A064883.P5240527981426246707

`4*A049456(n+1)-A064884(n+1)`
-/

namespace A064883.P5240527981426246707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049456 (n + 1) - A064884 (n + 1)

end

end A064883.P5240527981426246707

/-! ## A064883.P15524653511801959565

`A070878(n)+A008585(A049455(n+1))`
-/

namespace A064883.P15524653511801959565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A008585 (A049455 (n + 1)).toNat

end

end A064883.P15524653511801959565

/-! ## A064883.P1011474826871672553

`A049456(n+1)+A005843(A049455(n+1))`
-/

namespace A064883.P1011474826871672553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + A005843 (A049455 (n + 1)).toNat

end

end A064883.P1011474826871672553

/-! ## A064883.P2781108371280610087

`A004277(A064881(n+1))-A049456(n+1)`
-/

namespace A064883.P2781108371280610087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A064881 (n + 1)).toNat - A049456 (n + 1)

end

end A064883.P2781108371280610087

/-! ## A064883.P1519661449777512601

`A008574(A049456(n+1))-A064884(n+1)`
-/

namespace A064883.P1519661449777512601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A049456 (n + 1)).toNat - A064884 (n + 1)

end

end A064883.P1519661449777512601

/-! ## A064883.P13982641940382162279

`A049456(n+1)+A064886(n+1)-A064882(n+1)`
-/

namespace A064883.P13982641940382162279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + (A064886 (n + 1) - A064882 (n + 1))

end

end A064883.P13982641940382162279

/-! ## A064883.P1577401142640291712

`A288003(A088948(n+1))+2*A049455(n+1)`
-/

namespace A064883.P1577401142640291712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat + 2 * A049455 (n + 1)

end

end A064883.P1577401142640291712

/-!
# A064884: Eisenstein array Ei(3,1).

The programs for A064884, there is no canonical definition to state claims against.
-/

/-! ## A064884.P12362039169628484527

`A070878(n)+A064882(n+1)`
-/

namespace A064884.P12362039169628484527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A064882 (n + 1)

end

end A064884.P12362039169628484527

/-! ## A064884.P12742406260033981223

`A064885(n+1)-A049455(n+1)`
-/

namespace A064884.P12742406260033981223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064885 (n + 1) - A049455 (n + 1)

end

end A064884.P12742406260033981223

/-! ## A064884.P7644684017469942519

`A049456(n+1)+2*A070878(n)`
-/

namespace A064884.P7644684017469942519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + 2 * A070878 n

end

end A064884.P7644684017469942519

/-! ## A064884.P6959907516844949708

`A049455(n+1)+3*A070878(n)`
-/

namespace A064884.P6959907516844949708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + 3 * A070878 n

end

end A064884.P6959907516844949708

/-! ## A064884.P1873728949910205542

`2*A064882(n+1)-A049456(n+1)`
-/

namespace A064884.P1873728949910205542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064882 (n + 1) - A049456 (n + 1)

end

end A064884.P1873728949910205542

/-! ## A064884.P17493349698941798821

`A049456(n+1)+A005843(A070878(n))`
-/

namespace A064884.P17493349698941798821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + A005843 (A070878 n).toNat

end

end A064884.P17493349698941798821

/-! ## A064884.P7965823571077435488

`A049455(n+1)+A008585(A070878(n))`
-/

namespace A064884.P7965823571077435488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + A008585 (A070878 n).toNat

end

end A064884.P7965823571077435488

/-! ## A064884.P8091057510963845355

`A004277(A064882(n+1))-A049456(n+1)`
-/

namespace A064884.P8091057510963845355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A064882 (n + 1)).toNat - A049456 (n + 1)

end

end A064884.P8091057510963845355

/-! ## A064884.P17252211913095060228

`A049456(n+1)+A064882(n+1)-A049455(n+1)`
-/

namespace A064884.P17252211913095060228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + (A064882 (n + 1) - A049455 (n + 1))

end

end A064884.P17252211913095060228

/-! ## A064884.P15636921018308678156

`A049456(n+1)+A064885(n+1)-A064881(n+1)`
-/

namespace A064884.P15636921018308678156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) + (A064885 (n + 1) - A064881 (n + 1))

end

end A064884.P15636921018308678156

/-! ## A064884.P14141601686732893038

`A064882(n+1)+A064886(n+1)-A064883(n+1)`
-/

namespace A064884.P14141601686732893038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + (A064886 (n + 1) - A064883 (n + 1))

end

end A064884.P14141601686732893038

/-! ## A064884.P1950984978284393952

`A288003(A088948(n+1))+2*A070878(n)`
-/

namespace A064884.P1950984978284393952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat + 2 * A070878 n

end

end A064884.P1950984978284393952

/-! ## A064884.P2184110800056530065

`A288003(A088948(n+1))+A005843(A070878(n))`
-/

namespace A064884.P2184110800056530065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat + A005843 (A070878 n).toNat

end

end A064884.P2184110800056530065

/-!
# A064885: Eisenstein array Ei(3,2).

The programs for A064885, there is no canonical definition to state claims against.
-/

/-! ## A064885.P11658237201478481969

`A064882(n+1)+A049456(n+1)`
-/

namespace A064885.P11658237201478481969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + A049456 (n + 1)

end

end A064885.P11658237201478481969

/-! ## A064885.P16587954310566780847

`A064884(n+1)+A049455(n+1)`
-/

namespace A064885.P16587954310566780847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064884 (n + 1) + A049455 (n + 1)

end

end A064885.P16587954310566780847

/-! ## A064885.P15520492001319118668

`A070878(n)+2*A049456(n+1)`
-/

namespace A064885.P15520492001319118668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + 2 * A049456 (n + 1)

end

end A064885.P15520492001319118668

/-! ## A064885.P2885545814343528526

`A064881(n+1)+2*A070878(n)`
-/

namespace A064885.P2885545814343528526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + 2 * A070878 n

end

end A064885.P2885545814343528526

/-! ## A064885.P166269978329676522

`2*A064882(n+1)-A070878(n)`
-/

namespace A064885.P166269978329676522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064882 (n + 1) - A070878 n

end

end A064885.P166269978329676522

/-! ## A064885.P10245006702493960234

`3*A049456(n+1)-A049455(n+1)`
-/

namespace A064885.P10245006702493960234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049456 (n + 1) - A049455 (n + 1)

end

end A064885.P10245006702493960234

/-! ## A064885.P7440582332757638666

`4*A049456(n+1)-A064881(n+1)`
-/

namespace A064885.P7440582332757638666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049456 (n + 1) - A064881 (n + 1)

end

end A064885.P7440582332757638666

/-! ## A064885.P9187482001447826914

`5*A049456(n+1)-A064886(n+1)`
-/

namespace A064885.P9187482001447826914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049456 (n + 1) - A064886 (n + 1)

end

end A064885.P9187482001447826914

/-! ## A064885.P5827408448243758923

`A070878(n)+A004277(A049456(n+1))`
-/

namespace A064885.P5827408448243758923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A004277 (A049456 (n + 1)).toNat

end

end A064885.P5827408448243758923

/-! ## A064885.P6808063093111501685

`A004277(A064882(n+1))-A070878(n)`
-/

namespace A064885.P6808063093111501685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A064882 (n + 1)).toNat - A070878 n

end

end A064885.P6808063093111501685

/-! ## A064885.P11357146532222319469

`A064881(n+1)+A064884(n+1)-A049456(n+1)`
-/

namespace A064885.P11357146532222319469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + (A064884 (n + 1) - A049456 (n + 1))

end

end A064885.P11357146532222319469

/-! ## A064885.P12080958888601610408

`A064882(n+1)+A064886(n+1)-A064881(n+1)`
-/

namespace A064885.P12080958888601610408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + (A064886 (n + 1) - A064881 (n + 1))

end

end A064885.P12080958888601610408

/-! ## A064885.P17782325708235857900

`A064883(n+1)+A064884(n+1)-A064881(n+1)`
-/

namespace A064885.P17782325708235857900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064883 (n + 1) + (A064884 (n + 1) - A064881 (n + 1))

end

end A064885.P17782325708235857900

/-!
# A064886: Eisenstein array Ei(2,3).

The programs for A064886, there is no canonical definition to state claims against.
-/

/-! ## A064886.P14019667484050889425

`A070878(n)+A064883(n+1)`
-/

namespace A064886.P14019667484050889425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 n + A064883 (n + 1)

end

end A064886.P14019667484050889425

/-! ## A064886.P8891100866733524418

`A064881(n+1)+A049456(n+1)`
-/

namespace A064886.P8891100866733524418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + A049456 (n + 1)

end

end A064886.P8891100866733524418

/-! ## A064886.P3279706286773908345

`3*A049456(n+1)-A070878(n)`
-/

namespace A064886.P3279706286773908345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049456 (n + 1) - A070878 n

end

end A064886.P3279706286773908345

/-! ## A064886.P9823799664645572887

`A049455(n+1)+2*A049456(n+1)`
-/

namespace A064886.P9823799664645572887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + 2 * A049456 (n + 1)

end

end A064886.P9823799664645572887

/-! ## A064886.P7681085623229315845

`A064882(n+1)+2*A049455(n+1)`
-/

namespace A064886.P7681085623229315845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + 2 * A049455 (n + 1)

end

end A064886.P7681085623229315845

/-! ## A064886.P14939411696502652713

`2*A064881(n+1)-A049455(n+1)`
-/

namespace A064886.P14939411696502652713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064881 (n + 1) - A049455 (n + 1)

end

end A064886.P14939411696502652713

/-! ## A064886.P6857839657471649843

`3*A064881(n+1)-A064883(n+1)`
-/

namespace A064886.P6857839657471649843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064881 (n + 1) - A064883 (n + 1)

end

end A064886.P6857839657471649843

/-! ## A064886.P11499000333255710072

`4*A049456(n+1)-A064882(n+1)`
-/

namespace A064886.P11499000333255710072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049456 (n + 1) - A064882 (n + 1)

end

end A064886.P11499000333255710072

/-! ## A064886.P6802028095761824892

`A049455(n+1)+A004277(A049456(n+1))`
-/

namespace A064886.P6802028095761824892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + A004277 (A049456 (n + 1)).toNat

end

end A064886.P6802028095761824892

/-! ## A064886.P14237701114746553310

`A064882(n+1)+A005843(A049455(n+1))`
-/

namespace A064886.P14237701114746553310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + A005843 (A049455 (n + 1)).toNat

end

end A064886.P14237701114746553310

/-! ## A064886.P14146941250063111954

`A064882(n+1)+A064883(n+1)-A049456(n+1)`
-/

namespace A064886.P14146941250063111954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) + (A064883 (n + 1) - A049456 (n + 1))

end

end A064886.P14146941250063111954

/-!
# A064887: Period of continued fraction for sqrt(14)*n.

The programs for A064887, there is no canonical definition to state claims against.
-/

/-! ## A064887.P18137675582560989917

`A003285(14*(n+1)²)`
-/

namespace A064887.P18137675582560989917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (14 * (n + 1) ^ 2)

end

end A064887.P18137675582560989917

/-! ## A064887.P2168674646886190419

`A097853(14*(n+1)²)`
-/

namespace A064887.P2168674646886190419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (14 * (n + 1) ^ 2)

end

end A064887.P2168674646886190419

/-! ## A064887.P12937843289623885430

`xor(1, A067280(14*(n+1)²))`
-/

namespace A064887.P12937843289623885430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A067280 (14 * (n + 1) ^ 2))

end

end A064887.P12937843289623885430

/-! ## A064887.P3330417865285405537

`A067280(2*A033582(n+1))-1`
-/

namespace A064887.P3330417865285405537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (2 * A033582 (n + 1)).toNat - 1

end

end A064887.P3330417865285405537

/-!
# A064888: Numerators of partial sums of 1/A051451.

The programs for A064888, there is no canonical definition to state claims against.
-/

/-! ## A064888.P6755726184901216804

`∑[floor(A245939(n!)/3)]`
-/

namespace A064888.P6755726184901216804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245939 (Nat.factorial n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064888.P6755726184901216804

/-!
# A064889: Denominators of partial sums of reciprocals of A051451 (A051451 includes lcm(1,...,x), x=power of prime from A000961 and also contains 1).

The programs for A064889, there is no canonical definition to state claims against.
-/

/-! ## A064889.P11638900339960125239

`A090951(A082743(n))/A076839(n+1)`
-/

namespace A064889.P11638900339960125239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090951 (A082743 n).toNat : ℚ) / (A076839 (n + 1) : ℚ)

end

end A064889.P11638900339960125239

/-! ## A064889.P11246895620013846548

`A090951(A082743(n))/A092542(n+1)`
-/

namespace A064889.P11246895620013846548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090951 (A082743 n).toNat : ℚ) / (A092542 (n + 1) : ℚ)

end

end A064889.P11246895620013846548

/-! ## A064889.P17571852061614751561

`A028310(A051451(n+1)/A076839(n+1))`
-/

namespace A064889.P17571852061614751561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A051451 (n + 1) : ℚ) / (A076839 (n + 1) : ℚ))).toNat

end

end A064889.P17571852061614751561

/-! ## A064889.P8989966580913591317

`A094307(∑[A007359(3*(n+1))])`
-/

namespace A064889.P8989966580913591317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064889.P8989966580913591317

/-!
# A064891: "Binary potency" of n: length of shortest blocks of 0's inserted between the bits of n required to "dilute" it into a nonprime.

The programs for A064891, there is no canonical definition to state claims against.
-/

/-! ## A064891.P14520282786012641836

`A050605(A065089(A266193(n))+A061142(n+1))`
-/

namespace A064891.P14520282786012641836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A065089 (A266193 n).toNat + A061142 (n + 1)).toNat

end

end A064891.P14520282786012641836

/-! ## A064891.P16769972245702933464

`A010051(n+1)*A345116(A160001(n+1))`
-/

namespace A064891.P16769972245702933464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A345116 (A160001 (n + 1)).toNat

end

end A064891.P16769972245702933464

/-! ## A064891.P17702707683601896503

`A010051(n+1)*A102523(A202268(n+1))`
-/

namespace A064891.P17702707683601896503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A102523 (A202268 (n + 1)).toNat

end

end A064891.P17702707683601896503

/-! ## A064891.P3666547226713723720

`A124765(A010051(n+1)*A134421(2*(n+1)))`
-/

namespace A064891.P3666547226713723720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A010051 (n + 1) * A134421 (2 * (n + 1))).toNat

end

end A064891.P3666547226713723720

/-! ## A064891.P9895717113414353283

`A010051(n+1)*A066099(A066884(3*(n+1)))`
-/

namespace A064891.P9895717113414353283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A066099 (A066884 (3 * (n + 1))).toNat

end

end A064891.P9895717113414353283

/-!
# A064892: "Binary potency" of n-th prime p: length of shortest blocks of 0's inserted between the bits of p required to "dilute" it into a nonprime.

The programs for A064892, there is no canonical definition to state claims against.
-/

/-! ## A064892.P4528906643084670129

`A064891(Δ[A007504(n)])`
-/

namespace A064892.P4528906643084670129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (f1 (n + 1) - f1 n).toNat

end

end A064892.P4528906643084670129

/-! ## A064892.P2582416785451686285

`A064891(A000040(n+1))`
-/

namespace A064892.P2582416785451686285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (A000040 (n + 1)).toNat

end

end A064892.P2582416785451686285

/-! ## A064892.P6488461081689478909

`A064891(A008578(n+2))`
-/

namespace A064892.P6488461081689478909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (A008578 (n + 2)).toNat

end

end A064892.P6488461081689478909

/-! ## A064892.P1327862979916507011

`A064891(A182986(n+2))`
-/

namespace A064892.P1327862979916507011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (A182986 (n + 2)).toNat

end

end A064892.P1327862979916507011

/-! ## A064892.P18241990095732323072

`A064891(lt[0, A055671(n)])`
-/

namespace A064892.P18241990095732323072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064892.P18241990095732323072

/-! ## A064892.P7174258367946549777

`A064891(lt[A007920(n), 1])`
-/

namespace A064892.P7174258367946549777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064892.P7174258367946549777

/-! ## A064892.P1571105876052306994

`A064891(A131733(n+1)+2*n+1)`
-/

namespace A064892.P1571105876052306994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (A131733 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A064892.P1571105876052306994

/-!
# A064893: Smallest number with "binary potency" of n. Blocks of at least n 0's must be inserted between the bits of a(n) to "dilute" it into a nonprime.

The programs for A064893, there is no canonical definition to state claims against.
-/

/-! ## A064893.P15334899046977474021

`A115972(a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A064893.P15334899046977474021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A115972 (a (n - 2)).toNat

end

end A064893.P15334899046977474021

/-!
# A064894: Binary dilution of n. GCD of exponents in binary expansion of n.

The programs for A064894, the canonical program `A064894.P11778441932188558359` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064894 has offset 0).

The definition of A064894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064894.P11778441932188558359

`gcd(-a(and(n, n-1)), A007814(n))` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064894

/-- `gcd(-a(and(n, n-1)), A007814(n))` -/
def P11778441932188558359.Spec : Prop :=
  ∀ n, (P11778441932188558359.a n : ℤ) = A064894 n

theorem P11778441932188558359.correct : P11778441932188558359.Spec := by
  intro n
  simp only [A064894]

end A064894

/-! ## A064894.P4368989427160948085

`A356352(A292600(n))`
-/

namespace A064894.P4368989427160948085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A292600 n).toNat

end

end A064894.P4368989427160948085

namespace A064894

/-- `A356352(A292600(n))` -/
def P4368989427160948085.Spec : Prop :=
  ∀ n, P4368989427160948085.a n = A064894 n

end A064894

/-! ## A064894.P9807491278798406334

`A356352(xor(n, A006068(n)))`
-/

namespace A064894.P9807491278798406334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (Int.xor (n : ℤ) (A006068 n)).toNat

end

end A064894.P9807491278798406334

namespace A064894

/-- `A356352(xor(n, A006068(n)))` -/
def P9807491278798406334.Spec : Prop :=
  ∀ n, P9807491278798406334.a n = A064894 n

end A064894

/-! ## A064894.P4148618954422768095

`gcd(a(A164089(2*n)), A000523(n))` with `a(0)=0`
-/

namespace A064894.P4148618954422768095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (A164089 (2 * n)).toNat : ℤ) (A000523 n)

end

end A064894.P4148618954422768095

namespace A064894

/-- `gcd(a(A164089(2*n)), A000523(n))` -/
def P4148618954422768095.Spec : Prop :=
  ∀ n, (P4148618954422768095.a n : ℤ) = A064894 n

end A064894

/-! ## A064894.P5701851761079720619

`gcd(a(and(n, n-1)), A262557(n))` with `a(0)=0`
-/

namespace A064894.P5701851761079720619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ) (A262557 n)

end

end A064894.P5701851761079720619

namespace A064894

/-- `gcd(a(and(n, n-1)), A262557(n))` -/
def P5701851761079720619.Spec : Prop :=
  ∀ n, (P5701851761079720619.a n : ℤ) = A064894 n

end A064894

/-! ## A064894.P13309047595397321278

`A052409(A057335(A004526(n)))`
-/

namespace A064894.P13309047595397321278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A057335 (A004526 n).toNat).toNat

end

end A064894.P13309047595397321278

namespace A064894

/-- `A052409(A057335(A004526(n)))` -/
def P13309047595397321278.Spec : Prop :=
  ∀ n, P13309047595397321278.a n = A064894 n

end A064894

/-! ## A064894.P4108094404421186417

`A052409(A057335(n)/A057334(n))`
-/

namespace A064894.P4108094404421186417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((A057335 n : ℚ) / (A057334 n : ℚ))).toNat

end

end A064894.P4108094404421186417

namespace A064894

/-- `A052409(A057335(n)/A057334(n))` -/
def P4108094404421186417.Spec : Prop :=
  ∀ n, P4108094404421186417.a n = A064894 n

end A064894

/-! ## A064894.P13165596012212942427

`A052409(A334031(floor(n/2)))`
-/

namespace A064894.P13165596012212942427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A334031 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A064894.P13165596012212942427

namespace A064894

/-- `A052409(A334031(floor(n/2)))` -/
def P13165596012212942427.Spec : Prop :=
  ∀ n, P13165596012212942427.a n = A064894 n

end A064894

/-! ## A064894.P5969475588578637880

`A289508(A019565(floor(n/2)))`
-/

namespace A064894.P5969475588578637880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A019565 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A064894.P5969475588578637880

namespace A064894

/-- `A289508(A019565(floor(n/2)))` -/
def P5969475588578637880.Spec : Prop :=
  ∀ n, P5969475588578637880.a n = A064894 n

end A064894

/-!
# A064895: Binary concentration of n. Replace 2^e_k with 2^(e_k/g(n)) in binary expansion of n, where g(n) = GCD of exponents e_k = A064894(n).

The programs for A064895, there is no canonical definition to state claims against.
-/

/-! ## A064895.P13576131274129368937

`n-A175917(n)%A068150(n+1)`
-/

namespace A064895.P13576131274129368937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A175917 n) (A068150 (n + 1))

end

end A064895.P13576131274129368937

/-! ## A064895.P13281737453839184579

`A000007(A175941(n))+n-A175917(n)`
-/

namespace A064895.P13281737453839184579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A175941 n).toNat + (n : ℤ) - A175917 n

end

end A064895.P13281737453839184579

/-! ## A064895.P7435714555874310800

`A001222(2^n)-A175917(n)`
-/

namespace A064895.P7435714555874310800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ n) - A175917 n

end

end A064895.P7435714555874310800

/-! ## A064895.P4619664445544336962

`A052409(2^n)-A175917(n)`
-/

namespace A064895.P4619664445544336962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (2 ^ n) - A175917 n

end

end A064895.P4619664445544336962

/-! ## A064895.P1868805832340238687

`n-A175917(A001222(A000079(n)))`
-/

namespace A064895.P1868805832340238687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175917 (A001222 (A000079 n).toNat).toNat

end

end A064895.P1868805832340238687

/-!
# A064896: Numbers of the form (2^(m*r)-1)/(2^r-1) for positive integers m, r.

The programs for A064896, there is no canonical definition to state claims against.
-/

/-! ## A064896.P15776237243790954472

`∩[A235264(n+1), A295235(n+1)]`
-/

namespace A064896.P15776237243790954472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P15776237243790954472

/-! ## A064896.P3838808409156436507

`∩[A235264(n+1), A390211(n+1)]`
-/

namespace A064896.P3838808409156436507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P3838808409156436507

/-! ## A064896.P7259257575196478322

`∩[A006995(n+1), A390211(n+1)]`
-/

namespace A064896.P7259257575196478322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P7259257575196478322

/-! ## A064896.P5571178817425602339

`∩[A180204(n+1), A390211(n+1)]`
-/

namespace A064896.P5571178817425602339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P5571178817425602339

/-! ## A064896.P17854421147156141877

`∩[A044918(n+1), A390211(n+1)]`
-/

namespace A064896.P17854421147156141877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P17854421147156141877

/-! ## A064896.P11257645705579413878

`∩[A334918(n+1), A390211(n+1)]`
-/

namespace A064896.P11257645705579413878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P11257645705579413878

/-! ## A064896.P1621857922719691287

`∩[A235264(n+1), A114994(n)]`
-/

namespace A064896.P1621857922719691287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P1621857922719691287

/-! ## A064896.P4437732082362213572

`∩[A057890(n+1), A390211(n+1)]`
-/

namespace A064896.P4437732082362213572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P4437732082362213572

/-! ## A064896.P3531442835798813138

`∩[A161604(n+1), A390211(n+1)]`
-/

namespace A064896.P3531442835798813138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P3531442835798813138

/-! ## A064896.P9352350884265198308

`∩[A006995(n+1), A057890(n+1)+1]`
-/

namespace A064896.P9352350884265198308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064896.P9352350884265198308

/-!
# A064897: Period of continued fraction for sqrt(15)*n.

The programs for A064897, there is no canonical definition to state claims against.
-/

/-! ## A064897.P16030230652066700322

`A003285(15*(n+1)²)`
-/

namespace A064897.P16030230652066700322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (15 * (n + 1) ^ 2)

end

end A064897.P16030230652066700322

/-! ## A064897.P16361990435856459695

`A097853(15*(n+1)²)`
-/

namespace A064897.P16361990435856459695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (15 * (n + 1) ^ 2)

end

end A064897.P16361990435856459695

/-! ## A064897.P12443339668147646565

`A067280(15*(n+1)²)-1`
-/

namespace A064897.P12443339668147646565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (15 * (n + 1) ^ 2) - 1

end

end A064897.P12443339668147646565

/-!
# A064898: Stirling transform of derangements numbers.

The programs for A064898, there is no canonical definition to state claims against.
-/

/-! ## A064898.P4201636572357787836

`A331796(n)+A000587(n)`
-/

namespace A064898.P4201636572357787836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331796 n + A000587 n

end

end A064898.P4201636572357787836

/-! ## A064898.P16523819230220707562

`A331796(n)+A292894(A000096(n))`
-/

namespace A064898.P16523819230220707562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331796 n + A292894 (A000096 n).toNat

end

end A064898.P16523819230220707562

/-! ## A064898.P4336054655927384688

`A331796(n)+A292861(A034856(n+1))`
-/

namespace A064898.P4336054655927384688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331796 n + A292861 (A034856 (n + 1)).toNat

end

end A064898.P4336054655927384688

/-! ## A064898.P4750786873756396835

`A331796(n)+A293015(A347553(n+3))`
-/

namespace A064898.P4750786873756396835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331796 n + A293015 (A347553 (n + 3)).toNat

end

end A064898.P4750786873756396835

/-! ## A064898.P10980344247221925726

`A331796(n)+A247108(A000217(n))`
-/

namespace A064898.P10980344247221925726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331796 n + A247108 (A000217 n).toNat

end

end A064898.P10980344247221925726

/-!
# A064899: Numbers that are of the form pq where p and q are distinct primes that are the orders of non-Abelian groups.

The programs for A064899, the canonical program `A064899.P16636012330483880893` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064899 has offset 1).

The definition of A064899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064899.P722231775510977219

`filter[A350586(n+1), A354927(#)]`
-/

namespace A064899.P722231775510977219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A064899.P722231775510977219

namespace A064899

/-- `filter[A350586(n+1), A354927(#)]` -/
def P722231775510977219.Spec : Prop :=
  ∀ n, P722231775510977219.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P17960461412672349212

`filter[A350586(n+1), A064911(#)]`
-/

namespace A064899.P17960461412672349212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A064899.P17960461412672349212

namespace A064899

/-- `filter[A350586(n+1), A064911(#)]` -/
def P17960461412672349212.Spec : Prop :=
  ∀ n, P17960461412672349212.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P6023891473663384399

`filter[A350586(n+1), A101040(#)]`
-/

namespace A064899.P6023891473663384399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A064899.P6023891473663384399

namespace A064899

/-- `filter[A350586(n+1), A101040(#)]` -/
def P6023891473663384399.Spec : Prop :=
  ∀ n, P6023891473663384399.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P1143748228752368379

`filter[A350586(n+1), A123927(#)]`
-/

namespace A064899.P1143748228752368379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A064899.P1143748228752368379

namespace A064899

/-- `filter[A350586(n+1), A123927(#)]` -/
def P1143748228752368379.Spec : Prop :=
  ∀ n, P1143748228752368379.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P2648362200354244286

`filter[A350586(n+1), A280710(#)]`
-/

namespace A064899.P2648362200354244286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A064899.P2648362200354244286

namespace A064899

/-- `filter[A350586(n+1), A280710(#)]` -/
def P2648362200354244286.Spec : Prop :=
  ∀ n, P2648362200354244286.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P17479633392480172824

`filter[A350586(n+1), A353471(#)]`
-/

namespace A064899.P17479633392480172824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A064899.P17479633392480172824

namespace A064899

/-- `filter[A350586(n+1), A353471(#)]` -/
def P17479633392480172824.Spec : Prop :=
  ∀ n, P17479633392480172824.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P12692644779914639039

`filter[A350586(n+1), A353788(#)]`
-/

namespace A064899.P12692644779914639039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A064899.P12692644779914639039

namespace A064899

/-- `filter[A350586(n+1), A353788(#)]` -/
def P12692644779914639039.Spec : Prop :=
  ∀ n, P12692644779914639039.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P14199972601540952496

`filter[A350586(n+1), A353799(#)]`
-/

namespace A064899.P14199972601540952496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A064899.P14199972601540952496

namespace A064899

/-- `filter[A350586(n+1), A353799(#)]` -/
def P14199972601540952496.Spec : Prop :=
  ∀ n, P14199972601540952496.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P9010179940203458114

`filter[A054395(n+1), A280710(#)]`
-/

namespace A064899.P9010179940203458114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A064899.P9010179940203458114

namespace A064899

/-- `filter[A054395(n+1), A280710(#)]` -/
def P9010179940203458114.Spec : Prop :=
  ∀ n, P9010179940203458114.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P16169843151296224134

`filter[A054395(n+1), A353471(#)]`
-/

namespace A064899.P16169843151296224134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A064899.P16169843151296224134

namespace A064899

/-- `filter[A054395(n+1), A353471(#)]` -/
def P16169843151296224134.Spec : Prop :=
  ∀ n, P16169843151296224134.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P7678153623427448308

`filter[A054395(n+1), A353788(#)]`
-/

namespace A064899.P7678153623427448308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A064899.P7678153623427448308

namespace A064899

/-- `filter[A054395(n+1), A353788(#)]` -/
def P7678153623427448308.Spec : Prop :=
  ∀ n, P7678153623427448308.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P13569156135611115066

`filter[A054395(n+1), A354927(#)]`
-/

namespace A064899.P13569156135611115066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A064899.P13569156135611115066

namespace A064899

/-- `filter[A054395(n+1), A354927(#)]` -/
def P13569156135611115066.Spec : Prop :=
  ∀ n, P13569156135611115066.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P9625586914780793892

`∩[A006881(n+1), A054395(n+1)]`
-/

namespace A064899.P9625586914780793892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064899.P9625586914780793892

namespace A064899

/-- `∩[A006881(n+1), A054395(n+1)]` -/
def P9625586914780793892.Spec : Prop :=
  ∀ n, (P9625586914780793892.a n : ℤ) = A064899 (n + 1)

end A064899

/-! ## A064899.P8140957926023238058

`∩[A054395(n+1), A068993(n+1)]`
-/

namespace A064899.P8140957926023238058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064899.P8140957926023238058

namespace A064899

/-- `∩[A054395(n+1), A068993(n+1)]` -/
def P8140957926023238058.Spec : Prop :=
  ∀ n, (P8140957926023238058.a n : ℤ) = A064899 (n + 1)

end A064899

/-! ## A064899.P7855074430386808484

`∩[A007422(n+1), A054395(n+1)]`
-/

namespace A064899.P7855074430386808484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064899.P7855074430386808484

namespace A064899

/-- `∩[A007422(n+1), A054395(n+1)]` -/
def P7855074430386808484.Spec : Prop :=
  ∀ n, (P7855074430386808484.a n : ℤ) = A064899 (n + 1)

end A064899

/-! ## A064899.P5549852866089327929

`∩[A030513(n+1), A054395(n+1)]`
-/

namespace A064899.P5549852866089327929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064899.P5549852866089327929

namespace A064899

/-- `∩[A030513(n+1), A054395(n+1)]` -/
def P5549852866089327929.Spec : Prop :=
  ∀ n, (P5549852866089327929.a n : ℤ) = A064899 (n + 1)

end A064899

/-! ## A064899.P16636012330483880893

`filter[A342256(n+1), A280710(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A064899

/-- `filter[A342256(n+1), A280710(#)]` -/
def P16636012330483880893.Spec : Prop :=
  ∀ n, P16636012330483880893.a n = A064899 (n + 1)

theorem P16636012330483880893.correct : P16636012330483880893.Spec := by
  intro n
  simp only [A064899, Nat.add_sub_cancel]

end A064899

/-! ## A064899.P13673552512402353510

`filter[A394433(n+1), A280710(#)]`
-/

namespace A064899.P13673552512402353510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A064899.P13673552512402353510

namespace A064899

/-- `filter[A394433(n+1), A280710(#)]` -/
def P13673552512402353510.Spec : Prop :=
  ∀ n, P13673552512402353510.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P7453774869636955469

`filter[A394433(n+1), A353471(#)]`
-/

namespace A064899.P7453774869636955469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A064899.P7453774869636955469

namespace A064899

/-- `filter[A394433(n+1), A353471(#)]` -/
def P7453774869636955469.Spec : Prop :=
  ∀ n, P7453774869636955469.a n = A064899 (n + 1)

end A064899

/-! ## A064899.P295159328899743098

`filter[A394433(n+1), A353788(#)]`
-/

namespace A064899.P295159328899743098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A064899.P295159328899743098

namespace A064899

/-- `filter[A394433(n+1), A353788(#)]` -/
def P295159328899743098.Spec : Prop :=
  ∀ n, P295159328899743098.a n = A064899 (n + 1)

end A064899

