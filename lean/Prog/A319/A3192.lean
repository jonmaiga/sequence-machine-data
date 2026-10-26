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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A319200: a(n) = -(A(n) - A(n-1)) where A(n) = A057597(n+1), for n >= 0.

The programs for A319200, the canonical program `A319200.P16183584655872643402` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319200 has offset 0).

The definition of A319200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319200.P1882560134056792452

`ogf((-x+x^2)/(1+x+x^2-x^3))`
-/

namespace A319200.P1882560134056792452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 1] [1, 1, 1, -1] n

end

end A319200.P1882560134056792452

namespace A319200

/-- `ogf((-x+x^2)/(1+x+x^2-x^3))` -/
def P1882560134056792452.Spec : Prop :=
  ∀ n, P1882560134056792452.a n = A319200 n

end A319200

/-! ## A319200.P16183584655872643402

`2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=2, a(3)=-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319200

/-- `2*a(n-3)-a(n-4)` -/
def P16183584655872643402.Spec : Prop :=
  ∀ n, P16183584655872643402.a n = A319200 n

theorem P16183584655872643402.correct : P16183584655872643402.Spec := by
  intro n
  simp only [A319200]

end A319200

/-! ## A319200.P3198192589470621759

`a(n-3)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A319200.P3198192589470621759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n a =>
  a (n - 3) - (a (n - 1) + a (n - 2))

end

end A319200.P3198192589470621759

namespace A319200

/-- `a(n-3)-(a(n-1)+a(n-2))` -/
def P3198192589470621759.Spec : Prop :=
  ∀ n, P3198192589470621759.a n = A319200 n

end A319200

/-! ## A319200.P2812226101512952649

`a(n-3)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A319200.P2812226101512952649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2)

end

end A319200.P2812226101512952649

namespace A319200

/-- `a(n-3)-a(n-1)-a(n-2)` -/
def P2812226101512952649.Spec : Prop :=
  ∀ n, P2812226101512952649.a n = A319200 n

end A319200

/-! ## A319200.P193017851082563360

`Δ[-A057597(n)]`
-/

namespace A319200.P193017851082563360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P193017851082563360

namespace A319200

/-- `Δ[-A057597(n)]` -/
def P193017851082563360.Spec : Prop :=
  ∀ n, P193017851082563360.a n = A319200 n

end A319200

/-! ## A319200.P16873189853487409199

`Δ[A057428(n)*A057597(n)]`
-/

namespace A319200.P16873189853487409199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A057597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P16873189853487409199

namespace A319200

/-- `Δ[A057428(n)*A057597(n)]` -/
def P16873189853487409199.Spec : Prop :=
  ∀ n, P16873189853487409199.a n = A319200 n

end A319200

/-! ## A319200.P11870312863905057923

`Δ[A057597(n)*A134824(n)]`
-/

namespace A319200.P11870312863905057923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 n * A134824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P11870312863905057923

namespace A319200

/-- `Δ[A057597(n)*A134824(n)]` -/
def P11870312863905057923.Spec : Prop :=
  ∀ n, P11870312863905057923.a n = A319200 n

end A319200

/-! ## A319200.P10383202825324767008

`A057597(n)-A057597(n+1)`
-/

namespace A319200.P10383202825324767008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 n - A057597 (n + 1)

end

end A319200.P10383202825324767008

namespace A319200

/-- `A057597(n)-A057597(n+1)` -/
def P10383202825324767008.Spec : Prop :=
  ∀ n, P10383202825324767008.a n = A319200 n

end A319200

/-! ## A319200.P11630837958261138540

`A062157(n)*A078016(n+1)`
-/

namespace A319200.P11630837958261138540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A078016 (n + 1)

end

end A319200.P11630837958261138540

namespace A319200

/-- `A062157(n)*A078016(n+1)` -/
def P11630837958261138540.Spec : Prop :=
  ∀ n, P11630837958261138540.a n = A319200 n

end A319200

/-! ## A319200.P7483922525095384605

`Δ[A057597(n)/A057428(n+1)]`
-/

namespace A319200.P7483922525095384605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057597 n : ℚ) / (A057428 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P7483922525095384605

namespace A319200

/-- `Δ[A057597(n)/A057428(n+1)]` -/
def P7483922525095384605.Spec : Prop :=
  ∀ n, P7483922525095384605.a n = (A319200 n : ℚ)

end A319200

/-! ## A319200.P13226352457331505545

`Δ[A059841(2*n)-A057597(n)]`
-/

namespace A319200.P13226352457331505545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) - A057597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P13226352457331505545

namespace A319200

/-- `Δ[A059841(2*n)-A057597(n)]` -/
def P13226352457331505545.Spec : Prop :=
  ∀ n, P13226352457331505545.a n = A319200 n

end A319200

/-! ## A319200.P7414636676330399337

`Δ[Δ[A057597(n)]]-A078046(n)`
-/

namespace A319200.P7414636676330399337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078046 n

end

end A319200.P7414636676330399337

namespace A319200

/-- `Δ[Δ[A057597(n)]]-A078046(n)` -/
def P7414636676330399337.Spec : Prop :=
  ∀ n, P7414636676330399337.a n = A319200 n

end A319200

/-! ## A319200.P2643830567055754164

`Δ[A007318(A000096(n))-A057597(n)]`
-/

namespace A319200.P2643830567055754164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat - A057597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319200.P2643830567055754164

namespace A319200

/-- `Δ[A007318(A000096(n))-A057597(n)]` -/
def P2643830567055754164.Spec : Prop :=
  ∀ n, P2643830567055754164.a n = A319200 n

end A319200

/-!
# A319201: Expansion of f(t) = F^{[-1]}(t)/t, where F(x) = x/(1 - x^2 - x^3).

The programs for A319201, there is no canonical definition to state claims against.
-/

/-! ## A319201.P4496720117726548638

`A319203(∑[n])`
-/

namespace A319201.P4496720117726548638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319201.P4496720117726548638

/-! ## A319201.P9527124739240067939

`A319203(A000217(n))%147`
-/

namespace A319201.P9527124739240067939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319203 (A000217 n).toNat) 147

end

end A319201.P9527124739240067939

/-! ## A319201.P10901645976333366284

`and(-1, A319203(A213516(n+1)))`
-/

namespace A319201.P10901645976333366284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A319203 (A213516 (n + 1)).toNat)

end

end A319201.P10901645976333366284

/-! ## A319201.P10013780787936465086

`A319203(C(n+1, 2))%A051991(n+1)`
-/

namespace A319201.P10013780787936465086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319203 (Nat.choose (n + 1) 2)) (A051991 (n + 1))

end

end A319201.P10013780787936465086

/-! ## A319201.P16233077550178510214

`A319203((n²+n)/2)^A184257(n+1)`
-/

namespace A319201.P16233077550178510214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319203 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ) ^ (A184257 (n + 1) : ℤ)

end

end A319201.P16233077550178510214

/-!
# A319203: Triangular Riordan matrix T = R^(-1) for triangular Riordan matrix R = (1/(1 - x^2 - x^3), x/(1 - x^2 - x^3)) = A104578.

The programs for A319203, there is no canonical definition to state claims against.
-/

/-! ## A319203.P1197441088117328533

`A104597(n)+A010893(A119502(n))`
-/

namespace A319203.P1197441088117328533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104597 n + A010893 ((A119502 n).toNat + 13)

end

end A319203.P1197441088117328533

/-! ## A319203.P794222326051444568

`A227655(A187829(n+1))-A089000(n)`
-/

namespace A319203.P794222326051444568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (A187829 (n + 1)).toNat - A089000 n

end

end A319203.P794222326051444568

/-! ## A319203.P9209126501384111825

`A060959(A187829(n+1))*A267482(n)`
-/

namespace A319203.P9209126501384111825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A187829 (n + 1)).toNat * A267482 n

end

end A319203.P9209126501384111825

/-! ## A319203.P16652509496103342271

`A069777(A187829(n+1))-A208671(n+1)`
-/

namespace A319203.P16652509496103342271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A187829 (n + 1)).toNat - A208671 (n + 1)

end

end A319203.P16652509496103342271

/-! ## A319203.P11828660687990776294

`A069777(A187829(n+1))-A208727(n+1)`
-/

namespace A319203.P11828660687990776294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A187829 (n + 1)).toNat - A208727 (n + 1)

end

end A319203.P11828660687990776294

/-!
# A319206: a(n) = 1*2*3*4*5 + 6*7*8*9*10 + 11*12*13*14*15 + ... + (up to n).

The programs for A319206, there is no canonical definition to state claims against.
-/

/-! ## A319206.P15626195345199304913

`record[gcd(A157400(n+1), A311724(n))]`
-/

namespace A319206.P15626195345199304913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157400 (n + 1)) (A311724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319206.P15626195345199304913

/-! ## A319206.P6632250570831131156

`record[n!%A003875(2*n+3)]`
-/

namespace A319206.P6632250570831131156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A003875 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319206.P6632250570831131156

/-!
# A319207: a(n) = 1*2*3*4*5*6 + 7*8*9*10*11*12 + 13*14*15*16*17*18 + ... + (up to n).

The programs for A319207, there is no canonical definition to state claims against.
-/

/-! ## A319207.P4057421698768091684

`record[A351420(n+1)%A132257(n+1)]`
-/

namespace A319207.P4057421698768091684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351420 (n + 1)) (A132257 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319207.P4057421698768091684

/-! ## A319207.P6404044152838945439

`A065666(n+1)!%∑[A196952(n+1)]`
-/

namespace A319207.P6404044152838945439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A065666 (n + 1)).toNat : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319207.P6404044152838945439

/-! ## A319207.P14615349814911450303

`(n+1)!%A020657(A051451(n+2)+2)`
-/

namespace A319207.P14615349814911450303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 1) : ℤ) (A020657 (A051451 (n + 2) + 2).toNat)

end

end A319207.P14615349814911450303

/-!
# A319208: a(n) = 1*2*3*4*5*6*7 + 8*9*10*11*12*13*14 + 15*16*17*18*19*20*21 + ... + (up to n).

The programs for A319208, there is no canonical definition to state claims against.
-/

/-! ## A319208.P3067996496818136804

`A028430(n+1)!%A237090(n+1)`
-/

namespace A319208.P3067996496818136804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A028430 (n + 1)).toNat : ℤ) (A237090 (n + 1))

end

end A319208.P3067996496818136804

/-! ## A319208.P11879100409624090398

`A000142(n+1)%A031363(A198307(n+3))`
-/

namespace A319208.P11879100409624090398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (A031363 (A198307 (n + 3)).toNat)

end

end A319208.P11879100409624090398

/-! ## A319208.P11227575954998942159

`or(A319547(n+1), A332641(A241466(n+1)))`
-/

namespace A319208.P11227575954998942159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319547 (n + 1)) (A332641 (A241466 (n + 1)).toNat)

end

end A319208.P11227575954998942159

/-!
# A319210: a(n) = phi(n^2 - 1)/2 where phi is A000010.

The programs for A319210, the canonical program `A319210.P2475304011012633793` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319210 has offset 2).

The definition of A319210 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319210.P2475304011012633793

`A000010((n+2)²-1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319210

/-- `A000010((n+2)²-1)/2` -/
def P2475304011012633793.Spec : Prop :=
  ∀ n, P2475304011012633793.a n = (A319210 (n + 2) : ℚ)

end A319210

/-! ## A319210.P17918628414051459700

`A000010(2*(n+1))/2*A000010(n+3)`
-/

namespace A319210.P17918628414051459700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / 2 * (A000010 (n + 3) : ℚ)

end

end A319210.P17918628414051459700

namespace A319210

/-- `A000010(2*(n+1))/2*A000010(n+3)` -/
def P17918628414051459700.Spec : Prop :=
  ∀ n, P17918628414051459700.a n = (A319210 (n + 2) : ℚ)

end A319210

/-! ## A319210.P15246677498484514957

`A023022(n+3)*A062570(n+1)`
-/

namespace A319210.P15246677498484514957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) * A062570 (n + 1)

end

end A319210.P15246677498484514957

namespace A319210

/-- `A023022(n+3)*A062570(n+1)` -/
def P15246677498484514957.Spec : Prop :=
  ∀ n, P15246677498484514957.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P11161532480856146331

`A000010(2*(n+1))*A023022(n+3)`
-/

namespace A319210.P11161532480856146331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A023022 (n + 3)

end

end A319210.P11161532480856146331

namespace A319210

/-- `A000010(2*(n+1))*A023022(n+3)` -/
def P11161532480856146331.Spec : Prop :=
  ∀ n, P11161532480856146331.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P1519157227524255089

`(A046657(n+3)-A046657(n+2))*A062570(n+1)`
-/

namespace A319210.P1519157227524255089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046657 (n + 3) - A046657 (n + 2)) * A062570 (n + 1)

end

end A319210.P1519157227524255089

namespace A319210

/-- `(A046657(n+3)-A046657(n+2))*A062570(n+1)` -/
def P1519157227524255089.Spec : Prop :=
  ∀ n, P1519157227524255089.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P3811062209156683912

`A000010(n+1)*A055034(n+3)`
-/

namespace A319210.P3811062209156683912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A055034 (n + 3)

end

end A319210.P3811062209156683912

namespace A319210

/-- `A000010(n+1)*A055034(n+3)` -/
def P3811062209156683912.Spec : Prop :=
  ∀ n, P3811062209156683912.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P4763239537699526596

`A023022(n+3)*A317841(2*(n+1))`
-/

namespace A319210.P4763239537699526596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) * A317841 (2 * (n + 1))

end

end A319210.P4763239537699526596

namespace A319210

/-- `A023022(n+3)*A317841(2*(n+1))` -/
def P4763239537699526596.Spec : Prop :=
  ∀ n, P4763239537699526596.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P5693129370865964047

`A023022(n+3)*A055034(2*(n+1))`
-/

namespace A319210.P5693129370865964047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) * A055034 (2 * (n + 1))

end

end A319210.P5693129370865964047

namespace A319210

/-- `A023022(n+3)*A055034(2*(n+1))` -/
def P5693129370865964047.Spec : Prop :=
  ∀ n, P5693129370865964047.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P6726044518652553710

`A023022(4*(n+1))*A023022(n+3)`
-/

namespace A319210.P6726044518652553710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (4 * (n + 1)) * A023022 (n + 3)

end

end A319210.P6726044518652553710

namespace A319210

/-- `A023022(4*(n+1))*A023022(n+3)` -/
def P6726044518652553710.Spec : Prop :=
  ∀ n, P6726044518652553710.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P1680335750132789653

`floor(A000010(∑[2*n+3])/2)`
-/

namespace A319210.P1680335750132789653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A319210.P1680335750132789653

namespace A319210

/-- `floor(A000010(∑[2*n+3])/2)` -/
def P1680335750132789653.Spec : Prop :=
  ∀ n, P1680335750132789653.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P5429138627148947383

`ceil(A000010((n+1)*(n+3))/2)`
-/

namespace A319210.P5429138627148947383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((n + 1) * (n + 3)) : ℚ) / 2⌉

end

end A319210.P5429138627148947383

namespace A319210

/-- `ceil(A000010((n+1)*(n+3))/2)` -/
def P5429138627148947383.Spec : Prop :=
  ∀ n, P5429138627148947383.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P3666617637305340318

`round(A000010(∑[2*(n+1)+1])/2)`
-/

namespace A319210.P3666617637305340318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A319210.P3666617637305340318

namespace A319210

/-- `round(A000010(∑[2*(n+1)+1])/2)` -/
def P3666617637305340318.Spec : Prop :=
  ∀ n, P3666617637305340318.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P2739041074930884670

`A326139(A000010((n+2)²-1))`
-/

namespace A319210.P2739041074930884670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A000010 ((n + 2) ^ 2 - 1)).toNat

end

end A319210.P2739041074930884670

namespace A319210

/-- `A326139(A000010((n+2)²-1))` -/
def P2739041074930884670.Spec : Prop :=
  ∀ n, P2739041074930884670.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P17221468799327869187

`A055034(n+3)*A089929(2*(n+1))`
-/

namespace A319210.P17221468799327869187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 3) * A089929 (2 * (n + 1))

end

end A319210.P17221468799327869187

namespace A319210

/-- `A055034(n+3)*A089929(2*(n+1))` -/
def P17221468799327869187.Spec : Prop :=
  ∀ n, P17221468799327869187.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P552212915204814669

`A055034(lcm(n+1, n+3))`
-/

namespace A319210.P552212915204814669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Nat.lcm (n + 1) (n + 3))

end

end A319210.P552212915204814669

namespace A319210

/-- `A055034(lcm(n+1, n+3))` -/
def P552212915204814669.Spec : Prop :=
  ∀ n, P552212915204814669.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P4330238295475313805

`A055034(A066830(n+2))`
-/

namespace A319210.P4330238295475313805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A066830 (n + 2)).toNat

end

end A319210.P4330238295475313805

namespace A319210

/-- `A055034(A066830(n+2))` -/
def P4330238295475313805.Spec : Prop :=
  ∀ n, P4330238295475313805.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P10379353837181232379

`A055034((n+1)*A145051(n+2))`
-/

namespace A319210.P10379353837181232379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 ((n + 1 : ℤ) * A145051 (n + 2)).toNat

end

end A319210.P10379353837181232379

namespace A319210

/-- `A055034((n+1)*A145051(n+2))` -/
def P10379353837181232379.Spec : Prop :=
  ∀ n, P10379353837181232379.a n = A319210 (n + 2)

end A319210

/-! ## A319210.P1162254518999640441

`A004525(A000010((n+1)*(n+3)))`
-/

namespace A319210.P1162254518999640441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 ((n + 1) * (n + 3))).toNat

end

end A319210.P1162254518999640441

namespace A319210

/-- `A004525(A000010((n+1)*(n+3)))` -/
def P1162254518999640441.Spec : Prop :=
  ∀ n, P1162254518999640441.a n = A319210 (n + 2)

end A319210

/-!
# A319211: a(n) = 1*2*3*4*5*6*7*8*9 + 10*11*12*13*14*15*16*17*18 + 19*20*21*22*23*24*25*26*27 + ... + (up to n).

The programs for A319211, there is no canonical definition to state claims against.
-/

/-! ## A319211.P12989646300162982116

`record[A182287(A119026(n))]`
-/

namespace A319211.P12989646300162982116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A119026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319211.P12989646300162982116

/-! ## A319211.P4358836854625498150

`record[A182287(A125568(n))]`
-/

namespace A319211.P4358836854625498150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A125568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319211.P4358836854625498150

/-! ## A319211.P4023969192066653276

`record[A182287(A163352(n))]`
-/

namespace A319211.P4023969192066653276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A163352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319211.P4023969192066653276

/-! ## A319211.P292645998019899586

`record[A182287(A327707(n+1))]`
-/

namespace A319211.P292645998019899586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A327707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319211.P292645998019899586

/-! ## A319211.P13688737737506470896

`A182287(A247227(A005349(A005349(n+1))))`
-/

namespace A319211.P13688737737506470896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A247227 (A005349 (A005349 (n + 1)).toNat).toNat).toNat

end

end A319211.P13688737737506470896

/-!
# A319212: a(n) = 1*2*3*4*5*6*7*8*9*10 + 11*12*13*14*15*16*17*18*19*20 + 21*22*23*24*25*26*27*28*29*30 + ... + (up to n).

The programs for A319212, there is no canonical definition to state claims against.
-/

/-! ## A319212.P18326292593369026452

`(C(n, 9)!+n)!`
-/

namespace A319212.P18326292593369026452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (Nat.choose n 9) + n)

end

end A319212.P18326292593369026452

/-! ## A319212.P4419304896177669867

`∑[(n-dr(n))!]!`
-/

namespace A319212.P4419304896177669867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319212.P4419304896177669867

/-! ## A319212.P10807996325240982541

`∏{e}[or(5, n), #+n]!`
-/

namespace A319212.P10807996325240982541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n))

end

end A319212.P10807996325240982541

/-! ## A319212.P4160287022619596923

`((n-dr(n))!+n)!`
-/

namespace A319212.P4160287022619596923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat + n)

end

end A319212.P4160287022619596923

/-! ## A319212.P6243746213077602466

`(xor(n, dr(n))!+n)!`
-/

namespace A319212.P6243746213077602466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (Nat.xor n (SequenceMachineLib.digitalRoot (n : ℤ))) + n)

end

end A319212.P6243746213077602466

/-!
# A319213: a(n) = phi(n^3 - 1)/3 where phi is A000010.

The programs for A319213, the canonical program `A319213.P1431763501550862561` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319213 has offset 2).

The definition of A319213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319213.P1431763501550862561

`A000010((n+2)^3-1)/3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319213

/-- `A000010((n+2)^3-1)/3` -/
def P1431763501550862561.Spec : Prop :=
  ∀ n, P1431763501550862561.a n = (A319213 (n + 2) : ℚ)

end A319213

/-! ## A319213.P9176231722464339753

`A369291(A167614(n+1))`
-/

namespace A319213.P9176231722464339753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A167614 (n + 1)).toNat

end

end A319213.P9176231722464339753

namespace A319213

/-- `A369291(A167614(n+1))` -/
def P9176231722464339753.Spec : Prop :=
  ∀ n, P9176231722464339753.a n = A319213 (n + 2)

end A319213

/-! ## A319213.P15982844026586368724

`floor(A000010(A068601(n+2))/3)`
-/

namespace A319213.P15982844026586368724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A068601 (n + 2)).toNat : ℚ) / 3⌋

end

end A319213.P15982844026586368724

namespace A319213

/-- `floor(A000010(A068601(n+2))/3)` -/
def P15982844026586368724.Spec : Prop :=
  ∀ n, P15982844026586368724.a n = A319213 (n + 2)

end A319213

/-! ## A319213.P7230570588996275577

`floor(A000010(A135300(n+2))/3)`
-/

namespace A319213.P7230570588996275577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A135300 (n + 2)).toNat : ℚ) / 3⌋

end

end A319213.P7230570588996275577

namespace A319213

/-- `floor(A000010(A135300(n+2))/3)` -/
def P7230570588996275577.Spec : Prop :=
  ∀ n, P7230570588996275577.a n = A319213 (n + 2)

end A319213

/-! ## A319213.P2848324636768739046

`floor(A000010(A000578(n+2)-1)/3)`
-/

namespace A319213.P2848324636768739046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A000578 (n + 2) - 1).toNat : ℚ) / 3⌋

end

end A319213.P2848324636768739046

namespace A319213

/-- `floor(A000010(A000578(n+2)-1)/3)` -/
def P2848324636768739046.Spec : Prop :=
  ∀ n, P2848324636768739046.a n = A319213 (n + 2)

end A319213

/-!
# A319214: a(n) = phi(n^5 - 1)/5 where phi is A000010.

The programs for A319214, the canonical program `A319214.P435217209022396964` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319214 has offset 2).

The definition of A319214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319214.P435217209022396964

`A000010((n+2)^5-1)/5`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319214

/-- `A000010((n+2)^5-1)/5` -/
def P435217209022396964.Spec : Prop :=
  ∀ n, P435217209022396964.a n = (A319214 (n + 2) : ℚ)

end A319214

/-! ## A319214.P4515990214244418143

`A369291(A167499(n+3))`
-/

namespace A319214.P4515990214244418143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A167499 (n + 3)).toNat

end

end A319214.P4515990214244418143

namespace A319214

/-- `A369291(A167499(n+3))` -/
def P4515990214244418143.Spec : Prop :=
  ∀ n, P4515990214244418143.a n = A319214 (n + 2)

end A319214

/-! ## A319214.P4811169307088394333

`A369291(A167614(n+3)+2)`
-/

namespace A319214.P4811169307088394333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A167614 (n + 3) + 2).toNat

end

end A319214.P4811169307088394333

namespace A319214

/-- `A369291(A167614(n+3)+2)` -/
def P4811169307088394333.Spec : Prop :=
  ∀ n, P4811169307088394333.a n = A319214 (n + 2)

end A319214

/-! ## A319214.P9517153804656091765

`A369291(A000217(n+4)+5)`
-/

namespace A319214.P9517153804656091765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A000217 (n + 4) + 5).toNat

end

end A319214.P9517153804656091765

namespace A319214

/-- `A369291(A000217(n+4)+5)` -/
def P9517153804656091765.Spec : Prop :=
  ∀ n, P9517153804656091765.a n = A319214 (n + 2)

end A319214

/-!
# A319216: Numbers k such that k^2 + 1 divides 2^k + 2.

The programs for A319216, there is no canonical definition to state claims against.
-/

/-! ## A319216.P17757206611742220132

`A277267(A030855(n+1))`
-/

namespace A319216.P17757206611742220132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (A030855 (n + 1)).toNat

end

end A319216.P17757206611742220132

/-! ## A319216.P10084798566873448794

`A140472(A295792(n))-1`
-/

namespace A319216.P10084798566873448794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A295792 n).toNat - 1

end

end A319216.P10084798566873448794

/-! ## A319216.P6365015272638445966

`or(2^n-1, A049820(A000262(n)))`
-/

namespace A319216.P6365015272638445966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 1) (A049820 (A000262 n).toNat)

end

end A319216.P6365015272638445966

/-!
# A319220: Number of rooted identity trees with n colored non-root nodes where the set of colors equals {1,...,k} for some k <= n.

The programs for A319220, there is no canonical definition to state claims against.
-/

/-! ## A319220.P12873661440562353990

`A341440(n^(n+1))`
-/

namespace A319220.P12873661440562353990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341440 (n ^ (n + 1))

end

end A319220.P12873661440562353990

/-!
# A319221: Number of ordered ways of writing n-th triangular number as a sum of n squares.

The programs for A319221, there is no canonical definition to state claims against.
-/

/-! ## A319221.P5613371257717456446

`A319574(A176145(n+4)-1)`
-/

namespace A319221.P5613371257717456446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A176145 (n + 4) - 1).toNat

end

end A319221.P5613371257717456446

/-! ## A319221.P14013644768930756614

`A286815(∑[∑[A045943(n)]+n])`
-/

namespace A319221.P14013644768930756614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319221.P14013644768930756614

/-! ## A319221.P12670755905013128372

`A319574(eq[n+1, A049777(n+1)])`
-/

namespace A319221.P12670755905013128372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319221.P12670755905013128372

/-! ## A319221.P16034937720899516472

`A319574(eq[1, A325242(n+1)])`
-/

namespace A319221.P16034937720899516472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319221.P16034937720899516472

/-!
# A319224: Integers q for which f(q) = ((((q - 2)! - 1) / q) - 1) / (q + 1) is a prime number.

The programs for A319224, there is no canonical definition to state claims against.
-/

/-! ## A319224.P8694205993977025201

`p?[or(5*n+1, A328540(n))]`
-/

namespace A319224.P8694205993977025201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n + 1 : ℤ) (A328540 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319224.P8694205993977025201

/-!
# A319225: Number of acyclic spanning subgraphs of a cycle graph, where the sizes of the connected components are given by the prime indices of n.

The programs for A319225, the canonical program `A319225.P16688211917328614942` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319225 has offset 1).

The definition of A319225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319225.P15816772757441583705

`abs(A330415(ceil(acot(n)+n)))`
-/

namespace A319225.P15816772757441583705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330415 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat|

end

end A319225.P15816772757441583705

namespace A319225

/-- `abs(A330415(ceil(acot(n)+n)))` -/
def P15816772757441583705.Spec : Prop :=
  ∀ n, P15816772757441583705.a n = A319225 (n + 1)

end A319225

/-! ## A319225.P10693365222892876759

`gcd(floor(acot(n)), A330415(n+1))`
-/

namespace A319225.P10693365222892876759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A330415 (n + 1))

end

end A319225.P10693365222892876759

namespace A319225

/-- `gcd(floor(acot(n)), A330415(n+1))` -/
def P10693365222892876759.Spec : Prop :=
  ∀ n, (P10693365222892876759.a n : ℤ) = A319225 (n + 1)

end A319225

/-! ## A319225.P3465194821979941491

`abs(A330415(floor(acot(n)+n)+1))`
-/

namespace A319225.P3465194821979941491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330415 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat|

end

end A319225.P3465194821979941491

namespace A319225

/-- `abs(A330415(floor(acot(n)+n)+1))` -/
def P3465194821979941491.Spec : Prop :=
  ∀ n, P3465194821979941491.a n = A319225 (n + 1)

end A319225

/-! ## A319225.P12564722354073588170

`abs(A330415(round(sqrt(n²+1))+1))`
-/

namespace A319225.P12564722354073588170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330415 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat|

end

end A319225.P12564722354073588170

namespace A319225

/-- `abs(A330415(round(sqrt(n²+1))+1))` -/
def P12564722354073588170.Spec : Prop :=
  ∀ n, P12564722354073588170.a n = A319225 (n + 1)

end A319225

/-! ## A319225.P16688211917328614942

`A028310(abs(A330415(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319225

/-- `A028310(abs(A330415(n+1)))` -/
def P16688211917328614942.Spec : Prop :=
  ∀ n, P16688211917328614942.a n = A319225 (n + 1)

theorem P16688211917328614942.correct : P16688211917328614942.Spec := by
  intro n
  simp only [A319225, Nat.add_sub_cancel]

end A319225

/-! ## A319225.P971755390305460458

`abs(A330415(n+1)^(A000040(n+1)%2))`
-/

namespace A319225.P971755390305460458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A330415 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)|

end

end A319225.P971755390305460458

namespace A319225

/-- `abs(A330415(n+1)^(A000040(n+1)%2))` -/
def P971755390305460458.Spec : Prop :=
  ∀ n, P971755390305460458.a n = (A319225 (n + 1) : ℚ)

end A319225

/-! ## A319225.P17410457048270293146

`abs(A330415(n+1))^A001221(2-C(n, n²))`
-/

namespace A319225.P17410457048270293146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A330415 (n + 1)| : ℚ) ^ (A001221 (2 - Nat.choose n (n ^ 2)) : ℤ)

end

end A319225.P17410457048270293146

namespace A319225

/-- `abs(A330415(n+1))^A001221(2-C(n, n²))` -/
def P17410457048270293146.Spec : Prop :=
  ∀ n, P17410457048270293146.a n = (A319225 (n + 1) : ℚ)

end A319225

/-! ## A319225.P1088677737738572128

`gcd(A025543(n), A330415(n+1))`
-/

namespace A319225.P1088677737738572128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A330415 (n + 1))

end

end A319225.P1088677737738572128

namespace A319225

/-- `gcd(A025543(n), A330415(n+1))` -/
def P1088677737738572128.Spec : Prop :=
  ∀ n, (P1088677737738572128.a n : ℤ) = A319225 (n + 1)

end A319225

/-! ## A319225.P1533506705309277842

`gcd(abs(A330415(n+1)), A000005(n²+1)%2)`
-/

namespace A319225.P1533506705309277842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A330415 (n + 1)| (Int.tmod (A000005 (n ^ 2 + 1)) 2)

end

end A319225.P1533506705309277842

namespace A319225

/-- `gcd(abs(A330415(n+1)), A000005(n²+1)%2)` -/
def P1533506705309277842.Spec : Prop :=
  ∀ n, (P1533506705309277842.a n : ℤ) = A319225 (n + 1)

end A319225

/-! ## A319225.P17700116951600748071

`gcd(A025552(n), A330417(n+1))`
-/

namespace A319225.P17700116951600748071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025552 n) (A330417 (n + 1))

end

end A319225.P17700116951600748071

namespace A319225

/-- `gcd(A025552(n), A330417(n+1))` -/
def P17700116951600748071.Spec : Prop :=
  ∀ n, (P17700116951600748071.a n : ℤ) = A319225 (n + 1)

end A319225

/-! ## A319225.P8490132011291161688

`abs(A330415(n+1))-A008683(2*(n+1)²)`
-/

namespace A319225.P8490132011291161688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330415 (n + 1)| - A008683 (2 * (n + 1) ^ 2)

end

end A319225.P8490132011291161688

namespace A319225

/-- `abs(A330415(n+1))-A008683(2*(n+1)²)` -/
def P8490132011291161688.Spec : Prop :=
  ∀ n, P8490132011291161688.a n = A319225 (n + 1)

end A319225

/-!
# A319226: Irregular triangle where T(n,k) is the number of acyclic spanning subgraphs of a cycle graph, where the sizes of the connected components are given by the integer partition with Heinz number A215366(n,k).

The programs for A319226, there is no canonical definition to state claims against.
-/

/-! ## A319226.P4472856879502929495

`A319225(A215366(n+1))`
-/

namespace A319226.P4472856879502929495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319225 (A215366 (n + 1)).toNat

end

end A319226.P4472856879502929495

/-! ## A319226.P6406371859059031413

`gcd(A307449(n+2), A307617(n+1))`
-/

namespace A319226.P6406371859059031413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307449 (n + 2)) (A307617 (n + 1))

end

end A319226.P6406371859059031413

/-! ## A319226.P5517360094305461496

`A342241(A329396(n+1)%A007792(n))`
-/

namespace A319226.P5517360094305461496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (Int.tmod (A329396 (n + 1)) (A007792 n)).toNat

end

end A319226.P5517360094305461496

/-! ## A319226.P7015214377311042588

`A373953(lt[A343649(3*n+1), A100885(n+1)])`
-/

namespace A319226.P7015214377311042588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343649 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319226.P7015214377311042588

/-! ## A319226.P10104698032148666557

`gcd(A002024(n+1), A008457(A373722(2*(n+2))))`
-/

namespace A319226.P10104698032148666557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A008457 (A373722 (2 * (n + 2))).toNat)

end

end A319226.P10104698032148666557

/-!
# A319227: a(n) is the number of twin primes in the Collatz trajectory of n.

The programs for A319227, there is no canonical definition to state claims against.
-/

/-! ## A319227.P16371401103276788313

`A096972(A247248(A003602(n+1))²)`
-/

namespace A319227.P16371401103276788313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A247248 (A003602 (n + 1)).toNat ^ 2).toNat

end

end A319227.P16371401103276788313

/-! ## A319227.P17719743406630594988

`and(A302242(n+1), A337110(A174522(n)))`
-/

namespace A319227.P17719743406630594988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302242 (n + 1)) (A337110 (A174522 n).toNat)

end

end A319227.P17719743406630594988

/-! ## A319227.P5409023508881642705

`A284413(A051000(n+1)+A001826(n+1))`
-/

namespace A319227.P5409023508881642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284413 (A051000 (n + 1) + A001826 (n + 1)).toNat

end

end A319227.P5409023508881642705

/-! ## A319227.P1035924045478316029

`and(A050452(n+1), A175830(A331151(n+1)))`
-/

namespace A319227.P1035924045478316029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050452 (n + 1)) (A175830 (A331151 (n + 1)).toNat)

end

end A319227.P1035924045478316029

/-! ## A319227.P5032177535653018821

`A297363(A134660(n+1))%A317713(n+1)`
-/

namespace A319227.P5032177535653018821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297363 (A134660 (n + 1)).toNat) (A317713 (n + 1))

end

end A319227.P5032177535653018821

/-!
# A319229: a(n) is equal to the difference between the nearest integer to the imaginary part of the n-th zero of the Riemann zeta function and the n-th prime.

The programs for A319229, there is no canonical definition to state claims against.
-/

/-! ## A319229.P679736046228091748

`A002410(n+1)-A000040(n+1)`
-/

namespace A319229.P679736046228091748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - A000040 (n + 1)

end

end A319229.P679736046228091748

/-! ## A319229.P4465577756138578584

`A002410(n+1)-Δ[A007504(n)]`
-/

namespace A319229.P4465577756138578584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - (f1 (n + 1) - f1 n)

end

end A319229.P4465577756138578584

/-! ## A319229.P284057995756985944

`A320141(n+1)-A100484(n+1)`
-/

namespace A319229.P284057995756985944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320141 (n + 1) - A100484 (n + 1)

end

end A319229.P284057995756985944

/-! ## A319229.P12940455880132429548

`A002410(n+1)-sqrt(A001248(n+1))`
-/

namespace A319229.P12940455880132429548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002410 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A319229.P12940455880132429548

/-! ## A319229.P362440622238297818

`A002410(n+1)-∑[A054541(n+1)]`
-/

namespace A319229.P362440622238297818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319229.P362440622238297818

/-! ## A319229.P3416949290795245805

`A002410(n+1)+2-A052147(n+1)`
-/

namespace A319229.P3416949290795245805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + (2 - A052147 (n + 1))

end

end A319229.P3416949290795245805

/-! ## A319229.P7031181332486913871

`A002410(n+1)-(A113935(n+1)-3)`
-/

namespace A319229.P7031181332486913871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - (A113935 (n + 1) - 3)

end

end A319229.P7031181332486913871

/-! ## A319229.P15142532204536864865

`A320141(n+1)-2*A000040(n+1)`
-/

namespace A319229.P15142532204536864865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320141 (n + 1) - 2 * A000040 (n + 1)

end

end A319229.P15142532204536864865

/-! ## A319229.P8498176363131127328

`2*A002410(n+1)-A320141(n+1)`
-/

namespace A319229.P8498176363131127328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002410 (n + 1) - A320141 (n + 1)

end

end A319229.P8498176363131127328

/-! ## A319229.P11615396540622083316

`round(A342756(n+1)/A000040(n+1)-A000040(n+1))`
-/

namespace A319229.P11615396540622083316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A000040 (n + 1) : ℚ))

end

end A319229.P11615396540622083316

/-! ## A319229.P3114845227404693068

`A002410(n+1)-record[A006530(n+2)]`
-/

namespace A319229.P3114845227404693068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319229.P3114845227404693068

/-! ## A319229.P8244025587182194701

`A002410(n+1)-record[A020639(n+2)]`
-/

namespace A319229.P8244025587182194701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319229.P8244025587182194701

/-! ## A319229.P16054673901024575717

`A002410(n+1)-record[A000010(n+1)+1]`
-/

namespace A319229.P16054673901024575717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319229.P16054673901024575717

/-! ## A319229.P10240256689960520936

`A002410(n+1)-p?[A344180(n)]`
-/

namespace A319229.P10240256689960520936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319229.P10240256689960520936

/-! ## A319229.P14709612748048837863

`A002410(n+1)-A067747(2*n+1)`
-/

namespace A319229.P14709612748048837863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - A067747 (2 * n + 1)

end

end A319229.P14709612748048837863

/-! ## A319229.P3602465456647465517

`A002410(n+1)-p?[A004280(n+1)]`
-/

namespace A319229.P3602465456647465517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319229.P3602465456647465517

/-! ## A319229.P10118534819557150757

`A002410(n+1)-record[A014963(n+2)]`
-/

namespace A319229.P10118534819557150757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319229.P10118534819557150757

/-! ## A319229.P16299802173529216904

`A002410(n+1)-p?[A001057(n)]`
-/

namespace A319229.P16299802173529216904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319229.P16299802173529216904

/-! ## A319229.P5019765335114556893

`A002410(n+1)-p?[A006370(n)]`
-/

namespace A319229.P5019765335114556893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319229.P5019765335114556893

/-!
# A319230: Triple prime Fibonacci numbers: Fibonacci numbers f such that (1) f is prime, (2) f's index is prime, and (3) the sum of f's digits is prime.

The programs for A319230, there is no canonical definition to state claims against.
-/

/-! ## A319230.P1331372390221125779

`A000045(A319393(n+1))`
-/

namespace A319230.P1331372390221125779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A319393 (n + 1)).toNat

end

end A319230.P1331372390221125779

/-! ## A319230.P15592643961322811360

`A212804(A319393(n+1)+1)`
-/

namespace A319230.P15592643961322811360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A319393 (n + 1) + 1).toNat

end

end A319230.P15592643961322811360

/-! ## A319230.P12661258764038714326

`A103609(2*A319393(n+1))`
-/

namespace A319230.P12661258764038714326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A319393 (n + 1)).toNat

end

end A319230.P12661258764038714326

/-!
# A319233: Numbers k such that k^2 + 1 divides 2^k + 4.

The programs for A319233, there is no canonical definition to state claims against.
-/

/-! ## A319233.P1228663451297125949

`record[and(A001710(n), A236371(n+1))]`
-/

namespace A319233.P1228663451297125949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001710 n) (A236371 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319233.P1228663451297125949

/-! ## A319233.P12864403780940774915

`A322795(A062838(n+2))`
-/

namespace A319233.P12864403780940774915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322795 (A062838 (n + 2)).toNat

end

end A319233.P12864403780940774915

/-!
# A319234: T(n, k) is the coefficient of x^k of the polynomial p(n) which is defined as the scalar part of P(n) = Q(x, 1, 1, 1) * P(n-1) for n > 0 and P(0) = Q(1, 0, 0, 0) where Q(a, b, c, d) is a quaternion, triangle read by rows.

The programs for A319234, there is no canonical definition to state claims against.
-/

/-! ## A319234.P6084834797038477725

`A006046(A156663(n))*A108086(n)`
-/

namespace A319234.P6084834797038477725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A156663 n).toNat * A108086 n

end

end A319234.P6084834797038477725

/-! ## A319234.P7395906091853086375

`A006046(A156663(n))*A117440(n)`
-/

namespace A319234.P7395906091853086375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A156663 n).toNat * A117440 n

end

end A319234.P7395906091853086375

/-! ## A319234.P2883155057341602082

`A066325(n)*A112030(A038255(n))`
-/

namespace A319234.P2883155057341602082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A112030 (A038255 n).toNat

end

end A319234.P2883155057341602082

/-! ## A319234.P12495225995238639083

`A066325(n)*A176040(A112227(n)²)`
-/

namespace A319234.P12495225995238639083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A176040 (A112227 n ^ 2).toNat

end

end A319234.P12495225995238639083

/-! ## A319234.P14483713454953046113

`A000217(A020639(A048854(n)))*A066325(n)`
-/

namespace A319234.P14483713454953046113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A020639 (A048854 n).toNat).toNat * A066325 n

end

end A319234.P14483713454953046113

/-!
# A319235: The profile of the backtrack tree for the eight queens problem.

The programs for A319235, there is no canonical definition to state claims against.
-/

/-! ## A319235.P7767787180398430302

`A319284(n+36)`
-/

namespace A319235.P7767787180398430302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (n + 36)

end

end A319235.P7767787180398430302

/-!
# A319236: The profile of the backtrack tree for the sixteen queens problem.

The programs for A319236, there is no canonical definition to state claims against.
-/

/-! ## A319236.P11074728765003341652

`A319284(136+n)`
-/

namespace A319236.P11074728765003341652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (136 + n)

end

end A319236.P11074728765003341652

/-!
# A319237: Positions of nonzero terms in A114592, the list of coefficients in the expansion of Product_{n > 1} (1 - 1/n^s).

The programs for A319237, there is no canonical definition to state claims against.
-/

/-! ## A319237.P10317393051673987107

`comp[A319238(n+1)-1]+1`
-/

namespace A319237.P10317393051673987107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319237.P10317393051673987107

/-! ## A319237.P12675905209664148752

`lt[n, A224892(n+1)²]+1`
-/

namespace A319237.P12675905209664148752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224892 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319237.P12675905209664148752

/-! ## A319237.P17341623316704415428

`record[C(abs(A224892(n+1)), n)]`
-/

namespace A319237.P17341623316704415428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A224892 (n + 1)|.toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319237.P17341623316704415428

/-! ## A319237.P11316543176781706377

`record[abs(A224892(n+1))%A351680(n+1)]`
-/

namespace A319237.P11316543176781706377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A224892 (n + 1)| (A351680 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319237.P11316543176781706377

/-! ## A319237.P17073184021586609737

`A056926(record[A224892(n+1)²])`
-/

namespace A319237.P17073184021586609737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224892 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319237.P17073184021586609737

/-!
# A319238: Positions of zeros in A114592, the list of coefficients in the expansion of Product_{n > 1} (1 - 1/n^s).

The programs for A319238, there is no canonical definition to state claims against.
-/

/-! ## A319238.P4205620320220703022

`comp[A319237(n+1)-1]+1`
-/

namespace A319238.P4205620320220703022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319237 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319238.P4205620320220703022

/-! ## A319238.P17528371035546499015

`eq[0, A114592(n+1)]+1`
-/

namespace A319238.P17528371035546499015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319238.P17528371035546499015

/-! ## A319238.P9837992215996537678

`eq[0, A114592(n^floor(atan(n)))]`
-/

namespace A319238.P9837992215996537678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319238.P9837992215996537678

/-! ## A319238.P14900989958023053420

`eq[0, A114592(A028310(n))]`
-/

namespace A319238.P14900989958023053420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319238.P14900989958023053420

/-! ## A319238.P8172555172273046311

`A020725(eq[0, A114592(n+1)])`
-/

namespace A319238.P8172555172273046311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319238.P8172555172273046311

/-! ## A319238.P3162350208630734463

`A061767(eq[0, A114592(n+1)])`
-/

namespace A319238.P3162350208630734463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319238.P3162350208630734463

/-! ## A319238.P11929759598855339982

`A113484(eq[0, A114592(n+1)])`
-/

namespace A319238.P11929759598855339982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319238.P11929759598855339982

/-! ## A319238.P9119582320357211240

`eq[0, A224892(round(sqrt(n²+1)))]`
-/

namespace A319238.P9119582320357211240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224892 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319238.P9119582320357211240

/-! ## A319238.P15385746863014142764

`comp[abs(A224892(n+1))]`
-/

namespace A319238.P15385746863014142764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224892 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A319238.P15385746863014142764

/-!
# A319239: Positions of nonzero terms in A316441, the list of coefficients in the expansion of Product_{n > 1} 1/(1 + 1/n^s).

The programs for A319239, there is no canonical definition to state claims against.
-/

/-! ## A319239.P12048805466421908265

`record[abs(A344369(n+1))]`
-/

namespace A319239.P12048805466421908265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344369 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319239.P12048805466421908265

/-! ## A319239.P9901205121629967687

`lt[0, A190938(n+1)]+1`
-/

namespace A319239.P9901205121629967687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319239.P9901205121629967687

/-! ## A319239.P4080795778923219474

`comp[A319240(n+1)-1]+1`
-/

namespace A319239.P4080795778923219474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319239.P4080795778923219474

/-! ## A319239.P9794562452694909918

`eq[1, abs(A316441(n+1))]+1`
-/

namespace A319239.P9794562452694909918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316441 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319239.P9794562452694909918

/-! ## A319239.P7619599682885028884

`eq[1, A001055(n+1)%2]+1`
-/

namespace A319239.P7619599682885028884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319239.P7619599682885028884

/-! ## A319239.P17588739694397454986

`lt[A028422(n+1)%2, 1]+1`
-/

namespace A319239.P17588739694397454986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028422 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319239.P17588739694397454986

/-! ## A319239.P4255331674254236764

`record[A344368(n+1)%(2*(n+1))]`
-/

namespace A319239.P4255331674254236764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344368 (n + 1)) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319239.P4255331674254236764

/-! ## A319239.P13887095368128688182

`eq[1, A000035(A001055(n+1))]+1`
-/

namespace A319239.P13887095368128688182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319239.P13887095368128688182

/-!
# A319240: Positions of zeros in A316441, the list of coefficients in the expansion of Product_{n > 1} 1/(1 + 1/n^s).

The programs for A319240, there is no canonical definition to state claims against.
-/

/-! ## A319240.P3315450399269931254

`eq[0, A316441(n+1)]+1`
-/

namespace A319240.P3315450399269931254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319240.P3315450399269931254

/-! ## A319240.P6810882038527448011

`A061767(eq[0, A316441(n+1)])`
-/

namespace A319240.P6810882038527448011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319240.P6810882038527448011

/-! ## A319240.P6356801870282919072

`eq[0, A316441(A000007(n)+n)]`
-/

namespace A319240.P6356801870282919072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319240.P6356801870282919072

/-! ## A319240.P15723485563951240870

`eq[0, A316441(A000038(n)+n)]`
-/

namespace A319240.P15723485563951240870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319240.P15723485563951240870

/-! ## A319240.P4391363090527213924

`eq[0, A316441(A065033(2*n))]`
-/

namespace A319240.P4391363090527213924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319240.P4391363090527213924

/-! ## A319240.P8568120429336022043

`eq[0, A316441(A123108(2*n))]`
-/

namespace A319240.P8568120429336022043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319240.P8568120429336022043

/-! ## A319240.P9341719465838436956

`A113484(eq[0, A316441(n+1)])`
-/

namespace A319240.P9341719465838436956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319240.P9341719465838436956

/-! ## A319240.P12216496640749324975

`∪[A001358(n+1), A349931(n+1)]`
-/

namespace A319240.P12216496640749324975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319240.P12216496640749324975

/-! ## A319240.P5051162894741240212

`∪[A006881(n+1), A349931(n+1)]`
-/

namespace A319240.P5051162894741240212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319240.P5051162894741240212

/-! ## A319240.P15821259640531962332

`∪[A349931(n+1), A350486(n+1)]`
-/

namespace A319240.P15821259640531962332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319240.P15821259640531962332

/-!
# A319241: Heinz numbers of strict integer partitions of even numbers. Squarefree numbers whose prime indices sum to an even number.

The programs for A319241, there is no canonical definition to state claims against.
-/

/-! ## A319241.P12086045478611335183

`record[A003967(A300061(n+1))]`
-/

namespace A319241.P12086045478611335183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A300061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319241.P12086045478611335183

/-! ## A319241.P13059700436674419304

`record[A007913(A344413(n+1))]`
-/

namespace A319241.P13059700436674419304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A344413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319241.P13059700436674419304

/-! ## A319241.P18384713145589751790

`filter[A300061(n+1), A008966(#)]`
-/

namespace A319241.P18384713145589751790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A319241.P18384713145589751790

/-! ## A319241.P10220260928268566618

`filter[A344413(n+1), A008966(#)]`
-/

namespace A319241.P10220260928268566618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A319241.P10220260928268566618

/-! ## A319241.P6235293185130171203

`filter[A344413(n+1), A323154(#)]`
-/

namespace A319241.P6235293185130171203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A319241.P6235293185130171203

/-! ## A319241.P3355979488891110286

`filter[A344413(n+1), A353559(#)]`
-/

namespace A319241.P3355979488891110286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A319241.P3355979488891110286

/-! ## A319241.P8227671982194255384

`record[A007947(A300061(n+1)²)]`
-/

namespace A319241.P8227671982194255384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A300061 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319241.P8227671982194255384

/-! ## A319241.P15947270462597040229

`∩[A005117(n+1), A300061(n+1)]`
-/

namespace A319241.P15947270462597040229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319241.P15947270462597040229

/-! ## A319241.P15246307420345931477

`∩[A005117(n+1), A344413(n+1)]`
-/

namespace A319241.P15246307420345931477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319241.P15246307420345931477

/-! ## A319241.P6303647790213430414

`∩[A064594(n+1), A344413(n+1)]`
-/

namespace A319241.P6303647790213430414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319241.P6303647790213430414

/-!
# A319242: Heinz numbers of strict integer partitions of odd numbers. Squarefree numbers whose prime indices sum to an odd number.

The programs for A319242, there is no canonical definition to state claims against.
-/

/-! ## A319242.P16226915989041777557

`record[A007913(A300063(n+1))]`
-/

namespace A319242.P16226915989041777557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A300063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319242.P16226915989041777557

/-! ## A319242.P9646294713364655618

`filter[A300063(n+1), A008966(#)]`
-/

namespace A319242.P9646294713364655618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A319242.P9646294713364655618

/-! ## A319242.P309265564778745514

`record[A007947(A300063(n+1)²)]`
-/

namespace A319242.P309265564778745514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A300063 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319242.P309265564778745514

/-! ## A319242.P7572514235598299430

`∩[A005117(n+1), A300063(n+1)]`
-/

namespace A319242.P7572514235598299430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319242.P7572514235598299430

/-! ## A319242.P17258433083837056692

`∩[A144338(n+1), A300063(n+1)]`
-/

namespace A319242.P17258433083837056692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319242.P17258433083837056692

/-! ## A319242.P7369767194322751547

`∩[A167207(n+1), A300063(n+1)]`
-/

namespace A319242.P7369767194322751547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319242.P7369767194322751547

/-! ## A319242.P7496675023112356123

`∩[A210490(n+1), A300063(n+1)]`
-/

namespace A319242.P7496675023112356123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319242.P7496675023112356123

/-! ## A319242.P17889487123315049910

`∩[A300063(n+1), A348506(n+1)]`
-/

namespace A319242.P17889487123315049910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319242.P17889487123315049910

/-! ## A319242.P3591949735938186018

`record[A056239(n+2)%2*A287620(n+2)]`
-/

namespace A319242.P3591949735938186018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (n + 2)) 2 * A287620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319242.P3591949735938186018

/-! ## A319242.P11752386963562104081

`record[A007947((n+1)*A066328(n+2)%2+1)]`
-/

namespace A319242.P11752386963562104081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * Int.tmod (A066328 (n + 2)) 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319242.P11752386963562104081

/-!
# A319244: Expansion of Product_{k>0} (1 - x^(k^3))/(1 + x^(k^3)).

The programs for A319244, there is no canonical definition to state claims against.
-/

/-! ## A319244.P4547208744399192948

`Δ[A057428(A002412(n))^A020664(n+1)]`
-/

namespace A319244.P4547208744399192948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (A002412 n).toNat : ℚ) ^ (A020664 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319244.P4547208744399192948

/-! ## A319244.P2667009725767721071

`Δ[A057428(A000578(n))^A020664(n+1)]`
-/

namespace A319244.P2667009725767721071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (A000578 n).toNat : ℚ) ^ (A020664 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319244.P2667009725767721071

/-! ## A319244.P10969232609814555888

`A112300(A008860(n))`
-/

namespace A319244.P10969232609814555888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112300 (A008860 n).toNat

end

end A319244.P10969232609814555888

/-! ## A319244.P13909752219023888617

`Δ[A057428(n)^A089278(2*(n+2))]`
-/

namespace A319244.P13909752219023888617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A089278 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319244.P13909752219023888617

/-! ## A319244.P12074696549479853797

`Δ[Δ[A134452(2^n-(n+1))]]`
-/

namespace A319244.P12074696549479853797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (2 ^ n - (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319244.P12074696549479853797

/-!
# A319245: Numbers k such that k^2 + 1 divides 2^k + 8.

The programs for A319245, there is no canonical definition to state claims against.
-/

/-! ## A319245.P10171550262491333521

`A000695(A351015(n))%A145899(n+1)`
-/

namespace A319245.P10171550262491333521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 (A351015 n).toNat) (A145899 (n + 1))

end

end A319245.P10171550262491333521

/-! ## A319245.P18287597381786981758

`A226069(n+1)%A177807(A014962(n+1))`
-/

namespace A319245.P18287597381786981758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226069 (n + 1)) (A177807 (A014962 (n + 1)).toNat)

end

end A319245.P18287597381786981758

/-!
# A319246: Sum of prime indices of the n-th squarefree number.

The programs for A319246, there is no canonical definition to state claims against.
-/

/-! ## A319246.P9920276459271352273

`A056239(record[∏{p}[n, #]])`
-/

namespace A319246.P9920276459271352273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A319246.P9920276459271352273

/-! ## A319246.P3703734748949470344

`A066328(record[∏{p}[n, #]])`
-/

namespace A319246.P3703734748949470344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A319246.P3703734748949470344

/-! ## A319246.P15888693347876784886

`∑{p}[record[∏{p}[n, #]], A000720(#)]`
-/

namespace A319246.P15888693347876784886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 p

end

end A319246.P15888693347876784886

/-! ## A319246.P5906258593948660280

`A056239(comp[A105570(n)])`
-/

namespace A319246.P5906258593948660280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A319246.P5906258593948660280

/-! ## A319246.P8871926441544444584

`A066328(comp[A105570(n)])`
-/

namespace A319246.P8871926441544444584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A319246.P8871926441544444584

/-! ## A319246.P10573619025920211379

`A056239(A005117(n+1))`
-/

namespace A319246.P10573619025920211379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A005117 (n + 1)).toNat

end

end A319246.P10573619025920211379

/-! ## A319246.P13371441613407448849

`A066328(A062503(n+1))`
-/

namespace A319246.P13371441613407448849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A062503 (n + 1)).toNat

end

end A319246.P13371441613407448849

/-! ## A319246.P15173499477775655855

`A056239(A367801(n+1))`
-/

namespace A319246.P15173499477775655855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367801 (n + 1)).toNat

end

end A319246.P15173499477775655855

/-! ## A319246.P13511234993220453725

`A066328(A366786(n+1))`
-/

namespace A319246.P13511234993220453725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A366786 (n + 1)).toNat

end

end A319246.P13511234993220453725

/-! ## A319246.P16451114681171485814

`A325033(A302491(n+1))`
-/

namespace A319246.P16451114681171485814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A302491 (n + 1)).toNat

end

end A319246.P16451114681171485814

/-!
# A319247: Irregular triangle whose n-th row lists the strict integer partition whose Heinz number is the n-th squarefree number.

The programs for A319247, there is no canonical definition to state claims against.
-/

/-! ## A319247.P18372699009654404919

`A000720(p?[abs(A141673(n+1))])`
-/

namespace A319247.P18372699009654404919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141673 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319247.P18372699009654404919

/-! ## A319247.P1710867775526936191

`A003963(p?[abs(A141673(n+1))])`
-/

namespace A319247.P1710867775526936191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141673 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319247.P1710867775526936191

/-! ## A319247.P8417597381476647304

`A056239(p?[abs(A141673(n+1))])`
-/

namespace A319247.P8417597381476647304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141673 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319247.P8417597381476647304

/-! ## A319247.P17069916170603395588

`A289508(p?[abs(A141673(n+1))])`
-/

namespace A319247.P17069916170603395588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141673 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319247.P17069916170603395588

/-! ## A319247.P14025151652092080827

`A327267(p?[abs(A141673(n+1))])`
-/

namespace A319247.P14025151652092080827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141673 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327267 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319247.P14025151652092080827

/-!
# A319248: Lesser of the pairs of twin primes in A001122.

The programs for A319248, there is no canonical definition to state claims against.
-/

/-! ## A319248.P3812399091802586670

`A319249(n+1)-2`
-/

namespace A319248.P3812399091802586670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319249 (n + 1) - 2

end

end A319248.P3812399091802586670

/-! ## A319248.P13001969261148478583

`∩[A071698(n+1), A243755(n+1)]`
-/

namespace A319248.P13001969261148478583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319248.P13001969261148478583

/-! ## A319248.P6185368079798502

`∩[A243755(n+1), A270225(n+1)]`
-/

namespace A319248.P6185368079798502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319248.P6185368079798502

/-! ## A319248.P7999777722040229226

`∩[A186301(n+1), A243755(n+1)]`
-/

namespace A319248.P7999777722040229226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319248.P7999777722040229226

/-! ## A319248.P273216692024319640

`∩[A001122(n+1)-2, A001122(n+1)]`
-/

namespace A319248.P273216692024319640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319248.P273216692024319640

/-! ## A319248.P87539383076241225

`∩[A050229(n+2)-2, A050229(n+2)]`
-/

namespace A319248.P87539383076241225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319248.P87539383076241225

/-! ## A319248.P481622845192684178

`p?[gcd(2-A001122(n+2), A001122(n+1))]`
-/

namespace A319248.P481622845192684178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A001122 (n + 2)) (A001122 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A319248.P481622845192684178

/-! ## A319248.P2859812289999208852

`p?[A217948(n+1)-A000010(A241040(n+1))]`
-/

namespace A319248.P2859812289999208852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1) - A000010 (A241040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319248.P2859812289999208852

/-! ## A319248.P748202795431385178

`∩[A139099(n+1), A179194(n+1)]-2`
-/

namespace A319248.P748202795431385178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A319248.P748202795431385178

/-! ## A319248.P5491041386470828766

`∩[A179194(n+1), A179383(n+1)]-2`
-/

namespace A319248.P5491041386470828766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A319248.P5491041386470828766

/-! ## A319248.P13795864306288918960

`∩[A179194(n+1), A213050(n+1)]-2`
-/

namespace A319248.P13795864306288918960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A319248.P13795864306288918960

/-! ## A319248.P5299271746788492857

`A006530(xor(6, A319249(n+1)))`
-/

namespace A319248.P5299271746788492857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 6 (A319249 (n + 1))).toNat

end

end A319248.P5299271746788492857

/-! ## A319248.P10242305376304622898

`A020639(xor(6, A319249(n+1)))`
-/

namespace A319248.P10242305376304622898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor 6 (A319249 (n + 1))).toNat

end

end A319248.P10242305376304622898

/-! ## A319248.P13456632399943434496

`A052410(xor(6, A319249(n+1)))`
-/

namespace A319248.P13456632399943434496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (Int.xor 6 (A319249 (n + 1))).toNat

end

end A319248.P13456632399943434496

/-!
# A319249: Greater of the pairs of twin primes in A001122.

The programs for A319249, there is no canonical definition to state claims against.
-/

/-! ## A319249.P1799646354427526555

`A319248(n+1)+2`
-/

namespace A319249.P1799646354427526555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319248 (n + 1) + 2

end

end A319249.P1799646354427526555

/-! ## A319249.P4570879214317164286

`xor(6, A319248(A008624(4*n)))`
-/

namespace A319249.P4570879214317164286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A319248 (A008624 (4 * n)).toNat)

end

end A319249.P4570879214317164286

/-! ## A319249.P15098361354493445056

`∩[A071698(n+1), A243755(n+1)]+2`
-/

namespace A319249.P15098361354493445056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A319249.P15098361354493445056

/-! ## A319249.P8742092022698000207

`∩[A243755(n+1), A270225(n+1)]+2`
-/

namespace A319249.P8742092022698000207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A319249.P8742092022698000207

/-! ## A319249.P17819048184323611306

`∩[A186301(n+1), A243755(n+1)]+2`
-/

namespace A319249.P17819048184323611306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A319249.P17819048184323611306

/-! ## A319249.P8823471147938831585

`∩[A001122(n+1)+2, A001122(n+1)]`
-/

namespace A319249.P8823471147938831585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P8823471147938831585

/-! ## A319249.P13784513674815464868

`∩[A050229(n+2)+2, A050229(n+2)]`
-/

namespace A319249.P13784513674815464868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P13784513674815464868

/-! ## A319249.P4955653985351564931

`record[A001122(n+2)%(A001122(n+1)+4)]`
-/

namespace A319249.P4955653985351564931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001122 (n + 2)) (A001122 (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319249.P4955653985351564931

/-! ## A319249.P10887954242412607555

`p?[A050229(A241040(n+1))+A001122(n+1)]`
-/

namespace A319249.P10887954242412607555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (A241040 (n + 1)).toNat + A001122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319249.P10887954242412607555

/-! ## A319249.P1446021961420822721

`p?[A217948(n+1)+A000010(A241040(n+1))]`
-/

namespace A319249.P1446021961420822721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1) + A000010 (A241040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319249.P1446021961420822721

/-! ## A319249.P7072359606327917668

`∩[A001122(n+1), A179194(n+1)]`
-/

namespace A319249.P7072359606327917668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P7072359606327917668

/-! ## A319249.P3479134362671300605

`∩[A050229(n+1), A179194(n+1)]`
-/

namespace A319249.P3479134362671300605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P3479134362671300605

/-! ## A319249.P18398402805629952019

`∩[A139099(n+1), A179194(n+1)]`
-/

namespace A319249.P18398402805629952019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P18398402805629952019

/-! ## A319249.P5108892284551785297

`∩[A179194(n+1), A179383(n+1)]`
-/

namespace A319249.P5108892284551785297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P5108892284551785297

/-! ## A319249.P8953714475535469204

`∩[A179194(n+1), A213050(n+1)]`
-/

namespace A319249.P8953714475535469204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319249.P8953714475535469204

/-! ## A319249.P13813223705229704302

`A007429(A319248(n+1))`
-/

namespace A319249.P13813223705229704302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A319248 (n + 1)).toNat

end

end A319249.P13813223705229704302

/-!
# A319250: Numbers k such that 24k + 11 and 24k + 13 are a pair of twin primes in A001122.

The programs for A319250, there is no canonical definition to state claims against.
-/

/-! ## A319250.P12714355682482801687

`(A319248(n+2)-11)/24`
-/

namespace A319250.P12714355682482801687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319248 (n + 2) - 11 : ℚ) / 24

end

end A319250.P12714355682482801687

/-! ## A319250.P13776401312322290280

`(A319249(n+2)-13)/24`
-/

namespace A319250.P13776401312322290280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319249 (n + 2) - 13 : ℚ) / 24

end

end A319250.P13776401312322290280

/-! ## A319250.P9481090455125783013

`floor(A319248(n+2)/24)`
-/

namespace A319250.P9481090455125783013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319248 (n + 2) : ℚ) / 24⌋

end

end A319250.P9481090455125783013

/-! ## A319250.P15065237026743725503

`floor(A319249(n+2)/24)`
-/

namespace A319250.P15065237026743725503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319249 (n + 2) : ℚ) / 24⌋

end

end A319250.P15065237026743725503

/-! ## A319250.P9246552021275394958

`round(A319248(A065033(2*n+3))/24)`
-/

namespace A319250.P9246552021275394958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319248 (A065033 (2 * n + 3)).toNat : ℚ) / 24)

end

end A319250.P9246552021275394958

/-! ## A319250.P6069043019210994757

`∑[A194698(Δ[A319248(n+1)])]`
-/

namespace A319250.P6069043019210994757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319250.P6069043019210994757

/-! ## A319250.P11225887713899259258

`∑[A194698(Δ[A319249(n+1)])]`
-/

namespace A319250.P11225887713899259258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319249 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319250.P11225887713899259258

/-!
# A319251: Triangle read by rows: T(n,k) is the number of permutations pi of [n] with k descents such that s(pi) avoids the patterns 132, 231, 312, and 321, where s denotes West's stack-sorting map.

The programs for A319251, there is no canonical definition to state claims against.
-/

/-! ## A319251.P4815112255527545759

`A073490(A073483(n+1))+A100754(n+2)-A225413(n)`
-/

namespace A319251.P4815112255527545759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A073483 (n + 1)).toNat + (A100754 (n + 2) - A225413 n)

end

end A319251.P4815112255527545759

/-! ## A319251.P5712232769757071230

`A118759(A100862(n))+A101164(n)`
-/

namespace A319251.P5712232769757071230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A100862 n).toNat + A101164 n

end

end A319251.P5712232769757071230

/-! ## A319251.P4111685242560967250

`A118759(A107105(n)+A101164(n))`
-/

namespace A319251.P4111685242560967250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A107105 n + A101164 n).toNat

end

end A319251.P4111685242560967250

/-! ## A319251.P6736435015919365042

`A101164(n)+A100862(A100862(n)+1)`
-/

namespace A319251.P6736435015919365042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n + A100862 (A100862 n + 1).toNat

end

end A319251.P6736435015919365042

/-! ## A319251.P7329010473438818601

`A118759(A100754(n+2)-A225413(n))`
-/

namespace A319251.P7329010473438818601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A100754 (n + 2) - A225413 n).toNat

end

end A319251.P7329010473438818601

/-!
# A319252: Triangle read by rows: T(n,k) is the number of permutations pi of [n] with k+1 valleys such that s(pi) avoids the patterns 132, 231, 312, and 321, where s denotes West's stack-sorting map (0 <= k <= floor((n-1)/2)).

The programs for A319252, there is no canonical definition to state claims against.
-/

/-! ## A319252.P7070690410610333066

`A114593(n+2)-A025468(A014480(n+1))`
-/

namespace A319252.P7070690410610333066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114593 (n + 2) - A025468 (A014480 (n + 1)).toNat

end

end A319252.P7070690410610333066

/-! ## A319252.P383848878561090992

`A114593(n+2)-A102683(A062763(n+1))`
-/

namespace A319252.P383848878561090992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114593 (n + 2) - A102683 (A062763 (n + 1)).toNat

end

end A319252.P383848878561090992

/-! ## A319252.P5726913064586071998

`A114593(n+2)-A231188(A212855(n+1))`
-/

namespace A319252.P5726913064586071998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114593 (n + 2) - A231188 (A212855 (n + 1)).toNat

end

end A319252.P5726913064586071998

/-! ## A319252.P926120391642460983

`A114593(n+2)-A010054(A033488(n+4))`
-/

namespace A319252.P926120391642460983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114593 (n + 2) - A010054 (A033488 (n + 4)).toNat

end

end A319252.P926120391642460983

/-! ## A319252.P13410490199832737868

`A350656(A114593(n+2))`
-/

namespace A319252.P13410490199832737868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A114593 (n + 2)).toNat

end

end A319252.P13410490199832737868

/-!
# A319254: Array read by antidiagonals: T(n,k) is the number of series-reduced rooted trees with n leaves of k colors.

The programs for A319254, there is no canonical definition to state claims against.
-/

/-! ## A319254.P10585085441934532433

`A122176(n)*A127568(A004862(n+1))`
-/

namespace A319254.P10585085441934532433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122176 n * A127568 (A004862 (n + 1)).toNat

end

end A319254.P10585085441934532433

/-! ## A319254.P4016903594761745692

`A053166(A159881(n)^4)*A127568(n)`
-/

namespace A319254.P4016903594761745692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A159881 n ^ 4).toNat * A127568 n

end

end A319254.P4016903594761745692

/-! ## A319254.P13546845890939297741

`lcm(A127568(A004862(n+1)), A159881(n))`
-/

namespace A319254.P13546845890939297741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A127568 (A004862 (n + 1)).toNat) (A159881 n)

end

end A319254.P13546845890939297741

/-! ## A319254.P3843004414186131475

`A053166((A127568(n)*A159881(n))²²)`
-/

namespace A319254.P3843004414186131475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (((A127568 n * A159881 n) ^ 2) ^ 2).toNat

end

end A319254.P3843004414186131475

/-! ## A319254.P18044088594914968818

`A127568(A004862(n+1))*A192001(n+1)`
-/

namespace A319254.P18044088594914968818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 (A004862 (n + 1)).toNat * A192001 (n + 1)

end

end A319254.P18044088594914968818

/-!
# A319255: Number of strict antichains of multisets whose multiset union is an integer partition of n.

The programs for A319255, there is no canonical definition to state claims against.
-/

/-! ## A319255.P8542048625697195260

`A082447(A001998(n))-floor(n^(1/3))`
-/

namespace A319255.P8542048625697195260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A001998 n).toNat - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A319255.P8542048625697195260

/-! ## A319255.P4808307425464833380

`A320328(n)+A302242(A048803(n))`
-/

namespace A319255.P4808307425464833380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320328 n + A302242 (A048803 n).toNat

end

end A319255.P4808307425464833380

/-! ## A319255.P15147252921461733425

`A082447(A102877(n)-A242379(n))`
-/

namespace A319255.P15147252921461733425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A102877 n - A242379 n).toNat

end

end A319255.P15147252921461733425

/-! ## A319255.P11843418941846051950

`A003056(A026636(n)*A213709(n))`
-/

namespace A319255.P11843418941846051950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026636 n * A213709 n).toNat

end

end A319255.P11843418941846051950

/-! ## A319255.P3857599493067192532

`A191291(A191317(2*n))+A025047(n)`
-/

namespace A319255.P3857599493067192532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A191317 (2 * n)).toNat + A025047 n

end

end A319255.P3857599493067192532

/-!
# A319257: Expansion of Product_{k>0} 1/(1 - k*(k+1)/2 * x^(k*(k+1)/2)).

The programs for A319257, there is no canonical definition to state claims against.
-/

/-! ## A319257.P13743519207166685205

`A225859(A298730(n))`
-/

namespace A319257.P13743519207166685205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A298730 n).toNat

end

end A319257.P13743519207166685205

/-! ## A319257.P11009071369073167646

`A325364(A325393(A325324(n+1))²)`
-/

namespace A319257.P11009071369073167646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (A325393 (A325324 (n + 1)).toNat ^ 2).toNat

end

end A319257.P11009071369073167646

/-! ## A319257.P6226402247824794393

`A034856(A241460(n+1)+A008620(n))`
-/

namespace A319257.P6226402247824794393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A241460 (n + 1) + A008620 n).toNat

end

end A319257.P6226402247824794393

/-! ## A319257.P10182889497815686632

`A255650(A002264(n)^A175064(n+1))`
-/

namespace A319257.P10182889497815686632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255650 (SequenceMachineLib.roundAway ((A002264 n : ℚ) ^ (A175064 (n + 1) : ℤ))).toNat

end

end A319257.P10182889497815686632

/-!
# A319258: a(n) = 1 + 2*3 + 4 + 5*6 + 7 + 8*9 + 10 + 11*12 + ... + (up to n).

The programs for A319258, the canonical program `A319258.P16680523646916634004` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319258 has offset 1).

The definition of A319258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319258.P16680523646916634004

`∑[gcd(n, A335129(n+4))*A335129(n+4)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319258

/-- `∑[gcd(n, A335129(n+4))*A335129(n+4)]` -/
def P16680523646916634004.Spec : Prop :=
  ∀ n, P16680523646916634004.a n = A319258 (n + 1)

theorem P16680523646916634004.correct : P16680523646916634004.Spec := by
  intro n
  simp only [A319258, Nat.add_sub_cancel]

end A319258

/-! ## A319258.P2301294043779251821

`∑[A000463(A029739(n+1))]`
-/

namespace A319258.P2301294043779251821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A029739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P2301294043779251821

namespace A319258

/-- `∑[A000463(A029739(n+1))]` -/
def P2301294043779251821.Spec : Prop :=
  ∀ n, P2301294043779251821.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P9757501948374281931

`∑[A000463(Δ[A341301(n+1)])]`
-/

namespace A319258.P9757501948374281931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341301 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P9757501948374281931

namespace A319258

/-- `∑[A000463(Δ[A341301(n+1)])]` -/
def P9757501948374281931.Spec : Prop :=
  ∀ n, P9757501948374281931.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P17135739665426586336

`∑[A000463(A047261(n+1)-1)]`
-/

namespace A319258.P17135739665426586336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A047261 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P17135739665426586336

namespace A319258

/-- `∑[A000463(A047261(n+1)-1)]` -/
def P17135739665426586336.Spec : Prop :=
  ∀ n, P17135739665426586336.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P17274431552647915136

`∑[A000463(A032766(A042968(n+1)))]`
-/

namespace A319258.P17274431552647915136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A032766 (A042968 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P17274431552647915136

namespace A319258

/-- `∑[A000463(A032766(A042968(n+1)))]` -/
def P17274431552647915136.Spec : Prop :=
  ∀ n, P17274431552647915136.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P4385158467976382156

`∑[A000463(A131717(2*n+1))]`
-/

namespace A319258.P4385158467976382156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131717 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P4385158467976382156

namespace A319258

/-- `∑[A000463(A131717(2*n+1))]` -/
def P4385158467976382156.Spec : Prop :=
  ∀ n, P4385158467976382156.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P12612752274295175636

`∑[A109594(A047268(2*n+1)-n)]`
-/

namespace A319258.P12612752274295175636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A047268 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P12612752274295175636

namespace A319258

/-- `∑[A109594(A047268(2*n+1)-n)]` -/
def P12612752274295175636.Spec : Prop :=
  ∀ n, P12612752274295175636.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P7092315253968759968

`∑[A075362(∑[1-n%3+n])]`
-/

namespace A319258.P7092315253968759968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 3 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P7092315253968759968

namespace A319258

/-- `∑[A075362(∑[1-n%3+n])]` -/
def P7092315253968759968.Spec : Prop :=
  ∀ n, P7092315253968759968.a n = A319258 (n + 1)

end A319258

/-! ## A319258.P14046291901231957583

`∑[A187307(n²-n)+n]`
-/

namespace A319258.P14046291901231957583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (n ^ 2 - n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P14046291901231957583

namespace A319258

/-- `∑[A187307(n²-n)+n]` -/
def P14046291901231957583.Spec : Prop :=
  ∀ n, P14046291901231957583.a n = A319258 (n + 1)

end A319258

/-!
# A319264: Numbers k such that A000586(k) is divisible by k.

The programs for A319264, there is no canonical definition to state claims against.
-/

/-! ## A319264.P5128863794021985039

`eq[n, gcd(n, A000586(n))]`
-/

namespace A319264.P5128863794021985039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000586 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319264.P5128863794021985039

/-! ## A319264.P14251128317851589101

`lt[lcm(n, A000586(n)), A000586(n+1)]`
-/

namespace A319264.P14251128317851589101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000586 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319264.P14251128317851589101

/-!
# A319266: Indices of primes in sequence A000607.

The programs for A319266, there is no canonical definition to state claims against.
-/

/-! ## A319266.P10691062284355154343

`eq[2, ∏{e}[A000607(n), #+1]]`
-/

namespace A319266.P10691062284355154343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319266.P10691062284355154343

/-! ## A319266.P5193994580106763982

`eq[0, A237053(A000607(n))]`
-/

namespace A319266.P5193994580106763982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319266.P5193994580106763982

/-! ## A319266.P8815309104915777678

`eq[A107393(A000607(n)), A260196(n)]`
-/

namespace A319266.P8815309104915777678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000607 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319266.P8815309104915777678

/-! ## A319266.P3915492963884170032

`eq[0, A237053(A331849(n)+A000586(n))]`
-/

namespace A319266.P3915492963884170032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A331849 n + A000586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319266.P3915492963884170032

/-! ## A319266.P17628466544927545652

`eq[A057428(n+1), A107393(A000607(n))]`
-/

namespace A319266.P17628466544927545652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319266.P17628466544927545652

/-!
# A319267: Indices of primes in sequence A000586.

The programs for A319267, there is no canonical definition to state claims against.
-/

/-! ## A319267.P16247628635077830241

`eq[0, A237053(A000586(n))]`
-/

namespace A319267.P16247628635077830241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P16247628635077830241

/-! ## A319267.P16915346194446684940

`eq[0, A237053(A024939(n)+A024937(n))]`
-/

namespace A319267.P16915346194446684940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A024939 n + A024937 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P16915346194446684940

/-! ## A319267.P7194385296651932183

`eq[0, A237053(A000607(n)-A331849(n))]`
-/

namespace A319267.P7194385296651932183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A000607 n - A331849 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P7194385296651932183

/-! ## A319267.P8596066607555774547

`eq[0, A237053(A024937(n+2)+A024937(n))]`
-/

namespace A319267.P8596066607555774547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A024937 (n + 2) + A024937 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P8596066607555774547

/-! ## A319267.P9280201344115563419

`eq[0, A237053(A046675(n)+2*A184172(n))]`
-/

namespace A319267.P9280201344115563419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A046675 n + 2 * A184172 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P9280201344115563419

/-! ## A319267.P4443684753684177849

`eq[0, A237053(2*A184171(n)-A046675(n))]`
-/

namespace A319267.P4443684753684177849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * A184171 n - A046675 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319267.P4443684753684177849

/-! ## A319267.P18042161138460671668

`eq[A107393(A000586(n)), A260196(n)]`
-/

namespace A319267.P18042161138460671668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000586 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319267.P18042161138460671668

/-! ## A319267.P2372492222482512320

`eq[1, -A107393(A000586(n))]%A000124(n+7)`
-/

namespace A319267.P2372492222482512320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107393 (A000586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000124 (n + 7))

end

end A319267.P2372492222482512320

/-! ## A319267.P17797780261694225256

`eq[A107393(A000586(n))+A004275(n)+3, 2*n]`
-/

namespace A319267.P17797780261694225256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000586 n).toNat + (A004275 n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A319267.P17797780261694225256

/-!
# A319269: Number of uniform factorizations of n into factors > 1, where a factorization is uniform if all factors appear with the same multiplicity.

The programs for A319269, there is no canonical definition to state claims against.
-/

/-! ## A319269.P10967367250285637320

`2*A320888(n+1)-A296132(n+1)`
-/

namespace A319269.P10967367250285637320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320888 (n + 1) - A296132 (n + 1)

end

end A319269.P10967367250285637320

/-! ## A319269.P14044400524443657797

`A320888(n+1)-A070101(Δ[A006218(n)])`
-/

namespace A319269.P14044400524443657797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A070101 (f1 (n + 1) - f1 n).toNat

end

end A319269.P14044400524443657797

/-! ## A319269.P3190821443337997830

`A320888(n+1)-A070101(Δ[A054519(n)])`
-/

namespace A319269.P3190821443337997830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A070101 (f1 (n + 1) - f1 n).toNat

end

end A319269.P3190821443337997830

/-! ## A319269.P5888002434429372402

`A303553(A045965(n+1))+A045778(n+1)`
-/

namespace A319269.P5888002434429372402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303553 (A045965 (n + 1)).toNat + A045778 (n + 1)

end

end A319269.P5888002434429372402

/-! ## A319269.P589764732721900202

`A320889(n+1)+A032741(A052409(n+1))`
-/

namespace A319269.P589764732721900202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320889 (n + 1) + A032741 (A052409 (n + 1)).toNat

end

end A319269.P589764732721900202

/-! ## A319269.P7782271743629986609

`A320888(n+1)-A026825(A000688(n+1))`
-/

namespace A319269.P7782271743629986609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A026825 (A000688 (n + 1)).toNat

end

end A319269.P7782271743629986609

/-! ## A319269.P1926921472708371892

`A320888(n+1)-A025436(A048105(n+1))`
-/

namespace A319269.P1926921472708371892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A025436 (A048105 (n + 1)).toNat

end

end A319269.P1926921472708371892

/-! ## A319269.P2898470866012369439

`A320888(n+1)-A011765(A069739(n+1))`
-/

namespace A319269.P2898470866012369439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A011765 (A069739 (n + 1)).toNat

end

end A319269.P2898470866012369439

/-! ## A319269.P8277880375534531652

`A320888(n+1)-A037910(A096737(n+1))`
-/

namespace A319269.P8277880375534531652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) - A037910 (A096737 (n + 1)).toNat

end

end A319269.P8277880375534531652

/-!
# A319270: Numbers that are 1 or whose prime indices are relatively prime and belong to the sequence, and whose prime multiplicities are also relatively prime.

The programs for A319270, there is no canonical definition to state claims against.
-/

/-! ## A319270.P12451066977079772596

`∩[A303431(n+1), A316470(n+1)]`
-/

namespace A319270.P12451066977079772596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319270.P12451066977079772596

/-! ## A319270.P4627878419808284821

`∩[A316470(n+1), A317709(n+1)]`
-/

namespace A319270.P4627878419808284821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319270.P4627878419808284821

/-! ## A319270.P16019653869251401405

`∩[A317709(n+1), A331935(n+1)]`
-/

namespace A319270.P16019653869251401405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319270.P16019653869251401405

/-! ## A319270.P2382107079931822624

`∩[lt[A184169(n+1), 2]+1, A303431(n+1)]`
-/

namespace A319270.P2382107079931822624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A319270.P2382107079931822624

/-! ## A319270.P11339557957059795748

`∩[lt[A184169(n+1), 2]+1, A317709(n+1)]`
-/

namespace A319270.P11339557957059795748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A319270.P11339557957059795748

/-!
# A319272: Numbers whose prime multiplicities are distinct and whose prime indices are term of the sequence.

The programs for A319272, there is no canonical definition to state claims against.
-/

/-! ## A319272.P408167496577792694

`A130091(A059543(n+1)%A123910(n+1))`
-/

namespace A319272.P408167496577792694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (Int.tmod (A059543 (n + 1)) (A123910 (n + 1))).toNat

end

end A319272.P408167496577792694

/-! ## A319272.P17371302831196465815

`A130091(A059543(n+1))%A304284(n+1)`
-/

namespace A319272.P17371302831196465815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130091 (A059543 (n + 1)).toNat) (A304284 (n + 1))

end

end A319272.P17371302831196465815

/-! ## A319272.P7480708419630790780

`A130091(lt[A246609(n), A103038(n+1)])`
-/

namespace A319272.P7480708419630790780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319272.P7480708419630790780

/-! ## A319272.P15993308881943378670

`A130091(lt[A084318(n+4), A357575(2*n+1)])`
-/

namespace A319272.P15993308881943378670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084318 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357575 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319272.P15993308881943378670

/-!
# A319273: Signed sum over the prime multiplicities of n.

The programs for A319273, there is no canonical definition to state claims against.
-/

/-! ## A319273.P12124990175875971720

`A195017(lcm(2, A071364(n+1)))`
-/

namespace A319273.P12124990175875971720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (Int.lcm 2 (A071364 (n + 1)))

end

end A319273.P12124990175875971720

/-! ## A319273.P5894631258504130912

`A195017(A109043(A071364(n+1)))`
-/

namespace A319273.P5894631258504130912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A109043 (A071364 (n + 1)).toNat).toNat

end

end A319273.P5894631258504130912

/-! ## A319273.P1153461131959715464

`A195017(A071364(n+1)+A000007(n))`
-/

namespace A319273.P1153461131959715464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A071364 (n + 1) + A000007 n).toNat

end

end A319273.P1153461131959715464

/-! ## A319273.P14029158381121747323

`A225693(A151933(n)+A037916(n+1))`
-/

namespace A319273.P14029158381121747323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A151933 n + A037916 (n + 1)).toNat

end

end A319273.P14029158381121747323

/-! ## A319273.P11013888462873631049

`A195017(A151933(n)+A071364(n+1))`
-/

namespace A319273.P11013888462873631049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A151933 n + A071364 (n + 1)).toNat

end

end A319273.P11013888462873631049

/-!
# A319278: Square array sigma_k(n) read down antidiagonals: sum of the k-th powers of the divisors of n.

The programs for A319278, there is no canonical definition to state claims against.
-/

/-! ## A319278.P13686464893133781990

`A279394(comp[∑[n]])`
-/

namespace A319278.P13686464893133781990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A319278.P13686464893133781990

/-! ## A319278.P5304404562223394367

`A109974(A099375(n)+1+n)`
-/

namespace A319278.P5304404562223394367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A099375 n + 1 + (n : ℤ)).toNat

end

end A319278.P5304404562223394367

/-! ## A319278.P7087517864024905083

`A109974(A212012(n+1)+n)`
-/

namespace A319278.P7087517864024905083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A319278.P7087517864024905083

/-! ## A319278.P15845246767633277812

`A109974(A061579(comp[∑[n]])+1)`
-/

namespace A319278.P15845246767633277812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A319278.P15845246767633277812

/-! ## A319278.P5107441104080467235

`A109974(A061579(comp[∑[n-1]]))`
-/

namespace A319278.P5107441104080467235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A319278.P5107441104080467235

/-! ## A319278.P7371476727368425413

`A109974(A114327(n)+comp[∑[n]])`
-/

namespace A319278.P7371476727368425413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A319278.P7371476727368425413

/-! ## A319278.P2776794906950583490

`or(char[1], A279394(A014132(n+1)))`
-/

namespace A319278.P2776794906950583490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279394 (A014132 (n + 1)).toNat)

end

end A319278.P2776794906950583490

/-! ## A319278.P13466780683968226978

`A109974(2*A004736(n+1)+n)`
-/

namespace A319278.P13466780683968226978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A319278.P13466780683968226978

/-! ## A319278.P2345363411080529301

`∑{d}[A002260(n+1), #^A193592(n)]`
-/

namespace A319278.P2345363411080529301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A193592 n : ℤ)

end

end A319278.P2345363411080529301

/-! ## A319278.P5449043200156588001

`∑{d}[A002260(n+1), #^A193739(n)]`
-/

namespace A319278.P5449043200156588001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A193739 n : ℤ)

end

end A319278.P5449043200156588001

/-!
# A319279: Numbers that are congruent to {0, 3, 7, 10} mod 12.

The programs for A319279, the canonical program `A319279.P18019565050650500501` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319279 has offset 1).

The definition of A319279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319279.P18019565050650500501

`a(n-4)+12` with `a(0)=0, a(1)=3, a(2)=7, a(3)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319279

/-- `a(n-4)+12` -/
def P18019565050650500501.Spec : Prop :=
  ∀ n, (P18019565050650500501.a n : ℤ) = A319279 (n + 1)

theorem P18019565050650500501.correct : P18019565050650500501.Spec := by
  intro n
  simp only [A319279, Nat.add_sub_cancel]

end A319279

/-! ## A319279.P14699995833481847616

`(6*(n+1)-5+sqrt(2)*cos(π*(n+1)/2+π/4))/2`
-/

namespace A319279.P14699995833481847616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - 5 : ℝ) + Real.sqrt (2 : ℝ) * Real.cos (Real.pi * (n + 1 : ℝ) / 2 + Real.pi / 4)) / 2

end

end A319279.P14699995833481847616

namespace A319279

/-- `(6*(n+1)-5+sqrt(2)*cos(π*(n+1)/2+π/4))/2` -/
def P14699995833481847616.Spec : Prop :=
  ∀ n, P14699995833481847616.a n = (A319279 (n + 1) : ℝ)

end A319279

/-! ## A319279.P17294493929444915776

`char[or(2, n)]+3*n`
-/

namespace A319279.P17294493929444915776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * n

end

end A319279.P17294493929444915776

namespace A319279

/-- `char[or(2, n)]+3*n` -/
def P17294493929444915776.Spec : Prop :=
  ∀ n, (P17294493929444915776.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P5717772881864584355

`and(2, n)/2+3*n`
-/

namespace A319279.P5717772881864584355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 + (3 * n : ℚ)

end

end A319279.P5717772881864584355

namespace A319279

/-- `and(2, n)/2+3*n` -/
def P5717772881864584355.Spec : Prop :=
  ∀ n, P5717772881864584355.a n = (A319279 (n + 1) : ℚ)

end A319279

/-! ## A319279.P6790035883319075471

`∑[6-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A319279.P6790035883319075471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319279.P6790035883319075471

namespace A319279

/-- `∑[6-a(n-2)]` -/
def P6790035883319075471.Spec : Prop :=
  ∀ n, P6790035883319075471.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P7902391387918384476

`∑[gcd(4, n)%4+2]-2`
-/

namespace A319279.P7902391387918384476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A319279.P7902391387918384476

namespace A319279

/-- `∑[gcd(4, n)%4+2]-2` -/
def P7902391387918384476.Spec : Prop :=
  ∀ n, P7902391387918384476.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P13127475283148213811

`floor(n/2)%2+3*n`
-/

namespace A319279.P13127475283148213811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 2⌋ 2 + (3 * n : ℤ)

end

end A319279.P13127475283148213811

namespace A319279

/-- `floor(n/2)%2+3*n` -/
def P13127475283148213811.Spec : Prop :=
  ∀ n, P13127475283148213811.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P1986961082203134975

`3*n-(n-∑[n])%2`
-/

namespace A319279.P1986961082203134975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - Int.tmod ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 2

end

end A319279.P1986961082203134975

namespace A319279

/-- `3*n-(n-∑[n])%2` -/
def P1986961082203134975.Spec : Prop :=
  ∀ n, P1986961082203134975.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P15476214055352174630

`∑[3-∑[(-1)^∑[n]]]-2`
-/

namespace A319279.P15476214055352174630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A319279.P15476214055352174630

namespace A319279

/-- `∑[3-∑[(-1)^∑[n]]]-2` -/
def P15476214055352174630.Spec : Prop :=
  ∀ n, P15476214055352174630.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P5062663869838502930

`ogf((3x+x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A319279.P5062663869838502930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 2] [1, -2, 2, -2, 1] n

end

end A319279.P5062663869838502930

namespace A319279

/-- `ogf((3x+x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P5062663869838502930.Spec : Prop :=
  ∀ n, P5062663869838502930.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P16012839759778138667

`xor(A047238(n+1), A140081(n))`
-/

namespace A319279.P16012839759778138667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047238 (n + 1)) (A140081 n)

end

end A319279.P16012839759778138667

namespace A319279

/-- `xor(A047238(n+1), A140081(n))` -/
def P16012839759778138667.Spec : Prop :=
  ∀ n, P16012839759778138667.a n = A319279 (n + 1)

end A319279

/-! ## A319279.P12796704339311901807

`∪[A013574(n+1), A001196(n)]`
-/

namespace A319279.P12796704339311901807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P12796704339311901807

namespace A319279

/-- `∪[A013574(n+1), A001196(n)]` -/
def P12796704339311901807.Spec : Prop :=
  ∀ n, (P12796704339311901807.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P14480988655523069956

`∪[A008594(n), A013574(n+1)]`
-/

namespace A319279.P14480988655523069956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P14480988655523069956

namespace A319279

/-- `∪[A008594(n), A013574(n+1)]` -/
def P14480988655523069956.Spec : Prop :=
  ∀ n, (P14480988655523069956.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P13522845525306492919

`∪[A013574(n+1), A016913(n)]`
-/

namespace A319279.P13522845525306492919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P13522845525306492919

namespace A319279

/-- `∪[A013574(n+1), A016913(n)]` -/
def P13522845525306492919.Spec : Prop :=
  ∀ n, (P13522845525306492919.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P2209441716284658539

`∪[A016912(n), A013574(n+1)]`
-/

namespace A319279.P2209441716284658539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P2209441716284658539

namespace A319279

/-- `∪[A016912(n), A013574(n+1)]` -/
def P2209441716284658539.Spec : Prop :=
  ∀ n, (P2209441716284658539.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P6079979830334295943

`∪[A032780(n), A013574(n+1)]`
-/

namespace A319279.P6079979830334295943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P6079979830334295943

namespace A319279

/-- `∪[A032780(n), A013574(n+1)]` -/
def P6079979830334295943.Spec : Prop :=
  ∀ n, (P6079979830334295943.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P2944243678377364785

`∪[A013574(n+1), A033486(n)]`
-/

namespace A319279.P2944243678377364785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P2944243678377364785

namespace A319279

/-- `∪[A013574(n+1), A033486(n)]` -/
def P2944243678377364785.Spec : Prop :=
  ∀ n, (P2944243678377364785.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P12818993820313624572

`∪[A063497(n), A013574(n+1)]`
-/

namespace A319279.P12818993820313624572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P12818993820313624572

namespace A319279

/-- `∪[A063497(n), A013574(n+1)]` -/
def P12818993820313624572.Spec : Prop :=
  ∀ n, (P12818993820313624572.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P13053886101321698458

`∪[A013574(n+1), A115828(n)]`
-/

namespace A319279.P13053886101321698458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319279.P13053886101321698458

namespace A319279

/-- `∪[A013574(n+1), A115828(n)]` -/
def P13053886101321698458.Spec : Prop :=
  ∀ n, (P13053886101321698458.a n : ℤ) = A319279 (n + 1)

end A319279

/-! ## A319279.P11913739693620852161

`(A087960(n+1)+6*n+1)/2`
-/

namespace A319279.P11913739693620852161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (n + 1) + (6 * n + 1 : ℤ) : ℚ) / 2

end

end A319279.P11913739693620852161

namespace A319279

/-- `(A087960(n+1)+6*n+1)/2` -/
def P11913739693620852161.Spec : Prop :=
  ∀ n, P11913739693620852161.a n = (A319279 (n + 1) : ℚ)

end A319279

/-!
# A319280: Numbers that are congruent to {0, 4, 7, 11} mod 12.

The programs for A319280, the canonical program `A319280.P285428568535865696` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319280 has offset 1).

The definition of A319280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319280.P285428568535865696

`a(n-4)+12` with `a(0)=0, a(1)=4, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319280

/-- `a(n-4)+12` -/
def P285428568535865696.Spec : Prop :=
  ∀ n, (P285428568535865696.a n : ℤ) = A319280 (n + 1)

theorem P285428568535865696.correct : P285428568535865696.Spec := by
  intro n
  simp only [A319280, Nat.add_sub_cancel]

end A319280

/-! ## A319280.P8158150509987112099

`(6*(n+1)-4+(-1)^(n+1)+sqrt(2)*cos(π*(n+1)/2+π/4))/2`
-/

namespace A319280.P8158150509987112099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - 4 + (-1) ^ (n + 1) : ℝ) + Real.sqrt (2 : ℝ) * Real.cos (Real.pi * (n + 1 : ℝ) / 2 + Real.pi / 4)) / 2

end

end A319280.P8158150509987112099

namespace A319280

/-- `(6*(n+1)-4+(-1)^(n+1)+sqrt(2)*cos(π*(n+1)/2+π/4))/2` -/
def P8158150509987112099.Spec : Prop :=
  ∀ n, P8158150509987112099.a n = (A319280 (n + 1) : ℝ)

end A319280

/-! ## A319280.P7667322626338159432

`∑[5-gcd(4, n)]-1`
-/

namespace A319280.P7667322626338159432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A319280.P7667322626338159432

namespace A319280

/-- `∑[5-gcd(4, n)]-1` -/
def P7667322626338159432.Spec : Prop :=
  ∀ n, P7667322626338159432.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P8653403672629984103

`round(sqrt(n%4))+3*n`
-/

namespace A319280.P8653403672629984103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n % 4 : ℕ) : ℝ)) + (3 * n : ℤ)

end

end A319280.P8653403672629984103

namespace A319280

/-- `round(sqrt(n%4))+3*n` -/
def P8653403672629984103.Spec : Prop :=
  ∀ n, P8653403672629984103.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P8098846924272717406

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=4, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A319280.P8098846924272717406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 4, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319280.P8098846924272717406

namespace A319280

/-- `∑[floor(a(n-4))]` -/
def P8098846924272717406.Spec : Prop :=
  ∀ n, (P8098846924272717406.a n : ℤ) = A319280 (n + 1)

end A319280

/-! ## A319280.P4211293598124655386

`5-xor(-2, a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A319280.P4211293598124655386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  5 - Int.xor (-2) (a (n - 2))

end

end A319280.P4211293598124655386

namespace A319280

/-- `5-xor(-2, a(n-2))` -/
def P4211293598124655386.Spec : Prop :=
  ∀ n, P4211293598124655386.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P12104265353391112121

`∑[a(n-4)%5]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=4, a(4)=1`
-/

namespace A319280.P12104265353391112121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 4, 1] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319280.P12104265353391112121

namespace A319280

/-- `∑[a(n-4)%5]` -/
def P12104265353391112121.Spec : Prop :=
  ∀ n, (P12104265353391112121.a n : ℤ) = A319280 (n + 1)

end A319280

/-! ## A319280.P9090001835784519693

`∑[((n+1)^3-1)%4]+n`
-/

namespace A319280.P9090001835784519693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 3 : ℤ) - 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A319280.P9090001835784519693

namespace A319280

/-- `∑[((n+1)^3-1)%4]+n` -/
def P9090001835784519693.Spec : Prop :=
  ∀ n, P9090001835784519693.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P7585238277898359579

`∑[∑[3/a(n-2)]]` with `a(0)=0, a(1)=4, a(2)=-1, a(3)=1`
-/

namespace A319280.P7585238277898359579
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 4, -1, 1] fun n f2 =>
  3 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319280.P7585238277898359579

namespace A319280

/-- `∑[∑[3/a(n-2)]]` -/
def P7585238277898359579.Spec : Prop :=
  ∀ n, P7585238277898359579.a n = (A319280 (n + 1) : ℚ)

end A319280

/-! ## A319280.P13503507339538252871

`∑[∑[ogf((1+4x+3x^2+4x^3)/(1+x+x^2+x^3))]]-1`
-/

namespace A319280.P13503507339538252871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3, 4] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A319280.P13503507339538252871

namespace A319280

/-- `∑[∑[ogf((1+4x+3x^2+4x^3)/(1+x+x^2+x^3))]]-1` -/
def P13503507339538252871.Spec : Prop :=
  ∀ n, P13503507339538252871.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P3785604711109098012

`A140081(n)+3*n`
-/

namespace A319280.P3785604711109098012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n + (3 * n : ℤ)

end

end A319280.P3785604711109098012

namespace A319280

/-- `A140081(n)+3*n` -/
def P3785604711109098012.Spec : Prop :=
  ∀ n, P3785604711109098012.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P11593748025615576102

`5*n-A047460(n+1)`
-/

namespace A319280.P11593748025615576102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A047460 (n + 1)

end

end A319280.P11593748025615576102

namespace A319280

/-- `5*n-A047460(n+1)` -/
def P11593748025615576102.Spec : Prop :=
  ∀ n, P11593748025615576102.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P10217539206859153773

`A319279(n+1)+and(1, n)`
-/

namespace A319280.P10217539206859153773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1) + (Nat.land 1 n : ℤ)

end

end A319280.P10217539206859153773

namespace A319280

/-- `A319279(n+1)+and(1, n)` -/
def P10217539206859153773.Spec : Prop :=
  ∀ n, P10217539206859153773.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P17830581426194720812

`A047233(n+1)+char[or(2, n)]`
-/

namespace A319280.P17830581426194720812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319280.P17830581426194720812

namespace A319280

/-- `A047233(n+1)+char[or(2, n)]` -/
def P17830581426194720812.Spec : Prop :=
  ∀ n, P17830581426194720812.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P8310442223982399683

`A016777(n)-A102560(n)`
-/

namespace A319280.P8310442223982399683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A102560 n

end

end A319280.P8310442223982399683

namespace A319280

/-- `A016777(n)-A102560(n)` -/
def P8310442223982399683.Spec : Prop :=
  ∀ n, P8310442223982399683.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P10453507545425430509

`A276283(n)-A219977(n)`
-/

namespace A319280.P10453507545425430509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n - A219977 n

end

end A319280.P10453507545425430509

namespace A319280

/-- `A276283(n)-A219977(n)` -/
def P10453507545425430509.Spec : Prop :=
  ∀ n, P10453507545425430509.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P719268486126987558

`A047233(n+1)+A021913(n)`
-/

namespace A319280.P719268486126987558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1) + A021913 n

end

end A319280.P719268486126987558

namespace A319280

/-- `A047233(n+1)+A021913(n)` -/
def P719268486126987558.Spec : Prop :=
  ∀ n, P719268486126987558.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P13472628425782795874

`A083219(n)+A047218(n+1)`
-/

namespace A319280.P13472628425782795874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n + A047218 (n + 1)

end

end A319280.P13472628425782795874

namespace A319280

/-- `A083219(n)+A047218(n+1)` -/
def P13472628425782795874.Spec : Prop :=
  ∀ n, P13472628425782795874.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P17816283311321849516

`A083220(n)+A047605(n+1)`
-/

namespace A319280.P17816283311321849516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n + A047605 (n + 1)

end

end A319280.P17816283311321849516

namespace A319280

/-- `A083220(n)+A047605(n+1)` -/
def P17816283311321849516.Spec : Prop :=
  ∀ n, P17816283311321849516.a n = A319280 (n + 1)

end A319280

/-! ## A319280.P10547893513959100641

`A130482(n)+A047250(n+1)`
-/

namespace A319280.P10547893513959100641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 n + A047250 (n + 1)

end

end A319280.P10547893513959100641

namespace A319280

/-- `A130482(n)+A047250(n+1)` -/
def P10547893513959100641.Spec : Prop :=
  ∀ n, P10547893513959100641.a n = A319280 (n + 1)

end A319280

/-!
# A319281: Numbers of the form 16^i*(16*j + 1).

The programs for A319281, the canonical program `A319281.P15976617881653790280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319281 has offset 1).

The definition of A319281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319281.P15976617881653790280

`record[and(A097262(n)+1, n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319281

/-- `record[and(A097262(n)+1, n+1)]` -/
def P15976617881653790280.Spec : Prop :=
  ∀ n, P15976617881653790280.a n = A319281 (n + 1)

theorem P15976617881653790280.correct : P15976617881653790280.Spec := by
  intro n
  simp only [A319281, Nat.add_sub_cancel]

end A319281

/-!
# A319282: Numbers of the form 16^i*(16*j + 15).

The programs for A319282, there is no canonical definition to state claims against.
-/

/-! ## A319282.P1238038162212822848

`or(A046046(n+1), A206550(A003543(n+1)))`
-/

namespace A319282.P1238038162212822848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046046 (n + 1)) (A206550 (A003543 (n + 1)).toNat)

end

end A319282.P1238038162212822848

/-! ## A319282.P9620429183656730222

`record[A217558(A112232(n+1))-1]`
-/

namespace A319282.P9620429183656730222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A112232 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319282.P9620429183656730222

/-!
# A319283: Number of nodes of the backtrack tree for the n queens problem.

The programs for A319283, there is no canonical definition to state claims against.
-/

/-! ## A319283.P13482930035795446500

`∑[A324695(A238427(n))]`
-/

namespace A319283.P13482930035795446500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A238427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319283.P13482930035795446500

/-! ## A319283.P1879772361746615931

`∑[A324695(A362635(n))]`
-/

namespace A319283.P1879772361746615931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A362635 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319283.P1879772361746615931

/-! ## A319283.P5480496289239344785

`A106432(A037127(n)+1)`
-/

namespace A319283.P5480496289239344785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A037127 n + 1).toNat

end

end A319283.P5480496289239344785

/-!
# A319285: Number of series-reduced locally stable rooted trees whose leaves span an initial interval of positive integers with multiplicities an integer partition of n.

The programs for A319285, there is no canonical definition to state claims against.
-/

/-! ## A319285.P12549963784034507804

`A052375(9^n+1)+n+1`
-/

namespace A319285.P12549963784034507804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (9 ^ n + 1) + (n + 1 : ℤ)

end

end A319285.P12549963784034507804

/-!
# A319286: Number of series-reduced locally disjoint rooted trees whose leaves span an initial interval of positive integers with multiplicities an integer partition of n.

The programs for A319286, there is no canonical definition to state claims against.
-/

/-! ## A319286.P8886914496917270245

`A355616(A141495(n))`
-/

namespace A319286.P8886914496917270245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355616 (A141495 n).toNat

end

end A319286.P8886914496917270245

/-!
# A319287: Primes of the form x^2 + y^2 where x contains only the decimal digits 0 through 6 (not 7, 8, or 9).

The programs for A319287, there is no canonical definition to state claims against.
-/

/-! ## A319287.P17093643916996113106

`A002313(A105427(n+1)%A105442(n+1))`
-/

namespace A319287.P17093643916996113106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (Int.tmod (A105427 (n + 1)) (A105442 (n + 1))).toNat

end

end A319287.P17093643916996113106

/-! ## A319287.P14167894212794390204

`A000040(∩[A080147(n+1), A340745(n+1)])`
-/

namespace A319287.P14167894212794390204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A319287.P14167894212794390204

/-! ## A319287.P13239751328379305525

`p?[A338062(n+1)%A000217(A014442(n+1))]`
-/

namespace A319287.P13239751328379305525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338062 (n + 1)) (A000217 (A014442 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319287.P13239751328379305525

/-! ## A319287.P14918771225999451533

`p?[A001248(A195989(n+1))+2*n+1]`
-/

namespace A319287.P14918771225999451533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A195989 (n + 1)).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319287.P14918771225999451533

/-! ## A319287.P479649576262479978

`p?[A057653(n+1)+A010052(A339956(n+1))]`
-/

namespace A319287.P479649576262479978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1) + A010052 (A339956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319287.P479649576262479978

/-!
# A319289: The x coordinates of the shell enumeration of N X N where N = {0, 1, 2, ...} (A319514).

The programs for A319289, there is no canonical definition to state claims against.
-/

/-! ## A319289.P6930361847777086917

`A319290(n)-A329116(n)`
-/

namespace A319289.P6930361847777086917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n - A329116 n

end

end A319289.P6930361847777086917

/-! ## A319289.P2384948140453802432

`A213088(n+1)-A319290(n)`
-/

namespace A319289.P2384948140453802432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213088 (n + 1) - A319290 n

end

end A319289.P2384948140453802432

/-! ## A319289.P16487936073842608831

`A209302(n+1)-(A319290(n)+1)`
-/

namespace A319289.P16487936073842608831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - (A319290 n + 1)

end

end A319289.P16487936073842608831

/-! ## A319289.P16447506093314227745

`A220604(n+1)-1`
-/

namespace A319289.P16447506093314227745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (n + 1) - 1

end

end A319289.P16447506093314227745

/-! ## A319289.P36819756447403005

`A159797(C(A220604(n+1), 2))`
-/

namespace A319289.P36819756447403005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (Nat.choose (A220604 (n + 1)).toNat 2)

end

end A319289.P36819756447403005

/-! ## A319289.P828402874492806267

`A209302(n+1)-A220603(n+1)`
-/

namespace A319289.P828402874492806267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A220603 (n + 1)

end

end A319289.P828402874492806267

/-! ## A319289.P13334902962236136024

`A220603(n+1)-(A329116(n)+1)`
-/

namespace A319289.P13334902962236136024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) - (A329116 n + 1)

end

end A319289.P13334902962236136024

/-! ## A319289.P13713880682714278396

`A194280(n+1)-(A161680(A209302(n+1))+1)`
-/

namespace A319289.P13713880682714278396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (n + 1) - (A161680 (A209302 (n + 1)).toNat + 1)

end

end A319289.P13713880682714278396

/-! ## A319289.P11015573407459616873

`A220603(A020703(n+1))-1`
-/

namespace A319289.P11015573407459616873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A020703 (n + 1)).toNat - 1

end

end A319289.P11015573407459616873

/-! ## A319289.P9421455244673746377

`A002260(A194280(n+1))-1`
-/

namespace A319289.P9421455244673746377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194280 (n + 1)).toNat - 1

end

end A319289.P9421455244673746377

/-! ## A319289.P14494598057921846670

`A319514(2*n)`
-/

namespace A319289.P14494598057921846670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (2 * n)

end

end A319289.P14494598057921846670

/-! ## A319289.P10061478041031513168

`A208233(A064788(n+1))-1`
-/

namespace A319289.P10061478041031513168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064788 (n + 1)).toNat - 1

end

end A319289.P10061478041031513168

/-! ## A319289.P5868264475657585745

`A208234(A064790(n+1))-1`
-/

namespace A319289.P5868264475657585745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064790 (n + 1)).toNat - 1

end

end A319289.P5868264475657585745

/-! ## A319289.P8439748803028691287

`A210535(A214929(n+1))-1`
-/

namespace A319289.P8439748803028691287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (A214929 (n + 1)).toNat - 1

end

end A319289.P8439748803028691287

/-! ## A319289.P7444213130783549051

`A200748(n)%A220604(n+1)`
-/

namespace A319289.P7444213130783549051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A220604 (n + 1))

end

end A319289.P7444213130783549051

/-! ## A319289.P10499528005538829391

`A056559(A331987(A319514(n+n)))`
-/

namespace A319289.P10499528005538829391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A331987 (A319514 (n + n)).toNat).toNat

end

end A319289.P10499528005538829391

/-! ## A319289.P1464800093478219644

`A083800(n+1)%A220604(n+1)`
-/

namespace A319289.P1464800093478219644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A220604 (n + 1))

end

end A319289.P1464800093478219644

/-! ## A319289.P1193826080977659137

`A070198(n)%A220604(n+1)`
-/

namespace A319289.P1193826080977659137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A220604 (n + 1))

end

end A319289.P1193826080977659137

/-! ## A319289.P1918043934710539595

`A079782(n+1)%A220604(n+1)`
-/

namespace A319289.P1918043934710539595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A220604 (n + 1))

end

end A319289.P1918043934710539595

/-! ## A319289.P7208414062882886653

`A083685(n+1)%A220604(n+1)`
-/

namespace A319289.P7208414062882886653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A220604 (n + 1))

end

end A319289.P7208414062882886653

/-!
# A319290: The y coordinates of the shell enumeration of N X N where N = {0, 1, 2, ...}(A319514).

The programs for A319290, there is no canonical definition to state claims against.
-/

/-! ## A319290.P10822466449976624278

`A329116(n)+A319289(n)`
-/

namespace A319290.P10822466449976624278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + A319289 n

end

end A319290.P10822466449976624278

/-! ## A319290.P4419049254918374444

`A213088(n+1)-A319289(n)`
-/

namespace A319290.P4419049254918374444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213088 (n + 1) - A319289 n

end

end A319290.P4419049254918374444

/-! ## A319290.P9220097696550344187

`A209302(n+1)-(A319289(n)+1)`
-/

namespace A319290.P9220097696550344187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - (A319289 n + 1)

end

end A319290.P9220097696550344187

/-! ## A319290.P12248087571097699498

`A220603(n+1)-1`
-/

namespace A319290.P12248087571097699498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) - 1

end

end A319290.P12248087571097699498

/-! ## A319290.P15780162846725907415

`A209302(n+1)-A220604(n+1)`
-/

namespace A319290.P15780162846725907415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A220604 (n + 1)

end

end A319290.P15780162846725907415

/-! ## A319290.P7854388309146987661

`A220604(n+1)+A329116(n)-1`
-/

namespace A319290.P7854388309146987661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (n + 1) + (A329116 n - 1)

end

end A319290.P7854388309146987661

/-! ## A319290.P7025230474717855502

`A161680(A209302(n+1)+1)-A194280(n+1)`
-/

namespace A319290.P7025230474717855502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A209302 (n + 1) + 1).toNat - A194280 (n + 1)

end

end A319290.P7025230474717855502

/-! ## A319290.P9107726550821122595

`A220604(A020703(n+1))-1`
-/

namespace A319290.P9107726550821122595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A020703 (n + 1)).toNat - 1

end

end A319290.P9107726550821122595

/-! ## A319290.P13918877223224377329

`A004736(A194280(n+1))-1`
-/

namespace A319290.P13918877223224377329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194280 (n + 1)).toNat - 1

end

end A319290.P13918877223224377329

/-! ## A319290.P11798146280188219314

`A220073(A214929(n+1))-1`
-/

namespace A319290.P11798146280188219314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A214929 (n + 1)).toNat - 1

end

end A319290.P11798146280188219314

/-! ## A319290.P15553734817608532057

`A319514(Δ[n²])`
-/

namespace A319290.P15553734817608532057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A319290.P15553734817608532057

/-! ## A319290.P17737784418231702888

`A208234(A064788(n+1))-1`
-/

namespace A319290.P17737784418231702888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064788 (n + 1)).toNat - 1

end

end A319290.P17737784418231702888

/-! ## A319290.P15003739949630388731

`A208233(A064790(n+1))-1`
-/

namespace A319290.P15003739949630388731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064790 (n + 1)).toNat - 1

end

end A319290.P15003739949630388731

/-! ## A319290.P6019062036220470234

`A200748(n)%A220603(n+1)`
-/

namespace A319290.P6019062036220470234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A220603 (n + 1))

end

end A319290.P6019062036220470234

/-! ## A319290.P17502700359010788528

`A056559(A000292(A319514(2*n+1)))`
-/

namespace A319290.P17502700359010788528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A000292 (A319514 (2 * n + 1)).toNat).toNat

end

end A319290.P17502700359010788528

/-! ## A319290.P9945742820104346097

`A056559(A331987(A319514(n+1+n)))`
-/

namespace A319290.P9945742820104346097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A331987 (A319514 (n + 1 + n)).toNat).toNat

end

end A319290.P9945742820104346097

/-! ## A319290.P11500964429016875359

`A083800(n+1)%A220603(n+1)`
-/

namespace A319290.P11500964429016875359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A220603 (n + 1))

end

end A319290.P11500964429016875359

/-! ## A319290.P15840266967025862981

`A070198(n)%A220603(n+1)`
-/

namespace A319290.P15840266967025862981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A220603 (n + 1))

end

end A319290.P15840266967025862981

/-! ## A319290.P17617636179334047044

`A079782(n+1)%A220603(n+1)`
-/

namespace A319290.P17617636179334047044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A220603 (n + 1))

end

end A319290.P17617636179334047044

/-! ## A319290.P11291271648897649542

`A083685(n+1)%A220603(n+1)`
-/

namespace A319290.P11291271648897649542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A220603 (n + 1))

end

end A319290.P11291271648897649542

/-!
# A319291: Number of series-reduced locally disjoint rooted trees with n leaves spanning an initial interval of positive integers.

The programs for A319291, there is no canonical definition to state claims against.
-/

/-! ## A319291.P7913322276923450054

`A310060(n*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A319291.P7913322276923450054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310060 ((n : ℤ) * a (n - 1)).toNat - a (n - 1)

end

end A319291.P7913322276923450054

/-!
# A319292: Number of series-reduced locally nonintersecting rooted trees whose leaves span an initial interval of positive integers with multiplicities an integer partition of n.

The programs for A319292, there is no canonical definition to state claims against.
-/

/-! ## A319292.P5593264391337925863

`ceil(ceil(A018252(10^n)/5)/5)`
-/

namespace A319292.P5593264391337925863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A018252 (10 ^ n) : ℚ) / 5⌉ : ℚ) / 5⌉

end

end A319292.P5593264391337925863

/-!
# A319293: Numbers of the form 27^i*(9*j +- 1).

The programs for A319293, the canonical program `A319293.P13782557292742531831` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319293 has offset 1).

The definition of A319293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319293.P13782557292742531831

`eq[1, dr(A050985(n+1)²)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A319293

/-- `eq[1, dr(A050985(n+1)²)]+1` -/
def P13782557292742531831.Spec : Prop :=
  ∀ n, (P13782557292742531831.a n : ℤ) = A319293 (n + 1)

theorem P13782557292742531831.correct : P13782557292742531831.Spec := by
  intro n
  simp only [A319293, Nat.add_sub_cancel]

end A319293

/-! ## A319293.P6899961642318313914

`eq[1, dr(A050985(A000038(n)+n)²)]`
-/

namespace A319293.P6899961642318313914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050985 (A000038 n + (n : ℤ)).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319293.P6899961642318313914

namespace A319293

/-- `eq[1, dr(A050985(A000038(n)+n)²)]` -/
def P6899961642318313914.Spec : Prop :=
  ∀ n, (P6899961642318313914.a n : ℤ) = A319293 (n + 1)

end A319293

/-! ## A319293.P17406839350922033133

`eq[4, A123587(A007095(n))]`
-/

namespace A319293.P17406839350922033133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123587 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319293.P17406839350922033133

namespace A319293

/-- `eq[4, A123587(A007095(n))]` -/
def P17406839350922033133.Spec : Prop :=
  ∀ n, (P17406839350922033133.a n : ℤ) = A319293 (n + 1)

end A319293

/-! ## A319293.P82312900581983560

`lt[A133985(A098848(n+2)), A164615(2*n+3)]`
-/

namespace A319293.P82312900581983560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (A098848 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319293.P82312900581983560

namespace A319293

/-- `lt[A133985(A098848(n+2)), A164615(2*n+3)]` -/
def P82312900581983560.Spec : Prop :=
  ∀ n, (P82312900581983560.a n : ℤ) = A319293 (n + 1)

end A319293

/-! ## A319293.P14343571071454235253

`lt[A164615(A217209(n+3)), A164615(2*n+3)]`
-/

namespace A319293.P14343571071454235253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (A217209 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319293.P14343571071454235253

namespace A319293

/-- `lt[A164615(A217209(n+3)), A164615(2*n+3)]` -/
def P14343571071454235253.Spec : Prop :=
  ∀ n, (P14343571071454235253.a n : ℤ) = A319293 (n + 1)

end A319293

/-!
# A319296: a(n) = (Sum_{d|n} sigma(d)) mod sigma(n).

The programs for A319296, the canonical program `A319296.P17393791425463573242` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319296 has offset 1).

The definition of A319296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319296.P17393791425463573242

`A007429(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319296

/-- `A007429(n+1)%A000203(n+1)` -/
def P17393791425463573242.Spec : Prop :=
  ∀ n, P17393791425463573242.a n = A319296 (n + 1)

theorem P17393791425463573242.correct : P17393791425463573242.Spec := by
  intro n
  simp only [A319296, Nat.add_sub_cancel]

end A319296

/-! ## A319296.P3036293143209303968

`A007429(n+1)%Δ[A160664(n)]`
-/

namespace A319296.P3036293143209303968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007429 (n + 1)) (f1 (n + 1) - f1 n)

end

end A319296.P3036293143209303968

namespace A319296

/-- `A007429(n+1)%Δ[A160664(n)]` -/
def P3036293143209303968.Spec : Prop :=
  ∀ n, P3036293143209303968.a n = A319296 (n + 1)

end A319296

/-! ## A319296.P10554210403078099612

`A211779(n+1)%A000203(n+1)`
-/

namespace A319296.P10554210403078099612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211779 (n + 1)) (A000203 (n + 1))

end

end A319296.P10554210403078099612

namespace A319296

/-- `A211779(n+1)%A000203(n+1)` -/
def P10554210403078099612.Spec : Prop :=
  ∀ n, P10554210403078099612.a n = A319296 (n + 1)

end A319296

/-! ## A319296.P13656770884766616335

`∑{d}[n+1, A000203(#)]%A000203(n+1)`
-/

namespace A319296.P13656770884766616335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000203 d) (A000203 (n + 1))

end

end A319296.P13656770884766616335

namespace A319296

/-- `∑{d}[n+1, A000203(#)]%A000203(n+1)` -/
def P13656770884766616335.Spec : Prop :=
  ∀ n, P13656770884766616335.a n = A319296 (n + 1)

end A319296

/-! ## A319296.P6808757676075112270

`(A211780(n+1)+1+n)%A000203(n+1)`
-/

namespace A319296.P6808757676075112270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211780 (n + 1) + 1 + (n : ℤ)) (A000203 (n + 1))

end

end A319296.P6808757676075112270

namespace A319296

/-- `(A211780(n+1)+1+n)%A000203(n+1)` -/
def P6808757676075112270.Spec : Prop :=
  ∀ n, P6808757676075112270.a n = A319296 (n + 1)

theorem P6808757676075112270.correct : P6808757676075112270.Spec := by
  intro n
  simp only [A319296, Nat.add_sub_cancel, A319296.P6808757676075112270.a, A319296.P17393791425463573242.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A211780, A211780.P8877674507974761173.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319296

/-! ## A319296.P8317863697884143583

`(A000203(n+1)-A296075(n+1))%A000203(n+1)`
-/

namespace A319296.P8317863697884143583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - A296075 (n + 1)) (A000203 (n + 1))

end

end A319296.P8317863697884143583

namespace A319296

/-- `(A000203(n+1)-A296075(n+1))%A000203(n+1)` -/
def P8317863697884143583.Spec : Prop :=
  ∀ n, P8317863697884143583.a n = A319296 (n + 1)

end A319296

/-! ## A319296.P16523553875702826395

`A206028(n+1)%A002260(A184387(n+1))`
-/

namespace A319296.P16523553875702826395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206028 (n + 1)) (A002260 (A184387 (n + 1)).toNat)

end

end A319296.P16523553875702826395

namespace A319296

/-- `A206028(n+1)%A002260(A184387(n+1))` -/
def P16523553875702826395.Spec : Prop :=
  ∀ n, P16523553875702826395.a n = A319296 (n + 1)

end A319296

/-!
# A319297: Digits of one of the three 7-adic integers 6^(1/3) that is related to A319097.

The programs for A319297, there is no canonical definition to state claims against.
-/

/-! ## A319297.P2300188129784145556

`Δ[A319097(n)]/7^n`
-/

namespace A319297.P2300188129784145556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319097 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A319297.P2300188129784145556

/-! ## A319297.P2823479618050585082

`floor(A319097(n+1)/7^n)`
-/

namespace A319297.P2823479618050585082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319097 (n + 1) : ℚ) / (7 ^ n : ℚ)⌋

end

end A319297.P2823479618050585082

/-! ## A319297.P5623972403957762148

`Δ[A319097(n)]%A019325(n)`
-/

namespace A319297.P5623972403957762148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A319297.P5623972403957762148

/-!
# A319299: Irregular triangle where T(n,k) is the number of integer partitions of n with GCD equal to the k-th divisor of n.

The programs for A319299, there is no canonical definition to state claims against.
-/

/-! ## A319299.P10887837207885237559

`A000837(A056538(n+1))`
-/

namespace A319299.P10887837207885237559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A056538 (n + 1)).toNat

end

end A319299.P10887837207885237559

/-! ## A319299.P12304850499667628069

`A000837(abs(A233772(n+1)))`
-/

namespace A319299.P12304850499667628069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 |A233772 (n + 1)|.toNat

end

end A319299.P12304850499667628069

/-! ## A319299.P6006832539272104900

`∑{d}[A056538(n+1), A100953(#)]`
-/

namespace A319299.P6006832539272104900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A319299.P6006832539272104900

/-! ## A319299.P6050503008504663766

`A000837(A061017(n+1)/A027750(n+1))`
-/

namespace A319299.P6050503008504663766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A027750 (n + 1) : ℚ))).toNat

end

end A319299.P6050503008504663766

/-! ## A319299.P11064491453805617821

`A000837(gcd(A061017(n+1), A233772(n+1)))`
-/

namespace A319299.P11064491453805617821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (Int.gcd (A061017 (n + 1)) (A233772 (n + 1)))

end

end A319299.P11064491453805617821

/-! ## A319299.P15689962528665566395

`A303386(2^A056538(n+1))`
-/

namespace A319299.P15689962528665566395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056538 (n + 1) : ℤ))).toNat

end

end A319299.P15689962528665566395

