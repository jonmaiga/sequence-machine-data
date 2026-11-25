import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171000: Irreducible Boolean polynomials written as binary vectors.

The programs for A171000, there is no canonical definition to state claims against.
-/

/-! ## A171000.P5401773519696103178

`A007088(A067139(n+1))`
-/

namespace A171000.P5401773519696103178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A067139 (n + 1)).toNat

end

end A171000.P5401773519696103178

/-! ## A171000.P10484767503293462303

`A185544(2*A067139(n+1))`
-/

namespace A171000.P10484767503293462303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A067139 (n + 1)).toNat

end

end A171000.P10484767503293462303

/-! ## A171000.P14905361891497374995

`A112867(A394700(n+2))`
-/

namespace A171000.P14905361891497374995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A394700 (n + 2)).toNat

end

end A171000.P14905361891497374995

/-!
# A171001: Binomial(n-k,k)^2 where k = ceiling(n/4).

The programs for A171001, the canonical program `A171001.P15890735463834651018` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171001 has offset 0).

The definition of A171001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171001.P15890735463834651018

`C(A057353(n), ceil(n/4))²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171001

/-- `C(A057353(n), ceil(n/4))²` -/
def P15890735463834651018.Spec : Prop :=
  ∀ n, (P15890735463834651018.a n : ℤ) = A171001 n

theorem P15890735463834651018.correct : P15890735463834651018.Spec := by
  intro n
  simp only [A171001]

end A171001

/-! ## A171001.P7907262213486290911

`C(A057360(2*n), A110655(n))²`
-/

namespace A171001.P7907262213486290911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057360 (2 * n)).toNat (A110655 n).toNat ^ 2

end

end A171001.P7907262213486290911

namespace A171001

/-- `C(A057360(2*n), A110655(n))²` -/
def P7907262213486290911.Spec : Prop :=
  ∀ n, (P7907262213486290911.a n : ℤ) = A171001 n

end A171001

/-! ## A171001.P14368838362610235157

`C(A002265(3*n), A110655(n))²`
-/

namespace A171001.P14368838362610235157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (3 * n)).toNat (A110655 n).toNat ^ 2

end

end A171001.P14368838362610235157

namespace A171001

/-- `C(A002265(3*n), A110655(n))²` -/
def P14368838362610235157.Spec : Prop :=
  ∀ n, (P14368838362610235157.a n : ℤ) = A171001 n

end A171001

/-! ## A171001.P7072006793104794979

`A185331(record[A278818(n)])²`
-/

namespace A171001.P7072006793104794979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A171001.P7072006793104794979

namespace A171001

/-- `A185331(record[A278818(n)])²` -/
def P7072006793104794979.Spec : Prop :=
  ∀ n, P7072006793104794979.a n = A171001 n

end A171001

/-! ## A171001.P14903520609827013239

`A185331(A047838(n+2))²`
-/

namespace A171001.P14903520609827013239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A047838 (n + 2)).toNat ^ 2

end

end A171001.P14903520609827013239

namespace A171001

/-- `A185331(A047838(n+2))²` -/
def P14903520609827013239.Spec : Prop :=
  ∀ n, P14903520609827013239.a n = A171001 n

end A171001

/-!
# A171002: Binomial(n-k,k) * binomial(n-k-1,k+1) where k = ceiling(n/4).

The programs for A171002, there is no canonical definition to state claims against.
-/

/-! ## A171002.P3232976872508326114

`A047160(n+3)*A287729(A191755(n))`
-/

namespace A171002.P3232976872508326114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 3) * A287729 (A191755 n).toNat

end

end A171002.P3232976872508326114

/-! ## A171002.P11654108843583012732

`A100949(A257801(n+5)^A321132(n+1))`
-/

namespace A171002.P11654108843583012732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (SequenceMachineLib.roundAway ((A257801 (n + 5) : ℚ) ^ (A321132 (n + 1) : ℤ))).toNat

end

end A171002.P11654108843583012732

/-! ## A171002.P5466183088712547047

`A096067(A096067(A002473(A000079(A002473(n+1))+1)+1)+1)`
-/

namespace A171002.P5466183088712547047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096067 (A096067 (A002473 (A000079 (A002473 (n + 1)).toNat + 1).toNat + 1).toNat + 1).toNat

end

end A171002.P5466183088712547047

/-!
# A171004: Numbers which are the lunar product of lunar primes in more than one way.

The programs for A171004, there is no canonical definition to state claims against.
-/

/-! ## A171004.P3883636411539519165

`A169977(n+2)`
-/

namespace A171004.P3883636411539519165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169977 (n + 2)

end

end A171004.P3883636411539519165

/-!
# A171005: a(n) = (n+1)*(n-1)!/2.

The programs for A171005, the canonical program `A171005.P9645506390964445830` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171005 has offset 3).

The definition of A171005 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A171005.anchor (n : ℕ) : (A171005 (n + 3) : ℚ) = ((n + 4) * Nat.factorial (n + 2) : ℚ) / 2` in `Proof.A171.A171005`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171005.P9645506390964445830

`(n+4)*(n+2)!/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171005

/-- `(n+4)*(n+2)!/2` -/
def P9645506390964445830.Spec : Prop :=
  ∀ n, P9645506390964445830.a n = (A171005 (n + 3) : ℚ)

end A171005

/-! ## A171005.P5803597464573053869

`A001048(n+3)/2`
-/

namespace A171005.P5803597464573053869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001048 (n + 3) : ℚ) / 2

end

end A171005.P5803597464573053869

namespace A171005

/-- `A001048(n+3)/2` -/
def P5803597464573053869.Spec : Prop :=
  ∀ n, P5803597464573053869.a n = (A171005 (n + 3) : ℚ)

end A171005

/-! ## A171005.P10685851497637303788

`∏[n+3]*ratio[n+3]`
-/

namespace A171005.P10685851497637303788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A171005.P10685851497637303788

namespace A171005

/-- `∏[n+3]*ratio[n+3]` -/
def P10685851497637303788.Spec : Prop :=
  ∀ n, P10685851497637303788.a n = (A171005 (n + 3) : ℚ)

end A171005

/-! ## A171005.P5395734730283672350

`∏[n+3]+(n+2)!/2`
-/

namespace A171005.P5395734730283672350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.factorial (n + 2) : ℚ) / 2

end

end A171005.P5395734730283672350

namespace A171005

/-- `∏[n+3]+(n+2)!/2` -/
def P5395734730283672350.Spec : Prop :=
  ∀ n, P5395734730283672350.a n = (A171005 (n + 3) : ℚ)

end A171005

/-! ## A171005.P9307514805760054940

`abs(Δ[-((n+2)*a(n-1))])` with `a(0)=1`
-/

namespace A171005.P9307514805760054940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n + 2 : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171005.P9307514805760054940

namespace A171005

/-- `abs(Δ[-((n+2)*a(n-1))])` -/
def P9307514805760054940.Spec : Prop :=
  ∀ n, P9307514805760054940.a n = A171005 (n + 3)

end A171005

/-! ## A171005.P1493926599830882894

`∏[n+3]+n!*∑[n+1]`
-/

namespace A171005.P1493926599830882894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A171005.P1493926599830882894

namespace A171005

/-- `∏[n+3]+n!*∑[n+1]` -/
def P1493926599830882894.Spec : Prop :=
  ∀ n, (P1493926599830882894.a n : ℤ) = A171005 (n + 3)

end A171005

/-! ## A171005.P6769692485127101178

`(n+3-1/(n+3))*a(n-1)` with `a(0)=4`
-/

namespace A171005.P6769692485127101178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ((n + 3 : ℚ) - 1 / (n + 3 : ℚ)) * a (n - 1)

end

end A171005.P6769692485127101178

namespace A171005

/-- `(n+3-1/(n+3))*a(n-1)` -/
def P6769692485127101178.Spec : Prop :=
  ∀ n, P6769692485127101178.a n = (A171005 (n + 3) : ℚ)

end A171005

/-! ## A171005.P5771107166354765181

`abs(Δ[(n-2*(n+1))*a(n-1)])` with `a(0)=1`
-/

namespace A171005.P5771107166354765181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - (2 * (n + 1) : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171005.P5771107166354765181

namespace A171005

/-- `abs(Δ[(n-2*(n+1))*a(n-1)])` -/
def P5771107166354765181.Spec : Prop :=
  ∀ n, P5771107166354765181.a n = A171005 (n + 3)

end A171005

/-! ## A171005.P8095710594521271209

`Δ[(n+2)*a(n-1)]+(n+2)!` with `a(0)=1`
-/

namespace A171005.P8095710594521271209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.factorial (n + 2) : ℤ)

end

end A171005.P8095710594521271209

namespace A171005

/-- `Δ[(n+2)*a(n-1)]+(n+2)!` -/
def P8095710594521271209.Spec : Prop :=
  ∀ n, P8095710594521271209.a n = A171005 (n + 3)

end A171005

/-! ## A171005.P4361877654593842373

`lcm(n+2, Δ[n+3-(n+2)*a(n-1)])` with `a(0)=0`
-/

namespace A171005.P4361877654593842373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 3 : ℤ) - (n + 2 : ℤ) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A171005.P4361877654593842373

namespace A171005

/-- `lcm(n+2, Δ[n+3-(n+2)*a(n-1)])` -/
def P4361877654593842373.Spec : Prop :=
  ∀ n, (P4361877654593842373.a n : ℤ) = A171005 (n + 3)

end A171005

/-!
# A171008: Write the n-th prime in binary and change all 0's to 1's and all 1's to 0's.

The programs for A171008, the canonical program `A171008.P1773118590492637436` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171008 has offset 1).

The definition of A171008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171008.P1773118590492637436

`A256078(Δ[A007504(n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171008

/-- `A256078(Δ[A007504(n)])` -/
def P1773118590492637436.Spec : Prop :=
  ∀ n, P1773118590492637436.a n = A171008 (n + 1)

theorem P1773118590492637436.correct : P1773118590492637436.Spec := by
  intro n
  simp only [A171008, Nat.add_sub_cancel]

end A171008

/-! ## A171008.P14117451509536162810

`A007088(A145382(n+1))`
-/

namespace A171008.P14117451509536162810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145382 (n + 1)).toNat

end

end A171008.P14117451509536162810

namespace A171008

/-- `A007088(A145382(n+1))` -/
def P14117451509536162810.Spec : Prop :=
  ∀ n, P14117451509536162810.a n = A171008 (n + 1)

end A171008

/-! ## A171008.P11419517461487380849

`A087381(A168506(n+3))`
-/

namespace A171008.P11419517461487380849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087381 (A168506 (n + 3)).toNat

end

end A171008.P11419517461487380849

namespace A171008

/-- `A087381(A168506(n+3))` -/
def P11419517461487380849.Spec : Prop :=
  ∀ n, P11419517461487380849.a n = A171008 (n + 1)

end A171008

/-!
# A171009: Number of ways to place two non-attacking queens on all free n-ominoes.

The programs for A171009, there is no canonical definition to state claims against.
-/

/-! ## A171009.P14327009528206101141

`A110577(n)-A088451(A000079(n))`
-/

namespace A171009.P14327009528206101141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110577 n - A088451 (A000079 n).toNat

end

end A171009.P14327009528206101141

/-! ## A171009.P14829618764516504313

`A224931(A000248(n))`
-/

namespace A171009.P14829618764516504313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224931 (A000248 n).toNat

end

end A171009.P14829618764516504313

/-!
# A171010: Number of ways to place two non-attacking kings on all free n-ominoes.

The programs for A171010, there is no canonical definition to state claims against.
-/

/-! ## A171010.P16554656850265528056

`A286807(n+1)+A079688(A000045(3*n+1))`
-/

namespace A171010.P16554656850265528056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286807 (n + 1) + A079688 (A000045 (3 * n + 1)).toNat

end

end A171010.P16554656850265528056

/-! ## A171010.P4169178673956461383

`A064459(A356830(n+1))`
-/

namespace A171010.P4169178673956461383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A356830 (n + 1)).toNat

end

end A171010.P4169178673956461383

/-!
# A171011: Number of ways to place two non-attacking rooks on all free n-ominoes.

The programs for A171011, there is no canonical definition to state claims against.
-/

/-! ## A171011.P10977434948099165445

`∑[A060144(∑[A099012(n)])]`
-/

namespace A171011.P10977434948099165445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171011.P10977434948099165445

/-! ## A171011.P6994302794589011232

`A057367(A151318(n)-A151300(n))`
-/

namespace A171011.P6994302794589011232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A151318 n - A151300 n).toNat

end

end A171011.P6994302794589011232

/-! ## A171011.P3590622224739633015

`∑[A097992(A151205(n))-A097992(3*n+2)]`
-/

namespace A171011.P3590622224739633015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A151205 n).toNat - A097992 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171011.P3590622224739633015

/-!
# A171012: Number of ways to place two non-attacking wazirs on all free n-ominoes.

The programs for A171012, there is no canonical definition to state claims against.
-/

/-! ## A171012.P8692351949303594616

`A343609((n+1)*ceil(4^n/2))`
-/

namespace A171012.P8692351949303594616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 ((n + 1 : ℤ) * ⌈(4 ^ n : ℚ) / 2⌉).toNat

end

end A171012.P8692351949303594616

/-! ## A171012.P8232438581565000606

`A262676(5^n-∑[∏{e}[n, #+1]])`
-/

namespace A171012.P8232438581565000606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 (5 ^ n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171012.P8232438581565000606

/-!
# A171013: In the sequence of prime numbers, replace all digits '1' with '0' and vice versa.

The programs for A171013, there is no canonical definition to state claims against.
-/

/-! ## A171013.P5982022699908163995

`A222210(A000040(n+1))`
-/

namespace A171013.P5982022699908163995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A000040 (n + 1)).toNat

end

end A171013.P5982022699908163995

/-! ## A171013.P15981488897904198018

`A222210(Δ[A007504(n)])`
-/

namespace A171013.P15981488897904198018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (n + 1) - f1 n).toNat

end

end A171013.P15981488897904198018

/-! ## A171013.P14070872705944929702

`A035044(A222210(A171018(n+1)))`
-/

namespace A171013.P14070872705944929702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222210 (A171018 (n + 1)).toNat).toNat

end

end A171013.P14070872705944929702

/-! ## A171013.P16698454903896559882

`A222228(A222210(A171021(n+1)))`
-/

namespace A171013.P16698454903896559882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222210 (A171021 (n + 1)).toNat).toNat

end

end A171013.P16698454903896559882

/-! ## A171013.P3494877848133026624

`A222229(A222210(A171025(n+1)))`
-/

namespace A171013.P3494877848133026624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222210 (A171025 (n + 1)).toNat).toNat

end

end A171013.P3494877848133026624

/-! ## A171013.P1227142064350771160

`A222234(A222210(A171022(n+1)))`
-/

namespace A171013.P1227142064350771160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222210 (A171022 (n + 1)).toNat).toNat

end

end A171013.P1227142064350771160

/-! ## A171013.P2853425974962930701

`A222230(A222210(A171030(n+1)))`
-/

namespace A171013.P2853425974962930701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222210 (A171030 (n + 1)).toNat).toNat

end

end A171013.P2853425974962930701

/-! ## A171013.P11066338390334195813

`A222235(A222210(A171026(n+1)))`
-/

namespace A171013.P11066338390334195813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222210 (A171026 (n + 1)).toNat).toNat

end

end A171013.P11066338390334195813

/-! ## A171013.P5703218460916577602

`A222240(A222210(A171027(n+1)))`
-/

namespace A171013.P5703218460916577602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222210 (A171027 (n + 1)).toNat).toNat

end

end A171013.P5703218460916577602

/-! ## A171013.P4872483439642099728

`A222236(A222210(A171031(n+1)))`
-/

namespace A171013.P4872483439642099728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222210 (A171031 (n + 1)).toNat).toNat

end

end A171013.P4872483439642099728

/-! ## A171013.P1631480923250717641

`A222231(A222210(A171036(n+1)))`
-/

namespace A171013.P1631480923250717641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222210 (A171036 (n + 1)).toNat).toNat

end

end A171013.P1631480923250717641

/-! ## A171013.P18252162045476036303

`A222241(A222210(A171032(n+1)))`
-/

namespace A171013.P18252162045476036303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222210 (A171032 (n + 1)).toNat).toNat

end

end A171013.P18252162045476036303

/-! ## A171013.P6851422014827459415

`A222237(A222210(A171037(n+1)))`
-/

namespace A171013.P6851422014827459415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222210 (A171037 (n + 1)).toNat).toNat

end

end A171013.P6851422014827459415

/-! ## A171013.P11574798252332857563

`A222232(A222210(A171043(n+1)))`
-/

namespace A171013.P11574798252332857563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222210 (A171043 (n + 1)).toNat).toNat

end

end A171013.P11574798252332857563

/-! ## A171013.P10343725670938356472

`A222245(A222210(A171033(n+1)))`
-/

namespace A171013.P10343725670938356472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222210 (A171033 (n + 1)).toNat).toNat

end

end A171013.P10343725670938356472

/-! ## A171013.P13696502135637874901

`A222242(A222210(A171038(n+1)))`
-/

namespace A171013.P13696502135637874901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222210 (A171038 (n + 1)).toNat).toNat

end

end A171013.P13696502135637874901

/-! ## A171013.P15188337221656497537

`A222238(A222210(A171044(n+1)))`
-/

namespace A171013.P15188337221656497537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222210 (A171044 (n + 1)).toNat).toNat

end

end A171013.P15188337221656497537

/-! ## A171013.P14413912312423115161

`A222233(A222210(A171051(n+1)))`
-/

namespace A171013.P14413912312423115161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222210 (A171051 (n + 1)).toNat).toNat

end

end A171013.P14413912312423115161

/-! ## A171013.P13512821289161979330

`A222246(A222210(A171039(n+1)))`
-/

namespace A171013.P13512821289161979330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222210 (A171039 (n + 1)).toNat).toNat

end

end A171013.P13512821289161979330

/-! ## A171013.P10727294376624705877

`A222243(A222210(A171045(n+1)))`
-/

namespace A171013.P10727294376624705877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222210 (A171045 (n + 1)).toNat).toNat

end

end A171013.P10727294376624705877

/-!
# A171014: In the sequence of prime numbers, replace all the '2' digits with '0' and vice versa.

The programs for A171014, there is no canonical definition to state claims against.
-/

/-! ## A171014.P13059568787726416476

`A175770(n+1)+2*(A171013(n+1)-A171018(n+1))`
-/

namespace A171014.P13059568787726416476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175770 (n + 1) + 2 * (A171013 (n + 1) - A171018 (n + 1))

end

end A171014.P13059568787726416476

/-! ## A171014.P6550238866237363161

`A222211(Δ[A007504(n)])`
-/

namespace A171014.P6550238866237363161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (f1 (n + 1) - f1 n).toNat

end

end A171014.P6550238866237363161

/-! ## A171014.P12959325229306993758

`A035043(A222210(A171015(n+1)))`
-/

namespace A171014.P12959325229306993758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222210 (A171015 (n + 1)).toNat).toNat

end

end A171014.P12959325229306993758

/-! ## A171014.P728102577311911302

`A035044(A222212(A171018(n+1)))`
-/

namespace A171014.P728102577311911302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222212 (A171018 (n + 1)).toNat).toNat

end

end A171014.P728102577311911302

/-! ## A171014.P792507884410716617

`A222254(A222211(A171057(n+1)))`
-/

namespace A171014.P792507884410716617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222211 (A171057 (n + 1)).toNat).toNat

end

end A171014.P792507884410716617

/-!
# A171015: In the sequence of prime numbers, replace all the '2' digits with '1' and vice versa.

The programs for A171015, there is no canonical definition to state claims against.
-/

/-! ## A171015.P5787549846059522983

`A035043(p?[comp[n²]])`
-/

namespace A171015.P5787549846059522983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171015.P5787549846059522983

/-! ## A171015.P6097214610812660838

`A035044(A035043(A175770(n+1)))`
-/

namespace A171015.P6097214610812660838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A035043 (A175770 (n + 1)).toNat).toNat

end

end A171015.P6097214610812660838

/-! ## A171015.P8930755620014361340

`A222220(A035043(A171018(n+1)))`
-/

namespace A171015.P8930755620014361340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A035043 (A171018 (n + 1)).toNat).toNat

end

end A171015.P8930755620014361340

/-! ## A171015.P7571050076133824981

`A222254(A035043(A171057(n+1)))`
-/

namespace A171015.P7571050076133824981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A035043 (A171057 (n + 1)).toNat).toNat

end

end A171015.P7571050076133824981

/-!
# A171016: In the sequence of prime numbers, replace all the '3' digits with '0' and vice versa.

The programs for A171016, there is no canonical definition to state claims against.
-/

/-! ## A171016.P12367313178056980350

`A222212(Δ[A007504(n)])`
-/

namespace A171016.P12367313178056980350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (n + 1) - f1 n).toNat

end

end A171016.P12367313178056980350

/-! ## A171016.P11893973919300838706

`A222254(A222212(A171057(n+1)))`
-/

namespace A171016.P11893973919300838706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222212 (A171057 (n + 1)).toNat).toNat

end

end A171016.P11893973919300838706

/-! ## A171016.P14856897318257151902

`A222220(A222210(A175770(n+1)))`
-/

namespace A171016.P14856897318257151902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222210 (A175770 (n + 1)).toNat).toNat

end

end A171016.P14856897318257151902

/-! ## A171016.P7428205395804649372

`A222232(A222212(A222238(A222232(A171018(n+1)))))`
-/

namespace A171016.P7428205395804649372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222212 (A222238 (A222232 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171016.P7428205395804649372

/-!
# A171017: Primes in lunar arithmetic in base 4 written in base 10.

The programs for A171017, there is no canonical definition to state claims against.
-/

/-! ## A171017.P8679534626247444079

`A028899(A171122(n+1))`
-/

namespace A171017.P8679534626247444079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A171122 (n + 1)).toNat

end

end A171017.P8679534626247444079

/-!
# A171018: In the sequence of prime numbers, replace all the '3' digits with '2' and vice versa.

The programs for A171018, there is no canonical definition to state claims against.
-/

/-! ## A171018.P8968984316699120906

`A035044(p?[comp[n²]])`
-/

namespace A171018.P8968984316699120906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171018.P8968984316699120906

/-! ## A171018.P7833710520520837208

`A035043(A035044(A175770(n+1)))`
-/

namespace A171018.P7833710520520837208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A035044 (A175770 (n + 1)).toNat).toNat

end

end A171018.P7833710520520837208

/-! ## A171018.P13794168792043452492

`A222254(A035044(A171057(n+1)))`
-/

namespace A171018.P13794168792043452492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A035044 (A171057 (n + 1)).toNat).toNat

end

end A171018.P13794168792043452492

/-!
# A171019: In the sequence of prime numbers, replace all the '4' digits with '0' and vice versa.

The programs for A171019, there is no canonical definition to state claims against.
-/

/-! ## A171019.P17556806899299529662

`A222213(A000040(1+n))`
-/

namespace A171019.P17556806899299529662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A000040 (1 + n)).toNat

end

end A171019.P17556806899299529662

/-! ## A171019.P16098029108172670472

`A222221(A222210(A171020(n+1)))`
-/

namespace A171019.P16098029108172670472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222210 (A171020 (n + 1)).toNat).toNat

end

end A171019.P16098029108172670472

/-! ## A171019.P17036769112219300237

`A222254(A222221(A222210(A222221(A171057(n+1)))))`
-/

namespace A171019.P17036769112219300237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222221 (A222210 (A222221 (A171057 (n + 1)).toNat).toNat).toNat).toNat

end

end A171019.P17036769112219300237

/-! ## A171019.P11543668086735507524

`A337377(A219615(n+1))`
-/

namespace A171019.P11543668086735507524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (A219615 (n + 1)).toNat

end

end A171019.P11543668086735507524

/-! ## A171019.P9572922970508758487

`A392872(A133025(n+2))`
-/

namespace A171019.P9572922970508758487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392872 (A133025 (n + 2)).toNat

end

end A171019.P9572922970508758487

/-!
# A171020: In the sequence of prime numbers, replace all the '4' digits with '1' and vice versa.

The programs for A171020, there is no canonical definition to state claims against.
-/

/-! ## A171020.P10401110058119830434

`A222221(Δ[A007504(n)])`
-/

namespace A171020.P10401110058119830434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (n + 1) - f1 n).toNat

end

end A171020.P10401110058119830434

/-! ## A171020.P13366077694950847102

`A222254(A222221(A171057(n+1)))`
-/

namespace A171020.P13366077694950847102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222221 (A171057 (n + 1)).toNat).toNat

end

end A171020.P13366077694950847102

/-!
# A171021: In the sequence of prime numbers, replace all the '4' digits with '2' and vice versa.

The programs for A171021, there is no canonical definition to state claims against.
-/

/-! ## A171021.P9543597140725203492

`A222228(Δ[A007504(n)])`
-/

namespace A171021.P9543597140725203492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (n + 1) - f1 n).toNat

end

end A171021.P9543597140725203492

/-! ## A171021.P200035752381843471

`A222254(A222228(A171057(n+1)))`
-/

namespace A171021.P200035752381843471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222228 (A171057 (n + 1)).toNat).toNat

end

end A171021.P200035752381843471

/-!
# A171022: In the sequence of prime numbers, replace all the '4' digits with '3' and vice versa.

The programs for A171022, there is no canonical definition to state claims against.
-/

/-! ## A171022.P2443426715801453114

`A222234(Δ[A007504(n)])`
-/

namespace A171022.P2443426715801453114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (n + 1) - f1 n).toNat

end

end A171022.P2443426715801453114

/-! ## A171022.P8587023245936352716

`A222252(A222234(A171048(n+1)))`
-/

namespace A171022.P8587023245936352716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222234 (A171048 (n + 1)).toNat).toNat

end

end A171022.P8587023245936352716

/-! ## A171022.P5561479584233462039

`A222254(A222234(A171057(n+1)))`
-/

namespace A171022.P5561479584233462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222234 (A171057 (n + 1)).toNat).toNat

end

end A171022.P5561479584233462039

/-!
# A171023: In the sequence of prime numbers, replace all the '5' digits with '0' and vice versa.

The programs for A171023, there is no canonical definition to state claims against.
-/

/-! ## A171023.P17867133150115028160

`A222214(Δ[A007504(n)])`
-/

namespace A171023.P17867133150115028160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (n + 1) - f1 n).toNat

end

end A171023.P17867133150115028160

/-! ## A171023.P10487732132130073683

`A222222(A222210(A171024(n+1)))`
-/

namespace A171023.P10487732132130073683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222210 (A171024 (n + 1)).toNat).toNat

end

end A171023.P10487732132130073683

/-! ## A171023.P8429608712227688474

`A222254(A222214(A171057(n+1)))`
-/

namespace A171023.P8429608712227688474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222214 (A171057 (n + 1)).toNat).toNat

end

end A171023.P8429608712227688474

/-! ## A171023.P4695106333400920297

`A087572(A171046(n+1))`
-/

namespace A171023.P4695106333400920297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087572 (A171046 (n + 1)).toNat

end

end A171023.P4695106333400920297

/-!
# A171024: In the sequence of prime numbers, replace all the '5' digits with '1' and vice versa.

The programs for A171024, there is no canonical definition to state claims against.
-/

/-! ## A171024.P16969415456066832320

`A222222(Δ[A007504(n)])`
-/

namespace A171024.P16969415456066832320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (f1 (n + 1) - f1 n).toNat

end

end A171024.P16969415456066832320

/-! ## A171024.P11816210618203114115

`A222223(A222245(A171029(n+1)))`
-/

namespace A171024.P11816210618203114115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222245 (A171029 (n + 1)).toNat).toNat

end

end A171024.P11816210618203114115

/-! ## A171024.P10423246784301541438

`A222254(A222222(A171057(n+1)))`
-/

namespace A171024.P10423246784301541438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222222 (A171057 (n + 1)).toNat).toNat

end

end A171024.P10423246784301541438

/-!
# A171025: In the sequence of prime numbers, replace all the '5' digits with '2' and vice versa.

The programs for A171025, there is no canonical definition to state claims against.
-/

/-! ## A171025.P1142716738313202631

`A222229(record[2*n+2-∑{d}[n+1, #]]+1)`
-/

namespace A171025.P1142716738313202631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A171025.P1142716738313202631

/-! ## A171025.P6442932732537172913

`A222230(A222245(A171030(n+1)))`
-/

namespace A171025.P6442932732537172913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222245 (A171030 (n + 1)).toNat).toNat

end

end A171025.P6442932732537172913

/-! ## A171025.P15998638170201716673

`A222254(A222229(A171057(n+1)))`
-/

namespace A171025.P15998638170201716673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222229 (A171057 (n + 1)).toNat).toNat

end

end A171025.P15998638170201716673

/-!
# A171026: In the sequence of prime numbers, replace all the '5' digits with '3' and vice versa.

The programs for A171026, there is no canonical definition to state claims against.
-/

/-! ## A171026.P13673858537437873160

`A222235(Δ[A007504(n)])`
-/

namespace A171026.P13673858537437873160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (n + 1) - f1 n).toNat

end

end A171026.P13673858537437873160

/-! ## A171026.P17655361826304604749

`A222254(A222235(A171057(n+1)))`
-/

namespace A171026.P17655361826304604749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222235 (A171057 (n + 1)).toNat).toNat

end

end A171026.P17655361826304604749

/-!
# A171027: In the sequence of prime numbers, replace all the '5' digits with '4' and vice versa.

The programs for A171027, there is no canonical definition to state claims against.
-/

/-! ## A171027.P8110494184586443148

`A222240(Δ[A007504(n)])`
-/

namespace A171027.P8110494184586443148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (n + 1) - f1 n).toNat

end

end A171027.P8110494184586443148

/-! ## A171027.P12195145272583390442

`A222241(A222245(A171032(n+1)))`
-/

namespace A171027.P12195145272583390442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222245 (A171032 (n + 1)).toNat).toNat

end

end A171027.P12195145272583390442

/-! ## A171027.P4157429067444779886

`A222254(A222240(A171057(n+1)))`
-/

namespace A171027.P4157429067444779886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222240 (A171057 (n + 1)).toNat).toNat

end

end A171027.P4157429067444779886

/-! ## A171027.P4167830495033489196

`A265626(A276211(n+1))`
-/

namespace A171027.P4167830495033489196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265626 (A276211 (n + 1)).toNat

end

end A171027.P4167830495033489196

/-! ## A171027.P3487221763207967210

`A350169(A342939(n+1))`
-/

namespace A171027.P3487221763207967210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350169 (A342939 (n + 1)).toNat

end

end A171027.P3487221763207967210

/-!
# A171028: In the sequence of prime numbers, replace all the '6' digits with '0' and vice versa.

The programs for A171028, there is no canonical definition to state claims against.
-/

/-! ## A171028.P1833229100143039199

`A222215(A000040(1+n))`
-/

namespace A171028.P1833229100143039199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A000040 (1 + n)).toNat

end

end A171028.P1833229100143039199

/-! ## A171028.P9642135327665767933

`A222223(A222210(A171029(n+1)))`
-/

namespace A171028.P9642135327665767933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222210 (A171029 (n + 1)).toNat).toNat

end

end A171028.P9642135327665767933

/-! ## A171028.P8702814477422646289

`A222254(A222215(A171057(n+1)))`
-/

namespace A171028.P8702814477422646289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222215 (A171057 (n + 1)).toNat).toNat

end

end A171028.P8702814477422646289

/-!
# A171029: In the sequence of prime numbers, replace all the '6' digits with '1' and vice versa.

The programs for A171029, there is no canonical definition to state claims against.
-/

/-! ## A171029.P17920721166790116780

`A222223(Δ[A007504(n)])`
-/

namespace A171029.P17920721166790116780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (n + 1) - f1 n).toNat

end

end A171029.P17920721166790116780

/-! ## A171029.P4005135415225324259

`A222254(A222223(A171057(n+1)))`
-/

namespace A171029.P4005135415225324259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222223 (A171057 (n + 1)).toNat).toNat

end

end A171029.P4005135415225324259

/-! ## A171029.P14550910168716841092

`A222220(A222236(A175770(n+1)))`
-/

namespace A171029.P14550910168716841092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222236 (A175770 (n + 1)).toNat).toNat

end

end A171029.P14550910168716841092

/-!
# A171030: In the sequence of prime numbers, replace all the '6' digits with '2' and vice versa.

The programs for A171030, there is no canonical definition to state claims against.
-/

/-! ## A171030.P16994529142795900377

`A222230(Δ[A007504(n)])`
-/

namespace A171030.P16994529142795900377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (n + 1) - f1 n).toNat

end

end A171030.P16994529142795900377

/-! ## A171030.P1188146143600846058

`A222229(A222245(A171025(n+1)))`
-/

namespace A171030.P1188146143600846058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222245 (A171025 (n + 1)).toNat).toNat

end

end A171030.P1188146143600846058

/-! ## A171030.P200295884337129629

`A222252(A222230(A171048(n+1)))`
-/

namespace A171030.P200295884337129629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222230 (A171048 (n + 1)).toNat).toNat

end

end A171030.P200295884337129629

/-! ## A171030.P11276899217788051843

`A222254(A222230(A171057(n+1)))`
-/

namespace A171030.P11276899217788051843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222230 (A171057 (n + 1)).toNat).toNat

end

end A171030.P11276899217788051843

/-!
# A171031: In the sequence of prime numbers, replace all the '6' digits with '3' and vice versa.

The programs for A171031, there is no canonical definition to state claims against.
-/

/-! ## A171031.P10170320242568189079

`A222236(Δ[A007504(n)])`
-/

namespace A171031.P10170320242568189079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (f1 (n + 1) - f1 n).toNat

end

end A171031.P10170320242568189079

/-! ## A171031.P736916749507568681

`A222254(A222236(A171057(n+1)))`
-/

namespace A171031.P736916749507568681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222236 (A171057 (n + 1)).toNat).toNat

end

end A171031.P736916749507568681

/-! ## A171031.P3431222168267300310

`A222232(A222238(A222232(A222230(A171018(n+1)))))`
-/

namespace A171031.P3431222168267300310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A222232 (A222230 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171031.P3431222168267300310

/-!
# A171032: In the sequence of prime numbers, replace all the '6' digits with '4' and vice versa.

The programs for A171032, there is no canonical definition to state claims against.
-/

/-! ## A171032.P8458194519310156167

`A222241(Δ[A007504(n)])`
-/

namespace A171032.P8458194519310156167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (f1 (n + 1) - f1 n).toNat

end

end A171032.P8458194519310156167

/-! ## A171032.P17794444604002108370

`A222240(A222245(A171027(n+1)))`
-/

namespace A171032.P17794444604002108370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222245 (A171027 (n + 1)).toNat).toNat

end

end A171032.P17794444604002108370

/-! ## A171032.P348929956847395409

`A222245(A222240(A171033(n+1)))`
-/

namespace A171032.P348929956847395409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222240 (A171033 (n + 1)).toNat).toNat

end

end A171032.P348929956847395409

/-! ## A171032.P12143179546690611651

`A222254(A222241(A171057(n+1)))`
-/

namespace A171032.P12143179546690611651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222241 (A171057 (n + 1)).toNat).toNat

end

end A171032.P12143179546690611651

/-! ## A171032.P16544563368576078465

`A073350(A161950(n+1))`
-/

namespace A171032.P16544563368576078465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073350 (A161950 (n + 1)).toNat

end

end A171032.P16544563368576078465

/-!
# A171033: In the sequence of prime numbers, replace all the '6' digits with '5' and vice versa.

The programs for A171033, there is no canonical definition to state claims against.
-/

/-! ## A171033.P2541775333139037894

`A222245(Δ[A007504(n)])`
-/

namespace A171033.P2541775333139037894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (n + 1) - f1 n).toNat

end

end A171033.P2541775333139037894

/-! ## A171033.P5553840521051714710

`A222221(A222245(A171020(n+1)))`
-/

namespace A171033.P5553840521051714710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222245 (A171020 (n + 1)).toNat).toNat

end

end A171033.P5553840521051714710

/-! ## A171033.P15049764851586344225

`A222228(A222245(A171021(n+1)))`
-/

namespace A171033.P15049764851586344225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222245 (A171021 (n + 1)).toNat).toNat

end

end A171033.P15049764851586344225

/-! ## A171033.P581158813176347695

`A222235(A222236(A171026(n+1)))`
-/

namespace A171033.P581158813176347695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222236 (A171026 (n + 1)).toNat).toNat

end

end A171033.P581158813176347695

/-! ## A171033.P15956787370236524633

`A222234(A222245(A171022(n+1)))`
-/

namespace A171033.P15956787370236524633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222245 (A171022 (n + 1)).toNat).toNat

end

end A171033.P15956787370236524633

/-! ## A171033.P58352274850689395

`A222236(A222235(A171031(n+1)))`
-/

namespace A171033.P58352274850689395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222235 (A171031 (n + 1)).toNat).toNat

end

end A171033.P58352274850689395

/-! ## A171033.P423656320294832984

`A222224(A222245(A171035(n+1)))`
-/

namespace A171033.P423656320294832984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222245 (A171035 (n + 1)).toNat).toNat

end

end A171033.P423656320294832984

/-! ## A171033.P11989021608741122430

`A222231(A222245(A171036(n+1)))`
-/

namespace A171033.P11989021608741122430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222245 (A171036 (n + 1)).toNat).toNat

end

end A171033.P11989021608741122430

/-! ## A171033.P13483276928705398862

`A222225(A222245(A171042(n+1)))`
-/

namespace A171033.P13483276928705398862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222245 (A171042 (n + 1)).toNat).toNat

end

end A171033.P13483276928705398862

/-! ## A171033.P1665202013454310357

`A222237(A222245(A171037(n+1)))`
-/

namespace A171033.P1665202013454310357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222245 (A171037 (n + 1)).toNat).toNat

end

end A171033.P1665202013454310357

/-! ## A171033.P17267570957322222812

`A222232(A222245(A171043(n+1)))`
-/

namespace A171033.P17267570957322222812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222245 (A171043 (n + 1)).toNat).toNat

end

end A171033.P17267570957322222812

/-! ## A171033.P8519363544391620990

`A222226(A222245(A171050(n+1)))`
-/

namespace A171033.P8519363544391620990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222245 (A171050 (n + 1)).toNat).toNat

end

end A171033.P8519363544391620990

/-! ## A171033.P3857249075216594812

`A222242(A222245(A171038(n+1)))`
-/

namespace A171033.P3857249075216594812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222245 (A171038 (n + 1)).toNat).toNat

end

end A171033.P3857249075216594812

/-! ## A171033.P12266482195958369185

`A222238(A222245(A171044(n+1)))`
-/

namespace A171033.P12266482195958369185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222245 (A171044 (n + 1)).toNat).toNat

end

end A171033.P12266482195958369185

/-! ## A171033.P9610803371059103697

`A222233(A222245(A171051(n+1)))`
-/

namespace A171033.P9610803371059103697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222245 (A171051 (n + 1)).toNat).toNat

end

end A171033.P9610803371059103697

/-! ## A171033.P8441479322215181205

`A222243(A222245(A171045(n+1)))`
-/

namespace A171033.P8441479322215181205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222245 (A171045 (n + 1)).toNat).toNat

end

end A171033.P8441479322215181205

/-! ## A171033.P9291276098685504875

`A222239(A222245(A171052(n+1)))`
-/

namespace A171033.P9291276098685504875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222245 (A171052 (n + 1)).toNat).toNat

end

end A171033.P9291276098685504875

/-! ## A171033.P15818808163736742999

`A222244(A222245(A171053(n+1)))`
-/

namespace A171033.P15818808163736742999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222245 (A171053 (n + 1)).toNat).toNat

end

end A171033.P15818808163736742999

/-! ## A171033.P1150158946274778505

`A222252(A222245(A171048(n+1)))`
-/

namespace A171033.P1150158946274778505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222245 (A171048 (n + 1)).toNat).toNat

end

end A171033.P1150158946274778505

/-! ## A171033.P14766923933591138403

`A222253(A222245(A171056(n+1)))`
-/

namespace A171033.P14766923933591138403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222245 (A171056 (n + 1)).toNat).toNat

end

end A171033.P14766923933591138403

/-!
# A171034: In the sequence of prime numbers, replace all the '7' digits with '0' and vice versa.

The programs for A171034, there is no canonical definition to state claims against.
-/

/-! ## A171034.P9684421728827223694

`A222216(p?[comp[n²]])`
-/

namespace A171034.P9684421728827223694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171034.P9684421728827223694

/-! ## A171034.P2741737893223909898

`A222224(A222210(A171035(n+1)))`
-/

namespace A171034.P2741737893223909898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222210 (A171035 (n + 1)).toNat).toNat

end

end A171034.P2741737893223909898

/-! ## A171034.P561185092708233331

`A222254(A222216(A171057(n+1)))`
-/

namespace A171034.P561185092708233331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222216 (A171057 (n + 1)).toNat).toNat

end

end A171034.P561185092708233331

/-!
# A171035: In the sequence of prime numbers, replace all the '7' digits with '1' and vice versa.

The programs for A171035, there is no canonical definition to state claims against.
-/

/-! ## A171035.P9538984193161588218

`A222224(Δ[A007504(n)])`
-/

namespace A171035.P9538984193161588218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (n + 1) - f1 n).toNat

end

end A171035.P9538984193161588218

/-! ## A171035.P3739102687410978166

`A222254(A222224(A171057(n+1)))`
-/

namespace A171035.P3739102687410978166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222224 (A171057 (n + 1)).toNat).toNat

end

end A171035.P3739102687410978166

/-!
# A171036: In the sequence of prime numbers, replace all the '7' digits with '2' and vice versa.

The programs for A171036, there is no canonical definition to state claims against.
-/

/-! ## A171036.P10733208672328789618

`A222231(p?[comp[n²]])`
-/

namespace A171036.P10733208672328789618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171036.P10733208672328789618

/-! ## A171036.P10302298127650863304

`A222254(A222231(A171057(n+1)))`
-/

namespace A171036.P10302298127650863304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222231 (A171057 (n + 1)).toNat).toNat

end

end A171036.P10302298127650863304

/-!
# A171037: In the sequence of prime numbers, replace all the '7' digits with '3' and vice versa.

The programs for A171037, there is no canonical definition to state claims against.
-/

/-! ## A171037.P2180297637862664319

`A222237(Δ[A007504(n)])`
-/

namespace A171037.P2180297637862664319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (f1 (n + 1) - f1 n).toNat

end

end A171037.P2180297637862664319

/-! ## A171037.P18138434219760534074

`A104696(A171050(n+1))`
-/

namespace A171037.P18138434219760534074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A171050 (n + 1)).toNat

end

end A171037.P18138434219760534074

/-! ## A171037.P3551063478498526053

`A222254(A222237(A171057(n+1)))`
-/

namespace A171037.P3551063478498526053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222237 (A171057 (n + 1)).toNat).toNat

end

end A171037.P3551063478498526053

/-!
# A171038: In the sequence of prime numbers, replace all the '7' digits with '4' and vice versa.

The programs for A171038, there is no canonical definition to state claims against.
-/

/-! ## A171038.P5023489432637614657

`A000040(n+1)+A222242(A171013(n+1))-A171013(n+1)`
-/

namespace A171038.P5023489432637614657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A222242 (A171013 (n + 1)).toNat - A171013 (n + 1))

end

end A171038.P5023489432637614657

/-! ## A171038.P17664971231903630379

`A222242(Δ[A007504(n)])`
-/

namespace A171038.P17664971231903630379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (f1 (n + 1) - f1 n).toNat

end

end A171038.P17664971231903630379

/-! ## A171038.P8925887736164136661

`A222254(A222242(A171057(n+1)))`
-/

namespace A171038.P8925887736164136661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222242 (A171057 (n + 1)).toNat).toNat

end

end A171038.P8925887736164136661

/-!
# A171039: In the sequence of prime numbers, replace all the '7' digits with '5' and vice versa.

The programs for A171039, there is no canonical definition to state claims against.
-/

/-! ## A171039.P7946407037278986308

`A222246(Δ[A007504(n)])`
-/

namespace A171039.P7946407037278986308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (n + 1) - f1 n).toNat

end

end A171039.P7946407037278986308

/-! ## A171039.P4027732601151083454

`A222249(A222245(A171040(n+1)))`
-/

namespace A171039.P4027732601151083454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222245 (A171040 (n + 1)).toNat).toNat

end

end A171039.P4027732601151083454

/-! ## A171039.P14728147291100919141

`A222254(A222246(A171057(n+1)))`
-/

namespace A171039.P14728147291100919141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222246 (A171057 (n + 1)).toNat).toNat

end

end A171039.P14728147291100919141

/-!
# A171040: In the sequence of prime numbers, replace all the '7' digits with '6' and vice versa.

The programs for A171040, there is no canonical definition to state claims against.
-/

/-! ## A171040.P3226097127866261704

`A222249(Δ[A007504(n)])`
-/

namespace A171040.P3226097127866261704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (n + 1) - f1 n).toNat

end

end A171040.P3226097127866261704

/-! ## A171040.P14410427179659598710

`A222246(A222245(A171039(n+1)))`
-/

namespace A171040.P14410427179659598710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222245 (A171039 (n + 1)).toNat).toNat

end

end A171040.P14410427179659598710

/-! ## A171040.P17105589117053654347

`A222254(A222249(A171057(n+1)))`
-/

namespace A171040.P17105589117053654347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222249 (A171057 (n + 1)).toNat).toNat

end

end A171040.P17105589117053654347

/-!
# A171041: In the sequence of prime numbers, replace all the '8' digits with '0' and vice versa.

The programs for A171041, there is no canonical definition to state claims against.
-/

/-! ## A171041.P9163500851203407736

`A222217(A000040(1+n))`
-/

namespace A171041.P9163500851203407736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A000040 (1 + n)).toNat

end

end A171041.P9163500851203407736

/-! ## A171041.P17619064702761232130

`A222225(A222210(A171042(n+1)))`
-/

namespace A171041.P17619064702761232130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222210 (A171042 (n + 1)).toNat).toNat

end

end A171041.P17619064702761232130

/-! ## A171041.P6924355100682011123

`A222232(A222238(A222232(A222217(A171018(n+1)))))`
-/

namespace A171041.P6924355100682011123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A222232 (A222217 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171041.P6924355100682011123

/-!
# A171042: In the sequence of prime numbers, replace all the '8' digits with '1' and vice versa.

The programs for A171042, there is no canonical definition to state claims against.
-/

/-! ## A171042.P12573827564963539745

`A222225(p?[comp[n²]])`
-/

namespace A171042.P12573827564963539745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171042.P12573827564963539745

/-! ## A171042.P9047723145443812161

`A222226(A222254(A171050(n+1)))`
-/

namespace A171042.P9047723145443812161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222254 (A171050 (n + 1)).toNat).toNat

end

end A171042.P9047723145443812161

/-! ## A171042.P17330081715953817266

`A222254(A222226(A171057(n+1)))`
-/

namespace A171042.P17330081715953817266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222226 (A171057 (n + 1)).toNat).toNat

end

end A171042.P17330081715953817266

/-! ## A171042.P6337302768906720230

`A035044(A222232(A222225(A035044(A175770(n+1)))))`
-/

namespace A171042.P6337302768906720230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222232 (A222225 (A035044 (A175770 (n + 1)).toNat).toNat).toNat).toNat

end

end A171042.P6337302768906720230

/-!
# A171043: In the sequence of prime numbers, replace all the '8' digits with '2' and vice versa.

The programs for A171043, there is no canonical definition to state claims against.
-/

/-! ## A171043.P8194990107766721269

`A222232(p?[comp[n²]])`
-/

namespace A171043.P8194990107766721269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171043.P8194990107766721269

/-! ## A171043.P14759427166712329438

`A222238(A222232(A171018(n+1)))`
-/

namespace A171043.P14759427166712329438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222232 (A171018 (n + 1)).toNat).toNat

end

end A171043.P14759427166712329438

/-! ## A171043.P6883926620913902272

`A222233(A222254(A171051(n+1)))`
-/

namespace A171043.P6883926620913902272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222254 (A171051 (n + 1)).toNat).toNat

end

end A171043.P6883926620913902272

/-! ## A171043.P1887907679596566253

`A222254(A222233(A171057(A222233(A222233(n+1)))))`
-/

namespace A171043.P1887907679596566253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222233 (A171057 (A222233 (A222233 (n + 1)).toNat).toNat).toNat).toNat

end

end A171043.P1887907679596566253

/-!
# A171044: In the sequence of prime numbers, replace all the '8' digits with '3' and vice versa.

The programs for A171044, there is no canonical definition to state claims against.
-/

/-! ## A171044.P9646735435427226267

`A222238(Δ[A007504(n)])`
-/

namespace A171044.P9646735435427226267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (n + 1) - f1 n).toNat

end

end A171044.P9646735435427226267

/-! ## A171044.P5396609666603967828

`A222232(A222238(A171018(n+1)))`
-/

namespace A171044.P5396609666603967828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A171018 (n + 1)).toNat).toNat

end

end A171044.P5396609666603967828

/-! ## A171044.P13472182100473072859

`A222239(A222254(A171052(n+1)))`
-/

namespace A171044.P13472182100473072859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222254 (A171052 (n + 1)).toNat).toNat

end

end A171044.P13472182100473072859

/-! ## A171044.P10066443285956722969

`A222220(A222225(A175770(n+1)))`
-/

namespace A171044.P10066443285956722969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222225 (A175770 (n + 1)).toNat).toNat

end

end A171044.P10066443285956722969

/-! ## A171044.P9007220817215228293

`A222254(A222239(A171057(A222239(A222239(n+1)))))`
-/

namespace A171044.P9007220817215228293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222239 (A171057 (A222239 (A222239 (n + 1)).toNat).toNat).toNat).toNat

end

end A171044.P9007220817215228293

/-!
# A171045: In the sequence of prime numbers, replace all the '8' digits with '4' and vice versa.

The programs for A171045, there is no canonical definition to state claims against.
-/

/-! ## A171045.P11885403531062734358

`A222243(Δ[A007504(n)])`
-/

namespace A171045.P11885403531062734358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (f1 (n + 1) - f1 n).toNat

end

end A171045.P11885403531062734358

/-! ## A171045.P13453582131181608172

`A222244(A222254(A171053(n+1)))`
-/

namespace A171045.P13453582131181608172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222254 (A171053 (n + 1)).toNat).toNat

end

end A171045.P13453582131181608172

/-! ## A171045.P9724104088826308336

`A222254(A222244(A171057(A222244(A222244(n+1)))))`
-/

namespace A171045.P9724104088826308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222244 (A171057 (A222244 (A222244 (n + 1)).toNat).toNat).toNat).toNat

end

end A171045.P9724104088826308336

/-!
# A171046: In the sequence of prime numbers, replace all the '8' digits with '5' and vice versa.

The programs for A171046, there is no canonical definition to state claims against.
-/

/-! ## A171046.P8881062872326657989

`A222247(Δ[A007504(n)])`
-/

namespace A171046.P8881062872326657989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (n + 1) - f1 n).toNat

end

end A171046.P8881062872326657989

/-! ## A171046.P5381556258788489788

`A222250(A222245(A171047(n+1)))`
-/

namespace A171046.P5381556258788489788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222245 (A171047 (n + 1)).toNat).toNat

end

end A171046.P5381556258788489788

/-! ## A171046.P5658166052060739862

`A222248(A222254(A171054(n+1)))`
-/

namespace A171046.P5658166052060739862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222254 (A171054 (n + 1)).toNat).toNat

end

end A171046.P5658166052060739862

/-! ## A171046.P13707112580985496871

`A222254(A222248(A171057(A222248(A222248(n+1)))))`
-/

namespace A171046.P13707112580985496871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222248 (A171057 (A222248 (A222248 (n + 1)).toNat).toNat).toNat).toNat

end

end A171046.P13707112580985496871

/-! ## A171046.P9426125550317908652

`A382255(A286521(n))`
-/

namespace A171046.P9426125550317908652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (A286521 n).toNat

end

end A171046.P9426125550317908652

/-!
# A171047: In the sequence of prime numbers, replace all the '8' digits with '6' and vice versa.

The programs for A171047, there is no canonical definition to state claims against.
-/

/-! ## A171047.P17535496406302348905

`A222250(A000040(1+n))`
-/

namespace A171047.P17535496406302348905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A000040 (1 + n)).toNat

end

end A171047.P17535496406302348905

/-! ## A171047.P12011034247736884676

`A222247(A222245(A171046(n+1)))`
-/

namespace A171047.P12011034247736884676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222245 (A171046 (n + 1)).toNat).toNat

end

end A171047.P12011034247736884676

/-! ## A171047.P13507417184585722097

`A222251(A222254(A171055(n+1)))`
-/

namespace A171047.P13507417184585722097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222254 (A171055 (n + 1)).toNat).toNat

end

end A171047.P13507417184585722097

/-! ## A171047.P10549297196199976067

`A222232(A222238(A222230(A222232(A171018(n+1)))))`
-/

namespace A171047.P10549297196199976067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A222230 (A222232 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171047.P10549297196199976067

/-! ## A171047.P262891414037410215

`A222254(A222251(A171057(A222251(A222251(n+1)))))`
-/

namespace A171047.P262891414037410215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222251 (A171057 (A222251 (A222251 (n + 1)).toNat).toNat).toNat).toNat

end

end A171047.P262891414037410215

/-!
# A171048: In the sequence of prime numbers, replace all the '8' digits with '7' and vice versa.

The programs for A171048, there is no canonical definition to state claims against.
-/

/-! ## A171048.P2832944869976150633

`A222252(Δ[A007504(n)])`
-/

namespace A171048.P2832944869976150633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (n + 1) - f1 n).toNat

end

end A171048.P2832944869976150633

/-! ## A171048.P18436691717640525208

`A222253(A222254(A171056(n+1)))`
-/

namespace A171048.P18436691717640525208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222254 (A171056 (n + 1)).toNat).toNat

end

end A171048.P18436691717640525208

/-! ## A171048.P1341744301035985357

`A222220(A222252(A175770(n+1)))`
-/

namespace A171048.P1341744301035985357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222252 (A175770 (n + 1)).toNat).toNat

end

end A171048.P1341744301035985357

/-! ## A171048.P17773984754745822210

`A222254(A222253(A171057(A222253(A222253(n+1)))))`
-/

namespace A171048.P17773984754745822210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 (A171057 (A222253 (A222253 (n + 1)).toNat).toNat).toNat).toNat

end

end A171048.P17773984754745822210

/-!
# A171049: In the sequence of prime numbers, replace all the '9' digits with '0' and vice versa.

The programs for A171049, there is no canonical definition to state claims against.
-/

/-! ## A171049.P16376310444311770072

`A222218(A000040(1+n))`
-/

namespace A171049.P16376310444311770072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A000040 (1 + n)).toNat

end

end A171049.P16376310444311770072

/-! ## A171049.P10854110040295258549

`A222226(A222210(A171050(n+1)))`
-/

namespace A171049.P10854110040295258549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222210 (A171050 (n + 1)).toNat).toNat

end

end A171049.P10854110040295258549

/-! ## A171049.P6573440796096750655

`A222254(A222217(A171057(n+1)))`
-/

namespace A171049.P6573440796096750655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222217 (A171057 (n + 1)).toNat).toNat

end

end A171049.P6573440796096750655

/-! ## A171049.P1922605827530628629

`A222220(A222218(A175770(n+1)))`
-/

namespace A171049.P1922605827530628629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222218 (A175770 (n + 1)).toNat).toNat

end

end A171049.P1922605827530628629

/-! ## A171049.P16269819837955684494

`A342955(A382097(n+1))`
-/

namespace A171049.P16269819837955684494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (A382097 (n + 1)).toNat

end

end A171049.P16269819837955684494

/-!
# A171050: In the sequence of prime numbers, replace all the '9' digits with '1' and vice versa.

The programs for A171050, there is no canonical definition to state claims against.
-/

/-! ## A171050.P8117219424527577128

`A222226(Δ[A007504(n)])`
-/

namespace A171050.P8117219424527577128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (f1 (n + 1) - f1 n).toNat

end

end A171050.P8117219424527577128

/-! ## A171050.P1736269708230174018

`A104696(A171037(n+1))`
-/

namespace A171050.P1736269708230174018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A171037 (n + 1)).toNat

end

end A171050.P1736269708230174018

/-! ## A171050.P15412256203189546034

`A222225(A222254(A171042(n+1)))`
-/

namespace A171050.P15412256203189546034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222254 (A171042 (n + 1)).toNat).toNat

end

end A171050.P15412256203189546034

/-! ## A171050.P5918344767583869306

`A222254(A222225(A171057(n+1)))`
-/

namespace A171050.P5918344767583869306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222225 (A171057 (n + 1)).toNat).toNat

end

end A171050.P5918344767583869306

/-!
# A171051: In the sequence of prime numbers, replace all the '9' digits with '2' and vice versa.

The programs for A171051, there is no canonical definition to state claims against.
-/

/-! ## A171051.P4510104348138387192

`A222233(Δ[A007504(n)])`
-/

namespace A171051.P4510104348138387192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (n + 1) - f1 n).toNat

end

end A171051.P4510104348138387192

/-! ## A171051.P13724392825506063033

`A222232(A222254(A171043(n+1)))`
-/

namespace A171051.P13724392825506063033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222254 (A171043 (n + 1)).toNat).toNat

end

end A171051.P13724392825506063033

/-! ## A171051.P14589041078999542130

`A222254(A222232(A171057(n+1)))`
-/

namespace A171051.P14589041078999542130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222232 (A171057 (n + 1)).toNat).toNat

end

end A171051.P14589041078999542130

/-!
# A171052: In the sequence of prime numbers, replace all the '9' digits with '3' and vice versa.

The programs for A171052, there is no canonical definition to state claims against.
-/

/-! ## A171052.P13158491838655663515

`A222239(Δ[A007504(n)])`
-/

namespace A171052.P13158491838655663515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (n + 1) - f1 n).toNat

end

end A171052.P13158491838655663515

/-! ## A171052.P18071055546346044706

`A222238(A222254(A171044(n+1)))`
-/

namespace A171052.P18071055546346044706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222254 (A171044 (n + 1)).toNat).toNat

end

end A171052.P18071055546346044706

/-! ## A171052.P15421773385359685820

`A222254(A222238(A171057(n+1)))`
-/

namespace A171052.P15421773385359685820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222238 (A171057 (n + 1)).toNat).toNat

end

end A171052.P15421773385359685820

/-! ## A171052.P12615947174533162098

`A222220(A222226(A175770(n+1)))`
-/

namespace A171052.P12615947174533162098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222226 (A175770 (n + 1)).toNat).toNat

end

end A171052.P12615947174533162098

/-!
# A171053: In the sequence of prime numbers, replace all the '9' digits with '4' and vice versa.

The programs for A171053, there is no canonical definition to state claims against.
-/

/-! ## A171053.P10793918317304789904

`A222244(A000040(1+n))`
-/

namespace A171053.P10793918317304789904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A000040 (1 + n)).toNat

end

end A171053.P10793918317304789904

/-! ## A171053.P3953742168886128680

`A222243(A222254(A171045(n+1)))`
-/

namespace A171053.P3953742168886128680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222254 (A171045 (n + 1)).toNat).toNat

end

end A171053.P3953742168886128680

/-! ## A171053.P14382678819436175018

`A222254(A222243(A171057(n+1)))`
-/

namespace A171053.P14382678819436175018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222243 (A171057 (n + 1)).toNat).toNat

end

end A171053.P14382678819436175018

/-!
# A171054: In the sequence of prime numbers, replace all the '9' digits with '5' and vice versa.

The programs for A171054, there is no canonical definition to state claims against.
-/

/-! ## A171054.P1055390501691918301

`A222248(Δ[A007504(n)])`
-/

namespace A171054.P1055390501691918301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (n + 1) - f1 n).toNat

end

end A171054.P1055390501691918301

/-! ## A171054.P4490868011746689086

`A222247(A222254(A171046(n+1)))`
-/

namespace A171054.P4490868011746689086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222254 (A171046 (n + 1)).toNat).toNat

end

end A171054.P4490868011746689086

/-! ## A171054.P1735893021055553990

`A222254(A222247(A171057(n+1)))`
-/

namespace A171054.P1735893021055553990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222247 (A171057 (n + 1)).toNat).toNat

end

end A171054.P1735893021055553990

/-!
# A171055: In the sequence of prime numbers, replace all the '9' digits with '6' and vice versa.

The programs for A171055, there is no canonical definition to state claims against.
-/

/-! ## A171055.P3340970786143306394

`A222251(A000040(1+n))`
-/

namespace A171055.P3340970786143306394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A000040 (1 + n)).toNat

end

end A171055.P3340970786143306394

/-! ## A171055.P11273325711690414416

`A222248(A222245(A171054(n+1)))`
-/

namespace A171055.P11273325711690414416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222245 (A171054 (n + 1)).toNat).toNat

end

end A171055.P11273325711690414416

/-! ## A171055.P12583066354580489712

`A222250(A222254(A171047(n+1)))`
-/

namespace A171055.P12583066354580489712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222254 (A171047 (n + 1)).toNat).toNat

end

end A171055.P12583066354580489712

/-! ## A171055.P15757339882491483116

`A222254(A222250(A171057(n+1)))`
-/

namespace A171055.P15757339882491483116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222250 (A171057 (n + 1)).toNat).toNat

end

end A171055.P15757339882491483116

/-!
# A171056: In the sequence of prime numbers, replace all the '9' digits with '7' and vice versa.

The programs for A171056, there is no canonical definition to state claims against.
-/

/-! ## A171056.P4578281800655876791

`A000040(n+1)+A222253(A171013(n+1))-A171013(n+1)`
-/

namespace A171056.P4578281800655876791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A222253 (A171013 (n + 1)).toNat - A171013 (n + 1))

end

end A171056.P4578281800655876791

/-! ## A171056.P13046483054920894394

`A222253(p?[comp[n²]])`
-/

namespace A171056.P13046483054920894394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171056.P13046483054920894394

/-! ## A171056.P17284269351010870199

`A222252(A222254(A171048(n+1)))`
-/

namespace A171056.P17284269351010870199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222254 (A171048 (n + 1)).toNat).toNat

end

end A171056.P17284269351010870199

/-! ## A171056.P6658090486834891159

`A222254(A222252(A171057(n+1)))`
-/

namespace A171056.P6658090486834891159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 (A171057 (n + 1)).toNat).toNat

end

end A171056.P6658090486834891159

/-!
# A171057: In the sequence of prime numbers, replace all the '9' digits with '8' and vice versa.

The programs for A171057, there is no canonical definition to state claims against.
-/

/-! ## A171057.P12369865910890449215

`A222254(Δ[A007504(n)])`
-/

namespace A171057.P12369865910890449215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f1 (n + 1) - f1 n).toNat

end

end A171057.P12369865910890449215

/-! ## A171057.P3759858429728053065

`A035044(A222254(A171018(n+1)))`
-/

namespace A171057.P3759858429728053065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222254 (A171018 (n + 1)).toNat).toNat

end

end A171057.P3759858429728053065

/-! ## A171057.P9005465904119947632

`A222221(A222254(A171020(n+1)))`
-/

namespace A171057.P9005465904119947632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222254 (A171020 (n + 1)).toNat).toNat

end

end A171057.P9005465904119947632

/-! ## A171057.P5553481037962511845

`A222222(A222254(A171024(n+1)))`
-/

namespace A171057.P5553481037962511845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222254 (A171024 (n + 1)).toNat).toNat

end

end A171057.P5553481037962511845

/-! ## A171057.P9923763214269400617

`A222228(A222254(A171021(n+1)))`
-/

namespace A171057.P9923763214269400617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222254 (A171021 (n + 1)).toNat).toNat

end

end A171057.P9923763214269400617

/-! ## A171057.P5585805382208686603

`A222223(A222254(A171029(n+1)))`
-/

namespace A171057.P5585805382208686603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222254 (A171029 (n + 1)).toNat).toNat

end

end A171057.P5585805382208686603

/-! ## A171057.P483019378385856349

`A222229(A222254(A171025(n+1)))`
-/

namespace A171057.P483019378385856349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222254 (A171025 (n + 1)).toNat).toNat

end

end A171057.P483019378385856349

/-! ## A171057.P3421490392867468829

`A222234(A222254(A171022(n+1)))`
-/

namespace A171057.P3421490392867468829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222254 (A171022 (n + 1)).toNat).toNat

end

end A171057.P3421490392867468829

/-! ## A171057.P2429735290972076259

`A222224(A222254(A171035(n+1)))`
-/

namespace A171057.P2429735290972076259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222254 (A171035 (n + 1)).toNat).toNat

end

end A171057.P2429735290972076259

/-! ## A171057.P11591016715738492977

`A222230(A222254(A171030(n+1)))`
-/

namespace A171057.P11591016715738492977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222254 (A171030 (n + 1)).toNat).toNat

end

end A171057.P11591016715738492977

/-! ## A171057.P11156936935031622204

`A222235(A222254(A171026(n+1)))`
-/

namespace A171057.P11156936935031622204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222254 (A171026 (n + 1)).toNat).toNat

end

end A171057.P11156936935031622204

/-! ## A171057.P3939688423461418267

`A222240(A222254(A171027(n+1)))`
-/

namespace A171057.P3939688423461418267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222254 (A171027 (n + 1)).toNat).toNat

end

end A171057.P3939688423461418267

/-! ## A171057.P1783328696039496747

`A222236(A222254(A171031(n+1)))`
-/

namespace A171057.P1783328696039496747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222254 (A171031 (n + 1)).toNat).toNat

end

end A171057.P1783328696039496747

/-! ## A171057.P15311554451831969668

`A222231(A222254(A171036(n+1)))`
-/

namespace A171057.P15311554451831969668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222254 (A171036 (n + 1)).toNat).toNat

end

end A171057.P15311554451831969668

/-! ## A171057.P9613043895275676157

`A222241(A222254(A171032(n+1)))`
-/

namespace A171057.P9613043895275676157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222254 (A171032 (n + 1)).toNat).toNat

end

end A171057.P9613043895275676157

/-! ## A171057.P289951535893511432

`A222237(A222254(A171037(n+1)))`
-/

namespace A171057.P289951535893511432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222254 (A171037 (n + 1)).toNat).toNat

end

end A171057.P289951535893511432

/-! ## A171057.P14729102638727058206

`A222245(A222254(A171033(n+1)))`
-/

namespace A171057.P14729102638727058206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222254 (A171033 (n + 1)).toNat).toNat

end

end A171057.P14729102638727058206

/-! ## A171057.P896008175304829002

`A222242(A222254(A171038(n+1)))`
-/

namespace A171057.P896008175304829002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222254 (A171038 (n + 1)).toNat).toNat

end

end A171057.P896008175304829002

/-! ## A171057.P4558867923823771808

`A222246(A222254(A171039(n+1)))`
-/

namespace A171057.P4558867923823771808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222254 (A171039 (n + 1)).toNat).toNat

end

end A171057.P4558867923823771808

/-! ## A171057.P10513355744652121348

`A222249(A222254(A171040(n+1)))`
-/

namespace A171057.P10513355744652121348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222254 (A171040 (n + 1)).toNat).toNat

end

end A171057.P10513355744652121348

/-!
# A171061: Record numbers of A171063 nonzero period n solutions of x(i)=(x(i-1)+x(i-2)) mod m, as encountered in (n=1,m=1; n=1,m=2; n=2,m=1) antidiagonal order.

The programs for A171061, there is no canonical definition to state claims against.
-/

/-! ## A171061.P4091465214052358787

`∩[A171062(n+1), record[A171063(n+1)]]`
-/

namespace A171061.P4091465214052358787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171062 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171061.P4091465214052358787

/-! ## A171061.P17608122988348616893

`A171062(∑[A062760(A279073(n+1))])`
-/

namespace A171061.P17608122988348616893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A279073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171062 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171061.P17608122988348616893

/-! ## A171061.P8669377074774603737

`filter[A171062(n+1), A159689(#)]`
-/

namespace A171061.P8669377074774603737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159689 (f1 j).toNat = 1) n)

end

end A171061.P8669377074774603737

/-! ## A171061.P8513642073330361985

`A171062(A038101(n+1))`
-/

namespace A171061.P8513642073330361985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171062 (A038101 (n + 1)).toNat

end

end A171061.P8513642073330361985

/-!
# A171063: Table read by antidiagonals: T(n,m)=number of nonzero period n solutions of x(i)=(x(i-1)+x(i-2)) mod m (n>=1, m>=1).

The programs for A171063, there is no canonical definition to state claims against.
-/

/-! ## A171063.P16498082739799849070

`A099837(A039755(n))+1`
-/

namespace A171063.P16498082739799849070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A039755 n).toNat + 1

end

end A171063.P16498082739799849070

/-! ## A171063.P9500487568494619554

`3*A060951(A187783(n))`
-/

namespace A171063.P9500487568494619554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060951 (A187783 n).toNat

end

end A171063.P9500487568494619554

/-! ## A171063.P5905703193793450242

`3%A110551(A048993(n)²)`
-/

namespace A171063.P5905703193793450242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A110551 (A048993 n ^ 2).toNat)

end

end A171063.P5905703193793450242

/-! ## A171063.P11671731186829344159

`A131290(or(3, A277443(n+1)))`
-/

namespace A171063.P11671731186829344159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131290 (Int.lor 3 (A277443 (n + 1))).toNat

end

end A171063.P11671731186829344159

/-! ## A171063.P4961432652976222635

`xor(A043282(n+1), A043282(A154233(n)))`
-/

namespace A171063.P4961432652976222635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043282 (n + 1)) (A043282 (A154233 n).toNat)

end

end A171063.P4961432652976222635

/-!
# A171064: G.f.: -x*(x-1)*(1+x)/(1-x-7*x^2-x^3+x^4).

The programs for A171064, the canonical program `A171064.P9862448793497247171` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171064 has offset 0).

The definition of A171064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171064.P9862448793497247171

`a(n-1)+7*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171064

/-- `a(n-1)+7*a(n-2)+a(n-3)-a(n-4)` -/
def P9862448793497247171.Spec : Prop :=
  ∀ n, P9862448793497247171.a n = A171064 n

theorem P9862448793497247171.correct : P9862448793497247171.Spec := by
  intro n
  simp only [A171064]

end A171064

/-! ## A171064.P11327054760812996789

`A294317(A277473(n))-A101674(n)`
-/

namespace A171064.P11327054760812996789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A277473 n).toNat - A101674 n

end

end A171064.P11327054760812996789

namespace A171064

/-- `A294317(A277473(n))-A101674(n)` -/
def P11327054760812996789.Spec : Prop :=
  ∀ n, P11327054760812996789.a n = A171064 n

end A171064

/-!
# A171065: G.f. -x*(x-1)*(1+x)/(1-x-8*x^2-x^3+x^4).

The programs for A171065, the canonical program `A171065.P18020595071575170545` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171065 has offset 0).

The definition of A171065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171065.P18020595071575170545

`a(n-1)+8*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171065

/-- `a(n-1)+8*a(n-2)+a(n-3)-a(n-4)` -/
def P18020595071575170545.Spec : Prop :=
  ∀ n, P18020595071575170545.a n = A171065 n

theorem P18020595071575170545.correct : P18020595071575170545.Spec := by
  intro n
  simp only [A171065]

end A171065

/-!
# A171066: Expansion of g.f.: x*(1 - x)*(1 + x)/(1 - x - 9*x^2 - x^3 + x^4).

The programs for A171066, the canonical program `A171066.P13067817043467343805` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171066 has offset 0).

The definition of A171066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-9x^2-x^3+x^4))` (program `A171066.P13067817043467343805`, by `A171066.P13067817043467343805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171066.P13067817043467343805

`ogf((x-x^3)/(1-x-9x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171066

/-- `ogf((x-x^3)/(1-x-9x^2-x^3+x^4))` -/
def P13067817043467343805.Spec : Prop :=
  ∀ n, P13067817043467343805.a n = A171066 n

theorem P13067817043467343805.correct : P13067817043467343805.Spec := by
  intro n
  simp only [A171066]

end A171066

/-! ## A171066.P9486190858484491650

`a(n-1)+9*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=9`
-/

namespace A171066.P9486190858484491650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 9] fun n a =>
  a (n - 1) + 9 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A171066.P9486190858484491650

namespace A171066

/-- `a(n-1)+9*a(n-2)+a(n-3)-a(n-4)` -/
def P9486190858484491650.Spec : Prop :=
  ∀ n, P9486190858484491650.a n = A171066 n

end A171066

/-!
# A171067: Expansion of g.f. x*(1 - x)*(1 + x)/((x^2 + 3*x + 1)*(x^2 - 4*x + 1)).

The programs for A171067, the canonical program `A171067.P9536682719250256628` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171067 has offset 0).

The definition of A171067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-10x^2-x^3+x^4))` (program `A171067.P9536682719250256628`, by `A171067.P9536682719250256628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171067.P9536682719250256628

`ogf((x-x^3)/(1-x-10x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171067

/-- `ogf((x-x^3)/(1-x-10x^2-x^3+x^4))` -/
def P9536682719250256628.Spec : Prop :=
  ∀ n, P9536682719250256628.a n = A171067 n

theorem P9536682719250256628.correct : P9536682719250256628.Spec := by
  intro n
  simp only [A171067]

end A171067

/-! ## A171067.P12837912447807437451

`a(n-1)+10*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=10`
-/

namespace A171067.P12837912447807437451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 10] fun n a =>
  a (n - 1) + 10 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A171067.P12837912447807437451

namespace A171067

/-- `a(n-1)+10*a(n-2)+a(n-3)-a(n-4)` -/
def P12837912447807437451.Spec : Prop :=
  ∀ n, P12837912447807437451.a n = A171067 n

end A171067

/-! ## A171067.P443314356400409678

`A007095(C(A171066(n), A000700(n)))`
-/

namespace A171067.P443314356400409678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A171066 n).toNat (A000700 n).toNat)

end

end A171067.P443314356400409678

namespace A171067

/-- `A007095(C(A171066(n), A000700(n)))` -/
def P443314356400409678.Spec : Prop :=
  ∀ n, P443314356400409678.a n = A171067 n

end A171067

/-!
# A171068: Expansion of g.f. x*(1 - x)*(1 + x)/(1 - x - 11*x^2 - x^3 + x^4).

The programs for A171068, the canonical program `A171068.P386289281772511071` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171068 has offset 0).

The definition of A171068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-11x^2-x^3+x^4))` (program `A171068.P386289281772511071`, by `A171068.P386289281772511071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171068.P386289281772511071

`ogf((x-x^3)/(1-x-11x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171068

/-- `ogf((x-x^3)/(1-x-11x^2-x^3+x^4))` -/
def P386289281772511071.Spec : Prop :=
  ∀ n, P386289281772511071.a n = A171068 n

theorem P386289281772511071.correct : P386289281772511071.Spec := by
  intro n
  simp only [A171068]

end A171068

/-! ## A171068.P3242972578849764041

`a(n-1)+11*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=11`
-/

namespace A171068.P3242972578849764041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 11] fun n a =>
  a (n - 1) + 11 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A171068.P3242972578849764041

namespace A171068

/-- `a(n-1)+11*a(n-2)+a(n-3)-a(n-4)` -/
def P3242972578849764041.Spec : Prop :=
  ∀ n, P3242972578849764041.a n = A171068 n

end A171068

/-!
# A171069: G.f. -x*(x-1)*(1+x)/(1-x-12*x^2-x^3+x^4).

The programs for A171069, the canonical program `A171069.P5568525462411660648` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171069 has offset 0).

The definition of A171069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171069.P5568525462411660648

`a(n-1)+12*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171069

/-- `a(n-1)+12*a(n-2)+a(n-3)-a(n-4)` -/
def P5568525462411660648.Spec : Prop :=
  ∀ n, P5568525462411660648.a n = A171069 n

theorem P5568525462411660648.correct : P5568525462411660648.Spec := by
  intro n
  simp only [A171069]

end A171069

/-! ## A171069.P3441310151666262088

`p?[round(8*n/7)]²%A221062(2^n)`
-/

namespace A171069.P3441310151666262088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A221062 (2 ^ n))

end

end A171069.P3441310151666262088

namespace A171069

/-- `p?[round(8*n/7)]²%A221062(2^n)` -/
def P3441310151666262088.Spec : Prop :=
  ∀ n, P3441310151666262088.a n = A171069 n

end A171069

/-!
# A171070: A bisection of A178482.

The programs for A171070, the canonical program `A171070.P13316125912663666615` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171070 has offset 1).

The definition of A171070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171070.P13316125912663666615

`A178482(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A171070

/-- `A178482(Δ[n²])` -/
def P13316125912663666615.Spec : Prop :=
  ∀ n, P13316125912663666615.a n = A171070 (n + 1)

theorem P13316125912663666615.correct : P13316125912663666615.Spec := by
  intro n
  simp only [A171070, Nat.add_sub_cancel]

end A171070

/-! ## A171070.P16475621952080415142

`record[A178482(A000265(1+n))]`
-/

namespace A171070.P16475621952080415142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (A000265 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171070.P16475621952080415142

namespace A171070

/-- `record[A178482(A000265(1+n))]` -/
def P16475621952080415142.Spec : Prop :=
  ∀ n, P16475621952080415142.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P9756894020646644334

`A062879(n+1)+A036796(n)`
-/

namespace A171070.P9756894020646644334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + A036796 n

end

end A171070.P9756894020646644334

namespace A171070

/-- `A062879(n+1)+A036796(n)` -/
def P9756894020646644334.Spec : Prop :=
  ∀ n, P9756894020646644334.a n = A171070 (n + 1)

theorem P9756894020646644334.correct : P9756894020646644334.Spec := by
  intro n
  simp only [A171070, Nat.add_sub_cancel, A171070.P9756894020646644334.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A036796, A036796.P3277589454516055024.a, A062879, A062879.P8862703960269035905.a, A178482, A178482.P16012889377102475657.f1, A178482.P16012889377102475657.a, A004275, A004275.P15310428355396401406.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171070

/-! ## A171070.P3784263570376696083

`A036795(n)+2*A062877(n)`
-/

namespace A171070.P3784263570376696083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n + 2 * A062877 n

end

end A171070.P3784263570376696083

namespace A171070

/-- `A036795(n)+2*A062877(n)` -/
def P3784263570376696083.Spec : Prop :=
  ∀ n, P3784263570376696083.a n = A171070 (n + 1)

theorem P3784263570376696083.correct : P3784263570376696083.Spec := by
  intro n
  simp only [A171070, Nat.add_sub_cancel, A171070.P3784263570376696083.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A036795, A036795.P10115071211355073936.a, A062877, A062877.P13716015760311910933.a, A178482, A178482.P16012889377102475657.f1, A178482.P16012889377102475657.a, A004275, A004275.P15310428355396401406.a, A036796, A036796.P3277589454516055024.a, A062879, A062879.P8862703960269035905.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171070

/-! ## A171070.P13656336013248588630

`A062879(n+1)+A062877(n)+1`
-/

namespace A171070.P13656336013248588630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (A062877 n + 1)

end

end A171070.P13656336013248588630

namespace A171070

/-- `A062879(n+1)+A062877(n)+1` -/
def P13656336013248588630.Spec : Prop :=
  ∀ n, P13656336013248588630.a n = A171070 (n + 1)

theorem P13656336013248588630.correct : P13656336013248588630.Spec := by
  intro n
  simp only [A171070, Nat.add_sub_cancel, A171070.P13656336013248588630.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A062877, A062877.P13716015760311910933.a, A062879, A062879.P8862703960269035905.a, A178482, A178482.P16012889377102475657.f1, A178482.P16012889377102475657.a, A004275, A004275.P15310428355396401406.a, A036796, A036796.P3277589454516055024.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171070

/-! ## A171070.P1710359580387902080

`A062877(2*n)+A036796(n)`
-/

namespace A171070.P1710359580387902080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (2 * n) + A036796 n

end

end A171070.P1710359580387902080

namespace A171070

/-- `A062877(2*n)+A036796(n)` -/
def P1710359580387902080.Spec : Prop :=
  ∀ n, P1710359580387902080.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P5941920778737562530

`A062877(Δ[n²])+A062877(n)`
-/

namespace A171070.P5941920778737562530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A062877 n

end

end A171070.P5941920778737562530

namespace A171070

/-- `A062877(Δ[n²])+A062877(n)` -/
def P5941920778737562530.Spec : Prop :=
  ∀ n, P5941920778737562530.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P11297017790258472959

`∩[A178482(n+1), A190723(n+1)]`
-/

namespace A171070.P11297017790258472959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171070.P11297017790258472959

namespace A171070

/-- `∩[A178482(n+1), A190723(n+1)]` -/
def P11297017790258472959.Spec : Prop :=
  ∀ n, (P11297017790258472959.a n : ℤ) = A171070 (n + 1)

end A171070

/-! ## A171070.P16165141430071780996

`A036796(2*n)+A023443(A036796(n))`
-/

namespace A171070.P16165141430071780996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (2 * n) + A023443 (A036796 n).toNat

end

end A171070.P16165141430071780996

namespace A171070

/-- `A036796(2*n)+A023443(A036796(n))` -/
def P16165141430071780996.Spec : Prop :=
  ∀ n, P16165141430071780996.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P11335951374726054505

`A050140(A036795(n))`
-/

namespace A171070.P11335951374726054505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A036795 n).toNat

end

end A171070.P11335951374726054505

namespace A171070

/-- `A050140(A036795(n))` -/
def P11335951374726054505.Spec : Prop :=
  ∀ n, P11335951374726054505.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P1289564931244536297

`∩[A050140(n+1), A178482(n+1)]`
-/

namespace A171070.P1289564931244536297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171070.P1289564931244536297

namespace A171070

/-- `∩[A050140(n+1), A178482(n+1)]` -/
def P1289564931244536297.Spec : Prop :=
  ∀ n, (P1289564931244536297.a n : ℤ) = A171070 (n + 1)

end A171070

/-! ## A171070.P18290340157642023896

`∩[A050140(n+1), A330722(n+1)]`
-/

namespace A171070.P18290340157642023896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171070.P18290340157642023896

namespace A171070

/-- `∩[A050140(n+1), A330722(n+1)]` -/
def P18290340157642023896.Spec : Prop :=
  ∀ n, (P18290340157642023896.a n : ℤ) = A171070 (n + 1)

end A171070

/-! ## A171070.P7129426301403157915

`∩[A178482(n+1), A284625(n+1)-2]`
-/

namespace A171070.P7129426301403157915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171070.P7129426301403157915

namespace A171070

/-- `∩[A178482(n+1), A284625(n+1)-2]` -/
def P7129426301403157915.Spec : Prop :=
  ∀ n, (P7129426301403157915.a n : ℤ) = A171070 (n + 1)

end A171070

/-! ## A171070.P12440101476561523826

`A063732(A036796(2*n+1))`
-/

namespace A171070.P12440101476561523826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A036796 (2 * n + 1)).toNat

end

end A171070.P12440101476561523826

namespace A171070

/-- `A063732(A036796(2*n+1))` -/
def P12440101476561523826.Spec : Prop :=
  ∀ n, P12440101476561523826.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P14045173670198648824

`filter[A178482(n+1), A287772(#)]`
-/

namespace A171070.P14045173670198648824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287772 (f1 j).toNat = 1) n)

end

end A171070.P14045173670198648824

namespace A171070

/-- `filter[A178482(n+1), A287772(#)]` -/
def P14045173670198648824.Spec : Prop :=
  ∀ n, P14045173670198648824.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P98833868124646784

`filter[A178482(n+1), A330037(#)]`
-/

namespace A171070.P98833868124646784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330037 (f1 j).toNat = 1) n)

end

end A171070.P98833868124646784

namespace A171070

/-- `filter[A178482(n+1), A330037(#)]` -/
def P98833868124646784.Spec : Prop :=
  ∀ n, P98833868124646784.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P5379101719012563904

`filter[A330722(n+1), A330037(#)]`
-/

namespace A171070.P5379101719012563904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330037 (f1 j).toNat = 1) n)

end

end A171070.P5379101719012563904

namespace A171070

/-- `filter[A330722(n+1), A330037(#)]` -/
def P5379101719012563904.Spec : Prop :=
  ∀ n, P5379101719012563904.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P747008626274233842

`filter[A330722(n+2), A287772(#)]`
-/

namespace A171070.P747008626274233842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287772 (f1 j).toNat = 1) n)

end

end A171070.P747008626274233842

namespace A171070

/-- `filter[A330722(n+2), A287772(#)]` -/
def P747008626274233842.Spec : Prop :=
  ∀ n, P747008626274233842.a n = A171070 (n + 1)

end A171070

/-! ## A171070.P14808261739906156781

`∩[A178482(n+1), A249115(n+1)]`
-/

namespace A171070.P14808261739906156781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171070.P14808261739906156781

namespace A171070

/-- `∩[A178482(n+1), A249115(n+1)]` -/
def P14808261739906156781.Spec : Prop :=
  ∀ n, (P14808261739906156781.a n : ℤ) = A171070 (n + 1)

end A171070

/-! ## A171070.P6250102537174460989

`A214971(A036796(n))`
-/

namespace A171070.P6250102537174460989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214971 (A036796 n).toNat

end

end A171070.P6250102537174460989

namespace A171070

/-- `A214971(A036796(n))` -/
def P6250102537174460989.Spec : Prop :=
  ∀ n, P6250102537174460989.a n = A171070 (n + 1)

end A171070

/-!
# A171071: A bisection of A178482.

The programs for A171071, the canonical program `A171071.P1245337955682911861` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171071 has offset 1).

The definition of A171071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171071.P1245337955682911861

`∑[1+A005248(val(n+1, 2))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A171071

/-- `∑[1+A005248(val(n+1, 2))]` -/
def P1245337955682911861.Spec : Prop :=
  ∀ n, P1245337955682911861.a n = A171071 (n + 1)

theorem P1245337955682911861.correct : P1245337955682911861.Spec := by
  intro n
  simp only [A171071, Nat.add_sub_cancel]

end A171071

/-! ## A171071.P5335285409626802936

`∑[1+A000032(val((n+1)², 2))]`
-/

namespace A171071.P5335285409626802936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000032 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P5335285409626802936

namespace A171071

/-- `∑[1+A000032(val((n+1)², 2))]` -/
def P5335285409626802936.Spec : Prop :=
  ∀ n, P5335285409626802936.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P10014300758699295813

`∑[A000032(2*val(n+1, 2))+1]`
-/

namespace A171071.P10014300758699295813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * SequenceMachineLib.valuation (n + 1) 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P10014300758699295813

namespace A171071

/-- `∑[A000032(2*val(n+1, 2))+1]` -/
def P10014300758699295813.Spec : Prop :=
  ∀ n, P10014300758699295813.a n = A171071 (n + 1)

theorem P10014300758699295813.correct : P10014300758699295813.Spec := by
  intro n
  simp only [A171071, Nat.add_sub_cancel, A171071.P10014300758699295813.f1, A171071.P10014300758699295813.a, A171071.P1245337955682911861.f1, A171071.P1245337955682911861.a, A000032, A000032.P8352177345629330861.a, A005248, A005248.P3255906601217542815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171071

/-! ## A171071.P7433089993791962120

`∑[A005248(A007814(n+1))+1]`
-/

namespace A171071.P7433089993791962120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A007814 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P7433089993791962120

namespace A171071

/-- `∑[A005248(A007814(n+1))+1]` -/
def P7433089993791962120.Spec : Prop :=
  ∀ n, P7433089993791962120.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P3684412661216589500

`∑[A001612(2*A007814(n+1))]`
-/

namespace A171071.P3684412661216589500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (2 * A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P3684412661216589500

namespace A171071

/-- `∑[A001612(2*A007814(n+1))]` -/
def P3684412661216589500.Spec : Prop :=
  ∀ n, P3684412661216589500.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P10703087159809146020

`A171070(2+n)-1`
-/

namespace A171071.P10703087159809146020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (2 + n) - 1

end

end A171071.P10703087159809146020

namespace A171071

/-- `A171070(2+n)-1` -/
def P10703087159809146020.Spec : Prop :=
  ∀ n, P10703087159809146020.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P9241730244496606931

`∑[abs(Δ[A171070(n+1)])]`
-/

namespace A171071.P9241730244496606931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P9241730244496606931

namespace A171071

/-- `∑[abs(Δ[A171070(n+1)])]` -/
def P9241730244496606931.Spec : Prop :=
  ∀ n, P9241730244496606931.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P5231233846569063990

`A062879(n+2)+A062879(n+2)-A054204(n+1)`
-/

namespace A171071.P5231233846569063990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 2) + (A062879 (n + 2) - A054204 (n + 1))

end

end A171071.P5231233846569063990

namespace A171071

/-- `A062879(n+2)+A062879(n+2)-A054204(n+1)` -/
def P5231233846569063990.Spec : Prop :=
  ∀ n, P5231233846569063990.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P10133905952830042706

`A178482(2*(n+1))`
-/

namespace A171071.P10133905952830042706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (2 * (n + 1))

end

end A171071.P10133905952830042706

namespace A171071

/-- `A178482(2*(n+1))` -/
def P10133905952830042706.Spec : Prop :=
  ∀ n, P10133905952830042706.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P11990928330440633269

`record[A178482(A000265(n+1)+1)]`
-/

namespace A171071.P11990928330440633269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171071.P11990928330440633269

namespace A171071

/-- `record[A178482(A000265(n+1)+1)]` -/
def P11990928330440633269.Spec : Prop :=
  ∀ n, P11990928330440633269.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P7215221162801563791

`A178482(n+3+n)-1`
-/

namespace A171071.P7215221162801563791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 3 + n) - 1

end

end A171071.P7215221162801563791

namespace A171071

/-- `A178482(n+3+n)-1` -/
def P7215221162801563791.Spec : Prop :=
  ∀ n, P7215221162801563791.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P18246027874159451153

`A062879(n+2)+A062877(n+1)`
-/

namespace A171071.P18246027874159451153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 2) + A062877 (n + 1)

end

end A171071.P18246027874159451153

namespace A171071

/-- `A062879(n+2)+A062877(n+1)` -/
def P18246027874159451153.Spec : Prop :=
  ∀ n, P18246027874159451153.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P15355706398359769709

`A036796(n+1)+A062879(n+2)-1`
-/

namespace A171071.P15355706398359769709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (n + 1) + (A062879 (n + 2) - 1)

end

end A171071.P15355706398359769709

namespace A171071

/-- `A036796(n+1)+A062879(n+2)-1` -/
def P15355706398359769709.Spec : Prop :=
  ∀ n, P15355706398359769709.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P11631607108450949904

`A054204(n+1)+A062877(n+1)+A062877(n+1)`
-/

namespace A171071.P11631607108450949904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (n + 1) + (A062877 (n + 1) + A062877 (n + 1))

end

end A171071.P11631607108450949904

namespace A171071

/-- `A054204(n+1)+A062877(n+1)+A062877(n+1)` -/
def P11631607108450949904.Spec : Prop :=
  ∀ n, P11631607108450949904.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P14269948535018648729

`A062877(2*(n+1))+A062877(n+1)`
-/

namespace A171071.P14269948535018648729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (2 * (n + 1)) + A062877 (n + 1)

end

end A171071.P14269948535018648729

namespace A171071

/-- `A062877(2*(n+1))+A062877(n+1)` -/
def P14269948535018648729.Spec : Prop :=
  ∀ n, P14269948535018648729.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P12430034178874260082

`A003231(A062877(n+1))`
-/

namespace A171071.P12430034178874260082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (A062877 (n + 1)).toNat

end

end A171071.P12430034178874260082

namespace A171071

/-- `A003231(A062877(n+1))` -/
def P12430034178874260082.Spec : Prop :=
  ∀ n, P12430034178874260082.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P3235740846721239692

`∩[A003231(n+1), A178482(n+1)]`
-/

namespace A171071.P3235740846721239692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171071.P3235740846721239692

namespace A171071

/-- `∩[A003231(n+1), A178482(n+1)]` -/
def P3235740846721239692.Spec : Prop :=
  ∀ n, (P3235740846721239692.a n : ℤ) = A171071 (n + 1)

end A171071

/-! ## A171071.P1731002921134528212

`A284625(A054204(n+1))`
-/

namespace A171071.P1731002921134528212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (A054204 (n + 1)).toNat

end

end A171071.P1731002921134528212

namespace A171071

/-- `A284625(A054204(n+1))` -/
def P1731002921134528212.Spec : Prop :=
  ∀ n, P1731002921134528212.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P9982018801880333626

`A050140(A036795(n+1))-1`
-/

namespace A171071.P9982018801880333626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A036795 (n + 1)).toNat - 1

end

end A171071.P9982018801880333626

namespace A171071

/-- `A050140(A036795(n+1))-1` -/
def P9982018801880333626.Spec : Prop :=
  ∀ n, P9982018801880333626.a n = A171071 (n + 1)

end A171071

/-! ## A171071.P2586107647998766723

`∩[A178482(n+1), A284625(n+1)]`
-/

namespace A171071.P2586107647998766723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171071.P2586107647998766723

namespace A171071

/-- `∩[A178482(n+1), A284625(n+1)]` -/
def P2586107647998766723.Spec : Prop :=
  ∀ n, (P2586107647998766723.a n : ℤ) = A171071 (n + 1)

end A171071

/-!
# A171074: A115112 with initial term changed from 0 to 1.

The programs for A171074, the canonical program `A171074.P13942206211822107705` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171074 has offset 1).

The definition of A171074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171074.P12396529574068026753

`record[abs(∑{#}[n, C(n, #)²]-2)]`
-/

namespace A171074.P12396529574068026753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P12396529574068026753

namespace A171074

/-- `record[abs(∑{#}[n, C(n, #)²]-2)]` -/
def P12396529574068026753.Spec : Prop :=
  ∀ n, P12396529574068026753.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P9688800591051808756

`floor(acot(n)+∏[4-2/(n+1)]-2)`
-/

namespace A171074.P9688800591051808756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + ((∏ j ∈ Finset.range (n + 1), f1 j - 2 : ℚ) : ℝ)⌋

end

end A171074.P9688800591051808756

namespace A171074

/-- `floor(acot(n)+∏[4-2/(n+1)]-2)` -/
def P9688800591051808756.Spec : Prop :=
  ∀ n, P9688800591051808756.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P6025982953830188022

`record[(4-2/n)*a(n-1)]-2` with `a(0)=3, a(1)=2`
-/

namespace A171074.P6025982953830188022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A171074.P6025982953830188022

namespace A171074

/-- `record[(4-2/n)*a(n-1)]-2` -/
def P6025982953830188022.Spec : Prop :=
  ∀ n, P6025982953830188022.a n = (A171074 (n + 1) : ℚ)

end A171074

/-! ## A171074.P847088331134566670

`abs(record[a(n-1)/(floor(n/2)/n-1)])-2` with `a(0)=3, a(1)=-1`
-/

namespace A171074.P847088331134566670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)| - 2

end

end A171074.P847088331134566670

namespace A171074

/-- `abs(record[a(n-1)/(floor(n/2)/n-1)])-2` -/
def P847088331134566670.Spec : Prop :=
  ∀ n, P847088331134566670.a n = (A171074 (n + 1) : ℚ)

end A171074

/-! ## A171074.P5949638201839255548

`record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2-2` with `a(0)=2, a(1)=1`
-/

namespace A171074.P5949638201839255548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2 - 2

end

end A171074.P5949638201839255548

namespace A171074

/-- `record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2-2` -/
def P5949638201839255548.Spec : Prop :=
  ∀ n, P5949638201839255548.a n = (A171074 (n + 1) : ℚ)

end A171074

/-! ## A171074.P13942206211822107705

`record[Δ[A081668(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171074

/-- `record[Δ[A081668(n)]]` -/
def P13942206211822107705.Spec : Prop :=
  ∀ n, P13942206211822107705.a n = A171074 (n + 1)

theorem P13942206211822107705.correct : P13942206211822107705.Spec := by
  intro n
  simp only [A171074, Nat.add_sub_cancel]

end A171074

/-! ## A171074.P6612865968181782497

`record[abs(2-A000984(n))]`
-/

namespace A171074.P6612865968181782497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000984 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P6612865968181782497

namespace A171074

/-- `record[abs(2-A000984(n))]` -/
def P6612865968181782497.Spec : Prop :=
  ∀ n, P6612865968181782497.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P2840229017953064964

`record[abs(A201686(2*n))]`
-/

namespace A171074.P2840229017953064964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201686 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P2840229017953064964

namespace A171074

/-- `record[abs(A201686(2*n))]` -/
def P2840229017953064964.Spec : Prop :=
  ∀ n, P2840229017953064964.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P8520991970959841993

`record[abs(A395396(2*n))]`
-/

namespace A171074.P8520991970959841993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395396 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P8520991970959841993

namespace A171074

/-- `record[abs(A395396(2*n))]` -/
def P8520991970959841993.Spec : Prop :=
  ∀ n, P8520991970959841993.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P4272586110074704739

`max(A115112(n+1), n+1)`
-/

namespace A171074.P4272586110074704739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A115112 (n + 1)) (n + 1 : ℤ)

end

end A171074.P4272586110074704739

namespace A171074

/-- `max(A115112(n+1), n+1)` -/
def P4272586110074704739.Spec : Prop :=
  ∀ n, P4272586110074704739.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P10423441145619033332

`A201686(A051755(n+2))`
-/

namespace A171074.P10423441145619033332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (A051755 (n + 2)).toNat

end

end A171074.P10423441145619033332

namespace A171074

/-- `A201686(A051755(n+2))` -/
def P10423441145619033332.Spec : Prop :=
  ∀ n, P10423441145619033332.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P3076845070461132456

`A144657(n)+A004277(n)`
-/

namespace A171074.P3076845070461132456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144657 n + A004277 n

end

end A171074.P3076845070461132456

namespace A171074

/-- `A144657(n)+A004277(n)` -/
def P3076845070461132456.Spec : Prop :=
  ∀ n, P3076845070461132456.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P13280091971805370409

`A057428(n)+A030662(n+1)`
-/

namespace A171074.P13280091971805370409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A030662 (n + 1)

end

end A171074.P13280091971805370409

namespace A171074

/-- `A057428(n)+A030662(n+1)` -/
def P13280091971805370409.Spec : Prop :=
  ∀ n, P13280091971805370409.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P15432517590960430849

`A115112(n+1)+A000007(n)`
-/

namespace A171074.P15432517590960430849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) + A000007 n

end

end A171074.P15432517590960430849

namespace A171074

/-- `A115112(n+1)+A000007(n)` -/
def P15432517590960430849.Spec : Prop :=
  ∀ n, P15432517590960430849.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P14808568181709955670

`A000984(n+1)-A040000(n)`
-/

namespace A171074.P14808568181709955670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A040000 n

end

end A171074.P14808568181709955670

namespace A171074

/-- `A000984(n+1)-A040000(n)` -/
def P14808568181709955670.Spec : Prop :=
  ∀ n, P14808568181709955670.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P4225807320381835377

`A030662(n+1)-A057427(n)`
-/

namespace A171074.P4225807320381835377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) - A057427 n

end

end A171074.P4225807320381835377

namespace A171074

/-- `A030662(n+1)-A057427(n)` -/
def P4225807320381835377.Spec : Prop :=
  ∀ n, P4225807320381835377.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P5667932756398104913

`A000007(n)+2*A010763(n)`
-/

namespace A171074.P5667932756398104913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A010763 n

end

end A171074.P5667932756398104913

namespace A171074

/-- `A000007(n)+2*A010763(n)` -/
def P5667932756398104913.Spec : Prop :=
  ∀ n, P5667932756398104913.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P2474410823732257089

`2*A001700(n)-A040000(n)`
-/

namespace A171074.P2474410823732257089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n - A040000 n

end

end A171074.P2474410823732257089

namespace A171074

/-- `2*A001700(n)-A040000(n)` -/
def P2474410823732257089.Spec : Prop :=
  ∀ n, P2474410823732257089.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P13768048116779672300

`A001405(A014683(2*(n+1)))-2`
-/

namespace A171074.P13768048116779672300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A014683 (2 * (n + 1))).toNat - 2

end

end A171074.P13768048116779672300

namespace A171074

/-- `A001405(A014683(2*(n+1)))-2` -/
def P13768048116779672300.Spec : Prop :=
  ∀ n, P13768048116779672300.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P5146454094328276437

`A000984(n+1)-(1+A057427(n))`
-/

namespace A171074.P5146454094328276437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (1 + A057427 n)

end

end A171074.P5146454094328276437

namespace A171074

/-- `A000984(n+1)-(1+A057427(n))` -/
def P5146454094328276437.Spec : Prop :=
  ∀ n, P5146454094328276437.a n = A171074 (n + 1)

end A171074

/-!
# A171075: Total number of balls on lawn in variant of the tennis ball problem (cf. A171074).

The programs for A171075, there is no canonical definition to state claims against.
-/

/-! ## A171075.P9253232929934274733

`A171076(n+1)+A004273(n)-1`
-/

namespace A171075.P9253232929934274733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171076 (n + 1) + (A004273 n - 1)

end

end A171075.P9253232929934274733

/-! ## A171075.P17368986025955159360

`A171076(n+1)-A024000(A004273(n))`
-/

namespace A171075.P17368986025955159360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171076 (n + 1) - A024000 (A004273 n).toNat

end

end A171075.P17368986025955159360

/-!
# A171076: Total number of balls in room in variant of the tennis ball problem (cf. A171074).

The programs for A171076, there is no canonical definition to state claims against.
-/

/-! ## A171076.P18270782579660694717

`A171075(n+1)+1-comp[2*(n+1)]`
-/

namespace A171076.P18270782579660694717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171075 (n + 1) + 1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A171076.P18270782579660694717

/-! ## A171076.P4713762048002601271

`A171075(n+1)+1-A004273(n)`
-/

namespace A171076.P4713762048002601271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171075 (n + 1) + (1 - A004273 n)

end

end A171076.P4713762048002601271

/-! ## A171076.P10617645146434465837

`A171075(n+1)+A024000(A004273(n))`
-/

namespace A171076.P10617645146434465837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171075 (n + 1) + A024000 (A004273 n).toNat

end

end A171076.P10617645146434465837

/-!
# A171077: Numbers that are multiples of 28 and contain both a 4 and a 7.

The programs for A171077, there is no canonical definition to state claims against.
-/

/-! ## A171077.P4444801811825554989

`∩[A121024(n+1), A121027(n+1)]`
-/

namespace A171077.P4444801811825554989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171077.P4444801811825554989

/-!
# A171078: Numerator of s_{2n}, where s_0 = 1, s_n = | 2^n*(2^(n-1)-1)*Bernoulli(n)/n! | for n>0.

The programs for A171078, there is no canonical definition to state claims against.
-/

/-! ## A171078.P16570760780950606044

`(A088512(n)+1)*A036280(n)`
-/

namespace A171078.P16570760780950606044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088512 n + 1) * A036280 n

end

end A171078.P16570760780950606044

/-! ## A171078.P7423853546756831045

`A000010(A001316(n))*A036280(n)`
-/

namespace A171078.P7423853546756831045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001316 n).toNat * A036280 n

end

end A171078.P7423853546756831045

/-! ## A171078.P11028973636838984759

`A011782(A000120(n))*A036280(n)`
-/

namespace A171078.P11028973636838984759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n).toNat * A036280 n

end

end A171078.P11028973636838984759

/-! ## A171078.P2272558960845417171

`A001316(A088512(n))*A036280(n)`
-/

namespace A171078.P2272558960845417171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A088512 n).toNat * A036280 n

end

end A171078.P2272558960845417171

/-!
# A171079: Denominator of s_{2n}, where s_0 = 1/2, s_n = | 2^n*(2^(n-1)-1)*Bernoulli(n)/n! | for n>0.

The programs for A171079, there is no canonical definition to state claims against.
-/

/-! ## A171079.P8717204361708336068

`A322250(A002432(n))+1`
-/

namespace A171079.P8717204361708336068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (A002432 n).toNat + 1

end

end A171079.P8717204361708336068

/-!
# A171080: a(n) = Product_{3 <= p <= 2*n+1, p prime} p^floor(2*n / (p - 1)).

The programs for A171080, the canonical program `A171080.P11465979562954710741` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171080 has offset 0).

The definition of A171080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171080.P11465979562954710741

`A091137(2*n)/2^(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A171080

/-- `A091137(2*n)/2^(2*n)` -/
def P11465979562954710741.Spec : Prop :=
  ∀ n, P11465979562954710741.a n = (A171080 n : ℚ)

end A171080

/-! ## A171080.P2704224251279747397

`∏[A001897(n)]`
-/

namespace A171080.P2704224251279747397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171080.P2704224251279747397

namespace A171080

/-- `∏[A001897(n)]` -/
def P2704224251279747397.Spec : Prop :=
  ∀ n, P2704224251279747397.a n = A171080 n

end A171080

/-! ## A171080.P2874280277390926960

`A165636(2*n)`
-/

namespace A171080.P2874280277390926960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165636 (2 * n)

end

end A171080.P2874280277390926960

namespace A171080

/-- `A165636(2*n)` -/
def P2874280277390926960.Spec : Prop :=
  ∀ n, P2874280277390926960.a n = A171080 n

end A171080

/-! ## A171080.P18196695039047932071

`record[A165636(col(n))]`
-/

namespace A171080.P18196695039047932071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165636 (SequenceMachineLib.triCol n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171080.P18196695039047932071

namespace A171080

/-- `record[A165636(col(n))]` -/
def P18196695039047932071.Spec : Prop :=
  ∀ n, P18196695039047932071.a n = A171080 n

end A171080

/-! ## A171080.P12144544591666725312

`∏[A141459(2*n)]`
-/

namespace A171080.P12144544591666725312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171080.P12144544591666725312

namespace A171080

/-- `∏[A141459(2*n)]` -/
def P12144544591666725312.Spec : Prop :=
  ∀ n, P12144544591666725312.a n = A171080 n

end A171080

/-!
# A171081: Van der Waerden numbers w(3, n).

The programs for A171081, there is no canonical definition to state claims against.
-/

/-! ## A171081.P9744913002365161293

`A007783(n+3)`
-/

namespace A171081.P9744913002365161293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007783 (n + 3)

end

end A171081.P9744913002365161293

/-! ## A171081.P9492447413735552384

`∏{e}[2*a(n-1), A007783(#)]` with `a(0)=8`
-/

namespace A171081.P9492447413735552384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007783 (Nat.factorization (f1 n) p)

end

end A171081.P9492447413735552384

/-!
# A171082: Van der Waerden numbers w(2;4,n).

The programs for A171082, there is no canonical definition to state claims against.
-/

/-! ## A171082.P3125255233526022679

`A007784(n+4)`
-/

namespace A171082.P3125255233526022679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007784 (n + 4)

end

end A171082.P3125255233526022679

/-!
# A171086: A "run" means a maximal string of numbers that includes exactly one odd number; this sequence has the property that the sequence of run lengths is the sequence itself and all natural numbers appear exactly once.

The programs for A171086, there is no canonical definition to state claims against.
-/

/-! ## A171086.P10928026514218066690

`1+A273863(n+1)`
-/

namespace A171086.P10928026514218066690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A273863 (n + 1)

end

end A171086.P10928026514218066690

/-!
# A171088: To find 3 consecutive integers in the sequence, you have to take 4 consecutive terms, no more and no less.

The programs for A171088, the canonical program `A171088.P8633700537560053784` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171088 has offset 0).

The definition of A171088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171088.P8633700537560053784

`1+a(n-3)` with `a(0)=1, a(1)=3, a(2)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A171088

/-- `1+a(n-3)` -/
def P8633700537560053784.Spec : Prop :=
  ∀ n, (P8633700537560053784.a n : ℤ) = A171088 n

theorem P8633700537560053784.correct : P8633700537560053784.Spec := by
  intro n
  simp only [A171088]

end A171088

/-! ## A171088.P5272552979708390866

`ogf((1+2x-3x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A171088.P5272552979708390866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3, 1] [1, -1, 0, -1, 1] n

end

end A171088.P5272552979708390866

namespace A171088

/-- `ogf((1+2x-3x^2+x^3)/(1-x-x^3+x^4))` -/
def P5272552979708390866.Spec : Prop :=
  ∀ n, P5272552979708390866.a n = A171088 n

end A171088

/-! ## A171088.P9220548266927273383

`(3*n+9+10*sqrt(3)*sin(2*n*π/3))/9`
-/

namespace A171088.P9220548266927273383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * n + 9 : ℝ) + 10 * Real.sqrt (3 : ℝ) * Real.sin ((2 * n : ℝ) * Real.pi / 3)) / 9

end

end A171088.P9220548266927273383

namespace A171088

/-- `(3*n+9+10*sqrt(3)*sin(2*n*π/3))/9` -/
def P9220548266927273383.Spec : Prop :=
  ∀ n, P9220548266927273383.a n = (A171088 n : ℝ)

end A171088

/-! ## A171088.P4793674857972042574

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=-3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A171088.P4793674857972042574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171088.P4793674857972042574

namespace A171088

/-- `∑[floor(a(n-3))]` -/
def P4793674857972042574.Spec : Prop :=
  ∀ n, P4793674857972042574.a n = A171088 n

end A171088

/-! ## A171088.P10357903813128447850

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=-3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A171088.P10357903813128447850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171088.P10357903813128447850

namespace A171088

/-- `∑[ceil(a(n-3))]` -/
def P10357903813128447850.Spec : Prop :=
  ∀ n, P10357903813128447850.a n = A171088 n

end A171088

/-! ## A171088.P16870336491329927370

`1-floor(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A171088.P16870336491329927370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  1 - (-a (n - 3))

end

end A171088.P16870336491329927370

namespace A171088

/-- `1-floor(-a(n-3))` -/
def P16870336491329927370.Spec : Prop :=
  ∀ n, P16870336491329927370.a n = A171088 n

end A171088

/-! ## A171088.P13352286714177265787

`1-ceil(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A171088.P13352286714177265787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  1 - (-a (n - 3))

end

end A171088.P13352286714177265787

namespace A171088

/-- `1-ceil(-a(n-3))` -/
def P13352286714177265787.Spec : Prop :=
  ∀ n, P13352286714177265787.a n = A171088 n

end A171088

/-! ## A171088.P10632484131305441549

`abs(xor(-1, a(n-3)))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P10632484131305441549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  |Int.xor (-1) (a (n - 3))|

end

end A171088.P10632484131305441549

namespace A171088

/-- `abs(xor(-1, a(n-3)))` -/
def P10632484131305441549.Spec : Prop :=
  ∀ n, P10632484131305441549.a n = A171088 n

end A171088

/-! ## A171088.P10102514481493446876

`1-round(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A171088.P10102514481493446876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  1 - (-a (n - 3))

end

end A171088.P10102514481493446876

namespace A171088

/-- `1-round(-a(n-3))` -/
def P10102514481493446876.Spec : Prop :=
  ∀ n, P10102514481493446876.a n = A171088 n

end A171088

/-! ## A171088.P13532031619648519494

`-xor(-1, a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P13532031619648519494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  -Int.xor (-1) (a (n - 3))

end

end A171088.P13532031619648519494

namespace A171088

/-- `-xor(-1, a(n-3))` -/
def P13532031619648519494.Spec : Prop :=
  ∀ n, P13532031619648519494.a n = A171088 n

end A171088

/-! ## A171088.P10097137180994016937

`2*n+1-5*round(n/3)`
-/

namespace A171088.P10097137180994016937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - 5 * SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A171088.P10097137180994016937

namespace A171088

/-- `2*n+1-5*round(n/3)` -/
def P10097137180994016937.Spec : Prop :=
  ∀ n, P10097137180994016937.a n = A171088 n

end A171088

/-! ## A171088.P9111037348676838021

`floor(2-(a(n-1)-n)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171088.P9111037348676838021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (a (n - 1) - (n : ℤ)) - a (n - 2)

end

end A171088.P9111037348676838021

namespace A171088

/-- `floor(2-(a(n-1)-n)-a(n-2))` -/
def P9111037348676838021.Spec : Prop :=
  ∀ n, P9111037348676838021.a n = A171088 n

end A171088

/-! ## A171088.P2063346830729016605

`A084964(n-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A171088.P2063346830729016605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A084964 ((n : ℤ) - a (n - 2)).toNat

end

end A171088.P2063346830729016605

namespace A171088

/-- `A084964(n-a(n-2))` -/
def P2063346830729016605.Spec : Prop :=
  ∀ n, P2063346830729016605.a n = A171088 n

end A171088

/-! ## A171088.P18090395063361660629

`A027656(2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P18090395063361660629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  A027656 (2 * a (n - 3)).toNat

end

end A171088.P18090395063361660629

namespace A171088

/-- `A027656(2*a(n-3))` -/
def P18090395063361660629.Spec : Prop :=
  ∀ n, P18090395063361660629.a n = A171088 n

end A171088

/-! ## A171088.P4506836852853383635

`A028242(2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P4506836852853383635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  A028242 (2 * a (n - 3)).toNat

end

end A171088.P4506836852853383635

namespace A171088

/-- `A028242(2*a(n-3))` -/
def P4506836852853383635.Spec : Prop :=
  ∀ n, P4506836852853383635.a n = A171088 n

end A171088

/-! ## A171088.P17184753141552443950

`A097065(2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P17184753141552443950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  A097065 (2 * a (n - 3)).toNat

end

end A171088.P17184753141552443950

namespace A171088

/-- `A097065(2*a(n-3))` -/
def P17184753141552443950.Spec : Prop :=
  ∀ n, P17184753141552443950.a n = A171088 n

end A171088

/-! ## A171088.P2526697230888199252

`A110514(2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P2526697230888199252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  A110514 (2 * a (n - 3)).toNat

end

end A171088.P2526697230888199252

namespace A171088

/-- `A110514(2*a(n-3))` -/
def P2526697230888199252.Spec : Prop :=
  ∀ n, P2526697230888199252.a n = A171088 n

end A171088

/-! ## A171088.P927501160082793182

`A131732(2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A171088.P927501160082793182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  A131732 (2 * a (n - 3)).toNat

end

end A171088.P927501160082793182

namespace A171088

/-- `A131732(2*a(n-3))` -/
def P927501160082793182.Spec : Prop :=
  ∀ n, P927501160082793182.a n = A171088 n

end A171088

/-! ## A171088.P15551292215125092895

`A267182(3-(a(n-1)-n))` with `a(0)=1`
-/

namespace A171088.P15551292215125092895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267182 (3 - (a (n - 1) - (n : ℤ))).toNat

end

end A171088.P15551292215125092895

namespace A171088

/-- `A267182(3-(a(n-1)-n))` -/
def P15551292215125092895.Spec : Prop :=
  ∀ n, P15551292215125092895.a n = A171088 n

end A171088

/-! ## A171088.P16790803056101533917

`A179819(n+1)%A004768(n)`
-/

namespace A171088.P16790803056101533917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179819 (n + 1)) (A004768 n)

end

end A171088.P16790803056101533917

namespace A171088

/-- `A179819(n+1)%A004768(n)` -/
def P16790803056101533917.Spec : Prop :=
  ∀ n, P16790803056101533917.a n = A171088 n

end A171088

/-!
# A171089: a(n) = 2*(Lucas(n)^2 - (-1)^n).

The programs for A171089, the canonical program `A171089.P16132108036230242751` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171089 has offset 0).

The definition of A171089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(A000032(n)²-(-1)^n)` (program `A171089.P16132108036230242751`, by `A171089.P16132108036230242751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171089.P4910551910488427660

`ogf((6-8x-4x^2)/(1-2x-2x^2+x^3))`
-/

namespace A171089.P4910551910488427660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -8, -4] [1, -2, -2, 1] n

end

end A171089.P4910551910488427660

namespace A171089

/-- `ogf((6-8x-4x^2)/(1-2x-2x^2+x^3))` -/
def P4910551910488427660.Spec : Prop :=
  ∀ n, P4910551910488427660.a n = A171089 n

end A171089

/-! ## A171089.P12569666854803172387

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=6, a(1)=4, a(2)=16`
-/

namespace A171089.P12569666854803172387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 4, 16] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A171089.P12569666854803172387

namespace A171089

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P12569666854803172387.Spec : Prop :=
  ∀ n, P12569666854803172387.a n = A171089 n

end A171089

/-! ## A171089.P1724522339224380693

`2*A047946(n)`
-/

namespace A171089.P1724522339224380693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047946 n

end

end A171089.P1724522339224380693

namespace A171089

/-- `2*A047946(n)` -/
def P1724522339224380693.Spec : Prop :=
  ∀ n, P1724522339224380693.a n = A171089 n

end A171089

/-! ## A171089.P16132108036230242751

`2*(A000032(n)²-(-1)^n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171089

/-- `2*(A000032(n)²-(-1)^n)` -/
def P16132108036230242751.Spec : Prop :=
  ∀ n, P16132108036230242751.a n = A171089 n

theorem P16132108036230242751.correct : P16132108036230242751.Spec := by
  intro n
  simp only [A171089]

end A171089

/-! ## A171089.P6823507090098818732

`2^(1-n)*((-2)^n+(3-sqrt(5))^n+(3+sqrt(5))^n)`
-/

namespace A171089.P6823507090098818732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (1 - (n : ℤ) : ℤ) : ℝ) * (((-2) ^ n : ℝ) + (3 - Real.sqrt (5 : ℝ)) ^ n + (3 + Real.sqrt (5 : ℝ)) ^ n)

end

end A171089.P6823507090098818732

namespace A171089

/-- `2^(1-n)*((-2)^n+(3-sqrt(5))^n+(3+sqrt(5))^n)` -/
def P6823507090098818732.Spec : Prop :=
  ∀ n, P6823507090098818732.a n = (A171089 n : ℝ)

end A171089

/-! ## A171089.P11639176342353210478

`abs(2*(1-A075150(n)))`
-/

namespace A171089.P11639176342353210478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - A075150 n)|

end

end A171089.P11639176342353210478

namespace A171089

/-- `abs(2*(1-A075150(n)))` -/
def P11639176342353210478.Spec : Prop :=
  ∀ n, P11639176342353210478.a n = A171089 n

end A171089

/-! ## A171089.P16679363830701086269

`A005248(n)+A001254(n)`
-/

namespace A171089.P16679363830701086269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + A001254 n

end

end A171089.P16679363830701086269

namespace A171089

/-- `A005248(n)+A001254(n)` -/
def P16679363830701086269.Spec : Prop :=
  ∀ n, P16679363830701086269.a n = A171089 n

end A171089

/-! ## A171089.P17696097985370103840

`A189316(n)+A033999(n)`
-/

namespace A171089.P17696097985370103840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189316 n + A033999 n

end

end A171089.P17696097985370103840

namespace A171089

/-- `A189316(n)+A033999(n)` -/
def P17696097985370103840.Spec : Prop :=
  ∀ n, P17696097985370103840.a n = A171089 n

end A171089

/-! ## A171089.P15525541728843511327

`A005248(n)+A000032(n)²`
-/

namespace A171089.P15525541728843511327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + A000032 n ^ 2

end

end A171089.P15525541728843511327

namespace A171089

/-- `A005248(n)+A000032(n)²` -/
def P15525541728843511327.Spec : Prop :=
  ∀ n, P15525541728843511327.a n = A171089 n

end A171089

/-! ## A171089.P8108944707933697052

`A001254(n)+A000032(2*n)`
-/

namespace A171089.P8108944707933697052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n + A000032 (2 * n)

end

end A171089.P8108944707933697052

namespace A171089

/-- `A001254(n)+A000032(2*n)` -/
def P8108944707933697052.Spec : Prop :=
  ∀ n, P8108944707933697052.a n = A171089 n

end A171089

/-! ## A171089.P12595345044483863205

`A000032(n)²+A005592(n)+1`
-/

namespace A171089.P12595345044483863205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 + (A005592 n + 1)

end

end A171089.P12595345044483863205

namespace A171089

/-- `A000032(n)²+A005592(n)+1` -/
def P12595345044483863205.Spec : Prop :=
  ∀ n, P12595345044483863205.a n = A171089 n

end A171089

/-! ## A171089.P9846582718679373567

`A000032(n)²+A004146(n)+2`
-/

namespace A171089.P9846582718679373567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 + (A004146 n + 2)

end

end A171089.P9846582718679373567

namespace A171089

/-- `A000032(n)²+A004146(n)+2` -/
def P9846582718679373567.Spec : Prop :=
  ∀ n, P9846582718679373567.a n = A171089 n

end A171089

/-! ## A171089.P17755158040542001997

`A000032(2*n)+A000032(n)²`
-/

namespace A171089.P17755158040542001997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) + A000032 n ^ 2

end

end A171089.P17755158040542001997

namespace A171089

/-- `A000032(2*n)+A000032(n)²` -/
def P17755158040542001997.Spec : Prop :=
  ∀ n, P17755158040542001997.a n = A171089 n

end A171089

/-! ## A171089.P11239289794104643195

`A061084(2*n+1)+A001254(n)`
-/

namespace A171089.P11239289794104643195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n + 1) + A001254 n

end

end A171089.P11239289794104643195

namespace A171089

/-- `A061084(2*n+1)+A001254(n)` -/
def P11239289794104643195.Spec : Prop :=
  ∀ n, P11239289794104643195.a n = A171089 n

end A171089

/-! ## A171089.P18260842219854748197

`A001638(2*n)+A000032(2*n)`
-/

namespace A171089.P18260842219854748197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (2 * n) + A000032 (2 * n)

end

end A171089.P18260842219854748197

namespace A171089

/-- `A001638(2*n)+A000032(2*n)` -/
def P18260842219854748197.Spec : Prop :=
  ∀ n, P18260842219854748197.a n = A171089 n

end A171089

/-! ## A171089.P10656777261854808558

`round(ϕ^A004277(n))+A000032(n)²`
-/

namespace A171089.P10656777261854808558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (A004277 n : ℤ)) + A000032 n ^ 2

end

end A171089.P10656777261854808558

namespace A171089

/-- `round(ϕ^A004277(n))+A000032(n)²` -/
def P10656777261854808558.Spec : Prop :=
  ∀ n, P10656777261854808558.a n = A171089 n

end A171089

/-! ## A171089.P12997179991673201422

`A005247(2*n)+A061084(n+1)²`
-/

namespace A171089.P12997179991673201422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n) + A061084 (n + 1) ^ 2

end

end A171089.P12997179991673201422

namespace A171089

/-- `A005247(2*n)+A061084(n+1)²` -/
def P12997179991673201422.Spec : Prop :=
  ∀ n, P12997179991673201422.a n = A171089 n

end A171089

/-! ## A171089.P11089043068873659058

`A001519(n+1)+A001519(n)+A001254(n)`
-/

namespace A171089.P11089043068873659058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A001519 n + A001254 n)

end

end A171089.P11089043068873659058

namespace A171089

/-- `A001519(n+1)+A001519(n)+A001254(n)` -/
def P11089043068873659058.Spec : Prop :=
  ∀ n, P11089043068873659058.a n = A171089 n

end A171089

/-! ## A171089.P9951460255624452209

`A005248(n)+A061084(n+1)*A061084(n+1)`
-/

namespace A171089.P9951460255624452209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + A061084 (n + 1) * A061084 (n + 1)

end

end A171089.P9951460255624452209

namespace A171089

/-- `A005248(n)+A061084(n+1)*A061084(n+1)` -/
def P9951460255624452209.Spec : Prop :=
  ∀ n, P9951460255624452209.a n = A171089 n

end A171089

/-!
# A171092: Smallest prime factor of smaller of amicable pair.

The programs for A171092, there is no canonical definition to state claims against.
-/

/-! ## A171092.P3675463841935781845

`A265757(1+n)+2`
-/

namespace A171092.P3675463841935781845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265757 (1 + n) + 2

end

end A171092.P3675463841935781845

/-! ## A171092.P9288630835398630287

`gcd(6, A002025(1+n))`
-/

namespace A171092.P9288630835398630287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A002025 (1 + n))

end

end A171092.P9288630835398630287

/-! ## A171092.P5197728715169842616

`A002025(n+1)%2+2`
-/

namespace A171092.P5197728715169842616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002025 (n + 1)) 2 + 2

end

end A171092.P5197728715169842616

/-! ## A171092.P12786799561016451141

`A002046(1+n)%2+2`
-/

namespace A171092.P12786799561016451141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002046 (1 + n)) 2 + 2

end

end A171092.P12786799561016451141

/-! ## A171092.P11710214743048469912

`and(1, A002046(n+1))+2`
-/

namespace A171092.P11710214743048469912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002046 (n + 1)) + 2

end

end A171092.P11710214743048469912

/-! ## A171092.P14506280082796056328

`A020639(gcd(A002046(n+1), A033431(3*(n+1))))`
-/

namespace A171092.P14506280082796056328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A002046 (n + 1)) (A033431 (3 * (n + 1))))

end

end A171092.P14506280082796056328

/-! ## A171092.P5244124505770994217

`gcd(A061469(n+1), A090815(n+1))`
-/

namespace A171092.P5244124505770994217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061469 (n + 1)) (A090815 (n + 1))

end

end A171092.P5244124505770994217

/-! ## A171092.P12759675014541465962

`gcd(A105550(n+1), A180202(n+1))`
-/

namespace A171092.P12759675014541465962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105550 (n + 1)) (A180202 (n + 1))

end

end A171092.P12759675014541465962

/-! ## A171092.P7029802169941174949

`A020639(A061469(n+1))`
-/

namespace A171092.P7029802169941174949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A061469 (n + 1)).toNat

end

end A171092.P7029802169941174949

/-! ## A171092.P12115306798035574987

`A010693(A061469(n+1))`
-/

namespace A171092.P12115306798035574987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A061469 (n + 1)).toNat

end

end A171092.P12115306798035574987

/-! ## A171092.P2755906027813507773

`A092067(A061469(n+1)-1)`
-/

namespace A171092.P2755906027813507773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (A061469 (n + 1) - 1).toNat

end

end A171092.P2755906027813507773

/-! ## A171092.P18059886001867621254

`gcd(A050945(n+1), A061469(n+1))`
-/

namespace A171092.P18059886001867621254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050945 (n + 1)) (A061469 (n + 1))

end

end A171092.P18059886001867621254

/-!
# A171096: Solutions to the equation M(n) = -1 (M = Mertens's function A002321).

The programs for A171096, the canonical program `A171096.P5276553587431167090` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171096 has offset 1).

The definition of A171096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171096.P5276553587431167090

`eq[0, A008683(n)+a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171096

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P5276553587431167090.Spec : Prop :=
  ∀ n, (P5276553587431167090.a n : ℤ) = A171096 (n + 1)

theorem P5276553587431167090.correct : P5276553587431167090.Spec := by
  intro n
  simp only [A171096, Nat.add_sub_cancel]

end A171096

/-! ## A171096.P13048861945256632992

`eq[1, a(n-1)-A008683(2*n-n)]` with `a(0)=0`
-/

namespace A171096.P13048861945256632992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - A008683 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171096.P13048861945256632992

namespace A171096

/-- `eq[1, a(n-1)-A008683(2*n-n)]` -/
def P13048861945256632992.Spec : Prop :=
  ∀ n, (P13048861945256632992.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P8049964257464732294

`a(n-1)+A081222(a(n-1)+1)+1` with `a(0)=3`
-/

namespace A171096.P8049964257464732294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A081222 (a (n - 1) + 1).toNat + 1)

end

end A171096.P8049964257464732294

namespace A171096

/-- `a(n-1)+A081222(a(n-1)+1)+1` -/
def P8049964257464732294.Spec : Prop :=
  ∀ n, P8049964257464732294.a n = A171096 (n + 1)

end A171096

/-! ## A171096.P8142105046265043587

`eq[1, -A002321(n+1)]+1`
-/

namespace A171096.P8142105046265043587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171096.P8142105046265043587

namespace A171096

/-- `eq[1, -A002321(n+1)]+1` -/
def P8142105046265043587.Spec : Prop :=
  ∀ n, (P8142105046265043587.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P4891181878424541060

`eq[0, ∑[A008683(n+1)]+1]+1`
-/

namespace A171096.P4891181878424541060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171096.P4891181878424541060

namespace A171096

/-- `eq[0, ∑[A008683(n+1)]+1]+1` -/
def P4891181878424541060.Spec : Prop :=
  ∀ n, (P4891181878424541060.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P10857091608586631078

`eq[4, A162943(A028310(n))]`
-/

namespace A171096.P10857091608586631078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171096.P10857091608586631078

namespace A171096

/-- `eq[4, A162943(A028310(n))]` -/
def P10857091608586631078.Spec : Prop :=
  ∀ n, (P10857091608586631078.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P16129228426746073837

`eq[4, A162943(A000007(n)+n)]`
-/

namespace A171096.P16129228426746073837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171096.P16129228426746073837

namespace A171096

/-- `eq[4, A162943(A000007(n)+n)]` -/
def P16129228426746073837.Spec : Prop :=
  ∀ n, (P16129228426746073837.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P14613946464239978491

`A020725(eq[1, A002321(n+1)+2])`
-/

namespace A171096.P14613946464239978491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171096.P14613946464239978491

namespace A171096

/-- `A020725(eq[1, A002321(n+1)+2])` -/
def P14613946464239978491.Spec : Prop :=
  ∀ n, P14613946464239978491.a n = A171096 (n + 1)

end A171096

/-! ## A171096.P11878039355680486917

`A065475(eq[1, A002321(n+1)+2])`
-/

namespace A171096.P11878039355680486917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171096.P11878039355680486917

namespace A171096

/-- `A065475(eq[1, A002321(n+1)+2])` -/
def P11878039355680486917.Spec : Prop :=
  ∀ n, P11878039355680486917.a n = A171096 (n + 1)

end A171096

/-! ## A171096.P12310284892617061131

`eq[A002321(n+1)+1, A008683(n+1)]`
-/

namespace A171096.P12310284892617061131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P12310284892617061131

namespace A171096

/-- `eq[A002321(n+1)+1, A008683(n+1)]` -/
def P12310284892617061131.Spec : Prop :=
  ∀ n, (P12310284892617061131.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P5689784960976994791

`eq[A002321(n+1)+2, A007423(n+1)]`
-/

namespace A171096.P5689784960976994791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P5689784960976994791

namespace A171096

/-- `eq[A002321(n+1)+2, A007423(n+1)]` -/
def P5689784960976994791.Spec : Prop :=
  ∀ n, (P5689784960976994791.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P6066270465391431758

`eq[A002321(n+1)+2, abs(A076544(n+1))]`
-/

namespace A171096.P6066270465391431758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P6066270465391431758

namespace A171096

/-- `eq[A002321(n+1)+2, abs(A076544(n+1))]` -/
def P6066270465391431758.Spec : Prop :=
  ∀ n, (P6066270465391431758.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P2481698119692572388

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=3`
-/

namespace A171096.P2481698119692572388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P2481698119692572388

namespace A171096

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P2481698119692572388.Spec : Prop :=
  ∀ n, (P2481698119692572388.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P8949633096489160033

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=4`
-/

namespace A171096.P8949633096489160033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P8949633096489160033

namespace A171096

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P8949633096489160033.Spec : Prop :=
  ∀ n, (P8949633096489160033.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P12681387782517598079

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=5`
-/

namespace A171096.P12681387782517598079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P12681387782517598079

namespace A171096

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P12681387782517598079.Spec : Prop :=
  ∀ n, (P12681387782517598079.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P3997596126865821637

`eq[∑[A162512(n+1)%2]+1, A162512(n+1)%2]`
-/

namespace A171096.P3997596126865821637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A171096.P3997596126865821637

namespace A171096

/-- `eq[∑[A162512(n+1)%2]+1, A162512(n+1)%2]` -/
def P3997596126865821637.Spec : Prop :=
  ∀ n, (P3997596126865821637.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P12707923085212558367

`eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` with `a(0)=2`
-/

namespace A171096.P12707923085212558367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P12707923085212558367

namespace A171096

/-- `eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` -/
def P12707923085212558367.Spec : Prop :=
  ∀ n, (P12707923085212558367.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P7519903000799966335

`eq[A076369(n+1)-n-1, a(n-1)-A157657(n+1)]` with `a(0)=2`
-/

namespace A171096.P7519903000799966335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - A157657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171096.P7519903000799966335

namespace A171096

/-- `eq[A076369(n+1)-n-1, a(n-1)-A157657(n+1)]` -/
def P7519903000799966335.Spec : Prop :=
  ∀ n, (P7519903000799966335.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P17120866455909399829

`eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` with `a(0)=2`
-/

namespace A171096.P17120866455909399829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A171096.P17120866455909399829

namespace A171096

/-- `eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` -/
def P17120866455909399829.Spec : Prop :=
  ∀ n, (P17120866455909399829.a n : ℤ) = A171096 (n + 1)

end A171096

/-! ## A171096.P14792545596307060705

`eq[2, A057427(n)-A002321(A028310(n))]`
-/

namespace A171096.P14792545596307060705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171096.P14792545596307060705

namespace A171096

/-- `eq[2, A057427(n)-A002321(A028310(n))]` -/
def P14792545596307060705.Spec : Prop :=
  ∀ n, (P14792545596307060705.a n : ℤ) = A171096 (n + 1)

end A171096

/-!
# A171097: Solutions to the equation M(n) = -2 (M = Mertens's function A002321).

The programs for A171097, the canonical program `A171097.P12779293416577231278` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171097 has offset 1).

The definition of A171097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171097.P12779293416577231278

`eq[0, A008683(n)+a(n-1)]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171097

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P12779293416577231278.Spec : Prop :=
  ∀ n, (P12779293416577231278.a n : ℤ) = A171097 (n + 1)

theorem P12779293416577231278.correct : P12779293416577231278.Spec := by
  intro n
  simp only [A171097, Nat.add_sub_cancel]

end A171097

/-! ## A171097.P7404902863841199335

`eq[3, a(n-1)-A008683(2*n-n)]` with `a(0)=1`
-/

namespace A171097.P7404902863841199335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A008683 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171097.P7404902863841199335

namespace A171097

/-- `eq[3, a(n-1)-A008683(2*n-n)]` -/
def P7404902863841199335.Spec : Prop :=
  ∀ n, (P7404902863841199335.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P17589578749062156480

`eq[-2, A002321(n+1)]+1`
-/

namespace A171097.P17589578749062156480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171097.P17589578749062156480

namespace A171097

/-- `eq[-2, A002321(n+1)]+1` -/
def P17589578749062156480.Spec : Prop :=
  ∀ n, (P17589578749062156480.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P4475901604251690322

`eq[0, ∑[A008683(n+1)]+2]+1`
-/

namespace A171097.P4475901604251690322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171097.P4475901604251690322

namespace A171097

/-- `eq[0, ∑[A008683(n+1)]+2]+1` -/
def P4475901604251690322.Spec : Prop :=
  ∀ n, (P4475901604251690322.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P4138120770823299988

`eq[-2, A002321(A028310(n))]`
-/

namespace A171097.P4138120770823299988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P4138120770823299988

namespace A171097

/-- `eq[-2, A002321(A028310(n))]` -/
def P4138120770823299988.Spec : Prop :=
  ∀ n, (P4138120770823299988.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P10852274929141264730

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=4`
-/

namespace A171097.P10852274929141264730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P10852274929141264730

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P10852274929141264730.Spec : Prop :=
  ∀ n, (P10852274929141264730.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P10278041230572662651

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=5`
-/

namespace A171097.P10278041230572662651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P10278041230572662651

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P10278041230572662651.Spec : Prop :=
  ∀ n, (P10278041230572662651.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P16225529938746983251

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=6`
-/

namespace A171097.P16225529938746983251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P16225529938746983251

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P16225529938746983251.Spec : Prop :=
  ∀ n, (P16225529938746983251.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P3667592842635423535

`eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` with `a(0)=3`
-/

namespace A171097.P3667592842635423535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P3667592842635423535

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` -/
def P3667592842635423535.Spec : Prop :=
  ∀ n, (P3667592842635423535.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P11362708558145807976

`eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` with `a(0)=3`
-/

namespace A171097.P11362708558145807976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P11362708558145807976

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` -/
def P11362708558145807976.Spec : Prop :=
  ∀ n, (P11362708558145807976.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P11246891826146058155

`eq[A076369(n+1)-n-1, a(n-1)-A157657(n+1)]` with `a(0)=3`
-/

namespace A171097.P11246891826146058155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - A157657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P11246891826146058155

namespace A171097

/-- `eq[A076369(n+1)-n-1, a(n-1)-A157657(n+1)]` -/
def P11246891826146058155.Spec : Prop :=
  ∀ n, (P11246891826146058155.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P12308907859095457351

`eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` with `a(0)=3`
-/

namespace A171097.P12308907859095457351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A171097.P12308907859095457351

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` -/
def P12308907859095457351.Spec : Prop :=
  ∀ n, (P12308907859095457351.a n : ℤ) = A171097 (n + 1)

end A171097

/-! ## A171097.P12704934257879507033

`eq[a(n-1)-A157657(n+1), A181435(n+1)]` with `a(0)=3`
-/

namespace A171097.P12704934257879507033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171097.P12704934257879507033

namespace A171097

/-- `eq[a(n-1)-A157657(n+1), A181435(n+1)]` -/
def P12704934257879507033.Spec : Prop :=
  ∀ n, (P12704934257879507033.a n : ℤ) = A171097 (n + 1)

end A171097

/-!
# A171098: Solutions to the equation M(n) = -3 (M = Mertens's function A002321).

The programs for A171098, the canonical program `A171098.P4885253993403503157` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171098 has offset 1).

The definition of A171098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171098.P4885253993403503157

`eq[0, A008683(n)+a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A171098

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P4885253993403503157.Spec : Prop :=
  ∀ n, (P4885253993403503157.a n : ℤ) = A171098 (n + 1)

theorem P4885253993403503157.correct : P4885253993403503157.Spec := by
  intro n
  simp only [A171098, Nat.add_sub_cancel]

end A171098

/-! ## A171098.P4389204625485249001

`eq[4, a(n-1)-A008683(gcd(n, 2*n))]` with `a(0)=1`
-/

namespace A171098.P4389204625485249001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A008683 (Nat.gcd n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171098.P4389204625485249001

namespace A171098

/-- `eq[4, a(n-1)-A008683(gcd(n, 2*n))]` -/
def P4389204625485249001.Spec : Prop :=
  ∀ n, (P4389204625485249001.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P15050846776011025875

`eq[3, -A002321(n+1)]+1`
-/

namespace A171098.P15050846776011025875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171098.P15050846776011025875

namespace A171098

/-- `eq[3, -A002321(n+1)]+1` -/
def P15050846776011025875.Spec : Prop :=
  ∀ n, (P15050846776011025875.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P8972618095517161805

`eq[0, A002321(n+2)+3]+2`
-/

namespace A171098.P8972618095517161805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A171098.P8972618095517161805

namespace A171098

/-- `eq[0, A002321(n+2)+3]+2` -/
def P8972618095517161805.Spec : Prop :=
  ∀ n, (P8972618095517161805.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P14366150060062031278

`eq[∑[A008683(n+1)]+3, A008683(n+1)]`
-/

namespace A171098.P14366150060062031278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A171098.P14366150060062031278

namespace A171098

/-- `eq[∑[A008683(n+1)]+3, A008683(n+1)]` -/
def P14366150060062031278.Spec : Prop :=
  ∀ n, (P14366150060062031278.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P8505983128299785213

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=5`
-/

namespace A171098.P8505983128299785213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P8505983128299785213

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P8505983128299785213.Spec : Prop :=
  ∀ n, (P8505983128299785213.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P7828457306910595685

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=6`
-/

namespace A171098.P7828457306910595685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P7828457306910595685

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P7828457306910595685.Spec : Prop :=
  ∀ n, (P7828457306910595685.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P6680087044272482595

`eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` with `a(0)=4`
-/

namespace A171098.P6680087044272482595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P6680087044272482595

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` -/
def P6680087044272482595.Spec : Prop :=
  ∀ n, (P6680087044272482595.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P2688458199824174096

`eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` with `a(0)=4`
-/

namespace A171098.P2688458199824174096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P2688458199824174096

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` -/
def P2688458199824174096.Spec : Prop :=
  ∀ n, (P2688458199824174096.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P8159924895019740565

`eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` with `a(0)=4`
-/

namespace A171098.P8159924895019740565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A171098.P8159924895019740565

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` -/
def P8159924895019740565.Spec : Prop :=
  ∀ n, (P8159924895019740565.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P9220669270132961626

`eq[a(n-1)-A157657(n+1), A181434(n+1)]` with `a(0)=4`
-/

namespace A171098.P9220669270132961626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P9220669270132961626

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A181434(n+1)]` -/
def P9220669270132961626.Spec : Prop :=
  ∀ n, (P9220669270132961626.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P3299053820663871245

`eq[a(n-1)-A157657(n+1), A181435(n+1)]` with `a(0)=4`
-/

namespace A171098.P3299053820663871245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171098.P3299053820663871245

namespace A171098

/-- `eq[a(n-1)-A157657(n+1), A181435(n+1)]` -/
def P3299053820663871245.Spec : Prop :=
  ∀ n, (P3299053820663871245.a n : ℤ) = A171098 (n + 1)

end A171098

/-! ## A171098.P12549476863339620849

`eq[3, -A002321(A233583(n+1))]`
-/

namespace A171098.P12549476863339620849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002321 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171098.P12549476863339620849

namespace A171098

/-- `eq[3, -A002321(A233583(n+1))]` -/
def P12549476863339620849.Spec : Prop :=
  ∀ n, (P12549476863339620849.a n : ℤ) = A171098 (n + 1)

end A171098

/-!
# A171099: a(n) = number of solutions (x,y) (with 0 <= x <= y) to x*(x+1)/2 + y*(y+1)/2 = n!.

The programs for A171099, there is no canonical definition to state claims against.
-/

/-! ## A171099.P11636141328549109671

`(A109129(A306286(n))+1)%A089293(A001175(2*n+5))`
-/

namespace A171099.P11636141328549109671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109129 (A306286 n).toNat + 1) (A089293 (A001175 (2 * n + 5)).toNat)

end

end A171099.P11636141328549109671

/-! ## A171099.P13319738287210647796

`(A326032(A325401(2*n))+1)%A089293(A001175(2*n+5))`
-/

namespace A171099.P13319738287210647796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326032 (A325401 (2 * n)).toNat + 1) (A089293 (A001175 (2 * n + 5)).toNat)

end

end A171099.P13319738287210647796

/-! ## A171099.P6803453127615844492

`A374741(A050025(n+1))%3`
-/

namespace A171099.P6803453127615844492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374741 (A050025 (n + 1)).toNat) 3

end

end A171099.P6803453127615844492

/-! ## A171099.P7427666794430655379

`A334504(A207024(n+1))%3`
-/

namespace A171099.P7427666794430655379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334504 (A207024 (n + 1)).toNat) 3

end

end A171099.P7427666794430655379

/-! ## A171099.P2073287543483141592

`A334504(A209650(n+1))%3`
-/

namespace A171099.P2073287543483141592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334504 (A209650 (n + 1)).toNat) 3

end

end A171099.P2073287543483141592

