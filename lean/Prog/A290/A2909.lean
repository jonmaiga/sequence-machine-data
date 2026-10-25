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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A290900: p-INVERT of the positive integers, where p(S) = 1 - S^2 - S^3.

The programs for A290900, there is no canonical definition to state claims against.
-/

/-! ## A290900.P2556464128038129759

`A137500(n+1)-A025428(A309210(n+1))`
-/

namespace A290900.P2556464128038129759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137500 (n + 1) - A025428 (A309210 (n + 1)).toNat

end

end A290900.P2556464128038129759

/-! ## A290900.P5706592638049644968

`A137500(n+1)-A340607(A137508(3*n+4))`
-/

namespace A290900.P5706592638049644968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137500 (n + 1) - A340607 (A137508 (3 * n + 4)).toNat

end

end A290900.P5706592638049644968

/-! ## A290900.P6340135408775665885

`A137500(∑[A053497(n)])`
-/

namespace A290900.P6340135408775665885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290900.P6340135408775665885

/-!
# A290901: p-INVERT of the positive integers, where p(S) = 1 - S^3 - S^4.

The programs for A290901, there is no canonical definition to state claims against.
-/

/-! ## A290901.P13299117379616851145

`round(log2((2^n-n)!))`
-/

namespace A290901.P13299117379616851145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Nat.factorial ((2 ^ n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A290901.P13299117379616851145

/-! ## A290901.P6176676611262017718

`∑[∑[A089361(A351756(n))]]`
-/

namespace A290901.P6176676611262017718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (A351756 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290901.P6176676611262017718

/-!
# A290902: p-INVERT of the positive integers, where p(S) = 1 - 3*S.

The programs for A290902, the canonical program `A290902.P14111088191317817625` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290902 has offset 0).

The definition of A290902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290902.P14111088191317817625

`5*a(n-1)-a(n-2)` with `a(0)=3, a(1)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290902

/-- `5*a(n-1)-a(n-2)` -/
def P14111088191317817625.Spec : Prop :=
  ∀ n, P14111088191317817625.a n = A290902 n

theorem P14111088191317817625.correct : P14111088191317817625.Spec := by
  intro n
  simp only [A290902]

end A290902

/-! ## A290902.P17711342482410074496

`3*A004254(n+1)`
-/

namespace A290902.P17711342482410074496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004254 (n + 1)

end

end A290902.P17711342482410074496

namespace A290902

/-- `3*A004254(n+1)` -/
def P17711342482410074496.Spec : Prop :=
  ∀ n, P17711342482410074496.a n = A290902 n

end A290902

/-! ## A290902.P10889135352921354260

`ogf(3/(1-5x+x^2))`
-/

namespace A290902.P10889135352921354260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -5, 1] n

end

end A290902.P10889135352921354260

namespace A290902

/-- `ogf(3/(1-5x+x^2))` -/
def P10889135352921354260.Spec : Prop :=
  ∀ n, P10889135352921354260.a n = A290902 n

end A290902

/-! ## A290902.P9918424977988194425

`Δ[lcm(5, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A290902.P9918424977988194425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P9918424977988194425

namespace A290902

/-- `Δ[lcm(5, a(n-1))-a(n-2)]` -/
def P9918424977988194425.Spec : Prop :=
  ∀ n, P9918424977988194425.a n = A290902 n

end A290902

/-! ## A290902.P12458043631579394990

`Δ[A004253(n+1)]`
-/

namespace A290902.P12458043631579394990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P12458043631579394990

namespace A290902

/-- `Δ[A004253(n+1)]` -/
def P12458043631579394990.Spec : Prop :=
  ∀ n, P12458043631579394990.a n = A290902 n

end A290902

/-! ## A290902.P12816775446391134253

`Δ[A136210(Δ[n²])]`
-/

namespace A290902.P12816775446391134253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P12816775446391134253

namespace A290902

/-- `Δ[A136210(Δ[n²])]` -/
def P12816775446391134253.Spec : Prop :=
  ∀ n, P12816775446391134253.a n = A290902 n

end A290902

/-! ## A290902.P8016278382838444130

`A136210(2*(n+1))`
-/

namespace A290902.P8016278382838444130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * (n + 1))

end

end A290902.P8016278382838444130

namespace A290902

/-- `A136210(2*(n+1))` -/
def P8016278382838444130.Spec : Prop :=
  ∀ n, P8016278382838444130.a n = A290902 n

end A290902

/-! ## A290902.P15669053339983484740

`Δ[abs(A101463(2*n))]`
-/

namespace A290902.P15669053339983484740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101463 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P15669053339983484740

namespace A290902

/-- `Δ[abs(A101463(2*n))]` -/
def P15669053339983484740.Spec : Prop :=
  ∀ n, P15669053339983484740.a n = A290902 n

end A290902

/-! ## A290902.P9710707915000473275

`3*A136211(Δ[n²])`
-/

namespace A290902.P9710707915000473275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A136211 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290902.P9710707915000473275

namespace A290902

/-- `3*A136211(Δ[n²])` -/
def P9710707915000473275.Spec : Prop :=
  ∀ n, P9710707915000473275.a n = A290902 n

end A290902

/-! ## A290902.P10289561657816370141

`∑[3*Δ[A004254(n)]]`
-/

namespace A290902.P10289561657816370141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290902.P10289561657816370141

namespace A290902

/-- `∑[3*Δ[A004254(n)]]` -/
def P10289561657816370141.Spec : Prop :=
  ∀ n, P10289561657816370141.a n = A290902 n

end A290902

/-! ## A290902.P6815876872561529926

`Δ[A217787(3*(n+1))]`
-/

namespace A290902.P6815876872561529926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P6815876872561529926

namespace A290902

/-- `Δ[A217787(3*(n+1))]` -/
def P6815876872561529926.Spec : Prop :=
  ∀ n, P6815876872561529926.a n = A290902 n

end A290902

/-! ## A290902.P8149811404340371853

`Δ[A136211(A028310(2*n))]`
-/

namespace A290902.P8149811404340371853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P8149811404340371853

namespace A290902

/-- `Δ[A136211(A028310(2*n))]` -/
def P8149811404340371853.Spec : Prop :=
  ∀ n, P8149811404340371853.a n = A290902 n

end A290902

/-! ## A290902.P6659924325860896191

`Δ[A136211(A028310(n)+n)]`
-/

namespace A290902.P6659924325860896191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P6659924325860896191

namespace A290902

/-- `Δ[A136211(A028310(n)+n)]` -/
def P6659924325860896191.Spec : Prop :=
  ∀ n, P6659924325860896191.a n = A290902 n

end A290902

/-! ## A290902.P10094196963706417872

`A004254(n)+A002320(n+1)`
-/

namespace A290902.P10094196963706417872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A002320 (n + 1)

end

end A290902.P10094196963706417872

namespace A290902

/-- `A004254(n)+A002320(n+1)` -/
def P10094196963706417872.Spec : Prop :=
  ∀ n, P10094196963706417872.a n = A290902 n

end A290902

/-! ## A290902.P2482613330637069954

`A002320(n)+2*A030221(n)`
-/

namespace A290902.P2482613330637069954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + 2 * A030221 n

end

end A290902.P2482613330637069954

namespace A290902

/-- `A002320(n)+2*A030221(n)` -/
def P2482613330637069954.Spec : Prop :=
  ∀ n, P2482613330637069954.a n = A290902 n

end A290902

/-! ## A290902.P151136922187076590

`∑[A002320(n)+A002310(n+1)]`
-/

namespace A290902.P151136922187076590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + A002310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290902.P151136922187076590

namespace A290902

/-- `∑[A002320(n)+A002310(n+1)]` -/
def P151136922187076590.Spec : Prop :=
  ∀ n, P151136922187076590.a n = A290902 n

end A290902

/-! ## A290902.P18083916661708697308

`3*(A089817(n)-∑[A004254(n)])`
-/

namespace A290902.P18083916661708697308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A089817 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290902.P18083916661708697308

namespace A290902

/-- `3*(A089817(n)-∑[A004254(n)])` -/
def P18083916661708697308.Spec : Prop :=
  ∀ n, P18083916661708697308.a n = A290902 n

end A290902

/-! ## A290902.P1704232282214567557

`A004253(n+2)-A004253(n+1)`
-/

namespace A290902.P1704232282214567557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A004253 (n + 1)

end

end A290902.P1704232282214567557

namespace A290902

/-- `A004253(n+2)-A004253(n+1)` -/
def P1704232282214567557.Spec : Prop :=
  ∀ n, P1704232282214567557.a n = A290902 n

end A290902

/-! ## A290902.P12161692820879185573

`Δ[A002310(n)+Δ[A101368(n+1)]]`
-/

namespace A290902.P12161692820879185573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290902.P12161692820879185573

namespace A290902

/-- `Δ[A002310(n)+Δ[A101368(n+1)]]` -/
def P12161692820879185573.Spec : Prop :=
  ∀ n, P12161692820879185573.a n = A290902 n

end A290902

/-! ## A290902.P12442416563137345203

`∑[3*Δ[A002320(n)-A002310(n)]]`
-/

namespace A290902.P12442416563137345203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n - A002310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290902.P12442416563137345203

namespace A290902

/-- `∑[3*Δ[A002320(n)-A002310(n)]]` -/
def P12442416563137345203.Spec : Prop :=
  ∀ n, P12442416563137345203.a n = A290902 n

end A290902

/-!
# A290903: p-INVERT of the positive integers, where p(S) = 1 - 5*S.

The programs for A290903, the canonical program `A290903.P18329983601092570467` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290903 has offset 0).

The definition of A290903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290903.P18329983601092570467

`7*a(n-1)-a(n-2)` with `a(0)=5, a(1)=35`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290903

/-- `7*a(n-1)-a(n-2)` -/
def P18329983601092570467.Spec : Prop :=
  ∀ n, P18329983601092570467.a n = A290903 n

theorem P18329983601092570467.correct : P18329983601092570467.Spec := by
  intro n
  simp only [A290903]

end A290903

/-! ## A290903.P14422883952695239342

`5*A004187(n+1)`
-/

namespace A290903.P14422883952695239342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004187 (n + 1)

end

end A290903.P14422883952695239342

namespace A290903

/-- `5*A004187(n+1)` -/
def P14422883952695239342.Spec : Prop :=
  ∀ n, P14422883952695239342.a n = A290903 n

end A290903

/-! ## A290903.P16495042773334197700

`ogf(5/(1-7x+x^2))`
-/

namespace A290903.P16495042773334197700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -7, 1] n

end

end A290903.P16495042773334197700

namespace A290903

/-- `ogf(5/(1-7x+x^2))` -/
def P16495042773334197700.Spec : Prop :=
  ∀ n, P16495042773334197700.a n = A290903 n

end A290903

/-! ## A290903.P16220975595756349084

`ceil(ϕ^4*a(n-1))` with `a(0)=5`
-/

namespace A290903.P16220975595756349084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌉

end

end A290903.P16220975595756349084

namespace A290903

/-- `ceil(ϕ^4*a(n-1))` -/
def P16220975595756349084.Spec : Prop :=
  ∀ n, P16220975595756349084.a n = A290903 n

end A290903

/-! ## A290903.P16265267535149672672

`ceil(a(n-1)/(2-ϕ)²)` with `a(0)=5`
-/

namespace A290903.P16265267535149672672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio) ^ 2⌉

end

end A290903.P16265267535149672672

namespace A290903

/-- `ceil(a(n-1)/(2-ϕ)²)` -/
def P16265267535149672672.Spec : Prop :=
  ∀ n, P16265267535149672672.a n = A290903 n

end A290903

/-! ## A290903.P17421252707335524218

`Δ[floor(ϕ²²*a(n-1))]` with `a(0)=1`
-/

namespace A290903.P17421252707335524218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290903.P17421252707335524218

namespace A290903

/-- `Δ[floor(ϕ²²*a(n-1))]` -/
def P17421252707335524218.Spec : Prop :=
  ∀ n, P17421252707335524218.a n = A290903 n

end A290903

/-! ## A290903.P15490628486110297759

`Δ[floor((ϕ^(2*n+1))²/3)]`
-/

namespace A290903.P15490628486110297759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ (2 * n + 1)) ^ 2 / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290903.P15490628486110297759

namespace A290903

/-- `Δ[floor((ϕ^(2*n+1))²/3)]` -/
def P15490628486110297759.Spec : Prop :=
  ∀ n, P15490628486110297759.a n = A290903 n

end A290903

/-! ## A290903.P6929601785489837551

`Δ[2*A049685(n)]/2`
-/

namespace A290903.P6929601785489837551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049685 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A290903.P6929601785489837551

namespace A290903

/-- `Δ[2*A049685(n)]/2` -/
def P6929601785489837551.Spec : Prop :=
  ∀ n, P6929601785489837551.a n = (A290903 n : ℚ)

end A290903

/-! ## A290903.P6614841029142365487

`A054888(2*(n+1))/3`
-/

namespace A290903.P6614841029142365487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054888 (2 * (n + 1)) : ℚ) / 3

end

end A290903.P6614841029142365487

namespace A290903

/-- `A054888(2*(n+1))/3` -/
def P6614841029142365487.Spec : Prop :=
  ∀ n, P6614841029142365487.a n = (A290903 n : ℚ)

end A290903

/-! ## A290903.P6275501429379856308

`5*A099483(2*n+1)`
-/

namespace A290903.P6275501429379856308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099483 (2 * n + 1)

end

end A290903.P6275501429379856308

namespace A290903

/-- `5*A099483(2*n+1)` -/
def P6275501429379856308.Spec : Prop :=
  ∀ n, P6275501429379856308.a n = A290903 n

end A290903

/-! ## A290903.P13729274877608227775

`5*A099484(2*n+1)`
-/

namespace A290903.P13729274877608227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099484 (2 * n + 1)

end

end A290903.P13729274877608227775

namespace A290903

/-- `5*A099484(2*n+1)` -/
def P13729274877608227775.Spec : Prop :=
  ∀ n, P13729274877608227775.a n = A290903 n

end A290903

/-! ## A290903.P16465174541742477586

`5*A387782(2*(n+1))`
-/

namespace A290903.P16465174541742477586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A387782 (2 * (n + 1))

end

end A290903.P16465174541742477586

namespace A290903

/-- `5*A387782(2*(n+1))` -/
def P16465174541742477586.Spec : Prop :=
  ∀ n, P16465174541742477586.a n = A290903 n

end A290903

/-! ## A290903.P15166074470632296684

`5*A387783(2*n+1)`
-/

namespace A290903.P15166074470632296684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A387783 (2 * n + 1)

end

end A290903.P15166074470632296684

namespace A290903

/-- `5*A387783(2*n+1)` -/
def P15166074470632296684.Spec : Prop :=
  ∀ n, P15166074470632296684.a n = A290903 n

end A290903

/-! ## A290903.P16705289519568594798

`A201157(2*n+3)/3`
-/

namespace A290903.P16705289519568594798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201157 (2 * n + 3) : ℚ) / 3

end

end A290903.P16705289519568594798

namespace A290903

/-- `A201157(2*n+3)/3` -/
def P16705289519568594798.Spec : Prop :=
  ∀ n, P16705289519568594798.a n = (A290903 n : ℚ)

end A290903

/-! ## A290903.P11759869016229817429

`5*A293543(4*(n+1))`
-/

namespace A290903.P11759869016229817429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A293543 (4 * (n + 1))

end

end A290903.P11759869016229817429

namespace A290903

/-- `5*A293543(4*(n+1))` -/
def P11759869016229817429.Spec : Prop :=
  ∀ n, P11759869016229817429.a n = A290903 n

end A290903

/-! ## A290903.P4052666633432282752

`Δ[Δ[A000045(4*n)]]/3`
-/

namespace A290903.P4052666633432282752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A290903.P4052666633432282752

namespace A290903

/-- `Δ[Δ[A000045(4*n)]]/3` -/
def P4052666633432282752.Spec : Prop :=
  ∀ n, P4052666633432282752.a n = (A290903 n : ℚ)

end A290903

/-! ## A290903.P16333939483281035107

`5/3*A000045(4*(n+1))`
-/

namespace A290903.P16333939483281035107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A000045 (4 * (n + 1)) : ℚ)

end

end A290903.P16333939483281035107

namespace A290903

/-- `5/3*A000045(4*(n+1))` -/
def P16333939483281035107.Spec : Prop :=
  ∀ n, P16333939483281035107.a n = (A290903 n : ℚ)

end A290903

/-! ## A290903.P8420321957079060316

`A033889(n+1)+A004187(n)`
-/

namespace A290903.P8420321957079060316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 (n + 1) + A004187 n

end

end A290903.P8420321957079060316

namespace A290903

/-- `A033889(n+1)+A004187(n)` -/
def P8420321957079060316.Spec : Prop :=
  ∀ n, P8420321957079060316.a n = A290903 n

end A290903

/-! ## A290903.P17719244579452165811

`A049685(n+1)-A049685(n)`
-/

namespace A290903.P17719244579452165811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 (n + 1) - A049685 n

end

end A290903.P17719244579452165811

namespace A290903

/-- `A049685(n+1)-A049685(n)` -/
def P17719244579452165811.Spec : Prop :=
  ∀ n, P17719244579452165811.a n = A290903 n

end A290903

/-! ## A290903.P8546494759275063979

`A004187(n+2)-A033891(n)`
-/

namespace A290903.P8546494759275063979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 2) - A033891 n

end

end A290903.P8546494759275063979

namespace A290903

/-- `A004187(n+2)-A033891(n)` -/
def P8546494759275063979.Spec : Prop :=
  ∀ n, P8546494759275063979.a n = A290903 n

end A290903

/-!
# A290904: p-INVERT of the positive integers, where p(S) = 1 - 2*S^2.

The programs for A290904, the canonical program `A290904.P18029781564949784604` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290904 has offset 0).

The definition of A290904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290904.P18029781564949784604

`4*a(n-1)-4*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290904

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18029781564949784604.Spec : Prop :=
  ∀ n, P18029781564949784604.a n = A290904 n

theorem P18029781564949784604.correct : P18029781564949784604.Spec := by
  intro n
  simp only [A290904]

end A290904

/-! ## A290904.P13573776690652240226

`2*A290905(n)`
-/

namespace A290904.P13573776690652240226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290905 n

end

end A290904.P13573776690652240226

namespace A290904

/-- `2*A290905(n)` -/
def P13573776690652240226.Spec : Prop :=
  ∀ n, P13573776690652240226.a n = A290904 n

end A290904

/-! ## A290904.P1727788199115783770

`ogf(2x/(1-4x+4x^2-4x^3+x^4))`
-/

namespace A290904.P1727788199115783770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, 4, -4, 1] n

end

end A290904.P1727788199115783770

namespace A290904

/-- `ogf(2x/(1-4x+4x^2-4x^3+x^4))` -/
def P1727788199115783770.Spec : Prop :=
  ∀ n, P1727788199115783770.a n = A290904 n

end A290904

/-! ## A290904.P3932660571648952415

`A290905(A005843(n)/2)+A290905(n)`
-/

namespace A290904.P3932660571648952415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290905 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A290905 n

end

end A290904.P3932660571648952415

namespace A290904

/-- `A290905(A005843(n)/2)+A290905(n)` -/
def P3932660571648952415.Spec : Prop :=
  ∀ n, P3932660571648952415.a n = A290904 n

end A290904

/-! ## A290904.P4876108148762702590

`A290905(A005843(n)-n)+A290905(n)`
-/

namespace A290904.P4876108148762702590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290905 (A005843 n - (n : ℤ)).toNat + A290905 n

end

end A290904.P4876108148762702590

namespace A290904

/-- `A290905(A005843(n)-n)+A290905(n)` -/
def P4876108148762702590.Spec : Prop :=
  ∀ n, P4876108148762702590.a n = A290904 n

end A290904

/-! ## A290904.P3749883975558785406

`(A290930(n)+A290890(n))/2`
-/

namespace A290904.P3749883975558785406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290930 n + A290890 n : ℚ) / 2

end

end A290904.P3749883975558785406

namespace A290904

/-- `(A290930(n)+A290890(n))/2` -/
def P3749883975558785406.Spec : Prop :=
  ∀ n, P3749883975558785406.a n = (A290904 n : ℚ)

theorem P3749883975558785406.correct : P3749883975558785406.Spec := by
  intro n
  simp only [A290904, Nat.add_sub_cancel, A290904.P3749883975558785406.a, A290904.P18029781564949784604.a, A290890, A290890.P16246134009341233150.a, A290930, A290930.P2559548672273861222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290904

/-! ## A290904.P3270692052649486626

`A290905(n)+A290905(n)%A289255(n+1)`
-/

namespace A290904.P3270692052649486626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290905 n + Int.tmod (A290905 n) (A289255 (n + 1))

end

end A290904.P3270692052649486626

namespace A290904

/-- `A290905(n)+A290905(n)%A289255(n+1)` -/
def P3270692052649486626.Spec : Prop :=
  ∀ n, P3270692052649486626.a n = A290904 n

end A290904

/-!
# A290905: a(n) = (1/2)*A290904(n).

The programs for A290905, the canonical program `A290905.P11690926243406987813` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290905 has offset 0).

The definition of A290905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290905.P11690926243406987813

`4*a(n-1)-4*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290905

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11690926243406987813.Spec : Prop :=
  ∀ n, P11690926243406987813.a n = A290905 n

theorem P11690926243406987813.correct : P11690926243406987813.Spec := by
  intro n
  simp only [A290905]

end A290905

/-! ## A290905.P16843669929002128638

`1/2*A290904(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290905.P16843669929002128638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A290904 n : ℚ)

end

end A290905.P16843669929002128638

namespace A290905

/-- `1/2*A290904(n)` -/
def P16843669929002128638.Spec : Prop :=
  ∀ n, P16843669929002128638.a n = (A290905 n : ℚ)

end A290905

/-! ## A290905.P12900315003281220594

`ogf(x/(1-4x+4x^2-4x^3+x^4))`
-/

namespace A290905.P12900315003281220594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 4, -4, 1] n

end

end A290905.P12900315003281220594

namespace A290905

/-- `ogf(x/(1-4x+4x^2-4x^3+x^4))` -/
def P12900315003281220594.Spec : Prop :=
  ∀ n, P12900315003281220594.a n = A290905 n

end A290905

/-! ## A290905.P77061052813594729

`A290904(n)/2`
-/

namespace A290905.P77061052813594729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290904 n : ℚ) / 2

end

end A290905.P77061052813594729

namespace A290905

/-- `A290904(n)/2` -/
def P77061052813594729.Spec : Prop :=
  ∀ n, P77061052813594729.a n = (A290905 n : ℚ)

end A290905

/-! ## A290905.P16651225564598551035

`(A290930(n)+A290890(n))/4`
-/

namespace A290905.P16651225564598551035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290930 n + A290890 n : ℚ) / 4

end

end A290905.P16651225564598551035

namespace A290905

/-- `(A290930(n)+A290890(n))/4` -/
def P16651225564598551035.Spec : Prop :=
  ∀ n, P16651225564598551035.a n = (A290905 n : ℚ)

end A290905

/-!
# A290906: p-INVERT of the positive integers, where p(S) = 1 - 3*S^2.

The programs for A290906, the canonical program `A290906.P9145443816779732801` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290906 has offset 0).

The definition of A290906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290906.P9145443816779732801

`4*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=39`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290906

/-- `4*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9145443816779732801.Spec : Prop :=
  ∀ n, P9145443816779732801.a n = A290906 n

theorem P9145443816779732801.correct : P9145443816779732801.Spec := by
  intro n
  simp only [A290906]

end A290906

/-! ## A290906.P7442313352233264168

`3*A290907(n)`
-/

namespace A290906.P7442313352233264168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A290907 n

end

end A290906.P7442313352233264168

namespace A290906

/-- `3*A290907(n)` -/
def P7442313352233264168.Spec : Prop :=
  ∀ n, P7442313352233264168.a n = A290906 n

end A290906

/-! ## A290906.P6158018310866388469

`ogf(3x/(1-4x+3x^2-4x^3+x^4))`
-/

namespace A290906.P6158018310866388469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, 3, -4, 1] n

end

end A290906.P6158018310866388469

namespace A290906

/-- `ogf(3x/(1-4x+3x^2-4x^3+x^4))` -/
def P6158018310866388469.Spec : Prop :=
  ∀ n, P6158018310866388469.a n = A290906 n

end A290906

/-! ## A290906.P16456904641826898203

`A008585(A290907(n))`
-/

namespace A290906.P16456904641826898203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A290907 n).toNat

end

end A290906.P16456904641826898203

namespace A290906

/-- `A008585(A290907(n))` -/
def P16456904641826898203.Spec : Prop :=
  ∀ n, P16456904641826898203.a n = A290906 n

end A290906

/-! ## A290906.P13157766659398229455

`A016777(A290907(n))-A167967(n+1)`
-/

namespace A290906.P13157766659398229455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A290907 n).toNat - A167967 (n + 1)

end

end A290906.P13157766659398229455

namespace A290906

/-- `A016777(A290907(n))-A167967(n+1)` -/
def P13157766659398229455.Spec : Prop :=
  ∀ n, P13157766659398229455.a n = A290906 n

end A290906

/-!
# A290907: a(n) = (1/3)*A290906(n).

The programs for A290907, the canonical program `A290907.P2897965822767127596` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290907 has offset 0).

The definition of A290907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290907.P2897965822767127596

`4*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290907

/-- `4*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2897965822767127596.Spec : Prop :=
  ∀ n, P2897965822767127596.a n = A290907 n

theorem P2897965822767127596.correct : P2897965822767127596.Spec := by
  intro n
  simp only [A290907]

end A290907

/-! ## A290907.P15688397738111451374

`1/3*A290906(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290907.P15688397738111451374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A290906 n : ℚ)

end

end A290907.P15688397738111451374

namespace A290907

/-- `1/3*A290906(n)` -/
def P15688397738111451374.Spec : Prop :=
  ∀ n, P15688397738111451374.a n = (A290907 n : ℚ)

end A290907

/-! ## A290907.P10490338372231731153

`ogf(x/(1-4x+3x^2-4x^3+x^4))`
-/

namespace A290907.P10490338372231731153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 3, -4, 1] n

end

end A290907.P10490338372231731153

namespace A290907

/-- `ogf(x/(1-4x+3x^2-4x^3+x^4))` -/
def P10490338372231731153.Spec : Prop :=
  ∀ n, P10490338372231731153.a n = A290907 n

end A290907

/-! ## A290907.P7940391891113341255

`A290906(n)/3`
-/

namespace A290907.P7940391891113341255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290906 n : ℚ) / 3

end

end A290907.P7940391891113341255

namespace A290907

/-- `A290906(n)/3` -/
def P7940391891113341255.Spec : Prop :=
  ∀ n, P7940391891113341255.a n = (A290907 n : ℚ)

end A290907

/-! ## A290907.P11657444034897689703

`A255588(A290906(n))`
-/

namespace A290907.P11657444034897689703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A290906 n).toNat

end

end A290907.P11657444034897689703

namespace A290907

/-- `A255588(A290906(n))` -/
def P11657444034897689703.Spec : Prop :=
  ∀ n, P11657444034897689703.a n = A290907 n

end A290907

/-!
# A290908: p-INVERT of the positive integers, where p(S) = 1 - 4*S^2.

The programs for A290908, the canonical program `A290908.P2152940187460962757` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290908 has offset 0).

The definition of A290908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290908.P2152940187460962757

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=56`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290908

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2152940187460962757.Spec : Prop :=
  ∀ n, P2152940187460962757.a n = A290908 n

theorem P2152940187460962757.correct : P2152940187460962757.Spec := by
  intro n
  simp only [A290908]

end A290908

/-! ## A290908.P11459399728897335034

`4*A099486(n)`
-/

namespace A290908.P11459399728897335034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099486 n

end

end A290908.P11459399728897335034

namespace A290908

/-- `4*A099486(n)` -/
def P11459399728897335034.Spec : Prop :=
  ∀ n, P11459399728897335034.a n = A290908 n

end A290908

/-! ## A290908.P2244187945786579418

`ogf(4x/(1-4x+2x^2-4x^3+x^4))`
-/

namespace A290908.P2244187945786579418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -4, 2, -4, 1] n

end

end A290908.P2244187945786579418

namespace A290908

/-- `ogf(4x/(1-4x+2x^2-4x^3+x^4))` -/
def P2244187945786579418.Spec : Prop :=
  ∀ n, P2244187945786579418.a n = A290908 n

end A290908

/-! ## A290908.P15304357090722672665

`Δ[or(1, A061278(n))]`
-/

namespace A290908.P15304357090722672665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061278 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P15304357090722672665

namespace A290908

/-- `Δ[or(1, A061278(n))]` -/
def P15304357090722672665.Spec : Prop :=
  ∀ n, P15304357090722672665.a n = A290908 n

end A290908

/-! ## A290908.P10003841294546975264

`Δ[or(1, ∑[A001353(n)])]`
-/

namespace A290908.P10003841294546975264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P10003841294546975264

namespace A290908

/-- `Δ[or(1, ∑[A001353(n)])]` -/
def P10003841294546975264.Spec : Prop :=
  ∀ n, P10003841294546975264.a n = A290908 n

end A290908

/-! ## A290908.P14820882977559790713

`Δ[or(3, A101265(n+1))]`
-/

namespace A290908.P14820882977559790713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A101265 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P14820882977559790713

namespace A290908

/-- `Δ[or(3, A101265(n+1))]` -/
def P14820882977559790713.Spec : Prop :=
  ∀ n, P14820882977559790713.a n = A290908 n

end A290908

/-! ## A290908.P7517731968851042503

`Δ[or(3, A101879(n+1))]`
-/

namespace A290908.P7517731968851042503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A101879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P7517731968851042503

namespace A290908

/-- `Δ[or(3, A101879(n+1))]` -/
def P7517731968851042503.Spec : Prop :=
  ∀ n, P7517731968851042503.a n = A290908 n

end A290908

/-! ## A290908.P7401356474804942155

`and(1-A106707(n+1), -4)`
-/

namespace A290908.P7401356474804942155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A106707 (n + 1)) (-4)

end

end A290908.P7401356474804942155

namespace A290908

/-- `and(1-A106707(n+1), -4)` -/
def P7401356474804942155.Spec : Prop :=
  ∀ n, P7401356474804942155.a n = A290908 n

end A290908

/-! ## A290908.P518268278450703184

`A231896(n)-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A290908.P518268278450703184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A231896 n - a (n - 2)

end

end A290908.P518268278450703184

namespace A290908

/-- `A231896(n)-a(n-2)` -/
def P518268278450703184.Spec : Prop :=
  ∀ n, P518268278450703184.a n = A290908 n

end A290908

/-! ## A290908.P14762834500147384149

`∑[∑[A052530(n)]+and(2, n+1)]`
-/

namespace A290908.P14762834500147384149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290908.P14762834500147384149

namespace A290908

/-- `∑[∑[A052530(n)]+and(2, n+1)]` -/
def P14762834500147384149.Spec : Prop :=
  ∀ n, P14762834500147384149.a n = A290908 n

end A290908

/-! ## A290908.P15752449276904547538

`A387694(n)-A387689(n)`
-/

namespace A290908.P15752449276904547538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387694 n - A387689 n

end

end A290908.P15752449276904547538

namespace A290908

/-- `A387694(n)-A387689(n)` -/
def P15752449276904547538.Spec : Prop :=
  ∀ n, P15752449276904547538.a n = A290908 n

end A290908

/-! ## A290908.P2455915258933569271

`Δ[A061278(n)]-A056594(n)`
-/

namespace A290908.P2455915258933569271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056594 n

end

end A290908.P2455915258933569271

namespace A290908

/-- `Δ[A061278(n)]-A056594(n)` -/
def P2455915258933569271.Spec : Prop :=
  ∀ n, P2455915258933569271.a n = A290908 n

end A290908

/-! ## A290908.P15528938878080975210

`A001353(n+1)-A056594(n)`
-/

namespace A290908.P15528938878080975210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) - A056594 n

end

end A290908.P15528938878080975210

namespace A290908

/-- `A001353(n+1)-A056594(n)` -/
def P15528938878080975210.Spec : Prop :=
  ∀ n, P15528938878080975210.a n = A290908 n

end A290908

/-! ## A290908.P16191813409873167039

`2*(A099488(n)-A056594(n))`
-/

namespace A290908.P16191813409873167039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099488 n - A056594 n)

end

end A290908.P16191813409873167039

namespace A290908

/-- `2*(A099488(n)-A056594(n))` -/
def P16191813409873167039.Spec : Prop :=
  ∀ n, P16191813409873167039.a n = A290908 n

end A290908

/-! ## A290908.P9729818139976036648

`2*(A099489(n)-A099487(n))`
-/

namespace A290908.P9729818139976036648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099489 n - A099487 n)

end

end A290908.P9729818139976036648

namespace A290908

/-- `2*(A099489(n)-A099487(n))` -/
def P9729818139976036648.Spec : Prop :=
  ∀ n, P9729818139976036648.a n = A290908 n

end A290908

/-! ## A290908.P11495046851736732256

`A259592(2*n)-A056594(n)`
-/

namespace A290908.P11495046851736732256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (2 * n) - A056594 n

end

end A290908.P11495046851736732256

namespace A290908

/-- `A259592(2*n)-A056594(n)` -/
def P11495046851736732256.Spec : Prop :=
  ∀ n, P11495046851736732256.a n = A290908 n

end A290908

/-! ## A290908.P2038829282197456374

`Δ[A061278(n)+Δ[A004525(n)]]`
-/

namespace A290908.P2038829282197456374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P2038829282197456374

namespace A290908

/-- `Δ[A061278(n)+Δ[A004525(n)]]` -/
def P2038829282197456374.Spec : Prop :=
  ∀ n, P2038829282197456374.a n = A290908 n

end A290908

/-! ## A290908.P14258431901125851688

`Δ[and(A061278(n), A101265(n+1))]`
-/

namespace A290908.P14258431901125851688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061278 n) (A101265 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P14258431901125851688

namespace A290908

/-- `Δ[and(A061278(n), A101265(n+1))]` -/
def P14258431901125851688.Spec : Prop :=
  ∀ n, P14258431901125851688.a n = A290908 n

end A290908

/-! ## A290908.P3386621666010104706

`Δ[and(A061278(n), A101879(n+1))]`
-/

namespace A290908.P3386621666010104706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061278 n) (A101879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290908.P3386621666010104706

namespace A290908

/-- `Δ[and(A061278(n), A101879(n+1))]` -/
def P3386621666010104706.Spec : Prop :=
  ∀ n, P3386621666010104706.a n = A290908 n

end A290908

/-! ## A290908.P6145821571676063620

`A056594(n+2)+A001353(n+1)`
-/

namespace A290908.P6145821571676063620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 2) + A001353 (n + 1)

end

end A290908.P6145821571676063620

namespace A290908

/-- `A056594(n+2)+A001353(n+1)` -/
def P6145821571676063620.Spec : Prop :=
  ∀ n, P6145821571676063620.a n = A290908 n

end A290908

/-!
# A290909: p-INVERT of the positive integers, where p(S) = 1 - 5*S^2.

The programs for A290909, the canonical program `A290909.P11482955120662885079` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290909 has offset 0).

The definition of A290909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290909.P11482955120662885079

`4*a(n-1)-a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=20, a(3)=75`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290909

/-- `4*a(n-1)-a(n-2)+4*a(n-3)-a(n-4)` -/
def P11482955120662885079.Spec : Prop :=
  ∀ n, P11482955120662885079.a n = A290909 n

theorem P11482955120662885079.correct : P11482955120662885079.Spec := by
  intro n
  simp only [A290909]

end A290909

/-! ## A290909.P14217697782480434543

`5*A290910(n)`
-/

namespace A290909.P14217697782480434543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A290910 n

end

end A290909.P14217697782480434543

namespace A290909

/-- `5*A290910(n)` -/
def P14217697782480434543.Spec : Prop :=
  ∀ n, P14217697782480434543.a n = A290909 n

end A290909

/-! ## A290909.P11708906798373647573

`ogf(5x/(1-4x+x^2-4x^3+x^4))`
-/

namespace A290909.P11708906798373647573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -4, 1, -4, 1] n

end

end A290909.P11708906798373647573

namespace A290909

/-- `ogf(5x/(1-4x+x^2-4x^3+x^4))` -/
def P11708906798373647573.Spec : Prop :=
  ∀ n, P11708906798373647573.a n = A290909 n

end A290909

/-! ## A290909.P15180008550962891712

`A008587(A290910(n))`
-/

namespace A290909.P15180008550962891712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A290910 n).toNat

end

end A290909.P15180008550962891712

namespace A290909

/-- `A008587(A290910(n))` -/
def P15180008550962891712.Spec : Prop :=
  ∀ n, P15180008550962891712.a n = A290909 n

end A290909

/-!
# A290910: a(n) = (1/5)*A290909(n), n>= 0.

The programs for A290910, the canonical program `A290910.P15562395674328031790` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290910 has offset 0).

The definition of A290910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290910.P15562395674328031790

`4*a(n-1)-a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290910

/-- `4*a(n-1)-a(n-2)+4*a(n-3)-a(n-4)` -/
def P15562395674328031790.Spec : Prop :=
  ∀ n, P15562395674328031790.a n = A290910 n

theorem P15562395674328031790.correct : P15562395674328031790.Spec := by
  intro n
  simp only [A290910]

end A290910

/-! ## A290910.P12904722843124750645

`1/5*A290909(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290910.P12904722843124750645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A290909 n : ℚ)

end

end A290910.P12904722843124750645

namespace A290910

/-- `1/5*A290909(n)` -/
def P12904722843124750645.Spec : Prop :=
  ∀ n, P12904722843124750645.a n = (A290910 n : ℚ)

end A290910

/-! ## A290910.P2902985600299263423

`ogf(x/(1-4x+x^2-4x^3+x^4))`
-/

namespace A290910.P2902985600299263423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 1, -4, 1] n

end

end A290910.P2902985600299263423

namespace A290910

/-- `ogf(x/(1-4x+x^2-4x^3+x^4))` -/
def P2902985600299263423.Spec : Prop :=
  ∀ n, P2902985600299263423.a n = A290910 n

end A290910

/-! ## A290910.P12720819245218505987

`A290909(n)/5`
-/

namespace A290910.P12720819245218505987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290909 n : ℚ) / 5

end

end A290910.P12720819245218505987

namespace A290910

/-- `A290909(n)/5` -/
def P12720819245218505987.Spec : Prop :=
  ∀ n, P12720819245218505987.a n = (A290910 n : ℚ)

end A290910

/-!
# A290911: p-INVERT of the positive integers, where p(S) = 1 - 6*S^2.

The programs for A290911, the canonical program `A290911.P11532129112294586765` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290911 has offset 0).

The definition of A290911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290911.P11532129112294586765

`4*a(n-1)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=24, a(3)=96`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290911

/-- `4*a(n-1)+4*a(n-3)-a(n-4)` -/
def P11532129112294586765.Spec : Prop :=
  ∀ n, P11532129112294586765.a n = A290911 n

theorem P11532129112294586765.correct : P11532129112294586765.Spec := by
  intro n
  simp only [A290911]

end A290911

/-! ## A290911.P10828394250246881409

`6*A290912(n)`
-/

namespace A290911.P10828394250246881409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A290912 n

end

end A290911.P10828394250246881409

namespace A290911

/-- `6*A290912(n)` -/
def P10828394250246881409.Spec : Prop :=
  ∀ n, P10828394250246881409.a n = A290911 n

end A290911

/-! ## A290911.P16937431421317276652

`ogf(6x/(1-4x-4x^3+x^4))`
-/

namespace A290911.P16937431421317276652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -4, 0, -4, 1] n

end

end A290911.P16937431421317276652

namespace A290911

/-- `ogf(6x/(1-4x-4x^3+x^4))` -/
def P16937431421317276652.Spec : Prop :=
  ∀ n, P16937431421317276652.a n = A290911 n

end A290911

/-! ## A290911.P13937577538307884061

`A008588(A290912(n))`
-/

namespace A290911.P13937577538307884061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A290912 n).toNat

end

end A290911.P13937577538307884061

namespace A290911

/-- `A008588(A290912(n))` -/
def P13937577538307884061.Spec : Prop :=
  ∀ n, P13937577538307884061.a n = A290911 n

end A290911

/-!
# A290912: a(n) = (1/6)*A290911(n).

The programs for A290912, the canonical program `A290912.P7597353105780159968` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290912 has offset 0).

The definition of A290912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290912.P7597353105780159968

`4*a(n-1)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290912

/-- `4*a(n-1)+4*a(n-3)-a(n-4)` -/
def P7597353105780159968.Spec : Prop :=
  ∀ n, P7597353105780159968.a n = A290912 n

theorem P7597353105780159968.correct : P7597353105780159968.Spec := by
  intro n
  simp only [A290912]

end A290912

/-! ## A290912.P1782071001724486601

`1/6*A290911(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290912.P1782071001724486601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A290911 n : ℚ)

end

end A290912.P1782071001724486601

namespace A290912

/-- `1/6*A290911(n)` -/
def P1782071001724486601.Spec : Prop :=
  ∀ n, P1782071001724486601.a n = (A290912 n : ℚ)

end A290912

/-! ## A290912.P10213818696891370264

`ogf(x/(1-4x-4x^3+x^4))`
-/

namespace A290912.P10213818696891370264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 0, -4, 1] n

end

end A290912.P10213818696891370264

namespace A290912

/-- `ogf(x/(1-4x-4x^3+x^4))` -/
def P10213818696891370264.Spec : Prop :=
  ∀ n, P10213818696891370264.a n = A290912 n

end A290912

/-! ## A290912.P4758932504589716095

`A290911(n)/6`
-/

namespace A290912.P4758932504589716095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290911 n : ℚ) / 6

end

end A290912.P4758932504589716095

namespace A290912

/-- `A290911(n)/6` -/
def P4758932504589716095.Spec : Prop :=
  ∀ n, P4758932504589716095.a n = (A290912 n : ℚ)

end A290912

/-!
# A290913: p-INVERT of the positive integers, where p(S) = 1 - 7*S^2.

The programs for A290913, the canonical program `A290913.P8217635293525746569` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290913 has offset 0).

The definition of A290913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290913.P8217635293525746569

`4*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=28, a(3)=119`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290913

/-- `4*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)` -/
def P8217635293525746569.Spec : Prop :=
  ∀ n, P8217635293525746569.a n = A290913 n

theorem P8217635293525746569.correct : P8217635293525746569.Spec := by
  intro n
  simp only [A290913]

end A290913

/-! ## A290913.P8454817972405823001

`7*A290914(n)`
-/

namespace A290913.P8454817972405823001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A290914 n

end

end A290913.P8454817972405823001

namespace A290913

/-- `7*A290914(n)` -/
def P8454817972405823001.Spec : Prop :=
  ∀ n, P8454817972405823001.a n = A290913 n

end A290913

/-! ## A290913.P11332078932153315875

`ogf(7x/(1-4x-x^2-4x^3+x^4))`
-/

namespace A290913.P11332078932153315875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -4, -1, -4, 1] n

end

end A290913.P11332078932153315875

namespace A290913

/-- `ogf(7x/(1-4x-x^2-4x^3+x^4))` -/
def P11332078932153315875.Spec : Prop :=
  ∀ n, P11332078932153315875.a n = A290913 n

end A290913

/-! ## A290913.P13923547455615036433

`A008589(A290914(n))`
-/

namespace A290913.P13923547455615036433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A290914 n).toNat

end

end A290913.P13923547455615036433

namespace A290913

/-- `A008589(A290914(n))` -/
def P13923547455615036433.Spec : Prop :=
  ∀ n, P13923547455615036433.a n = A290913 n

end A290913

/-!
# A290914: a(n) = (1/7)*A290913(n).

The programs for A290914, the canonical program `A290914.P11619726461725071325` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290914 has offset 0).

The definition of A290914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290914.P11619726461725071325

`4*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=17`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290914

/-- `4*a(n-1)+a(n-2)+4*a(n-3)-a(n-4)` -/
def P11619726461725071325.Spec : Prop :=
  ∀ n, P11619726461725071325.a n = A290914 n

theorem P11619726461725071325.correct : P11619726461725071325.Spec := by
  intro n
  simp only [A290914]

end A290914

/-! ## A290914.P15067366551896212157

`1/7*A290913(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290914.P15067366551896212157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (A290913 n : ℚ)

end

end A290914.P15067366551896212157

namespace A290914

/-- `1/7*A290913(n)` -/
def P15067366551896212157.Spec : Prop :=
  ∀ n, P15067366551896212157.a n = (A290914 n : ℚ)

end A290914

/-! ## A290914.P18384069116692963469

`ogf(x/(1-4x-x^2-4x^3+x^4))`
-/

namespace A290914.P18384069116692963469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -1, -4, 1] n

end

end A290914.P18384069116692963469

namespace A290914

/-- `ogf(x/(1-4x-x^2-4x^3+x^4))` -/
def P18384069116692963469.Spec : Prop :=
  ∀ n, P18384069116692963469.a n = A290914 n

end A290914

/-! ## A290914.P17404584981762006511

`A290913(n)/7`
-/

namespace A290914.P17404584981762006511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290913 n : ℚ) / 7

end

end A290914.P17404584981762006511

namespace A290914

/-- `A290913(n)/7` -/
def P17404584981762006511.Spec : Prop :=
  ∀ n, P17404584981762006511.a n = (A290914 n : ℚ)

end A290914

/-!
# A290915: p-INVERT of the positive integers, where p(S) = 1 - 8*S^2.

The programs for A290915, the canonical program `A290915.P4364825466289890159` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290915 has offset 0).

The definition of A290915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290915.P4364825466289890159

`4*a(n-1)+2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=32, a(3)=144`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290915

/-- `4*a(n-1)+2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4364825466289890159.Spec : Prop :=
  ∀ n, P4364825466289890159.a n = A290915 n

theorem P4364825466289890159.correct : P4364825466289890159.Spec := by
  intro n
  simp only [A290915]

end A290915

/-! ## A290915.P7474497478453536164

`8*A290916(n)`
-/

namespace A290915.P7474497478453536164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A290916 n

end

end A290915.P7474497478453536164

namespace A290915

/-- `8*A290916(n)` -/
def P7474497478453536164.Spec : Prop :=
  ∀ n, P7474497478453536164.a n = A290915 n

end A290915

/-! ## A290915.P1286581519158775334

`ogf(8x/(1-4x-2x^2-4x^3+x^4))`
-/

namespace A290915.P1286581519158775334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -4, -2, -4, 1] n

end

end A290915.P1286581519158775334

namespace A290915

/-- `ogf(8x/(1-4x-2x^2-4x^3+x^4))` -/
def P1286581519158775334.Spec : Prop :=
  ∀ n, P1286581519158775334.a n = A290915 n

end A290915

/-! ## A290915.P12147629507517887619

`A290916(n)/(A005408(n)/A016825(n))^3`
-/

namespace A290915.P12147629507517887619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290916 n : ℚ) / ((A005408 n : ℚ) / (A016825 n : ℚ)) ^ 3

end

end A290915.P12147629507517887619

namespace A290915

/-- `A290916(n)/(A005408(n)/A016825(n))^3` -/
def P12147629507517887619.Spec : Prop :=
  ∀ n, P12147629507517887619.a n = (A290915 n : ℚ)

end A290915

/-! ## A290915.P10316963326480495115

`Δ[8*floor(A093568(n+1)/16)]`
-/

namespace A290915.P10316963326480495115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊(A093568 (n + 1) : ℚ) / 16⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290915.P10316963326480495115

namespace A290915

/-- `Δ[8*floor(A093568(n+1)/16)]` -/
def P10316963326480495115.Spec : Prop :=
  ∀ n, P10316963326480495115.a n = A290915 n

end A290915

/-!
# A290916: a(n) = (1/8)*A290915(n).

The programs for A290916, the canonical program `A290916.P6200435505481793503` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290916 has offset 0).

The definition of A290916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290916.P6200435505481793503

`4*a(n-1)+2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=18`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290916

/-- `4*a(n-1)+2*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6200435505481793503.Spec : Prop :=
  ∀ n, P6200435505481793503.a n = A290916 n

theorem P6200435505481793503.correct : P6200435505481793503.Spec := by
  intro n
  simp only [A290916]

end A290916

/-! ## A290916.P9689622602004902440

`1/8*A290915(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290916.P9689622602004902440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A290915 n : ℚ)

end

end A290916.P9689622602004902440

namespace A290916

/-- `1/8*A290915(n)` -/
def P9689622602004902440.Spec : Prop :=
  ∀ n, P9689622602004902440.a n = (A290916 n : ℚ)

end A290916

/-! ## A290916.P2075226562449595602

`ogf(x/(1-4x-2x^2-4x^3+x^4))`
-/

namespace A290916.P2075226562449595602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -2, -4, 1] n

end

end A290916.P2075226562449595602

namespace A290916

/-- `ogf(x/(1-4x-2x^2-4x^3+x^4))` -/
def P2075226562449595602.Spec : Prop :=
  ∀ n, P2075226562449595602.a n = A290916 n

end A290916

/-! ## A290916.P16061340266163595865

`A290915(n)/8`
-/

namespace A290916.P16061340266163595865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290915 n : ℚ) / 8

end

end A290916.P16061340266163595865

namespace A290916

/-- `A290915(n)/8` -/
def P16061340266163595865.Spec : Prop :=
  ∀ n, P16061340266163595865.a n = (A290916 n : ℚ)

end A290916

/-! ## A290916.P17462898186028177351

`Δ[floor(A093568(n+1)/16)]`
-/

namespace A290916.P17462898186028177351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093568 (n + 1) : ℚ) / 16⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290916.P17462898186028177351

namespace A290916

/-- `Δ[floor(A093568(n+1)/16)]` -/
def P17462898186028177351.Spec : Prop :=
  ∀ n, P17462898186028177351.a n = A290916 n

end A290916

/-!
# A290917: p-INVERT of the positive integers, where p(S) = (1 - S)^2.

The programs for A290917, the canonical program `A290917.P8941503681162220233` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290917 has offset 0).

The definition of A290917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290917.P8941503681162220233

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=7, a(2)=22, a(3)=67`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290917

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P8941503681162220233.Spec : Prop :=
  ∀ n, P8941503681162220233.a n = A290917 n

theorem P8941503681162220233.correct : P8941503681162220233.Spec := by
  intro n
  simp only [A290917]

end A290917

/-! ## A290917.P15119460430559011194

`A291241(Δ[n²])`
-/

namespace A290917.P15119460430559011194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290917.P15119460430559011194

namespace A290917

/-- `A291241(Δ[n²])` -/
def P15119460430559011194.Spec : Prop :=
  ∀ n, P15119460430559011194.a n = A290917 n

end A290917

/-! ## A290917.P1998517449500680814

`A064831(n)+ceil(ϕ²*a(n-1))` with `a(0)=2`
-/

namespace A290917.P1998517449500680814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A064831 n + ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A290917.P1998517449500680814

namespace A290917

/-- `A064831(n)+ceil(ϕ²*a(n-1))` -/
def P1998517449500680814.Spec : Prop :=
  ∀ n, P1998517449500680814.a n = A290917 n

end A290917

/-! ## A290917.P3301086271135715827

`A030267(n+1)+∑[floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A290917.P3301086271135715827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290917.P3301086271135715827

namespace A290917

/-- `A030267(n+1)+∑[floor(ϕ²*a(n-1))]` -/
def P3301086271135715827.Spec : Prop :=
  ∀ n, P3301086271135715827.a n = A290917 n

end A290917

/-! ## A290917.P1071944503899301955

`record[A291241(A006257(n+1))]`
-/

namespace A290917.P1071944503899301955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290917.P1071944503899301955

namespace A290917

/-- `record[A291241(A006257(n+1))]` -/
def P1071944503899301955.Spec : Prop :=
  ∀ n, P1071944503899301955.a n = A290917 n

end A290917

/-! ## A290917.P2844305142382610693

`A238846(n)+A059502(n+1)`
-/

namespace A290917.P2844305142382610693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n + A059502 (n + 1)

end

end A290917.P2844305142382610693

namespace A290917

/-- `A238846(n)+A059502(n+1)` -/
def P2844305142382610693.Spec : Prop :=
  ∀ n, P2844305142382610693.a n = A290917 n

end A290917

/-! ## A290917.P4213366751257413238

`2*A290929(n)-A290890(n)`
-/

namespace A290917.P4213366751257413238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290929 n - A290890 n

end

end A290917.P4213366751257413238

namespace A290917

/-- `2*A290929(n)-A290890(n)` -/
def P4213366751257413238.Spec : Prop :=
  ∀ n, P4213366751257413238.a n = A290917 n

end A290917

/-! ## A290917.P4029965710431062634

`∑[A094864(n)+∑[A094864(n)]]`
-/

namespace A290917.P4029965710431062634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290917.P4029965710431062634

namespace A290917

/-- `∑[A094864(n)+∑[A094864(n)]]` -/
def P4029965710431062634.Spec : Prop :=
  ∀ n, P4029965710431062634.a n = A290917 n

end A290917

/-! ## A290917.P18080044342151033371

`A030267(n+1)+A001906(n+1)`
-/

namespace A290917.P18080044342151033371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + A001906 (n + 1)

end

end A290917.P18080044342151033371

namespace A290917

/-- `A030267(n+1)+A001906(n+1)` -/
def P18080044342151033371.Spec : Prop :=
  ∀ n, P18080044342151033371.a n = A290917 n

end A290917

/-! ## A290917.P14343966080651767279

`A088305(n+1)+A030267(n+1)`
-/

namespace A290917.P14343966080651767279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) + A030267 (n + 1)

end

end A290917.P14343966080651767279

namespace A290917

/-- `A088305(n+1)+A030267(n+1)` -/
def P14343966080651767279.Spec : Prop :=
  ∀ n, P14343966080651767279.a n = A290917 n

end A290917

/-! ## A290917.P14377641059713868663

`A059502(n+2)-A001519(n+1)`
-/

namespace A290917.P14377641059713868663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 2) - A001519 (n + 1)

end

end A290917.P14377641059713868663

namespace A290917

/-- `A059502(n+2)-A001519(n+1)` -/
def P14377641059713868663.Spec : Prop :=
  ∀ n, P14377641059713868663.a n = A290917 n

end A290917

/-! ## A290917.P14328451547338166940

`∑[A134512(2*n)+A000045(Δ[n²])]`
-/

namespace A290917.P14328451547338166940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) + A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290917.P14328451547338166940

namespace A290917

/-- `∑[A134512(2*n)+A000045(Δ[n²])]` -/
def P14328451547338166940.Spec : Prop :=
  ∀ n, P14328451547338166940.a n = A290917 n

end A290917

/-! ## A290917.P12601708422918118674

`A129720(2*n+1)+A088305(n+1)`
-/

namespace A290917.P12601708422918118674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n + 1) + A088305 (n + 1)

end

end A290917.P12601708422918118674

namespace A290917

/-- `A129720(2*n+1)+A088305(n+1)` -/
def P12601708422918118674.Spec : Prop :=
  ∀ n, P12601708422918118674.a n = A290917 n

end A290917

/-! ## A290917.P16124127998032449913

`A059502(n+2)-A000045(2*n+1)`
-/

namespace A290917.P16124127998032449913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 2) - A000045 (2 * n + 1)

end

end A290917.P16124127998032449913

namespace A290917

/-- `A059502(n+2)-A000045(2*n+1)` -/
def P16124127998032449913.Spec : Prop :=
  ∀ n, P16124127998032449913.a n = A290917 n

end A290917

/-! ## A290917.P13256995584133763596

`A291241(2*n+1)+A010678(2*n)`
-/

namespace A290917.P13256995584133763596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n + 1) + A010678 (2 * n)

end

end A290917.P13256995584133763596

namespace A290917

/-- `A291241(2*n+1)+A010678(2*n)` -/
def P13256995584133763596.Spec : Prop :=
  ∀ n, P13256995584133763596.a n = A290917 n

end A290917

/-! ## A290917.P6113319276988649360

`A291241(2*n+1)+A109718(2*n)`
-/

namespace A290917.P6113319276988649360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n + 1) + A109718 (2 * n)

end

end A290917.P6113319276988649360

namespace A290917

/-- `A291241(2*n+1)+A109718(2*n)` -/
def P6113319276988649360.Spec : Prop :=
  ∀ n, P6113319276988649360.a n = A290917 n

end A290917

/-! ## A290917.P5922632503936816382

`A291241(2*n+1)+A110270(2*n)`
-/

namespace A290917.P5922632503936816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n + 1) + A110270 (2 * n)

end

end A290917.P5922632503936816382

namespace A290917

/-- `A291241(2*n+1)+A110270(2*n)` -/
def P5922632503936816382.Spec : Prop :=
  ∀ n, P5922632503936816382.a n = A290917 n

end A290917

/-! ## A290917.P11327847548573882864

`A057979(2*n)*A291241(2*n+1)`
-/

namespace A290917.P11327847548573882864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A291241 (2 * n + 1)

end

end A290917.P11327847548573882864

namespace A290917

/-- `A057979(2*n)*A291241(2*n+1)` -/
def P11327847548573882864.Spec : Prop :=
  ∀ n, P11327847548573882864.a n = A290917 n

end A290917

/-! ## A290917.P12608741006422411539

`A059841(2*n)*A291241(2*n+1)`
-/

namespace A290917.P12608741006422411539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A291241 (2 * n + 1)

end

end A290917.P12608741006422411539

namespace A290917

/-- `A059841(2*n)*A291241(2*n+1)` -/
def P12608741006422411539.Spec : Prop :=
  ∀ n, P12608741006422411539.a n = A290917 n

end A290917

/-! ## A290917.P3617155087907401538

`∑[A134512(2*n)+Δ[A000045(2*n)]]`
-/

namespace A290917.P3617155087907401538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290917.P3617155087907401538

namespace A290917

/-- `∑[A134512(2*n)+Δ[A000045(2*n)]]` -/
def P3617155087907401538.Spec : Prop :=
  ∀ n, P3617155087907401538.a n = A290917 n

end A290917

/-!
# A290918: p-INVERT of the positive integers, where p(S) = (1 - S)^3.

The programs for A290918, there is no canonical definition to state claims against.
-/

/-! ## A290918.P9484760341659967386

`A204533(∑[n+4]+9)`
-/

namespace A290918.P9484760341659967386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A290918.P9484760341659967386

/-! ## A290918.P10004104428868175076

`lcm(A033999(n), A204533(A167614(n+3)))`
-/

namespace A290918.P10004104428868175076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A204533 (A167614 (n + 3)).toNat)

end

end A290918.P10004104428868175076

/-! ## A290918.P12232372040770433402

`A033999(2*n)*A204533(A167614(n+3))`
-/

namespace A290918.P12232372040770433402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A204533 (A167614 (n + 3)).toNat

end

end A290918.P12232372040770433402

/-! ## A290918.P9027743031724649721

`A033999(A005408(n))+A204533(A167614(n+3))+1`
-/

namespace A290918.P9027743031724649721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005408 n).toNat + (A204533 (A167614 (n + 3)).toNat + 1)

end

end A290918.P9027743031724649721

/-! ## A290918.P4261320023677312617

`A204533(A167614(n+3))%A204401(n+1)`
-/

namespace A290918.P4261320023677312617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204533 (A167614 (n + 3)).toNat) (A204401 (n + 1))

end

end A290918.P4261320023677312617

/-!
# A290919: p-INVERT of the positive integers, where p(S) = (1 - S)^4.

The programs for A290919, there is no canonical definition to state claims against.
-/

/-! ## A290919.P10687998281789177645

`A204533(A167499(n+4)-1)`
-/

namespace A290919.P10687998281789177645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A167499 (n + 4) - 1).toNat

end

end A290919.P10687998281789177645

/-! ## A290919.P1980885056901071046

`A204533(A000124(n+5)+3)`
-/

namespace A290919.P1980885056901071046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A000124 (n + 5) + 3).toNat

end

end A290919.P1980885056901071046

/-! ## A290919.P4561054794613838805

`A204533(A000217(n+5)+4)`
-/

namespace A290919.P4561054794613838805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A000217 (n + 5) + 4).toNat

end

end A290919.P4561054794613838805

/-! ## A290919.P13268306120482193174

`A204533(A055998(n+3)+7)`
-/

namespace A290919.P13268306120482193174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A055998 (n + 3) + 7).toNat

end

end A290919.P13268306120482193174

/-! ## A290919.P8327886952079289337

`A204533(eq[9, A222438(n+1)])`
-/

namespace A290919.P8327886952079289337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290919.P8327886952079289337

/-!
# A290920: p-INVERT of the positive integers, where p(S) = (1 - S)^5.

The programs for A290920, there is no canonical definition to state claims against.
-/

/-! ## A290920.P3911317549399574294

`A204533(A167499(n+5))`
-/

namespace A290920.P3911317549399574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A167499 (n + 5)).toNat

end

end A290920.P3911317549399574294

/-! ## A290920.P10863704133341883468

`A204533(A000124(n+6)+4)`
-/

namespace A290920.P10863704133341883468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A000124 (n + 6) + 4).toNat

end

end A290920.P10863704133341883468

/-! ## A290920.P15537894755721350179

`A204533(A055998(n+4)+8)`
-/

namespace A290920.P15537894755721350179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A055998 (n + 4) + 8).toNat

end

end A290920.P15537894755721350179

/-! ## A290920.P14910793132331821855

`A204533(A051938(n+6)+23)`
-/

namespace A290920.P14910793132331821855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A051938 (n + 6) + 23).toNat

end

end A290920.P14910793132331821855

/-! ## A290920.P605274529406543844

`A204533(A161680(n+8)-(n+2))`
-/

namespace A290920.P605274529406543844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A161680 (n + 8) - (n + 2 : ℤ)).toNat

end

end A290920.P605274529406543844

/-!
# A290921: p-INVERT of the positive integers, where p(S) = (1 - S)^6.

The programs for A290921, there is no canonical definition to state claims against.
-/

/-! ## A290921.P15818627159412460858

`A204533(A167499(n+6)+1)`
-/

namespace A290921.P15818627159412460858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A167499 (n + 6) + 1).toNat

end

end A290921.P15818627159412460858

/-! ## A290921.P17493725145206899658

`A204533(A056115(n+2)+21)`
-/

namespace A290921.P17493725145206899658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A056115 (n + 2) + 21).toNat

end

end A290921.P17493725145206899658

/-! ## A290921.P12094707436020284911

`A204533(A000096(n+7)-(n+1))`
-/

namespace A290921.P12094707436020284911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A000096 (n + 7) - (n + 1 : ℤ)).toNat

end

end A290921.P12094707436020284911

/-! ## A290921.P12780596690501001737

`A204533(A000124(n+8)-(n+3))`
-/

namespace A290921.P12780596690501001737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A000124 (n + 8) - (n + 3 : ℤ)).toNat

end

end A290921.P12780596690501001737

/-! ## A290921.P11786017071568722589

`A204533(A055999(n)+A016825(n+8))`
-/

namespace A290921.P11786017071568722589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A055999 n + A016825 (n + 8)).toNat

end

end A290921.P11786017071568722589

/-! ## A290921.P12214206365372047200

`A204533(A004277(n+9)+A000124(n+5))`
-/

namespace A290921.P12214206365372047200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (A004277 (n + 9) + A000124 (n + 5)).toNat

end

end A290921.P12214206365372047200

/-!
# A290922: p-INVERT of the positive integers, where p(S) = 1 - S - 2*S^2.

The programs for A290922, the canonical program `A290922.P14360928951178167548` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290922 has offset 0).

The definition of A290922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290922.P14360928951178167548

`5*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=75`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290922

/-- `5*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` -/
def P14360928951178167548.Spec : Prop :=
  ∀ n, P14360928951178167548.a n = A290922 n

theorem P14360928951178167548.correct : P14360928951178167548.Spec := by
  intro n
  simp only [A290922]

end A290922

/-! ## A290922.P109476785498589952

`ogf((1+x^2)/(1-5x+6x^2-5x^3+x^4))`
-/

namespace A290922.P109476785498589952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -5, 6, -5, 1] n

end

end A290922.P109476785498589952

namespace A290922

/-- `ogf((1+x^2)/(1-5x+6x^2-5x^3+x^4))` -/
def P109476785498589952.Spec : Prop :=
  ∀ n, P109476785498589952.a n = A290922 n

end A290922

/-! ## A290922.P5555979134462936220

`round(4/3*A001353(n+1))`
-/

namespace A290922.P5555979134462936220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (A001353 (n + 1) : ℚ))

end

end A290922.P5555979134462936220

namespace A290922

/-- `round(4/3*A001353(n+1))` -/
def P5555979134462936220.Spec : Prop :=
  ∀ n, P5555979134462936220.a n = A290922 n

end A290922

/-! ## A290922.P9847396993011993121

`round(A001834(n)+A001835(n)/3)`
-/

namespace A290922.P9847396993011993121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001834 n : ℚ) + (A001835 n : ℚ) / 3)

end

end A290922.P9847396993011993121

namespace A290922

/-- `round(A001834(n)+A001835(n)/3)` -/
def P9847396993011993121.Spec : Prop :=
  ∀ n, P9847396993011993121.a n = A290922 n

end A290922

/-! ## A290922.P5931046426710470499

`round(A231896(n+1)/3)`
-/

namespace A290922.P5931046426710470499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A231896 (n + 1) : ℚ) / 3)

end

end A290922.P5931046426710470499

namespace A290922

/-- `round(A231896(n+1)/3)` -/
def P5931046426710470499.Spec : Prop :=
  ∀ n, P5931046426710470499.a n = A290922 n

end A290922

/-! ## A290922.P15803803185563174391

`Δ[Δ[round(A052530(n)/3)]]`
-/

namespace A290922.P15803803185563174391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052530 n : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290922.P15803803185563174391

namespace A290922

/-- `Δ[Δ[round(A052530(n)/3)]]` -/
def P15803803185563174391.Spec : Prop :=
  ∀ n, P15803803185563174391.a n = A290922 n

end A290922

/-!
# A290923: p-INVERT of the positive integers, where p(S) = 1 - 2*S - 2*S^2.

The programs for A290923, the canonical program `A290923.P16600829635947254968` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290923 has offset 0).

The definition of A290923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290923.P16600829635947254968

`6*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=10, a(2)=46, a(3)=208`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290923

/-- `6*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P16600829635947254968.Spec : Prop :=
  ∀ n, P16600829635947254968.a n = A290923 n

theorem P16600829635947254968.correct : P16600829635947254968.Spec := by
  intro n
  simp only [A290923]

end A290923

/-! ## A290923.P2590707259964844909

`2*A290924(n)`
-/

namespace A290923.P2590707259964844909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290924 n

end

end A290923.P2590707259964844909

namespace A290923

/-- `2*A290924(n)` -/
def P2590707259964844909.Spec : Prop :=
  ∀ n, P2590707259964844909.a n = A290923 n

end A290923

/-! ## A290923.P14934646085916049890

`A290924(n)+record[A290924(A058207(n))]`
-/

namespace A290923.P14934646085916049890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 (A058207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290923.P14934646085916049890

namespace A290923

/-- `A290924(n)+record[A290924(A058207(n))]` -/
def P14934646085916049890.Spec : Prop :=
  ∀ n, P14934646085916049890.a n = A290923 n

end A290923

/-! ## A290923.P16203607758635353960

`A290924(1-A024000(n))+A290924(n)`
-/

namespace A290923.P16203607758635353960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 (1 - A024000 n).toNat + A290924 n

end

end A290923.P16203607758635353960

namespace A290923

/-- `A290924(1-A024000(n))+A290924(n)` -/
def P16203607758635353960.Spec : Prop :=
  ∀ n, P16203607758635353960.a n = A290923 n

end A290923

/-! ## A290923.P15840112311047363388

`A290924(n)+or(A000007(n), A290924(n))`
-/

namespace A290923.P15840112311047363388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 n + Int.lor (A000007 n) (A290924 n)

end

end A290923.P15840112311047363388

namespace A290923

/-- `A290924(n)+or(A000007(n), A290924(n))` -/
def P15840112311047363388.Spec : Prop :=
  ∀ n, P15840112311047363388.a n = A290923 n

end A290923

/-! ## A290923.P4339323477425496049

`A290924(n)+A290924(n)+A024000(A024000(n)+n)`
-/

namespace A290923.P4339323477425496049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 n + (A290924 n + A024000 (A024000 n + (n : ℤ)).toNat)

end

end A290923.P4339323477425496049

namespace A290923

/-- `A290924(n)+A290924(n)+A024000(A024000(n)+n)` -/
def P4339323477425496049.Spec : Prop :=
  ∀ n, P4339323477425496049.a n = A290923 n

end A290923

/-! ## A290923.P11517425693352948913

`A290924(A000194(n²))+A290924(n)`
-/

namespace A290923.P11517425693352948913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 (A000194 (n ^ 2)).toNat + A290924 n

end

end A290923.P11517425693352948913

namespace A290923

/-- `A290924(A000194(n²))+A290924(n)` -/
def P11517425693352948913.Spec : Prop :=
  ∀ n, P11517425693352948913.a n = A290923 n

end A290923

/-! ## A290923.P15278203778229252089

`A290924(n)+record[A290924(A004197(n))]`
-/

namespace A290923.P15278203778229252089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 (A004197 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290923.P15278203778229252089

namespace A290923

/-- `A290924(n)+record[A290924(A004197(n))]` -/
def P15278203778229252089.Spec : Prop :=
  ∀ n, P15278203778229252089.a n = A290923 n

end A290923

/-!
# A290924: a(n) = (1/2)*A290923(n).

The programs for A290924, the canonical program `A290924.P5661918175419311490` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290924 has offset 0).

The definition of A290924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290924.P5661918175419311490

`6*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=104`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290924

/-- `6*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P5661918175419311490.Spec : Prop :=
  ∀ n, P5661918175419311490.a n = A290924 n

theorem P5661918175419311490.correct : P5661918175419311490.Spec := by
  intro n
  simp only [A290924]

end A290924

/-! ## A290924.P1753372382004642522

`1/2*A290923(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290924.P1753372382004642522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A290923 n : ℚ)

end

end A290924.P1753372382004642522

namespace A290924

/-- `1/2*A290923(n)` -/
def P1753372382004642522.Spec : Prop :=
  ∀ n, P1753372382004642522.a n = (A290924 n : ℚ)

end A290924

/-! ## A290924.P8076966414146860775

`A290923(n)/2`
-/

namespace A290924.P8076966414146860775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290923 n : ℚ) / 2

end

end A290924.P8076966414146860775

namespace A290924

/-- `A290923(n)/2` -/
def P8076966414146860775.Spec : Prop :=
  ∀ n, P8076966414146860775.a n = (A290924 n : ℚ)

end A290924

/-! ## A290924.P2494726158344097881

`record[ratio[A290923(A087509(n))]]`
-/

namespace A290924.P2494726158344097881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290923 (A087509 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290924.P2494726158344097881

namespace A290924

/-- `record[ratio[A290923(A087509(n))]]` -/
def P2494726158344097881.Spec : Prop :=
  ∀ n, P2494726158344097881.a n = (A290924 n : ℚ)

end A290924

/-! ## A290924.P7458848122278910317

`record[ratio[A290923(A080791(n))]]`
-/

namespace A290924.P7458848122278910317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290923 (A080791 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290924.P7458848122278910317

namespace A290924

/-- `record[ratio[A290923(A080791(n))]]` -/
def P7458848122278910317.Spec : Prop :=
  ∀ n, P7458848122278910317.a n = (A290924 n : ℚ)

end A290924

/-!
# A290925: p-INVERT of the positive integers, where p(S) = 1 - 3*S - 2*S^2.

The programs for A290925, the canonical program `A290925.P18046416046373262665` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290925 has offset 0).

The definition of A290925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290925.P18046416046373262665

`7*a(n-1)-10*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=3, a(1)=17, a(2)=92, a(3)=495`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290925

/-- `7*a(n-1)-10*a(n-2)+7*a(n-3)-a(n-4)` -/
def P18046416046373262665.Spec : Prop :=
  ∀ n, P18046416046373262665.a n = A290925 n

theorem P18046416046373262665.correct : P18046416046373262665.Spec := by
  intro n
  simp only [A290925]

end A290925

/-!
# A290926: p-INVERT of the positive integers, where p(S) = (1 - S^2)^2.

The programs for A290926, there is no canonical definition to state claims against.
-/

/-! ## A290926.P14875234713085177128

`A344420(A313866(3^n))+A290890(n)`
-/

namespace A290926.P14875234713085177128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A313866 (3 ^ n)).toNat + A290890 n

end

end A290926.P14875234713085177128

/-! ## A290926.P14076500259175983136

`A164089(A016064(n))+A290890(n)+n`
-/

namespace A290926.P14076500259175983136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A016064 n).toNat + (A290890 n + (n : ℤ))

end

end A290926.P14076500259175983136

/-! ## A290926.P9306963381436998454

`A344420(A313866(3^n))+abs(A113067(n))`
-/

namespace A290926.P9306963381436998454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A313866 (3 ^ n)).toNat + |A113067 n|

end

end A290926.P9306963381436998454

/-!
# A290927: p-INVERT of the positive integers, where p(S) = (1 - S^2)^3.

The programs for A290927, there is no canonical definition to state claims against.
-/

/-! ## A290927.P12264172729287406897

`A123621(A210448(n)+A052905(n))`
-/

namespace A290927.P12264172729287406897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A210448 n + A052905 n).toNat

end

end A290927.P12264172729287406897

/-! ## A290927.P11632750716644786032

`A327686(abs(A168491(n)))+A003946(n)`
-/

namespace A290927.P11632750716644786032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327686 |A168491 n|.toNat + A003946 n

end

end A290927.P11632750716644786032

/-!
# A290928: p-INVERT of the positive integers, where p(S) = (1 - S^3)^2.

The programs for A290928, there is no canonical definition to state claims against.
-/

/-! ## A290928.P5223133870054650640

`A342498(∑[floor(5*n/2)])-A074645(n+1)`
-/

namespace A290928.P5223133870054650640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A074645 (n + 1)

end

end A290928.P5223133870054650640

/-! ## A290928.P823394881544625048

`∑[∑[A231204(A351015(n))]]`
-/

namespace A290928.P823394881544625048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A351015 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290928.P823394881544625048

/-!
# A290929: p-INVERT of the positive integers, where p(S) = (1 - S)(1 - S^2).

The programs for A290929, the canonical program `A290929.P14096020846007279230` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290929 has offset 0).

The definition of A290929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290929.P14096020846007279230

`(A290917(n)+A290890(n))/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290929

/-- `(A290917(n)+A290890(n))/2` -/
def P14096020846007279230.Spec : Prop :=
  ∀ n, P14096020846007279230.a n = (A290929 n : ℚ)

end A290929

/-! ## A290929.P13845708916394001297

`(A290917(n)+abs(A113067(n)))/2`
-/

namespace A290929.P13845708916394001297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290917 n + |A113067 n| : ℚ) / 2

end

end A290929.P13845708916394001297

namespace A290929

/-- `(A290917(n)+abs(A113067(n)))/2` -/
def P13845708916394001297.Spec : Prop :=
  ∀ n, P13845708916394001297.a n = (A290929 n : ℚ)

end A290929

/-! ## A290929.P3606811452903635379

`(A290917(n)+Δ[A109961(n)])/2`
-/

namespace A290929.P3606811452903635379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290917 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A290929.P3606811452903635379

namespace A290929

/-- `(A290917(n)+Δ[A109961(n)])/2` -/
def P3606811452903635379.Spec : Prop :=
  ∀ n, P3606811452903635379.a n = (A290929 n : ℚ)

end A290929

/-! ## A290929.P2858551183097503484

`A318518(A290917(n)+A290890(n))`
-/

namespace A290929.P2858551183097503484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A290917 n + A290890 n).toNat

end

end A290929.P2858551183097503484

namespace A290929

/-- `A318518(A290917(n)+A290890(n))` -/
def P2858551183097503484.Spec : Prop :=
  ∀ n, P2858551183097503484.a n = A290929 n

end A290929

/-! ## A290929.P15014241330826969231

`A318518(A290917(n)+abs(A113067(n)))`
-/

namespace A290929.P15014241330826969231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A290917 n + |A113067 n|).toNat

end

end A290929.P15014241330826969231

namespace A290929

/-- `A318518(A290917(n)+abs(A113067(n)))` -/
def P15014241330826969231.Spec : Prop :=
  ∀ n, P15014241330826969231.a n = A290929 n

end A290929

/-!
# A290930: p-INVERT of the positive integers, where p(S) = (1 - S^2)(1 - 2*S^2).

The programs for A290930, the canonical program `A290930.P2559548672273861222` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290930 has offset 0).

The definition of A290930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290930.P2559548672273861222

`2*A290904(n)-A290890(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290930

/-- `2*A290904(n)-A290890(n)` -/
def P2559548672273861222.Spec : Prop :=
  ∀ n, P2559548672273861222.a n = A290930 n

theorem P2559548672273861222.correct : P2559548672273861222.Spec := by
  intro n
  simp only [A290930]

end A290930

/-! ## A290930.P2859469230385066780

`4*A290905(n)-A290890(n)`
-/

namespace A290930.P2859469230385066780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A290905 n - A290890 n

end

end A290930.P2859469230385066780

namespace A290930

/-- `4*A290905(n)-A290890(n)` -/
def P2859469230385066780.Spec : Prop :=
  ∀ n, P2859469230385066780.a n = A290930 n

end A290930

/-! ## A290930.P10425671457378008073

`2*A290904(n)-abs(A113067(n))`
-/

namespace A290930.P10425671457378008073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290904 n - |A113067 n|

end

end A290930.P10425671457378008073

namespace A290930

/-- `2*A290904(n)-abs(A113067(n))` -/
def P10425671457378008073.Spec : Prop :=
  ∀ n, P10425671457378008073.a n = A290930 n

end A290930

/-! ## A290930.P17257317308516584354

`2*A290904(n)-Δ[A109961(n)]`
-/

namespace A290930.P17257317308516584354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290904 n - (f1 (n + 1) - f1 n)

end

end A290930.P17257317308516584354

namespace A290930

/-- `2*A290904(n)-Δ[A109961(n)]` -/
def P17257317308516584354.Spec : Prop :=
  ∀ n, P17257317308516584354.a n = A290930 n

end A290930

/-! ## A290930.P17608103899425980618

`A005843(A290904(n))-A290890(n)`
-/

namespace A290930.P17608103899425980618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A290904 n).toNat - A290890 n

end

end A290930.P17608103899425980618

namespace A290930

/-- `A005843(A290904(n))-A290890(n)` -/
def P17608103899425980618.Spec : Prop :=
  ∀ n, P17608103899425980618.a n = A290930 n

end A290930

/-!
# A290932: Sum of the LCM of cycle lengths over all endofunctions on [n].

The programs for A290932, there is no canonical definition to state claims against.
-/

/-! ## A290932.P440261002305365803

`A028310(A202477(n)-A291110(n))`
-/

namespace A290932.P440261002305365803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A202477 n - A291110 n).toNat

end

end A290932.P440261002305365803

/-! ## A290932.P5562430254971785590

`or(A046523(A005121(n+1)), A208248(n))`
-/

namespace A290932.P5562430254971785590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046523 (A005121 (n + 1)).toNat) (A208248 n)

end

end A290932.P5562430254971785590

/-!
# A290934: a(n) equals the sum of the squares of the digits of A254958(n).

The programs for A290934, the canonical program `A290934.P7844650450766636919` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290934 has offset 1).

The definition of A290934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290934.P7844650450766636919

`∑{digits}[A254958(n+1), #²]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A290934

/-- `∑{digits}[A254958(n+1), #²]` -/
def P7844650450766636919.Spec : Prop :=
  ∀ n, (P7844650450766636919.a n : ℤ) = A290934 (n + 1)

theorem P7844650450766636919.correct : P7844650450766636919.Spec := by
  intro n
  simp only [A290934, Nat.add_sub_cancel]

end A290934

/-! ## A290934.P4364998119473549907

`∑{digits}[∩[A052382(n+1), A175396(n+1)], #²]`
-/

namespace A290934.P4364998119473549907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A290934.P4364998119473549907

namespace A290934

/-- `∑{digits}[∩[A052382(n+1), A175396(n+1)], #²]` -/
def P4364998119473549907.Spec : Prop :=
  ∀ n, (P4364998119473549907.a n : ℤ) = A290934 (n + 1)

end A290934

/-! ## A290934.P15754315585804450787

`A003132(A254958(n+1))`
-/

namespace A290934.P15754315585804450787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A254958 (n + 1)).toNat

end

end A290934.P15754315585804450787

namespace A290934

/-- `A003132(A254958(n+1))` -/
def P15754315585804450787.Spec : Prop :=
  ∀ n, P15754315585804450787.a n = A290934 (n + 1)

end A290934

/-! ## A290934.P15738365015202049172

`A003132(∩[A052382(n+1), A175396(n+1)])`
-/

namespace A290934.P15738365015202049172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A290934.P15738365015202049172

namespace A290934

/-- `A003132(∩[A052382(n+1), A175396(n+1)])` -/
def P15738365015202049172.Spec : Prop :=
  ∀ n, P15738365015202049172.a n = A290934 (n + 1)

end A290934

/-! ## A290934.P12810812272270869893

`A003132(∩[A175396(n+1), A277061(n+1)])`
-/

namespace A290934.P12810812272270869893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A290934.P12810812272270869893

namespace A290934

/-- `A003132(∩[A175396(n+1), A277061(n+1)])` -/
def P12810812272270869893.Spec : Prop :=
  ∀ n, P12810812272270869893.a n = A290934 (n + 1)

end A290934

/-!
# A290935: Number of ways to write 2*n+1 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that p = x^2 + 3*y^2 + 5*z^2 + 7*w^2 and p - 2 are twin prime.

The programs for A290935, there is no canonical definition to state claims against.
-/

/-! ## A290935.P11959251488552183864

`A374629(A000978(n+1)+char[∏{p}[n, #]-1])`
-/

namespace A290935.P11959251488552183864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (A000978 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A290935.P11959251488552183864

/-! ## A290935.P8841600274988876450

`A306737(or(A024450(n+1), A132333(n)))`
-/

namespace A290935.P8841600274988876450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306737 (Int.lor (A024450 (n + 1)) (A132333 n)).toNat

end

end A290935.P8841600274988876450

/-! ## A290935.P16074929778825104850

`A001222(A267974(n+1)+A033264(n+1))`
-/

namespace A290935.P16074929778825104850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A267974 (n + 1) + A033264 (n + 1)).toNat

end

end A290935.P16074929778825104850

/-! ## A290935.P18424325716254519156

`gcd(A051827(A051850(n+3)), A051861(n+1))`
-/

namespace A290935.P18424325716254519156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051827 (A051850 (n + 3)).toNat) (A051861 (n + 1))

end

end A290935.P18424325716254519156

/-!
# A290939: Number of 5-cycles in the n-triangular graph.

The programs for A290939, the canonical program `A290939.P4414167975542674585` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290939 has offset 2).

The definition of A290939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290939.P4414167975542674585

`12/5*C(n+2, 4)*((n+2)²+7*(n+2)-34)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290939

/-- `12/5*C(n+2, 4)*((n+2)²+7*(n+2)-34)` -/
def P4414167975542674585.Spec : Prop :=
  ∀ n, P4414167975542674585.a n = (A290939 (n + 2) : ℚ)

end A290939

/-!
# A290940: Number of 6-cycles in the n-triangular graph.

The programs for A290940, the canonical program `A290940.P15104280175378170632` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290940 has offset 2).

The definition of A290940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290940.P15104280175378170632

`2*C(n+2, 4)*((n+2)^3+27*(n+2)²-220*(n+2)+392)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290940

/-- `2*C(n+2, 4)*((n+2)^3+27*(n+2)²-220*(n+2)+392)` -/
def P15104280175378170632.Spec : Prop :=
  ∀ n, P15104280175378170632.a n = A290940 (n + 2)

theorem P15104280175378170632.correct : P15104280175378170632.Spec := by
  intro n
  simp only [A290940, Nat.add_sub_cancel]

end A290940

/-!
# A290942: Number of partitions of n into distinct generalized pentagonal numbers (A001318).

The programs for A290942, there is no canonical definition to state claims against.
-/

/-! ## A290942.P15177306692441081122

`A303907(A008585(n))-A335520(A264762(n+1))`
-/

namespace A290942.P15177306692441081122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 (A008585 n).toNat - A335520 (A264762 (n + 1)).toNat

end

end A290942.P15177306692441081122

/-! ## A290942.P2332921881833228222

`A303907(3*n)%p?[A054143(n)]`
-/

namespace A290942.P2332921881833228222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303907 (3 * n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A290942.P2332921881833228222

/-! ## A290942.P4527572550788150118

`A303907(3*n)+A000007(A293985(n+3))`
-/

namespace A290942.P4527572550788150118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 (3 * n) + A000007 (A293985 (n + 3)).toNat

end

end A290942.P4527572550788150118

/-! ## A290942.P1796561609765951570

`A303907(3*n)+A000007(A237667(2*n))`
-/

namespace A290942.P1796561609765951570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 (3 * n) + A000007 (A237667 (2 * n)).toNat

end

end A290942.P1796561609765951570

/-! ## A290942.P8412824079491500194

`A303907(3*n)+A007949(A279772(n+5))`
-/

namespace A290942.P8412824079491500194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 (3 * n) + A007949 (A279772 (n + 5)).toNat

end

end A290942.P8412824079491500194

/-!
# A290943: Number of ways to write n as an ordered sum of 3 generalized pentagonal numbers (A001318).

The programs for A290943, there is no canonical definition to state claims against.
-/

/-! ## A290943.P8722468409080858678

`A245669(8*n+1)`
-/

namespace A290943.P8722468409080858678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245669 (8 * n + 1)

end

end A290943.P8722468409080858678

/-! ## A290943.P8714587334232505053

`A298932(12*n+1)`
-/

namespace A290943.P8714587334232505053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (12 * n + 1)

end

end A290943.P8714587334232505053

/-! ## A290943.P8448754910953435888

`A298932(A017533(n))+A003982(A017533(n))`
-/

namespace A290943.P8448754910953435888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (A017533 n).toNat + A003982 (A017533 n).toNat

end

end A290943.P8448754910953435888

/-! ## A290943.P16090418007920998319

`A298932(A017533(n))+A033685(A005882(n))`
-/

namespace A290943.P16090418007920998319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (A017533 n).toNat + A033685 (A005882 n).toNat

end

end A290943.P16090418007920998319

/-! ## A290943.P5103310380896272479

`A298932(A017533(n))+A033685(A033685(n))`
-/

namespace A290943.P5103310380896272479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (A017533 n).toNat + A033685 (A033685 n).toNat

end

end A290943.P5103310380896272479

/-! ## A290943.P7864387653956636315

`A298932(A017533(n))%A017533(A008443(n))`
-/

namespace A290943.P7864387653956636315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298932 (A017533 n).toNat) (A017533 (A008443 n).toNat)

end

end A290943.P7864387653956636315

/-! ## A290943.P13833549112684069989

`A005885(A158057(n))`
-/

namespace A290943.P13833549112684069989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A158057 n).toNat

end

end A290943.P13833549112684069989

/-! ## A290943.P2774441948650203005

`A005885(A161714(n)-A008594(n))`
-/

namespace A290943.P2774441948650203005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A161714 n - A008594 n).toNat

end

end A290943.P2774441948650203005

/-! ## A290943.P5589779248685957368

`A045827(9*A017077(n))`
-/

namespace A290943.P5589779248685957368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (9 * A017077 n).toNat

end

end A290943.P5589779248685957368

/-!
# A290944: Primes p such that sum of digits of p^3 is a perfect square.

The programs for A290944, there is no canonical definition to state claims against.
-/

/-! ## A290944.P6843026729840077528

`p?[A290843(n+1)%A052279(4*n+2)]`
-/

namespace A290944.P6843026729840077528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290843 (n + 1)) (A052279 (4 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290944.P6843026729840077528

/-! ## A290944.P7663345212217561702

`p?[A330396(p?[A237525(n+1)])]`
-/

namespace A290944.P7663345212217561702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290944.P7663345212217561702

/-! ## A290944.P5354869484000326678

`p?[A014963(n+2)*A237525(n+1)]`
-/

namespace A290944.P5354869484000326678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A237525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290944.P5354869484000326678

/-!
# A290945: Triangular Carmichael numbers.

The programs for A290945, there is no canonical definition to state claims against.
-/

/-! ## A290945.P5114756074103542970

`∩[A002997(n+1), A293622(n+1)]`
-/

namespace A290945.P5114756074103542970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290945.P5114756074103542970

/-! ## A290945.P14304086336534120090

`∩[A087442(n+1), A293622(n+1)]`
-/

namespace A290945.P14304086336534120090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290945.P14304086336534120090

/-! ## A290945.P14186109582836725245

`∩[A080062(n+1), A293622(n+1)]`
-/

namespace A290945.P14186109582836725245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290945.P14186109582836725245

/-! ## A290945.P15176178451487382496

`∩[A002997(n+1), A014493(n+1)]`
-/

namespace A290945.P15176178451487382496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290945.P15176178451487382496

/-! ## A290945.P14282680643652901877

`∩[A002997(n+1), C(A120944(n+1), 2)]`
-/

namespace A290945.P14282680643652901877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120944 (n + 1)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A290945.P14282680643652901877

/-!
# A290947: Primes p1 > 3, such that p2 = 3p1-2 and p3 = (p1*p2+1)/2 are also primes, so p1*p2*p3 is a triangular 3-Carmichael number.

The programs for A290947, there is no canonical definition to state claims against.
-/

/-! ## A290947.P14124677628265542941

`A088513(record[A260148(n)])`
-/

namespace A290947.P14124677628265542941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290947.P14124677628265542941

/-! ## A290947.P9780302831486993538

`A092789(A153443(n+1))`
-/

namespace A290947.P9780302831486993538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092789 (A153443 (n + 1)).toNat

end

end A290947.P9780302831486993538

/-!
# A290948: Numbers not in any sequence defined by a recurrence b(n) = 3*b(n-1) + b(n-2) having initial values b(0), b(1) in {0 ... 9}.

The programs for A290948, there is no canonical definition to state claims against.
-/

/-! ## A290948.P3140607034964855984

`A098760(A257591(n+1)+5)`
-/

namespace A290948.P3140607034964855984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (A257591 (n + 1) + 5).toNat

end

end A290948.P3140607034964855984

/-! ## A290948.P6077399785409949310

`A325282(A093043(n))+A134496(n+1)`
-/

namespace A290948.P6077399785409949310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (A093043 n).toNat + A134496 (n + 1)

end

end A290948.P6077399785409949310

/-!
# A290950: Positive integers whose digits are in increasing order and whose successive digits differ by exactly 2.

The programs for A290950, there is no canonical definition to state claims against.
-/

/-! ## A290950.P15856477969076458861

`∩[A009993(n+1), A033088(n+1)]`
-/

namespace A290950.P15856477969076458861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290950.P15856477969076458861

/-! ## A290950.P66730471507742920

`∩[A009994(n+1), A033088(n+1)]`
-/

namespace A290950.P66730471507742920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290950.P66730471507742920

/-! ## A290950.P7589958161008088864

`record[A180410(A033088(n+1))]`
-/

namespace A290950.P7589958161008088864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (A033088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290950.P7589958161008088864

/-! ## A290950.P14344409416338484221

`record[A004086(A290951(n+1))]`
-/

namespace A290950.P14344409416338484221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A290951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290950.P14344409416338484221

/-! ## A290950.P5816923396894572616

`record[A004185(A290951(A025783(n)))]`
-/

namespace A290950.P5816923396894572616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A290951 (A025783 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290950.P5816923396894572616

/-!
# A290951: Positive integers with digits in decreasing order that differ by 2.

The programs for A290951, there is no canonical definition to state claims against.
-/

/-! ## A290951.P15792676546568604180

`∩[A009995(n+1), A033088(n+1)]`
-/

namespace A290951.P15792676546568604180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290951.P15792676546568604180

/-! ## A290951.P12145452442748878476

`∩[A009996(n+1), A033088(n+1)]`
-/

namespace A290951.P12145452442748878476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290951.P12145452442748878476

/-! ## A290951.P7269234637648983864

`∩[A033088(n+1), A308393(n+1)]`
-/

namespace A290951.P7269234637648983864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290951.P7269234637648983864

/-! ## A290951.P9746078351217306888

`eq[n%11, A072139(n)]`
-/

namespace A290951.P9746078351217306888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290951.P9746078351217306888

/-! ## A290951.P13535080384322613062

`A262557(A101440(n+1))`
-/

namespace A290951.P13535080384322613062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A101440 (n + 1)).toNat

end

end A290951.P13535080384322613062

/-!
# A290952: Multi de Bruijn Sequences: Number of ways to arrange 2^(n+1) binary digits in a circle so that every length n binary string occurs exactly twice.

The programs for A290952, the canonical program `A290952.P8594250290090359341` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290952 has offset 1).

The definition of A290952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290952.P8594250290090359341

`(6^2^n+2^2^n)/2^(n+2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290952

/-- `(6^2^n+2^2^n)/2^(n+2)` -/
def P8594250290090359341.Spec : Prop :=
  ∀ n, P8594250290090359341.a n = (A290952 (n + 1) : ℚ)

end A290952

/-! ## A290952.P9044374090013933305

`A000079(A000295(n))*A007051(A000079(n))`
-/

namespace A290952.P9044374090013933305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000295 n).toNat * A007051 (A000079 n).toNat

end

end A290952.P9044374090013933305

namespace A290952

/-- `A000079(A000295(n))*A007051(A000079(n))` -/
def P9044374090013933305.Spec : Prop :=
  ∀ n, P9044374090013933305.a n = A290952 (n + 1)

end A290952

/-!
# A290953: The number of permutations in S_n for which the number of reduced words is maximized with respect to the numbers of braid and commutation classes: |R(w)| = |B(w)| * |C(w)|.

The programs for A290953, there is no canonical definition to state claims against.
-/

/-! ## A290953.P16713632750336353554

`∑[abs(Δ[(4-6/(n+1))*a(n-1)])]+n` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A290953.P16713632750336353554
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A290953.P16713632750336353554

/-! ## A290953.P12313805104411624832

`comp[2*(n+1)]+∏[2*(2*n+1)/(n+2)]-n`
-/

namespace A290953.P12313805104411624832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j - (n : ℚ))

end

end A290953.P12313805104411624832

/-! ## A290953.P13110854822252780779

`record[abs(A120304(n)+n)]`
-/

namespace A290953.P13110854822252780779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120304 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290953.P13110854822252780779

/-! ## A290953.P864832236602526036

`∑[A000245(n)+1-char[1]]`
-/

namespace A290953.P864832236602526036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290953.P864832236602526036

/-! ## A290953.P12367016825943399433

`record[abs(2-(A000108(n)+n))]`
-/

namespace A290953.P12367016825943399433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000108 n + (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290953.P12367016825943399433

/-!
# A290957: G.f. A(x) satisfies: A( 2*A(x)^2 - 4*A(x)^3 ) = 2*x^2 + 4*x^3.

The programs for A290957, there is no canonical definition to state claims against.
-/

/-! ## A290957.P15843696425516551312

`A193909(A027375(n))`
-/

namespace A290957.P15843696425516551312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193909 (A027375 n).toNat

end

end A290957.P15843696425516551312

/-! ## A290957.P7057075527708611182

`A035026(A215882(n)+2)`
-/

namespace A290957.P7057075527708611182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A215882 n + 2).toNat

end

end A290957.P7057075527708611182

/-!
# A290959: Matrix rank of the number of dots in the pairwise intersections of Ferrers diagrams.

The programs for A290959, there is no canonical definition to state claims against.
-/

/-! ## A290959.P6602534327720238251

`∑[∏{e}[C(3, n)-(n+1), #+1]]`
-/

namespace A290959.P6602534327720238251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290959.P6602534327720238251

/-! ## A290959.P6878439756640201983

`∑[xor(C(3, n), A000005(n+1))]+1`
-/

namespace A290959.P6878439756640201983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 n : ℤ) (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A290959.P6878439756640201983

/-! ## A290959.P8704809196436036762

`∑[A305611(n+1)+C(4, n)!%2]`
-/

namespace A290959.P8704809196436036762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (n + 1) + ((Nat.factorial (Nat.choose 4 n) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290959.P8704809196436036762

/-! ## A290959.P5131693869194956526

`∑[∏{e}[comp[A170919(n+3)]-1, #+1]]`
-/

namespace A290959.P5131693869194956526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170919 (n + 3)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290959.P5131693869194956526

/-! ## A290959.P6296105721024520427

`∑[∏{e}[n+1, #+1]-char[A042475(n)]]`
-/

namespace A290959.P6296105721024520427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042475 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290959.P6296105721024520427

/-!
# A290960: Numbers k such that A276976(k) > A270096(k).

The programs for A290960, there is no canonical definition to state claims against.
-/

/-! ## A290960.P16339847220814822712

`lt[A270096(n+1), A276976(n+1)]+1`
-/

namespace A290960.P16339847220814822712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A290960.P16339847220814822712

/-! ## A290960.P16355126973686127121

`and(A068700(A281831(n+1)), A271269(n+5))`
-/

namespace A290960.P16355126973686127121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068700 (A281831 (n + 1)).toNat) (A271269 (n + 5))

end

end A290960.P16355126973686127121

/-! ## A290960.P14446414953390163085

`A298036(2*n+1)-A046109(A023094(n+3))`
-/

namespace A290960.P14446414953390163085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (2 * n + 1) - A046109 (A023094 (n + 3)).toNat

end

end A290960.P14446414953390163085

/-!
# A290961: Number of endofunctions on [n] such that the LCM of their cycle lengths equals n.

The programs for A290961, there is no canonical definition to state claims against.
-/

/-! ## A290961.P14187350939580178354

`A222029(∑[A000793(n)]+n)`
-/

namespace A290961.P14187350939580178354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A290961.P14187350939580178354

/-! ## A290961.P3033597746779169093

`lcm(n!, A318882(n!))`
-/

namespace A290961.P3033597746779169093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A318882 (Nat.factorial n))

end

end A290961.P3033597746779169093

/-! ## A290961.P3610756823747321325

`n!*A325634(n!+1)`
-/

namespace A290961.P3610756823747321325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A325634 (Nat.factorial n + 1)

end

end A290961.P3610756823747321325

/-! ## A290961.P15646416867375954246

`n!*A109010(A097551(n))`
-/

namespace A290961.P15646416867375954246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A109010 (A097551 n).toNat

end

end A290961.P15646416867375954246

/-! ## A290961.P12174316603201219868

`A000142(n)*A178764(A001472(n))`
-/

namespace A290961.P12174316603201219868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A178764 (A001472 n).toNat

end

end A290961.P12174316603201219868

/-!
# A290963: Primes p such that sum of digits of p^3 is semiprime.

The programs for A290963, there is no canonical definition to state claims against.
-/

/-! ## A290963.P13844392352658907196

`p?[eq[A070100(n+1), A099362(n+1)]]`
-/

namespace A290963.P13844392352658907196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070100 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290963.P13844392352658907196

/-! ## A290963.P5947615119220340146

`A000040(lt[A339030(2*(n+1)), A008327(3*n+1)])`
-/

namespace A290963.P5947615119220340146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339030 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290963.P5947615119220340146

/-!
# A290965: Let n = p1^e1*...*pj^ej*...*pm^em be the prime factorization of n > 1, with the primes in increasing order and ej > 0. If for some j < m the sum p1^2 + ... + pj^2 > p(j+1), then n is in the sequence.

The programs for A290965, there is no canonical definition to state claims against.
-/

/-! ## A290965.P354317022632500204

`lt[A111089(n+1), A293810(n+1)²]+1`
-/

namespace A290965.P354317022632500204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A290965.P354317022632500204

/-! ## A290965.P6806314004196517543

`A065475(lt[A111089(n+1), A293810(n+1)²])`
-/

namespace A290965.P6806314004196517543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290965.P6806314004196517543

/-! ## A290965.P16867133420909193827

`lt[A111850(A006530(n+1)), A293810(n+1)]+1`
-/

namespace A290965.P16867133420909193827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A290965.P16867133420909193827

/-! ## A290965.P15766572377449943679

`∩[A208770(n+1), A346132(n+1)]`
-/

namespace A290965.P15766572377449943679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290965.P15766572377449943679

/-! ## A290965.P2703206422175309673

`∩[A219095(n+2), A346132(n+1)]`
-/

namespace A290965.P2703206422175309673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290965.P2703206422175309673

/-!
# A290966: The number of convex layers in an n X n grid of points.

The programs for A290966, there is no canonical definition to state claims against.
-/

/-! ## A290966.P8422206879552988981

`∑[floor(log(A336173(3*n+1)))]`
-/

namespace A290966.P8422206879552988981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A336173 (3 * n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290966.P8422206879552988981

/-! ## A290966.P1709756744005324506

`char[2*n]+A105564(A008805(n))+n`
-/

namespace A290966.P1709756744005324506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A105564 (A008805 n).toNat + (n : ℤ))

end

end A290966.P1709756744005324506

/-! ## A290966.P3763849362360194995

`A109613(n)+A105564(A008805(n))`
-/

namespace A290966.P3763849362360194995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A105564 (A008805 n).toNat

end

end A290966.P3763849362360194995

/-! ## A290966.P3442532674642762140

`A105564(A008805(n))+A004525(2*n+1)`
-/

namespace A290966.P3442532674642762140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A008805 n).toNat + A004525 (2 * n + 1)

end

end A290966.P3442532674642762140

/-!
# A290968: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-4) + a(n-5), with a(0)=a(1)=a(2)=1, a(3)=-1 and a(4)=1.

The programs for A290968, the canonical program `A290968.P6643083161883885130` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290968 has offset 0).

The definition of A290968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` (program `A290968.P6643083161883885130`, by `A290968.P6643083161883885130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290968.P6643083161883885130

`a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290968

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)+a(n-5)` -/
def P6643083161883885130.Spec : Prop :=
  ∀ n, P6643083161883885130.a n = A290968 n

theorem P6643083161883885130.correct : P6643083161883885130.Spec := by
  intro n
  simp only [A290968]

end A290968

/-! ## A290968.P13667047604862243032

`A130151(n)+2*A293014(n)`
-/

namespace A290968.P13667047604862243032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n + 2 * A293014 n

end

end A290968.P13667047604862243032

namespace A290968

/-- `A130151(n)+2*A293014(n)` -/
def P13667047604862243032.Spec : Prop :=
  ∀ n, P13667047604862243032.a n = A290968 n

end A290968

/-! ## A290968.P9020161494476040555

`A010892(n)+A078024(n)-A033999(n)`
-/

namespace A290968.P9020161494476040555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A078024 n - A033999 n)

end

end A290968.P9020161494476040555

namespace A290968

/-- `A010892(n)+A078024(n)-A033999(n)` -/
def P9020161494476040555.Spec : Prop :=
  ∀ n, P9020161494476040555.a n = A290968 n

end A290968

/-! ## A290968.P6814111195919718031

`2*A000045(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A290968.P6814111195919718031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A000045 (n - 3) - a (n - 3)

end

end A290968.P6814111195919718031

namespace A290968

/-- `2*A000045(n-3)-a(n-3)` -/
def P6814111195919718031.Spec : Prop :=
  ∀ n, P6814111195919718031.a n = A290968 n

end A290968

/-! ## A290968.P15721426983717465551

`A141325(n)-Δ[A141325(n)]`
-/

namespace A290968.P15721426983717465551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n - (f1 (n + 1) - f1 n)

end

end A290968.P15721426983717465551

namespace A290968

/-- `A141325(n)-Δ[A141325(n)]` -/
def P15721426983717465551.Spec : Prop :=
  ∀ n, P15721426983717465551.a n = A290968 n

end A290968

/-! ## A290968.P4391870038239146267

`A141325(n)+A141325(n)-A141325(n+1)`
-/

namespace A290968.P4391870038239146267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n + (A141325 n - A141325 (n + 1))

end

end A290968.P4391870038239146267

namespace A290968

/-- `A141325(n)+A141325(n)-A141325(n+1)` -/
def P4391870038239146267.Spec : Prop :=
  ∀ n, P4391870038239146267.a n = A290968 n

end A290968

/-! ## A290968.P17172855623388507736

`2*A141325(n)-A141325(n+1)`
-/

namespace A290968.P17172855623388507736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141325 n - A141325 (n + 1)

end

end A290968.P17172855623388507736

namespace A290968

/-- `2*A141325(n)-A141325(n+1)` -/
def P17172855623388507736.Spec : Prop :=
  ∀ n, P17172855623388507736.a n = A290968 n

end A290968

/-!
# A290969: The least positive integer that is a repdigit with length > 2 in exactly n bases.

The programs for A290969, there is no canonical definition to state claims against.
-/

/-! ## A290969.P7292585157353692053

`∑{d}[A173122(A008589(3*n)), #]`
-/

namespace A290969.P7292585157353692053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173122 (A008589 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290969.P7292585157353692053

/-!
# A290972: Primes p such that the sum of the squares of digits of p equals the sum of digits of p^2.

The programs for A290972, there is no canonical definition to state claims against.
-/

/-! ## A290972.P1500738623386609990

`p?[A165550(n+1)]`
-/

namespace A290972.P1500738623386609990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P1500738623386609990

/-! ## A290972.P4355587051474473130

`p?[record[A165550(A133310(n))]]`
-/

namespace A290972.P4355587051474473130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P4355587051474473130

/-! ## A290972.P3718310840968378500

`∏{d}[p?[A165550(A028310(n))], #]`
-/

namespace A290972.P3718310840968378500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290972.P3718310840968378500

/-! ## A290972.P18284670074217046646

`p?[A165550(A028310(n))-A000007(n)]`
-/

namespace A290972.P18284670074217046646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P18284670074217046646

/-! ## A290972.P10838262489972848076

`p?[A165550(A028310(n))-A000038(n)]`
-/

namespace A290972.P10838262489972848076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P10838262489972848076

/-! ## A290972.P12841769068264244312

`p?[A057427(n)*A165550(A028310(n))]`
-/

namespace A290972.P12841769068264244312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P12841769068264244312

/-! ## A290972.P16537225085215478811

`p?[A165550(A028310(n))%A017331(n)]`
-/

namespace A290972.P16537225085215478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165550 (A028310 n).toNat) (A017331 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P16537225085215478811

/-! ## A290972.P8800708355879851410

`p?[A033999(n)²*A165550(A028310(n))]`
-/

namespace A290972.P8800708355879851410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P8800708355879851410

/-! ## A290972.P10218529518992570345

`p?[A057077(n)²*A165550(A028310(n))]`
-/

namespace A290972.P10218529518992570345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P10218529518992570345

/-! ## A290972.P6977124827856426838

`p?[A143431(n)²*A165550(A028310(n))]`
-/

namespace A290972.P6977124827856426838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P6977124827856426838

/-! ## A290972.P6861948032606972026

`p?[A000034(2*n)*A165550(A028310(n))]`
-/

namespace A290972.P6861948032606972026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P6861948032606972026

/-! ## A290972.P8426576333409133906

`p?[A165550(A028310(n))]*A059841(2*n)`
-/

namespace A290972.P8426576333409133906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A059841 (2 * n)

end

end A290972.P8426576333409133906

/-! ## A290972.P8467421801098277666

`p?[A165550(A028310(n))]*A293668(3*n)`
-/

namespace A290972.P8467421801098277666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A293668 (3 * n)

end

end A290972.P8467421801098277666

/-! ## A290972.P15219322903896945332

`p?[A165550(A028310(n))]*A133872(8*n)`
-/

namespace A290972.P15219322903896945332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A133872 (8 * n)

end

end A290972.P15219322903896945332

/-! ## A290972.P5427893413892415144

`p?[A165550(A028310(n))]%A063417(3*n)`
-/

namespace A290972.P5427893413892415144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A063417 (3 * n))

end

end A290972.P5427893413892415144

/-! ## A290972.P1188888181979519662

`A000005(((-1)^n)²)*p?[A165550(A028310(n))]`
-/

namespace A290972.P1188888181979519662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P1188888181979519662

/-! ## A290972.P14944506439235324299

`A000045(((-1)^n)²)*p?[A165550(A028310(n))]`
-/

namespace A290972.P14944506439235324299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P14944506439235324299

/-! ## A290972.P2441338587875510439

`A000041((-1)^(2*n))*p?[A165550(A028310(n))]`
-/

namespace A290972.P2441338587875510439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165550 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((-1) ^ (2 * n)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290972.P2441338587875510439

/-!
# A290974: Alternating sum of row 2n of A022166.

The programs for A290974, the canonical program `A290974.P16265318135291676534` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290974 has offset 0).

The definition of A290974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290974.P16265318135291676534

`(1-2^(2*n-1))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290974

/-- `(1-2^(2*n-1))*a(n-1)` -/
def P16265318135291676534.Spec : Prop :=
  ∀ n, P16265318135291676534.a n = (A290974 n : ℚ)

end A290974

/-! ## A290974.P676160188247980191

`∏[1-floor(4^n/2)]`
-/

namespace A290974.P676160188247980191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290974.P676160188247980191

namespace A290974

/-- `∏[1-floor(4^n/2)]` -/
def P676160188247980191.Spec : Prop :=
  ∀ n, P676160188247980191.a n = A290974 n

end A290974

/-! ## A290974.P6604926545574699126

`-(a(n-1)*A078485(2*n))` with `a(0)=1`
-/

namespace A290974.P6604926545574699126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(a (n - 1) * A078485 (2 * n))

end

end A290974.P6604926545574699126

namespace A290974

/-- `-(a(n-1)*A078485(2*n))` -/
def P6604926545574699126.Spec : Prop :=
  ∀ n, P6604926545574699126.a n = A290974 n

end A290974

/-! ## A290974.P5943092980297398028

`-∏[-A004070(A077591(n))]`
-/

namespace A290974.P5943092980297398028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004070 (A077591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A290974.P5943092980297398028

namespace A290974

/-- `-∏[-A004070(A077591(n))]` -/
def P5943092980297398028.Spec : Prop :=
  ∀ n, P5943092980297398028.a n = A290974 n

end A290974

/-! ## A290974.P3174777441802964218

`∏[A001896(n)]/∏[A000367(n)]`
-/

namespace A290974.P3174777441802964218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A290974.P3174777441802964218

namespace A290974

/-- `∏[A001896(n)]/∏[A000367(n)]` -/
def P3174777441802964218.Spec : Prop :=
  ∀ n, P3174777441802964218.a n = (A290974 n : ℚ)

end A290974

/-!
# A290975: Expansion of 1 - x/(1 - x^4/(1 - x^9/(1 - x^16/(1 - x^25/(1 - x^36/(1 - ... - x^(n^2)/(1 - ...))))))), a continued fraction.

The programs for A290975, there is no canonical definition to state claims against.
-/

/-! ## A290975.P12057017739052588747

`A276516(A074323(n))^A005213(A028720(n))`
-/

namespace A290975.P12057017739052588747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276516 (A074323 n).toNat : ℚ) ^ (A005213 (A028720 n).toNat : ℤ)

end

end A290975.P12057017739052588747

/-! ## A290975.P9509070668283996000

`A276516(A074323(n))^A161468(A109199(n))`
-/

namespace A290975.P9509070668283996000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276516 (A074323 n).toNat : ℚ) ^ (A161468 (A109199 n).toNat : ℤ)

end

end A290975.P9509070668283996000

/-! ## A290975.P13907258522343888267

`A276516(A074323(n))^A325236(A103516(n))`
-/

namespace A290975.P13907258522343888267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276516 (A074323 n).toNat : ℚ) ^ (A325236 (A103516 n).toNat : ℤ)

end

end A290975.P13907258522343888267

/-! ## A290975.P7557313187299029298

`A276516(A074323(n))^A014963(A057312(n+1))`
-/

namespace A290975.P7557313187299029298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276516 (A074323 n).toNat : ℚ) ^ (A014963 (A057312 (n + 1)).toNat : ℤ)

end

end A290975.P7557313187299029298

/-! ## A290975.P5560880592116950606

`A291147(A386687(n+1))`
-/

namespace A290975.P5560880592116950606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291147 (A386687 (n + 1)).toNat

end

end A290975.P5560880592116950606

/-!
# A290976: Expansion of 1 - x/(1 - x^3/(1 - x^6/(1 - x^10/(1 - x^15/(1 - x^21/(1 - ... - x^(n*(n+1)/2)/(1 - ...))))))), a continued fraction.

The programs for A290976, there is no canonical definition to state claims against.
-/

/-! ## A290976.P15933400339372811734

`A000700(n)*A049347(A227363(n))`
-/

namespace A290976.P15933400339372811734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A049347 (A227363 n).toNat

end

end A290976.P15933400339372811734

/-! ## A290976.P15582912692325199965

`A008966(A130752(n))*A137569(n)`
-/

namespace A290976.P15582912692325199965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A130752 n).toNat * A137569 n

end

end A290976.P15582912692325199965

/-! ## A290976.P6345132418863643367

`A000700(n)*A353354(A042950(n))`
-/

namespace A290976.P6345132418863643367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A353354 (A042950 n).toNat

end

end A290976.P6345132418863643367

/-! ## A290976.P16267519991853592155

`A000038(n)-A007814(A297981(n+2))`
-/

namespace A290976.P16267519991853592155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A007814 (A297981 (n + 2)).toNat

end

end A290976.P16267519991853592155

/-! ## A290976.P10016926043454776953

`A007814(A297981(n+2))*A049347(n)`
-/

namespace A290976.P10016926043454776953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A297981 (n + 2)).toNat * A049347 n

end

end A290976.P10016926043454776953

/-!
# A290978: The arithmetic function v_2(n,5).

The programs for A290978, there is no canonical definition to state claims against.
-/

/-! ## A290978.P10995605494921558719

`A289437(n+2)+A133944(A088813(n))`
-/

namespace A290978.P10995605494921558719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (n + 2) + A133944 (A088813 n).toNat

end

end A290978.P10995605494921558719

/-! ## A290978.P11055825835651079439

`A289437(n+2)-A122840(∑[A037095(n)])`
-/

namespace A290978.P11055825835651079439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (n + 2) - A122840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290978.P11055825835651079439

/-! ## A290978.P12215650037639563787

`A133944(A088813(n))+ceil(A289438(2*(n+2))/2)`
-/

namespace A290978.P12215650037639563787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133944 (A088813 n).toNat + ⌈(A289438 (2 * (n + 2)) : ℚ) / 2⌉

end

end A290978.P12215650037639563787

/-! ## A290978.P5795391399574554551

`A133944(A088813(n))+round(A289438(2*n+4)/2)`
-/

namespace A290978.P5795391399574554551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133944 (A088813 n).toNat + SequenceMachineLib.roundAway ((A289438 (2 * n + 4) : ℚ) / 2)

end

end A290978.P5795391399574554551

/-! ## A290978.P11981183238420296460

`A133944(A088813(n))+A110654(A289438(2*(n+2)))`
-/

namespace A290978.P11981183238420296460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133944 (A088813 n).toNat + A110654 (A289438 (2 * (n + 2))).toNat

end

end A290978.P11981183238420296460

/-!
# A290979: The arithmetic function v_2(n,6).

The programs for A290979, there is no canonical definition to state claims against.
-/

/-! ## A290979.P18386950537458100630

`A001222(A221057(∑[A079317(n)]))`
-/

namespace A290979.P18386950537458100630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A221057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A290979.P18386950537458100630

/-! ## A290979.P12499580030320235807

`A117910(n)+A016351(A019565(n))`
-/

namespace A290979.P12499580030320235807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n + A016351 (A019565 n).toNat

end

end A290979.P12499580030320235807

/-! ## A290979.P230073172943278390

`A087116(A001936(n)*A036989(n))`
-/

namespace A290979.P230073172943278390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A001936 n * A036989 n).toNat

end

end A290979.P230073172943278390

/-! ## A290979.P3583259162878699950

`∑{p}[∑[(n+3)^A005044(n+1)], A001221(#)]`
-/

namespace A290979.P3583259162878699950
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (A005044 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 p

end

end A290979.P3583259162878699950

/-! ## A290979.P1718438791644794733

`and(A087204(A014236(n)), A117910(n))`
-/

namespace A290979.P1718438791644794733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087204 (A014236 n).toNat) (A117910 n)

end

end A290979.P1718438791644794733

/-!
# A290980: The arithmetic function v_3(n,6).

The programs for A290980, there is no canonical definition to state claims against.
-/

/-! ## A290980.P13421215076748592102

`A289435(n+2)/(n%2+1)`
-/

namespace A290980.P13421215076748592102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A290980.P13421215076748592102

/-! ## A290980.P1746451890184206103

`A289435(n+2)/A000034(n)`
-/

namespace A290980.P1746451890184206103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A290980.P1746451890184206103

/-! ## A290980.P2784385520091454851

`A289435(n+2)/A084642(n)`
-/

namespace A290980.P2784385520091454851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (A084642 n : ℚ)

end

end A290980.P2784385520091454851

/-! ## A290980.P15009330238350437411

`A289435(n+2)/sqrt(A010685(n))`
-/

namespace A290980.P15009330238350437411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℝ) / Real.sqrt (A010685 n : ℝ)

end

end A290980.P15009330238350437411

/-! ## A290980.P1251871255486813115

`A289435(n+2)/A010673(n)!`
-/

namespace A290980.P1251871255486813115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A290980.P1251871255486813115

/-! ## A290980.P4154908519971235911

`A289435(n+2)/Δ[A032766(n)]`
-/

namespace A290980.P4154908519971235911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A290980.P4154908519971235911

/-! ## A290980.P9901514498380835412

`A289435(n+2)/(A000035(n)+1)`
-/

namespace A290980.P9901514498380835412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (A000035 n + 1 : ℚ)

end

end A290980.P9901514498380835412

/-! ## A290980.P6099761807964802580

`A289435(n+2)/A014963(A006519(n+1))`
-/

namespace A290980.P6099761807964802580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A290980.P6099761807964802580

/-! ## A290980.P14720632232647999929

`floor(A211316(n+2)/A000034(n))`
-/

namespace A290980.P14720632232647999929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211316 (n + 2) : ℚ) / (A000034 n : ℚ)⌋

end

end A290980.P14720632232647999929

/-! ## A290980.P133184908421271833

`floor(A211316(n+2)/A084642(n))`
-/

namespace A290980.P133184908421271833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211316 (n + 2) : ℚ) / (A084642 n : ℚ)⌋

end

end A290980.P133184908421271833

/-! ## A290980.P10012960092103634076

`A289435(n+2)/ratio[A016116(n)]`
-/

namespace A290980.P10012960092103634076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A290980.P10012960092103634076

/-! ## A290980.P2507901854311428225

`A289435(n+2)/A006519(n²+1)`
-/

namespace A290980.P2507901854311428225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (n + 2) : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A290980.P2507901854311428225

/-!
# A290981: The arithmetic function v_4(n,6).

The programs for A290981, there is no canonical definition to state claims against.
-/

/-! ## A290981.P8518959296780181077

`A117910(n+3)-A316829(A335238(3*n+5))`
-/

namespace A290981.P8518959296780181077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (n + 3) - A316829 (A335238 (3 * n + 5)).toNat

end

end A290981.P8518959296780181077

/-! ## A290981.P8914724982230683130

`A331194(A228207(n+1))%A006530(A331200(n+1))`
-/

namespace A290981.P8914724982230683130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331194 (A228207 (n + 1)).toNat) (A006530 (A331200 (n + 1)).toNat)

end

end A290981.P8914724982230683130

/-! ## A290981.P10352192087368783337

`A117910(n)-A069842(A000079(n))`
-/

namespace A290981.P10352192087368783337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n - A069842 (A000079 n).toNat

end

end A290981.P10352192087368783337

/-! ## A290981.P13409049431350237265

`A117910(n)-A010051(A101587(n+1))`
-/

namespace A290981.P13409049431350237265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n - A010051 (A101587 (n + 1)).toNat

end

end A290981.P13409049431350237265

/-!
# A290982: The arithmetic function v_5(n,6).

The programs for A290982, there is no canonical definition to state claims against.
-/

/-! ## A290982.P11722516271617611364

`A289187(n+2)-A318875(A055773(n))`
-/

namespace A290982.P11722516271617611364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289187 (n + 2) - A318875 (A055773 n).toNat

end

end A290982.P11722516271617611364

/-! ## A290982.P9619070377873663268

`A263243(A006128(n))*A289187(n+2)`
-/

namespace A290982.P9619070377873663268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (A006128 n).toNat * A289187 (n + 2)

end

end A290982.P9619070377873663268

/-! ## A290982.P514000878600495542

`A289187(n+2)%Δ[A114034(3*n+1)]`
-/

namespace A290982.P514000878600495542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114034 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289187 (n + 2)) (f1 (n + 1) - f1 n)

end

end A290982.P514000878600495542

/-! ## A290982.P4256794799868379530

`A289187(n+2)%A250120(A186724(n))`
-/

namespace A290982.P4256794799868379530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289187 (n + 2)) (A250120 (A186724 n).toNat)

end

end A290982.P4256794799868379530

/-! ## A290982.P18175065400005412008

`A289436(n+2)-A079979(A072374(n+1))`
-/

namespace A290982.P18175065400005412008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 2) - A079979 (A072374 (n + 1)).toNat

end

end A290982.P18175065400005412008

/-!
# A290983: The arithmetic function v_6(n,6).

The programs for A290983, there is no canonical definition to state claims against.
-/

/-! ## A290983.P9167843118301005702

`floor(A289435(A289435(3*(n+2)))/3)`
-/

namespace A290983.P9167843118301005702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289435 (A289435 (3 * (n + 2))).toNat : ℚ) / 3⌋

end

end A290983.P9167843118301005702

/-! ## A290983.P13042785099296601521

`A112505(A073171(n+1))-1`
-/

namespace A290983.P13042785099296601521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (A073171 (n + 1)).toNat - 1

end

end A290983.P13042785099296601521

/-! ## A290983.P17300813927613600314

`A102669(A007455(n)-A048766(n))`
-/

namespace A290983.P17300813927613600314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A007455 n - A048766 n).toNat

end

end A290983.P17300813927613600314

/-! ## A290983.P3593462652666436844

`A102669(A007455(n)-A055640(n))`
-/

namespace A290983.P3593462652666436844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A007455 n - A055640 n).toNat

end

end A290983.P3593462652666436844

/-! ## A290983.P2646072075872435149

`A102669(A007455(n)-A093390(n))`
-/

namespace A290983.P2646072075872435149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A007455 n - A093390 n).toNat

end

end A290983.P2646072075872435149

/-!
# A290986: Expansion of x^6/((1 - x)^2*(1 - 2*x + x^3 - x^4)).

The programs for A290986, the canonical program `A290986.P17978380317713035197` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290986 has offset 6).

The definition of A290986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))` (program `A290986.P17978380317713035197`, by `A290986.P17978380317713035197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290986.P17978380317713035197

`ogf(1/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290986

/-- `ogf(1/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))` -/
def P17978380317713035197.Spec : Prop :=
  ∀ n, P17978380317713035197.a n = A290986 (n + 6)

theorem P17978380317713035197.correct : P17978380317713035197.Spec := by
  intro n
  simp only [A290986, Nat.add_sub_cancel]

end A290986

/-! ## A290986.P71251470249909240

`A049858(n+4)-(n+4)`
-/

namespace A290986.P71251470249909240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 4) - (n + 4 : ℤ)

end

end A290986.P71251470249909240

namespace A290986

/-- `A049858(n+4)-(n+4)` -/
def P71251470249909240.Spec : Prop :=
  ∀ n, P71251470249909240.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P9066150036438398260

`∑[∑[round(a(n-1)+ϕ*a(n-2))]]` with `a(0)=1, a(1)=2`
-/

namespace A290986.P9066150036438398260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  SequenceMachineLib.roundAway ((f2 (n - 1) : ℝ) + Real.goldenRatio * (f2 (n - 2) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P9066150036438398260

namespace A290986

/-- `∑[∑[round(a(n-1)+ϕ*a(n-2))]]` -/
def P9066150036438398260.Spec : Prop :=
  ∀ n, P9066150036438398260.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P9150253160923974803

`∑[∑[2*a(n-1)-(a(n-3)-a(n-4))]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A290986.P9150253160923974803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n f2 =>
  2 * f2 (n - 1) - (f2 (n - 3) - f2 (n - 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P9150253160923974803

namespace A290986

/-- `∑[∑[2*a(n-1)-(a(n-3)-a(n-4))]]` -/
def P9150253160923974803.Spec : Prop :=
  ∀ n, P9150253160923974803.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P14430468007950048217

`∑[∑[A059633(n+3)]]`
-/

namespace A290986.P14430468007950048217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P14430468007950048217

namespace A290986

/-- `∑[∑[A059633(n+3)]]` -/
def P14430468007950048217.Spec : Prop :=
  ∀ n, P14430468007950048217.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P1122934032603392358

`∑[A049864(n+3)-1]`
-/

namespace A290986.P1122934032603392358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P1122934032603392358

namespace A290986

/-- `∑[A049864(n+3)-1]` -/
def P1122934032603392358.Spec : Prop :=
  ∀ n, P1122934032603392358.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P8989998284235890323

`∑[∑[∑[A049856(n+2)]]]`
-/

namespace A290986.P8989998284235890323
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P8989998284235890323

namespace A290986

/-- `∑[∑[∑[A049856(n+2)]]]` -/
def P8989998284235890323.Spec : Prop :=
  ∀ n, P8989998284235890323.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P11927084040918267400

`Δ[A290987(n+2)]-(n+3)`
-/

namespace A290986.P11927084040918267400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A290986.P11927084040918267400

namespace A290986

/-- `Δ[A290987(n+2)]-(n+3)` -/
def P11927084040918267400.Spec : Prop :=
  ∀ n, P11927084040918267400.a n = A290986 (n + 6)

end A290986

/-! ## A290986.P15036348359726980184

`∑[sqrt(A189336(n+1))-1]`
-/

namespace A290986.P15036348359726980184
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189336 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290986.P15036348359726980184

namespace A290986

/-- `∑[sqrt(A189336(n+1))-1]` -/
def P15036348359726980184.Spec : Prop :=
  ∀ n, P15036348359726980184.a n = (A290986 (n + 6) : ℝ)

end A290986

/-!
# A290987: Expansion of (1 - 2*x + x^2 - x^4 + x^3 + x^5)/((1 - x)^2*(1 - 2*x + x^3 - x^4)).

The programs for A290987, the canonical program `A290987.P10744020160028911829` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290987 has offset 0).

The definition of A290987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2+x^3-x^4+x^5)/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))` (program `A290987.P10744020160028911829`, by `A290987.P10744020160028911829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290987.P10744020160028911829

`ogf((1-2x+x^2+x^3-x^4+x^5)/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290987

/-- `ogf((1-2x+x^2+x^3-x^4+x^5)/(1-4x+5x^2-x^3-3x^4+3x^5-x^6))` -/
def P10744020160028911829.Spec : Prop :=
  ∀ n, P10744020160028911829.a n = A290987 n

theorem P10744020160028911829.correct : P10744020160028911829.Spec := by
  intro n
  simp only [A290987]

end A290987

/-! ## A290987.P12111652506567121318

`∑[∑[A049864(n)]]-n`
-/

namespace A290987.P12111652506567121318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A290987.P12111652506567121318

namespace A290987

/-- `∑[∑[A049864(n)]]-n` -/
def P12111652506567121318.Spec : Prop :=
  ∀ n, P12111652506567121318.a n = A290987 n

end A290987

/-! ## A290987.P5531665772882084933

`∑[A049858(n+1)]-n`
-/

namespace A290987.P5531665772882084933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A290987.P5531665772882084933

namespace A290987

/-- `∑[A049858(n+1)]-n` -/
def P5531665772882084933.Spec : Prop :=
  ∀ n, P5531665772882084933.a n = A290987 n

end A290987

/-! ## A290987.P7162862816876418714

`A001489(n)+∑[∑[A049864(n)]]`
-/

namespace A290987.P7162862816876418714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290987.P7162862816876418714

namespace A290987

/-- `A001489(n)+∑[∑[A049864(n)]]` -/
def P7162862816876418714.Spec : Prop :=
  ∀ n, P7162862816876418714.a n = A290987 n

end A290987

/-! ## A290987.P5530361548632576082

`∑[A057428(n)+∑[A049864(n)]]`
-/

namespace A290987.P5530361548632576082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290987.P5530361548632576082

namespace A290987

/-- `∑[A057428(n)+∑[A049864(n)]]` -/
def P5530361548632576082.Spec : Prop :=
  ∀ n, P5530361548632576082.a n = A290987 n

end A290987

/-! ## A290987.P4243752568791590619

`∑[∑[A049864(n)*A060576(n)]]`
-/

namespace A290987.P4243752568791590619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n * A060576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290987.P4243752568791590619

namespace A290987

/-- `∑[∑[A049864(n)*A060576(n)]]` -/
def P4243752568791590619.Spec : Prop :=
  ∀ n, P4243752568791590619.a n = A290987 n

end A290987

/-! ## A290987.P15614122107519785540

`A001057(2*n)+∑[∑[A049864(n)]]`
-/

namespace A290987.P15614122107519785540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290987.P15614122107519785540

namespace A290987

/-- `A001057(2*n)+∑[∑[A049864(n)]]` -/
def P15614122107519785540.Spec : Prop :=
  ∀ n, P15614122107519785540.a n = A290987 n

end A290987

/-!
# A290988: The arithmetic function v+-(n,3).

The programs for A290988, the canonical program `A290988.P5008520874003011289` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290988 has offset 2).

The definition of A290988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290988.P5008520874003011289

`∑[(n+1)%(3-a(n-2))]-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290988

/-- `∑[(n+1)%(3-a(n-2))]-a(n-1)` -/
def P5008520874003011289.Spec : Prop :=
  ∀ n, P5008520874003011289.a n = A290988 (n + 2)

theorem P5008520874003011289.correct : P5008520874003011289.Spec := by
  intro n
  simp only [A290988, Nat.add_sub_cancel]

end A290988

/-! ## A290988.P13213091808004800166

`A242112(n)-(1-A093718(n))²`
-/

namespace A290988.P13213091808004800166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n - (1 - A093718 n) ^ 2

end

end A290988.P13213091808004800166

namespace A290988

/-- `A242112(n)-(1-A093718(n))²` -/
def P13213091808004800166.Spec : Prop :=
  ∀ n, P13213091808004800166.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P12167090556084620374

`A008619(n)-A008611(A152271(n))`
-/

namespace A290988.P12167090556084620374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A008611 (A152271 n).toNat

end

end A290988.P12167090556084620374

namespace A290988

/-- `A008619(n)-A008611(A152271(n))` -/
def P12167090556084620374.Spec : Prop :=
  ∀ n, P12167090556084620374.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P16923924465608439552

`A004526(n)+A154958(n)-A002264(n+1)`
-/

namespace A290988.P16923924465608439552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A154958 n - A002264 (n + 1))

end

end A290988.P16923924465608439552

namespace A290988

/-- `A004526(n)+A154958(n)-A002264(n+1)` -/
def P16923924465608439552.Spec : Prop :=
  ∀ n, P16923924465608439552.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P5737385675142951349

`A065033(n+1)-A008611(A152271(n))`
-/

namespace A290988.P5737385675142951349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) - A008611 (A152271 n).toNat

end

end A290988.P5737385675142951349

namespace A290988

/-- `A065033(n+1)-A008611(A152271(n))` -/
def P5737385675142951349.Spec : Prop :=
  ∀ n, P5737385675142951349.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P12462467523400504545

`A008611(A027656(n)-1+n)`
-/

namespace A290988.P12462467523400504545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A027656 n - 1 + (n : ℤ)).toNat

end

end A290988.P12462467523400504545

namespace A290988

/-- `A008611(A027656(n)-1+n)` -/
def P12462467523400504545.Spec : Prop :=
  ∀ n, P12462467523400504545.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P13950792134497540383

`A008611(n-(1-A027656(n)))`
-/

namespace A290988.P13950792134497540383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) - (1 - A027656 n)).toNat

end

end A290988.P13950792134497540383

namespace A290988

/-- `A008611(n-(1-A027656(n)))` -/
def P13950792134497540383.Spec : Prop :=
  ∀ n, P13950792134497540383.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P13052238804536789845

`A008611(A142150(n+2)+n-1)`
-/

namespace A290988.P13052238804536789845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A142150 (n + 2) + ((n : ℤ) - 1)).toNat

end

end A290988.P13052238804536789845

namespace A290988

/-- `A008611(A142150(n+2)+n-1)` -/
def P13052238804536789845.Spec : Prop :=
  ∀ n, P13052238804536789845.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P4696703427241792726

`A008611((gcd(2, n)+1)*A004526(n))`
-/

namespace A290988.P4696703427241792726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((Nat.gcd 2 n + 1 : ℤ) * A004526 n).toNat

end

end A290988.P4696703427241792726

namespace A290988

/-- `A008611((gcd(2, n)+1)*A004526(n))` -/
def P4696703427241792726.Spec : Prop :=
  ∀ n, P4696703427241792726.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P9011814613587926811

`A008611((3-n%2)*A004526(n))`
-/

namespace A290988.P9011814613587926811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((3 - ((n % 2 : ℕ) : ℤ)) * A004526 n).toNat

end

end A290988.P9011814613587926811

namespace A290988

/-- `A008611((3-n%2)*A004526(n))` -/
def P9011814613587926811.Spec : Prop :=
  ∀ n, P9011814613587926811.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P11375851300048839335

`A008611(2*lcm(2, n)-A006370(n))`
-/

namespace A290988.P11375851300048839335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((2 * Nat.lcm 2 n : ℤ) - A006370 n).toNat

end

end A290988.P11375851300048839335

namespace A290988

/-- `A008611(2*lcm(2, n)-A006370(n))` -/
def P11375851300048839335.Spec : Prop :=
  ∀ n, P11375851300048839335.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P10422278252543341702

`A008611((A059841(n)+2)*A004526(n))`
-/

namespace A290988.P10422278252543341702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((A059841 n + 2) * A004526 n).toNat

end

end A290988.P10422278252543341702

namespace A290988

/-- `A008611((A059841(n)+2)*A004526(n))` -/
def P10422278252543341702.Spec : Prop :=
  ∀ n, P10422278252543341702.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P15293498005799259212

`A008611(A020639(3*(n+1))*A004526(n))`
-/

namespace A290988.P15293498005799259212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A020639 (3 * (n + 1)) * A004526 n).toNat

end

end A290988.P15293498005799259212

namespace A290988

/-- `A008611(A020639(3*(n+1))*A004526(n))` -/
def P15293498005799259212.Spec : Prop :=
  ∀ n, P15293498005799259212.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P16838864509481041377

`A008611(xor(1, A027656(n)+n))`
-/

namespace A290988.P16838864509481041377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor 1 (A027656 n + (n : ℤ))).toNat

end

end A290988.P16838864509481041377

namespace A290988

/-- `A008611(xor(1, A027656(n)+n))` -/
def P16838864509481041377.Spec : Prop :=
  ∀ n, P16838864509481041377.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P87973582658803037

`A008612(n^val(or(2, n), 2)+2*n)`
-/

namespace A290988.P87973582658803037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (n ^ SequenceMachineLib.valuation (Nat.lor 2 n) 2 + 2 * n)

end

end A290988.P87973582658803037

namespace A290988

/-- `A008612(n^val(or(2, n), 2)+2*n)` -/
def P87973582658803037.Spec : Prop :=
  ∀ n, P87973582658803037.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P3257416269484617546

`A008612(or(3, 2*n)+n*and(1, n+1))`
-/

namespace A290988.P3257416269484617546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Nat.lor 3 (2 * n) + n * Nat.land 1 (n + 1))

end

end A290988.P3257416269484617546

namespace A290988

/-- `A008612(or(3, 2*n)+n*and(1, n+1))` -/
def P3257416269484617546.Spec : Prop :=
  ∀ n, P3257416269484617546.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P4343688695674418243

`A008612(A129527(record[or(2, n)]))`
-/

namespace A290988.P4343688695674418243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A129527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A290988.P4343688695674418243

namespace A290988

/-- `A008612(A129527(record[or(2, n)]))` -/
def P4343688695674418243.Spec : Prop :=
  ∀ n, P4343688695674418243.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P16456280672723309506

`A008612(Δ[A133146(n)]+n)`
-/

namespace A290988.P16456280672723309506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A290988.P16456280672723309506

namespace A290988

/-- `A008612(Δ[A133146(n)]+n)` -/
def P16456280672723309506.Spec : Prop :=
  ∀ n, P16456280672723309506.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P14232032634120615529

`A008612(abs(A009531(n))+2*n)`
-/

namespace A290988.P14232032634120615529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (|A009531 n| + (2 * n : ℤ)).toNat

end

end A290988.P14232032634120615529

namespace A290988

/-- `A008612(abs(A009531(n))+2*n)` -/
def P14232032634120615529.Spec : Prop :=
  ∀ n, P14232032634120615529.a n = A290988 (n + 2)

end A290988

/-! ## A290988.P564226144659466349

`A008612(3*n+1-A093178(n))`
-/

namespace A290988.P564226144659466349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((3 * n + 1 : ℤ) - A093178 n).toNat

end

end A290988.P564226144659466349

namespace A290988

/-- `A008612(3*n+1-A093178(n))` -/
def P564226144659466349.Spec : Prop :=
  ∀ n, P564226144659466349.a n = A290988 (n + 2)

end A290988

/-!
# A290989: Expansion of x^6*(1 + x^3)/(1 - 4*x + 5*x^2 - x^3 - 2*x^4 + x^6 + x^7 - 2*x^8 + x^9).

The programs for A290989, the canonical program `A290989.P11247072808886372281` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290989 has offset 6).

The definition of A290989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-4x+5x^2-x^3-2x^4+x^6+x^7-2x^8+x^9))` (program `A290989.P11247072808886372281`, by `A290989.P11247072808886372281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290989.P11247072808886372281

`ogf((1+x^3)/(1-4x+5x^2-x^3-2x^4+x^6+x^7-2x^8+x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290989

/-- `ogf((1+x^3)/(1-4x+5x^2-x^3-2x^4+x^6+x^7-2x^8+x^9))` -/
def P11247072808886372281.Spec : Prop :=
  ∀ n, P11247072808886372281.a n = A290989 (n + 6)

theorem P11247072808886372281.correct : P11247072808886372281.Spec := by
  intro n
  simp only [A290989, Nat.add_sub_cancel]

end A290989

/-! ## A290989.P10114847045018010279

`A087823(A193655(n))`
-/

namespace A290989.P10114847045018010279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087823 (A193655 n).toNat

end

end A290989.P10114847045018010279

namespace A290989

/-- `A087823(A193655(n))` -/
def P10114847045018010279.Spec : Prop :=
  ∀ n, P10114847045018010279.a n = A290989 (n + 6)

end A290989

/-! ## A290989.P4159531458942597710

`∑[∑[A118759(A164150(n))]]`
-/

namespace A290989.P4159531458942597710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A164150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290989.P4159531458942597710

namespace A290989

/-- `∑[∑[A118759(A164150(n))]]` -/
def P4159531458942597710.Spec : Prop :=
  ∀ n, P4159531458942597710.a n = A290989 (n + 6)

end A290989

/-! ## A290989.P9103309744507934267

`∑[∑[A118759(A164387(n))]]`
-/

namespace A290989.P9103309744507934267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A164387 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290989.P9103309744507934267

namespace A290989

/-- `∑[∑[A118759(A164387(n))]]` -/
def P9103309744507934267.Spec : Prop :=
  ∀ n, P9103309744507934267.a n = A290989 (n + 6)

end A290989

/-!
# A290990: p-INVERT of the nonnegative integers (A000027), where p(S) = 1 - S - S^2.

The programs for A290990, the canonical program `A290990.P4198058152930128325` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290990 has offset 0).

The definition of A290990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290990.P4198058152930128325

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290990

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` -/
def P4198058152930128325.Spec : Prop :=
  ∀ n, P4198058152930128325.a n = A290990 n

theorem P4198058152930128325.correct : P4198058152930128325.Spec := by
  intro n
  simp only [A290990]

end A290990

/-! ## A290990.P9185002176051373800

`ogf((x-2x^2+2x^3)/(1-4x+5x^2-2x^3-x^4))`
-/

namespace A290990.P9185002176051373800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -4, 5, -2, -1] n

end

end A290990.P9185002176051373800

namespace A290990

/-- `ogf((x-2x^2+2x^3)/(1-4x+5x^2-2x^3-x^4))` -/
def P9185002176051373800.Spec : Prop :=
  ∀ n, P9185002176051373800.a n = A290990 n

end A290990

/-! ## A290990.P14227895266462163558

`A129988(n)-A011782(n)`
-/

namespace A290990.P14227895266462163558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A011782 n

end

end A290990.P14227895266462163558

namespace A290990

/-- `A129988(n)-A011782(n)` -/
def P14227895266462163558.Spec : Prop :=
  ∀ n, P14227895266462163558.a n = A290990 n

theorem P14227895266462163558.correct : P14227895266462163558.Spec := by
  intro n
  simp only [A290990, Nat.add_sub_cancel, A290990.P14227895266462163558.a, A290990.P4198058152930128325.a, A011782, A011782.P7461078519819856082.a, A129988, A129988.P17125705088209517440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290990

/-! ## A290990.P13697032882830262517

`Δ[A101891(n)]`
-/

namespace A290990.P13697032882830262517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P13697032882830262517

namespace A290990

/-- `Δ[A101891(n)]` -/
def P13697032882830262517.Spec : Prop :=
  ∀ n, P13697032882830262517.a n = A290990 n

end A290990

/-! ## A290990.P11419571775803574260

`Δ[A129987(n)]-A011782(n)`
-/

namespace A290990.P11419571775803574260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 n

end

end A290990.P11419571775803574260

namespace A290990

/-- `Δ[A129987(n)]-A011782(n)` -/
def P11419571775803574260.Spec : Prop :=
  ∀ n, P11419571775803574260.a n = A290990 n

end A290990

/-! ## A290990.P89258919684578126

`Δ[A129987(n)-A056469(n)]`
-/

namespace A290990.P89258919684578126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P89258919684578126

namespace A290990

/-- `Δ[A129987(n)-A056469(n)]` -/
def P89258919684578126.Spec : Prop :=
  ∀ n, P89258919684578126.a n = A290990 n

end A290990

/-! ## A290990.P6370409943677455713

`Δ[A129987(n)-A094373(n)]`
-/

namespace A290990.P6370409943677455713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P6370409943677455713

namespace A290990

/-- `Δ[A129987(n)-A094373(n)]` -/
def P6370409943677455713.Spec : Prop :=
  ∀ n, P6370409943677455713.a n = A290990 n

end A290990

/-! ## A290990.P16260738643587936377

`Δ[A129987(n)-A131577(n)]`
-/

namespace A290990.P16260738643587936377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P16260738643587936377

namespace A290990

/-- `Δ[A129987(n)-A131577(n)]` -/
def P16260738643587936377.Spec : Prop :=
  ∀ n, P16260738643587936377.a n = A290990 n

end A290990

/-! ## A290990.P2954448090570434048

`A101891(n+1)-A101891(n)`
-/

namespace A290990.P2954448090570434048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101891 (n + 1) - A101891 n

end

end A290990.P2954448090570434048

namespace A290990

/-- `A101891(n+1)-A101891(n)` -/
def P2954448090570434048.Spec : Prop :=
  ∀ n, P2954448090570434048.a n = A290990 n

end A290990

/-! ## A290990.P2364663065707270174

`Δ[Δ[Δ[A101890(n)]]]`
-/

namespace A290990.P2364663065707270174
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P2364663065707270174

namespace A290990

/-- `Δ[Δ[Δ[A101890(n)]]]` -/
def P2364663065707270174.Spec : Prop :=
  ∀ n, P2364663065707270174.a n = A290990 n

end A290990

/-! ## A290990.P14758562132416538810

`Δ[Δ[A129988(n)-A129983(n)]]`
-/

namespace A290990.P14758562132416538810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A129983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P14758562132416538810

namespace A290990

/-- `Δ[Δ[A129988(n)-A129983(n)]]` -/
def P14758562132416538810.Spec : Prop :=
  ∀ n, P14758562132416538810.a n = A290990 n

end A290990

/-! ## A290990.P18105128740657973283

`Δ[Δ[A129988(n)]-A129984(n)]`
-/

namespace A290990.P18105128740657973283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A129984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290990.P18105128740657973283

namespace A290990

/-- `Δ[Δ[A129988(n)]-A129984(n)]` -/
def P18105128740657973283.Spec : Prop :=
  ∀ n, P18105128740657973283.a n = A290990 n

end A290990

/-! ## A290990.P8478358787493587377

`Δ[Δ[A129988(n)]]-A129986(n)`
-/

namespace A290990.P8478358787493587377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129986 n

end

end A290990.P8478358787493587377

namespace A290990

/-- `Δ[Δ[A129988(n)]]-A129986(n)` -/
def P8478358787493587377.Spec : Prop :=
  ∀ n, P8478358787493587377.a n = A290990 n

end A290990

/-!
# A290991: p-INVERT of (0,0,1,2,3,4,5,...), the nonnegative integers A000027 preceded by one zero, where p(S) = 1 - S - S^2.

The programs for A290991, there is no canonical definition to state claims against.
-/

/-! ## A290991.P17145126395076343785

`A127708(A000041(n))+Δ[A136444(n)]`
-/

namespace A290991.P17145126395076343785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (A000041 n).toNat + (f1 (n + 1) - f1 n)

end

end A290991.P17145126395076343785

/-! ## A290991.P14028559665082314847

`A056926(Δ[A136444(n)]²)`
-/

namespace A290991.P14028559665082314847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A290991.P14028559665082314847

/-! ## A290991.P8650661948340626804

`A262689(Δ[A136444(n)]²)`
-/

namespace A290991.P8650661948340626804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A290991.P8650661948340626804

/-! ## A290991.P10784741183298996493

`Δ[A136444(A004917(n+1))]`
-/

namespace A290991.P10784741183298996493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (A004917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290991.P10784741183298996493

/-! ## A290991.P5918259643810996579

`Δ[A136444(n)]^A053501(n)`
-/

namespace A290991.P5918259643810996579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A053501 n : ℤ)

end

end A290991.P5918259643810996579

/-!
# A290992: p-INVERT of (0,0,0,1,2,3,4,5,...), the nonnegative integers A000027 preceded by two zeros, where p(S) = 1 - S - S^2.

The programs for A290992, there is no canonical definition to state claims against.
-/

/-! ## A290992.P10027051002799331081

`A089868(Δ[A023426(n)])`
-/

namespace A290992.P10027051002799331081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f1 (n + 1) - f1 n).toNat

end

end A290992.P10027051002799331081

/-! ## A290992.P10889153291717943425

`A089869(Δ[A023426(n)])`
-/

namespace A290992.P10889153291717943425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (f1 (n + 1) - f1 n).toNat

end

end A290992.P10889153291717943425

/-! ## A290992.P2268625570538077878

`A351870(Δ[A023426(n)])`
-/

namespace A290992.P2268625570538077878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (f1 (n + 1) - f1 n).toNat

end

end A290992.P2268625570538077878

/-! ## A290992.P16059756813159231681

`A361229(A061497(n+1))`
-/

namespace A290992.P16059756813159231681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361229 (A061497 (n + 1)).toNat

end

end A290992.P16059756813159231681

/-! ## A290992.P17256704219917136755

`A072088(A361229(n+1))`
-/

namespace A290992.P17256704219917136755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A361229 (n + 1)).toNat

end

end A290992.P17256704219917136755

/-!
# A290993: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^6.

The programs for A290993, the canonical program `A290993.P4070757531723867054` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290993 has offset 0).

The definition of A290993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290993.P4070757531723867054

`A057681(n+1)+A227430(n)-A057681(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290993

/-- `A057681(n+1)+A227430(n)-A057681(n)` -/
def P4070757531723867054.Spec : Prop :=
  ∀ n, P4070757531723867054.a n = A290993 n

theorem P4070757531723867054.correct : P4070757531723867054.Spec := by
  intro n
  simp only [A290993]

end A290993

/-! ## A290993.P8569352031590459263

`Δ[A306847(n)]`
-/

namespace A290993.P8569352031590459263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290993.P8569352031590459263

namespace A290993

/-- `Δ[A306847(n)]` -/
def P8569352031590459263.Spec : Prop :=
  ∀ n, P8569352031590459263.a n = A290993 n

end A290993

/-! ## A290993.P18253299570788952838

`A024495(n)-A227430(n)`
-/

namespace A290993.P18253299570788952838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - A227430 n

end

end A290993.P18253299570788952838

namespace A290993

/-- `A024495(n)-A227430(n)` -/
def P18253299570788952838.Spec : Prop :=
  ∀ n, P18253299570788952838.a n = A290993 n

end A290993

/-! ## A290993.P1806094756840200147

`A131023(n+1)-A119336(n)`
-/

namespace A290993.P1806094756840200147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1) - A119336 n

end

end A290993.P1806094756840200147

namespace A290993

/-- `A131023(n+1)-A119336(n)` -/
def P1806094756840200147.Spec : Prop :=
  ∀ n, P1806094756840200147.a n = A290993 n

end A290993

/-! ## A290993.P6566088904392316847

`A306847(n+1)-A306847(n)`
-/

namespace A290993.P6566088904392316847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (n + 1) - A306847 n

end

end A290993.P6566088904392316847

namespace A290993

/-- `A306847(n+1)-A306847(n)` -/
def P6566088904392316847.Spec : Prop :=
  ∀ n, P6566088904392316847.a n = A290993 n

end A290993

/-! ## A290993.P9110034966144007474

`Δ[A129339(n+1)]-A119336(n)`
-/

namespace A290993.P9110034966144007474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A119336 n

end

end A290993.P9110034966144007474

namespace A290993

/-- `Δ[A129339(n+1)]-A119336(n)` -/
def P9110034966144007474.Spec : Prop :=
  ∀ n, P9110034966144007474.a n = A290993 n

end A290993

/-! ## A290993.P13835480210474418144

`A024493(n+1)-(A227430(n)+A024493(n))`
-/

namespace A290993.P13835480210474418144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) - (A227430 n + A024493 n)

end

end A290993.P13835480210474418144

namespace A290993

/-- `A024493(n+1)-(A227430(n)+A024493(n))` -/
def P13835480210474418144.Spec : Prop :=
  ∀ n, P13835480210474418144.a n = A290993 n

end A290993

/-!
# A290994: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^7.

The programs for A290994, there is no canonical definition to state claims against.
-/

/-! ## A290994.P5963015372964323126

`Δ[A306852(n)]`
-/

namespace A290994.P5963015372964323126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290994.P5963015372964323126

/-! ## A290994.P94907365235791220

`A306852(n+1)-A306852(n)`
-/

namespace A290994.P94907365235791220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (n + 1) - A306852 n

end

end A290994.P94907365235791220

/-! ## A290994.P15206471383179527461

`Δ[Δ[A020725(A212387(n))]]`
-/

namespace A290994.P15206471383179527461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212387 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290994.P15206471383179527461

/-! ## A290994.P8303084579053115919

`A293169(A065673(n+1))-1`
-/

namespace A290994.P8303084579053115919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293169 (A065673 (n + 1)).toNat - 1

end

end A290994.P8303084579053115919

/-! ## A290994.P15968967061112028895

`A055641(A341203(n+6))+C(n, 6)`
-/

namespace A290994.P15968967061112028895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A341203 (n + 6)).toNat + (Nat.choose n 6 : ℤ)

end

end A290994.P15968967061112028895

/-!
# A290995: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^8.

The programs for A290995, there is no canonical definition to state claims against.
-/

/-! ## A290995.P11307856887322754383

`Δ[A306859(n)]`
-/

namespace A290995.P11307856887322754383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290995.P11307856887322754383

/-! ## A290995.P11415019161297025892

`A306859(n+1)-A306859(n)`
-/

namespace A290995.P11415019161297025892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 (n + 1) - A306859 n

end

end A290995.P11415019161297025892

/-! ## A290995.P9942080749683559377

`Δ[A306846(A000217(n+7)+n)]`
-/

namespace A290995.P9942080749683559377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (A000217 (n + 7) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290995.P9942080749683559377

/-! ## A290995.P11829844767030773257

`A140201(C(n, 7))`
-/

namespace A290995.P11829844767030773257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (Nat.choose n 7)

end

end A290995.P11829844767030773257

/-! ## A290995.P17180641227654530944

`A023443(A306721(n+1))`
-/

namespace A290995.P17180641227654530944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A306721 (n + 1)).toNat

end

end A290995.P17180641227654530944

/-!
# A290996: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^4.

The programs for A290996, the canonical program `A290996.P4253154922583032520` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290996 has offset 0).

The definition of A290996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290996.P4253154922583032520

`5*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290996

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` -/
def P4253154922583032520.Spec : Prop :=
  ∀ n, P4253154922583032520.a n = A290996 n

theorem P4253154922583032520.correct : P4253154922583032520.Spec := by
  intro n
  simp only [A290996]

end A290996

/-! ## A290996.P3179610466977303379

`∑[A238655(n+1)+A099741(A383324(n+1))]`
-/

namespace A290996.P3179610466977303379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238655 (n + 1) + A099741 (A383324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290996.P3179610466977303379

namespace A290996

/-- `∑[A238655(n+1)+A099741(A383324(n+1))]` -/
def P3179610466977303379.Spec : Prop :=
  ∀ n, P3179610466977303379.a n = A290996 n

end A290996

/-! ## A290996.P14817842873476819644

`∑[A369578(n)%A005343(n+1)]`
-/

namespace A290996.P14817842873476819644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369578 n) (A005343 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290996.P14817842873476819644

namespace A290996

/-- `∑[A369578(n)%A005343(n+1)]` -/
def P14817842873476819644.Spec : Prop :=
  ∀ n, P14817842873476819644.a n = A290996 n

end A290996

/-! ## A290996.P3170416877215677067

`∑[A369578(n)]%A029542(3*(n+1))`
-/

namespace A290996.P3170416877215677067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A029542 (3 * (n + 1)))

end

end A290996.P3170416877215677067

namespace A290996

/-- `∑[A369578(n)]%A029542(3*(n+1))` -/
def P3170416877215677067.Spec : Prop :=
  ∀ n, P3170416877215677067.a n = A290996 n

end A290996

/-!
# A290997: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^3 - S^6.

The programs for A290997, there is no canonical definition to state claims against.
-/

/-! ## A290997.P18409792947227429750

`Δ[A028310(Δ[A352879(n)])]`
-/

namespace A290997.P18409792947227429750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290997.P18409792947227429750

/-! ## A290997.P10400417372997299811

`A052103(n)+A014049(A000110(n))`
-/

namespace A290997.P10400417372997299811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n + A014049 (A000110 n).toNat

end

end A290997.P10400417372997299811

/-! ## A290997.P13151228825054234536

`A071626(A107591(n))+A000389(n)`
-/

namespace A290997.P13151228825054234536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A107591 n).toNat + A000389 n

end

end A290997.P13151228825054234536

/-! ## A290997.P1292892831618199141

`A052103(n)-A185284(A000124(n))`
-/

namespace A290997.P1292892831618199141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n - A185284 (A000124 n).toNat

end

end A290997.P1292892831618199141

/-! ## A290997.P12908076727128339709

`A052103(n)-A185284(A000982(n))`
-/

namespace A290997.P12908076727128339709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n - A185284 (A000982 n).toNat

end

end A290997.P12908076727128339709

/-!
# A290998: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^3 - S^4.

The programs for A290998, the canonical program `A290998.P9975287325808219646` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290998 has offset 0).

The definition of A290998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290998.P9975287325808219646

`4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290998

/-- `4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` -/
def P9975287325808219646.Spec : Prop :=
  ∀ n, P9975287325808219646.a n = A290998 n

theorem P9975287325808219646.correct : P9975287325808219646.Spec := by
  intro n
  simp only [A290998]

end A290998

/-! ## A290998.P13381954420949928077

`ogf(x^2/(1-4x+6x^2-5x^3+x^4))`
-/

namespace A290998.P13381954420949928077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 6, -5, 1] n

end

end A290998.P13381954420949928077

namespace A290998

/-- `ogf(x^2/(1-4x+6x^2-5x^3+x^4))` -/
def P13381954420949928077.Spec : Prop :=
  ∀ n, P13381954420949928077.a n = A290998 n

end A290998

/-! ## A290998.P12087877643017955061

`Δ[A099099(n)]`
-/

namespace A290998.P12087877643017955061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P12087877643017955061

namespace A290998

/-- `Δ[A099099(n)]` -/
def P12087877643017955061.Spec : Prop :=
  ∀ n, P12087877643017955061.a n = A290998 n

end A290998

/-! ## A290998.P18057050414844358286

`A122514(2*n)`
-/

namespace A290998.P18057050414844358286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122514 (2 * n)

end

end A290998.P18057050414844358286

namespace A290998

/-- `A122514(2*n)` -/
def P18057050414844358286.Spec : Prop :=
  ∀ n, P18057050414844358286.a n = A290998 n

end A290998

/-! ## A290998.P16839149131220030866

`Δ[A017817(4*n)]`
-/

namespace A290998.P16839149131220030866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P16839149131220030866

namespace A290998

/-- `Δ[A017817(4*n)]` -/
def P16839149131220030866.Spec : Prop :=
  ∀ n, P16839149131220030866.a n = A290998 n

end A290998

/-! ## A290998.P10141293882851267501

`A017817(4*n+1)`
-/

namespace A290998.P10141293882851267501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (4 * n + 1)

end

end A290998.P10141293882851267501

namespace A290998

/-- `A017817(4*n+1)` -/
def P10141293882851267501.Spec : Prop :=
  ∀ n, P10141293882851267501.a n = A290998 n

end A290998

/-! ## A290998.P15460115270010948729

`A127838(4*n+6)`
-/

namespace A290998.P15460115270010948729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (4 * n + 6)

end

end A290998.P15460115270010948729

namespace A290998

/-- `A127838(4*n+6)` -/
def P15460115270010948729.Spec : Prop :=
  ∀ n, P15460115270010948729.a n = A290998 n

end A290998

/-! ## A290998.P467659867632943861

`Δ[A175790(4*n+3)]`
-/

namespace A290998.P467659867632943861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175790 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P467659867632943861

namespace A290998

/-- `Δ[A175790(4*n+3)]` -/
def P467659867632943861.Spec : Prop :=
  ∀ n, P467659867632943861.a n = A290998 n

end A290998

/-! ## A290998.P13461522510264671377

`A099099(n+1)-A099099(n)`
-/

namespace A290998.P13461522510264671377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099099 (n + 1) - A099099 n

end

end A290998.P13461522510264671377

namespace A290998

/-- `A099099(n+1)-A099099(n)` -/
def P13461522510264671377.Spec : Prop :=
  ∀ n, P13461522510264671377.a n = A290998 n

end A290998

/-! ## A290998.P11277445420948764032

`Δ[A127838(Δ[A005891(n)]-n)]`
-/

namespace A290998.P11277445420948764032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P11277445420948764032

namespace A290998

/-- `Δ[A127838(Δ[A005891(n)]-n)]` -/
def P11277445420948764032.Spec : Prop :=
  ∀ n, P11277445420948764032.a n = A290998 n

end A290998

/-! ## A290998.P12290670162445889227

`Δ[A127838(Δ[A028895(n)]-n)]`
-/

namespace A290998.P12290670162445889227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P12290670162445889227

namespace A290998

/-- `Δ[A127838(Δ[A028895(n)]-n)]` -/
def P12290670162445889227.Spec : Prop :=
  ∀ n, P12290670162445889227.a n = A290998 n

end A290998

/-! ## A290998.P17198813181959917256

`∑[A127838(A008585(n+1)+n)]`
-/

namespace A290998.P17198813181959917256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (A008585 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290998.P17198813181959917256

namespace A290998

/-- `∑[A127838(A008585(n+1)+n)]` -/
def P17198813181959917256.Spec : Prop :=
  ∀ n, P17198813181959917256.a n = A290998 n

end A290998

/-! ## A290998.P6009350731536761846

`A062200(2*n)-A062200(A004275(n))`
-/

namespace A290998.P6009350731536761846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062200 (2 * n) - A062200 (A004275 n).toNat

end

end A290998.P6009350731536761846

namespace A290998

/-- `A062200(2*n)-A062200(A004275(n))` -/
def P6009350731536761846.Spec : Prop :=
  ∀ n, P6009350731536761846.a n = A290998 n

end A290998

/-! ## A290998.P15017000108539806522

`Δ[Δ[A137166(n)]-A137166(n)]`
-/

namespace A290998.P15017000108539806522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A137166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P15017000108539806522

namespace A290998

/-- `Δ[Δ[A137166(n)]-A137166(n)]` -/
def P15017000108539806522.Spec : Prop :=
  ∀ n, P15017000108539806522.a n = A290998 n

end A290998

/-! ## A290998.P6032082786191789192

`Δ[Δ[A027947(2*n+1)]-A027947(2*n+1)]`
-/

namespace A290998.P6032082786191789192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A027947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P6032082786191789192

namespace A290998

/-- `Δ[Δ[A027947(2*n+1)]-A027947(2*n+1)]` -/
def P6032082786191789192.Spec : Prop :=
  ∀ n, P6032082786191789192.a n = A290998 n

end A290998

/-! ## A290998.P4646046414189712512

`Δ[A027959(2*(n+1))-Δ[A027959(2*n+1)]]`
-/

namespace A290998.P4646046414189712512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027959 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027959 (2 * (n + 1)) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290998.P4646046414189712512

namespace A290998

/-- `Δ[A027959(2*(n+1))-Δ[A027959(2*n+1)]]` -/
def P4646046414189712512.Spec : Prop :=
  ∀ n, P4646046414189712512.a n = A290998 n

end A290998

/-!
# A290999: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 6*S^2.

The programs for A290999, the canonical program `A290999.P1271336574542165257` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290999 has offset 0).

The definition of A290999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290999.P1271336574542165257

`2*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290999

/-- `2*a(n-1)+5*a(n-2)` -/
def P1271336574542165257.Spec : Prop :=
  ∀ n, (P1271336574542165257.a n : ℤ) = A290999 n

theorem P1271336574542165257.correct : P1271336574542165257.Spec := by
  intro n
  simp only [A290999]

end A290999

/-! ## A290999.P2393794315792423537

`6*A002532(n)`
-/

namespace A290999.P2393794315792423537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002532 n

end

end A290999.P2393794315792423537

namespace A290999

/-- `6*A002532(n)` -/
def P2393794315792423537.Spec : Prop :=
  ∀ n, P2393794315792423537.a n = A290999 n

end A290999

/-! ## A290999.P18429988105318166932

`ogf(6x/(1-2x-5x^2))`
-/

namespace A290999.P18429988105318166932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -2, -5] n

end

end A290999.P18429988105318166932

namespace A290999

/-- `ogf(6x/(1-2x-5x^2))` -/
def P18429988105318166932.Spec : Prop :=
  ∀ n, P18429988105318166932.a n = A290999 n

end A290999

/-! ## A290999.P13604865246014468673

`sqrt(3/2)*((1+sqrt(6))^n-(1-sqrt(6))^n)`
-/

namespace A290999.P13604865246014468673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 : ℚ) / 2 : ℝ) * ((1 + Real.sqrt (6 : ℝ)) ^ n - (1 - Real.sqrt (6 : ℝ)) ^ n)

end

end A290999.P13604865246014468673

namespace A290999

/-- `sqrt(3/2)*((1+sqrt(6))^n-(1-sqrt(6))^n)` -/
def P13604865246014468673.Spec : Prop :=
  ∀ n, P13604865246014468673.a n = (A290999 n : ℝ)

end A290999

/-! ## A290999.P15397304086443660163

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A290999.P15397304086443660163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A290999.P15397304086443660163

namespace A290999

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P15397304086443660163.Spec : Prop :=
  ∀ n, P15397304086443660163.a n = A290999 n

end A290999

/-! ## A290999.P18374500065560460498

`Δ[A002533(n)]`
-/

namespace A290999.P18374500065560460498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290999.P18374500065560460498

namespace A290999

/-- `Δ[A002533(n)]` -/
def P18374500065560460498.Spec : Prop :=
  ∀ n, P18374500065560460498.a n = A290999 n

end A290999

/-! ## A290999.P11344948861727874027

`4*A083695(n)/2`
-/

namespace A290999.P11344948861727874027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A083695 n : ℚ) / 2

end

end A290999.P11344948861727874027

namespace A290999

/-- `4*A083695(n)/2` -/
def P11344948861727874027.Spec : Prop :=
  ∀ n, P11344948861727874027.a n = (A290999 n : ℚ)

end A290999

/-! ## A290999.P2583404960639652437

`A083695(n)+A083695(n)`
-/

namespace A290999.P2583404960639652437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + A083695 n

end

end A290999.P2583404960639652437

namespace A290999

/-- `A083695(n)+A083695(n)` -/
def P2583404960639652437.Spec : Prop :=
  ∀ n, P2583404960639652437.a n = A290999 n

end A290999

/-! ## A290999.P1392758047318505495

`lcm(A083694(n), A083695(n))`
-/

namespace A290999.P1392758047318505495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083694 n) (A083695 n)

end

end A290999.P1392758047318505495

namespace A290999

/-- `lcm(A083694(n), A083695(n))` -/
def P1392758047318505495.Spec : Prop :=
  ∀ n, (P1392758047318505495.a n : ℤ) = A290999 n

end A290999

/-! ## A290999.P11158165129728406380

`A002533(n+1)-A002533(n)`
-/

namespace A290999.P11158165129728406380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (n + 1) - A002533 n

end

end A290999.P11158165129728406380

namespace A290999

/-- `A002533(n+1)-A002533(n)` -/
def P11158165129728406380.Spec : Prop :=
  ∀ n, P11158165129728406380.a n = A290999 n

end A290999

