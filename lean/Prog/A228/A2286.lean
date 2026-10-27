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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A228600: The Szeged index of the n-sunlet graph (n>=3).

The programs for A228600, the canonical program `A228600.P8550128742053175929` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228600 has offset 3).

The definition of A228600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228600.P8550128742053175929

`4*(n+3)*floor((n+3)/2)²+2*(n+3)²-(n+3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228600

/-- `4*(n+3)*floor((n+3)/2)²+2*(n+3)²-(n+3)` -/
def P8550128742053175929.Spec : Prop :=
  ∀ n, P8550128742053175929.a n = A228600 (n + 3)

theorem P8550128742053175929.correct : P8550128742053175929.Spec := by
  intro n
  simp only [A228600, Nat.add_sub_cancel]

end A228600

/-! ## A228600.P11144406626079470272

`(A081348(n+2)+n+2)*(n+3)`
-/

namespace A228600.P11144406626079470272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081348 (n + 2) + (n + 2 : ℤ)) * (n + 3 : ℤ)

end

end A228600.P11144406626079470272

namespace A228600

/-- `(A081348(n+2)+n+2)*(n+3)` -/
def P11144406626079470272.Spec : Prop :=
  ∀ n, P11144406626079470272.a n = A228600 (n + 3)

end A228600

/-! ## A228600.P5784159854260891207

`(n+3)*A128201(A266304(n+3))`
-/

namespace A228600.P5784159854260891207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A128201 (A266304 (n + 3)).toNat

end

end A228600.P5784159854260891207

namespace A228600

/-- `(n+3)*A128201(A266304(n+3))` -/
def P5784159854260891207.Spec : Prop :=
  ∀ n, P5784159854260891207.a n = A228600 (n + 3)

end A228600

/-! ## A228600.P1206354987193026421

`record[A090915(2*n+9)]*(n+3)`
-/

namespace A228600.P1206354987193026421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 3 : ℤ)

end

end A228600.P1206354987193026421

namespace A228600

/-- `record[A090915(2*n+9)]*(n+3)` -/
def P1206354987193026421.Spec : Prop :=
  ∀ n, P1206354987193026421.a n = A228600 (n + 3)

end A228600

/-!
# A228601: Triangle read by rows: T(n,k) is the number of trees with n vertices and having k distinct rootings (1 <= k <= n).

The programs for A228601, there is no canonical definition to state claims against.
-/

/-! ## A228601.P12934039363940196993

`A035214(A072671(n))-A114700(n)`
-/

namespace A228601.P12934039363940196993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A072671 n).toNat - A114700 n

end

end A228601.P12934039363940196993

/-! ## A228601.P11255980583304957663

`A257217(xor(A059939(n+1), A208637(n+1)))`
-/

namespace A228601.P11255980583304957663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (Int.xor (A059939 (n + 1)) (A208637 (n + 1))).toNat

end

end A228601.P11255980583304957663

/-! ## A228601.P4885692230782673261

`A257992(n+2)-A121373(A316430(3*n+2))`
-/

namespace A228601.P4885692230782673261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 2) - A121373 (A316430 (3 * n + 2)).toNat

end

end A228601.P4885692230782673261

/-!
# A228602: a(1) = 17, a(2) = 80, a(n) = 4*(a(n-1) + a(n-2)) for n >= 3.

The programs for A228602, the canonical program `A228602.P14583303198054546538` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228602 has offset 1).

The definition of A228602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(a(n-1)+a(n-2))` (program `A228602.P14583303198054546538`, by `A228602.P14583303198054546538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228602.P14583303198054546538

`4*(a(n-1)+a(n-2))` with `a(0)=17, a(1)=80`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228602

/-- `4*(a(n-1)+a(n-2))` -/
def P14583303198054546538.Spec : Prop :=
  ∀ n, (P14583303198054546538.a n : ℤ) = A228602 (n + 1)

theorem P14583303198054546538.correct : P14583303198054546538.Spec := by
  intro n
  simp only [A228602, Nat.add_sub_cancel]

end A228602

/-! ## A228602.P2412051454038440266

`ogf((17+12x)/(1-4x-4x^2))`
-/

namespace A228602.P2412051454038440266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 12] [1, -4, -4] n

end

end A228602.P2412051454038440266

namespace A228602

/-- `ogf((17+12x)/(1-4x-4x^2))` -/
def P2412051454038440266.Spec : Prop :=
  ∀ n, P2412051454038440266.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P12373796862545957849

`2^n*A221174(n+3)`
-/

namespace A228602.P12373796862545957849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A221174 (n + 3)

end

end A228602.P12373796862545957849

namespace A228602

/-- `2^n*A221174(n+3)` -/
def P12373796862545957849.Spec : Prop :=
  ∀ n, P12373796862545957849.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P10785320923690209755

`Δ[A218989(n)-A057087(n)]`
-/

namespace A228602.P10785320923690209755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218989 n - A057087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228602.P10785320923690209755

namespace A228602

/-- `Δ[A218989(n)-A057087(n)]` -/
def P10785320923690209755.Spec : Prop :=
  ∀ n, P10785320923690209755.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P7655193159340765011

`A106568(n+2)+A094013(n)`
-/

namespace A228602.P7655193159340765011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 (n + 2) + A094013 n

end

end A228602.P7655193159340765011

namespace A228602

/-- `A106568(n+2)+A094013(n)` -/
def P7655193159340765011.Spec : Prop :=
  ∀ n, P7655193159340765011.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P15543152192657866179

`A094013(n+3)+A094013(n)`
-/

namespace A228602.P15543152192657866179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 (n + 3) + A094013 n

end

end A228602.P15543152192657866179

namespace A228602

/-- `A094013(n+3)+A094013(n)` -/
def P15543152192657866179.Spec : Prop :=
  ∀ n, P15543152192657866179.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P4685292152705800141

`A057087(n)+Δ[A057087(n+1)]`
-/

namespace A228602.P4685292152705800141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + (f1 (n + 1) - f1 n)

end

end A228602.P4685292152705800141

namespace A228602

/-- `A057087(n)+Δ[A057087(n+1)]` -/
def P4685292152705800141.Spec : Prop :=
  ∀ n, P4685292152705800141.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P7102331466389894923

`A086347(n+1)+A084128(n+2)`
-/

namespace A228602.P7102331466389894923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 (n + 1) + A084128 (n + 2)

end

end A228602.P7102331466389894923

namespace A228602

/-- `A086347(n+1)+A084128(n+2)` -/
def P7102331466389894923.Spec : Prop :=
  ∀ n, P7102331466389894923.a n = A228602 (n + 1)

end A228602

/-! ## A228602.P2815532317582263135

`A164545(n+1)+A164545(n+1)+A164545(n)`
-/

namespace A228602.P2815532317582263135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164545 (n + 1) + (A164545 (n + 1) + A164545 n)

end

end A228602.P2815532317582263135

namespace A228602

/-- `A164545(n+1)+A164545(n+1)+A164545(n)` -/
def P2815532317582263135.Spec : Prop :=
  ∀ n, P2815532317582263135.a n = A228602 (n + 1)

end A228602

/-!
# A228603: a(1) = 9, a(2) = 44, a(n) = 4*(a(n-1) + a(n-2)) (n >=3).

The programs for A228603, the canonical program `A228603.P13413066796361383782` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228603 has offset 1).

The definition of A228603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(a(n-1)+a(n-2))` (program `A228603.P13413066796361383782`, by `A228603.P13413066796361383782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228603.P13413066796361383782

`4*(a(n-1)+a(n-2))` with `a(0)=9, a(1)=44`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228603

/-- `4*(a(n-1)+a(n-2))` -/
def P13413066796361383782.Spec : Prop :=
  ∀ n, (P13413066796361383782.a n : ℤ) = A228603 (n + 1)

theorem P13413066796361383782.correct : P13413066796361383782.Spec := by
  intro n
  simp only [A228603, Nat.add_sub_cancel]

end A228603

/-! ## A228603.P9543490821780670403

`ogf((9+8x)/(1-4x-4x^2))`
-/

namespace A228603.P9543490821780670403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 8] [1, -4, -4] n

end

end A228603.P9543490821780670403

namespace A228603

/-- `ogf((9+8x)/(1-4x-4x^2))` -/
def P9543490821780670403.Spec : Prop :=
  ∀ n, P9543490821780670403.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P14853483203280773330

`2^n*A048654(n+2)`
-/

namespace A228603.P14853483203280773330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048654 (n + 2)

end

end A228603.P14853483203280773330

namespace A228603

/-- `2^n*A048654(n+2)` -/
def P14853483203280773330.Spec : Prop :=
  ∀ n, P14853483203280773330.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P16078578540554228353

`A218989(n)+A218988(n)`
-/

namespace A228603.P16078578540554228353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218989 n + A218988 n

end

end A228603.P16078578540554228353

namespace A228603

/-- `A218989(n)+A218988(n)` -/
def P16078578540554228353.Spec : Prop :=
  ∀ n, P16078578540554228353.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P10560588552501088442

`A164545(n+1)+A164545(n)`
-/

namespace A228603.P10560588552501088442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164545 (n + 1) + A164545 n

end

end A228603.P10560588552501088442

namespace A228603

/-- `A164545(n+1)+A164545(n)` -/
def P10560588552501088442.Spec : Prop :=
  ∀ n, P10560588552501088442.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P13452137170072106923

`A057087(n)+8*A086347(n)`
-/

namespace A228603.P13452137170072106923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + 8 * A086347 n

end

end A228603.P13452137170072106923

namespace A228603

/-- `A057087(n)+8*A086347(n)` -/
def P13452137170072106923.Spec : Prop :=
  ∀ n, P13452137170072106923.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P697837166347506334

`Δ[A084128(n+1)]-A094013(n)`
-/

namespace A228603.P697837166347506334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094013 n

end

end A228603.P697837166347506334

namespace A228603

/-- `Δ[A084128(n+1)]-A094013(n)` -/
def P697837166347506334.Spec : Prop :=
  ∀ n, P697837166347506334.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P3967089378125202600

`∑[A086347(n)]+2*A218988(n)`
-/

namespace A228603.P3967089378125202600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A218988 n

end

end A228603.P3967089378125202600

namespace A228603

/-- `∑[A086347(n)]+2*A218988(n)` -/
def P3967089378125202600.Spec : Prop :=
  ∀ n, P3967089378125202600.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P1480648153330653288

`2*A218989(n)-∑[A086347(n)]`
-/

namespace A228603.P1480648153330653288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218989 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228603.P1480648153330653288

namespace A228603

/-- `2*A218989(n)-∑[A086347(n)]` -/
def P1480648153330653288.Spec : Prop :=
  ∀ n, P1480648153330653288.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P16164895777423965227

`Δ[A218989(n)/2]-A057087(n)`
-/

namespace A228603.P16164895777423965227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218989 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A057087 n : ℚ)

end

end A228603.P16164895777423965227

namespace A228603

/-- `Δ[A218989(n)/2]-A057087(n)` -/
def P16164895777423965227.Spec : Prop :=
  ∀ n, P16164895777423965227.a n = (A228603 (n + 1) : ℚ)

end A228603

/-! ## A228603.P4555874312506532202

`A086347(n+1)+A057087(n+1)`
-/

namespace A228603.P4555874312506532202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 (n + 1) + A057087 (n + 1)

end

end A228603.P4555874312506532202

namespace A228603

/-- `A086347(n+1)+A057087(n+1)` -/
def P4555874312506532202.Spec : Prop :=
  ∀ n, P4555874312506532202.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P10917025554768056991

`A086347(n+2)-A155117(n+2)`
-/

namespace A228603.P10917025554768056991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 (n + 2) - A155117 (n + 2)

end

end A228603.P10917025554768056991

namespace A228603

/-- `A086347(n+2)-A155117(n+2)` -/
def P10917025554768056991.Spec : Prop :=
  ∀ n, P10917025554768056991.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P1788155804138152226

`A048654(n+2)*A077957(2*n)`
-/

namespace A228603.P1788155804138152226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A077957 (2 * n)

end

end A228603.P1788155804138152226

namespace A228603

/-- `A048654(n+2)*A077957(2*n)` -/
def P1788155804138152226.Spec : Prop :=
  ∀ n, P1788155804138152226.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P7602699369234980409

`A048654(n+2)*A143095(2*n)`
-/

namespace A228603.P7602699369234980409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A143095 (2 * n)

end

end A228603.P7602699369234980409

namespace A228603

/-- `A048654(n+2)*A143095(2*n)` -/
def P7602699369234980409.Spec : Prop :=
  ∀ n, P7602699369234980409.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P10919147419477278039

`A048654(n+2)*A074323(2*n+1)`
-/

namespace A228603.P10919147419477278039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A074323 (2 * n + 1)

end

end A228603.P10919147419477278039

namespace A228603

/-- `A048654(n+2)*A074323(2*n+1)` -/
def P10919147419477278039.Spec : Prop :=
  ∀ n, P10919147419477278039.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P3221852214216372239

`A048654(n+2)*A135530(2*n+1)`
-/

namespace A228603.P3221852214216372239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A135530 (2 * n + 1)

end

end A228603.P3221852214216372239

namespace A228603

/-- `A048654(n+2)*A135530(2*n+1)` -/
def P3221852214216372239.Spec : Prop :=
  ∀ n, P3221852214216372239.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P16917169367858709602

`A048654(n+2)*A163864(2*n+1)`
-/

namespace A228603.P16917169367858709602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A163864 (2 * n + 1)

end

end A228603.P16917169367858709602

namespace A228603

/-- `A048654(n+2)*A163864(2*n+1)` -/
def P16917169367858709602.Spec : Prop :=
  ∀ n, P16917169367858709602.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P5012050127251529927

`A048654(n+2)*A164073(2*n+1)`
-/

namespace A228603.P5012050127251529927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A164073 (2 * n + 1)

end

end A228603.P5012050127251529927

namespace A228603

/-- `A048654(n+2)*A164073(2*n+1)` -/
def P5012050127251529927.Spec : Prop :=
  ∀ n, P5012050127251529927.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P12933508324375850485

`A048654(n+2)*A164587(2*n+1)`
-/

namespace A228603.P12933508324375850485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 2) * A164587 (2 * n + 1)

end

end A228603.P12933508324375850485

namespace A228603

/-- `A048654(n+2)*A164587(2*n+1)` -/
def P12933508324375850485.Spec : Prop :=
  ∀ n, P12933508324375850485.a n = A228603 (n + 1)

end A228603

/-! ## A228603.P4030939697754515531

`A057087(n+1)+A057087(n+1)+A057087(n)`
-/

namespace A228603.P4030939697754515531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1) + (A057087 (n + 1) + A057087 n)

end

end A228603.P4030939697754515531

namespace A228603

/-- `A057087(n+1)+A057087(n+1)+A057087(n)` -/
def P4030939697754515531.Spec : Prop :=
  ∀ n, P4030939697754515531.a n = A228603 (n + 1)

end A228603

/-!
# A228604: The Merrifield-Simmons index of the ortho-polyphenylene chain of length n.

The programs for A228604, the canonical program `A228604.P4647233740390380795` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228604 has offset 0).

The definition of A228604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228604.P4647233740390380795

`18*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228604

/-- `18*a(n-1)-25*a(n-2)` -/
def P4647233740390380795.Spec : Prop :=
  ∀ n, P4647233740390380795.a n = A228604 n

theorem P4647233740390380795.correct : P4647233740390380795.Spec := by
  intro n
  simp only [A228604]

end A228604

/-! ## A228604.P5597970572643254777

`((9+2*sqrt(14))^(n+1)-(9-2*sqrt(14))^(n+1))/(4*sqrt(14))`
-/

namespace A228604.P5597970572643254777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + 2 * Real.sqrt (14 : ℝ)) ^ (n + 1) - (9 - 2 * Real.sqrt (14 : ℝ)) ^ (n + 1)) / (4 * Real.sqrt (14 : ℝ))

end

end A228604.P5597970572643254777

namespace A228604

/-- `((9+2*sqrt(14))^(n+1)-(9-2*sqrt(14))^(n+1))/(4*sqrt(14))` -/
def P5597970572643254777.Spec : Prop :=
  ∀ n, P5597970572643254777.a n = (A228604 n : ℝ)

theorem P5597970572643254777.correct : P5597970572643254777.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A228604, Nat.add_sub_cancel, A228604.P5597970572643254777.a, A228604.P4647233740390380795.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A228604, Nat.add_sub_cancel, A228604.P5597970572643254777.a, A228604.P4647233740390380795.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A228604

/-! ## A228604.P3777499099785933779

`ogf(1/(1-18x+25x^2))`
-/

namespace A228604.P3777499099785933779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -18, 25] n

end

end A228604.P3777499099785933779

namespace A228604

/-- `ogf(1/(1-18x+25x^2))` -/
def P3777499099785933779.Spec : Prop :=
  ∀ n, P3777499099785933779.a n = A228604 n

end A228604

/-! ## A228604.P6192958550624157033

`ceil(A180226(2*n+3)/A171449(n+2))`
-/

namespace A228604.P6192958550624157033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180226 (2 * n + 3) : ℚ) / (A171449 (n + 2) : ℚ)⌉

end

end A228604.P6192958550624157033

namespace A228604

/-- `ceil(A180226(2*n+3)/A171449(n+2))` -/
def P6192958550624157033.Spec : Prop :=
  ∀ n, P6192958550624157033.a n = A228604 n

end A228604

/-!
# A228605: The Merrifield-Simmons index of the meta-polyphenylene chain of length n.

The programs for A228605, there is no canonical definition to state claims against.
-/

/-! ## A228605.P11628813409591740260

`ogf((1+2x)/(1-16x-11x^2))`
-/

namespace A228605.P11628813409591740260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -16, -11] n

end

end A228605.P11628813409591740260

/-!
# A228606: The Merrifield-Simmons index of the para-polyphenylene chain of length n.

The programs for A228606, there is no canonical definition to state claims against.
-/

/-! ## A228606.P3758438162141857832

`ogf((1+x)/(1-17x+7x^2))`
-/

namespace A228606.P3758438162141857832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -17, 7] n

end

end A228606.P3758438162141857832

/-!
# A228608: E.g.f. A(x) satisfies: A'(x) = A(x)^2 + A(x)^4.

The programs for A228608, there is no canonical definition to state claims against.
-/

/-! ## A228608.P9242271000530823080

`floor(A216345((2*n+1)^n)/(n+1))`
-/

namespace A228608.P9242271000530823080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216345 ((2 * n + 1) ^ n) : ℚ) / (n + 1 : ℚ)⌋

end

end A228608.P9242271000530823080

/-!
# A228609: Partial sums of the cubes of the tribonacci sequence A000073.

The programs for A228609, the canonical program `A228609.P4169035835724740144` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228609 has offset 0).

The definition of A228609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228609.P4169035835724740144

`∑[∑[A001590(n)]^3]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228609

/-- `∑[∑[A001590(n)]^3]` -/
def P4169035835724740144.Spec : Prop :=
  ∀ n, P4169035835724740144.a n = A228609 n

theorem P4169035835724740144.correct : P4169035835724740144.Spec := by
  intro n
  simp only [A228609]

end A228609

/-! ## A228609.P13286163075774658977

`∑[A000073(n+1)^3]`
-/

namespace A228609.P13286163075774658977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P13286163075774658977

namespace A228609

/-- `∑[A000073(n+1)^3]` -/
def P13286163075774658977.Spec : Prop :=
  ∀ n, P13286163075774658977.a n = A228609 n

end A228609

/-! ## A228609.P16684127338028298372

`∑[sqrt(A085697(n+1))^3]`
-/

namespace A228609.P16684127338028298372
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085697 (n + 1) : ℝ) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P16684127338028298372

namespace A228609

/-- `∑[sqrt(A085697(n+1))^3]` -/
def P16684127338028298372.Spec : Prop :=
  ∀ n, P16684127338028298372.a n = (A228609 n : ℝ)

end A228609

/-! ## A228609.P18421009789093198130

`∑[Δ[A000213(n+1)/2]^3]`
-/

namespace A228609.P18421009789093198130
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P18421009789093198130

namespace A228609

/-- `∑[Δ[A000213(n+1)/2]^3]` -/
def P18421009789093198130.Spec : Prop :=
  ∀ n, P18421009789093198130.a n = (A228609 n : ℚ)

end A228609

/-! ## A228609.P3593754699498297611

`∑[(A214830(n)-A214829(n))^3]`
-/

namespace A228609.P3593754699498297611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214830 n - A214829 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P3593754699498297611

namespace A228609

/-- `∑[(A214830(n)-A214829(n))^3]` -/
def P3593754699498297611.Spec : Prop :=
  ∀ n, P3593754699498297611.a n = A228609 n

end A228609

/-! ## A228609.P11626209624929000058

`∑[(A008937(n+1)-A202012(n))^3]`
-/

namespace A228609.P11626209624929000058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008937 (n + 1) - A202012 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P11626209624929000058

namespace A228609

/-- `∑[(A008937(n+1)-A202012(n))^3]` -/
def P11626209624929000058.Spec : Prop :=
  ∀ n, P11626209624929000058.a n = A228609 n

end A228609

/-!
# A228611: Primes p such that the largest consecutive pair of p-smooth integers is the same as the largest consecutive pair of (p-1)-smooth integers.

The programs for A228611, there is no canonical definition to state claims against.
-/

/-! ## A228611.P2848155018030330726

`A000040(∑[8*a(n-2)-a(n-4)]-1)` with `a(0)=10, a(1)=10, a(2)=4, a(3)=1, a(4)=1, a(5)=1, a(6)=9, a(7)=8`
-/

namespace A228611.P2848155018030330726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 10, 4, 1, 1, 1, 9, 8] fun n f1 =>
  8 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A228611.P2848155018030330726

/-!
# A228612: Number of (possibly overlapping) occurrences of the subword given by the binary expansion of n in all binary words of length n.

The programs for A228612, the canonical program `A228612.P17782648961987571171` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228612 has offset 0).

The definition of A228612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228612.P17782648961987571171

`A001787(1-A070939(n)+n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228612

/-- `A001787(1-A070939(n)+n)` -/
def P17782648961987571171.Spec : Prop :=
  ∀ n, P17782648961987571171.a n = A228612 n

theorem P17782648961987571171.correct : P17782648961987571171.Spec := by
  intro n
  simp only [A228612]

end A228612

/-! ## A228612.P12060749686877374329

`A001787(1-(A070939(n)-n))`
-/

namespace A228612.P12060749686877374329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (1 - (A070939 n - (n : ℤ))).toNat

end

end A228612.P12060749686877374329

namespace A228612

/-- `A001787(1-(A070939(n)-n))` -/
def P12060749686877374329.Spec : Prop :=
  ∀ n, P12060749686877374329.a n = A228612 n

theorem P12060749686877374329.correct : P12060749686877374329.Spec := by
  intro n
  simp only [A228612, Nat.add_sub_cancel, A228612.P12060749686877374329.a, A228612.P17782648961987571171.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A228612

/-! ## A228612.P16235631433744235172

`A139756(n+2-A070939(n))`
-/

namespace A228612.P16235631433744235172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 ((n + 2 : ℤ) - A070939 n).toNat

end

end A228612.P16235631433744235172

namespace A228612

/-- `A139756(n+2-A070939(n))` -/
def P16235631433744235172.Spec : Prop :=
  ∀ n, P16235631433744235172.a n = A228612 n

end A228612

/-! ## A228612.P14647249874533751491

`A001787(n-∑[char[A000079(n+1)]])`
-/

namespace A228612.P14647249874533751491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228612.P14647249874533751491

namespace A228612

/-- `A001787(n-∑[char[A000079(n+1)]])` -/
def P14647249874533751491.Spec : Prop :=
  ∀ n, P14647249874533751491.a n = A228612 n

end A228612

/-! ## A228612.P12533158447135419908

`A001787(A182220(n+1))%∑[A000108(n)]`
-/

namespace A228612.P12533158447135419908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 (A182220 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228612.P12533158447135419908

namespace A228612

/-- `A001787(A182220(n+1))%∑[A000108(n)]` -/
def P12533158447135419908.Spec : Prop :=
  ∀ n, P12533158447135419908.a n = A228612 n

end A228612

/-! ## A228612.P13642747738943355948

`A001787(A182220(n+1)%A034856(n+1))`
-/

namespace A228612.P13642747738943355948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (Int.tmod (A182220 (n + 1)) (A034856 (n + 1))).toNat

end

end A228612.P13642747738943355948

namespace A228612

/-- `A001787(A182220(n+1)%A034856(n+1))` -/
def P13642747738943355948.Spec : Prop :=
  ∀ n, P13642747738943355948.a n = A228612 n

end A228612

/-! ## A228612.P13219273178832902460

`A001787(A182220(n+1)-A001787(n+1)%2)`
-/

namespace A228612.P13219273178832902460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A182220 (n + 1) - Int.tmod (A001787 (n + 1)) 2).toNat

end

end A228612.P13219273178832902460

namespace A228612

/-- `A001787(A182220(n+1)-A001787(n+1)%2)` -/
def P13219273178832902460.Spec : Prop :=
  ∀ n, P13219273178832902460.a n = A228612 n

end A228612

/-!
# A228614: Number of permutations of [n] having a shortest ascending run of length one.

The programs for A228614, there is no canonical definition to state claims against.
-/

/-! ## A228614.P10855788776639019938

`A000142(n)-A097899(n)`
-/

namespace A228614.P10855788776639019938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A097899 n

end

end A228614.P10855788776639019938

/-! ## A228614.P17560542249891789371

`abs(A133942(n))-A097899(n)`
-/

namespace A228614.P17560542249891789371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A097899 n

end

end A228614.P17560542249891789371

/-! ## A228614.P2410844787422729165

`∏[A028310(n)]-A097899(n)`
-/

namespace A228614.P2410844787422729165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A097899 n

end

end A228614.P2410844787422729165

/-! ## A228614.P15646102128534085106

`A028421(A000217(n))-A097899(n)`
-/

namespace A228614.P15646102128534085106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A097899 n

end

end A228614.P15646102128534085106

/-! ## A228614.P17494108041620529448

`A000142(n)-(A186735(n)+A185652(n))`
-/

namespace A228614.P17494108041620529448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A186735 n + A185652 n)

end

end A228614.P17494108041620529448

/-!
# A228618: Sum of lengths of shortest runs with the same value over all s in {1,...,n}^n.

The programs for A228618, there is no canonical definition to state claims against.
-/

/-! ## A228618.P16909081650563486184

`A228640(n)+A003285(A089539(n+1))`
-/

namespace A228618.P16909081650563486184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228640 n + A003285 (A089539 (n + 1)).toNat

end

end A228618.P16909081650563486184

/-! ## A228618.P9876987055145418689

`n*A332275(A001970(n))`
-/

namespace A228618.P9876987055145418689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A332275 (A001970 n).toNat

end

end A228618.P9876987055145418689

/-!
# A228619: Number of s in {1,...,n}^n having shortest run with the same value of length one.

The programs for A228619, there is no canonical definition to state claims against.
-/

/-! ## A228619.P3818197328454160533

`A228617(∑[n]+1)`
-/

namespace A228619.P3818197328454160533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228619.P3818197328454160533

/-! ## A228619.P6075639012701432463

`record[A228617(n+1)]`
-/

namespace A228619.P6075639012701432463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P6075639012701432463

/-! ## A228619.P9024792000971774518

`lcm(n, A228617(A000124(n)))`
-/

namespace A228619.P9024792000971774518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A228617 (A000124 n).toNat)

end

end A228619.P9024792000971774518

/-! ## A228619.P11659361384462142246

`record[Δ[A228617(A028310(n))]]`
-/

namespace A228619.P11659361384462142246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P11659361384462142246

/-! ## A228619.P17862624388977817082

`record[Δ[A228617(A057353(n))]]`
-/

namespace A228619.P17862624388977817082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A057353 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P17862624388977817082

/-! ## A228619.P1145091643099424097

`record[A053616(n)*A228617(n)]`
-/

namespace A228619.P1145091643099424097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n * A228617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P1145091643099424097

/-! ## A228619.P17742165802472283793

`record[A228617(n)-A228617(A053616(n)²)]`
-/

namespace A228619.P17742165802472283793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 n - A228617 (A053616 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P17742165802472283793

/-! ## A228619.P11465576283189205290

`record[n*A228617(n)/A028310(n)]`
-/

namespace A228619.P11465576283189205290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A228617 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P11465576283189205290

/-! ## A228619.P7508472991856839226

`record[A228617(n)%A109767(n)]`
-/

namespace A228619.P7508472991856839226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228617 n) (A109767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228619.P7508472991856839226

/-!
# A228620: a(n) = n - phi(n) + mu(n).

The programs for A228620, the canonical program `A228620.P18425281222964885815` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228620 has offset 1).

The definition of A228620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A000010(n+1)+A008683(n+1)` (program `A228620.P18425281222964885815`, by `A228620.P18425281222964885815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228620.P989371433888516900

`A051953(n+1)+A008683(n+1)`
-/

namespace A228620.P989371433888516900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A008683 (n + 1)

end

end A228620.P989371433888516900

namespace A228620

/-- `A051953(n+1)+A008683(n+1)` -/
def P989371433888516900.Spec : Prop :=
  ∀ n, P989371433888516900.a n = A228620 (n + 1)

end A228620

/-! ## A228620.P8183597248435633258

`A076369(n+1)-A000010(n+1)`
-/

namespace A228620.P8183597248435633258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - A000010 (n + 1)

end

end A228620.P8183597248435633258

namespace A228620

/-- `A076369(n+1)-A000010(n+1)` -/
def P8183597248435633258.Spec : Prop :=
  ∀ n, P8183597248435633258.a n = A228620 (n + 1)

theorem P8183597248435633258.correct : P8183597248435633258.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P8183597248435633258.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A076369, A076369.P8196715672845264258.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P18425281222964885815

`n+1-A000010(n+1)+A008683(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228620

/-- `n+1-A000010(n+1)+A008683(n+1)` -/
def P18425281222964885815.Spec : Prop :=
  ∀ n, P18425281222964885815.a n = A228620 (n + 1)

theorem P18425281222964885815.correct : P18425281222964885815.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel]

end A228620

/-! ## A228620.P15064328369231112274

`1-A053139(n+1)+n`
-/

namespace A228620.P15064328369231112274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053139 (n + 1) + (n : ℤ)

end

end A228620.P15064328369231112274

namespace A228620

/-- `1-A053139(n+1)+n` -/
def P15064328369231112274.Spec : Prop :=
  ∀ n, P15064328369231112274.a n = A228620 (n + 1)

theorem P15064328369231112274.correct : P15064328369231112274.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P15064328369231112274.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053139, A053139.P14434493847918876096.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P2494445887607768608

`A219428(n+1)+A007423(n+1)`
-/

namespace A228620.P2494445887607768608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A007423 (n + 1)

end

end A228620.P2494445887607768608

namespace A228620

/-- `A219428(n+1)+A007423(n+1)` -/
def P2494445887607768608.Spec : Prop :=
  ∀ n, P2494445887607768608.a n = A228620 (n + 1)

theorem P2494445887607768608.correct : P2494445887607768608.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P2494445887607768608.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P13729934146583638508

`A249767(n+1)+A057860(n+1)`
-/

namespace A228620.P13729934146583638508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249767 (n + 1) + A057860 (n + 1)

end

end A228620.P13729934146583638508

namespace A228620

/-- `A249767(n+1)+A057860(n+1)` -/
def P13729934146583638508.Spec : Prop :=
  ∀ n, P13729934146583638508.a n = A228620 (n + 1)

theorem P13729934146583638508.correct : P13729934146583638508.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P13729934146583638508.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A057860, A057860.P15781516878484293447.a, A249767, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P14967268494596323269

`A249904(n+1)-A051709(n+1)`
-/

namespace A228620.P14967268494596323269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249904 (n + 1) - A051709 (n + 1)

end

end A228620.P14967268494596323269

namespace A228620

/-- `A249904(n+1)-A051709(n+1)` -/
def P14967268494596323269.Spec : Prop :=
  ∀ n, P14967268494596323269.a n = A228620 (n + 1)

theorem P14967268494596323269.correct : P14967268494596323269.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P14967268494596323269.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051709, A051709.P8066883811744733228.a, A249904, A249904.P16116295632790744900.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P12421625445893513168

`A008683(n+1)+A219428(n+1)+1`
-/

namespace A228620.P12421625445893513168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A219428 (n + 1) + 1)

end

end A228620.P12421625445893513168

namespace A228620

/-- `A008683(n+1)+A219428(n+1)+1` -/
def P12421625445893513168.Spec : Prop :=
  ∀ n, P12421625445893513168.a n = A228620 (n + 1)

theorem P12421625445893513168.correct : P12421625445893513168.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P12421625445893513168.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P9079989516311175221

`A007423(n+1)-A000010(n+1)+n`
-/

namespace A228620.P9079989516311175221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - A000010 (n + 1) + (n : ℤ)

end

end A228620.P9079989516311175221

namespace A228620

/-- `A007423(n+1)-A000010(n+1)+n` -/
def P9079989516311175221.Spec : Prop :=
  ∀ n, P9079989516311175221.a n = A228620 (n + 1)

theorem P9079989516311175221.correct : P9079989516311175221.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P9079989516311175221.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P16644935926186919562

`A008683(n+1)-A109606(n+1)+n`
-/

namespace A228620.P16644935926186919562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A109606 (n + 1) + (n : ℤ)

end

end A228620.P16644935926186919562

namespace A228620

/-- `A008683(n+1)-A109606(n+1)+n` -/
def P16644935926186919562.Spec : Prop :=
  ∀ n, P16644935926186919562.a n = A228620 (n + 1)

theorem P16644935926186919562.correct : P16644935926186919562.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P16644935926186919562.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P3872549460109189739

`A008683(n+1)+n+2-A039649(n+1)`
-/

namespace A228620.P3872549460109189739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n + 2 : ℤ) - A039649 (n + 1)

end

end A228620.P3872549460109189739

namespace A228620

/-- `A008683(n+1)+n+2-A039649(n+1)` -/
def P3872549460109189739.Spec : Prop :=
  ∀ n, P3872549460109189739.a n = A228620 (n + 1)

theorem P3872549460109189739.correct : P3872549460109189739.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P3872549460109189739.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P17076010507454225690

`A162512(n+1)%2-A109606(n+1)+n`
-/

namespace A228620.P17076010507454225690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 - A109606 (n + 1) + (n : ℤ)

end

end A228620.P17076010507454225690

namespace A228620

/-- `A162512(n+1)%2-A109606(n+1)+n` -/
def P17076010507454225690.Spec : Prop :=
  ∀ n, P17076010507454225690.a n = A228620 (n + 1)

end A228620

/-! ## A228620.P16280489640381629444

`∑{d}[n+1, A008683(#)*A173455((n+1)/#)]`
-/

namespace A228620.P16280489640381629444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A173455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228620.P16280489640381629444

namespace A228620

/-- `∑{d}[n+1, A008683(#)*A173455((n+1)/#)]` -/
def P16280489640381629444.Spec : Prop :=
  ∀ n, P16280489640381629444.a n = A228620 (n + 1)

end A228620

/-! ## A228620.P1311832400196272309

`A008683(n+1)+A297159(n+1)+A051709(n+1)`
-/

namespace A228620.P1311832400196272309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A297159 (n + 1) + A051709 (n + 1))

end

end A228620.P1311832400196272309

namespace A228620

/-- `A008683(n+1)+A297159(n+1)+A051709(n+1)` -/
def P1311832400196272309.Spec : Prop :=
  ∀ n, P1311832400196272309.a n = A228620 (n + 1)

theorem P1311832400196272309.correct : P1311832400196272309.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P1311832400196272309.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051709, A051709.P8066883811744733228.a, A297159, A297159.P13683911670693545293.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P2149346941534527082

`A008683(n+1)+A300824(n+1)+A300823(n+1)`
-/

namespace A228620.P2149346941534527082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A300824 (n + 1) + A300823 (n + 1))

end

end A228620.P2149346941534527082

namespace A228620

/-- `A008683(n+1)+A300824(n+1)+A300823(n+1)` -/
def P2149346941534527082.Spec : Prop :=
  ∀ n, P2149346941534527082.a n = A228620 (n + 1)

theorem P2149346941534527082.correct : P2149346941534527082.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P2149346941534527082.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300823, A300823.P4910350933719634808.a, A300824, A300824.P10710037846175937081.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300222, A300222.P16406266268068730929.a, A300822, A300822.P15035204779735603999.f1, A300822.P15035204779735603999.a, A005836, A005836.P12367569128854000442.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P14671181797764681328

`A001065(n+1)+A008683(n+1)-A051709(n+1)`
-/

namespace A228620.P14671181797764681328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A008683 (n + 1) - A051709 (n + 1))

end

end A228620.P14671181797764681328

namespace A228620

/-- `A001065(n+1)+A008683(n+1)-A051709(n+1)` -/
def P14671181797764681328.Spec : Prop :=
  ∀ n, P14671181797764681328.a n = A228620 (n + 1)

theorem P14671181797764681328.correct : P14671181797764681328.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P14671181797764681328.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051709, A051709.P8066883811744733228.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P5562898476092373236

`A003415(n+1)+A008683(n+1)-A344178(n+1)`
-/

namespace A228620.P5562898476092373236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A008683 (n + 1) - A344178 (n + 1))

end

end A228620.P5562898476092373236

namespace A228620

/-- `A003415(n+1)+A008683(n+1)-A344178(n+1)` -/
def P5562898476092373236.Spec : Prop :=
  ∀ n, P5562898476092373236.a n = A228620 (n + 1)

theorem P5562898476092373236.correct : P5562898476092373236.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P5562898476092373236.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A344178, A344178.P7382453285315687724.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P14525845284822101234

`A008683(n+1)+A351561(n+1)-A000005(n+1)`
-/

namespace A228620.P14525845284822101234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A351561 (n + 1) - A000005 (n + 1))

end

end A228620.P14525845284822101234

namespace A228620

/-- `A008683(n+1)+A351561(n+1)-A000005(n+1)` -/
def P14525845284822101234.Spec : Prop :=
  ∀ n, P14525845284822101234.a n = A228620 (n + 1)

theorem P14525845284822101234.correct : P14525845284822101234.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P14525845284822101234.a, A228620.P18425281222964885815.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A351561, A351561.P9711075868512573755.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P7601783440373963507

`A008683(n+1)+A297117(n+1)-A297114(n+1)`
-/

namespace A228620.P7601783440373963507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A297117 (n + 1) - A297114 (n + 1))

end

end A228620.P7601783440373963507

namespace A228620

/-- `A008683(n+1)+A297117(n+1)-A297114(n+1)` -/
def P7601783440373963507.Spec : Prop :=
  ∀ n, P7601783440373963507.a n = A228620 (n + 1)

theorem P7601783440373963507.correct : P7601783440373963507.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P7601783440373963507.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A297114, A297114.P2765220314566008295.a, A297117, A297117.P14003803636479694355.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A297111, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-! ## A228620.P14456376095557945275

`A008683(n+1)+A318325(n+1)-A318326(n+1)`
-/

namespace A228620.P14456376095557945275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A318325 (n + 1) - A318326 (n + 1))

end

end A228620.P14456376095557945275

namespace A228620

/-- `A008683(n+1)+A318325(n+1)-A318326(n+1)` -/
def P14456376095557945275.Spec : Prop :=
  ∀ n, P14456376095557945275.a n = A228620 (n + 1)

theorem P14456376095557945275.correct : P14456376095557945275.Spec := by
  intro n
  simp only [A228620, Nat.add_sub_cancel, A228620.P14456376095557945275.a, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A057427, A057427.P3058147525557661423.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228620

/-!
# A228621: Number of s in {1,...,n}^n having shortest run with the same value of length 2.

The programs for A228621, there is no canonical definition to state claims against.
-/

/-! ## A228621.P14781583011296871808

`A228617(∑[n+2]+3)`
-/

namespace A228621.P14781583011296871808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A228621.P14781583011296871808

/-! ## A228621.P11834411298477503985

`A228617(A133263(n+2))+A151668(3*n+2)`
-/

namespace A228621.P11834411298477503985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A133263 (n + 2)).toNat + A151668 (3 * n + 2)

end

end A228621.P11834411298477503985

/-! ## A228621.P11713792111952705728

`A228617(A133263(n+2))+A025461(A000120(n))`
-/

namespace A228621.P11713792111952705728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A133263 (n + 2)).toNat + A025461 (A000120 n).toNat

end

end A228621.P11713792111952705728

/-! ## A228621.P15546537988613020559

`A228617(A133263(n+2))+A025461(A025461(n))`
-/

namespace A228621.P15546537988613020559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A133263 (n + 2)).toNat + A025461 (A025461 n).toNat

end

end A228621.P15546537988613020559

/-! ## A228621.P13869753375066165302

`A228617(A133263(n+2))+A003982(A130689(n))`
-/

namespace A228621.P13869753375066165302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A133263 (n + 2)).toNat + A003982 (A130689 n).toNat

end

end A228621.P13869753375066165302

/-! ## A228621.P3821930105711780347

`A001055(A262369(n+1))*A228617(A133263(n+2))`
-/

namespace A228621.P3821930105711780347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A262369 (n + 1)).toNat * A228617 (A133263 (n + 2)).toNat

end

end A228621.P3821930105711780347

/-! ## A228621.P7496500564692902888

`A001055(A053001(n+2))*A228617(A133263(n+2))`
-/

namespace A228621.P7496500564692902888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A053001 (n + 2)).toNat * A228617 (A133263 (n + 2)).toNat

end

end A228621.P7496500564692902888

/-!
# A228622: Number of s in {1,...,n}^n having shortest run with the same value of length 3.

The programs for A228622, there is no canonical definition to state claims against.
-/

/-! ## A228622.P17335832077467217600

`A228617(A167614(n+2))`
-/

namespace A228622.P17335832077467217600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A167614 (n + 2)).toNat

end

end A228622.P17335832077467217600

/-! ## A228622.P7887422492232678817

`A228617(A052905(n)+8)`
-/

namespace A228622.P7887422492232678817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A052905 n + 8).toNat

end

end A228622.P7887422492232678817

/-! ## A228622.P16663246036787804542

`A228617(A055999(n)+9)`
-/

namespace A228622.P16663246036787804542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A055999 n + 9).toNat

end

end A228622.P16663246036787804542

/-! ## A228622.P4400442982706529015

`A228617(eq[3, A002262(n)])`
-/

namespace A228622.P4400442982706529015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228622.P4400442982706529015

/-! ## A228622.P5054859132708156210

`A228617(eq[4, A166918(n)])`
-/

namespace A228622.P5054859132708156210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228622.P5054859132708156210

/-! ## A228622.P788580725742879429

`A228617(eq[8, A059268(n)])`
-/

namespace A228622.P788580725742879429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228622.P788580725742879429

/-! ## A228622.P7535924587794154855

`A228617(A166136(n+2)-3)`
-/

namespace A228622.P7535924587794154855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A166136 (n + 2) - 3).toNat

end

end A228622.P7535924587794154855

/-! ## A228622.P439630726473681217

`A228617(eq[4, A002260(n+1)])`
-/

namespace A228622.P439630726473681217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228622.P439630726473681217

/-! ## A228622.P8013836730108375184

`A228617(eq[1, A144328(n+1)-2])`
-/

namespace A228622.P8013836730108375184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228622.P8013836730108375184

/-!
# A228624: Determinant of the n X n matrix with (i,j)-entry equal to 1 or 0 according as i + j is a square or not.

The programs for A228624, there is no canonical definition to state claims against.
-/

/-! ## A228624.P15853055870723535763

`A244895(A022559(n)*A078471(2*n+1))`
-/

namespace A228624.P15853055870723535763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A022559 n * A078471 (2 * n + 1)).toNat

end

end A228624.P15853055870723535763

/-! ## A228624.P2054779418202222468

`A008683(A137756(n+1)+A027340(3*n+2))`
-/

namespace A228624.P2054779418202222468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A137756 (n + 1) + A027340 (3 * n + 2)).toNat

end

end A228624.P2054779418202222468

/-! ## A228624.P1614995098468640671

`char[and(n, n+1)+n]-A051731(A126343(n+1))`
-/

namespace A228624.P1614995098468640671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A051731 (A126343 (n + 1)).toNat

end

end A228624.P1614995098468640671

/-! ## A228624.P2723697888853441710

`A166698(A216274(n)+A048578(n))`
-/

namespace A228624.P2723697888853441710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A216274 n + A048578 n).toNat

end

end A228624.P2723697888853441710

/-! ## A228624.P15964777967823479357

`A054354(A357057(2*n+5)-A054354(3*n+1))`
-/

namespace A228624.P15964777967823479357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A357057 (2 * n + 5) - A054354 (3 * n + 1)).toNat

end

end A228624.P15964777967823479357

/-!
# A228625: Primes of the form abcabc..abca.

The programs for A228625, there is no canonical definition to state claims against.
-/

/-! ## A228625.P16327793609946327710

`A000015(p?[A082461(n+1)])`
-/

namespace A228625.P16327793609946327710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P16327793609946327710

/-! ## A228625.P7793907570690986355

`A000026(p?[A082461(n+1)])`
-/

namespace A228625.P7793907570690986355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P7793907570690986355

/-! ## A228625.P17458348996959425006

`A002034(p?[A082461(n+1)])`
-/

namespace A228625.P17458348996959425006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P17458348996959425006

/-! ## A228625.P10673632960064581153

`A002374(p?[A082461(n+1)])`
-/

namespace A228625.P10673632960064581153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P10673632960064581153

/-! ## A228625.P5192872004903587763

`A004151(p?[A082461(n+1)])`
-/

namespace A228625.P5192872004903587763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P5192872004903587763

/-! ## A228625.P5954891718391249623

`A007917(p?[A082461(n+1)])`
-/

namespace A228625.P5954891718391249623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P5954891718391249623

/-! ## A228625.P7044494781255336851

`A007918(p?[A082461(n+1)])`
-/

namespace A228625.P7044494781255336851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P7044494781255336851

/-! ## A228625.P6898802377009904903

`A007948(p?[A082461(n+1)])`
-/

namespace A228625.P6898802377009904903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P6898802377009904903

/-! ## A228625.P10941631930610502976

`A019530(p?[A082461(n+1)])`
-/

namespace A228625.P10941631930610502976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P10941631930610502976

/-! ## A228625.P3070959654617892472

`A019555(p?[A082461(n+1)])`
-/

namespace A228625.P3070959654617892472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P3070959654617892472

/-! ## A228625.P6014542970356405971

`A022998(p?[A082461(n+1)])`
-/

namespace A228625.P6014542970356405971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P6014542970356405971

/-! ## A228625.P35264718720466774

`A026741(p?[A082461(n+1)])`
-/

namespace A228625.P35264718720466774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P35264718720466774

/-! ## A228625.P13750361601227758382

`A039649(p?[A082461(n+1)])`
-/

namespace A228625.P13750361601227758382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228625.P13750361601227758382

/-! ## A228625.P5449896622140297500

`record[A002034(A082461(n+3))]`
-/

namespace A228625.P5449896622140297500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A082461 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228625.P5449896622140297500

/-! ## A228625.P16884556538580109316

`filter[A082461(n+1), A080339(#)]`
-/

namespace A228625.P16884556538580109316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A228625.P16884556538580109316

/-! ## A228625.P13962237759423207834

`filter[A082461(n+1), A080545(#)]`
-/

namespace A228625.P13962237759423207834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A228625.P13962237759423207834

/-! ## A228625.P6968614219458618104

`filter[A082461(n+1), A171387(#)]`
-/

namespace A228625.P6968614219458618104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A228625.P6968614219458618104

/-! ## A228625.P11218630916687572666

`abs(A001489(p?[A082461(n+1)]))`
-/

namespace A228625.P11218630916687572666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A228625.P11218630916687572666

/-! ## A228625.P14839954564833570799

`A000593(p?[A082461(n+1)])-1`
-/

namespace A228625.P14839954564833570799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A228625.P14839954564833570799

/-! ## A228625.P12085576716520695842

`A001615(p?[A082461(n+1)])-1`
-/

namespace A228625.P12085576716520695842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A228625.P12085576716520695842

/-!
# A228626: Number of Hamiltonian cycles in the undirected simple graph G_n with vertices 1,...,n which has an edge connecting vertices i and j if and only if |i-j| is prime.

The programs for A228626, there is no canonical definition to state claims against.
-/

/-! ## A228626.P18434636536211761773

`A168201(A192801(n))`
-/

namespace A228626.P18434636536211761773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A192801 n).toNat

end

end A228626.P18434636536211761773

/-! ## A228626.P633396306396936895

`A187213(A304974(n))`
-/

namespace A228626.P633396306396936895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 (A304974 n).toNat

end

end A228626.P633396306396936895

/-! ## A228626.P6766627349667895050

`A105515(A167637(n²))`
-/

namespace A228626.P6766627349667895050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A167637 (n ^ 2)).toNat

end

end A228626.P6766627349667895050

/-! ## A228626.P2179274269912197999

`A340489(A392399(n+1))`
-/

namespace A228626.P2179274269912197999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340489 (A392399 (n + 1)).toNat

end

end A228626.P2179274269912197999

/-! ## A228626.P9237938258984891788

`A350112(A006259(n+5)+1)`
-/

namespace A228626.P9237938258984891788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350112 (A006259 (n + 5) + 1).toNat

end

end A228626.P9237938258984891788

/-!
# A228627: Primes of the form abcabc..abcab.

The programs for A228627, there is no canonical definition to state claims against.
-/

/-! ## A228627.P16063588351240526265

`A000027(A154270(n+16))`
-/

namespace A228627.P16063588351240526265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A154270 (n + 16)).toNat

end

end A228627.P16063588351240526265

/-! ## A228627.P7168755549661342262

`A020639(or(1, A154270(n+16)))`
-/

namespace A228627.P7168755549661342262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A154270 (n + 16))).toNat

end

end A228627.P7168755549661342262

/-! ## A228627.P9780575378806243973

`A000010(or(1, A154270(n+16)))+1`
-/

namespace A228627.P9780575378806243973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 1 (A154270 (n + 16))).toNat + 1

end

end A228627.P9780575378806243973

/-! ## A228627.P8703527066370581404

`record[A154270(A289281(n+2)+16)]`
-/

namespace A228627.P8703527066370581404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154270 (A289281 (n + 2) + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228627.P8703527066370581404

/-! ## A228627.P1682792705008962986

`A154270(n+16)%A263083(n+1)`
-/

namespace A228627.P1682792705008962986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154270 (n + 16)) (A263083 (n + 1))

end

end A228627.P1682792705008962986

/-!
# A228628: 9's complement of prime(n).

The programs for A228628, the canonical program `A228628.P1311672402623493656` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228628 has offset 1).

The definition of A228628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228628.P1311672402623493656

`A160668(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228628

/-- `A160668(n+1)-1` -/
def P1311672402623493656.Spec : Prop :=
  ∀ n, P1311672402623493656.a n = A228628 (n + 1)

theorem P1311672402623493656.correct : P1311672402623493656.Spec := by
  intro n
  simp only [A228628, Nat.add_sub_cancel]

end A228628

/-! ## A228628.P10264935553824958737

`A061601(A000040(n+1))`
-/

namespace A228628.P10264935553824958737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A000040 (n + 1)).toNat

end

end A228628.P10264935553824958737

namespace A228628

/-- `A061601(A000040(n+1))` -/
def P10264935553824958737.Spec : Prop :=
  ∀ n, P10264935553824958737.a n = A228628 (n + 1)

theorem P10264935553824958737.correct : P10264935553824958737.Spec := by
  intro n
  simp only [A228628, Nat.add_sub_cancel, A228628.P10264935553824958737.a, A228628.P1311672402623493656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061601, A061601.P11117984480287527776.a, A160668, A160668.P17836700384560215862.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228628

/-! ## A228628.P1071264004319187010

`A039790(n+1)-A072055(n+1)`
-/

namespace A228628.P1071264004319187010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - A072055 (n + 1)

end

end A228628.P1071264004319187010

namespace A228628

/-- `A039790(n+1)-A072055(n+1)` -/
def P1071264004319187010.Spec : Prop :=
  ∀ n, P1071264004319187010.a n = A228628 (n + 1)

theorem P1071264004319187010.correct : P1071264004319187010.Spec := by
  intro n
  simp only [A228628, Nat.add_sub_cancel, A228628.P1071264004319187010.a, A228628.P1311672402623493656.a, A039790, A039790.P15010338616268529751.a, A072055, A072055.P8252801676711237860.a, A160668, A160668.P17836700384560215862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061601, A061601.P11117984480287527776.a, A100484, A100484.P9678625670825099636.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228628

/-! ## A228628.P6224389485126508970

`A039790(n+1)-(A100484(n+1)+1)`
-/

namespace A228628.P6224389485126508970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - (A100484 (n + 1) + 1)

end

end A228628.P6224389485126508970

namespace A228628

/-- `A039790(n+1)-(A100484(n+1)+1)` -/
def P6224389485126508970.Spec : Prop :=
  ∀ n, P6224389485126508970.a n = A228628 (n + 1)

theorem P6224389485126508970.correct : P6224389485126508970.Spec := by
  intro n
  simp only [A228628, Nat.add_sub_cancel, A228628.P6224389485126508970.a, A228628.P1311672402623493656.a, A039790, A039790.P15010338616268529751.a, A100484, A100484.P9678625670825099636.a, A160668, A160668.P17836700384560215862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061601, A061601.P11117984480287527776.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228628

/-! ## A228628.P4646104912743609179

`A061601(Δ[A007504(n)])`
-/

namespace A228628.P4646104912743609179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (n + 1) - f1 n).toNat

end

end A228628.P4646104912743609179

namespace A228628

/-- `A061601(Δ[A007504(n)])` -/
def P4646104912743609179.Spec : Prop :=
  ∀ n, P4646104912743609179.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P16584773787024447107

`A061601(A008578(n+2))`
-/

namespace A228628.P16584773787024447107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A008578 (n + 2)).toNat

end

end A228628.P16584773787024447107

namespace A228628

/-- `A061601(A008578(n+2))` -/
def P16584773787024447107.Spec : Prop :=
  ∀ n, P16584773787024447107.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P17236914910695711175

`A061601(A182986(n+2))`
-/

namespace A228628.P17236914910695711175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A182986 (n + 2)).toNat

end

end A228628.P17236914910695711175

namespace A228628

/-- `A061601(A182986(n+2))` -/
def P17236914910695711175.Spec : Prop :=
  ∀ n, P17236914910695711175.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P1451065244563260039

`A061601(eq[1, A328771(n)])`
-/

namespace A228628.P1451065244563260039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228628.P1451065244563260039

namespace A228628

/-- `A061601(eq[1, A328771(n)])` -/
def P1451065244563260039.Spec : Prop :=
  ∀ n, P1451065244563260039.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P611976700691063042

`A061601(record[A006530(n+2)])`
-/

namespace A228628.P611976700691063042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228628.P611976700691063042

namespace A228628

/-- `A061601(record[A006530(n+2)])` -/
def P611976700691063042.Spec : Prop :=
  ∀ n, P611976700691063042.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P11254354291836248646

`A061601(record[A020639(n+2)])`
-/

namespace A228628.P11254354291836248646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228628.P11254354291836248646

namespace A228628

/-- `A061601(record[A020639(n+2)])` -/
def P11254354291836248646.Spec : Prop :=
  ∀ n, P11254354291836248646.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P3196982802230299527

`A061601(A006093(n+1)+1)`
-/

namespace A228628.P3196982802230299527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A006093 (n + 1) + 1).toNat

end

end A228628.P3196982802230299527

namespace A228628

/-- `A061601(A006093(n+1)+1)` -/
def P3196982802230299527.Spec : Prop :=
  ∀ n, P3196982802230299527.a n = A228628 (n + 1)

theorem P3196982802230299527.correct : P3196982802230299527.Spec := by
  intro n
  simp only [A228628, Nat.add_sub_cancel, A228628.P3196982802230299527.a, A228628.P1311672402623493656.a, A006093, A006093.P2906174024863549003.a, A061601, A061601.P11117984480287527776.a, A160668, A160668.P17836700384560215862.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228628

/-! ## A228628.P9778875428904321689

`A061601(A100484(n+1)/2)`
-/

namespace A228628.P9778875428904321689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A228628.P9778875428904321689

namespace A228628

/-- `A061601(A100484(n+1)/2)` -/
def P9778875428904321689.Spec : Prop :=
  ∀ n, P9778875428904321689.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P10685057602906017604

`A061601(sqrt(A005722(n+1))+1)`
-/

namespace A228628.P10685057602906017604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ) + 1)).toNat

end

end A228628.P10685057602906017604

namespace A228628

/-- `A061601(sqrt(A005722(n+1))+1)` -/
def P10685057602906017604.Spec : Prop :=
  ∀ n, P10685057602906017604.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P16040167267428543796

`A061601(record[A000010(n+1)+1])`
-/

namespace A228628.P16040167267428543796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228628.P16040167267428543796

namespace A228628

/-- `A061601(record[A000010(n+1)+1])` -/
def P16040167267428543796.Spec : Prop :=
  ∀ n, P16040167267428543796.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P8209915354387089099

`A061601(eq[1, A001222(n+1)]+1)`
-/

namespace A228628.P8209915354387089099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228628.P8209915354387089099

namespace A228628

/-- `A061601(eq[1, A001222(n+1)]+1)` -/
def P8209915354387089099.Spec : Prop :=
  ∀ n, P8209915354387089099.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P11869153273513311633

`A061601(eq[2, A000005(n+1)]+1)`
-/

namespace A228628.P11869153273513311633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228628.P11869153273513311633

namespace A228628

/-- `A061601(eq[2, A000005(n+1)]+1)` -/
def P11869153273513311633.Spec : Prop :=
  ∀ n, P11869153273513311633.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P11942407716055636680

`A061601(eq[n, A000010(n+1)]+1)`
-/

namespace A228628.P11942407716055636680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228628.P11942407716055636680

namespace A228628

/-- `A061601(eq[n, A000010(n+1)]+1)` -/
def P11942407716055636680.Spec : Prop :=
  ∀ n, P11942407716055636680.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P11222652574981457890

`A089186(A008864(n+1))`
-/

namespace A228628.P11222652574981457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (A008864 (n + 1)).toNat

end

end A228628.P11222652574981457890

namespace A228628

/-- `A089186(A008864(n+1))` -/
def P11222652574981457890.Spec : Prop :=
  ∀ n, P11222652574981457890.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P2989771857248477519

`A109910(A004087(n+1))`
-/

namespace A228628.P2989771857248477519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 (A004087 (n + 1)).toNat

end

end A228628.P2989771857248477519

namespace A228628

/-- `A109910(A004087(n+1))` -/
def P2989771857248477519.Spec : Prop :=
  ∀ n, P2989771857248477519.a n = A228628 (n + 1)

end A228628

/-! ## A228628.P15970771255468099643

`A089186(A028815(n+1))`
-/

namespace A228628.P15970771255468099643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (A028815 (n + 1)).toNat

end

end A228628.P15970771255468099643

namespace A228628

/-- `A089186(A028815(n+1))` -/
def P15970771255468099643.Spec : Prop :=
  ∀ n, P15970771255468099643.a n = A228628 (n + 1)

end A228628

/-!
# A228630: Number of s in {1,...,n}^n having shortest run with the same value of length 4.

The programs for A228630, there is no canonical definition to state claims against.
-/

/-! ## A228630.P14696485932858903043

`A228617(eq[4, A002262(n)])`
-/

namespace A228630.P14696485932858903043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228630.P14696485932858903043

/-! ## A228630.P11199249214522092907

`A228617(eq[16, A059268(n)])`
-/

namespace A228630.P11199249214522092907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228630.P11199249214522092907

/-! ## A228630.P6637849265445790053

`A228617(A167614(n+3)+1)`
-/

namespace A228630.P6637849265445790053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A167614 (n + 3) + 1).toNat

end

end A228630.P6637849265445790053

/-! ## A228630.P9780541379085401663

`A228617(eq[5, A002260(n+1)])`
-/

namespace A228630.P9780541379085401663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228630.P9780541379085401663

/-! ## A228630.P9030222523425175796

`A228617(eq[2, A144328(n+1)-2])`
-/

namespace A228630.P9030222523425175796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228630.P9030222523425175796

/-! ## A228630.P4520668040539321647

`A228617(eq[2, A144328(n+1)/2])`
-/

namespace A228630.P4520668040539321647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A228630.P4520668040539321647

/-!
# A228631: Number of s in {1,...,n}^n having shortest run with the same value of length 5.

The programs for A228631, there is no canonical definition to state claims against.
-/

/-! ## A228631.P3312963584152286560

`A228617(A167499(n+4))`
-/

namespace A228631.P3312963584152286560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A167499 (n + 4)).toNat

end

end A228631.P3312963584152286560

/-! ## A228631.P17745727784012991180

`A228617(eq[5, A002262(n)])`
-/

namespace A228631.P17745727784012991180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228631.P17745727784012991180

/-! ## A228631.P12406823096077515882

`A228617(A166136(n+4)-1)`
-/

namespace A228631.P12406823096077515882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (A166136 (n + 4) - 1).toNat

end

end A228631.P12406823096077515882

/-! ## A228631.P14830878386257889486

`A228617(eq[6, A002260(n+1)])`
-/

namespace A228631.P14830878386257889486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228631.P14830878386257889486

/-! ## A228631.P9448761089749213496

`A228617(eq[13, A037126(n+1)])`
-/

namespace A228631.P9448761089749213496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228631.P9448761089749213496

/-! ## A228631.P18007603677685612981

`A228617(eq[6, 1-A057944(n)+n])`
-/

namespace A228631.P18007603677685612981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057944 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228631.P18007603677685612981

/-!
# A228632: Number of s in {1,...,n}^n having shortest run with the same value of length 6.

The programs for A228632, there is no canonical definition to state claims against.
-/

/-! ## A228632.P14199587312803145157

`A228617(eq[6, A002262(n)])`
-/

namespace A228632.P14199587312803145157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228632.P14199587312803145157

/-! ## A228632.P7104153615074445734

`A228617(eq[32, A166918(n)])`
-/

namespace A228632.P7104153615074445734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228632.P7104153615074445734

/-! ## A228632.P382823617628970682

`A228617(eq[64, A059268(n)])`
-/

namespace A228632.P382823617628970682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228632.P382823617628970682

/-! ## A228632.P9212760322382057610

`A228617(eq[7, A002260(n+1)])`
-/

namespace A228632.P9212760322382057610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228632.P9212760322382057610

/-! ## A228632.P10776395540972661022

`A228617(eq[7, 1-A057944(n)+n])`
-/

namespace A228632.P10776395540972661022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057944 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228632.P10776395540972661022

/-!
# A228633: Number of s in {1,...,n}^n having shortest run with the same value of length 7.

The programs for A228633, there is no canonical definition to state claims against.
-/

/-! ## A228633.P1359022618319974677

`A301705((a(n-gcd(49, n))+1)²)` with `a(0)=7, a(1)=0`
-/

namespace A228633.P1359022618319974677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A301705 ((a (n - Nat.gcd 49 n) + 1) ^ 2).toNat

end

end A228633.P1359022618319974677

/-! ## A228633.P9396665453251625907

`A191588(A053751(n+1))`
-/

namespace A228633.P9396665453251625907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191588 (A053751 (n + 1)).toNat

end

end A228633.P9396665453251625907

/-! ## A228633.P3910873908435645609

`A127572(A251310(n+1))`
-/

namespace A228633.P3910873908435645609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127572 (A251310 (n + 1)).toNat

end

end A228633.P3910873908435645609

/-! ## A228633.P2956390187580483637

`7*A000196(A246614(n))`
-/

namespace A228633.P2956390187580483637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000196 (A246614 n).toNat

end

end A228633.P2956390187580483637

/-!
# A228634: Number of s in {1,...,n}^n having shortest run with the same value of length 8.

The programs for A228634, there is no canonical definition to state claims against.
-/

/-! ## A228634.P15864744937641818475

`A228617(eq[9, A002260(n+1)])`
-/

namespace A228634.P15864744937641818475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228634.P15864744937641818475

/-! ## A228634.P11738687506971356234

`and(-a(and(n, n-1)), A272615(n+1))` with `a(0)=8`
-/

namespace A228634.P11738687506971356234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.land (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (A272615 (n + 1))

end

end A228634.P11738687506971356234

/-! ## A228634.P1876917080135491796

`A279722(2*n+1)^(a(n-1-and(n, 2*n))+1)` with `a(0)=8`
-/

namespace A228634.P1876917080135491796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [8] fun n a =>
  (A279722 (2 * n + 1) : ℝ) ^ (a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1)

end

end A228634.P1876917080135491796

/-! ## A228634.P13062534511922137413

`A004013(∑[A010912(n)])`
-/

namespace A228634.P13062534511922137413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228634.P13062534511922137413

/-! ## A228634.P17395188661730806074

`A300382(A074125(n+1))`
-/

namespace A228634.P17395188661730806074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300382 (A074125 (n + 1)).toNat

end

end A228634.P17395188661730806074

/-!
# A228635: Number of s in {1,...,n}^n having shortest run with the same value of length 9.

The programs for A228635, there is no canonical definition to state claims against.
-/

/-! ## A228635.P7534622534952168271

`A228617(eq[10, A002260(n+1)])`
-/

namespace A228635.P7534622534952168271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228635.P7534622534952168271

/-! ## A228635.P16098214780496815039

`9*A219481(A053295(n))`
-/

namespace A228635.P16098214780496815039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A219481 (A053295 n).toNat

end

end A228635.P16098214780496815039

/-! ## A228635.P7023373834498791861

`9*A068475(A014376(2*n))`
-/

namespace A228635.P7023373834498791861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A068475 (A014376 (2 * n)).toNat

end

end A228635.P7023373834498791861

/-! ## A228635.P7613683525668625471

`A014378(n)*A117817(A052952(n))`
-/

namespace A228635.P7613683525668625471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014378 n * A117817 (A052952 n).toNat

end

end A228635.P7613683525668625471

/-! ## A228635.P14845559149514546661

`A022092(A104219(n)*A244538(n))`
-/

namespace A228635.P14845559149514546661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 (A104219 n * A244538 (n + 10)).toNat

end

end A228635.P14845559149514546661

/-!
# A228636: Number of s in {1,...,n}^n having shortest run with the same value of length 10.

The programs for A228636, there is no canonical definition to state claims against.
-/

/-! ## A228636.P10672836693624090981

`A228617(eq[10, A144328(n+1)])`
-/

namespace A228636.P10672836693624090981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228636.P10672836693624090981

/-! ## A228636.P8978480247229896838

`10*A018843(A050161(n))`
-/

namespace A228636.P8978480247229896838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A018843 (A050161 n).toNat

end

end A228636.P8978480247229896838

/-! ## A228636.P16371763565028685769

`10*A018843(A140101(n))`
-/

namespace A228636.P16371763565028685769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A018843 (A140101 n).toNat

end

end A228636.P16371763565028685769

/-! ## A228636.P7011559309949795629

`10*A018843(A160714(n))`
-/

namespace A228636.P7011559309949795629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A018843 (A160714 n).toNat

end

end A228636.P7011559309949795629

/-! ## A228636.P1651283258606615782

`10*A018843(A173173(n))`
-/

namespace A228636.P1651283258606615782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A018843 (A173173 n).toNat

end

end A228636.P1651283258606615782

/-!
# A228637: The number triangle associated with the polynomials V_n(x).

The programs for A228637, there is no canonical definition to state claims against.
-/

/-! ## A228637.P7487135783031779439

`2*A228161(n)-A228356(n)`
-/

namespace A228637.P7487135783031779439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228161 n - A228356 n

end

end A228637.P7487135783031779439

/-!
# A228640: a(n) = Sum_{d|n} phi(d)*n^(n/d).

The programs for A228640, the canonical program `A228640.P11204383012530829131` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228640 has offset 0).

The definition of A228640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228640.P11204383012530829131

`∑{d}[n, A000010(#)*n^(n/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228640

/-- `∑{d}[n, A000010(#)*n^(n/#)]` -/
def P11204383012530829131.Spec : Prop :=
  ∀ n, P11204383012530829131.a n = (A228640 n : ℝ)

end A228640

/-! ## A228640.P4177281626724795138

`n*A056665(A028310(n))`
-/

namespace A228640.P4177281626724795138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056665 (A028310 n).toNat

end

end A228640.P4177281626724795138

namespace A228640

/-- `n*A056665(A028310(n))` -/
def P4177281626724795138.Spec : Prop :=
  ∀ n, P4177281626724795138.a n = A228640 n

end A228640

/-! ## A228640.P14874506888659473700

`A185651(∑[4*n])`
-/

namespace A228640.P14874506888659473700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228640.P14874506888659473700

namespace A228640

/-- `A185651(∑[4*n])` -/
def P14874506888659473700.Spec : Prop :=
  ∀ n, P14874506888659473700.a n = A228640 n

end A228640

/-! ## A228640.P11101539312529675905

`record[A185651(n*A008619(n))]`
-/

namespace A228640.P11101539312529675905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228640.P11101539312529675905

namespace A228640

/-- `record[A185651(n*A008619(n))]` -/
def P11101539312529675905.Spec : Prop :=
  ∀ n, P11101539312529675905.a n = A228640 n

end A228640

/-! ## A228640.P12948895519250496172

`record[gcd(A008482(n), A185651(n))]`
-/

namespace A228640.P12948895519250496172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A185651 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228640.P12948895519250496172

namespace A228640

/-- `record[gcd(A008482(n), A185651(n))]` -/
def P12948895519250496172.Spec : Prop :=
  ∀ n, (P12948895519250496172.a n : ℤ) = A228640 n

end A228640

/-!
# A228641: Volume of torus (rounded down) with major radius = n and minor radius = n/3.

The programs for A228641, the canonical program `A228641.P15121493332277428366` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228641 has offset 1).

The definition of A228641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228641.P15121493332277428366

`floor(2/9*π²*(n+1)^3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228641

/-- `floor(2/9*π²*(n+1)^3)` -/
def P15121493332277428366.Spec : Prop :=
  ∀ n, P15121493332277428366.a n = A228641 (n + 1)

theorem P15121493332277428366.correct : P15121493332277428366.Spec := by
  intro n
  simp only [A228641, Nat.add_sub_cancel]

end A228641

/-! ## A228641.P15847730613086848998

`A343609(A261791(n+1))`
-/

namespace A228641.P15847730613086848998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A261791 (n + 1)).toNat

end

end A228641.P15847730613086848998

namespace A228641

/-- `A343609(A261791(n+1))` -/
def P15847730613086848998.Spec : Prop :=
  ∀ n, P15847730613086848998.a n = A228641 (n + 1)

end A228641

/-!
# A228642: Squares of primes mod 100.

The programs for A228642, there is no canonical definition to state claims against.
-/

/-! ## A228642.P1279980646731698392

`filter[A010461(n+2), A179775(#)]`
-/

namespace A228642.P1279980646731698392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A228642.P1279980646731698392

/-! ## A228642.P8330584425878908623

`filter[A010461(n+2), A266789(#)]`
-/

namespace A228642.P8330584425878908623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A228642.P8330584425878908623

/-! ## A228642.P17531823711623256560

`filter[A010461(n+2), A267256(#)]`
-/

namespace A228642.P17531823711623256560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A228642.P17531823711623256560

/-! ## A228642.P4659671048830560533

`∪[A139538(n+1), A042429(n)]`
-/

namespace A228642.P4659671048830560533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228642.P4659671048830560533

/-! ## A228642.P3379463852939668883

`∪[A139538(n+1), A068888(n)]`
-/

namespace A228642.P3379463852939668883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068888 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228642.P3379463852939668883

/-!
# A228644: Expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))) for m=7.

The programs for A228644, there is no canonical definition to state claims against.
-/

/-! ## A228644.P4430635012740180201

`A185646(A056126(n)+28)`
-/

namespace A228644.P4430635012740180201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A056126 n + 28).toNat

end

end A228644.P4430635012740180201

/-! ## A228644.P12263093241833993318

`A185646(A000217(n+8)-8)`
-/

namespace A228644.P12263093241833993318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 8) - 8).toNat

end

end A228644.P12263093241833993318

/-! ## A228644.P11007853478424976373

`A185646(A161680(n+9)-8)`
-/

namespace A228644.P11007853478424976373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A161680 (n + 9) - 8).toNat

end

end A228644.P11007853478424976373

/-! ## A228644.P10708304872550241533

`A185646(A000124(n+6)-A001489(2*(n+3)))`
-/

namespace A228644.P10708304872550241533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000124 (n + 6) - A001489 (2 * (n + 3))).toNat

end

end A228644.P10708304872550241533

/-! ## A228644.P12169028396338476368

`A185646(A004273(A004273(n+5))+A000124(n+4))`
-/

namespace A228644.P12169028396338476368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A004273 (A004273 (n + 5)).toNat + A000124 (n + 4)).toNat

end

end A228644.P12169028396338476368

/-!
# A228645: Expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))) for m=9.

The programs for A228645, there is no canonical definition to state claims against.
-/

/-! ## A228645.P17007923840786509086

`A185646(A052905(n+7)-5)`
-/

namespace A228645.P17007923840786509086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A052905 (n + 7) - 5).toNat

end

end A228645.P17007923840786509086

/-! ## A228645.P7264184111889883525

`A185646(A000217(n+10)-10)`
-/

namespace A228645.P7264184111889883525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 10) - 10).toNat

end

end A228645.P7264184111889883525

/-! ## A228645.P9652928874119830422

`A185646(A046691(n+6)+A004280(n+8))`
-/

namespace A228645.P9652928874119830422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A046691 (n + 6) + A004280 (n + 8)).toNat

end

end A228645.P9652928874119830422

/-! ## A228645.P13980214017848080932

`A185646(A000124(n+8)-A001489(2*(n+4)))`
-/

namespace A228645.P13980214017848080932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000124 (n + 8) - A001489 (2 * (n + 4))).toNat

end

end A228645.P13980214017848080932

/-!
# A228646: Expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))) for m=6.

The programs for A228646, there is no canonical definition to state claims against.
-/

/-! ## A228646.P13365563536959999796

`A185646(A052905(n+4)-2)`
-/

namespace A228646.P13365563536959999796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A052905 (n + 4) - 2).toNat

end

end A228646.P13365563536959999796

/-! ## A228646.P10417377772161472740

`A185646(A046691(n+5)-3)`
-/

namespace A228646.P10417377772161472740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A046691 (n + 5) - 3).toNat

end

end A228646.P10417377772161472740

/-! ## A228646.P11486171940425261223

`A185646(A056115(n+2)+8)`
-/

namespace A228646.P11486171940425261223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A056115 (n + 2) + 8).toNat

end

end A228646.P11486171940425261223

/-! ## A228646.P17021413224569500679

`A185646(A000217(n+7)-7)`
-/

namespace A228646.P17021413224569500679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 7) - 7).toNat

end

end A228646.P17021413224569500679

/-! ## A228646.P9678840123628986340

`A185646(A161680(n+8)-7)`
-/

namespace A228646.P9678840123628986340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A161680 (n + 8) - 7).toNat

end

end A228646.P9678840123628986340

/-! ## A228646.P3767447834224640728

`A185646(A004273(n+3)+A000124(n+5))`
-/

namespace A228646.P3767447834224640728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A004273 (n + 3) + A000124 (n + 5)).toNat

end

end A228646.P3767447834224640728

/-! ## A228646.P1718422393574220724

`A185646(A000124(n+5)-A001489(2*n+5))`
-/

namespace A228646.P1718422393574220724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000124 (n + 5) - A001489 (2 * n + 5)).toNat

end

end A228646.P1718422393574220724

/-! ## A228646.P11040753667944313555

`A185646(eq[7, A168396(n+3)])`
-/

namespace A228646.P11040753667944313555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228646.P11040753667944313555

/-!
# A228647: a(n) = A001609(n^2) for n>=1, where g.f. of A001609 is x*(1+3*x^2)/(1-x-x^3).

The programs for A228647, the canonical program `A228647.P11534189553758676802` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228647 has offset 1).

The definition of A228647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001609((n+1)²)` (program `A228647.P11534189553758676802`, by `A228647.P11534189553758676802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228647.P11534189553758676802

`A001609((n+1)²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228647

/-- `A001609((n+1)²)` -/
def P11534189553758676802.Spec : Prop :=
  ∀ n, P11534189553758676802.a n = A228647 (n + 1)

theorem P11534189553758676802.correct : P11534189553758676802.Spec := by
  intro n
  simp only [A228647, Nat.add_sub_cancel]

end A228647

/-! ## A228647.P4074226863416853492

`A382641((n+1)²)`
-/

namespace A228647.P4074226863416853492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382641 ((n + 1) ^ 2)

end

end A228647.P4074226863416853492

namespace A228647

/-- `A382641((n+1)²)` -/
def P4074226863416853492.Spec : Prop :=
  ∀ n, P4074226863416853492.a n = A228647 (n + 1)

end A228647

/-! ## A228647.P6212922477978238788

`sqrt(A218439((n+1)²))`
-/

namespace A228647.P6212922477978238788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A218439 ((n + 1) ^ 2) : ℝ)

end

end A228647.P6212922477978238788

namespace A228647

/-- `sqrt(A218439((n+1)²))` -/
def P6212922477978238788.Spec : Prop :=
  ∀ n, P6212922477978238788.a n = (A228647 (n + 1) : ℝ)

end A228647

/-! ## A228647.P17538282026328591084

`A323951((n+1)²)+(n+1)²`
-/

namespace A228647.P17538282026328591084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A228647.P17538282026328591084

namespace A228647

/-- `A323951((n+1)²)+(n+1)²` -/
def P17538282026328591084.Spec : Prop :=
  ∀ n, P17538282026328591084.a n = A228647 (n + 1)

end A228647

/-! ## A228647.P2097834782406707183

`record[A001609(A133310(n)²)]`
-/

namespace A228647.P2097834782406707183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228647.P2097834782406707183

namespace A228647

/-- `record[A001609(A133310(n)²)]` -/
def P2097834782406707183.Spec : Prop :=
  ∀ n, P2097834782406707183.a n = A228647 (n + 1)

end A228647

/-!
# A228648: G.f.: exp( Sum_{n>=1} A001609(n^2)*x^n/n ), where the l.g.f. of A001609 is -log(1-x-x^3).

The programs for A228648, there is no canonical definition to state claims against.
-/

/-! ## A228648.P824243441040543307

`A002966(n+1)-A316898(A016116(2*(n+2)))`
-/

namespace A228648.P824243441040543307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002966 (n + 1) - A316898 (A016116 (2 * (n + 2))).toNat

end

end A228648.P824243441040543307

/-! ## A228648.P18325180450770555552

`A002966(n+1)-A316898(A029744(2*(n+2)))`
-/

namespace A228648.P18325180450770555552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002966 (n + 1) - A316898 (A029744 (2 * (n + 2))).toNat

end

end A228648.P18325180450770555552

/-!
# A228649: Numbers n such that n-1, n and n+1 are all squarefree.

The programs for A228649, the canonical program `A228649.P13260817488648530651` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228649 has offset 1).

The definition of A228649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228649.P13260817488648530651

`A007675(n+1)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A228649

/-- `A007675(n+1)+1` -/
def P13260817488648530651.Spec : Prop :=
  ∀ n, P13260817488648530651.a n = A228649 (n + 1)

theorem P13260817488648530651.correct : P13260817488648530651.Spec := by
  intro n
  simp only [A228649, Nat.add_sub_cancel]

end A228649

/-! ## A228649.P1961126190951838591

`4*A370600(n+1)+2`
-/

namespace A228649.P1961126190951838591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A370600 (n + 1) + 2

end

end A228649.P1961126190951838591

namespace A228649

/-- `4*A370600(n+1)+2` -/
def P1961126190951838591.Spec : Prop :=
  ∀ n, P1961126190951838591.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P9494855610311909287

`A016825(A370600(n+1))`
-/

namespace A228649.P9494855610311909287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A370600 (n + 1)).toNat

end

end A228649.P9494855610311909287

namespace A228649

/-- `A016825(A370600(n+1))` -/
def P9494855610311909287.Spec : Prop :=
  ∀ n, P9494855610311909287.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P17890756584592210145

`filter[A245289(n+1), A379971(#)]`
-/

namespace A228649.P17890756584592210145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A228649.P17890756584592210145

namespace A228649

/-- `filter[A245289(n+1), A379971(#)]` -/
def P17890756584592210145.Spec : Prop :=
  ∀ n, P17890756584592210145.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P13287940835482370852

`filter[A378458(n+1), A379971(#)]`
-/

namespace A228649.P13287940835482370852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A228649.P13287940835482370852

namespace A228649

/-- `filter[A378458(n+1), A379971(#)]` -/
def P13287940835482370852.Spec : Prop :=
  ∀ n, P13287940835482370852.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P3384247076898610090

`eq[2, n-lcm(a(n-1), A008683(n+1))]` with `a(0)=1`
-/

namespace A228649.P3384247076898610090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - (Int.lcm (f2 (n - 1)) (A008683 (n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228649.P3384247076898610090

namespace A228649

/-- `eq[2, n-lcm(a(n-1), A008683(n+1))]` -/
def P3384247076898610090.Spec : Prop :=
  ∀ n, (P3384247076898610090.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P8281009974954602666

`filter[A039956(n+1), A379971(#)]`
-/

namespace A228649.P8281009974954602666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A228649.P8281009974954602666

namespace A228649

/-- `filter[A039956(n+1), A379971(#)]` -/
def P8281009974954602666.Spec : Prop :=
  ∀ n, P8281009974954602666.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P11364054704399681506

`filter[A067874(n+1), A008966(#)]`
-/

namespace A228649.P11364054704399681506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A228649.P11364054704399681506

namespace A228649

/-- `filter[A067874(n+1), A008966(#)]` -/
def P11364054704399681506.Spec : Prop :=
  ∀ n, P11364054704399681506.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P8904003806812201818

`filter[A067874(n+1), A379966(#)]`
-/

namespace A228649.P8904003806812201818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A228649.P8904003806812201818

namespace A228649

/-- `filter[A067874(n+1), A379966(#)]` -/
def P8904003806812201818.Spec : Prop :=
  ∀ n, P8904003806812201818.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P1192884006331110753

`record[A007947(2*A272799(n+1))]`
-/

namespace A228649.P1192884006331110753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A272799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228649.P1192884006331110753

namespace A228649

/-- `record[A007947(2*A272799(n+1))]` -/
def P1192884006331110753.Spec : Prop :=
  ∀ n, P1192884006331110753.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P11097812939621426342

`∩[A005117(n+1), A067874(n+1)]`
-/

namespace A228649.P11097812939621426342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P11097812939621426342

namespace A228649

/-- `∩[A005117(n+1), A067874(n+1)]` -/
def P11097812939621426342.Spec : Prop :=
  ∀ n, (P11097812939621426342.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P14329259142092351811

`∩[A039956(n+1), A067874(n+1)]`
-/

namespace A228649.P14329259142092351811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P14329259142092351811

namespace A228649

/-- `∩[A039956(n+1), A067874(n+1)]` -/
def P14329259142092351811.Spec : Prop :=
  ∀ n, (P14329259142092351811.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P570005036303390580

`∩[A067874(n+1), A245289(n+1)]`
-/

namespace A228649.P570005036303390580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P570005036303390580

namespace A228649

/-- `∩[A067874(n+1), A245289(n+1)]` -/
def P570005036303390580.Spec : Prop :=
  ∀ n, (P570005036303390580.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P10637921048894776468

`∩[A067874(n+1), A342392(n+1)]`
-/

namespace A228649.P10637921048894776468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P10637921048894776468

namespace A228649

/-- `∩[A067874(n+1), A342392(n+1)]` -/
def P10637921048894776468.Spec : Prop :=
  ∀ n, (P10637921048894776468.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P14068165189236588527

`∩[A378458(n+1), A067874(n+1)]`
-/

namespace A228649.P14068165189236588527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P14068165189236588527

namespace A228649

/-- `∩[A378458(n+1), A067874(n+1)]` -/
def P14068165189236588527.Spec : Prop :=
  ∀ n, (P14068165189236588527.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P11349678180947603709

`filter[A007674(n+1), A379971(#)]`
-/

namespace A228649.P11349678180947603709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A228649.P11349678180947603709

namespace A228649

/-- `filter[A007674(n+1), A379971(#)]` -/
def P11349678180947603709.Spec : Prop :=
  ∀ n, P11349678180947603709.a n = A228649 (n + 1)

end A228649

/-! ## A228649.P5446873342934364377

`∩[A007674(n+1), A067874(n+1)]`
-/

namespace A228649.P5446873342934364377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P5446873342934364377

namespace A228649

/-- `∩[A007674(n+1), A067874(n+1)]` -/
def P5446873342934364377.Spec : Prop :=
  ∀ n, (P5446873342934364377.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P17415134033776442213

`∩[A007674(n+1), A245289(n+1)]`
-/

namespace A228649.P17415134033776442213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P17415134033776442213

namespace A228649

/-- `∩[A007674(n+1), A245289(n+1)]` -/
def P17415134033776442213.Spec : Prop :=
  ∀ n, (P17415134033776442213.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P7360519574218443398

`∩[A007674(n+1), A069977(n+1)+1]`
-/

namespace A228649.P7360519574218443398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P7360519574218443398

namespace A228649

/-- `∩[A007674(n+1), A069977(n+1)+1]` -/
def P7360519574218443398.Spec : Prop :=
  ∀ n, (P7360519574218443398.a n : ℤ) = A228649 (n + 1)

end A228649

/-! ## A228649.P12129484774258733444

`∩[A007674(n+1)+1, A007674(n+2)]`
-/

namespace A228649.P12129484774258733444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228649.P12129484774258733444

namespace A228649

/-- `∩[A007674(n+1)+1, A007674(n+2)]` -/
def P12129484774258733444.Spec : Prop :=
  ∀ n, (P12129484774258733444.a n : ℤ) = A228649 (n + 1)

end A228649

/-!
# A228651: Numbers m such that if an urn contains m balls, with at least one each of c colors, for some c > 1 there exists a combination of c colors such that it is equally probable for c balls randomly selected from the urn to all be either the same color or distinct colors.

The programs for A228651, there is no canonical definition to state claims against.
-/

/-! ## A228651.P532280337656647444

`lt[A062130(A001055(3*(n+1))), n]`
-/

namespace A228651.P532280337656647444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A001055 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228651.P532280337656647444

/-! ## A228651.P6198970308324999157

`lt[A206549(A118119(2*(n+1))), n+2]`
-/

namespace A228651.P6198970308324999157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206549 (A118119 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228651.P6198970308324999157

/-! ## A228651.P7124414565839810260

`lt[A190847(xor(n, n+1)+1), A265405(n+1)]`
-/

namespace A228651.P7124414565839810260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (Nat.xor n (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228651.P7124414565839810260

/-! ## A228651.P8445549919403155713

`lt[A196020(A003056(n+1)), (n+1)/2^val(n+1, 2)]`
-/

namespace A228651.P8445549919403155713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (A003056 (n + 1)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A228651.P8445549919403155713

/-! ## A228651.P17340309423465894086

`lt[A235049(A010371(n)), A000593(n+1)]`
-/

namespace A228651.P17340309423465894086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A010371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228651.P17340309423465894086

/-! ## A228651.P2393181927890498424

`lt[A235049(A074458(n)), A000593(n+1)]`
-/

namespace A228651.P2393181927890498424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A074458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228651.P2393181927890498424

/-! ## A228651.P13814841789768315660

`lt[A265381(A265331(n+1)), A265405(n+1)]`
-/

namespace A228651.P13814841789768315660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 (A265331 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228651.P13814841789768315660

/-! ## A228651.P1872535813503611722

`lt[A335474(A004159(n)+1+n), A000265(n+1)]`
-/

namespace A228651.P1872535813503611722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A004159 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228651.P1872535813503611722

/-!
# A228652: Numbers m such that if an urn contains m balls, with at least one each of c colors, there is no c > 1 for which a combination of c colors exists such that it is equally probable for c balls randomly selected from the urn to all be either the same color or distinct colors.

The programs for A228652, there is no canonical definition to state claims against.
-/

/-! ## A228652.P6513481241177751818

`∑[∏{e}[A254522(n+1)², #]]`
-/

namespace A228652.P6513481241177751818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254522 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228652.P6513481241177751818

/-! ## A228652.P4778839445415901251

`record[or(∏{p}[n+1, #], A003070(n))]`
-/

namespace A228652.P4778839445415901251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A003070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228652.P4778839445415901251

/-! ## A228652.P12574961729970285626

`eq[log2((n+1)/∏{p}[n+1, #]), A090048(n)]`
-/

namespace A228652.P12574961729970285626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℝ)) n

end

end A228652.P12574961729970285626

/-! ## A228652.P9864360737447421648

`lt[A120454((n+1)*C(n, 2)+2), 3]+1`
-/

namespace A228652.P9864360737447421648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 ((n + 1) * Nat.choose n 2 + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A228652.P9864360737447421648

/-! ## A228652.P945921233527427161

`record[or((n+1)/4^val(n+1, 4), A318719(n+1))]`
-/

namespace A228652.P945921233527427161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (A318719 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228652.P945921233527427161

/-!
# A228654: Number of n X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228654, there is no canonical definition to state claims against.
-/

/-! ## A228654.P1990621123755668378

`A228660((n+1)²+n²)`
-/

namespace A228654.P1990621123755668378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 ((n + 1) ^ 2 + n ^ 2)

end

end A228654.P1990621123755668378

/-! ## A228654.P9111547500614926073

`record[A003982(n)*A228660(n+1)]`
-/

namespace A228654.P9111547500614926073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A228660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228654.P9111547500614926073

/-! ## A228654.P12463617643747760012

`record[gcd(A037012(n), A228660(n+1))]`
-/

namespace A228654.P12463617643747760012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A228660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228654.P12463617643747760012

/-! ## A228654.P167336543233181378

`gcd(A000038(n), A228660(A001844(n)))`
-/

namespace A228654.P167336543233181378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228660 (A001844 n).toNat)

end

end A228654.P167336543233181378

/-! ## A228654.P6926776012142607747

`lcm(A033999(n), A228660(A001844(n)))`
-/

namespace A228654.P6926776012142607747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A228660 (A001844 n).toNat)

end

end A228654.P6926776012142607747

/-!
# A228655: Number of nX3 binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228655, the canonical program `A228655.P9752073511485238032` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228655 has offset 1).

The definition of A228655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228655.P255497286155004766

`ogf((2-2x)/(1-5x+3x^2+3x^3))`
-/

namespace A228655.P255497286155004766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -5, 3, 3] n

end

end A228655.P255497286155004766

namespace A228655

/-- `ogf((2-2x)/(1-5x+3x^2+3x^3))` -/
def P255497286155004766.Spec : Prop :=
  ∀ n, P255497286155004766.a n = A228655 (n + 1)

end A228655

/-! ## A228655.P9752073511485238032

`5*a(n-1)-3*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=8, a(2)=34`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228655

/-- `5*a(n-1)-3*a(n-2)-3*a(n-3)` -/
def P9752073511485238032.Spec : Prop :=
  ∀ n, P9752073511485238032.a n = A228655 (n + 1)

theorem P9752073511485238032.correct : P9752073511485238032.Spec := by
  intro n
  simp only [A228655, Nat.add_sub_cancel]

end A228655

/-! ## A228655.P2218226030629903214

`A228660(∑[n+3]+1)`
-/

namespace A228655.P2218226030629903214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228655.P2218226030629903214

namespace A228655

/-- `A228660(∑[n+3]+1)` -/
def P2218226030629903214.Spec : Prop :=
  ∀ n, P2218226030629903214.a n = A228655 (n + 1)

end A228655

/-! ## A228655.P15360301183917850808

`lcm(2, A228660(Δ[A008778(n)]))`
-/

namespace A228655.P15360301183917850808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228660 (f1 (n + 1) - f1 n).toNat)

end

end A228655.P15360301183917850808

namespace A228655

/-- `lcm(2, A228660(Δ[A008778(n)]))` -/
def P15360301183917850808.Spec : Prop :=
  ∀ n, (P15360301183917850808.a n : ℤ) = A228655 (n + 1)

end A228655

/-! ## A228655.P10830903616222385713

`A228660(A034856(n+2))*A287556(3*2^n-1)`
-/

namespace A228655.P10830903616222385713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A034856 (n + 2)).toNat * A287556 (3 * 2 ^ n - 1)

end

end A228655.P10830903616222385713

namespace A228655

/-- `A228660(A034856(n+2))*A287556(3*2^n-1)` -/
def P10830903616222385713.Spec : Prop :=
  ∀ n, P10830903616222385713.a n = A228655 (n + 1)

end A228655

/-!
# A228656: Number of nX4 binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228656, the canonical program `A228656.P9228152673163601359` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228656 has offset 1).

The definition of A228656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228656.P4991961788169195133

`ogf((3-4x)/(1-6x+2x^2+8x^3))`
-/

namespace A228656.P4991961788169195133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -6, 2, 8] n

end

end A228656.P4991961788169195133

namespace A228656

/-- `ogf((3-4x)/(1-6x+2x^2+8x^3))` -/
def P4991961788169195133.Spec : Prop :=
  ∀ n, P4991961788169195133.a n = A228656 (n + 1)

end A228656

/-! ## A228656.P9228152673163601359

`6*a(n-1)-2*a(n-2)-8*a(n-3)` with `a(0)=3, a(1)=14, a(2)=78`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228656

/-- `6*a(n-1)-2*a(n-2)-8*a(n-3)` -/
def P9228152673163601359.Spec : Prop :=
  ∀ n, P9228152673163601359.a n = A228656 (n + 1)

theorem P9228152673163601359.correct : P9228152673163601359.Spec := by
  intro n
  simp only [A228656, Nat.add_sub_cancel]

end A228656

/-! ## A228656.P1655905130178881066

`A228660(A027379(n+2))`
-/

namespace A228656.P1655905130178881066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A027379 (n + 2)).toNat

end

end A228656.P1655905130178881066

namespace A228656

/-- `A228660(A027379(n+2))` -/
def P1655905130178881066.Spec : Prop :=
  ∀ n, P1655905130178881066.a n = A228656 (n + 1)

end A228656

/-! ## A228656.P6525219472956727183

`A228660(A055998(n+2))`
-/

namespace A228656.P6525219472956727183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A055998 (n + 2)).toNat

end

end A228656.P6525219472956727183

namespace A228656

/-- `A228660(A055998(n+2))` -/
def P6525219472956727183.Spec : Prop :=
  ∀ n, P6525219472956727183.a n = A228656 (n + 1)

end A228656

/-! ## A228656.P7064186761784290300

`A228660(A155212(n)+5)`
-/

namespace A228656.P7064186761784290300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A155212 n + 5).toNat

end

end A228656.P7064186761784290300

namespace A228656

/-- `A228660(A155212(n)+5)` -/
def P7064186761784290300.Spec : Prop :=
  ∀ n, P7064186761784290300.a n = A228656 (n + 1)

end A228656

/-!
# A228657: Number of n X 5 binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228657, there is no canonical definition to state claims against.
-/

/-! ## A228657.P6165220344432310256

`A228660(A046691(n+3))`
-/

namespace A228657.P6165220344432310256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A046691 (n + 3)).toNat

end

end A228657.P6165220344432310256

/-! ## A228657.P13344233580946742289

`A228660(eq[2, A092921(n)])`
-/

namespace A228657.P13344233580946742289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228657.P13344233580946742289

/-! ## A228657.P10923221233104167672

`A228660(eq[4, A193592(n)])`
-/

namespace A228657.P10923221233104167672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228657.P10923221233104167672

/-! ## A228657.P14351057870196477195

`A228660(Δ[A023545(n+1)])`
-/

namespace A228657.P14351057870196477195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (f1 (n + 1) - f1 n).toNat

end

end A228657.P14351057870196477195

/-! ## A228657.P13991700064973260280

`A228660(A167614(n+4)-7)`
-/

namespace A228657.P13991700064973260280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A167614 (n + 4) - 7).toNat

end

end A228657.P13991700064973260280

/-!
# A228658: Number of n X 6 binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228658, there is no canonical definition to state claims against.
-/

/-! ## A228658.P12068458293441489399

`A228660(A052905(n+3))`
-/

namespace A228658.P12068458293441489399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A052905 (n + 3)).toNat

end

end A228658.P12068458293441489399

/-! ## A228658.P11162821252619615778

`A228660(eq[3, A219347(n)])`
-/

namespace A228658.P11162821252619615778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228658.P11162821252619615778

/-! ## A228658.P9677579988184447830

`A228660(eq[5, A193592(n)])`
-/

namespace A228658.P9677579988184447830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228658.P9677579988184447830

/-! ## A228658.P5028176473890232847

`A228660(A046691(n+4)-1)`
-/

namespace A228658.P5028176473890232847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A046691 (n + 4) - 1).toNat

end

end A228658.P5028176473890232847

/-! ## A228658.P928462584115851086

`A228660(eq[16, A057728(n+1)])`
-/

namespace A228658.P928462584115851086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228658.P928462584115851086

/-!
# A228659: Number of nX7 binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228659, there is no canonical definition to state claims against.
-/

/-! ## A228659.P15283745372673198704

`A228660(eq[4, A219347(n)])`
-/

namespace A228659.P15283745372673198704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228659.P15283745372673198704

/-! ## A228659.P11223045395650384770

`A228660(eq[6, A193592(n)])`
-/

namespace A228659.P11223045395650384770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228659.P11223045395650384770

/-! ## A228659.P7405571912135147686

`A228660(eq[10, A185782(n+1)])`
-/

namespace A228659.P7405571912135147686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228659.P7405571912135147686

/-! ## A228659.P14779110938604602701

`A228660(Δ[A005286(n+4)]-5)`
-/

namespace A228659.P14779110938604602701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (f1 (n + 1) - f1 n - 5).toNat

end

end A228659.P14779110938604602701

/-! ## A228659.P2038342659386425623

`A228660(eq[7, A200370(n+1)])`
-/

namespace A228659.P2038342659386425623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228659.P2038342659386425623

/-!
# A228661: Number of 2 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228661, the canonical program `A228661.P9753053547265802163` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228661 has offset 1).

The definition of A228661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228661.P9753053547265802163

`a(n-1)+3*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228661

/-- `a(n-1)+3*a(n-2)` -/
def P9753053547265802163.Spec : Prop :=
  ∀ n, (P9753053547265802163.a n : ℤ) = A228661 (n + 1)

theorem P9753053547265802163.correct : P9753053547265802163.Spec := by
  intro n
  simp only [A228661, Nat.add_sub_cancel]

end A228661

/-! ## A228661.P7260078291726650292

`2*A006130(n)`
-/

namespace A228661.P7260078291726650292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006130 n

end

end A228661.P7260078291726650292

namespace A228661

/-- `2*A006130(n)` -/
def P7260078291726650292.Spec : Prop :=
  ∀ n, P7260078291726650292.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P15476962027085304972

`ogf(2/(1-x-3x^2))`
-/

namespace A228661.P15476962027085304972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -1, -3] n

end

end A228661.P15476962027085304972

namespace A228661

/-- `ogf(2/(1-x-3x^2))` -/
def P15476962027085304972.Spec : Prop :=
  ∀ n, P15476962027085304972.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P8586042972265101720

`a(n-1)+lcm(3, a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A228661.P8586042972265101720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 2))

end

end A228661.P8586042972265101720

namespace A228661

/-- `a(n-1)+lcm(3, a(n-2))` -/
def P8586042972265101720.Spec : Prop :=
  ∀ n, (P8586042972265101720.a n : ℤ) = A228661 (n + 1)

end A228661

/-! ## A228661.P14114768553456582453

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=2`
-/

namespace A228661.P14114768553456582453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A228661.P14114768553456582453

namespace A228661

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P14114768553456582453.Spec : Prop :=
  ∀ n, P14114768553456582453.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P9184551926556570236

`a(n-1)+a(n-2)/(1-2/3)` with `a(0)=2, a(1)=2`
-/

namespace A228661.P9184551926556570236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A228661.P9184551926556570236

namespace A228661

/-- `a(n-1)+a(n-2)/(1-2/3)` -/
def P9184551926556570236.Spec : Prop :=
  ∀ n, P9184551926556570236.a n = (A228661 (n + 1) : ℚ)

end A228661

/-! ## A228661.P10028425660110351438

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A228661.P10028425660110351438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A228661.P10028425660110351438

namespace A228661

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P10028425660110351438.Spec : Prop :=
  ∀ n, (P10028425660110351438.a n : ℤ) = A228661 (n + 1)

end A228661

/-! ## A228661.P2463053173656394886

`∑[2*A052533(n)]`
-/

namespace A228661.P2463053173656394886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228661.P2463053173656394886

namespace A228661

/-- `∑[2*A052533(n)]` -/
def P2463053173656394886.Spec : Prop :=
  ∀ n, P2463053173656394886.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P1108771418601365891

`Δ[2*A099232(n)]`
-/

namespace A228661.P1108771418601365891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228661.P1108771418601365891

namespace A228661

/-- `Δ[2*A099232(n)]` -/
def P1108771418601365891.Spec : Prop :=
  ∀ n, P1108771418601365891.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P419093141826326780

`abs(2*A182228(n+1))`
-/

namespace A228661.P419093141826326780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A182228 (n + 1)|

end

end A228661.P419093141826326780

namespace A228661

/-- `abs(2*A182228(n+1))` -/
def P419093141826326780.Spec : Prop :=
  ∀ n, P419093141826326780.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P7227348856209619338

`2/3*A052533(n+2)`
-/

namespace A228661.P7227348856209619338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A052533 (n + 2) : ℚ)

end

end A228661.P7227348856209619338

namespace A228661

/-- `2/3*A052533(n+2)` -/
def P7227348856209619338.Spec : Prop :=
  ∀ n, P7227348856209619338.a n = (A228661 (n + 1) : ℚ)

end A228661

/-! ## A228661.P12415073164124876262

`abs(Δ[2*A140165(n+1)])`
-/

namespace A228661.P12415073164124876262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A228661.P12415073164124876262

namespace A228661

/-- `abs(Δ[2*A140165(n+1)])` -/
def P12415073164124876262.Spec : Prop :=
  ∀ n, P12415073164124876262.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P905694524034722953

`2*A006138(n)-a(n-1)` with `a(0)=2`
-/

namespace A228661.P905694524034722953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A006138 n - a (n - 1)

end

end A228661.P905694524034722953

namespace A228661

/-- `2*A006138(n)-a(n-1)` -/
def P905694524034722953.Spec : Prop :=
  ∀ n, P905694524034722953.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P15337011051465526086

`A052533(n)+A006138(n)`
-/

namespace A228661.P15337011051465526086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + A006138 n

end

end A228661.P15337011051465526086

namespace A228661

/-- `A052533(n)+A006138(n)` -/
def P15337011051465526086.Spec : Prop :=
  ∀ n, P15337011051465526086.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P8523440524939585743

`A052533(n+2)-A006130(n)`
-/

namespace A228661.P8523440524939585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 2) - A006130 n

end

end A228661.P8523440524939585743

namespace A228661

/-- `A052533(n+2)-A006130(n)` -/
def P8523440524939585743.Spec : Prop :=
  ∀ n, P8523440524939585743.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P5852075427617796215

`2*(A075118(n)-A052533(n))`
-/

namespace A228661.P5852075427617796215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075118 n - A052533 n)

end

end A228661.P5852075427617796215

namespace A228661

/-- `2*(A075118(n)-A052533(n))` -/
def P5852075427617796215.Spec : Prop :=
  ∀ n, P5852075427617796215.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P11996219110676883884

`A006130(n)+abs(A182228(n+1))`
-/

namespace A228661.P11996219110676883884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + |A182228 (n + 1)|

end

end A228661.P11996219110676883884

namespace A228661

/-- `A006130(n)+abs(A182228(n+1))` -/
def P11996219110676883884.Spec : Prop :=
  ∀ n, P11996219110676883884.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P18349351201281685976

`A006138(n+1)-Δ[A006130(n)]`
-/

namespace A228661.P18349351201281685976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) - (f1 (n + 1) - f1 n)

end

end A228661.P18349351201281685976

namespace A228661

/-- `A006138(n+1)-Δ[A006130(n)]` -/
def P18349351201281685976.Spec : Prop :=
  ∀ n, P18349351201281685976.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P8031344541297663557

`A095343(n+1)+A095343(A028310(n))`
-/

namespace A228661.P8031344541297663557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095343 (n + 1) + A095343 (A028310 n).toNat

end

end A228661.P8031344541297663557

namespace A228661

/-- `A095343(n+1)+A095343(A028310(n))` -/
def P8031344541297663557.Spec : Prop :=
  ∀ n, P8031344541297663557.a n = A228661 (n + 1)

end A228661

/-! ## A228661.P4392920211936967730

`A006130(A005843(n)/2)+A006130(n)`
-/

namespace A228661.P4392920211936967730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A006130 n

end

end A228661.P4392920211936967730

namespace A228661

/-- `A006130(A005843(n)/2)+A006130(n)` -/
def P4392920211936967730.Spec : Prop :=
  ∀ n, P4392920211936967730.a n = A228661 (n + 1)

end A228661

/-!
# A228662: Number of 3 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228662, the canonical program `A228662.P5809590890738277121` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228662 has offset 1).

The definition of A228662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228662.P15664175952564298264

`ogf((4-3x)/(1-2x-6x^2+5x^3))`
-/

namespace A228662.P15664175952564298264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -2, -6, 5] n

end

end A228662.P15664175952564298264

namespace A228662

/-- `ogf((4-3x)/(1-2x-6x^2+5x^3))` -/
def P15664175952564298264.Spec : Prop :=
  ∀ n, P15664175952564298264.a n = A228662 (n + 1)

end A228662

/-! ## A228662.P5809590890738277121

`2*a(n-1)+6*a(n-2)-5*a(n-3)` with `a(0)=4, a(1)=5, a(2)=34`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228662

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)` -/
def P5809590890738277121.Spec : Prop :=
  ∀ n, P5809590890738277121.a n = A228662 (n + 1)

theorem P5809590890738277121.correct : P5809590890738277121.Spec := by
  intro n
  simp only [A228662, Nat.add_sub_cancel]

end A228662

/-! ## A228662.P12271909210308810275

`A228660(∑[n+2]+4)`
-/

namespace A228662.P12271909210308810275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228662.P12271909210308810275

namespace A228662

/-- `A228660(∑[n+2]+4)` -/
def P12271909210308810275.Spec : Prop :=
  ∀ n, P12271909210308810275.a n = A228662 (n + 1)

end A228662

/-! ## A228662.P14345432604750702967

`gcd(A000038(n)², A228660(A167614(n+1)))`
-/

namespace A228662.P14345432604750702967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A228660 (A167614 (n + 1)).toNat)

end

end A228662.P14345432604750702967

namespace A228662

/-- `gcd(A000038(n)², A228660(A167614(n+1)))` -/
def P14345432604750702967.Spec : Prop :=
  ∀ n, (P14345432604750702967.a n : ℤ) = A228662 (n + 1)

end A228662

/-! ## A228662.P6965821840832437402

`A228660(A167614(n+1))%A269105(n+1)`
-/

namespace A228662.P6965821840832437402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228660 (A167614 (n + 1)).toNat) (A269105 (n + 1))

end

end A228662.P6965821840832437402

namespace A228662

/-- `A228660(A167614(n+1))%A269105(n+1)` -/
def P6965821840832437402.Spec : Prop :=
  ∀ n, P6965821840832437402.a n = A228662 (n + 1)

end A228662

/-!
# A228663: Number of 4 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228663, the canonical program `A228663.P6697187686880175412` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228663 has offset 1).

The definition of A228663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228663.P6697187686880175412

`2*a(n-1)+16*a(n-2)-7*a(n-3)-18*a(n-4)` with `a(0)=8, a(1)=12, a(2)=140, a(3)=416`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228663

/-- `2*a(n-1)+16*a(n-2)-7*a(n-3)-18*a(n-4)` -/
def P6697187686880175412.Spec : Prop :=
  ∀ n, P6697187686880175412.a n = A228663 (n + 1)

theorem P6697187686880175412.correct : P6697187686880175412.Spec := by
  intro n
  simp only [A228663, Nat.add_sub_cancel]

end A228663

/-! ## A228663.P10205246801760792749

`A228660(A052905(n)+9)`
-/

namespace A228663.P10205246801760792749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A052905 n + 9).toNat

end

end A228663.P10205246801760792749

namespace A228663

/-- `A228660(A052905(n)+9)` -/
def P10205246801760792749.Spec : Prop :=
  ∀ n, P10205246801760792749.a n = A228663 (n + 1)

end A228663

/-! ## A228663.P9781852997214713662

`A228660(A055999(n)+10)`
-/

namespace A228663.P9781852997214713662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A055999 n + 10).toNat

end

end A228663.P9781852997214713662

namespace A228663

/-- `A228660(A055999(n)+10)` -/
def P9781852997214713662.Spec : Prop :=
  ∀ n, P9781852997214713662.a n = A228663 (n + 1)

end A228663

/-! ## A228663.P8870930223940904609

`A228660(A167614(n+2)+1)`
-/

namespace A228663.P8870930223940904609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A167614 (n + 2) + 1).toNat

end

end A228663.P8870930223940904609

namespace A228663

/-- `A228660(A167614(n+2)+1)` -/
def P8870930223940904609.Spec : Prop :=
  ∀ n, P8870930223940904609.a n = A228663 (n + 1)

end A228663

/-! ## A228663.P8301893391288514598

`A228660(A166136(n+2)-2)`
-/

namespace A228663.P8301893391288514598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A166136 (n + 2) - 2).toNat

end

end A228663.P8301893391288514598

namespace A228663

/-- `A228660(A166136(n+2)-2)` -/
def P8301893391288514598.Spec : Prop :=
  ∀ n, P8301893391288514598.a n = A228663 (n + 1)

end A228663

/-!
# A228664: Number of 5 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228664, there is no canonical definition to state claims against.
-/

/-! ## A228664.P3838077086113497502

`A228660(A167499(n+3))`
-/

namespace A228664.P3838077086113497502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A167499 (n + 3)).toNat

end

end A228664.P3838077086113497502

/-! ## A228664.P3352509201523512950

`A228660(A000124(n+4)+4)`
-/

namespace A228664.P3352509201523512950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A000124 (n + 4) + 4).toNat

end

end A228664.P3352509201523512950

/-! ## A228664.P16806413676757985342

`A228660(A000217(n+4)+5)`
-/

namespace A228664.P16806413676757985342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A000217 (n + 4) + 5).toNat

end

end A228664.P16806413676757985342

/-! ## A228664.P7679790222522181632

`A228660(A055998(n+2)+8)`
-/

namespace A228664.P7679790222522181632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A055998 (n + 2) + 8).toNat

end

end A228664.P7679790222522181632

/-! ## A228664.P6618010413808303588

`A228660(Δ[A005286(n+1)]+6)`
-/

namespace A228664.P6618010413808303588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (f1 (n + 1) - f1 n + 6).toNat

end

end A228664.P6618010413808303588

/-!
# A228665: Number of 6 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228665, there is no canonical definition to state claims against.
-/

/-! ## A228665.P5806868191708713105

`A228660(A167499(n+4)+1)`
-/

namespace A228665.P5806868191708713105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A167499 (n + 4) + 1).toNat

end

end A228665.P5806868191708713105

/-! ## A228665.P2043026228672682927

`A228660(A167614(n+4)+3)`
-/

namespace A228665.P2043026228672682927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A167614 (n + 4) + 3).toNat

end

end A228665.P2043026228672682927

/-! ## A228665.P18241870718585742624

`A228660(A000124(n+5)+5)`
-/

namespace A228665.P18241870718585742624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A000124 (n + 5) + 5).toNat

end

end A228665.P18241870718585742624

/-! ## A228665.P12570991664186993718

`A228660(eq[7, A131818(n+1)])`
-/

namespace A228665.P12570991664186993718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228665.P12570991664186993718

/-! ## A228665.P7941607442484917259

`A228660(Δ[A023545(n+1)]+10)`
-/

namespace A228665.P7941607442484917259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (f1 (n + 1) - f1 n + 10).toNat

end

end A228665.P7941607442484917259

/-!
# A228666: Number of 7 X n binary arrays with top left value 1 and no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228666, there is no canonical definition to state claims against.
-/

/-! ## A228666.P1578334768307234525

`A228660(A056119(n)+28)`
-/

namespace A228666.P1578334768307234525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A056119 n + 28).toNat

end

end A228666.P1578334768307234525

/-! ## A228666.P5547108195974068035

`A228660(eq[11, A066657(n)])`
-/

namespace A228666.P5547108195974068035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228666.P5547108195974068035

/-! ## A228666.P7520451675047766449

`A228660(A166136(n+5)+1)`
-/

namespace A228666.P7520451675047766449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A166136 (n + 5) + 1).toNat

end

end A228666.P7520451675047766449

/-! ## A228666.P15292616997672467380

`A228660(A000217(n+6)+7)`
-/

namespace A228666.P15292616997672467380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A000217 (n + 6) + 7).toNat

end

end A228666.P15292616997672467380

/-! ## A228666.P18413932675331049494

`A228660(A056000(n+2)+17)`
-/

namespace A228666.P18413932675331049494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228660 (A056000 (n + 2) + 17).toNat

end

end A228666.P18413932675331049494

/-!
# A228669: Numbers k for which sum{prime(2*k) - prime(2*k-1)} is prime.

The programs for A228669, the canonical program `A228669.P4523925343726764388` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228669 has offset 1).

The definition of A228669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228669.P64855803508062191

`A131694(n+2)/2`
-/

namespace A228669.P64855803508062191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131694 (n + 2) : ℚ) / 2

end

end A228669.P64855803508062191

namespace A228669

/-- `A131694(n+2)/2` -/
def P64855803508062191.Spec : Prop :=
  ∀ n, P64855803508062191.a n = (A228669 (n + 1) : ℚ)

end A228669

/-! ## A228669.P4523925343726764388

`A001281(A131694(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228669

/-- `A001281(A131694(n+2))` -/
def P4523925343726764388.Spec : Prop :=
  ∀ n, P4523925343726764388.a n = A228669 (n + 1)

theorem P4523925343726764388.correct : P4523925343726764388.Spec := by
  intro n
  simp only [A228669, Nat.add_sub_cancel]

end A228669

/-! ## A228669.P5238318578755092509

`A008619(A131694(n+2)-1)`
-/

namespace A228669.P5238318578755092509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A131694 (n + 2) - 1).toNat

end

end A228669.P5238318578755092509

namespace A228669

/-- `A008619(A131694(n+2)-1)` -/
def P5238318578755092509.Spec : Prop :=
  ∀ n, P5238318578755092509.a n = A228669 (n + 1)

end A228669

/-! ## A228669.P17018855452768664668

`eq[2, A000005(A008347(2*(n+1)))]+1`
-/

namespace A228669.P17018855452768664668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008347 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228669.P17018855452768664668

namespace A228669

/-- `eq[2, A000005(A008347(2*(n+1)))]+1` -/
def P17018855452768664668.Spec : Prop :=
  ∀ n, (P17018855452768664668.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P15407083257143295676

`eq[1, A328847(A008347(2*n))]`
-/

namespace A228669.P15407083257143295676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A008347 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228669.P15407083257143295676

namespace A228669

/-- `eq[1, A328847(A008347(2*n))]` -/
def P15407083257143295676.Spec : Prop :=
  ∀ n, (P15407083257143295676.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P15343956481092517393

`eq[A000007(n), A051699(A008347(2*n))]`
-/

namespace A228669.P15343956481092517393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A008347 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228669.P15343956481092517393

namespace A228669

/-- `eq[A000007(n), A051699(A008347(2*n))]` -/
def P15343956481092517393.Spec : Prop :=
  ∀ n, (P15343956481092517393.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P4412087105835736154

`lt[A051699(A008347(2*n)), A134451(n)]`
-/

namespace A228669.P4412087105835736154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A008347 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228669.P4412087105835736154

namespace A228669

/-- `lt[A051699(A008347(2*n)), A134451(n)]` -/
def P4412087105835736154.Spec : Prop :=
  ∀ n, (P4412087105835736154.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P14677842618831773029

`eq[A005872(2*n), A051699(A008347(2*n))]`
-/

namespace A228669.P14677842618831773029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A008347 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228669.P14677842618831773029

namespace A228669

/-- `eq[A005872(2*n), A051699(A008347(2*n))]` -/
def P14677842618831773029.Spec : Prop :=
  ∀ n, (P14677842618831773029.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P4917960678787173035

`eq[A005127(A008347(2*n)), A010141(2*n+1)]`
-/

namespace A228669.P4917960678787173035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A008347 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228669.P4917960678787173035

namespace A228669

/-- `eq[A005127(A008347(2*n)), A010141(2*n+1)]` -/
def P4917960678787173035.Spec : Prop :=
  ∀ n, (P4917960678787173035.a n : ℤ) = A228669 (n + 1)

end A228669

/-! ## A228669.P13530674251825785076

`eq[A005127(A008347(2*n)), A141310(2*n+1)]`
-/

namespace A228669.P13530674251825785076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A008347 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228669.P13530674251825785076

namespace A228669

/-- `eq[A005127(A008347(2*n)), A141310(2*n+1)]` -/
def P13530674251825785076.Spec : Prop :=
  ∀ n, (P13530674251825785076.a n : ℤ) = A228669 (n + 1)

end A228669

/-!
# A228670: Number of permutations of [n] having a shortest ascending run of length 3.

The programs for A228670, there is no canonical definition to state claims against.
-/

/-! ## A228670.P7134937798616424175

`A064315(∑[n+2]+4)`
-/

namespace A228670.P7134937798616424175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228670.P7134937798616424175

/-! ## A228670.P12361299310073472831

`lcm(A033999(n), A064315(A167614(n+1)))`
-/

namespace A228670.P12361299310073472831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A064315 (A167614 (n + 1)).toNat)

end

end A228670.P12361299310073472831

/-! ## A228670.P9417660081932984506

`or(A000007(n), A064315(A167614(n+1)))`
-/

namespace A228670.P9417660081932984506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A064315 (A167614 (n + 1)).toNat)

end

end A228670.P9417660081932984506

/-! ## A228670.P7773967570596758722

`A057427(n+1)*A064315(A167614(n+1))`
-/

namespace A228670.P7773967570596758722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A064315 (A167614 (n + 1)).toNat

end

end A228670.P7773967570596758722

/-! ## A228670.P7920061919341038189

`A001055(A006530(n+1))*A064315(A167614(n+1))`
-/

namespace A228670.P7920061919341038189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A006530 (n + 1)).toNat * A064315 (A167614 (n + 1)).toNat

end

end A228670.P7920061919341038189

/-!
# A228671: Number of permutations of [n] having a shortest ascending run of length 4.

The programs for A228671, there is no canonical definition to state claims against.
-/

/-! ## A228671.P17272888760336190782

`A064315(∑[n+3]+7)`
-/

namespace A228671.P17272888760336190782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A228671.P17272888760336190782

/-! ## A228671.P13459824591577010593

`A064315(Δ[A008778(n)]+6)%A282466(n)`
-/

namespace A228671.P13459824591577010593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064315 (f1 (n + 1) - f1 n + 6).toNat) (A282466 n)

end

end A228671.P13459824591577010593

/-!
# A228672: Number of permutations of [n] having a shortest ascending run of length 5.

The programs for A228672, there is no canonical definition to state claims against.
-/

/-! ## A228672.P18389512088965501684

`A064315(A167499(n+3))`
-/

namespace A228672.P18389512088965501684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167499 (n + 3)).toNat

end

end A228672.P18389512088965501684

/-! ## A228672.P1417662933417413235

`A064315(A155212(n)+13)`
-/

namespace A228672.P1417662933417413235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A155212 n + 13).toNat

end

end A228672.P1417662933417413235

/-! ## A228672.P12102543842734374451

`A064315(A056000(n)+15)`
-/

namespace A228672.P12102543842734374451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A056000 n + 15).toNat

end

end A228672.P12102543842734374451

/-! ## A228672.P1610451907635978135

`A064315(eq[6, A131818(n+1)])`
-/

namespace A228672.P1610451907635978135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228672.P1610451907635978135

/-! ## A228672.P16576917480084499801

`A064315(A173036(n)+A016825(n))`
-/

namespace A228672.P16576917480084499801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A173036 n + A016825 n).toNat

end

end A228672.P16576917480084499801

/-!
# A228673: Number of permutations of [n] having a shortest ascending run of length 6.

The programs for A228673, there is no canonical definition to state claims against.
-/

/-! ## A228673.P16445195574946589219

`A064315(A166136(n+4))`
-/

namespace A228673.P16445195574946589219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A166136 (n + 4)).toNat

end

end A228673.P16445195574946589219

/-! ## A228673.P17079525391773645321

`A064315(A167499(n+4)+1)`
-/

namespace A228673.P17079525391773645321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167499 (n + 4) + 1).toNat

end

end A228673.P17079525391773645321

/-! ## A228673.P2715621590539744406

`A064315(A167614(n+4)+3)`
-/

namespace A228673.P2715621590539744406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167614 (n + 4) + 3).toNat

end

end A228673.P2715621590539744406

/-! ## A228673.P18225882154150706077

`A064315(A000217(n+5)+6)`
-/

namespace A228673.P18225882154150706077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A000217 (n + 5) + 6).toNat

end

end A228673.P18225882154150706077

/-! ## A228673.P14681290872427158174

`A064315(eq[7, A131818(n+1)])`
-/

namespace A228673.P14681290872427158174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228673.P14681290872427158174

/-!
# A228674: Number of permutations of [n] having a shortest ascending run of length 7.

The programs for A228674, there is no canonical definition to state claims against.
-/

/-! ## A228674.P9086733107965552981

`A064315(A167487(n+5))`
-/

namespace A228674.P9086733107965552981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167487 (n + 5)).toNat

end

end A228674.P9086733107965552981

/-! ## A228674.P5426559959574200268

`A064315(A302537(n)+27)`
-/

namespace A228674.P5426559959574200268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A302537 n + 27).toNat

end

end A228674.P5426559959574200268

/-! ## A228674.P5253970005231576226

`A064315(A167499(n+5)+2)`
-/

namespace A228674.P5253970005231576226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167499 (n + 5) + 2).toNat

end

end A228674.P5253970005231576226

/-! ## A228674.P9633089466260896837

`A064315(A000217(n+6)+7)`
-/

namespace A228674.P9633089466260896837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A000217 (n + 6) + 7).toNat

end

end A228674.P9633089466260896837

/-! ## A228674.P3544187225007326701

`A064315(eq[8, A131818(n+1)])`
-/

namespace A228674.P3544187225007326701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228674.P3544187225007326701

/-!
# A228675: Number of permutations of [n] having a shortest ascending run of length 8.

The programs for A228675, there is no canonical definition to state claims against.
-/

/-! ## A228675.P4656253884350262281

`A064315(eq[13, A066657(n)])`
-/

namespace A228675.P4656253884350262281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228675.P4656253884350262281

/-! ## A228675.P9349437876153771496

`A064315(A167487(n+6)+1)`
-/

namespace A228675.P9349437876153771496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A167487 (n + 6) + 1).toNat

end

end A228675.P9349437876153771496

/-! ## A228675.P8378778898571798421

`A064315(A055999(n+4)+14)`
-/

namespace A228675.P8378778898571798421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A055999 (n + 4) + 14).toNat

end

end A228675.P8378778898571798421

/-! ## A228675.P100087936248904136

`A064315(eq[9, A131818(n+1)])`
-/

namespace A228675.P100087936248904136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228675.P100087936248904136

/-! ## A228675.P16755858444395533438

`A064315(A000096(n+7)-n+1)`
-/

namespace A228675.P16755858444395533438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A000096 (n + 7) - (n : ℤ) + 1).toNat

end

end A228675.P16755858444395533438

/-!
# A228676: Number of permutations of [n] having a shortest ascending run of length 9.

The programs for A228676, there is no canonical definition to state claims against.
-/

/-! ## A228676.P736878434676880550

`A064315(A056126(n)+45)`
-/

namespace A228676.P736878434676880550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (A056126 n + 45).toNat

end

end A228676.P736878434676880550

/-! ## A228676.P11455954903404846329

`A064315(eq[10, A131818(n+1)])`
-/

namespace A228676.P11455954903404846329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228676.P11455954903404846329

/-! ## A228676.P4959033963182796835

`C(C(n+9, 9)-1, 2*(C(n+8, 8)-1))`
-/

namespace A228676.P4959033963182796835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose (n + 9) 9 : ℤ) - 1).toNat (2 * ((Nat.choose (n + 8) 8 : ℤ) - 1)).toNat

end

end A228676.P4959033963182796835

/-! ## A228676.P15565313790631508700

`C(A008502(n), 2*(C(n+8, 8)-1))`
-/

namespace A228676.P15565313790631508700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008502 n).toNat (2 * ((Nat.choose (n + 8) 8 : ℤ) - 1)).toNat

end

end A228676.P15565313790631508700

/-! ## A228676.P3339284499391089451

`A318517(A071976(n+1))`
-/

namespace A228676.P3339284499391089451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (A071976 (n + 1)).toNat

end

end A228676.P3339284499391089451

/-!
# A228677: Number of permutations of [n] having a shortest ascending run of length 10.

The programs for A228677, there is no canonical definition to state claims against.
-/

/-! ## A228677.P11031628904417818907

`A000984(A288548(n+9))-1`
-/

namespace A228677.P11031628904417818907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A288548 (n + 9)).toNat - 1

end

end A228677.P11031628904417818907

/-! ## A228677.P14322060195266233308

`A245863(n)-A004694(A255380(n))`
-/

namespace A228677.P14322060195266233308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245863 (n + 10) - A004694 (A255380 n).toNat

end

end A228677.P14322060195266233308

/-! ## A228677.P4333774251890607850

`A245863(n)-A024362(A202882(n+1))`
-/

namespace A228677.P4333774251890607850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245863 (n + 10) - A024362 (A202882 (n + 1)).toNat

end

end A228677.P4333774251890607850

/-!
# A228678: Number of nX3 binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228678, the canonical program `A228678.P13064267424282029957` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228678 has offset 1).

The definition of A228678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228678.P3555534921106178034

`ogf((5-6x-3x^2)/(1-5x+3x^2+3x^3))`
-/

namespace A228678.P3555534921106178034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, -3] [1, -5, 3, 3] n

end

end A228678.P3555534921106178034

namespace A228678

/-- `ogf((5-6x-3x^2)/(1-5x+3x^2+3x^3))` -/
def P3555534921106178034.Spec : Prop :=
  ∀ n, P3555534921106178034.a n = A228678 (n + 1)

end A228678

/-! ## A228678.P13064267424282029957

`5*a(n-1)-3*a(n-2)-3*a(n-3)` with `a(0)=5, a(1)=19, a(2)=77`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228678

/-- `5*a(n-1)-3*a(n-2)-3*a(n-3)` -/
def P13064267424282029957.Spec : Prop :=
  ∀ n, P13064267424282029957.a n = A228678 (n + 1)

theorem P13064267424282029957.correct : P13064267424282029957.Spec := by
  intro n
  simp only [A228678, Nat.add_sub_cancel]

end A228678

/-! ## A228678.P10440392076918477077

`A269070(n+1)-A269006(n+1)`
-/

namespace A228678.P10440392076918477077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269070 (n + 1) - A269006 (n + 1)

end

end A228678.P10440392076918477077

namespace A228678

/-- `A269070(n+1)-A269006(n+1)` -/
def P10440392076918477077.Spec : Prop :=
  ∀ n, P10440392076918477077.a n = A228678 (n + 1)

end A228678

/-! ## A228678.P13849412471133307131

`A228683(∑[n+3]+1)`
-/

namespace A228678.P13849412471133307131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228678.P13849412471133307131

namespace A228678

/-- `A228683(∑[n+3]+1)` -/
def P13849412471133307131.Spec : Prop :=
  ∀ n, P13849412471133307131.a n = A228678 (n + 1)

end A228678

/-! ## A228678.P14525518194361093451

`A269075(∑[n+3]+1)-A269006(n+1)`
-/

namespace A228678.P14525518194361093451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A269006 (n + 1)

end

end A228678.P14525518194361093451

namespace A228678

/-- `A269075(∑[n+3]+1)-A269006(n+1)` -/
def P14525518194361093451.Spec : Prop :=
  ∀ n, P14525518194361093451.a n = A228678 (n + 1)

end A228678

/-!
# A228679: Number of nX4 binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228679, the canonical program `A228679.P7325300098850460232` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228679 has offset 1).

The definition of A228679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228679.P11549643213623419809

`ogf((8-8x-8x^2)/(1-6x+2x^2+8x^3))`
-/

namespace A228679.P11549643213623419809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -8, -8] [1, -6, 2, 8] n

end

end A228679.P11549643213623419809

namespace A228679

/-- `ogf((8-8x-8x^2)/(1-6x+2x^2+8x^3))` -/
def P11549643213623419809.Spec : Prop :=
  ∀ n, P11549643213623419809.a n = A228679 (n + 1)

end A228679

/-! ## A228679.P7325300098850460232

`6*a(n-1)-2*a(n-2)-8*a(n-3)` with `a(0)=8, a(1)=40, a(2)=216`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228679

/-- `6*a(n-1)-2*a(n-2)-8*a(n-3)` -/
def P7325300098850460232.Spec : Prop :=
  ∀ n, P7325300098850460232.a n = A228679 (n + 1)

theorem P7325300098850460232.correct : P7325300098850460232.Spec := by
  intro n
  simp only [A228679, Nat.add_sub_cancel]

end A228679

/-! ## A228679.P833134120194113558

`A228683(A027379(n+2))`
-/

namespace A228679.P833134120194113558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A027379 (n + 2)).toNat

end

end A228679.P833134120194113558

namespace A228679

/-- `A228683(A027379(n+2))` -/
def P833134120194113558.Spec : Prop :=
  ∀ n, P833134120194113558.a n = A228679 (n + 1)

end A228679

/-! ## A228679.P6963067396606832052

`A228683(A052905(n+1)+2)`
-/

namespace A228679.P6963067396606832052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A052905 (n + 1) + 2).toNat

end

end A228679.P6963067396606832052

namespace A228679

/-- `A228683(A052905(n+1)+2)` -/
def P6963067396606832052.Spec : Prop :=
  ∀ n, P6963067396606832052.a n = A228679 (n + 1)

end A228679

/-!
# A228680: Number of n X 5 binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228680, there is no canonical definition to state claims against.
-/

/-! ## A228680.P9977829759819309653

`A228683(Δ[A264443(n)])`
-/

namespace A228680.P9977829759819309653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (f1 (n + 1) - f1 n).toNat

end

end A228680.P9977829759819309653

/-! ## A228680.P1385031528969384041

`A228683(eq[4, A193592(n)])`
-/

namespace A228680.P1385031528969384041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228680.P1385031528969384041

/-! ## A228680.P10325304379667708947

`A228683(eq[8, A140996(n)])`
-/

namespace A228680.P10325304379667708947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228680.P10325304379667708947

/-! ## A228680.P4904973964173493192

`A228683(Δ[A023545(n+1)])`
-/

namespace A228680.P4904973964173493192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (f1 (n + 1) - f1 n).toNat

end

end A228680.P4904973964173493192

/-! ## A228680.P500951232685761750

`A228683(eq[8, A057728(n+1)])`
-/

namespace A228680.P500951232685761750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228680.P500951232685761750

/-!
# A228681: Number of n X 6 binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228681, there is no canonical definition to state claims against.
-/

/-! ## A228681.P10668896564997344344

`A228683(A052905(n+3))`
-/

namespace A228681.P10668896564997344344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A052905 (n + 3)).toNat

end

end A228681.P10668896564997344344

/-! ## A228681.P7508209063826986353

`A228683(eq[3, A219347(n)])`
-/

namespace A228681.P7508209063826986353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228681.P7508209063826986353

/-! ## A228681.P2181028272803492125

`A228683(eq[5, A193592(n)])`
-/

namespace A228681.P2181028272803492125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228681.P2181028272803492125

/-! ## A228681.P1118571303368842150

`A228683(eq[8, A258709(n)])`
-/

namespace A228681.P1118571303368842150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228681.P1118571303368842150

/-! ## A228681.P9332638689232030494

`A228683(A134227(n+4)+1)`
-/

namespace A228681.P9332638689232030494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A134227 (n + 4) + 1).toNat

end

end A228681.P9332638689232030494

/-!
# A228682: Number of nX7 binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228682, there is no canonical definition to state claims against.
-/

/-! ## A228682.P6785055562746347335

`A228683(A055999(n+4))`
-/

namespace A228682.P6785055562746347335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A055999 (n + 4)).toNat

end

end A228682.P6785055562746347335

/-! ## A228682.P8013787153331339376

`A228683(eq[4, A219347(n)])`
-/

namespace A228682.P8013787153331339376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228682.P8013787153331339376

/-! ## A228682.P4572534088482562242

`A228683(eq[6, A193592(n)])`
-/

namespace A228682.P4572534088482562242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228682.P4572534088482562242

/-! ## A228682.P899572671014610970

`A228683(A052905(n+4)-1)`
-/

namespace A228682.P899572671014610970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A052905 (n + 4) - 1).toNat

end

end A228682.P899572671014610970

/-! ## A228682.P8616013290107734163

`A228683(eq[10, A185782(n+1)])`
-/

namespace A228682.P8616013290107734163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228682.P8616013290107734163

/-!
# A228683: T(n,k)=Number of nXk binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228683, there is no canonical definition to state claims against.
-/

/-! ## A228683.P17769106483781602955

`A269075(n+1)-A269011(n+1)`
-/

namespace A228683.P17769106483781602955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) - A269011 (n + 1)

end

end A228683.P17769106483781602955

/-! ## A228683.P6841389925756895149

`A283543(n+1)-(A269011(n+1)+A107846(A001006(n)))`
-/

namespace A228683.P6841389925756895149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A269011 (n + 1) + A107846 (A001006 n).toNat)

end

end A228683.P6841389925756895149

/-! ## A228683.P13254643767355723542

`A283543(n+1)-(A269011(n+1)+A044940(A102468(n)))`
-/

namespace A228683.P13254643767355723542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A269011 (n + 1) + A044940 (A102468 n).toNat)

end

end A228683.P13254643767355723542

/-!
# A228684: Number of 3 X n binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228684, the canonical program `A228684.P6711127263793948843` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228684 has offset 1).

The definition of A228684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228684.P17963302324124531956

`ogf((8+x-5x^2)/(1-2x-6x^2+5x^3))`
-/

namespace A228684.P17963302324124531956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 1, -5] [1, -2, -6, 5] n

end

end A228684.P17963302324124531956

namespace A228684

/-- `ogf((8+x-5x^2)/(1-2x-6x^2+5x^3))` -/
def P17963302324124531956.Spec : Prop :=
  ∀ n, P17963302324124531956.a n = A228684 (n + 1)

end A228684

/-! ## A228684.P6711127263793948843

`2*a(n-1)+6*a(n-2)-5*a(n-3)` with `a(0)=8, a(1)=17, a(2)=77`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228684

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)` -/
def P6711127263793948843.Spec : Prop :=
  ∀ n, P6711127263793948843.a n = A228684 (n + 1)

theorem P6711127263793948843.correct : P6711127263793948843.Spec := by
  intro n
  simp only [A228684, Nat.add_sub_cancel]

end A228684

/-! ## A228684.P7529330097333395119

`A230800(n+4)/2`
-/

namespace A228684.P7529330097333395119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230800 (n + 4) : ℚ) / 2

end

end A228684.P7529330097333395119

namespace A228684

/-- `A230800(n+4)/2` -/
def P7529330097333395119.Spec : Prop :=
  ∀ n, P7529330097333395119.a n = (A228684 (n + 1) : ℚ)

end A228684

/-! ## A228684.P14595253036932447034

`A269077(n+1)-A269013(n+1)`
-/

namespace A228684.P14595253036932447034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269077 (n + 1) - A269013 (n + 1)

end

end A228684.P14595253036932447034

namespace A228684

/-- `A269077(n+1)-A269013(n+1)` -/
def P14595253036932447034.Spec : Prop :=
  ∀ n, P14595253036932447034.a n = A228684 (n + 1)

end A228684

/-! ## A228684.P8348456317110142828

`A228683(∑[n+2]+4)`
-/

namespace A228684.P8348456317110142828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228684.P8348456317110142828

namespace A228684

/-- `A228683(∑[n+2]+4)` -/
def P8348456317110142828.Spec : Prop :=
  ∀ n, P8348456317110142828.a n = A228684 (n + 1)

end A228684

/-!
# A228685: Number of 4 X n binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228685, there is no canonical definition to state claims against.
-/

/-! ## A228685.P13762343473966001543

`A228683(A052905(n)+9)`
-/

namespace A228685.P13762343473966001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A052905 n + 9).toNat

end

end A228685.P13762343473966001543

/-! ## A228685.P4253356357605281645

`A228683(A055999(n)+10)`
-/

namespace A228685.P4253356357605281645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A055999 n + 10).toNat

end

end A228685.P4253356357605281645

/-! ## A228685.P12986811212785481394

`A228683(A167614(n+2)+1)`
-/

namespace A228685.P12986811212785481394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167614 (n + 2) + 1).toNat

end

end A228685.P12986811212785481394

/-! ## A228685.P6395100236573344534

`A228683(A167499(n+2)-1)`
-/

namespace A228685.P6395100236573344534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167499 (n + 2) - 1).toNat

end

end A228685.P6395100236573344534

/-! ## A228685.P14020785568560137854

`A228683(A166136(n+2)-2)`
-/

namespace A228685.P14020785568560137854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A166136 (n + 2) - 2).toNat

end

end A228685.P14020785568560137854

/-!
# A228686: Number of 5 X n binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228686, there is no canonical definition to state claims against.
-/

/-! ## A228686.P12128808012789293918

`A269079(n+1)-A269015(n+1)`
-/

namespace A228686.P12128808012789293918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269079 (n + 1) - A269015 (n + 1)

end

end A228686.P12128808012789293918

/-! ## A228686.P9146904403611134701

`A228683(A167499(n+3))`
-/

namespace A228686.P9146904403611134701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167499 (n + 3)).toNat

end

end A228686.P9146904403611134701

/-! ## A228686.P5342916447898003688

`A228683(A056000(n)+15)`
-/

namespace A228686.P5342916447898003688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A056000 n + 15).toNat

end

end A228686.P5342916447898003688

/-! ## A228686.P18076313788344810239

`A228683(A167614(n+3)+2)`
-/

namespace A228686.P18076313788344810239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167614 (n + 3) + 2).toNat

end

end A228686.P18076313788344810239

/-! ## A228686.P16941352562840192205

`A228683(A000124(n+4)+4)`
-/

namespace A228686.P16941352562840192205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A000124 (n + 4) + 4).toNat

end

end A228686.P16941352562840192205

/-!
# A228687: Number of 6Xn binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228687, there is no canonical definition to state claims against.
-/

/-! ## A228687.P2632763000139791898

`A228683(A166136(n+4))`
-/

namespace A228687.P2632763000139791898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A166136 (n + 4)).toNat

end

end A228687.P2632763000139791898

/-! ## A228687.P12371525323330573909

`A228683(A167499(n+4)+1)`
-/

namespace A228687.P12371525323330573909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167499 (n + 4) + 1).toNat

end

end A228687.P12371525323330573909

/-! ## A228687.P12638020132036875688

`A228683(A246172(n+1)+20)`
-/

namespace A228687.P12638020132036875688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A246172 (n + 1) + 20).toNat

end

end A228687.P12638020132036875688

/-! ## A228687.P4415542424156902879

`A228683(eq[7, A131818(n+1)])`
-/

namespace A228687.P4415542424156902879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228687.P4415542424156902879

/-! ## A228687.P17538337321935746083

`A228683(A000124(n+6)-(n+1))`
-/

namespace A228687.P17538337321935746083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A228687.P17538337321935746083

/-!
# A228688: Number of 7Xn binary arrays with no two ones adjacent horizontally, diagonally or antidiagonally.

The programs for A228688, there is no canonical definition to state claims against.
-/

/-! ## A228688.P8856500195915873897

`A228683(A167487(n+5))`
-/

namespace A228688.P8856500195915873897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167487 (n + 5)).toNat

end

end A228688.P8856500195915873897

/-! ## A228688.P17068713044049397613

`A228683(eq[11, A066657(n)])`
-/

namespace A228688.P17068713044049397613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228688.P17068713044049397613

/-! ## A228688.P17806632262611077124

`A228683(A167614(n+5)+4)`
-/

namespace A228688.P17806632262611077124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A167614 (n + 5) + 4).toNat

end

end A228688.P17806632262611077124

/-! ## A228688.P10746784315682791468

`A228683(A000124(n+6)+6)`
-/

namespace A228688.P10746784315682791468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A000124 (n + 6) + 6).toNat

end

end A228688.P10746784315682791468

/-! ## A228688.P3208497836474770081

`A228683(eq[8, A131818(n+1)])`
-/

namespace A228688.P3208497836474770081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228688.P3208497836474770081

/-!
# A228689: a(n) = A001676(4*n + 3).

The programs for A228689, there is no canonical definition to state claims against.
-/

/-! ## A228689.P7249386019352205293

`A001676(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228689.P7249386019352205293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001676 (4 * n + 3)

end

end A228689.P7249386019352205293

/-! ## A228689.P3275097376488710206

`A001676(record[xor(3, n)])/A054977(n+4)`
-/

namespace A228689.P3275097376488710206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / (A054977 (n + 4) : ℚ)

end

end A228689.P3275097376488710206

/-! ## A228689.P16298633560301024240

`gcd(A001676(A004767(n)), A058343(n))`
-/

namespace A228689.P16298633560301024240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001676 (A004767 n).toNat) (A058343 n)

end

end A228689.P16298633560301024240

/-! ## A228689.P5840306676712266389

`lcm(A001676(A004767(n)), A057077(n))`
-/

namespace A228689.P5840306676712266389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001676 (A004767 n).toNat) (A057077 n)

end

end A228689.P5840306676712266389

/-! ## A228689.P14135306822940822852

`or(A000007(n), A001676(A004767(n)))`
-/

namespace A228689.P14135306822940822852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001676 (A004767 n).toNat)

end

end A228689.P14135306822940822852

/-!
# A228690: a(n) = A001676(4*n).

The programs for A228690, there is no canonical definition to state claims against.
-/

/-! ## A228690.P6038850591889765196

`A001676(4*(n+1))`
-/

namespace A228690.P6038850591889765196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001676 (4 * (n + 1))

end

end A228690.P6038850591889765196

/-! ## A228690.P11876338834227095771

`A187717(4*(n+1))`
-/

namespace A228690.P11876338834227095771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187717 (4 * (n + 1))

end

end A228690.P11876338834227095771

/-! ## A228690.P11917830861202624639

`A187717(A059558(n+1))%A048575(n)`
-/

namespace A228690.P11917830861202624639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187717 (A059558 (n + 1)).toNat) (A048575 n)

end

end A228690.P11917830861202624639

/-! ## A228690.P16218014989413297173

`gcd(A058343(n), A187717(A059558(n+1)))`
-/

namespace A228690.P16218014989413297173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058343 n) (A187717 (A059558 (n + 1)).toNat)

end

end A228690.P16218014989413297173

/-! ## A228690.P15714905891287935791

`lcm(A057077(n), A187717(A059558(n+1)))`
-/

namespace A228690.P15714905891287935791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A187717 (A059558 (n + 1)).toNat)

end

end A228690.P15714905891287935791

/-!
# A228691: a(n) = A001676(4*n + 1).

The programs for A228691, there is no canonical definition to state claims against.
-/

/-! ## A228691.P5307146001199552973

`A001676(4*n+1)`
-/

namespace A228691.P5307146001199552973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001676 (4 * n + 1)

end

end A228691.P5307146001199552973

/-! ## A228691.P1095454638320886649

`A001676(A016813(n))%A362234(n+3)`
-/

namespace A228691.P1095454638320886649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001676 (A016813 n).toNat) (A362234 (n + 3))

end

end A228691.P1095454638320886649

/-!
# A228692: a(n) = A001676(4n+2).

The programs for A228692, there is no canonical definition to state claims against.
-/

/-! ## A228692.P6681361263498071206

`A001676(4*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228692.P6681361263498071206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001676 (4 * n + 2)

end

end A228692.P6681361263498071206

/-! ## A228692.P11581765054862716961

`A187717(4*n+2)`
-/

namespace A228692.P11581765054862716961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187717 (4 * n + 2)

end

end A228692.P11581765054862716961

/-! ## A228692.P8651011404250922346

`A187717(A016825(n))%A020729(n)`
-/

namespace A228692.P8651011404250922346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187717 (A016825 n).toNat) (A020729 n)

end

end A228692.P8651011404250922346

/-! ## A228692.P6350173579140152441

`gcd(A058343(n), A187717(A016825(n)))`
-/

namespace A228692.P6350173579140152441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058343 n) (A187717 (A016825 n).toNat)

end

end A228692.P6350173579140152441

/-!
# A228693: Largest number of maximal independent sets of nodes in any tree on n nodes.

The programs for A228693, the canonical program `A228693.P17030381401072709166` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228693 has offset 0).

The definition of A228693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228693.P17030381401072709166

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228693

/-- `3*a(n-2)-2*a(n-4)` -/
def P17030381401072709166.Spec : Prop :=
  ∀ n, P17030381401072709166.a n = A228693 n

theorem P17030381401072709166.correct : P17030381401072709166.Spec := by
  intro n
  simp only [A228693]

end A228693

/-! ## A228693.P6171831210584310000

`2*a(n-2)-(n+1)%2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A228693.P6171831210584310000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 2) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A228693.P6171831210584310000

namespace A228693

/-- `2*a(n-2)-(n+1)%2` -/
def P6171831210584310000.Spec : Prop :=
  ∀ n, P6171831210584310000.a n = A228693 n

end A228693

/-! ## A228693.P835588298058977382

`a(n-2)+or(1, a(n-2))-1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A228693.P835588298058977382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 3] fun n a =>
  a (n - 2) + Int.lor 1 (a (n - 2)) - 1

end

end A228693.P835588298058977382

namespace A228693

/-- `a(n-2)+or(1, a(n-2))-1` -/
def P835588298058977382.Spec : Prop :=
  ∀ n, P835588298058977382.a n = A228693 n

end A228693

/-! ## A228693.P18106110426008348232

`a(n-1)+a(n-2)-gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A228693.P18106110426008348232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Int.gcd (a (n - 1)) (a (n - 3)) : ℤ))

end

end A228693.P18106110426008348232

namespace A228693

/-- `a(n-1)+a(n-2)-gcd(a(n-1), a(n-3))` -/
def P18106110426008348232.Spec : Prop :=
  ∀ n, P18106110426008348232.a n = A228693 n

end A228693

/-! ## A228693.P721573746708848240

`A158780(A124625(n))+A158780(n)`
-/

namespace A228693.P721573746708848240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A124625 n).toNat + A158780 n

end

end A228693.P721573746708848240

namespace A228693

/-- `A158780(A124625(n))+A158780(n)` -/
def P721573746708848240.Spec : Prop :=
  ∀ n, P721573746708848240.a n = A228693 n

end A228693

/-! ## A228693.P17503153049616399843

`A131577(A110654(n))+Δ[A110654(n)]`
-/

namespace A228693.P17503153049616399843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A110654 n).toNat + (f1 (n + 1) - f1 n)

end

end A228693.P17503153049616399843

namespace A228693

/-- `A131577(A110654(n))+Δ[A110654(n)]` -/
def P17503153049616399843.Spec : Prop :=
  ∀ n, P17503153049616399843.a n = A228693 n

end A228693

/-! ## A228693.P17770048412798632256

`A131577(A004526(n+1))+A059841(n)`
-/

namespace A228693.P17770048412798632256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004526 (n + 1)).toNat + A059841 n

end

end A228693.P17770048412798632256

namespace A228693

/-- `A131577(A004526(n+1))+A059841(n)` -/
def P17770048412798632256.Spec : Prop :=
  ∀ n, P17770048412798632256.a n = A228693 n

end A228693

/-! ## A228693.P9364903720858886451

`A000079(A140106(n+1))+Δ[A140106(n+1)]`
-/

namespace A228693.P9364903720858886451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A140106 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A228693.P9364903720858886451

namespace A228693

/-- `A000079(A140106(n+1))+Δ[A140106(n+1)]` -/
def P9364903720858886451.Spec : Prop :=
  ∀ n, P9364903720858886451.a n = A228693 n

end A228693

/-! ## A228693.P10089769612876452261

`A110654(n+1)+A000295(n%A110654(n+1))`
-/

namespace A228693.P10089769612876452261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + A000295 (Int.tmod (n : ℤ) (A110654 (n + 1))).toNat

end

end A228693.P10089769612876452261

namespace A228693

/-- `A110654(n+1)+A000295(n%A110654(n+1))` -/
def P10089769612876452261.Spec : Prop :=
  ∀ n, P10089769612876452261.a n = A228693 n

end A228693

/-! ## A228693.P8794967180161469787

`A029744(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A228693.P8794967180161469787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029744 n + (1 - a (n - 1))

end

end A228693.P8794967180161469787

namespace A228693

/-- `A029744(n)+1-a(n-1)` -/
def P8794967180161469787.Spec : Prop :=
  ∀ n, P8794967180161469787.a n = A228693 n

end A228693

/-! ## A228693.P779807150180003575

`A209721(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A228693.P779807150180003575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A209721 (n - 1) - a (n - 1)

end

end A228693.P779807150180003575

namespace A228693

/-- `A209721(n-1)-a(n-1)` -/
def P779807150180003575.Spec : Prop :=
  ∀ n, P779807150180003575.a n = A228693 n

end A228693

/-! ## A228693.P12193344445405352132

`round((A086341(n+1)+1)/4)`
-/

namespace A228693.P12193344445405352132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086341 (n + 1) + 1 : ℚ) / 4)

end

end A228693.P12193344445405352132

namespace A228693

/-- `round((A086341(n+1)+1)/4)` -/
def P12193344445405352132.Spec : Prop :=
  ∀ n, P12193344445405352132.a n = A228693 n

end A228693

/-! ## A228693.P2936100494760784410

`char[2*(n+1)]+Δ[A029744(n+1)]`
-/

namespace A228693.P2936100494760784410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A228693.P2936100494760784410

namespace A228693

/-- `char[2*(n+1)]+Δ[A029744(n+1)]` -/
def P2936100494760784410.Spec : Prop :=
  ∀ n, P2936100494760784410.a n = A228693 n

end A228693

/-! ## A228693.P4009082481800278292

`A000035(n+1)+A005418(n+1)-A011782(n)`
-/

namespace A228693.P4009082481800278292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A005418 (n + 1) - A011782 n)

end

end A228693.P4009082481800278292

namespace A228693

/-- `A000035(n+1)+A005418(n+1)-A011782(n)` -/
def P4009082481800278292.Spec : Prop :=
  ∀ n, P4009082481800278292.a n = A228693 n

end A228693

/-! ## A228693.P18265187675303078566

`A052531(n)-A354294(n)`
-/

namespace A228693.P18265187675303078566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n - A354294 n

end

end A228693.P18265187675303078566

namespace A228693

/-- `A052531(n)-A354294(n)` -/
def P18265187675303078566.Spec : Prop :=
  ∀ n, P18265187675303078566.a n = A228693 n

end A228693

/-! ## A228693.P1168273206793051759

`ceil(A001445(n+2)/(A075427(n+1)+2))`
-/

namespace A228693.P1168273206793051759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001445 (n + 2) : ℚ) / (A075427 (n + 1) + 2 : ℚ)⌉

end

end A228693.P1168273206793051759

namespace A228693

/-- `ceil(A001445(n+2)/(A075427(n+1)+2))` -/
def P1168273206793051759.Spec : Prop :=
  ∀ n, P1168273206793051759.a n = A228693 n

end A228693

/-! ## A228693.P10763982223484696542

`A308663(A055802(n+3))`
-/

namespace A228693.P10763982223484696542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A055802 (n + 3)).toNat

end

end A228693.P10763982223484696542

namespace A228693

/-- `A308663(A055802(n+3))` -/
def P10763982223484696542.Spec : Prop :=
  ∀ n, P10763982223484696542.a n = A228693 n

end A228693

/-! ## A228693.P2444576382387353771

`A308663(lt[A308690(n+1), 4])`
-/

namespace A228693.P2444576382387353771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A228693.P2444576382387353771

namespace A228693

/-- `A308663(lt[A308690(n+1), 4])` -/
def P2444576382387353771.Spec : Prop :=
  ∀ n, P2444576382387353771.a n = A228693 n

end A228693

/-!
# A228695: Number of labeled graphs on 2n nodes with degree set {1,2,3}, with multiple edges and loops allowed.

The programs for A228695, there is no canonical definition to state claims against.
-/

/-! ## A228695.P15296502729835675072

`∏{p}[A329723(∑[n+1])², #]`
-/

namespace A228695.P15296502729835675072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A228695.P15296502729835675072

/-!
# A228696: Number of labeled graphs on n nodes with degree set {2,4}, with multiple edges and loops allowed.

The programs for A228696, there is no canonical definition to state claims against.
-/

/-! ## A228696.P1390692341506790508

`A357759((n+1)^n+1)`
-/

namespace A228696.P1390692341506790508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357759 ((n + 1) ^ n + 1)

end

end A228696.P1390692341506790508

/-!
# A228698: a(n) = 8*(Product{i=1..n} p(i + 1)) - 1, where p(i) = i-th prime.

The programs for A228698, there is no canonical definition to state claims against.
-/

/-! ## A228698.P15068862501696788310

`A102476(n+2)-1`
-/

namespace A228698.P15068862501696788310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102476 (n + 2) - 1

end

end A228698.P15068862501696788310

/-! ## A228698.P11894173875075090901

`2*A282704(n+1)+1`
-/

namespace A228698.P11894173875075090901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282704 (n + 1) + 1

end

end A228698.P11894173875075090901

/-! ## A228698.P12781698659165641406

`2*A088860(n+1)-1`
-/

namespace A228698.P12781698659165641406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088860 (n + 1) - 1

end

end A228698.P12781698659165641406

/-! ## A228698.P3673740882440600597

`2*A097250(n+1)-1`
-/

namespace A228698.P3673740882440600597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097250 (n + 1) - 1

end

end A228698.P3673740882440600597

/-! ## A228698.P14276941238335213334

`A001041(n+1)/3-1`
-/

namespace A228698.P14276941238335213334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001041 (n + 1) : ℚ) / 3 - 1

end

end A228698.P14276941238335213334

/-! ## A228698.P15356456494979936949

`4*A057588(n+1)+3`
-/

namespace A228698.P15356456494979936949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057588 (n + 1) + 3

end

end A228698.P15356456494979936949

/-! ## A228698.P4912367312828485396

`4*∏[A000040(n+1)]-1`
-/

namespace A228698.P4912367312828485396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A228698.P4912367312828485396

/-! ## A228698.P1092730710519006276

`4*∏[record[A006530(n+2)]]-1`
-/

namespace A228698.P1092730710519006276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A228698.P1092730710519006276

/-! ## A228698.P1332472843639828772

`4*xor(3, ∏[eq[n+2, A000203(n+1)]+1])+3`
-/

namespace A228698.P1332472843639828772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 3 (∏ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A228698.P1332472843639828772

/-! ## A228698.P8287587381876640786

`A001749(n+1)*A002110(n)-1`
-/

namespace A228698.P8287587381876640786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) * A002110 n - 1

end

end A228698.P8287587381876640786

/-!
# A228699: Primes of the form 8*Product{i=1..n} p(i) - 1, where p(i) = i-th odd prime.

The programs for A228699, there is no canonical definition to state claims against.
-/

/-! ## A228699.P16364533398042506965

`A332802(lt[A072616(n+1), A072647(n)])`
-/

namespace A228699.P16364533398042506965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332802 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228699.P16364533398042506965

/-! ## A228699.P11312477153257425404

`A228698(lt[A228677(n+1), A228717(n+1)])`
-/

namespace A228699.P11312477153257425404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228677 (n + 1 + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228698 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228699.P11312477153257425404

