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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

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

/-! ## A171000.P15100040450705295090

`A185544(A067139(n+1)+A067139(n+1))`
-/

namespace A171000.P15100040450705295090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A067139 (n + 1) + A067139 (n + 1)).toNat

end

end A171000.P15100040450705295090

/-! ## A171000.P3833897489665488559

`A007088(eq[A057427(n), A066376(n+1)]+1)`
-/

namespace A171000.P3833897489665488559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A171000.P3833897489665488559

/-! ## A171000.P17018388903629679006

`A185544(2*(eq[A057427(n), A066376(n+1)]+1))`
-/

namespace A171000.P17018388903629679006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1))

end

end A171000.P17018388903629679006

/-! ## A171000.P3053919161542085406

`A007088(record[(n+1)/A066376(n+1)^A338732(n+1)])`
-/

namespace A171000.P3053919161542085406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066376 (n + 1) : ℚ) ^ (A338732 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A171000.P3053919161542085406

/-! ## A171000.P1436666947353536073

`A185544(2*record[(n+1)/A066376(n+1)^A338732(n+1)])`
-/

namespace A171000.P1436666947353536073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066376 (n + 1) : ℚ) ^ (A338732 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A171000.P1436666947353536073

/-!
# A171001: Binomial(n-k,k)^2 where k = ceiling(n/4).

The programs for A171001, the canonical program `A171001.P15890735463834651018` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171001 has offset 0).

The definition of A171001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171001.P15890735463834651018

`C(A057353(n), ceil(n/4))²`

The canonical program, it is in `Seq.B001.C007`.
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
# A171003: A lower bound for A094837.

The programs for A171003, there is no canonical definition to state claims against.
-/

/-! ## A171003.P7155144722769890533

`A094291(A090106(n+1))`
-/

namespace A171003.P7155144722769890533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094291 (A090106 (n + 1)).toNat

end

end A171003.P7155144722769890533

/-! ## A171003.P3367612927381522136

`A094291(A135383(n+1)+1)`
-/

namespace A171003.P3367612927381522136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094291 (A135383 (n + 1) + 1).toNat

end

end A171003.P3367612927381522136

/-! ## A171003.P12652731648314133296

`A094291(n+1)%A094291(n+4)`
-/

namespace A171003.P12652731648314133296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094291 (n + 1)) (A094291 (n + 4))

end

end A171003.P12652731648314133296

/-! ## A171003.P17202912436729394256

`A094291(val(A029790(n+1)+1, 13)!+n)`
-/

namespace A171003.P17202912436729394256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094291 (Nat.factorial (SequenceMachineLib.valuation (A029790 (n + 1) + 1).toNat 13) + n)

end

end A171003.P17202912436729394256

/-! ## A171003.P46849128172578071

`A094291(n+1)^A163575(2^ceil(n/2))`
-/

namespace A171003.P46849128172578071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094291 (n + 1) : ℚ) ^ (A163575 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat : ℤ)

end

end A171003.P46849128172578071

/-!
# A171004: Numbers which are the lunar product of lunar primes in more than one way.

The programs for A171004, there is no canonical definition to state claims against.
-/

/-! ## A171004.P16601243536473247780

`A169977(A242474(n+1)+1)`
-/

namespace A171004.P16601243536473247780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169977 (A242474 (n + 1) + 1).toNat

end

end A171004.P16601243536473247780

/-! ## A171004.P7812615440802917089

`A169977(A351374(n+1)+1)`
-/

namespace A171004.P7812615440802917089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169977 (A351374 (n + 1) + 1).toNat

end

end A171004.P7812615440802917089

/-! ## A171004.P12547344646223867338

`A169977(n+2)%A239939(Δ[n²])`
-/

namespace A171004.P12547344646223867338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169977 (n + 2)) (A239939 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A171004.P12547344646223867338

/-! ## A171004.P12381064449092049140

`A169977(n+2)+and(1, A050549(n+1))`
-/

namespace A171004.P12381064449092049140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169977 (n + 2) + Int.land 1 (A050549 (n + 1))

end

end A171004.P12381064449092049140

/-! ## A171004.P12376540007341109043

`A169977(n+2)%A235174(A027907(n))`
-/

namespace A171004.P12376540007341109043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169977 (n + 2)) (A235174 (A027907 n).toNat)

end

end A171004.P12376540007341109043

/-!
# A171005: a(n) = (n+1)*(n-1)!/2.

The programs for A171005, the canonical program `A171005.P9645506390964445830` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171005 has offset 3).

The definition of A171005 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A171005.anchor (n : ℕ) : (A171005 (n + 3) : ℚ) = ((n + 4) * Nat.factorial (n + 2) : ℚ) / 2` in `Proof.A171.A171005`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171005.P9645506390964445830

`(n+4)*(n+2)!/2`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A171005.P10036405854713109085

`(n+3)*a(n-1)-a(n-1)/(n+3)` with `a(0)=4`
-/

namespace A171005.P10036405854713109085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (n + 3 : ℚ) * a (n - 1) - a (n - 1) / (n + 3 : ℚ)

end

end A171005.P10036405854713109085

namespace A171005

/-- `(n+3)*a(n-1)-a(n-1)/(n+3)` -/
def P10036405854713109085.Spec : Prop :=
  ∀ n, P10036405854713109085.a n = (A171005 (n + 3) : ℚ)

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

/-! ## A171005.P268247538040649177

`abs(Δ[A105752(n+2)])`
-/

namespace A171005.P268247538040649177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171005.P268247538040649177

namespace A171005

/-- `abs(Δ[A105752(n+2)])` -/
def P268247538040649177.Spec : Prop :=
  ∀ n, P268247538040649177.a n = A171005 (n + 3)

end A171005

/-!
# A171008: Write the n-th prime in binary and change all 0's to 1's and all 1's to 0's.

The programs for A171008, the canonical program `A171008.P3211273678646596191` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171008 has offset 1).

The definition of A171008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171008.P1773118590492637436

`A256078(Δ[A007504(n)])`
-/

namespace A171008.P1773118590492637436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (f1 (n + 1) - f1 n).toNat

end

end A171008.P1773118590492637436

namespace A171008

/-- `A256078(Δ[A007504(n)])` -/
def P1773118590492637436.Spec : Prop :=
  ∀ n, P1773118590492637436.a n = A171008 (n + 1)

end A171008

/-! ## A171008.P3211273678646596191

`A256078(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171008

/-- `A256078(A000040(n+1))` -/
def P3211273678646596191.Spec : Prop :=
  ∀ n, P3211273678646596191.a n = A171008 (n + 1)

theorem P3211273678646596191.correct : P3211273678646596191.Spec := by
  intro n
  simp only [A171008, Nat.add_sub_cancel]

end A171008

/-! ## A171008.P1918501309814553038

`A256078(A171577(n+1))`
-/

namespace A171008.P1918501309814553038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A171577 (n + 1)).toNat

end

end A171008.P1918501309814553038

namespace A171008

/-- `A256078(A171577(n+1))` -/
def P1918501309814553038.Spec : Prop :=
  ∀ n, P1918501309814553038.a n = A171008 (n + 1)

end A171008

/-! ## A171008.P9009536603737894814

`A256078(A008578(n+2))`
-/

namespace A171008.P9009536603737894814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A008578 (n + 2)).toNat

end

end A171008.P9009536603737894814

namespace A171008

/-- `A256078(A008578(n+2))` -/
def P9009536603737894814.Spec : Prop :=
  ∀ n, P9009536603737894814.a n = A171008 (n + 1)

end A171008

/-! ## A171008.P3071789722417291504

`A256078(A182986(n+2))`
-/

namespace A171008.P3071789722417291504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A182986 (n + 2)).toNat

end

end A171008.P3071789722417291504

namespace A171008

/-- `A256078(A182986(n+2))` -/
def P3071789722417291504.Spec : Prop :=
  ∀ n, P3071789722417291504.a n = A171008 (n + 1)

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

/-! ## A171008.P11015160556015302705

`A256078(A160656(n+1))`
-/

namespace A171008.P11015160556015302705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A160656 (n + 1)).toNat

end

end A171008.P11015160556015302705

namespace A171008

/-- `A256078(A160656(n+1))` -/
def P11015160556015302705.Spec : Prop :=
  ∀ n, P11015160556015302705.a n = A171008 (n + 1)

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

/-! ## A171013.P5679567301898611427

`A222210(record[A051698(n)])`
-/

namespace A171013.P5679567301898611427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P5679567301898611427

/-! ## A171013.P16376072901006898649

`A222210(A008578(n+2))`
-/

namespace A171013.P16376072901006898649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A008578 (n + 2)).toNat

end

end A171013.P16376072901006898649

/-! ## A171013.P18386651155050592277

`A222210(A182986(n+2))`
-/

namespace A171013.P18386651155050592277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A182986 (n + 2)).toNat

end

end A171013.P18386651155050592277

/-! ## A171013.P8909525559574972707

`A222210(eq[1, A032741(n)])`
-/

namespace A171013.P8909525559574972707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171013.P8909525559574972707

/-! ## A171013.P15809778815965216624

`A222210(eq[n, A062584(n)])`
-/

namespace A171013.P15809778815965216624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171013.P15809778815965216624

/-! ## A171013.P2928252444473792382

`A222210(record[A039649(n+1)])`
-/

namespace A171013.P2928252444473792382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P2928252444473792382

/-! ## A171013.P10347544736951903840

`A222210(record[A111089(n+1)])`
-/

namespace A171013.P10347544736951903840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P10347544736951903840

/-! ## A171013.P4922205517189087997

`A222210(record[A006530(n+2)])`
-/

namespace A171013.P4922205517189087997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P4922205517189087997

/-! ## A171013.P790462941749994964

`A222210(record[A014963(n+2)])`
-/

namespace A171013.P790462941749994964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P790462941749994964

/-! ## A171013.P14252766720560794300

`A222210(record[A020639(n+2)])`
-/

namespace A171013.P14252766720560794300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P14252766720560794300

/-! ## A171013.P17774097383086959570

`A222210(A006093(n+1)+1)`
-/

namespace A171013.P17774097383086959570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A006093 (n + 1) + 1).toNat

end

end A171013.P17774097383086959570

/-! ## A171013.P16781222143646223078

`A222210(eq[n, A038700(n+1)])`
-/

namespace A171013.P16781222143646223078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171013.P16781222143646223078

/-! ## A171013.P14581960527341319930

`A222210(p?[record[A004151(n+1)]])`
-/

namespace A171013.P14581960527341319930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171013.P14581960527341319930

/-! ## A171013.P1797364026340208347

`A222210(record[A000010(n+1)+1])`
-/

namespace A171013.P1797364026340208347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171013.P1797364026340208347

/-! ## A171013.P3239438554173535788

`A222210(comp[A018252(n+1)-1]+1)`
-/

namespace A171013.P3239438554173535788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171013.P3239438554173535788

/-! ## A171013.P7682545028865505972

`A222210(A035043(A171015(n+1)))`
-/

namespace A171013.P7682545028865505972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A035043 (A171015 (n + 1)).toNat).toNat

end

end A171013.P7682545028865505972

/-! ## A171013.P1700722666268500545

`A222210(A035044(A171018(n+1)))`
-/

namespace A171013.P1700722666268500545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171013.P1700722666268500545

/-! ## A171013.P13900174993944515347

`A222210(A222221(A171020(n+1)))`
-/

namespace A171013.P13900174993944515347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A222221 (A171020 (n + 1)).toNat).toNat

end

end A171013.P13900174993944515347

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

/-! ## A171014.P15996692503329963772

`A222211(record[A051698(n)])`
-/

namespace A171014.P15996692503329963772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171014.P15996692503329963772

/-! ## A171014.P14471705157404111281

`A222211(A000040(n+1))`
-/

namespace A171014.P14471705157404111281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A000040 (n + 1)).toNat

end

end A171014.P14471705157404111281

/-! ## A171014.P14393294951973430194

`A222211(A008578(n+2))`
-/

namespace A171014.P14393294951973430194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A008578 (n + 2)).toNat

end

end A171014.P14393294951973430194

/-! ## A171014.P17564037387649032975

`A222211(A182986(n+2))`
-/

namespace A171014.P17564037387649032975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A182986 (n + 2)).toNat

end

end A171014.P17564037387649032975

/-! ## A171014.P819540458804163057

`A222211(eq[1, A003415(n)])`
-/

namespace A171014.P819540458804163057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171014.P819540458804163057

/-! ## A171014.P1220736514634422754

`A222211(record[A006530(n+2)])`
-/

namespace A171014.P1220736514634422754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171014.P1220736514634422754

/-! ## A171014.P7914738270004959594

`A222211(record[A014963(n+2)])`
-/

namespace A171014.P7914738270004959594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171014.P7914738270004959594

/-! ## A171014.P5492053604855679253

`A222211(record[A020639(n+2)])`
-/

namespace A171014.P5492053604855679253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171014.P5492053604855679253

/-! ## A171014.P943284459029636977

`A222211(eq[1, A281113(n+2)]+2)`
-/

namespace A171014.P943284459029636977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A171014.P943284459029636977

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

/-! ## A171014.P15003312504900779676

`A222211(A007504(n+1)-A007504(n))`
-/

namespace A171014.P15003312504900779676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A007504 (n + 1) - A007504 n).toNat

end

end A171014.P15003312504900779676

/-! ## A171014.P424975354812404935

`A222211(A035043(A035044(A035043(A175770(n+1)))))`
-/

namespace A171014.P424975354812404935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A035043 (A035044 (A035043 (A175770 (n + 1)).toNat).toNat).toNat).toNat

end

end A171014.P424975354812404935

/-! ## A171014.P1017624165933095209

`A222211(A223489(n+1)+A223488(n+1))`
-/

namespace A171014.P1017624165933095209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A171014.P1017624165933095209

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

/-! ## A171015.P12580514249694117002

`A035043(Δ[A007504(n)])`
-/

namespace A171015.P12580514249694117002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (n + 1) - f1 n).toNat

end

end A171015.P12580514249694117002

/-! ## A171015.P8877592656026487242

`A035043(record[A051698(n)])`
-/

namespace A171015.P8877592656026487242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171015.P8877592656026487242

/-! ## A171015.P13707908885304638144

`A035043(A000040(n+1))`
-/

namespace A171015.P13707908885304638144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A000040 (n + 1)).toNat

end

end A171015.P13707908885304638144

/-! ## A171015.P5412204731254629541

`A035043(A008578(n+2))`
-/

namespace A171015.P5412204731254629541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A008578 (n + 2)).toNat

end

end A171015.P5412204731254629541

/-! ## A171015.P13362845537375949380

`A035043(A182986(n+2))`
-/

namespace A171015.P13362845537375949380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A182986 (n + 2)).toNat

end

end A171015.P13362845537375949380

/-! ## A171015.P5703362813554558250

`A035043(eq[0, A051699(n)])`
-/

namespace A171015.P5703362813554558250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P5703362813554558250

/-! ## A171015.P16079436939160187739

`A035043(eq[1, A003415(n)])`
-/

namespace A171015.P16079436939160187739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P16079436939160187739

/-! ## A171015.P15000363830121522369

`A035043(eq[1, A032741(n)])`
-/

namespace A171015.P15000363830121522369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P15000363830121522369

/-! ## A171015.P8693378276449018204

`A035043(eq[n, A062584(n)])`
-/

namespace A171015.P8693378276449018204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P8693378276449018204

/-! ## A171015.P15303229044920445128

`A035043(eq[n, A064502(n)])`
-/

namespace A171015.P15303229044920445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P15303229044920445128

/-! ## A171015.P12709139663346896512

`A035043(record[A006530(n+2)])`
-/

namespace A171015.P12709139663346896512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171015.P12709139663346896512

/-! ## A171015.P4966588114939751710

`A035043(record[A014963(n+2)])`
-/

namespace A171015.P4966588114939751710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171015.P4966588114939751710

/-! ## A171015.P10121555425575412702

`A035043(record[A020639(n+2)])`
-/

namespace A171015.P10121555425575412702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171015.P10121555425575412702

/-! ## A171015.P3179231726255342061

`A035043(eq[n, A038700(n+1)])`
-/

namespace A171015.P3179231726255342061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P3179231726255342061

/-! ## A171015.P2970554193348592872

`A035043(eq[n, A057637(n+1)])`
-/

namespace A171015.P2970554193348592872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P2970554193348592872

/-! ## A171015.P14043184460194109798

`A035043(eq[n, A093868(n+1)])`
-/

namespace A171015.P14043184460194109798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171015.P14043184460194109798

/-! ## A171015.P9418459317039004421

`A035043(record[A000010(n+1)+1])`
-/

namespace A171015.P9418459317039004421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171015.P9418459317039004421

/-! ## A171015.P11072050956438340742

`A035043(A035044(A171018(n+1)))`
-/

namespace A171015.P11072050956438340742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171015.P11072050956438340742

/-! ## A171015.P6097214610812660838

`A035044(A035043(A175770(n+1)))`
-/

namespace A171015.P6097214610812660838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A035043 (A175770 (n + 1)).toNat).toNat

end

end A171015.P6097214610812660838

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

/-! ## A171016.P14807414443704977092

`A222212(record[A051698(n)])`
-/

namespace A171016.P14807414443704977092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171016.P14807414443704977092

/-! ## A171016.P4492738062324334299

`A222212(A000040(n+1))`
-/

namespace A171016.P4492738062324334299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A000040 (n + 1)).toNat

end

end A171016.P4492738062324334299

/-! ## A171016.P8587621427599207962

`A222212(A008578(n+2))`
-/

namespace A171016.P8587621427599207962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A008578 (n + 2)).toNat

end

end A171016.P8587621427599207962

/-! ## A171016.P3048432855489547382

`A222212(A182986(n+2))`
-/

namespace A171016.P3048432855489547382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A182986 (n + 2)).toNat

end

end A171016.P3048432855489547382

/-! ## A171016.P17707516683045044102

`A222212(eq[1, A032741(n)])`
-/

namespace A171016.P17707516683045044102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171016.P17707516683045044102

/-! ## A171016.P7862903604742463651

`A222212(record[A006530(n+2)])`
-/

namespace A171016.P7862903604742463651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171016.P7862903604742463651

/-! ## A171016.P2947209327734845694

`A222212(record[A014963(n+2)])`
-/

namespace A171016.P2947209327734845694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171016.P2947209327734845694

/-! ## A171016.P17472740149735632723

`A222212(record[A020639(n+2)])`
-/

namespace A171016.P17472740149735632723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171016.P17472740149735632723

/-! ## A171016.P17086669075579989835

`A222212(p?[record[A004151(n+1)]])`
-/

namespace A171016.P17086669075579989835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171016.P17086669075579989835

/-! ## A171016.P11790393881746586228

`A222212(A035044(A171018(n+1)))`
-/

namespace A171016.P11790393881746586228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171016.P11790393881746586228

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

/-! ## A171016.P15719604507093960432

`A222212(A007504(n+1)-A007504(n))`
-/

namespace A171016.P15719604507093960432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A007504 (n + 1) - A007504 n).toNat

end

end A171016.P15719604507093960432

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

/-! ## A171018.P13903137922251020098

`A035044(Δ[A007504(n)])`
-/

namespace A171018.P13903137922251020098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (n + 1) - f1 n).toNat

end

end A171018.P13903137922251020098

/-! ## A171018.P601624413484898507

`A035044(record[A051698(n)])`
-/

namespace A171018.P601624413484898507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171018.P601624413484898507

/-! ## A171018.P17119411052476925616

`A035044(A000040(n+1))`
-/

namespace A171018.P17119411052476925616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A000040 (n + 1)).toNat

end

end A171018.P17119411052476925616

/-! ## A171018.P2709583348675112614

`A035044(A008578(n+2))`
-/

namespace A171018.P2709583348675112614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A008578 (n + 2)).toNat

end

end A171018.P2709583348675112614

/-! ## A171018.P11661136065320986036

`A035044(A182986(n+2))`
-/

namespace A171018.P11661136065320986036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A182986 (n + 2)).toNat

end

end A171018.P11661136065320986036

/-! ## A171018.P11744335936950991433

`A035044(eq[0, A007920(n)])`
-/

namespace A171018.P11744335936950991433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P11744335936950991433

/-! ## A171018.P15711252231243509091

`A035044(eq[1, A003415(n)])`
-/

namespace A171018.P15711252231243509091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P15711252231243509091

/-! ## A171018.P15475234131336270881

`A035044(eq[1, A032741(n)])`
-/

namespace A171018.P15475234131336270881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P15475234131336270881

/-! ## A171018.P7619885536278614410

`A035044(eq[2, A005128(n)])`
-/

namespace A171018.P7619885536278614410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P7619885536278614410

/-! ## A171018.P13697489860081165249

`A035044(eq[n, A062584(n)])`
-/

namespace A171018.P13697489860081165249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P13697489860081165249

/-! ## A171018.P8501314695499664069

`A035044(record[A006530(n+2)])`
-/

namespace A171018.P8501314695499664069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171018.P8501314695499664069

/-! ## A171018.P5329318855487793658

`A035044(record[A014963(n+2)])`
-/

namespace A171018.P5329318855487793658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171018.P5329318855487793658

/-! ## A171018.P12086806836520843357

`A035044(record[A020639(n+2)])`
-/

namespace A171018.P12086806836520843357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171018.P12086806836520843357

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

/-! ## A171018.P6239847213339413103

`A035044(A007504(n+1)-A007504(n))`
-/

namespace A171018.P6239847213339413103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A007504 (n + 1) - A007504 n).toNat

end

end A171018.P6239847213339413103

/-! ## A171018.P17071249689531235769

`A035044(eq[2, A007012(n)])`
-/

namespace A171018.P17071249689531235769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171018.P17071249689531235769

/-!
# A171019: In the sequence of prime numbers, replace all the '4' digits with '0' and vice versa.

The programs for A171019, there is no canonical definition to state claims against.
-/

/-! ## A171019.P1157827975274462811

`A222213(A000040(n+1))`
-/

namespace A171019.P1157827975274462811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A000040 (n + 1)).toNat

end

end A171019.P1157827975274462811

/-! ## A171019.P9027703267341562930

`A222213(A008578(n+2))`
-/

namespace A171019.P9027703267341562930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A008578 (n + 2)).toNat

end

end A171019.P9027703267341562930

/-! ## A171019.P5256799908931733282

`A222213(A182986(n+2))`
-/

namespace A171019.P5256799908931733282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A182986 (n + 2)).toNat

end

end A171019.P5256799908931733282

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

/-! ## A171020.P4592993361359085082

`A222221(record[A051698(n)])`
-/

namespace A171020.P4592993361359085082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171020.P4592993361359085082

/-! ## A171020.P15028209922208802417

`A222221(A000040(n+1))`
-/

namespace A171020.P15028209922208802417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A000040 (n + 1)).toNat

end

end A171020.P15028209922208802417

/-! ## A171020.P7104509760845360971

`A222221(A008578(n+2))`
-/

namespace A171020.P7104509760845360971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A008578 (n + 2)).toNat

end

end A171020.P7104509760845360971

/-! ## A171020.P10505787442492213745

`A222221(A182986(n+2))`
-/

namespace A171020.P10505787442492213745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A182986 (n + 2)).toNat

end

end A171020.P10505787442492213745

/-! ## A171020.P8079456271820207818

`A222221(eq[1, A003415(n)])`
-/

namespace A171020.P8079456271820207818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171020.P8079456271820207818

/-! ## A171020.P3456612557229391782

`A222221(lt[n, A282462(n)])`
-/

namespace A171020.P3456612557229391782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A171020.P3456612557229391782

/-! ## A171020.P7436335205750354968

`A222221(record[A006530(n+2)])`
-/

namespace A171020.P7436335205750354968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171020.P7436335205750354968

/-! ## A171020.P1002620865053270390

`A222221(record[A014963(n+2)])`
-/

namespace A171020.P1002620865053270390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171020.P1002620865053270390

/-! ## A171020.P15717708114819530777

`A222221(record[A020639(n+2)])`
-/

namespace A171020.P15717708114819530777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171020.P15717708114819530777

/-! ## A171020.P13366077694950847102

`A222254(A222221(A171057(n+1)))`
-/

namespace A171020.P13366077694950847102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222221 (A171057 (n + 1)).toNat).toNat

end

end A171020.P13366077694950847102

/-! ## A171020.P4556237263635677234

`A222221(A007504(n+1)-A007504(n))`
-/

namespace A171020.P4556237263635677234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A007504 (n + 1) - A007504 n).toNat

end

end A171020.P4556237263635677234

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

/-! ## A171021.P2298632046477889858

`A222228(record[A051698(n)])`
-/

namespace A171021.P2298632046477889858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P2298632046477889858

/-! ## A171021.P744785120039129496

`A222228(A000040(n+1))`
-/

namespace A171021.P744785120039129496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A000040 (n + 1)).toNat

end

end A171021.P744785120039129496

/-! ## A171021.P12292338416985193235

`A222228(A008578(n+2))`
-/

namespace A171021.P12292338416985193235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A008578 (n + 2)).toNat

end

end A171021.P12292338416985193235

/-! ## A171021.P886157249688927199

`A222228(A182986(n+2))`
-/

namespace A171021.P886157249688927199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A182986 (n + 2)).toNat

end

end A171021.P886157249688927199

/-! ## A171021.P4391600080292925457

`A222228(eq[0, A007920(n)])`
-/

namespace A171021.P4391600080292925457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171021.P4391600080292925457

/-! ## A171021.P2479172363478790912

`A222228(eq[1, A003415(n)])`
-/

namespace A171021.P2479172363478790912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171021.P2479172363478790912

/-! ## A171021.P11846554906036902919

`A222228(eq[1, A032741(n)])`
-/

namespace A171021.P11846554906036902919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171021.P11846554906036902919

/-! ## A171021.P3223316820096813506

`A222228(abs(Δ[A022837(n)]))`
-/

namespace A171021.P3223316820096813506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 |f1 (n + 1) - f1 n|.toNat

end

end A171021.P3223316820096813506

/-! ## A171021.P13987672863852664768

`A222228(∑[A054541(n+1)])`
-/

namespace A171021.P13987672863852664768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171021.P13987672863852664768

/-! ## A171021.P13533929886152788686

`A222228(record[A039649(n+1)])`
-/

namespace A171021.P13533929886152788686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P13533929886152788686

/-! ## A171021.P9170170677772114328

`A222228(record[A111089(n+1)])`
-/

namespace A171021.P9170170677772114328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P9170170677772114328

/-! ## A171021.P5081985830965626740

`A222228(record[A006530(n+2)])`
-/

namespace A171021.P5081985830965626740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P5081985830965626740

/-! ## A171021.P6199721137939864477

`A222228(record[A014963(n+2)])`
-/

namespace A171021.P6199721137939864477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P6199721137939864477

/-! ## A171021.P1773026791716318182

`A222228(record[A020639(n+2)])`
-/

namespace A171021.P1773026791716318182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171021.P1773026791716318182

/-! ## A171021.P13040582789208058895

`A222228(A006093(n+1)+1)`
-/

namespace A171021.P13040582789208058895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A006093 (n + 1) + 1).toNat

end

end A171021.P13040582789208058895

/-! ## A171021.P200035752381843471

`A222254(A222228(A171057(n+1)))`
-/

namespace A171021.P200035752381843471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222228 (A171057 (n + 1)).toNat).toNat

end

end A171021.P200035752381843471

/-! ## A171021.P13756228488029459841

`A222228(A007504(n+1)-A007504(n))`
-/

namespace A171021.P13756228488029459841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A007504 (n + 1) - A007504 n).toNat

end

end A171021.P13756228488029459841

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

/-! ## A171022.P2661571243774180463

`A222234(record[A051698(n)])`
-/

namespace A171022.P2661571243774180463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P2661571243774180463

/-! ## A171022.P5707081284926954998

`A222234(A000040(n+1))`
-/

namespace A171022.P5707081284926954998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A000040 (n + 1)).toNat

end

end A171022.P5707081284926954998

/-! ## A171022.P11608305403533609889

`A222234(A008578(n+2))`
-/

namespace A171022.P11608305403533609889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A008578 (n + 2)).toNat

end

end A171022.P11608305403533609889

/-! ## A171022.P13592779317176713779

`A222234(A182986(n+2))`
-/

namespace A171022.P13592779317176713779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A182986 (n + 2)).toNat

end

end A171022.P13592779317176713779

/-! ## A171022.P16629275233822597986

`A222234(eq[0, A007920(n)])`
-/

namespace A171022.P16629275233822597986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171022.P16629275233822597986

/-! ## A171022.P17274984232970138145

`A222234(eq[1, A003415(n)])`
-/

namespace A171022.P17274984232970138145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171022.P17274984232970138145

/-! ## A171022.P9040251307741239452

`A222234(eq[1, A032741(n)])`
-/

namespace A171022.P9040251307741239452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171022.P9040251307741239452

/-! ## A171022.P11824849900814822028

`A222234(record[A039649(n+1)])`
-/

namespace A171022.P11824849900814822028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P11824849900814822028

/-! ## A171022.P13639302089205028367

`A222234(record[A111089(n+1)])`
-/

namespace A171022.P13639302089205028367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P13639302089205028367

/-! ## A171022.P18157070021182647314

`A222234(record[A006530(n+2)])`
-/

namespace A171022.P18157070021182647314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P18157070021182647314

/-! ## A171022.P5204918828285414574

`A222234(record[A014963(n+2)])`
-/

namespace A171022.P5204918828285414574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P5204918828285414574

/-! ## A171022.P7151791375032818700

`A222234(record[A020639(n+2)])`
-/

namespace A171022.P7151791375032818700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171022.P7151791375032818700

/-! ## A171022.P11994502321390779540

`A222234(A006093(n+1)+1)`
-/

namespace A171022.P11994502321390779540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A006093 (n + 1) + 1).toNat

end

end A171022.P11994502321390779540

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

/-! ## A171022.P4916257729269081803

`A222234(A007504(n+1)-A007504(n))`
-/

namespace A171022.P4916257729269081803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A007504 (n + 1) - A007504 n).toNat

end

end A171022.P4916257729269081803

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

/-! ## A171023.P8968084634891405878

`A222214(record[A051698(n)])`
-/

namespace A171023.P8968084634891405878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171023.P8968084634891405878

/-! ## A171023.P4260147790744030980

`A222214(A000040(n+1))`
-/

namespace A171023.P4260147790744030980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A000040 (n + 1)).toNat

end

end A171023.P4260147790744030980

/-! ## A171023.P16753086344140790217

`A222214(A008578(n+2))`
-/

namespace A171023.P16753086344140790217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A008578 (n + 2)).toNat

end

end A171023.P16753086344140790217

/-! ## A171023.P7805376065309768204

`A222214(A182986(n+2))`
-/

namespace A171023.P7805376065309768204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A182986 (n + 2)).toNat

end

end A171023.P7805376065309768204

/-! ## A171023.P11598235323444330281

`A222214(eq[1, A003415(n)])`
-/

namespace A171023.P11598235323444330281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171023.P11598235323444330281

/-! ## A171023.P6802231730833564944

`A222214(eq[4, A048785(n)])`
-/

namespace A171023.P6802231730833564944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171023.P6802231730833564944

/-! ## A171023.P11220422191806809269

`A222214(record[A006530(n+2)])`
-/

namespace A171023.P11220422191806809269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171023.P11220422191806809269

/-! ## A171023.P6205334826749854275

`A222214(record[A014963(n+2)])`
-/

namespace A171023.P6205334826749854275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171023.P6205334826749854275

/-! ## A171023.P18088808503364411424

`A222214(record[A020639(n+2)])`
-/

namespace A171023.P18088808503364411424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171023.P18088808503364411424

/-! ## A171023.P12813280939919443916

`A222214(A035044(A171018(n+1)))`
-/

namespace A171023.P12813280939919443916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171023.P12813280939919443916

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

/-! ## A171023.P17370810392936423762

`A222214(A007504(n+1)-A007504(n))`
-/

namespace A171023.P17370810392936423762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A007504 (n + 1) - A007504 n).toNat

end

end A171023.P17370810392936423762

/-! ## A171023.P553322069947018232

`A222214(A035043(A035044(A035043(A175770(n+1)))))`
-/

namespace A171023.P553322069947018232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A035043 (A035044 (A035043 (A175770 (n + 1)).toNat).toNat).toNat).toNat

end

end A171023.P553322069947018232

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

/-! ## A171024.P8857205609743921213

`A222222(record[A051698(n)])`
-/

namespace A171024.P8857205609743921213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171024.P8857205609743921213

/-! ## A171024.P13004399954958944994

`A222222(A000040(n+1))`
-/

namespace A171024.P13004399954958944994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A000040 (n + 1)).toNat

end

end A171024.P13004399954958944994

/-! ## A171024.P1742277897466900087

`A222222(A008578(n+2))`
-/

namespace A171024.P1742277897466900087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A008578 (n + 2)).toNat

end

end A171024.P1742277897466900087

/-! ## A171024.P10575778311814110951

`A222222(A182986(n+2))`
-/

namespace A171024.P10575778311814110951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A182986 (n + 2)).toNat

end

end A171024.P10575778311814110951

/-! ## A171024.P5219261175802452451

`A222222(eq[1, A003415(n)])`
-/

namespace A171024.P5219261175802452451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171024.P5219261175802452451

/-! ## A171024.P12036326260055337282

`A222222(eq[2, A077462(n)])`
-/

namespace A171024.P12036326260055337282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171024.P12036326260055337282

/-! ## A171024.P4093949632442237792

`A222222(record[A006530(n+2)])`
-/

namespace A171024.P4093949632442237792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171024.P4093949632442237792

/-! ## A171024.P384522603258749016

`A222222(record[A014963(n+2)])`
-/

namespace A171024.P384522603258749016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171024.P384522603258749016

/-! ## A171024.P12758069654997036480

`A222222(record[A020639(n+2)])`
-/

namespace A171024.P12758069654997036480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171024.P12758069654997036480

/-! ## A171024.P5323961473697920745

`A222222(A040976(n+1)+2)`
-/

namespace A171024.P5323961473697920745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A040976 (n + 1) + 2).toNat

end

end A171024.P5323961473697920745

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

/-! ## A171024.P8346595662849690426

`A222222(A007504(n+1)-A007504(n))`
-/

namespace A171024.P8346595662849690426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A007504 (n + 1) - A007504 n).toNat

end

end A171024.P8346595662849690426

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

/-! ## A171025.P10997112946122757473

`A222229(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A171025.P10997112946122757473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A171025.P10997112946122757473

/-! ## A171025.P11547213789577121108

`A222229(Δ[A007504(n)])`
-/

namespace A171025.P11547213789577121108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (n + 1) - f1 n).toNat

end

end A171025.P11547213789577121108

/-! ## A171025.P17822862237961641808

`A222229(record[A051698(n)])`
-/

namespace A171025.P17822862237961641808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P17822862237961641808

/-! ## A171025.P4223793567468182805

`A222229(A000040(n+1))`
-/

namespace A171025.P4223793567468182805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A000040 (n + 1)).toNat

end

end A171025.P4223793567468182805

/-! ## A171025.P2233565819303861291

`A222229(A008578(n+2))`
-/

namespace A171025.P2233565819303861291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A008578 (n + 2)).toNat

end

end A171025.P2233565819303861291

/-! ## A171025.P17733136099457338122

`A222229(A182986(n+2))`
-/

namespace A171025.P17733136099457338122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A182986 (n + 2)).toNat

end

end A171025.P17733136099457338122

/-! ## A171025.P14452830135506312048

`A222229(eq[0, A051699(n)])`
-/

namespace A171025.P14452830135506312048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P14452830135506312048

/-! ## A171025.P12053479257945053293

`A222229(eq[1, A003415(n)])`
-/

namespace A171025.P12053479257945053293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P12053479257945053293

/-! ## A171025.P14898044226205267435

`A222229(eq[1, A032741(n)])`
-/

namespace A171025.P14898044226205267435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P14898044226205267435

/-! ## A171025.P17250047642553197159

`A222229(eq[n, A062584(n)])`
-/

namespace A171025.P17250047642553197159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P17250047642553197159

/-! ## A171025.P18396140831884785291

`A222229(eq[n, A064502(n)])`
-/

namespace A171025.P18396140831884785291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P18396140831884785291

/-! ## A171025.P13000502341038608285

`A222229(eq[n, A327420(n)])`
-/

namespace A171025.P13000502341038608285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171025.P13000502341038608285

/-! ## A171025.P3117195411227255940

`A222229(∑[A054541(n+1)])`
-/

namespace A171025.P3117195411227255940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171025.P3117195411227255940

/-! ## A171025.P16475389215663870215

`A222229(record[A039649(n+1)])`
-/

namespace A171025.P16475389215663870215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P16475389215663870215

/-! ## A171025.P10990289270611734671

`A222229(record[A111089(n+1)])`
-/

namespace A171025.P10990289270611734671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P10990289270611734671

/-! ## A171025.P12690723538373019432

`A222229(record[A006530(n+2)])`
-/

namespace A171025.P12690723538373019432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P12690723538373019432

/-! ## A171025.P9946818342282021357

`A222229(record[A014963(n+2)])`
-/

namespace A171025.P9946818342282021357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P9946818342282021357

/-! ## A171025.P1838292754021774579

`A222229(record[A020639(n+2)])`
-/

namespace A171025.P1838292754021774579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171025.P1838292754021774579

/-! ## A171025.P10306092253229736646

`A222229(A006093(n+1)+1)`
-/

namespace A171025.P10306092253229736646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A006093 (n + 1) + 1).toNat

end

end A171025.P10306092253229736646

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

/-! ## A171026.P600377356141063226

`A222235(record[A051698(n)])`
-/

namespace A171026.P600377356141063226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P600377356141063226

/-! ## A171026.P7868456651495868419

`A222235(A000040(n+1))`
-/

namespace A171026.P7868456651495868419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A000040 (n + 1)).toNat

end

end A171026.P7868456651495868419

/-! ## A171026.P10613910512268972943

`A222235(A008578(n+2))`
-/

namespace A171026.P10613910512268972943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A008578 (n + 2)).toNat

end

end A171026.P10613910512268972943

/-! ## A171026.P7017240810455111558

`A222235(A182986(n+2))`
-/

namespace A171026.P7017240810455111558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A182986 (n + 2)).toNat

end

end A171026.P7017240810455111558

/-! ## A171026.P8423205808714606213

`A222235(eq[1, A003415(n)])`
-/

namespace A171026.P8423205808714606213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P8423205808714606213

/-! ## A171026.P5589258376539816329

`A222235(eq[1, A032741(n)])`
-/

namespace A171026.P5589258376539816329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P5589258376539816329

/-! ## A171026.P16055723656518972697

`A222235(eq[n, A062584(n)])`
-/

namespace A171026.P16055723656518972697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P16055723656518972697

/-! ## A171026.P13522162678838399558

`A222235(eq[n, A064502(n)])`
-/

namespace A171026.P13522162678838399558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P13522162678838399558

/-! ## A171026.P7330559530343261435

`A222235(eq[n, A327420(n)])`
-/

namespace A171026.P7330559530343261435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P7330559530343261435

/-! ## A171026.P4834067596807435900

`A222235(record[A039649(n+1)])`
-/

namespace A171026.P4834067596807435900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P4834067596807435900

/-! ## A171026.P5178718507532169728

`A222235(record[A111089(n+1)])`
-/

namespace A171026.P5178718507532169728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P5178718507532169728

/-! ## A171026.P661306151030857877

`A222235(record[A006530(n+2)])`
-/

namespace A171026.P661306151030857877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P661306151030857877

/-! ## A171026.P11725717154193726222

`A222235(record[A014963(n+2)])`
-/

namespace A171026.P11725717154193726222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P11725717154193726222

/-! ## A171026.P1202368463330114713

`A222235(record[A020639(n+2)])`
-/

namespace A171026.P1202368463330114713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171026.P1202368463330114713

/-! ## A171026.P528693606728948607

`A222235(p?[A305974(n+1)])`
-/

namespace A171026.P528693606728948607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171026.P528693606728948607

/-! ## A171026.P13363306604142926894

`A222235(A006093(n+1)+1)`
-/

namespace A171026.P13363306604142926894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A006093 (n + 1) + 1).toNat

end

end A171026.P13363306604142926894

/-! ## A171026.P15942705259163539776

`A222235(eq[n, A038700(n+1)])`
-/

namespace A171026.P15942705259163539776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P15942705259163539776

/-! ## A171026.P6188582363502332940

`A222235(eq[n, A057637(n+1)])`
-/

namespace A171026.P6188582363502332940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P6188582363502332940

/-! ## A171026.P5356364429635241850

`A222235(eq[n, A093868(n+1)])`
-/

namespace A171026.P5356364429635241850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171026.P5356364429635241850

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

/-! ## A171027.P10739795909448081581

`A222240(record[A051698(n)])`
-/

namespace A171027.P10739795909448081581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P10739795909448081581

/-! ## A171027.P14344379139230409414

`A222240(A000040(n+1))`
-/

namespace A171027.P14344379139230409414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A000040 (n + 1)).toNat

end

end A171027.P14344379139230409414

/-! ## A171027.P17208761697779164748

`A222240(A008578(n+2))`
-/

namespace A171027.P17208761697779164748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A008578 (n + 2)).toNat

end

end A171027.P17208761697779164748

/-! ## A171027.P7673767338641327662

`A222240(A182986(n+2))`
-/

namespace A171027.P7673767338641327662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A182986 (n + 2)).toNat

end

end A171027.P7673767338641327662

/-! ## A171027.P9324109555516322123

`A222240(eq[0, A007920(n)])`
-/

namespace A171027.P9324109555516322123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171027.P9324109555516322123

/-! ## A171027.P15732849109667012661

`A222240(eq[1, A003415(n)])`
-/

namespace A171027.P15732849109667012661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171027.P15732849109667012661

/-! ## A171027.P3454292724482387832

`A222240(eq[2, A005127(n)])`
-/

namespace A171027.P3454292724482387832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171027.P3454292724482387832

/-! ## A171027.P14478510257175525735

`A222240(record[A039649(n+1)])`
-/

namespace A171027.P14478510257175525735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P14478510257175525735

/-! ## A171027.P2284997952836661184

`A222240(record[A111089(n+1)])`
-/

namespace A171027.P2284997952836661184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P2284997952836661184

/-! ## A171027.P6451531044706363299

`A222240(record[A006530(n+2)])`
-/

namespace A171027.P6451531044706363299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P6451531044706363299

/-! ## A171027.P3676236519415138251

`A222240(record[A014963(n+2)])`
-/

namespace A171027.P3676236519415138251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P3676236519415138251

/-! ## A171027.P1643415595894292685

`A222240(record[A020639(n+2)])`
-/

namespace A171027.P1643415595894292685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171027.P1643415595894292685

/-! ## A171027.P7295776903994057060

`A222240(A006093(n+1)+1)`
-/

namespace A171027.P7295776903994057060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A006093 (n + 1) + 1).toNat

end

end A171027.P7295776903994057060

/-! ## A171027.P2173182182643147583

`A222240(p?[record[A004151(n+1)]])`
-/

namespace A171027.P2173182182643147583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171027.P2173182182643147583

/-! ## A171027.P5786646018280471942

`A222240(A035044(A171018(n+1)))`
-/

namespace A171027.P5786646018280471942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171027.P5786646018280471942

/-! ## A171027.P12195145272583390442

`A222241(A222245(A171032(n+1)))`
-/

namespace A171027.P12195145272583390442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222245 (A171032 (n + 1)).toNat).toNat

end

end A171027.P12195145272583390442

/-! ## A171027.P484611529193477264

`A222240(A222245(A171033(n+1)))`
-/

namespace A171027.P484611529193477264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222245 (A171033 (n + 1)).toNat).toNat

end

end A171027.P484611529193477264

/-! ## A171027.P4157429067444779886

`A222254(A222240(A171057(n+1)))`
-/

namespace A171027.P4157429067444779886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222240 (A171057 (n + 1)).toNat).toNat

end

end A171027.P4157429067444779886

/-!
# A171028: In the sequence of prime numbers, replace all the '6' digits with '0' and vice versa.

The programs for A171028, there is no canonical definition to state claims against.
-/

/-! ## A171028.P6727618689070882563

`A222215(A000040(n+1))`
-/

namespace A171028.P6727618689070882563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A000040 (n + 1)).toNat

end

end A171028.P6727618689070882563

/-! ## A171028.P17207845378471696285

`A222215(A008578(n+2))`
-/

namespace A171028.P17207845378471696285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A008578 (n + 2)).toNat

end

end A171028.P17207845378471696285

/-! ## A171028.P1846722313988018756

`A222215(A182986(n+2))`
-/

namespace A171028.P1846722313988018756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A182986 (n + 2)).toNat

end

end A171028.P1846722313988018756

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

/-! ## A171029.P18364799339291452535

`A222223(record[A051698(n)])`
-/

namespace A171029.P18364799339291452535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P18364799339291452535

/-! ## A171029.P12703054079391790986

`A222223(A000040(n+1))`
-/

namespace A171029.P12703054079391790986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A000040 (n + 1)).toNat

end

end A171029.P12703054079391790986

/-! ## A171029.P16372540938385813113

`A222223(A008578(n+2))`
-/

namespace A171029.P16372540938385813113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A008578 (n + 2)).toNat

end

end A171029.P16372540938385813113

/-! ## A171029.P16714371482126238117

`A222223(A182986(n+2))`
-/

namespace A171029.P16714371482126238117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A182986 (n + 2)).toNat

end

end A171029.P16714371482126238117

/-! ## A171029.P949589415619272573

`A222223(eq[0, A007920(n)])`
-/

namespace A171029.P949589415619272573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171029.P949589415619272573

/-! ## A171029.P1487071076373523863

`A222223(eq[1, A003415(n)])`
-/

namespace A171029.P1487071076373523863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171029.P1487071076373523863

/-! ## A171029.P3306280024666423430

`A222223(lt[n, A282462(n)])`
-/

namespace A171029.P3306280024666423430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A171029.P3306280024666423430

/-! ## A171029.P6399160093642665170

`A222223(record[A039649(n+1)])`
-/

namespace A171029.P6399160093642665170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P6399160093642665170

/-! ## A171029.P1020242049354058827

`A222223(record[A111089(n+1)])`
-/

namespace A171029.P1020242049354058827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P1020242049354058827

/-! ## A171029.P15401972716742416921

`A222223(record[A006530(n+2)])`
-/

namespace A171029.P15401972716742416921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P15401972716742416921

/-! ## A171029.P14274908128126126389

`A222223(record[A014963(n+2)])`
-/

namespace A171029.P14274908128126126389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P14274908128126126389

/-! ## A171029.P6326142363694016008

`A222223(record[A020639(n+2)])`
-/

namespace A171029.P6326142363694016008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P6326142363694016008

/-! ## A171029.P17076750808674249003

`A222223(A006093(n+1)+1)`
-/

namespace A171029.P17076750808674249003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A006093 (n + 1) + 1).toNat

end

end A171029.P17076750808674249003

/-! ## A171029.P3582019180346701010

`A222223(record[A000010(n+1)+1])`
-/

namespace A171029.P3582019180346701010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171029.P3582019180346701010

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

/-! ## A171029.P5061444677444463206

`A222223(A007504(n+1)-A007504(n))`
-/

namespace A171029.P5061444677444463206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A007504 (n + 1) - A007504 n).toNat

end

end A171029.P5061444677444463206

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

/-! ## A171030.P18228603636047566439

`A222230(record[A051698(n)])`
-/

namespace A171030.P18228603636047566439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P18228603636047566439

/-! ## A171030.P1767422711939841341

`A222230(record[A162753(n)])`
-/

namespace A171030.P1767422711939841341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P1767422711939841341

/-! ## A171030.P5676702432603459811

`A222230(A000040(n+1))`
-/

namespace A171030.P5676702432603459811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A000040 (n + 1)).toNat

end

end A171030.P5676702432603459811

/-! ## A171030.P2684615608541851552

`A222230(A008578(n+2))`
-/

namespace A171030.P2684615608541851552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A008578 (n + 2)).toNat

end

end A171030.P2684615608541851552

/-! ## A171030.P11840429795915464396

`A222230(A182986(n+2))`
-/

namespace A171030.P11840429795915464396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A182986 (n + 2)).toNat

end

end A171030.P11840429795915464396

/-! ## A171030.P7404639022886522567

`A222230(eq[1, A003415(n)])`
-/

namespace A171030.P7404639022886522567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171030.P7404639022886522567

/-! ## A171030.P11501286193580954076

`A222230(eq[1, A032741(n)])`
-/

namespace A171030.P11501286193580954076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171030.P11501286193580954076

/-! ## A171030.P15871190659637844189

`A222230(∑[A054541(n+1)])`
-/

namespace A171030.P15871190659637844189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171030.P15871190659637844189

/-! ## A171030.P12878556492159451937

`A222230(record[A039649(n+1)])`
-/

namespace A171030.P12878556492159451937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P12878556492159451937

/-! ## A171030.P12580178932801827014

`A222230(record[A006530(n+2)])`
-/

namespace A171030.P12580178932801827014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P12580178932801827014

/-! ## A171030.P3439473980496233432

`A222230(record[A014963(n+2)])`
-/

namespace A171030.P3439473980496233432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P3439473980496233432

/-! ## A171030.P12044171459858341314

`A222230(record[A020639(n+2)])`
-/

namespace A171030.P12044171459858341314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171030.P12044171459858341314

/-! ## A171030.P14294705302054316927

`A222230(A006093(n+1)+1)`
-/

namespace A171030.P14294705302054316927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A006093 (n + 1) + 1).toNat

end

end A171030.P14294705302054316927

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

/-! ## A171030.P8941101926330768327

`A222230(A222220(A175770(n+1)))`
-/

namespace A171030.P8941101926330768327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222220 (A175770 (n + 1)).toNat).toNat

end

end A171030.P8941101926330768327

/-! ## A171030.P16636296334833534767

`A222230(A007504(n+1)-A007504(n))`
-/

namespace A171030.P16636296334833534767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A007504 (n + 1) - A007504 n).toNat

end

end A171030.P16636296334833534767

/-! ## A171030.P5066031353054774352

`A222230(A222232(A222238(A222232(A171018(n+1)))))`
-/

namespace A171030.P5066031353054774352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222232 (A222238 (A222232 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171030.P5066031353054774352

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

/-! ## A171031.P9029270450955608843

`A222236(record[A051698(n)])`
-/

namespace A171031.P9029270450955608843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171031.P9029270450955608843

/-! ## A171031.P9468377321290200817

`A222236(A000040(n+1))`
-/

namespace A171031.P9468377321290200817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A000040 (n + 1)).toNat

end

end A171031.P9468377321290200817

/-! ## A171031.P5982082592836951505

`A222236(A008578(n+2))`
-/

namespace A171031.P5982082592836951505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A008578 (n + 2)).toNat

end

end A171031.P5982082592836951505

/-! ## A171031.P11865977264764315055

`A222236(A182986(n+2))`
-/

namespace A171031.P11865977264764315055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A182986 (n + 2)).toNat

end

end A171031.P11865977264764315055

/-! ## A171031.P16532209376737330658

`A222236(eq[1, A003415(n)])`
-/

namespace A171031.P16532209376737330658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171031.P16532209376737330658

/-! ## A171031.P2100615731731426021

`A222236(eq[4, A048785(n)])`
-/

namespace A171031.P2100615731731426021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171031.P2100615731731426021

/-! ## A171031.P483108883885081799

`A222236(record[A006530(n+2)])`
-/

namespace A171031.P483108883885081799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171031.P483108883885081799

/-! ## A171031.P3758685111595471024

`A222236(record[A014963(n+2)])`
-/

namespace A171031.P3758685111595471024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171031.P3758685111595471024

/-! ## A171031.P4352483077611287904

`A222236(record[A020639(n+2)])`
-/

namespace A171031.P4352483077611287904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171031.P4352483077611287904

/-! ## A171031.P591358667872977522

`A222236(A222235(A171026(n+1)))`
-/

namespace A171031.P591358667872977522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222235 (A171026 (n + 1)).toNat).toNat

end

end A171031.P591358667872977522

/-! ## A171031.P736916749507568681

`A222254(A222236(A171057(n+1)))`
-/

namespace A171031.P736916749507568681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222236 (A171057 (n + 1)).toNat).toNat

end

end A171031.P736916749507568681

/-! ## A171031.P3152141558793591334

`A222236(A222220(A175770(n+1)))`
-/

namespace A171031.P3152141558793591334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222220 (A175770 (n + 1)).toNat).toNat

end

end A171031.P3152141558793591334

/-! ## A171031.P12584416831169843373

`A222236(A007504(n+1)-A007504(n))`
-/

namespace A171031.P12584416831169843373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A007504 (n + 1) - A007504 n).toNat

end

end A171031.P12584416831169843373

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

/-! ## A171032.P1946301033177532085

`A222241(A000040(n+1))`
-/

namespace A171032.P1946301033177532085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A000040 (n + 1)).toNat

end

end A171032.P1946301033177532085

/-! ## A171032.P3209739745013631778

`A222241(A008578(n+2))`
-/

namespace A171032.P3209739745013631778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A008578 (n + 2)).toNat

end

end A171032.P3209739745013631778

/-! ## A171032.P12778855632727812758

`A222241(A182986(n+2))`
-/

namespace A171032.P12778855632727812758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A182986 (n + 2)).toNat

end

end A171032.P12778855632727812758

/-! ## A171032.P7341562022792309002

`A222241(record[A006530(n+2)])`
-/

namespace A171032.P7341562022792309002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171032.P7341562022792309002

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

/-! ## A171033.P7066458387992323436

`A222245(record[A051698(n)])`
-/

namespace A171033.P7066458387992323436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P7066458387992323436

/-! ## A171033.P7780970483736440464

`A222245(A000040(n+1))`
-/

namespace A171033.P7780970483736440464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A000040 (n + 1)).toNat

end

end A171033.P7780970483736440464

/-! ## A171033.P15738486922541764176

`A222245(A008578(n+2))`
-/

namespace A171033.P15738486922541764176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A008578 (n + 2)).toNat

end

end A171033.P15738486922541764176

/-! ## A171033.P6672313235542982334

`A222245(A182986(n+2))`
-/

namespace A171033.P6672313235542982334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A182986 (n + 2)).toNat

end

end A171033.P6672313235542982334

/-! ## A171033.P2750980605295126991

`A222245(eq[1, A003415(n)])`
-/

namespace A171033.P2750980605295126991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171033.P2750980605295126991

/-! ## A171033.P9038719717180879741

`A222245(eq[2, A005128(n)])`
-/

namespace A171033.P9038719717180879741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171033.P9038719717180879741

/-! ## A171033.P2548204258208183358

`A222245(record[A039649(n+1)])`
-/

namespace A171033.P2548204258208183358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P2548204258208183358

/-! ## A171033.P7516409667568910781

`A222245(record[A111089(n+1)])`
-/

namespace A171033.P7516409667568910781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P7516409667568910781

/-! ## A171033.P2344565833272771178

`A222245(record[A006530(n+2)])`
-/

namespace A171033.P2344565833272771178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P2344565833272771178

/-! ## A171033.P12183321546056787760

`A222245(record[A014963(n+2)])`
-/

namespace A171033.P12183321546056787760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P12183321546056787760

/-! ## A171033.P8954207402133277679

`A222245(record[A020639(n+2)])`
-/

namespace A171033.P8954207402133277679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171033.P8954207402133277679

/-! ## A171033.P12816055076744901211

`A222245(A006093(n+1)+1)`
-/

namespace A171033.P12816055076744901211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A006093 (n + 1) + 1).toNat

end

end A171033.P12816055076744901211

/-! ## A171033.P619242720955073557

`A222245(A001748(n+1)/3)`
-/

namespace A171033.P619242720955073557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A171033.P619242720955073557

/-! ## A171033.P13476934698098226922

`A222245(A001749(n+1)/4)`
-/

namespace A171033.P13476934698098226922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)).toNat

end

end A171033.P13476934698098226922

/-! ## A171033.P15407875698589656576

`A222245(p?[record[A004151(n+1)]])`
-/

namespace A171033.P15407875698589656576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171033.P15407875698589656576

/-! ## A171033.P2294717431331678096

`A222245(A035044(A171018(n+1)))`
-/

namespace A171033.P2294717431331678096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171033.P2294717431331678096

/-! ## A171033.P9226414990736714313

`A222245(A222221(A171020(n+1)))`
-/

namespace A171033.P9226414990736714313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222221 (A171020 (n + 1)).toNat).toNat

end

end A171033.P9226414990736714313

/-! ## A171033.P5823642127375640800

`A222245(A222228(A171021(n+1)))`
-/

namespace A171033.P5823642127375640800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222228 (A171021 (n + 1)).toNat).toNat

end

end A171033.P5823642127375640800

/-! ## A171033.P9643205078533785639

`A222245(A222234(A171022(n+1)))`
-/

namespace A171033.P9643205078533785639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222234 (A171022 (n + 1)).toNat).toNat

end

end A171033.P9643205078533785639

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

/-! ## A171034.P11754870219242598961

`A222216(Δ[A007504(n)])`
-/

namespace A171034.P11754870219242598961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (n + 1) - f1 n).toNat

end

end A171034.P11754870219242598961

/-! ## A171034.P17249490847687067288

`A222216(record[A051698(n)])`
-/

namespace A171034.P17249490847687067288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P17249490847687067288

/-! ## A171034.P9798229327671222445

`A222216(A000040(n+1))`
-/

namespace A171034.P9798229327671222445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A000040 (n + 1)).toNat

end

end A171034.P9798229327671222445

/-! ## A171034.P7476856337384057324

`A222216(A008578(n+2))`
-/

namespace A171034.P7476856337384057324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A008578 (n + 2)).toNat

end

end A171034.P7476856337384057324

/-! ## A171034.P9076433570660850552

`A222216(A182986(n+2))`
-/

namespace A171034.P9076433570660850552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A182986 (n + 2)).toNat

end

end A171034.P9076433570660850552

/-! ## A171034.P6478928539114973471

`A222216(eq[1, A003415(n)])`
-/

namespace A171034.P6478928539114973471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171034.P6478928539114973471

/-! ## A171034.P17185145542623271839

`A222216(eq[1, A032741(n)])`
-/

namespace A171034.P17185145542623271839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171034.P17185145542623271839

/-! ## A171034.P2403649657575231686

`A222216(∑[A054541(n+1)])`
-/

namespace A171034.P2403649657575231686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171034.P2403649657575231686

/-! ## A171034.P1570001064378362720

`A222216(record[A039649(n+1)])`
-/

namespace A171034.P1570001064378362720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P1570001064378362720

/-! ## A171034.P4934294294428529003

`A222216(record[A111089(n+1)])`
-/

namespace A171034.P4934294294428529003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P4934294294428529003

/-! ## A171034.P16619439945760565778

`A222216(record[A006530(n+2)])`
-/

namespace A171034.P16619439945760565778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P16619439945760565778

/-! ## A171034.P8622441745985848951

`A222216(record[A014963(n+2)])`
-/

namespace A171034.P8622441745985848951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P8622441745985848951

/-! ## A171034.P2625405991589148748

`A222216(record[A020639(n+2)])`
-/

namespace A171034.P2625405991589148748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P2625405991589148748

/-! ## A171034.P14585671983872809501

`A222216(A006093(n+1)+1)`
-/

namespace A171034.P14585671983872809501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A006093 (n + 1) + 1).toNat

end

end A171034.P14585671983872809501

/-! ## A171034.P8293789270129142788

`A222216(record[p?[A004151(n+1)]])`
-/

namespace A171034.P8293789270129142788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171034.P8293789270129142788

/-! ## A171034.P9231815638123159300

`A222216(A035044(A171018(n+1)))`
-/

namespace A171034.P9231815638123159300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171034.P9231815638123159300

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

/-! ## A171034.P11975118419758624592

`A222216(A007504(n+1)-A007504(n))`
-/

namespace A171034.P11975118419758624592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A007504 (n + 1) - A007504 n).toNat

end

end A171034.P11975118419758624592

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

/-! ## A171035.P14737274554776113118

`A222224(record[A051698(n)])`
-/

namespace A171035.P14737274554776113118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171035.P14737274554776113118

/-! ## A171035.P11257098380417074673

`A222224(record[A162753(n)])`
-/

namespace A171035.P11257098380417074673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171035.P11257098380417074673

/-! ## A171035.P13323357453135684211

`A222224(A000040(n+1))`
-/

namespace A171035.P13323357453135684211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A000040 (n + 1)).toNat

end

end A171035.P13323357453135684211

/-! ## A171035.P6753888287473516867

`A222224(A008578(n+2))`
-/

namespace A171035.P6753888287473516867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A008578 (n + 2)).toNat

end

end A171035.P6753888287473516867

/-! ## A171035.P14661750989180419585

`A222224(A182986(n+2))`
-/

namespace A171035.P14661750989180419585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A182986 (n + 2)).toNat

end

end A171035.P14661750989180419585

/-! ## A171035.P7874277991053810651

`A222224(eq[n, A062584(n)])`
-/

namespace A171035.P7874277991053810651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171035.P7874277991053810651

/-! ## A171035.P10029271355299174087

`A222224(record[A006530(n+2)])`
-/

namespace A171035.P10029271355299174087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171035.P10029271355299174087

/-! ## A171035.P10689904377090078840

`A222224(record[A014963(n+2)])`
-/

namespace A171035.P10689904377090078840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171035.P10689904377090078840

/-! ## A171035.P18121580436989170378

`A222224(record[A020639(n+2)])`
-/

namespace A171035.P18121580436989170378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171035.P18121580436989170378

/-! ## A171035.P9186381590392751819

`A222224(eq[2, A000005(n+1)]+1)`
-/

namespace A171035.P9186381590392751819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171035.P9186381590392751819

/-! ## A171035.P3739102687410978166

`A222254(A222224(A171057(n+1)))`
-/

namespace A171035.P3739102687410978166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222224 (A171057 (n + 1)).toNat).toNat

end

end A171035.P3739102687410978166

/-! ## A171035.P17899718315964065512

`A222224(A007504(n+1)-A007504(n))`
-/

namespace A171035.P17899718315964065512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A007504 (n + 1) - A007504 n).toNat

end

end A171035.P17899718315964065512

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

/-! ## A171036.P18226475482417077513

`A222231(Δ[A007504(n)])`
-/

namespace A171036.P18226475482417077513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (n + 1) - f1 n).toNat

end

end A171036.P18226475482417077513

/-! ## A171036.P2214918801053560052

`A222231(record[A051698(n)])`
-/

namespace A171036.P2214918801053560052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P2214918801053560052

/-! ## A171036.P12476219809479004825

`A222231(A000040(n+1))`
-/

namespace A171036.P12476219809479004825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A000040 (n + 1)).toNat

end

end A171036.P12476219809479004825

/-! ## A171036.P15495112937882061956

`A222231(A008578(n+2))`
-/

namespace A171036.P15495112937882061956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A008578 (n + 2)).toNat

end

end A171036.P15495112937882061956

/-! ## A171036.P14851392340555890626

`A222231(A182986(n+2))`
-/

namespace A171036.P14851392340555890626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A182986 (n + 2)).toNat

end

end A171036.P14851392340555890626

/-! ## A171036.P9452515805446256274

`A222231(eq[1, A003415(n)])`
-/

namespace A171036.P9452515805446256274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P9452515805446256274

/-! ## A171036.P484291844048858963

`A222231(eq[n, A062584(n)])`
-/

namespace A171036.P484291844048858963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P484291844048858963

/-! ## A171036.P11060005925914798002

`A222231(eq[n, A064502(n)])`
-/

namespace A171036.P11060005925914798002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P11060005925914798002

/-! ## A171036.P818971466052706770

`A222231(eq[n, A327420(n)])`
-/

namespace A171036.P818971466052706770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P818971466052706770

/-! ## A171036.P11949210562614420905

`A222231(record[A039649(n+1)])`
-/

namespace A171036.P11949210562614420905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P11949210562614420905

/-! ## A171036.P2840943789329142818

`A222231(record[A111089(n+1)])`
-/

namespace A171036.P2840943789329142818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P2840943789329142818

/-! ## A171036.P14662125410592304208

`A222231(record[A006530(n+2)])`
-/

namespace A171036.P14662125410592304208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P14662125410592304208

/-! ## A171036.P13950297905620021344

`A222231(record[A014963(n+2)])`
-/

namespace A171036.P13950297905620021344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P13950297905620021344

/-! ## A171036.P2876297490658938542

`A222231(record[A020639(n+2)])`
-/

namespace A171036.P2876297490658938542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171036.P2876297490658938542

/-! ## A171036.P5941378804119987197

`A222231(A006093(n+1)+1)`
-/

namespace A171036.P5941378804119987197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A006093 (n + 1) + 1).toNat

end

end A171036.P5941378804119987197

/-! ## A171036.P2032889257533983580

`A222231(eq[n, A038700(n+1)])`
-/

namespace A171036.P2032889257533983580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P2032889257533983580

/-! ## A171036.P10453376573894944742

`A222231(eq[0, n-A051697(n)])`
-/

namespace A171036.P10453376573894944742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P10453376573894944742

/-! ## A171036.P11423126074777102602

`A222231(eq[n, A057637(n+1)])`
-/

namespace A171036.P11423126074777102602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P11423126074777102602

/-! ## A171036.P6238287247453219080

`A222231(eq[n, A093868(n+1)])`
-/

namespace A171036.P6238287247453219080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171036.P6238287247453219080

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

/-! ## A171037.P7532758614617265404

`A222237(record[A051698(n)])`
-/

namespace A171037.P7532758614617265404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171037.P7532758614617265404

/-! ## A171037.P3202662274892544611

`A222237(A000040(n+1))`
-/

namespace A171037.P3202662274892544611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A000040 (n + 1)).toNat

end

end A171037.P3202662274892544611

/-! ## A171037.P18138434219760534074

`A104696(A171050(n+1))`
-/

namespace A171037.P18138434219760534074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A171050 (n + 1)).toNat

end

end A171037.P18138434219760534074

/-! ## A171037.P5474171162345705029

`A222237(A008578(n+2))`
-/

namespace A171037.P5474171162345705029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A008578 (n + 2)).toNat

end

end A171037.P5474171162345705029

/-! ## A171037.P12332281607351772345

`A222237(A182986(n+2))`
-/

namespace A171037.P12332281607351772345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A182986 (n + 2)).toNat

end

end A171037.P12332281607351772345

/-! ## A171037.P1757692074118866834

`A222237(eq[1, A003415(n)])`
-/

namespace A171037.P1757692074118866834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171037.P1757692074118866834

/-! ## A171037.P636546858924942523

`A222237(record[A006530(n+2)])`
-/

namespace A171037.P636546858924942523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171037.P636546858924942523

/-! ## A171037.P5379040145525212661

`A222237(record[A014963(n+2)])`
-/

namespace A171037.P5379040145525212661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171037.P5379040145525212661

/-! ## A171037.P16865351589108717963

`A222237(record[A020639(n+2)])`
-/

namespace A171037.P16865351589108717963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171037.P16865351589108717963

/-! ## A171037.P8398208247534560729

`A222237(A006093(n+1)+1)`
-/

namespace A171037.P8398208247534560729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A006093 (n + 1) + 1).toNat

end

end A171037.P8398208247534560729

/-! ## A171037.P3551063478498526053

`A222254(A222237(A171057(n+1)))`
-/

namespace A171037.P3551063478498526053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222237 (A171057 (n + 1)).toNat).toNat

end

end A171037.P3551063478498526053

/-! ## A171037.P9341860996496461460

`A222237(A007504(n+1)-A007504(n))`
-/

namespace A171037.P9341860996496461460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A007504 (n + 1) - A007504 n).toNat

end

end A171037.P9341860996496461460

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

/-! ## A171038.P15291505580937445602

`A222242(record[A051698(n)])`
-/

namespace A171038.P15291505580937445602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171038.P15291505580937445602

/-! ## A171038.P4834047400825849161

`A222242(A000040(n+1))`
-/

namespace A171038.P4834047400825849161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A000040 (n + 1)).toNat

end

end A171038.P4834047400825849161

/-! ## A171038.P13651078684943104193

`A222242(A008578(n+2))`
-/

namespace A171038.P13651078684943104193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A008578 (n + 2)).toNat

end

end A171038.P13651078684943104193

/-! ## A171038.P17747254335609779714

`A222242(A182986(n+2))`
-/

namespace A171038.P17747254335609779714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A182986 (n + 2)).toNat

end

end A171038.P17747254335609779714

/-! ## A171038.P12964365420355247758

`A222242(eq[0, A007920(n)])`
-/

namespace A171038.P12964365420355247758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171038.P12964365420355247758

/-! ## A171038.P2993749285814790074

`A222242(eq[1, A003415(n)])`
-/

namespace A171038.P2993749285814790074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171038.P2993749285814790074

/-! ## A171038.P7435275068033455702

`A222242(eq[1, A032741(n)])`
-/

namespace A171038.P7435275068033455702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171038.P7435275068033455702

/-! ## A171038.P9798159807439120261

`A222242(eq[1, A105700(n)])`
-/

namespace A171038.P9798159807439120261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171038.P9798159807439120261

/-! ## A171038.P10963172668731182888

`A222242(record[A006530(n+2)])`
-/

namespace A171038.P10963172668731182888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171038.P10963172668731182888

/-! ## A171038.P12120383067281521589

`A222242(record[A014963(n+2)])`
-/

namespace A171038.P12120383067281521589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171038.P12120383067281521589

/-! ## A171038.P7410436090202295296

`A222242(record[A020639(n+2)])`
-/

namespace A171038.P7410436090202295296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171038.P7410436090202295296

/-! ## A171038.P9047066464811009001

`A222242(comp[A018252(n+1)-1]+1)`
-/

namespace A171038.P9047066464811009001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171038.P9047066464811009001

/-! ## A171038.P8925887736164136661

`A222254(A222242(A171057(n+1)))`
-/

namespace A171038.P8925887736164136661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222242 (A171057 (n + 1)).toNat).toNat

end

end A171038.P8925887736164136661

/-! ## A171038.P63357182497111879

`A222242(A222220(A175770(n+1)))`
-/

namespace A171038.P63357182497111879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222220 (A175770 (n + 1)).toNat).toNat

end

end A171038.P63357182497111879

/-! ## A171038.P269197398508167601

`A222242(A007504(n+1)-A007504(n))`
-/

namespace A171038.P269197398508167601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A007504 (n + 1) - A007504 n).toNat

end

end A171038.P269197398508167601

/-! ## A171038.P2158119506184396925

`A222242(A223489(n+1)+A223488(n+1))`
-/

namespace A171038.P2158119506184396925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A171038.P2158119506184396925

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

/-! ## A171039.P14107669381544992082

`A222246(record[A051698(n)])`
-/

namespace A171039.P14107669381544992082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P14107669381544992082

/-! ## A171039.P665595140530146690

`A222246(A000040(n+1))`
-/

namespace A171039.P665595140530146690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A000040 (n + 1)).toNat

end

end A171039.P665595140530146690

/-! ## A171039.P1670530436380694816

`A222246(A008578(n+2))`
-/

namespace A171039.P1670530436380694816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A008578 (n + 2)).toNat

end

end A171039.P1670530436380694816

/-! ## A171039.P12408663907541818211

`A222246(A182986(n+2))`
-/

namespace A171039.P12408663907541818211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A182986 (n + 2)).toNat

end

end A171039.P12408663907541818211

/-! ## A171039.P11462676766786279228

`A222246(eq[1, A003415(n)])`
-/

namespace A171039.P11462676766786279228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171039.P11462676766786279228

/-! ## A171039.P7054446340552452630

`A222246(eq[2, A005127(n)])`
-/

namespace A171039.P7054446340552452630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171039.P7054446340552452630

/-! ## A171039.P17565783843797122185

`A222246(record[A039649(n+1)])`
-/

namespace A171039.P17565783843797122185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P17565783843797122185

/-! ## A171039.P17544416837774985954

`A222246(record[A006530(n+2)])`
-/

namespace A171039.P17544416837774985954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P17544416837774985954

/-! ## A171039.P10153413587525746103

`A222246(record[A014963(n+2)])`
-/

namespace A171039.P10153413587525746103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P10153413587525746103

/-! ## A171039.P6094160391709470186

`A222246(record[A020639(n+2)])`
-/

namespace A171039.P6094160391709470186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P6094160391709470186

/-! ## A171039.P1799699508953708924

`A222246(p?[record[A004151(n+1)]])`
-/

namespace A171039.P1799699508953708924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171039.P1799699508953708924

/-! ## A171039.P16816646742516940140

`A222246(comp[A018252(n+1)-1]+1)`
-/

namespace A171039.P16816646742516940140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171039.P16816646742516940140

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

/-! ## A171039.P6116634012859227866

`A222246(A007504(n+1)-A007504(n))`
-/

namespace A171039.P6116634012859227866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A007504 (n + 1) - A007504 n).toNat

end

end A171039.P6116634012859227866

/-! ## A171039.P7307585761038583151

`A222246(record[p?[A332204(n)+1]])`
-/

namespace A171039.P7307585761038583151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P7307585761038583151

/-! ## A171039.P4213780592767044308

`A222246(record[p?[A332204(n)]])`
-/

namespace A171039.P4213780592767044308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P4213780592767044308

/-! ## A171039.P17084214901208923339

`A222246(record[p?[A242112(n)]])`
-/

namespace A171039.P17084214901208923339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171039.P17084214901208923339

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

/-! ## A171040.P2792173764752157590

`A222249(record[A051698(n)])`
-/

namespace A171040.P2792173764752157590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171040.P2792173764752157590

/-! ## A171040.P5571543666948920588

`A222249(A000040(n+1))`
-/

namespace A171040.P5571543666948920588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A000040 (n + 1)).toNat

end

end A171040.P5571543666948920588

/-! ## A171040.P17211831746947148227

`A222249(A008578(n+2))`
-/

namespace A171040.P17211831746947148227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A008578 (n + 2)).toNat

end

end A171040.P17211831746947148227

/-! ## A171040.P17162160412705652305

`A222249(A182986(n+2))`
-/

namespace A171040.P17162160412705652305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A182986 (n + 2)).toNat

end

end A171040.P17162160412705652305

/-! ## A171040.P1269212065660342211

`A222249(eq[1, A003415(n)])`
-/

namespace A171040.P1269212065660342211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171040.P1269212065660342211

/-! ## A171040.P9847362259836060125

`A222249(eq[1, A032741(n)])`
-/

namespace A171040.P9847362259836060125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171040.P9847362259836060125

/-! ## A171040.P14883714042835548540

`A222249(eq[2, A077462(n)])`
-/

namespace A171040.P14883714042835548540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171040.P14883714042835548540

/-! ## A171040.P12888679722932654789

`A222249(record[A006530(n+2)])`
-/

namespace A171040.P12888679722932654789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171040.P12888679722932654789

/-! ## A171040.P17913202875184212107

`A222249(record[A014963(n+2)])`
-/

namespace A171040.P17913202875184212107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171040.P17913202875184212107

/-! ## A171040.P18017906411600389077

`A222249(record[A020639(n+2)])`
-/

namespace A171040.P18017906411600389077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171040.P18017906411600389077

/-! ## A171040.P4150253207346033886

`A222249(eq[2, A000005(n+1)]+1)`
-/

namespace A171040.P4150253207346033886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171040.P4150253207346033886

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

/-! ## A171040.P10530447809162592207

`A222249(A007504(n+1)-A007504(n))`
-/

namespace A171040.P10530447809162592207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A007504 (n + 1) - A007504 n).toNat

end

end A171040.P10530447809162592207

/-!
# A171041: In the sequence of prime numbers, replace all the '8' digits with '0' and vice versa.

The programs for A171041, there is no canonical definition to state claims against.
-/

/-! ## A171041.P5921766215163503361

`A222217(A000040(n+1))`
-/

namespace A171041.P5921766215163503361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A000040 (n + 1)).toNat

end

end A171041.P5921766215163503361

/-! ## A171041.P3984376124782008461

`A222217(A008578(n+2))`
-/

namespace A171041.P3984376124782008461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A008578 (n + 2)).toNat

end

end A171041.P3984376124782008461

/-! ## A171041.P12959723654495745628

`A222217(A182986(n+2))`
-/

namespace A171041.P12959723654495745628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A182986 (n + 2)).toNat

end

end A171041.P12959723654495745628

/-! ## A171041.P17619064702761232130

`A222225(A222210(A171042(n+1)))`
-/

namespace A171041.P17619064702761232130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222210 (A171042 (n + 1)).toNat).toNat

end

end A171041.P17619064702761232130

/-! ## A171041.P3088552874204908338

`A222254(A222218(A171057(n+1)))`
-/

namespace A171041.P3088552874204908338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222218 (A171057 (n + 1)).toNat).toNat

end

end A171041.P3088552874204908338

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

/-! ## A171042.P9253616623338050134

`A222225(Δ[A007504(n)])`
-/

namespace A171042.P9253616623338050134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (n + 1) - f1 n).toNat

end

end A171042.P9253616623338050134

/-! ## A171042.P1225523065645422792

`A222225(record[A051698(n)])`
-/

namespace A171042.P1225523065645422792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P1225523065645422792

/-! ## A171042.P3712756827062366859

`A222225(A000040(n+1))`
-/

namespace A171042.P3712756827062366859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A000040 (n + 1)).toNat

end

end A171042.P3712756827062366859

/-! ## A171042.P11356124708013564910

`A222225(A008578(n+2))`
-/

namespace A171042.P11356124708013564910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A008578 (n + 2)).toNat

end

end A171042.P11356124708013564910

/-! ## A171042.P3562946895207570187

`A222225(A182986(n+2))`
-/

namespace A171042.P3562946895207570187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A182986 (n + 2)).toNat

end

end A171042.P3562946895207570187

/-! ## A171042.P1642812191625507723

`A222225(eq[0, A007920(n)])`
-/

namespace A171042.P1642812191625507723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171042.P1642812191625507723

/-! ## A171042.P10664853181898216648

`A222225(eq[1, A003415(n)])`
-/

namespace A171042.P10664853181898216648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171042.P10664853181898216648

/-! ## A171042.P1089044646144271320

`A222225(eq[1, A032741(n)])`
-/

namespace A171042.P1089044646144271320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171042.P1089044646144271320

/-! ## A171042.P253448124013364532

`A222225(∑[A054541(n+1)])`
-/

namespace A171042.P253448124013364532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171042.P253448124013364532

/-! ## A171042.P4978043788540279170

`A222225(record[A039649(n+1)])`
-/

namespace A171042.P4978043788540279170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P4978043788540279170

/-! ## A171042.P3215966892266643027

`A222225(record[A111089(n+1)])`
-/

namespace A171042.P3215966892266643027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P3215966892266643027

/-! ## A171042.P6736806205129951632

`A222225(record[A006530(n+2)])`
-/

namespace A171042.P6736806205129951632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P6736806205129951632

/-! ## A171042.P8779510388970532588

`A222225(record[A014963(n+2)])`
-/

namespace A171042.P8779510388970532588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P8779510388970532588

/-! ## A171042.P12147262428868687432

`A222225(record[A020639(n+2)])`
-/

namespace A171042.P12147262428868687432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171042.P12147262428868687432

/-! ## A171042.P15518169231245592477

`A222225(A006093(n+1)+1)`
-/

namespace A171042.P15518169231245592477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A006093 (n + 1) + 1).toNat

end

end A171042.P15518169231245592477

/-! ## A171042.P438269508294458356

`A222225(A001750(n+1)/5)`
-/

namespace A171042.P438269508294458356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat

end

end A171042.P438269508294458356

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

/-! ## A171042.P11306861832177323722

`A222225(A222220(A175770(n+1)))`
-/

namespace A171042.P11306861832177323722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222220 (A175770 (n + 1)).toNat).toNat

end

end A171042.P11306861832177323722

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

/-! ## A171043.P15198301963163605969

`A222232(Δ[A007504(n)])`
-/

namespace A171043.P15198301963163605969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (n + 1) - f1 n).toNat

end

end A171043.P15198301963163605969

/-! ## A171043.P13348001335679971550

`A222232(record[A051698(n)])`
-/

namespace A171043.P13348001335679971550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P13348001335679971550

/-! ## A171043.P10849901050866726004

`A222232(A000040(n+1))`
-/

namespace A171043.P10849901050866726004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A000040 (n + 1)).toNat

end

end A171043.P10849901050866726004

/-! ## A171043.P9061049221359099479

`A222232(A008578(n+2))`
-/

namespace A171043.P9061049221359099479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A008578 (n + 2)).toNat

end

end A171043.P9061049221359099479

/-! ## A171043.P4313633149546457133

`A222232(A182986(n+2))`
-/

namespace A171043.P4313633149546457133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A182986 (n + 2)).toNat

end

end A171043.P4313633149546457133

/-! ## A171043.P2425989540979979299

`A222232(eq[1, A003415(n)])`
-/

namespace A171043.P2425989540979979299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171043.P2425989540979979299

/-! ## A171043.P6384982343439343056

`A222232(record[A006530(n+2)])`
-/

namespace A171043.P6384982343439343056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P6384982343439343056

/-! ## A171043.P2347293257796288333

`A222232(record[A014963(n+2)])`
-/

namespace A171043.P2347293257796288333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P2347293257796288333

/-! ## A171043.P16694525947228404963

`A222232(record[A020639(n+2)])`
-/

namespace A171043.P16694525947228404963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P16694525947228404963

/-! ## A171043.P7063189292853272916

`A222232(record[p?[A004151(n+1)]])`
-/

namespace A171043.P7063189292853272916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P7063189292853272916

/-! ## A171043.P5087072452446254304

`A222232(record[A002322(n+1)+1])`
-/

namespace A171043.P5087072452446254304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171043.P5087072452446254304

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

/-! ## A171043.P11032202139081055853

`A222254(A222233(A171057(n+1)))`
-/

namespace A171043.P11032202139081055853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222233 (A171057 (n + 1)).toNat).toNat

end

end A171043.P11032202139081055853

/-! ## A171043.P12462242662149162744

`A222232(A007504(n+1)-A007504(n))`
-/

namespace A171043.P12462242662149162744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A007504 (n + 1) - A007504 n).toNat

end

end A171043.P12462242662149162744

/-! ## A171043.P6858237952987841535

`A222232(A222254(A171057(A222232(A222232(n+1)))))`
-/

namespace A171043.P6858237952987841535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222254 (A171057 (A222232 (A222232 (n + 1)).toNat).toNat).toNat).toNat

end

end A171043.P6858237952987841535

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

/-! ## A171044.P11219017295205683617

`A222238(record[A051698(n)])`
-/

namespace A171044.P11219017295205683617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171044.P11219017295205683617

/-! ## A171044.P2111341543690498496

`A222238(A000040(n+1))`
-/

namespace A171044.P2111341543690498496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A000040 (n + 1)).toNat

end

end A171044.P2111341543690498496

/-! ## A171044.P3744388209560612064

`A222238(A008578(n+2))`
-/

namespace A171044.P3744388209560612064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A008578 (n + 2)).toNat

end

end A171044.P3744388209560612064

/-! ## A171044.P15236391712981471464

`A222238(A182986(n+2))`
-/

namespace A171044.P15236391712981471464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A182986 (n + 2)).toNat

end

end A171044.P15236391712981471464

/-! ## A171044.P14453937368265612890

`A222238(eq[0, A007920(n)])`
-/

namespace A171044.P14453937368265612890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171044.P14453937368265612890

/-! ## A171044.P5707419190052635546

`A222238(eq[1, A003415(n)])`
-/

namespace A171044.P5707419190052635546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171044.P5707419190052635546

/-! ## A171044.P7320434575953539972

`A222238(eq[1, A032741(n)])`
-/

namespace A171044.P7320434575953539972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171044.P7320434575953539972

/-! ## A171044.P1139060129704755150

`A222238(sqrt(A001248(n+1)))`
-/

namespace A171044.P1139060129704755150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A171044.P1139060129704755150

/-! ## A171044.P7300300741899436187

`A222238(record[A006530(n+2)])`
-/

namespace A171044.P7300300741899436187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171044.P7300300741899436187

/-! ## A171044.P5824030328224160780

`A222238(record[A014963(n+2)])`
-/

namespace A171044.P5824030328224160780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171044.P5824030328224160780

/-! ## A171044.P11739036746111464680

`A222238(record[A020639(n+2)])`
-/

namespace A171044.P11739036746111464680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171044.P11739036746111464680

/-! ## A171044.P7512423633390058110

`A222238(A001748(n+1)/3)`
-/

namespace A171044.P7512423633390058110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A171044.P7512423633390058110

/-! ## A171044.P7189644328848152822

`A222238(record[A000010(n+1)+1])`
-/

namespace A171044.P7189644328848152822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171044.P7189644328848152822

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

/-! ## A171044.P15005429252059678550

`A222254(A222239(A171057(n+1)))`
-/

namespace A171044.P15005429252059678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222239 (A171057 (n + 1)).toNat).toNat

end

end A171044.P15005429252059678550

/-! ## A171044.P10066443285956722969

`A222220(A222225(A175770(n+1)))`
-/

namespace A171044.P10066443285956722969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222225 (A175770 (n + 1)).toNat).toNat

end

end A171044.P10066443285956722969

/-! ## A171044.P12552078694102965802

`A222238(A007504(n+1)-A007504(n))`
-/

namespace A171044.P12552078694102965802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A007504 (n + 1) - A007504 n).toNat

end

end A171044.P12552078694102965802

/-! ## A171044.P18185981171294847479

`A222238(A222254(A171057(A222238(A222238(n+1)))))`
-/

namespace A171044.P18185981171294847479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222254 (A171057 (A222238 (A222238 (n + 1)).toNat).toNat).toNat).toNat

end

end A171044.P18185981171294847479

/-!
# A171045: In the sequence of prime numbers, replace all the '8' digits with '4' and vice versa.

The programs for A171045, there is no canonical definition to state claims against.
-/

/-! ## A171045.P3888265544537578717

`A222243(A000040(n+1))`
-/

namespace A171045.P3888265544537578717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A000040 (n + 1)).toNat

end

end A171045.P3888265544537578717

/-! ## A171045.P2587392822400196076

`A222243(A008578(n+2))`
-/

namespace A171045.P2587392822400196076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A008578 (n + 2)).toNat

end

end A171045.P2587392822400196076

/-! ## A171045.P10995524869615759637

`A222243(A182986(n+2))`
-/

namespace A171045.P10995524869615759637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A182986 (n + 2)).toNat

end

end A171045.P10995524869615759637

/-! ## A171045.P13453582131181608172

`A222244(A222254(A171053(n+1)))`
-/

namespace A171045.P13453582131181608172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222254 (A171053 (n + 1)).toNat).toNat

end

end A171045.P13453582131181608172

/-! ## A171045.P5312743477087231222

`A222254(A222244(A171057(n+1)))`
-/

namespace A171045.P5312743477087231222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222244 (A171057 (n + 1)).toNat).toNat

end

end A171045.P5312743477087231222

/-! ## A171045.P1357587533327632426

`A222243(A222254(A171057(A222243(A222243(n+1)))))`
-/

namespace A171045.P1357587533327632426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222254 (A171057 (A222243 (A222243 (n + 1)).toNat).toNat).toNat).toNat

end

end A171045.P1357587533327632426

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

/-! ## A171046.P16723172362751606343

`A222247(record[A051698(n)])`
-/

namespace A171046.P16723172362751606343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P16723172362751606343

/-! ## A171046.P5324749618617121705

`A222247(A000040(n+1))`
-/

namespace A171046.P5324749618617121705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A000040 (n + 1)).toNat

end

end A171046.P5324749618617121705

/-! ## A171046.P12976683209847794906

`A222247(A008578(n+2))`
-/

namespace A171046.P12976683209847794906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A008578 (n + 2)).toNat

end

end A171046.P12976683209847794906

/-! ## A171046.P16765656339056659181

`A222247(A182986(n+2))`
-/

namespace A171046.P16765656339056659181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A182986 (n + 2)).toNat

end

end A171046.P16765656339056659181

/-! ## A171046.P14748058989501902967

`A222247(eq[1, A003415(n)])`
-/

namespace A171046.P14748058989501902967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171046.P14748058989501902967

/-! ## A171046.P9563582600786372479

`A222247(∑[A054541(n+1)])`
-/

namespace A171046.P9563582600786372479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171046.P9563582600786372479

/-! ## A171046.P7038262793143802418

`A222247(record[A039649(n+1)])`
-/

namespace A171046.P7038262793143802418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P7038262793143802418

/-! ## A171046.P6858468580339754378

`A222247(record[A111089(n+1)])`
-/

namespace A171046.P6858468580339754378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P6858468580339754378

/-! ## A171046.P8994475141977954495

`A222247(record[A006530(n+2)])`
-/

namespace A171046.P8994475141977954495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P8994475141977954495

/-! ## A171046.P17737873374738463102

`A222247(record[A014963(n+2)])`
-/

namespace A171046.P17737873374738463102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P17737873374738463102

/-! ## A171046.P11123575791389131194

`A222247(record[A020639(n+2)])`
-/

namespace A171046.P11123575791389131194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P11123575791389131194

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

/-! ## A171046.P12820219667591176155

`A222254(A222248(A171057(n+1)))`
-/

namespace A171046.P12820219667591176155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222248 (A171057 (n + 1)).toNat).toNat

end

end A171046.P12820219667591176155

/-! ## A171046.P17961093277361100085

`A222247(A007504(n+1)-A007504(n))`
-/

namespace A171046.P17961093277361100085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A007504 (n + 1) - A007504 n).toNat

end

end A171046.P17961093277361100085

/-! ## A171046.P13618062779998117245

`A222247(A222254(A171057(A222247(A222247(n+1)))))`
-/

namespace A171046.P13618062779998117245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222254 (A171057 (A222247 (A222247 (n + 1)).toNat).toNat).toNat).toNat

end

end A171046.P13618062779998117245

/-! ## A171046.P12334186502842375312

`A222247(record[p?[A332204(n)+1]])`
-/

namespace A171046.P12334186502842375312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P12334186502842375312

/-! ## A171046.P3555178191319354656

`A222247(record[p?[A332204(n)]])`
-/

namespace A171046.P3555178191319354656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P3555178191319354656

/-! ## A171046.P15584941084581851472

`A222247(record[p?[A242112(n)]])`
-/

namespace A171046.P15584941084581851472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171046.P15584941084581851472

/-!
# A171047: In the sequence of prime numbers, replace all the '8' digits with '6' and vice versa.

The programs for A171047, there is no canonical definition to state claims against.
-/

/-! ## A171047.P13373844436373826301

`A222250(A000040(n+1))`
-/

namespace A171047.P13373844436373826301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A000040 (n + 1)).toNat

end

end A171047.P13373844436373826301

/-! ## A171047.P5155430118987243918

`A222250(A008578(n+2))`
-/

namespace A171047.P5155430118987243918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A008578 (n + 2)).toNat

end

end A171047.P5155430118987243918

/-! ## A171047.P12439145811262609693

`A222250(A182986(n+2))`
-/

namespace A171047.P12439145811262609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A182986 (n + 2)).toNat

end

end A171047.P12439145811262609693

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

/-! ## A171047.P17662523036659466865

`A222254(A222251(A171057(n+1)))`
-/

namespace A171047.P17662523036659466865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222251 (A171057 (n + 1)).toNat).toNat

end

end A171047.P17662523036659466865

/-! ## A171047.P10549297196199976067

`A222232(A222238(A222230(A222232(A171018(n+1)))))`
-/

namespace A171047.P10549297196199976067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A222230 (A222232 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171047.P10549297196199976067

/-! ## A171047.P5341242013277613828

`A222250(A222254(A171057(A222250(A222250(n+1)))))`
-/

namespace A171047.P5341242013277613828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222254 (A171057 (A222250 (A222250 (n + 1)).toNat).toNat).toNat).toNat

end

end A171047.P5341242013277613828

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

/-! ## A171048.P13480578786655398851

`A222252(record[A051698(n)])`
-/

namespace A171048.P13480578786655398851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171048.P13480578786655398851

/-! ## A171048.P2913243788174561946

`A222252(A000040(n+1))`
-/

namespace A171048.P2913243788174561946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A000040 (n + 1)).toNat

end

end A171048.P2913243788174561946

/-! ## A171048.P6091111163194567797

`A222252(A008578(n+2))`
-/

namespace A171048.P6091111163194567797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A008578 (n + 2)).toNat

end

end A171048.P6091111163194567797

/-! ## A171048.P5666181625179714135

`A222252(A182986(n+2))`
-/

namespace A171048.P5666181625179714135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A182986 (n + 2)).toNat

end

end A171048.P5666181625179714135

/-! ## A171048.P16838327127667756652

`A222252(eq[0, A007920(n)])`
-/

namespace A171048.P16838327127667756652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171048.P16838327127667756652

/-! ## A171048.P9310757867688056324

`A222252(eq[1, A003415(n)])`
-/

namespace A171048.P9310757867688056324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171048.P9310757867688056324

/-! ## A171048.P2440168870395182456

`A222252(eq[n, A062584(n)])`
-/

namespace A171048.P2440168870395182456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171048.P2440168870395182456

/-! ## A171048.P315979759047442551

`A222252(record[A006530(n+2)])`
-/

namespace A171048.P315979759047442551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171048.P315979759047442551

/-! ## A171048.P14022248598056816693

`A222252(record[A014963(n+2)])`
-/

namespace A171048.P14022248598056816693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171048.P14022248598056816693

/-! ## A171048.P9130420353336883899

`A222252(record[A020639(n+2)])`
-/

namespace A171048.P9130420353336883899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171048.P9130420353336883899

/-! ## A171048.P18436691717640525208

`A222253(A222254(A171056(n+1)))`
-/

namespace A171048.P18436691717640525208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222254 (A171056 (n + 1)).toNat).toNat

end

end A171048.P18436691717640525208

/-! ## A171048.P7013610322274937758

`A222254(A222253(A171057(n+1)))`
-/

namespace A171048.P7013610322274937758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 (A171057 (n + 1)).toNat).toNat

end

end A171048.P7013610322274937758

/-! ## A171048.P7070934738388859642

`A222252(A222220(A175770(n+1)))`
-/

namespace A171048.P7070934738388859642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222220 (A175770 (n + 1)).toNat).toNat

end

end A171048.P7070934738388859642

/-! ## A171048.P12580312054919633214

`A222252(A007504(n+1)-A007504(n))`
-/

namespace A171048.P12580312054919633214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A007504 (n + 1) - A007504 n).toNat

end

end A171048.P12580312054919633214

/-! ## A171048.P8050332695025558517

`A222252(A222254(A171057(A222252(A222252(n+1)))))`
-/

namespace A171048.P8050332695025558517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222254 (A171057 (A222252 (A222252 (n + 1)).toNat).toNat).toNat).toNat

end

end A171048.P8050332695025558517

/-!
# A171049: In the sequence of prime numbers, replace all the '9' digits with '0' and vice versa.

The programs for A171049, there is no canonical definition to state claims against.
-/

/-! ## A171049.P11762533122385168126

`A222218(A000040(n+1))`
-/

namespace A171049.P11762533122385168126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A000040 (n + 1)).toNat

end

end A171049.P11762533122385168126

/-! ## A171049.P2110218719355319126

`A222218(A008578(n+2))`
-/

namespace A171049.P2110218719355319126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A008578 (n + 2)).toNat

end

end A171049.P2110218719355319126

/-! ## A171049.P13894848157339453320

`A222218(A182986(n+2))`
-/

namespace A171049.P13894848157339453320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A182986 (n + 2)).toNat

end

end A171049.P13894848157339453320

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

/-! ## A171050.P8398941246871481305

`A222226(record[A051698(n)])`
-/

namespace A171050.P8398941246871481305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171050.P8398941246871481305

/-! ## A171050.P16850544190530270930

`A222226(A000040(n+1))`
-/

namespace A171050.P16850544190530270930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A000040 (n + 1)).toNat

end

end A171050.P16850544190530270930

/-! ## A171050.P1736269708230174018

`A104696(A171037(n+1))`
-/

namespace A171050.P1736269708230174018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A171037 (n + 1)).toNat

end

end A171050.P1736269708230174018

/-! ## A171050.P10620374141622276077

`A222226(A008578(n+2))`
-/

namespace A171050.P10620374141622276077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A008578 (n + 2)).toNat

end

end A171050.P10620374141622276077

/-! ## A171050.P6611182258896264681

`A222226(A182986(n+2))`
-/

namespace A171050.P6611182258896264681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A182986 (n + 2)).toNat

end

end A171050.P6611182258896264681

/-! ## A171050.P2724599509346448406

`A222226(eq[1, A003415(n)])`
-/

namespace A171050.P2724599509346448406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P2724599509346448406

/-! ## A171050.P18258955405411490784

`A222226(eq[1, A032741(n)])`
-/

namespace A171050.P18258955405411490784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P18258955405411490784

/-! ## A171050.P6555359015375948970

`A222226(eq[n, A062584(n)])`
-/

namespace A171050.P6555359015375948970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P6555359015375948970

/-! ## A171050.P16857959529256050598

`A222226(eq[n, A064502(n)])`
-/

namespace A171050.P16857959529256050598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P16857959529256050598

/-! ## A171050.P10239665728885500810

`A222226(eq[n, A327420(n)])`
-/

namespace A171050.P10239665728885500810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P10239665728885500810

/-! ## A171050.P471975733327584368

`A222226(record[A006530(n+2)])`
-/

namespace A171050.P471975733327584368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171050.P471975733327584368

/-! ## A171050.P1151184290454513568

`A222226(record[A014963(n+2)])`
-/

namespace A171050.P1151184290454513568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171050.P1151184290454513568

/-! ## A171050.P3030292713175245927

`A222226(record[A020639(n+2)])`
-/

namespace A171050.P3030292713175245927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171050.P3030292713175245927

/-! ## A171050.P18226732879980613177

`A222226(eq[0, n-A007918(n)])`
-/

namespace A171050.P18226732879980613177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P18226732879980613177

/-! ## A171050.P13409799192749799634

`A222226(eq[n, A038700(n+1)])`
-/

namespace A171050.P13409799192749799634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P13409799192749799634

/-! ## A171050.P13551489714221402325

`A222226(eq[0, n-A051697(n)])`
-/

namespace A171050.P13551489714221402325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P13551489714221402325

/-! ## A171050.P16860860794410567886

`A222226(eq[n, A057637(n+1)])`
-/

namespace A171050.P16860860794410567886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P16860860794410567886

/-! ## A171050.P17384337995349061777

`A222226(eq[n, A093868(n+1)])`
-/

namespace A171050.P17384337995349061777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171050.P17384337995349061777

/-! ## A171050.P13430350330403017270

`A222226(eq[1, n/A007918(n)])`
-/

namespace A171050.P13430350330403017270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007918 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A171050.P13430350330403017270

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

/-! ## A171051.P13354643502813185520

`A222233(record[A051698(n)])`
-/

namespace A171051.P13354643502813185520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171051.P13354643502813185520

/-! ## A171051.P4146935607704351047

`A222233(A000040(n+1))`
-/

namespace A171051.P4146935607704351047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A000040 (n + 1)).toNat

end

end A171051.P4146935607704351047

/-! ## A171051.P5436341911594150326

`A222233(A008578(n+2))`
-/

namespace A171051.P5436341911594150326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A008578 (n + 2)).toNat

end

end A171051.P5436341911594150326

/-! ## A171051.P15375653239193098440

`A222233(A182986(n+2))`
-/

namespace A171051.P15375653239193098440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A182986 (n + 2)).toNat

end

end A171051.P15375653239193098440

/-! ## A171051.P9790152976884873669

`A222233(eq[0, A007920(n)])`
-/

namespace A171051.P9790152976884873669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171051.P9790152976884873669

/-! ## A171051.P577305313315233014

`A222233(eq[1, A003415(n)])`
-/

namespace A171051.P577305313315233014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171051.P577305313315233014

/-! ## A171051.P6157234570401776410

`A222233(eq[1, A032741(n)])`
-/

namespace A171051.P6157234570401776410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171051.P6157234570401776410

/-! ## A171051.P15940739716833194804

`A222233(record[A006530(n+2)])`
-/

namespace A171051.P15940739716833194804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171051.P15940739716833194804

/-! ## A171051.P13743328881619769479

`A222233(record[A014963(n+2)])`
-/

namespace A171051.P13743328881619769479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171051.P13743328881619769479

/-! ## A171051.P15241272494886866

`A222233(record[A020639(n+2)])`
-/

namespace A171051.P15241272494886866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171051.P15241272494886866

/-! ## A171051.P4932435080290505982

`A222233(p?[record[A004151(n+1)]])`
-/

namespace A171051.P4932435080290505982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171051.P4932435080290505982

/-! ## A171051.P12451879128197815075

`A222233(p?[record[A007947(n+1)]])`
-/

namespace A171051.P12451879128197815075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171051.P12451879128197815075

/-! ## A171051.P8471149048471987037

`A222233(comp[A018252(n+1)-1]+1)`
-/

namespace A171051.P8471149048471987037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171051.P8471149048471987037

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

/-! ## A171051.P2806548154269100698

`A222233(A007504(n+1)-A007504(n))`
-/

namespace A171051.P2806548154269100698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A007504 (n + 1) - A007504 n).toNat

end

end A171051.P2806548154269100698

/-! ## A171051.P16142895265525792716

`A222233(A222254(A171057(A222233(A222233(n+1)))))`
-/

namespace A171051.P16142895265525792716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222254 (A171057 (A222233 (A222233 (n + 1)).toNat).toNat).toNat).toNat

end

end A171051.P16142895265525792716

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

/-! ## A171052.P5675870029311798166

`A222239(record[A051698(n)])`
-/

namespace A171052.P5675870029311798166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171052.P5675870029311798166

/-! ## A171052.P3181415250325522791

`A222239(A000040(n+1))`
-/

namespace A171052.P3181415250325522791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A000040 (n + 1)).toNat

end

end A171052.P3181415250325522791

/-! ## A171052.P429763609334239971

`A222239(A008578(n+2))`
-/

namespace A171052.P429763609334239971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A008578 (n + 2)).toNat

end

end A171052.P429763609334239971

/-! ## A171052.P9181456898075050140

`A222239(A182986(n+2))`
-/

namespace A171052.P9181456898075050140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A182986 (n + 2)).toNat

end

end A171052.P9181456898075050140

/-! ## A171052.P8936876300856920189

`A222239(eq[1, A003415(n)])`
-/

namespace A171052.P8936876300856920189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171052.P8936876300856920189

/-! ## A171052.P7969147034776414038

`A222239(∑[A054541(n+1)])`
-/

namespace A171052.P7969147034776414038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171052.P7969147034776414038

/-! ## A171052.P234781297116959304

`A222239(record[A039649(n+1)])`
-/

namespace A171052.P234781297116959304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171052.P234781297116959304

/-! ## A171052.P9917698410849053380

`A222239(record[A006530(n+2)])`
-/

namespace A171052.P9917698410849053380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171052.P9917698410849053380

/-! ## A171052.P8763804693780477423

`A222239(record[A014963(n+2)])`
-/

namespace A171052.P8763804693780477423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171052.P8763804693780477423

/-! ## A171052.P11089313996756306167

`A222239(record[A020639(n+2)])`
-/

namespace A171052.P11089313996756306167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171052.P11089313996756306167

/-! ## A171052.P13944508426896028797

`A222239(A006093(n+1)+1)`
-/

namespace A171052.P13944508426896028797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A006093 (n + 1) + 1).toNat

end

end A171052.P13944508426896028797

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

/-! ## A171052.P15005831493771452308

`A222239(A007504(n+1)-A007504(n))`
-/

namespace A171052.P15005831493771452308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A007504 (n + 1) - A007504 n).toNat

end

end A171052.P15005831493771452308

/-! ## A171052.P11152501513762703413

`A222239(A222254(A171057(A222239(A222239(n+1)))))`
-/

namespace A171052.P11152501513762703413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222254 (A171057 (A222239 (A222239 (n + 1)).toNat).toNat).toNat).toNat

end

end A171052.P11152501513762703413

/-! ## A171052.P6855780385133443350

`A222239(A223489(n+1)+A223488(n+1))`
-/

namespace A171052.P6855780385133443350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A171052.P6855780385133443350

/-!
# A171053: In the sequence of prime numbers, replace all the '9' digits with '4' and vice versa.

The programs for A171053, there is no canonical definition to state claims against.
-/

/-! ## A171053.P2399191953489229145

`A222244(A000040(n+1))`
-/

namespace A171053.P2399191953489229145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A000040 (n + 1)).toNat

end

end A171053.P2399191953489229145

/-! ## A171053.P6772503415875341127

`A222244(A008578(n+2))`
-/

namespace A171053.P6772503415875341127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A008578 (n + 2)).toNat

end

end A171053.P6772503415875341127

/-! ## A171053.P9937557604642394576

`A222244(A182986(n+2))`
-/

namespace A171053.P9937557604642394576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A182986 (n + 2)).toNat

end

end A171053.P9937557604642394576

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

/-! ## A171053.P9144881487140071646

`A222244(A222254(A171057(A222244(A222244(n+1)))))`
-/

namespace A171053.P9144881487140071646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222254 (A171057 (A222244 (A222244 (n + 1)).toNat).toNat).toNat).toNat

end

end A171053.P9144881487140071646

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

/-! ## A171054.P14469142872088540180

`A222248(record[A051698(n)])`
-/

namespace A171054.P14469142872088540180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P14469142872088540180

/-! ## A171054.P8292230604064537263

`A222248(A000040(n+1))`
-/

namespace A171054.P8292230604064537263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A000040 (n + 1)).toNat

end

end A171054.P8292230604064537263

/-! ## A171054.P16741555247897417981

`A222248(A008578(n+2))`
-/

namespace A171054.P16741555247897417981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A008578 (n + 2)).toNat

end

end A171054.P16741555247897417981

/-! ## A171054.P16336690422168466921

`A222248(A182986(n+2))`
-/

namespace A171054.P16336690422168466921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A182986 (n + 2)).toNat

end

end A171054.P16336690422168466921

/-! ## A171054.P13732286166666808848

`A222248(eq[1, A032741(n)])`
-/

namespace A171054.P13732286166666808848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171054.P13732286166666808848

/-! ## A171054.P359707945574068979

`A222248(∑[A054541(n+1)])`
-/

namespace A171054.P359707945574068979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171054.P359707945574068979

/-! ## A171054.P13741874791474069204

`A222248(record[A039649(n+1)])`
-/

namespace A171054.P13741874791474069204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P13741874791474069204

/-! ## A171054.P13135477862896047980

`A222248(record[A111089(n+1)])`
-/

namespace A171054.P13135477862896047980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P13135477862896047980

/-! ## A171054.P10641917805453319622

`A222248(record[A006530(n+2)])`
-/

namespace A171054.P10641917805453319622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P10641917805453319622

/-! ## A171054.P6497823565234534728

`A222248(record[A014963(n+2)])`
-/

namespace A171054.P6497823565234534728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P6497823565234534728

/-! ## A171054.P15414826636677211852

`A222248(record[A020639(n+2)])`
-/

namespace A171054.P15414826636677211852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P15414826636677211852

/-! ## A171054.P12954817089096241524

`A222248(A006093(n+1)+1)`
-/

namespace A171054.P12954817089096241524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A006093 (n + 1) + 1).toNat

end

end A171054.P12954817089096241524

/-! ## A171054.P11968053939216336974

`A222248(p?[record[A004151(n+1)]])`
-/

namespace A171054.P11968053939216336974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171054.P11968053939216336974

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

/-! ## A171054.P14361881962772562446

`A222248(A007504(n+1)-A007504(n))`
-/

namespace A171054.P14361881962772562446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A007504 (n + 1) - A007504 n).toNat

end

end A171054.P14361881962772562446

/-! ## A171054.P11312317823535982356

`A222248(A222254(A171057(A222248(A222248(n+1)))))`
-/

namespace A171054.P11312317823535982356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222254 (A171057 (A222248 (A222248 (n + 1)).toNat).toNat).toNat).toNat

end

end A171054.P11312317823535982356

/-! ## A171054.P5616635329672183810

`A222248(record[p?[A332204(n)+1]])`
-/

namespace A171054.P5616635329672183810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P5616635329672183810

/-! ## A171054.P15357709634729131864

`A222248(record[p?[A332204(n)]])`
-/

namespace A171054.P15357709634729131864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171054.P15357709634729131864

/-!
# A171055: In the sequence of prime numbers, replace all the '9' digits with '6' and vice versa.

The programs for A171055, there is no canonical definition to state claims against.
-/

/-! ## A171055.P3064187926682524243

`A222251(A000040(n+1))`
-/

namespace A171055.P3064187926682524243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A000040 (n + 1)).toNat

end

end A171055.P3064187926682524243

/-! ## A171055.P11181993641200440605

`A222251(A008578(n+2))`
-/

namespace A171055.P11181993641200440605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A008578 (n + 2)).toNat

end

end A171055.P11181993641200440605

/-! ## A171055.P16655920349643854071

`A222251(A182986(n+2))`
-/

namespace A171055.P16655920349643854071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A182986 (n + 2)).toNat

end

end A171055.P16655920349643854071

/-! ## A171055.P12583066354580489712

`A222250(A222254(A171047(n+1)))`
-/

namespace A171055.P12583066354580489712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222254 (A171047 (n + 1)).toNat).toNat

end

end A171055.P12583066354580489712

/-! ## A171055.P11273325711690414416

`A222248(A222245(A171054(n+1)))`
-/

namespace A171055.P11273325711690414416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222245 (A171054 (n + 1)).toNat).toNat

end

end A171055.P11273325711690414416

/-! ## A171055.P15757339882491483116

`A222254(A222250(A171057(n+1)))`
-/

namespace A171055.P15757339882491483116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222250 (A171057 (n + 1)).toNat).toNat

end

end A171055.P15757339882491483116

/-! ## A171055.P10083625336959779555

`A222251(A222254(A171057(A222251(A222251(n+1)))))`
-/

namespace A171055.P10083625336959779555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222254 (A171057 (A222251 (A222251 (n + 1)).toNat).toNat).toNat).toNat

end

end A171055.P10083625336959779555

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

/-! ## A171056.P6349551097020146794

`A222253(Δ[A007504(n)])`
-/

namespace A171056.P6349551097020146794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (n + 1) - f1 n).toNat

end

end A171056.P6349551097020146794

/-! ## A171056.P17284529638126013558

`A222253(record[A051698(n)])`
-/

namespace A171056.P17284529638126013558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171056.P17284529638126013558

/-! ## A171056.P7406386069354800187

`A222253(A000040(n+1))`
-/

namespace A171056.P7406386069354800187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A000040 (n + 1)).toNat

end

end A171056.P7406386069354800187

/-! ## A171056.P15471281266714505341

`A222253(A008578(n+2))`
-/

namespace A171056.P15471281266714505341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A008578 (n + 2)).toNat

end

end A171056.P15471281266714505341

/-! ## A171056.P129112595388457378

`A222253(A182986(n+2))`
-/

namespace A171056.P129112595388457378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A182986 (n + 2)).toNat

end

end A171056.P129112595388457378

/-! ## A171056.P7875851210951940935

`A222253(eq[1, A032741(n)])`
-/

namespace A171056.P7875851210951940935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171056.P7875851210951940935

/-! ## A171056.P18384951612470977961

`A222253(eq[n, A062584(n)])`
-/

namespace A171056.P18384951612470977961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171056.P18384951612470977961

/-! ## A171056.P503827914773128005

`A222253(record[A006530(n+2)])`
-/

namespace A171056.P503827914773128005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171056.P503827914773128005

/-! ## A171056.P15887520663385874865

`A222253(record[A014963(n+2)])`
-/

namespace A171056.P15887520663385874865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171056.P15887520663385874865

/-! ## A171056.P14443437167833859098

`A222253(record[A020639(n+2)])`
-/

namespace A171056.P14443437167833859098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171056.P14443437167833859098

/-! ## A171056.P461871506026941372

`A222253(record[p?[A004151(n+1)]])`
-/

namespace A171056.P461871506026941372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171056.P461871506026941372

/-! ## A171056.P8778196389874228824

`A222253(comp[A018252(n+1)-1]+1)`
-/

namespace A171056.P8778196389874228824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171056.P8778196389874228824

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

/-! ## A171056.P9889873429857813979

`A222253(A007504(n+1)-A007504(n))`
-/

namespace A171056.P9889873429857813979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A007504 (n + 1) - A007504 n).toNat

end

end A171056.P9889873429857813979

/-! ## A171056.P14329271754177165480

`A222253(A222232(A222238(A222232(A171018(n+1)))))`
-/

namespace A171056.P14329271754177165480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222232 (A222238 (A222232 (A171018 (n + 1)).toNat).toNat).toNat).toNat

end

end A171056.P14329271754177165480

/-! ## A171056.P6261404743272125608

`A222253(A222254(A171057(A222253(A222253(n+1)))))`
-/

namespace A171056.P6261404743272125608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222254 (A171057 (A222253 (A222253 (n + 1)).toNat).toNat).toNat).toNat

end

end A171056.P6261404743272125608

/-! ## A171056.P1822983944164064884

`A222253(A223489(n+1)+A223488(n+1))`
-/

namespace A171056.P1822983944164064884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A171056.P1822983944164064884

/-!
# A171057: In the sequence of prime numbers, replace all the '9' digits with '8' and vice versa.

The programs for A171057, there is no canonical definition to state claims against.
-/

/-! ## A171057.P7777353364409916257

`A222254(A000040(n+1))`
-/

namespace A171057.P7777353364409916257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A000040 (n + 1)).toNat

end

end A171057.P7777353364409916257

/-! ## A171057.P18423702221034098298

`A222254(A008578(n+2))`
-/

namespace A171057.P18423702221034098298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A008578 (n + 2)).toNat

end

end A171057.P18423702221034098298

/-! ## A171057.P4372015798796982286

`A222254(A182986(n+2))`
-/

namespace A171057.P4372015798796982286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A182986 (n + 2)).toNat

end

end A171057.P4372015798796982286

/-! ## A171057.P7822174018176338233

`A222254(eq[n, A062584(n)])`
-/

namespace A171057.P7822174018176338233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171057.P7822174018176338233

/-! ## A171057.P15684188964030880482

`A222254(eq[n, A064502(n)])`
-/

namespace A171057.P15684188964030880482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171057.P15684188964030880482

/-! ## A171057.P10534075522058697663

`A222254(eq[n, A038700(n+1)])`
-/

namespace A171057.P10534075522058697663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171057.P10534075522058697663

/-! ## A171057.P4186833359616099163

`A222254(eq[n, A093868(n+1)])`
-/

namespace A171057.P4186833359616099163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171057.P4186833359616099163

/-! ## A171057.P2012578917148913147

`A222254(eq[n, A000010(n+1)]+1)`
-/

namespace A171057.P2012578917148913147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171057.P2012578917148913147

/-! ## A171057.P7668176826028759432

`A222254(A035043(A171015(n+1)))`
-/

namespace A171057.P7668176826028759432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A035043 (A171015 (n + 1)).toNat).toNat

end

end A171057.P7668176826028759432

/-! ## A171057.P16533935513227038102

`A222254(A035044(A171018(n+1)))`
-/

namespace A171057.P16533935513227038102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A035044 (A171018 (n + 1)).toNat).toNat

end

end A171057.P16533935513227038102

/-! ## A171057.P848475913340745541

`A222254(A222221(A171020(n+1)))`
-/

namespace A171057.P848475913340745541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222221 (A171020 (n + 1)).toNat).toNat

end

end A171057.P848475913340745541

/-! ## A171057.P7866014382612391752

`A222254(A222228(A171021(n+1)))`
-/

namespace A171057.P7866014382612391752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222228 (A171021 (n + 1)).toNat).toNat

end

end A171057.P7866014382612391752

/-! ## A171057.P5894573201049675977

`A222254(A222222(A171024(n+1)))`
-/

namespace A171057.P5894573201049675977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222222 (A171024 (n + 1)).toNat).toNat

end

end A171057.P5894573201049675977

/-! ## A171057.P12272290590844943802

`A222254(A222234(A171022(n+1)))`
-/

namespace A171057.P12272290590844943802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222234 (A171022 (n + 1)).toNat).toNat

end

end A171057.P12272290590844943802

/-! ## A171057.P9977841618545359434

`A222254(A222229(A171025(n+1)))`
-/

namespace A171057.P9977841618545359434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222229 (A171025 (n + 1)).toNat).toNat

end

end A171057.P9977841618545359434

/-! ## A171057.P6137191170160037113

`A222254(A222235(A171026(n+1)))`
-/

namespace A171057.P6137191170160037113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222235 (A171026 (n + 1)).toNat).toNat

end

end A171057.P6137191170160037113

/-! ## A171057.P14631738068179131147

`A222254(A222223(A171029(n+1)))`
-/

namespace A171057.P14631738068179131147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222223 (A171029 (n + 1)).toNat).toNat

end

end A171057.P14631738068179131147

/-! ## A171057.P2861670330032421890

`A222254(A222240(A171027(n+1)))`
-/

namespace A171057.P2861670330032421890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222240 (A171027 (n + 1)).toNat).toNat

end

end A171057.P2861670330032421890

/-! ## A171057.P6345557453761065340

`A222254(A222230(A171030(n+1)))`
-/

namespace A171057.P6345557453761065340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222230 (A171030 (n + 1)).toNat).toNat

end

end A171057.P6345557453761065340

/-! ## A171057.P14164009098617597830

`A222254(A222236(A171031(n+1)))`
-/

namespace A171057.P14164009098617597830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222236 (A171031 (n + 1)).toNat).toNat

end

end A171057.P14164009098617597830

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

/-! ## A171061.P14567508695578421912

`A171062(A187829(n+1)+A165560(A239880(n)))`
-/

namespace A171061.P14567508695578421912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171062 (A187829 (n + 1) + A165560 (A239880 n).toNat).toNat

end

end A171061.P14567508695578421912

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

/-! ## A171063.P1985310044930043433

`A219551(A088398(n+1))`
-/

namespace A171063.P1985310044930043433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219551 (A088398 (n + 1)).toNat

end

end A171063.P1985310044930043433

/-!
# A171064: G.f.: -x*(x-1)*(1+x)/(1-x-7*x^2-x^3+x^4).

The programs for A171064, the canonical program `A171064.P9862448793497247171` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171064 has offset 0).

The definition of A171064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171064.P9862448793497247171

`a(n-1)+7*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A171065, the canonical program `A171065.P18020595071575170545` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171065 has offset 0).

The definition of A171065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171065.P18020595071575170545

`a(n-1)+8*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A171066, the canonical program `A171066.P13067817043467343805` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171066 has offset 0).

The definition of A171066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-9x^2-x^3+x^4))` (program `A171066.P13067817043467343805`, by `A171066.P13067817043467343805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171066.P13067817043467343805

`ogf((x-x^3)/(1-x-9x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A171067, the canonical program `A171067.P9536682719250256628` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171067 has offset 0).

The definition of A171067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-10x^2-x^3+x^4))` (program `A171067.P9536682719250256628`, by `A171067.P9536682719250256628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171067.P9536682719250256628

`ogf((x-x^3)/(1-x-10x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A171067.P2106839219819738338

`A007094(A171065(n*A072170(n)))`
-/

namespace A171067.P2106839219819738338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A171065 ((n : ℤ) * A072170 n).toNat).toNat

end

end A171067.P2106839219819738338

namespace A171067

/-- `A007094(A171065(n*A072170(n)))` -/
def P2106839219819738338.Spec : Prop :=
  ∀ n, P2106839219819738338.a n = A171067 n

end A171067

/-!
# A171068: Expansion of g.f. x*(1 - x)*(1 + x)/(1 - x - 11*x^2 - x^3 + x^4).

The programs for A171068, the canonical program `A171068.P386289281772511071` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171068 has offset 0).

The definition of A171068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x-11x^2-x^3+x^4))` (program `A171068.P386289281772511071`, by `A171068.P386289281772511071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171068.P386289281772511071

`ogf((x-x^3)/(1-x-11x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C025`.
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

The programs for A171069, the canonical program `A171069.P5568525462411660648` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171069 has offset 0).

The definition of A171069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171069.P5568525462411660648

`a(n-1)+12*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=12`

The canonical program, it is in `Seq.B000.C025`.
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

/-! ## A171070.P455954690084194547

`record[A178482(A000265(n+1))]`
-/

namespace A171070.P455954690084194547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171070.P455954690084194547

namespace A171070

/-- `record[A178482(A000265(n+1))]` -/
def P455954690084194547.Spec : Prop :=
  ∀ n, P455954690084194547.a n = A171070 (n + 1)

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
  simp only [A171070, Nat.add_sub_cancel, A171070.P9756894020646644334.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A036796, A036796.P3277589454516055024.a, A062879, A062879.P8862703960269035905.a, A178482, A178482.P3084981656249753860.f1, A178482.P3084981656249753860.a, A004275, A004275.P5432371984586133349.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
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
  simp only [A171070, Nat.add_sub_cancel, A171070.P3784263570376696083.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A036795, A036795.P10115071211355073936.a, A062877, A062877.P13716015760311910933.a, A178482, A178482.P3084981656249753860.f1, A178482.P3084981656249753860.a, A004275, A004275.P5432371984586133349.a, A036796, A036796.P3277589454516055024.a, A062879, A062879.P8862703960269035905.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
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
  simp only [A171070, Nat.add_sub_cancel, A171070.P13656336013248588630.a, A171070.P13316125912663666615.f1, A171070.P13316125912663666615.a, A062877, A062877.P13716015760311910933.a, A062879, A062879.P8862703960269035905.a, A178482, A178482.P3084981656249753860.f1, A178482.P3084981656249753860.a, A004275, A004275.P5432371984586133349.a, A036796, A036796.P3277589454516055024.a, A169986, A169986.P10622536737824008834.a, SequenceMachineLib.memo_apply]
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

/-!
# A171071: A bisection of A178482.

The programs for A171071, the canonical program `A171071.P10423908267440821586` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171071 has offset 1).

The definition of A171071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171071.P10423908267440821586

`∑[A000032(val((n+1)², 2))+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171071

/-- `∑[A000032(val((n+1)², 2))+1]` -/
def P10423908267440821586.Spec : Prop :=
  ∀ n, P10423908267440821586.a n = A171071 (n + 1)

theorem P10423908267440821586.correct : P10423908267440821586.Spec := by
  intro n
  simp only [A171071, Nat.add_sub_cancel]

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

/-! ## A171071.P4265534109758488453

`A171070(n+2)-1`
-/

namespace A171071.P4265534109758488453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 2) - 1

end

end A171071.P4265534109758488453

namespace A171071

/-- `A171070(n+2)-1` -/
def P4265534109758488453.Spec : Prop :=
  ∀ n, P4265534109758488453.a n = A171071 (n + 1)

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

/-! ## A171071.P7754412497417012077

`∩[A050140(n+1)+2, A178482(n+1)]`
-/

namespace A171071.P7754412497417012077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171071.P7754412497417012077

namespace A171071

/-- `∩[A050140(n+1)+2, A178482(n+1)]` -/
def P7754412497417012077.Spec : Prop :=
  ∀ n, (P7754412497417012077.a n : ℤ) = A171071 (n + 1)

end A171071

/-!
# A171074: A115112 with initial term changed from 0 to 1.

The programs for A171074, the canonical program `A171074.P13942206211822107705` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171074 has offset 1).

The definition of A171074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A171074.P13942206211822107705

`record[Δ[A081668(n)]]`

The canonical program, it is in `Seq.B002.C004`.
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

/-! ## A171074.P5715927934215417065

`2*A001700(n)-A036453(n+1)`
-/

namespace A171074.P5715927934215417065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n - A036453 (n + 1)

end

end A171074.P5715927934215417065

namespace A171074

/-- `2*A001700(n)-A036453(n+1)` -/
def P5715927934215417065.Spec : Prop :=
  ∀ n, P5715927934215417065.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P7835996929732198472

`A000984(n+1)-A040001(2*n)`
-/

namespace A171074.P7835996929732198472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A040001 (2 * n)

end

end A171074.P7835996929732198472

namespace A171074

/-- `A000984(n+1)-A040001(2*n)` -/
def P7835996929732198472.Spec : Prop :=
  ∀ n, P7835996929732198472.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P6159544513779950432

`A000984(n+1)-A280560(2*n)`
-/

namespace A171074.P6159544513779950432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A280560 (2 * n)

end

end A171074.P6159544513779950432

namespace A171074

/-- `A000984(n+1)-A280560(2*n)` -/
def P6159544513779950432.Spec : Prop :=
  ∀ n, P6159544513779950432.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P11995860206187778053

`A000984(n+1)-A176591(2*n+1)`
-/

namespace A171074.P11995860206187778053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A176591 (2 * n + 1)

end

end A171074.P11995860206187778053

namespace A171074

/-- `A000984(n+1)-A176591(2*n+1)` -/
def P11995860206187778053.Spec : Prop :=
  ∀ n, P11995860206187778053.a n = A171074 (n + 1)

end A171074

/-! ## A171074.P13430399152382370292

`A000984(n+1)-A060632(A001316(n))`
-/

namespace A171074.P13430399152382370292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A060632 (A001316 n).toNat

end

end A171074.P13430399152382370292

namespace A171074

/-- `A000984(n+1)-A060632(A001316(n))` -/
def P13430399152382370292.Spec : Prop :=
  ∀ n, P13430399152382370292.a n = A171074 (n + 1)

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

/-! ## A171080.P3929900553793577317

`∏[A172087(2*n)]`
-/

namespace A171080.P3929900553793577317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172087 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171080.P3929900553793577317

namespace A171080

/-- `∏[A172087(2*n)]` -/
def P3929900553793577317.Spec : Prop :=
  ∀ n, P3929900553793577317.a n = A171080 n

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

/-! ## A171086.P10211214686109619966

`A273863(n+1)+1`
-/

namespace A171086.P10211214686109619966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273863 (n + 1) + 1

end

end A171086.P10211214686109619966

/-!
# A171088: To find 3 consecutive integers in the sequence, you have to take 4 consecutive terms, no more and no less.

The programs for A171088, the canonical program `A171088.P8633700537560053784` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171088 has offset 0).

The definition of A171088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171088.P8633700537560053784

`1+a(n-3)` with `a(0)=1, a(1)=3, a(2)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171088

/-- `1+a(n-3)` -/
def P8633700537560053784.Spec : Prop :=
  ∀ n, (P8633700537560053784.a n : ℤ) = A171088 n

theorem P8633700537560053784.correct : P8633700537560053784.Spec := by
  intro n
  simp only [A171088]

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

/-! ## A171088.P11781399412186753034

`A226576(Δ[A226576(n)]+n)`
-/

namespace A171088.P11781399412186753034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226576 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A171088.P11781399412186753034

namespace A171088

/-- `A226576(Δ[A226576(n)]+n)` -/
def P11781399412186753034.Spec : Prop :=
  ∀ n, P11781399412186753034.a n = A171088 n

end A171088

/-!
# A171089: a(n) = 2*(Lucas(n)^2 - (-1)^n).

The programs for A171089, the canonical program `A171089.P16132108036230242751` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171089 has offset 0).

The definition of A171089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(A000032(n)²-(-1)^n)` (program `A171089.P16132108036230242751`, by `A171089.P16132108036230242751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

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

The canonical program, it is in `Seq.B001.C007`.
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

/-! ## A171089.P13343886648061760097

`ogf((-6+8x+4x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A171089.P13343886648061760097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -8, -4] [1, -2, -2, 1] n

end

end A171089.P13343886648061760097

namespace A171089

/-- `ogf((-6+8x+4x^2)/(-1+2x+2x^2-x^3))` -/
def P13343886648061760097.Spec : Prop :=
  ∀ n, P13343886648061760097.a n = A171089 n

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

/-! ## A171092.P13839218587109046827

`A265757(n+1)+2`
-/

namespace A171092.P13839218587109046827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265757 (n + 1) + 2

end

end A171092.P13839218587109046827

/-! ## A171092.P2612345804390999360

`gcd(6, A002025(n+1))`
-/

namespace A171092.P2612345804390999360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A002025 (n + 1))

end

end A171092.P2612345804390999360

/-! ## A171092.P13218596935986774229

`A002046(n+1)%2+2`
-/

namespace A171092.P13218596935986774229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002046 (n + 1)) 2 + 2

end

end A171092.P13218596935986774229

/-! ## A171092.P1012628717963749921

`A020639(A002025(n+1)%A298016(n+4))`
-/

namespace A171092.P1012628717963749921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A002025 (n + 1)) (A298016 (n + 4))).toNat

end

end A171092.P1012628717963749921

/-! ## A171092.P5411483916854199749

`A010693(A002025(n+1)%A320197(n))`
-/

namespace A171092.P5411483916854199749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (Int.tmod (A002025 (n + 1)) (A320197 n)).toNat

end

end A171092.P5411483916854199749

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

/-! ## A171092.P10832688750513586056

`A020639(A002025(n+1)/A180326(n+1))`
-/

namespace A171092.P10832688750513586056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A002025 (n + 1) : ℚ) / (A180326 (n + 1) : ℚ))).toNat

end

end A171092.P10832688750513586056

/-!
# A171096: Solutions to the equation M(n) = -1 (M = Mertens's function A002321).

The programs for A171096, the canonical program `A171096.P5276553587431167090` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171096 has offset 1).

The definition of A171096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171096.P5276553587431167090

`eq[0, A008683(n)+a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
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

The programs for A171097, the canonical program `A171097.P12779293416577231278` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171097 has offset 1).

The definition of A171097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171097.P12779293416577231278

`eq[0, A008683(n)+a(n-1)]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C007`.
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

The programs for A171098, the canonical program `A171098.P4885253993403503157` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171098 has offset 1).

The definition of A171098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171098.P4885253993403503157

`eq[0, A008683(n)+a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C007`.
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

/-! ## A171099.P2686210283963844719

`A105700(or(A194700(n), A216817(n)))`
-/

namespace A171099.P2686210283963844719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (Int.lor (A194700 n) (A216817 n)).toNat

end

end A171099.P2686210283963844719

