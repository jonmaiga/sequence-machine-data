import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
# A243200: Let A242720(n)-3 = prime(l)*prime(m), l<=m; a(n)=m-l.

The programs for A243200, there is no canonical definition to state claims against.
-/

/-! ## A243200.P4071839032943522970

`A326844(A242720(n+2)-3)`
-/

namespace A243200.P4071839032943522970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A242720 (n + 2) - 3).toNat

end

end A243200.P4071839032943522970

/-! ## A243200.P1072727519180552342

`A344616(A242720(n+2)-3)`
-/

namespace A243200.P1072727519180552342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A242720 (n + 2) - 3).toNat

end

end A243200.P1072727519180552342

/-! ## A243200.P534639162200778333

`A241917(A242720(n+2)-3)`
-/

namespace A243200.P534639162200778333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A242720 (n + 2) - 3).toNat

end

end A243200.P534639162200778333

/-! ## A243200.P16071141498732850102

`A242411(A242720(n+2)-3)`
-/

namespace A243200.P16071141498732850102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A242720 (n + 2) - 3).toNat

end

end A243200.P16071141498732850102

/-! ## A243200.P2877949395370285941

`A243055(A242720(n+2)-3)`
-/

namespace A243200.P2877949395370285941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A242720 (n + 2) - 3).toNat

end

end A243200.P2877949395370285941

/-!
# A243201: Odd octagonal numbers indexed by triangular numbers.

The programs for A243201, the canonical program `A243201.P1770549597896343998` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243201 has offset 0).

The definition of A243201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243201.P5188639863244552143

`((3*n²+3*n+2)²-1)/3`
-/

namespace A243201.P5188639863244552143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n ^ 2 + 3 * n + 2) ^ 2 : ℤ) - 1 : ℚ) / 3

end

end A243201.P5188639863244552143

namespace A243201

/-- `((3*n²+3*n+2)²-1)/3` -/
def P5188639863244552143.Spec : Prop :=
  ∀ n, P5188639863244552143.a n = (A243201 n : ℚ)

end A243201

/-! ## A243201.P1770549597896343998

`A003215(n)*A002061(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243201

/-- `A003215(n)*A002061(n+1)` -/
def P1770549597896343998.Spec : Prop :=
  ∀ n, P1770549597896343998.a n = A243201 n

theorem P1770549597896343998.correct : P1770549597896343998.Spec := by
  intro n
  simp only [A243201]

end A243201

/-! ## A243201.P6534956670219347045

`A014641((n²+n)/2)`
-/

namespace A243201.P6534956670219347045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A243201.P6534956670219347045

namespace A243201

/-- `A014641((n²+n)/2)` -/
def P6534956670219347045.Spec : Prop :=
  ∀ n, P6534956670219347045.a n = A243201 n

end A243201

/-! ## A243201.P15338237010152646811

`A000567(n²+n+1)`
-/

namespace A243201.P15338237010152646811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n ^ 2 + (n + 1))

end

end A243201.P15338237010152646811

namespace A243201

/-- `A000567(n²+n+1)` -/
def P15338237010152646811.Spec : Prop :=
  ∀ n, P15338237010152646811.a n = A243201 n

end A243201

/-! ## A243201.P7265253502429447971

`1+A140676(n²+n)`
-/

namespace A243201.P7265253502429447971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A140676 (n ^ 2 + n)

end

end A243201.P7265253502429447971

namespace A243201

/-- `1+A140676(n²+n)` -/
def P7265253502429447971.Spec : Prop :=
  ∀ n, P7265253502429447971.a n = A243201 n

end A243201

/-! ## A243201.P12757620133204929779

`or(1, ∑[2*n])*Δ[n^3]`
-/

namespace A243201.P12757620133204929779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A243201.P12757620133204929779

namespace A243201

/-- `or(1, ∑[2*n])*Δ[n^3]` -/
def P12757620133204929779.Spec : Prop :=
  ∀ n, P12757620133204929779.a n = A243201 n

end A243201

/-! ## A243201.P15353696370200448878

`A357042(n+1)+n²²`
-/

namespace A243201.P15353696370200448878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357042 (n + 1) + ((n ^ 2) ^ 2 : ℤ)

end

end A243201.P15353696370200448878

namespace A243201

/-- `A357042(n+1)+n²²` -/
def P15353696370200448878.Spec : Prop :=
  ∀ n, P15353696370200448878.a n = A243201 n

end A243201

/-! ## A243201.P16395125746860632045

`∑[A004277(n)]*Δ[n^3]`
-/

namespace A243201.P16395125746860632045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A243201.P16395125746860632045

namespace A243201

/-- `∑[A004277(n)]*Δ[n^3]` -/
def P16395125746860632045.Spec : Prop :=
  ∀ n, P16395125746860632045.a n = A243201 n

end A243201

/-! ## A243201.P9529243127091819904

`round((Δ[A000578(n)]+1)²/3)`
-/

namespace A243201.P9529243127091819904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n + 1) ^ 2 : ℚ) / 3)

end

end A243201.P9529243127091819904

namespace A243201

/-- `round((Δ[A000578(n)]+1)²/3)` -/
def P9529243127091819904.Spec : Prop :=
  ∀ n, P9529243127091819904.a n = A243201 n

end A243201

/-! ## A243201.P8918838939201912362

`(A002378(n)+1)*Δ[n*n²]`
-/

namespace A243201.P8918838939201912362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A243201.P8918838939201912362

namespace A243201

/-- `(A002378(n)+1)*Δ[n*n²]` -/
def P8918838939201912362.Spec : Prop :=
  ∀ n, P8918838939201912362.a n = A243201 n

end A243201

/-! ## A243201.P3668830215118799941

`(Δ[A000330(n)]-n)*Δ[n^3]`
-/

namespace A243201.P3668830215118799941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - (n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A243201.P3668830215118799941

namespace A243201

/-- `(Δ[A000330(n)]-n)*Δ[n^3]` -/
def P3668830215118799941.Spec : Prop :=
  ∀ n, P3668830215118799941.a n = A243201 n

end A243201

/-! ## A243201.P786157687825870785

`A248621(n)+A001844(n)`
-/

namespace A243201.P786157687825870785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248621 n + A001844 n

end

end A243201.P786157687825870785

namespace A243201

/-- `A248621(n)+A001844(n)` -/
def P786157687825870785.Spec : Prop :=
  ∀ n, P786157687825870785.a n = A243201 n

end A243201

/-! ## A243201.P1919316722183488677

`A160765(n)+A110450(n)`
-/

namespace A243201.P1919316722183488677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n + A110450 n

end

end A243201.P1919316722183488677

namespace A243201

/-- `A160765(n)+A110450(n)` -/
def P1919316722183488677.Spec : Prop :=
  ∀ n, P1919316722183488677.a n = A243201 n

end A243201

/-! ## A243201.P16192895123107903199

`A181475(n)+A163756(n)`
-/

namespace A243201.P16192895123107903199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181475 n + A163756 n

end

end A243201.P16192895123107903199

namespace A243201

/-- `A181475(n)+A163756(n)` -/
def P16192895123107903199.Spec : Prop :=
  ∀ n, P16192895123107903199.a n = A243201 n

end A243201

/-! ## A243201.P16812872808056050014

`A294433(n)+A219086(n)`
-/

namespace A243201.P16812872808056050014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n + A219086 n

end

end A243201.P16812872808056050014

namespace A243201

/-- `A294433(n)+A219086(n)` -/
def P16812872808056050014.Spec : Prop :=
  ∀ n, P16812872808056050014.a n = A243201 n

end A243201

/-! ## A243201.P14148532409809228861

`A007204(n)-A002378(n)²`
-/

namespace A243201.P14148532409809228861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A002378 n ^ 2

end

end A243201.P14148532409809228861

namespace A243201

/-- `A007204(n)-A002378(n)²` -/
def P14148532409809228861.Spec : Prop :=
  ∀ n, P14148532409809228861.a n = A243201 n

end A243201

/-! ## A243201.P3550921362097164168

`lcm(∑[A004277(n)], A003215(n))`
-/

namespace A243201.P3550921362097164168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A003215 n)

end

end A243201.P3550921362097164168

namespace A243201

/-- `lcm(∑[A004277(n)], A003215(n))` -/
def P3550921362097164168.Spec : Prop :=
  ∀ n, (P3550921362097164168.a n : ℤ) = A243201 n

end A243201

/-! ## A243201.P13947026079983683449

`A035287(n+1)+A008514(n)`
-/

namespace A243201.P13947026079983683449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) + A008514 n

end

end A243201.P13947026079983683449

namespace A243201

/-- `A035287(n+1)+A008514(n)` -/
def P13947026079983683449.Spec : Prop :=
  ∀ n, P13947026079983683449.a n = A243201 n

end A243201

/-! ## A243201.P7749748755623581130

`A070302(n+1)+A001621(n)`
-/

namespace A243201.P7749748755623581130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1) + A001621 n

end

end A243201.P7749748755623581130

namespace A243201

/-- `A070302(n+1)+A001621(n)` -/
def P7749748755623581130.Spec : Prop :=
  ∀ n, P7749748755623581130.a n = A243201 n

end A243201

/-!
# A243202: Coefficients of a particular decomposition of N^N in terms of binomial coefficients.

The programs for A243202, there is no canonical definition to state claims against.
-/

/-! ## A243202.P9985805592586798640

`A243203(n)/A007318(n)`
-/

namespace A243202.P9985805592586798640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A007318 n : ℚ)

end

end A243202.P9985805592586798640

/-! ## A243202.P7411145786000545248

`A243203(n)/A091918(n)`
-/

namespace A243202.P7411145786000545248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A091918 n : ℚ)

end

end A243202.P7411145786000545248

/-! ## A243202.P8273140326703051701

`A243203(n)/A132749(n)`
-/

namespace A243202.P8273140326703051701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A132749 n : ℚ)

end

end A243202.P8273140326703051701

/-! ## A243202.P3243935083762131856

`A243203(n)/A135227(n)`
-/

namespace A243202.P3243935083762131856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A135227 n : ℚ)

end

end A243202.P3243935083762131856

/-! ## A243202.P10000909287462113491

`A243203(n)/A183154(n)`
-/

namespace A243202.P10000909287462113491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) / (A183154 n : ℚ)

end

end A243202.P10000909287462113491

/-! ## A243202.P9235947613536157425

`abs(A243203(n)/A130595(n))`
-/

namespace A243202.P9235947613536157425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A243203 n : ℚ) / (A130595 n : ℚ)|

end

end A243202.P9235947613536157425

/-!
# A243203: Triangle read by rows: T(n, k) = k * n^(n - k - 1) * n! / (n - k)! for n >= 1, T(0, 0) = 1.

The programs for A243203, there is no canonical definition to state claims against.
-/

/-! ## A243203.P15078814469985210292

`A007318(n)*A243202(n)`
-/

namespace A243203.P15078814469985210292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A243202 n

end

end A243203.P15078814469985210292

/-! ## A243203.P11791790289165864902

`A091918(n)*A243202(n)`
-/

namespace A243203.P11791790289165864902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A243202 n

end

end A243203.P11791790289165864902

/-! ## A243203.P9952054100654758003

`A132749(n)*A243202(n)`
-/

namespace A243203.P9952054100654758003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A243202 n

end

end A243203.P9952054100654758003

/-! ## A243203.P8392924669948072648

`A135227(n)*A243202(n)`
-/

namespace A243203.P8392924669948072648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A243202 n

end

end A243203.P8392924669948072648

/-! ## A243203.P14693559373099510893

`A183154(n)*A243202(n)`
-/

namespace A243203.P14693559373099510893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A243202 n

end

end A243203.P14693559373099510893

/-! ## A243203.P1623929906097183189

`A206735(n)*A243202(n)`
-/

namespace A243203.P1623929906097183189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A243202 n

end

end A243203.P1623929906097183189

/-! ## A243203.P558164728831429343

`Δ[A102363(n)]*A243202(n)`
-/

namespace A243203.P558164728831429343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A243202 n

end

end A243203.P558164728831429343

/-! ## A243203.P11462280158309663979

`A144084(n)/A008279(n)*A243202(n)`
-/

namespace A243203.P11462280158309663979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144084 n : ℚ) / (A008279 n : ℚ) * (A243202 n : ℚ)

end

end A243203.P11462280158309663979

/-!
# A243204: Expansion of 2*x/((1-sqrt(1-2*(1-sqrt(1-4*x))))*sqrt(1-2*(1-sqrt(1-4*x))) * sqrt(1-4*x)).

The programs for A243204, there is no canonical definition to state claims against.
-/

/-! ## A243204.P10346394419863683592

`A178105(A000669(n+1))+A082759(n)`
-/

namespace A243204.P10346394419863683592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (A000669 (n + 1)).toNat + A082759 n

end

end A243204.P10346394419863683592

/-!
# A243206: Number of 3-matchings of the n X n grid graph.

The programs for A243206, there is no canonical definition to state claims against.
-/

/-! ## A243206.P468495151010803024

`A303603(A382029(n))`
-/

namespace A243206.P468495151010803024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (A382029 n).toNat

end

end A243206.P468495151010803024

/-!
# A243208: Number of inequivalent (mod D_3) ways to place 3 points on a triangular grid of side n so that they are not vertices of an equilateral triangle with sides parallel to the grid.

The programs for A243208, there is no canonical definition to state claims against.
-/

/-! ## A243208.P17137444388767595312

`A237530(n+2)-A006918(n)`
-/

namespace A243208.P17137444388767595312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237530 (n + 2) - A006918 n

end

end A243208.P17137444388767595312

/-! ## A243208.P14873478777904308382

`A230723(n+2)-∑[A008620(n)]-A006918(n)`
-/

namespace A243208.P14873478777904308382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j - A006918 n

end

end A243208.P14873478777904308382

/-! ## A243208.P5286623697647491270

`A230723(n+2)-A001840(n+1)-A006918(n)`
-/

namespace A243208.P5286623697647491270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 2) - A001840 (n + 1) - A006918 n

end

end A243208.P5286623697647491270

/-! ## A243208.P18156860529539156038

`A237530(n+2)+A001057(A280186(n+3))`
-/

namespace A243208.P18156860529539156038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237530 (n + 2) + A001057 (A280186 (n + 3)).toNat

end

end A243208.P18156860529539156038

/-!
# A243211: Triangle T(n, k) = Numbers of ways to place k points on a triangular grid of side n so that no three of them are vertices of an equilateral triangle with sides parallel to the grid. Triangle read by rows.

The programs for A243211, there is no canonical definition to state claims against.
-/

/-! ## A243211.P15794198333400939047

`A240439(n+1)+A214411(A344491(n))`
-/

namespace A243211.P15794198333400939047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240439 (n + 1) + A214411 (A344491 n).toNat

end

end A243211.P15794198333400939047

/-! ## A243211.P13224954193565103211

`or(A240439(n+1), A264051(A126188(n)))`
-/

namespace A243211.P13224954193565103211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240439 (n + 1)) (A264051 (A126188 n).toNat)

end

end A243211.P13224954193565103211

/-! ## A243211.P16685178641198521132

`A240439(n+1)+A004198(A079204(n+1))`
-/

namespace A243211.P16685178641198521132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240439 (n + 1) + A004198 (A079204 (n + 1)).toNat

end

end A243211.P16685178641198521132

/-! ## A243211.P14182255856774101096

`A240439(n+1)+A046660(A240439(2*(n+2)))`
-/

namespace A243211.P14182255856774101096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240439 (n + 1) + A046660 (A240439 (2 * (n + 2))).toNat

end

end A243211.P14182255856774101096

/-!
# A243212: Number of ways to place 3 points on a triangular grid of side n so that no three of them are vertices of an equilateral triangle with sides parallel to the grid.

The programs for A243212, the canonical program `A243212.P5840329087631673674` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243212 has offset 2).

The definition of A243212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243212.P5840329087631673674

`A234250(n+2)-A019298(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243212

/-- `A234250(n+2)-A019298(n)` -/
def P5840329087631673674.Spec : Prop :=
  ∀ n, P5840329087631673674.a n = A243212 (n + 2)

theorem P5840329087631673674.correct : P5840329087631673674.Spec := by
  intro n
  simp only [A243212, Nat.add_sub_cancel]

end A243212

/-! ## A243212.P13568531560166671258

`A234250(n+2)-∑[A077043(n)]`
-/

namespace A243212.P13568531560166671258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234250 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243212.P13568531560166671258

namespace A243212

/-- `A234250(n+2)-∑[A077043(n)]` -/
def P13568531560166671258.Spec : Prop :=
  ∀ n, P13568531560166671258.a n = A243212 (n + 2)

end A243212

/-! ## A243212.P5452476132976439175

`A095694(n+2)-A058195(n+1)`
-/

namespace A243212.P5452476132976439175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095694 (n + 2) - A058195 (n + 1)

end

end A243212.P5452476132976439175

namespace A243212

/-- `A095694(n+2)-A058195(n+1)` -/
def P5452476132976439175.Spec : Prop :=
  ∀ n, P5452476132976439175.a n = A243212 (n + 2)

end A243212

/-! ## A243212.P5886736857354347204

`A053526(n+3)-∑[A002620(n+1)]`
-/

namespace A243212.P5886736857354347204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053526 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243212.P5886736857354347204

namespace A243212

/-- `A053526(n+3)-∑[A002620(n+1)]` -/
def P5886736857354347204.Spec : Prop :=
  ∀ n, P5886736857354347204.a n = A243212 (n + 2)

end A243212

/-! ## A243212.P15978703558800140322

`A000124(n+4)*A000332(n+3)-A173196(n+1)`
-/

namespace A243212.P15978703558800140322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 4) * A000332 (n + 3) - A173196 (n + 1)

end

end A243212.P15978703558800140322

namespace A243212

/-- `A000124(n+4)*A000332(n+3)-A173196(n+1)` -/
def P15978703558800140322.Spec : Prop :=
  ∀ n, P15978703558800140322.a n = A243212 (n + 2)

end A243212

/-! ## A243212.P4098504097398641573

`A000292(∑[n+2]-1)-A002717(n+1)`
-/

namespace A243212.P4098504097398641573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A002717 (n + 1)

end

end A243212.P4098504097398641573

namespace A243212

/-- `A000292(∑[n+2]-1)-A002717(n+1)` -/
def P4098504097398641573.Spec : Prop :=
  ∀ n, P4098504097398641573.a n = A243212 (n + 2)

end A243212

/-!
# A243215: Number of 4-matchings of the n X n grid graph.

The programs for A243215, there is no canonical definition to state claims against.
-/

/-! ## A243215.P8307783529325145234

`A115384(A052678(n)²)`
-/

namespace A243215.P8307783529325145234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A052678 n ^ 2).toNat

end

end A243215.P8307783529325145234

/-!
# A243220: Number of divisors of A002183(n).

The programs for A243220, there is no canonical definition to state claims against.
-/

/-! ## A243220.P1409876521465034680

`A000005(A000005(A002182(n+1)))`
-/

namespace A243220.P1409876521465034680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A002182 (n + 1)).toNat).toNat

end

end A243220.P1409876521465034680

/-! ## A243220.P10562738606606854192

`∏{e}[A002183(n+1), #+1]`
-/

namespace A243220.P10562738606606854192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A243220.P10562738606606854192

/-! ## A243220.P9546837599884618560

`∑{d}[A002183(n+1), A007318(C(2, #))]`
-/

namespace A243220.P9546837599884618560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Nat.choose 2 d)

end

end A243220.P9546837599884618560

/-! ## A243220.P637157753843544947

`∑{d}[A002183(n+1), gcd(#, A158666(n))]`
-/

namespace A243220.P637157753843544947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A158666 n)

end

end A243220.P637157753843544947

/-! ## A243220.P7247301907402167902

`∑{d}[A002183(n+1), A000010((or(2, #)-#)!)]`
-/

namespace A243220.P7247301907402167902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A243220.P7247301907402167902

/-! ## A243220.P8142136363270222228

`∑{d}[A002183(n+1), A000045((or(2, #)-#)!)]`
-/

namespace A243220.P8142136363270222228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A243220.P8142136363270222228

/-! ## A243220.P12969398699750950131

`∑{d}[A002183(n+1), A007318((or(2, #)-#)!)]`
-/

namespace A243220.P12969398699750950131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A243220.P12969398699750950131

/-! ## A243220.P17538711683147675820

`∑{d}[A002183(n+1), A060990(A262511(n+1))^#]`
-/

namespace A243220.P17538711683147675820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A060990 (A262511 (n + 1)).toNat ^ d

end

end A243220.P17538711683147675820

/-! ## A243220.P14998807456981519390

`∑{d}[A002183(n+1), A007318(#%A001826(n+1))]`
-/

namespace A243220.P14998807456981519390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.tmod (d : ℤ) (A001826 (n + 1))).toNat

end

end A243220.P14998807456981519390

/-! ## A243220.P3466194269768285143

`∑{d}[A002183(n+1), A007318(A002183(n+1)%#)]`
-/

namespace A243220.P3466194269768285143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.tmod (A002183 (n + 1)) (d : ℤ)).toNat

end

end A243220.P3466194269768285143

/-! ## A243220.P1789642667056264782

`A000005(A002183(n+1))`
-/

namespace A243220.P1789642667056264782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002183 (n + 1)).toNat

end

end A243220.P1789642667056264782

/-! ## A243220.P3246820755081278981

`A000005(record[A053212(n+1)])`
-/

namespace A243220.P3246820755081278981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243220.P3246820755081278981

/-! ## A243220.P8688776877565294663

`A000005(record[A349608(n+1)])`
-/

namespace A243220.P8688776877565294663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243220.P8688776877565294663

/-! ## A243220.P7504914343769951716

`∑{d}[A002183(n+1), A060990(A262511(#))]`
-/

namespace A243220.P7504914343769951716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A060990 (A262511 d).toNat

end

end A243220.P7504914343769951716

/-! ## A243220.P1228589825742655160

`A000005(record[A146288(n+1)])`
-/

namespace A243220.P1228589825742655160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243220.P1228589825742655160

/-! ## A243220.P15720974619878876787

`A320111(2*A002183(n+1))`
-/

namespace A243220.P15720974619878876787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A002183 (n + 1)).toNat

end

end A243220.P15720974619878876787

/-! ## A243220.P7515081548938578112

`∑{d}[A002183(n+1), A057427(#)]`
-/

namespace A243220.P7515081548938578112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A243220.P7515081548938578112

/-! ## A243220.P7288129944044441587

`∑{d}[A002183(n+1), A001826(A001826(#))]`
-/

namespace A243220.P7288129944044441587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001826 (A001826 d).toNat

end

end A243220.P7288129944044441587

/-! ## A243220.P7470153378847878814

`A057427(2*(n+1))+A032741(A002183(n+1))`
-/

namespace A243220.P7470153378847878814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) + A032741 (A002183 (n + 1)).toNat

end

end A243220.P7470153378847878814

/-!
# A243221: Number of quarter-square matchings of the n X n grid graph.

The programs for A243221, there is no canonical definition to state claims against.
-/

/-! ## A243221.P5962698362558180832

`A242861(∑[C(n, 2)]+n)`
-/

namespace A243221.P5962698362558180832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A243221.P5962698362558180832

/-! ## A243221.P16862283097818286624

`A242861(A004006(n))`
-/

namespace A243221.P16862283097818286624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (A004006 n).toNat

end

end A243221.P16862283097818286624

/-! ## A243221.P11058353193404534333

`A242861(A283551(n)+1)`
-/

namespace A243221.P11058353193404534333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (A283551 n + 1).toNat

end

end A243221.P11058353193404534333

/-! ## A243221.P14444373680665973762

`A242861(∑[A161680(n)]+n)`
-/

namespace A243221.P14444373680665973762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A243221.P14444373680665973762

/-! ## A243221.P10892271381960948753

`A242861(∑[∑[n]]-A161680(n))`
-/

namespace A243221.P10892271381960948753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A161680 n).toNat

end

end A243221.P10892271381960948753

/-!
# A243222: Primes p such that p^3 - 2 and p^2 - 2 are both semiprimes.

The programs for A243222, there is no canonical definition to state claims against.
-/

/-! ## A243222.P15649702260531841836

`∩[A241716(n+1), A242260(n+1)]`
-/

namespace A243222.P15649702260531841836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243222.P15649702260531841836

/-! ## A243222.P2401088525101821642

`A219602(A354832(n+2))`
-/

namespace A243222.P2401088525101821642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219602 (A354832 (n + 2)).toNat

end

end A243222.P2401088525101821642

/-!
# A243223: Number of partitions of n into positive summands in arithmetic progression with common difference 3.

The programs for A243223, there is no canonical definition to state claims against.
-/

/-! ## A243223.P18164410798574431763

`A117277(n+1)-1`
-/

namespace A243223.P18164410798574431763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (n + 1) - 1

end

end A243223.P18164410798574431763

/-! ## A243223.P17444043210275125419

`A001227(n+1)-(A243224(n+1)+1)`
-/

namespace A243223.P17444043210275125419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A243224 (n + 1) + 1)

end

end A243223.P17444043210275125419

/-! ## A243223.P10063562840002923811

`A317950(gcd(n, n+1))+A117277(n+1)`
-/

namespace A243223.P10063562840002923811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A117277 (n + 1)

end

end A243223.P10063562840002923811

/-! ## A243223.P8953336776355988406

`A295729(and(n, -(n+1)))+A117277(n+1)`
-/

namespace A243223.P8953336776355988406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat + A117277 (n + 1)

end

end A243223.P8953336776355988406

/-! ## A243223.P16750358516957663271

`A000005(n+1)/A001511(n+1)-A243224(n+1)-1`
-/

namespace A243223.P16750358516957663271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ) - (A243224 (n + 1) : ℚ) - 1

end

end A243223.P16750358516957663271

/-! ## A243223.P7949673705740937332

`Δ[A060831(n)]-A243224(n+1)-1`
-/

namespace A243223.P7949673705740937332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243224 (n + 1) - 1

end

end A243223.P7949673705740937332

/-! ## A243223.P6610535145254336671

`A083800(n+1)%A117277(n+1)`
-/

namespace A243223.P6610535145254336671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A117277 (n + 1))

end

end A243223.P6610535145254336671

/-! ## A243223.P1725342013511445294

`A070198(n)%A117277(n+1)`
-/

namespace A243223.P1725342013511445294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A117277 (n + 1))

end

end A243223.P1725342013511445294

/-! ## A243223.P14631630123299142207

`A079782(n+1)%A117277(n+1)`
-/

namespace A243223.P14631630123299142207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A117277 (n + 1))

end

end A243223.P14631630123299142207

/-! ## A243223.P912093297731984001

`A083685(n+1)%A117277(n+1)`
-/

namespace A243223.P912093297731984001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A117277 (n + 1))

end

end A243223.P912093297731984001

/-! ## A243223.P15506105793589640627

`A121934(n+1)%A117277(n+1)`
-/

namespace A243223.P15506105793589640627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A117277 (n + 1))

end

end A243223.P15506105793589640627

/-! ## A243223.P14817581375964034659

`A030494(n+1)%A117277(n+1)`
-/

namespace A243223.P14817581375964034659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A117277 (n + 1))

end

end A243223.P14817581375964034659

/-! ## A243223.P1651207601165909637

`A072828(n+1)%A117277(n+1)`
-/

namespace A243223.P1651207601165909637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A117277 (n + 1))

end

end A243223.P1651207601165909637

/-! ## A243223.P14822154942499169888

`A086827(n+1)%A117277(n+1)`
-/

namespace A243223.P14822154942499169888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A117277 (n + 1))

end

end A243223.P14822154942499169888

/-!
# A243224: Number of odd divisors d of n such that d > 1 and d(1+d/3)/2 <= n <= 3d(d-1)/2.

The programs for A243224, there is no canonical definition to state claims against.
-/

/-! ## A243224.P18187418057479190727

`A001227(n+1)-A117277(n+1)`
-/

namespace A243224.P18187418057479190727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A117277 (n + 1)

end

end A243224.P18187418057479190727

/-! ## A243224.P15053039897809429866

`A001227(n+1)-(A243223(n+1)+1)`
-/

namespace A243224.P15053039897809429866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A243223 (n + 1) + 1)

end

end A243224.P15053039897809429866

/-! ## A243224.P15487006875622425283

`A000005(A000265(n+1))-A117277(n+1)`
-/

namespace A243224.P15487006875622425283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A117277 (n + 1)

end

end A243224.P15487006875622425283

/-! ## A243224.P10993595790891786136

`A000005(A336158(n+1))-A117277(n+1)`
-/

namespace A243224.P10993595790891786136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A117277 (n + 1)

end

end A243224.P10993595790891786136

/-! ## A243224.P541917572524013943

`A000005(A000265(n+1))-(A243223(n+1)+1)`
-/

namespace A243224.P541917572524013943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - (A243223 (n + 1) + 1)

end

end A243224.P541917572524013943

/-! ## A243224.P13256948649285071689

`A000005(A336158(n+1))-(A243223(n+1)+1)`
-/

namespace A243224.P13256948649285071689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - (A243223 (n + 1) + 1)

end

end A243224.P13256948649285071689

/-! ## A243224.P2003413098372075076

`A000005(n+1)/A001511(n+1)-A117277(n+1)`
-/

namespace A243224.P2003413098372075076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ) - (A117277 (n + 1) : ℚ)

end

end A243224.P2003413098372075076

/-! ## A243224.P9421749626257726634

`A001227(n+1)-A334463(n+1)/(n+1)`
-/

namespace A243224.P9421749626257726634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) - (A334463 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A243224.P9421749626257726634

/-! ## A243224.P13356654335881522326

`(A245579(n+1)-A334463(n+1))/(n+1)`
-/

namespace A243224.P13356654335881522326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245579 (n + 1) - A334463 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A243224.P13356654335881522326

/-!
# A243225: Numbers which are not the sum of positive integers in an arithmetic progression with common difference 3.

The programs for A243225, there is no canonical definition to state claims against.
-/

/-! ## A243225.P9098387671744899336

`eq[1, A117277(n+1)]+1`
-/

namespace A243225.P9098387671744899336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243225.P9098387671744899336

/-! ## A243225.P4735882504040695257

`lt[A243223(n+1), 1]+1`
-/

namespace A243225.P4735882504040695257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A243225.P4735882504040695257

/-! ## A243225.P14840129701099902112

`record[(n+1)/A330889(n+1)]`
-/

namespace A243225.P14840129701099902112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330889 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P14840129701099902112

/-! ## A243225.P10826969874006456294

`eq[2, A136730(a(A243223(n)))]` with `a(0)=4`
-/

namespace A243225.P10826969874006456294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A136730 (f2 (A243223 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243225.P10826969874006456294

/-! ## A243225.P2889778366624141589

`record[A000027(n+1)/A117277(n+1)]`
-/

namespace A243225.P2889778366624141589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A117277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P2889778366624141589

/-! ## A243225.P12744704716148997357

`record[A089247(n+1)/A117277(n+1)]`
-/

namespace A243225.P12744704716148997357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089247 (n + 1) : ℚ) / (A117277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P12744704716148997357

/-! ## A243225.P6038627359387936323

`record[(n+1)*A000007(A117277(n+1)-1)]`
-/

namespace A243225.P6038627359387936323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 (A117277 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P6038627359387936323

/-! ## A243225.P3801529767095730745

`record[(n+1)/A273421(A117277(n+1)-1)]`
-/

namespace A243225.P3801529767095730745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A273421 (A117277 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P3801529767095730745

/-! ## A243225.P7061272670797593106

`record[A004442(A004442(n+1))/A117277(n+1)]`
-/

namespace A243225.P7061272670797593106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (A004442 (n + 1)).toNat : ℚ) / (A117277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243225.P7061272670797593106

/-!
# A243227: G.f.: Sum_{n>=0} n^(2*n) * x^n / (1 + n^2*x)^n.

The programs for A243227, there is no canonical definition to state claims against.
-/

/-! ## A243227.P462518310793040225

`A130850((n+1)²+n²)`
-/

namespace A243227.P462518310793040225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 ((n + 1) ^ 2 + n ^ 2)

end

end A243227.P462518310793040225

/-! ## A243227.P4785939715262432699

`A028246(A008574(∑[n]))`
-/

namespace A243227.P4785939715262432699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243227.P4785939715262432699

/-! ## A243227.P5073698392849486204

`A028246(A106232(n+1))`
-/

namespace A243227.P5073698392849486204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A106232 (n + 1)).toNat

end

end A243227.P5073698392849486204

/-! ## A243227.P17513261942192833496

`A028246(A132209(n)+1)`
-/

namespace A243227.P17513261942192833496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A132209 n + 1).toNat

end

end A243227.P17513261942192833496

/-! ## A243227.P4103831779776712889

`abs(A075263(∑[A008574(n)]))`
-/

namespace A243227.P4103831779776712889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A243227.P4103831779776712889

/-!
# A243228: Number of isoscent sequences of length n with exactly two ascents.

The programs for A243228, there is no canonical definition to state claims against.
-/

/-! ## A243228.P3771600747303506831

`record[root(A242351(n+8), A242351(n+6))]`
-/

namespace A243228.P3771600747303506831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A242351 (n + 8) : ℝ) ^ (1 / (A242351 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243228.P3771600747303506831

/-!
# A243237: Number of isoscent sequences of length n with maximal number of ascents.

The programs for A243237, there is no canonical definition to state claims against.
-/

/-! ## A243237.P109365160596253111

`A242351(eq[A054977(n), A242351(n+1)])`
-/

namespace A243237.P109365160596253111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243237.P109365160596253111

/-! ## A243237.P16026564557157055370

`A242351(eq[A005171(2*(n+1)), A242351(n+1)])`
-/

namespace A243237.P16026564557157055370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243237.P16026564557157055370

/-! ## A243237.P17171772598844129974

`A242351(lt[A321155(2*n+5), 10])`
-/

namespace A243237.P17171772598844129974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321155 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242351 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A243237.P17171772598844129974

/-!
# A243238: Table T(n,r) of terms in the reverse and add sequences of positive integers n read by antidiagonals.

The programs for A243238, there is no canonical definition to state claims against.
-/

/-! ## A243238.P1787992796947396085

`A334200(A329050(n))`
-/

namespace A243238.P1787992796947396085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334200 (A329050 n).toNat

end

end A243238.P1787992796947396085

/-! ## A243238.P7806527683519229029

`∑{d}[A329050(n), A061395(#)]`
-/

namespace A243238.P7806527683519229029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A243238.P7806527683519229029

/-! ## A243238.P9395732104405460212

`∑{d}[A329050(n), A066328(#)]`
-/

namespace A243238.P9395732104405460212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A243238.P9395732104405460212

/-! ## A243238.P10495925609631565014

`A296612(comp[∑[n-1]]%(A338602(n+1)+1))`
-/

namespace A243238.P10495925609631565014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A338602 (n + 1) + 1)).toNat

end

end A243238.P10495925609631565014

/-! ## A243238.P16268110422990505873

`A020639(A136470(n))*A296612(n)`
-/

namespace A243238.P16268110422990505873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136470 n).toNat * A296612 n

end

end A243238.P16268110422990505873

/-!
# A243239: a(n) = 10^n mod 97.

The programs for A243239, the canonical program `A243239.P4940371180794532395` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243239 has offset 0).

The definition of A243239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243239.P4940371180794532395

`(10*a(n-1))%97` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243239

/-- `(10*a(n-1))%97` -/
def P4940371180794532395.Spec : Prop :=
  ∀ n, (P4940371180794532395.a n : ℤ) = A243239 n

theorem P4940371180794532395.correct : P4940371180794532395.Spec := by
  intro n
  simp only [A243239]

end A243239

/-!
# A243241: Number of connected simple graphs on n nodes that are not strongly regular.

The programs for A243241, there is no canonical definition to state claims against.
-/

/-! ## A243241.P3196761359851836330

`A001349(n+1)-A088741(n+1)`
-/

namespace A243241.P3196761359851836330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A088741 (n + 1)

end

end A243241.P3196761359851836330

/-! ## A243241.P15793613199381091271

`A076328(n+1)-A224764(n)`
-/

namespace A243241.P15793613199381091271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (n + 1) - A224764 n

end

end A243241.P15793613199381091271

/-! ## A243241.P10895003296661412007

`A294405(n+1)+A241839(n+1)`
-/

namespace A243241.P10895003296661412007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294405 (n + 1) + A241839 (n + 1)

end

end A243241.P10895003296661412007

/-! ## A243241.P12911249186192882176

`A241840(n+1)+A001222(A114044(n))`
-/

namespace A243241.P12911249186192882176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241840 (n + 1) + A001222 (A114044 n).toNat

end

end A243241.P12911249186192882176

/-! ## A243241.P14794986334819218722

`A241840(n+1)+A007305(A241822(n))`
-/

namespace A243241.P14794986334819218722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241840 (n + 1) + A007305 (A241822 n).toNat

end

end A243241.P14794986334819218722

/-!
# A243242: Number of unlabeled, connected graphs on n vertices with at least one induced subgraph isomorphic to a K_5, where K_5 is the complete graph on five vertices.

The programs for A243242, there is no canonical definition to state claims against.
-/

/-! ## A243242.P1820217537803977439

`A001349(n+1)-A241782(n+1)`
-/

namespace A243242.P1820217537803977439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241782 (n + 1)

end

end A243242.P1820217537803977439

/-! ## A243242.P10301438804700079433

`A243244(n+1)-A126746(n+1)`
-/

namespace A243242.P10301438804700079433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243244 (n + 1) - A126746 (n + 1)

end

end A243242.P10301438804700079433

/-! ## A243242.P11066355197698791300

`A128528(n+2)-A241782(n+1)`
-/

namespace A243242.P11066355197698791300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128528 (n + 2) - A241782 (n + 1)

end

end A243242.P11066355197698791300

/-! ## A243242.P5576939565652062117

`A201922(A000124(n))-A241782(n+1)`
-/

namespace A243242.P5576939565652062117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A241782 (n + 1)

end

end A243242.P5576939565652062117

/-! ## A243242.P17281017125753470324

`A224065(A119663(n+1))-A241782(n+1)`
-/

namespace A243242.P17281017125753470324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - A241782 (n + 1)

end

end A243242.P17281017125753470324

/-!
# A243243: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to a C_4, where C_4 is the cycle graph on four vertices.

The programs for A243243, there is no canonical definition to state claims against.
-/

/-! ## A243243.P14296880850038012082

`A001349(n+1)-A077269(n+1)`
-/

namespace A243243.P14296880850038012082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A077269 (n + 1)

end

end A243243.P14296880850038012082

/-! ## A243243.P13197300912045480166

`A201922(A000124(n))-A077269(n+1)`
-/

namespace A243243.P13197300912045480166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A077269 (n + 1)

end

end A243243.P13197300912045480166

/-! ## A243243.P15535534409180630431

`A201922(A000124(n))-A300756(∑[n+1]+1)`
-/

namespace A243243.P15535534409180630431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243243.P15535534409180630431

/-! ## A243243.P5442960339616727842

`A001349(A291769(n))-A300756(∑[n+1]+1)`
-/

namespace A243243.P5442960339616727842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A291769 n).toNat - A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243243.P5442960339616727842

/-! ## A243243.P16345437409071141993

`A001349(A348553(n))-A300756(∑[n+1]+1)`
-/

namespace A243243.P16345437409071141993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A348553 n).toNat - A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243243.P16345437409071141993

/-!
# A243244: Number of unlabeled, connected graphs on n vertices with at least one induced subgraph isomorphic to a K_4, where K_4 is the complete graph on four vertices.

The programs for A243244, there is no canonical definition to state claims against.
-/

/-! ## A243244.P10399188224090689250

`A001349(n+1)-A079574(n+1)`
-/

namespace A243244.P10399188224090689250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A079574 (n + 1)

end

end A243244.P10399188224090689250

/-! ## A243244.P6701696084194631722

`A201922(A000124(n))-A079574(n+1)`
-/

namespace A243244.P6701696084194631722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A079574 (n + 1)

end

end A243244.P6701696084194631722

/-! ## A243244.P6678191159825037266

`A003049(n+1)+A158007(n+1)-A079574(n+1)`
-/

namespace A243244.P6678191159825037266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A079574 (n + 1))

end

end A243244.P6678191159825037266

/-! ## A243244.P2562789650080954919

`A048192(n+1)+A241843(n+1)-A079574(n+1)`
-/

namespace A243244.P2562789650080954919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A079574 (n + 1))

end

end A243244.P2562789650080954919

/-! ## A243244.P2322907000635675035

`A242791(n+1)+A243247(n+1)-A079574(n+1)`
-/

namespace A243244.P2322907000635675035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242791 (n + 1) + (A243247 (n + 1) - A079574 (n + 1))

end

end A243244.P2322907000635675035

/-!
# A243246: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to a C_5, where C_5 is the cycle graph on five vertices.

The programs for A243246, there is no canonical definition to state claims against.
-/

/-! ## A243246.P6588104652520392762

`A001349(n+1)-A241784(n+1)`
-/

namespace A243246.P6588104652520392762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241784 (n + 1)

end

end A243246.P6588104652520392762

/-! ## A243246.P12109753488322504693

`A201922(A000124(n))-A241784(n+1)`
-/

namespace A243246.P12109753488322504693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A241784 (n + 1)

end

end A243246.P12109753488322504693

/-! ## A243246.P13627566801341194976

`A077269(n+1)+A243243(n+1)-A241784(n+1)`
-/

namespace A243246.P13627566801341194976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) + (A243243 (n + 1) - A241784 (n + 1))

end

end A243246.P13627566801341194976

/-! ## A243246.P7789842424289774877

`A128528(n+2)-A000027(A241784(n+1))`
-/

namespace A243246.P7789842424289774877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128528 (n + 2) - A000027 (A241784 (n + 1)).toNat

end

end A243246.P7789842424289774877

/-! ## A243246.P4701518672069524859

`A243251(n+1)+A243252(n+1)-A241784(n+1)`
-/

namespace A243246.P4701518672069524859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243251 (n + 1) + (A243252 (n + 1) - A241784 (n + 1))

end

end A243246.P4701518672069524859

/-!
# A243247: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to an open-bowtie graph.

The programs for A243247, there is no canonical definition to state claims against.
-/

/-! ## A243247.P1007717927907232592

`A001349(n+1)-A242791(n+1)`
-/

namespace A243247.P1007717927907232592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A242791 (n + 1)

end

end A243247.P1007717927907232592

/-! ## A243247.P12623304790232321337

`A201922(A000124(n))-A242791(n+1)`
-/

namespace A243247.P12623304790232321337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A242791 (n + 1)

end

end A243247.P12623304790232321337

/-! ## A243247.P5061608223052317485

`A003049(n+1)+A158007(n+1)-A242791(n+1)`
-/

namespace A243247.P5061608223052317485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A242791 (n + 1))

end

end A243247.P5061608223052317485

/-! ## A243247.P18077926297349244663

`A048192(n+1)+A241843(n+1)-A242791(n+1)`
-/

namespace A243247.P18077926297349244663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A242791 (n + 1))

end

end A243247.P18077926297349244663

/-! ## A243247.P16695762987168604256

`A079574(n+1)+A243244(n+1)-A242791(n+1)`
-/

namespace A243247.P16695762987168604256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) + (A243244 (n + 1) - A242791 (n + 1))

end

end A243247.P16695762987168604256

/-!
# A243248: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to a bull-graph.

The programs for A243248, there is no canonical definition to state claims against.
-/

/-! ## A243248.P5339932173140309998

`A001349(n+1)-A244427(n+1)`
-/

namespace A243248.P5339932173140309998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A244427 (n + 1)

end

end A243248.P5339932173140309998

/-! ## A243248.P16348056976574874549

`A001349(n+1)-(A243559(n+1)+char[3])`
-/

namespace A243248.P16348056976574874549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (A243559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A243248.P16348056976574874549

/-! ## A243248.P14945461597331773154

`A001349(n+1)-(char[3]+A243568(n+1)+char[3])`
-/

namespace A243248.P14945461597331773154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A243568 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A243248.P14945461597331773154

/-! ## A243248.P9215515220351254908

`A201922(A000124(n))-A244427(n+1)`
-/

namespace A243248.P9215515220351254908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A244427 (n + 1)

end

end A243248.P9215515220351254908

/-! ## A243248.P16057795693989908325

`A201922(A000124(n))-(A243559(n+1)+char[3])`
-/

namespace A243248.P16057795693989908325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A243559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A243248.P16057795693989908325

/-!
# A243249: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to a bowtie graph.

The programs for A243249, there is no canonical definition to state claims against.
-/

/-! ## A243249.P5769701766613090358

`A001349(n+1)-A242792(n+1)`
-/

namespace A243249.P5769701766613090358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A242792 (n + 1)

end

end A243249.P5769701766613090358

/-! ## A243249.P5213434840314677022

`A201922(A000124(n))-A242792(n+1)`
-/

namespace A243249.P5213434840314677022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A242792 (n + 1)

end

end A243249.P5213434840314677022

/-! ## A243249.P380461245046044075

`A003049(n+1)+A158007(n+1)-A242792(n+1)`
-/

namespace A243249.P380461245046044075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A242792 (n + 1))

end

end A243249.P380461245046044075

/-! ## A243249.P7327193801651659014

`A001349(n+1)-(A243549(n+1)+A243548(n+1))`
-/

namespace A243249.P7327193801651659014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (A243549 (n + 1) + A243548 (n + 1))

end

end A243249.P7327193801651659014

/-! ## A243249.P5545047751392114732

`A048192(n+1)+A241843(n+1)-A242792(n+1)`
-/

namespace A243249.P5545047751392114732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A242792 (n + 1))

end

end A243249.P5545047751392114732

/-!
# A243250: Number of unlabeled, connected graphs on n vertices with at least one subgraph isomorphic to a diamond graph.

The programs for A243250, there is no canonical definition to state claims against.
-/

/-! ## A243250.P4841165496717190277

`A001349(n+1)-A242790(n+1)`
-/

namespace A243250.P4841165496717190277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A242790 (n + 1)

end

end A243250.P4841165496717190277

/-! ## A243250.P16397793856313294411

`A201922(A000124(n))-A242790(n+1)`
-/

namespace A243250.P16397793856313294411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A242790 (n + 1)

end

end A243250.P16397793856313294411

/-! ## A243250.P6947214652013862983

`A003049(n+1)+A158007(n+1)-A242790(n+1)`
-/

namespace A243250.P6947214652013862983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A242790 (n + 1))

end

end A243250.P6947214652013862983

/-! ## A243250.P1926613139095083630

`A048192(n+1)+A241843(n+1)-A242790(n+1)`
-/

namespace A243250.P1926613139095083630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A242790 (n + 1))

end

end A243250.P1926613139095083630

/-! ## A243250.P4529311300324863487

`A077269(n+1)+A243243(n+1)-A242790(n+1)`
-/

namespace A243250.P4529311300324863487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) + (A243243 (n + 1) - A242790 (n + 1))

end

end A243250.P4529311300324863487

/-!
# A243251: Number of simple connected graphs with n nodes whose fractional chromatic number is not equal to its (integer) chromatic number.

The programs for A243251, there is no canonical definition to state claims against.
-/

/-! ## A243251.P4423994560419951653

`A001349(n+1)-A243252(n+1)`
-/

namespace A243251.P4423994560419951653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243252 (n + 1)

end

end A243251.P4423994560419951653

/-! ## A243251.P9970211854689875655

`A128528(n+2)-A243252(n+1)`
-/

namespace A243251.P9970211854689875655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128528 (n + 2) - A243252 (n + 1)

end

end A243251.P9970211854689875655

/-! ## A243251.P12411732220074856700

`A201922(A000124(n))-A243252(n+1)`
-/

namespace A243251.P12411732220074856700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243252 (n + 1)

end

end A243251.P12411732220074856700

/-! ## A243251.P10441873579893467502

`A001349(A077168(n))%A243252(n+1)`
-/

namespace A243251.P10441873579893467502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 (A077168 n).toNat) (A243252 (n + 1))

end

end A243251.P10441873579893467502

/-! ## A243251.P16258950412776923582

`A001349(A348553(n))%A243252(n+1)`
-/

namespace A243251.P16258950412776923582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 (A348553 n).toNat) (A243252 (n + 1))

end

end A243251.P16258950412776923582

/-!
# A243252: Number of simple connected graphs with n nodes whose fractional chromatic number is equal to its (integer) chromatic number.

The programs for A243252, there is no canonical definition to state claims against.
-/

/-! ## A243252.P14785762932545765686

`A001349(n+1)-A243251(n+1)`
-/

namespace A243252.P14785762932545765686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243251 (n + 1)

end

end A243252.P14785762932545765686

/-! ## A243252.P17393437225340061028

`A287007(n+1)-A287008(n+1)`
-/

namespace A243252.P17393437225340061028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287007 (n + 1) - A287008 (n + 1)

end

end A243252.P17393437225340061028

/-! ## A243252.P11669243545847591648

`A128528(n+2)-A243251(n+1)`
-/

namespace A243252.P11669243545847591648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128528 (n + 2) - A243251 (n + 1)

end

end A243252.P11669243545847591648

/-! ## A243252.P10142351554507885172

`A201922(A000124(n))-A243251(n+1)`
-/

namespace A243252.P10142351554507885172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243251 (n + 1)

end

end A243252.P10142351554507885172

/-! ## A243252.P11918011908979932849

`A003049(n+1)+A158007(n+1)-A243251(n+1)`
-/

namespace A243252.P11918011908979932849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243251 (n + 1))

end

end A243252.P11918011908979932849

/-!
# A243254: Number of compositions of n into parts {3,4,5} when all parts 3,4 and 5 are present.

The programs for A243254, the canonical program `A243254.P9174518129503547561` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243254 has offset 12).

The definition of A243254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243254.P9174518129503547561

`A017818(n+12)-A017817(n+12)-A052920(n+12)-A017827(n+12)+A079978(n+12)+A121262(n+12)+A079998(n+12)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243254

/-- `A017818(n+12)-A017817(n+12)-A052920(n+12)-A017827(n+12)+A079978(n+12)+A121262(n+12)+A079998(n+12)` -/
def P9174518129503547561.Spec : Prop :=
  ∀ n, P9174518129503547561.a n = A243254 (n + 12)

theorem P9174518129503547561.correct : P9174518129503547561.Spec := by
  intro n
  simp only [A243254, Nat.add_sub_cancel]

end A243254

/-!
# A243255: Expansion of 1/2 - (1/2)*(sqrt((2*sqrt(-3*x^2 - 2*x + 1) + 3*x - 2)/x)).

The programs for A243255, there is no canonical definition to state claims against.
-/

/-! ## A243255.P14233186489104079623

`A002264(A304629(n)+A050291(n))`
-/

namespace A243255.P14233186489104079623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A304629 n + A050291 n).toNat

end

end A243255.P14233186489104079623

/-! ## A243255.P10752296508866328225

`floor(sqrt(A025816((2^n+1)²-1)))`
-/

namespace A243255.P10752296508866328225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025816 ((2 ^ n + 1) ^ 2 - 1))

end

end A243255.P10752296508866328225

/-! ## A243255.P7458783265466593845

`A105149(A396093(n))`
-/

namespace A243255.P7458783265466593845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (A396093 n).toNat

end

end A243255.P7458783265466593845

/-!
# A243256: Smallest distance of the n-th Fibonacci number to the set of all square integers.

The programs for A243256, there is no canonical definition to state claims against.
-/

/-! ## A243256.P2874432152411583249

`A053188(round(ϕ^n/sqrt(5)))`
-/

namespace A243256.P2874432152411583249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A243256.P2874432152411583249

/-! ## A243256.P14810913282989291004

`A053188(A000045(n))%45`
-/

namespace A243256.P14810913282989291004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A000045 n).toNat) 45

end

end A243256.P14810913282989291004

/-! ## A243256.P6185348861442113926

`A053188(abs(A236191(n)))%60`
-/

namespace A243256.P6185348861442113926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 |A236191 n|.toNat) 60

end

end A243256.P6185348861442113926

/-! ## A243256.P3640718369750867798

`A053188(A212804(n+1))%60`
-/

namespace A243256.P3640718369750867798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A212804 (n + 1)).toNat) 60

end

end A243256.P3640718369750867798

/-!
# A243259: Numbers n such that n appears in the sequence x(i) = x(i-1) +/ - digitsum(x(i-1)), where even digitsums are added, odd digitsums are subtracted and x(0) = n.

The programs for A243259, there is no canonical definition to state claims against.
-/

/-! ## A243259.P11662697083206261012

`9*(A337139(record[A222216(n)%A134496(n+1)])+1)`
-/

namespace A243259.P11662697083206261012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222216 n) (A134496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A337139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A243259.P11662697083206261012

/-! ## A243259.P16479135767286292985

`9*A236403(A007932(n+1))`
-/

namespace A243259.P16479135767286292985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A236403 (A007932 (n + 1)).toNat

end

end A243259.P16479135767286292985

/-!
# A243260: Numbers n such that n appears in the sequence x(i) = x(i-1) +/ - digitsum(x(i-1)), where even digit sums are subtracted, odd digit sums are added and x(0) = n.

The programs for A243260, there is no canonical definition to state claims against.
-/

/-! ## A243260.P12165021785457656822

`9*(A326178(record[A222216(n)%A134496(n+1)])+1)`
-/

namespace A243260.P12165021785457656822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222216 n) (A134496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A326178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A243260.P12165021785457656822

/-! ## A243260.P13388529448937702322

`A353316(lt[∑{digits}[n, 10^#], A006918(n)])`
-/

namespace A243260.P13388529448937702322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A243260.P13388529448937702322

/-!
# A243261: Decimal expansion of a Shapiro-Drinfeld constant, known as Gauchman's constant, related to the difference of cyclic sums (negated).

The programs for A243261, there is no canonical definition to state claims against.
-/

/-! ## A243261.P16934824232381171005

`9-A086278(n)`
-/

namespace A243261.P16934824232381171005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A086278 n

end

end A243261.P16934824232381171005

/-!
# A243268: Decimal expansion of 1/2-G/Pi, the lowest limiting trough of a square wave Fourier series, where G is the Gibbs-Wilbraham constant. [negated].

The programs for A243268, there is no canonical definition to state claims against.
-/

/-! ## A243268.P4352077891207393808

`A243267(n+1)`
-/

namespace A243268.P4352077891207393808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243267 (n + 1 + 1)

end

end A243268.P4352077891207393808

/-!
# A243272: Number of unlabeled simple graphs with n nodes that are Hamiltonian and Eulerian.

The programs for A243272, there is no canonical definition to state claims against.
-/

/-! ## A243272.P7070638791558905612

`A324689(A360708(n))`
-/

namespace A243272.P7070638791558905612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (A360708 n).toNat

end

end A243272.P7070638791558905612

/-! ## A243272.P13751885774866456483

`A054404(A020042(n)+round(sqrt(n²+1)))`
-/

namespace A243272.P13751885774866456483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A020042 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A243272.P13751885774866456483

/-! ## A243272.P1791125486240030788

`A364272(A007661(n))+A122134(n)`
-/

namespace A243272.P1791125486240030788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (A007661 n).toNat + A122134 n

end

end A243272.P1791125486240030788

/-! ## A243272.P10581014585039178483

`A326341(n)+A326327(A000009(n))`
-/

namespace A243272.P10581014585039178483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326341 n + A326327 (A000009 n).toNat

end

end A243272.P10581014585039178483

/-!
# A243273: Number of unlabeled simple graphs with n nodes that are Hamiltonian and integral.

The programs for A243273, there is no canonical definition to state claims against.
-/

/-! ## A243273.P10533297956456587575

`A003216(n+1)-A243274(n+1)`
-/

namespace A243273.P10533297956456587575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003216 (n + 1) - A243274 (n + 1)

end

end A243273.P10533297956456587575

/-! ## A243273.P5519542084942985653

`Δ[A006897(n)]-(A246446(n+1)+A243274(n+1))`
-/

namespace A243273.P5519542084942985653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A246446 (n + 1) + A243274 (n + 1))

end

end A243273.P5519542084942985653

/-! ## A243273.P17529501492483419509

`record[A327805(n)]-(A246446(n+1)+A243274(n+1))`
-/

namespace A243273.P17529501492483419509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A246446 (n + 1) + A243274 (n + 1))

end

end A243273.P17529501492483419509

/-! ## A243273.P11041833377739724220

`A000088(n+1)-(A246446(n+1)+A243274(n+1))`
-/

namespace A243273.P11041833377739724220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A246446 (n + 1) + A243274 (n + 1))

end

end A243273.P11041833377739724220

/-! ## A243273.P13000951338544842997

`A001349(n+1)-A126149(n+1)-A243274(n+1)`
-/

namespace A243273.P13000951338544842997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A126149 (n + 1) - A243274 (n + 1)

end

end A243273.P13000951338544842997

/-!
# A243274: Number of graphs with n nodes that are Hamiltonian and non-integral.

The programs for A243274, there is no canonical definition to state claims against.
-/

/-! ## A243274.P12594693979904651944

`A003216(n+1)-A243273(n+1)`
-/

namespace A243274.P12594693979904651944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003216 (n + 1) - A243273 (n + 1)

end

end A243274.P12594693979904651944

/-! ## A243274.P11534266645769042885

`A136579(n)+A057627(A232543(n+1))`
-/

namespace A243274.P11534266645769042885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136579 n + A057627 (A232543 (n + 1)).toNat

end

end A243274.P11534266645769042885

/-! ## A243274.P17988838097831213423

`Δ[A006897(n)]-(A246446(n+1)+A243273(n+1))`
-/

namespace A243274.P17988838097831213423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A246446 (n + 1) + A243273 (n + 1))

end

end A243274.P17988838097831213423

/-! ## A243274.P7975799272371655928

`record[A327805(n)]-(A246446(n+1)+A243273(n+1))`
-/

namespace A243274.P7975799272371655928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A246446 (n + 1) + A243273 (n + 1))

end

end A243274.P7975799272371655928

/-! ## A243274.P9281577464281020253

`A000088(n+1)-(A246446(n+1)+A243273(n+1))`
-/

namespace A243274.P9281577464281020253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A246446 (n + 1) + A243273 (n + 1))

end

end A243274.P9281577464281020253

/-!
# A243275: Number of graphs with n nodes that are Hamiltonian and triangle-free.

The programs for A243275, there is no canonical definition to state claims against.
-/

/-! ## A243275.P12526934586392666165

`A243553(round(ratio[A020116(n)]))`
-/

namespace A243275.P12526934586392666165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243553 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A243275.P12526934586392666165

/-! ## A243275.P11016586287672610346

`A243553(n+1)%(2-A241842(n+1))`
-/

namespace A243275.P11016586287672610346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243553 (n + 1)) (2 - A241842 (n + 1))

end

end A243275.P11016586287672610346

/-! ## A243275.P10547241212270570100

`A243553(n+1)%A134401(A092306(n))`
-/

namespace A243275.P10547241212270570100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243553 (n + 1)) (A134401 (A092306 n).toNat)

end

end A243275.P10547241212270570100

/-! ## A243275.P11645644160234870603

`and(A008683(A309231(n+1)), A243553(n+1))`
-/

namespace A243275.P11645644160234870603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A309231 (n + 1)).toNat) (A243553 (n + 1))

end

end A243275.P11645644160234870603

/-! ## A243275.P7245068825666247152

`A114640(A131296(n)+A007053(n))`
-/

namespace A243275.P7245068825666247152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (A131296 n + A007053 n).toNat

end

end A243275.P7245068825666247152

/-!
# A243276: Number of graphs with n nodes that are Hamiltonian and have no induced subgraph isomorphic to K_4.

The programs for A243276, there is no canonical definition to state claims against.
-/

/-! ## A243276.P9013730372812134731

`A008618(n*A345194(n))`
-/

namespace A243276.P9013730372812134731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 ((n : ℤ) * A345194 n).toNat

end

end A243276.P9013730372812134731

/-! ## A243276.P14610174296583400125

`A028983(A050407(2*a(n-2)-a(n-4)+3))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A243276.P14610174296583400125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 5] fun n a =>
  A028983 (A050407 (2 * a (n - 2) - a (n - 4) + 3).toNat).toNat

end

end A243276.P14610174296583400125

/-! ## A243276.P5078427034457241208

`A008676(n)+A008676(A088714(n))`
-/

namespace A243276.P5078427034457241208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n + A008676 (A088714 n).toNat

end

end A243276.P5078427034457241208

/-!
# A243279: Numbers n such that (46^n - 1)/45 is prime.

The programs for A243279, there is no canonical definition to state claims against.
-/

/-! ## A243279.P9128836596649900343

`A291284(A121349(n))`
-/

namespace A243279.P9128836596649900343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A121349 n).toNat

end

end A243279.P9128836596649900343

/-! ## A243279.P16213140833581396424

`A291284(A005116(n+1))`
-/

namespace A243279.P16213140833581396424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A005116 (n + 1)).toNat

end

end A243279.P16213140833581396424

/-!
# A243280: Expansion of log'(1/2-sqrt((5*x+2*sqrt(1-4*x)-2)/x)/2).

The programs for A243280, there is no canonical definition to state claims against.
-/

/-! ## A243280.P15951243867669942247

`(A243585(n)+A000984(n))/2`
-/

namespace A243280.P15951243867669942247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243585 n + A000984 n : ℚ) / 2

end

end A243280.P15951243867669942247

/-! ## A243280.P17195001654154702015

`A028310(2*C(2*n+n+3, n)/(n+2))-A102893(n+1)`
-/

namespace A243280.P17195001654154702015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (2 * ((Nat.choose (2 * n + (n + 3)) n : ℚ) / (n + 2 : ℚ)))).toNat - A102893 (n + 1)

end

end A243280.P17195001654154702015

/-!
# A243281: Number of inequivalent (mod D_8) ways to place n nonattacking knights on an n X n board.

The programs for A243281, there is no canonical definition to state claims against.
-/

/-! ## A243281.P1293913760502594206

`A243716(∑[A030978(n)+1])`
-/

namespace A243281.P1293913760502594206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243281.P1293913760502594206

/-!
# A243282: Partial sums of the characteristic function for A070003.

The programs for A243282, the canonical program `A243282.P1665697402630941841` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243282 has offset 1).

The definition of A243282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243282.P1665697402630941841

`A243283(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243282

/-- `A243283(n+1)-1` -/
def P1665697402630941841.Spec : Prop :=
  ∀ n, P1665697402630941841.a n = A243282 (n + 1)

theorem P1665697402630941841.correct : P1665697402630941841.Spec := by
  intro n
  simp only [A243282, Nat.add_sub_cancel]

end A243282

/-! ## A243282.P1853066807270499493

`∑[A319988(n+1)]`
-/

namespace A243282.P1853066807270499493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P1853066807270499493

namespace A243282

/-- `∑[A319988(n+1)]` -/
def P1853066807270499493.Spec : Prop :=
  ∀ n, P1853066807270499493.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P1538138823487774646

`n-A243285(n+1)`
-/

namespace A243282.P1538138823487774646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243285 (n + 1)

end

end A243282.P1538138823487774646

namespace A243282

/-- `n-A243285(n+1)` -/
def P1538138823487774646.Spec : Prop :=
  ∀ n, P1538138823487774646.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P3615727532201978711

`∑[char[A070003(n+1)-1]]`
-/

namespace A243282.P3615727532201978711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P3615727532201978711

namespace A243282

/-- `∑[char[A070003(n+1)-1]]` -/
def P3615727532201978711.Spec : Prop :=
  ∀ n, (P3615727532201978711.a n : ℤ) = A243282 (n + 1)

end A243282

/-! ## A243282.P12240654227808302819

`∑[and(1, A122111(n+1))]-1`
-/

namespace A243282.P12240654227808302819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122111 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A243282.P12240654227808302819

namespace A243282

/-- `∑[and(1, A122111(n+1))]-1` -/
def P12240654227808302819.Spec : Prop :=
  ∀ n, P12240654227808302819.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P14805907456568653054

`∑[and(1, A243287(n+1))]-1`
-/

namespace A243282.P14805907456568653054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243287 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A243282.P14805907456568653054

namespace A243282

/-- `∑[and(1, A243287(n+1))]-1` -/
def P14805907456568653054.Spec : Prop :=
  ∀ n, P14805907456568653054.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P7080733992662894633

`∑[A056170(A053585(n+1))]`
-/

namespace A243282.P7080733992662894633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P7080733992662894633

namespace A243282

/-- `∑[A056170(A053585(n+1))]` -/
def P7080733992662894633.Spec : Prop :=
  ∀ n, P7080733992662894633.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P8655035414340812209

`∑[A302048(A179312(n+1))]`
-/

namespace A243282.P8655035414340812209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A179312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P8655035414340812209

namespace A243282

/-- `∑[A302048(A179312(n+1))]` -/
def P8655035414340812209.Spec : Prop :=
  ∀ n, P8655035414340812209.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P571995168283109688

`∑[A000007(A241917(n+1))]-1`
-/

namespace A243282.P571995168283109688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A241917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A243282.P571995168283109688

namespace A243282

/-- `∑[A000007(A241917(n+1))]-1` -/
def P571995168283109688.Spec : Prop :=
  ∀ n, P571995168283109688.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P12065676559315974266

`∑[and(A057427(n), A122111(n+1))]`
-/

namespace A243282.P12065676559315974266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A122111 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P12065676559315974266

namespace A243282

/-- `∑[and(A057427(n), A122111(n+1))]` -/
def P12065676559315974266.Spec : Prop :=
  ∀ n, P12065676559315974266.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P6581854218116952863

`∑[and(A057427(n), A243287(n+1))]`
-/

namespace A243282.P6581854218116952863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A243287 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P6581854218116952863

namespace A243282

/-- `∑[and(A057427(n), A243287(n+1))]` -/
def P6581854218116952863.Spec : Prop :=
  ∀ n, P6581854218116952863.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P10721213912338493329

`∑[A243287(n+1)%gcd(2, A025487(n+1))]`
-/

namespace A243282.P10721213912338493329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243287 (n + 1)) (Int.gcd 2 (A025487 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P10721213912338493329

namespace A243282

/-- `∑[A243287(n+1)%gcd(2, A025487(n+1))]` -/
def P10721213912338493329.Spec : Prop :=
  ∀ n, P10721213912338493329.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P16285045158124086441

`∑[A051903(A034386(A071178(n+1)))]`
-/

namespace A243282.P16285045158124086441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034386 (A071178 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P16285045158124086441

namespace A243282

/-- `∑[A051903(A034386(A071178(n+1)))]` -/
def P16285045158124086441.Spec : Prop :=
  ∀ n, P16285045158124086441.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P3899063385157086659

`∑[A000007(A241917(n+1)+A000007(n))]`
-/

namespace A243282.P3899063385157086659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A241917 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P3899063385157086659

namespace A243282

/-- `∑[A000007(A241917(n+1)+A000007(n))]` -/
def P3899063385157086659.Spec : Prop :=
  ∀ n, P3899063385157086659.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P11051021220733606773

`∑[A001222(gcd(A000010(n+1), A006530(n+1)))]`
-/

namespace A243282.P11051021220733606773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000010 (n + 1)) (A006530 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P11051021220733606773

namespace A243282

/-- `∑[A001222(gcd(A000010(n+1), A006530(n+1)))]` -/
def P11051021220733606773.Spec : Prop :=
  ∀ n, P11051021220733606773.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P6093336880496340971

`∑[A073089(A137502(n+1))]`
-/

namespace A243282.P6093336880496340971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A137502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P6093336880496340971

namespace A243282

/-- `∑[A073089(A137502(n+1))]` -/
def P6093336880496340971.Spec : Prop :=
  ∀ n, P6093336880496340971.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P4943609719836105970

`∑[A319710(A069799(n+1))]`
-/

namespace A243282.P4943609719836105970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A069799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P4943609719836105970

namespace A243282

/-- `∑[A319710(A069799(n+1))]` -/
def P4943609719836105970.Spec : Prop :=
  ∀ n, P4943609719836105970.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P12238022366011435841

`∑[A319710(A105119(n+1))]`
-/

namespace A243282.P12238022366011435841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A105119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243282.P12238022366011435841

namespace A243282

/-- `∑[A319710(A105119(n+1))]` -/
def P12238022366011435841.Spec : Prop :=
  ∀ n, P12238022366011435841.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P3621989219079653655

`A083800(n+1)%A243283(n+1)`
-/

namespace A243282.P3621989219079653655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A243283 (n + 1))

end

end A243282.P3621989219079653655

namespace A243282

/-- `A083800(n+1)%A243283(n+1)` -/
def P3621989219079653655.Spec : Prop :=
  ∀ n, P3621989219079653655.a n = A243282 (n + 1)

end A243282

/-! ## A243282.P17875626578180107820

`A070198(n)%A243283(n+1)`
-/

namespace A243282.P17875626578180107820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A243283 (n + 1))

end

end A243282.P17875626578180107820

namespace A243282

/-- `A070198(n)%A243283(n+1)` -/
def P17875626578180107820.Spec : Prop :=
  ∀ n, P17875626578180107820.a n = A243282 (n + 1)

end A243282

/-!
# A243283: One more than the partial sums of the characteristic function of A070003.

The programs for A243283, the canonical program `A243283.P17872193022962511654` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243283 has offset 1).

The definition of A243283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243283.P17872193022962511654

`∑[A319988(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243283

/-- `∑[A319988(n+1)]+1` -/
def P17872193022962511654.Spec : Prop :=
  ∀ n, P17872193022962511654.a n = A243283 (n + 1)

theorem P17872193022962511654.correct : P17872193022962511654.Spec := by
  intro n
  simp only [A243283, Nat.add_sub_cancel]

end A243283

/-! ## A243283.P16050112277124181756

`∑[A243287(n+1)%2]`
-/

namespace A243283.P16050112277124181756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243287 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P16050112277124181756

namespace A243283

/-- `∑[A243287(n+1)%2]` -/
def P16050112277124181756.Spec : Prop :=
  ∀ n, P16050112277124181756.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P12554408727313825250

`∑[A329607(n+1)%2]`
-/

namespace A243283.P12554408727313825250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329607 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P12554408727313825250

namespace A243283

/-- `∑[A329607(n+1)%2]` -/
def P12554408727313825250.Spec : Prop :=
  ∀ n, P12554408727313825250.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P3796466375185409407

`∑[A336124(n+1)%2]`
-/

namespace A243283.P3796466375185409407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336124 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P3796466375185409407

namespace A243283

/-- `∑[A336124(n+1)%2]` -/
def P3796466375185409407.Spec : Prop :=
  ∀ n, P3796466375185409407.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P14205848834224908880

`1-A243285(n+1)+n`
-/

namespace A243283.P14205848834224908880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243285 (n + 1) + (n : ℤ)

end

end A243283.P14205848834224908880

namespace A243283

/-- `1-A243285(n+1)+n` -/
def P14205848834224908880.Spec : Prop :=
  ∀ n, P14205848834224908880.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P776561605737940307

`∑[char[(n+1)*A006530(n+1)-1]]`
-/

namespace A243283.P776561605737940307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P776561605737940307

namespace A243283

/-- `∑[char[(n+1)*A006530(n+1)-1]]` -/
def P776561605737940307.Spec : Prop :=
  ∀ n, (P776561605737940307.a n : ℤ) = A243283 (n + 1)

end A243283

/-! ## A243283.P13532274714052084410

`∑[A005171(A053585(n+1))]`
-/

namespace A243283.P13532274714052084410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P13532274714052084410

namespace A243283

/-- `∑[A005171(A053585(n+1))]` -/
def P13532274714052084410.Spec : Prop :=
  ∀ n, P13532274714052084410.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P10010334595191337761

`∑[A000007(A241917(n+1))]`
-/

namespace A243283.P10010334595191337761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A241917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P10010334595191337761

namespace A243283

/-- `∑[A000007(A241917(n+1))]` -/
def P10010334595191337761.Spec : Prop :=
  ∀ n, P10010334595191337761.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P264937066908513042

`∑[A302048(A179312(n+1))]+1`
-/

namespace A243283.P264937066908513042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A179312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P264937066908513042

namespace A243283

/-- `∑[A302048(A179312(n+1))]+1` -/
def P264937066908513042.Spec : Prop :=
  ∀ n, P264937066908513042.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P403917312671666767

`∑[A008683(2*A329607(n+1))²]`
-/

namespace A243283.P403917312671666767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A329607 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P403917312671666767

namespace A243283

/-- `∑[A008683(2*A329607(n+1))²]` -/
def P403917312671666767.Spec : Prop :=
  ∀ n, P403917312671666767.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P8961636316038138728

`∑[A001222(gcd(A000010(n+1), A006530(n+1)))]+1`
-/

namespace A243283.P8961636316038138728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000010 (n + 1)) (A006530 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P8961636316038138728

namespace A243283

/-- `∑[A001222(gcd(A000010(n+1), A006530(n+1)))]+1` -/
def P8961636316038138728.Spec : Prop :=
  ∀ n, P8961636316038138728.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P16129190134686754560

`∑[and(A057427(3*n+4), A243287(n+1))]`
-/

namespace A243283.P16129190134686754560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (3 * n + 4)) (A243287 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P16129190134686754560

namespace A243283

/-- `∑[and(A057427(3*n+4), A243287(n+1))]` -/
def P16129190134686754560.Spec : Prop :=
  ∀ n, P16129190134686754560.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P16748999606187222699

`∑[A122111(n+1)%2]`
-/

namespace A243283.P16748999606187222699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P16748999606187222699

namespace A243283

/-- `∑[A122111(n+1)%2]` -/
def P16748999606187222699.Spec : Prop :=
  ∀ n, P16748999606187222699.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P17283587916555242072

`∑[and(A057427(n+1), A122111(n+1))]`
-/

namespace A243283.P17283587916555242072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (n + 1)) (A122111 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243283.P17283587916555242072

namespace A243283

/-- `∑[and(A057427(n+1), A122111(n+1))]` -/
def P17283587916555242072.Spec : Prop :=
  ∀ n, P17283587916555242072.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P3948810115794322440

`A243282(n+1)+1`
-/

namespace A243283.P3948810115794322440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243282 (n + 1) + 1

end

end A243283.P3948810115794322440

namespace A243283

/-- `A243282(n+1)+1` -/
def P3948810115794322440.Spec : Prop :=
  ∀ n, P3948810115794322440.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P4056615995975842261

`∑[A073089(A137502(n+1))]+1`
-/

namespace A243283.P4056615995975842261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A137502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P4056615995975842261

namespace A243283

/-- `∑[A073089(A137502(n+1))]+1` -/
def P4056615995975842261.Spec : Prop :=
  ∀ n, P4056615995975842261.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P2106860609379303316

`∑[A319710(A069799(n+1))]+1`
-/

namespace A243283.P2106860609379303316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A069799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P2106860609379303316

namespace A243283

/-- `∑[A319710(A069799(n+1))]+1` -/
def P2106860609379303316.Spec : Prop :=
  ∀ n, P2106860609379303316.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P2878147569115778256

`∑[A319710(A105119(n+1))]+1`
-/

namespace A243283.P2878147569115778256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A105119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P2878147569115778256

namespace A243283

/-- `∑[A319710(A105119(n+1))]+1` -/
def P2878147569115778256.Spec : Prop :=
  ∀ n, P2878147569115778256.a n = A243283 (n + 1)

end A243283

/-! ## A243283.P13014627292838208377

`∑[A319710(A242419(n+1))]+1`
-/

namespace A243283.P13014627292838208377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A242419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P13014627292838208377

namespace A243283

/-- `∑[A319710(A242419(n+1))]+1` -/
def P13014627292838208377.Spec : Prop :=
  ∀ n, P13014627292838208377.a n = A243283 (n + 1)

end A243283

/-!
# A243284: a(n) = the number of distinct ways of writing such products m = k^2 * j, 0 < j <= k, (j and k natural numbers) that m is in range [1,n]; Partial sums of A102354.

The programs for A243284, there is no canonical definition to state claims against.
-/

/-! ## A243284.P12535755443852814086

`∑[A102354(n+1)]`
-/

namespace A243284.P12535755443852814086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243284.P12535755443852814086

/-! ## A243284.P16168426919369101434

`∑[dr(A102354(2*n-(n-1)))]`
-/

namespace A243284.P16168426919369101434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A102354 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243284.P16168426919369101434

/-! ## A243284.P410494772756505563

`A000027(∑[A102354(Δ[n²]-n)])`
-/

namespace A243284.P410494772756505563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243284.P410494772756505563

/-! ## A243284.P18213536644652600720

`A032742(2*∑[A102354(Δ[n²]-n)])`
-/

namespace A243284.P18213536644652600720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243284.P18213536644652600720

/-! ## A243284.P3448706315372973295

`a(n-1)+A102354(n+1)+A008683(20*(n+1))` with `a(0)=1`
-/

namespace A243284.P3448706315372973295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A102354 (n + 1) + A008683 (20 * (n + 1)))

end

end A243284.P3448706315372973295

/-! ## A243284.P4088722228113338077

`∑[A034836(n+1)-A088433(n+1)]`
-/

namespace A243284.P4088722228113338077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A088433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243284.P4088722228113338077

/-! ## A243284.P17148574438751181700

`A001222(∏[2^A102354(n+1)])`
-/

namespace A243284.P17148574438751181700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102354 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243284.P17148574438751181700

/-! ## A243284.P10046633675093980356

`A000005(∏[2^A102354(n+1)])-1`
-/

namespace A243284.P10046633675093980356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102354 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A243284.P10046633675093980356

/-!
# A243285: Number of integers 1 <= k <= n which are not divisible by the square of their largest noncomposite divisor.

The programs for A243285, the canonical program `A243285.P11715135377684187643` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243285 has offset 1).

The definition of A243285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243285.P11715135377684187643

`n+1-A243283(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243285

/-- `n+1-A243283(n+1)` -/
def P11715135377684187643.Spec : Prop :=
  ∀ n, P11715135377684187643.a n = A243285 (n + 1)

theorem P11715135377684187643.correct : P11715135377684187643.Spec := by
  intro n
  simp only [A243285, Nat.add_sub_cancel]

end A243285

/-! ## A243285.P7578623437790418761

`∑[val(A329607(n+1), 2)]`
-/

namespace A243285.P7578623437790418761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329607 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P7578623437790418761

namespace A243285

/-- `∑[val(A329607(n+1), 2)]` -/
def P7578623437790418761.Spec : Prop :=
  ∀ n, (P7578623437790418761.a n : ℤ) = A243285 (n + 1)

end A243285

/-! ## A243285.P1716118175851797522

`n-∑[A319988(n+1)]`
-/

namespace A243285.P1716118175851797522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P1716118175851797522

namespace A243285

/-- `n-∑[A319988(n+1)]` -/
def P1716118175851797522.Spec : Prop :=
  ∀ n, P1716118175851797522.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P1995615064739067957

`∑[char[A102750(n+1)-1]]`
-/

namespace A243285.P1995615064739067957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P1995615064739067957

namespace A243285

/-- `∑[char[A102750(n+1)-1]]` -/
def P1995615064739067957.Spec : Prop :=
  ∀ n, (P1995615064739067957.a n : ℤ) = A243285 (n + 1)

end A243285

/-! ## A243285.P11416419946550296583

`∑[1-A336124(n+1)%2]`
-/

namespace A243285.P11416419946550296583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A336124 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P11416419946550296583

namespace A243285

/-- `∑[1-A336124(n+1)%2]` -/
def P11416419946550296583.Spec : Prop :=
  ∀ n, P11416419946550296583.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P13375561850076890180

`∑[gcd(2, A243287(n+1))-1]`
-/

namespace A243285.P13375561850076890180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A243287 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P13375561850076890180

namespace A243285

/-- `∑[gcd(2, A243287(n+1))-1]` -/
def P13375561850076890180.Spec : Prop :=
  ∀ n, P13375561850076890180.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P9922918268870832934

`∑[char[A243074(n+1)-1]]-1`
-/

namespace A243285.P9922918268870832934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A243285.P9922918268870832934

namespace A243285

/-- `∑[char[A243074(n+1)-1]]-1` -/
def P9922918268870832934.Spec : Prop :=
  ∀ n, P9922918268870832934.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P7506734688086515781

`∑[a(A064989(n+1)-1)^(n-1)]` with `a(0)=0`
-/

namespace A243285.P7506734688086515781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A064989 (n + 1) - 1).toNat ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P7506734688086515781

namespace A243285

/-- `∑[a(A064989(n+1)-1)^(n-1)]` -/
def P7506734688086515781.Spec : Prop :=
  ∀ n, P7506734688086515781.a n = (A243285 (n + 1) : ℚ)

end A243285

/-! ## A243285.P5740379759394967783

`∑[A010051(A053585(n+1))]`
-/

namespace A243285.P5740379759394967783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P5740379759394967783

namespace A243285

/-- `∑[A010051(A053585(n+1))]` -/
def P5740379759394967783.Spec : Prop :=
  ∀ n, P5740379759394967783.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P8201361761243040136

`∑[1-A000007(A241917(n+1))]`
-/

namespace A243285.P8201361761243040136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A241917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P8201361761243040136

namespace A243285

/-- `∑[1-A000007(A241917(n+1))]` -/
def P8201361761243040136.Spec : Prop :=
  ∀ n, P8201361761243040136.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P17672513370876761235

`n-∑[A302048(A179312(n+1))]`
-/

namespace A243285.P17672513370876761235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A179312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P17672513370876761235

namespace A243285

/-- `n-∑[A302048(A179312(n+1))]` -/
def P17672513370876761235.Spec : Prop :=
  ∀ n, P17672513370876761235.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P17700811291276272604

`∑[and(A243287(n+1)+1, A057427(n))]`
-/

namespace A243285.P17700811291276272604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243287 (n + 1) + 1) (A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P17700811291276272604

namespace A243285

/-- `∑[and(A243287(n+1)+1, A057427(n))]` -/
def P17700811291276272604.Spec : Prop :=
  ∀ n, P17700811291276272604.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P4328222951877839525

`(A004277(n)+1)%(A243283(n+1)+n)`
-/

namespace A243285.P4328222951877839525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n + 1) (A243283 (n + 1) + (n : ℤ))

end

end A243285.P4328222951877839525

namespace A243285

/-- `(A004277(n)+1)%(A243283(n+1)+n)` -/
def P4328222951877839525.Spec : Prop :=
  ∀ n, P4328222951877839525.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P1663232330417967724

`a(n-1)-A008683(gcd(n+1, A006530(n+1)²))` with `a(0)=0`
-/

namespace A243285.P1663232330417967724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A008683 (Int.gcd (n + 1 : ℤ) (A006530 (n + 1) ^ 2))

end

end A243285.P1663232330417967724

namespace A243285

/-- `a(n-1)-A008683(gcd(n+1, A006530(n+1)²))` -/
def P1663232330417967724.Spec : Prop :=
  ∀ n, P1663232330417967724.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P15687901603190868867

`n-∑[A001222(gcd(A000010(n+1), A006530(n+1)))]`
-/

namespace A243285.P15687901603190868867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000010 (n + 1)) (A006530 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P15687901603190868867

namespace A243285

/-- `n-∑[A001222(gcd(A000010(n+1), A006530(n+1)))]` -/
def P15687901603190868867.Spec : Prop :=
  ∀ n, P15687901603190868867.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P9757937998446729588

`((A064680(2*n+1)+1)*A243283(n+1))%(n+1)`
-/

namespace A243285.P9757937998446729588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A064680 (2 * n + 1) + 1) * A243283 (n + 1)) (n + 1 : ℤ)

end

end A243285.P9757937998446729588

namespace A243285

/-- `((A064680(2*n+1)+1)*A243283(n+1))%(n+1)` -/
def P9757937998446729588.Spec : Prop :=
  ∀ n, P9757937998446729588.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P14947731770578884277

`∑[and(1, A122111(n+1)+1)]`
-/

namespace A243285.P14947731770578884277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122111 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P14947731770578884277

namespace A243285

/-- `∑[and(1, A122111(n+1)+1)]` -/
def P14947731770578884277.Spec : Prop :=
  ∀ n, P14947731770578884277.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P11612863463102275563

`n-A243282(n+1)`
-/

namespace A243285.P11612863463102275563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243282 (n + 1)

end

end A243285.P11612863463102275563

namespace A243285

/-- `n-A243282(n+1)` -/
def P11612863463102275563.Spec : Prop :=
  ∀ n, P11612863463102275563.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P9681298358481026471

`n-∑[A073089(A137502(n+1))]`
-/

namespace A243285.P9681298358481026471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A137502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P9681298358481026471

namespace A243285

/-- `n-∑[A073089(A137502(n+1))]` -/
def P9681298358481026471.Spec : Prop :=
  ∀ n, P9681298358481026471.a n = A243285 (n + 1)

end A243285

/-! ## A243285.P13628256514466507841

`n-∑[A319710(A069799(n+1))]`
-/

namespace A243285.P13628256514466507841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A069799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P13628256514466507841

namespace A243285

/-- `n-∑[A319710(A069799(n+1))]` -/
def P13628256514466507841.Spec : Prop :=
  ∀ n, P13628256514466507841.a n = A243285 (n + 1)

end A243285

/-!
# A243287: a(1)=1, and for n > 1, if n is k-th number divisible by the square of its largest prime factor (i.e., n = A070003(k)), a(n) = 1 + (2*a(k)); otherwise, when n = A102750(k), a(n) = 2*a(k).

The programs for A243287, there is no canonical definition to state claims against.
-/

/-! ## A243287.P17361318931722263277

`A122111(A243288(A122111(n+1)))`
-/

namespace A243287.P17361318931722263277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243288 (A122111 (n + 1)).toNat).toNat

end

end A243287.P17361318931722263277

/-! ## A243287.P14941525579653148425

`A122111(n+1)%A103812(log2(gcd(2, n))+2^n)`
-/

namespace A243287.P14941525579653148425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) (A103812 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 ^ n : ℝ))).toNat)

end

end A243287.P14941525579653148425

/-! ## A243287.P5520734561109899952

`A122111(or(A001613(n), A077168(n)))`
-/

namespace A243287.P5520734561109899952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.lor (A001613 n) (A077168 n)).toNat

end

end A243287.P5520734561109899952

/-! ## A243287.P2703538694928489587

`A122111(A283666(n+1)+A077168(n))`
-/

namespace A243287.P2703538694928489587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A283666 (n + 1) + A077168 n).toNat

end

end A243287.P2703538694928489587

/-! ## A243287.P4192805317924399429

`A122111(n+1)%A040506(A088357(n))`
-/

namespace A243287.P4192805317924399429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) (A040506 (A088357 n).toNat)

end

end A243287.P4192805317924399429

/-!
# A243288: Permutation of natural numbers: a(1)=1, a(2n) = A102750(a(n)), a(2n+1) = A070003(a(n)).

The programs for A243288, there is no canonical definition to state claims against.
-/

/-! ## A243288.P3651898205297750322

`A243060(A167614(n+1))%39`
-/

namespace A243288.P3651898205297750322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243060 (A167614 (n + 1)).toNat) 39

end

end A243288.P3651898205297750322

/-! ## A243288.P3885163639303248385

`A122111(A288327(n)+A213000(n))`
-/

namespace A243288.P3885163639303248385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A288327 n + A213000 n).toNat

end

end A243288.P3885163639303248385

/-! ## A243288.P10294236645555352951

`A122111(n+1)%A003967(A007283(n))`
-/

namespace A243288.P10294236645555352951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) (A003967 (A007283 n).toNat)

end

end A243288.P10294236645555352951

/-! ## A243288.P5681567475704092605

`A279351(n+1)%A144171(A297960(n+1))`
-/

namespace A243288.P5681567475704092605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279351 (n + 1)) (A144171 (A297960 (n + 1)).toNat)

end

end A243288.P5681567475704092605

/-! ## A243288.P968161609179268504

`A243053(n+1)%A006577(A346592(2*(n+1)))`
-/

namespace A243288.P968161609179268504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243053 (n + 1)) (A006577 (A346592 (2 * (n + 1))).toNat)

end

end A243288.P968161609179268504

/-!
# A243289: n minus the index of the greatest prime dividing n-th squarefree number: a(n) = n - A243290(n).

The programs for A243289, the canonical program `A243289.P8731399377446764644` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243289 has offset 1).

The definition of A243289 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243289.P8731399377446764644

`n+1-A243290(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A243289

/-- `n+1-A243290(n+1)` -/
def P8731399377446764644.Spec : Prop :=
  ∀ n, P8731399377446764644.a n = A243289 (n + 1)

theorem P8731399377446764644.correct : P8731399377446764644.Spec := by
  intro n
  simp only [A243289, Nat.add_sub_cancel]

end A243289

/-! ## A243289.P12972159825587566447

`n-A023443(A243290(n+1))`
-/

namespace A243289.P12972159825587566447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A243290 (n + 1)).toNat

end

end A243289.P12972159825587566447

namespace A243289

/-- `n-A023443(A243290(n+1))` -/
def P12972159825587566447.Spec : Prop :=
  ∀ n, P12972159825587566447.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P13197920464399101861

`1-A061395(A005117(n+1))+n`
-/

namespace A243289.P13197920464399101861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061395 (A005117 (n + 1)).toNat + (n : ℤ)

end

end A243289.P13197920464399101861

namespace A243289

/-- `1-A061395(A005117(n+1))+n` -/
def P13197920464399101861.Spec : Prop :=
  ∀ n, P13197920464399101861.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P15009752875768602964

`1-A000720(A073482(n+1))+n`
-/

namespace A243289.P15009752875768602964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000720 (A073482 (n + 1)).toNat + (n : ℤ)

end

end A243289.P15009752875768602964

namespace A243289

/-- `1-A000720(A073482(n+1))+n` -/
def P15009752875768602964.Spec : Prop :=
  ∀ n, P15009752875768602964.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P1180213867433545986

`1-A061395(A225680(n+1))+n`
-/

namespace A243289.P1180213867433545986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061395 (A225680 (n + 1)).toNat + (n : ℤ)

end

end A243289.P1180213867433545986

namespace A243289

/-- `1-A061395(A225680(n+1))+n` -/
def P1180213867433545986.Spec : Prop :=
  ∀ n, P1180213867433545986.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P16378499817814416020

`A243349(n+1)-A243348(n+1)`
-/

namespace A243289.P16378499817814416020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243349 (n + 1) - A243348 (n + 1)

end

end A243289.P16378499817814416020

namespace A243289

/-- `A243349(n+1)-A243348(n+1)` -/
def P16378499817814416020.Spec : Prop :=
  ∀ n, P16378499817814416020.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P79715965830352751

`n+1-A061395(record[∏{p}[n, #]])`
-/

namespace A243289.P79715965830352751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A243289.P79715965830352751

namespace A243289

/-- `n+1-A061395(record[∏{p}[n, #]])` -/
def P79715965830352751.Spec : Prop :=
  ∀ n, P79715965830352751.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P2365351314134199277

`n+1-A061395(record[A097246(n+1)])`
-/

namespace A243289.P2365351314134199277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243289.P2365351314134199277

namespace A243289

/-- `n+1-A061395(record[A097246(n+1)])` -/
def P2365351314134199277.Spec : Prop :=
  ∀ n, P2365351314134199277.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P6456484389878018086

`A243291(A005117(n+1))-A243348(n+1)`
-/

namespace A243289.P6456484389878018086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (A005117 (n + 1)).toNat - A243348 (n + 1)

end

end A243289.P6456484389878018086

namespace A243289

/-- `A243291(A005117(n+1))-A243348(n+1)` -/
def P6456484389878018086.Spec : Prop :=
  ∀ n, P6456484389878018086.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P11911897270043751483

`1-floor(log2(A048640(n+1)))+n`
-/

namespace A243289.P11911897270043751483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.log 2 (A048640 (n + 1)).toNat : ℤ) + (n : ℤ)

end

end A243289.P11911897270043751483

namespace A243289

/-- `1-floor(log2(A048640(n+1)))+n` -/
def P11911897270043751483.Spec : Prop :=
  ∀ n, P11911897270043751483.a n = A243289 (n + 1)

end A243289

/-! ## A243289.P16071423369124630180

`1-A061395(A062503(n+1))+n`
-/

namespace A243289.P16071423369124630180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061395 (A062503 (n + 1)).toNat + (n : ℤ)

end

end A243289.P16071423369124630180

namespace A243289

/-- `1-A061395(A062503(n+1))+n` -/
def P16071423369124630180.Spec : Prop :=
  ∀ n, P16071423369124630180.a n = A243289 (n + 1)

end A243289

/-!
# A243290: The index of the greatest prime dividing the n-th squarefree number: a(n) = A061395(A005117(n)).

The programs for A243290, the canonical program `A243290.P623710756399021785` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243290 has offset 1).

The definition of A243290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243290.P623710756399021785

`A061395(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A243290

/-- `A061395(A005117(n+1))` -/
def P623710756399021785.Spec : Prop :=
  ∀ n, P623710756399021785.a n = A243290 (n + 1)

theorem P623710756399021785.correct : P623710756399021785.Spec := by
  intro n
  simp only [A243290, Nat.add_sub_cancel]

end A243290

/-! ## A243290.P11306935156957972967

`1-A243289(n+1)+n`
-/

namespace A243290.P11306935156957972967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243289 (n + 1) + (n : ℤ)

end

end A243290.P11306935156957972967

namespace A243290

/-- `1-A243289(n+1)+n` -/
def P11306935156957972967.Spec : Prop :=
  ∀ n, P11306935156957972967.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P12981299396611148205

`A000720(A073482(n+1))`
-/

namespace A243290.P12981299396611148205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073482 (n + 1)).toNat

end

end A243290.P12981299396611148205

namespace A243290

/-- `A000720(A073482(n+1))` -/
def P12981299396611148205.Spec : Prop :=
  ∀ n, P12981299396611148205.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P16001408979555980210

`A061395(A225680(n+1))`
-/

namespace A243290.P16001408979555980210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A225680 (n + 1)).toNat

end

end A243290.P16001408979555980210

namespace A243290

/-- `A061395(A225680(n+1))` -/
def P16001408979555980210.Spec : Prop :=
  ∀ n, P16001408979555980210.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P17024782566123831154

`A061395(sqrt(A062503(n+1)))`
-/

namespace A243290.P17024782566123831154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A243290.P17024782566123831154

namespace A243290

/-- `A061395(sqrt(A062503(n+1)))` -/
def P17024782566123831154.Spec : Prop :=
  ∀ n, P17024782566123831154.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P11321954650723179046

`A061395(record[A007947(n+1)])`
-/

namespace A243290.P11321954650723179046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243290.P11321954650723179046

namespace A243290

/-- `A061395(record[A007947(n+1)])` -/
def P11321954650723179046.Spec : Prop :=
  ∀ n, P11321954650723179046.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P16729841016452630181

`A061395(A243348(n+1)+1+n)`
-/

namespace A243290.P16729841016452630181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A243290.P16729841016452630181

namespace A243290

/-- `A061395(A243348(n+1)+1+n)` -/
def P16729841016452630181.Spec : Prop :=
  ∀ n, P16729841016452630181.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P15132131350899006975

`A005117(n+1)-A243349(n+1)`
-/

namespace A243290.P15132131350899006975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A243349 (n + 1)

end

end A243290.P15132131350899006975

namespace A243290

/-- `A005117(n+1)-A243349(n+1)` -/
def P15132131350899006975.Spec : Prop :=
  ∀ n, P15132131350899006975.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P4574015063429844976

`A061395(eq[n*A087049(n), A087049(n)])`
-/

namespace A243290.P4574015063429844976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243290.P4574015063429844976

namespace A243290

/-- `A061395(eq[n*A087049(n), A087049(n)])` -/
def P4574015063429844976.Spec : Prop :=
  ∀ n, P4574015063429844976.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P2867444164267773965

`A065770(record[A007947(n+1)])`
-/

namespace A243290.P2867444164267773965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243290.P2867444164267773965

namespace A243290

/-- `A065770(record[A007947(n+1)])` -/
def P2867444164267773965.Spec : Prop :=
  ∀ n, P2867444164267773965.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P10245543616043328751

`A065770(A005117(2*n+1-n))`
-/

namespace A243290.P10245543616043328751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A005117 (2 * n + 1 - n)).toNat

end

end A243290.P10245543616043328751

namespace A243290

/-- `A065770(A005117(2*n+1-n))` -/
def P10245543616043328751.Spec : Prop :=
  ∀ n, P10245543616043328751.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P3088232217698005781

`A049084(A006530(A243348(n+1)+n+1))`
-/

namespace A243290.P3088232217698005781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (A243348 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A243290.P3088232217698005781

namespace A243290

/-- `A049084(A006530(A243348(n+1)+n+1))` -/
def P3088232217698005781.Spec : Prop :=
  ∀ n, P3088232217698005781.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P10152735222994805828

`A061395(record[∏{p}[n, #]])`
-/

namespace A243290.P10152735222994805828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A243290.P10152735222994805828

namespace A243290

/-- `A061395(record[∏{p}[n, #]])` -/
def P10152735222994805828.Spec : Prop :=
  ∀ n, P10152735222994805828.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P13407142738669102295

`A061395(eq[n, ∏{p}[n, #]])`
-/

namespace A243290.P13407142738669102295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243290.P13407142738669102295

namespace A243290

/-- `A061395(eq[n, ∏{p}[n, #]])` -/
def P13407142738669102295.Spec : Prop :=
  ∀ n, P13407142738669102295.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P534230405468246153

`A065770(record[A015052(n+1)])`
-/

namespace A243290.P534230405468246153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243290.P534230405468246153

namespace A243290

/-- `A065770(record[A015052(n+1)])` -/
def P534230405468246153.Spec : Prop :=
  ∀ n, P534230405468246153.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P6015119034115297045

`A061395(record[A097246(n+1)])`
-/

namespace A243290.P6015119034115297045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243290.P6015119034115297045

namespace A243290

/-- `A061395(record[A097246(n+1)])` -/
def P6015119034115297045.Spec : Prop :=
  ∀ n, P6015119034115297045.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P14212947900291545472

`A000720(A006530(record[∏{p}[n, #]]))`
-/

namespace A243290.P14212947900291545472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A243290.P14212947900291545472

namespace A243290

/-- `A000720(A006530(record[∏{p}[n, #]]))` -/
def P14212947900291545472.Spec : Prop :=
  ∀ n, P14212947900291545472.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P8206540063046501990

`A055396(A006530(record[∏{p}[n+1, #]]))`
-/

namespace A243290.P8206540063046501990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A243290.P8206540063046501990

namespace A243290

/-- `A055396(A006530(record[∏{p}[n+1, #]]))` -/
def P8206540063046501990.Spec : Prop :=
  ∀ n, P8206540063046501990.a n = A243290 (n + 1)

end A243290

/-! ## A243290.P2445809258967919487

`floor(log2(A048640(n+1)))`
-/

namespace A243290.P2445809258967919487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048640 (n + 1)).toNat

end

end A243290.P2445809258967919487

namespace A243290

/-- `floor(log2(A048640(n+1)))` -/
def P2445809258967919487.Spec : Prop :=
  ∀ n, (P2445809258967919487.a n : ℤ) = A243290 (n + 1)

end A243290

/-! ## A243290.P6864720795064801036

`A061395(A062503(n+1))`
-/

namespace A243290.P6864720795064801036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A062503 (n + 1)).toNat

end

end A243290.P6864720795064801036

namespace A243290

/-- `A061395(A062503(n+1))` -/
def P6864720795064801036.Spec : Prop :=
  ∀ n, P6864720795064801036.a n = A243290 (n + 1)

end A243290

/-!
# A243291: Difference between n and the index of its largest prime factor: a(n) = n - A061395(n).

The programs for A243291, the canonical program `A243291.P16902629913632114201` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243291 has offset 1).

The definition of A243291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243291.P16902629913632114201

`n+1-A061395(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A243291

/-- `n+1-A061395(n+1)` -/
def P16902629913632114201.Spec : Prop :=
  ∀ n, P16902629913632114201.a n = A243291 (n + 1)

theorem P16902629913632114201.correct : P16902629913632114201.Spec := by
  intro n
  simp only [A243291, Nat.add_sub_cancel]

end A243291

/-! ## A243291.P14067811358222147257

`2-A159081(n+1)+n`
-/

namespace A243291.P14067811358222147257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A159081 (n + 1) + (n : ℤ)

end

end A243291.P14067811358222147257

namespace A243291

/-- `2-A159081(n+1)+n` -/
def P14067811358222147257.Spec : Prop :=
  ∀ n, P14067811358222147257.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P18134311550991835796

`A024000(A061395(n+1))+n`
-/

namespace A243291.P18134311550991835796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A061395 (n + 1)).toNat + (n : ℤ)

end

end A243291.P18134311550991835796

namespace A243291

/-- `A024000(A061395(n+1))+n` -/
def P18134311550991835796.Spec : Prop :=
  ∀ n, P18134311550991835796.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P1392963387273580711

`A028310(n-A252735(n+1))`
-/

namespace A243291.P1392963387273580711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A252735 (n + 1)).toNat

end

end A243291.P1392963387273580711

namespace A243291

/-- `A028310(n-A252735(n+1))` -/
def P1392963387273580711.Spec : Prop :=
  ∀ n, P1392963387273580711.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P12710404887643110240

`A083721(n+1)+A062298(n+1)`
-/

namespace A243291.P12710404887643110240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083721 (n + 1) + A062298 (n + 1)

end

end A243291.P12710404887643110240

namespace A243291

/-- `A083721(n+1)+A062298(n+1)` -/
def P12710404887643110240.Spec : Prop :=
  ∀ n, P12710404887643110240.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P16152054385133002581

`1-A000720(A006530(n+1))+n`
-/

namespace A243291.P16152054385133002581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000720 (A006530 (n + 1)).toNat + (n : ℤ)

end

end A243291.P16152054385133002581

namespace A243291

/-- `1-A000720(A006530(n+1))+n` -/
def P16152054385133002581.Spec : Prop :=
  ∀ n, P16152054385133002581.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P13936861322094786948

`1-A065770(A007947(n+1))+n`
-/

namespace A243291.P13936861322094786948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065770 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A243291.P13936861322094786948

namespace A243291

/-- `1-A065770(A007947(n+1))+n` -/
def P13936861322094786948.Spec : Prop :=
  ∀ n, P13936861322094786948.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P1781734615618883028

`1-A055396(A053585(n+1))+n`
-/

namespace A243291.P1781734615618883028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055396 (A053585 (n + 1)).toNat + (n : ℤ)

end

end A243291.P1781734615618883028

namespace A243291

/-- `1-A055396(A053585(n+1))+n` -/
def P1781734615618883028.Spec : Prop :=
  ∀ n, P1781734615618883028.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P1730174923236471719

`1-A064741(A064664(n+1))+n`
-/

namespace A243291.P1730174923236471719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064741 (A064664 (n + 1)).toNat + (n : ℤ)

end

end A243291.P1730174923236471719

namespace A243291

/-- `1-A064741(A064664(n+1))+n` -/
def P1730174923236471719.Spec : Prop :=
  ∀ n, P1730174923236471719.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P11019341332550768368

`1-A065770(A088835(n+1))+n`
-/

namespace A243291.P11019341332550768368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065770 (A088835 (n + 1)).toNat + (n : ℤ)

end

end A243291.P11019341332550768368

namespace A243291

/-- `1-A065770(A088835(n+1))+n` -/
def P11019341332550768368.Spec : Prop :=
  ∀ n, P11019341332550768368.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P17252703643932200329

`1-A065770(A109395(n+1))+n`
-/

namespace A243291.P17252703643932200329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065770 (A109395 (n + 1)).toNat + (n : ℤ)

end

end A243291.P17252703643932200329

namespace A243291

/-- `1-A065770(A109395(n+1))+n` -/
def P17252703643932200329.Spec : Prop :=
  ∀ n, P17252703643932200329.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P4800490430046792231

`1-A079067(A117366(n+1))+n`
-/

namespace A243291.P4800490430046792231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079067 (A117366 (n + 1)).toNat + (n : ℤ)

end

end A243291.P4800490430046792231

namespace A243291

/-- `1-A079067(A117366(n+1))+n` -/
def P4800490430046792231.Spec : Prop :=
  ∀ n, P4800490430046792231.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P15502579670876453615

`1-A332899(A108548(n+1))+n`
-/

namespace A243291.P15502579670876453615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332899 (A108548 (n + 1)).toNat + (n : ℤ)

end

end A243291.P15502579670876453615

namespace A243291

/-- `1-A332899(A108548(n+1))+n` -/
def P15502579670876453615.Spec : Prop :=
  ∀ n, P15502579670876453615.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P1664548014856745883

`A004277(n)-(A252735(n+1)+n)`
-/

namespace A243291.P1664548014856745883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A252735 (n + 1) + (n : ℤ))

end

end A243291.P1664548014856745883

namespace A243291

/-- `A004277(n)-(A252735(n+1)+n)` -/
def P1664548014856745883.Spec : Prop :=
  ∀ n, P1664548014856745883.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P6259095924838927188

`n+1-∑{p}[A053585(n+1), A003963(#)]`
-/

namespace A243291.P6259095924838927188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A243291.P6259095924838927188

namespace A243291

/-- `n+1-∑{p}[A053585(n+1), A003963(#)]` -/
def P6259095924838927188.Spec : Prop :=
  ∀ n, P6259095924838927188.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P5764900942652928572

`n+1-A000720(A053585(∏{p}[n+1, #]))`
-/

namespace A243291.P5764900942652928572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A243291.P5764900942652928572

namespace A243291

/-- `n+1-A000720(A053585(∏{p}[n+1, #]))` -/
def P5764900942652928572.Spec : Prop :=
  ∀ n, P5764900942652928572.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P6689414758359004198

`n+1-A049084(∏{p}[A053585(n+1), #])`
-/

namespace A243291.P6689414758359004198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A243291.P6689414758359004198

namespace A243291

/-- `n+1-A049084(∏{p}[A053585(n+1), #])` -/
def P6689414758359004198.Spec : Prop :=
  ∀ n, P6689414758359004198.a n = A243291 (n + 1)

end A243291

/-! ## A243291.P17876723095469027872

`n+1-(A243055(n+1)+A055396(n+1))`
-/

namespace A243291.P17876723095469027872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A243055 (n + 1) + A055396 (n + 1))

end

end A243291.P17876723095469027872

namespace A243291

/-- `n+1-(A243055(n+1)+A055396(n+1))` -/
def P17876723095469027872.Spec : Prop :=
  ∀ n, P17876723095469027872.a n = A243291 (n + 1)

end A243291

/-!
# A243292: Odd numbers n such that (4^n - 1)/3 is a base-2 pseudoprime.

The programs for A243292, there is no canonical definition to state claims against.
-/

/-! ## A243292.P18251165211623701319

`eq[gcd(6, n), A062175(xor(1, n)+1)]`
-/

namespace A243292.P18251165211623701319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062175 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243292.P18251165211623701319

/-! ## A243292.P4885582211471887228

`eq[1, A062175(A257174(n))]`
-/

namespace A243292.P4885582211471887228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062175 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243292.P4885582211471887228

/-! ## A243292.P4924720164067908343

`eq[4, A015910(A257174(2*n))]`
-/

namespace A243292.P4924720164067908343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A257174 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243292.P4924720164067908343

/-! ## A243292.P17761002904175700092

`filter[A179458(n+1), A267848(#)]`
-/

namespace A243292.P17761002904175700092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267848 (f1 j).toNat = 1) n)

end

end A243292.P17761002904175700092

/-! ## A243292.P1706032148327941010

`filter[A179458(n+1), A355450(#)]`
-/

namespace A243292.P1706032148327941010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A243292.P1706032148327941010

/-! ## A243292.P8907007392591277997

`filter[A179458(n+2), A011655(#)]`
-/

namespace A243292.P8907007392591277997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A243292.P8907007392591277997

/-! ## A243292.P11793406101135750519

`filter[A179458(n+2), A014578(#)]`
-/

namespace A243292.P11793406101135750519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A243292.P11793406101135750519

/-! ## A243292.P6053542497538339396

`filter[A340077(n+2), A011655(#)]`
-/

namespace A243292.P6053542497538339396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A243292.P6053542497538339396

/-! ## A243292.P7742364430877389815

`filter[A340077(n+2), A014578(#)]`
-/

namespace A243292.P7742364430877389815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A243292.P7742364430877389815

/-! ## A243292.P8764897910790436289

`filter[A179458(n+2), A187074(#)]`
-/

namespace A243292.P8764897910790436289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A243292.P8764897910790436289

/-!
# A243293: Number of factorials < 10^n.

The programs for A243293, there is no canonical definition to state claims against.
-/

/-! ## A243293.P16002458559668522743

`comp[A034886(n)-2+n]-n`
-/

namespace A243293.P16002458559668522743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A243293.P16002458559668522743

/-!
# A243295: Least number k > 0 such that 3^k contains an n-digit long substring of the infinite string "0123456789012345678901234567890123456...".

The programs for A243295, there is no canonical definition to state claims against.
-/

/-! ## A243295.P7617615514961823030

`A100617(record[A022704(n)])`
-/

namespace A243295.P7617615514961823030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243295.P7617615514961823030

/-!
# A243296: Exponent of 2 in (A002110(n)/2)^2-1.

The programs for A243296, there is no canonical definition to state claims against.
-/

/-! ## A243296.P10928536387551080205

`val(∑[A083032(A001248(n+2))], 2)`
-/

namespace A243296.P10928536387551080205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (A001248 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A243296.P10928536387551080205

/-! ## A243296.P2358111777654656413

`A302045(∑[A084920(n+2)])`
-/

namespace A243296.P2358111777654656413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243296.P2358111777654656413

/-! ## A243296.P6652947913961146857

`A302045(∑[A000040(n+2)²-1])`
-/

namespace A243296.P6652947913961146857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243296.P6652947913961146857

/-! ## A243296.P14069566272203583085

`A085058(∑[A002620(A045344(n+1))])`
-/

namespace A243296.P14069566272203583085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243296.P14069566272203583085

/-! ## A243296.P5336893029033058426

`A090740(∑[A024701(n+1)])`
-/

namespace A243296.P5336893029033058426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243296.P5336893029033058426

