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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A311500: Coordination sequence Gal.6.145.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311500, there is no canonical definition to state claims against.
-/

/-! ## A311500.P5069696446731776125

`A122079(A311499(n))`
-/

namespace A311500.P5069696446731776125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A311499 n).toNat

end

end A311500.P5069696446731776125

/-! ## A311500.P13345481701143679927

`A312054(n)-A073424(A014113(n))`
-/

namespace A311500.P13345481701143679927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 n - A073424 (A014113 n).toNat

end

end A311500.P13345481701143679927

/-! ## A311500.P7457109597075701189

`A311285(n)+A112765(A005418(n+1))`
-/

namespace A311500.P7457109597075701189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 n + A112765 (A005418 (n + 1)).toNat

end

end A311500.P7457109597075701189

/-! ## A311500.P5217891163644697098

`A311499(n)+A010054(A199921(n+1))`
-/

namespace A311500.P5217891163644697098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311499 n + A010054 (A199921 (n + 1)).toNat

end

end A311500.P5217891163644697098

/-! ## A311500.P10534174407369859361

`A312054(n)-A010051(A055772(n+1))`
-/

namespace A311500.P10534174407369859361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 n - A010051 (A055772 (n + 1)).toNat

end

end A311500.P10534174407369859361

/-!
# A311501: Coordination sequence Gal.4.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311501, the canonical program `A311501.P3617403906977629789` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311501 has offset 0).

The definition of A311501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311501.P13446776433671033354

`A314672(n)-A046978(n)`
-/

namespace A311501.P13446776433671033354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n - A046978 n

end

end A311501.P13446776433671033354

namespace A311501

/-- `A314672(n)-A046978(n)` -/
def P13446776433671033354.Spec : Prop :=
  ∀ n, P13446776433671033354.a n = A311501 n

end A311501

/-! ## A311501.P3617403906977629789

`A301291(n)-A004525(A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A311501

/-- `A301291(n)-A004525(A004525(n))` -/
def P3617403906977629789.Spec : Prop :=
  ∀ n, P3617403906977629789.a n = A311501 n

theorem P3617403906977629789.correct : P3617403906977629789.Spec := by
  intro n
  simp only [A311501]

end A311501

/-! ## A311501.P12797350438023902210

`A301293(A004525(n))+2*A201629(n)`
-/

namespace A311501.P12797350438023902210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 (A004525 n).toNat + 2 * A201629 n

end

end A311501.P12797350438023902210

namespace A311501

/-- `A301293(A004525(n))+2*A201629(n)` -/
def P12797350438023902210.Spec : Prop :=
  ∀ n, P12797350438023902210.a n = A311501 n

end A311501

/-! ## A311501.P12266789153891288518

`A312943(n)-A004525(n-A004525(n))`
-/

namespace A311501.P12266789153891288518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A311501.P12266789153891288518

namespace A311501

/-- `A312943(n)-A004525(n-A004525(n))` -/
def P12266789153891288518.Spec : Prop :=
  ∀ n, P12266789153891288518.a n = A311501 n

end A311501

/-! ## A311501.P2721843929327038722

`lt[A020639(n+1), 4]+3*n+1-A004525(A004525(n))`
-/

namespace A311501.P2721843929327038722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (3 * n + 1) : ℤ) - A004525 (A004525 n).toNat

end

end A311501.P2721843929327038722

namespace A311501

/-- `lt[A020639(n+1), 4]+3*n+1-A004525(A004525(n))` -/
def P2721843929327038722.Spec : Prop :=
  ∀ n, P2721843929327038722.a n = A311501 n

end A311501

/-! ## A311501.P8670001895490683800

`A004525(n)+A008574(n)-A004525(A004525(n))`
-/

namespace A311501.P8670001895490683800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008574 n - A004525 (A004525 n).toNat)

end

end A311501.P8670001895490683800

namespace A311501

/-- `A004525(n)+A008574(n)-A004525(A004525(n))` -/
def P8670001895490683800.Spec : Prop :=
  ∀ n, P8670001895490683800.a n = A311501 n

end A311501

/-! ## A311501.P7422105612775473398

`(A311625(n)+A008574(n))/2`
-/

namespace A311501.P7422105612775473398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311625 n + A008574 n : ℚ) / 2

end

end A311501.P7422105612775473398

namespace A311501

/-- `(A311625(n)+A008574(n))/2` -/
def P7422105612775473398.Spec : Prop :=
  ∀ n, P7422105612775473398.a n = (A311501 n : ℚ)

end A311501

/-! ## A311501.P17213754103565361979

`(A311625(n)+record[A257088(n)])/2`
-/

namespace A311501.P17213754103565361979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311625 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A311501.P17213754103565361979

namespace A311501

/-- `(A311625(n)+record[A257088(n)])/2` -/
def P17213754103565361979.Spec : Prop :=
  ∀ n, P17213754103565361979.a n = (A311501 n : ℚ)

end A311501

/-! ## A311501.P8267083245573945241

`A312140(n)-Δ[A011861(n)]`
-/

namespace A311501.P8267083245573945241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - (f1 (n + 1) - f1 n)

end

end A311501.P8267083245573945241

namespace A311501

/-- `A312140(n)-Δ[A011861(n)]` -/
def P8267083245573945241.Spec : Prop :=
  ∀ n, P8267083245573945241.a n = A311501 n

end A311501

/-! ## A311501.P9057747763764666137

`A313115(n)-Δ[A011848(n)]`
-/

namespace A311501.P9057747763764666137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - (f1 (n + 1) - f1 n)

end

end A311501.P9057747763764666137

namespace A311501

/-- `A313115(n)-Δ[A011848(n)]` -/
def P9057747763764666137.Spec : Prop :=
  ∀ n, P9057747763764666137.a n = A311501 n

end A311501

/-! ## A311501.P6971705010103406410

`A004525(n)+A313115(n)-n`
-/

namespace A311501.P6971705010103406410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313115 n - (n : ℤ))

end

end A311501.P6971705010103406410

namespace A311501

/-- `A004525(n)+A313115(n)-n` -/
def P6971705010103406410.Spec : Prop :=
  ∀ n, P6971705010103406410.a n = A311501 n

end A311501

/-! ## A311501.P7967994736871015963

`A314969(n)-A004525(A004525(n)+n)`
-/

namespace A311501.P7967994736871015963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A311501.P7967994736871015963

namespace A311501

/-- `A314969(n)-A004525(A004525(n)+n)` -/
def P7967994736871015963.Spec : Prop :=
  ∀ n, P7967994736871015963.a n = A311501 n

end A311501

/-! ## A311501.P17230046796696731377

`A315211(n)-(A004525(n)+A004525(A004525(n)))`
-/

namespace A311501.P17230046796696731377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315211 n - (A004525 n + A004525 (A004525 n).toNat)

end

end A311501.P17230046796696731377

namespace A311501

/-- `A315211(n)-(A004525(n)+A004525(A004525(n)))` -/
def P17230046796696731377.Spec : Prop :=
  ∀ n, P17230046796696731377.a n = A311501 n

end A311501

/-! ## A311501.P1174475233137144860

`A004525(A004525(n))+A313152(n)-n`
-/

namespace A311501.P1174475233137144860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A313152 n - (n : ℤ))

end

end A311501.P1174475233137144860

namespace A311501

/-- `A004525(A004525(n))+A313152(n)-n` -/
def P1174475233137144860.Spec : Prop :=
  ∀ n, P1174475233137144860.a n = A311501 n

end A311501

/-! ## A311501.P5751626562728595400

`A315320(n)-(A188510(n)+n)`
-/

namespace A311501.P5751626562728595400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - (A188510 n + (n : ℤ))

end

end A311501.P5751626562728595400

namespace A311501

/-- `A315320(n)-(A188510(n)+n)` -/
def P5751626562728595400.Spec : Prop :=
  ∀ n, P5751626562728595400.a n = A311501 n

end A311501

/-! ## A311501.P13438568954285494310

`A315469(n)-(A046978(n)+n)`
-/

namespace A311501.P13438568954285494310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - (A046978 n + (n : ℤ))

end

end A311501.P13438568954285494310

namespace A311501

/-- `A315469(n)-(A046978(n)+n)` -/
def P13438568954285494310.Spec : Prop :=
  ∀ n, P13438568954285494310.a n = A311501 n

end A311501

/-! ## A311501.P15171976064776780092

`A313793(n)-n`
-/

namespace A311501.P15171976064776780092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n - (n : ℤ)

end

end A311501.P15171976064776780092

namespace A311501

/-- `A313793(n)-n` -/
def P15171976064776780092.Spec : Prop :=
  ∀ n, P15171976064776780092.a n = A311501 n

end A311501

/-! ## A311501.P3024231163788200132

`abs(A008592(n)-A315745(n))`
-/

namespace A311501.P3024231163788200132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315745 n|

end

end A311501.P3024231163788200132

namespace A311501

/-- `abs(A008592(n)-A315745(n))` -/
def P3024231163788200132.Spec : Prop :=
  ∀ n, P3024231163788200132.a n = A311501 n

end A311501

/-! ## A311501.P8008566121924551220

`A008458(n)+A008574(n)-A315745(n)`
-/

namespace A311501.P8008566121924551220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315745 n)

end

end A311501.P8008566121924551220

namespace A311501

/-- `A008458(n)+A008574(n)-A315745(n)` -/
def P8008566121924551220.Spec : Prop :=
  ∀ n, P8008566121924551220.a n = A311501 n

end A311501

/-! ## A311501.P4073958515887250575

`A314250(n)-A047273(n+1)`
-/

namespace A311501.P4073958515887250575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A047273 (n + 1)

end

end A311501.P4073958515887250575

namespace A311501

/-- `A314250(n)-A047273(n+1)` -/
def P4073958515887250575.Spec : Prop :=
  ∀ n, P4073958515887250575.a n = A311501 n

end A311501

/-!
# A311502: Coordination sequence Gal.6.137.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311502, there is no canonical definition to state claims against.
-/

/-! ## A311502.P4525450111625227679

`A311503(n)-A185036(A048311(n))`
-/

namespace A311502.P4525450111625227679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A185036 (A048311 n).toNat

end

end A311502.P4525450111625227679

/-! ## A311502.P8726203001757581494

`A311503(n)-A185036(A048338(n))`
-/

namespace A311502.P8726203001757581494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A185036 (A048338 n).toNat

end

end A311502.P8726203001757581494

/-! ## A311502.P4409529685128156323

`A311503(n)-A028240(A057825(n+1))`
-/

namespace A311502.P4409529685128156323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A028240 (A057825 (n + 1)).toNat

end

end A311502.P4409529685128156323

/-! ## A311502.P16434536743801085966

`A311503(n)-A185284(A094739(n+1))`
-/

namespace A311502.P16434536743801085966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A185284 (A094739 (n + 1)).toNat

end

end A311502.P16434536743801085966

/-! ## A311502.P1426195293451302068

`A311503(n)-A014707(A010894(3*n+2))`
-/

namespace A311502.P1426195293451302068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n - A014707 (A010894 (3 * n + 2 + 21)).toNat

end

end A311502.P1426195293451302068

/-!
# A311503: Coordination sequence Gal.6.138.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311503, there is no canonical definition to state claims against.
-/

/-! ## A311503.P17739290506615300851

`A311502(n)+A185036(A048311(n))`
-/

namespace A311503.P17739290506615300851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311502 n + A185036 (A048311 n).toNat

end

end A311503.P17739290506615300851

/-! ## A311503.P3006852619453886896

`A311502(n)+A185036(A048338(n))`
-/

namespace A311503.P3006852619453886896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311502 n + A185036 (A048338 n).toNat

end

end A311503.P3006852619453886896

/-! ## A311503.P2389345045712011837

`or(A185063(A332639(n)), A311502(n))`
-/

namespace A311503.P2389345045712011837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185063 (A332639 n).toNat) (A311502 n)

end

end A311503.P2389345045712011837

/-! ## A311503.P11743123649024953629

`A311502(n)+A028240(A057825(n+1))`
-/

namespace A311503.P11743123649024953629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311502 n + A028240 (A057825 (n + 1)).toNat

end

end A311503.P11743123649024953629

/-! ## A311503.P14223705727063900913

`A311502(n)+A185284(A094739(n+1))`
-/

namespace A311503.P14223705727063900913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311502 n + A185284 (A094739 (n + 1)).toNat

end

end A311503.P14223705727063900913

/-!
# A311504: Coordination sequence Gal.6.177.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311504, there is no canonical definition to state claims against.
-/

/-! ## A311504.P3385159371674401325

`and(A131556(A000225(n)), A311505(n))`
-/

namespace A311504.P3385159371674401325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131556 (A000225 n).toNat) (A311505 n)

end

end A311504.P3385159371674401325

/-! ## A311504.P6628551262383658718

`A311505(n)-A185284(A006431(n+1))`
-/

namespace A311504.P6628551262383658718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311505 n - A185284 (A006431 (n + 1)).toNat

end

end A311504.P6628551262383658718

/-! ## A311504.P17572568208491505497

`A311505(n*A287384(n))`
-/

namespace A311504.P17572568208491505497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311505 ((n : ℤ) * A287384 n).toNat

end

end A311504.P17572568208491505497

/-! ## A311504.P12338482602695480685

`A311505(n)%A128843(n)`
-/

namespace A311504.P12338482602695480685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311505 n) (A128843 n)

end

end A311504.P12338482602695480685

/-! ## A311504.P5619244038838352524

`∏{e}[A000244(n), A311505(#)]`
-/

namespace A311504.P5619244038838352524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311505 (Nat.factorization (f1 n).natAbs p)

end

end A311504.P5619244038838352524

/-!
# A311505: Coordination sequence Gal.6.161.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311505, there is no canonical definition to state claims against.
-/

/-! ## A311505.P4574702269914210949

`(A311585(n)+A311347(n))/2`
-/

namespace A311505.P4574702269914210949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311585 n + A311347 n : ℚ) / 2

end

end A311505.P4574702269914210949

/-! ## A311505.P1180637509823289858

`A014682(A311585(n)+A311347(n))`
-/

namespace A311505.P1180637509823289858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A311585 n + A311347 n).toNat

end

end A311505.P1180637509823289858

/-! ## A311505.P1515762445620700583

`A038572(A311585(n)+A311347(n))`
-/

namespace A311505.P1515762445620700583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A311585 n + A311347 n).toNat

end

end A311505.P1515762445620700583

/-! ## A311505.P10004806707180825462

`A001281(A311585(n)+A311347(n))`
-/

namespace A311505.P10004806707180825462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311585 n + A311347 n).toNat

end

end A311505.P10004806707180825462

/-! ## A311505.P17348135354010100029

`A004525(A311585(n)+A311347(n))`
-/

namespace A311505.P17348135354010100029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311585 n + A311347 n).toNat

end

end A311505.P17348135354010100029

/-! ## A311505.P10210126452805698891

`A004526(A311585(n)+A311347(n))`
-/

namespace A311505.P10210126452805698891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311585 n + A311347 n).toNat

end

end A311505.P10210126452805698891

/-! ## A311505.P10291971306721740040

`A006370(A311585(n)+A311347(n))`
-/

namespace A311505.P10291971306721740040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A311585 n + A311347 n).toNat

end

end A311505.P10291971306721740040

/-! ## A311505.P14580498778366012705

`A026741(A311585(n)+A311347(n))`
-/

namespace A311505.P14580498778366012705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311585 n + A311347 n).toNat

end

end A311505.P14580498778366012705

/-! ## A311505.P10514295246400408201

`A110654(A311585(n)+A311347(n))`
-/

namespace A311505.P10514295246400408201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311585 n + A311347 n).toNat

end

end A311505.P10514295246400408201

/-! ## A311505.P8422596184509064666

`abs(A001057(A311585(n)+A311347(n)))`
-/

namespace A311505.P8422596184509064666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A311585 n + A311347 n).toNat|

end

end A311505.P8422596184509064666

/-! ## A311505.P1708837736705112885

`A001057(A311347(n)+A311585(n)-1)`
-/

namespace A311505.P1708837736705112885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311347 n + (A311585 n - 1)).toNat

end

end A311505.P1708837736705112885

/-! ## A311505.P10871256601365021153

`A001057(A311347(n)-(1-A311585(n)))`
-/

namespace A311505.P10871256601365021153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311347 n - (1 - A311585 n)).toNat

end

end A311505.P10871256601365021153

/-! ## A311505.P3512972142060779843

`A110654(A311347(n)-(1-A311585(n)))`
-/

namespace A311505.P3512972142060779843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311347 n - (1 - A311585 n)).toNat

end

end A311505.P3512972142060779843

/-!
# A311506: Coordination sequence Gal.5.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311506, the canonical program `A311506.P16000641395129757266` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311506 has offset 0).

The definition of A311506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311506.P16000641395129757266

`A004277(n)+A314736(n)-A072154(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A311506

/-- `A004277(n)+A314736(n)-A072154(n)` -/
def P16000641395129757266.Spec : Prop :=
  ∀ n, P16000641395129757266.a n = A311506 n

theorem P16000641395129757266.correct : P16000641395129757266.Spec := by
  intro n
  simp only [A311506]

end A311506

/-! ## A311506.P7170774359790821680

`A047486(n+1)+A314736(n)-A005843(n)`
-/

namespace A311506.P7170774359790821680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A314736 n - A005843 n)

end

end A311506.P7170774359790821680

namespace A311506

/-- `A047486(n+1)+A314736(n)-A005843(n)` -/
def P7170774359790821680.Spec : Prop :=
  ∀ n, P7170774359790821680.a n = A311506 n

end A311506

/-! ## A311506.P9227177007798402028

`A008574(n)+A301718(n)-A314205(n)`
-/

namespace A311506.P9227177007798402028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A301718 n - A314205 n)

end

end A311506.P9227177007798402028

namespace A311506

/-- `A008574(n)+A301718(n)-A314205(n)` -/
def P9227177007798402028.Spec : Prop :=
  ∀ n, P9227177007798402028.a n = A311506 n

end A311506

/-! ## A311506.P4375380824122814707

`A301718(n)+A314736(n)-A008458(n)`
-/

namespace A311506.P4375380824122814707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A314736 n - A008458 n)

end

end A311506.P4375380824122814707

namespace A311506

/-- `A301718(n)+A314736(n)-A008458(n)` -/
def P4375380824122814707.Spec : Prop :=
  ∀ n, P4375380824122814707.a n = A311506 n

end A311506

/-! ## A311506.P17164099604964395489

`A301718(n)+A311458(n)-A314231(n)`
-/

namespace A311506.P17164099604964395489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A311458 n - A314231 n)

end

end A311506.P17164099604964395489

namespace A311506

/-- `A301718(n)+A311458(n)-A314231(n)` -/
def P17164099604964395489.Spec : Prop :=
  ∀ n, P17164099604964395489.a n = A311506 n

end A311506

/-! ## A311506.P18029418395440064674

`A047486(n+1)+A004525(A315267(n))`
-/

namespace A311506.P18029418395440064674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A004525 (A315267 n).toNat

end

end A311506.P18029418395440064674

namespace A311506

/-- `A047486(n+1)+A004525(A315267(n))` -/
def P18029418395440064674.Spec : Prop :=
  ∀ n, P18029418395440064674.a n = A311506 n

end A311506

/-!
# A311507: Coordination sequence Gal.5.72.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311507, there is no canonical definition to state claims against.
-/

/-! ## A311507.P851578303855866268

`A311508(n)-A185284(A008578(n+1))`
-/

namespace A311507.P851578303855866268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311508 n - A185284 (A008578 (n + 1)).toNat

end

end A311507.P851578303855866268

/-! ## A311507.P17628835728797138647

`A311508(n^A196879(n))`
-/

namespace A311507.P17628835728797138647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311508 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A311507.P17628835728797138647

/-! ## A311507.P6297084272402780878

`A311508(n)%A104440(n+5)`
-/

namespace A311507.P6297084272402780878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311508 n) (A104440 (n + 5))

end

end A311507.P6297084272402780878

/-! ## A311507.P1452792334894353544

`A314692(n)-A219189(3*(n+1))`
-/

namespace A311507.P1452792334894353544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n - A219189 (3 * (n + 1))

end

end A311507.P1452792334894353544

/-! ## A311507.P8849016694679229563

`A311508(n)+A226786(A326580(n))`
-/

namespace A311507.P8849016694679229563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311508 n + A226786 (A326580 n).toNat

end

end A311507.P8849016694679229563

/-!
# A311508: Coordination sequence Gal.3.11.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311508, there is no canonical definition to state claims against.
-/

/-! ## A311508.P14829229871288748519

`(A311588(n)+A311349(n))/2`
-/

namespace A311508.P14829229871288748519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311588 n + A311349 n : ℚ) / 2

end

end A311508.P14829229871288748519

/-! ## A311508.P12120504138982427600

`A311349(n)+A312062(n)-A311918(n)`
-/

namespace A311508.P12120504138982427600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311349 n + (A312062 n - A311918 n)

end

end A311508.P12120504138982427600

/-! ## A311508.P9403585158805104133

`A004525(A311588(n)+A311349(n))`
-/

namespace A311508.P9403585158805104133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311588 n + A311349 n).toNat

end

end A311508.P9403585158805104133

/-! ## A311508.P8430808735516324270

`A252463(A311588(n)+A311349(n))`
-/

namespace A311508.P8430808735516324270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A311588 n + A311349 n).toNat

end

end A311508.P8430808735516324270

/-! ## A311508.P17814650082145655737

`A271478(A311588(n)+A311349(n))`
-/

namespace A311508.P17814650082145655737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 (A311588 n + A311349 n).toNat

end

end A311508.P17814650082145655737

/-! ## A311508.P6019632191744835371

`A008619(A311349(n)+A311588(n)-1)`
-/

namespace A311508.P6019632191744835371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311349 n + (A311588 n - 1)).toNat

end

end A311508.P6019632191744835371

/-! ## A311508.P5826875800019919231

`A008619(A311349(n)-(1-A311588(n)))`
-/

namespace A311508.P5826875800019919231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311349 n - (1 - A311588 n)).toNat

end

end A311508.P5826875800019919231

/-!
# A311509: Coordination sequence Gal.4.83.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311509, there is no canonical definition to state claims against.
-/

/-! ## A311509.P3832117690176928074

`A341980(A007956(n+1))+A311458(n)`
-/

namespace A311509.P3832117690176928074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 ((A007956 (n + 1)).toNat + 78) + A311458 n

end

end A311509.P3832117690176928074

/-! ## A311509.P5333427505724551196

`A311589(n)-A086080(A005001(n)+n)`
-/

namespace A311509.P5333427505724551196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311589 n - A086080 (A005001 n + (n : ℤ)).toNat

end

end A311509.P5333427505724551196

/-! ## A311509.P13128828457380542344

`A360015(2*n+1)+A025426(A062758(n+1))`
-/

namespace A311509.P13128828457380542344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (2 * n + 1) + A025426 (A062758 (n + 1)).toNat

end

end A311509.P13128828457380542344

/-! ## A311509.P1806459053586726618

`∩[A342591(n+1), A311499(n)]`
-/

namespace A311509.P1806459053586726618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A311509.P1806459053586726618

/-! ## A311509.P11017869277818031994

`A311505(n)+A180813(A309862(n))`
-/

namespace A311509.P11017869277818031994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311505 n + A180813 (A309862 n).toNat

end

end A311509.P11017869277818031994

/-!
# A311510: Coordination sequence Gal.5.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311510, there is no canonical definition to state claims against.
-/

/-! ## A311510.P1396161416949533289

`record[A311512(n)-A309471(n)]`
-/

namespace A311510.P1396161416949533289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n - A309471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311510.P1396161416949533289

/-! ## A311510.P13807848134037577286

`record[A311512(n)/2^A064458(n)]`
-/

namespace A311510.P13807848134037577286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311512 n : ℚ) / (2 : ℚ) ^ (A064458 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311510.P13807848134037577286

/-! ## A311510.P7910584247871905954

`A311511(n)-A093957(A001611(n))`
-/

namespace A311510.P7910584247871905954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311511 n - A093957 (A001611 n).toNat

end

end A311510.P7910584247871905954

/-! ## A311510.P3645041950216886574

`A311512(n)-A005089(A218116(n))`
-/

namespace A311510.P3645041950216886574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n - A005089 (A218116 n).toNat

end

end A311510.P3645041950216886574

/-! ## A311510.P6733262031133238406

`A311511(n)-A105385(A218116(n))`
-/

namespace A311510.P6733262031133238406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311511 n - A105385 (A218116 n).toNat

end

end A311510.P6733262031133238406

/-!
# A311511: Coordination sequence Gal.5.71.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311511, there is no canonical definition to state claims against.
-/

/-! ## A311511.P4392040946185586915

`A311512(n)-A107846(A056839(n))`
-/

namespace A311511.P4392040946185586915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n - A107846 (A056839 n).toNat

end

end A311511.P4392040946185586915

/-! ## A311511.P15052324770371224365

`A311512(n)-A185284(A016777(n))`
-/

namespace A311511.P15052324770371224365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n - A185284 (A016777 n).toNat

end

end A311511.P15052324770371224365

/-! ## A311511.P2707696552512984759

`A311512(n)-A185284(A003278(n+1))`
-/

namespace A311511.P2707696552512984759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n - A185284 (A003278 (n + 1)).toNat

end

end A311511.P2707696552512984759

/-! ## A311511.P8157629247504111724

`A311510(n)+A093957(A001611(n))`
-/

namespace A311511.P8157629247504111724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311510 n + A093957 (A001611 n).toNat

end

end A311511.P8157629247504111724

/-!
# A311512: Coordination sequence Gal.6.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311512, the canonical program `A311512.P15083007676544046786` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311512 has offset 0).

The definition of A311512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311512.P15083007676544046786

`A004525(A004396(n))+A312184(n)-A004396(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A311512

/-- `A004525(A004396(n))+A312184(n)-A004396(n)` -/
def P15083007676544046786.Spec : Prop :=
  ∀ n, P15083007676544046786.a n = A311512 n

theorem P15083007676544046786.correct : P15083007676544046786.Spec := by
  intro n
  simp only [A311512]

end A311512

/-! ## A311512.P4201945127280601087

`A313117(n)-A004524(n+1)`
-/

namespace A311512.P4201945127280601087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n - A004524 (n + 1)

end

end A311512.P4201945127280601087

namespace A311512

/-- `A313117(n)-A004524(n+1)` -/
def P4201945127280601087.Spec : Prop :=
  ∀ n, P4201945127280601087.a n = A311512 n

end A311512

/-! ## A311512.P17094214548773457369

`A004525(n)+A313117(n)-n`
-/

namespace A311512.P17094214548773457369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313117 n - (n : ℤ))

end

end A311512.P17094214548773457369

namespace A311512

/-- `A004525(n)+A313117(n)-n` -/
def P17094214548773457369.Spec : Prop :=
  ∀ n, P17094214548773457369.a n = A311512 n

end A311512

/-! ## A311512.P10650938510298506432

`A314959(n)-A004396(n)`
-/

namespace A311512.P10650938510298506432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n - A004396 n

end

end A311512.P10650938510298506432

namespace A311512

/-- `A314959(n)-A004396(n)` -/
def P10650938510298506432.Spec : Prop :=
  ∀ n, P10650938510298506432.a n = A311512 n

end A311512

/-! ## A311512.P5810302640954785175

`abs(9*n-A313684(n))`
-/

namespace A311512.P5810302640954785175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A313684 n|

end

end A311512.P5810302640954785175

namespace A311512

/-- `abs(9*n-A313684(n))` -/
def P5810302640954785175.Spec : Prop :=
  ∀ n, P5810302640954785175.a n = A311512 n

end A311512

/-! ## A311512.P206325587554662081

`∑{d}[9*n-A313684(n), A000010(#)]`
-/

namespace A311512.P206325587554662081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - A313684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A311512.P206325587554662081

namespace A311512

/-- `∑{d}[9*n-A313684(n), A000010(#)]` -/
def P206325587554662081.Spec : Prop :=
  ∀ n, P206325587554662081.a n = A311512 n

end A311512

/-! ## A311512.P6176773657222474924

`A008458(n)+A008486(n)-A313684(n)`
-/

namespace A311512.P6176773657222474924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313684 n)

end

end A311512.P6176773657222474924

namespace A311512

/-- `A008458(n)+A008486(n)-A313684(n)` -/
def P6176773657222474924.Spec : Prop :=
  ∀ n, P6176773657222474924.a n = A311512 n

end A311512

/-! ## A311512.P5927488989540872346

`A315421(n)-(A128834(n)+n)`
-/

namespace A311512.P5927488989540872346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315421 n - (A128834 n + (n : ℤ))

end

end A311512.P5927488989540872346

namespace A311512

/-- `A315421(n)-(A128834(n)+n)` -/
def P5927488989540872346.Spec : Prop :=
  ∀ n, P5927488989540872346.a n = A311512 n

end A311512

/-! ## A311512.P1021846143130005738

`A313794(n)-n`
-/

namespace A311512.P1021846143130005738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - (n : ℤ)

end

end A311512.P1021846143130005738

namespace A311512

/-- `A313794(n)-n` -/
def P1021846143130005738.Spec : Prop :=
  ∀ n, P1021846143130005738.a n = A311512 n

end A311512

/-! ## A311512.P8132716277560402932

`A008458(n)+A008574(n)-A315744(n)`
-/

namespace A311512.P8132716277560402932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315744 n)

end

end A311512.P8132716277560402932

namespace A311512

/-- `A008458(n)+A008574(n)-A315744(n)` -/
def P8132716277560402932.Spec : Prop :=
  ∀ n, P8132716277560402932.a n = A311512 n

end A311512

/-! ## A311512.P6892227963827807009

`A315499(n)-A047424(n+1)`
-/

namespace A311512.P6892227963827807009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A047424 (n + 1)

end

end A311512.P6892227963827807009

namespace A311512

/-- `A315499(n)-A047424(n+1)` -/
def P6892227963827807009.Spec : Prop :=
  ∀ n, P6892227963827807009.a n = A311512 n

end A311512

/-! ## A311512.P16684607929926799712

`A314254(n)-A047273(n+1)`
-/

namespace A311512.P16684607929926799712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A047273 (n + 1)

end

end A311512.P16684607929926799712

namespace A311512

/-- `A314254(n)-A047273(n+1)` -/
def P16684607929926799712.Spec : Prop :=
  ∀ n, P16684607929926799712.a n = A311512 n

end A311512

/-! ## A311512.P1311695790539847114

`A004396(A312123(n)+A004525(n))+n`
-/

namespace A311512.P1311695790539847114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312123 n + A004525 n).toNat + (n : ℤ)

end

end A311512.P1311695790539847114

namespace A311512

/-- `A004396(A312123(n)+A004525(n))+n` -/
def P1311695790539847114.Spec : Prop :=
  ∀ n, P1311695790539847114.a n = A311512 n

end A311512

/-! ## A311512.P6385767673309627831

`A004396(A313126(n))+n`
-/

namespace A311512.P6385767673309627831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313126 n).toNat + (n : ℤ)

end

end A311512.P6385767673309627831

namespace A311512

/-- `A004396(A313126(n))+n` -/
def P6385767673309627831.Spec : Prop :=
  ∀ n, P6385767673309627831.a n = A311512 n

end A311512

/-! ## A311512.P13287983253212896565

`A004396(A311536(n)+A004525(n))+n`
-/

namespace A311512.P13287983253212896565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311536 n + A004525 n).toNat + (n : ℤ)

end

end A311512.P13287983253212896565

namespace A311512

/-- `A004396(A311536(n)+A004525(n))+n` -/
def P13287983253212896565.Spec : Prop :=
  ∀ n, P13287983253212896565.a n = A311512 n

end A311512

/-! ## A311512.P13602433899869258908

`A004396(A313930(n)-A004396(n))+n`
-/

namespace A311512.P13602433899869258908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313930 n - A004396 n).toNat + (n : ℤ)

end

end A311512.P13602433899869258908

namespace A311512

/-- `A004396(A313930(n)-A004396(n))+n` -/
def P13602433899869258908.Spec : Prop :=
  ∀ n, P13602433899869258908.a n = A311512 n

end A311512

/-! ## A311512.P4006863688556215429

`A004396(A314970(n)+A004396(2*n))`
-/

namespace A311512.P4006863688556215429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314970 n + A004396 (2 * n)).toNat

end

end A311512.P4006863688556215429

namespace A311512

/-- `A004396(A314970(n)+A004396(2*n))` -/
def P4006863688556215429.Spec : Prop :=
  ∀ n, P4006863688556215429.a n = A311512 n

end A311512

/-! ## A311512.P2428586366906926239

`A004525(A313930(n)+n)+n`
-/

namespace A311512.P2428586366906926239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313930 n + (n : ℤ)).toNat + (n : ℤ)

end

end A311512.P2428586366906926239

namespace A311512

/-- `A004525(A313930(n)+n)+n` -/
def P2428586366906926239.Spec : Prop :=
  ∀ n, P2428586366906926239.a n = A311512 n

end A311512

/-! ## A311512.P13397156991724968089

`lcm(9*n-A313684(n), A007318(∑[n+1]))`
-/

namespace A311512.P13397156991724968089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((9 * n : ℤ) - A313684 n) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A311512.P13397156991724968089

namespace A311512

/-- `lcm(9*n-A313684(n), A007318(∑[n+1]))` -/
def P13397156991724968089.Spec : Prop :=
  ∀ n, (P13397156991724968089.a n : ℤ) = A311512 n

end A311512

/-!
# A311513: Coordination sequence Gal.4.94.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311513, there is no canonical definition to state claims against.
-/

/-! ## A311513.P18108196957534908335

`A311505(n)+A011664(A233217(n+1))`
-/

namespace A311513.P18108196957534908335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311505 n + A011664 (A233217 (n + 1)).toNat

end

end A311513.P18108196957534908335

/-! ## A311513.P3545795550173852446

`A311505(n)+A109527(n²)`
-/

namespace A311513.P3545795550173852446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311505 n + A109527 (n ^ 2)

end

end A311513.P3545795550173852446

/-! ## A311513.P13413252740826039639

`xor(A004958(n), A010054(A262033(n)))`
-/

namespace A311513.P13413252740826039639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004958 n) (A010054 (A262033 n).toNat)

end

end A311513.P13413252740826039639

/-! ## A311513.P4745873679527867393

`A359826(A123678(n+1))+A311288(n)`
-/

namespace A311513.P4745873679527867393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359826 (A123678 (n + 1)).toNat + A311288 n

end

end A311513.P4745873679527867393

/-! ## A311513.P13139858628980146835

`A358724(A342448(n+1))+A301301(n)`
-/

namespace A311513.P13139858628980146835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A342448 (n + 1)).toNat + A301301 n

end

end A311513.P13139858628980146835

/-!
# A311514: Coordination sequence Gal.6.68.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311514, there is no canonical definition to state claims against.
-/

/-! ## A311514.P10876988406205940063

`A239217((A239217(n+1)-n)*A301676(n))`
-/

namespace A311514.P10876988406205940063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 ((A239217 (n + 1) - (n : ℤ)) * A301676 n).toNat

end

end A311514.P10876988406205940063

/-! ## A311514.P17406624264786035632

`A353853(A245226(3*n+1))`
-/

namespace A311514.P17406624264786035632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A245226 (3 * n + 1)).toNat

end

end A311514.P17406624264786035632

/-! ## A311514.P3902192179379822764

`A311536(n)-A086015(n²²)`
-/

namespace A311514.P3902192179379822764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n - A086015 ((n ^ 2) ^ 2)

end

end A311514.P3902192179379822764

/-! ## A311514.P2232692990845150899

`xor(A076478((n+1)*(2^n-1)), A312903(n))`
-/

namespace A311514.P2232692990845150899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076478 ((n + 1 : ℤ) * ((2 ^ n : ℤ) - 1)).toNat) (A312903 n)

end

end A311514.P2232692990845150899

/-! ## A311514.P12365299573406292486

`A313576(n)-A001221(A102871(n))`
-/

namespace A311514.P12365299573406292486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313576 n - A001221 (A102871 n).toNat

end

end A311514.P12365299573406292486

/-!
# A311515: Coordination sequence Gal.4.80.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311515, there is no canonical definition to state claims against.
-/

/-! ## A311515.P13717503428570461976

`A311347(n)+A157928(A022188(n))`
-/

namespace A311515.P13717503428570461976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A157928 (A022188 n).toNat

end

end A311515.P13717503428570461976

/-! ## A311515.P2362005994543536116

`A311347(n)+A008683(A204630(n+1))`
-/

namespace A311515.P2362005994543536116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A008683 (A204630 (n + 1)).toNat

end

end A311515.P2362005994543536116

/-! ## A311515.P10468979708104738322

`A311503(n)+A307598(A223227(n+1))`
-/

namespace A311515.P10468979708104738322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311503 n + A307598 (A223227 (n + 1)).toNat

end

end A311515.P10468979708104738322

/-! ## A311515.P13915236482847803361

`A311540(n)-A086079(A000108(n))`
-/

namespace A311515.P13915236482847803361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311540 n - A086079 (A000108 n).toNat

end

end A311515.P13915236482847803361

/-! ## A311515.P13167593772766682259

`round(log(A272678(2*n+1)))`
-/

namespace A311515.P13167593772766682259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A272678 (2 * n + 1) : ℝ))

end

end A311515.P13167593772766682259

/-!
# A311516: Coordination sequence Gal.6.179.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311516, there is no canonical definition to state claims against.
-/

/-! ## A311516.P693262129589885769

`record[A311517(A163351(n))]`
-/

namespace A311516.P693262129589885769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311516.P693262129589885769

/-! ## A311516.P4254362738114343163

`A311517(n*A249699(n)!)`
-/

namespace A311516.P4254362738114343163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 (n * Nat.factorial (A249699 n).toNat)

end

end A311516.P4254362738114343163

/-! ## A311516.P12068460748299795614

`A311517(n/A249699(n)!)`
-/

namespace A311516.P12068460748299795614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.factorial (A249699 n).toNat : ℚ))).toNat

end

end A311516.P12068460748299795614

/-! ## A311516.P3895667554405482540

`A311517(n^A249699(n)!)`
-/

namespace A311516.P3895667554405482540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 (n ^ Nat.factorial (A249699 n).toNat)

end

end A311516.P3895667554405482540

/-! ## A311516.P976997018042008748

`A311517(lcm(n, A249699(n)!))`
-/

namespace A311516.P976997018042008748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 (Nat.lcm n (Nat.factorial (A249699 n).toNat))

end

end A311516.P976997018042008748

/-!
# A311518: Coordination sequence Gal.6.188.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311518, there is no canonical definition to state claims against.
-/

/-! ## A311518.P18319539373982743702

`A311519(n)^Δ[A055647(n)]`
-/

namespace A311518.P18319539373982743702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311519 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A311518.P18319539373982743702

/-! ## A311518.P15759668252918834453

`A311519(n*Δ[A055647(n)]²)`
-/

namespace A311518.P15759668252918834453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311519 ((n : ℤ) * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A311518.P15759668252918834453

/-! ## A311518.P2065567366836161150

`A311519(n)%A225702(2*n+3)`
-/

namespace A311518.P2065567366836161150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311519 n) (A225702 (2 * n + 3))

end

end A311518.P2065567366836161150

/-! ## A311518.P17903296473804882310

`A311519(n)+A000007(A056040(n))`
-/

namespace A311518.P17903296473804882310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311519 n + A000007 (A056040 n).toNat

end

end A311518.P17903296473804882310

/-! ## A311518.P10987620244415939374

`A311519(n)+A010893(A311524(n))`
-/

namespace A311518.P10987620244415939374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311519 n + A010893 ((A311524 n).toNat + 13)

end

end A311518.P10987620244415939374

/-!
# A311520: Coordination sequence Gal.5.126.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311520, there is no canonical definition to state claims against.
-/

/-! ## A311520.P10559561642214164778

`record[A311521(n)-A036633(n)]`
-/

namespace A311520.P10559561642214164778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311521 n - A036633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311520.P10559561642214164778

/-! ## A311520.P6796791575984676239

`A008586(n)+A000120(A354001(n))`
-/

namespace A311520.P6796791575984676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000120 (A354001 n).toNat

end

end A311520.P6796791575984676239

/-! ## A311520.P13828163171486444973

`A311516(n)+A133607(A309862(n))`
-/

namespace A311520.P13828163171486444973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311516 n + A133607 (A309862 n).toNat

end

end A311520.P13828163171486444973

/-! ## A311520.P5731510668454253004

`A311507(n)+A290694(A290995(n))`
-/

namespace A311520.P5731510668454253004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311507 n + A290694 (A290995 n).toNat

end

end A311520.P5731510668454253004

/-!
# A311521: Coordination sequence Gal.4.49.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311521, there is no canonical definition to state claims against.
-/

/-! ## A311521.P7515308705382307339

`(A311591(n)+A311354(n))/2`
-/

namespace A311521.P7515308705382307339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311591 n + A311354 n : ℚ) / 2

end

end A311521.P7515308705382307339

/-! ## A311521.P2470617576010085470

`A004525(A311591(n)+A311354(n))`
-/

namespace A311521.P2470617576010085470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311591 n + A311354 n).toNat

end

end A311521.P2470617576010085470

/-! ## A311521.P3876693913327848592

`A004526(A311591(n)+A311354(n))`
-/

namespace A311521.P3876693913327848592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311591 n + A311354 n).toNat

end

end A311521.P3876693913327848592

/-! ## A311521.P5113879008786944644

`A026741(A311591(n)+A311354(n))`
-/

namespace A311521.P5113879008786944644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311591 n + A311354 n).toNat

end

end A311521.P5113879008786944644

/-! ## A311521.P8822067812041642304

`A078898(A311591(n)+A311354(n))`
-/

namespace A311521.P8822067812041642304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A311591 n + A311354 n).toNat

end

end A311521.P8822067812041642304

/-! ## A311521.P1649683444230303657

`A052938(A311591(n)+A311354(n))-1`
-/

namespace A311521.P1649683444230303657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A311591 n + A311354 n).toNat - 1

end

end A311521.P1649683444230303657

/-! ## A311521.P6909128773717469751

`A152832(A311591(n)+A311354(n))+2`
-/

namespace A311521.P6909128773717469751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (A311591 n + A311354 n).toNat + 2

end

end A311521.P6909128773717469751

/-! ## A311521.P2785529809158426813

`A152833(A311591(n)+A311354(n))+3`
-/

namespace A311521.P2785529809158426813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152833 (A311591 n + A311354 n).toNat + 3

end

end A311521.P2785529809158426813

/-! ## A311521.P3012869981872353898

`A052938(A311354(n)-(2-A311591(n)))`
-/

namespace A311521.P3012869981872353898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A311354 n - (2 - A311591 n)).toNat

end

end A311521.P3012869981872353898

/-!
# A311522: Coordination sequence Gal.4.45.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311522, there is no canonical definition to state claims against.
-/

/-! ## A311522.P6120810521348154901

`A311523(n)-A055641(A037223(n))`
-/

namespace A311522.P6120810521348154901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n - A055641 (A037223 n).toNat

end

end A311522.P6120810521348154901

/-! ## A311522.P7320009458572447734

`A311523(n)-A103675(A156803(n+1))`
-/

namespace A311522.P7320009458572447734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n - A103675 (A156803 (n + 1)).toNat

end

end A311522.P7320009458572447734

/-! ## A311522.P4627032777516895217

`A311523(n)-A055641(A331930(n+1))`
-/

namespace A311522.P4627032777516895217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n - A055641 (A331930 (n + 1)).toNat

end

end A311522.P4627032777516895217

/-! ## A311522.P1071695760356236749

`A106744(A313115(n)+A082870(n))`
-/

namespace A311522.P1071695760356236749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313115 n + A082870 n).toNat

end

end A311522.P1071695760356236749

/-!
# A311523: Coordination sequence Gal.6.119.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311523, the canonical program `A311523.P10353843342915218177` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311523 has offset 0).

The definition of A311523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311523.P5821039364367462549

`A311994(n)-Δ[A011864(n)]`
-/

namespace A311523.P5821039364367462549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n - (f1 (n + 1) - f1 n)

end

end A311523.P5821039364367462549

namespace A311523

/-- `A311994(n)-Δ[A011864(n)]` -/
def P5821039364367462549.Spec : Prop :=
  ∀ n, P5821039364367462549.a n = A311523 n

end A311523

/-! ## A311523.P12879516826926276283

`(A311626(n)+A008574(n))/2`
-/

namespace A311523.P12879516826926276283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311626 n + A008574 n : ℚ) / 2

end

end A311523.P12879516826926276283

namespace A311523

/-- `(A311626(n)+A008574(n))/2` -/
def P12879516826926276283.Spec : Prop :=
  ∀ n, P12879516826926276283.a n = (A311523 n : ℚ)

end A311523

/-! ## A311523.P172863247811347803

`A008574(n)+A001281(A311626(n)-A008574(n))`
-/

namespace A311523.P172863247811347803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A311626 n - A008574 n).toNat

end

end A311523.P172863247811347803

namespace A311523

/-- `A008574(n)+A001281(A311626(n)-A008574(n))` -/
def P172863247811347803.Spec : Prop :=
  ∀ n, P172863247811347803.a n = A311523 n

end A311523

/-! ## A311523.P1474336132077600564

`A008574(n)+A004525(A311626(n)-A008574(n))`
-/

namespace A311523.P1474336132077600564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A311626 n - A008574 n).toNat

end

end A311523.P1474336132077600564

namespace A311523

/-- `A008574(n)+A004525(A311626(n)-A008574(n))` -/
def P1474336132077600564.Spec : Prop :=
  ∀ n, P1474336132077600564.a n = A311523 n

end A311523

/-! ## A311523.P4488779525155847792

`A311626(n)-A004526(A311626(n)-A008574(n))`
-/

namespace A311523.P4488779525155847792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311626 n - A004526 (A311626 n - A008574 n).toNat

end

end A311523.P4488779525155847792

namespace A311523

/-- `A311626(n)-A004526(A311626(n)-A008574(n))` -/
def P4488779525155847792.Spec : Prop :=
  ∀ n, P4488779525155847792.a n = A311523 n

end A311523

/-! ## A311523.P11412822442175137788

`A312151(n)-A004525(A312151(n)-A008574(n))`
-/

namespace A311523.P11412822442175137788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312151 n - A004525 (A312151 n - A008574 n).toNat

end

end A311523.P11412822442175137788

namespace A311523

/-- `A312151(n)-A004525(A312151(n)-A008574(n))` -/
def P11412822442175137788.Spec : Prop :=
  ∀ n, P11412822442175137788.a n = A311523 n

end A311523

/-! ## A311523.P10353843342915218177

`abs(A008592(n)-A315743(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A311523

/-- `abs(A008592(n)-A315743(n))` -/
def P10353843342915218177.Spec : Prop :=
  ∀ n, P10353843342915218177.a n = A311523 n

theorem P10353843342915218177.correct : P10353843342915218177.Spec := by
  intro n
  simp only [A311523]

end A311523

/-! ## A311523.P16332911374111128637

`2*A008706(n)-A315743(n)`
-/

namespace A311523.P16332911374111128637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315743 n

end

end A311523.P16332911374111128637

namespace A311523

/-- `2*A008706(n)-A315743(n)` -/
def P16332911374111128637.Spec : Prop :=
  ∀ n, P16332911374111128637.a n = A311523 n

end A311523

/-! ## A311523.P15604987299294174703

`A008458(n)+A008574(n)-A315743(n)`
-/

namespace A311523.P15604987299294174703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315743 n)

end

end A311523.P15604987299294174703

namespace A311523

/-- `A008458(n)+A008574(n)-A315743(n)` -/
def P15604987299294174703.Spec : Prop :=
  ∀ n, P15604987299294174703.a n = A311523 n

end A311523

/-! ## A311523.P8639513670640126267

`A315743(n)-A005843(A315743(n)-A008706(n))`
-/

namespace A311523.P8639513670640126267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315743 n - A005843 (A315743 n - A008706 n).toNat

end

end A311523.P8639513670640126267

namespace A311523

/-- `A315743(n)-A005843(A315743(n)-A008706(n))` -/
def P8639513670640126267.Spec : Prop :=
  ∀ n, P8639513670640126267.a n = A311523 n

end A311523

/-! ## A311523.P17296958208221560617

`A004526(A311626(n))+A004277(n)`
-/

namespace A311523.P17296958208221560617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311626 n).toNat + A004277 n

end

end A311523.P17296958208221560617

namespace A311523

/-- `A004526(A311626(n))+A004277(n)` -/
def P17296958208221560617.Spec : Prop :=
  ∀ n, P17296958208221560617.a n = A311523 n

end A311523

/-! ## A311523.P3278155295132322791

`A005843(n)+A004525(A311626(n))`
-/

namespace A311523.P3278155295132322791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A311626 n).toNat

end

end A311523.P3278155295132322791

namespace A311523

/-- `A005843(n)+A004525(A311626(n))` -/
def P3278155295132322791.Spec : Prop :=
  ∀ n, P3278155295132322791.a n = A311523 n

end A311523

/-! ## A311523.P17299297259712890654

`A008619(A311626(n))+A004273(n)`
-/

namespace A311523.P17299297259712890654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311626 n).toNat + A004273 n

end

end A311523.P17299297259712890654

namespace A311523

/-- `A008619(A311626(n))+A004273(n)` -/
def P17299297259712890654.Spec : Prop :=
  ∀ n, P17299297259712890654.a n = A311523 n

end A311523

/-! ## A311523.P6304435346076556723

`round(A008576(A313124(n))/3)`
-/

namespace A311523.P6304435346076556723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A313124 n).toNat : ℚ) / 3)

end

end A311523.P6304435346076556723

namespace A311523

/-- `round(A008576(A313124(n))/3)` -/
def P6304435346076556723.Spec : Prop :=
  ∀ n, P6304435346076556723.a n = A311523 n

end A311523

/-! ## A311523.P1811665782216632897

`A005843(A008706(n))-A315743(n)`
-/

namespace A311523.P1811665782216632897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315743 n

end

end A311523.P1811665782216632897

namespace A311523

/-- `A005843(A008706(n))-A315743(n)` -/
def P1811665782216632897.Spec : Prop :=
  ∀ n, P1811665782216632897.a n = A311523 n

end A311523

/-! ## A311523.P9478360568347255655

`A005843(A008458(n)-n)-A315743(n)`
-/

namespace A311523.P9478360568347255655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315743 n

end

end A311523.P9478360568347255655

namespace A311523

/-- `A005843(A008458(n)-n)-A315743(n)` -/
def P9478360568347255655.Spec : Prop :=
  ∀ n, P9478360568347255655.a n = A311523 n

end A311523

/-! ## A311523.P11202702925747479912

`A008458(n)+n-A004526(A315728(n))`
-/

namespace A311523.P11202702925747479912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315728 n).toNat)

end

end A311523.P11202702925747479912

namespace A311523

/-- `A008458(n)+n-A004526(A315728(n))` -/
def P11202702925747479912.Spec : Prop :=
  ∀ n, P11202702925747479912.a n = A311523 n

end A311523

/-! ## A311523.P12782531337436603123

`A004525(A311626(n)+A008574(n))`
-/

namespace A311523.P12782531337436603123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311626 n + A008574 n).toNat

end

end A311523.P12782531337436603123

namespace A311523

/-- `A004525(A311626(n)+A008574(n))` -/
def P12782531337436603123.Spec : Prop :=
  ∀ n, P12782531337436603123.a n = A311523 n

end A311523

/-! ## A311523.P11032309137836289841

`A001281(A311626(n)+A008574(n))`
-/

namespace A311523.P11032309137836289841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311626 n + A008574 n).toNat

end

end A311523.P11032309137836289841

namespace A311523

/-- `A001281(A311626(n)+A008574(n))` -/
def P11032309137836289841.Spec : Prop :=
  ∀ n, P11032309137836289841.a n = A311523 n

end A311523

/-! ## A311523.P705774170893674646

`A004526(A311626(n)+A008574(n))`
-/

namespace A311523.P705774170893674646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311626 n + A008574 n).toNat

end

end A311523.P705774170893674646

namespace A311523

/-- `A004526(A311626(n)+A008574(n))` -/
def P705774170893674646.Spec : Prop :=
  ∀ n, P705774170893674646.a n = A311523 n

end A311523

/-!
# A311524: Coordination sequence Gal.5.79.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311524, there is no canonical definition to state claims against.
-/

/-! ## A311524.P13170346726056250521

`A311525(n)-A112765(A140228(n))`
-/

namespace A311524.P13170346726056250521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 n - A112765 (A140228 n).toNat

end

end A311524.P13170346726056250521

/-! ## A311524.P3570514563460274680

`A311525(n)-A178798(A168289(n))`
-/

namespace A311524.P3570514563460274680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 n - A178798 (A168289 n).toNat

end

end A311524.P3570514563460274680

/-! ## A311524.P2064090518359358961

`A311525(n)+A178798(A168289(n)+2)`
-/

namespace A311524.P2064090518359358961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 n + A178798 (A168289 n + 2).toNat

end

end A311524.P2064090518359358961

/-! ## A311524.P3379776740789098040

`A311525(n)-A185284(A224773(n+1))`
-/

namespace A311524.P3379776740789098040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 n - A185284 (A224773 (n + 1)).toNat

end

end A311524.P3379776740789098040

/-! ## A311524.P395655201683007340

`A311525(n)-A178798(A298547(n+1))`
-/

namespace A311524.P395655201683007340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 n - A178798 (A298547 (n + 1)).toNat

end

end A311524.P395655201683007340

/-!
# A311526: Coordination sequence Gal.6.438.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311526, there is no canonical definition to state claims against.
-/

/-! ## A311526.P432043554425168118

`xor(A307597(A115098(n)), A311207(n))`
-/

namespace A311526.P432043554425168118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307597 (A115098 n).toNat) (A311207 n)

end

end A311526.P432043554425168118

/-! ## A311526.P10153042150048298142

`or(A008574(n), A060502(A320527(n+1)))`
-/

namespace A311526.P10153042150048298142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A060502 (A320527 (n + 1)).toNat)

end

end A311526.P10153042150048298142

/-! ## A311526.P18085016104645243261

`lt[A221913(n+5), A207703(n+1)]-3`
-/

namespace A311526.P18085016104645243261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221913 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 3

end

end A311526.P18085016104645243261

/-! ## A311526.P16338935083517659531

`eq[A195825(A017885(n)), A219649(n)]`
-/

namespace A311526.P16338935083517659531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (A017885 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311526.P16338935083517659531

/-! ## A311526.P8632339570364417989

`A373811(∪[A090562(n+1), A020518(n)])`
-/

namespace A311526.P8632339570364417989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020518 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A311526.P8632339570364417989

/-!
# A311527: Coordination sequence Gal.6.185.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311527, there is no canonical definition to state claims against.
-/

/-! ## A311527.P13293765578794057910

`A311528(n)-A326016(A187829(n+1))`
-/

namespace A311527.P13293765578794057910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 n - A326016 (A187829 (n + 1)).toNat

end

end A311527.P13293765578794057910

/-! ## A311527.P9058995602205808841

`A311528(A089840(∑[n]))`
-/

namespace A311527.P9058995602205808841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311527.P9058995602205808841

/-! ## A311527.P10897289479687818228

`A311528(A122203(∑[n]))`
-/

namespace A311527.P10897289479687818228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311527.P10897289479687818228

/-! ## A311527.P5576105163836822824

`A311528(A187829(n+2)-2)`
-/

namespace A311527.P5576105163836822824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 (A187829 (n + 2) - 2).toNat

end

end A311527.P5576105163836822824

/-! ## A311527.P14827430346020856774

`A311528(n)+A010059(A000079(n))`
-/

namespace A311527.P14827430346020856774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 n + A010059 (A000079 n).toNat

end

end A311527.P14827430346020856774

/-!
# A311528: Coordination sequence Gal.6.169.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311528, there is no canonical definition to state claims against.
-/

/-! ## A311528.P14020072118493748945

`A326016(A187829(n+1))+A311527(n)`
-/

namespace A311528.P14020072118493748945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A187829 (n + 1)).toNat + A311527 n

end

end A311528.P14020072118493748945

/-! ## A311528.P13790570852848251321

`A316867(A089455(n+1)²)+A311527(n)`
-/

namespace A311528.P13790570852848251321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A089455 (n + 1) ^ 2).toNat + A311527 n

end

end A311528.P13790570852848251321

/-!
# A311529: Coordination sequence Gal.5.180.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311529, there is no canonical definition to state claims against.
-/

/-! ## A311529.P11599938209182902282

`A313110(n)-A001221(A148458(n))`
-/

namespace A311529.P11599938209182902282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n - A001221 (A148458 n).toNat

end

end A311529.P11599938209182902282

/-! ## A311529.P15624859082410887812

`A311431(n)+A001221(A076843(n+1))`
-/

namespace A311529.P15624859082410887812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 n + A001221 (A076843 (n + 1)).toNat

end

end A311529.P15624859082410887812

/-! ## A311529.P18209609909147759537

`A311447(n)+A225099(n²)`
-/

namespace A311529.P18209609909147759537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311447 n + A225099 (n ^ 2)

end

end A311529.P18209609909147759537

/-! ## A311529.P4843779177387454554

`A311512(n)+A120325(A343305(3*(n+1)))`
-/

namespace A311529.P4843779177387454554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A120325 (A343305 (3 * (n + 1))).toNat

end

end A311529.P4843779177387454554

/-!
# A311530: Coordination sequence Gal.6.186.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311530, there is no canonical definition to state claims against.
-/

/-! ## A311530.P1848968923669206973

`A311531(n)-A076489(A014375(n))`
-/

namespace A311530.P1848968923669206973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 n - A076489 (A014375 n).toNat

end

end A311530.P1848968923669206973

/-! ## A311530.P3295246809159127430

`A311531(n-A098490(A014375(n)))`
-/

namespace A311530.P3295246809159127430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 ((n : ℤ) - A098490 (A014375 n).toNat).toNat

end

end A311530.P3295246809159127430

/-! ## A311530.P16162150492040083804

`A311531(n)-A185284(A036815(n+1))`
-/

namespace A311530.P16162150492040083804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 n - A185284 (A036815 (n + 1)).toNat

end

end A311530.P16162150492040083804

/-! ## A311530.P12915773252811203158

`A311531(A187829(n+1)-A098744(n))`
-/

namespace A311530.P12915773252811203158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 (A187829 (n + 1) - A098744 n).toNat

end

end A311530.P12915773252811203158

/-! ## A311530.P1241662188706910606

`A311531(A187829(n+2)-2)`
-/

namespace A311530.P1241662188706910606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 (A187829 (n + 2) - 2).toNat

end

end A311530.P1241662188706910606

/-!
# A311531: Coordination sequence Gal.6.170.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311531, there is no canonical definition to state claims against.
-/

/-! ## A311531.P14100702209453734943

`A311530(n)+A076489(A014375(n))`
-/

namespace A311531.P14100702209453734943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311530 n + A076489 (A014375 n).toNat

end

end A311531.P14100702209453734943

/-! ## A311531.P6932287469952834258

`A311530(n)+A185284(A036815(n+1))`
-/

namespace A311531.P6932287469952834258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311530 n + A185284 (A036815 (n + 1)).toNat

end

end A311531.P6932287469952834258

/-! ## A311531.P14135875039834026220

`A311530(n)+A292149(A187829(n+1))`
-/

namespace A311531.P14135875039834026220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311530 n + A292149 (A187829 (n + 1)).toNat

end

end A311531.P14135875039834026220

/-! ## A311531.P16551074279346202317

`A311530(n)+A098490(A014375(n))-A185284(n)`
-/

namespace A311531.P16551074279346202317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311530 n + A098490 (A014375 n).toNat - A185284 n

end

end A311531.P16551074279346202317

/-!
# A311532: Coordination sequence Gal.6.397.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311532, there is no canonical definition to state claims against.
-/

/-! ## A311532.P3347520829904298119

`A311305(n)-A057428(A165653(n))`
-/

namespace A311532.P3347520829904298119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311305 n - A057428 (A165653 n).toNat

end

end A311532.P3347520829904298119

/-! ## A311532.P7057520488098331992

`A311482(n)+A037913(A317546(n+1))`
-/

namespace A311532.P7057520488098331992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311482 n + A037913 (A317546 (n + 1)).toNat

end

end A311532.P7057520488098331992

/-! ## A311532.P1557580145853466788

`char[5]+A311535(n)-A037913(A006131(n))`
-/

namespace A311532.P1557580145853466788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311535 n - A037913 (A006131 n).toNat)

end

end A311532.P1557580145853466788

/-! ## A311532.P5467660894636850984

`char[5]+A311484(n)-A102683(A146669(n+1))`
-/

namespace A311532.P5467660894636850984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311484 n - A102683 (A146669 (n + 1)).toNat)

end

end A311532.P5467660894636850984

/-! ## A311532.P12304101829669129904

`A005245(A047087(n+1))+n`
-/

namespace A311532.P12304101829669129904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A047087 (n + 1)).toNat + (n : ℤ)

end

end A311532.P12304101829669129904

/-!
# A311533: Coordination sequence Gal.4.51.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311533, there is no canonical definition to state claims against.
-/

/-! ## A311533.P15803529449981600666

`record[A000096(n+1)-A109537(n+3)]`
-/

namespace A311533.P15803529449981600666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) - A109537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311533.P15803529449981600666

/-! ## A311533.P13540619434875863864

`A311327(n)+A232991(A089427(n))`
-/

namespace A311533.P13540619434875863864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A232991 (A089427 n).toNat

end

end A311533.P13540619434875863864

/-! ## A311533.P14588197838396274783

`A312150(n)-A001221(A048855(n))`
-/

namespace A311533.P14588197838396274783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A001221 (A048855 n).toNat

end

end A311533.P14588197838396274783

/-! ## A311533.P3653865518258106701

`A311535(n)-A010894(A321566(n))`
-/

namespace A311533.P3653865518258106701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A010894 ((A321566 n).toNat + 21)

end

end A311533.P3653865518258106701

/-! ## A311533.P181783301816968271

`A160755(A314164(n))-n`
-/

namespace A311533.P181783301816968271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314164 n).toNat - (n : ℤ)

end

end A311533.P181783301816968271

/-!
# A311534: Coordination sequence Gal.4.47.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311534, there is no canonical definition to state claims against.
-/

/-! ## A311534.P4070703372283032571

`A312160(n)-A001221(A025527(n+1))`
-/

namespace A311534.P4070703372283032571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - A001221 (A025527 (n + 1)).toNat

end

end A311534.P4070703372283032571

/-! ## A311534.P18352405423844928395

`A312160(n)-A001221(A056612(n+1))`
-/

namespace A311534.P18352405423844928395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - A001221 (A056612 (n + 1)).toNat

end

end A311534.P18352405423844928395

/-! ## A311534.P1164161133909131293

`A311535(n)-A185284(A297832(n))`
-/

namespace A311534.P1164161133909131293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A185284 (A297832 n).toNat

end

end A311534.P1164161133909131293

/-! ## A311534.P17975303134850046968

`∑[A280055(A280089(n+3)+1)]`
-/

namespace A311534.P17975303134850046968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280055 (A280089 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311534.P17975303134850046968

/-! ## A311534.P13501433289957050372

`A311535(n)-A001222(A309863(n))`
-/

namespace A311534.P13501433289957050372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A001222 (A309863 n).toNat

end

end A311534.P13501433289957050372

/-!
# A311535: Coordination sequence Gal.5.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311535, the canonical program `A311535.P8801384173833754129` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311535 has offset 0).

The definition of A311535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311535.P8801384173833754129

`A151988(n)+A311440(n)-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311535

/-- `A151988(n)+A311440(n)-n` -/
def P8801384173833754129.Spec : Prop :=
  ∀ n, P8801384173833754129.a n = A311535 n

theorem P8801384173833754129.correct : P8801384173833754129.Spec := by
  intro n
  simp only [A311535]

end A311535

/-! ## A311535.P510250061211219364

`A314685(n)-A330025(A330025(n)+n)`
-/

namespace A311535.P510250061211219364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A311535.P510250061211219364

namespace A311535

/-- `A314685(n)-A330025(A330025(n)+n)` -/
def P510250061211219364.Spec : Prop :=
  ∀ n, P510250061211219364.a n = A311535 n

end A311535

/-! ## A311535.P11423251476345198064

`A314708(n)-A330025(n)`
-/

namespace A311535.P11423251476345198064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n - A330025 n

end

end A311535.P11423251476345198064

namespace A311535

/-- `A314708(n)-A330025(n)` -/
def P11423251476345198064.Spec : Prop :=
  ∀ n, P11423251476345198064.a n = A311535 n

end A311535

/-! ## A311535.P13445419764671967170

`A313476(n)-A253262(n)`
-/

namespace A311535.P13445419764671967170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A253262 n

end

end A311535.P13445419764671967170

namespace A311535

/-- `A313476(n)-A253262(n)` -/
def P13445419764671967170.Spec : Prop :=
  ∀ n, P13445419764671967170.a n = A311535 n

end A311535

/-! ## A311535.P12281042099820892788

`abs(A008591(n)-A313682(n))`
-/

namespace A311535.P12281042099820892788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313682 n|

end

end A311535.P12281042099820892788

namespace A311535

/-- `abs(A008591(n)-A313682(n))` -/
def P12281042099820892788.Spec : Prop :=
  ∀ n, P12281042099820892788.a n = A311535 n

end A311535

/-! ## A311535.P14233631952470539546

`abs(A008592(n)-(A313682(n)+n))`
-/

namespace A311535.P14233631952470539546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313682 n + (n : ℤ))|

end

end A311535.P14233631952470539546

namespace A311535

/-- `abs(A008592(n)-(A313682(n)+n))` -/
def P14233631952470539546.Spec : Prop :=
  ∀ n, P14233631952470539546.a n = A311535 n

end A311535

/-! ## A311535.P2563728922629953926

`A005843(A008574(n))+n-A313682(n)`
-/

namespace A311535.P2563728922629953926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313682 n)

end

end A311535.P2563728922629953926

namespace A311535

/-- `A005843(A008574(n))+n-A313682(n)` -/
def P2563728922629953926.Spec : Prop :=
  ∀ n, P2563728922629953926.a n = A311535 n

end A311535

/-! ## A311535.P16485587138747413100

`A008458(n)+A008486(n)-A313682(n)`
-/

namespace A311535.P16485587138747413100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313682 n)

end

end A311535.P16485587138747413100

namespace A311535

/-- `A008458(n)+A008486(n)-A313682(n)` -/
def P16485587138747413100.Spec : Prop :=
  ∀ n, P16485587138747413100.a n = A311535 n

end A311535

/-! ## A311535.P413128973730349875

`A312979(n)-A057354(n+1)`
-/

namespace A311535.P413128973730349875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A057354 (n + 1)

end

end A311535.P413128973730349875

namespace A311535

/-- `A312979(n)-A057354(n+1)` -/
def P413128973730349875.Spec : Prop :=
  ∀ n, P413128973730349875.a n = A311535 n

end A311535

/-! ## A311535.P1410659958890099450

`A008574(n)+A315069(n)-A250120(n)`
-/

namespace A311535.P1410659958890099450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315069 n - A250120 n)

end

end A311535.P1410659958890099450

namespace A311535

/-- `A008574(n)+A315069(n)-A250120(n)` -/
def P1410659958890099450.Spec : Prop :=
  ∀ n, P1410659958890099450.a n = A311535 n

end A311535

/-! ## A311535.P11717515419204447506

`(A311634(n)+A008574(n))/2`
-/

namespace A311535.P11717515419204447506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311634 n + A008574 n : ℚ) / 2

end

end A311535.P11717515419204447506

namespace A311535

/-- `(A311634(n)+A008574(n))/2` -/
def P11717515419204447506.Spec : Prop :=
  ∀ n, P11717515419204447506.a n = (A311535 n : ℚ)

end A311535

/-! ## A311535.P9953617889722032068

`A315684(n)-(A253262(n)+n)`
-/

namespace A311535.P9953617889722032068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n - (A253262 n + (n : ℤ))

end

end A311535.P9953617889722032068

namespace A311535

/-- `A315684(n)-(A253262(n)+n)` -/
def P9953617889722032068.Spec : Prop :=
  ∀ n, P9953617889722032068.a n = A311535 n

end A311535

/-! ## A311535.P629074327782785598

`A313801(n)-n`
-/

namespace A311535.P629074327782785598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n - (n : ℤ)

end

end A311535.P629074327782785598

namespace A311535

/-- `A313801(n)-n` -/
def P629074327782785598.Spec : Prop :=
  ∀ n, P629074327782785598.a n = A311535 n

end A311535

/-! ## A311535.P5679957670682411864

`A315489(n)-(A330025(n)+n)`
-/

namespace A311535.P5679957670682411864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315489 n - (A330025 n + (n : ℤ))

end

end A311535.P5679957670682411864

namespace A311535

/-- `A315489(n)-(A330025(n)+n)` -/
def P5679957670682411864.Spec : Prop :=
  ∀ n, P5679957670682411864.a n = A311535 n

end A311535

/-! ## A311535.P15498791648299638997

`A008458(n)+A008574(n)-A315742(n)`
-/

namespace A311535.P15498791648299638997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315742 n)

end

end A311535.P15498791648299638997

namespace A311535

/-- `A008458(n)+A008574(n)-A315742(n)` -/
def P15498791648299638997.Spec : Prop :=
  ∀ n, P15498791648299638997.a n = A311535 n

end A311535

/-! ## A311535.P9665444714694175761

`A313928(n)-A047263(n+1)`
-/

namespace A311535.P9665444714694175761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - A047263 (n + 1)

end

end A311535.P9665444714694175761

namespace A311535

/-- `A313928(n)-A047263(n+1)` -/
def P9665444714694175761.Spec : Prop :=
  ∀ n, P9665444714694175761.a n = A311535 n

end A311535

/-! ## A311535.P14122095827986917779

`A004396(A311552(n)+2*n)`
-/

namespace A311535.P14122095827986917779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311552 n + (2 * n : ℤ)).toNat

end

end A311535.P14122095827986917779

namespace A311535

/-- `A004396(A311552(n)+2*n)` -/
def P14122095827986917779.Spec : Prop :=
  ∀ n, P14122095827986917779.a n = A311535 n

end A311535

/-! ## A311535.P4679492857106781030

`A004396(A311552(n)+n+n)`
-/

namespace A311535.P4679492857106781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311552 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311535.P4679492857106781030

namespace A311535

/-- `A004396(A311552(n)+n+n)` -/
def P4679492857106781030.Spec : Prop :=
  ∀ n, P4679492857106781030.a n = A311535 n

end A311535

/-!
# A311536: Coordination sequence Gal.6.120.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311536, the canonical program `A311536.P3424526079161811311` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311536 has offset 0).

The definition of A311536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311536.P7590779013260882078

`A180004(A311312(n))`
-/

namespace A311536.P7590779013260882078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A311312 n).toNat

end

end A311536.P7590779013260882078

namespace A311536

/-- `A180004(A311312(n))` -/
def P7590779013260882078.Spec : Prop :=
  ∀ n, P7590779013260882078.a n = A311536 n

end A311536

/-! ## A311536.P3424526079161811311

`A314964(n)-A004396(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311536

/-- `A314964(n)-A004396(n)` -/
def P3424526079161811311.Spec : Prop :=
  ∀ n, P3424526079161811311.a n = A311536 n

theorem P3424526079161811311.correct : P3424526079161811311.Spec := by
  intro n
  simp only [A311536]

end A311536

/-! ## A311536.P4418963710941609295

`abs(A008591(n)-A313680(n))`
-/

namespace A311536.P4418963710941609295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313680 n|

end

end A311536.P4418963710941609295

namespace A311536

/-- `abs(A008591(n)-A313680(n))` -/
def P4418963710941609295.Spec : Prop :=
  ∀ n, P4418963710941609295.a n = A311536 n

end A311536

/-! ## A311536.P9950097066548747746

`A313119(n)-∑[A021913(n)]`
-/

namespace A311536.P9950097066548747746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311536.P9950097066548747746

namespace A311536

/-- `A313119(n)-∑[A021913(n)]` -/
def P9950097066548747746.Spec : Prop :=
  ∀ n, P9950097066548747746.a n = A311536 n

end A311536

/-! ## A311536.P1875733862182800012

`A313119(n)-Δ[A011848(n)]`
-/

namespace A311536.P1875733862182800012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n - (f1 (n + 1) - f1 n)

end

end A311536.P1875733862182800012

namespace A311536

/-- `A313119(n)-Δ[A011848(n)]` -/
def P1875733862182800012.Spec : Prop :=
  ∀ n, P1875733862182800012.a n = A311536 n

end A311536

/-! ## A311536.P5678277248448200046

`A312963(n)-A002264(n+1)`
-/

namespace A311536.P5678277248448200046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n - A002264 (n + 1)

end

end A311536.P5678277248448200046

namespace A311536

/-- `A312963(n)-A002264(n+1)` -/
def P5678277248448200046.Spec : Prop :=
  ∀ n, P5678277248448200046.a n = A311536 n

end A311536

/-! ## A311536.P5880808182730497165

`A004396(n)+A312963(n)-n`
-/

namespace A311536.P5880808182730497165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312963 n - (n : ℤ))

end

end A311536.P5880808182730497165

namespace A311536

/-- `A004396(n)+A312963(n)-n` -/
def P5880808182730497165.Spec : Prop :=
  ∀ n, P5880808182730497165.a n = A311536 n

end A311536

/-! ## A311536.P8040788054092957266

`A004525(n)+A313119(n)-n`
-/

namespace A311536.P8040788054092957266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313119 n - (n : ℤ))

end

end A311536.P8040788054092957266

namespace A311536

/-- `A004525(n)+A313119(n)-n` -/
def P8040788054092957266.Spec : Prop :=
  ∀ n, P8040788054092957266.a n = A311536 n

end A311536

/-! ## A311536.P17991148042856215375

`abs(A008592(n)-(A313680(n)+n))`
-/

namespace A311536.P17991148042856215375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313680 n + (n : ℤ))|

end

end A311536.P17991148042856215375

namespace A311536

/-- `abs(A008592(n)-(A313680(n)+n))` -/
def P17991148042856215375.Spec : Prop :=
  ∀ n, P17991148042856215375.a n = A311536 n

end A311536

/-! ## A311536.P7654527404334715714

`Δ[A054925(n)]+A313119(n)-n`
-/

namespace A311536.P7654527404334715714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313119 n - (n : ℤ))

end

end A311536.P7654527404334715714

namespace A311536

/-- `Δ[A054925(n)]+A313119(n)-n` -/
def P7654527404334715714.Spec : Prop :=
  ∀ n, P7654527404334715714.a n = A311536 n

end A311536

/-! ## A311536.P11003831383158752306

`A008576(n)+A312963(n)-A008486(n)`
-/

namespace A311536.P11003831383158752306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A312963 n - A008486 n)

end

end A311536.P11003831383158752306

namespace A311536

/-- `A008576(n)+A312963(n)-A008486(n)` -/
def P11003831383158752306.Spec : Prop :=
  ∀ n, P11003831383158752306.a n = A311536 n

end A311536

/-! ## A311536.P7543029935957888267

`A008458(n)+A008486(n)-A313680(n)`
-/

namespace A311536.P7543029935957888267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313680 n)

end

end A311536.P7543029935957888267

namespace A311536

/-- `A008458(n)+A008486(n)-A313680(n)` -/
def P7543029935957888267.Spec : Prop :=
  ∀ n, P7543029935957888267.a n = A311536 n

end A311536

/-! ## A311536.P14419618707349678785

`A314737(n)-A004396(A004525(n))`
-/

namespace A311536.P14419618707349678785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A004396 (A004525 n).toNat

end

end A311536.P14419618707349678785

namespace A311536

/-- `A314737(n)-A004396(A004525(n))` -/
def P14419618707349678785.Spec : Prop :=
  ∀ n, P14419618707349678785.a n = A311536 n

end A311536

/-! ## A311536.P17879940521911003003

`A313803(n)-n`
-/

namespace A311536.P17879940521911003003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - (n : ℤ)

end

end A311536.P17879940521911003003

namespace A311536

/-- `A313803(n)-n` -/
def P17879940521911003003.Spec : Prop :=
  ∀ n, P17879940521911003003.a n = A311536 n

end A311536

/-! ## A311536.P4033527826655921947

`abs(A008592(n)-A315741(n))`
-/

namespace A311536.P4033527826655921947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315741 n|

end

end A311536.P4033527826655921947

namespace A311536

/-- `abs(A008592(n)-A315741(n))` -/
def P4033527826655921947.Spec : Prop :=
  ∀ n, P4033527826655921947.a n = A311536 n

end A311536

/-! ## A311536.P7674479519324313399

`2*A008706(n)-A315741(n)`
-/

namespace A311536.P7674479519324313399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315741 n

end

end A311536.P7674479519324313399

namespace A311536

/-- `2*A008706(n)-A315741(n)` -/
def P7674479519324313399.Spec : Prop :=
  ∀ n, P7674479519324313399.a n = A311536 n

end A311536

/-! ## A311536.P5197333550969250761

`A008458(n)+A008574(n)-A315741(n)`
-/

namespace A311536.P5197333550969250761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315741 n)

end

end A311536.P5197333550969250761

namespace A311536

/-- `A008458(n)+A008574(n)-A315741(n)` -/
def P5197333550969250761.Spec : Prop :=
  ∀ n, P5197333550969250761.a n = A311536 n

end A311536

/-! ## A311536.P4533318670757356680

`A311549(n)-∑[A021913(A311549(n))]`
-/

namespace A311536.P4533318670757356680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A311549 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311536.P4533318670757356680

namespace A311536

/-- `A311549(n)-∑[A021913(A311549(n))]` -/
def P4533318670757356680.Spec : Prop :=
  ∀ n, P4533318670757356680.a n = A311536 n

end A311536

/-!
# A311537: Coordination sequence Gal.6.378.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311537, there is no canonical definition to state claims against.
-/

/-! ## A311537.P9909799364176056341

`A311538(n)-A178798(A016116(n))`
-/

namespace A311537.P9909799364176056341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311538 n - A178798 (A016116 n).toNat

end

end A311537.P9909799364176056341

/-! ## A311537.P8675421889137538415

`A311538(n)-A144557(A295609(n))`
-/

namespace A311537.P8675421889137538415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311538 n - A144557 (A295609 n).toNat

end

end A311537.P8675421889137538415

/-! ## A311537.P18435333949172745247

`A311538(n)+A178798(A016116(n)+2)`
-/

namespace A311537.P18435333949172745247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311538 n + A178798 (A016116 n + 2).toNat

end

end A311537.P18435333949172745247

/-! ## A311537.P11911664037541614999

`A311538(n)-A185284(A033627(n+1))`
-/

namespace A311537.P11911664037541614999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311538 n - A185284 (A033627 (n + 1)).toNat

end

end A311537.P11911664037541614999

/-! ## A311537.P6993696385164933441

`A311538(n)-A065202(A137531(n))`
-/

namespace A311537.P6993696385164933441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311538 n - A065202 (A137531 n).toNat

end

end A311537.P6993696385164933441

/-!
# A311538: Coordination sequence Gal.6.385.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311538, there is no canonical definition to state claims against.
-/

/-! ## A311538.P16771711333850102105

`A311537(n)+A178798(A016116(n))`
-/

namespace A311538.P16771711333850102105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311537 n + A178798 (A016116 n).toNat

end

end A311538.P16771711333850102105

/-! ## A311538.P262613113415072323

`A311537(n)+A144557(A295609(n))`
-/

namespace A311538.P262613113415072323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311537 n + A144557 (A295609 n).toNat

end

end A311538.P262613113415072323

/-! ## A311538.P3686241573645179325

`A311537(n)+A185284(A033627(n+1))`
-/

namespace A311538.P3686241573645179325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311537 n + A185284 (A033627 (n + 1)).toNat

end

end A311538.P3686241573645179325

/-! ## A311538.P2434708991836094803

`A311537(n)+A065202(A137531(n))`
-/

namespace A311538.P2434708991836094803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311537 n + A065202 (A137531 n).toNat

end

end A311538.P2434708991836094803

/-! ## A311538.P15980714321557292036

`A311537(n)+A185036(A151359(n))`
-/

namespace A311538.P15980714321557292036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311537 n + A185036 (A151359 n).toNat

end

end A311538.P15980714321557292036

/-!
# A311539: Coordination sequence Gal.6.387.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311539, there is no canonical definition to state claims against.
-/

/-! ## A311539.P3120963240016036873

`lt[A308376(n+1), A056806(A235671(n+2))]`
-/

namespace A311539.P3120963240016036873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056806 (A235671 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311539.P3120963240016036873

/-! ## A311539.P10088055229611487440

`round(log2(A279452(n+2)))`
-/

namespace A311539.P10088055229611487440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A279452 (n + 2) : ℝ))

end

end A311539.P10088055229611487440

/-! ## A311539.P227528619772093908

`∑[A356593(n²+n+1)]`
-/

namespace A311539.P227528619772093908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356593 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311539.P227528619772093908

/-! ## A311539.P17585449519915145758

`A328806(A032771(n))`
-/

namespace A311539.P17585449519915145758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A032771 n).toNat

end

end A311539.P17585449519915145758

/-! ## A311539.P16083723478354078714

`∑[A245908(A007689(n))]`
-/

namespace A311539.P16083723478354078714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245908 (A007689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311539.P16083723478354078714

/-!
# A311540: Coordination sequence Gal.6.434.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311540, there is no canonical definition to state claims against.
-/

/-! ## A311540.P7597928701881095608

`A313568(n)-A000120(A003075(n+1))`
-/

namespace A311540.P7597928701881095608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n - A000120 (A003075 (n + 1)).toNat

end

end A311540.P7597928701881095608

/-! ## A311540.P3241876274971318531

`A311289(n)+A001222(A146689(n+1))`
-/

namespace A311540.P3241876274971318531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A001222 (A146689 (n + 1)).toNat

end

end A311540.P3241876274971318531

/-! ## A311540.P10066895351333689715

`A312131(n)+A008683(A211814(n+1))`
-/

namespace A311540.P10066895351333689715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312131 n + A008683 (A211814 (n + 1)).toNat

end

end A311540.P10066895351333689715

/-! ## A311540.P11105360275997202514

`A311517(n)+2*A285957(A017234(n))`
-/

namespace A311540.P11105360275997202514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311517 n + 2 * A285957 (A017234 n).toNat

end

end A311540.P11105360275997202514

/-! ## A311540.P6095931875789027576

`∑[A373953(A376340(n+1))]`
-/

namespace A311540.P6095931875789027576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A376340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311540.P6095931875789027576

/-!
# A311541: Coordination sequence Gal.6.221.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311541, the canonical program `A311541.P18372662611852938891` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311541 has offset 0).

The definition of A311541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311541.P18043866791132395437

`(A311553(n)+A311481(n))/2`
-/

namespace A311541.P18043866791132395437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311553 n + A311481 n : ℚ) / 2

end

end A311541.P18043866791132395437

namespace A311541

/-- `(A311553(n)+A311481(n))/2` -/
def P18043866791132395437.Spec : Prop :=
  ∀ n, P18043866791132395437.a n = (A311541 n : ℚ)

end A311541

/-! ## A311541.P18372662611852938891

`A311481(n)+A001281(A311553(n)-A311481(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311541

/-- `A311481(n)+A001281(A311553(n)-A311481(n))` -/
def P18372662611852938891.Spec : Prop :=
  ∀ n, P18372662611852938891.a n = A311541 n

theorem P18372662611852938891.correct : P18372662611852938891.Spec := by
  intro n
  simp only [A311541]

end A311541

/-! ## A311541.P850690540021581639

`A311331(n)+A004525(A311553(n)-A311331(n))`
-/

namespace A311541.P850690540021581639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A004525 (A311553 n - A311331 n).toNat

end

end A311541.P850690540021581639

namespace A311541

/-- `A311331(n)+A004525(A311553(n)-A311331(n))` -/
def P850690540021581639.Spec : Prop :=
  ∀ n, P850690540021581639.a n = A311541 n

end A311541

/-! ## A311541.P12439124243084593795

`abs(A008592(n)-A315740(n))`
-/

namespace A311541.P12439124243084593795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315740 n|

end

end A311541.P12439124243084593795

namespace A311541

/-- `abs(A008592(n)-A315740(n))` -/
def P12439124243084593795.Spec : Prop :=
  ∀ n, P12439124243084593795.a n = A311541 n

end A311541

/-! ## A311541.P8006959817690462939

`2*A008706(n)-A315740(n)`
-/

namespace A311541.P8006959817690462939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315740 n

end

end A311541.P8006959817690462939

namespace A311541

/-- `2*A008706(n)-A315740(n)` -/
def P8006959817690462939.Spec : Prop :=
  ∀ n, P8006959817690462939.a n = A311541 n

end A311541

/-! ## A311541.P3928952989619720630

`A135042(2*n+1)-A315740(n)`
-/

namespace A311541.P3928952989619720630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315740 n

end

end A311541.P3928952989619720630

namespace A311541

/-- `A135042(2*n+1)-A315740(n)` -/
def P3928952989619720630.Spec : Prop :=
  ∀ n, P3928952989619720630.a n = A311541 n

end A311541

/-! ## A311541.P16783803702526900808

`A184418(A008574(n))-A315740(n)`
-/

namespace A311541.P16783803702526900808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315740 n

end

end A311541.P16783803702526900808

namespace A311541

/-- `A184418(A008574(n))-A315740(n)` -/
def P16783803702526900808.Spec : Prop :=
  ∀ n, P16783803702526900808.a n = A311541 n

end A311541

/-! ## A311541.P3814587724997529694

`A008458(n)+A008574(n)-A315740(n)`
-/

namespace A311541.P3814587724997529694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315740 n)

end

end A311541.P3814587724997529694

namespace A311541

/-- `A008458(n)+A008574(n)-A315740(n)` -/
def P3814587724997529694.Spec : Prop :=
  ∀ n, P3814587724997529694.a n = A311541 n

end A311541

/-! ## A311541.P7908871475387878532

`A315740(n)-A005843(A315740(n)-A008706(n))`
-/

namespace A311541.P7908871475387878532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315740 n - A005843 (A315740 n - A008706 n).toNat

end

end A311541.P7908871475387878532

namespace A311541

/-- `A315740(n)-A005843(A315740(n)-A008706(n))` -/
def P7908871475387878532.Spec : Prop :=
  ∀ n, P7908871475387878532.a n = A311541 n

end A311541

/-! ## A311541.P3071474006319844096

`A005843(A008706(n))-A315740(n)`
-/

namespace A311541.P3071474006319844096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315740 n

end

end A311541.P3071474006319844096

namespace A311541

/-- `A005843(A008706(n))-A315740(n)` -/
def P3071474006319844096.Spec : Prop :=
  ∀ n, P3071474006319844096.a n = A311541 n

end A311541

/-! ## A311541.P16302768317579442800

`A065502(A008458(n))-A315740(n)`
-/

namespace A311541.P16302768317579442800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315740 n

end

end A311541.P16302768317579442800

namespace A311541

/-- `A065502(A008458(n))-A315740(n)` -/
def P16302768317579442800.Spec : Prop :=
  ∀ n, P16302768317579442800.a n = A311541 n

end A311541

/-! ## A311541.P7020406643926802685

`A004525(A311553(n)+A311331(n))`
-/

namespace A311541.P7020406643926802685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311553 n + A311331 n).toNat

end

end A311541.P7020406643926802685

namespace A311541

/-- `A004525(A311553(n)+A311331(n))` -/
def P7020406643926802685.Spec : Prop :=
  ∀ n, P7020406643926802685.a n = A311541 n

end A311541

/-! ## A311541.P6756322337719568484

`A001281(A311553(n)+A311481(n))`
-/

namespace A311541.P6756322337719568484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311553 n + A311481 n).toNat

end

end A311541.P6756322337719568484

namespace A311541

/-- `A001281(A311553(n)+A311481(n))` -/
def P6756322337719568484.Spec : Prop :=
  ∀ n, P6756322337719568484.a n = A311541 n

end A311541

/-! ## A311541.P13130643045726026293

`A233583(A017281(n))-A315740(n)`
-/

namespace A311541.P13130643045726026293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315740 n

end

end A311541.P13130643045726026293

namespace A311541

/-- `A233583(A017281(n))-A315740(n)` -/
def P13130643045726026293.Spec : Prop :=
  ∀ n, P13130643045726026293.a n = A311541 n

end A311541

/-!
# A311542: Coordination sequence Gal.5.155.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311542, there is no canonical definition to state claims against.
-/

/-! ## A311542.P4178942290464911966

`A313631(n)-A001221(A054333(n))`
-/

namespace A311542.P4178942290464911966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313631 n - A001221 (A054333 n).toNat

end

end A311542.P4178942290464911966

/-! ## A311542.P14017293216988427873

`A314912(n)-A001221(A150942(n))`
-/

namespace A311542.P14017293216988427873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n - A001221 (A150942 n).toNat

end

end A311542.P14017293216988427873

/-! ## A311542.P12707034453580574542

`A312958(n)-A157928(A148942(n))`
-/

namespace A311542.P12707034453580574542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312958 n - A157928 (A148942 n).toNat

end

end A311542.P12707034453580574542

/-! ## A311542.P6550750398310880052

`A312958(n)-A157928(A157845(n))`
-/

namespace A311542.P6550750398310880052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312958 n - A157928 (A157845 n).toNat

end

end A311542.P6550750398310880052

/-!
# A311543: Coordination sequence Gal.6.429.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311543, there is no canonical definition to state claims against.
-/

/-! ## A311543.P10686678449109733542

`∑[A331553(∑[A096503(n+3)])]`
-/

namespace A311543.P10686678449109733542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331553 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311543.P10686678449109733542

/-! ## A311543.P18405797580165479882

`A311228(n)+A242830(A026599(n))`
-/

namespace A311543.P18405797580165479882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n + A242830 (A026599 n).toNat

end

end A311543.P18405797580165479882

/-! ## A311543.P5041184068087940643

`record[A311544(n)-A036646(n)]`
-/

namespace A311543.P5041184068087940643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311544 n - A036646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311543.P5041184068087940643

/-! ## A311543.P5710757669735856351

`∑[A334591(A335131(2*(n+1)))]`
-/

namespace A311543.P5710757669735856351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334591 (A335131 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311543.P5710757669735856351

/-! ## A311543.P17394184741729863449

`xor(ceil(n*ϕ^3), A355820(A115081(n)))`
-/

namespace A311543.P17394184741729863449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉ (A355820 (A115081 n).toNat)

end

end A311543.P17394184741729863449

/-!
# A311544: Coordination sequence Gal.5.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311544, there is no canonical definition to state claims against.
-/

/-! ## A311544.P4296826531255194868

`or(A238304(A229794(n+1)), A311461(n))`
-/

namespace A311544.P4296826531255194868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238304 (A229794 (n + 1)).toNat) (A311461 n)

end

end A311544.P4296826531255194868

/-! ## A311544.P18375791252850683407

`A311461(n)+A238304(A229794(n+1))*A238304(n+1)`
-/

namespace A311544.P18375791252850683407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n + A238304 (A229794 (n + 1)).toNat * A238304 (n + 1)

end

end A311544.P18375791252850683407

/-! ## A311544.P14572965050030086092

`or(A243223(A001792(n)), A311344(n))`
-/

namespace A311544.P14572965050030086092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243223 (A001792 n).toNat) (A311344 n)

end

end A311544.P14572965050030086092

/-! ## A311544.P5044331619487215064

`or(A001222(A020132(n)), A311459(n))`
-/

namespace A311544.P5044331619487215064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A020132 n).toNat) (A311459 n)

end

end A311544.P5044331619487215064

/-! ## A311544.P13626649336582851603

`∑[A374992(n)+A172293(2*∑{d}[n+1, #])]`
-/

namespace A311544.P13626649336582851603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 n + A172293 (2 * (∑ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311544.P13626649336582851603

/-!
# A311545: Coordination sequence Gal.3.27.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311545, there is no canonical definition to state claims against.
-/

/-! ## A311545.P10157618241305550083

`A120738(n)+A000120(A007716(n))`
-/

namespace A311545.P10157618241305550083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + A000120 (A007716 n).toNat

end

end A311545.P10157618241305550083

/-! ## A311545.P17170952390736656672

`A310739(n)+A284248(A284250(n))`
-/

namespace A311545.P17170952390736656672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310739 n + A284248 (A284250 n).toNat

end

end A311545.P17170952390736656672

/-! ## A311545.P6817185042816760722

`A005187(2*n)+A000120(A007716(n))`
-/

namespace A311545.P6817185042816760722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n) + A000120 (A007716 n).toNat

end

end A311545.P6817185042816760722

/-! ## A311545.P5592926060567111913

`xor(A311938(n), A324731(A001008(n+1)))`
-/

namespace A311545.P5592926060567111913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311938 n) (A324731 (A001008 (n + 1)).toNat)

end

end A311545.P5592926060567111913

/-! ## A311545.P3563257592090681429

`A302777(A001003(n))+A033948(3*n+1)`
-/

namespace A311545.P3563257592090681429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A001003 n).toNat + A033948 (3 * n + 1)

end

end A311545.P3563257592090681429

/-!
# A311546: Coordination sequence Gal.5.93.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311546, there is no canonical definition to state claims against.
-/

/-! ## A311546.P17382661730992664692

`A314732(n)-A000007(A181153(n))`
-/

namespace A311546.P17382661730992664692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314732 n - A000007 (A181153 n).toNat

end

end A311546.P17382661730992664692

/-! ## A311546.P9954160959709954237

`∑[∑{e}[A002378(A132109(n)), #]]`
-/

namespace A311546.P9954160959709954237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A132109 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311546.P9954160959709954237

/-! ## A311546.P2205503589950007429

`A174905(3*n+1)+A076489(∑[floor(3^(n-1))])`
-/

namespace A311546.P2205503589950007429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (3 * n + 1) + A076489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311546.P2205503589950007429

/-! ## A311546.P7097413488904172195

`A301678(n)-A001221(A000984(n))`
-/

namespace A311546.P7097413488904172195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A001221 (A000984 n).toNat

end

end A311546.P7097413488904172195

/-! ## A311546.P10510327381206932751

`A314719(n)-A057814(A057814(n))`
-/

namespace A311546.P10510327381206932751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314719 n - A057814 (A057814 n).toNat

end

end A311546.P10510327381206932751

/-!
# A311547: Coordination sequence Gal.5.211.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311547, there is no canonical definition to state claims against.
-/

/-! ## A311547.P10547721981313653633

`A311367(n)+A108357(A148653(n))`
-/

namespace A311547.P10547721981313653633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 n + A108357 (A148653 n).toNat

end

end A311547.P10547721981313653633

/-! ## A311547.P9847438186103421503

`A310757(n)+A043545(A294800(n))`
-/

namespace A311547.P9847438186103421503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310757 n + A043545 (A294800 n).toNat

end

end A311547.P9847438186103421503

/-! ## A311547.P9676253146907482198

`A310757(n)+A191904(A148653(n))`
-/

namespace A311547.P9676253146907482198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310757 n + A191904 (A148653 n).toNat

end

end A311547.P9676253146907482198

/-! ## A311547.P11898465738383032669

`A310757(n)+A191904(A096020(n+1))`
-/

namespace A311547.P11898465738383032669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310757 n + A191904 (A096020 (n + 1)).toNat

end

end A311547.P11898465738383032669

/-! ## A311547.P1405690067138539466

`A311366(n)+A011737(A001578(2*n+3))`
-/

namespace A311547.P1405690067138539466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311366 n + A011737 (A001578 (2 * n + 3)).toNat

end

end A311547.P1405690067138539466

/-!
# A311548: Coordination sequence Gal.5.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311548, the canonical program `A311548.P8775752580352239183` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311548 has offset 0).

The definition of A311548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311548.P12171156987986518654

`A312160(n)-Δ[A011862(n)]`
-/

namespace A311548.P12171156987986518654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - (f1 (n + 1) - f1 n)

end

end A311548.P12171156987986518654

namespace A311548

/-- `A312160(n)-Δ[A011862(n)]` -/
def P12171156987986518654.Spec : Prop :=
  ∀ n, P12171156987986518654.a n = A311548 n

end A311548

/-! ## A311548.P14526677858950131395

`A004396(A004396(n))+A312160(n)-A004396(n)`
-/

namespace A311548.P14526677858950131395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A312160 n - A004396 n)

end

end A311548.P14526677858950131395

namespace A311548

/-- `A004396(A004396(n))+A312160(n)-A004396(n)` -/
def P14526677858950131395.Spec : Prop :=
  ∀ n, P14526677858950131395.a n = A311548 n

end A311548

/-! ## A311548.P8775752580352239183

`A314971(n)-A004396(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311548

/-- `A314971(n)-A004396(n)` -/
def P8775752580352239183.Spec : Prop :=
  ∀ n, P8775752580352239183.a n = A311548 n

theorem P8775752580352239183.correct : P8775752580352239183.Spec := by
  intro n
  simp only [A311548]

end A311548

/-! ## A311548.P13405588162186677431

`A314971(n)-A002264(2*n+1)`
-/

namespace A311548.P13405588162186677431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A002264 (2 * n + 1)

end

end A311548.P13405588162186677431

namespace A311548

/-- `A314971(n)-A002264(2*n+1)` -/
def P13405588162186677431.Spec : Prop :=
  ∀ n, P13405588162186677431.a n = A311548 n

end A311548

/-! ## A311548.P9640575321064085312

`A312160(n)-A004525(A312683(n)-A312160(n))`
-/

namespace A311548.P9640575321064085312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - A004525 (A312683 n - A312160 n).toNat

end

end A311548.P9640575321064085312

namespace A311548

/-- `A312160(n)-A004525(A312683(n)-A312160(n))` -/
def P9640575321064085312.Spec : Prop :=
  ∀ n, P9640575321064085312.a n = A311548 n

end A311548

/-! ## A311548.P17703445559414252445

`abs(A008592(n)-A315739(n))`
-/

namespace A311548.P17703445559414252445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315739 n|

end

end A311548.P17703445559414252445

namespace A311548

/-- `abs(A008592(n)-A315739(n))` -/
def P17703445559414252445.Spec : Prop :=
  ∀ n, P17703445559414252445.a n = A311548 n

end A311548

/-! ## A311548.P17112361693656135741

`2*A008706(n)-A315739(n)`
-/

namespace A311548.P17112361693656135741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315739 n

end

end A311548.P17112361693656135741

namespace A311548

/-- `2*A008706(n)-A315739(n)` -/
def P17112361693656135741.Spec : Prop :=
  ∀ n, P17112361693656135741.a n = A311548 n

end A311548

/-! ## A311548.P8798051733369782432

`A008458(n)+A008574(n)-A315739(n)`
-/

namespace A311548.P8798051733369782432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315739 n)

end

end A311548.P8798051733369782432

namespace A311548

/-- `A008458(n)+A008574(n)-A315739(n)` -/
def P8798051733369782432.Spec : Prop :=
  ∀ n, P8798051733369782432.a n = A311548 n

end A311548

/-! ## A311548.P12772873697253516344

`A315739(n)-A005843(A315739(n)-A008706(n))`
-/

namespace A311548.P12772873697253516344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315739 n - A005843 (A315739 n - A008706 n).toNat

end

end A311548.P12772873697253516344

namespace A311548

/-- `A315739(n)-A005843(A315739(n)-A008706(n))` -/
def P12772873697253516344.Spec : Prop :=
  ∀ n, P12772873697253516344.a n = A311548 n

end A311548

/-! ## A311548.P16977124283088592720

`A004396(2*n)+A004396(A311633(n))`
-/

namespace A311548.P16977124283088592720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A311633 n).toNat

end

end A311548.P16977124283088592720

namespace A311548

/-- `A004396(2*n)+A004396(A311633(n))` -/
def P16977124283088592720.Spec : Prop :=
  ∀ n, P16977124283088592720.a n = A311548 n

end A311548

/-! ## A311548.P16843953497634056834

`A005843(n)-(A004396(n)-A004396(A311633(n)))`
-/

namespace A311548.P16843953497634056834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A311633 n).toNat)

end

end A311548.P16843953497634056834

namespace A311548

/-- `A005843(n)-(A004396(n)-A004396(A311633(n)))` -/
def P16843953497634056834.Spec : Prop :=
  ∀ n, P16843953497634056834.a n = A311548 n

end A311548

/-! ## A311548.P9570698356261509894

`A005843(A008706(n))-A315739(n)`
-/

namespace A311548.P9570698356261509894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315739 n

end

end A311548.P9570698356261509894

namespace A311548

/-- `A005843(A008706(n))-A315739(n)` -/
def P9570698356261509894.Spec : Prop :=
  ∀ n, P9570698356261509894.a n = A311548 n

end A311548

/-! ## A311548.P15872841336144329825

`A004396(A311633(n)+2*n)`
-/

namespace A311548.P15872841336144329825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311633 n + (2 * n : ℤ)).toNat

end

end A311548.P15872841336144329825

namespace A311548

/-- `A004396(A311633(n)+2*n)` -/
def P15872841336144329825.Spec : Prop :=
  ∀ n, P15872841336144329825.a n = A311548 n

end A311548

/-! ## A311548.P6861385095582969213

`A274616(A311633(n)+2*n)`
-/

namespace A311548.P6861385095582969213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A311633 n + (2 * n : ℤ)).toNat

end

end A311548.P6861385095582969213

namespace A311548

/-- `A274616(A311633(n)+2*n)` -/
def P6861385095582969213.Spec : Prop :=
  ∀ n, P6861385095582969213.a n = A311548 n

end A311548

/-! ## A311548.P11421224624375490138

`A004396(A311633(n)+n+n)`
-/

namespace A311548.P11421224624375490138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311633 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311548.P11421224624375490138

namespace A311548

/-- `A004396(A311633(n)+n+n)` -/
def P11421224624375490138.Spec : Prop :=
  ∀ n, P11421224624375490138.a n = A311548 n

end A311548

/-! ## A311548.P3324278545279513543

`A274616(A311633(n)+n+n)`
-/

namespace A311548.P3324278545279513543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A311633 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311548.P3324278545279513543

namespace A311548

/-- `A274616(A311633(n)+n+n)` -/
def P3324278545279513543.Spec : Prop :=
  ∀ n, P3324278545279513543.a n = A311548 n

end A311548

/-! ## A311548.P12494976916315489969

`A004396(A008486(n)-(n-A311633(n)))`
-/

namespace A311548.P12494976916315489969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n - ((n : ℤ) - A311633 n)).toNat

end

end A311548.P12494976916315489969

namespace A311548

/-- `A004396(A008486(n)-(n-A311633(n)))` -/
def P12494976916315489969.Spec : Prop :=
  ∀ n, P12494976916315489969.a n = A311548 n

end A311548

/-! ## A311548.P2932465535524682513

`A312160(n)-A033183(A004771(n))`
-/

namespace A311548.P2932465535524682513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - A033183 (A004771 n).toNat

end

end A311548.P2932465535524682513

namespace A311548

/-- `A312160(n)-A033183(A004771(n))` -/
def P2932465535524682513.Spec : Prop :=
  ∀ n, P2932465535524682513.a n = A311548 n

end A311548

/-!
# A311549: Coordination sequence Gal.6.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311549, the canonical program `A311549.P16203180800236196570` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311549 has offset 0).

The definition of A311549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311549.P11335029672298979742

`A312963(n)-A004525(n-A004396(n))`
-/

namespace A311549.P11335029672298979742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A311549.P11335029672298979742

namespace A311549

/-- `A312963(n)-A004525(n-A004396(n))` -/
def P11335029672298979742.Spec : Prop :=
  ∀ n, P11335029672298979742.a n = A311549 n

end A311549

/-! ## A311549.P16203180800236196570

`A314742(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311549

/-- `A314742(n)-A004525(A004396(n))` -/
def P16203180800236196570.Spec : Prop :=
  ∀ n, P16203180800236196570.a n = A311549 n

theorem P16203180800236196570.correct : P16203180800236196570.Spec := by
  intro n
  simp only [A311549]

end A311549

/-! ## A311549.P14961290459211487162

`A004525(A004396(n))+A312206(n)-A004396(n)`
-/

namespace A311549.P14961290459211487162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312206 n - A004396 n)

end

end A311549.P14961290459211487162

namespace A311549

/-- `A004525(A004396(n))+A312206(n)-A004396(n)` -/
def P14961290459211487162.Spec : Prop :=
  ∀ n, P14961290459211487162.a n = A311549 n

end A311549

/-! ## A311549.P4487921832978929494

`A313129(n)-∑[A021913(n)]`
-/

namespace A311549.P4487921832978929494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311549.P4487921832978929494

namespace A311549

/-- `A313129(n)-∑[A021913(n)]` -/
def P4487921832978929494.Spec : Prop :=
  ∀ n, P4487921832978929494.a n = A311549 n

end A311549

/-! ## A311549.P11688811431800491652

`A313129(n)-Δ[A011848(n)]`
-/

namespace A311549.P11688811431800491652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - (f1 (n + 1) - f1 n)

end

end A311549.P11688811431800491652

namespace A311549

/-- `A313129(n)-Δ[A011848(n)]` -/
def P11688811431800491652.Spec : Prop :=
  ∀ n, P11688811431800491652.a n = A311549 n

end A311549

/-! ## A311549.P9811666372409949581

`A313129(n)-A004524(n+1)`
-/

namespace A311549.P9811666372409949581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - A004524 (n + 1)

end

end A311549.P9811666372409949581

namespace A311549

/-- `A313129(n)-A004524(n+1)` -/
def P9811666372409949581.Spec : Prop :=
  ∀ n, P9811666372409949581.a n = A311549 n

end A311549

/-! ## A311549.P5243839587018466824

`A313129(n)-A002265(A003485(n))`
-/

namespace A311549.P5243839587018466824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - A002265 (A003485 n).toNat

end

end A311549.P5243839587018466824

namespace A311549

/-- `A313129(n)-A002265(A003485(n))` -/
def P5243839587018466824.Spec : Prop :=
  ∀ n, P5243839587018466824.a n = A311549 n

end A311549

/-! ## A311549.P2313866790450264679

`abs(A008592(n)-A315738(n))`
-/

namespace A311549.P2313866790450264679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315738 n|

end

end A311549.P2313866790450264679

namespace A311549

/-- `abs(A008592(n)-A315738(n))` -/
def P2313866790450264679.Spec : Prop :=
  ∀ n, P2313866790450264679.a n = A311549 n

end A311549

/-! ## A311549.P4697748100335374690

`A008458(n)+A008574(n)-A315738(n)`
-/

namespace A311549.P4697748100335374690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315738 n)

end

end A311549.P4697748100335374690

namespace A311549

/-- `A008458(n)+A008574(n)-A315738(n)` -/
def P4697748100335374690.Spec : Prop :=
  ∀ n, P4697748100335374690.a n = A311549 n

end A311549

/-! ## A311549.P2662780363405607613

`A314974(n)-A004396(n)`
-/

namespace A311549.P2662780363405607613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n - A004396 n

end

end A311549.P2662780363405607613

namespace A311549

/-- `A314974(n)-A004396(n)` -/
def P2662780363405607613.Spec : Prop :=
  ∀ n, P2662780363405607613.a n = A311549 n

end A311549

/-! ## A311549.P3834630909872499189

`A314974(n)-A002264(2*n+1)`
-/

namespace A311549.P3834630909872499189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n - A002264 (2 * n + 1)

end

end A311549.P3834630909872499189

namespace A311549

/-- `A314974(n)-A002264(2*n+1)` -/
def P3834630909872499189.Spec : Prop :=
  ∀ n, P3834630909872499189.a n = A311549 n

end A311549

/-! ## A311549.P3461262995987801733

`A004773(A311536(n))-A004773(n)`
-/

namespace A311549.P3461262995987801733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A311536 n).toNat - A004773 n

end

end A311549.P3461262995987801733

namespace A311549

/-- `A004773(A311536(n))-A004773(n)` -/
def P3461262995987801733.Spec : Prop :=
  ∀ n, P3461262995987801733.a n = A311549 n

end A311549

/-! ## A311549.P16036666482375872011

`(A008576(A311536(n))-A008576(n))/2`
-/

namespace A311549.P16036666482375872011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008576 (A311536 n).toNat - A008576 n : ℚ) / 2

end

end A311549.P16036666482375872011

namespace A311549

/-- `(A008576(A311536(n))-A008576(n))/2` -/
def P16036666482375872011.Spec : Prop :=
  ∀ n, P16036666482375872011.a n = (A311549 n : ℚ)

end A311549

/-! ## A311549.P7110011458393960409

`A004396(2*(A311536(n)-n))`
-/

namespace A311549.P7110011458393960409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A311536 n - (n : ℤ))).toNat

end

end A311549.P7110011458393960409

namespace A311549

/-- `A004396(2*(A311536(n)-n))` -/
def P7110011458393960409.Spec : Prop :=
  ∀ n, P7110011458393960409.a n = A311549 n

end A311549

/-! ## A311549.P11908742427039929999

`A004396(A005843(A311536(n)-n))`
-/

namespace A311549.P11908742427039929999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A311536 n - (n : ℤ)).toNat).toNat

end

end A311549.P11908742427039929999

namespace A311549

/-- `A004396(A005843(A311536(n)-n))` -/
def P11908742427039929999.Spec : Prop :=
  ∀ n, P11908742427039929999.a n = A311549 n

end A311549

/-! ## A311549.P189291293868046052

`A004396(2*(A313803(n)-A005843(n)))`
-/

namespace A311549.P189291293868046052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313803 n - A005843 n)).toNat

end

end A311549.P189291293868046052

namespace A311549

/-- `A004396(2*(A313803(n)-A005843(n)))` -/
def P189291293868046052.Spec : Prop :=
  ∀ n, P189291293868046052.a n = A311549 n

end A311549

/-!
# A311550: Coordination sequence Gal.6.180.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311550, there is no canonical definition to state claims against.
-/

/-! ## A311550.P8790148184247154955

`A311496(n)+A311551(n)-A311497(n)`
-/

namespace A311550.P8790148184247154955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311496 n + (A311551 n - A311497 n)

end

end A311550.P8790148184247154955

/-! ## A311550.P4789648307743443058

`A311496(n)+A311551(n)%(A311497(n)%A352543(n+1))`
-/

namespace A311550.P4789648307743443058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311496 n + Int.tmod (A311551 n) (Int.tmod (A311497 n) (A352543 (n + 1)))

end

end A311550.P4789648307743443058

/-! ## A311550.P12347969538971265412

`A311551(n)-A125005(A118334(n))`
-/

namespace A311550.P12347969538971265412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311551 n - A125005 (A118334 n).toNat

end

end A311550.P12347969538971265412

/-! ## A311550.P3045182218964435944

`record[A311551(A332104(n))]`
-/

namespace A311550.P3045182218964435944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311551 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311550.P3045182218964435944

/-! ## A311550.P6444729482307587751

`∏{e}[A000244(n), A311551(#)]`
-/

namespace A311550.P6444729482307587751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311551 (Nat.factorization (f1 n).natAbs p)

end

end A311550.P6444729482307587751

/-!
# A311551: Coordination sequence Gal.6.164.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311551, there is no canonical definition to state claims against.
-/

/-! ## A311551.P10184012102366013004

`A311550(n)+A125005(A118334(n))`
-/

namespace A311551.P10184012102366013004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311550 n + A125005 (A118334 n).toNat

end

end A311551.P10184012102366013004

/-! ## A311551.P15808469361073650640

`or(A286993(A172212(n+1)), A311550(n))`
-/

namespace A311551.P15808469361073650640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286993 (A172212 (n + 1)).toNat) (A311550 n)

end

end A311551.P15808469361073650640

/-!
# A311552: Coordination sequence Gal.5.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311552, the canonical program `A311552.P8027257067959777641` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311552 has offset 0).

The definition of A311552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311552.P17573421779710897301

`2*A311535(n)-A311440(n)`
-/

namespace A311552.P17573421779710897301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311535 n - A311440 n

end

end A311552.P17573421779710897301

namespace A311552

/-- `2*A311535(n)-A311440(n)` -/
def P17573421779710897301.Spec : Prop :=
  ∀ n, P17573421779710897301.a n = A311552 n

end A311552

/-! ## A311552.P11626915842804646709

`A315691(n)-(A253262(n)+n)`
-/

namespace A311552.P11626915842804646709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - (A253262 n + (n : ℤ))

end

end A311552.P11626915842804646709

namespace A311552

/-- `A315691(n)-(A253262(n)+n)` -/
def P11626915842804646709.Spec : Prop :=
  ∀ n, P11626915842804646709.a n = A311552 n

end A311552

/-! ## A311552.P7501127260503986850

`A312948(n)-A330025(n-A330025(n))`
-/

namespace A311552.P7501127260503986850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A311552.P7501127260503986850

namespace A311552

/-- `A312948(n)-A330025(n-A330025(n))` -/
def P7501127260503986850.Spec : Prop :=
  ∀ n, P7501127260503986850.a n = A311552 n

end A311552

/-! ## A311552.P8027257067959777641

`abs(A008591(n)-A312077(n))-A253262(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311552

/-- `abs(A008591(n)-A312077(n))-A253262(n)` -/
def P8027257067959777641.Spec : Prop :=
  ∀ n, P8027257067959777641.a n = A311552 n

theorem P8027257067959777641.correct : P8027257067959777641.Spec := by
  intro n
  simp only [A311552]

end A311552

/-! ## A311552.P3605504686004472253

`A008458(n)-(A004524(A081599(n))+n)-A253262(n)`
-/

namespace A311552.P3605504686004472253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004524 (A081599 n).toNat + (n : ℤ)) - A253262 n

end

end A311552.P3605504686004472253

namespace A311552

/-- `A008458(n)-(A004524(A081599(n))+n)-A253262(n)` -/
def P3605504686004472253.Spec : Prop :=
  ∀ n, P3605504686004472253.a n = A311552 n

end A311552

/-! ## A311552.P14935340819733715418

`A314725(n)-A330025(n)`
-/

namespace A311552.P14935340819733715418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n - A330025 n

end

end A311552.P14935340819733715418

namespace A311552

/-- `A314725(n)-A330025(n)` -/
def P14935340819733715418.Spec : Prop :=
  ∀ n, P14935340819733715418.a n = A311552 n

end A311552

/-! ## A311552.P3034228828133551509

`A313506(n)-A253262(n)`
-/

namespace A311552.P3034228828133551509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n - A253262 n

end

end A311552.P3034228828133551509

namespace A311552

/-- `A313506(n)-A253262(n)` -/
def P3034228828133551509.Spec : Prop :=
  ∀ n, P3034228828133551509.a n = A311552 n

end A311552

/-! ## A311552.P14532787391791702568

`A313692(n)-A008676(A016777(n))-A253262(n)`
-/

namespace A311552.P14532787391791702568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A008676 (A016777 n).toNat - A253262 n

end

end A311552.P14532787391791702568

namespace A311552

/-- `A313692(n)-A008676(A016777(n))-A253262(n)` -/
def P14532787391791702568.Spec : Prop :=
  ∀ n, P14532787391791702568.a n = A311552 n

end A311552

/-! ## A311552.P6317461489095048390

`A312162(n)-A008676(A016777(n))`
-/

namespace A311552.P6317461489095048390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n - A008676 (A016777 n).toNat

end

end A311552.P6317461489095048390

namespace A311552

/-- `A312162(n)-A008676(A016777(n))` -/
def P6317461489095048390.Spec : Prop :=
  ∀ n, P6317461489095048390.a n = A311552 n

end A311552

/-! ## A311552.P5296615958206769828

`A312162(n)-A110654(A057354(n))`
-/

namespace A311552.P5296615958206769828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n - A110654 (A057354 n).toNat

end

end A311552.P5296615958206769828

namespace A311552

/-- `A312162(n)-A110654(A057354(n))` -/
def P5296615958206769828.Spec : Prop :=
  ∀ n, P5296615958206769828.a n = A311552 n

end A311552

/-! ## A311552.P17471328394570574816

`A005843(A311535(n))-A311440(n)`
-/

namespace A311552.P17471328394570574816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311535 n).toNat - A311440 n

end

end A311552.P17471328394570574816

namespace A311552

/-- `A005843(A311535(n))-A311440(n)` -/
def P17471328394570574816.Spec : Prop :=
  ∀ n, P17471328394570574816.a n = A311552 n

end A311552

/-! ## A311552.P6016183923800000656

`abs(A008592(n)-A315737(n))`
-/

namespace A311552.P6016183923800000656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315737 n|

end

end A311552.P6016183923800000656

namespace A311552

/-- `abs(A008592(n)-A315737(n))` -/
def P6016183923800000656.Spec : Prop :=
  ∀ n, P6016183923800000656.a n = A311552 n

end A311552

/-! ## A311552.P3367072563739197652

`2*A008706(n)-A315737(n)`
-/

namespace A311552.P3367072563739197652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315737 n

end

end A311552.P3367072563739197652

namespace A311552

/-- `2*A008706(n)-A315737(n)` -/
def P3367072563739197652.Spec : Prop :=
  ∀ n, P3367072563739197652.a n = A311552 n

end A311552

/-! ## A311552.P6324851840526624339

`A008458(n)+A008574(n)-A315737(n)`
-/

namespace A311552.P6324851840526624339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315737 n)

end

end A311552.P6324851840526624339

namespace A311552

/-- `A008458(n)+A008574(n)-A315737(n)` -/
def P6324851840526624339.Spec : Prop :=
  ∀ n, P6324851840526624339.a n = A311552 n

end A311552

/-! ## A311552.P11842733806939918350

`A315737(n)-A005843(A315737(n)-A008706(n))`
-/

namespace A311552.P11842733806939918350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - A005843 (A315737 n - A008706 n).toNat

end

end A311552.P11842733806939918350

namespace A311552

/-- `A315737(n)-A005843(A315737(n)-A008706(n))` -/
def P11842733806939918350.Spec : Prop :=
  ∀ n, P11842733806939918350.a n = A311552 n

end A311552

/-! ## A311552.P8294983267717256422

`A005843(A008706(n))-A315737(n)`
-/

namespace A311552.P8294983267717256422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315737 n

end

end A311552.P8294983267717256422

namespace A311552

/-- `A005843(A008706(n))-A315737(n)` -/
def P8294983267717256422.Spec : Prop :=
  ∀ n, P8294983267717256422.a n = A311552 n

end A311552

/-!
# A311553: Coordination sequence Gal.6.133.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311553, the canonical program `A311553.P13131814796293426707` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311553 has offset 0).

The definition of A311553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311553.P3412439316259078050

`A042965(A311541(n)+1-n)`
-/

namespace A311553.P3412439316259078050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A311541 n + (1 - (n : ℤ))).toNat

end

end A311553.P3412439316259078050

namespace A311553

/-- `A042965(A311541(n)+1-n)` -/
def P3412439316259078050.Spec : Prop :=
  ∀ n, P3412439316259078050.a n = A311553 n

end A311553

/-! ## A311553.P8088376232226598137

`A042965(1-(n-A311541(n)))`
-/

namespace A311553.P8088376232226598137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (1 - ((n : ℤ) - A311541 n)).toNat

end

end A311553.P8088376232226598137

namespace A311553

/-- `A042965(1-(n-A311541(n)))` -/
def P8088376232226598137.Spec : Prop :=
  ∀ n, P8088376232226598137.a n = A311553 n

end A311553

/-! ## A311553.P15047285632465987004

`(A311635(n)+A311385(n))/2`
-/

namespace A311553.P15047285632465987004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311635 n + A311385 n : ℚ) / 2

end

end A311553.P15047285632465987004

namespace A311553

/-- `(A311635(n)+A311385(n))/2` -/
def P15047285632465987004.Spec : Prop :=
  ∀ n, P15047285632465987004.a n = (A311553 n : ℚ)

end A311553

/-! ## A311553.P4040792337602281108

`A311385(n)+A004525(A311635(n)-A311385(n))`
-/

namespace A311553.P4040792337602281108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A004525 (A311635 n - A311385 n).toNat

end

end A311553.P4040792337602281108

namespace A311553

/-- `A311385(n)+A004525(A311635(n)-A311385(n))` -/
def P4040792337602281108.Spec : Prop :=
  ∀ n, P4040792337602281108.a n = A311553 n

end A311553

/-! ## A311553.P3931203648531758135

`A311635(n)-A004525(A311635(n)-A311541(n))`
-/

namespace A311553.P3931203648531758135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n - A004525 (A311635 n - A311541 n).toNat

end

end A311553.P3931203648531758135

namespace A311553

/-- `A311635(n)-A004525(A311635(n)-A311541(n))` -/
def P3931203648531758135.Spec : Prop :=
  ∀ n, P3931203648531758135.a n = A311553 n

end A311553

/-! ## A311553.P13131814796293426707

`abs(A008592(n)-A315736(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311553

/-- `abs(A008592(n)-A315736(n))` -/
def P13131814796293426707.Spec : Prop :=
  ∀ n, P13131814796293426707.a n = A311553 n

theorem P13131814796293426707.correct : P13131814796293426707.Spec := by
  intro n
  simp only [A311553]

end A311553

/-! ## A311553.P6785650927815176770

`2*A008706(n)-A315736(n)`
-/

namespace A311553.P6785650927815176770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315736 n

end

end A311553.P6785650927815176770

namespace A311553

/-- `2*A008706(n)-A315736(n)` -/
def P6785650927815176770.Spec : Prop :=
  ∀ n, P6785650927815176770.a n = A311553 n

end A311553

/-! ## A311553.P16060265473815105655

`A135042(2*n+1)-A315736(n)`
-/

namespace A311553.P16060265473815105655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315736 n

end

end A311553.P16060265473815105655

namespace A311553

/-- `A135042(2*n+1)-A315736(n)` -/
def P16060265473815105655.Spec : Prop :=
  ∀ n, P16060265473815105655.a n = A311553 n

end A311553

/-! ## A311553.P930840744118692623

`A008458(n)+A008574(n)-A315736(n)`
-/

namespace A311553.P930840744118692623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315736 n)

end

end A311553.P930840744118692623

namespace A311553

/-- `A008458(n)+A008574(n)-A315736(n)` -/
def P930840744118692623.Spec : Prop :=
  ∀ n, P930840744118692623.a n = A311553 n

end A311553

/-! ## A311553.P15404056881886047661

`A315736(n)-A005843(A315736(n)-A008706(n))`
-/

namespace A311553.P15404056881886047661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315736 n - A005843 (A315736 n - A008706 n).toNat

end

end A311553.P15404056881886047661

namespace A311553

/-- `A315736(n)-A005843(A315736(n)-A008706(n))` -/
def P15404056881886047661.Spec : Prop :=
  ∀ n, P15404056881886047661.a n = A311553 n

end A311553

/-! ## A311553.P13968788228260393103

`A005843(A008706(n))-A315736(n)`
-/

namespace A311553.P13968788228260393103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315736 n

end

end A311553.P13968788228260393103

namespace A311553

/-- `A005843(A008706(n))-A315736(n)` -/
def P13968788228260393103.Spec : Prop :=
  ∀ n, P13968788228260393103.a n = A311553 n

end A311553

/-! ## A311553.P10471831541552553487

`A065502(A008458(n))-A315736(n)`
-/

namespace A311553.P10471831541552553487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315736 n

end

end A311553.P10471831541552553487

namespace A311553

/-- `A065502(A008458(n))-A315736(n)` -/
def P10471831541552553487.Spec : Prop :=
  ∀ n, P10471831541552553487.a n = A311553 n

end A311553

/-! ## A311553.P7990169729686361295

`A004396(2*(A311541(n)-n))`
-/

namespace A311553.P7990169729686361295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A311541 n - (n : ℤ))).toNat

end

end A311553.P7990169729686361295

namespace A311553

/-- `A004396(2*(A311541(n)-n))` -/
def P7990169729686361295.Spec : Prop :=
  ∀ n, P7990169729686361295.a n = A311553 n

end A311553

/-! ## A311553.P579178948548640162

`A004396(A311541(n)+A311541(n)-A004277(n))`
-/

namespace A311553.P579178948548640162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n + (A311541 n - A004277 n)).toNat

end

end A311553.P579178948548640162

namespace A311553

/-- `A004396(A311541(n)+A311541(n)-A004277(n))` -/
def P579178948548640162.Spec : Prop :=
  ∀ n, P579178948548640162.a n = A311553 n

end A311553

/-! ## A311553.P11076211676124596672

`A004396(A311541(n)+A311541(n)-A005843(n))`
-/

namespace A311553.P11076211676124596672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n + (A311541 n - A005843 n)).toNat

end

end A311553.P11076211676124596672

namespace A311553

/-- `A004396(A311541(n)+A311541(n)-A005843(n))` -/
def P11076211676124596672.Spec : Prop :=
  ∀ n, P11076211676124596672.a n = A311553 n

end A311553

/-! ## A311553.P6576385048765356833

`A004396(A311541(n)-(A004277(n)-A311541(n)))`
-/

namespace A311553.P6576385048765356833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n - (A004277 n - A311541 n)).toNat

end

end A311553.P6576385048765356833

namespace A311553

/-- `A004396(A311541(n)-(A004277(n)-A311541(n)))` -/
def P6576385048765356833.Spec : Prop :=
  ∀ n, P6576385048765356833.a n = A311553 n

end A311553

/-! ## A311553.P17854979794436368746

`A004396(A311541(n)-(A005843(n)-A311541(n)))`
-/

namespace A311553.P17854979794436368746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 n - (A005843 n - A311541 n)).toNat

end

end A311553.P17854979794436368746

namespace A311553

/-- `A004396(A311541(n)-(A005843(n)-A311541(n)))` -/
def P17854979794436368746.Spec : Prop :=
  ∀ n, P17854979794436368746.a n = A311553 n

end A311553

/-! ## A311553.P14705818271067143222

`A004525(A311635(n)+A311385(n))`
-/

namespace A311553.P14705818271067143222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311635 n + A311385 n).toNat

end

end A311553.P14705818271067143222

namespace A311553

/-- `A004525(A311635(n)+A311385(n))` -/
def P14705818271067143222.Spec : Prop :=
  ∀ n, P14705818271067143222.a n = A311553 n

end A311553

/-! ## A311553.P14823392266773924653

`A004525(A311635(n)+A311541(n))`
-/

namespace A311553.P14823392266773924653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311635 n + A311541 n).toNat

end

end A311553.P14823392266773924653

namespace A311553

/-- `A004525(A311635(n)+A311541(n))` -/
def P14823392266773924653.Spec : Prop :=
  ∀ n, P14823392266773924653.a n = A311553 n

end A311553

/-! ## A311553.P1446186365203977372

`A233583(A017281(n))-A315736(n)`
-/

namespace A311553.P1446186365203977372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315736 n

end

end A311553.P1446186365203977372

namespace A311553

/-- `A233583(A017281(n))-A315736(n)` -/
def P1446186365203977372.Spec : Prop :=
  ∀ n, P1446186365203977372.a n = A311553 n

end A311553

/-!
# A311554: Coordination sequence Gal.6.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311554, the canonical program `A311554.P133304117598951157` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311554 has offset 0).

The definition of A311554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311554.P133304117598951157

`A311549(n)+A004524(A099480(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A311554

/-- `A311549(n)+A004524(A099480(n))` -/
def P133304117598951157.Spec : Prop :=
  ∀ n, P133304117598951157.a n = A311554 n

theorem P133304117598951157.correct : P133304117598951157.Spec := by
  intro n
  simp only [A311554]

end A311554

/-! ## A311554.P70312798910951610

`A311196(n)+A311549(n)-A008574(n)`
-/

namespace A311554.P70312798910951610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (A311549 n - A008574 n)

end

end A311554.P70312798910951610

namespace A311554

/-- `A311196(n)+A311549(n)-A008574(n)` -/
def P70312798910951610.Spec : Prop :=
  ∀ n, P70312798910951610.a n = A311554 n

end A311554

/-! ## A311554.P8038990105769152601

`A311312(n)+A314742(n)-A314688(n)`
-/

namespace A311554.P8038990105769152601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (A314742 n - A314688 n)

end

end A311554.P8038990105769152601

namespace A311554

/-- `A311312(n)+A314742(n)-A314688(n)` -/
def P8038990105769152601.Spec : Prop :=
  ∀ n, P8038990105769152601.a n = A311554 n

end A311554

/-! ## A311554.P18192840436373383758

`A312210(n)-A002264(A030118(n))`
-/

namespace A311554.P18192840436373383758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312210 n - A002264 (A030118 n).toNat

end

end A311554.P18192840436373383758

namespace A311554

/-- `A312210(n)-A002264(A030118(n))` -/
def P18192840436373383758.Spec : Prop :=
  ∀ n, P18192840436373383758.a n = A311554 n

end A311554

/-! ## A311554.P9562673534381129717

`abs(A008592(n)-A315735(n))`
-/

namespace A311554.P9562673534381129717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315735 n|

end

end A311554.P9562673534381129717

namespace A311554

/-- `abs(A008592(n)-A315735(n))` -/
def P9562673534381129717.Spec : Prop :=
  ∀ n, P9562673534381129717.a n = A311554 n

end A311554

/-! ## A311554.P5056542387060429645

`2*A008706(n)-A315735(n)`
-/

namespace A311554.P5056542387060429645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315735 n

end

end A311554.P5056542387060429645

namespace A311554

/-- `2*A008706(n)-A315735(n)` -/
def P5056542387060429645.Spec : Prop :=
  ∀ n, P5056542387060429645.a n = A311554 n

end A311554

/-! ## A311554.P3006501511349904656

`A008458(n)+A008574(n)-A315735(n)`
-/

namespace A311554.P3006501511349904656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315735 n)

end

end A311554.P3006501511349904656

namespace A311554

/-- `A008458(n)+A008574(n)-A315735(n)` -/
def P3006501511349904656.Spec : Prop :=
  ∀ n, P3006501511349904656.a n = A311554 n

end A311554

/-! ## A311554.P13801876523969168139

`A314737(n)-A046978(A004396(n))`
-/

namespace A311554.P13801876523969168139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A046978 (A004396 n).toNat

end

end A311554.P13801876523969168139

namespace A311554

/-- `A314737(n)-A046978(A004396(n))` -/
def P13801876523969168139.Spec : Prop :=
  ∀ n, P13801876523969168139.a n = A311554 n

end A311554

/-! ## A311554.P8643728485491308367

`A005843(A008706(n))-A315735(n)`
-/

namespace A311554.P8643728485491308367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315735 n

end

end A311554.P8643728485491308367

namespace A311554

/-- `A005843(A008706(n))-A315735(n)` -/
def P8643728485491308367.Spec : Prop :=
  ∀ n, P8643728485491308367.a n = A311554 n

end A311554

/-! ## A311554.P9514507834446512456

`lcm(A008592(n)-A315735(n), A007913((2*n+1)²))`
-/

namespace A311554.P9514507834446512456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315735 n) (A007913 ((2 * n + 1) ^ 2))

end

end A311554.P9514507834446512456

namespace A311554

/-- `lcm(A008592(n)-A315735(n), A007913((2*n+1)²))` -/
def P9514507834446512456.Spec : Prop :=
  ∀ n, (P9514507834446512456.a n : ℤ) = A311554 n

end A311554

/-!
# A311557: Coordination sequence Gal.6.283.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311557, there is no canonical definition to state claims against.
-/

/-! ## A311557.P9630731493595759133

`A053224(2*(n+1))-A034947(A320449(n))`
-/

namespace A311557.P9630731493595759133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (2 * (n + 1)) - A034947 (A320449 n).toNat

end

end A311557.P9630731493595759133

/-! ## A311557.P16330601290964209365

`A092524(A311558(n))`
-/

namespace A311557.P16330601290964209365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311558 n).toNat

end

end A311557.P16330601290964209365

/-! ## A311557.P15949980233476004306

`A311558(A324662(∑[n]))`
-/

namespace A311557.P15949980233476004306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311558 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311557.P15949980233476004306

/-! ## A311557.P18275504196159442105

`A311558(log2(record[A099238(n)]))`
-/

namespace A311557.P18275504196159442105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311558 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A311557.P18275504196159442105

/-! ## A311557.P11870151268535112140

`A311558(n)%A071612(n+2)`
-/

namespace A311557.P11870151268535112140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311558 n) (A071612 (n + 2))

end

end A311557.P11870151268535112140

/-!
# A311558: Coordination sequence Gal.6.269.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311558, there is no canonical definition to state claims against.
-/

/-! ## A311558.P10600062682464960581

`A311557(record[n-A184964(n)])`
-/

namespace A311558.P10600062682464960581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A184964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A311558.P10600062682464960581

/-! ## A311558.P1704902702630612151

`filter[A311557(n), A242718(#)]`
-/

namespace A311558.P1704902702630612151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A311558.P1704902702630612151

/-! ## A311558.P12813688425837627846

`A311557(record[gcd(n, A184964(n))])`
-/

namespace A311558.P12813688425837627846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A184964 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A311558.P12813688425837627846

/-!
# A311559: Coordination sequence Gal.4.68.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311559, there is no canonical definition to state claims against.
-/

/-! ## A311559.P12787872437370200952

`2*A312014(n)-A312436(n)`
-/

namespace A311559.P12787872437370200952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312014 n - A312436 n

end

end A311559.P12787872437370200952

/-! ## A311559.P17060605446472433408

`A004277(A312014(n))-A312436(n)`
-/

namespace A311559.P17060605446472433408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312014 n).toNat - A312436 n

end

end A311559.P17060605446472433408

/-! ## A311559.P13528789760952092974

`A352513(A250646(n+1))+A008574(n)`
-/

namespace A311559.P13528789760952092974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A250646 (n + 1)).toNat + A008574 n

end

end A311559.P13528789760952092974

/-! ## A311559.P5897203913746386127

`A311558(n)+A280164(A135344(n))`
-/

namespace A311559.P5897203913746386127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311558 n + A280164 (A135344 n).toNat

end

end A311559.P5897203913746386127

/-! ## A311559.P2055089549380802820

`record[(2-char[∑[n]])*A198329(2*n+1)]`
-/

namespace A311559.P2055089549380802820
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A198329 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311559.P2055089549380802820

/-!
# A311560: Coordination sequence Gal.4.64.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311560, there is no canonical definition to state claims against.
-/

/-! ## A311560.P13830125976407691575

`A161764(A315002(n)^A146615(n+1))`
-/

namespace A311560.P13830125976407691575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (SequenceMachineLib.roundAway ((A315002 n : ℚ) ^ (A146615 (n + 1) : ℤ))).toNat

end

end A311560.P13830125976407691575

/-! ## A311560.P14384006304864152936

`A161764(A146615(n+1)²²*A315002(n))`
-/

namespace A311560.P14384006304864152936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 ((A146615 (n + 1) ^ 2) ^ 2 * A315002 n).toNat

end

end A311560.P14384006304864152936

/-! ## A311560.P5400337662669809765

`A161764(A315002(n))/A146615(A146615(n+1)²)`
-/

namespace A311560.P5400337662669809765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161764 (A315002 n).toNat : ℚ) / (A146615 (A146615 (n + 1) ^ 2).toNat : ℚ)

end

end A311560.P5400337662669809765

/-! ## A311560.P14154280748329053793

`A269250(n)+A003002(A256256(n))`
-/

namespace A311560.P14154280748329053793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n + A003002 (A256256 n).toNat

end

end A311560.P14154280748329053793

/-! ## A311560.P3634106438565642881

`A096894(A311155(n)+A231080(n+1))`
-/

namespace A311560.P3634106438565642881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (A311155 n + A231080 (n + 1)).toNat

end

end A311560.P3634106438565642881

/-!
# A311561: Coordination sequence Gal.6.383.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311561, there is no canonical definition to state claims against.
-/

/-! ## A311561.P3885450194381533517

`A341258(A310750(2*n+1))+A310762(n)`
-/

namespace A311561.P3885450194381533517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341258 (A310750 (2 * n + 1)).toNat + A310762 n

end

end A311561.P3885450194381533517

/-! ## A311561.P6335629641340054073

`A068509((2-A225223(n+1))²)`
-/

namespace A311561.P6335629641340054073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 ((2 - A225223 (n + 1)) ^ 2).toNat

end

end A311561.P6335629641340054073

/-! ## A311561.P9296052497101422021

`A030341(A160747(n)+n)+4*n`
-/

namespace A311561.P9296052497101422021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A160747 n + (n : ℤ)).toNat + (4 * n : ℤ)

end

end A311561.P9296052497101422021

/-! ## A311561.P3065849798014416536

`A269245(A058809(n))+A008574(n)`
-/

namespace A311561.P3065849798014416536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A058809 n).toNat + A008574 n

end

end A311561.P3065849798014416536

/-! ## A311561.P3687682333435724559

`A251631(A251631(n)+A047341(2*n+1))`
-/

namespace A311561.P3687682333435724559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A251631 n + A047341 (2 * n + 1)).toNat

end

end A311561.P3687682333435724559

/-!
# A311562: Coordination sequence Gal.5.179.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311562, there is no canonical definition to state claims against.
-/

/-! ## A311562.P14648508931407255732

`A311561(n)+A064911(A020063(n)+1)`
-/

namespace A311562.P14648508931407255732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311561 n + A064911 (A020063 n + 1).toNat

end

end A311562.P14648508931407255732

/-! ## A311562.P5992081911587913987

`record[xor(A281451(3*n+2), A360457(3*n+2))]`
-/

namespace A311562.P5992081911587913987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A281451 (3 * n + 2)) (A360457 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311562.P5992081911587913987

/-! ## A311562.P8469566882190489581

`A311561(n)+A043545(A172396(n))`
-/

namespace A311562.P8469566882190489581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311561 n + A043545 (A172396 n).toNat

end

end A311562.P8469566882190489581

/-! ## A311562.P13456714302806379080

`A311561(n)+A030308(A248068(n+1))`
-/

namespace A311562.P13456714302806379080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311561 n + A030308 (A248068 (n + 1)).toNat

end

end A311562.P13456714302806379080

/-! ## A311562.P12829592905286879606

`A301676(n)-A046660(A074964(n+1))`
-/

namespace A311562.P12829592905286879606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A046660 (A074964 (n + 1)).toNat

end

end A311562.P12829592905286879606

/-!
# A311563: Coordination sequence Gal.5.30.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311563, there is no canonical definition to state claims against.
-/

/-! ## A311563.P11166631162852859923

`and(A311613(A105045(n)), A311613(n))`
-/

namespace A311563.P11166631162852859923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A311613 (A105045 n).toNat) (A311613 n)

end

end A311563.P11166631162852859923

/-! ## A311563.P17479751728602632304

`A352661(A061979(n+2))+A311595(n)-A241541(n)`
-/

namespace A311563.P17479751728602632304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A061979 (n + 2)).toNat + A311595 n - A241541 n

end

end A311563.P17479751728602632304

/-! ## A311563.P15400932033765828331

`record[A050150(2*n+1)-(2^ceil(n/2)+1)]`
-/

namespace A311563.P15400932033765828331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050150 (2 * n + 1) : ℚ) - ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311563.P15400932033765828331

/-! ## A311563.P3116961489609835228

`A085515(A314439(n))`
-/

namespace A311563.P3116961489609835228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085515 (A314439 n).toNat

end

end A311563.P3116961489609835228

/-! ## A311563.P13508849634657056352

`eq[A112200(n), A236966(n+1)]`
-/

namespace A311563.P13508849634657056352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311563.P13508849634657056352

/-!
# A311564: Coordination sequence Gal.6.302.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311564, there is no canonical definition to state claims against.
-/

/-! ## A311564.P6767831446394752499

`A250120(n)-A007828(A115255(n))`
-/

namespace A311564.P6767831446394752499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007828 (A115255 n).toNat

end

end A311564.P6767831446394752499

/-! ## A311564.P12174481064544757055

`A311415(n)+A102681(A122423(n+1))`
-/

namespace A311564.P12174481064544757055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 n + A102681 (A122423 (n + 1)).toNat

end

end A311564.P12174481064544757055

/-! ## A311564.P18000212030342564249

`A311402(n)+A010051(A252954(n+1))`
-/

namespace A311564.P18000212030342564249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311402 n + A010051 (A252954 (n + 1)).toNat

end

end A311564.P18000212030342564249

/-! ## A311564.P3623366145062209171

`A313240(n)-A001222(A001764(n))`
-/

namespace A311564.P3623366145062209171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313240 n - A001222 (A001764 n).toNat

end

end A311564.P3623366145062209171

/-! ## A311564.P8561173486077104219

`A313241(n)-A001222(A001764(n))`
-/

namespace A311564.P8561173486077104219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A001222 (A001764 n).toNat

end

end A311564.P8561173486077104219

/-!
# A311565: Coordination sequence Gal.6.297.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311565, there is no canonical definition to state claims against.
-/

/-! ## A311565.P15030843003801169959

`A312020(n)-A010815(A111299(n+2))`
-/

namespace A311565.P15030843003801169959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312020 n - A010815 (A111299 (n + 2)).toNat

end

end A311565.P15030843003801169959

/-! ## A311565.P11251001357672174836

`A312025(n)-A131852(A337409(n+1))-A086071(n+1)`
-/

namespace A311565.P11251001357672174836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312025 n - A131852 (A337409 (n + 1)).toNat - A086071 (n + 1)

end

end A311565.P11251001357672174836

/-! ## A311565.P7152258380534084984

`or(A184159(A264855(n+1)), A311180(n))`
-/

namespace A311565.P7152258380534084984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184159 (A264855 (n + 1)).toNat) (A311180 n)

end

end A311565.P7152258380534084984

/-! ## A311565.P5037895428393411562

`A358401(A374687(n))+A061641(2*n+1)`
-/

namespace A311565.P5037895428393411562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358401 (A374687 n).toNat + A061641 (2 * n + 1)

end

end A311565.P5037895428393411562

/-! ## A311565.P10534809073886972141

`A301688(n)+A079635(A041171(n))`
-/

namespace A311565.P10534809073886972141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A079635 (A041171 n).toNat

end

end A311565.P10534809073886972141

/-!
# A311566: Coordination sequence Gal.4.93.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311566, there is no canonical definition to state claims against.
-/

/-! ## A311566.P13520848425348556025

`A282290(A304565(n+1))+A008574(n)`
-/

namespace A311566.P13520848425348556025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282290 (A304565 (n + 1)).toNat + A008574 n

end

end A311566.P13520848425348556025

/-! ## A311566.P2265483792223146069

`A129308(A228338(n))+A008574(n)`
-/

namespace A311566.P2265483792223146069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A228338 n).toNat + A008574 n

end

end A311566.P2265483792223146069

/-! ## A311566.P802514527738260404

`A297833(n)+A262982(A093210(n))`
-/

namespace A311566.P802514527738260404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n + A262982 (A093210 n).toNat

end

end A311566.P802514527738260404

/-! ## A311566.P349638382401855734

`A313537(n)-A001221(A108080(n))`
-/

namespace A311566.P349638382401855734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n - A001221 (A108080 n).toNat

end

end A311566.P349638382401855734

/-! ## A311566.P10785094443166929734

`A301684(n)-A333224(A115981(n))`
-/

namespace A311566.P10785094443166929734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n - A333224 (A115981 n).toNat

end

end A311566.P10785094443166929734

/-!
# A311567: Coordination sequence Gal.4.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311567, there is no canonical definition to state claims against.
-/

/-! ## A311567.P14673591176257262417

`A137803(n+1)+A120254(A381221(n+1))`
-/

namespace A311567.P14673591176257262417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) + A120254 (A381221 (n + 1)).toNat

end

end A311567.P14673591176257262417

/-! ## A311567.P13724515101490609743

`lt[A056943(A285118(3*(n+1))), A050870(n+2)]`
-/

namespace A311567.P13724515101490609743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A285118 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311567.P13724515101490609743

/-!
# A311568: Coordination sequence Gal.6.511.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311568, there is no canonical definition to state claims against.
-/

/-! ## A311568.P16573013565165274580

`A250120(n)-A206442(A135522(n))`
-/

namespace A311568.P16573013565165274580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A206442 (A135522 n).toNat

end

end A311568.P16573013565165274580

/-! ## A311568.P2870594558041392527

`A250120(n)-A352513(A005563(n))`
-/

namespace A311568.P2870594558041392527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A352513 (A005563 n).toNat

end

end A311568.P2870594558041392527

/-!
# A311570: Coordination sequence Gal.3.18.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311570, the canonical program `A311570.P17013553146921247597` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311570 has offset 0).

The definition of A311570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311570.P14495082686514931815

`abs(7*n-A348237(n))`
-/

namespace A311570.P14495082686514931815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A348237 n|

end

end A311570.P14495082686514931815

namespace A311570

/-- `abs(7*n-A348237(n))` -/
def P14495082686514931815.Spec : Prop :=
  ∀ n, P14495082686514931815.a n = A311570 n

end A311570

/-! ## A311570.P17013553146921247597

`A310518(n)-A201629(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311570

/-- `A310518(n)-A201629(n)` -/
def P17013553146921247597.Spec : Prop :=
  ∀ n, P17013553146921247597.a n = A311570 n

theorem P17013553146921247597.correct : P17013553146921247597.Spec := by
  intro n
  simp only [A311570]

end A311570

/-! ## A311570.P2377820544824338284

`A348236(n)+A047299(n+1)`
-/

namespace A311570.P2377820544824338284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n + A047299 (n + 1)

end

end A311570.P2377820544824338284

namespace A311570

/-- `A348236(n)+A047299(n+1)` -/
def P2377820544824338284.Spec : Prop :=
  ∀ n, P2377820544824338284.a n = A311570 n

end A311570

/-! ## A311570.P11671692850827080583

`A004277(A301291(n)-A072154(n))`
-/

namespace A311570.P11671692850827080583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A301291 n - A072154 n).toNat

end

end A311570.P11671692850827080583

namespace A311570

/-- `A004277(A301291(n)-A072154(n))` -/
def P11671692850827080583.Spec : Prop :=
  ∀ n, P11671692850827080583.a n = A311570 n

end A311570

/-! ## A311570.P13034892169061348528

`A004277(A047486(n+1)+A004525(n))`
-/

namespace A311570.P13034892169061348528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047486 (n + 1) + A004525 n).toNat

end

end A311570.P13034892169061348528

namespace A311570

/-- `A004277(A047486(n+1)+A004525(n))` -/
def P13034892169061348528.Spec : Prop :=
  ∀ n, P13034892169061348528.a n = A311570 n

end A311570

/-! ## A311570.P3120053066534180656

`A004275(A047412(n+2)+A004525(n))`
-/

namespace A311570.P3120053066534180656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047412 (n + 2) + A004525 n).toNat

end

end A311570.P3120053066534180656

namespace A311570

/-- `A004275(A047412(n+2)+A004525(n))` -/
def P3120053066534180656.Spec : Prop :=
  ∀ n, P3120053066534180656.a n = A311570 n

end A311570

/-! ## A311570.P13276221246214596971

`A004277(n)+A008706(n)-A348237(n)`
-/

namespace A311570.P13276221246214596971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A008706 n - A348237 n)

end

end A311570.P13276221246214596971

namespace A311570

/-- `A004277(n)+A008706(n)-A348237(n)` -/
def P13276221246214596971.Spec : Prop :=
  ∀ n, P13276221246214596971.a n = A311570 n

end A311570

/-! ## A311570.P12682682465885602531

`∑{d}[A008589(n)-A348237(n), A000010(#)]`
-/

namespace A311570.P12682682465885602531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A348237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A311570.P12682682465885602531

namespace A311570

/-- `∑{d}[A008589(n)-A348237(n), A000010(#)]` -/
def P12682682465885602531.Spec : Prop :=
  ∀ n, P12682682465885602531.a n = A311570 n

end A311570

/-! ## A311570.P14239752619606372125

`2*A311416(n)-A311181(n)`
-/

namespace A311570.P14239752619606372125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311416 n - A311181 n

end

end A311570.P14239752619606372125

namespace A311570

/-- `2*A311416(n)-A311181(n)` -/
def P14239752619606372125.Spec : Prop :=
  ∀ n, P14239752619606372125.a n = A311570 n

end A311570

/-! ## A311570.P3232796674564032693

`2*A301291(n)-A315187(n)`
-/

namespace A311570.P3232796674564032693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301291 n - A315187 n

end

end A311570.P3232796674564032693

namespace A311570

/-- `2*A301291(n)-A315187(n)` -/
def P3232796674564032693.Spec : Prop :=
  ∀ n, P3232796674564032693.a n = A311570 n

end A311570

/-! ## A311570.P325256430244797314

`A005843(A311416(n))-A311181(n)`
-/

namespace A311570.P325256430244797314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311416 n).toNat - A311181 n

end

end A311570.P325256430244797314

namespace A311570

/-- `A005843(A311416(n))-A311181(n)` -/
def P325256430244797314.Spec : Prop :=
  ∀ n, P325256430244797314.a n = A311570 n

end A311570

/-! ## A311570.P16244428490617725452

`A004442(A016993(n)-A348237(n))`
-/

namespace A311570.P16244428490617725452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A016993 n - A348237 n).toNat

end

end A311570.P16244428490617725452

namespace A311570

/-- `A004442(A016993(n)-A348237(n))` -/
def P16244428490617725452.Spec : Prop :=
  ∀ n, P16244428490617725452.a n = A311570 n

end A311570

/-! ## A311570.P9887885019364248009

`lcm(2, A311181(2*n))/2`
-/

namespace A311570.P9887885019364248009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A311181 (2 * n)) : ℚ) / 2

end

end A311570.P9887885019364248009

namespace A311570

/-- `lcm(2, A311181(2*n))/2` -/
def P9887885019364248009.Spec : Prop :=
  ∀ n, P9887885019364248009.a n = (A311570 n : ℚ)

end A311570

/-! ## A311570.P5024272202481198548

`A318516(A311181(2*n))`
-/

namespace A311570.P5024272202481198548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A311181 (2 * n)).toNat

end

end A311570.P5024272202481198548

namespace A311570

/-- `A318516(A311181(2*n))` -/
def P5024272202481198548.Spec : Prop :=
  ∀ n, P5024272202481198548.a n = A311570 n

end A311570

/-! ## A311570.P17306417254842673544

`A008619(A311181(2*n)-1)`
-/

namespace A311570.P17306417254842673544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311181 (2 * n) - 1).toNat

end

end A311570.P17306417254842673544

namespace A311570

/-- `A008619(A311181(2*n)-1)` -/
def P17306417254842673544.Spec : Prop :=
  ∀ n, P17306417254842673544.a n = A311570 n

end A311570

/-! ## A311570.P4831973367956211808

`A123108(A311181(2*n)+1)`
-/

namespace A311570.P4831973367956211808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311181 (2 * n) + 1).toNat

end

end A311570.P4831973367956211808

namespace A311570

/-- `A123108(A311181(2*n)+1)` -/
def P4831973367956211808.Spec : Prop :=
  ∀ n, P4831973367956211808.a n = A311570 n

end A311570

/-!
# A311571: Coordination sequence Gal.5.117.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311571, there is no canonical definition to state claims against.
-/

/-! ## A311571.P12883572203963324740

`A311335(n)+A241541(A043318(n+1)²)`
-/

namespace A311571.P12883572203963324740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311335 n + A241541 (A043318 (n + 1) ^ 2).toNat

end

end A311571.P12883572203963324740

/-! ## A311571.P14133695505487736929

`A092524(or(A028613(n), A311335(n)))`
-/

namespace A311571.P14133695505487736929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (Int.lor (A028613 n) (A311335 n)).toNat

end

end A311571.P14133695505487736929

/-! ## A311571.P11532098693291967524

`or(A311335(n)^A108782(n)!, A028613(n))`
-/

namespace A311571.P11532098693291967524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311335 n ^ Nat.factorial (A108782 n).toNat) (A028613 n)

end

end A311571.P11532098693291967524

/-! ## A311571.P779309164756070295

`A035162(A265066(2*n))+4*n`
-/

namespace A311571.P779309164756070295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (A265066 (2 * n)).toNat + (4 * n : ℤ)

end

end A311571.P779309164756070295

/-! ## A311571.P6856543780193764913

`A312042(n)-A337546(A189696(2*n+3))`
-/

namespace A311571.P6856543780193764913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 n - A337546 (A189696 (2 * n + 3)).toNat

end

end A311571.P6856543780193764913

/-!
# A311572: Coordination sequence Gal.6.292.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311572, there is no canonical definition to state claims against.
-/

/-! ## A311572.P12502445991782257820

`A311573(n)%A339709(n)`
-/

namespace A311572.P12502445991782257820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311573 n) (A339709 n)

end

end A311572.P12502445991782257820

/-! ## A311572.P15853471584486131391

`A311573(lcm(n, A141588(n)))`
-/

namespace A311572.P15853471584486131391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311573 (Int.lcm (n : ℤ) (A141588 n))

end

end A311572.P15853471584486131391

/-! ## A311572.P5536941830448181663

`A311573(n*A141588(n)²)`
-/

namespace A311572.P5536941830448181663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311573 ((n : ℤ) * A141588 n ^ 2).toNat

end

end A311572.P5536941830448181663

/-! ## A311572.P9493182510371570728

`A311573(n)+A000007(A236572(n))`
-/

namespace A311572.P9493182510371570728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311573 n + A000007 (A236572 n).toNat

end

end A311572.P9493182510371570728

/-! ## A311572.P6157234539464926237

`A311573(n)+A288622(A264190(2*n+1))`
-/

namespace A311572.P6157234539464926237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311573 n + A288622 (A264190 (2 * n + 1)).toNat

end

end A311572.P6157234539464926237

/-!
# A311575: Coordination sequence Gal.6.303.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311575, there is no canonical definition to state claims against.
-/

/-! ## A311575.P11078690188145775987

`A312927(n)-A308187(A157248(n+1))`
-/

namespace A311575.P11078690188145775987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 n - A308187 (A157248 (n + 1)).toNat

end

end A311575.P11078690188145775987

/-! ## A311575.P2061719491593532459

`A311440(n)+A011731(A230695(n))`
-/

namespace A311575.P2061719491593532459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A011731 (A230695 n).toNat

end

end A311575.P2061719491593532459

/-! ## A311575.P8525828640827570069

`A312929(n)-A070176(A041251(n))`
-/

namespace A311575.P8525828640827570069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312929 n - A070176 (A041251 n).toNat

end

end A311575.P8525828640827570069

/-! ## A311575.P9510184428979282845

`A313106(n)-A001222(A120305(n))`
-/

namespace A311575.P9510184428979282845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313106 n - A001222 (A120305 n).toNat

end

end A311575.P9510184428979282845

/-! ## A311575.P13566495011373991750

`A312067(n)-A181837(A167614(n+1))`
-/

namespace A311575.P13566495011373991750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312067 n - A181837 (A167614 (n + 1)).toNat

end

end A311575.P13566495011373991750

/-!
# A311576: Coordination sequence Gal.5.76.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311576, the canonical program `A311576.P2952944293918818847` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311576 has offset 0).

The definition of A311576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311576.P2952944293918818847

`2*A313089(n)-A310493(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A311576

/-- `2*A313089(n)-A310493(n)` -/
def P2952944293918818847.Spec : Prop :=
  ∀ n, P2952944293918818847.a n = A311576 n

theorem P2952944293918818847.correct : P2952944293918818847.Spec := by
  intro n
  simp only [A311576]

end A311576

/-! ## A311576.P12431653841133084153

`A004277(A313089(n))-A310493(n)`
-/

namespace A311576.P12431653841133084153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313089 n).toNat - A310493 n

end

end A311576.P12431653841133084153

namespace A311576

/-- `A004277(A313089(n))-A310493(n)` -/
def P12431653841133084153.Spec : Prop :=
  ∀ n, P12431653841133084153.a n = A311576 n

end A311576

/-! ## A311576.P1638354191271280009

`A311577(A062399(n))`
-/

namespace A311576.P1638354191271280009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A062399 n).toNat

end

end A311576.P1638354191271280009

namespace A311576

/-- `A311577(A062399(n))` -/
def P1638354191271280009.Spec : Prop :=
  ∀ n, P1638354191271280009.a n = A311576 n

end A311576

/-! ## A311576.P7590500307201025945

`A311577(A120126(n))`
-/

namespace A311576.P7590500307201025945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A120126 n).toNat

end

end A311576.P7590500307201025945

namespace A311576

/-- `A311577(A120126(n))` -/
def P7590500307201025945.Spec : Prop :=
  ∀ n, P7590500307201025945.a n = A311576 n

end A311576

/-! ## A311576.P10456999510845774898

`A311577(A351870(n))`
-/

namespace A311576.P10456999510845774898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A351870 n).toNat

end

end A311576.P10456999510845774898

namespace A311576

/-- `A311577(A351870(n))` -/
def P10456999510845774898.Spec : Prop :=
  ∀ n, P10456999510845774898.a n = A311576 n

end A311576

/-!
# A311577: Coordination sequence Gal.5.77.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311577, there is no canonical definition to state claims against.
-/

/-! ## A311577.P7221411398080657206

`or(A303709(A175654(n)), A311340(n))`
-/

namespace A311577.P7221411398080657206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A303709 (A175654 n).toNat) (A311340 n)

end

end A311577.P7221411398080657206

/-! ## A311577.P7462927894645781234

`A311340(n)+A055668(A173009(n+1))`
-/

namespace A311577.P7462927894645781234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + A055668 (A173009 (n + 1)).toNat

end

end A311577.P7462927894645781234

/-! ## A311577.P6499076177590986415

`A311340(n)+A000122(A301793(n+3))`
-/

namespace A311577.P6499076177590986415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + A000122 (A301793 (n + 3)).toNat

end

end A311577.P6499076177590986415

/-! ## A311577.P14312353536449071442

`A311340(n)+A303709(A303709(n+1)+A175654(n))`
-/

namespace A311577.P14312353536449071442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + A303709 (A303709 (n + 1) + A175654 n).toNat

end

end A311577.P14312353536449071442

/-! ## A311577.P3893319997404599565

`or(A245359(A207111(n+1)), A311340(n))`
-/

namespace A311577.P3893319997404599565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245359 (A207111 (n + 1)).toNat) (A311340 n)

end

end A311577.P3893319997404599565

/-!
# A311578: Coordination sequence Gal.4.113.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311578, there is no canonical definition to state claims against.
-/

/-! ## A311578.P15251554268819801069

`A349294(A311576(n))`
-/

namespace A311578.P15251554268819801069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A311576 n).toNat

end

end A311578.P15251554268819801069

/-! ## A311578.P16093218172081050110

`A349294(A311577(n))`
-/

namespace A311578.P16093218172081050110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A311577 n).toNat

end

end A311578.P16093218172081050110

/-! ## A311578.P8126775278912824768

`record[A311576(n)/A241121(n+1)]`
-/

namespace A311578.P8126775278912824768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311576 n : ℚ) / (A241121 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311578.P8126775278912824768

/-! ## A311578.P499678207301093156

`record[A311577(n)/A241121(n+1)]`
-/

namespace A311578.P499678207301093156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311577 n : ℚ) / (A241121 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311578.P499678207301093156

/-! ## A311578.P11496990226853887446

`A053603(A053581(n))+A008574(n)`
-/

namespace A311578.P11496990226853887446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (A053581 n).toNat + A008574 n

end

end A311578.P11496990226853887446

/-!
# A311579: Coordination sequence Gal.6.240.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311579, there is no canonical definition to state claims against.
-/

/-! ## A311579.P6624507926773975797

`2*A312050(n)-A312455(n)`
-/

namespace A311579.P6624507926773975797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312050 n - A312455 n

end

end A311579.P6624507926773975797

/-! ## A311579.P6894085334875203727

`A004277(A312050(n))-A312455(n)`
-/

namespace A311579.P6894085334875203727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312050 n).toNat - A312455 n

end

end A311579.P6894085334875203727

/-! ## A311579.P1892188190827646914

`A092524(A311580(n))`
-/

namespace A311579.P1892188190827646914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311580 n).toNat

end

end A311579.P1892188190827646914

/-! ## A311579.P18054023269714039038

`A311580(n)*A360672(∑[n])`
-/

namespace A311579.P18054023269714039038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311580 n * A360672 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311579.P18054023269714039038

/-! ## A311579.P16957273425517428238

`A311580(n)%A144848(n+1)`
-/

namespace A311579.P16957273425517428238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311580 n) (A144848 (n + 1))

end

end A311579.P16957273425517428238

/-!
# A311580: Coordination sequence Gal.6.241.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311580, there is no canonical definition to state claims against.
-/

/-! ## A311580.P12311436657817516303

`or(A192323(A132366(n)), A311342(n))`
-/

namespace A311580.P12311436657817516303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192323 (A132366 n).toNat) (A311342 n)

end

end A311580.P12311436657817516303

/-! ## A311580.P5325818091220268624

`or(A060953(A295987(n)), A311341(n))`
-/

namespace A311580.P5325818091220268624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060953 (A295987 n).toNat) (A311341 n)

end

end A311580.P5325818091220268624

/-! ## A311580.P2328605098361879524

`A311341(n)+A060953(n+1)*A060953(A295987(n))`
-/

namespace A311580.P2328605098361879524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311341 n + A060953 (n + 1) * A060953 (A295987 n).toNat

end

end A311580.P2328605098361879524

/-!
# A311581: Coordination sequence Gal.6.305.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311581, there is no canonical definition to state claims against.
-/

/-! ## A311581.P1984008305406709100

`A311577(n)+A007949(A213302(n))`
-/

namespace A311581.P1984008305406709100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 n + A007949 (A213302 n).toNat

end

end A311581.P1984008305406709100

/-! ## A311581.P12501419383473677557

`A311587(n)-A056594(A286783(n))`
-/

namespace A311581.P12501419383473677557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311587 n - A056594 (A286783 n).toNat

end

end A311581.P12501419383473677557

/-! ## A311581.P5787428982834305111

`A312052(n)-A107846(A255866(n))`
-/

namespace A311581.P5787428982834305111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312052 n - A107846 (A255866 n).toNat

end

end A311581.P5787428982834305111

/-! ## A311581.P1158553174277754767

`A312073(n)-A269166(A056432(n+1))`
-/

namespace A311581.P1158553174277754767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312073 n - A269166 (A056432 (n + 1)).toNat

end

end A311581.P1158553174277754767

/-! ## A311581.P2151346139143424528

`A311587(n)+A056594(A286783(n)+2)`
-/

namespace A311581.P2151346139143424528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311587 n + A056594 (A286783 n + 2).toNat

end

end A311581.P2151346139143424528

/-!
# A311582: Coordination sequence Gal.6.142.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311582, there is no canonical definition to state claims against.
-/

/-! ## A311582.P7395481520253696520

`A311583(n)-A030566(A129941(n+2))`
-/

namespace A311582.P7395481520253696520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 n - A030566 (A129941 (n + 2)).toNat

end

end A311582.P7395481520253696520

/-! ## A311582.P17453625485100867897

`A311583(A108887(∑[n]))`
-/

namespace A311582.P17453625485100867897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 (A108887 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311582.P17453625485100867897

/-! ## A311582.P2222075950301133392

`A311583(n)%A154130(n+4)`
-/

namespace A311582.P2222075950301133392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311583 n) (A154130 (n + 4))

end

end A311582.P2222075950301133392

/-! ## A311582.P6671636477978684320

`A311583(n)+A064873(A117976(n))`
-/

namespace A311582.P6671636477978684320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 n + A064873 (A117976 n).toNat

end

end A311582.P6671636477978684320

/-! ## A311582.P11678400499461468327

`A311583(n)%A248323(A000070(n))`
-/

namespace A311582.P11678400499461468327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311583 n) (A248323 (A000070 n).toNat)

end

end A311582.P11678400499461468327

/-!
# A311583: Coordination sequence Gal.6.143.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311583, there is no canonical definition to state claims against.
-/

/-! ## A311583.P16610073352542658303

`2*A311497(n)-A311342(n)`
-/

namespace A311583.P16610073352542658303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311497 n - A311342 n

end

end A311583.P16610073352542658303

/-! ## A311583.P4903890406959154551

`A004277(A311456(n))-A311220(n)`
-/

namespace A311583.P4903890406959154551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311456 n).toNat - A311220 n

end

end A311583.P4903890406959154551

/-! ## A311583.P18305015065347933549

`A311582(C(round((n+4)²/20), A086425(n+3))+n)`
-/

namespace A311583.P18305015065347933549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311582 (Nat.choose (SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 20)).toNat (A086425 (n + 3)).toNat + n)

end

end A311583.P18305015065347933549

/-!
# A311584: Coordination sequence Gal.6.135.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311584, there is no canonical definition to state claims against.
-/

/-! ## A311584.P9683232704433549094

`2*A312059(n)-A312463(n)`
-/

namespace A311584.P9683232704433549094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312059 n - A312463 n

end

end A311584.P9683232704433549094

/-! ## A311584.P1859388626439778952

`A005843(A312059(n))-A312463(n)`
-/

namespace A311584.P1859388626439778952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312059 n).toNat - A312463 n

end

end A311584.P1859388626439778952

/-! ## A311584.P13685343308941082493

`A311585(n)-A167688(A326493(n))`
-/

namespace A311584.P13685343308941082493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311585 n - A167688 (A326493 n).toNat

end

end A311584.P13685343308941082493

/-! ## A311584.P4615805526467748564

`A247973(A313937(n))`
-/

namespace A311584.P4615805526467748564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A313937 n).toNat

end

end A311584.P4615805526467748564

/-! ## A311584.P4184371342623995480

`A311586(n)%A122956(n)`
-/

namespace A311584.P4184371342623995480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311586 n) (A122956 n)

end

end A311584.P4184371342623995480

/-!
# A311585: Coordination sequence Gal.6.136.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311585, there is no canonical definition to state claims against.
-/

/-! ## A311585.P7852471789728586319

`2*A311463(n)-A311228(n)`
-/

namespace A311585.P7852471789728586319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311463 n - A311228 n

end

end A311585.P7852471789728586319

/-! ## A311585.P15057602662097042214

`2*A311505(n)-A311347(n)`
-/

namespace A311585.P15057602662097042214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311505 n - A311347 n

end

end A311585.P15057602662097042214

/-! ## A311585.P12859020000443193981

`A005843(A311463(n))-A311228(n)`
-/

namespace A311585.P12859020000443193981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311463 n).toNat - A311228 n

end

end A311585.P12859020000443193981

/-! ## A311585.P7572809994818550661

`A005843(A311505(n))-A311347(n)`
-/

namespace A311585.P7572809994818550661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311505 n).toNat - A311347 n

end

end A311585.P7572809994818550661

/-! ## A311585.P252557725318125156

`A004277(A311505(n))-(2*A311299(n)-A311228(n))`
-/

namespace A311585.P252557725318125156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311505 n).toNat - (2 * A311299 n - A311228 n)

end

end A311585.P252557725318125156

/-!
# A311586: Coordination sequence Gal.4.58.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311586, the canonical program `A311586.P8330829840369533226` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311586 has offset 0).

The definition of A311586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311586.P15643834769259767315

`A004275(comp[8*n+4]+n+1)`
-/

namespace A311586.P15643834769259767315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A311586.P15643834769259767315

namespace A311586

/-- `A004275(comp[8*n+4]+n+1)` -/
def P15643834769259767315.Spec : Prop :=
  ∀ n, P15643834769259767315.a n = A311586 n

end A311586

/-! ## A311586.P14498830616384479507

`A008486(n)+sqrt(A117676(n))`
-/

namespace A311586.P14498830616384479507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℝ) + Real.sqrt (A117676 n : ℝ)

end

end A311586.P14498830616384479507

namespace A311586

/-- `A008486(n)+sqrt(A117676(n))` -/
def P14498830616384479507.Spec : Prop :=
  ∀ n, P14498830616384479507.a n = (A311586 n : ℝ)

end A311586

/-! ## A311586.P8330829840369533226

`A004277(A047588(n+1)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311586

/-- `A004277(A047588(n+1)+n)` -/
def P8330829840369533226.Spec : Prop :=
  ∀ n, P8330829840369533226.a n = A311586 n

theorem P8330829840369533226.correct : P8330829840369533226.Spec := by
  intro n
  simp only [A311586]

end A311586

/-! ## A311586.P6817743633456743270

`A060464(n+1)+A008486(n)`
-/

namespace A311586.P6817743633456743270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + A008486 n

end

end A311586.P6817743633456743270

namespace A311586

/-- `A060464(n+1)+A008486(n)` -/
def P6817743633456743270.Spec : Prop :=
  ∀ n, P6817743633456743270.a n = A311586 n

end A311586

/-! ## A311586.P4825775734567611760

`A060464(n+1)+A028310(3*n)`
-/

namespace A311586.P4825775734567611760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + A028310 (3 * n)

end

end A311586.P4825775734567611760

namespace A311586

/-- `A060464(n+1)+A028310(3*n)` -/
def P4825775734567611760.Spec : Prop :=
  ∀ n, P4825775734567611760.a n = A311586 n

end A311586

/-! ## A311586.P10095882790454226215

`A060464(n+1)+A004277(n)+n`
-/

namespace A311586.P10095882790454226215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A004277 n + (n : ℤ))

end

end A311586.P10095882790454226215

namespace A311586

/-- `A060464(n+1)+A004277(n)+n` -/
def P10095882790454226215.Spec : Prop :=
  ∀ n, P10095882790454226215.a n = A311586 n

end A311586

/-! ## A311586.P4575136011320206802

`A060464(n+1)+A008574(n)-n`
-/

namespace A311586.P4575136011320206802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A008574 n - (n : ℤ))

end

end A311586.P4575136011320206802

namespace A311586

/-- `A060464(n+1)+A008574(n)-n` -/
def P4575136011320206802.Spec : Prop :=
  ∀ n, P4575136011320206802.a n = A311586 n

end A311586

/-! ## A311586.P7030511217875360871

`A060464(n+1)+record[A014682(n)+1]`
-/

namespace A311586.P7030511217875360871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311586.P7030511217875360871

namespace A311586

/-- `A060464(n+1)+record[A014682(n)+1]` -/
def P7030511217875360871.Spec : Prop :=
  ∀ n, P7030511217875360871.a n = A311586 n

end A311586

/-! ## A311586.P15458130510330857528

`A005843(round(8*n/7))+A004277(n)`
-/

namespace A311586.P15458130510330857528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))).toNat + A004277 n

end

end A311586.P15458130510330857528

namespace A311586

/-- `A005843(round(8*n/7))+A004277(n)` -/
def P15458130510330857528.Spec : Prop :=
  ∀ n, P15458130510330857528.a n = A311586 n

end A311586

/-! ## A311586.P6135477680897339441

`A008486(2*n)-2*A057357(2*n+1)`
-/

namespace A311586.P6135477680897339441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - 2 * A057357 (2 * n + 1)

end

end A311586.P6135477680897339441

namespace A311586

/-- `A008486(2*n)-2*A057357(2*n+1)` -/
def P6135477680897339441.Spec : Prop :=
  ∀ n, P6135477680897339441.a n = A311586 n

end A311586

/-! ## A311586.P9986333539519796145

`A004273(A004776(n+2))+A004273(n)`
-/

namespace A311586.P9986333539519796145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004776 (n + 2)).toNat + A004273 n

end

end A311586.P9986333539519796145

namespace A311586

/-- `A004273(A004776(n+2))+A004273(n)` -/
def P9986333539519796145.Spec : Prop :=
  ∀ n, P9986333539519796145.a n = A311586 n

end A311586

/-! ## A311586.P1489279521148044264

`(A008574(A047588(n+1))+A008574(n))/2`
-/

namespace A311586.P1489279521148044264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A047588 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A311586.P1489279521148044264

namespace A311586

/-- `(A008574(A047588(n+1))+A008574(n))/2` -/
def P1489279521148044264.Spec : Prop :=
  ∀ n, P1489279521148044264.a n = (A311586 n : ℚ)

end A311586

/-! ## A311586.P5039348956903323959

`A008574(n)+A005843(A047588(n+1)-n)`
-/

namespace A311586.P5039348956903323959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A047588 (n + 1) - (n : ℤ)).toNat

end

end A311586.P5039348956903323959

namespace A311586

/-- `A008574(n)+A005843(A047588(n+1)-n)` -/
def P5039348956903323959.Spec : Prop :=
  ∀ n, P5039348956903323959.a n = A311586 n

end A311586

/-! ## A311586.P61429039253813200

`A060464(n+1)+A311807(n)-A047263(n+1)`
-/

namespace A311586.P61429039253813200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A311807 n - A047263 (n + 1))

end

end A311586.P61429039253813200

namespace A311586

/-- `A060464(n+1)+A311807(n)-A047263(n+1)` -/
def P61429039253813200.Spec : Prop :=
  ∀ n, P61429039253813200.a n = A311586 n

end A311586

/-! ## A311586.P12020824315670785104

`A312680(n)-Δ[2*A011860(n)]`
-/

namespace A311586.P12020824315670785104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n - (f1 (n + 1) - f1 n)

end

end A311586.P12020824315670785104

namespace A311586

/-- `A312680(n)-Δ[2*A011860(n)]` -/
def P12020824315670785104.Spec : Prop :=
  ∀ n, P12020824315670785104.a n = A311586 n

end A311586

/-! ## A311586.P7471431732533722793

`A312183(n)-Δ[A011860(n)]`
-/

namespace A311586.P7471431732533722793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n - (f1 (n + 1) - f1 n)

end

end A311586.P7471431732533722793

namespace A311586

/-- `A312183(n)-Δ[A011860(n)]` -/
def P7471431732533722793.Spec : Prop :=
  ∀ n, P7471431732533722793.a n = A311586 n

end A311586

/-! ## A311586.P2487907688890775708

`2*A313780(n)-A008458(n)`
-/

namespace A311586.P2487907688890775708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313780 n - A008458 n

end

end A311586.P2487907688890775708

namespace A311586

/-- `2*A313780(n)-A008458(n)` -/
def P2487907688890775708.Spec : Prop :=
  ∀ n, P2487907688890775708.a n = A311586 n

end A311586

/-! ## A311586.P9828016894818437812

`A004277(A313780(n)-(A004277(n)+n))`
-/

namespace A311586.P9828016894818437812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313780 n - (A004277 n + (n : ℤ))).toNat

end

end A311586.P9828016894818437812

namespace A311586

/-- `A004277(A313780(n)-(A004277(n)+n))` -/
def P9828016894818437812.Spec : Prop :=
  ∀ n, P9828016894818437812.a n = A311586 n

end A311586

/-! ## A311586.P5275336158051234584

`A004277(A313780(n)-n-A004277(n))`
-/

namespace A311586.P5275336158051234584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313780 n - (n : ℤ) - A004277 n).toNat

end

end A311586.P5275336158051234584

namespace A311586

/-- `A004277(A313780(n)-n-A004277(n))` -/
def P5275336158051234584.Spec : Prop :=
  ∀ n, P5275336158051234584.a n = A311586 n

end A311586

/-! ## A311586.P3746987812616678782

`A313937(n)-A047263(n+1)`
-/

namespace A311586.P3746987812616678782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313937 n - A047263 (n + 1)

end

end A311586.P3746987812616678782

namespace A311586

/-- `A313937(n)-A047263(n+1)` -/
def P3746987812616678782.Spec : Prop :=
  ∀ n, P3746987812616678782.a n = A311586 n

end A311586

/-!
# A311587: Coordination sequence Gal.6.235.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311587, there is no canonical definition to state claims against.
-/

/-! ## A311587.P8861241493703731352

`comp[2*(n+1)]+record[A255235(n+2)]`
-/

namespace A311587.P8861241493703731352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A311587.P8861241493703731352

/-! ## A311587.P2093109042537780300

`A092524(A311588(n))`
-/

namespace A311587.P2093109042537780300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311588 n).toNat

end

end A311587.P2093109042537780300

/-! ## A311587.P11493383375800709455

`A311588(A077168(n+2)-3)`
-/

namespace A311587.P11493383375800709455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311588 (A077168 (n + 2) - 3).toNat

end

end A311587.P11493383375800709455

/-! ## A311587.P8819797565750066126

`A311588(n)%A342922(n+1)`
-/

namespace A311587.P8819797565750066126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311588 n) (A342922 (n + 1))

end

end A311587.P8819797565750066126

/-! ## A311587.P6100841819886624349

`A128003(n+1)%2*A311588(n)`
-/

namespace A311587.P6100841819886624349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128003 (n + 1)) 2 * A311588 n

end

end A311587.P6100841819886624349

/-!
# A311588: Coordination sequence Gal.6.236.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311588, there is no canonical definition to state claims against.
-/

/-! ## A311588.P15745499838429221097

`2*A311508(n)-A311349(n)`
-/

namespace A311588.P15745499838429221097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311508 n - A311349 n

end

end A311588.P15745499838429221097

/-! ## A311588.P7426439050721674808

`2*A312062(n)-A312466(n)`
-/

namespace A311588.P7426439050721674808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312062 n - A312466 n

end

end A311588.P7426439050721674808

/-! ## A311588.P509515568110351461

`A005843(A311508(n))-A311349(n)`
-/

namespace A311588.P509515568110351461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311508 n).toNat - A311349 n

end

end A311588.P509515568110351461

/-! ## A311588.P7119898932170236114

`A005843(A312062(n))-A312466(n)`
-/

namespace A311588.P7119898932170236114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312062 n).toNat - A312466 n

end

end A311588.P7119898932170236114

/-! ## A311588.P14420846256291004314

`A004277(A312062(n))-(2*A311918(n)-A311349(n))`
-/

namespace A311588.P14420846256291004314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312062 n).toNat - (2 * A311918 n - A311349 n)

end

end A311588.P14420846256291004314

/-!
# A311589: Coordination sequence Gal.5.70.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311589, there is no canonical definition to state claims against.
-/

/-! ## A311589.P17647428943299409709

`A311590(n)-A005089(A218116(n))`
-/

namespace A311589.P17647428943299409709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311590 n - A005089 (A218116 n).toNat

end

end A311589.P17647428943299409709

/-! ## A311589.P12012014162718188066

`A004277(A311510(n))-A092524(A311351(n))`
-/

namespace A311589.P12012014162718188066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311510 n).toNat - A092524 (A311351 n).toNat

end

end A311589.P12012014162718188066

/-! ## A311589.P11420293438434611569

`A311590(n^gcd(11, n))`
-/

namespace A311589.P11420293438434611569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311590 (n ^ Nat.gcd 11 n)

end

end A311589.P11420293438434611569

/-! ## A311589.P8170251904519677497

`A311590(A062399(n))`
-/

namespace A311589.P8170251904519677497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311590 (A062399 n).toNat

end

end A311589.P8170251904519677497

/-! ## A311589.P6935894756202025028

`A311590(A120126(n))`
-/

namespace A311589.P6935894756202025028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311590 (A120126 n).toNat

end

end A311589.P6935894756202025028

/-!
# A311590: Coordination sequence Gal.5.71.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311590, there is no canonical definition to state claims against.
-/

/-! ## A311590.P12853663702998057248

`A311425(n)+A001222(A006720(n))`
-/

namespace A311590.P12853663702998057248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311425 n + A001222 (A006720 n).toNat

end

end A311590.P12853663702998057248

/-! ## A311590.P11110828733245531691

`A001222(A006720(n))+A315495(n)-A047363(n+1)`
-/

namespace A311590.P11110828733245531691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006720 n).toNat + (A315495 n - A047363 (n + 1))

end

end A311590.P11110828733245531691

/-! ## A311590.P9694494303550221480

`A311589(n)+A005089(A218116(n))`
-/

namespace A311590.P9694494303550221480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311589 n + A005089 (A218116 n).toNat

end

end A311590.P9694494303550221480

/-!
# A311591: Coordination sequence Gal.5.117.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311591, there is no canonical definition to state claims against.
-/

/-! ## A311591.P9774998529708066420

`2*A311521(n)-A311354(n)`
-/

namespace A311591.P9774998529708066420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311521 n - A311354 n

end

end A311591.P9774998529708066420

/-! ## A311591.P1419897436064931309

`2*A312066(n)-A312457(n)`
-/

namespace A311591.P1419897436064931309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312066 n - A312457 n

end

end A311591.P1419897436064931309

/-! ## A311591.P13833251821697028376

`A004277(A312066(n))-A312457(n)`
-/

namespace A311591.P13833251821697028376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312066 n).toNat - A312457 n

end

end A311591.P13833251821697028376

/-! ## A311591.P13754198666429265867

`A005843(A311521(n))-A311354(n)`
-/

namespace A311591.P13754198666429265867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311521 n).toNat - A311354 n

end

end A311591.P13754198666429265867

/-! ## A311591.P18281940645116215524

`A004277(A311521(n))-(2*A311928(n)-A312457(n))`
-/

namespace A311591.P18281940645116215524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311521 n).toNat - (2 * A311928 n - A312457 n)

end

end A311591.P18281940645116215524

/-!
# A311592: Coordination sequence Gal.3.17.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311592, there is no canonical definition to state claims against.
-/

/-! ## A311592.P12025970514658390112

`2*A311522(n)-A311355(n)`
-/

namespace A311592.P12025970514658390112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311522 n - A311355 n

end

end A311592.P12025970514658390112

/-! ## A311592.P9818716121369296730

`A004524(A315161(2*n)+Δ[A004524(2*(n+1))])`
-/

namespace A311592.P9818716121369296730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A315161 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A311592.P9818716121369296730

/-! ## A311592.P15785720366801479632

`and(A280560(A064640(n)), A312966(n))`
-/

namespace A311592.P15785720366801479632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280560 (A064640 n).toNat) (A312966 n)

end

end A311592.P15785720366801479632

/-! ## A311592.P14142385698847509895

`A311593(n)-A010894(A239537(n+1))`
-/

namespace A311592.P14142385698847509895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n - A010894 ((A239537 (n + 1)).toNat + 21)

end

end A311592.P14142385698847509895

/-! ## A311592.P15982857773901325776

`A311479(n)-A353354(A089259(2*n+1))`
-/

namespace A311592.P15982857773901325776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311479 n - A353354 (A089259 (2 * n + 1)).toNat

end

end A311592.P15982857773901325776

/-!
# A311593: Coordination sequence Gal.6.192.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311593, the canonical program `A311593.P3587979867360531778` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311593 has offset 0).

The definition of A311593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311593.P3587979867360531778

`2*A311434(n)-A008574(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A311593

/-- `2*A311434(n)-A008574(n)` -/
def P3587979867360531778.Spec : Prop :=
  ∀ n, P3587979867360531778.a n = A311593 n

theorem P3587979867360531778.correct : P3587979867360531778.Spec := by
  intro n
  simp only [A311593]

end A311593

/-! ## A311593.P11866326717299071000

`A103517(A311434(n)-(2*n+1))`
-/

namespace A311593.P11866326717299071000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A311434 n - (2 * n + 1 : ℤ)).toNat

end

end A311593.P11866326717299071000

namespace A311593

/-- `A103517(A311434(n)-(2*n+1))` -/
def P11866326717299071000.Spec : Prop :=
  ∀ n, P11866326717299071000.a n = A311593 n

end A311593

/-! ## A311593.P488311876689810993

`A004275(A311434(n)-A004273(n))`
-/

namespace A311593.P488311876689810993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311434 n - A004273 n).toNat

end

end A311593.P488311876689810993

namespace A311593

/-- `A004275(A311434(n)-A004273(n))` -/
def P488311876689810993.Spec : Prop :=
  ∀ n, P488311876689810993.a n = A311593 n

end A311593

/-! ## A311593.P7740459300678569966

`A004273(A311434(n)-n)-A004273(n)`
-/

namespace A311593.P7740459300678569966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311434 n - (n : ℤ)).toNat - A004273 n

end

end A311593.P7740459300678569966

namespace A311593

/-- `A004273(A311434(n)-n)-A004273(n)` -/
def P7740459300678569966.Spec : Prop :=
  ∀ n, P7740459300678569966.a n = A311593 n

end A311593

/-! ## A311593.P11571729533654818800

`A008574(n)+A005843(A311434(n)-A008574(n))`
-/

namespace A311593.P11571729533654818800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311434 n - A008574 n).toNat

end

end A311593.P11571729533654818800

namespace A311593

/-- `A008574(n)+A005843(A311434(n)-A008574(n))` -/
def P11571729533654818800.Spec : Prop :=
  ∀ n, P11571729533654818800.a n = A311593 n

end A311593

/-! ## A311593.P7664988592058714204

`A312125(n)-Δ[A011864(n)]`
-/

namespace A311593.P7664988592058714204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312125 n - (f1 (n + 1) - f1 n)

end

end A311593.P7664988592058714204

namespace A311593

/-- `A312125(n)-Δ[A011864(n)]` -/
def P7664988592058714204.Spec : Prop :=
  ∀ n, P7664988592058714204.a n = A311593 n

end A311593

/-! ## A311593.P7418046564540996666

`A005843(A311434(n))-A008574(n)`
-/

namespace A311593.P7418046564540996666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311434 n).toNat - A008574 n

end

end A311593.P7418046564540996666

namespace A311593

/-- `A005843(A311434(n))-A008574(n)` -/
def P7418046564540996666.Spec : Prop :=
  ∀ n, P7418046564540996666.a n = A311593 n

end A311593

/-! ## A311593.P14816478022439170043

`A004275(A311434(n))-A004275(2*n)`
-/

namespace A311593.P14816478022439170043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311434 n).toNat - A004275 (2 * n)

end

end A311593.P14816478022439170043

namespace A311593

/-- `A004275(A311434(n))-A004275(2*n)` -/
def P14816478022439170043.Spec : Prop :=
  ∀ n, P14816478022439170043.a n = A311593 n

end A311593

/-! ## A311593.P5819302003581483271

`A005843(A311434(n))+n-A008706(n)`
-/

namespace A311593.P5819302003581483271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311434 n).toNat + ((n : ℤ) - A008706 n)

end

end A311593.P5819302003581483271

namespace A311593

/-- `A005843(A311434(n))+n-A008706(n)` -/
def P5819302003581483271.Spec : Prop :=
  ∀ n, P5819302003581483271.a n = A311593 n

end A311593

/-! ## A311593.P13966141544174678500

`abs(A008592(n)-A315733(n))`
-/

namespace A311593.P13966141544174678500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315733 n|

end

end A311593.P13966141544174678500

namespace A311593

/-- `abs(A008592(n)-A315733(n))` -/
def P13966141544174678500.Spec : Prop :=
  ∀ n, P13966141544174678500.a n = A311593 n

end A311593

/-! ## A311593.P1076893802464929598

`2*A008706(n)-A315733(n)`
-/

namespace A311593.P1076893802464929598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315733 n

end

end A311593.P1076893802464929598

namespace A311593

/-- `2*A008706(n)-A315733(n)` -/
def P1076893802464929598.Spec : Prop :=
  ∀ n, P1076893802464929598.a n = A311593 n

end A311593

/-! ## A311593.P77491647210808655

`xor(1, A017281(n)-A315733(n))`
-/

namespace A311593.P77491647210808655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315733 n)

end

end A311593.P77491647210808655

namespace A311593

/-- `xor(1, A017281(n)-A315733(n))` -/
def P77491647210808655.Spec : Prop :=
  ∀ n, P77491647210808655.a n = A311593 n

end A311593

/-! ## A311593.P3008680884273227057

`A004442(A017281(n)-A315733(n))`
-/

namespace A311593.P3008680884273227057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315733 n).toNat

end

end A311593.P3008680884273227057

namespace A311593

/-- `A004442(A017281(n)-A315733(n))` -/
def P3008680884273227057.Spec : Prop :=
  ∀ n, P3008680884273227057.a n = A311593 n

end A311593

/-! ## A311593.P5439844656152122744

`A008458(n)+A008574(n)-A315733(n)`
-/

namespace A311593.P5439844656152122744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315733 n)

end

end A311593.P5439844656152122744

namespace A311593

/-- `A008458(n)+A008574(n)-A315733(n)` -/
def P5439844656152122744.Spec : Prop :=
  ∀ n, P5439844656152122744.a n = A311593 n

end A311593

/-! ## A311593.P15621602423170367856

`A315733(n)-A005843(A315733(n)-A008706(n))`
-/

namespace A311593.P15621602423170367856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - A005843 (A315733 n - A008706 n).toNat

end

end A311593.P15621602423170367856

namespace A311593

/-- `A315733(n)-A005843(A315733(n)-A008706(n))` -/
def P15621602423170367856.Spec : Prop :=
  ∀ n, P15621602423170367856.a n = A311593 n

end A311593

/-! ## A311593.P7016916006470139505

`A005843(A008706(n))-A315733(n)`
-/

namespace A311593.P7016916006470139505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315733 n

end

end A311593.P7016916006470139505

namespace A311593

/-- `A005843(A008706(n))-A315733(n)` -/
def P7016916006470139505.Spec : Prop :=
  ∀ n, P7016916006470139505.a n = A311593 n

end A311593

/-! ## A311593.P16923336463144022323

`round(A008574(A313814(n))/5)`
-/

namespace A311593.P16923336463144022323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 (A313814 n).toNat : ℚ) / 5)

end

end A311593.P16923336463144022323

namespace A311593

/-- `round(A008574(A313814(n))/5)` -/
def P16923336463144022323.Spec : Prop :=
  ∀ n, P16923336463144022323.a n = A311593 n

end A311593

/-! ## A311593.P398840712631387616

`A312556(n)-Δ[2*A011864(n)]`
-/

namespace A311593.P398840712631387616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n - (f1 (n + 1) - f1 n)

end

end A311593.P398840712631387616

namespace A311593

/-- `A312556(n)-Δ[2*A011864(n)]` -/
def P398840712631387616.Spec : Prop :=
  ∀ n, P398840712631387616.a n = A311593 n

end A311593

/-!
# A311594: Coordination sequence Gal.6.298.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311594, there is no canonical definition to state claims against.
-/

/-! ## A311594.P3833625145160695763

`A311600(n)-A035544(A212390(n+4))`
-/

namespace A311594.P3833625145160695763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311600 n - A035544 (A212390 (n + 4)).toNat

end

end A311594.P3833625145160695763

/-! ## A311594.P11157927884195573507

`A366533(A110757(n+1))+A311588(A062399(n))`
-/

namespace A311594.P11157927884195573507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A110757 (n + 1)).toNat + A311588 (A062399 n).toNat

end

end A311594.P11157927884195573507

/-! ## A311594.P8986751264427716699

`A312076(A087051(n))-char[9]-char[3]`
-/

namespace A311594.P8986751264427716699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 (A087051 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311594.P8986751264427716699

/-! ## A311594.P14792226505158619262

`record[A312075(n)-A126085(n+1)]-char[3]`
-/

namespace A311594.P14792226505158619262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312075 n - A126085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311594.P14792226505158619262

/-! ## A311594.P10244477285863635903

`A263283(A005248(n)*A111891(n+1))`
-/

namespace A311594.P10244477285863635903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263283 (A005248 n * A111891 (n + 1)).toNat

end

end A311594.P10244477285863635903

/-!
# A311595: Coordination sequence Gal.6.284.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311595, there is no canonical definition to state claims against.
-/

/-! ## A311595.P17643037639848466596

`A311596(n)-A153802(A146876(n+1))`
-/

namespace A311595.P17643037639848466596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 n - A153802 (A146876 (n + 1)).toNat

end

end A311595.P17643037639848466596

/-! ## A311595.P7217492159577983148

`A311596(n)-A010894(A050027(n+1))`
-/

namespace A311595.P7217492159577983148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 n - A010894 ((A050027 (n + 1)).toNat + 21)

end

end A311595.P7217492159577983148

/-! ## A311595.P17939226612799020605

`A311596(n^A146876(n+1))`
-/

namespace A311595.P17939226612799020605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A146876 (n + 1) : ℤ))).toNat

end

end A311595.P17939226612799020605

/-! ## A311595.P10344630236983331024

`A311596(A062399(n))`
-/

namespace A311595.P10344630236983331024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 (A062399 n).toNat

end

end A311595.P10344630236983331024

/-! ## A311595.P2950983103320967726

`A092524(A311596(n))`
-/

namespace A311595.P2950983103320967726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311596 n).toNat

end

end A311595.P2950983103320967726

/-!
# A311596: Coordination sequence Gal.6.270.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311596, there is no canonical definition to state claims against.
-/

/-! ## A311596.P5950547120394897510

`A311595(n)+A153802(A146876(n+1))`
-/

namespace A311596.P5950547120394897510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311595 n + A153802 (A146876 (n + 1)).toNat

end

end A311596.P5950547120394897510

/-! ## A311596.P60220887905696805

`A311595(n)+A010894(A050027(n+1))`
-/

namespace A311596.P60220887905696805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311595 n + A010894 ((A050027 (n + 1)).toNat + 21)

end

end A311596.P60220887905696805

/-! ## A311596.P12257733380875223158

`or(A249093(A098814(n+1)), A311595(n))`
-/

namespace A311596.P12257733380875223158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249093 (A098814 (n + 1)).toNat) (A311595 n)

end

end A311596.P12257733380875223158

/-!
# A311597: Coordination sequence Gal.6.293.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311597, there is no canonical definition to state claims against.
-/

/-! ## A311597.P1475602851645161948

`A311598(n)-A018843(A199909(n+1))`
-/

namespace A311597.P1475602851645161948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 n - A018843 (A199909 (n + 1)).toNat

end

end A311597.P1475602851645161948

/-! ## A311597.P6196247731344279714

`A311598(n-A018843(A013609(n)))`
-/

namespace A311597.P6196247731344279714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 ((n : ℤ) - A018843 (A013609 n).toNat).toNat

end

end A311597.P6196247731344279714

/-! ## A311597.P6070520144729184630

`record[A311598(A319572(n))]`
-/

namespace A311597.P6070520144729184630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 (A319572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311597.P6070520144729184630

/-! ## A311597.P15790757353169989609

`A311598(n^A147056(n+1))`
-/

namespace A311597.P15790757353169989609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A147056 (n + 1) : ℤ))).toNat

end

end A311597.P15790757353169989609

/-! ## A311597.P18165778341243934667

`A311598(n)+A000007(A123106(n))`
-/

namespace A311597.P18165778341243934667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 n + A000007 (A123106 (n + 62)).toNat

end

end A311597.P18165778341243934667

/-!
# A311598: Coordination sequence Gal.6.279.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311598, there is no canonical definition to state claims against.
-/

/-! ## A311598.P11851385736640550215

`A004277(A312081(n))-(2*A312527(n)-A312544(n))`
-/

namespace A311598.P11851385736640550215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312081 n).toNat - (2 * A312527 n - A312544 n)

end

end A311598.P11851385736640550215

/-! ## A311598.P276602221188067267

`2*A312081(n)-A312486(n)`
-/

namespace A311598.P276602221188067267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312081 n - A312486 n

end

end A311598.P276602221188067267

/-! ## A311598.P16079154260499637710

`A004277(A312081(n))-A312486(n)`
-/

namespace A311598.P16079154260499637710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312081 n).toNat - A312486 n

end

end A311598.P16079154260499637710

/-!
# A311599: Coordination sequence Gal.4.69.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311599, there is no canonical definition to state claims against.
-/

/-! ## A311599.P4282483225798423858

`A311601(n)-A028645(A072863(n))`
-/

namespace A311599.P4282483225798423858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n - A028645 (A072863 n).toNat

end

end A311599.P4282483225798423858

/-! ## A311599.P13001076448433914864

`A275964(A275943(n+1))+A008574(n)`
-/

namespace A311599.P13001076448433914864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A275943 (n + 1)).toNat + A008574 n

end

end A311599.P13001076448433914864

/-! ## A311599.P9905437349721250488

`∑[A101432(∑[A006190(n)])]`
-/

namespace A311599.P9905437349721250488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311599.P9905437349721250488

/-! ## A311599.P12257667657738543559

`∑[A101432(∑[A259870(n)])]`
-/

namespace A311599.P12257667657738543559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311599.P12257667657738543559

/-! ## A311599.P14579036093378026396

`A121373(3^n)+A045672(n)`
-/

namespace A311599.P14579036093378026396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (3 ^ n) + A045672 n

end

end A311599.P14579036093378026396

