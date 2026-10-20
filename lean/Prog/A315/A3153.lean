import SequenceMachineLib.Basic
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A315300: Coordination sequence Gal.5.279.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315300, there is no canonical definition to state claims against.
-/

/-! ## A315300.P445009733540635169

`A315341(n)+A315360(n)-A315365(n)`
-/

namespace A315300.P445009733540635169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n + (A315360 n - A315365 n)

end

end A315300.P445009733540635169

/-!
# A315301: Coordination sequence Gal.6.584.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315301, there is no canonical definition to state claims against.
-/

/-! ## A315301.P988543079922637935

`A313821(n)+A002324(A117762(n+1))`
-/

namespace A315301.P988543079922637935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313821 n + A002324 (A117762 (n + 1)).toNat

end

end A315301.P988543079922637935

/-!
# A315302: Coordination sequence Gal.6.152.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315302, the canonical program `A315302.P6791131573123663794` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315302 has offset 0).

The definition of A315302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315302.P6791131573123663794

`2*A314826(n)-A008574(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A315302

/-- `2*A314826(n)-A008574(n)` -/
def P6791131573123663794.Spec : Prop :=
  ∀ n, P6791131573123663794.a n = A315302 n

theorem P6791131573123663794.correct : P6791131573123663794.Spec := by
  intro n
  simp only [A315302]

end A315302

/-! ## A315302.P18417679025473073139

`A004275(A314826(n)-A004273(n))`
-/

namespace A315302.P18417679025473073139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314826 n - A004273 n).toNat

end

end A315302.P18417679025473073139

namespace A315302

/-- `A004275(A314826(n)-A004273(n))` -/
def P18417679025473073139.Spec : Prop :=
  ∀ n, P18417679025473073139.a n = A315302 n

end A315302

/-! ## A315302.P185580821901455691

`A004273(A314826(n)-n)-A004273(n)`
-/

namespace A315302.P185580821901455691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314826 n - (n : ℤ)).toNat - A004273 n

end

end A315302.P185580821901455691

namespace A315302

/-- `A004273(A314826(n)-n)-A004273(n)` -/
def P185580821901455691.Spec : Prop :=
  ∀ n, P185580821901455691.a n = A315302 n

end A315302

/-! ## A315302.P16948231971094621788

`A008574(n)+A005843(A314826(n)-A008574(n))`
-/

namespace A315302.P16948231971094621788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314826 n - A008574 n).toNat

end

end A315302.P16948231971094621788

namespace A315302

/-- `A008574(n)+A005843(A314826(n)-A008574(n))` -/
def P16948231971094621788.Spec : Prop :=
  ∀ n, P16948231971094621788.a n = A315302 n

end A315302

/-! ## A315302.P9220901881854384219

`A005843(A314826(n))-A008574(n)`
-/

namespace A315302.P9220901881854384219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314826 n).toNat - A008574 n

end

end A315302.P9220901881854384219

namespace A315302

/-- `A005843(A314826(n))-A008574(n)` -/
def P9220901881854384219.Spec : Prop :=
  ∀ n, P9220901881854384219.a n = A315302 n

end A315302

/-! ## A315302.P14675505255200765417

`A004275(A314826(n))-A004275(2*n)`
-/

namespace A315302.P14675505255200765417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314826 n).toNat - A004275 (2 * n)

end

end A315302.P14675505255200765417

namespace A315302

/-- `A004275(A314826(n))-A004275(2*n)` -/
def P14675505255200765417.Spec : Prop :=
  ∀ n, P14675505255200765417.a n = A315302 n

end A315302

/-! ## A315302.P12865700911454236758

`abs(A008592(n)-A310423(n))`
-/

namespace A315302.P12865700911454236758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310423 n|

end

end A315302.P12865700911454236758

namespace A315302

/-- `abs(A008592(n)-A310423(n))` -/
def P12865700911454236758.Spec : Prop :=
  ∀ n, P12865700911454236758.a n = A315302 n

end A315302

/-! ## A315302.P2623422370737381591

`2*A008706(n)-A310423(n)`
-/

namespace A315302.P2623422370737381591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310423 n

end

end A315302.P2623422370737381591

namespace A315302

/-- `2*A008706(n)-A310423(n)` -/
def P2623422370737381591.Spec : Prop :=
  ∀ n, P2623422370737381591.a n = A315302 n

end A315302

/-! ## A315302.P6850668371004051210

`xor(1, A017281(n)-A310423(n))`
-/

namespace A315302.P6850668371004051210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310423 n)

end

end A315302.P6850668371004051210

namespace A315302

/-- `xor(1, A017281(n)-A310423(n))` -/
def P6850668371004051210.Spec : Prop :=
  ∀ n, P6850668371004051210.a n = A315302 n

end A315302

/-! ## A315302.P12790556614015559026

`A000038(n)+A008592(n)-A310423(n)`
-/

namespace A315302.P12790556614015559026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A310423 n)

end

end A315302.P12790556614015559026

namespace A315302

/-- `A000038(n)+A008592(n)-A310423(n)` -/
def P12790556614015559026.Spec : Prop :=
  ∀ n, P12790556614015559026.a n = A315302 n

end A315302

/-! ## A315302.P2391721848386190257

`A008458(n)+A008574(n)-A310423(n)`
-/

namespace A315302.P2391721848386190257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310423 n)

end

end A315302.P2391721848386190257

namespace A315302

/-- `A008458(n)+A008574(n)-A310423(n)` -/
def P2391721848386190257.Spec : Prop :=
  ∀ n, P2391721848386190257.a n = A315302 n

end A315302

/-! ## A315302.P4094078645309625557

`A020639(2*a(n-1))*A004525(A315444(n))` with `a(0)=1`
-/

namespace A315302.P4094078645309625557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (2 * a (n - 1)).toNat * A004525 (A315444 n).toNat

end

end A315302.P4094078645309625557

namespace A315302

/-- `A020639(2*a(n-1))*A004525(A315444(n))` -/
def P4094078645309625557.Spec : Prop :=
  ∀ n, P4094078645309625557.a n = A315302 n

end A315302

/-! ## A315302.P3115733199472543813

`A020639(A002202(n+1))*A004525(A315444(n))`
-/

namespace A315302.P3115733199472543813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002202 (n + 1)).toNat * A004525 (A315444 n).toNat

end

end A315302.P3115733199472543813

namespace A315302

/-- `A020639(A002202(n+1))*A004525(A315444(n))` -/
def P3115733199472543813.Spec : Prop :=
  ∀ n, P3115733199472543813.a n = A315302 n

end A315302

/-! ## A315302.P18174922923160117856

`A004442(A017281(n)-A310423(n))`
-/

namespace A315302.P18174922923160117856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310423 n).toNat

end

end A315302.P18174922923160117856

namespace A315302

/-- `A004442(A017281(n)-A310423(n))` -/
def P18174922923160117856.Spec : Prop :=
  ∀ n, P18174922923160117856.a n = A315302 n

end A315302

/-! ## A315302.P13378047837954875097

`A005843(A008706(n))-A310423(n)`
-/

namespace A315302.P13378047837954875097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310423 n

end

end A315302.P13378047837954875097

namespace A315302

/-- `A005843(A008706(n))-A310423(n)` -/
def P13378047837954875097.Spec : Prop :=
  ∀ n, P13378047837954875097.a n = A315302 n

end A315302

/-!
# A315303: Coordination sequence Gal.6.247.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315303, the canonical program `A315303.P11415585503323507612` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315303 has offset 0).

The definition of A315303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315303.P16966711883681755930

`A330025(n)+A250120(n)`
-/

namespace A315303.P16966711883681755930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A250120 n

end

end A315303.P16966711883681755930

namespace A315303

/-- `A330025(n)+A250120(n)` -/
def P16966711883681755930.Spec : Prop :=
  ∀ n, P16966711883681755930.a n = A315303 n

end A315303

/-! ## A315303.P11415585503323507612

`A312561(n)+2*A330025(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315303

/-- `A312561(n)+2*A330025(n)` -/
def P11415585503323507612.Spec : Prop :=
  ∀ n, P11415585503323507612.a n = A315303 n

theorem P11415585503323507612.correct : P11415585503323507612.Spec := by
  intro n
  simp only [A315303]

end A315303

/-! ## A315303.P16592064332980387522

`2*A314827(n)-A008574(n)`
-/

namespace A315303.P16592064332980387522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314827 n - A008574 n

end

end A315303.P16592064332980387522

namespace A315303

/-- `2*A314827(n)-A008574(n)` -/
def P16592064332980387522.Spec : Prop :=
  ∀ n, P16592064332980387522.a n = A315303 n

end A315303

/-! ## A315303.P14440976618123571221

`2*A250120(n)-A312561(n)`
-/

namespace A315303.P14440976618123571221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A312561 n

end

end A315303.P14440976618123571221

namespace A315303

/-- `2*A250120(n)-A312561(n)` -/
def P14440976618123571221.Spec : Prop :=
  ∀ n, P14440976618123571221.a n = A315303 n

end A315303

/-! ## A315303.P16788003908843855824

`A330025(n)+A047486(A008486(n)+1)`
-/

namespace A315303.P16788003908843855824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A047486 (A008486 n + 1).toNat

end

end A315303.P16788003908843855824

namespace A315303

/-- `A330025(n)+A047486(A008486(n)+1)` -/
def P16788003908843855824.Spec : Prop :=
  ∀ n, P16788003908843855824.a n = A315303 n

end A315303

/-! ## A315303.P9840396200231826372

`A330025(n)+A047486(A033627(n+2))`
-/

namespace A315303.P9840396200231826372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A047486 (A033627 (n + 2)).toNat

end

end A315303.P9840396200231826372

namespace A315303

/-- `A330025(n)+A047486(A033627(n+2))` -/
def P9840396200231826372.Spec : Prop :=
  ∀ n, P9840396200231826372.a n = A315303 n

end A315303

/-! ## A315303.P914150372713485248

`abs(A008592(n)-A310422(n))`
-/

namespace A315303.P914150372713485248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310422 n|

end

end A315303.P914150372713485248

namespace A315303

/-- `abs(A008592(n)-A310422(n))` -/
def P914150372713485248.Spec : Prop :=
  ∀ n, P914150372713485248.a n = A315303 n

end A315303

/-! ## A315303.P14967790341579049091

`2*A008706(n)-A310422(n)`
-/

namespace A315303.P14967790341579049091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310422 n

end

end A315303.P14967790341579049091

namespace A315303

/-- `2*A008706(n)-A310422(n)` -/
def P14967790341579049091.Spec : Prop :=
  ∀ n, P14967790341579049091.a n = A315303 n

end A315303

/-! ## A315303.P3860280637888341986

`A008458(n)+A008574(n)-A310422(n)`
-/

namespace A315303.P3860280637888341986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310422 n)

end

end A315303.P3860280637888341986

namespace A315303

/-- `A008458(n)+A008574(n)-A310422(n)` -/
def P3860280637888341986.Spec : Prop :=
  ∀ n, P3860280637888341986.a n = A315303 n

end A315303

/-! ## A315303.P16096395544969294026

`∑{d}[A008592(n)-A310422(n), A000010(#)]`
-/

namespace A315303.P16096395544969294026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315303.P16096395544969294026

namespace A315303

/-- `∑{d}[A008592(n)-A310422(n), A000010(#)]` -/
def P16096395544969294026.Spec : Prop :=
  ∀ n, P16096395544969294026.a n = A315303 n

end A315303

/-! ## A315303.P15106173712142119651

`A330025(n)+A072154(2*n)`
-/

namespace A315303.P15106173712142119651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A072154 (2 * n)

end

end A315303.P15106173712142119651

namespace A315303

/-- `A330025(n)+A072154(2*n)` -/
def P15106173712142119651.Spec : Prop :=
  ∀ n, P15106173712142119651.a n = A315303 n

end A315303

/-! ## A315303.P5548431290094006640

`2*A315518(n)-A008458(n)`
-/

namespace A315303.P5548431290094006640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315518 n - A008458 n

end

end A315303.P5548431290094006640

namespace A315303

/-- `2*A315518(n)-A008458(n)` -/
def P5548431290094006640.Spec : Prop :=
  ∀ n, P5548431290094006640.a n = A315303 n

end A315303

/-! ## A315303.P12968956192099986253

`A020639(A000040(n+1)-1)*A004525(A315445(n))`
-/

namespace A315303.P12968956192099986253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A004525 (A315445 n).toNat

end

end A315303.P12968956192099986253

namespace A315303

/-- `A020639(A000040(n+1)-1)*A004525(A315445(n))` -/
def P12968956192099986253.Spec : Prop :=
  ∀ n, P12968956192099986253.a n = A315303 n

end A315303

/-! ## A315303.P9950125887341616453

`A151988(A008458(n))-2*A151988(n)`
-/

namespace A315303.P9950125887341616453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008458 n).toNat - 2 * A151988 n

end

end A315303.P9950125887341616453

namespace A315303

/-- `A151988(A008458(n))-2*A151988(n)` -/
def P9950125887341616453.Spec : Prop :=
  ∀ n, P9950125887341616453.a n = A315303 n

end A315303

/-! ## A315303.P14254633274258458262

`A330025(n)+A004525(A301730(2*n))`
-/

namespace A315303.P14254633274258458262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A004525 (A301730 (2 * n)).toNat

end

end A315303.P14254633274258458262

namespace A315303

/-- `A330025(n)+A004525(A301730(2*n))` -/
def P14254633274258458262.Spec : Prop :=
  ∀ n, P14254633274258458262.a n = A315303 n

end A315303

/-! ## A315303.P16087048557684552375

`A330025(n)+A004525(A310398(2*n))`
-/

namespace A315303.P16087048557684552375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A004525 (A310398 (2 * n)).toNat

end

end A315303.P16087048557684552375

namespace A315303

/-- `A330025(n)+A004525(A310398(2*n))` -/
def P16087048557684552375.Spec : Prop :=
  ∀ n, P16087048557684552375.a n = A315303 n

end A315303

/-!
# A315304: Coordination sequence Gal.5.84.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315304, the canonical program `A315304.P8913509134367770047` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315304 has offset 0).

The definition of A315304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315304.P8913509134367770047

`2*A314828(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315304

/-- `2*A314828(n)-A008574(n)` -/
def P8913509134367770047.Spec : Prop :=
  ∀ n, P8913509134367770047.a n = A315304 n

theorem P8913509134367770047.correct : P8913509134367770047.Spec := by
  intro n
  simp only [A315304]

end A315304

/-! ## A315304.P7371503580202208197

`A103517(A314828(n)-(2*n+1))`
-/

namespace A315304.P7371503580202208197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314828 n - (2 * n + 1 : ℤ)).toNat

end

end A315304.P7371503580202208197

namespace A315304

/-- `A103517(A314828(n)-(2*n+1))` -/
def P7371503580202208197.Spec : Prop :=
  ∀ n, P7371503580202208197.a n = A315304 n

end A315304

/-! ## A315304.P8968004283406968864

`A004275(A314828(n)-A004273(n))`
-/

namespace A315304.P8968004283406968864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314828 n - A004273 n).toNat

end

end A315304.P8968004283406968864

namespace A315304

/-- `A004275(A314828(n)-A004273(n))` -/
def P8968004283406968864.Spec : Prop :=
  ∀ n, P8968004283406968864.a n = A315304 n

end A315304

/-! ## A315304.P8423746120623256820

`A004273(A314828(n)-n)-A004273(n)`
-/

namespace A315304.P8423746120623256820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314828 n - (n : ℤ)).toNat - A004273 n

end

end A315304.P8423746120623256820

namespace A315304

/-- `A004273(A314828(n)-n)-A004273(n)` -/
def P8423746120623256820.Spec : Prop :=
  ∀ n, P8423746120623256820.a n = A315304 n

end A315304

/-! ## A315304.P11595289887274005416

`A008574(n)+A005843(A314828(n)-A008574(n))`
-/

namespace A315304.P11595289887274005416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314828 n - A008574 n).toNat

end

end A315304.P11595289887274005416

namespace A315304

/-- `A008574(n)+A005843(A314828(n)-A008574(n))` -/
def P11595289887274005416.Spec : Prop :=
  ∀ n, P11595289887274005416.a n = A315304 n

end A315304

/-! ## A315304.P17268441291096186645

`abs(A008592(n)-A310421(n))`
-/

namespace A315304.P17268441291096186645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310421 n|

end

end A315304.P17268441291096186645

namespace A315304

/-- `abs(A008592(n)-A310421(n))` -/
def P17268441291096186645.Spec : Prop :=
  ∀ n, P17268441291096186645.a n = A315304 n

end A315304

/-! ## A315304.P15048571300393891419

`2*A008706(n)-A310421(n)`
-/

namespace A315304.P15048571300393891419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310421 n

end

end A315304.P15048571300393891419

namespace A315304

/-- `2*A008706(n)-A310421(n)` -/
def P15048571300393891419.Spec : Prop :=
  ∀ n, P15048571300393891419.a n = A315304 n

end A315304

/-! ## A315304.P5740380258537813264

`A008458(n)+A008574(n)-A310421(n)`
-/

namespace A315304.P5740380258537813264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310421 n)

end

end A315304.P5740380258537813264

namespace A315304

/-- `A008458(n)+A008574(n)-A310421(n)` -/
def P5740380258537813264.Spec : Prop :=
  ∀ n, P5740380258537813264.a n = A315304 n

end A315304

/-! ## A315304.P6243258485793339295

`A005843(A314828(n))-A008574(n)`
-/

namespace A315304.P6243258485793339295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314828 n).toNat - A008574 n

end

end A315304.P6243258485793339295

namespace A315304

/-- `A005843(A314828(n))-A008574(n)` -/
def P6243258485793339295.Spec : Prop :=
  ∀ n, P6243258485793339295.a n = A315304 n

end A315304

/-! ## A315304.P7004196946492070047

`A004275(A314828(n))-A004275(2*n)`
-/

namespace A315304.P7004196946492070047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314828 n).toNat - A004275 (2 * n)

end

end A315304.P7004196946492070047

namespace A315304

/-- `A004275(A314828(n))-A004275(2*n)` -/
def P7004196946492070047.Spec : Prop :=
  ∀ n, P7004196946492070047.a n = A315304 n

end A315304

/-! ## A315304.P1323582389720624432

`A315731(n)-A008612(A016813(n))`
-/

namespace A315304.P1323582389720624432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315731 n - A008612 (A016813 n).toNat

end

end A315304.P1323582389720624432

namespace A315304

/-- `A315731(n)-A008612(A016813(n))` -/
def P1323582389720624432.Spec : Prop :=
  ∀ n, P1323582389720624432.a n = A315304 n

end A315304

/-! ## A315304.P13023195055609919654

`A042965(A313683(n)+1)-A042965(n+1)`
-/

namespace A315304.P13023195055609919654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313683 n + 1).toNat - A042965 (n + 1)

end

end A315304.P13023195055609919654

namespace A315304

/-- `A042965(A313683(n)+1)-A042965(n+1)` -/
def P13023195055609919654.Spec : Prop :=
  ∀ n, P13023195055609919654.a n = A315304 n

end A315304

/-! ## A315304.P15659544539863676877

`A005843(A008706(n))-A310421(n)`
-/

namespace A315304.P15659544539863676877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310421 n

end

end A315304.P15659544539863676877

namespace A315304

/-- `A005843(A008706(n))-A310421(n)` -/
def P15659544539863676877.Spec : Prop :=
  ∀ n, P15659544539863676877.a n = A315304 n

end A315304

/-! ## A315304.P14596721977551190191

`A004396(n)+A004396(A315727(n)+n)`
-/

namespace A315304.P14596721977551190191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315727 n + (n : ℤ)).toNat

end

end A315304.P14596721977551190191

namespace A315304

/-- `A004396(n)+A004396(A315727(n)+n)` -/
def P14596721977551190191.Spec : Prop :=
  ∀ n, P14596721977551190191.a n = A315304 n

end A315304

/-! ## A315304.P11038899232848490281

`A310412(2*n)+A310412(n+1)-A310412(2*n+1)`
-/

namespace A315304.P11038899232848490281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 (2 * n) + (A310412 (n + 1) - A310412 (2 * n + 1))

end

end A315304.P11038899232848490281

namespace A315304

/-- `A310412(2*n)+A310412(n+1)-A310412(2*n+1)` -/
def P11038899232848490281.Spec : Prop :=
  ∀ n, P11038899232848490281.a n = A315304 n

end A315304

/-!
# A315305: Coordination sequence Gal.6.338.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315305, the canonical program `A315305.P7723534029147284216` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315305 has offset 0).

The definition of A315305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315305.P18009063234000061186

`2*A314902(n)-A311635(n)`
-/

namespace A315305.P18009063234000061186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314902 n - A311635 n

end

end A315305.P18009063234000061186

namespace A315305

/-- `2*A314902(n)-A311635(n)` -/
def P18009063234000061186.Spec : Prop :=
  ∀ n, P18009063234000061186.a n = A315305 n

end A315305

/-! ## A315305.P16528239593557383058

`A315464(n)-A004525(A315464(n)-A315302(n))`
-/

namespace A315305.P16528239593557383058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315464 n - A004525 (A315464 n - A315302 n).toNat

end

end A315305.P16528239593557383058

namespace A315305

/-- `A315464(n)-A004525(A315464(n)-A315302(n))` -/
def P16528239593557383058.Spec : Prop :=
  ∀ n, P16528239593557383058.a n = A315305 n

end A315305

/-! ## A315305.P8431612848565916847

`A047263(A315316(n)+1-n)`
-/

namespace A315305.P8431612848565916847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A315316 n + (1 - (n : ℤ))).toNat

end

end A315305.P8431612848565916847

namespace A315305

/-- `A047263(A315316(n)+1-n)` -/
def P8431612848565916847.Spec : Prop :=
  ∀ n, P8431612848565916847.a n = A315305 n

end A315305

/-! ## A315305.P6133557580297684070

`A047263(1-(n-A315316(n)))`
-/

namespace A315305.P6133557580297684070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - ((n : ℤ) - A315316 n)).toNat

end

end A315305.P6133557580297684070

namespace A315305

/-- `A047263(1-(n-A315316(n)))` -/
def P6133557580297684070.Spec : Prop :=
  ∀ n, P6133557580297684070.a n = A315305 n

end A315305

/-! ## A315305.P5782171720301586351

`abs(10*n-A310420(n))`
-/

namespace A315305.P5782171720301586351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310420 n|

end

end A315305.P5782171720301586351

namespace A315305

/-- `abs(10*n-A310420(n))` -/
def P5782171720301586351.Spec : Prop :=
  ∀ n, P5782171720301586351.a n = A315305 n

end A315305

/-! ## A315305.P17415543600749860681

`2*A008706(n)-A310420(n)`
-/

namespace A315305.P17415543600749860681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310420 n

end

end A315305.P17415543600749860681

namespace A315305

/-- `2*A008706(n)-A310420(n)` -/
def P17415543600749860681.Spec : Prop :=
  ∀ n, P17415543600749860681.a n = A315305 n

end A315305

/-! ## A315305.P17172662384590894778

`A008458(n)+A008574(n)-A310420(n)`
-/

namespace A315305.P17172662384590894778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310420 n)

end

end A315305.P17172662384590894778

namespace A315305

/-- `A008458(n)+A008574(n)-A310420(n)` -/
def P17172662384590894778.Spec : Prop :=
  ∀ n, P17172662384590894778.a n = A315305 n

end A315305

/-! ## A315305.P2062251208383539278

`2*A315316(n)-A315329(n)`
-/

namespace A315305.P2062251208383539278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315316 n - A315329 n

end

end A315305.P2062251208383539278

namespace A315305

/-- `2*A315316(n)-A315329(n)` -/
def P2062251208383539278.Spec : Prop :=
  ∀ n, P2062251208383539278.a n = A315305 n

end A315305

/-! ## A315305.P14102610479289357344

`2*A315519(n)-A008458(n)`
-/

namespace A315305.P14102610479289357344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315519 n - A008458 n

end

end A315305.P14102610479289357344

namespace A315305

/-- `2*A315519(n)-A008458(n)` -/
def P14102610479289357344.Spec : Prop :=
  ∀ n, P14102610479289357344.a n = A315305 n

end A315305

/-! ## A315305.P754976018761250299

`A008458(n)-A005843(A008458(n)-A315519(n))`
-/

namespace A315305.P754976018761250299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315519 n).toNat

end

end A315305.P754976018761250299

namespace A315305

/-- `A008458(n)-A005843(A008458(n)-A315519(n))` -/
def P754976018761250299.Spec : Prop :=
  ∀ n, P754976018761250299.a n = A315305 n

end A315305

/-! ## A315305.P15510846876730775196

`A005843(A314902(n))-A311635(n)`
-/

namespace A315305.P15510846876730775196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314902 n).toNat - A311635 n

end

end A315305.P15510846876730775196

namespace A315305

/-- `A005843(A314902(n))-A311635(n)` -/
def P15510846876730775196.Spec : Prop :=
  ∀ n, P15510846876730775196.a n = A315305 n

end A315305

/-! ## A315305.P2517688292235534439

`A004442(A017281(n)-A310420(n))`
-/

namespace A315305.P2517688292235534439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310420 n).toNat

end

end A315305.P2517688292235534439

namespace A315305

/-- `A004442(A017281(n)-A310420(n))` -/
def P2517688292235534439.Spec : Prop :=
  ∀ n, P2517688292235534439.a n = A315305 n

end A315305

/-! ## A315305.P14280920870933636329

`A005843(A008706(n))-A310420(n)`
-/

namespace A315305.P14280920870933636329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310420 n

end

end A315305.P14280920870933636329

namespace A315305

/-- `A005843(A008706(n))-A310420(n)` -/
def P14280920870933636329.Spec : Prop :=
  ∀ n, P14280920870933636329.a n = A315305 n

end A315305

/-! ## A315305.P7076214031815808303

`A005843(A315519(n))-A008458(n)`
-/

namespace A315305.P7076214031815808303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315519 n).toNat - A008458 n

end

end A315305.P7076214031815808303

namespace A315305

/-- `A005843(A315519(n))-A008458(n)` -/
def P7076214031815808303.Spec : Prop :=
  ∀ n, P7076214031815808303.a n = A315305 n

end A315305

/-! ## A315305.P3770931959565028887

`A093545(A008458(n))-A310420(n)`
-/

namespace A315305.P3770931959565028887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A310420 n

end

end A315305.P3770931959565028887

namespace A315305

/-- `A093545(A008458(n))-A310420(n)` -/
def P3770931959565028887.Spec : Prop :=
  ∀ n, P3770931959565028887.a n = A315305 n

end A315305

/-! ## A315305.P7723534029147284216

`A315208(2*n)+A310413(n+1)-A310413(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315305

/-- `A315208(2*n)+A310413(n+1)-A310413(2*n+1)` -/
def P7723534029147284216.Spec : Prop :=
  ∀ n, P7723534029147284216.a n = A315305 n

theorem P7723534029147284216.correct : P7723534029147284216.Spec := by
  intro n
  simp only [A315305]

end A315305

/-!
# A315306: Coordination sequence Gal.5.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315306, the canonical program `A315306.P10875420157204109728` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315306 has offset 0).

The definition of A315306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315306.P10875420157204109728

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=16, a(4)=20, a(5)=24, a(6)=30`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315306

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P10875420157204109728.Spec : Prop :=
  ∀ n, P10875420157204109728.a n = A315306 n

theorem P10875420157204109728.correct : P10875420157204109728.Spec := by
  intro n
  simp only [A315306]

end A315306

/-! ## A315306.P7697970329926284283

`A257170(n)+5*n`
-/

namespace A315306.P7697970329926284283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 n + (5 * n : ℤ)

end

end A315306.P7697970329926284283

namespace A315306

/-- `A257170(n)+5*n` -/
def P7697970329926284283.Spec : Prop :=
  ∀ n, P7697970329926284283.a n = A315306 n

end A315306

/-! ## A315306.P14355947744575212651

`A188510(n)+A008706(n)`
-/

namespace A315306.P14355947744575212651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + A008706 n

end

end A315306.P14355947744575212651

namespace A315306

/-- `A188510(n)+A008706(n)` -/
def P14355947744575212651.Spec : Prop :=
  ∀ n, P14355947744575212651.a n = A315306 n

end A315306

/-! ## A315306.P4238248216640881070

`A008586(n)+A257170(n)+n`
-/

namespace A315306.P4238248216640881070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A257170 n + (n : ℤ))

end

end A315306.P4238248216640881070

namespace A315306

/-- `A008586(n)+A257170(n)+n` -/
def P4238248216640881070.Spec : Prop :=
  ∀ n, P4238248216640881070.a n = A315306 n

end A315306

/-! ## A315306.P8973127190660662009

`A008706(n)-A091337(n+2)`
-/

namespace A315306.P8973127190660662009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A091337 (n + 2)

end

end A315306.P8973127190660662009

namespace A315306

/-- `A008706(n)-A091337(n+2)` -/
def P8973127190660662009.Spec : Prop :=
  ∀ n, P8973127190660662009.a n = A315306 n

end A315306

/-! ## A315306.P14839914023221012667

`A046978(A022998(n))+A008706(n)`
-/

namespace A315306.P14839914023221012667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A022998 n).toNat + A008706 n

end

end A315306.P14839914023221012667

namespace A315306

/-- `A046978(A022998(n))+A008706(n)` -/
def P14839914023221012667.Spec : Prop :=
  ∀ n, P14839914023221012667.a n = A315306 n

end A315306

/-! ## A315306.P17590219537223435600

`A314672(n)+A004525(A047273(n+1))`
-/

namespace A315306.P17590219537223435600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004525 (A047273 (n + 1)).toNat

end

end A315306.P17590219537223435600

namespace A315306

/-- `A314672(n)+A004525(A047273(n+1))` -/
def P17590219537223435600.Spec : Prop :=
  ∀ n, P17590219537223435600.a n = A315306 n

end A315306

/-! ## A315306.P5236383380062746873

`A312506(n)+2*A004525(A004525(n))`
-/

namespace A315306.P5236383380062746873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + 2 * A004525 (A004525 n).toNat

end

end A315306.P5236383380062746873

namespace A315306

/-- `A312506(n)+2*A004525(A004525(n))` -/
def P5236383380062746873.Spec : Prop :=
  ∀ n, P5236383380062746873.a n = A315306 n

end A315306

/-! ## A315306.P5656337771275348549

`2*A314829(n)-A008574(n)`
-/

namespace A315306.P5656337771275348549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314829 n - A008574 n

end

end A315306.P5656337771275348549

namespace A315306

/-- `2*A314829(n)-A008574(n)` -/
def P5656337771275348549.Spec : Prop :=
  ∀ n, P5656337771275348549.a n = A315306 n

end A315306

/-! ## A315306.P5307870799117965396

`A315173(n)+A201629(A201629(n)/2)`
-/

namespace A315306.P5307870799117965396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n + A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A315306.P5307870799117965396

namespace A315306

/-- `A315173(n)+A201629(A201629(n)/2)` -/
def P5307870799117965396.Spec : Prop :=
  ∀ n, P5307870799117965396.a n = A315306 n

end A315306

/-! ## A315306.P17917642425388264976

`A315020(n)+A004525(A004525(n))`
-/

namespace A315306.P17917642425388264976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + A004525 (A004525 n).toNat

end

end A315306.P17917642425388264976

namespace A315306

/-- `A315020(n)+A004525(A004525(n))` -/
def P17917642425388264976.Spec : Prop :=
  ∀ n, P17917642425388264976.a n = A315306 n

end A315306

/-! ## A315306.P3338909698416856806

`A314026(n)+A075553(n)`
-/

namespace A315306.P3338909698416856806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A075553 n

end

end A315306.P3338909698416856806

namespace A315306

/-- `A314026(n)+A075553(n)` -/
def P3338909698416856806.Spec : Prop :=
  ∀ n, P3338909698416856806.a n = A315306 n

end A315306

/-! ## A315306.P11130218990902648908

`A312682(n)+2*A046978(n)`
-/

namespace A315306.P11130218990902648908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n + 2 * A046978 n

end

end A315306.P11130218990902648908

namespace A315306

/-- `A312682(n)+2*A046978(n)` -/
def P11130218990902648908.Spec : Prop :=
  ∀ n, P11130218990902648908.a n = A315306 n

end A315306

/-! ## A315306.P7202929521500195551

`abs(A008592(n)-A310419(n))`
-/

namespace A315306.P7202929521500195551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310419 n|

end

end A315306.P7202929521500195551

namespace A315306

/-- `abs(A008592(n)-A310419(n))` -/
def P7202929521500195551.Spec : Prop :=
  ∀ n, P7202929521500195551.a n = A315306 n

end A315306

/-! ## A315306.P11170865225430630634

`2*A008706(n)-A310419(n)`
-/

namespace A315306.P11170865225430630634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310419 n

end

end A315306.P11170865225430630634

namespace A315306

/-- `2*A008706(n)-A310419(n)` -/
def P11170865225430630634.Spec : Prop :=
  ∀ n, P11170865225430630634.a n = A315306 n

end A315306

/-! ## A315306.P10984966275408220080

`A008458(n)+A008574(n)-A310419(n)`
-/

namespace A315306.P10984966275408220080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310419 n)

end

end A315306.P10984966275408220080

namespace A315306

/-- `A008458(n)+A008574(n)-A310419(n)` -/
def P10984966275408220080.Spec : Prop :=
  ∀ n, P10984966275408220080.a n = A315306 n

end A315306

/-! ## A315306.P6792643200460323773

`A315061(n)+A046978(n)`
-/

namespace A315306.P6792643200460323773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A046978 n

end

end A315306.P6792643200460323773

namespace A315306

/-- `A315061(n)+A046978(n)` -/
def P6792643200460323773.Spec : Prop :=
  ∀ n, P6792643200460323773.a n = A315306 n

end A315306

/-! ## A315306.P10061247608411158889

`A004525(A004525(n))+A315320(n)-A004525(n)`
-/

namespace A315306.P10061247608411158889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315320 n - A004525 n)

end

end A315306.P10061247608411158889

namespace A315306

/-- `A004525(A004525(n))+A315320(n)-A004525(n)` -/
def P10061247608411158889.Spec : Prop :=
  ∀ n, P10061247608411158889.a n = A315306 n

end A315306

/-! ## A315306.P986948192182830406

`2*A315520(n)-A008458(n)`
-/

namespace A315306.P986948192182830406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315520 n - A008458 n

end

end A315306.P986948192182830406

namespace A315306

/-- `2*A315520(n)-A008458(n)` -/
def P986948192182830406.Spec : Prop :=
  ∀ n, P986948192182830406.a n = A315306 n

end A315306

/-! ## A315306.P7183721462406176487

`A074067(A310419(n))`
-/

namespace A315306.P7183721462406176487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310419 n).toNat

end

end A315306.P7183721462406176487

namespace A315306

/-- `A074067(A310419(n))` -/
def P7183721462406176487.Spec : Prop :=
  ∀ n, P7183721462406176487.a n = A315306 n

end A315306

/-!
# A315307: Coordination sequence Gal.6.616.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315307, the canonical program `A315307.P8009587205543921801` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315307 has offset 0).

The definition of A315307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315307.P15849665384326733895

`abs(A008592(n)-A310413(n))`
-/

namespace A315307.P15849665384326733895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310413 n|

end

end A315307.P15849665384326733895

namespace A315307

/-- `abs(A008592(n)-A310413(n))` -/
def P15849665384326733895.Spec : Prop :=
  ∀ n, P15849665384326733895.a n = A315307 n

end A315307

/-! ## A315307.P16925656928109118203

`2*A008706(n)-A310413(n)`
-/

namespace A315307.P16925656928109118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310413 n

end

end A315307.P16925656928109118203

namespace A315307

/-- `2*A008706(n)-A310413(n)` -/
def P16925656928109118203.Spec : Prop :=
  ∀ n, P16925656928109118203.a n = A315307 n

end A315307

/-! ## A315307.P8009587205543921801

`2*A314837(n)-A008574(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315307

/-- `2*A314837(n)-A008574(n)` -/
def P8009587205543921801.Spec : Prop :=
  ∀ n, P8009587205543921801.a n = A315307 n

theorem P8009587205543921801.correct : P8009587205543921801.Spec := by
  intro n
  simp only [A315307]

end A315307

/-! ## A315307.P9958680671498726127

`A052928(comp[12*n])+A008574(n)`
-/

namespace A315307.P9958680671498726127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A008574 n

end

end A315307.P9958680671498726127

namespace A315307

/-- `A052928(comp[12*n])+A008574(n)` -/
def P9958680671498726127.Spec : Prop :=
  ∀ n, P9958680671498726127.a n = A315307 n

end A315307

/-! ## A315307.P4834837680525988887

`A103517(A314837(n)-(2*n+1))`
-/

namespace A315307.P4834837680525988887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314837 n - (2 * n + 1 : ℤ)).toNat

end

end A315307.P4834837680525988887

namespace A315307

/-- `A103517(A314837(n)-(2*n+1))` -/
def P4834837680525988887.Spec : Prop :=
  ∀ n, P4834837680525988887.a n = A315307 n

end A315307

/-! ## A315307.P1755845598123014635

`A004275(A314837(n)-A004273(n))`
-/

namespace A315307.P1755845598123014635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314837 n - A004273 n).toNat

end

end A315307.P1755845598123014635

namespace A315307

/-- `A004275(A314837(n)-A004273(n))` -/
def P1755845598123014635.Spec : Prop :=
  ∀ n, P1755845598123014635.a n = A315307 n

end A315307

/-! ## A315307.P3968958631232431720

`A004277(A314837(n)-A004277(n))`
-/

namespace A315307.P3968958631232431720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314837 n - A004277 n).toNat

end

end A315307.P3968958631232431720

namespace A315307

/-- `A004277(A314837(n)-A004277(n))` -/
def P3968958631232431720.Spec : Prop :=
  ∀ n, P3968958631232431720.a n = A315307 n

end A315307

/-! ## A315307.P7430914918358682658

`A008458(n)+A008574(n)-A310413(n)`
-/

namespace A315307.P7430914918358682658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310413 n)

end

end A315307.P7430914918358682658

namespace A315307

/-- `A008458(n)+A008574(n)-A310413(n)` -/
def P7430914918358682658.Spec : Prop :=
  ∀ n, P7430914918358682658.a n = A315307 n

end A315307

/-! ## A315307.P18112988006011800447

`A004273(A314837(n)-n)-A004273(n)`
-/

namespace A315307.P18112988006011800447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314837 n - (n : ℤ)).toNat - A004273 n

end

end A315307.P18112988006011800447

namespace A315307

/-- `A004273(A314837(n)-n)-A004273(n)` -/
def P18112988006011800447.Spec : Prop :=
  ∀ n, P18112988006011800447.a n = A315307 n

end A315307

/-! ## A315307.P3669249548499452224

`A310413(n)+A005843(A008706(n)-A310413(n))`
-/

namespace A315307.P3669249548499452224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n + A005843 (A008706 n - A310413 n).toNat

end

end A315307.P3669249548499452224

namespace A315307

/-- `A310413(n)+A005843(A008706(n)-A310413(n))` -/
def P3669249548499452224.Spec : Prop :=
  ∀ n, P3669249548499452224.a n = A315307 n

end A315307

/-! ## A315307.P160044137261247859

`A004275(A314837(n))-A004275(2*n)`
-/

namespace A315307.P160044137261247859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314837 n).toNat - A004275 (2 * n)

end

end A315307.P160044137261247859

namespace A315307

/-- `A004275(A314837(n))-A004275(2*n)` -/
def P160044137261247859.Spec : Prop :=
  ∀ n, P160044137261247859.a n = A315307 n

end A315307

/-! ## A315307.P17147836265136140263

`A005843(A008706(n))-A310413(n)`
-/

namespace A315307.P17147836265136140263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310413 n

end

end A315307.P17147836265136140263

namespace A315307

/-- `A005843(A008706(n))-A310413(n)` -/
def P17147836265136140263.Spec : Prop :=
  ∀ n, P17147836265136140263.a n = A315307 n

end A315307

/-! ## A315307.P17503143528778732717

`A310371(2*n)-4*n`
-/

namespace A315307.P17503143528778732717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 (2 * n) - (4 * n : ℤ)

end

end A315307.P17503143528778732717

namespace A315307

/-- `A310371(2*n)-4*n` -/
def P17503143528778732717.Spec : Prop :=
  ∀ n, P17503143528778732717.a n = A315307 n

end A315307

/-! ## A315307.P4849381437955891256

`2*A008574(2*n)-A315340(2*n)`
-/

namespace A315307.P4849381437955891256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315340 (2 * n)

end

end A315307.P4849381437955891256

namespace A315307

/-- `2*A008574(2*n)-A315340(2*n)` -/
def P4849381437955891256.Spec : Prop :=
  ∀ n, P4849381437955891256.a n = A315307 n

end A315307

/-!
# A315308: Coordination sequence Gal.5.299.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315308, the canonical program `A315308.P10890972487147772624` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315308 has offset 0).

The definition of A315308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315308.P10890972487147772624

`abs(A008592(n)-A310412(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315308

/-- `abs(A008592(n)-A310412(n))` -/
def P10890972487147772624.Spec : Prop :=
  ∀ n, P10890972487147772624.a n = A315308 n

theorem P10890972487147772624.correct : P10890972487147772624.Spec := by
  intro n
  simp only [A315308]

end A315308

/-! ## A315308.P13084789236339104066

`2*A008706(n)-A310412(n)`
-/

namespace A315308.P13084789236339104066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310412 n

end

end A315308.P13084789236339104066

namespace A315308

/-- `2*A008706(n)-A310412(n)` -/
def P13084789236339104066.Spec : Prop :=
  ∀ n, P13084789236339104066.a n = A315308 n

end A315308

/-! ## A315308.P13246241683571982341

`A008706(2*n)-2*A265187(2*n+1)`
-/

namespace A315308.P13246241683571982341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) - 2 * A265187 (2 * n + 1)

end

end A315308.P13246241683571982341

namespace A315308

/-- `A008706(2*n)-2*A265187(2*n+1)` -/
def P13246241683571982341.Spec : Prop :=
  ∀ n, P13246241683571982341.a n = A315308 n

end A315308

/-! ## A315308.P12152747863572329545

`A194513(A020705(n))+A008706(n)`
-/

namespace A315308.P12152747863572329545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A020705 n).toNat + A008706 n

end

end A315308.P12152747863572329545

namespace A315308

/-- `A194513(A020705(n))+A008706(n)` -/
def P12152747863572329545.Spec : Prop :=
  ∀ n, P12152747863572329545.a n = A315308 n

end A315308

/-! ## A315308.P8759214507424170008

`A008458(n)+A008574(n)-A310412(n)`
-/

namespace A315308.P8759214507424170008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310412 n)

end

end A315308.P8759214507424170008

namespace A315308

/-- `A008458(n)+A008574(n)-A310412(n)` -/
def P8759214507424170008.Spec : Prop :=
  ∀ n, P8759214507424170008.a n = A315308 n

end A315308

/-! ## A315308.P16697763534728093781

`A008611(A047223(2*(n+1)))+A004273(2*n)`
-/

namespace A315308.P16697763534728093781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A047223 (2 * (n + 1))).toNat + A004273 (2 * n)

end

end A315308.P16697763534728093781

namespace A315308

/-- `A008611(A047223(2*(n+1)))+A004273(2*n)` -/
def P16697763534728093781.Spec : Prop :=
  ∀ n, P16697763534728093781.a n = A315308 n

end A315308

/-! ## A315308.P10455642836990771711

`2*A315523(n)-A008458(n)`
-/

namespace A315308.P10455642836990771711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315523 n - A008458 n

end

end A315308.P10455642836990771711

namespace A315308

/-- `2*A315523(n)-A008458(n)` -/
def P10455642836990771711.Spec : Prop :=
  ∀ n, P10455642836990771711.a n = A315308 n

end A315308

/-! ## A315308.P11149577483232908259

`A008458(n)-A005843(A008458(n)-A315523(n))`
-/

namespace A315308.P11149577483232908259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315523 n).toNat

end

end A315308.P11149577483232908259

namespace A315308

/-- `A008458(n)-A005843(A008458(n)-A315523(n))` -/
def P11149577483232908259.Spec : Prop :=
  ∀ n, P11149577483232908259.a n = A315308 n

end A315308

/-! ## A315308.P4729118217469856717

`A005843(A008706(n))-A310412(n)`
-/

namespace A315308.P4729118217469856717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310412 n

end

end A315308.P4729118217469856717

namespace A315308

/-- `A005843(A008706(n))-A310412(n)` -/
def P4729118217469856717.Spec : Prop :=
  ∀ n, P4729118217469856717.a n = A315308 n

end A315308

/-! ## A315308.P10429659268739638408

`A005843(A315523(n))-A008458(n)`
-/

namespace A315308.P10429659268739638408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315523 n).toNat - A008458 n

end

end A315308.P10429659268739638408

namespace A315308

/-- `A005843(A315523(n))-A008458(n)` -/
def P10429659268739638408.Spec : Prop :=
  ∀ n, P10429659268739638408.a n = A315308 n

end A315308

/-! ## A315308.P3967898483160678991

`A315653(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315308.P3967898483160678991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315308.P3967898483160678991

namespace A315308

/-- `A315653(2*n)+A008458(n+1)-(12*n+6)` -/
def P3967898483160678991.Spec : Prop :=
  ∀ n, P3967898483160678991.a n = A315308 n

end A315308

/-! ## A315308.P1851071230298287472

`∑{digits}[A051885(n), A315307(#)]`
-/

namespace A315308.P1851071230298287472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A315307 x).sum

end

end A315308.P1851071230298287472

namespace A315308

/-- `∑{digits}[A051885(n), A315307(#)]` -/
def P1851071230298287472.Spec : Prop :=
  ∀ n, P1851071230298287472.a n = A315308 n

end A315308

/-! ## A315308.P3256071696940129685

`A315510(n)-A004396(n-A004396(n))`
-/

namespace A315308.P3256071696940129685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315308.P3256071696940129685

namespace A315308

/-- `A315510(n)-A004396(n-A004396(n))` -/
def P3256071696940129685.Spec : Prop :=
  ∀ n, P3256071696940129685.a n = A315308 n

end A315308

/-!
# A315309: Coordination sequence Gal.4.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315309, the canonical program `A315309.P3002234101704231272` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315309 has offset 0).

The definition of A315309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315309.P3002234101704231272

`A060464(A008574(n)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315309

/-- `A060464(A008574(n)+1)` -/
def P3002234101704231272.Spec : Prop :=
  ∀ n, P3002234101704231272.a n = A315309 n

theorem P3002234101704231272.correct : P3002234101704231272.Spec := by
  intro n
  simp only [A315309]

end A315309

/-! ## A315309.P17666024318925275377

`A315423(n)+A238468(n)`
-/

namespace A315309.P17666024318925275377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n + A238468 n

end

end A315309.P17666024318925275377

namespace A315309

/-- `A315423(n)+A238468(n)` -/
def P17666024318925275377.Spec : Prop :=
  ∀ n, P17666024318925275377.a n = A315309 n

end A315309

/-! ## A315309.P15085378241109647268

`A315452(n)-A238470(n)`
-/

namespace A315309.P15085378241109647268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - A238470 n

end

end A315309.P15085378241109647268

namespace A315309

/-- `A315452(n)-A238470(n)` -/
def P15085378241109647268.Spec : Prop :=
  ∀ n, P15085378241109647268.a n = A315309 n

end A315309

/-! ## A315309.P386226822646951052

`abs(A008592(n)-A310411(n))`
-/

namespace A315309.P386226822646951052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310411 n|

end

end A315309.P386226822646951052

namespace A315309

/-- `abs(A008592(n)-A310411(n))` -/
def P386226822646951052.Spec : Prop :=
  ∀ n, P386226822646951052.a n = A315309 n

end A315309

/-! ## A315309.P6357708066841414191

`A060464(A004280(2*(n+1)))`
-/

namespace A315309.P6357708066841414191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A004280 (2 * (n + 1))).toNat

end

end A315309.P6357708066841414191

namespace A315309

/-- `A060464(A004280(2*(n+1)))` -/
def P6357708066841414191.Spec : Prop :=
  ∀ n, P6357708066841414191.a n = A315309 n

end A315309

/-! ## A315309.P5221005710352889280

`A060464(A004277(2*n)+1)`
-/

namespace A315309.P5221005710352889280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A004277 (2 * n) + 1).toNat

end

end A315309.P5221005710352889280

namespace A315309

/-- `A060464(A004277(2*n)+1)` -/
def P5221005710352889280.Spec : Prop :=
  ∀ n, P5221005710352889280.a n = A315309 n

end A315309

/-! ## A315309.P14915082915707668046

`A060464(A257088(2*n)+1)`
-/

namespace A315309.P14915082915707668046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A257088 (2 * n) + 1).toNat

end

end A315309.P14915082915707668046

namespace A315309

/-- `A060464(A257088(2*n)+1)` -/
def P14915082915707668046.Spec : Prop :=
  ∀ n, P14915082915707668046.a n = A315309 n

end A315309

/-! ## A315309.P10452204663682778916

`A060464(A004273(2*n)+2)`
-/

namespace A315309.P10452204663682778916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A004273 (2 * n) + 2).toNat

end

end A315309.P10452204663682778916

namespace A315309

/-- `A060464(A004273(2*n)+2)` -/
def P10452204663682778916.Spec : Prop :=
  ∀ n, P10452204663682778916.a n = A315309 n

end A315309

/-! ## A315309.P3754120159400874273

`A060464(A008486(n)+1+n)`
-/

namespace A315309.P3754120159400874273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A008486 n + 1 + (n : ℤ)).toNat

end

end A315309.P3754120159400874273

namespace A315309

/-- `A060464(A008486(n)+1+n)` -/
def P3754120159400874273.Spec : Prop :=
  ∀ n, P3754120159400874273.a n = A315309 n

end A315309

/-! ## A315309.P8378057361679479872

`A060464(A033627(n+2)+n)`
-/

namespace A315309.P8378057361679479872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A033627 (n + 2) + (n : ℤ)).toNat

end

end A315309.P8378057361679479872

namespace A315309

/-- `A060464(A033627(n+2)+n)` -/
def P8378057361679479872.Spec : Prop :=
  ∀ n, P8378057361679479872.a n = A315309 n

end A315309

/-! ## A315309.P9412976871507535318

`A310503(n)+2*A238469(n)`
-/

namespace A315309.P9412976871507535318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + 2 * A238469 n

end

end A315309.P9412976871507535318

namespace A315309

/-- `A310503(n)+2*A238469(n)` -/
def P9412976871507535318.Spec : Prop :=
  ∀ n, P9412976871507535318.a n = A315309 n

end A315309

/-! ## A315309.P15568464227782451864

`2*A008706(n)-A310411(n)`
-/

namespace A315309.P15568464227782451864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310411 n

end

end A315309.P15568464227782451864

namespace A315309

/-- `2*A008706(n)-A310411(n)` -/
def P15568464227782451864.Spec : Prop :=
  ∀ n, P15568464227782451864.a n = A315309 n

end A315309

/-! ## A315309.P505461468988531657

`2*A314838(n)-A008574(n)`
-/

namespace A315309.P505461468988531657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314838 n - A008574 n

end

end A315309.P505461468988531657

namespace A315309

/-- `2*A314838(n)-A008574(n)` -/
def P505461468988531657.Spec : Prop :=
  ∀ n, P505461468988531657.a n = A315309 n

end A315309

/-! ## A315309.P863510709831295844

`A315634(n)-2*A238470(n)`
-/

namespace A315309.P863510709831295844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n - 2 * A238470 n

end

end A315309.P863510709831295844

namespace A315309

/-- `A315634(n)-2*A238470(n)` -/
def P863510709831295844.Spec : Prop :=
  ∀ n, P863510709831295844.a n = A315309 n

end A315309

/-! ## A315309.P11084475620884368824

`A060464(record[A014682(n)]+n+2)`
-/

namespace A315309.P11084475620884368824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2 : ℤ)).toNat

end

end A315309.P11084475620884368824

namespace A315309

/-- `A060464(record[A014682(n)]+n+2)` -/
def P11084475620884368824.Spec : Prop :=
  ∀ n, P11084475620884368824.a n = A315309 n

end A315309

/-! ## A315309.P7114416392205914337

`A060464(A004275(2*n+1)+1)`
-/

namespace A315309.P7114416392205914337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A004275 (2 * n + 1) + 1).toNat

end

end A315309.P7114416392205914337

namespace A315309

/-- `A060464(A004275(2*n+1)+1)` -/
def P7114416392205914337.Spec : Prop :=
  ∀ n, P7114416392205914337.a n = A315309 n

end A315309

/-! ## A315309.P16863986881584976629

`A004275(A225875(n+1)+2*n)`
-/

namespace A315309.P16863986881584976629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A225875 (n + 1) + (2 * n : ℤ)).toNat

end

end A315309.P16863986881584976629

namespace A315309

/-- `A004275(A225875(n+1)+2*n)` -/
def P16863986881584976629.Spec : Prop :=
  ∀ n, P16863986881584976629.a n = A315309 n

end A315309

/-! ## A315309.P16771304578411575432

`A004275(A225875(n+1)+n+n)`
-/

namespace A315309.P16771304578411575432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A225875 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A315309.P16771304578411575432

namespace A315309

/-- `A004275(A225875(n+1)+n+n)` -/
def P16771304578411575432.Spec : Prop :=
  ∀ n, P16771304578411575432.a n = A315309 n

end A315309

/-! ## A315309.P16499089380646670694

`A008486(2*n)-2*A057357(n+1)`
-/

namespace A315309.P16499089380646670694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - 2 * A057357 (n + 1)

end

end A315309.P16499089380646670694

namespace A315309

/-- `A008486(2*n)-2*A057357(n+1)` -/
def P16499089380646670694.Spec : Prop :=
  ∀ n, P16499089380646670694.a n = A315309 n

end A315309

/-! ## A315309.P15374069244966456430

`A008458(2*n)-2*A083033(2*n+1)`
-/

namespace A315309.P15374069244966456430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n) - 2 * A083033 (2 * n + 1)

end

end A315309.P15374069244966456430

namespace A315309

/-- `A008458(2*n)-2*A083033(2*n+1)` -/
def P15374069244966456430.Spec : Prop :=
  ∀ n, P15374069244966456430.a n = A315309 n

end A315309

/-!
# A315310: Coordination sequence Gal.6.618.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315310, the canonical program `A315310.P7665288315305926957` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315310 has offset 0).

The definition of A315310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315310.P7665288315305926957

`abs(A008592(n)-A310410(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315310

/-- `abs(A008592(n)-A310410(n))` -/
def P7665288315305926957.Spec : Prop :=
  ∀ n, P7665288315305926957.a n = A315310 n

theorem P7665288315305926957.correct : P7665288315305926957.Spec := by
  intro n
  simp only [A315310]

end A315310

/-! ## A315310.P8065951857882340108

`2*A008706(n)-A310410(n)`
-/

namespace A315310.P8065951857882340108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310410 n

end

end A315310.P8065951857882340108

namespace A315310

/-- `2*A008706(n)-A310410(n)` -/
def P8065951857882340108.Spec : Prop :=
  ∀ n, P8065951857882340108.a n = A315310 n

end A315310

/-! ## A315310.P11538281864033216852

`A315026(n)+A004396(A004525(n))`
-/

namespace A315310.P11538281864033216852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A004396 (A004525 n).toNat

end

end A315310.P11538281864033216852

namespace A315310

/-- `A315026(n)+A004396(A004525(n))` -/
def P11538281864033216852.Spec : Prop :=
  ∀ n, P11538281864033216852.a n = A315310 n

end A315310

/-! ## A315310.P15565388020035396010

`A315030(n)+A004525(A004396(n))`
-/

namespace A315310.P15565388020035396010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315030 n + A004525 (A004396 n).toNat

end

end A315310.P15565388020035396010

namespace A315310

/-- `A315030(n)+A004525(A004396(n))` -/
def P15565388020035396010.Spec : Prop :=
  ∀ n, P15565388020035396010.a n = A315310 n

end A315310

/-! ## A315310.P8705455198477949840

`A314683(n)+A004525(A004396(n)+n)`
-/

namespace A315310.P8705455198477949840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315310.P8705455198477949840

namespace A315310

/-- `A314683(n)+A004525(A004396(n)+n)` -/
def P8705455198477949840.Spec : Prop :=
  ∀ n, P8705455198477949840.a n = A315310 n

end A315310

/-! ## A315310.P2210490920748948251

`A008458(n)+A008574(n)-A310410(n)`
-/

namespace A315310.P2210490920748948251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310410 n)

end

end A315310.P2210490920748948251

namespace A315310

/-- `A008458(n)+A008574(n)-A310410(n)` -/
def P2210490920748948251.Spec : Prop :=
  ∀ n, P2210490920748948251.a n = A315310 n

end A315310

/-! ## A315310.P17523531037318253504

`2*A000007(n)+A008592(n)-A310410(n)`
-/

namespace A315310.P17523531037318253504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n + (A008592 n - A310410 n)

end

end A315310.P17523531037318253504

namespace A315310

/-- `2*A000007(n)+A008592(n)-A310410(n)` -/
def P17523531037318253504.Spec : Prop :=
  ∀ n, P17523531037318253504.a n = A315310 n

end A315310

/-! ## A315310.P16819804971594339581

`A004396(A004525(n))+A315322(n)-A004525(n)`
-/

namespace A315310.P16819804971594339581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315322 n - A004525 n)

end

end A315310.P16819804971594339581

namespace A315310

/-- `A004396(A004525(n))+A315322(n)-A004525(n)` -/
def P16819804971594339581.Spec : Prop :=
  ∀ n, P16819804971594339581.a n = A315310 n

end A315310

/-! ## A315310.P18194310485879739808

`A315260(n)+Δ[A011865(n)]`
-/

namespace A315310.P18194310485879739808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n + (f1 (n + 1) - f1 n)

end

end A315310.P18194310485879739808

namespace A315310

/-- `A315260(n)+Δ[A011865(n)]` -/
def P18194310485879739808.Spec : Prop :=
  ∀ n, P18194310485879739808.a n = A315310 n

end A315310

/-! ## A315310.P6743074598862113730

`A315512(n)-A004396(n-A004525(n))`
-/

namespace A315310.P6743074598862113730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315310.P6743074598862113730

namespace A315310

/-- `A315512(n)-A004396(n-A004525(n))` -/
def P6743074598862113730.Spec : Prop :=
  ∀ n, P6743074598862113730.a n = A315310 n

end A315310

/-! ## A315310.P6159137153878429666

`A005843(A008706(n))-A310410(n)`
-/

namespace A315310.P6159137153878429666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310410 n

end

end A315310.P6159137153878429666

namespace A315310

/-- `A005843(A008706(n))-A310410(n)` -/
def P6159137153878429666.Spec : Prop :=
  ∀ n, P6159137153878429666.a n = A315310 n

end A315310

/-!
# A315311: Coordination sequence Gal.3.51.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315311, the canonical program `A315311.P11313346348871612592` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315311 has offset 0).

The definition of A315311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315311.P9521344357990145356

`A004273(round(8*n/5))+2*n+1`
-/

namespace A315311.P9521344357990145356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))).toNat + (2 * n + 1 : ℤ)

end

end A315311.P9521344357990145356

namespace A315311

/-- `A004273(round(8*n/5))+2*n+1` -/
def P9521344357990145356.Spec : Prop :=
  ∀ n, P9521344357990145356.a n = A315311 n

end A315311

/-! ## A315311.P11313346348871612592

`round(8*n/5)+A004277(n)+round(8*n/5)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315311

/-- `round(8*n/5)+A004277(n)+round(8*n/5)` -/
def P11313346348871612592.Spec : Prop :=
  ∀ n, P11313346348871612592.a n = A315311 n

theorem P11313346348871612592.correct : P11313346348871612592.Spec := by
  intro n
  simp only [A315311]

end A315311

/-! ## A315311.P15284205835442626910

`A004275(round(A154609(n)/5))`
-/

namespace A315311.P15284205835442626910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A154609 n : ℚ) / 5)).toNat

end

end A315311.P15284205835442626910

namespace A315311

/-- `A004275(round(A154609(n)/5))` -/
def P15284205835442626910.Spec : Prop :=
  ∀ n, P15284205835442626910.a n = A315311 n

end A315311

/-! ## A315311.P18033192920482721976

`abs(A008592(n)-A310409(n))`
-/

namespace A315311.P18033192920482721976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310409 n|

end

end A315311.P18033192920482721976

namespace A315311

/-- `abs(A008592(n)-A310409(n))` -/
def P18033192920482721976.Spec : Prop :=
  ∀ n, P18033192920482721976.a n = A315311 n

end A315311

/-! ## A315311.P11464976282744115572

`A316026(n)+Δ[A011858(n)]`
-/

namespace A315311.P11464976282744115572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316026 n + (f1 (n + 1) - f1 n)

end

end A315311.P11464976282744115572

namespace A315311

/-- `A316026(n)+Δ[A011858(n)]` -/
def P11464976282744115572.Spec : Prop :=
  ∀ n, P11464976282744115572.a n = A315311 n

end A315311

/-! ## A315311.P13282625985178511395

`A004275(A047516(n+1)+n)`
-/

namespace A315311.P13282625985178511395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047516 (n + 1) + (n : ℤ)).toNat

end

end A315311.P13282625985178511395

namespace A315311

/-- `A004275(A047516(n+1)+n)` -/
def P13282625985178511395.Spec : Prop :=
  ∀ n, P13282625985178511395.a n = A315311 n

end A315311

/-! ## A315311.P3487385719361858044

`A047326(A008486(n)+1)+n`
-/

namespace A315311.P3487385719361858044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (A008486 n + 1).toNat + (n : ℤ)

end

end A315311.P3487385719361858044

namespace A315311

/-- `A047326(A008486(n)+1)+n` -/
def P3487385719361858044.Spec : Prop :=
  ∀ n, P3487385719361858044.a n = A315311 n

end A315311

/-! ## A315311.P2612351347334005996

`2*A250120(n)-A312475(n)`
-/

namespace A315311.P2612351347334005996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A312475 n

end

end A315311.P2612351347334005996

namespace A315311

/-- `2*A250120(n)-A312475(n)` -/
def P2612351347334005996.Spec : Prop :=
  ∀ n, P2612351347334005996.a n = A315311 n

end A315311

/-! ## A315311.P12413137676931745890

`A008458(n)-Δ[A185170(n+1)]`
-/

namespace A315311.P12413137676931745890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315311.P12413137676931745890

namespace A315311

/-- `A008458(n)-Δ[A185170(n+1)]` -/
def P12413137676931745890.Spec : Prop :=
  ∀ n, P12413137676931745890.a n = A315311 n

end A315311

/-! ## A315311.P2921974809067427967

`A008458(n)-Δ[2*A011858(n)]`
-/

namespace A315311.P2921974809067427967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315311.P2921974809067427967

namespace A315311

/-- `A008458(n)-Δ[2*A011858(n)]` -/
def P2921974809067427967.Spec : Prop :=
  ∀ n, P2921974809067427967.a n = A315311 n

end A315311

/-! ## A315311.P10601617010525743175

`A004275(A047448(n+1)+1+n)`
-/

namespace A315311.P10601617010525743175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047448 (n + 1) + 1 + (n : ℤ)).toNat

end

end A315311.P10601617010525743175

namespace A315311

/-- `A004275(A047448(n+1)+1+n)` -/
def P10601617010525743175.Spec : Prop :=
  ∀ n, P10601617010525743175.a n = A315311 n

end A315311

/-! ## A315311.P7457021666418476984

`A004277(A047516(n+1)-1+n)`
-/

namespace A315311.P7457021666418476984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047516 (n + 1) - 1 + (n : ℤ)).toNat

end

end A315311.P7457021666418476984

namespace A315311

/-- `A004277(A047516(n+1)-1+n)` -/
def P7457021666418476984.Spec : Prop :=
  ∀ n, P7457021666418476984.a n = A315311 n

end A315311

/-! ## A315311.P16995875216122190547

`A022144(n)-A047326(2*n+1)`
-/

namespace A315311.P16995875216122190547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047326 (2 * n + 1)

end

end A315311.P16995875216122190547

namespace A315311

/-- `A022144(n)-A047326(2*n+1)` -/
def P16995875216122190547.Spec : Prop :=
  ∀ n, P16995875216122190547.a n = A315311 n

end A315311

/-! ## A315311.P5451212745613611215

`A004275(A057354(4*n+1)+n+1)`
-/

namespace A315311.P5451212745613611215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A057354 (4 * n + 1) + (n + 1 : ℤ)).toNat

end

end A315311.P5451212745613611215

namespace A315311

/-- `A004275(A057354(4*n+1)+n+1)` -/
def P5451212745613611215.Spec : Prop :=
  ∀ n, P5451212745613611215.a n = A315311 n

end A315311

/-! ## A315311.P17544429944744152947

`A008574(2*n)-A047326(2*n+1)`
-/

namespace A315311.P17544429944744152947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047326 (2 * n + 1)

end

end A315311.P17544429944744152947

namespace A315311

/-- `A008574(2*n)-A047326(2*n+1)` -/
def P17544429944744152947.Spec : Prop :=
  ∀ n, P17544429944744152947.a n = A315311 n

end A315311

/-! ## A315311.P8331755008764227406

`A008486(2*n)-2*A057354(n+1)`
-/

namespace A315311.P8331755008764227406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - 2 * A057354 (n + 1)

end

end A315311.P8331755008764227406

namespace A315311

/-- `A008486(2*n)-2*A057354(n+1)` -/
def P8331755008764227406.Spec : Prop :=
  ∀ n, P8331755008764227406.a n = A315311 n

end A315311

/-! ## A315311.P14946543296569254223

`A312928(2*n)-A265227(2*n+1)`
-/

namespace A315311.P14946543296569254223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 (2 * n) - A265227 (2 * n + 1)

end

end A315311.P14946543296569254223

namespace A315311

/-- `A312928(2*n)-A265227(2*n+1)` -/
def P14946543296569254223.Spec : Prop :=
  ∀ n, P14946543296569254223.a n = A315311 n

end A315311

/-! ## A315311.P1237170971705739270

`2*n+A250120(n)-A047486(n+1)`
-/

namespace A315311.P1237170971705739270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A250120 n - A047486 (n + 1))

end

end A315311.P1237170971705739270

namespace A315311

/-- `2*n+A250120(n)-A047486(n+1)` -/
def P1237170971705739270.Spec : Prop :=
  ∀ n, P1237170971705739270.a n = A315311 n

end A315311

/-! ## A315311.P14533830819145316954

`A008706(2*n)-2*A047263(2*n+1)`
-/

namespace A315311.P14533830819145316954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) - 2 * A047263 (2 * n + 1)

end

end A315311.P14533830819145316954

namespace A315311

/-- `A008706(2*n)-2*A047263(2*n+1)` -/
def P14533830819145316954.Spec : Prop :=
  ∀ n, P14533830819145316954.a n = A315311 n

end A315311

/-! ## A315311.P10874219613085448989

`A004275(2*n+1)+A286717(2*n+1)-1`
-/

namespace A315311.P10874219613085448989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A286717 (2 * n + 1) - 1)

end

end A315311.P10874219613085448989

namespace A315311

/-- `A004275(2*n+1)+A286717(2*n+1)-1` -/
def P10874219613085448989.Spec : Prop :=
  ∀ n, P10874219613085448989.a n = A315311 n

end A315311

/-!
# A315312: Coordination sequence Gal.6.639.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315312, the canonical program `A315312.P652016832202607211` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315312 has offset 0).

The definition of A315312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315312.P482135001819988028

`abs(A008592(n)-A310408(n))`
-/

namespace A315312.P482135001819988028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310408 n|

end

end A315312.P482135001819988028

namespace A315312

/-- `abs(A008592(n)-A310408(n))` -/
def P482135001819988028.Spec : Prop :=
  ∀ n, P482135001819988028.a n = A315312 n

end A315312

/-! ## A315312.P652016832202607211

`A315261(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315312

/-- `A315261(n)+Δ[A011864(n)]` -/
def P652016832202607211.Spec : Prop :=
  ∀ n, P652016832202607211.a n = A315312 n

theorem P652016832202607211.correct : P652016832202607211.Spec := by
  intro n
  simp only [A315312]

end A315312

/-! ## A315312.P7508169517166500090

`2*A008706(n)-A310408(n)`
-/

namespace A315312.P7508169517166500090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310408 n

end

end A315312.P7508169517166500090

namespace A315312

/-- `2*A008706(n)-A310408(n)` -/
def P7508169517166500090.Spec : Prop :=
  ∀ n, P7508169517166500090.a n = A315312 n

end A315312

/-! ## A315312.P18156850662118594234

`A315208(n)+Δ[2*A011864(n)]`
-/

namespace A315312.P18156850662118594234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n + (f1 (n + 1) - f1 n)

end

end A315312.P18156850662118594234

namespace A315312

/-- `A315208(n)+Δ[2*A011864(n)]` -/
def P18156850662118594234.Spec : Prop :=
  ∀ n, P18156850662118594234.a n = A315312 n

end A315312

/-! ## A315312.P597808304570267561

`A008458(n)+A008574(n)-A310408(n)`
-/

namespace A315312.P597808304570267561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310408 n)

end

end A315312.P597808304570267561

namespace A315312

/-- `A008458(n)+A008574(n)-A310408(n)` -/
def P597808304570267561.Spec : Prop :=
  ∀ n, P597808304570267561.a n = A315312 n

end A315312

/-! ## A315312.P12146299671913091477

`A000038(n)-1+A017281(n)-A310408(n)`
-/

namespace A315312.P12146299671913091477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - 1 + (A017281 n - A310408 n)

end

end A315312.P12146299671913091477

namespace A315312

/-- `A000038(n)-1+A017281(n)-A310408(n)` -/
def P12146299671913091477.Spec : Prop :=
  ∀ n, P12146299671913091477.a n = A315312 n

end A315312

/-! ## A315312.P17336493388011478057

`A310408(n)+A005843(A008706(n)-A310408(n))`
-/

namespace A315312.P17336493388011478057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310408 n + A005843 (A008706 n - A310408 n).toNat

end

end A315312.P17336493388011478057

namespace A315312

/-- `A310408(n)+A005843(A008706(n)-A310408(n))` -/
def P17336493388011478057.Spec : Prop :=
  ∀ n, P17336493388011478057.a n = A315312 n

end A315312

/-! ## A315312.P2077867751749390487

`2*A315526(n)-A008458(n)`
-/

namespace A315312.P2077867751749390487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315526 n - A008458 n

end

end A315312.P2077867751749390487

namespace A315312

/-- `2*A315526(n)-A008458(n)` -/
def P2077867751749390487.Spec : Prop :=
  ∀ n, P2077867751749390487.a n = A315312 n

end A315312

/-! ## A315312.P7925213762106240772

`A103517(A315526(n)-A016777(n))`
-/

namespace A315312.P7925213762106240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315526 n - A016777 n).toNat

end

end A315312.P7925213762106240772

namespace A315312

/-- `A103517(A315526(n)-A016777(n))` -/
def P7925213762106240772.Spec : Prop :=
  ∀ n, P7925213762106240772.a n = A315312 n

end A315312

/-! ## A315312.P14196079568557408158

`A008458(n)-A005843(A008458(n)-A315526(n))`
-/

namespace A315312.P14196079568557408158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315526 n).toNat

end

end A315312.P14196079568557408158

namespace A315312

/-- `A008458(n)-A005843(A008458(n)-A315526(n))` -/
def P14196079568557408158.Spec : Prop :=
  ∀ n, P14196079568557408158.a n = A315312 n

end A315312

/-! ## A315312.P265077288992660903

`A017281(n)-A004442(A310408(n))`
-/

namespace A315312.P265077288992660903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310408 n).toNat

end

end A315312.P265077288992660903

namespace A315312

/-- `A017281(n)-A004442(A310408(n))` -/
def P265077288992660903.Spec : Prop :=
  ∀ n, P265077288992660903.a n = A315312 n

end A315312

/-! ## A315312.P11615738620644394797

`A005843(A008706(n))-A310408(n)`
-/

namespace A315312.P11615738620644394797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310408 n

end

end A315312.P11615738620644394797

namespace A315312

/-- `A005843(A008706(n))-A310408(n)` -/
def P11615738620644394797.Spec : Prop :=
  ∀ n, P11615738620644394797.a n = A315312 n

end A315312

/-! ## A315312.P6642423904246868302

`A005843(A315526(n))-A008458(n)`
-/

namespace A315312.P6642423904246868302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315526 n).toNat - A008458 n

end

end A315312.P6642423904246868302

namespace A315312

/-- `A005843(A315526(n))-A008458(n)` -/
def P6642423904246868302.Spec : Prop :=
  ∀ n, P6642423904246868302.a n = A315312 n

end A315312

/-! ## A315312.P11427134966364478496

`A315733(2*n)+2-A001281(2*n+1)`
-/

namespace A315312.P11427134966364478496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 (2 * n) + (2 - A001281 (2 * n + 1))

end

end A315312.P11427134966364478496

namespace A315312

/-- `A315733(2*n)+2-A001281(2*n+1)` -/
def P11427134966364478496.Spec : Prop :=
  ∀ n, P11427134966364478496.a n = A315312 n

end A315312

/-! ## A315312.P17646587433219563889

`A315733(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315312.P17646587433219563889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315312.P17646587433219563889

namespace A315312

/-- `A315733(2*n)+A008458(n+1)-(12*n+6)` -/
def P17646587433219563889.Spec : Prop :=
  ∀ n, P17646587433219563889.a n = A315312 n

end A315312

/-!
# A315313: Coordination sequence Gal.4.101.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315313, there is no canonical definition to state claims against.
-/

/-! ## A315313.P18309676829355456525

`record[A315312(n)-A018814(n)]`
-/

namespace A315313.P18309676829355456525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n - A018814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315313.P18309676829355456525

/-! ## A315313.P4900984366617615106

`A315512(n)-A049240(A076864(n))`
-/

namespace A315313.P4900984366617615106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - A049240 (A076864 n).toNat

end

end A315313.P4900984366617615106

/-! ## A315313.P14119230088188377169

`A315512(n)-A049240(A306485(n))`
-/

namespace A315313.P14119230088188377169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - A049240 (A306485 n).toNat

end

end A315313.P14119230088188377169

/-! ## A315313.P11750889409135851802

`A315527(n)-A071625(A381807(n))`
-/

namespace A315313.P11750889409135851802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A071625 (A381807 n).toNat

end

end A315313.P11750889409135851802

/-! ## A315313.P4376889694989691171

`and(A145491(A067036(n+1)), A315511(n))`
-/

namespace A315313.P4376889694989691171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145491 (A067036 (n + 1)).toNat) (A315511 n)

end

end A315313.P4376889694989691171

/-!
# A315314: Coordination sequence Gal.5.280.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315314, there is no canonical definition to state claims against.
-/

/-! ## A315314.P8193638772181963895

`A314135(n)+A128834(n²²)`
-/

namespace A315314.P8193638772181963895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314135 n + A128834 ((n ^ 2) ^ 2)

end

end A315314.P8193638772181963895

/-! ## A315314.P18158364636814681002

`A104234(A191967(n))+A311378(n)+n`
-/

namespace A315314.P18158364636814681002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 (A191967 n).toNat + (A311378 n + (n : ℤ))

end

end A315314.P18158364636814681002

/-!
# A315315: Coordination sequence Gal.6.198.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315315, the canonical program `A315315.P14535342207384651808` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315315 has offset 0).

The definition of A315315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315315.P14535342207384651808

`A314098(n)+A102283(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315315

/-- `A314098(n)+A102283(n)` -/
def P14535342207384651808.Spec : Prop :=
  ∀ n, P14535342207384651808.a n = A315315 n

theorem P14535342207384651808.correct : P14535342207384651808.Spec := by
  intro n
  simp only [A315315]

end A315315

/-! ## A315315.P16089342596750739683

`abs(A008592(n)-A310405(n))`
-/

namespace A315315.P16089342596750739683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310405 n|

end

end A315315.P16089342596750739683

namespace A315315

/-- `abs(A008592(n)-A310405(n))` -/
def P16089342596750739683.Spec : Prop :=
  ∀ n, P16089342596750739683.a n = A315315 n

end A315315

/-! ## A315315.P1829613120413223447

`floor(A010015(n)/A310405(n))`
-/

namespace A315315.P1829613120413223447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A310405 n : ℚ)⌋

end

end A315315.P1829613120413223447

namespace A315315

/-- `floor(A010015(n)/A310405(n))` -/
def P1829613120413223447.Spec : Prop :=
  ∀ n, P1829613120413223447.a n = A315315 n

end A315315

/-! ## A315315.P5525169873275971073

`A315517(n)-∑[A022003(n)]`
-/

namespace A315315.P5525169873275971073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315315.P5525169873275971073

namespace A315315

/-- `A315517(n)-∑[A022003(n)]` -/
def P5525169873275971073.Spec : Prop :=
  ∀ n, P5525169873275971073.a n = A315315 n

end A315315

/-! ## A315315.P1375731761770916485

`A315517(n)-A002264(n+1)`
-/

namespace A315315.P1375731761770916485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - A002264 (n + 1)

end

end A315315.P1375731761770916485

namespace A315315

/-- `A315517(n)-A002264(n+1)` -/
def P1375731761770916485.Spec : Prop :=
  ∀ n, P1375731761770916485.a n = A315315 n

end A315315

/-! ## A315315.P6023922475165686416

`A004396(n)+A315517(n)-n`
-/

namespace A315315.P6023922475165686416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315517 n - (n : ℤ))

end

end A315315.P6023922475165686416

namespace A315315

/-- `A004396(n)+A315517(n)-n` -/
def P6023922475165686416.Spec : Prop :=
  ∀ n, P6023922475165686416.a n = A315315 n

end A315315

/-! ## A315315.P14660136415269234523

`A008458(n)+A008574(n)-A310405(n)`
-/

namespace A315315.P14660136415269234523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310405 n)

end

end A315315.P14660136415269234523

namespace A315315

/-- `A008458(n)+A008574(n)-A310405(n)` -/
def P14660136415269234523.Spec : Prop :=
  ∀ n, P14660136415269234523.a n = A315315 n

end A315315

/-! ## A315315.P18186415552898711364

`A008576(n)+A315517(n)-A008486(n)`
-/

namespace A315315.P18186415552898711364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315517 n - A008486 n)

end

end A315315.P18186415552898711364

namespace A315315

/-- `A008576(n)+A315517(n)-A008486(n)` -/
def P18186415552898711364.Spec : Prop :=
  ∀ n, P18186415552898711364.a n = A315315 n

end A315315

/-! ## A315315.P5587419974247543371

`A315515(n)-A004525(n-A004396(n))`
-/

namespace A315315.P5587419974247543371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315315.P5587419974247543371

namespace A315315

/-- `A315515(n)-A004525(n-A004396(n))` -/
def P5587419974247543371.Spec : Prop :=
  ∀ n, P5587419974247543371.a n = A315315 n

end A315315

/-! ## A315315.P15539623197910296949

`A004396(n)+A004396(A315462(n))+n`
-/

namespace A315315.P15539623197910296949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A315462 n).toNat + (n : ℤ))

end

end A315315.P15539623197910296949

namespace A315315

/-- `A004396(n)+A004396(A315462(n))+n` -/
def P15539623197910296949.Spec : Prop :=
  ∀ n, P15539623197910296949.a n = A315315 n

end A315315

/-! ## A315315.P16948238480288109734

`A074067(A310405(n))`
-/

namespace A315315.P16948238480288109734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A310405 n).toNat

end

end A315315.P16948238480288109734

namespace A315315

/-- `A074067(A310405(n))` -/
def P16948238480288109734.Spec : Prop :=
  ∀ n, P16948238480288109734.a n = A315315 n

end A315315

/-! ## A315315.P11483623199039886752

`A004396(A315741(n))+2*A004396(n)`
-/

namespace A315315.P11483623199039886752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315741 n).toNat + 2 * A004396 n

end

end A315315.P11483623199039886752

namespace A315315

/-- `A004396(A315741(n))+2*A004396(n)` -/
def P11483623199039886752.Spec : Prop :=
  ∀ n, P11483623199039886752.a n = A315315 n

end A315315

/-! ## A315315.P278978486568673617

`A004396(A315517(n)+A004396(n))+n`
-/

namespace A315315.P278978486568673617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315517 n + A004396 n).toNat + (n : ℤ)

end

end A315315.P278978486568673617

namespace A315315

/-- `A004396(A315517(n)+A004396(n))+n` -/
def P278978486568673617.Spec : Prop :=
  ∀ n, P278978486568673617.a n = A315315 n

end A315315

/-! ## A315315.P15649350700381234668

`A004396(n)+A004396(A315741(n)+n)`
-/

namespace A315315.P15649350700381234668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315741 n + (n : ℤ)).toNat

end

end A315315.P15649350700381234668

namespace A315315

/-- `A004396(n)+A004396(A315741(n)+n)` -/
def P15649350700381234668.Spec : Prop :=
  ∀ n, P15649350700381234668.a n = A315315 n

end A315315

/-! ## A315315.P1350406000733960829

`A004396(n)+A004396(A313680(n)+A005843(n))`
-/

namespace A315315.P1350406000733960829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313680 n + A005843 n).toNat

end

end A315315.P1350406000733960829

namespace A315315

/-- `A004396(n)+A004396(A313680(n)+A005843(n))` -/
def P1350406000733960829.Spec : Prop :=
  ∀ n, P1350406000733960829.a n = A315315 n

end A315315

/-! ## A315315.P2029151010660053673

`A314825(n)+round(2*n/3)`
-/

namespace A315315.P2029151010660053673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A315315.P2029151010660053673

namespace A315315

/-- `A314825(n)+round(2*n/3)` -/
def P2029151010660053673.Spec : Prop :=
  ∀ n, P2029151010660053673.a n = A315315 n

end A315315

/-!
# A315316: Coordination sequence Gal.6.324.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315316, the canonical program `A315316.P15306875656313717143` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315316 has offset 0).

The definition of A315316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315316.P15306875656313717143

`abs(A008592(n)-A310404(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A315316

/-- `abs(A008592(n)-A310404(n))` -/
def P15306875656313717143.Spec : Prop :=
  ∀ n, P15306875656313717143.a n = A315316 n

theorem P15306875656313717143.correct : P15306875656313717143.Spec := by
  intro n
  simp only [A315316]

end A315316

/-! ## A315316.P2646190417732407308

`2*A008706(n)-A310404(n)`
-/

namespace A315316.P2646190417732407308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310404 n

end

end A315316.P2646190417732407308

namespace A315316

/-- `2*A008706(n)-A310404(n)` -/
def P2646190417732407308.Spec : Prop :=
  ∀ n, P2646190417732407308.a n = A315316 n

end A315316

/-! ## A315316.P11420117898071607359

`A135042(2*n+1)-A310404(n)`
-/

namespace A315316.P11420117898071607359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A310404 n

end

end A315316.P11420117898071607359

namespace A315316

/-- `A135042(2*n+1)-A310404(n)` -/
def P11420117898071607359.Spec : Prop :=
  ∀ n, P11420117898071607359.a n = A315316 n

end A315316

/-! ## A315316.P11062865760594489440

`A184418(A008574(n))-A310404(n)`
-/

namespace A315316.P11062865760594489440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310404 n

end

end A315316.P11062865760594489440

namespace A315316

/-- `A184418(A008574(n))-A310404(n)` -/
def P11062865760594489440.Spec : Prop :=
  ∀ n, P11062865760594489440.a n = A315316 n

end A315316

/-! ## A315316.P14156402241124415936

`A008458(n)+A008574(n)-A310404(n)`
-/

namespace A315316.P14156402241124415936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310404 n)

end

end A315316.P14156402241124415936

namespace A315316

/-- `A008458(n)+A008574(n)-A310404(n)` -/
def P14156402241124415936.Spec : Prop :=
  ∀ n, P14156402241124415936.a n = A315316 n

end A315316

/-! ## A315316.P9746164361826638693

`A005843(A008706(n))-A310404(n)`
-/

namespace A315316.P9746164361826638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310404 n

end

end A315316.P9746164361826638693

namespace A315316

/-- `A005843(A008706(n))-A310404(n)` -/
def P9746164361826638693.Spec : Prop :=
  ∀ n, P9746164361826638693.a n = A315316 n

end A315316

/-! ## A315316.P15029951978862602521

`A065502(A008458(n))-A310404(n)`
-/

namespace A315316.P15029951978862602521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310404 n

end

end A315316.P15029951978862602521

namespace A315316

/-- `A065502(A008458(n))-A310404(n)` -/
def P15029951978862602521.Spec : Prop :=
  ∀ n, P15029951978862602521.a n = A315316 n

end A315316

/-! ## A315316.P4420698666394822779

`A233583(A017281(n))-A310404(n)`
-/

namespace A315316.P4420698666394822779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A310404 n

end

end A315316.P4420698666394822779

namespace A315316

/-- `A233583(A017281(n))-A310404(n)` -/
def P4420698666394822779.Spec : Prop :=
  ∀ n, P4420698666394822779.a n = A315316 n

end A315316

/-!
# A315317: Coordination sequence Gal.5.257.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315317, there is no canonical definition to state claims against.
-/

/-! ## A315317.P6542838990391017643

`A315109(n)+A128834(n)`
-/

namespace A315317.P6542838990391017643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315109 n + A128834 n

end

end A315317.P6542838990391017643

/-! ## A315317.P14572880550385386734

`A315109(n)-A010892(n+2)`
-/

namespace A315317.P14572880550385386734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315109 n - A010892 (n + 2)

end

end A315317.P14572880550385386734

/-! ## A315317.P8298821545760194253

`A315109(n)+A163810(n+3)`
-/

namespace A315317.P8298821545760194253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315109 n + A163810 (n + 3)

end

end A315317.P8298821545760194253

/-! ## A315317.P4671139924041477720

`A318516(A315419(2*n)+A134667(n))`
-/

namespace A315317.P4671139924041477720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A315419 (2 * n) + A134667 n).toNat

end

end A315317.P4671139924041477720

/-! ## A315317.P5247480985968669853

`A172334(n)+A109017(A007716(n))`
-/

namespace A315317.P5247480985968669853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172334 n + A109017 (A007716 n).toNat

end

end A315317.P5247480985968669853

/-!
# A315318: Coordination sequence Gal.6.622.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315318, the canonical program `A315318.P4531554765859227187` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315318 has offset 0).

The definition of A315318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315318.P4531554765859227187

`A314836(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315318

/-- `A314836(n)+A004396(n)` -/
def P4531554765859227187.Spec : Prop :=
  ∀ n, P4531554765859227187.a n = A315318 n

theorem P4531554765859227187.correct : P4531554765859227187.Spec := by
  intro n
  simp only [A315318]

end A315318

/-! ## A315318.P2760659059327286309

`A315018(n)+A004525(n)`
-/

namespace A315318.P2760659059327286309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315018 n + A004525 n

end

end A315318.P2760659059327286309

namespace A315318

/-- `A315018(n)+A004525(n)` -/
def P2760659059327286309.Spec : Prop :=
  ∀ n, P2760659059327286309.a n = A315318 n

end A315318

/-! ## A315318.P7050268804376483678

`A313884(n)+A134667(n)`
-/

namespace A315318.P7050268804376483678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n + A134667 n

end

end A315318.P7050268804376483678

namespace A315318

/-- `A313884(n)+A134667(n)` -/
def P7050268804376483678.Spec : Prop :=
  ∀ n, P7050268804376483678.a n = A315318 n

end A315318

/-! ## A315318.P11430342955719589794

`abs(A008592(n)-A310400(n))`
-/

namespace A315318.P11430342955719589794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310400 n|

end

end A315318.P11430342955719589794

namespace A315318

/-- `abs(A008592(n)-A310400(n))` -/
def P11430342955719589794.Spec : Prop :=
  ∀ n, P11430342955719589794.a n = A315318 n

end A315318

/-! ## A315318.P17872305995004328006

`A315271(n)+Δ[A011865(n)]`
-/

namespace A315318.P17872305995004328006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n + (f1 (n + 1) - f1 n)

end

end A315318.P17872305995004328006

namespace A315318

/-- `A315271(n)+Δ[A011865(n)]` -/
def P17872305995004328006.Spec : Prop :=
  ∀ n, P17872305995004328006.a n = A315318 n

end A315318

/-! ## A315318.P6461811745741825746

`A315018(n)+Δ[A054925(n)]`
-/

namespace A315318.P6461811745741825746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315018 n + (f1 (n + 1) - f1 n)

end

end A315318.P6461811745741825746

namespace A315318

/-- `A315018(n)+Δ[A054925(n)]` -/
def P6461811745741825746.Spec : Prop :=
  ∀ n, P6461811745741825746.a n = A315318 n

end A315318

/-! ## A315318.P15526129465133598999

`A314836(n)+A002264(2*n+1)`
-/

namespace A315318.P15526129465133598999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + A002264 (2 * n + 1)

end

end A315318.P15526129465133598999

namespace A315318

/-- `A314836(n)+A002264(2*n+1)` -/
def P15526129465133598999.Spec : Prop :=
  ∀ n, P15526129465133598999.a n = A315318 n

end A315318

/-! ## A315318.P8805448863154747210

`A008458(n)+A008574(n)-A310400(n)`
-/

namespace A315318.P8805448863154747210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310400 n)

end

end A315318.P8805448863154747210

namespace A315318

/-- `A008458(n)+A008574(n)-A310400(n)` -/
def P8805448863154747210.Spec : Prop :=
  ∀ n, P8805448863154747210.a n = A315318 n

end A315318

/-! ## A315318.P3462491947668426351

`A315522(n)-∑[A022003(n)]`
-/

namespace A315318.P3462491947668426351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315318.P3462491947668426351

namespace A315318

/-- `A315522(n)-∑[A022003(n)]` -/
def P3462491947668426351.Spec : Prop :=
  ∀ n, P3462491947668426351.a n = A315318 n

end A315318

/-! ## A315318.P3720285749328655429

`A315522(n)-A002264(n+1)`
-/

namespace A315318.P3720285749328655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A002264 (n + 1)

end

end A315318.P3720285749328655429

namespace A315318

/-- `A315522(n)-A002264(n+1)` -/
def P3720285749328655429.Spec : Prop :=
  ∀ n, P3720285749328655429.a n = A315318 n

end A315318

/-! ## A315318.P631070932782804800

`A004396(n)+A315522(n)-n`
-/

namespace A315318.P631070932782804800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315522 n - (n : ℤ))

end

end A315318.P631070932782804800

namespace A315318

/-- `A004396(n)+A315522(n)-n` -/
def P631070932782804800.Spec : Prop :=
  ∀ n, P631070932782804800.a n = A315318 n

end A315318

/-! ## A315318.P3457681166615615230

`A008576(n)+A315522(n)-A008486(n)`
-/

namespace A315318.P3457681166615615230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315522 n - A008486 n)

end

end A315318.P3457681166615615230

namespace A315318

/-- `A008576(n)+A315522(n)-A008486(n)` -/
def P3457681166615615230.Spec : Prop :=
  ∀ n, P3457681166615615230.a n = A315318 n

end A315318

/-! ## A315318.P8550723147112987153

`A004524(2*A314893(n)+n+1)`
-/

namespace A315318.P8550723147112987153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A314893 n + (n : ℤ) + 1).toNat

end

end A315318.P8550723147112987153

namespace A315318

/-- `A004524(2*A314893(n)+n+1)` -/
def P8550723147112987153.Spec : Prop :=
  ∀ n, P8550723147112987153.a n = A315318 n

end A315318

/-!
# A315319: Coordination sequence Gal.5.289.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315319, the canonical program `A315319.P8559741598565083215` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315319 has offset 0).

The definition of A315319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315319.P8559741598565083215

`abs(A008592(n)-A310398(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315319

/-- `abs(A008592(n)-A310398(n))` -/
def P8559741598565083215.Spec : Prop :=
  ∀ n, P8559741598565083215.a n = A315319 n

theorem P8559741598565083215.correct : P8559741598565083215.Spec := by
  intro n
  simp only [A315319]

end A315319

/-! ## A315319.P1005951216635316799

`2*A008706(n)-A310398(n)`
-/

namespace A315319.P1005951216635316799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310398 n

end

end A315319.P1005951216635316799

namespace A315319

/-- `2*A008706(n)-A310398(n)` -/
def P1005951216635316799.Spec : Prop :=
  ∀ n, P1005951216635316799.a n = A315319 n

end A315319

/-! ## A315319.P7234180492941867816

`A314827(n)+A004396(A151988(n))`
-/

namespace A315319.P7234180492941867816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + A004396 (A151988 n).toNat

end

end A315319.P7234180492941867816

namespace A315319

/-- `A314827(n)+A004396(A151988(n))` -/
def P7234180492941867816.Spec : Prop :=
  ∀ n, P7234180492941867816.a n = A315319 n

end A315319

/-! ## A315319.P10876122395976789893

`A008458(n)+A008574(n)-A310398(n)`
-/

namespace A315319.P10876122395976789893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310398 n)

end

end A315319.P10876122395976789893

namespace A315319

/-- `A008458(n)+A008574(n)-A310398(n)` -/
def P10876122395976789893.Spec : Prop :=
  ∀ n, P10876122395976789893.a n = A315319 n

end A315319

/-! ## A315319.P9500096621106635448

`A250120(n)+A314708(n)-A008574(n)`
-/

namespace A315319.P9500096621106635448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314708 n - A008574 n)

end

end A315319.P9500096621106635448

namespace A315319

/-- `A250120(n)+A314708(n)-A008574(n)` -/
def P9500096621106635448.Spec : Prop :=
  ∀ n, P9500096621106635448.a n = A315319 n

end A315319

/-! ## A315319.P12271416569697280984

`A310398(n)+A005843(A008706(n)-A310398(n))`
-/

namespace A315319.P12271416569697280984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A005843 (A008706 n - A310398 n).toNat

end

end A315319.P12271416569697280984

namespace A315319

/-- `A310398(n)+A005843(A008706(n)-A310398(n))` -/
def P12271416569697280984.Spec : Prop :=
  ∀ n, P12271416569697280984.a n = A315319 n

end A315319

/-! ## A315319.P14523382337361326147

`A330025(n)+A315069(n)`
-/

namespace A315319.P14523382337361326147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A315069 n

end

end A315319.P14523382337361326147

namespace A315319

/-- `A330025(n)+A315069(n)` -/
def P14523382337361326147.Spec : Prop :=
  ∀ n, P14523382337361326147.a n = A315319 n

end A315319

/-! ## A315319.P16252084297749592827

`A315536(n)-Δ[A011858(n)]`
-/

namespace A315319.P16252084297749592827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - (f1 (n + 1) - f1 n)

end

end A315319.P16252084297749592827

namespace A315319

/-- `A315536(n)-Δ[A011858(n)]` -/
def P16252084297749592827.Spec : Prop :=
  ∀ n, P16252084297749592827.a n = A315319 n

end A315319

/-! ## A315319.P12046548684411594508

`A315536(n)-A057354(n+1)`
-/

namespace A315319.P12046548684411594508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A057354 (n + 1)

end

end A315319.P12046548684411594508

namespace A315319

/-- `A315536(n)-A057354(n+1)` -/
def P12046548684411594508.Spec : Prop :=
  ∀ n, P12046548684411594508.a n = A315319 n

end A315319

/-! ## A315319.P913545925462974650

`A008458(n)+A250120(n)-A314220(n)`
-/

namespace A315319.P913545925462974650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A314220 n)

end

end A315319.P913545925462974650

namespace A315319

/-- `A008458(n)+A250120(n)-A314220(n)` -/
def P913545925462974650.Spec : Prop :=
  ∀ n, P913545925462974650.a n = A315319 n

end A315319

/-! ## A315319.P8857917999743016502

`A005843(A008706(n))-A310398(n)`
-/

namespace A315319.P8857917999743016502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310398 n

end

end A315319.P8857917999743016502

namespace A315319

/-- `A005843(A008706(n))-A310398(n)` -/
def P8857917999743016502.Spec : Prop :=
  ∀ n, P8857917999743016502.a n = A315319 n

end A315319

/-! ## A315319.P15009365024641115838

`A314886(n)+A059995(A016969(n))`
-/

namespace A315319.P15009365024641115838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + A059995 (A016969 n).toNat

end

end A315319.P15009365024641115838

namespace A315319

/-- `A314886(n)+A059995(A016969(n))` -/
def P15009365024641115838.Spec : Prop :=
  ∀ n, P15009365024641115838.a n = A315319 n

end A315319

/-! ## A315319.P13276737737215321340

`A313842(n)+A014019(A017101(n)-n)`
-/

namespace A315319.P13276737737215321340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n + A014019 (A017101 n - (n : ℤ)).toNat

end

end A315319.P13276737737215321340

namespace A315319

/-- `A313842(n)+A014019(A017101(n)-n)` -/
def P13276737737215321340.Spec : Prop :=
  ∀ n, P13276737737215321340.a n = A315319 n

end A315319

/-! ## A315319.P11243270785234284435

`A313842(n)-A014019(A017557(n)+n)`
-/

namespace A315319.P11243270785234284435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n - A014019 (A017557 n + (n : ℤ)).toNat

end

end A315319.P11243270785234284435

namespace A315319

/-- `A313842(n)-A014019(A017557(n)+n)` -/
def P11243270785234284435.Spec : Prop :=
  ∀ n, P11243270785234284435.a n = A315319 n

end A315319

/-!
# A315320: Coordination sequence Gal.4.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315320, the canonical program `A315320.P13791615069991515672` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315320 has offset 0).

The definition of A315320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315320.P13791615069991515672

`A315020(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315320

/-- `A315020(n)+A004525(n)` -/
def P13791615069991515672.Spec : Prop :=
  ∀ n, P13791615069991515672.a n = A315320 n

theorem P13791615069991515672.correct : P13791615069991515672.Spec := by
  intro n
  simp only [A315320]

end A315320

/-! ## A315320.P13242658013088655520

`abs(A008592(n)-A310397(n))`
-/

namespace A315320.P13242658013088655520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310397 n|

end

end A315320.P13242658013088655520

namespace A315320

/-- `abs(A008592(n)-A310397(n))` -/
def P13242658013088655520.Spec : Prop :=
  ∀ n, P13242658013088655520.a n = A315320 n

end A315320

/-! ## A315320.P11212358853451876541

`A315259(n)+Δ[A011861(n)]`
-/

namespace A315320.P11212358853451876541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n + (f1 (n + 1) - f1 n)

end

end A315320.P11212358853451876541

namespace A315320

/-- `A315259(n)+Δ[A011861(n)]` -/
def P11212358853451876541.Spec : Prop :=
  ∀ n, P11212358853451876541.a n = A315320 n

end A315320

/-! ## A315320.P8961065177592677637

`A315020(n)+Δ[A054925(n)]`
-/

namespace A315320.P8961065177592677637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + (f1 (n + 1) - f1 n)

end

end A315320.P8961065177592677637

namespace A315320

/-- `A315020(n)+Δ[A054925(n)]` -/
def P8961065177592677637.Spec : Prop :=
  ∀ n, P8961065177592677637.a n = A315320 n

end A315320

/-! ## A315320.P6718595288345653883

`2*A314896(n)-A311501(n)`
-/

namespace A315320.P6718595288345653883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314896 n - A311501 n

end

end A315320.P6718595288345653883

namespace A315320

/-- `2*A314896(n)-A311501(n)` -/
def P6718595288345653883.Spec : Prop :=
  ∀ n, P6718595288345653883.a n = A315320 n

end A315320

/-! ## A315320.P16656620459273113273

`A315061(n)+A004525(A004525(n))`
-/

namespace A315320.P16656620459273113273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A004525 (A004525 n).toNat

end

end A315320.P16656620459273113273

namespace A315320

/-- `A315061(n)+A004525(A004525(n))` -/
def P16656620459273113273.Spec : Prop :=
  ∀ n, P16656620459273113273.a n = A315320 n

end A315320

/-! ## A315320.P8785683068879511819

`A301291(n)+A004525(A004525(3*n))`
-/

namespace A315320.P8785683068879511819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 (A004525 (3 * n)).toNat

end

end A315320.P8785683068879511819

namespace A315320

/-- `A301291(n)+A004525(A004525(3*n))` -/
def P8785683068879511819.Spec : Prop :=
  ∀ n, P8785683068879511819.a n = A315320 n

end A315320

/-! ## A315320.P10362692195832403380

`A314829(n)+A004525(A004525(n)+n)`
-/

namespace A315320.P10362692195832403380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315320.P10362692195832403380

namespace A315320

/-- `A314829(n)+A004525(A004525(n)+n)` -/
def P10362692195832403380.Spec : Prop :=
  ∀ n, P10362692195832403380.a n = A315320 n

end A315320

/-! ## A315320.P15179854511398643513

`A008458(n)+A008574(n)-A310397(n)`
-/

namespace A315320.P15179854511398643513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310397 n)

end

end A315320.P15179854511398643513

namespace A315320

/-- `A008458(n)+A008574(n)-A310397(n)` -/
def P15179854511398643513.Spec : Prop :=
  ∀ n, P15179854511398643513.a n = A315320 n

end A315320

/-! ## A315320.P5272725864977710407

`A004525(n)+A312506(n)+A004525(A004525(n))`
-/

namespace A315320.P5272725864977710407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312506 n + A004525 (A004525 n).toNat)

end

end A315320.P5272725864977710407

namespace A315320

/-- `A004525(n)+A312506(n)+A004525(A004525(n))` -/
def P5272725864977710407.Spec : Prop :=
  ∀ n, P5272725864977710407.a n = A315320 n

end A315320

/-! ## A315320.P12958355693475851404

`A313793(n)+A188510(n)`
-/

namespace A315320.P12958355693475851404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + A188510 n

end

end A315320.P12958355693475851404

namespace A315320

/-- `A313793(n)+A188510(n)` -/
def P12958355693475851404.Spec : Prop :=
  ∀ n, P12958355693475851404.a n = A315320 n

end A315320

/-! ## A315320.P12334445527347826490

`A314056(n)+A075553(n)`
-/

namespace A315320.P12334445527347826490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A075553 n

end

end A315320.P12334445527347826490

namespace A315320

/-- `A314056(n)+A075553(n)` -/
def P12334445527347826490.Spec : Prop :=
  ∀ n, P12334445527347826490.a n = A315320 n

end A315320

/-! ## A315320.P14918670726104436914

`A004525(A004525(n))+A315342(n)-A004525(n)`
-/

namespace A315320.P14918670726104436914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315342 n - A004525 n)

end

end A315320.P14918670726104436914

namespace A315320

/-- `A004525(A004525(n))+A315342(n)-A004525(n)` -/
def P14918670726104436914.Spec : Prop :=
  ∀ n, P14918670726104436914.a n = A315320 n

end A315320

/-! ## A315320.P3415850262440044765

`A315520(n)-A004525(n-A004525(n))`
-/

namespace A315320.P3415850262440044765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315320.P3415850262440044765

namespace A315320

/-- `A315520(n)-A004525(n-A004525(n))` -/
def P3415850262440044765.Spec : Prop :=
  ∀ n, P3415850262440044765.a n = A315320 n

end A315320

/-! ## A315320.P18015927853225965735

`A242062(A313115(n)+A008586(n))+A008586(n)`
-/

namespace A315320.P18015927853225965735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A313115 n + A008586 n).toNat + A008586 n

end

end A315320.P18015927853225965735

namespace A315320

/-- `A242062(A313115(n)+A008586(n))+A008586(n)` -/
def P18015927853225965735.Spec : Prop :=
  ∀ n, P18015927853225965735.a n = A315320 n

end A315320

/-! ## A315320.P5057935456607227767

`A004525(A313115(2*n))+A004525(n)`
-/

namespace A315320.P5057935456607227767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313115 (2 * n)).toNat + A004525 n

end

end A315320.P5057935456607227767

namespace A315320

/-- `A004525(A313115(2*n))+A004525(n)` -/
def P5057935456607227767.Spec : Prop :=
  ∀ n, P5057935456607227767.a n = A315320 n

end A315320

/-! ## A315320.P6994324296078231055

`A004525(A314896(2*n))+A004525(n)`
-/

namespace A315320.P6994324296078231055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314896 (2 * n)).toNat + A004525 n

end

end A315320.P6994324296078231055

namespace A315320

/-- `A004525(A314896(2*n))+A004525(n)` -/
def P6994324296078231055.Spec : Prop :=
  ∀ n, P6994324296078231055.a n = A315320 n

end A315320

/-!
# A315321: Coordination sequence Gal.6.635.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315321, the canonical program `A315321.P17466874395387374429` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315321 has offset 0).

The definition of A315321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315321.P17466874395387374429

`abs(A008592(n)-A310396(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A315321

/-- `abs(A008592(n)-A310396(n))` -/
def P17466874395387374429.Spec : Prop :=
  ∀ n, P17466874395387374429.a n = A315321 n

theorem P17466874395387374429.correct : P17466874395387374429.Spec := by
  intro n
  simp only [A315321]

end A315321

/-! ## A315321.P7254618977028343239

`2*A008706(n)-A310396(n)`
-/

namespace A315321.P7254618977028343239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310396 n

end

end A315321.P7254618977028343239

namespace A315321

/-- `2*A008706(n)-A310396(n)` -/
def P7254618977028343239.Spec : Prop :=
  ∀ n, P7254618977028343239.a n = A315321 n

end A315321

/-! ## A315321.P5808658494973437292

`2*A314902(n)-A311541(n)`
-/

namespace A315321.P5808658494973437292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314902 n - A311541 n

end

end A315321.P5808658494973437292

namespace A315321

/-- `2*A314902(n)-A311541(n)` -/
def P5808658494973437292.Spec : Prop :=
  ∀ n, P5808658494973437292.a n = A315321 n

end A315321

/-! ## A315321.P3700998187478825754

`A135042(2*n+1)-A310396(n)`
-/

namespace A315321.P3700998187478825754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A310396 n

end

end A315321.P3700998187478825754

namespace A315321

/-- `A135042(2*n+1)-A310396(n)` -/
def P3700998187478825754.Spec : Prop :=
  ∀ n, P3700998187478825754.a n = A315321 n

end A315321

/-! ## A315321.P13310170539824220825

`A008458(n)+A008574(n)-A310396(n)`
-/

namespace A315321.P13310170539824220825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310396 n)

end

end A315321.P13310170539824220825

namespace A315321

/-- `A008458(n)+A008574(n)-A310396(n)` -/
def P13310170539824220825.Spec : Prop :=
  ∀ n, P13310170539824220825.a n = A315321 n

end A315321

/-! ## A315321.P6479394215815567335

`A315261(n)+A004525(A315261(n)-A315183(n))`
-/

namespace A315321.P6479394215815567335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n + A004525 (A315261 n - A315183 n).toNat

end

end A315321.P6479394215815567335

namespace A315321

/-- `A315261(n)+A004525(A315261(n)-A315183(n))` -/
def P6479394215815567335.Spec : Prop :=
  ∀ n, P6479394215815567335.a n = A315321 n

end A315321

/-! ## A315321.P743334531060446713

`2*A313876(n)-A310513(n)`
-/

namespace A315321.P743334531060446713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313876 n - A310513 n

end

end A315321.P743334531060446713

namespace A315321

/-- `2*A313876(n)-A310513(n)` -/
def P743334531060446713.Spec : Prop :=
  ∀ n, P743334531060446713.a n = A315321 n

end A315321

/-! ## A315321.P9035659100984930990

`(A315345(n)+A315305(n))/2`
-/

namespace A315321.P9035659100984930990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315345 n + A315305 n : ℚ) / 2

end

end A315321.P9035659100984930990

namespace A315321

/-- `(A315345(n)+A315305(n))/2` -/
def P9035659100984930990.Spec : Prop :=
  ∀ n, P9035659100984930990.a n = (A315321 n : ℚ)

end A315321

/-! ## A315321.P7404050360436508693

`A315305(n)+A004525(A315345(n)-A315305(n))`
-/

namespace A315321.P7404050360436508693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315305 n + A004525 (A315345 n - A315305 n).toNat

end

end A315321.P7404050360436508693

namespace A315321

/-- `A315305(n)+A004525(A315345(n)-A315305(n))` -/
def P7404050360436508693.Spec : Prop :=
  ∀ n, P7404050360436508693.a n = A315321 n

end A315321

/-! ## A315321.P15385531518042033685

`A315345(n)-A004526(A315345(n)-A315305(n))`
-/

namespace A315321.P15385531518042033685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n - A004526 (A315345 n - A315305 n).toNat

end

end A315321.P15385531518042033685

namespace A315321

/-- `A315345(n)-A004526(A315345(n)-A315305(n))` -/
def P15385531518042033685.Spec : Prop :=
  ∀ n, P15385531518042033685.a n = A315321 n

end A315321

/-! ## A315321.P15855095201979006568

`A005843(A314902(n))-A311541(n)`
-/

namespace A315321.P15855095201979006568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314902 n).toNat - A311541 n

end

end A315321.P15855095201979006568

namespace A315321

/-- `A005843(A314902(n))-A311541(n)` -/
def P15855095201979006568.Spec : Prop :=
  ∀ n, P15855095201979006568.a n = A315321 n

end A315321

/-! ## A315321.P3466567317009580305

`A005843(A008706(n))-A310396(n)`
-/

namespace A315321.P3466567317009580305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310396 n

end

end A315321.P3466567317009580305

namespace A315321

/-- `A005843(A008706(n))-A310396(n)` -/
def P3466567317009580305.Spec : Prop :=
  ∀ n, P3466567317009580305.a n = A315321 n

end A315321

/-! ## A315321.P7999343641249194274

`A005843(A313876(n))-A310513(n)`
-/

namespace A315321.P7999343641249194274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313876 n).toNat - A310513 n

end

end A315321.P7999343641249194274

namespace A315321

/-- `A005843(A313876(n))-A310513(n)` -/
def P7999343641249194274.Spec : Prop :=
  ∀ n, P7999343641249194274.a n = A315321 n

end A315321

/-! ## A315321.P17757734253617279660

`A065502(A008458(n))-A310396(n)`
-/

namespace A315321.P17757734253617279660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310396 n

end

end A315321.P17757734253617279660

namespace A315321

/-- `A065502(A008458(n))-A310396(n)` -/
def P17757734253617279660.Spec : Prop :=
  ∀ n, P17757734253617279660.a n = A315321 n

end A315321

/-! ## A315321.P17950381126206756443

`A004396(A315642(2*n)-A008585(n))`
-/

namespace A315321.P17950381126206756443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315642 (2 * n) - A008585 n).toNat

end

end A315321.P17950381126206756443

namespace A315321

/-- `A004396(A315642(2*n)-A008585(n))` -/
def P17950381126206756443.Spec : Prop :=
  ∀ n, P17950381126206756443.a n = A315321 n

end A315321

/-! ## A315321.P8923424990488274247

`A315692(2*n)+n-7*n`
-/

namespace A315321.P8923424990488274247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315692 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315321.P8923424990488274247

namespace A315321

/-- `A315692(2*n)+n-7*n` -/
def P8923424990488274247.Spec : Prop :=
  ∀ n, P8923424990488274247.a n = A315321 n

end A315321

/-! ## A315321.P16099234299682883940

`A004525(A315638(2*n))`
-/

namespace A315321.P16099234299682883940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315638 (2 * n)).toNat

end

end A315321.P16099234299682883940

namespace A315321

/-- `A004525(A315638(2*n))` -/
def P16099234299682883940.Spec : Prop :=
  ∀ n, P16099234299682883940.a n = A315321 n

end A315321

/-! ## A315321.P15296216609753889532

`A004526(A315638(2*n)+1)`
-/

namespace A315321.P15296216609753889532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315638 (2 * n) + 1).toNat

end

end A315321.P15296216609753889532

namespace A315321

/-- `A004526(A315638(2*n)+1)` -/
def P15296216609753889532.Spec : Prop :=
  ∀ n, P15296216609753889532.a n = A315321 n

end A315321

/-! ## A315321.P8843173213244021840

`A004525(A315345(n)+A315305(n))`
-/

namespace A315321.P8843173213244021840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315345 n + A315305 n).toNat

end

end A315321.P8843173213244021840

namespace A315321

/-- `A004525(A315345(n)+A315305(n))` -/
def P8843173213244021840.Spec : Prop :=
  ∀ n, P8843173213244021840.a n = A315321 n

end A315321

/-! ## A315321.P18111306653253679011

`A004526(A315345(n)+A315305(n))`
-/

namespace A315321.P18111306653253679011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315345 n + A315305 n).toNat

end

end A315321.P18111306653253679011

namespace A315321

/-- `A004526(A315345(n)+A315305(n))` -/
def P18111306653253679011.Spec : Prop :=
  ∀ n, P18111306653253679011.a n = A315321 n

end A315321

/-!
# A315322: Coordination sequence Gal.6.636.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315322, the canonical program `A315322.P14653823716537274216` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315322 has offset 0).

The definition of A315322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315322.P14653823716537274216

`A314847(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315322

/-- `A314847(n)+A004396(n)` -/
def P14653823716537274216.Spec : Prop :=
  ∀ n, P14653823716537274216.a n = A315322 n

theorem P14653823716537274216.correct : P14653823716537274216.Spec := by
  intro n
  simp only [A315322]

end A315322

/-! ## A315322.P5106783769832645705

`A315026(n)+A004525(n)`
-/

namespace A315322.P5106783769832645705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A004525 n

end

end A315322.P5106783769832645705

namespace A315322

/-- `A315026(n)+A004525(n)` -/
def P5106783769832645705.Spec : Prop :=
  ∀ n, P5106783769832645705.a n = A315322 n

end A315322

/-! ## A315322.P5565099092577609403

`abs(A008592(n)-A310393(n))`
-/

namespace A315322.P5565099092577609403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310393 n|

end

end A315322.P5565099092577609403

namespace A315322

/-- `abs(A008592(n)-A310393(n))` -/
def P5565099092577609403.Spec : Prop :=
  ∀ n, P5565099092577609403.a n = A315322 n

end A315322

/-! ## A315322.P2329468954023089764

`A315026(n)+Δ[A054925(n)]`
-/

namespace A315322.P2329468954023089764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + (f1 (n + 1) - f1 n)

end

end A315322.P2329468954023089764

namespace A315322

/-- `A315026(n)+Δ[A054925(n)]` -/
def P2329468954023089764.Spec : Prop :=
  ∀ n, P2329468954023089764.a n = A315322 n

end A315322

/-! ## A315322.P17540110231665837494

`A314847(n)+A002264(comp[2*n])`
-/

namespace A315322.P17540110231665837494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A002264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A315322.P17540110231665837494

namespace A315322

/-- `A314847(n)+A002264(comp[2*n])` -/
def P17540110231665837494.Spec : Prop :=
  ∀ n, P17540110231665837494.a n = A315322 n

end A315322

/-! ## A315322.P3024986859449126036

`A315026(n)+n-∑[A021913(n)]`
-/

namespace A315322.P3024986859449126036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315322.P3024986859449126036

namespace A315322

/-- `A315026(n)+n-∑[A021913(n)]` -/
def P3024986859449126036.Spec : Prop :=
  ∀ n, P3024986859449126036.a n = A315322 n

end A315322

/-! ## A315322.P11495666400164802955

`A315026(n)+n-Δ[A011848(n)]`
-/

namespace A315322.P11495666400164802955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315322.P11495666400164802955

namespace A315322

/-- `A315026(n)+n-Δ[A011848(n)]` -/
def P11495666400164802955.Spec : Prop :=
  ∀ n, P11495666400164802955.a n = A315322 n

end A315322

/-! ## A315322.P16249285076241770729

`A315058(n)+A004396(A004525(n))`
-/

namespace A315322.P16249285076241770729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n + A004396 (A004525 n).toNat

end

end A315322.P16249285076241770729

namespace A315322

/-- `A315058(n)+A004396(A004525(n))` -/
def P16249285076241770729.Spec : Prop :=
  ∀ n, P16249285076241770729.a n = A315322 n

end A315322

/-! ## A315322.P14608876447445873584

`A315067(n)+A004525(A004396(n))`
-/

namespace A315322.P14608876447445873584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n + A004525 (A004396 n).toNat

end

end A315322.P14608876447445873584

namespace A315322

/-- `A315067(n)+A004525(A004396(n))` -/
def P14608876447445873584.Spec : Prop :=
  ∀ n, P14608876447445873584.a n = A315322 n

end A315322

/-! ## A315322.P18054118234802459793

`A301291(n)+A004525(A004396(n)+n)`
-/

namespace A315322.P18054118234802459793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315322.P18054118234802459793

namespace A315322

/-- `A301291(n)+A004525(A004396(n)+n)` -/
def P18054118234802459793.Spec : Prop :=
  ∀ n, P18054118234802459793.a n = A315322 n

end A315322

/-! ## A315322.P2699914238554289844

`A008458(n)+A008574(n)-A310393(n)`
-/

namespace A315322.P2699914238554289844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310393 n)

end

end A315322.P2699914238554289844

namespace A315322

/-- `A008458(n)+A008574(n)-A310393(n)` -/
def P2699914238554289844.Spec : Prop :=
  ∀ n, P2699914238554289844.a n = A315322 n

end A315322

/-! ## A315322.P1861138784723766874

`A004396(n)+A311924(n)+A004396(A004525(n))`
-/

namespace A315322.P1861138784723766874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311924 n + A004396 (A004525 n).toNat)

end

end A315322.P1861138784723766874

namespace A315322

/-- `A004396(n)+A311924(n)+A004396(A004525(n))` -/
def P1861138784723766874.Spec : Prop :=
  ∀ n, P1861138784723766874.a n = A315322 n

end A315322

/-! ## A315322.P12359254562737075218

`A004525(A004396(n))+A312526(n)+A004525(n)`
-/

namespace A315322.P12359254562737075218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312526 n + A004525 n)

end

end A315322.P12359254562737075218

namespace A315322

/-- `A004525(A004396(n))+A312526(n)+A004525(n)` -/
def P12359254562737075218.Spec : Prop :=
  ∀ n, P12359254562737075218.a n = A315322 n

end A315322

/-! ## A315322.P17072265269107517810

`A313955(n)+A101455(n)`
-/

namespace A315322.P17072265269107517810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313955 n + A101455 n

end

end A315322.P17072265269107517810

namespace A315322

/-- `A313955(n)+A101455(n)` -/
def P17072265269107517810.Spec : Prop :=
  ∀ n, P17072265269107517810.a n = A315322 n

end A315322

/-! ## A315322.P14402524171958897267

`A313955(n)+A132380(2*n)`
-/

namespace A315322.P14402524171958897267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313955 n + A132380 (2 * n)

end

end A315322.P14402524171958897267

namespace A315322

/-- `A313955(n)+A132380(2*n)` -/
def P14402524171958897267.Spec : Prop :=
  ∀ n, P14402524171958897267.a n = A315322 n

end A315322

/-! ## A315322.P8253400888273192426

`A315522(n)-A004525(n-A004396(n))`
-/

namespace A315322.P8253400888273192426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315322.P8253400888273192426

namespace A315322

/-- `A315522(n)-A004525(n-A004396(n))` -/
def P8253400888273192426.Spec : Prop :=
  ∀ n, P8253400888273192426.a n = A315322 n

end A315322

/-! ## A315322.P7067666292597977592

`A004525(A310400(2*n))+A004525(n)`
-/

namespace A315322.P7067666292597977592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310400 (2 * n)).toNat + A004525 n

end

end A315322.P7067666292597977592

namespace A315322

/-- `A004525(A310400(2*n))+A004525(n)` -/
def P7067666292597977592.Spec : Prop :=
  ∀ n, P7067666292597977592.a n = A315322 n

end A315322

/-! ## A315322.P2953519840295309561

`A004525(A310440(2*n))+A004525(n)`
-/

namespace A315322.P2953519840295309561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310440 (2 * n)).toNat + A004525 n

end

end A315322.P2953519840295309561

namespace A315322

/-- `A004525(A310440(2*n))+A004525(n)` -/
def P2953519840295309561.Spec : Prop :=
  ∀ n, P2953519840295309561.a n = A315322 n

end A315322

/-! ## A315322.P11025388675313510430

`A004525(A313546(2*n))+A004525(n)`
-/

namespace A315322.P11025388675313510430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313546 (2 * n)).toNat + A004525 n

end

end A315322.P11025388675313510430

namespace A315322

/-- `A004525(A313546(2*n))+A004525(n)` -/
def P11025388675313510430.Spec : Prop :=
  ∀ n, P11025388675313510430.a n = A315322 n

end A315322

/-!
# A315323: Coordination sequence Gal.6.483.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315323, there is no canonical definition to state claims against.
-/

/-! ## A315323.P1903555864838761654

`A315748(n)-A046698(A212105(n))`
-/

namespace A315323.P1903555864838761654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A046698 (A212105 n).toNat

end

end A315323.P1903555864838761654

/-! ## A315323.P17290396004886871349

`A248333(A066530(n)+6*n+4)`
-/

namespace A315323.P17290396004886871349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A066530 n + (6 * n + 4 : ℤ)).toNat

end

end A315323.P17290396004886871349

/-! ## A315323.P11791782025833094463

`∑[A348182(A310349(lcm(2, n)+n%2))]`
-/

namespace A315323.P11791782025833094463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348182 (A310349 (Nat.lcm 2 n + n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315323.P11791782025833094463

/-! ## A315323.P10666315829822135203

`A091245(A004274(3*(n+1))+A000009(n))`
-/

namespace A315323.P10666315829822135203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A004274 (3 * (n + 1)) + A000009 n).toNat

end

end A315323.P10666315829822135203

/-! ## A315323.P17691292933766849498

`A178181(n)+A025153(A025153(3*n+4))`
-/

namespace A315323.P17691292933766849498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A025153 (A025153 (3 * n + 4)).toNat

end

end A315323.P17691292933766849498

/-!
# A315324: Coordination sequence Gal.6.672.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315324, there is no canonical definition to state claims against.
-/

/-! ## A315324.P17055114763227533416

`A045682(n)+A000035(A000110(n))`
-/

namespace A315324.P17055114763227533416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045682 n + A000035 (A000110 n).toNat

end

end A315324.P17055114763227533416

/-! ## A315324.P1682487312514660361

`A045682(n)+A011655(A001835(n))`
-/

namespace A315324.P1682487312514660361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045682 n + A011655 (A001835 n).toNat

end

end A315324.P1682487312514660361

/-! ## A315324.P7971524578645039180

`A313895(n)+A020987(A000244(n))`
-/

namespace A315324.P7971524578645039180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313895 n + A020987 (A000244 n).toNat

end

end A315324.P7971524578645039180

/-! ## A315324.P6575460659674479475

`A313896(n)+A020987(A000244(n))`
-/

namespace A315324.P6575460659674479475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313896 n + A020987 (A000244 n).toNat

end

end A315324.P6575460659674479475

/-! ## A315324.P7742470687690184345

`A250120(n)+A182850(A006483(n))`
-/

namespace A315324.P7742470687690184345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A182850 (A006483 n).toNat

end

end A315324.P7742470687690184345

/-!
# A315325: Coordination sequence Gal.6.671.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315325, there is no canonical definition to state claims against.
-/

/-! ## A315325.P8266355896054898170

`A313799(n)+A178580(A113103(n))`
-/

namespace A315325.P8266355896054898170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A178580 (A113103 n).toNat

end

end A315325.P8266355896054898170

/-! ## A315325.P4245078183931760423

`A313799(n)+A178600(A113092(n))`
-/

namespace A315325.P4245078183931760423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A178600 (A113092 n).toNat

end

end A315325.P4245078183931760423

/-! ## A315325.P15181011974703469143

`A315322(n)+A076489(A285641(n))`
-/

namespace A315325.P15181011974703469143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n + A076489 (A285641 n).toNat

end

end A315325.P15181011974703469143

/-! ## A315325.P1160155488848643047

`A172334(n)+A053692(A059611(3*n+5))`
-/

namespace A315325.P1160155488848643047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172334 n + A053692 (A059611 (3 * n + 5)).toNat

end

end A315325.P1160155488848643047

/-! ## A315325.P15639742305403722793

`A315061(n)+A001221(A173311(n))`
-/

namespace A315325.P15639742305403722793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A001221 (A173311 n).toNat

end

end A315325.P15639742305403722793

/-!
# A315326: Coordination sequence Gal.6.204.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315326, the canonical program `A315326.P6667046397507400523` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315326 has offset 0).

The definition of A315326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315326.P6667046397507400523

`2*A314885(n)-A008574(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315326

/-- `2*A314885(n)-A008574(n)` -/
def P6667046397507400523.Spec : Prop :=
  ∀ n, P6667046397507400523.a n = A315326 n

theorem P6667046397507400523.correct : P6667046397507400523.Spec := by
  intro n
  simp only [A315326]

end A315326

/-! ## A315326.P13035927526157048211

`A004275(A314885(n)-A004273(n))`
-/

namespace A315326.P13035927526157048211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314885 n - A004273 n).toNat

end

end A315326.P13035927526157048211

namespace A315326

/-- `A004275(A314885(n)-A004273(n))` -/
def P13035927526157048211.Spec : Prop :=
  ∀ n, P13035927526157048211.a n = A315326 n

end A315326

/-! ## A315326.P8582433222246803204

`A004273(A314885(n)-n)-A004273(n)`
-/

namespace A315326.P8582433222246803204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314885 n - (n : ℤ)).toNat - A004273 n

end

end A315326.P8582433222246803204

namespace A315326

/-- `A004273(A314885(n)-n)-A004273(n)` -/
def P8582433222246803204.Spec : Prop :=
  ∀ n, P8582433222246803204.a n = A315326 n

end A315326

/-! ## A315326.P10314639649989671523

`A008574(n)+A005843(A314885(n)-A008574(n))`
-/

namespace A315326.P10314639649989671523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314885 n - A008574 n).toNat

end

end A315326.P10314639649989671523

namespace A315326

/-- `A008574(n)+A005843(A314885(n)-A008574(n))` -/
def P10314639649989671523.Spec : Prop :=
  ∀ n, P10314639649989671523.a n = A315326 n

end A315326

/-! ## A315326.P4791308082890756560

`A314038(n)+A011582(n)`
-/

namespace A315326.P4791308082890756560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314038 n + A011582 n

end

end A315326.P4791308082890756560

namespace A315326

/-- `A314038(n)+A011582(n)` -/
def P4791308082890756560.Spec : Prop :=
  ∀ n, P4791308082890756560.a n = A315326 n

end A315326

/-! ## A315326.P4522512173820886536

`abs(A008592(n)-A310380(n))`
-/

namespace A315326.P4522512173820886536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310380 n|

end

end A315326.P4522512173820886536

namespace A315326

/-- `abs(A008592(n)-A310380(n))` -/
def P4522512173820886536.Spec : Prop :=
  ∀ n, P4522512173820886536.a n = A315326 n

end A315326

/-! ## A315326.P7408165020975208565

`2*A008706(n)-A310380(n)`
-/

namespace A315326.P7408165020975208565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310380 n

end

end A315326.P7408165020975208565

namespace A315326

/-- `2*A008706(n)-A310380(n)` -/
def P7408165020975208565.Spec : Prop :=
  ∀ n, P7408165020975208565.a n = A315326 n

end A315326

/-! ## A315326.P6399952156358870009

`A008458(n)+A008574(n)-A310380(n)`
-/

namespace A315326.P6399952156358870009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310380 n)

end

end A315326.P6399952156358870009

namespace A315326

/-- `A008458(n)+A008574(n)-A310380(n)` -/
def P6399952156358870009.Spec : Prop :=
  ∀ n, P6399952156358870009.a n = A315326 n

end A315326

/-! ## A315326.P5082987704335777173

`A005843(A314885(n))-A008574(n)`
-/

namespace A315326.P5082987704335777173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314885 n).toNat - A008574 n

end

end A315326.P5082987704335777173

namespace A315326

/-- `A005843(A314885(n))-A008574(n)` -/
def P5082987704335777173.Spec : Prop :=
  ∀ n, P5082987704335777173.a n = A315326 n

end A315326

/-! ## A315326.P12093760348587112122

`A004275(A314885(n))-A004275(2*n)`
-/

namespace A315326.P12093760348587112122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314885 n).toNat - A004275 (2 * n)

end

end A315326.P12093760348587112122

namespace A315326

/-- `A004275(A314885(n))-A004275(2*n)` -/
def P12093760348587112122.Spec : Prop :=
  ∀ n, P12093760348587112122.a n = A315326 n

end A315326

/-! ## A315326.P6470356765236459786

`A005843(A008706(n))-A310380(n)`
-/

namespace A315326.P6470356765236459786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310380 n

end

end A315326.P6470356765236459786

namespace A315326

/-- `A005843(A008706(n))-A310380(n)` -/
def P6470356765236459786.Spec : Prop :=
  ∀ n, P6470356765236459786.a n = A315326 n

end A315326

/-!
# A315327: Coordination sequence Gal.6.329.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315327, the canonical program `A315327.P6557635488143845579` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315327 has offset 0).

The definition of A315327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315327.P6064124579350676514

`abs(A008592(n)-A310379(n))`
-/

namespace A315327.P6064124579350676514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310379 n|

end

end A315327.P6064124579350676514

namespace A315327

/-- `abs(A008592(n)-A310379(n))` -/
def P6064124579350676514.Spec : Prop :=
  ∀ n, P6064124579350676514.a n = A315327 n

end A315327

/-! ## A315327.P934181309882967524

`2*A008706(n)-A310379(n)`
-/

namespace A315327.P934181309882967524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310379 n

end

end A315327.P934181309882967524

namespace A315327

/-- `2*A008706(n)-A310379(n)` -/
def P934181309882967524.Spec : Prop :=
  ∀ n, P934181309882967524.a n = A315327 n

end A315327

/-! ## A315327.P6557635488143845579

`2*A314886(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315327

/-- `2*A314886(n)-A008574(n)` -/
def P6557635488143845579.Spec : Prop :=
  ∀ n, P6557635488143845579.a n = A315327 n

theorem P6557635488143845579.correct : P6557635488143845579.Spec := by
  intro n
  simp only [A315327]

end A315327

/-! ## A315327.P353957018775170713

`A004275(A314886(n)-A004273(n))`
-/

namespace A315327.P353957018775170713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314886 n - A004273 n).toNat

end

end A315327.P353957018775170713

namespace A315327

/-- `A004275(A314886(n)-A004273(n))` -/
def P353957018775170713.Spec : Prop :=
  ∀ n, P353957018775170713.a n = A315327 n

end A315327

/-! ## A315327.P16193423792735547586

`A008458(n)+A008574(n)-A310379(n)`
-/

namespace A315327.P16193423792735547586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310379 n)

end

end A315327.P16193423792735547586

namespace A315327

/-- `A008458(n)+A008574(n)-A310379(n)` -/
def P16193423792735547586.Spec : Prop :=
  ∀ n, P16193423792735547586.a n = A315327 n

end A315327

/-! ## A315327.P14997282538231034801

`A004273(A314886(n)-n)-A004273(n)`
-/

namespace A315327.P14997282538231034801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314886 n - (n : ℤ)).toNat - A004273 n

end

end A315327.P14997282538231034801

namespace A315327

/-- `A004273(A314886(n)-n)-A004273(n)` -/
def P14997282538231034801.Spec : Prop :=
  ∀ n, P14997282538231034801.a n = A315327 n

end A315327

/-! ## A315327.P752466546887882840

`A008574(n)+2*A004525(A047263(n+1))`
-/

namespace A315327.P752466546887882840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004525 (A047263 (n + 1)).toNat

end

end A315327.P752466546887882840

namespace A315327

/-- `A008574(n)+2*A004525(A047263(n+1))` -/
def P752466546887882840.Spec : Prop :=
  ∀ n, P752466546887882840.a n = A315327 n

end A315327

/-! ## A315327.P12377125893447264422

`A310379(n)+A005843(A008706(n)-A310379(n))`
-/

namespace A315327.P12377125893447264422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310379 n + A005843 (A008706 n - A310379 n).toNat

end

end A315327.P12377125893447264422

namespace A315327

/-- `A310379(n)+A005843(A008706(n)-A310379(n))` -/
def P12377125893447264422.Spec : Prop :=
  ∀ n, P12377125893447264422.a n = A315327 n

end A315327

/-! ## A315327.P3341571427348212762

`2*A315536(n)-A008458(n)`
-/

namespace A315327.P3341571427348212762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315536 n - A008458 n

end

end A315327.P3341571427348212762

namespace A315327

/-- `2*A315536(n)-A008458(n)` -/
def P3341571427348212762.Spec : Prop :=
  ∀ n, P3341571427348212762.a n = A315327 n

end A315327

/-! ## A315327.P9974479354458055455

`A004275(A314886(n))-A004275(2*n)`
-/

namespace A315327.P9974479354458055455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314886 n).toNat - A004275 (2 * n)

end

end A315327.P9974479354458055455

namespace A315327

/-- `A004275(A314886(n))-A004275(2*n)` -/
def P9974479354458055455.Spec : Prop :=
  ∀ n, P9974479354458055455.a n = A315327 n

end A315327

/-! ## A315327.P14108987609734293926

`2*A315319(n)-A315311(n)`
-/

namespace A315327.P14108987609734293926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315319 n - A315311 n

end

end A315327.P14108987609734293926

namespace A315327

/-- `2*A315319(n)-A315311(n)` -/
def P14108987609734293926.Spec : Prop :=
  ∀ n, P14108987609734293926.a n = A315327 n

end A315327

/-! ## A315327.P8473835259175747882

`A005843(A008706(n))-A310379(n)`
-/

namespace A315327.P8473835259175747882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310379 n

end

end A315327.P8473835259175747882

namespace A315327

/-- `A005843(A008706(n))-A310379(n)` -/
def P8473835259175747882.Spec : Prop :=
  ∀ n, P8473835259175747882.a n = A315327 n

end A315327

/-! ## A315327.P938249698525470222

`A020639(A000040(n+1)-1)*A004525(A315468(n))`
-/

namespace A315327.P938249698525470222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A004525 (A315468 n).toNat

end

end A315327.P938249698525470222

namespace A315327

/-- `A020639(A000040(n+1)-1)*A004525(A315468(n))` -/
def P938249698525470222.Spec : Prop :=
  ∀ n, P938249698525470222.a n = A315327 n

end A315327

/-! ## A315327.P7770048591917910404

`A004273(A315536(n))-A004273(3*n)`
-/

namespace A315327.P7770048591917910404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A315536 n).toNat - A004273 (3 * n)

end

end A315327.P7770048591917910404

namespace A315327

/-- `A004273(A315536(n))-A004273(3*n)` -/
def P7770048591917910404.Spec : Prop :=
  ∀ n, P7770048591917910404.a n = A315327 n

end A315327

/-!
# A315328: Coordination sequence Gal.5.330.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315328, there is no canonical definition to state claims against.
-/

/-! ## A315328.P11304865916079870483

`or(A063725(A034472(n)), A315327(n))`
-/

namespace A315328.P11304865916079870483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063725 (A034472 n).toNat) (A315327 n)

end

end A315328.P11304865916079870483

/-! ## A315328.P2508413563330624695

`or(A048881(A053497(n)), A315327(n))`
-/

namespace A315328.P2508413563330624695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048881 (A053497 n).toNat) (A315327 n)

end

end A315328.P2508413563330624695

/-! ## A315328.P5724565979301105511

`xor(A187794(A027914(n)), A315643(n))`
-/

namespace A315328.P5724565979301105511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187794 (A027914 n).toNat) (A315643 n)

end

end A315328.P5724565979301105511

/-! ## A315328.P920609930388327176

`or(A167294(A032559(n+1)), A315309(n))`
-/

namespace A315328.P920609930388327176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167294 (A032559 (n + 1)).toNat) (A315309 n)

end

end A315328.P920609930388327176

/-!
# A315329: Coordination sequence Gal.6.635.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315329, the canonical program `A315329.P14714097202250854664` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315329 has offset 0).

The definition of A315329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315329.P14714097202250854664

`abs(A008592(n)-A310378(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315329

/-- `abs(A008592(n)-A310378(n))` -/
def P14714097202250854664.Spec : Prop :=
  ∀ n, P14714097202250854664.a n = A315329 n

theorem P14714097202250854664.correct : P14714097202250854664.Spec := by
  intro n
  simp only [A315329]

end A315329

/-! ## A315329.P16785192945374132537

`2*A008706(n)-A310378(n)`
-/

namespace A315329.P16785192945374132537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310378 n

end

end A315329.P16785192945374132537

namespace A315329

/-- `2*A008706(n)-A310378(n)` -/
def P16785192945374132537.Spec : Prop :=
  ∀ n, P16785192945374132537.a n = A315329 n

end A315329

/-! ## A315329.P15851013855053349157

`2*A315316(n)-A315305(n)`
-/

namespace A315329.P15851013855053349157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315316 n - A315305 n

end

end A315329.P15851013855053349157

namespace A315329

/-- `2*A315316(n)-A315305(n)` -/
def P15851013855053349157.Spec : Prop :=
  ∀ n, P15851013855053349157.a n = A315329 n

end A315329

/-! ## A315329.P6449822711122968521

`2*A315321(n)-A315312(n)`
-/

namespace A315329.P6449822711122968521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315321 n - A315312 n

end

end A315329.P6449822711122968521

namespace A315329

/-- `2*A315321(n)-A315312(n)` -/
def P6449822711122968521.Spec : Prop :=
  ∀ n, P6449822711122968521.a n = A315329 n

end A315329

/-! ## A315329.P15359645828592298698

`A008458(n)+A008574(n)-A310378(n)`
-/

namespace A315329.P15359645828592298698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310378 n)

end

end A315329.P15359645828592298698

namespace A315329

/-- `A008458(n)+A008574(n)-A310378(n)` -/
def P15359645828592298698.Spec : Prop :=
  ∀ n, P15359645828592298698.a n = A315329 n

end A315329

/-! ## A315329.P18376213601400044423

`2*A315334(n)-A315345(n)`
-/

namespace A315329.P18376213601400044423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315334 n - A315345 n

end

end A315329.P18376213601400044423

namespace A315329

/-- `2*A315334(n)-A315345(n)` -/
def P18376213601400044423.Spec : Prop :=
  ∀ n, P18376213601400044423.a n = A315329 n

end A315329

/-! ## A315329.P1865236658107726961

`2*A315537(n)-A008458(n)`
-/

namespace A315329.P1865236658107726961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315537 n - A008458 n

end

end A315329.P1865236658107726961

namespace A315329

/-- `2*A315537(n)-A008458(n)` -/
def P1865236658107726961.Spec : Prop :=
  ∀ n, P1865236658107726961.a n = A315329 n

end A315329

/-! ## A315329.P17662031988095079303

`A103517(A315537(n)-A016777(n))`
-/

namespace A315329.P17662031988095079303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315537 n - A016777 n).toNat

end

end A315329.P17662031988095079303

namespace A315329

/-- `A103517(A315537(n)-A016777(n))` -/
def P17662031988095079303.Spec : Prop :=
  ∀ n, P17662031988095079303.a n = A315329 n

end A315329

/-! ## A315329.P11732231615844224686

`A008458(n)-A005843(A008458(n)-A315537(n))`
-/

namespace A315329.P11732231615844224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315537 n).toNat

end

end A315329.P11732231615844224686

namespace A315329

/-- `A008458(n)-A005843(A008458(n)-A315537(n))` -/
def P11732231615844224686.Spec : Prop :=
  ∀ n, P11732231615844224686.a n = A315329 n

end A315329

/-! ## A315329.P8022719671053382165

`A017281(n)-A004442(A310378(n))`
-/

namespace A315329.P8022719671053382165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310378 n).toNat

end

end A315329.P8022719671053382165

namespace A315329

/-- `A017281(n)-A004442(A310378(n))` -/
def P8022719671053382165.Spec : Prop :=
  ∀ n, P8022719671053382165.a n = A315329 n

end A315329

/-! ## A315329.P6427205341173903863

`A005843(A008706(n))-A310378(n)`
-/

namespace A315329.P6427205341173903863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310378 n

end

end A315329.P6427205341173903863

namespace A315329

/-- `A005843(A008706(n))-A310378(n)` -/
def P6427205341173903863.Spec : Prop :=
  ∀ n, P6427205341173903863.a n = A315329 n

end A315329

/-! ## A315329.P5064837229965044970

`A005843(A315537(n))-A008458(n)`
-/

namespace A315329.P5064837229965044970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315537 n).toNat - A008458 n

end

end A315329.P5064837229965044970

namespace A315329

/-- `A005843(A315537(n))-A008458(n)` -/
def P5064837229965044970.Spec : Prop :=
  ∀ n, P5064837229965044970.a n = A315329 n

end A315329

/-! ## A315329.P829668711469031472

`A065502(A008458(n))-A310378(n)`
-/

namespace A315329.P829668711469031472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310378 n

end

end A315329.P829668711469031472

namespace A315329

/-- `A065502(A008458(n))-A310378(n)` -/
def P829668711469031472.Spec : Prop :=
  ∀ n, P829668711469031472.a n = A315329 n

end A315329

/-! ## A315329.P14735445970046361933

`A315655(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315329.P14735445970046361933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315329.P14735445970046361933

namespace A315329

/-- `A315655(2*n)+A008458(n+1)-(12*n+6)` -/
def P14735445970046361933.Spec : Prop :=
  ∀ n, P14735445970046361933.a n = A315329 n

end A315329

/-!
# A315330: Coordination sequence Gal.5.326.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315330, there is no canonical definition to state claims against.
-/

/-! ## A315330.P18204615003486431357

`A315331(n)-A025459(A306558(n))`
-/

namespace A315330.P18204615003486431357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n - A025459 (A306558 n).toNat

end

end A315330.P18204615003486431357

/-! ## A315330.P3897949155180996686

`A326839(A166890(n+1))+A301678(n)`
-/

namespace A315330.P3897949155180996686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A166890 (n + 1)).toNat + A301678 n

end

end A315330.P3897949155180996686

/-! ## A315330.P7672399779044412272

`A315331(n)-A326681(A249158(n+1))`
-/

namespace A315330.P7672399779044412272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n - A326681 (A249158 (n + 1)).toNat

end

end A315330.P7672399779044412272

/-! ## A315330.P17643872792914997629

`A092524(A315331(n))`
-/

namespace A315330.P17643872792914997629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A315331 n).toNat

end

end A315330.P17643872792914997629

/-! ## A315330.P1938120570491458590

`A315331(A227549(n+2)-1)`
-/

namespace A315330.P1938120570491458590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 (A227549 (n + 2) - 1).toNat

end

end A315330.P1938120570491458590

/-!
# A315331: Coordination sequence Gal.3.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315331, there is no canonical definition to state claims against.
-/

/-! ## A315331.P6013833116779591053

`2*A315055(n)-A008579(n)`
-/

namespace A315331.P6013833116779591053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315055 n - A008579 n

end

end A315331.P6013833116779591053

/-! ## A315331.P15926893053665237554

`2*A315055(n)-A250122(A005843(n))`
-/

namespace A315331.P15926893053665237554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315055 n - A250122 (A005843 n).toNat

end

end A315331.P15926893053665237554

/-! ## A315331.P16754785684450935952

`2*A315497(n)-A315658(n)`
-/

namespace A315331.P16754785684450935952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315497 n - A315658 n

end

end A315331.P16754785684450935952

/-! ## A315331.P6667025292804612159

`A315365(n)+A315658(n)-A008458(n)`
-/

namespace A315331.P6667025292804612159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n + (A315658 n - A008458 n)

end

end A315331.P6667025292804612159

/-! ## A315331.P1319739728247740352

`A315658(n)-A005843(A315658(n)-A315497(n))`
-/

namespace A315331.P1319739728247740352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315658 n - A005843 (A315658 n - A315497 n).toNat

end

end A315331.P1319739728247740352

/-! ## A315331.P8682313980284355336

`A005843(A315055(n))-A008579(n)`
-/

namespace A315331.P8682313980284355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315055 n).toNat - A008579 n

end

end A315331.P8682313980284355336

/-! ## A315331.P908228503225444566

`A005843(A315055(n))-A250122(A005843(n))`
-/

namespace A315331.P908228503225444566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315055 n).toNat - A250122 (A005843 n).toNat

end

end A315331.P908228503225444566

/-! ## A315331.P14216471616682373618

`A005843(A315497(n))-A315658(n)`
-/

namespace A315331.P14216471616682373618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315497 n).toNat - A315658 n

end

end A315331.P14216471616682373618

/-! ## A315331.P12632345341666973781

`A314382(2*n)-2*n`
-/

namespace A315331.P12632345341666973781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314382 (2 * n) - (2 * n : ℤ)

end

end A315331.P12632345341666973781

/-!
# A315332: Coordination sequence Gal.6.556.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315332, there is no canonical definition to state claims against.
-/

/-! ## A315332.P5364551090037594497

`A301722(n)+A010059(A265799(n+1))`
-/

namespace A315332.P5364551090037594497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A010059 (A265799 (n + 1)).toNat

end

end A315332.P5364551090037594497

/-! ## A315332.P364188161409413240

`A301722(n)+A000035(A259383(n+1))`
-/

namespace A315332.P364188161409413240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A000035 (A259383 (n + 1)).toNat

end

end A315332.P364188161409413240

/-! ## A315332.P15539637656876065378

`A301724(n)-A121262(A089675(n+1))`
-/

namespace A315332.P15539637656876065378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A121262 (A089675 (n + 1)).toNat

end

end A315332.P15539637656876065378

/-! ## A315332.P10326803256230538053

`A301722(n)+A010051(A042572(n))`
-/

namespace A315332.P10326803256230538053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A010051 (A042572 n).toNat

end

end A315332.P10326803256230538053

/-! ## A315332.P3538180640644476361

`A301722(n)+A000007(A091000(n))`
-/

namespace A315332.P3538180640644476361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A000007 (A091000 n).toNat

end

end A315332.P3538180640644476361

/-!
# A315333: Coordination sequence Gal.5.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315333, the canonical program `A315333.P16393821972172640477` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315333 has offset 0).

The definition of A315333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315333.P6883792892279244477

`abs(A008592(n)-A310375(n))`
-/

namespace A315333.P6883792892279244477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310375 n|

end

end A315333.P6883792892279244477

namespace A315333

/-- `abs(A008592(n)-A310375(n))` -/
def P6883792892279244477.Spec : Prop :=
  ∀ n, P6883792892279244477.a n = A315333 n

end A315333

/-! ## A315333.P4226911871296089725

`2*A008706(n)-A310375(n)`
-/

namespace A315333.P4226911871296089725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310375 n

end

end A315333.P4226911871296089725

namespace A315333

/-- `2*A008706(n)-A310375(n)` -/
def P4226911871296089725.Spec : Prop :=
  ∀ n, P4226911871296089725.a n = A315333 n

end A315333

/-! ## A315333.P16393821972172640477

`A315275(n)+A008676(A016777(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315333

/-- `A315275(n)+A008676(A016777(n))` -/
def P16393821972172640477.Spec : Prop :=
  ∀ n, P16393821972172640477.a n = A315333 n

theorem P16393821972172640477.correct : P16393821972172640477.Spec := by
  intro n
  simp only [A315333]

end A315333

/-! ## A315333.P11567984801778147349

`A314886(n)+A004396(A151988(n))`
-/

namespace A315333.P11567984801778147349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + A004396 (A151988 n).toNat

end

end A315333.P11567984801778147349

namespace A315333

/-- `A314886(n)+A004396(A151988(n))` -/
def P11567984801778147349.Spec : Prop :=
  ∀ n, P11567984801778147349.a n = A315333 n

end A315333

/-! ## A315333.P13104167160855646144

`A008458(n)+A008574(n)-A310375(n)`
-/

namespace A315333.P13104167160855646144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310375 n)

end

end A315333.P13104167160855646144

namespace A315333

/-- `A008458(n)+A008574(n)-A310375(n)` -/
def P13104167160855646144.Spec : Prop :=
  ∀ n, P13104167160855646144.a n = A315333 n

end A315333

/-! ## A315333.P12538405551441939585

`A250120(n)+A314754(n)-A008574(n)`
-/

namespace A315333.P12538405551441939585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314754 n - A008574 n)

end

end A315333.P12538405551441939585

namespace A315333

/-- `A250120(n)+A314754(n)-A008574(n)` -/
def P12538405551441939585.Spec : Prop :=
  ∀ n, P12538405551441939585.a n = A315333 n

end A315333

/-! ## A315333.P9175819414724462485

`A330033(n)+A314191(n)`
-/

namespace A315333.P9175819414724462485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314191 n

end

end A315333.P9175819414724462485

namespace A315333

/-- `A330033(n)+A314191(n)` -/
def P9175819414724462485.Spec : Prop :=
  ∀ n, P9175819414724462485.a n = A315333 n

end A315333

/-! ## A315333.P16736914440214466559

`A008458(n)+A250120(n)-A314191(n)`
-/

namespace A315333.P16736914440214466559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A314191 n)

end

end A315333.P16736914440214466559

namespace A315333

/-- `A008458(n)+A250120(n)-A314191(n)` -/
def P16736914440214466559.Spec : Prop :=
  ∀ n, P16736914440214466559.a n = A315333 n

end A315333

/-! ## A315333.P8351626031200664222

`A005843(A008706(n))-A310375(n)`
-/

namespace A315333.P8351626031200664222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310375 n

end

end A315333.P8351626031200664222

namespace A315333

/-- `A005843(A008706(n))-A310375(n)` -/
def P8351626031200664222.Spec : Prop :=
  ∀ n, P8351626031200664222.a n = A315333 n

end A315333

/-! ## A315333.P11656031004672125564

`A180004(A315275(n))`
-/

namespace A315333.P11656031004672125564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A315275 n).toNat

end

end A315333.P11656031004672125564

namespace A315333

/-- `A180004(A315275(n))` -/
def P11656031004672125564.Spec : Prop :=
  ∀ n, P11656031004672125564.a n = A315333 n

end A315333

/-! ## A315333.P6524651496485650684

`A314943(n)+A059995(A016969(n))`
-/

namespace A315333.P6524651496485650684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n + A059995 (A016969 n).toNat

end

end A315333.P6524651496485650684

namespace A315333

/-- `A314943(n)+A059995(A016969(n))` -/
def P6524651496485650684.Spec : Prop :=
  ∀ n, P6524651496485650684.a n = A315333 n

end A315333

/-! ## A315333.P11268830636024918844

`A004524(A271114(n)+A250120(n))`
-/

namespace A315333.P11268830636024918844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A271114 n + A250120 n).toNat

end

end A315333.P11268830636024918844

namespace A315333

/-- `A004524(A271114(n)+A250120(n))` -/
def P11268830636024918844.Spec : Prop :=
  ∀ n, P11268830636024918844.a n = A315333 n

end A315333

/-!
# A315334: Coordination sequence Gal.6.623.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315334, the canonical program `A315334.P17764354793355605835` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315334 has offset 0).

The definition of A315334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315334.P15051220699907464322

`abs(A008592(n)-A310374(n))`
-/

namespace A315334.P15051220699907464322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310374 n|

end

end A315334.P15051220699907464322

namespace A315334

/-- `abs(A008592(n)-A310374(n))` -/
def P15051220699907464322.Spec : Prop :=
  ∀ n, P15051220699907464322.a n = A315334 n

end A315334

/-! ## A315334.P14616313728255974158

`2*A008706(n)-A310374(n)`
-/

namespace A315334.P14616313728255974158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310374 n

end

end A315334.P14616313728255974158

namespace A315334

/-- `2*A008706(n)-A310374(n)` -/
def P14616313728255974158.Spec : Prop :=
  ∀ n, P14616313728255974158.a n = A315334 n

end A315334

/-! ## A315334.P17764354793355605835

`2*A313876(n)-A310499(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315334

/-- `2*A313876(n)-A310499(n)` -/
def P17764354793355605835.Spec : Prop :=
  ∀ n, P17764354793355605835.a n = A315334 n

theorem P17764354793355605835.correct : P17764354793355605835.Spec := by
  intro n
  simp only [A315334]

end A315334

/-! ## A315334.P17610992441691038121

`2*A315261(n)-A315183(n)`
-/

namespace A315334.P17610992441691038121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315261 n - A315183 n

end

end A315334.P17610992441691038121

namespace A315334

/-- `2*A315261(n)-A315183(n)` -/
def P17610992441691038121.Spec : Prop :=
  ∀ n, P17610992441691038121.a n = A315334 n

end A315334

/-! ## A315334.P9002440858722795856

`A135042(2*n+1)-A310374(n)`
-/

namespace A315334.P9002440858722795856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A310374 n

end

end A315334.P9002440858722795856

namespace A315334

/-- `A135042(2*n+1)-A310374(n)` -/
def P9002440858722795856.Spec : Prop :=
  ∀ n, P9002440858722795856.a n = A315334 n

end A315334

/-! ## A315334.P18086562601814034001

`A184418(A008574(n))-A310374(n)`
-/

namespace A315334.P18086562601814034001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310374 n

end

end A315334.P18086562601814034001

namespace A315334

/-- `A184418(A008574(n))-A310374(n)` -/
def P18086562601814034001.Spec : Prop :=
  ∀ n, P18086562601814034001.a n = A315334 n

end A315334

/-! ## A315334.P13499021606382284802

`A008458(n)+A008574(n)-A310374(n)`
-/

namespace A315334.P13499021606382284802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310374 n)

end

end A315334.P13499021606382284802

namespace A315334

/-- `A008458(n)+A008574(n)-A310374(n)` -/
def P13499021606382284802.Spec : Prop :=
  ∀ n, P13499021606382284802.a n = A315334 n

end A315334

/-! ## A315334.P11205663569475137656

`A310499(n)+A005843(A313876(n)-A310499(n))`
-/

namespace A315334.P11205663569475137656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310499 n + A005843 (A313876 n - A310499 n).toNat

end

end A315334.P11205663569475137656

namespace A315334

/-- `A310499(n)+A005843(A313876(n)-A310499(n))` -/
def P11205663569475137656.Spec : Prop :=
  ∀ n, P11205663569475137656.a n = A315334 n

end A315334

/-! ## A315334.P9681448617221581300

`(A315345(n)+A315329(n))/2`
-/

namespace A315334.P9681448617221581300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315345 n + A315329 n : ℚ) / 2

end

end A315334.P9681448617221581300

namespace A315334

/-- `(A315345(n)+A315329(n))/2` -/
def P9681448617221581300.Spec : Prop :=
  ∀ n, P9681448617221581300.a n = (A315334 n : ℚ)

end A315334

/-! ## A315334.P996656278658168779

`A315329(n)+A004525(A315345(n)-A315329(n))`
-/

namespace A315334.P996656278658168779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 n + A004525 (A315345 n - A315329 n).toNat

end

end A315334.P996656278658168779

namespace A315334

/-- `A315329(n)+A004525(A315345(n)-A315329(n))` -/
def P996656278658168779.Spec : Prop :=
  ∀ n, P996656278658168779.a n = A315334 n

end A315334

/-! ## A315334.P7340129132637371704

`A005843(A008706(n))-A310374(n)`
-/

namespace A315334.P7340129132637371704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310374 n

end

end A315334.P7340129132637371704

namespace A315334

/-- `A005843(A008706(n))-A310374(n)` -/
def P7340129132637371704.Spec : Prop :=
  ∀ n, P7340129132637371704.a n = A315334 n

end A315334

/-! ## A315334.P13813296409746430087

`A005843(A313876(n))-A310499(n)`
-/

namespace A315334.P13813296409746430087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313876 n).toNat - A310499 n

end

end A315334.P13813296409746430087

namespace A315334

/-- `A005843(A313876(n))-A310499(n)` -/
def P13813296409746430087.Spec : Prop :=
  ∀ n, P13813296409746430087.a n = A315334 n

end A315334

/-! ## A315334.P9988867047394607052

`A065502(A008458(n))-A310374(n)`
-/

namespace A315334.P9988867047394607052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310374 n

end

end A315334.P9988867047394607052

namespace A315334

/-- `A065502(A008458(n))-A310374(n)` -/
def P9988867047394607052.Spec : Prop :=
  ∀ n, P9988867047394607052.a n = A315334 n

end A315334

/-! ## A315334.P742206792161237606

`A313519(2*n)-4*n`
-/

namespace A315334.P742206792161237606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313519 (2 * n) - (4 * n : ℤ)

end

end A315334.P742206792161237606

namespace A315334

/-- `A313519(2*n)-4*n` -/
def P742206792161237606.Spec : Prop :=
  ∀ n, P742206792161237606.a n = A315334 n

end A315334

/-! ## A315334.P4557256589693017838

`2*A008574(2*n)-A313908(2*n)`
-/

namespace A315334.P4557256589693017838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313908 (2 * n)

end

end A315334.P4557256589693017838

namespace A315334

/-- `2*A008574(2*n)-A313908(2*n)` -/
def P4557256589693017838.Spec : Prop :=
  ∀ n, P4557256589693017838.a n = A315334 n

end A315334

/-! ## A315334.P8177907664207324847

`A004525(A315345(n)+A315329(n))`
-/

namespace A315334.P8177907664207324847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315345 n + A315329 n).toNat

end

end A315334.P8177907664207324847

namespace A315334

/-- `A004525(A315345(n)+A315329(n))` -/
def P8177907664207324847.Spec : Prop :=
  ∀ n, P8177907664207324847.a n = A315334 n

end A315334

/-!
# A315335: Coordination sequence Gal.6.624.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315335, the canonical program `A315335.P12030960458542249` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315335 has offset 0).

The definition of A315335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315335.P12030960458542249

`A314899(n)+A004396(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315335

/-- `A314899(n)+A004396(n)` -/
def P12030960458542249.Spec : Prop :=
  ∀ n, P12030960458542249.a n = A315335 n

theorem P12030960458542249.correct : P12030960458542249.Spec := by
  intro n
  simp only [A315335]

end A315335

/-! ## A315335.P9303285314664664037

`A315053(n)+A004525(n)`
-/

namespace A315335.P9303285314664664037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n + A004525 n

end

end A315335.P9303285314664664037

namespace A315335

/-- `A315053(n)+A004525(n)` -/
def P9303285314664664037.Spec : Prop :=
  ∀ n, P9303285314664664037.a n = A315335 n

end A315335

/-! ## A315335.P8938625639322585969

`A312909(n)+A064429(n)`
-/

namespace A315335.P8938625639322585969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A064429 n

end

end A315335.P8938625639322585969

namespace A315335

/-- `A312909(n)+A064429(n)` -/
def P8938625639322585969.Spec : Prop :=
  ∀ n, P8938625639322585969.a n = A315335 n

end A315335

/-! ## A315335.P8712480569255363645

`A313924(n)+A134667(n)`
-/

namespace A315335.P8712480569255363645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A134667 n

end

end A315335.P8712480569255363645

namespace A315335

/-- `A313924(n)+A134667(n)` -/
def P8712480569255363645.Spec : Prop :=
  ∀ n, P8712480569255363645.a n = A315335 n

end A315335

/-! ## A315335.P1331390806255171022

`abs(A008592(n)-A310373(n))`
-/

namespace A315335.P1331390806255171022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310373 n|

end

end A315335.P1331390806255171022

namespace A315335

/-- `abs(A008592(n)-A310373(n))` -/
def P1331390806255171022.Spec : Prop :=
  ∀ n, P1331390806255171022.a n = A315335 n

end A315335

/-! ## A315335.P2295119543996555441

`A311257(n)+2*A004396(n)`
-/

namespace A315335.P2295119543996555441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + 2 * A004396 n

end

end A315335.P2295119543996555441

namespace A315335

/-- `A311257(n)+2*A004396(n)` -/
def P2295119543996555441.Spec : Prop :=
  ∀ n, P2295119543996555441.a n = A315335 n

end A315335

/-! ## A315335.P10287312524378754512

`A314899(n)+A002264(2*n+1)`
-/

namespace A315335.P10287312524378754512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A002264 (2 * n + 1)

end

end A315335.P10287312524378754512

namespace A315335

/-- `A314899(n)+A002264(2*n+1)` -/
def P10287312524378754512.Spec : Prop :=
  ∀ n, P10287312524378754512.a n = A315335 n

end A315335

/-! ## A315335.P15410342376437701510

`A311257(n)+A005843(A004396(n))`
-/

namespace A315335.P15410342376437701510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A005843 (A004396 n).toNat

end

end A315335.P15410342376437701510

namespace A315335

/-- `A311257(n)+A005843(A004396(n))` -/
def P15410342376437701510.Spec : Prop :=
  ∀ n, P15410342376437701510.a n = A315335 n

end A315335

/-! ## A315335.P3786676320682931799

`A313924(n)+A128834(A128834(n)+n)`
-/

namespace A315335.P3786676320682931799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315335.P3786676320682931799

namespace A315335

/-- `A313924(n)+A128834(A128834(n)+n)` -/
def P3786676320682931799.Spec : Prop :=
  ∀ n, P3786676320682931799.a n = A315335 n

end A315335

/-! ## A315335.P15928519732997483937

`A008458(n)+A008574(n)-A310373(n)`
-/

namespace A315335.P15928519732997483937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310373 n)

end

end A315335.P15928519732997483937

namespace A315335

/-- `A008458(n)+A008574(n)-A310373(n)` -/
def P15928519732997483937.Spec : Prop :=
  ∀ n, P15928519732997483937.a n = A315335 n

end A315335

/-! ## A315335.P145489885896557212

`A315479(n)-A128834(n-A128834(n))`
-/

namespace A315335.P145489885896557212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315335.P145489885896557212

namespace A315335

/-- `A315479(n)-A128834(n-A128834(n))` -/
def P145489885896557212.Spec : Prop :=
  ∀ n, P145489885896557212.a n = A315335 n

end A315335

/-! ## A315335.P4645993356031918946

`A004396(n)+A312123(n)+A004525(A004396(n))`
-/

namespace A315335.P4645993356031918946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312123 n + A004525 (A004396 n).toNat)

end

end A315335.P4645993356031918946

namespace A315335

/-- `A004396(n)+A312123(n)+A004525(A004396(n))` -/
def P4645993356031918946.Spec : Prop :=
  ∀ n, P4645993356031918946.a n = A315335 n

end A315335

/-! ## A315335.P15403896569741500755

`A315549(n)-A002264(n+1)`
-/

namespace A315335.P15403896569741500755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A002264 (n + 1)

end

end A315335.P15403896569741500755

namespace A315335

/-- `A315549(n)-A002264(n+1)` -/
def P15403896569741500755.Spec : Prop :=
  ∀ n, P15403896569741500755.a n = A315335 n

end A315335

/-! ## A315335.P6593760271391554868

`A004396(n)+A315549(n)-n`
-/

namespace A315335.P6593760271391554868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315549 n - (n : ℤ))

end

end A315335.P6593760271391554868

namespace A315335

/-- `A004396(n)+A315549(n)-n` -/
def P6593760271391554868.Spec : Prop :=
  ∀ n, P6593760271391554868.a n = A315335 n

end A315335

/-! ## A315335.P13636778587166360287

`A008576(n)+A315549(n)-A008486(n)`
-/

namespace A315335.P13636778587166360287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315549 n - A008486 n)

end

end A315335.P13636778587166360287

namespace A315335

/-- `A008576(n)+A315549(n)-A008486(n)` -/
def P13636778587166360287.Spec : Prop :=
  ∀ n, P13636778587166360287.a n = A315335 n

end A315335

/-!
# A315337: Coordination sequence Gal.4.145.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315337, the canonical program `A315337.P5965707628135299057` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315337 has offset 0).

The definition of A315337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315337.P5965707628135299057

`A312475(n)+2*A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315337

/-- `A312475(n)+2*A004525(n)` -/
def P5965707628135299057.Spec : Prop :=
  ∀ n, P5965707628135299057.a n = A315337 n

theorem P5965707628135299057.correct : P5965707628135299057.Spec := by
  intro n
  simp only [A315337]

end A315337

/-! ## A315337.P12052787522461517996

`A312475(n)+A005843(A004525(n))`
-/

namespace A315337.P12052787522461517996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A005843 (A004525 n).toNat

end

end A315337.P12052787522461517996

namespace A315337

/-- `A312475(n)+A005843(A004525(n))` -/
def P12052787522461517996.Spec : Prop :=
  ∀ n, P12052787522461517996.a n = A315337 n

end A315337

/-! ## A315337.P5401945286354596175

`A008458(n)+A250120(n)-A314188(n)`
-/

namespace A315337.P5401945286354596175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A314188 n)

end

end A315337.P5401945286354596175

namespace A315337

/-- `A008458(n)+A250120(n)-A314188(n)` -/
def P5401945286354596175.Spec : Prop :=
  ∀ n, P5401945286354596175.a n = A315337 n

end A315337

/-! ## A315337.P13069092925649096359

`A313975(n)+A101455(n)`
-/

namespace A315337.P13069092925649096359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + A101455 n

end

end A315337.P13069092925649096359

namespace A315337

/-- `A313975(n)+A101455(n)` -/
def P13069092925649096359.Spec : Prop :=
  ∀ n, P13069092925649096359.a n = A315337 n

end A315337

/-! ## A315337.P8330058261559798421

`A313975(n)-A056594(n+1)`
-/

namespace A315337.P8330058261559798421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A056594 (n + 1)

end

end A315337.P8330058261559798421

namespace A315337

/-- `A313975(n)-A056594(n+1)` -/
def P8330058261559798421.Spec : Prop :=
  ∀ n, P8330058261559798421.a n = A315337 n

end A315337

/-! ## A315337.P5696208983910906562

`A313975(n)+A046978(2*n)`
-/

namespace A315337.P5696208983910906562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + A046978 (2 * n)

end

end A315337.P5696208983910906562

namespace A315337

/-- `A313975(n)+A046978(2*n)` -/
def P5696208983910906562.Spec : Prop :=
  ∀ n, P5696208983910906562.a n = A315337 n

end A315337

/-! ## A315337.P16483289699885200353

`A313975(n)+A132380(2*n)`
-/

namespace A315337.P16483289699885200353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + A132380 (2 * n)

end

end A315337.P16483289699885200353

namespace A315337

/-- `A313975(n)+A132380(2*n)` -/
def P16483289699885200353.Spec : Prop :=
  ∀ n, P16483289699885200353.a n = A315337 n

end A315337

/-!
# A315338: Coordination sequence Gal.6.651.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315338, there is no canonical definition to state claims against.
-/

/-! ## A315338.P7886621097385703863

`A315521(n)-A320841(A001519(n))`
-/

namespace A315338.P7886621097385703863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315521 n - A320841 (A001519 n).toNat

end

end A315338.P7886621097385703863

/-! ## A315338.P17722071202788072187

`A315340(n)-A025469(A259399(n))`
-/

namespace A315338.P17722071202788072187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A025469 (A259399 n).toNat

end

end A315338.P17722071202788072187

/-! ## A315338.P17322401067258728881

`A315340(n)-A011710(A034352(n+1))`
-/

namespace A315338.P17322401067258728881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A011710 (A034352 (n + 1)).toNat

end

end A315338.P17322401067258728881

/-! ## A315338.P10334793991909424863

`A315340(n)-A064911(A167467(n+1))`
-/

namespace A315338.P10334793991909424863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A064911 (A167467 (n + 1)).toNat

end

end A315338.P10334793991909424863

/-! ## A315338.P8052741795330452783

`A301708(n)-A276799(A211409(n+4))`
-/

namespace A315338.P8052741795330452783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A276799 (A211409 (n + 4)).toNat

end

end A315338.P8052741795330452783

/-!
# A315339: Coordination sequence Gal.4.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315339, the canonical program `A315339.P6475380223133209343` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315339 has offset 0).

The definition of A315339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315339.P6475380223133209343

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=16, a(4)=22, a(5)=28, a(6)=32, a(7)=38, a(8)=44`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315339

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P6475380223133209343.Spec : Prop :=
  ∀ n, P6475380223133209343.a n = A315339 n

theorem P6475380223133209343.correct : P6475380223133209343.Spec := by
  intro n
  simp only [A315339]

end A315339

/-! ## A315339.P826268579955353961

`abs(A008592(n)-A310372(n))`
-/

namespace A315339.P826268579955353961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310372 n|

end

end A315339.P826268579955353961

namespace A315339

/-- `abs(A008592(n)-A310372(n))` -/
def P826268579955353961.Spec : Prop :=
  ∀ n, P826268579955353961.a n = A315339 n

end A315339

/-! ## A315339.P15695878313850662997

`A315273(n)+Δ[A011860(n)]`
-/

namespace A315339.P15695878313850662997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n + (f1 (n + 1) - f1 n)

end

end A315339.P15695878313850662997

namespace A315339

/-- `A315273(n)+Δ[A011860(n)]` -/
def P15695878313850662997.Spec : Prop :=
  ∀ n, P15695878313850662997.a n = A315339 n

end A315339

/-! ## A315339.P10131326244496740091

`A004275(A057349(n+1)-2)`
-/

namespace A315339.P10131326244496740091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A057349 (n + 1) - 2).toNat

end

end A315339.P10131326244496740091

namespace A315339

/-- `A004275(A057349(n+1)-2)` -/
def P10131326244496740091.Spec : Prop :=
  ∀ n, P10131326244496740091.a n = A315339 n

end A315339

/-! ## A315339.P16492224235073789924

`A004277(A083033(n+1)+n)`
-/

namespace A315339.P16492224235073789924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A083033 (n + 1) + (n : ℤ)).toNat

end

end A315339.P16492224235073789924

namespace A315339

/-- `A004277(A083033(n+1)+n)` -/
def P16492224235073789924.Spec : Prop :=
  ∀ n, P16492224235073789924.a n = A315339 n

end A315339

/-! ## A315339.P2661947778272312238

`A310529(n)+2*A238469(n)`
-/

namespace A315339.P2661947778272312238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + 2 * A238469 n

end

end A315339.P2661947778272312238

namespace A315339

/-- `A310529(n)+2*A238469(n)` -/
def P2661947778272312238.Spec : Prop :=
  ∀ n, P2661947778272312238.a n = A315339 n

end A315339

/-! ## A315339.P9514495934498175959

`2*A008706(n)-A310372(n)`
-/

namespace A315339.P9514495934498175959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310372 n

end

end A315339.P9514495934498175959

namespace A315339

/-- `2*A008706(n)-A310372(n)` -/
def P9514495934498175959.Spec : Prop :=
  ∀ n, P9514495934498175959.a n = A315339 n

end A315339

/-! ## A315339.P3202826841398485959

`A004275(A083033(n+1)+1+n)`
-/

namespace A315339.P3202826841398485959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A083033 (n + 1) + 1 + (n : ℤ)).toNat

end

end A315339.P3202826841398485959

namespace A315339

/-- `A004275(A083033(n+1)+1+n)` -/
def P3202826841398485959.Spec : Prop :=
  ∀ n, P3202826841398485959.a n = A315339 n

end A315339

/-! ## A315339.P7276878511540357830

`A022144(n)-A060464(2*n+1)`
-/

namespace A315339.P7276878511540357830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A060464 (2 * n + 1)

end

end A315339.P7276878511540357830

namespace A315339

/-- `A022144(n)-A060464(2*n+1)` -/
def P7276878511540357830.Spec : Prop :=
  ∀ n, P7276878511540357830.a n = A315339 n

end A315339

/-! ## A315339.P6954275902329065881

`A008574(2*n)-A060464(2*n+1)`
-/

namespace A315339.P6954275902329065881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A060464 (2 * n + 1)

end

end A315339.P6954275902329065881

namespace A315339

/-- `A008574(2*n)-A060464(2*n+1)` -/
def P6954275902329065881.Spec : Prop :=
  ∀ n, P6954275902329065881.a n = A315339 n

end A315339

/-! ## A315339.P13366645765763965617

`A257088(4*n)-A060464(2*n+1)`
-/

namespace A315339.P13366645765763965617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (4 * n) - A060464 (2 * n + 1)

end

end A315339.P13366645765763965617

namespace A315339

/-- `A257088(4*n)-A060464(2*n+1)` -/
def P13366645765763965617.Spec : Prop :=
  ∀ n, P13366645765763965617.a n = A315339 n

end A315339

/-! ## A315339.P8070552198130420079

`4*n+1+A004273(2*n)-A060464(2*n+1)`
-/

namespace A315339.P8070552198130420079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) + (A004273 (2 * n) - A060464 (2 * n + 1))

end

end A315339.P8070552198130420079

namespace A315339

/-- `4*n+1+A004273(2*n)-A060464(2*n+1)` -/
def P8070552198130420079.Spec : Prop :=
  ∀ n, P8070552198130420079.a n = A315339 n

end A315339

/-! ## A315339.P18435098634403267694

`A008458(n)+A008574(n)-A310372(n)`
-/

namespace A315339.P18435098634403267694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310372 n)

end

end A315339.P18435098634403267694

namespace A315339

/-- `A008458(n)+A008574(n)-A310372(n)` -/
def P18435098634403267694.Spec : Prop :=
  ∀ n, P18435098634403267694.a n = A315339 n

end A315339

/-! ## A315339.P3262130967608987217

`(A008574(A083033(n+1))+A008574(n))/2`
-/

namespace A315339.P3262130967608987217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A083033 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A315339.P3262130967608987217

namespace A315339

/-- `(A008574(A083033(n+1))+A008574(n))/2` -/
def P3262130967608987217.Spec : Prop :=
  ∀ n, P3262130967608987217.a n = (A315339 n : ℚ)

end A315339

/-! ## A315339.P9900316933732457619

`A313923(n)+A238469(n)`
-/

namespace A315339.P9900316933732457619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n + A238469 n

end

end A315339.P9900316933732457619

namespace A315339

/-- `A313923(n)+A238469(n)` -/
def P9900316933732457619.Spec : Prop :=
  ∀ n, P9900316933732457619.a n = A315339 n

end A315339

/-! ## A315339.P17317117537009186286

`A313923(n)+A238470(2*n)`
-/

namespace A315339.P17317117537009186286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n + A238470 (2 * n)

end

end A315339.P17317117537009186286

namespace A315339

/-- `A313923(n)+A238470(2*n)` -/
def P17317117537009186286.Spec : Prop :=
  ∀ n, P17317117537009186286.a n = A315339 n

end A315339

/-! ## A315339.P8310320643489985504

`A315490(n)-A238470(n)`
-/

namespace A315339.P8310320643489985504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n - A238470 n

end

end A315339.P8310320643489985504

namespace A315339

/-- `A315490(n)-A238470(n)` -/
def P8310320643489985504.Spec : Prop :=
  ∀ n, P8310320643489985504.a n = A315339 n

end A315339

/-! ## A315339.P6827838349336293568

`2*A315541(n)-A008458(n)`
-/

namespace A315339.P6827838349336293568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315541 n - A008458 n

end

end A315339.P6827838349336293568

namespace A315339

/-- `2*A315541(n)-A008458(n)` -/
def P6827838349336293568.Spec : Prop :=
  ∀ n, P6827838349336293568.a n = A315339 n

end A315339

/-! ## A315339.P12448036957404965836

`A315647(n)-2*A238470(n)`
-/

namespace A315339.P12448036957404965836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - 2 * A238470 n

end

end A315339.P12448036957404965836

namespace A315339

/-- `A315647(n)-2*A238470(n)` -/
def P12448036957404965836.Spec : Prop :=
  ∀ n, P12448036957404965836.a n = A315339 n

end A315339

/-! ## A315339.P4998665886566998723

`A315734(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315339.P4998665886566998723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315734 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315339.P4998665886566998723

namespace A315339

/-- `A315734(2*n)+A008458(n+1)-(12*n+6)` -/
def P4998665886566998723.Spec : Prop :=
  ∀ n, P4998665886566998723.a n = A315339 n

end A315339

/-!
# A315340: Coordination sequence Gal.6.625.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315340, the canonical program `A315340.P1423207088725425978` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315340 has offset 0).

The definition of A315340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315340.P11066700415024552242

`abs(A008592(n)-A310371(n))`
-/

namespace A315340.P11066700415024552242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310371 n|

end

end A315340.P11066700415024552242

namespace A315340

/-- `abs(A008592(n)-A310371(n))` -/
def P11066700415024552242.Spec : Prop :=
  ∀ n, P11066700415024552242.a n = A315340 n

end A315340

/-! ## A315340.P7096455250989686044

`2*A008706(n)-A310371(n)`
-/

namespace A315340.P7096455250989686044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310371 n

end

end A315340.P7096455250989686044

namespace A315340

/-- `2*A008706(n)-A310371(n)` -/
def P7096455250989686044.Spec : Prop :=
  ∀ n, P7096455250989686044.a n = A315340 n

end A315340

/-! ## A315340.P1423207088725425978

`2*A314894(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315340

/-- `2*A314894(n)-A008574(n)` -/
def P1423207088725425978.Spec : Prop :=
  ∀ n, P1423207088725425978.a n = A315340 n

theorem P1423207088725425978.correct : P1423207088725425978.Spec := by
  intro n
  simp only [A315340]

end A315340

/-! ## A315340.P9302753176989266017

`2*A313869(n)-A310491(n)`
-/

namespace A315340.P9302753176989266017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313869 n - A310491 n

end

end A315340.P9302753176989266017

namespace A315340

/-- `2*A313869(n)-A310491(n)` -/
def P9302753176989266017.Spec : Prop :=
  ∀ n, P9302753176989266017.a n = A315340 n

end A315340

/-! ## A315340.P3928603317977421566

`A004275(A314894(n)-A004273(n))`
-/

namespace A315340.P3928603317977421566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314894 n - A004273 n).toNat

end

end A315340.P3928603317977421566

namespace A315340

/-- `A004275(A314894(n)-A004273(n))` -/
def P3928603317977421566.Spec : Prop :=
  ∀ n, P3928603317977421566.a n = A315340 n

end A315340

/-! ## A315340.P16825498021149213326

`A008458(n)+A008574(n)-A310371(n)`
-/

namespace A315340.P16825498021149213326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310371 n)

end

end A315340.P16825498021149213326

namespace A315340

/-- `A008458(n)+A008574(n)-A310371(n)` -/
def P16825498021149213326.Spec : Prop :=
  ∀ n, P16825498021149213326.a n = A315340 n

end A315340

/-! ## A315340.P17199203782973341287

`A004273(A314894(n)-n)-A004273(n)`
-/

namespace A315340.P17199203782973341287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314894 n - (n : ℤ)).toNat - A004273 n

end

end A315340.P17199203782973341287

namespace A315340

/-- `A004273(A314894(n)-n)-A004273(n)` -/
def P17199203782973341287.Spec : Prop :=
  ∀ n, P17199203782973341287.a n = A315340 n

end A315340

/-! ## A315340.P8553529117913006551

`lcm(A008592(n)-A310371(n), A000034(n))`
-/

namespace A315340.P8553529117913006551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A310371 n) (A000034 n)

end

end A315340.P8553529117913006551

namespace A315340

/-- `lcm(A008592(n)-A310371(n), A000034(n))` -/
def P8553529117913006551.Spec : Prop :=
  ∀ n, (P8553529117913006551.a n : ℤ) = A315340 n

end A315340

/-! ## A315340.P1689496660128387419

`A008574(n)+A005843(A314894(n)-A008574(n))`
-/

namespace A315340.P1689496660128387419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314894 n - A008574 n).toNat

end

end A315340.P1689496660128387419

namespace A315340

/-- `A008574(n)+A005843(A314894(n)-A008574(n))` -/
def P1689496660128387419.Spec : Prop :=
  ∀ n, P1689496660128387419.a n = A315340 n

end A315340

/-! ## A315340.P3753529478170352600

`A315034(n)+A004525(A008458(n)-A315034(n))`
-/

namespace A315340.P3753529478170352600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n + A004525 (A008458 n - A315034 n).toNat

end

end A315340.P3753529478170352600

namespace A315340

/-- `A315034(n)+A004525(A008458(n)-A315034(n))` -/
def P3753529478170352600.Spec : Prop :=
  ∀ n, P3753529478170352600.a n = A315340 n

end A315340

/-! ## A315340.P9484869126689969015

`A010673(A000010(n+2))+A008592(n)-A310371(n)`
-/

namespace A315340.P9484869126689969015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A000010 (n + 2)).toNat + (A008592 n - A310371 n)

end

end A315340.P9484869126689969015

namespace A315340

/-- `A010673(A000010(n+2))+A008592(n)-A310371(n)` -/
def P9484869126689969015.Spec : Prop :=
  ∀ n, P9484869126689969015.a n = A315340 n

end A315340

/-! ## A315340.P8362391216557149304

`A017281(n)-A004442(A310371(n))`
-/

namespace A315340.P8362391216557149304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310371 n).toNat

end

end A315340.P8362391216557149304

namespace A315340

/-- `A017281(n)-A004442(A310371(n))` -/
def P8362391216557149304.Spec : Prop :=
  ∀ n, P8362391216557149304.a n = A315340 n

end A315340

/-! ## A315340.P12963985552467850226

`A005843(A314894(n))-A008574(n)`
-/

namespace A315340.P12963985552467850226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314894 n).toNat - A008574 n

end

end A315340.P12963985552467850226

namespace A315340

/-- `A005843(A314894(n))-A008574(n)` -/
def P12963985552467850226.Spec : Prop :=
  ∀ n, P12963985552467850226.a n = A315340 n

end A315340

/-! ## A315340.P8641959304210125218

`A004275(A314894(n))-A004275(2*n)`
-/

namespace A315340.P8641959304210125218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314894 n).toNat - A004275 (2 * n)

end

end A315340.P8641959304210125218

namespace A315340

/-- `A004275(A314894(n))-A004275(2*n)` -/
def P8641959304210125218.Spec : Prop :=
  ∀ n, P8641959304210125218.a n = A315340 n

end A315340

/-! ## A315340.P16988136564824523001

`A005843(A008706(n))-A310371(n)`
-/

namespace A315340.P16988136564824523001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310371 n

end

end A315340.P16988136564824523001

namespace A315340

/-- `A005843(A008706(n))-A310371(n)` -/
def P16988136564824523001.Spec : Prop :=
  ∀ n, P16988136564824523001.a n = A315340 n

end A315340

/-! ## A315340.P7123164241875363928

`2*A312902(2*n)-A008458(2*n)`
-/

namespace A315340.P7123164241875363928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312902 (2 * n) - A008458 (2 * n)

end

end A315340.P7123164241875363928

namespace A315340

/-- `2*A312902(2*n)-A008458(2*n)` -/
def P7123164241875363928.Spec : Prop :=
  ∀ n, P7123164241875363928.a n = A315340 n

end A315340

/-! ## A315340.P10172366884225032647

`A310378(2*n)-4*n`
-/

namespace A315340.P10172366884225032647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 (2 * n) - (4 * n : ℤ)

end

end A315340.P10172366884225032647

namespace A315340

/-- `A310378(2*n)-4*n` -/
def P10172366884225032647.Spec : Prop :=
  ∀ n, P10172366884225032647.a n = A315340 n

end A315340

/-! ## A315340.P921603432433033335

`2*A008574(2*n)-A315329(2*n)`
-/

namespace A315340.P921603432433033335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315329 (2 * n)

end

end A315340.P921603432433033335

namespace A315340

/-- `2*A008574(2*n)-A315329(2*n)` -/
def P921603432433033335.Spec : Prop :=
  ∀ n, P921603432433033335.a n = A315340 n

end A315340

/-!
# A315341: Coordination sequence Gal.6.667.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315341, there is no canonical definition to state claims against.
-/

/-! ## A315341.P6755522874369261606

`2*A315542(n)-A008458(n)`
-/

namespace A315341.P6755522874369261606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315542 n - A008458 n

end

end A315341.P6755522874369261606

/-! ## A315341.P84779010624494738

`2*A315542(n)-A008486(2*n)`
-/

namespace A315341.P84779010624494738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315542 n - A008486 (2 * n)

end

end A315341.P84779010624494738

/-! ## A315341.P5615090079027040294

`A103517(A315542(n)-A016777(n))`
-/

namespace A315341.P5615090079027040294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315542 n - A016777 n).toNat

end

end A315341.P5615090079027040294

/-! ## A315341.P12460506115775123950

`A103517(A315542(n)%A016777(n))`
-/

namespace A315341.P12460506115775123950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315542 n) (A016777 n)).toNat

end

end A315341.P12460506115775123950

/-! ## A315341.P12979998808974850764

`A008458(n)-A005843(A008458(n)-A315542(n))`
-/

namespace A315341.P12979998808974850764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315542 n).toNat

end

end A315341.P12979998808974850764

/-! ## A315341.P14970989465494481291

`A004396(A316046(n))+2*n`
-/

namespace A315341.P14970989465494481291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316046 n).toNat + (2 * n : ℤ)

end

end A315341.P14970989465494481291

/-! ## A315341.P7630650262547830832

`A005843(n)+A004396(A316046(n))`
-/

namespace A315341.P7630650262547830832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A316046 n).toNat

end

end A315341.P7630650262547830832

/-! ## A315341.P16570354520783792248

`A005843(A315542(n))-A008458(n)`
-/

namespace A315341.P16570354520783792248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315542 n).toNat - A008458 n

end

end A315341.P16570354520783792248

/-! ## A315341.P1834305902984601708

`A004396(A316046(n)+A008486(n))`
-/

namespace A315341.P1834305902984601708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316046 n + A008486 n).toNat

end

end A315341.P1834305902984601708

/-!
# A315342: Coordination sequence Gal.5.303.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315342, the canonical program `A315342.P13198042497454481843` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315342 has offset 0).

The definition of A315342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315342.P13198042497454481843

`A315061(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315342

/-- `A315061(n)+A004525(n)` -/
def P13198042497454481843.Spec : Prop :=
  ∀ n, P13198042497454481843.a n = A315342 n

theorem P13198042497454481843.correct : P13198042497454481843.Spec := by
  intro n
  simp only [A315342]

end A315342

/-! ## A315342.P1378134135062439140

`abs(A008592(n)-A310370(n))`
-/

namespace A315342.P1378134135062439140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310370 n|

end

end A315342.P1378134135062439140

namespace A315342

/-- `abs(A008592(n)-A310370(n))` -/
def P1378134135062439140.Spec : Prop :=
  ∀ n, P1378134135062439140.a n = A315342 n

end A315342

/-! ## A315342.P17609263575146019687

`A315061(n)+Δ[A054925(n)]`
-/

namespace A315342.P17609263575146019687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + (f1 (n + 1) - f1 n)

end

end A315342.P17609263575146019687

namespace A315342

/-- `A315061(n)+Δ[A054925(n)]` -/
def P17609263575146019687.Spec : Prop :=
  ∀ n, P17609263575146019687.a n = A315342 n

end A315342

/-! ## A315342.P1133594866305725160

`A312506(n)+2*A004525(n)`
-/

namespace A315342.P1133594866305725160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + 2 * A004525 n

end

end A315342.P1133594866305725160

namespace A315342

/-- `A312506(n)+2*A004525(n)` -/
def P1133594866305725160.Spec : Prop :=
  ∀ n, P1133594866305725160.a n = A315342 n

end A315342

/-! ## A315342.P17212546437839423191

`2*A314896(n)-A008574(n)`
-/

namespace A315342.P17212546437839423191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314896 n - A008574 n

end

end A315342.P17212546437839423191

namespace A315342

/-- `2*A314896(n)-A008574(n)` -/
def P17212546437839423191.Spec : Prop :=
  ∀ n, P17212546437839423191.a n = A315342 n

end A315342

/-! ## A315342.P13925481656824928794

`2*A314969(n)-A311625(n)`
-/

namespace A315342.P13925481656824928794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314969 n - A311625 n

end

end A315342.P13925481656824928794

namespace A315342

/-- `2*A314969(n)-A311625(n)` -/
def P13925481656824928794.Spec : Prop :=
  ∀ n, P13925481656824928794.a n = A315342 n

end A315342

/-! ## A315342.P5570273761681766933

`A315061(n)+n-∑[A021913(n)]`
-/

namespace A315342.P5570273761681766933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315342.P5570273761681766933

namespace A315342

/-- `A315061(n)+n-∑[A021913(n)]` -/
def P5570273761681766933.Spec : Prop :=
  ∀ n, P5570273761681766933.a n = A315342 n

end A315342

/-! ## A315342.P15412013319870672064

`A312506(n)+A005843(A004525(n))`
-/

namespace A315342.P15412013319870672064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A005843 (A004525 n).toNat

end

end A315342.P15412013319870672064

namespace A315342

/-- `A312506(n)+A005843(A004525(n))` -/
def P15412013319870672064.Spec : Prop :=
  ∀ n, P15412013319870672064.a n = A315342 n

end A315342

/-! ## A315342.P15188688136651986912

`A004275(A314896(n)-A004273(n))`
-/

namespace A315342.P15188688136651986912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314896 n - A004273 n).toNat

end

end A315342.P15188688136651986912

namespace A315342

/-- `A004275(A314896(n)-A004273(n))` -/
def P15188688136651986912.Spec : Prop :=
  ∀ n, P15188688136651986912.a n = A315342 n

end A315342

/-! ## A315342.P10602404070612417118

`A314896(n)+A004525(A004525(n)+n)`
-/

namespace A315342.P10602404070612417118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315342.P10602404070612417118

namespace A315342

/-- `A314896(n)+A004525(A004525(n)+n)` -/
def P10602404070612417118.Spec : Prop :=
  ∀ n, P10602404070612417118.a n = A315342 n

end A315342

/-! ## A315342.P7428280332735431517

`A008458(n)+A008574(n)-A310370(n)`
-/

namespace A315342.P7428280332735431517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310370 n)

end

end A315342.P7428280332735431517

namespace A315342

/-- `A008458(n)+A008574(n)-A310370(n)` -/
def P7428280332735431517.Spec : Prop :=
  ∀ n, P7428280332735431517.a n = A315342 n

end A315342

/-! ## A315342.P13700109809787429296

`A004273(A314896(n)-n)-A004273(n)`
-/

namespace A315342.P13700109809787429296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314896 n - (n : ℤ)).toNat - A004273 n

end

end A315342.P13700109809787429296

namespace A315342

/-- `A004273(A314896(n)-n)-A004273(n)` -/
def P13700109809787429296.Spec : Prop :=
  ∀ n, P13700109809787429296.a n = A315342 n

end A315342

/-! ## A315342.P11230970013459211170

`A004525(n)+A315320(n)-A004525(A004525(n))`
-/

namespace A315342.P11230970013459211170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315320 n - A004525 (A004525 n).toNat)

end

end A315342.P11230970013459211170

namespace A315342

/-- `A004525(n)+A315320(n)-A004525(A004525(n))` -/
def P11230970013459211170.Spec : Prop :=
  ∀ n, P11230970013459211170.a n = A315342 n

end A315342

/-! ## A315342.P939089100891178510

`A315520(n)-A046978(n-A046978(n))`
-/

namespace A315342.P939089100891178510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A315342.P939089100891178510

namespace A315342

/-- `A315520(n)-A046978(n-A046978(n))` -/
def P939089100891178510.Spec : Prop :=
  ∀ n, P939089100891178510.a n = A315342 n

end A315342

/-! ## A315342.P167976603027253128

`2*A315543(n)-A008458(n)`
-/

namespace A315342.P167976603027253128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315543 n - A008458 n

end

end A315342.P167976603027253128

namespace A315342

/-- `2*A315543(n)-A008458(n)` -/
def P167976603027253128.Spec : Prop :=
  ∀ n, P167976603027253128.a n = A315342 n

end A315342

/-! ## A315342.P10344977939794145516

`A315543(n)-A004525(n-A004525(n))`
-/

namespace A315342.P10344977939794145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315342.P10344977939794145516

namespace A315342

/-- `A315543(n)-A004525(n-A004525(n))` -/
def P10344977939794145516.Spec : Prop :=
  ∀ n, P10344977939794145516.a n = A315342 n

end A315342

/-! ## A315342.P8492455030292601569

`A004275(A314896(n))-A004275(2*n)`
-/

namespace A315342.P8492455030292601569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314896 n).toNat - A004275 (2 * n)

end

end A315342.P8492455030292601569

namespace A315342

/-- `A004275(A314896(n))-A004275(2*n)` -/
def P8492455030292601569.Spec : Prop :=
  ∀ n, P8492455030292601569.a n = A315342 n

end A315342

/-! ## A315342.P5476541263302933319

`A092533(A038189(n)+A017401(n))`
-/

namespace A315342.P5476541263302933319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A038189 n + A017401 n).toNat

end

end A315342.P5476541263302933319

namespace A315342

/-- `A092533(A038189(n)+A017401(n))` -/
def P5476541263302933319.Spec : Prop :=
  ∀ n, P5476541263302933319.a n = A315342 n

end A315342

/-! ## A315342.P3142950153557309768

`A092533(A090678(n+1)+A017401(n))`
-/

namespace A315342.P3142950153557309768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A090678 (n + 1) + A017401 n).toNat

end

end A315342.P3142950153557309768

namespace A315342

/-- `A092533(A090678(n+1)+A017401(n))` -/
def P3142950153557309768.Spec : Prop :=
  ∀ n, P3142950153557309768.a n = A315342 n

end A315342

/-! ## A315342.P16806073618190049400

`A092533(1-(A090678(n)-A017401(n)))`
-/

namespace A315342.P16806073618190049400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (1 - (A090678 n - A017401 n)).toNat

end

end A315342.P16806073618190049400

namespace A315342

/-- `A092533(1-(A090678(n)-A017401(n)))` -/
def P16806073618190049400.Spec : Prop :=
  ∀ n, P16806073618190049400.a n = A315342 n

end A315342

/-!
# A315343: Coordination sequence Gal.5.304.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315343, the canonical program `A315343.P4431004882593974719` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315343 has offset 0).

The definition of A315343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315343.P4431004882593974719

`abs(A008592(n)-A310369(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315343

/-- `abs(A008592(n)-A310369(n))` -/
def P4431004882593974719.Spec : Prop :=
  ∀ n, P4431004882593974719.a n = A315343 n

theorem P4431004882593974719.correct : P4431004882593974719.Spec := by
  intro n
  simp only [A315343]

end A315343

/-! ## A315343.P8377573126802676657

`A311344(n)+2*A004396(n)`
-/

namespace A315343.P8377573126802676657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + 2 * A004396 n

end

end A315343.P8377573126802676657

namespace A315343

/-- `A311344(n)+2*A004396(n)` -/
def P8377573126802676657.Spec : Prop :=
  ∀ n, P8377573126802676657.a n = A315343 n

end A315343

/-! ## A315343.P153852344210875879

`2*A008706(n)-A310369(n)`
-/

namespace A315343.P153852344210875879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310369 n

end

end A315343.P153852344210875879

namespace A315343

/-- `2*A008706(n)-A310369(n)` -/
def P153852344210875879.Spec : Prop :=
  ∀ n, P153852344210875879.a n = A315343 n

end A315343

/-! ## A315343.P15750129819113370788

`xor(1, A017281(n)-A310369(n))`
-/

namespace A315343.P15750129819113370788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310369 n)

end

end A315343.P15750129819113370788

namespace A315343

/-- `xor(1, A017281(n)-A310369(n))` -/
def P15750129819113370788.Spec : Prop :=
  ∀ n, P15750129819113370788.a n = A315343 n

end A315343

/-! ## A315343.P3118049279480698982

`A311344(n)+A005843(A004396(n))`
-/

namespace A315343.P3118049279480698982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + A005843 (A004396 n).toNat

end

end A315343.P3118049279480698982

namespace A315343

/-- `A311344(n)+A005843(A004396(n))` -/
def P3118049279480698982.Spec : Prop :=
  ∀ n, P3118049279480698982.a n = A315343 n

end A315343

/-! ## A315343.P1510751073959834390

`A315068(n)+A004396(A004396(n))`
-/

namespace A315343.P1510751073959834390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n + A004396 (A004396 n).toNat

end

end A315343.P1510751073959834390

namespace A315343

/-- `A315068(n)+A004396(A004396(n))` -/
def P1510751073959834390.Spec : Prop :=
  ∀ n, P1510751073959834390.a n = A315343 n

end A315343

/-! ## A315343.P16267933532473308638

`A312555(n)+2*A004396(A004396(n))`
-/

namespace A315343.P16267933532473308638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n + 2 * A004396 (A004396 n).toNat

end

end A315343.P16267933532473308638

namespace A315343

/-- `A312555(n)+2*A004396(A004396(n))` -/
def P16267933532473308638.Spec : Prop :=
  ∀ n, P16267933532473308638.a n = A315343 n

end A315343

/-! ## A315343.P9791318247672249462

`A314736(n)+A004396(2*A004396(n))`
-/

namespace A315343.P9791318247672249462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A004396 (2 * A004396 n).toNat

end

end A315343.P9791318247672249462

namespace A315343

/-- `A314736(n)+A004396(2*A004396(n))` -/
def P9791318247672249462.Spec : Prop :=
  ∀ n, P9791318247672249462.a n = A315343 n

end A315343

/-! ## A315343.P4357440507512033597

`A008458(n)+A008574(n)-A310369(n)`
-/

namespace A315343.P4357440507512033597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310369 n)

end

end A315343.P4357440507512033597

namespace A315343

/-- `A008458(n)+A008574(n)-A310369(n)` -/
def P4357440507512033597.Spec : Prop :=
  ∀ n, P4357440507512033597.a n = A315343 n

end A315343

/-! ## A315343.P9751129750574510460

`A004396(n)+A311993(n)+A004396(A004396(n))`
-/

namespace A315343.P9751129750574510460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311993 n + A004396 (A004396 n).toNat)

end

end A315343.P9751129750574510460

namespace A315343

/-- `A004396(n)+A311993(n)+A004396(A004396(n))` -/
def P9751129750574510460.Spec : Prop :=
  ∀ n, P9751129750574510460.a n = A315343 n

end A315343

/-! ## A315343.P11094717005361533801

`2*A315546(n)-A008458(n)`
-/

namespace A315343.P11094717005361533801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315546 n - A008458 n

end

end A315343.P11094717005361533801

namespace A315343

/-- `2*A315546(n)-A008458(n)` -/
def P11094717005361533801.Spec : Prop :=
  ∀ n, P11094717005361533801.a n = A315343 n

end A315343

/-! ## A315343.P6115684553375155132

`A315546(n)-A004396(n-A004396(n))`
-/

namespace A315343.P6115684553375155132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315343.P6115684553375155132

namespace A315343

/-- `A315546(n)-A004396(n-A004396(n))` -/
def P6115684553375155132.Spec : Prop :=
  ∀ n, P6115684553375155132.a n = A315343 n

end A315343

/-! ## A315343.P8970560138377269684

`A005843(A008706(n))-A310369(n)`
-/

namespace A315343.P8970560138377269684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310369 n

end

end A315343.P8970560138377269684

namespace A315343

/-- `A005843(A008706(n))-A310369(n)` -/
def P8970560138377269684.Spec : Prop :=
  ∀ n, P8970560138377269684.a n = A315343 n

end A315343

/-! ## A315343.P12256126760397073847

`A004523(A316047(n))+A004277(n)`
-/

namespace A315343.P12256126760397073847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A316047 n).toNat + A004277 n

end

end A315343.P12256126760397073847

namespace A315343

/-- `A004523(A316047(n))+A004277(n)` -/
def P12256126760397073847.Spec : Prop :=
  ∀ n, P12256126760397073847.a n = A315343 n

end A315343

/-!
# A315344: Coordination sequence Gal.6.640.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315344, the canonical program `A315344.P6791626864233840389` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315344 has offset 0).

The definition of A315344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315344.P14331912866101108652

`A047513(A311289(n)+1)`
-/

namespace A315344.P14331912866101108652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A311289 n + 1).toNat

end

end A315344.P14331912866101108652

namespace A315344

/-- `A047513(A311289(n)+1)` -/
def P14331912866101108652.Spec : Prop :=
  ∀ n, P14331912866101108652.a n = A315344 n

end A315344

/-! ## A315344.P10345539088420239981

`A313932(n)+A134667(n)`
-/

namespace A315344.P10345539088420239981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313932 n + A134667 n

end

end A315344.P10345539088420239981

namespace A315344

/-- `A313932(n)+A134667(n)` -/
def P10345539088420239981.Spec : Prop :=
  ∀ n, P10345539088420239981.a n = A315344 n

end A315344

/-! ## A315344.P12517405454900933650

`abs(A008592(n)-A310368(n))`
-/

namespace A315344.P12517405454900933650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310368 n|

end

end A315344.P12517405454900933650

namespace A315344

/-- `abs(A008592(n)-A310368(n))` -/
def P12517405454900933650.Spec : Prop :=
  ∀ n, P12517405454900933650.a n = A315344 n

end A315344

/-! ## A315344.P14571813487016724413

`2*A008706(n)-A310368(n)`
-/

namespace A315344.P14571813487016724413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310368 n

end

end A315344.P14571813487016724413

namespace A315344

/-- `2*A008706(n)-A310368(n)` -/
def P14571813487016724413.Spec : Prop :=
  ∀ n, P14571813487016724413.a n = A315344 n

end A315344

/-! ## A315344.P6791626864233840389

`2*A314898(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315344

/-- `2*A314898(n)-A008574(n)` -/
def P6791626864233840389.Spec : Prop :=
  ∀ n, P6791626864233840389.a n = A315344 n

theorem P6791626864233840389.correct : P6791626864233840389.Spec := by
  intro n
  simp only [A315344]

end A315344

/-! ## A315344.P18412965817335297267

`2*A315547(n)-A008458(n)`
-/

namespace A315344.P18412965817335297267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315547 n - A008458 n

end

end A315344.P18412965817335297267

namespace A315344

/-- `2*A315547(n)-A008458(n)` -/
def P18412965817335297267.Spec : Prop :=
  ∀ n, P18412965817335297267.a n = A315344 n

end A315344

/-! ## A315344.P10801464579843531387

`2*A315319(n)-A315303(n)`
-/

namespace A315344.P10801464579843531387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315319 n - A315303 n

end

end A315344.P10801464579843531387

namespace A315344

/-- `2*A315319(n)-A315303(n)` -/
def P10801464579843531387.Spec : Prop :=
  ∀ n, P10801464579843531387.a n = A315344 n

end A315344

/-! ## A315344.P2512134997037992609

`A004275(A314898(n)-A004273(n))`
-/

namespace A315344.P2512134997037992609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314898 n - A004273 n).toNat

end

end A315344.P2512134997037992609

namespace A315344

/-- `A004275(A314898(n)-A004273(n))` -/
def P2512134997037992609.Spec : Prop :=
  ∀ n, P2512134997037992609.a n = A315344 n

end A315344

/-! ## A315344.P793834312344548359

`A008458(n)+A008574(n)-A310368(n)`
-/

namespace A315344.P793834312344548359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310368 n)

end

end A315344.P793834312344548359

namespace A315344

/-- `A008458(n)+A008574(n)-A310368(n)` -/
def P793834312344548359.Spec : Prop :=
  ∀ n, P793834312344548359.a n = A315344 n

end A315344

/-! ## A315344.P11246312954608339608

`A004273(A314898(n)-n)-A004273(n)`
-/

namespace A315344.P11246312954608339608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314898 n - (n : ℤ)).toNat - A004273 n

end

end A315344.P11246312954608339608

namespace A315344

/-- `A004273(A314898(n)-n)-A004273(n)` -/
def P11246312954608339608.Spec : Prop :=
  ∀ n, P11246312954608339608.a n = A315344 n

end A315344

/-! ## A315344.P808281697606458552

`A315536(n)-A330025(n-A330025(n))`
-/

namespace A315344.P808281697606458552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315344.P808281697606458552

namespace A315344

/-- `A315536(n)-A330025(n-A330025(n))` -/
def P808281697606458552.Spec : Prop :=
  ∀ n, P808281697606458552.a n = A315344 n

end A315344

/-! ## A315344.P14121437946427976200

`A310368(n)+A005843(A008706(n)-A310368(n))`
-/

namespace A315344.P14121437946427976200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310368 n + A005843 (A008706 n - A310368 n).toNat

end

end A315344.P14121437946427976200

namespace A315344

/-- `A310368(n)+A005843(A008706(n)-A310368(n))` -/
def P14121437946427976200.Spec : Prop :=
  ∀ n, P14121437946427976200.a n = A315344 n

end A315344

/-! ## A315344.P10948947842615934101

`A004275(A314898(n))-A004275(2*n)`
-/

namespace A315344.P10948947842615934101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314898 n).toNat - A004275 (2 * n)

end

end A315344.P10948947842615934101

namespace A315344

/-- `A004275(A314898(n))-A004275(2*n)` -/
def P10948947842615934101.Spec : Prop :=
  ∀ n, P10948947842615934101.a n = A315344 n

end A315344

/-! ## A315344.P18192960064616523166

`A005843(A008706(n))-A310368(n)`
-/

namespace A315344.P18192960064616523166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310368 n

end

end A315344.P18192960064616523166

namespace A315344

/-- `A005843(A008706(n))-A310368(n)` -/
def P18192960064616523166.Spec : Prop :=
  ∀ n, P18192960064616523166.a n = A315344 n

end A315344

/-!
# A315345: Coordination sequence Gal.6.641.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315345, the canonical program `A315345.P6951023815696693816` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315345 has offset 0).

The definition of A315345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315345.P6951023815696693816

`abs(A008592(n)-A310367(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315345

/-- `abs(A008592(n)-A310367(n))` -/
def P6951023815696693816.Spec : Prop :=
  ∀ n, P6951023815696693816.a n = A315345 n

theorem P6951023815696693816.correct : P6951023815696693816.Spec := by
  intro n
  simp only [A315345]

end A315345

/-! ## A315345.P4391017808870094050

`2*A008706(n)-A310367(n)`
-/

namespace A315345.P4391017808870094050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310367 n

end

end A315345.P4391017808870094050

namespace A315345

/-- `2*A008706(n)-A310367(n)` -/
def P4391017808870094050.Spec : Prop :=
  ∀ n, P4391017808870094050.a n = A315345 n

end A315345

/-! ## A315345.P6845745843132096959

`2*A315321(n)-A315305(n)`
-/

namespace A315345.P6845745843132096959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315321 n - A315305 n

end

end A315345.P6845745843132096959

namespace A315345

/-- `2*A315321(n)-A315305(n)` -/
def P6845745843132096959.Spec : Prop :=
  ∀ n, P6845745843132096959.a n = A315345 n

end A315345

/-! ## A315345.P7059467131934603681

`xor(1, A017281(n)-A310367(n))`
-/

namespace A315345.P7059467131934603681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A310367 n)

end

end A315345.P7059467131934603681

namespace A315345

/-- `xor(1, A017281(n)-A310367(n))` -/
def P7059467131934603681.Spec : Prop :=
  ∀ n, P7059467131934603681.a n = A315345 n

end A315345

/-! ## A315345.P3652809613967305331

`A017281(n)-A004442(A310367(n))`
-/

namespace A315345.P3652809613967305331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A310367 n).toNat

end

end A315345.P3652809613967305331

namespace A315345

/-- `A017281(n)-A004442(A310367(n))` -/
def P3652809613967305331.Spec : Prop :=
  ∀ n, P3652809613967305331.a n = A315345 n

end A315345

/-! ## A315345.P14575347815442280791

`A008458(n)+A008574(n)-A310367(n)`
-/

namespace A315345.P14575347815442280791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310367 n)

end

end A315345.P14575347815442280791

namespace A315345

/-- `A008458(n)+A008574(n)-A310367(n)` -/
def P14575347815442280791.Spec : Prop :=
  ∀ n, P14575347815442280791.a n = A315345 n

end A315345

/-! ## A315345.P1369873843347017274

`A310367(n)+A005843(A008706(n)-A310367(n))`
-/

namespace A315345.P1369873843347017274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310367 n + A005843 (A008706 n - A310367 n).toNat

end

end A315345.P1369873843347017274

namespace A315345

/-- `A310367(n)+A005843(A008706(n)-A310367(n))` -/
def P1369873843347017274.Spec : Prop :=
  ∀ n, P1369873843347017274.a n = A315345 n

end A315345

/-! ## A315345.P3476999733525900799

`(A008592(n)-A310367(n))^A001221(A000961(n+1))`
-/

namespace A315345.P3476999733525900799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A310367 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A315345.P3476999733525900799

namespace A315345

/-- `(A008592(n)-A310367(n))^A001221(A000961(n+1))` -/
def P3476999733525900799.Spec : Prop :=
  ∀ n, P3476999733525900799.a n = (A315345 n : ℚ)

end A315345

/-! ## A315345.P16824316480395166606

`2*A315548(n)-A008458(n)`
-/

namespace A315345.P16824316480395166606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315548 n - A008458 n

end

end A315345.P16824316480395166606

namespace A315345

/-- `2*A315548(n)-A008458(n)` -/
def P16824316480395166606.Spec : Prop :=
  ∀ n, P16824316480395166606.a n = A315345 n

end A315345

/-! ## A315345.P3876121118372893866

`A008458(n)-A005843(A008458(n)-A315548(n))`
-/

namespace A315345.P3876121118372893866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315548 n).toNat

end

end A315345.P3876121118372893866

namespace A315345

/-- `A008458(n)-A005843(A008458(n)-A315548(n))` -/
def P3876121118372893866.Spec : Prop :=
  ∀ n, P3876121118372893866.a n = A315345 n

end A315345

/-! ## A315345.P14353912469354862668

`A313933(n)+A134667(n)`
-/

namespace A315345.P14353912469354862668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313933 n + A134667 n

end

end A315345.P14353912469354862668

namespace A315345

/-- `A313933(n)+A134667(n)` -/
def P14353912469354862668.Spec : Prop :=
  ∀ n, P14353912469354862668.a n = A315345 n

end A315345

/-! ## A315345.P13107110674229763326

`A005843(A008706(n))-A310367(n)`
-/

namespace A315345.P13107110674229763326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310367 n

end

end A315345.P13107110674229763326

namespace A315345

/-- `A005843(A008706(n))-A310367(n)` -/
def P13107110674229763326.Spec : Prop :=
  ∀ n, P13107110674229763326.a n = A315345 n

end A315345

/-! ## A315345.P1713433603652884424

`A005843(A315548(n))-A008458(n)`
-/

namespace A315345.P1713433603652884424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315548 n).toNat - A008458 n

end

end A315345.P1713433603652884424

namespace A315345

/-- `A005843(A315548(n))-A008458(n)` -/
def P1713433603652884424.Spec : Prop :=
  ∀ n, P1713433603652884424.a n = A315345 n

end A315345

/-!
# A315346: Coordination sequence Gal.6.673.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315346, there is no canonical definition to state claims against.
-/

/-! ## A315346.P14349577874657843363

`A314154(n)+A130717(n)`
-/

namespace A315346.P14349577874657843363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + A130717 n

end

end A315346.P14349577874657843363

/-! ## A315346.P8581559952376016666

`A314154(n)+Δ[A130507(n)]`
-/

namespace A315346.P8581559952376016666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P8581559952376016666

/-! ## A315346.P12604070033792638754

`A314154(n)+Δ[Δ[A130845(n)]]`
-/

namespace A315346.P12604070033792638754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P12604070033792638754

/-! ## A315346.P4488898391569970370

`A314154(n)+Δ[A131358(A057353(n))]`
-/

namespace A315346.P4488898391569970370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P4488898391569970370

/-! ## A315346.P1974256382799004852

`A314154(n)+Δ[A131358(A131742(n))]`
-/

namespace A315346.P1974256382799004852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P1974256382799004852

/-! ## A315346.P10623575062358343153

`A314154(n)+A315925(n)-A315071(n)`
-/

namespace A315346.P10623575062358343153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (A315925 n - A315071 n)

end

end A315346.P10623575062358343153

/-! ## A315346.P8981984678023469770

`A314154(n)+Δ[A131730(n*A021913(n))]`
-/

namespace A315346.P8981984678023469770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P8981984678023469770

/-! ## A315346.P6245348339918168223

`A314154(n)+Δ[A307012(A296805(n+1))]`
-/

namespace A315346.P6245348339918168223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A296805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (f1 (n + 1) - f1 n)

end

end A315346.P6245348339918168223

/-!
# A315347: Coordination sequence Gal.6.593.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315347, there is no canonical definition to state claims against.
-/

/-! ## A315347.P6188281434640731463

`A316012(n)+A001221(A071725(n))`
-/

namespace A315347.P6188281434640731463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316012 n + A001221 (A071725 n).toNat

end

end A315347.P6188281434640731463

/-!
# A315348: Coordination sequence Gal.3.59.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315348, there is no canonical definition to state claims against.
-/

/-! ## A315348.P10343131877104819355

`(A315916(n)+A008458(n))/2`
-/

namespace A315348.P10343131877104819355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315916 n + A008458 n : ℚ) / 2

end

end A315348.P10343131877104819355

/-! ## A315348.P7618541589146848808

`A014682(A315916(n)+A008458(n))`
-/

namespace A315348.P7618541589146848808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315916 n + A008458 n).toNat

end

end A315348.P7618541589146848808

/-! ## A315348.P7805261506349016475

`A315916(n)+A004525(A008458(n)-A315916(n))`
-/

namespace A315348.P7805261506349016475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n + A004525 (A008458 n - A315916 n).toNat

end

end A315348.P7805261506349016475

/-! ## A315348.P9732355293792118421

`A315916(n)+A004526(A016921(n)-A315916(n))`
-/

namespace A315348.P9732355293792118421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n + A004526 (A016921 n - A315916 n).toNat

end

end A315348.P9732355293792118421

/-! ## A315348.P1320768838794487686

`A008458(n)-A004526(A008458(n)-A315916(n))`
-/

namespace A315348.P1320768838794487686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315916 n).toNat

end

end A315348.P1320768838794487686

/-! ## A315348.P15473980920943708301

`A008574(n)+A002264(A315796(n))`
-/

namespace A315348.P15473980920943708301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A315796 n).toNat

end

end A315348.P15473980920943708301

/-! ## A315348.P3839975241190318868

`A008486(n)+A004526(A315916(n))`
-/

namespace A315348.P3839975241190318868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315916 n).toNat

end

end A315348.P3839975241190318868

/-! ## A315348.P16039682070259596854

`A008585(n)+A004525(A315916(n))`
-/

namespace A315348.P16039682070259596854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315916 n).toNat

end

end A315348.P16039682070259596854

/-! ## A315348.P8169348914420309479

`A110654(A315916(n))+A008588(n)/2`
-/

namespace A315348.P8169348914420309479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A315916 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A315348.P8169348914420309479

/-! ## A315348.P13286695608586215634

`A004277(n)+A004526(A315916(n))+n`
-/

namespace A315348.P13286695608586215634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A004526 (A315916 n).toNat + (n : ℤ))

end

end A315348.P13286695608586215634

/-! ## A315348.P18194986882043063763

`A110654(A008588(n))+A110654(A315916(n))`
-/

namespace A315348.P18194986882043063763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008588 n).toNat + A110654 (A315916 n).toNat

end

end A315348.P18194986882043063763

/-! ## A315348.P3843182015399107544

`A004525(A315916(n)+A008458(n))`
-/

namespace A315348.P3843182015399107544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315916 n + A008458 n).toNat

end

end A315348.P3843182015399107544

/-! ## A315348.P2985115652760639353

`A004526(A315916(n)+A008458(n))`
-/

namespace A315348.P2985115652760639353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315916 n + A008458 n).toNat

end

end A315348.P2985115652760639353

/-! ## A315348.P3056953408897957361

`A004526(A315916(n)+A016921(n))`
-/

namespace A315348.P3056953408897957361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315916 n + A016921 n).toNat

end

end A315348.P3056953408897957361

/-! ## A315348.P9411585267598277684

`A110654(A315916(n)+A008588(n))`
-/

namespace A315348.P9411585267598277684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315916 n + A008588 n).toNat

end

end A315348.P9411585267598277684

/-!
# A315349: Coordination sequence Gal.5.307.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315349, there is no canonical definition to state claims against.
-/

/-! ## A315349.P5747929214953318504

`6*n+2-(A273404(n)+A001221(A124373(n)))`
-/

namespace A315349.P5747929214953318504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (2 - (A273404 n + A001221 (A124373 n).toNat))

end

end A315349.P5747929214953318504

/-!
# A315350: Coordination sequence Gal.5.297.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315350, there is no canonical definition to state claims against.
-/

/-! ## A315350.P16199483472357800668

`A330166(A320797(n))+A313916(n)`
-/

namespace A315350.P16199483472357800668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (A320797 n).toNat + A313916 n

end

end A315350.P16199483472357800668

/-! ## A315350.P12707927746352322277

`A313919(n)+A007949(A050488(n+2))`
-/

namespace A315350.P12707927746352322277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313919 n + A007949 (A050488 (n + 2)).toNat

end

end A315350.P12707927746352322277

/-! ## A315350.P1941781257087465311

`or(A315317(A227549(n+1)), A315331(n))`
-/

namespace A315350.P1941781257087465311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315317 (A227549 (n + 1)).toNat) (A315331 n)

end

end A315350.P1941781257087465311

/-! ## A315350.P4291923080872778904

`A314935(A227549(n+1))+A004525(A047412(n+1))`
-/

namespace A315350.P4291923080872778904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314935 (A227549 (n + 1)).toNat + A004525 (A047412 (n + 1)).toNat

end

end A315350.P4291923080872778904

/-! ## A315350.P1567730766161655826

`A004525(A047412(n+1))+A313613(n)-A238470(n²²)`
-/

namespace A315350.P1567730766161655826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047412 (n + 1)).toNat + (A313613 n - A238470 ((n ^ 2) ^ 2))

end

end A315350.P1567730766161655826

/-!
# A315351: Coordination sequence Gal.6.650.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315351, the canonical program `A315351.P1121042344882834040` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315351 has offset 0).

The definition of A315351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315351.P1121042344882834040

`A314160(n)+A244895(2*n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315351

/-- `A314160(n)+A244895(2*n)` -/
def P1121042344882834040.Spec : Prop :=
  ∀ n, P1121042344882834040.a n = A315351 n

theorem P1121042344882834040.correct : P1121042344882834040.Spec := by
  intro n
  simp only [A315351]

end A315351

/-! ## A315351.P2366055009421747429

`A314160(n)-A238468(A047363(n+1))`
-/

namespace A315351.P2366055009421747429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314160 n - A238468 (A047363 (n + 1)).toNat

end

end A315351.P2366055009421747429

namespace A315351

/-- `A314160(n)-A238468(A047363(n+1))` -/
def P2366055009421747429.Spec : Prop :=
  ∀ n, P2366055009421747429.a n = A315351 n

end A315351

/-! ## A315351.P17251068507161654830

`A315352(n)-A184955(A257241(n+2))`
-/

namespace A315351.P17251068507161654830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315352 n - A184955 (A257241 (n + 2)).toNat

end

end A315351.P17251068507161654830

namespace A315351

/-- `A315352(n)-A184955(A257241(n+2))` -/
def P17251068507161654830.Spec : Prop :=
  ∀ n, P17251068507161654830.a n = A315351 n

end A315351

/-! ## A315351.P1930383659414684525

`A315352(n)%A065118(n+2)`
-/

namespace A315351.P1930383659414684525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315352 n) (A065118 (n + 2))

end

end A315351.P1930383659414684525

namespace A315351

/-- `A315352(n)%A065118(n+2)` -/
def P1930383659414684525.Spec : Prop :=
  ∀ n, P1930383659414684525.a n = A315351 n

end A315351

/-! ## A315351.P15271074705099137940

`A315352(n)+A000007(A000110(n))`
-/

namespace A315351.P15271074705099137940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315352 n + A000007 (A000110 n).toNat

end

end A315351.P15271074705099137940

namespace A315351

/-- `A315352(n)+A000007(A000110(n))` -/
def P15271074705099137940.Spec : Prop :=
  ∀ n, P15271074705099137940.a n = A315351 n

end A315351

/-!
# A315353: Coordination sequence Gal.6.629.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315353, there is no canonical definition to state claims against.
-/

/-! ## A315353.P9663894556684292491

`A315031(n)+A001222(A013155(n))`
-/

namespace A315353.P9663894556684292491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315031 n + A001222 (A013155 n).toNat

end

end A315353.P9663894556684292491

/-! ## A315353.P11017604485038288948

`A315547(n)-A001842(A148826(n))`
-/

namespace A315353.P11017604485038288948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A001842 (A148826 n).toNat

end

end A315353.P11017604485038288948

/-! ## A315353.P14401210066603980223

`A315547(n)-A001842(A148827(n))`
-/

namespace A315353.P14401210066603980223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A001842 (A148827 n).toNat

end

end A315353.P14401210066603980223

/-! ## A315353.P9219021426952219006

`A005408(3*n+4)-A000523(A235954(2*n+3))`
-/

namespace A315353.P9219021426952219006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (3 * n + 4) - A000523 (A235954 (2 * n + 3)).toNat

end

end A315353.P9219021426952219006

/-! ## A315353.P11638402132358005585

`A001222(A013155(n))+A262900(n!)+A250120(n)`
-/

namespace A315353.P11638402132358005585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A013155 n).toNat + (A262900 (Nat.factorial n) + A250120 n)

end

end A315353.P11638402132358005585

/-!
# A315354: Coordination sequence Gal.5.144.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315354, there is no canonical definition to state claims against.
-/

/-! ## A315354.P43073094057952317

`A313918(n)+A113103(A114151(n))`
-/

namespace A315354.P43073094057952317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 n + A113103 (A114151 n).toNat

end

end A315354.P43073094057952317

/-! ## A315354.P16011873331175405669

`A313918(n)+A178580(A113103(n))`
-/

namespace A315354.P16011873331175405669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 n + A178580 (A113103 n).toNat

end

end A315354.P16011873331175405669

/-! ## A315354.P3875018492019338115

`A315331(n)+A262693(A321228(n))`
-/

namespace A315354.P3875018492019338115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A262693 (A321228 n).toNat

end

end A315354.P3875018492019338115

/-! ## A315354.P5146788299708036508

`A315331(n)+A014707(A206900(n+1))`
-/

namespace A315354.P5146788299708036508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A014707 (A206900 (n + 1)).toNat

end

end A315354.P5146788299708036508

/-! ## A315354.P3448438879211611962

`A315331(n)+A062892(A234443(n+1))`
-/

namespace A315354.P3448438879211611962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A062892 (A234443 (n + 1)).toNat

end

end A315354.P3448438879211611962

/-!
# A315355: Coordination sequence Gal.5.325.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315355, there is no canonical definition to state claims against.
-/

/-! ## A315355.P13007610563021682586

`A091245(A356720(3*n+2)+A100118(n+1))`
-/

namespace A315355.P13007610563021682586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A356720 (3 * n + 2) + A100118 (n + 1)).toNat

end

end A315355.P13007610563021682586

/-! ## A315355.P8895044943097097474

`A250120(n)+A001222(A150582(n))`
-/

namespace A315355.P8895044943097097474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A150582 n).toNat

end

end A315355.P8895044943097097474

/-! ## A315355.P3505890450304320526

`A313781(n)+A162642(A191501(n))`
-/

namespace A315355.P3505890450304320526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + A162642 (A191501 n).toNat

end

end A315355.P3505890450304320526

/-! ## A315355.P2860900687015820976

`A051010(A145542(n+1))+A008706(n)`
-/

namespace A315355.P2860900687015820976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (A145542 (n + 1)).toNat + A008706 n

end

end A315355.P2860900687015820976

/-! ## A315355.P9793259303696656354

`A315322(n)+A086966(A082217(n+1))`
-/

namespace A315355.P9793259303696656354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n + A086966 (A082217 (n + 1)).toNat

end

end A315355.P9793259303696656354

/-!
# A315356: Coordination sequence Gal.6.673.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315356, there is no canonical definition to state claims against.
-/

/-! ## A315356.P4520100978671047230

`A320493(n)-A226464(A079940(n+1))`
-/

namespace A315356.P4520100978671047230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320493 n - A226464 (A079940 (n + 1)).toNat

end

end A315356.P4520100978671047230

/-! ## A315356.P16323360974958364256

`A312561(n)+A001222(A142859(n+5))`
-/

namespace A315356.P16323360974958364256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A001222 (A142859 (n + 5)).toNat

end

end A315356.P16323360974958364256

/-!
# A315357: Coordination sequence Gal.5.297.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315357, there is no canonical definition to state claims against.
-/

/-! ## A315357.P3896454528376652853

`A325169(A006498(n))+A301694(n)`
-/

namespace A315357.P3896454528376652853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A006498 n).toNat + A301694 n

end

end A315357.P3896454528376652853

/-! ## A315357.P6325358143366704580

`A301712(n)+A052344(A348891(n))`
-/

namespace A315357.P6325358143366704580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n + A052344 (A348891 n).toNat

end

end A315357.P6325358143366704580

/-! ## A315357.P4924823209236871025

`A301694(n)+A001221(A349055(n)²)`
-/

namespace A315357.P4924823209236871025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n + A001221 (A349055 n ^ 2).toNat

end

end A315357.P4924823209236871025

/-! ## A315357.P3909175100457108841

`A301694(n)+A051265(A245879(n+1))`
-/

namespace A315357.P3909175100457108841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n + A051265 (A245879 (n + 1)).toNat

end

end A315357.P3909175100457108841

/-! ## A315357.P13333030264456086028

`A341613(A135212(n+1))+A315343(n)`
-/

namespace A315357.P13333030264456086028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (A135212 (n + 1)).toNat + A315343 n

end

end A315357.P13333030264456086028

/-!
# A315358: Coordination sequence Gal.6.645.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315358, there is no canonical definition to state claims against.
-/

/-! ## A315358.P1066240695966969291

`A301697(n)+A228085(A176084(n+1))`
-/

namespace A315358.P1066240695966969291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A228085 (A176084 (n + 1)).toNat

end

end A315358.P1066240695966969291

/-! ## A315358.P439282560012882805

`A287366(2*n+1)+A000523(A000244(n))`
-/

namespace A315358.P439282560012882805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287366 (2 * n + 1) + A000523 (A000244 n).toNat

end

end A315358.P439282560012882805

/-! ## A315358.P9790262948014397176

`A301697(n)+A060951(A022905(3*(n+1)))`
-/

namespace A315358.P9790262948014397176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A060951 (A022905 (3 * (n + 1))).toNat

end

end A315358.P9790262948014397176

/-!
# A315360: Coordination sequence Gal.6.668.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315360, there is no canonical definition to state claims against.
-/

/-! ## A315360.P4519790742916410217

`(A315942(n)+A008458(n))/2`
-/

namespace A315360.P4519790742916410217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315942 n + A008458 n : ℚ) / 2

end

end A315360.P4519790742916410217

/-! ## A315360.P12595623620614281689

`ceil((A315942(n)+A008588(n))/2)`
-/

namespace A315360.P12595623620614281689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A315942 n + A008588 n : ℚ) / 2⌉

end

end A315360.P12595623620614281689

/-! ## A315360.P13345163559645479748

`A315942(n)+A001281(A008458(n)-A315942(n))`
-/

namespace A315360.P13345163559645479748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315942 n + A001281 (A008458 n - A315942 n).toNat

end

end A315360.P13345163559645479748

/-! ## A315360.P12271504109636811266

`A315942(n)+A004525(A008458(n)-A315942(n))`
-/

namespace A315360.P12271504109636811266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315942 n + A004525 (A008458 n - A315942 n).toNat

end

end A315360.P12271504109636811266

/-! ## A315360.P13306581625474890167

`A315942(n)+A004526(A016921(n)-A315942(n))`
-/

namespace A315360.P13306581625474890167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315942 n + A004526 (A016921 n - A315942 n).toNat

end

end A315360.P13306581625474890167

/-! ## A315360.P17297947197923955990

`A315942(n)+A026741(A008458(n)-A315942(n))`
-/

namespace A315360.P17297947197923955990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315942 n + A026741 (A008458 n - A315942 n).toNat

end

end A315360.P17297947197923955990

/-! ## A315360.P1979965632341736163

`A008458(n)-A004526(A008458(n)-A315942(n))`
-/

namespace A315360.P1979965632341736163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315942 n).toNat

end

end A315360.P1979965632341736163

/-! ## A315360.P14591866607287767107

`A008486(n)+A004526(A315942(n))`
-/

namespace A315360.P14591866607287767107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315942 n).toNat

end

end A315360.P14591866607287767107

/-! ## A315360.P17484076642977403917

`A008585(n)+A004525(A315942(n))`
-/

namespace A315360.P17484076642977403917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315942 n).toNat

end

end A315360.P17484076642977403917

/-! ## A315360.P11781821123265844931

`A004525(A008588(n))+A004525(A315942(n))`
-/

namespace A315360.P11781821123265844931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008588 n).toNat + A004525 (A315942 n).toNat

end

end A315360.P11781821123265844931

/-! ## A315360.P15946698541407688337

`A026741(A315942(n)+4*n)+n`
-/

namespace A315360.P15946698541407688337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315942 n + (4 * n : ℤ)).toNat + (n : ℤ)

end

end A315360.P15946698541407688337

/-! ## A315360.P6644875477745948811

`A004526(2*n+1+A315942(n)+4*n)`
-/

namespace A315360.P6644875477745948811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n + 1 : ℤ) + (A315942 n + (4 * n : ℤ))).toNat

end

end A315360.P6644875477745948811

/-! ## A315360.P9248722500882411032

`A001281(A315942(n)+A008458(n))`
-/

namespace A315360.P9248722500882411032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315942 n + A008458 n).toNat

end

end A315360.P9248722500882411032

/-! ## A315360.P7660182029911308392

`A004525(A315942(n)+A008458(n))`
-/

namespace A315360.P7660182029911308392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315942 n + A008458 n).toNat

end

end A315360.P7660182029911308392

/-! ## A315360.P5344293074152406377

`A004526(A315942(n)+A008458(n))`
-/

namespace A315360.P5344293074152406377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315942 n + A008458 n).toNat

end

end A315360.P5344293074152406377

/-! ## A315360.P1544082068836619643

`A004525(A315942(n)+A008588(n))`
-/

namespace A315360.P1544082068836619643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315942 n + A008588 n).toNat

end

end A315360.P1544082068836619643

/-! ## A315360.P5036896239341473634

`A004526(A315942(n)+A016921(n))`
-/

namespace A315360.P5036896239341473634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315942 n + A016921 n).toNat

end

end A315360.P5036896239341473634

/-! ## A315360.P7404844922467129336

`A026741(A315942(n)+A008458(n))`
-/

namespace A315360.P7404844922467129336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315942 n + A008458 n).toNat

end

end A315360.P7404844922467129336

/-!
# A315361: Coordination sequence Gal.5.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315361, there is no canonical definition to state claims against.
-/

/-! ## A315361.P17475607470219021206

`A313524(2*n)-4*n`
-/

namespace A315361.P17475607470219021206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 (2 * n) - (4 * n : ℤ)

end

end A315361.P17475607470219021206

/-! ## A315361.P15298039605357917462

`A301720(n)+A087509(n)`
-/

namespace A315361.P15298039605357917462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n + A087509 n

end

end A315361.P15298039605357917462

/-! ## A315361.P8606239837849823383

`A315563(n)-A087509(n)`
-/

namespace A315361.P8606239837849823383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315563 n - A087509 n

end

end A315361.P8606239837849823383

/-! ## A315361.P1623820306676295852

`A301720(n)+Δ[A008133(n)]`
-/

namespace A315361.P1623820306676295852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n + (f1 (n + 1) - f1 n)

end

end A315361.P1623820306676295852

/-! ## A315361.P15263648130342859224

`A315563(n)-Δ[A008133(n)]`
-/

namespace A315361.P15263648130342859224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315563 n - (f1 (n + 1) - f1 n)

end

end A315361.P15263648130342859224

/-! ## A315361.P4246406259466675740

`A301686(n)+record[A283971(n)]`
-/

namespace A315361.P4246406259466675740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315361.P4246406259466675740

/-! ## A315361.P17224610597511491430

`A301686(n)+A042965(n+1)`
-/

namespace A315361.P17224610597511491430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + A042965 (n + 1)

end

end A315361.P17224610597511491430

/-! ## A315361.P4925678903708928138

`A301686(n)+A004396(2*n)`
-/

namespace A315361.P4925678903708928138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + A004396 (2 * n)

end

end A315361.P4925678903708928138

/-! ## A315361.P12845058512338763022

`A315943(n)+2*A087509(n)`
-/

namespace A315361.P12845058512338763022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n + 2 * A087509 n

end

end A315361.P12845058512338763022

/-! ## A315361.P1521633652116749609

`A008458(n)-2*A087509(n)`
-/

namespace A315361.P1521633652116749609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A087509 n

end

end A315361.P1521633652116749609

/-!
# A315362: Coordination sequence Gal.6.669.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315362, there is no canonical definition to state claims against.
-/

/-! ## A315362.P8050383432498486241

`A007821(n+1)-A210952(A000032(n))`
-/

namespace A315362.P8050383432498486241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A210952 (A000032 n).toNat

end

end A315362.P8050383432498486241

/-!
# A315363: Coordination sequence Gal.5.313.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315363, there is no canonical definition to state claims against.
-/

/-! ## A315363.P8404908179589941450

`or(A000005(A151143(n)), A310520(n))`
-/

namespace A315363.P8404908179589941450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A151143 n).toNat) (A310520 n)

end

end A315363.P8404908179589941450

/-! ## A315363.P17711709054734560870

`A008458(n)-A226171(A276142(n+1))`
-/

namespace A315363.P17711709054734560870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A226171 (A276142 (n + 1)).toNat

end

end A315363.P17711709054734560870

/-!
# A315364: Coordination sequence Gal.5.327.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315364, there is no canonical definition to state claims against.
-/

/-! ## A315364.P7356679552725735913

`∑[dr(A306674(A306676(2*n+3)))]`
-/

namespace A315364.P7356679552725735913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A306674 (A306676 (2 * n + 3)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315364.P7356679552725735913

/-!
# A315365: Coordination sequence Gal.6.667.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315365, there is no canonical definition to state claims against.
-/

/-! ## A315365.P10272131070283321534

`A008458(n)+A008579(n)-A310385(n)`
-/

namespace A315365.P10272131070283321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A310385 n)

end

end A315365.P10272131070283321534

/-! ## A315365.P11600598985897521302

`2*A315564(n)-A008458(n)`
-/

namespace A315365.P11600598985897521302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315564 n - A008458 n

end

end A315365.P11600598985897521302

/-! ## A315365.P16779676690049017100

`(A316071(n)+A315564(n))/2`
-/

namespace A315365.P16779676690049017100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316071 n + A315564 n : ℚ) / 2

end

end A315365.P16779676690049017100

/-! ## A315365.P15546475210470237149

`A103517(A315564(n)-A016777(n))`
-/

namespace A315365.P15546475210470237149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315564 n - A016777 n).toNat

end

end A315365.P15546475210470237149

/-! ## A315365.P7963966636740197054

`A008458(n)-A005843(A008458(n)-A315564(n))`
-/

namespace A315365.P7963966636740197054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315564 n).toNat

end

end A315365.P7963966636740197054

/-! ## A315365.P12335799045843935456

`A005843(n)+A004396(A316071(n))`
-/

namespace A315365.P12335799045843935456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A316071 n).toNat

end

end A315365.P12335799045843935456

/-! ## A315365.P11501734985288487693

`A008574(n)+A002264(A315823(n))`
-/

namespace A315365.P11501734985288487693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A315823 n).toNat

end

end A315365.P11501734985288487693

/-! ## A315365.P8298893343018142621

`A005843(A315564(n))-A008458(n)`
-/

namespace A315365.P8298893343018142621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315564 n).toNat - A008458 n

end

end A315365.P8298893343018142621

/-! ## A315365.P2048436493900684707

`A008585(n)+A004396(A316071(n))-n`
-/

namespace A315365.P2048436493900684707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A316071 n).toNat - (n : ℤ))

end

end A315365.P2048436493900684707

/-! ## A315365.P2859570382581113715

`A004396(A008585(n))+A004396(A316071(n))`
-/

namespace A315365.P2859570382581113715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008585 n).toNat + A004396 (A316071 n).toNat

end

end A315365.P2859570382581113715

/-! ## A315365.P13059025777266651034

`A004396(A316071(n)+A008486(n))`
-/

namespace A315365.P13059025777266651034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316071 n + A008486 n).toNat

end

end A315365.P13059025777266651034

/-! ## A315365.P4555522594365621524

`A004396(A316071(n)+A008585(n))`
-/

namespace A315365.P4555522594365621524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316071 n + A008585 n).toNat

end

end A315365.P4555522594365621524

/-! ## A315365.P10802566934897052950

`A131380(A316071(n)+A008486(n))`
-/

namespace A315365.P10802566934897052950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A316071 n + A008486 n).toNat

end

end A315365.P10802566934897052950

/-!
# A315368: Coordination sequence Gal.6.46.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315368, there is no canonical definition to state claims against.
-/

/-! ## A315368.P15750187545482921897

`eq[A008611(A038722(n+1)), A088676(n+1)]`
-/

namespace A315368.P15750187545482921897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A038722 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315368.P15750187545482921897

/-!
# A315369: Coordination sequence Gal.5.15.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315369, there is no canonical definition to state claims against.
-/

/-! ## A315369.P11775608357613520974

`A276150(A254501(n))+A122079(3*n+1)`
-/

namespace A315369.P11775608357613520974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A254501 n).toNat + A122079 (3 * n + 1)

end

end A315369.P11775608357613520974

/-!
# A315373: Coordination sequence Gal.4.123.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315373, the canonical program `A315373.P10372235657626568569` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315373 has offset 0).

The definition of A315373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315373.P13997923693706252814

`A008574(n)+A313568(n)-A310252(n)`
-/

namespace A315373.P13997923693706252814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313568 n - A310252 n)

end

end A315373.P13997923693706252814

namespace A315373

/-- `A008574(n)+A313568(n)-A310252(n)` -/
def P13997923693706252814.Spec : Prop :=
  ∀ n, P13997923693706252814.a n = A315373 n

end A315373

/-! ## A315373.P6839773698227509778

`A008574(n)-A001489(A313568(n)-A310252(n))`
-/

namespace A315373.P6839773698227509778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001489 (A313568 n - A310252 n).toNat

end

end A315373.P6839773698227509778

namespace A315373

/-- `A008574(n)-A001489(A313568(n)-A310252(n))` -/
def P6839773698227509778.Spec : Prop :=
  ∀ n, P6839773698227509778.a n = A315373 n

end A315373

/-! ## A315373.P1302459295060602273

`A315213(n)+A105384(n+4)`
-/

namespace A315373.P1302459295060602273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n + A105384 (n + 4)

end

end A315373.P1302459295060602273

namespace A315373

/-- `A315213(n)+A105384(n+4)` -/
def P1302459295060602273.Spec : Prop :=
  ∀ n, P1302459295060602273.a n = A315373 n

end A315373

/-! ## A315373.P13067518879840513274

`A313568(n)+A315213(n)-A250120(n)`
-/

namespace A315373.P13067518879840513274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + (A315213 n - A250120 n)

end

end A315373.P13067518879840513274

namespace A315373

/-- `A313568(n)+A315213(n)-A250120(n)` -/
def P13067518879840513274.Spec : Prop :=
  ∀ n, P13067518879840513274.a n = A315373 n

end A315373

/-! ## A315373.P1350353274371834133

`A315213(n)-A134667(A047263(2*n+1))`
-/

namespace A315373.P1350353274371834133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A134667 (A047263 (2 * n + 1)).toNat

end

end A315373.P1350353274371834133

namespace A315373

/-- `A315213(n)-A134667(A047263(2*n+1))` -/
def P1350353274371834133.Spec : Prop :=
  ∀ n, P1350353274371834133.a n = A315373 n

end A315373

/-! ## A315373.P13019466620901748418

`A315213(n)-A102283(A265227(2*n+1))`
-/

namespace A315373.P13019466620901748418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A102283 (A265227 (2 * n + 1)).toNat

end

end A315373.P13019466620901748418

namespace A315373

/-- `A315213(n)-A102283(A265227(2*n+1))` -/
def P13019466620901748418.Spec : Prop :=
  ∀ n, P13019466620901748418.a n = A315373 n

end A315373

/-! ## A315373.P10372235657626568569

`A313660(n)+A244895(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315373

/-- `A313660(n)+A244895(n)` -/
def P10372235657626568569.Spec : Prop :=
  ∀ n, P10372235657626568569.a n = A315373 n

theorem P10372235657626568569.correct : P10372235657626568569.Spec := by
  intro n
  simp only [A315373]

end A315373

/-! ## A315373.P11286624679011259194

`A004525(A022144(n))+A313568(n)-A310252(n)`
-/

namespace A315373.P11286624679011259194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + (A313568 n - A310252 n)

end

end A315373.P11286624679011259194

namespace A315373

/-- `A004525(A022144(n))+A313568(n)-A310252(n)` -/
def P11286624679011259194.Spec : Prop :=
  ∀ n, P11286624679011259194.a n = A315373 n

end A315373

/-! ## A315373.P4328420431479985921

`A244895(n)+A004525(A315218(2*n))`
-/

namespace A315373.P4328420431479985921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + A004525 (A315218 (2 * n)).toNat

end

end A315373.P4328420431479985921

namespace A315373

/-- `A244895(n)+A004525(A315218(2*n))` -/
def P4328420431479985921.Spec : Prop :=
  ∀ n, P4328420431479985921.a n = A315373 n

end A315373

/-!
# A315376: Coordination sequence Gal.6.35.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315376, there is no canonical definition to state claims against.
-/

/-! ## A315376.P5285137947330681538

`A315380(n)-A288106(A001354(n)+1)`
-/

namespace A315376.P5285137947330681538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315380 n - A288106 (A001354 n + 1).toNat

end

end A315376.P5285137947330681538

/-!
# A315377: Coordination sequence Gal.6.28.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315377, there is no canonical definition to state claims against.
-/

/-! ## A315377.P6989379244965081936

`∑[A176036(A064319(n+1))]`
-/

namespace A315377.P6989379244965081936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176036 (A064319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315377.P6989379244965081936

/-! ## A315377.P9548032582965841125

`∑[A222579(A222573(n+1))]%A222556(n+1)`
-/

namespace A315377.P9548032582965841125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222579 (A222573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A222556 (n + 1))

end

end A315377.P9548032582965841125

/-! ## A315377.P14844924154783075302

`A173919(3*n+2)+A122188(A048520(n+1))`
-/

namespace A315377.P14844924154783075302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (3 * n + 2) + A122188 (A048520 (n + 1)).toNat

end

end A315377.P14844924154783075302

/-!
# A315380: Coordination sequence Gal.5.286.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315380, there is no canonical definition to state claims against.
-/

/-! ## A315380.P2911365974849598936

`A359475(A174248(n))+A315376(n)`
-/

namespace A315380.P2911365974849598936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359475 (A174248 n).toNat + A315376 n

end

end A315380.P2911365974849598936

/-! ## A315380.P16239626009516174462

`A033560(n+1)-A325529(A164675(n+1))`
-/

namespace A315380.P16239626009516174462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) - A325529 (A164675 (n + 1)).toNat

end

end A315380.P16239626009516174462

/-! ## A315380.P287952644565882170

`A379671(A312167(2*n+1))+A315376(n)`
-/

namespace A315380.P287952644565882170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379671 (A312167 (2 * n + 1)).toNat + A315376 n

end

end A315380.P287952644565882170

/-! ## A315380.P1408671265275013058

`A315376(n)+A010051(A074991(3*(n+1)))`
-/

namespace A315380.P1408671265275013058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315376 n + A010051 (A074991 (3 * (n + 1))).toNat

end

end A315380.P1408671265275013058

/-! ## A315380.P15382378662323813351

`A379671(A032981(3*n+5))+A315376(n)`
-/

namespace A315380.P15382378662323813351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379671 (A032981 (3 * n + 5)).toNat + A315376 n

end

end A315380.P15382378662323813351

/-!
# A315384: Coordination sequence Gal.5.256.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315384, there is no canonical definition to state claims against.
-/

/-! ## A315384.P2553319398941347887

`A315419(n)-A011765(A292065(n+1))`
-/

namespace A315384.P2553319398941347887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n - A011765 (A292065 (n + 1)).toNat

end

end A315384.P2553319398941347887

/-! ## A315384.P15729221479133855430

`A301730(n)+A037827(A148685(n))`
-/

namespace A315384.P15729221479133855430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n + A037827 (A148685 n).toNat

end

end A315384.P15729221479133855430

/-! ## A315384.P11685915166657639678

`A315419(n)-A037821(A001731(n))`
-/

namespace A315384.P11685915166657639678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n - A037821 (A001731 n).toNat

end

end A315384.P11685915166657639678

/-! ## A315384.P5275870054428088592

`A244895(n)+A016813(n)+A004233(A213225(n))`
-/

namespace A315384.P5275870054428088592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + (A016813 n + A004233 (A213225 n).toNat)

end

end A315384.P5275870054428088592

/-!
# A315387: Coordination sequence Gal.5.323.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315387, there is no canonical definition to state claims against.
-/

/-! ## A315387.P15095238040978996706

`eq[A191759(3*(n+1)), A191770(A191750(n+2))]`
-/

namespace A315387.P15095238040978996706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191759 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A191750 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315387.P15095238040978996706

/-!
# A315388: Coordination sequence Gal.5.284.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315388, there is no canonical definition to state claims against.
-/

/-! ## A315388.P8642031579596632083

`A315389(n)-A185284(A310712(n))`
-/

namespace A315388.P8642031579596632083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315389 n - A185284 (A310712 n).toNat

end

end A315388.P8642031579596632083

/-! ## A315388.P6487989383068991164

`A315389(n)-A185284(A238478(n+1))`
-/

namespace A315388.P6487989383068991164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315389 n - A185284 (A238478 (n + 1)).toNat

end

end A315388.P6487989383068991164

/-! ## A315388.P10663699204575885164

`A315389(n)-A126743(A261494(3*(n+1)))`
-/

namespace A315388.P10663699204575885164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315389 n - A126743 (A261494 (3 * (n + 1))).toNat

end

end A315388.P10663699204575885164

/-! ## A315388.P1016001219096060941

`A089384(A007097(n))*A315389(n)`
-/

namespace A315388.P1016001219096060941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (A007097 n).toNat * A315389 n

end

end A315388.P1016001219096060941

/-! ## A315388.P16182077194290669428

`A315389(n)%A005101(A025192(n))`
-/

namespace A315388.P16182077194290669428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315389 n) (A005101 (A025192 n).toNat)

end

end A315388.P16182077194290669428

/-!
# A315389: Coordination sequence Gal.5.283.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315389, there is no canonical definition to state claims against.
-/

/-! ## A315389.P15948354781795855593

`A315388(n)+A185284(A310712(n))`
-/

namespace A315389.P15948354781795855593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315388 n + A185284 (A310712 n).toNat

end

end A315389.P15948354781795855593

/-! ## A315389.P4306785463849999438

`A315388(n)+A185284(A000147(n+1))`
-/

namespace A315389.P4306785463849999438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315388 n + A185284 (A000147 (n + 1)).toNat

end

end A315389.P4306785463849999438

/-! ## A315389.P8443523123997463789

`A315388(n)+A185284(A238478(n+1))`
-/

namespace A315389.P8443523123997463789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315388 n + A185284 (A238478 (n + 1)).toNat

end

end A315389.P8443523123997463789

/-!
# A315391: Coordination sequence Gal.5.325.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315391, there is no canonical definition to state claims against.
-/

/-! ## A315391.P3585359626193904473

`or(A301730(n), A318995(A124528(n)))`
-/

namespace A315391.P3585359626193904473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301730 n) (A318995 (A124528 n).toNat)

end

end A315391.P3585359626193904473

/-! ## A315391.P15214476561100222155

`or(A315187(n), A318995(A124528(n)))`
-/

namespace A315391.P15214476561100222155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315187 n) (A318995 (A124528 n).toNat)

end

end A315391.P15214476561100222155

/-! ## A315391.P12732921126209009924

`or(A233573(A319552(n)), A301730(n))`
-/

namespace A315391.P12732921126209009924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A233573 (A319552 n).toNat) (A301730 n)

end

end A315391.P12732921126209009924

/-! ## A315391.P10118965818107733306

`or(A233573(A319552(n)), A315187(n))`
-/

namespace A315391.P10118965818107733306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A233573 (A319552 n).toNat) (A315187 n)

end

end A315391.P10118965818107733306

/-! ## A315391.P6891994308231939713

`or(A168353(A311142(3*n)), A315993(n))`
-/

namespace A315391.P6891994308231939713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168353 (A311142 (3 * n)).toNat) (A315993 n)

end

end A315391.P6891994308231939713

/-!
# A315393: Coordination sequence Gal.6.609.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315393, there is no canonical definition to state claims against.
-/

/-! ## A315393.P9790355367662700043

`A311018(n)+record[A001222(A312520(n))]`
-/

namespace A315393.P9790355367662700043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A312520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311018 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315393.P9790355367662700043

/-!
# A315395: Coordination sequence Gal.6.120.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315395, the canonical program `A315395.P11298806320610192218` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315395 has offset 0).

The definition of A315395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315395.P11298806320610192218

`A313485(n)+A046978(A004396(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315395

/-- `A313485(n)+A046978(A004396(n))` -/
def P11298806320610192218.Spec : Prop :=
  ∀ n, P11298806320610192218.a n = A315395 n

theorem P11298806320610192218.correct : P11298806320610192218.Spec := by
  intro n
  simp only [A315395]

end A315395

/-! ## A315395.P16440755190181010755

`A315459(n)-A002264(A030118(n))`
-/

namespace A315395.P16440755190181010755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n - A002264 (A030118 n).toNat

end

end A315395.P16440755190181010755

namespace A315395

/-- `A315459(n)-A002264(A030118(n))` -/
def P16440755190181010755.Spec : Prop :=
  ∀ n, P16440755190181010755.a n = A315395 n

end A315395

/-! ## A315395.P12728784645732047580

`A315670(n)-∑[A021913(n)]`
-/

namespace A315395.P12728784645732047580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315395.P12728784645732047580

namespace A315395

/-- `A315670(n)-∑[A021913(n)]` -/
def P12728784645732047580.Spec : Prop :=
  ∀ n, P12728784645732047580.a n = A315395 n

end A315395

/-! ## A315395.P49261278693685081

`A315670(n)-Δ[A011848(n)]`
-/

namespace A315395.P49261278693685081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - (f1 (n + 1) - f1 n)

end

end A315395.P49261278693685081

namespace A315395

/-- `A315670(n)-Δ[A011848(n)]` -/
def P49261278693685081.Spec : Prop :=
  ∀ n, P49261278693685081.a n = A315395 n

end A315395

/-! ## A315395.P12027103023033929309

`A004525(n)+A315670(n)-n`
-/

namespace A315395.P12027103023033929309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315670 n - (n : ℤ))

end

end A315395.P12027103023033929309

namespace A315395

/-- `A004525(n)+A315670(n)-n` -/
def P12027103023033929309.Spec : Prop :=
  ∀ n, P12027103023033929309.a n = A315395 n

end A315395

/-! ## A315395.P9959604134061286861

`A315681(n)-∑[A131735(n)]`
-/

namespace A315395.P9959604134061286861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315395.P9959604134061286861

namespace A315395

/-- `A315681(n)-∑[A131735(n)]` -/
def P9959604134061286861.Spec : Prop :=
  ∀ n, P9959604134061286861.a n = A315395 n

end A315395

/-! ## A315395.P1526512271893348953

`A315681(n)-A002264(A030118(n)+n)`
-/

namespace A315395.P1526512271893348953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - A002264 (A030118 n + (n : ℤ)).toNat

end

end A315395.P1526512271893348953

namespace A315395

/-- `A315681(n)-A002264(A030118(n)+n)` -/
def P1526512271893348953.Spec : Prop :=
  ∀ n, P1526512271893348953.a n = A315395 n

end A315395

/-! ## A315395.P671475092558721204

`A047255(A313474(n))-A004273(n)`
-/

namespace A315395.P671475092558721204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A313474 n).toNat - A004273 n

end

end A315395.P671475092558721204

namespace A315395

/-- `A047255(A313474(n))-A004273(n)` -/
def P671475092558721204.Spec : Prop :=
  ∀ n, P671475092558721204.a n = A315395 n

end A315395

/-! ## A315395.P2985631051131850000

`abs(A008592(n)-A313297(n))`
-/

namespace A315395.P2985631051131850000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313297 n|

end

end A315395.P2985631051131850000

namespace A315395

/-- `abs(A008592(n)-A313297(n))` -/
def P2985631051131850000.Spec : Prop :=
  ∀ n, P2985631051131850000.a n = A315395 n

end A315395

/-! ## A315395.P10644624967592834953

`2*A008706(n)-A313297(n)`
-/

namespace A315395.P10644624967592834953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313297 n

end

end A315395.P10644624967592834953

namespace A315395

/-- `2*A008706(n)-A313297(n)` -/
def P10644624967592834953.Spec : Prop :=
  ∀ n, P10644624967592834953.a n = A315395 n

end A315395

/-! ## A315395.P2352492372186931376

`A008458(n)+A008574(n)-A313297(n)`
-/

namespace A315395.P2352492372186931376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313297 n)

end

end A315395.P2352492372186931376

namespace A315395

/-- `A008458(n)+A008574(n)-A313297(n)` -/
def P2352492372186931376.Spec : Prop :=
  ∀ n, P2352492372186931376.a n = A315395 n

end A315395

/-! ## A315395.P6734555225000082634

`A005843(A008706(n))-A313297(n)`
-/

namespace A315395.P6734555225000082634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313297 n

end

end A315395.P6734555225000082634

namespace A315395

/-- `A005843(A008706(n))-A313297(n)` -/
def P6734555225000082634.Spec : Prop :=
  ∀ n, P6734555225000082634.a n = A315395 n

end A315395

/-!
# A315396: Coordination sequence Gal.6.221.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315396, the canonical program `A315396.P4587026306216190831` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315396 has offset 0).

The definition of A315396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315396.P4587026306216190831

`abs(A008592(n)-A313296(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315396

/-- `abs(A008592(n)-A313296(n))` -/
def P4587026306216190831.Spec : Prop :=
  ∀ n, P4587026306216190831.a n = A315396 n

theorem P4587026306216190831.correct : P4587026306216190831.Spec := by
  intro n
  simp only [A315396]

end A315396

/-! ## A315396.P14103353927055714510

`2*A008706(n)-A313296(n)`
-/

namespace A315396.P14103353927055714510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313296 n

end

end A315396.P14103353927055714510

namespace A315396

/-- `2*A008706(n)-A313296(n)` -/
def P14103353927055714510.Spec : Prop :=
  ∀ n, P14103353927055714510.a n = A315396 n

end A315396

/-! ## A315396.P9180632557199794705

`A135042(2*n+1)-A313296(n)`
-/

namespace A315396.P9180632557199794705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313296 n

end

end A315396.P9180632557199794705

namespace A315396

/-- `A135042(2*n+1)-A313296(n)` -/
def P9180632557199794705.Spec : Prop :=
  ∀ n, P9180632557199794705.a n = A315396 n

end A315396

/-! ## A315396.P9021222422382685780

`A184418(A008574(n))-A313296(n)`
-/

namespace A315396.P9021222422382685780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313296 n

end

end A315396.P9021222422382685780

namespace A315396

/-- `A184418(A008574(n))-A313296(n)` -/
def P9021222422382685780.Spec : Prop :=
  ∀ n, P9021222422382685780.a n = A315396 n

end A315396

/-! ## A315396.P16991921840172992094

`A008458(n)+A008574(n)-A313296(n)`
-/

namespace A315396.P16991921840172992094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313296 n)

end

end A315396.P16991921840172992094

namespace A315396

/-- `A008458(n)+A008574(n)-A313296(n)` -/
def P16991921840172992094.Spec : Prop :=
  ∀ n, P16991921840172992094.a n = A315396 n

end A315396

/-! ## A315396.P16806887713966306756

`A008458(n)-A313296(n)%A004277(n)`
-/

namespace A315396.P16806887713966306756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A313296 n) (A004277 n)

end

end A315396.P16806887713966306756

namespace A315396

/-- `A008458(n)-A313296(n)%A004277(n)` -/
def P16806887713966306756.Spec : Prop :=
  ∀ n, P16806887713966306756.a n = A315396 n

end A315396

/-! ## A315396.P394702990767836817

`∑{d}[A008592(n)-A313296(n), A000010(#)]`
-/

namespace A315396.P394702990767836817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315396.P394702990767836817

namespace A315396

/-- `∑{d}[A008592(n)-A313296(n), A000010(#)]` -/
def P394702990767836817.Spec : Prop :=
  ∀ n, P394702990767836817.a n = A315396 n

end A315396

/-! ## A315396.P15482503687820793124

`A005843(A008706(n))-A313296(n)`
-/

namespace A315396.P15482503687820793124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313296 n

end

end A315396.P15482503687820793124

namespace A315396

/-- `A005843(A008706(n))-A313296(n)` -/
def P15482503687820793124.Spec : Prop :=
  ∀ n, P15482503687820793124.a n = A315396 n

end A315396

/-! ## A315396.P7146890178925323244

`A004277(A008458(n)-n)-A313296(n)`
-/

namespace A315396.P7146890178925323244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A313296 n

end

end A315396.P7146890178925323244

namespace A315396

/-- `A004277(A008458(n)-n)-A313296(n)` -/
def P7146890178925323244.Spec : Prop :=
  ∀ n, P7146890178925323244.a n = A315396 n

end A315396

/-! ## A315396.P2275487982324708333

`A065502(A008458(n))-A313296(n)`
-/

namespace A315396.P2275487982324708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313296 n

end

end A315396.P2275487982324708333

namespace A315396

/-- `A065502(A008458(n))-A313296(n)` -/
def P2275487982324708333.Spec : Prop :=
  ∀ n, P2275487982324708333.a n = A315396 n

end A315396

/-! ## A315396.P7008040255741381862

`A004396(2*A315450(n)-A008486(n))`
-/

namespace A315396.P7008040255741381862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315450 n - A008486 n).toNat

end

end A315396.P7008040255741381862

namespace A315396

/-- `A004396(2*A315450(n)-A008486(n))` -/
def P7008040255741381862.Spec : Prop :=
  ∀ n, P7008040255741381862.a n = A315396 n

end A315396

/-! ## A315396.P5529831902645591760

`A004396(2*A315450(n)-A008585(n))`
-/

namespace A315396.P5529831902645591760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315450 n - A008585 n).toNat

end

end A315396.P5529831902645591760

namespace A315396

/-- `A004396(2*A315450(n)-A008585(n))` -/
def P5529831902645591760.Spec : Prop :=
  ∀ n, P5529831902645591760.a n = A315396 n

end A315396

/-! ## A315396.P8207223331627675754

`A004396(A315450(n)+A315450(n)-A008486(n))`
-/

namespace A315396.P8207223331627675754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n + (A315450 n - A008486 n)).toNat

end

end A315396.P8207223331627675754

namespace A315396

/-- `A004396(A315450(n)+A315450(n)-A008486(n))` -/
def P8207223331627675754.Spec : Prop :=
  ∀ n, P8207223331627675754.a n = A315396 n

end A315396

/-! ## A315396.P2478120640157632786

`A004396(A315450(n)+A315450(n)-A008585(n))`
-/

namespace A315396.P2478120640157632786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n + (A315450 n - A008585 n)).toNat

end

end A315396.P2478120640157632786

namespace A315396

/-- `A004396(A315450(n)+A315450(n)-A008585(n))` -/
def P2478120640157632786.Spec : Prop :=
  ∀ n, P2478120640157632786.a n = A315396 n

end A315396

/-! ## A315396.P2416063699322563271

`A004396(A315450(n)-(A008486(n)-A315450(n)))`
-/

namespace A315396.P2416063699322563271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n - (A008486 n - A315450 n)).toNat

end

end A315396.P2416063699322563271

namespace A315396

/-- `A004396(A315450(n)-(A008486(n)-A315450(n)))` -/
def P2416063699322563271.Spec : Prop :=
  ∀ n, P2416063699322563271.a n = A315396 n

end A315396

/-! ## A315396.P2882477740939413455

`A004396(A315450(n)-(A008585(n)-A315450(n)))`
-/

namespace A315396.P2882477740939413455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n - (A008585 n - A315450 n)).toNat

end

end A315396.P2882477740939413455

namespace A315396

/-- `A004396(A315450(n)-(A008585(n)-A315450(n)))` -/
def P2882477740939413455.Spec : Prop :=
  ∀ n, P2882477740939413455.a n = A315396 n

end A315396

/-! ## A315396.P2306045385130981328

`A004396(2*A315450(n))-2*n`
-/

namespace A315396.P2306045385130981328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315450 n).toNat - (2 * n : ℤ)

end

end A315396.P2306045385130981328

namespace A315396

/-- `A004396(2*A315450(n))-2*n` -/
def P2306045385130981328.Spec : Prop :=
  ∀ n, P2306045385130981328.a n = A315396 n

end A315396

/-! ## A315396.P9386625329525620765

`A233583(A017281(n))-A313296(n)`
-/

namespace A315396.P9386625329525620765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313296 n

end

end A315396.P9386625329525620765

namespace A315396

/-- `A233583(A017281(n))-A313296(n)` -/
def P9386625329525620765.Spec : Prop :=
  ∀ n, P9386625329525620765.a n = A315396 n

end A315396

/-!
# A315397: Coordination sequence Gal.5.55.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315397, the canonical program `A315397.P1916688396986312343` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315397 has offset 0).

The definition of A315397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315397.P4414462967285336128

`A314725(n)+A253262(n)`
-/

namespace A315397.P4414462967285336128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + A253262 n

end

end A315397.P4414462967285336128

namespace A315397

/-- `A314725(n)+A253262(n)` -/
def P4414462967285336128.Spec : Prop :=
  ∀ n, P4414462967285336128.a n = A315397 n

end A315397

/-! ## A315397.P1916688396986312343

`A330025(n)+A313506(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A315397

/-- `A330025(n)+A313506(n)` -/
def P1916688396986312343.Spec : Prop :=
  ∀ n, P1916688396986312343.a n = A315397 n

theorem P1916688396986312343.correct : P1916688396986312343.Spec := by
  intro n
  simp only [A315397]

end A315397

/-! ## A315397.P16061375699265891016

`A315691(n)+A330025(n)-n`
-/

namespace A315397.P16061375699265891016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n + (A330025 n - (n : ℤ))

end

end A315397.P16061375699265891016

namespace A315397

/-- `A315691(n)+A330025(n)-n` -/
def P16061375699265891016.Spec : Prop :=
  ∀ n, P16061375699265891016.a n = A315397 n

end A315397

/-! ## A315397.P15142881929555701447

`A330025(A330025(n)+n)+A313537(n)`
-/

namespace A315397.P15142881929555701447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313537 n

end

end A315397.P15142881929555701447

namespace A315397

/-- `A330025(A330025(n)+n)+A313537(n)` -/
def P15142881929555701447.Spec : Prop :=
  ∀ n, P15142881929555701447.a n = A315397 n

end A315397

/-! ## A315397.P3137651389885442690

`A315445(n)-A008676(A016777(n))`
-/

namespace A315397.P3137651389885442690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A008676 (A016777 n).toNat

end

end A315397.P3137651389885442690

namespace A315397

/-- `A315445(n)-A008676(A016777(n))` -/
def P3137651389885442690.Spec : Prop :=
  ∀ n, P3137651389885442690.a n = A315397 n

end A315397

/-! ## A315397.P5740956611640402985

`A315402(n)+n-A151988(n)`
-/

namespace A315397.P5740956611640402985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315402 n + ((n : ℤ) - A151988 n)

end

end A315397.P5740956611640402985

namespace A315397

/-- `A315402(n)+n-A151988(n)` -/
def P5740956611640402985.Spec : Prop :=
  ∀ n, P5740956611640402985.a n = A315397 n

end A315397

/-! ## A315397.P11498687421993095762

`A072154(n)+A315679(n)-A008486(n)`
-/

namespace A315397.P11498687421993095762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A315679 n - A008486 n)

end

end A315397.P11498687421993095762

namespace A315397

/-- `A072154(n)+A315679(n)-A008486(n)` -/
def P11498687421993095762.Spec : Prop :=
  ∀ n, P11498687421993095762.a n = A315397 n

end A315397

/-! ## A315397.P8695536009949838613

`abs(A008592(n)-A313295(n))`
-/

namespace A315397.P8695536009949838613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313295 n|

end

end A315397.P8695536009949838613

namespace A315397

/-- `abs(A008592(n)-A313295(n))` -/
def P8695536009949838613.Spec : Prop :=
  ∀ n, P8695536009949838613.a n = A315397 n

end A315397

/-! ## A315397.P16181894621239065339

`2*A008706(n)-A313295(n)`
-/

namespace A315397.P16181894621239065339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313295 n

end

end A315397.P16181894621239065339

namespace A315397

/-- `2*A008706(n)-A313295(n)` -/
def P16181894621239065339.Spec : Prop :=
  ∀ n, P16181894621239065339.a n = A315397 n

end A315397

/-! ## A315397.P16052596036140156896

`A008458(n)+A008574(n)-A313295(n)`
-/

namespace A315397.P16052596036140156896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313295 n)

end

end A315397.P16052596036140156896

namespace A315397

/-- `A008458(n)+A008574(n)-A313295(n)` -/
def P16052596036140156896.Spec : Prop :=
  ∀ n, P16052596036140156896.a n = A315397 n

end A315397

/-! ## A315397.P2256099753840791876

`A047255(A313476(n))-A004273(n)`
-/

namespace A315397.P2256099753840791876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A313476 n).toNat - A004273 n

end

end A315397.P2256099753840791876

namespace A315397

/-- `A047255(A313476(n))-A004273(n)` -/
def P2256099753840791876.Spec : Prop :=
  ∀ n, P2256099753840791876.a n = A315397 n

end A315397

/-! ## A315397.P17458049607355272662

`A005843(A008706(n))-A313295(n)`
-/

namespace A315397.P17458049607355272662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313295 n

end

end A315397.P17458049607355272662

namespace A315397

/-- `A005843(A008706(n))-A313295(n)` -/
def P17458049607355272662.Spec : Prop :=
  ∀ n, P17458049607355272662.a n = A315397 n

end A315397

/-!
# A315398: Coordination sequence Gal.5.100.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315398, the canonical program `A315398.P956186230154904565` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315398 has offset 0).

The definition of A315398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315398.P956186230154904565

`A313683(n)+A134667(A004396(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315398

/-- `A313683(n)+A134667(A004396(n))` -/
def P956186230154904565.Spec : Prop :=
  ∀ n, P956186230154904565.a n = A315398 n

theorem P956186230154904565.correct : P956186230154904565.Spec := by
  intro n
  simp only [A315398]

end A315398

/-! ## A315398.P574560431605172173

`A313538(n)+A128834(A004396(n))`
-/

namespace A315398.P574560431605172173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A128834 (A004396 n).toNat

end

end A315398.P574560431605172173

namespace A315398

/-- `A313538(n)+A128834(A004396(n))` -/
def P574560431605172173.Spec : Prop :=
  ∀ n, P574560431605172173.a n = A315398 n

end A315398

/-! ## A315398.P12821098895159909286

`A315446(n)-Δ[A011862(n)]`
-/

namespace A315398.P12821098895159909286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n - (f1 (n + 1) - f1 n)

end

end A315398.P12821098895159909286

namespace A315398

/-- `A315446(n)-Δ[A011862(n)]` -/
def P12821098895159909286.Spec : Prop :=
  ∀ n, P12821098895159909286.a n = A315398 n

end A315398

/-! ## A315398.P4856233573030920643

`A004396(A004396(n))+A315446(n)-A004396(n)`
-/

namespace A315398.P4856233573030920643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315446 n - A004396 n)

end

end A315398.P4856233573030920643

namespace A315398

/-- `A004396(A004396(n))+A315446(n)-A004396(n)` -/
def P4856233573030920643.Spec : Prop :=
  ∀ n, P4856233573030920643.a n = A315398 n

end A315398

/-! ## A315398.P2576857862517349891

`A315727(n)-A093390(A062545(n))`
-/

namespace A315398.P2576857862517349891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315727 n - A093390 (A062545 n).toNat

end

end A315398.P2576857862517349891

namespace A315398

/-- `A315727(n)-A093390(A062545(n))` -/
def P2576857862517349891.Spec : Prop :=
  ∀ n, P2576857862517349891.a n = A315398 n

end A315398

/-! ## A315398.P5990008962237362350

`abs(A008592(n)-A313293(n))`
-/

namespace A315398.P5990008962237362350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313293 n|

end

end A315398.P5990008962237362350

namespace A315398

/-- `abs(A008592(n)-A313293(n))` -/
def P5990008962237362350.Spec : Prop :=
  ∀ n, P5990008962237362350.a n = A315398 n

end A315398

/-! ## A315398.P17951891513032120097

`2*A008706(n)-A313293(n)`
-/

namespace A315398.P17951891513032120097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313293 n

end

end A315398.P17951891513032120097

namespace A315398

/-- `2*A008706(n)-A313293(n)` -/
def P17951891513032120097.Spec : Prop :=
  ∀ n, P17951891513032120097.a n = A315398 n

end A315398

/-! ## A315398.P12664637200416621698

`A184418(A008574(n))-A313293(n)`
-/

namespace A315398.P12664637200416621698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313293 n

end

end A315398.P12664637200416621698

namespace A315398

/-- `A184418(A008574(n))-A313293(n)` -/
def P12664637200416621698.Spec : Prop :=
  ∀ n, P12664637200416621698.a n = A315398 n

end A315398

/-! ## A315398.P7885486292106531364

`A008458(n)+A008574(n)-A313293(n)`
-/

namespace A315398.P7885486292106531364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313293 n)

end

end A315398.P7885486292106531364

namespace A315398

/-- `A008458(n)+A008574(n)-A313293(n)` -/
def P7885486292106531364.Spec : Prop :=
  ∀ n, P7885486292106531364.a n = A315398 n

end A315398

/-! ## A315398.P16793635808538002163

`A005843(A008706(n))-A313293(n)`
-/

namespace A315398.P16793635808538002163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313293 n

end

end A315398.P16793635808538002163

namespace A315398

/-- `A005843(A008706(n))-A313293(n)` -/
def P16793635808538002163.Spec : Prop :=
  ∀ n, P16793635808538002163.a n = A315398 n

end A315398

/-! ## A315398.P8933811966688447952

`A065502(A008458(n))-A313293(n)`
-/

namespace A315398.P8933811966688447952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313293 n

end

end A315398.P8933811966688447952

namespace A315398

/-- `A065502(A008458(n))-A313293(n)` -/
def P8933811966688447952.Spec : Prop :=
  ∀ n, P8933811966688447952.a n = A315398 n

end A315398

/-! ## A315398.P189639350693399268

`A315446(n)-A033183(A004771(n))`
-/

namespace A315398.P189639350693399268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n - A033183 (A004771 n).toNat

end

end A315398.P189639350693399268

namespace A315398

/-- `A315446(n)-A033183(A004771(n))` -/
def P189639350693399268.Spec : Prop :=
  ∀ n, P189639350693399268.a n = A315398 n

end A315398

/-!
# A315399: Coordination sequence Gal.4.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315399, the canonical program `A315399.P10081948034211585204` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315399 has offset 0).

The definition of A315399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315399.P14810922056834951226

`A313561(n)+A046978(n)`
-/

namespace A315399.P14810922056834951226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + A046978 n

end

end A315399.P14810922056834951226

namespace A315399

/-- `A313561(n)+A046978(n)` -/
def P14810922056834951226.Spec : Prop :=
  ∀ n, P14810922056834951226.a n = A315399 n

end A315399

/-! ## A315399.P10081948034211585204

`abs(A008592(n)-A313292(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315399

/-- `abs(A008592(n)-A313292(n))` -/
def P10081948034211585204.Spec : Prop :=
  ∀ n, P10081948034211585204.a n = A315399 n

theorem P10081948034211585204.correct : P10081948034211585204.Spec := by
  intro n
  simp only [A315399]

end A315399

/-! ## A315399.P3610698762457962437

`A315671(n)-∑[A021913(n)]`
-/

namespace A315399.P3610698762457962437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315399.P3610698762457962437

namespace A315399

/-- `A315671(n)-∑[A021913(n)]` -/
def P3610698762457962437.Spec : Prop :=
  ∀ n, P3610698762457962437.a n = A315399 n

end A315399

/-! ## A315399.P15739570190010215797

`A315447(n)-Δ[A011861(n)]`
-/

namespace A315399.P15739570190010215797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - (f1 (n + 1) - f1 n)

end

end A315399.P15739570190010215797

namespace A315399

/-- `A315447(n)-Δ[A011861(n)]` -/
def P15739570190010215797.Spec : Prop :=
  ∀ n, P15739570190010215797.a n = A315399 n

end A315399

/-! ## A315399.P10262966502250961810

`A315671(n)-Δ[A011848(n)]`
-/

namespace A315399.P10262966502250961810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - (f1 (n + 1) - f1 n)

end

end A315399.P10262966502250961810

namespace A315399

/-- `A315671(n)-Δ[A011848(n)]` -/
def P10262966502250961810.Spec : Prop :=
  ∀ n, P10262966502250961810.a n = A315399 n

end A315399

/-! ## A315399.P14244578540891354473

`A315671(n)-A004524(n+1)`
-/

namespace A315399.P14244578540891354473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - A004524 (n + 1)

end

end A315399.P14244578540891354473

namespace A315399

/-- `A315671(n)-A004524(n+1)` -/
def P14244578540891354473.Spec : Prop :=
  ∀ n, P14244578540891354473.a n = A315399 n

end A315399

/-! ## A315399.P13453463355167578019

`2*A008706(n)-A313292(n)`
-/

namespace A315399.P13453463355167578019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313292 n

end

end A315399.P13453463355167578019

namespace A315399

/-- `2*A008706(n)-A313292(n)` -/
def P13453463355167578019.Spec : Prop :=
  ∀ n, P13453463355167578019.a n = A315399 n

end A315399

/-! ## A315399.P6918331542275477048

`A004525(n)+A315671(n)-n`
-/

namespace A315399.P6918331542275477048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315671 n - (n : ℤ))

end

end A315399.P6918331542275477048

namespace A315399

/-- `A004525(n)+A315671(n)-n` -/
def P6918331542275477048.Spec : Prop :=
  ∀ n, P6918331542275477048.a n = A315399 n

end A315399

/-! ## A315399.P7586297771766445623

`A313480(n)+A004525(A004525(n))`
-/

namespace A315399.P7586297771766445623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A004525 (A004525 n).toNat

end

end A315399.P7586297771766445623

namespace A315399

/-- `A313480(n)+A004525(A004525(n))` -/
def P7586297771766445623.Spec : Prop :=
  ∀ n, P7586297771766445623.a n = A315399 n

end A315399

/-! ## A315399.P2083721796090819384

`A312894(n)+2*A004525(A004525(n))`
-/

namespace A315399.P2083721796090819384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + 2 * A004525 (A004525 n).toNat

end

end A315399.P2083721796090819384

namespace A315399

/-- `A312894(n)+2*A004525(A004525(n))` -/
def P2083721796090819384.Spec : Prop :=
  ∀ n, P2083721796090819384.a n = A315399 n

end A315399

/-! ## A315399.P492186474207589773

`A313685(n)+A046978(A046978(n)+n)`
-/

namespace A315399.P492186474207589773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315399.P492186474207589773

namespace A315399

/-- `A313685(n)+A046978(A046978(n)+n)` -/
def P492186474207589773.Spec : Prop :=
  ∀ n, P492186474207589773.a n = A315399 n

end A315399

/-! ## A315399.P455960949361411068

`A004525(A004525(n))+A315685(n)-n`
-/

namespace A315399.P455960949361411068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315685 n - (n : ℤ))

end

end A315399.P455960949361411068

namespace A315399

/-- `A004525(A004525(n))+A315685(n)-n` -/
def P455960949361411068.Spec : Prop :=
  ∀ n, P455960949361411068.a n = A315399 n

end A315399

/-! ## A315399.P1820441662736712919

`A008458(n)+A008574(n)-A313292(n)`
-/

namespace A315399.P1820441662736712919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313292 n)

end

end A315399.P1820441662736712919

namespace A315399

/-- `A008458(n)+A008574(n)-A313292(n)` -/
def P1820441662736712919.Spec : Prop :=
  ∀ n, P1820441662736712919.a n = A315399 n

end A315399

/-! ## A315399.P13628694862881023601

`∑{d}[A008592(n)-A313292(n), A000010(#)]`
-/

namespace A315399.P13628694862881023601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315399.P13628694862881023601

namespace A315399

/-- `∑{d}[A008592(n)-A313292(n), A000010(#)]` -/
def P13628694862881023601.Spec : Prop :=
  ∀ n, P13628694862881023601.a n = A315399 n

end A315399

/-! ## A315399.P5660868313848337092

`A004525(A004525(n))+A315411(n)-A004525(n)`
-/

namespace A315399.P5660868313848337092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315411 n - A004525 n)

end

end A315399.P5660868313848337092

namespace A315399

/-- `A004525(A004525(n))+A315411(n)-A004525(n)` -/
def P5660868313848337092.Spec : Prop :=
  ∀ n, P5660868313848337092.a n = A315399 n

end A315399

/-! ## A315399.P11019527120069266440

`∏{d}[A008592(n)-A313292(n), A014963(#)]`
-/

namespace A315399.P11019527120069266440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A315399.P11019527120069266440

namespace A315399

/-- `∏{d}[A008592(n)-A313292(n), A014963(#)]` -/
def P11019527120069266440.Spec : Prop :=
  ∀ n, P11019527120069266440.a n = A315399 n

end A315399

