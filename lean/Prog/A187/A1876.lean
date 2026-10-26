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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187601: n/2 times period 6 sequence [1, 2, 3, 4, 3, 2, ...].

The programs for A187601, the canonical program `A187601.P13796189608970286473` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187601 has offset 0).

The definition of A187601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187601.P13796189608970286473

`n*(5-2*(-1)^floor((n+1)/3)-(-1)^n)/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187601

/-- `n*(5-2*(-1)^floor((n+1)/3)-(-1)^n)/4` -/
def P13796189608970286473.Spec : Prop :=
  ∀ n, P13796189608970286473.a n = (A187601 n : ℚ)

end A187601

/-! ## A187601.P14748897290948729734

`n/2*A028356(n)`
-/

namespace A187601.P14748897290948729734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A028356 n : ℚ)

end

end A187601.P14748897290948729734

namespace A187601

/-- `n/2*A028356(n)` -/
def P14748897290948729734.Spec : Prop :=
  ∀ n, P14748897290948729734.a n = (A187601 n : ℚ)

end A187601

/-! ## A187601.P11238292961032976455

`lcm(3, A064680(n))%A008706(n)`
-/

namespace A187601.P11238292961032976455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm 3 (A064680 n) : ℤ) (A008706 n)

end

end A187601.P11238292961032976455

namespace A187601

/-- `lcm(3, A064680(n))%A008706(n)` -/
def P11238292961032976455.Spec : Prop :=
  ∀ n, P11238292961032976455.a n = A187601 n

end A187601

/-! ## A187601.P14236615492757631289

`A004525(n*A028356(n))`
-/

namespace A187601.P14236615492757631289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n : ℤ) * A028356 n).toNat

end

end A187601.P14236615492757631289

namespace A187601

/-- `A004525(n*A028356(n))` -/
def P14236615492757631289.Spec : Prop :=
  ∀ n, P14236615492757631289.a n = A187601 n

end A187601

/-! ## A187601.P7467283421924690706

`A004526(n*A028356(n))`
-/

namespace A187601.P7467283421924690706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A028356 n).toNat

end

end A187601.P7467283421924690706

namespace A187601

/-- `A004526(n*A028356(n))` -/
def P7467283421924690706.Spec : Prop :=
  ∀ n, P7467283421924690706.a n = A187601 n

end A187601

/-! ## A187601.P18199361721192855289

`A026741(n*A028356(n))`
-/

namespace A187601.P18199361721192855289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n : ℤ) * A028356 n).toNat

end

end A187601.P18199361721192855289

namespace A187601

/-- `A026741(n*A028356(n))` -/
def P18199361721192855289.Spec : Prop :=
  ∀ n, P18199361721192855289.a n = A187601 n

end A187601

/-! ## A187601.P2849354604756549675

`A142150(n*A028356(n))`
-/

namespace A187601.P2849354604756549675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n : ℤ) * A028356 n).toNat

end

end A187601.P2849354604756549675

namespace A187601

/-- `A142150(n*A028356(n))` -/
def P2849354604756549675.Spec : Prop :=
  ∀ n, P2849354604756549675.a n = A187601 n

end A187601

/-! ## A187601.P17009804768833242315

`A026741(lcm(n, A002620(n)%3+2))`
-/

namespace A187601.P17009804768833242315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (n : ℤ) (Int.tmod (A002620 n) 3 + 2))

end

end A187601.P17009804768833242315

namespace A187601

/-- `A026741(lcm(n, A002620(n)%3+2))` -/
def P17009804768833242315.Spec : Prop :=
  ∀ n, P17009804768833242315.a n = A187601 n

end A187601

/-! ## A187601.P7197611813990502440

`A134172(2*n*A028356(n))`
-/

namespace A187601.P7197611813990502440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (2 * ((n : ℤ) * A028356 n)).toNat

end

end A187601.P7197611813990502440

namespace A187601

/-- `A134172(2*n*A028356(n))` -/
def P7197611813990502440.Spec : Prop :=
  ∀ n, P7197611813990502440.a n = A187601 n

end A187601

/-!
# A187602: Primes of the form (k+1)^(k-1) + k.

The programs for A187602, there is no canonical definition to state claims against.
-/

/-! ## A187602.P14019414882301232184

`A001912(n+1)+A000272(floor(ϕ*(n+1)))`
-/

namespace A187602.P14019414882301232184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1) + A000272 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A187602.P14019414882301232184

/-!
# A187606: T(n,k)=Number of n-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on a kXk board summed over all starting positions.

The programs for A187606, there is no canonical definition to state claims against.
-/

/-! ## A187606.P1806251426909793519

`A258198(2*A238396(n))²`
-/

namespace A187606.P1806251426909793519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (2 * A238396 n).toNat ^ 2

end

end A187606.P1806251426909793519

/-! ## A187606.P4879821962721349847

`A258198(2*A238396(n))^A020639(2*(n+1))`
-/

namespace A187606.P4879821962721349847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258198 (2 * A238396 n).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A187606.P4879821962721349847

/-! ## A187606.P14365795766267901734

`A258198(2*A238396(n))^A000005(A001097(n+1))`
-/

namespace A187606.P14365795766267901734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258198 (2 * A238396 n).toNat : ℚ) ^ (A000005 (A001097 (n + 1)).toNat : ℤ)

end

end A187606.P14365795766267901734

/-!
# A187607: Number of 3-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187607, the canonical program `A187607.P7809169353720146712` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187607 has offset 1).

The definition of A187607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187607.P5867787927240954585

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=36, a(4)=100, a(5)=196`
-/

namespace A187607.P5867787927240954585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9, 36, 100, 196] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A187607.P5867787927240954585

namespace A187607

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5867787927240954585.Spec : Prop :=
  ∀ n, P5867787927240954585.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P7809169353720146712

`(C(2, n)-A139544(n+1))²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187607

/-- `(C(2, n)-A139544(n+1))²` -/
def P7809169353720146712.Spec : Prop :=
  ∀ n, P7809169353720146712.a n = A187607 (n + 1)

theorem P7809169353720146712.correct : P7809169353720146712.Spec := by
  intro n
  simp only [A187607, Nat.add_sub_cancel]

end A187607

/-! ## A187607.P6148582900117359757

`Δ[A005893(A004275(n)-n)]²`
-/

namespace A187607.P6148582900117359757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A187607.P6148582900117359757

namespace A187607

/-- `Δ[A005893(A004275(n)-n)]²` -/
def P6148582900117359757.Spec : Prop :=
  ∀ n, P6148582900117359757.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P14035603723711185189

`Δ[A005893(A289207(n))]²`
-/

namespace A187607.P14035603723711185189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A187607.P14035603723711185189

namespace A187607

/-- `Δ[A005893(A289207(n))]²` -/
def P14035603723711185189.Spec : Prop :=
  ∀ n, P14035603723711185189.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P6621158062735747123

`(1-A267873(A004274(n)))²`
-/

namespace A187607.P6621158062735747123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A267873 (A004274 n).toNat) ^ 2

end

end A187607.P6621158062735747123

namespace A187607

/-- `(1-A267873(A004274(n)))²` -/
def P6621158062735747123.Spec : Prop :=
  ∀ n, P6621158062735747123.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P10867977735634662158

`A058992(abs(1-2*n))²`
-/

namespace A187607.P10867977735634662158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 |1 - (2 * n : ℤ)|.toNat ^ 2

end

end A187607.P10867977735634662158

namespace A187607

/-- `A058992(abs(1-2*n))²` -/
def P10867977735634662158.Spec : Prop :=
  ∀ n, P10867977735634662158.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P14074624212449180079

`(A289207(2*n)+A004275(A289207(n+1)))²`
-/

namespace A187607.P14074624212449180079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * n) + A004275 (A289207 (n + 1)).toNat) ^ 2

end

end A187607.P14074624212449180079

namespace A187607

/-- `(A289207(2*n)+A004275(A289207(n+1)))²` -/
def P14074624212449180079.Spec : Prop :=
  ∀ n, P14074624212449180079.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P13076177984158477229

`A000290(Δ[A005893(A289207(n))])`
-/

namespace A187607.P13076177984158477229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (n + 1) - f1 n).toNat

end

end A187607.P13076177984158477229

namespace A187607

/-- `A000290(Δ[A005893(A289207(n))])` -/
def P13076177984158477229.Spec : Prop :=
  ∀ n, P13076177984158477229.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P9137262759743660063

`(A267261(2*n)-A163985(A267261(2*n)))²`
-/

namespace A187607.P9137262759743660063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267261 (2 * n) - A163985 (A267261 (2 * n)).toNat) ^ 2

end

end A187607.P9137262759743660063

namespace A187607

/-- `(A267261(2*n)-A163985(A267261(2*n)))²` -/
def P9137262759743660063.Spec : Prop :=
  ∀ n, P9137262759743660063.a n = A187607 (n + 1)

end A187607

/-! ## A187607.P9014859357762681918

`record[A099254(n)]²%A094789(n+1)`
-/

namespace A187607.P9014859357762681918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) (A094789 (n + 1))

end

end A187607.P9014859357762681918

namespace A187607

/-- `record[A099254(n)]²%A094789(n+1)` -/
def P9014859357762681918.Spec : Prop :=
  ∀ n, P9014859357762681918.a n = A187607 (n + 1)

end A187607

/-!
# A187608: Number of 4-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187608, there is no canonical definition to state claims against.
-/

/-! ## A187608.P9524963212295594198

`A187606(∑[n+3]+7)`
-/

namespace A187608.P9524963212295594198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187608.P9524963212295594198

/-! ## A187608.P7659608046359401408

`A187606(A052905(n)+9)+char[29]`
-/

namespace A187608.P7659608046359401408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187608.P7659608046359401408

/-! ## A187608.P4613702208218876706

`lcm(gcd(5, n), A187606(A141214(n)+7))`
-/

namespace A187608.P4613702208218876706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 5 n : ℤ) (A187606 (A141214 n + 7).toNat)

end

end A187608.P4613702208218876706

/-! ## A187608.P4158863703135358072

`A057427(n)*A187606(A052905(n)+9)`
-/

namespace A187608.P4158863703135358072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A187606 (A052905 n + 9).toNat

end

end A187608.P4158863703135358072

/-! ## A187608.P1810407451552638392

`A187606(A141214(n)+7)%A000041(6*n)`
-/

namespace A187608.P1810407451552638392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187606 (A141214 n + 7).toNat) (A000041 (6 * n))

end

end A187608.P1810407451552638392

/-!
# A187609: Number of 5-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187609, there is no canonical definition to state claims against.
-/

/-! ## A187609.P209179354830499789

`A187606(∑[n+4]+11)`
-/

namespace A187609.P209179354830499789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A187609.P209179354830499789

/-! ## A187609.P4397598525296159693

`A126206(A001348(n+1))-A060819(n+1)`
-/

namespace A187609.P4397598525296159693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126206 (A001348 (n + 1)).toNat - A060819 (n + 1)

end

end A187609.P4397598525296159693

/-!
# A187610: Number of 6-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187610, there is no canonical definition to state claims against.
-/

/-! ## A187610.P315518651644764147

`A187606(A056115(n)+21)`
-/

namespace A187610.P315518651644764147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A056115 n + 21).toNat

end

end A187610.P315518651644764147

/-! ## A187610.P10077267154964109690

`A187606(A167487(n+4)-1)`
-/

namespace A187610.P10077267154964109690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A167487 (n + 4) - 1).toNat

end

end A187610.P10077267154964109690

/-! ## A187610.P5444398692274773550

`A187606(A167614(n+4)+3)`
-/

namespace A187610.P5444398692274773550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A167614 (n + 4) + 3).toNat

end

end A187610.P5444398692274773550

/-! ## A187610.P8857618439367917469

`A187606(A133263(n+5)+4)`
-/

namespace A187610.P8857618439367917469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A133263 (n + 5) + 4).toNat

end

end A187610.P8857618439367917469

/-! ## A187610.P4822042316653554101

`A187606(A000124(n+5)+5)`
-/

namespace A187610.P4822042316653554101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A000124 (n + 5) + 5).toNat

end

end A187610.P4822042316653554101

/-!
# A187611: Number of 7-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187611, there is no canonical definition to state claims against.
-/

/-! ## A187611.P9965286472775002440

`A187606(A056119(n)+28)`
-/

namespace A187611.P9965286472775002440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A056119 n + 28).toNat

end

end A187611.P9965286472775002440

/-! ## A187611.P6821001014193464972

`A187606(A077169(n+7)+2)`
-/

namespace A187611.P6821001014193464972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A077169 (n + 7) + 2).toNat

end

end A187611.P6821001014193464972

/-! ## A187611.P2253596807540740686

`A187606(A000124(n+6)+6)`
-/

namespace A187611.P2253596807540740686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A000124 (n + 6) + 6).toNat

end

end A187611.P2253596807540740686

/-! ## A187611.P14425608938776880308

`A187606(A000217(n+6)+7)`
-/

namespace A187611.P14425608938776880308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A000217 (n + 6) + 7).toNat

end

end A187611.P14425608938776880308

/-! ## A187611.P14609984812709249462

`A187606(A161680(n+7)+7)`
-/

namespace A187611.P14609984812709249462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A161680 (n + 7) + 7).toNat

end

end A187611.P14609984812709249462

/-!
# A187612: Number of 8-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

The programs for A187612, there is no canonical definition to state claims against.
-/

/-! ## A187612.P10878364504559738568

`A187606(A167499(n+6)+3)`
-/

namespace A187612.P10878364504559738568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A167499 (n + 6) + 3).toNat

end

end A187612.P10878364504559738568

/-! ## A187612.P4283854843563119882

`A187606(A000217(n+7)+8)`
-/

namespace A187612.P4283854843563119882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A000217 (n + 7) + 8).toNat

end

end A187612.P4283854843563119882

/-! ## A187612.P8212546658247501645

`A187606(A056119(n+1)+29)`
-/

namespace A187612.P8212546658247501645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (A056119 (n + 1) + 29).toNat

end

end A187612.P8212546658247501645

/-! ## A187612.P15195874204701232660

`A187606(eq[9, A131818(n+1)])`
-/

namespace A187612.P15195874204701232660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187612.P15195874204701232660

/-! ## A187612.P5496510173436256340

`A187606(eq[8, A002260(n+1)]+1)`
-/

namespace A187612.P5496510173436256340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187612.P5496510173436256340

/-!
# A187613: Primes of the form 2*(n+1)^n-1.

The programs for A187613, there is no canonical definition to state claims against.
-/

/-! ## A187613.P429500229224797380

`p?[2*(n+1)^n-1]`
-/

namespace A187613.P429500229224797380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187613.P429500229224797380

/-!
# A187614: Primes p such that the decimal representation of 1/p does not contain every digit 0-9.

The programs for A187614, there is no canonical definition to state claims against.
-/

/-! ## A187614.P137775147892395966

`p?[A388999(n+1)]`
-/

namespace A187614.P137775147892395966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187614.P137775147892395966

/-! ## A187614.P3371801717214337306

`filter[A388999(n+1), A010051(#)]`
-/

namespace A187614.P3371801717214337306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A187614.P3371801717214337306

/-! ## A187614.P11451659753448259722

`filter[A388999(n+1), A252233(#)]`
-/

namespace A187614.P11451659753448259722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A187614.P11451659753448259722

/-! ## A187614.P3712801137488630479

`filter[A388999(n+1), A323153(#)]`
-/

namespace A187614.P3712801137488630479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A187614.P3712801137488630479

/-! ## A187614.P4324569337176514113

`filter[A388999(n+1), A374130(#)]`
-/

namespace A187614.P4324569337176514113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A187614.P4324569337176514113

/-!
# A187615: Expansion of f(-x^17, -x^19) + x^4 * f(-x, -x^35) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A187615, the canonical program `A187615.P16899303713262803839` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187615 has offset 0).

The definition of A187615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A187615.P16899303713262803839

`A133985(3*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187615

/-- `A133985(3*n)` -/
def P16899303713262803839.Spec : Prop :=
  ∀ n, P16899303713262803839.a n = A187615 n

theorem P16899303713262803839.correct : P16899303713262803839.Spec := by
  intro n
  simp only [A187615]

end A187615

/-! ## A187615.P12971011016583494781

`A081360(3*n)%2`
-/

namespace A187615.P12971011016583494781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081360 (3 * n)) 2

end

end A187615.P12971011016583494781

namespace A187615

/-- `A081360(3*n)%2` -/
def P12971011016583494781.Spec : Prop :=
  ∀ n, P12971011016583494781.a n = A187615 n

end A187615

/-! ## A187615.P4482036324169121487

`A293072(3*n)%2`
-/

namespace A187615.P4482036324169121487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293072 (3 * n)) 2

end

end A187615.P4482036324169121487

namespace A187615

/-- `A293072(3*n)%2` -/
def P4482036324169121487.Spec : Prop :=
  ∀ n, P4482036324169121487.a n = A187615 n

end A187615

/-! ## A187615.P3301932955784619872

`A133985(n+n+n)^n`
-/

namespace A187615.P3301932955784619872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (n + n + n) ^ n

end

end A187615.P3301932955784619872

namespace A187615

/-- `A133985(n+n+n)^n` -/
def P3301932955784619872.Spec : Prop :=
  ∀ n, P3301932955784619872.a n = A187615 n

end A187615

/-! ## A187615.P17101597101262938040

`abs(A010815(3*n))*(-1)^n`
-/

namespace A187615.P17101597101262938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (3 * n)| * (-1) ^ n

end

end A187615.P17101597101262938040

namespace A187615

/-- `abs(A010815(3*n))*(-1)^n` -/
def P17101597101262938040.Spec : Prop :=
  ∀ n, P17101597101262938040.a n = A187615 n

end A187615

/-! ## A187615.P9267312237336023824

`abs(A121373(3*n))*(-1)^n`
-/

namespace A187615.P9267312237336023824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121373 (3 * n)| * (-1) ^ n

end

end A187615.P9267312237336023824

namespace A187615

/-- `abs(A121373(3*n))*(-1)^n` -/
def P9267312237336023824.Spec : Prop :=
  ∀ n, P9267312237336023824.a n = A187615 n

end A187615

/-! ## A187615.P8988596476911478876

`A010815(3*n)*A121373(3*n)`
-/

namespace A187615.P8988596476911478876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (3 * n) * A121373 (3 * n)

end

end A187615.P8988596476911478876

namespace A187615

/-- `A010815(3*n)*A121373(3*n)` -/
def P8988596476911478876.Spec : Prop :=
  ∀ n, P8988596476911478876.a n = A187615 n

end A187615

/-! ## A187615.P7981344432778805032

`A206958(3*n)*A206959(3*n)`
-/

namespace A187615.P7981344432778805032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 (3 * n) * A206959 (3 * n)

end

end A187615.P7981344432778805032

namespace A187615

/-- `A206958(3*n)*A206959(3*n)` -/
def P7981344432778805032.Spec : Prop :=
  ∀ n, P7981344432778805032.a n = A187615 n

end A187615

/-! ## A187615.P12039009472152148711

`2*A247223(3*n)-A121373(3*n)`
-/

namespace A187615.P12039009472152148711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247223 (3 * n) - A121373 (3 * n)

end

end A187615.P12039009472152148711

namespace A187615

/-- `2*A247223(3*n)-A121373(3*n)` -/
def P12039009472152148711.Spec : Prop :=
  ∀ n, P12039009472152148711.a n = A187615 n

end A187615

/-! ## A187615.P7701272973787992017

`(A000035(n+1)-A000035(n))*A080995(3*n)`
-/

namespace A187615.P7701272973787992017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A080995 (3 * n)

end

end A187615.P7701272973787992017

namespace A187615

/-- `(A000035(n+1)-A000035(n))*A080995(3*n)` -/
def P7701272973787992017.Spec : Prop :=
  ∀ n, P7701272973787992017.a n = A187615 n

end A187615

/-! ## A187615.P15771439778776654782

`A059778(9*n)`
-/

namespace A187615.P15771439778776654782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059778 (9 * n)

end

end A187615.P15771439778776654782

namespace A187615

/-- `A059778(9*n)` -/
def P15771439778776654782.Spec : Prop :=
  ∀ n, P15771439778776654782.a n = A187615 n

end A187615

/-! ## A187615.P15607920975008111071

`A106459(9*n)`
-/

namespace A187615.P15607920975008111071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (9 * n)

end

end A187615.P15607920975008111071

namespace A187615

/-- `A106459(9*n)` -/
def P15607920975008111071.Spec : Prop :=
  ∀ n, P15607920975008111071.a n = A187615 n

end A187615

/-! ## A187615.P10570050123304352232

`A133988(9*n)`
-/

namespace A187615.P10570050123304352232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 (9 * n)

end

end A187615.P10570050123304352232

namespace A187615

/-- `A133988(9*n)` -/
def P10570050123304352232.Spec : Prop :=
  ∀ n, P10570050123304352232.a n = A187615 n

end A187615

/-! ## A187615.P7197513745694949700

`A143062(3*n)*A199918(3*n)`
-/

namespace A187615.P7197513745694949700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (3 * n) * A199918 (3 * n)

end

end A187615.P7197513745694949700

namespace A187615

/-- `A143062(3*n)*A199918(3*n)` -/
def P7197513745694949700.Spec : Prop :=
  ∀ n, P7197513745694949700.a n = A187615 n

end A187615

/-! ## A187615.P2977934840380627992

`A257628(A121373(3*n)²*A001318(2*n+1))`
-/

namespace A187615.P2977934840380627992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A121373 (3 * n) ^ 2 * A001318 (2 * n + 1)).toNat

end

end A187615.P2977934840380627992

namespace A187615

/-- `A257628(A121373(3*n)²*A001318(2*n+1))` -/
def P2977934840380627992.Spec : Prop :=
  ∀ n, P2977934840380627992.a n = A187615 n

end A187615

/-!
# A187616: Triangle T(m,n) read by rows: number of domino tilings of the m X n grid (0 <= m <= n).

The programs for A187616, there is no canonical definition to state claims against.
-/

/-! ## A187616.P825069535414902698

`A187596(A245300(n))`
-/

namespace A187616.P825069535414902698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A245300 n).toNat

end

end A187616.P825069535414902698

/-! ## A187616.P17907786726736652571

`A187596(floor(A214661(n+1)/2))`
-/

namespace A187616.P17907786726736652571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A187616.P17907786726736652571

/-! ## A187616.P287460849786823607

`A187596((A214661(n+1)-1)/2)`
-/

namespace A187616.P287460849786823607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A187616.P287460849786823607

/-! ## A187616.P5310830762025338926

`A300060(A120458(n))`
-/

namespace A187616.P5310830762025338926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (A120458 n).toNat

end

end A187616.P5310830762025338926

/-! ## A187616.P16065123542853884238

`A152434(A193860(n))`
-/

namespace A187616.P16065123542853884238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152434 (A193860 n).toNat

end

end A187616.P16065123542853884238

/-!
# A187617: Array T(m,n) read by antidiagonals: number of domino tilings of the 2m X 2n grid (m>=0, n>=0).

The programs for A187617, there is no canonical definition to state claims against.
-/

/-! ## A187617.P8906291927322386693

`A187596(A185868(n+1)-1)`
-/

namespace A187617.P8906291927322386693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A185868 (n + 1) - 1).toNat

end

end A187617.P8906291927322386693

/-! ## A187617.P4217269007958472799

`A187596(A292564(n)+A002262(n))`
-/

namespace A187617.P4217269007958472799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A292564 n + A002262 n).toNat

end

end A187617.P4217269007958472799

/-! ## A187617.P3454663181223684287

`A189006(eq[1, A318651(A059896(n+1))])`
-/

namespace A187617.P3454663181223684287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318651 (A059896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187617.P3454663181223684287

/-! ## A187617.P14705559994152694637

`A187596(eq[A103452(n), A187596(n+1)])`
-/

namespace A187617.P14705559994152694637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A187617.P14705559994152694637

/-! ## A187617.P18105238199180751081

`A187596(eq[0, A099390(n+1)])`
-/

namespace A187617.P18105238199180751081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187617.P18105238199180751081

/-! ## A187617.P10759631929129777055

`A189006(eq[0, A099390(n+1)])`
-/

namespace A187617.P10759631929129777055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187617.P10759631929129777055

/-! ## A187617.P10146724813667703643

`A187596(lt[A099390(n+1), 1])`
-/

namespace A187617.P10146724813667703643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A187617.P10146724813667703643

/-! ## A187617.P7939789333582451334

`A189006(lt[A099390(n+1), 1])`
-/

namespace A187617.P7939789333582451334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A187617.P7939789333582451334

/-! ## A187617.P545392378949551955

`A187596(eq[0, A189245(n+1)])`
-/

namespace A187617.P545392378949551955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187617.P545392378949551955

/-!
# A187618: Triangle T(m,n) read by rows: number of domino tilings of the 2m X 2n grid (0 <= m <= n).

The programs for A187618, there is no canonical definition to state claims against.
-/

/-! ## A187618.P15704826443688467675

`A187616(A185868(n+1)-1)`
-/

namespace A187618.P15704826443688467675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (A185868 (n + 1) - 1).toNat

end

end A187618.P15704826443688467675

/-! ## A187618.P9329121350590542280

`A187616(eq[0, A099390(n+1)])`
-/

namespace A187618.P9329121350590542280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187618.P9329121350590542280

/-! ## A187618.P17651865665084664632

`A187616(lt[A099390(n+1), 1])`
-/

namespace A187618.P17651865665084664632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A187618.P17651865665084664632

/-! ## A187618.P9412231703119320024

`A187616(A063656(n)+A061885(n))`
-/

namespace A187618.P9412231703119320024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (A063656 n + A061885 n).toNat

end

end A187618.P9412231703119320024

/-! ## A187618.P7502735038783141509

`A187616(A292564(n)+A002262(n))`
-/

namespace A187618.P7502735038783141509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (A292564 n + A002262 n).toNat

end

end A187618.P7502735038783141509

/-! ## A187618.P10112401619836404609

`A187617(A245300(n))`
-/

namespace A187618.P10112401619836404609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 (A245300 n).toNat

end

end A187618.P10112401619836404609

/-! ## A187618.P2350343867263714656

`A187616(eq[0, A189245(n+1)])`
-/

namespace A187618.P2350343867263714656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187618.P2350343867263714656

/-!
# A187619: Sum of the differences of the parts in each Goldbach partition of 2n, A187129(n) - A185297(n).

The programs for A187619, there is no canonical definition to state claims against.
-/

/-! ## A187619.P15862153489721883783

`Δ[A279726(n+1)]`
-/

namespace A187619.P15862153489721883783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187619.P15862153489721883783

/-! ## A187619.P13110276037516787530

`A334065(n+2)/(n+2)`
-/

namespace A187619.P13110276037516787530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334065 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A187619.P13110276037516787530

/-! ## A187619.P10839450400494431623

`abs(Δ[A279726(1-(n-2*n))])`
-/

namespace A187619.P10839450400494431623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187619.P10839450400494431623

/-! ## A187619.P11076136643521089390

`A279726(n+2)-A279726(n+1)`
-/

namespace A187619.P11076136643521089390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (n + 2) - A279726 (n + 1)

end

end A187619.P11076136643521089390

/-! ## A187619.P1688213317014282698

`A343782(2*(n+2))`
-/

namespace A187619.P1688213317014282698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343782 (2 * (n + 2))

end

end A187619.P1688213317014282698

/-! ## A187619.P52910798751545733

`A226237(n+2)-2*A185297(n+2)`
-/

namespace A187619.P52910798751545733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226237 (n + 2) - 2 * A185297 (n + 2)

end

end A187619.P52910798751545733

/-! ## A187619.P1355328156276353826

`A187129(n+2)-A185297(n+2)`
-/

namespace A187619.P1355328156276353826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187129 (n + 2) - A185297 (n + 2)

end

end A187619.P1355328156276353826

/-! ## A187619.P5964813183618228797

`2*A187129(n+2)-A226237(n+2)`
-/

namespace A187619.P5964813183618228797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187129 (n + 2) - A226237 (n + 2)

end

end A187619.P5964813183618228797

/-! ## A187619.P9825379112794110

`A187129(A020725(n+1))-(A226237(n+2)-A187129(n+2))`
-/

namespace A187619.P9825379112794110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187129 (A020725 (n + 1)).toNat - (A226237 (n + 2) - A187129 (n + 2))

end

end A187619.P9825379112794110

/-! ## A187619.P8759871444399867576

`A187129(n+2)-A028310(A226237(n+2)-A187129(n+2))`
-/

namespace A187619.P8759871444399867576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187129 (n + 2) - A028310 (A226237 (n + 2) - A187129 (n + 2)).toNat

end

end A187619.P8759871444399867576

/-!
# A187620: a(n) = n^6 - a(n-1), a(0)=1.

The programs for A187620, the canonical program `A187620.P8577825311301516690` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187620 has offset 0).

The definition of A187620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-a(n-1)` (program `A187620.P8577825311301516690`, by `A187620.P8577825311301516690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187620.P8577825311301516690

`n^6-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187620

/-- `n^6-a(n-1)` -/
def P8577825311301516690.Spec : Prop :=
  ∀ n, P8577825311301516690.a n = A187620 n

theorem P8577825311301516690.correct : P8577825311301516690.Spec := by
  intro n
  simp only [A187620]

end A187620

/-! ## A187620.P317927560064788787

`(-1)^n+n*(3-5*n²+3*n^4+n^5)/2`
-/

namespace A187620.P317927560064788787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) + ((n : ℤ) * (3 - (5 * n ^ 2 : ℤ) + (3 * n ^ 4 : ℤ) + (n ^ 5 : ℤ)) : ℚ) / 2

end

end A187620.P317927560064788787

namespace A187620

/-- `(-1)^n+n*(3-5*n²+3*n^4+n^5)/2` -/
def P317927560064788787.Spec : Prop :=
  ∀ n, P317927560064788787.a n = (A187620 n : ℚ)

theorem P317927560064788787.correct : P317927560064788787.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A187620, Nat.add_sub_cancel, A187620.P317927560064788787.a, A187620.P8577825311301516690.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A187620, Nat.add_sub_cancel, A187620.P317927560064788787.a, A187620.P8577825311301516690.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A187620

/-! ## A187620.P2218638359541103276

`floor((n*n²)²-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A187620.P2218638359541103276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n * n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A187620.P2218638359541103276

namespace A187620

/-- `floor((n*n²)²-a(n-1))` -/
def P2218638359541103276.Spec : Prop :=
  ∀ n, P2218638359541103276.a n = A187620 n

theorem P2218638359541103276.correct : P2218638359541103276.Spec := by
  intro n
  simp only [A187620, Nat.add_sub_cancel, A187620.P2218638359541103276.a, A187620.P8577825311301516690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A187620

/-! ## A187620.P12847278360400181381

`(A033999(n+1)-A152725(n))*A280193(2*n+3)`
-/

namespace A187620.P12847278360400181381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) - A152725 n) * A280193 (2 * n + 3)

end

end A187620.P12847278360400181381

namespace A187620

/-- `(A033999(n+1)-A152725(n))*A280193(2*n+3)` -/
def P12847278360400181381.Spec : Prop :=
  ∀ n, P12847278360400181381.a n = A187620 n

end A187620

/-! ## A187620.P4862482406951032543

`(A034947(2*n+3)-A152725(n))*A280193(2*n+3)`
-/

namespace A187620.P4862482406951032543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034947 (2 * n + 3) - A152725 n) * A280193 (2 * n + 3)

end

end A187620.P4862482406951032543

namespace A187620

/-- `(A034947(2*n+3)-A152725(n))*A280193(2*n+3)` -/
def P4862482406951032543.Spec : Prop :=
  ∀ n, P4862482406951032543.a n = A187620 n

end A187620

/-!
# A187621: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187621, there is no canonical definition to state claims against.
-/

/-! ## A187621.P6330679934605499507

`A187624(∑[n+1])`
-/

namespace A187621.P6330679934605499507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187621.P6330679934605499507

/-! ## A187621.P16368775315541895128

`lcm(2, A187624(A025706(n)))`
-/

namespace A187621.P16368775315541895128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187624 (A025706 n).toNat)

end

end A187621.P16368775315541895128

/-! ## A187621.P6322591235961607936

`and(-2, A187624(A000217(n+1)))`
-/

namespace A187621.P6322591235961607936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A187624 (A000217 (n + 1)).toNat)

end

end A187621.P6322591235961607936

/-!
# A187622: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187622, there is no canonical definition to state claims against.
-/

/-! ## A187622.P9343627289025264616

`A187624(∑[n+2])`
-/

namespace A187622.P9343627289025264616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187622.P9343627289025264616

/-!
# A187623: Number of (n+1)X(n+1) 0..3 arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187623, there is no canonical definition to state claims against.
-/

/-! ## A187623.P16789080962719761678

`A187624(∑[n+3]+1)`
-/

namespace A187623.P16789080962719761678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187623.P16789080962719761678

/-!
# A187624: T(n,k)=Number of (n+1)X(n+1) 0..k arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187624, there is no canonical definition to state claims against.
-/

/-! ## A187624.P535159659250970396

`gcd(A000086(A340635(n+3)), A187633(n+1))`
-/

namespace A187624.P535159659250970396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000086 (A340635 (n + 3)).toNat) (A187633 (n + 1))

end

end A187624.P535159659250970396

/-! ## A187624.P1379818689531562051

`A187633(n+1)%A211795(A187521(n+1))`
-/

namespace A187624.P1379818689531562051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187633 (n + 1)) (A211795 (A187521 (n + 1)).toNat)

end

end A187624.P1379818689531562051

/-!
# A187625: Number of 3X3 0..n arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187625, there is no canonical definition to state claims against.
-/

/-! ## A187625.P3956917945836380349

`A187624(∑[n+1]+2)`
-/

namespace A187625.P3956917945836380349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187625.P3956917945836380349

/-! ## A187625.P4970485945200873865

`A187633(∑[n+1]+2)`
-/

namespace A187625.P4970485945200873865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187625.P4970485945200873865

/-! ## A187625.P5471521770721657214

`record[A054525(n+1)*A187624(n+3)]`
-/

namespace A187625.P5471521770721657214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A187624 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187625.P5471521770721657214

/-!
# A187626: Number of 4X4 0..n arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187626, there is no canonical definition to state claims against.
-/

/-! ## A187626.P12607777765892605755

`A187624(∑[n+2]+4)`
-/

namespace A187626.P12607777765892605755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187626.P12607777765892605755

/-! ## A187626.P1510850311781429216

`lcm(2, A187624(A167614(n+1)))`
-/

namespace A187626.P1510850311781429216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187624 (A167614 (n + 1)).toNat)

end

end A187626.P1510850311781429216

/-!
# A187627: Number of 5X5 0..n arrays with each 2X2 non-center subblock determinant nonzero and the array of 2X2 subblock determinants antisymmetric under 90 degree rotation.

The programs for A187627, there is no canonical definition to state claims against.
-/

/-! ## A187627.P10514238079731389582

`A187624(A020752(n+1))`
-/

namespace A187627.P10514238079731389582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (A020752 (n + 1)).toNat

end

end A187627.P10514238079731389582

/-!
# A187629: Number of (n+1)X(n+1) 0..1 arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187629, there is no canonical definition to state claims against.
-/

/-! ## A187629.P14654019158647965898

`A187633(∑[n+1])`
-/

namespace A187629.P14654019158647965898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187629.P14654019158647965898

/-! ## A187629.P12238694978304505311

`lcm(2, A187633(A025706(n)))`
-/

namespace A187629.P12238694978304505311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187633 (A025706 n).toNat)

end

end A187629.P12238694978304505311

/-! ## A187629.P10817817276002091458

`or(8, A187633(A261422(n)))`
-/

namespace A187629.P10817817276002091458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A187633 (A261422 n).toNat)

end

end A187629.P10817817276002091458

/-!
# A187630: Number of (n+1)X(n+1) 0..2 arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187630, there is no canonical definition to state claims against.
-/

/-! ## A187630.P7146846728943319264

`A187633(∑[n+2])`
-/

namespace A187630.P7146846728943319264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187630.P7146846728943319264

/-! ## A187630.P757432616252328989

`record[A187633(lt[A048887(n+1)², n])]`
-/

namespace A187630.P757432616252328989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187630.P757432616252328989

/-!
# A187631: Number of (n+1)X(n+1) 0..3 arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187631, there is no canonical definition to state claims against.
-/

/-! ## A187631.P7700395624778809897

`A187633(∑[n+3]+1)`
-/

namespace A187631.P7700395624778809897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187631.P7700395624778809897

/-!
# A187632: Number of (n+1)X(n+1) 0..4 arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187632, there is no canonical definition to state claims against.
-/

/-! ## A187632.P14818249829003635085

`A187633(∑[n+4]+3)`
-/

namespace A187632.P14818249829003635085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187632.P14818249829003635085

/-!
# A187633: T(n,k)=Number of (n+1)X(n+1) 0..k arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187633, there is no canonical definition to state claims against.
-/

/-! ## A187633.P17953862764968678616

`A187624(A319626(n+1)%A346997(n))`
-/

namespace A187633.P17953862764968678616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (Int.tmod (A319626 (n + 1)) (A346997 n)).toNat

end

end A187633.P17953862764968678616

/-! ## A187633.P10714470380145808563

`A187624(C(A319626(n+1), A003108(n)))`
-/

namespace A187633.P10714470380145808563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (Nat.choose (A319626 (n + 1)).toNat (A003108 n).toNat)

end

end A187633.P10714470380145808563

/-! ## A187633.P7608188472713288262

`A187624(C(A319626(n+1), A256910(n)))`
-/

namespace A187633.P7608188472713288262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (Nat.choose (A319626 (n + 1)).toNat (A256910 n).toNat)

end

end A187633.P7608188472713288262

/-! ## A187633.P5439800318662088031

`A187624(C(A319626(n+1), A276333(n)))`
-/

namespace A187633.P5439800318662088031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187624 (Nat.choose (A319626 (n + 1)).toNat (A276333 n).toNat)

end

end A187633.P5439800318662088031

/-!
# A187634: Number of 4X4 0..n arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187634, there is no canonical definition to state claims against.
-/

/-! ## A187634.P9974047789125439557

`A187633(∑[n+2]+4)`
-/

namespace A187634.P9974047789125439557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187634.P9974047789125439557

/-! ## A187634.P8610946203322923310

`lcm(2, A187633(A167614(n+1)))`
-/

namespace A187634.P8610946203322923310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187633 (A167614 (n + 1)).toNat)

end

end A187634.P8610946203322923310

/-!
# A187635: Number of 5X5 0..n arrays with the array of 2X2 subblock determinants antisymmetric under horizontal and vertical reflection and each non-centerline 2X2 subblock nonsingular.

The programs for A187635, there is no canonical definition to state claims against.
-/

/-! ## A187635.P15629810924201818362

`A187633(∑[n+3]+7)`
-/

namespace A187635.P15629810924201818362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187635.P15629810924201818362

/-!
# A187637: T(n,k)=Number of n-step self-avoiding walks on a k-long line summed over all starting positions.

The programs for A187637, there is no canonical definition to state claims against.
-/

/-! ## A187637.P12687672703395514124

`(2-char[∑[n]])*A185914(n+1)`
-/

namespace A187637.P12687672703395514124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A185914 (n + 1)

end

end A187637.P12687672703395514124

/-! ## A187637.P86744305483909160

`A185914(n+1)*A238303(n)`
-/

namespace A187637.P86744305483909160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1) * A238303 n

end

end A187637.P86744305483909160

/-! ## A187637.P12473258503994247838

`A185914(n+1)*A353510(n+1)`
-/

namespace A187637.P12473258503994247838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1) * A353510 (n + 1)

end

end A187637.P12473258503994247838

/-! ## A187637.P18412609436596741256

`log2(ceil(2^(A038722(n+1)-n)))*A238303(n)`
-/

namespace A187637.P18412609436596741256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈(2 : ℚ) ^ (A038722 (n + 1) - (n : ℤ) : ℤ)⌉ : ℝ) * (A238303 n : ℝ)

end

end A187637.P18412609436596741256

/-! ## A187637.P2731198957844165937

`A002262(A064789(n+1))-A056951(n+1)`
-/

namespace A187637.P2731198957844165937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A064789 (n + 1)).toNat - A056951 (n + 1)

end

end A187637.P2731198957844165937

/-! ## A187637.P7103898314154043939

`(A025581(n)+1-A053616(n))*A238303(n)`
-/

namespace A187637.P7103898314154043939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + (1 - A053616 n)) * A238303 n

end

end A187637.P7103898314154043939

/-! ## A187637.P2701057841290226540

`A077605(n+1)*A143182(n)*A238303(n)`
-/

namespace A187637.P2701057841290226540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A143182 n * A238303 n

end

end A187637.P2701057841290226540

/-! ## A187637.P4854105281388074478

`(A278818(n)-n)*char[A245300(n)]*A238303(n)`
-/

namespace A187637.P4854105281388074478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278818 n - (n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238303 n

end

end A187637.P4854105281388074478

/-! ## A187637.P2302547015027682744

`A002262(A130517(n+1)+A057944(n))-A056951(n+1)`
-/

namespace A187637.P2302547015027682744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A130517 (n + 1) + A057944 n).toNat - A056951 (n + 1)

end

end A187637.P2302547015027682744

/-! ## A187637.P17267972958922610139

`A002262(A265129(n+1)-A064578(n+1))-A056951(n+1)`
-/

namespace A187637.P17267972958922610139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A265129 (n + 1) - A064578 (n + 1)).toNat - A056951 (n + 1)

end

end A187637.P17267972958922610139

/-!
# A187638: A convolution of binomial coefficients.

The programs for A187638, there is no canonical definition to state claims against.
-/

/-! ## A187638.P13731743532406213189

`A331855(∏[A001333(n)])`
-/

namespace A187638.P13731743532406213189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187638.P13731743532406213189

/-! ## A187638.P3508574198648167248

`A070867(A067096(n+2))`
-/

namespace A187638.P3508574198648167248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070867 (A067096 (n + 2)).toNat

end

end A187638.P3508574198648167248

/-!
# A187639: Number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock having sum 9.

The programs for A187639, there is no canonical definition to state claims against.
-/

/-! ## A187639.P787009469605073376

`A187645(∑[4*n]+1)`
-/

namespace A187639.P787009469605073376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187639.P787009469605073376

/-!
# A187640: Number of (n+2)X3 0..2 arrays with each 3X3 subblock having sum 9.

The programs for A187640, there is no canonical definition to state claims against.
-/

/-! ## A187640.P5313778966122648626

`A187645(∑[n]+1)`
-/

namespace A187640.P5313778966122648626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187640.P5313778966122648626

/-! ## A187640.P8347179799805891699

`record[A187645(n+1)]`
-/

namespace A187640.P8347179799805891699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187640.P8347179799805891699

/-! ## A187640.P13214194636030718669

`or(1, A187645(A000124(n)))`
-/

namespace A187640.P13214194636030718669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187645 (A000124 n).toNat)

end

end A187640.P13214194636030718669

/-! ## A187640.P10976883629925433388

`or(1, A187645(A062918(n+1)))`
-/

namespace A187640.P10976883629925433388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187645 (A062918 (n + 1)).toNat)

end

end A187640.P10976883629925433388

/-!
# A187641: Number of (n+2)X4 0..2 arrays with each 3X3 subblock having sum 9.

The programs for A187641, there is no canonical definition to state claims against.
-/

/-! ## A187641.P1242350420515877799

`A187645(∑[n+1]+2)`
-/

namespace A187641.P1242350420515877799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187641.P1242350420515877799

/-! ## A187641.P3632314886664225700

`record[A187645(n+3)/A104030(n)]`
-/

namespace A187641.P3632314886664225700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187645 (n + 3) : ℚ) / (A104030 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187641.P3632314886664225700

/-! ## A187641.P14094019965119124599

`record[A187645(C(A056538(n+2), 2)+2)]`
-/

namespace A187641.P14094019965119124599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (Nat.choose (A056538 (n + 2)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187641.P14094019965119124599

/-!
# A187642: Number of (n+2)X5 0..2 arrays with each 3X3 subblock having sum 9.

The programs for A187642, there is no canonical definition to state claims against.
-/

/-! ## A187642.P15432067105214558443

`A187645(∑[n+2]+4)`
-/

namespace A187642.P15432067105214558443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187642.P15432067105214558443

/-! ## A187642.P3487954572157536844

`or(1, A187645(A167614(n+1)))`
-/

namespace A187642.P3487954572157536844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187645 (A167614 (n + 1)).toNat)

end

end A187642.P3487954572157536844

/-! ## A187642.P9160481370514148014

`A187645(A167614(n+1))+A185044(n)`
-/

namespace A187642.P9160481370514148014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (A167614 (n + 1)).toNat + A185044 n

end

end A187642.P9160481370514148014

/-! ## A187642.P14072093283806110691

`A187645(A167614(n+1))+A185226(n)`
-/

namespace A187642.P14072093283806110691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (A167614 (n + 1)).toNat + A185226 n

end

end A187642.P14072093283806110691

/-!
# A187643: Number of (n+2) X 6 0..2 arrays with each 3 X 3 subblock having a sum of 9.

The programs for A187643, there is no canonical definition to state claims against.
-/

/-! ## A187643.P13246529440835859436

`A187645(∑[n+3]+7)`
-/

namespace A187643.P13246529440835859436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187643.P13246529440835859436

/-! ## A187643.P6631969209394861690

`abs(4-A187645(A052905(n)+9))+4`
-/

namespace A187643.P6631969209394861690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A187645 (A052905 n + 9).toNat| + 4

end

end A187643.P6631969209394861690

/-! ## A187643.P12439132664770057365

`A181937(n)*A187645(A141214(n)+7)`
-/

namespace A187643.P12439132664770057365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A187645 (A141214 n + 7).toNat

end

end A187643.P12439132664770057365

/-!
# A187644: Number of (n+2)X7 0..2 arrays with each 3X3 subblock having sum 9.

The programs for A187644, there is no canonical definition to state claims against.
-/

/-! ## A187644.P7073719455331216744

`A187645(Δ[A264443(n)])`
-/

namespace A187644.P7073719455331216744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187645 (f1 (n + 1) - f1 n).toNat

end

end A187644.P7073719455331216744

/-!
# A187646: (Signless) Central Stirling numbers of the first kind s(2n,n).

The programs for A187646, there is no canonical definition to state claims against.
-/

/-! ## A187646.P14400080629756651972

`abs(A154415(2*n))`
-/

namespace A187646.P14400080629756651972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154415 (2 * n)|

end

end A187646.P14400080629756651972

/-! ## A187646.P5082451894211700338

`A033999(n)*A154415(2*n)`
-/

namespace A187646.P5082451894211700338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A154415 (2 * n)

end

end A187646.P5082451894211700338

/-! ## A187646.P3732524305459826714

`gcd(A151935(n), A154415(2*n))`
-/

namespace A187646.P3732524305459826714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 n) (A154415 (2 * n))

end

end A187646.P3732524305459826714

/-! ## A187646.P12069161657482253554

`A094267(n²)*A154415(2*n)`
-/

namespace A187646.P12069161657482253554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A154415 (2 * n)

end

end A187646.P12069161657482253554

/-! ## A187646.P12792841330510103795

`A154415(A005843(n))/A033999(n)`
-/

namespace A187646.P12792841330510103795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154415 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A187646.P12792841330510103795

/-!
# A187647: Partial sums of the central Stirling numbers of the second kind.

The programs for A187647, there is no canonical definition to state claims against.
-/

/-! ## A187647.P17069467474187452265

`∑[A007820(n)]`
-/

namespace A187647.P17069467474187452265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187647.P17069467474187452265

/-! ## A187647.P5396434592757296635

`∑[A226703(∑[n])]`
-/

namespace A187647.P5396434592757296635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226703 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187647.P5396434592757296635

/-! ## A187647.P161884464757998678

`∑[A343278(2*n)]`
-/

namespace A187647.P161884464757998678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343278 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187647.P161884464757998678

/-! ## A187647.P11876377783279886000

`∑[A343279(2*n)]`
-/

namespace A187647.P11876377783279886000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343279 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187647.P11876377783279886000

/-! ## A187647.P1032556724057336115

`A007820(A118759(n))+a(n-1)` with `a(0)=1`
-/

namespace A187647.P1032556724057336115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007820 (A118759 n).toNat + a (n - 1)

end

end A187647.P1032556724057336115

/-!
# A187648: Partial sums of the (signless) central Stirling numbers of the first kind.

The programs for A187648, there is no canonical definition to state claims against.
-/

/-! ## A187648.P7202102136840458763

`∑[A187646(n)]`
-/

namespace A187648.P7202102136840458763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187648.P7202102136840458763

/-! ## A187648.P534253753651301798

`∑[abs(A154415(2*n))]`
-/

namespace A187648.P534253753651301798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154415 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187648.P534253753651301798

/-! ## A187648.P16093053007768375587

`∑[A033999(n)*A154415(2*n)]`
-/

namespace A187648.P16093053007768375587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A154415 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187648.P16093053007768375587

/-! ## A187648.P8193877693136622798

`∑[gcd(A151935(n), A154415(2*n))]`
-/

namespace A187648.P8193877693136622798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 n) (A154415 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187648.P8193877693136622798

/-! ## A187648.P16781727892214236242

`∑[A094267(n²)*A154415(2*n)]`
-/

namespace A187648.P16781727892214236242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A154415 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187648.P16781727892214236242

/-!
# A187649: Alternated cumulative sums of the central Stirling numbers of the second kind.

The programs for A187649, there is no canonical definition to state claims against.
-/

/-! ## A187649.P6057718639706425138

`A007820(n)-a(n-1)` with `a(0)=1`
-/

namespace A187649.P6057718639706425138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007820 n - a (n - 1)

end

end A187649.P6057718639706425138

/-! ## A187649.P2183362037194102589

`A293926(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A187649.P2183362037194102589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293926 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A187649.P2183362037194102589

/-! ## A187649.P4352738682601355036

`A293609(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A187649.P4352738682601355036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293609 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A187649.P4352738682601355036

/-! ## A187649.P4602180142082729037

`abs(a(n-1)-A106800(∑[4*n]))` with `a(0)=1`
-/

namespace A187649.P4602180142082729037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A106800 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A187649.P4602180142082729037

/-! ## A187649.P17423490701349789992

`A106800(4*A000217(n))-a(n-1)` with `a(0)=1`
-/

namespace A187649.P17423490701349789992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106800 (4 * A000217 n).toNat - a (n - 1)

end

end A187649.P17423490701349789992

/-!
# A187650: Alternated cumulative sums of the (signless) central Stirling numbers of the first kind (A187646).

The programs for A187650, there is no canonical definition to state claims against.
-/

/-! ## A187650.P10114831125389221277

`abs(∑[A154415(2*n)])`
-/

namespace A187650.P10114831125389221277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154415 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A187650.P10114831125389221277

/-! ## A187650.P12449858726603839348

`abs(∑[A048994(∑[4*n])])`
-/

namespace A187650.P12449858726603839348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A187650.P12449858726603839348

/-! ## A187650.P11145857509144733252

`A187646(n)-a(n-1)` with `a(0)=1`
-/

namespace A187650.P11145857509144733252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187646 n - a (n - 1)

end

end A187650.P11145857509144733252

/-! ## A187650.P5354623313124913511

`A132393(2*(n²+n))-a(n-1)` with `a(0)=1`
-/

namespace A187650.P5354623313124913511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132393 (2 * (n ^ 2 + n)) - a (n - 1)

end

end A187650.P5354623313124913511

/-! ## A187650.P2582023941531293837

`abs(∑[A033999(n)*A187646(n)])`
-/

namespace A187650.P2582023941531293837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A187646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A187650.P2582023941531293837

/-!
# A187651: Alternated binomial partial sums of the central Stirling numbers of the second kind.

The programs for A187651, there is no canonical definition to state claims against.
-/

/-! ## A187651.P3951861255565306872

`A220075(A010790(n))-char[∑[n+1]]`
-/

namespace A187651.P3951861255565306872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220075 (A010790 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187651.P3951861255565306872

/-!
# A187652: Alternated binomial cumulative sums of the (signless) central Stirling numbers of the first kind (A187646).

The programs for A187652, there is no canonical definition to state claims against.
-/

/-! ## A187652.P3691159301486699252

`A126463(n)-A064287(A066810(n+4))`
-/

namespace A187652.P3691159301486699252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126463 n - A064287 (A066810 (n + 4)).toNat

end

end A187652.P3691159301486699252

/-!
# A187653: Binomial cumulative sums of the central Stirling numbers of the second kind (A007820).

The programs for A187653, there is no canonical definition to state claims against.
-/

/-! ## A187653.P17140278257729402775

`A187394(A187647(n))`
-/

namespace A187653.P17140278257729402775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (A187647 n).toNat

end

end A187653.P17140278257729402775

/-!
# A187654: Binomial cumulative sums of the (signless) central Stirling numbers of the first kind (A187646).

The programs for A187654, there is no canonical definition to state claims against.
-/

/-! ## A187654.P15844510536354388791

`A335876(A340936(n))-A340947(n)`
-/

namespace A187654.P15844510536354388791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (A340936 n).toNat - A340947 (n + 10)

end

end A187654.P15844510536354388791

/-!
# A187655: Self-convolution of the central Stirling numbers of the second kind.

The programs for A187655, there is no canonical definition to state claims against.
-/

/-! ## A187655.P1125814662126314617

`A045572(A299434(n+1))+n`
-/

namespace A187655.P1125814662126314617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A299434 (n + 1)).toNat + (n : ℤ)

end

end A187655.P1125814662126314617

/-!
# A187660: Triangle read by rows: T(n,k) = (-1)^(floor(3*k/2))*binomial(floor((n+k)/2),k), 0 <= k <= n.

The programs for A187660, the canonical program `A187660.P3081445552635126843` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187660 has offset 0).

The definition of A187660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187660.P3081445552635126843

`(-1)^floor(3*col(n)/2)*C(floor((row(n)+col(n))/2), col(n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187660

/-- `(-1)^floor(3*col(n)/2)*C(floor((row(n)+col(n))/2), col(n))` -/
def P3081445552635126843.Spec : Prop :=
  ∀ n, P3081445552635126843.a n = (A187660 n : ℚ)

end A187660

/-! ## A187660.P4141467777913654417

`Δ[A010751(n)]*A066170(n)`
-/

namespace A187660.P4141467777913654417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066170 n

end

end A187660.P4141467777913654417

namespace A187660

/-- `Δ[A010751(n)]*A066170(n)` -/
def P4141467777913654417.Spec : Prop :=
  ∀ n, P4141467777913654417.a n = A187660 n

end A187660

/-! ## A187660.P17420955389626717567

`A033999(comp[∑[n]]+n)*A066170(n)`
-/

namespace A187660.P17420955389626717567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) * A066170 n

end

end A187660.P17420955389626717567

namespace A187660

/-- `A033999(comp[∑[n]]+n)*A066170(n)` -/
def P17420955389626717567.Spec : Prop :=
  ∀ n, P17420955389626717567.a n = A187660 n

end A187660

/-! ## A187660.P1746491631188870868

`(-1)^A003057(n+2)*A066170(n)`
-/

namespace A187660.P1746491631188870868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A003057 (n + 2) : ℤ) * (A066170 n : ℚ)

end

end A187660.P1746491631188870868

namespace A187660

/-- `(-1)^A003057(n+2)*A066170(n)` -/
def P1746491631188870868.Spec : Prop :=
  ∀ n, P1746491631188870868.a n = (A187660 n : ℚ)

end A187660

/-! ## A187660.P8499970077196074991

`A014451(A003056(n))*A066170(n)`
-/

namespace A187660.P8499970077196074991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003056 n).toNat * A066170 n

end

end A187660.P8499970077196074991

namespace A187660

/-- `A014451(A003056(n))*A066170(n)` -/
def P8499970077196074991.Spec : Prop :=
  ∀ n, P8499970077196074991.a n = A187660 n

end A187660

/-! ## A187660.P11262862714739600342

`A014451(A003987(n))*A066170(n)`
-/

namespace A187660.P11262862714739600342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003987 n).toNat * A066170 n

end

end A187660.P11262862714739600342

namespace A187660

/-- `A014451(A003987(n))*A066170(n)` -/
def P11262862714739600342.Spec : Prop :=
  ∀ n, P11262862714739600342.a n = A187660 n

end A187660

/-! ## A187660.P10170498079496364104

`A014451(A049581(n))*A066170(n)`
-/

namespace A187660.P10170498079496364104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A049581 n).toNat * A066170 n

end

end A187660.P10170498079496364104

namespace A187660

/-- `A014451(A049581(n))*A066170(n)` -/
def P10170498079496364104.Spec : Prop :=
  ∀ n, P10170498079496364104.a n = A187660 n

end A187660

/-! ## A187660.P14711868647477248128

`A046854(n)*A087960(A002262(n))`
-/

namespace A187660.P14711868647477248128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A087960 (A002262 n).toNat

end

end A187660.P14711868647477248128

namespace A187660

/-- `A046854(n)*A087960(A002262(n))` -/
def P14711868647477248128.Spec : Prop :=
  ∀ n, P14711868647477248128.a n = A187660 n

end A187660

/-! ## A187660.P1976527437435463608

`A021010(A057944(n))*A066170(n)`
-/

namespace A187660.P1976527437435463608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A057944 n).toNat * A066170 n

end

end A187660.P1976527437435463608

namespace A187660

/-- `A021010(A057944(n))*A066170(n)` -/
def P1976527437435463608.Spec : Prop :=
  ∀ n, P1976527437435463608.a n = A187660 n

end A187660

/-! ## A187660.P12334839763215950900

`A046854(n)*A057077(A002260(n+1))`
-/

namespace A187660.P12334839763215950900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A057077 (A002260 (n + 1)).toNat

end

end A187660.P12334839763215950900

namespace A187660

/-- `A046854(n)*A057077(A002260(n+1))` -/
def P12334839763215950900.Spec : Prop :=
  ∀ n, P12334839763215950900.a n = A187660 n

end A187660

/-!
# A187663: a(0) = 1, a(n) = least primorial sharing at least n distinct digits with a(n-1).

The programs for A187663, there is no canonical definition to state claims against.
-/

/-! ## A187663.P1555007245192376784

`A002110(comp[∑[A134264(n+3)]])`
-/

namespace A187663.P1555007245192376784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187663.P1555007245192376784

/-! ## A187663.P8553020882193975452

`A002110(lt[A290095(n), A008864(n+1)])`
-/

namespace A187663.P8553020882193975452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A187663.P8553020882193975452

/-! ## A187663.P3346046643816938184

`A002110(A285161(n+1)%A018426(n+1))`
-/

namespace A187663.P3346046643816938184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (Int.tmod (A285161 (n + 1)) (A018426 (n + 1))).toNat

end

end A187663.P3346046643816938184

/-!
# A187667: Coefficient of x^n in (1 + n*x + n*x^2 + n*x^3)^n.

The programs for A187667, there is no canonical definition to state claims against.
-/

/-! ## A187667.P16681700465022852348

`A284047(comp[2*n+3]^n)`
-/

namespace A187667.P16681700465022852348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284047 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A187667.P16681700465022852348

/-!
# A187668: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock nonsingular and the array of 2X2 subblock determinants symmetric about the diagonal and antidiagonal.

The programs for A187668, there is no canonical definition to state claims against.
-/

/-! ## A187668.P13730134326455892207

`A187670(∑[n+1])`
-/

namespace A187668.P13730134326455892207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187668.P13730134326455892207

/-! ## A187668.P588429496461882349

`record[A187670(A034839(n))]`
-/

namespace A187668.P588429496461882349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (A034839 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187668.P588429496461882349

/-!
# A187669: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 subblock nonsingular and the array of 2X2 subblock determinants symmetric about the diagonal and antidiagonal.

The programs for A187669, there is no canonical definition to state claims against.
-/

/-! ## A187669.P10115567661560959197

`A187670(∑[n+2])`
-/

namespace A187669.P10115567661560959197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187669.P10115567661560959197

/-!
# A187671: Number of 3X3 0..n arrays with each 2X2 subblock nonsingular and the array of 2X2 subblock determinants symmetric about the diagonal and antidiagonal.

The programs for A187671, there is no canonical definition to state claims against.
-/

/-! ## A187671.P1968067444357217870

`A187670(∑[n+1]+2)`
-/

namespace A187671.P1968067444357217870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187671.P1968067444357217870

/-! ## A187671.P10293013971824074462

`record[A187670(A034839(n)+2)]`
-/

namespace A187671.P10293013971824074462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (A034839 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187671.P10293013971824074462

/-!
# A187672: Number of 4X4 0..n arrays with each 2X2 subblock nonsingular and the array of 2X2 subblock determinants symmetric about the diagonal and antidiagonal.

The programs for A187672, there is no canonical definition to state claims against.
-/

/-! ## A187672.P13498940974674941464

`A187670(∑[n+2]+4)`
-/

namespace A187672.P13498940974674941464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187672.P13498940974674941464

/-!
# A187673: Partial sums of the tricapped prism numbers A005920.

The programs for A187673, the canonical program `A187673.P15122020256320025968` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187673 has offset 0).

The definition of A187673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187673.P14507723757064329273

`(n+2)*(n+1)*(9*n²+19*n+12)/24`
-/

namespace A187673.P14507723757064329273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) * (9 * n ^ 2 + 19 * n + 12) : ℚ) / 24

end

end A187673.P14507723757064329273

namespace A187673

/-- `(n+2)*(n+1)*(9*n²+19*n+12)/24` -/
def P14507723757064329273.Spec : Prop :=
  ∀ n, P14507723757064329273.a n = (A187673 n : ℚ)

theorem P14507723757064329273.correct : P14507723757064329273.Spec := by
  intro n
  simp only [A187673, Nat.add_sub_cancel, A187673.P14507723757064329273.a, A187673.P15122020256320025968.a, A002419, A002419.P11168938691723075535.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187673

/-! ## A187673.P15122020256320025968

`A002419(n+1)+A050534(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187673

/-- `A002419(n+1)+A050534(n+1)` -/
def P15122020256320025968.Spec : Prop :=
  ∀ n, P15122020256320025968.a n = A187673 n

theorem P15122020256320025968.correct : P15122020256320025968.Spec := by
  intro n
  simp only [A187673]

end A187673

/-! ## A187673.P15978898541224430785

`∑[∑[∑[a(n-1)+9]]]` with `a(0)=1, a(1)=7`
-/

namespace A187673.P15978898541224430785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f3 =>
  f3 (n - 1) + 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P15978898541224430785

namespace A187673

/-- `∑[∑[∑[a(n-1)+9]]]` -/
def P15978898541224430785.Spec : Prop :=
  ∀ n, (P15978898541224430785.a n : ℤ) = A187673 n

end A187673

/-! ## A187673.P11518886237840711424

`∑[n*C(n+1, 2)]+∑[n+1]²`
-/

namespace A187673.P11518886237840711424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A187673.P11518886237840711424

namespace A187673

/-- `∑[n*C(n+1, 2)]+∑[n+1]²` -/
def P11518886237840711424.Spec : Prop :=
  ∀ n, (P11518886237840711424.a n : ℤ) = A187673 n

end A187673

/-! ## A187673.P4753543966701738853

`∑[∑[C(2*n+1+n, 2)+n+1]]`
-/

namespace A187673.P4753543966701738853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1 + n) 2 + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P4753543966701738853

namespace A187673

/-- `∑[∑[C(2*n+1+n, 2)+n+1]]` -/
def P4753543966701738853.Spec : Prop :=
  ∀ n, (P4753543966701738853.a n : ℤ) = A187673 n

end A187673

/-! ## A187673.P13719344543151927174

`or(∑[((n+1)²+n²/2)*(n+1)], char[2])`
-/

namespace A187673.P13719344543151927174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) + (n ^ 2 : ℚ) / 2) * (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187673.P13719344543151927174

namespace A187673

/-- `or(∑[((n+1)²+n²/2)*(n+1)], char[2])` -/
def P13719344543151927174.Spec : Prop :=
  ∀ n, P13719344543151927174.a n = A187673 n

end A187673

/-! ## A187673.P1406647487904156489

`∑[A005920(n)]`
-/

namespace A187673.P1406647487904156489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P1406647487904156489

namespace A187673

/-- `∑[A005920(n)]` -/
def P1406647487904156489.Spec : Prop :=
  ∀ n, P1406647487904156489.a n = A187673 n

end A187673

/-! ## A187673.P4868605860417778894

`∑[∑[A064225(n)]]`
-/

namespace A187673.P4868605860417778894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P4868605860417778894

namespace A187673

/-- `∑[∑[A064225(n)]]` -/
def P4868605860417778894.Spec : Prop :=
  ∀ n, P4868605860417778894.a n = A187673 n

end A187673

/-! ## A187673.P10258127449459685979

`∑[A050509(n)]-∑[∑[n]]`
-/

namespace A187673.P10258127449459685979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A187673.P10258127449459685979

namespace A187673

/-- `∑[A050509(n)]-∑[∑[n]]` -/
def P10258127449459685979.Spec : Prop :=
  ∀ n, P10258127449459685979.a n = A187673 n

end A187673

/-! ## A187673.P610372664853515765

`A001296(n)+∑[n+1]²`
-/

namespace A187673.P610372664853515765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A187673.P610372664853515765

namespace A187673

/-- `A001296(n)+∑[n+1]²` -/
def P610372664853515765.Spec : Prop :=
  ∀ n, P610372664853515765.a n = A187673 n

end A187673

/-! ## A187673.P8992353839992786341

`∑[A002411(n)]+∑[n+1]²`
-/

namespace A187673.P8992353839992786341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A187673.P8992353839992786341

namespace A187673

/-- `∑[A002411(n)]+∑[n+1]²` -/
def P8992353839992786341.Spec : Prop :=
  ∀ n, P8992353839992786341.a n = A187673 n

end A187673

/-! ## A187673.P6876217628873739404

`∑[(n+1)*(A003215(n)+1+n)/2]`
-/

namespace A187673.P6876217628873739404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A003215 n + 1 + (n : ℤ) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P6876217628873739404

namespace A187673

/-- `∑[(n+1)*(A003215(n)+1+n)/2]` -/
def P6876217628873739404.Spec : Prop :=
  ∀ n, P6876217628873739404.a n = (A187673 n : ℚ)

end A187673

/-! ## A187673.P17526987827026858152

`A051798(n)-A027480(n)`
-/

namespace A187673.P17526987827026858152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n - A027480 n

end

end A187673.P17526987827026858152

namespace A187673

/-- `A051798(n)-A027480(n)` -/
def P17526987827026858152.Spec : Prop :=
  ∀ n, P17526987827026858152.a n = A187673 n

end A187673

/-! ## A187673.P10165131184514183436

`A053134(n)-A338996(n)`
-/

namespace A187673.P10165131184514183436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A338996 n

end

end A187673.P10165131184514183436

namespace A187673

/-- `A053134(n)-A338996(n)` -/
def P10165131184514183436.Spec : Prop :=
  ∀ n, P10165131184514183436.a n = A187673 n

end A187673

/-! ## A187673.P15050821532225372422

`A007715(n+1)+A004320(n)`
-/

namespace A187673.P15050821532225372422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1) + A004320 n

end

end A187673.P15050821532225372422

namespace A187673

/-- `A007715(n+1)+A004320(n)` -/
def P15050821532225372422.Spec : Prop :=
  ∀ n, P15050821532225372422.a n = A187673 n

end A187673

/-! ## A187673.P3254916508830074488

`A066804(n+1)+A005582(n)`
-/

namespace A187673.P3254916508830074488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066804 (n + 1) + A005582 n

end

end A187673.P3254916508830074488

namespace A187673

/-- `A066804(n+1)+A005582(n)` -/
def P3254916508830074488.Spec : Prop :=
  ∀ n, P3254916508830074488.a n = A187673 n

end A187673

/-! ## A187673.P13626129742286535959

`A289643(n)+A022815(n+1)`
-/

namespace A187673.P13626129742286535959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A022815 (n + 1)

end

end A187673.P13626129742286535959

namespace A187673

/-- `A289643(n)+A022815(n+1)` -/
def P13626129742286535959.Spec : Prop :=
  ∀ n, P13626129742286535959.a n = A187673 n

end A187673

/-! ## A187673.P7533099039748788972

`A290312(n)+A153978(n+1)`
-/

namespace A187673.P7533099039748788972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + A153978 (n + 1)

end

end A187673.P7533099039748788972

namespace A187673

/-- `A290312(n)+A153978(n+1)` -/
def P7533099039748788972.Spec : Prop :=
  ∀ n, P7533099039748788972.a n = A187673 n

end A187673

/-! ## A187673.P3419705223790452559

`A006322(n+1)+∑[A006331(n)]`
-/

namespace A187673.P3419705223790452559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P3419705223790452559

namespace A187673

/-- `A006322(n+1)+∑[A006331(n)]` -/
def P3419705223790452559.Spec : Prop :=
  ∀ n, P3419705223790452559.a n = A187673 n

end A187673

/-! ## A187673.P1034367351002666378

`A117066(n+1)-∑[A000292(n)]`
-/

namespace A187673.P1034367351002666378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187673.P1034367351002666378

namespace A187673

/-- `A117066(n+1)-∑[A000292(n)]` -/
def P1034367351002666378.Spec : Prop :=
  ∀ n, P1034367351002666378.a n = A187673 n

end A187673

/-!
# A187674: Number of (n+2)X3 0..3 arrays with no 2X2 subblock sum equal to any diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187674, there is no canonical definition to state claims against.
-/

/-! ## A187674.P3697370546204079155

`A187676(∑[n]+1)`
-/

namespace A187674.P3697370546204079155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187674.P3697370546204079155

/-! ## A187674.P4757420506583438518

`lcm(2, A187676(A000124(n)))`
-/

namespace A187674.P4757420506583438518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187676 (A000124 n).toNat)

end

end A187674.P4757420506583438518

/-! ## A187674.P390340395706472801

`record[A010054(n)*A187676(n+1)]`
-/

namespace A187674.P390340395706472801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A187676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187674.P390340395706472801

/-!
# A187675: Number of (n+2)X4 0..3 arrays with no 2X2 subblock sum equal to any diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187675, there is no canonical definition to state claims against.
-/

/-! ## A187675.P15821535311919796681

`A187676(∑[A199343(n)]+2)`
-/

namespace A187675.P15821535311919796681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187676 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A187675.P15821535311919796681

/-! ## A187675.P15276550520444331245

`A187676(A000124(n+1)+1)`
-/

namespace A187675.P15276550520444331245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187676 (A000124 (n + 1) + 1).toNat

end

end A187675.P15276550520444331245

/-!
# A187677: Primes of the form 8*k^2 + 6*k - 1 for positive k.

The programs for A187677, the canonical program `A187677.P9791756543765287417` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187677 has offset 1).

The definition of A187677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187677.P1948564399654279627

`∩[A091823(n+1), A124199(n+1)]`
-/

namespace A187677.P1948564399654279627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P1948564399654279627

namespace A187677

/-- `∩[A091823(n+1), A124199(n+1)]` -/
def P1948564399654279627.Spec : Prop :=
  ∀ n, (P1948564399654279627.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P703401203576054701

`∩[A091823(n+1), A275660(n+1)]`
-/

namespace A187677.P703401203576054701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P703401203576054701

namespace A187677

/-- `∩[A091823(n+1), A275660(n+1)]` -/
def P703401203576054701.Spec : Prop :=
  ∀ n, (P703401203576054701.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P9791756543765287417

`∩[A091823(n+1), A065384(n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187677

/-- `∩[A091823(n+1), A065384(n+2)]` -/
def P9791756543765287417.Spec : Prop :=
  ∀ n, (P9791756543765287417.a n : ℤ) = A187677 (n + 1)

theorem P9791756543765287417.correct : P9791756543765287417.Spec := by
  intro n
  simp only [A187677, Nat.add_sub_cancel]

end A187677

/-! ## A187677.P18237099173711436059

`∩[A034856(2*(n+1)), A124199(n+1)]`
-/

namespace A187677.P18237099173711436059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P18237099173711436059

namespace A187677

/-- `∩[A034856(2*(n+1)), A124199(n+1)]` -/
def P18237099173711436059.Spec : Prop :=
  ∀ n, (P18237099173711436059.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P12138513963461572013

`∩[A034856(2*(n+1)), A065384(n+3)]`
-/

namespace A187677.P12138513963461572013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P12138513963461572013

namespace A187677

/-- `∩[A034856(2*(n+1)), A065384(n+3)]` -/
def P12138513963461572013.Spec : Prop :=
  ∀ n, (P12138513963461572013.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P10678067936191118000

`∩[A055998(2*n+1)+1, A124199(n+1)]`
-/

namespace A187677.P10678067936191118000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P10678067936191118000

namespace A187677

/-- `∩[A055998(2*n+1)+1, A124199(n+1)]` -/
def P10678067936191118000.Spec : Prop :=
  ∀ n, (P10678067936191118000.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P1400474999403236076

`∩[A124199(n+1), A266665(n)]`
-/

namespace A187677.P1400474999403236076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P1400474999403236076

namespace A187677

/-- `∩[A124199(n+1), A266665(n)]` -/
def P1400474999403236076.Spec : Prop :=
  ∀ n, (P1400474999403236076.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P11759164543534226165

`∩[A065384(n+2), A266665(n)]`
-/

namespace A187677.P11759164543534226165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P11759164543534226165

namespace A187677

/-- `∩[A065384(n+2), A266665(n)]` -/
def P11759164543534226165.Spec : Prop :=
  ∀ n, (P11759164543534226165.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P4429389710034068377

`∩[A124199(n+1), A162761(n+1)]`
-/

namespace A187677.P4429389710034068377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P4429389710034068377

namespace A187677

/-- `∩[A124199(n+1), A162761(n+1)]` -/
def P4429389710034068377.Spec : Prop :=
  ∀ n, (P4429389710034068377.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P16869085482726000541

`∩[A162761(n+1), A275660(n+1)]`
-/

namespace A187677.P16869085482726000541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P16869085482726000541

namespace A187677

/-- `∩[A162761(n+1), A275660(n+1)]` -/
def P16869085482726000541.Spec : Prop :=
  ∀ n, (P16869085482726000541.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P2364576656546414381

`∩[A162761(n+1), A065384(n+2)]`
-/

namespace A187677.P2364576656546414381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P2364576656546414381

namespace A187677

/-- `∩[A162761(n+1), A065384(n+2)]` -/
def P2364576656546414381.Spec : Prop :=
  ∀ n, (P2364576656546414381.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P4482272493751527731

`∩[A161680(2*(n+1))-2, A124199(n+1)]`
-/

namespace A187677.P4482272493751527731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P4482272493751527731

namespace A187677

/-- `∩[A161680(2*(n+1))-2, A124199(n+1)]` -/
def P4482272493751527731.Spec : Prop :=
  ∀ n, (P4482272493751527731.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P15490154436835818688

`∩[A065384(2*n+3), A186347(n+2)]`
-/

namespace A187677.P15490154436835818688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P15490154436835818688

namespace A187677

/-- `∩[A065384(2*n+3), A186347(n+2)]` -/
def P15490154436835818688.Spec : Prop :=
  ∀ n, (P15490154436835818688.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P9666080469369814990

`p?[∑[or(2, n)+2]]`
-/

namespace A187677.P9666080469369814990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A187677.P9666080469369814990

namespace A187677

/-- `p?[∑[or(2, n)+2]]` -/
def P9666080469369814990.Spec : Prop :=
  ∀ n, (P9666080469369814990.a n : ℤ) = A187677 (n + 1)

end A187677

/-! ## A187677.P3101785773690686932

`p?[C(2*n, 2)-2]`
-/

namespace A187677.P3101785773690686932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187677.P3101785773690686932

namespace A187677

/-- `p?[C(2*n, 2)-2]` -/
def P3101785773690686932.Spec : Prop :=
  ∀ n, P3101785773690686932.a n = A187677 (n + 1)

end A187677

/-! ## A187677.P14788969061763834674

`p?[2*(n²-1)-n]`
-/

namespace A187677.P14788969061763834674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 : ℤ) - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187677.P14788969061763834674

namespace A187677

/-- `p?[2*(n²-1)-n]` -/
def P14788969061763834674.Spec : Prop :=
  ∀ n, P14788969061763834674.a n = A187677 (n + 1)

end A187677

/-! ## A187677.P12956021434967777922

`or(1, p?[(2*n+1)*(n+1)-2])`
-/

namespace A187677.P12956021434967777922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A187677.P12956021434967777922

namespace A187677

/-- `or(1, p?[(2*n+1)*(n+1)-2])` -/
def P12956021434967777922.Spec : Prop :=
  ∀ n, P12956021434967777922.a n = A187677 (n + 1)

end A187677

/-!
# A187678: The smallest integer for which the number of divisors is the n-th nonprime.

The programs for A187678, there is no canonical definition to state claims against.
-/

/-! ## A187678.P4024029422975137302

`A005179(A018252(n+1))`
-/

namespace A187678.P4024029422975137302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A018252 (n + 1)).toNat

end

end A187678.P4024029422975137302

/-! ## A187678.P7423003500761950962

`A005179(A141468(n+2))`
-/

namespace A187678.P7423003500761950962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A141468 (n + 2)).toNat

end

end A187678.P7423003500761950962

/-! ## A187678.P3412655501787053431

`A005179(A000040(n+1)-A014237(n+1))`
-/

namespace A187678.P3412655501787053431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000040 (n + 1) - A014237 (n + 1)).toNat

end

end A187678.P3412655501787053431

/-! ## A187678.P17490412162531384676

`A005179(A022797(n+1)-A000040(n+1))`
-/

namespace A187678.P17490412162531384676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A022797 (n + 1) - A000040 (n + 1)).toNat

end

end A187678.P17490412162531384676

/-! ## A187678.P1404574758861455700

`A081532(A324600(n+1))`
-/

namespace A187678.P1404574758861455700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A324600 (n + 1)).toNat

end

end A187678.P1404574758861455700

/-!
# A187680: a(n) = (product of divisors of n) mod (sum of divisors of n).

The programs for A187680, the canonical program `A187680.P7320752672487898907` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187680 has offset 1).

The definition of A187680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187680.P7320752672487898907

`A007955(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187680

/-- `A007955(n+1)%A000203(n+1)` -/
def P7320752672487898907.Spec : Prop :=
  ∀ n, P7320752672487898907.a n = A187680 (n + 1)

theorem P7320752672487898907.correct : P7320752672487898907.Spec := by
  intro n
  simp only [A187680, Nat.add_sub_cancel]

end A187680

/-! ## A187680.P12625807190056433637

`A007955(n+1)%Δ[A160664(n)]`
-/

namespace A187680.P12625807190056433637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (n + 1)) (f1 (n + 1) - f1 n)

end

end A187680.P12625807190056433637

namespace A187680

/-- `A007955(n+1)%Δ[A160664(n)]` -/
def P12625807190056433637.Spec : Prop :=
  ∀ n, P12625807190056433637.a n = A187680 (n + 1)

end A187680

/-! ## A187680.P8384275581948582970

`A076720(n+1)%A000203(n+1)`
-/

namespace A187680.P8384275581948582970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076720 (n + 1)) (A000203 (n + 1))

end

end A187680.P8384275581948582970

namespace A187680

/-- `A076720(n+1)%A000203(n+1)` -/
def P8384275581948582970.Spec : Prop :=
  ∀ n, P8384275581948582970.a n = A187680 (n + 1)

end A187680

/-! ## A187680.P6021221129146585529

`(A179937(n+1)*A184392(n+1))%A000203(n+1)`
-/

namespace A187680.P6021221129146585529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179937 (n + 1) * A184392 (n + 1)) (A000203 (n + 1))

end

end A187680.P6021221129146585529

namespace A187680

/-- `(A179937(n+1)*A184392(n+1))%A000203(n+1)` -/
def P6021221129146585529.Spec : Prop :=
  ∀ n, P6021221129146585529.a n = A187680 (n + 1)

end A187680

/-! ## A187680.P8094557915347366579

`A007955(A000027(n+1))%A262610(Δ[n²])`
-/

namespace A187680.P8094557915347366579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (A000027 (n + 1)).toNat) (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A187680.P8094557915347366579

namespace A187680

/-- `A007955(A000027(n+1))%A262610(Δ[n²])` -/
def P8094557915347366579.Spec : Prop :=
  ∀ n, P8094557915347366579.a n = A187680 (n + 1)

end A187680

/-! ## A187680.P13171703274658117092

`sqrt((n+1)^A000005(n+1))%A000203(n+1)`
-/

namespace A187680.P13171703274658117092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ) : ℝ))) (A000203 (n + 1))

end

end A187680.P13171703274658117092

namespace A187680

/-- `sqrt((n+1)^A000005(n+1))%A000203(n+1)` -/
def P13171703274658117092.Spec : Prop :=
  ∀ n, P13171703274658117092.a n = A187680 (n + 1)

end A187680

/-!
# A187681: Rank transform of the sequence floor(n/3); complement of A187682.

The programs for A187681, there is no canonical definition to state claims against.
-/

/-! ## A187681.P8726034107269294169

`comp[A187682(n+1)-1]+1`
-/

namespace A187681.P8726034107269294169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187682 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187681.P8726034107269294169

/-! ## A187681.P3654811552153333714

`A008611(A187682(n+1)-(n+2))`
-/

namespace A187681.P3654811552153333714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A187682 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187681.P3654811552153333714

/-! ## A187681.P9625178262285310074

`A002264(A187682(n+1)-(n+1))`
-/

namespace A187681.P9625178262285310074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187682 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187681.P9625178262285310074

/-! ## A187681.P1497515637871151077

`A187181(A187682(n+1)-n)-1`
-/

namespace A187681.P1497515637871151077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A187682 (n + 1) - (n : ℤ)).toNat - 1

end

end A187681.P1497515637871151077

/-! ## A187681.P2970698246834587779

`A008620(A187682(n+1)-n)-2`
-/

namespace A187681.P2970698246834587779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A187682 (n + 1) - (n : ℤ)).toNat - 2

end

end A187681.P2970698246834587779

/-! ## A187681.P2496689005900621888

`A002264(A187682(n+1))-A008620(n)`
-/

namespace A187681.P2496689005900621888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187682 (n + 1)).toNat - A008620 n

end

end A187681.P2496689005900621888

/-!
# A187682: Complement of A187681.

The programs for A187682, there is no canonical definition to state claims against.
-/

/-! ## A187682.P9487318729273349550

`3*(A187681(n+1)+1)+n`
-/

namespace A187682.P9487318729273349550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A187681 (n + 1) + 1) + (n : ℤ)

end

end A187682.P9487318729273349550

/-! ## A187682.P2741117657468260613

`A016789(A187681(n+1))+1+n`
-/

namespace A187682.P2741117657468260613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A187681 (n + 1)).toNat + 1 + (n : ℤ)

end

end A187682.P2741117657468260613

/-! ## A187682.P14169992380573661653

`A016777(A187681(n+1))+A000027(n+2)`
-/

namespace A187682.P14169992380573661653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187681 (n + 1)).toNat + A000027 (n + 2)

end

end A187682.P14169992380573661653

/-! ## A187682.P14438120801511440611

`eq[char[A187681(n+1)], A151933(n)]`
-/

namespace A187682.P14438120801511440611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187681 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187682.P14438120801511440611

/-!
# A187683: Rank transform of the sequence floor(2n/3); complement of A187683.

The programs for A187683, there is no canonical definition to state claims against.
-/

/-! ## A187683.P9284957119931429400

`comp[A187684(n+1)-1]+1`
-/

namespace A187683.P9284957119931429400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187684 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187683.P9284957119931429400

/-! ## A187683.P12007402108106543383

`A004396(A187684(n+1)-(n+2))`
-/

namespace A187683.P12007402108106543383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A187684 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187683.P12007402108106543383

/-! ## A187683.P16399553206190962089

`A274616(A187684(n+1)-(n+2))`
-/

namespace A187683.P16399553206190962089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A187684 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187683.P16399553206190962089

/-! ## A187683.P8509389757239130703

`A004523(A187684(n+1)-(n+1))`
-/

namespace A187683.P8509389757239130703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A187684 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187683.P8509389757239130703

/-! ## A187683.P1416429612558757803

`eq[char[A187684(n+1)], A151933(n)]`
-/

namespace A187683.P1416429612558757803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187684 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187683.P1416429612558757803

/-!
# A187684: Complement of A187683.

The programs for A187684, there is no canonical definition to state claims against.
-/

/-! ## A187684.P13960144709480673795

`A032766(A187683(n+1))+2+n`
-/

namespace A187684.P13960144709480673795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A187683 (n + 1)).toNat + 2 + (n : ℤ)

end

end A187684.P13960144709480673795

/-! ## A187684.P18418599573360347284

`eq[char[A187683(n+1)], A151933(n)]`
-/

namespace A187684.P18418599573360347284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187684.P18418599573360347284

/-! ## A187684.P10997740643624991857

`eq[char[A187683(n+1)], A010893(n)]`
-/

namespace A187684.P10997740643624991857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187684.P10997740643624991857

/-! ## A187684.P14791865002913465958

`A111684(A188396(n+1))`
-/

namespace A187684.P14791865002913465958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111684 (A188396 (n + 1)).toNat

end

end A187684.P14791865002913465958

/-! ## A187684.P3224858656423939402

`A189384(n+1)+A065043(A107590(n))`
-/

namespace A187684.P3224858656423939402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189384 (n + 1) + A065043 (A107590 n).toNat

end

end A187684.P3224858656423939402

/-!
# A187685: Rank transform of the sequence floor(4n/3); complement of A187686.

The programs for A187685, there is no canonical definition to state claims against.
-/

/-! ## A187685.P3770815457300510781

`comp[A187686(n+1)-1]+1`
-/

namespace A187685.P3770815457300510781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187686 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187685.P3770815457300510781

/-! ## A187685.P12663274306339559106

`eq[char[A187686(n+1)], A151933(n)]`
-/

namespace A187685.P12663274306339559106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187686 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187685.P12663274306339559106

/-! ## A187685.P3311730413161269507

`or(A103588(4*n+1), A195119(3*n+1))`
-/

namespace A187685.P3311730413161269507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103588 (4 * n + 1)) (A195119 (3 * n + 1))

end

end A187685.P3311730413161269507

/-! ## A187685.P17288878042453768215

`eq[char[A187686(n+1)], A151622(n)]`
-/

namespace A187685.P17288878042453768215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187686 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187685.P17288878042453768215

/-! ## A187685.P8936906239882630884

`or(A000035(A047180(n+1)), A047329(n+1))`
-/

namespace A187685.P8936906239882630884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A047180 (n + 1)).toNat) (A047329 (n + 1))

end

end A187685.P8936906239882630884

/-!
# A187686: Complement of A187685.

The programs for A187686, there is no canonical definition to state claims against.
-/

/-! ## A187686.P1390722757446979664

`eq[char[A187685(n+1)], A151933(n)]`
-/

namespace A187686.P1390722757446979664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187685 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187686.P1390722757446979664

/-! ## A187686.P1138516115909457637

`A309157(3*n+1)+A109720(A027750(n+1))`
-/

namespace A187686.P1138516115909457637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309157 (3 * n + 1) + A109720 (A027750 (n + 1)).toNat

end

end A187686.P1138516115909457637

/-! ## A187686.P15421896295429962042

`A373834(A006842(n+1))+A309157(3*n+1)`
-/

namespace A187686.P15421896295429962042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 (A006842 (n + 1)).toNat + A309157 (3 * n + 1)

end

end A187686.P15421896295429962042

/-! ## A187686.P10440528299864548756

`A248229(n+1)+A105564(A004767(n))`
-/

namespace A187686.P10440528299864548756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248229 (n + 1) + A105564 (A004767 n).toNat

end

end A187686.P10440528299864548756

/-! ## A187686.P15259283666807887040

`round(log(A087600(n+1)))`
-/

namespace A187686.P15259283666807887040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A087600 (n + 1) : ℝ))

end

end A187686.P15259283666807887040

/-!
# A187687: Rank transform of the sequence floor(5n/3); complement of A187688.

The programs for A187687, there is no canonical definition to state claims against.
-/

/-! ## A187687.P6101409712600415062

`comp[A187688(n+1)-1]+1`
-/

namespace A187687.P6101409712600415062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187688 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187687.P6101409712600415062

/-! ## A187687.P15400487505144716424

`eq[char[A187688(n+1)], A000007(n)]`
-/

namespace A187687.P15400487505144716424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187687.P15400487505144716424

/-! ## A187687.P13938032078590537081

`eq[char[A187688(n+1)], A000038(n)]`
-/

namespace A187687.P13938032078590537081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187687.P13938032078590537081

/-! ## A187687.P15827500762113698802

`eq[char[A187688(n+1)], A151933(n)]`
-/

namespace A187687.P15827500762113698802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187687.P15827500762113698802

/-! ## A187687.P3118367789375481431

`eq[char[A187688(n+1)], A151622(n)]`
-/

namespace A187687.P3118367789375481431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187687.P3118367789375481431

/-!
# A187688: Complement of A187687.

The programs for A187688, there is no canonical definition to state claims against.
-/

/-! ## A187688.P105969794131020115

`eq[char[A187687(n+1)], A000038(n)]`
-/

namespace A187688.P105969794131020115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187688.P105969794131020115

/-! ## A187688.P15765833202738036222

`lt[A373565(n+1)+char[A187687(n+1)], 2]`
-/

namespace A187688.P15765833202738036222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187687 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A187688.P15765833202738036222

/-! ## A187688.P11301908825808905205

`eq[char[A187687(n+1)], A151933(n)]`
-/

namespace A187688.P11301908825808905205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187688.P11301908825808905205

/-! ## A187688.P17540436111687481271

`eq[char[A187687(n+1)], A151622(n)]`
-/

namespace A187688.P17540436111687481271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187688.P17540436111687481271

/-! ## A187688.P17645335695781831333

`A280814(A098005(n+1))`
-/

namespace A187688.P17645335695781831333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A098005 (n + 1)).toNat

end

end A187688.P17645335695781831333

/-!
# A187689: Rank transform of the sequence round(3n/4); complement of A187690.

The programs for A187689, the canonical program `A187689.P16838789493905865231` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187689 has offset 1).

The definition of A187689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187689.P3392321412692294134

`comp[n*and(n, n²%3)]-Δ[or(2*n+1, -n)]²%3`
-/

namespace A187689.P3392321412692294134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land n (n ^ 2 % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.tmod ((f2 (n + 1) - f2 n) ^ 2) 3

end

end A187689.P3392321412692294134

namespace A187689

/-- `comp[n*and(n, n²%3)]-Δ[or(2*n+1, -n)]²%3` -/
def P3392321412692294134.Spec : Prop :=
  ∀ n, P3392321412692294134.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P16838789493905865231

`∑[gcd(2, ∑[n])]-A106665(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187689

/-- `∑[gcd(2, ∑[n])]-A106665(n)` -/
def P16838789493905865231.Spec : Prop :=
  ∀ n, P16838789493905865231.a n = A187689 (n + 1)

theorem P16838789493905865231.correct : P16838789493905865231.Spec := by
  intro n
  simp only [A187689, Nat.add_sub_cancel]

end A187689

/-! ## A187689.P14322713116468387474

`comp[A187690(n+1)-1]+1`
-/

namespace A187689.P14322713116468387474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187690 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187689.P14322713116468387474

namespace A187689

/-- `comp[A187690(n+1)-1]+1` -/
def P14322713116468387474.Spec : Prop :=
  ∀ n, (P14322713116468387474.a n : ℤ) = A187689 (n + 1)

end A187689

/-! ## A187689.P10846160978301593915

`floor((3*n+A292077(n+1)+2)/2)`
-/

namespace A187689.P10846160978301593915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n : ℤ) + (A292077 (n + 1) + 2) : ℚ) / 2⌋

end

end A187689.P10846160978301593915

namespace A187689

/-- `floor((3*n+A292077(n+1)+2)/2)` -/
def P10846160978301593915.Spec : Prop :=
  ∀ n, P10846160978301593915.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P1411712992767452488

`floor((3*n+2-floor(acot(Δ[A317050(n)])))/2)`
-/

namespace A187689.P1411712992767452488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n + 2 : ℤ) - ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋ : ℚ) / 2⌋

end

end A187689.P1411712992767452488

namespace A187689

/-- `floor((3*n+2-floor(acot(Δ[A317050(n)])))/2)` -/
def P1411712992767452488.Spec : Prop :=
  ∀ n, P1411712992767452488.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P16320494201795856097

`ceil((A016789(n)-A106665(n))/2)`
-/

namespace A187689.P16320494201795856097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016789 n - A106665 n : ℚ) / 2⌉

end

end A187689.P16320494201795856097

namespace A187689

/-- `ceil((A016789(n)-A106665(n))/2)` -/
def P16320494201795856097.Spec : Prop :=
  ∀ n, P16320494201795856097.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P10247653729089967565

`A292077(n+1)+A047255(n+1)`
-/

namespace A187689.P10247653729089967565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1) + A047255 (n + 1)

end

end A187689.P10247653729089967565

namespace A187689

/-- `A292077(n+1)+A047255(n+1)` -/
def P10247653729089967565.Spec : Prop :=
  ∀ n, P10247653729089967565.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P9559816384102728944

`A047229(n+2)-A106665(n)`
-/

namespace A187689.P9559816384102728944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2) - A106665 n

end

end A187689.P9559816384102728944

namespace A187689

/-- `A047229(n+2)-A106665(n)` -/
def P9559816384102728944.Spec : Prop :=
  ∀ n, P9559816384102728944.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P11977533469528246372

`floor((7*(n+1)-eq[5, A006467(n)])/2)`
-/

namespace A187689.P11977533469528246372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) : ℚ) / 2⌋

end

end A187689.P11977533469528246372

namespace A187689

/-- `floor((7*(n+1)-eq[5, A006467(n)])/2)` -/
def P11977533469528246372.Spec : Prop :=
  ∀ n, P11977533469528246372.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P2094052623282281903

`floor((log2(A003324(2*(n+1)))+2*n+1+n)/2)`
-/

namespace A187689.P2094052623282281903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.logb 2 (A003324 (2 * (n + 1)) : ℝ) + (2 * n + 1 + n : ℝ)) / 2⌋

end

end A187689.P2094052623282281903

namespace A187689

/-- `floor((log2(A003324(2*(n+1)))+2*n+1+n)/2)` -/
def P2094052623282281903.Spec : Prop :=
  ∀ n, P2094052623282281903.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P15011492759049252909

`record[A037915(n)-A292077(n+1)]`
-/

namespace A187689.P15011492759049252909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n - A292077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187689.P15011492759049252909

namespace A187689

/-- `record[A037915(n)-A292077(n+1)]` -/
def P15011492759049252909.Spec : Prop :=
  ∀ n, P15011492759049252909.a n = A187689 (n + 1)

end A187689

/-! ## A187689.P5274482139669501241

`A004526(A187690(n+1))`
-/

namespace A187689.P5274482139669501241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187690 (n + 1)).toNat

end

end A187689.P5274482139669501241

namespace A187689

/-- `A004526(A187690(n+1))` -/
def P5274482139669501241.Spec : Prop :=
  ∀ n, P5274482139669501241.a n = A187689 (n + 1)

end A187689

/-!
# A187690: Complement of A187689.

The programs for A187690, the canonical program `A187690.P14255351328814757455` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187690 has offset 1).

The definition of A187690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187690.P14255351328814757455

`3*(n+1)-A106665(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A187690

/-- `3*(n+1)-A106665(n)` -/
def P14255351328814757455.Spec : Prop :=
  ∀ n, P14255351328814757455.a n = A187690 (n + 1)

theorem P14255351328814757455.correct : P14255351328814757455.Spec := by
  intro n
  simp only [A187690, Nat.add_sub_cancel]

end A187690

/-! ## A187690.P12089658721973435593

`3*n+A292077(n+1)+2`
-/

namespace A187690.P12089658721973435593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A292077 (n + 1) + 2)

end

end A187690.P12089658721973435593

namespace A187690

/-- `3*n+A292077(n+1)+2` -/
def P12089658721973435593.Spec : Prop :=
  ∀ n, P12089658721973435593.a n = A187690 (n + 1)

theorem P12089658721973435593.correct : P12089658721973435593.Spec := by
  intro n
  simp only [A187690, Nat.add_sub_cancel, A187690.P12089658721973435593.a, A187690.P14255351328814757455.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, A292077, A292077.P208369071452103874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187690

/-! ## A187690.P3443714737237511402

`A187689(n+1)+∑[and(2, -n)!]`
-/

namespace A187690.P3443714737237511402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (-(n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187689 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A187690.P3443714737237511402

namespace A187690

/-- `A187689(n+1)+∑[and(2, -n)!]` -/
def P3443714737237511402.Spec : Prop :=
  ∀ n, P3443714737237511402.a n = A187690 (n + 1)

end A187690

/-! ## A187690.P2677654172432794340

`3*(n+1)-ceil(acot(Δ[A317050(n)]))`
-/

namespace A187690.P2677654172432794340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A187690.P2677654172432794340

namespace A187690

/-- `3*(n+1)-ceil(acot(Δ[A317050(n)]))` -/
def P2677654172432794340.Spec : Prop :=
  ∀ n, P2677654172432794340.a n = A187690 (n + 1)

end A187690

/-! ## A187690.P4572040262660200694

`A292077(n+1)+A016789(n)`
-/

namespace A187690.P4572040262660200694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1) + A016789 n

end

end A187690.P4572040262660200694

namespace A187690

/-- `A292077(n+1)+A016789(n)` -/
def P4572040262660200694.Spec : Prop :=
  ∀ n, P4572040262660200694.a n = A187690 (n + 1)

theorem P4572040262660200694.correct : P4572040262660200694.Spec := by
  intro n
  simp only [A187690, Nat.add_sub_cancel, A187690.P4572040262660200694.a, A187690.P14255351328814757455.a, A016789, A016789.P8277564872725303677.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, A292077, A292077.P208369071452103874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187690

/-! ## A187690.P3688831017191574372

`A016789(n)+1-A106665(n)`
-/

namespace A187690.P3688831017191574372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A106665 n)

end

end A187690.P3688831017191574372

namespace A187690

/-- `A016789(n)+1-A106665(n)` -/
def P3688831017191574372.Spec : Prop :=
  ∀ n, P3688831017191574372.a n = A187690 (n + 1)

theorem P3688831017191574372.correct : P3688831017191574372.Spec := by
  intro n
  simp only [A187690, Nat.add_sub_cancel, A187690.P3688831017191574372.a, A187690.P14255351328814757455.a, A016789, A016789.P8277564872725303677.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187690

/-! ## A187690.P809801045166254224

`A016777(n)+2-A106665(n)`
-/

namespace A187690.P809801045166254224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A106665 n)

end

end A187690.P809801045166254224

namespace A187690

/-- `A016777(n)+2-A106665(n)` -/
def P809801045166254224.Spec : Prop :=
  ∀ n, P809801045166254224.a n = A187690 (n + 1)

theorem P809801045166254224.correct : P809801045166254224.Spec := by
  intro n
  simp only [A187690, Nat.add_sub_cancel, A187690.P809801045166254224.a, A187690.P14255351328814757455.a, A016777, A016777.P9931792138852554157.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187690

/-! ## A187690.P2544133601404092493

`7*(n+1)-eq[5, A006467(n)]`
-/

namespace A187690.P2544133601404092493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A187690.P2544133601404092493

namespace A187690

/-- `7*(n+1)-eq[5, A006467(n)]` -/
def P2544133601404092493.Spec : Prop :=
  ∀ n, P2544133601404092493.a n = A187690 (n + 1)

end A187690

/-! ## A187690.P133493456661918254

`log2(A003324(2*(n+1)))+2*n+1+n`
-/

namespace A187690.P133493456661918254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003324 (2 * (n + 1)) : ℝ) + (2 * n + 1 + n : ℝ)

end

end A187690.P133493456661918254

namespace A187690

/-- `log2(A003324(2*(n+1)))+2*n+1+n` -/
def P133493456661918254.Spec : Prop :=
  ∀ n, P133493456661918254.a n = (A187690 (n + 1) : ℝ)

end A187690

/-! ## A187690.P12678908972689981743

`A106665(2*n+1)+A014682(2*n+1)`
-/

namespace A187690.P12678908972689981743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (2 * n + 1) + A014682 (2 * n + 1)

end

end A187690.P12678908972689981743

namespace A187690

/-- `A106665(2*n+1)+A014682(2*n+1)` -/
def P12678908972689981743.Spec : Prop :=
  ∀ n, P12678908972689981743.a n = A187690 (n + 1)

end A187690

/-! ## A187690.P3548613257147389626

`eq[2, Δ[A209615(n+1)]]-n`
-/

namespace A187690.P3548613257147389626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A187690.P3548613257147389626

namespace A187690

/-- `eq[2, Δ[A209615(n+1)]]-n` -/
def P3548613257147389626.Spec : Prop :=
  ∀ n, P3548613257147389626.a n = A187690 (n + 1)

end A187690

/-!
# A187691: Rank transform of the sequence ceiling(3n/4); complement of A187692.

The programs for A187691, there is no canonical definition to state claims against.
-/

/-! ## A187691.P3341288723699626097

`round(A187692(n+1)/2)`
-/

namespace A187691.P3341288723699626097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A187692 (n + 1) : ℚ) / 2)

end

end A187691.P3341288723699626097

/-! ## A187691.P999665611346670111

`comp[3*n]+and(1, A101659(n))`
-/

namespace A187691.P999665611346670111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + Int.land 1 (A101659 n)

end

end A187691.P999665611346670111

/-! ## A187691.P13785328486696615487

`A001651(n+1)+A101659(n)%2`
-/

namespace A187691.P13785328486696615487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + Int.tmod (A101659 n) 2

end

end A187691.P13785328486696615487

/-! ## A187691.P17279896378274921634

`comp[∪[A187692(n+1), A187852(n+1)]]`
-/

namespace A187691.P17279896378274921634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187692 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187691.P17279896378274921634

/-! ## A187691.P11284301637660396127

`A101659(2*n+1)+comp[3*n-1]`
-/

namespace A187691.P11284301637660396127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101659 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A187691.P11284301637660396127

/-! ## A187691.P9256059543654806599

`A004525(A187692(n+1))`
-/

namespace A187691.P9256059543654806599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A187692 (n + 1)).toNat

end

end A187691.P9256059543654806599

/-! ## A187691.P8304300835572051682

`A008624(A016969(n)-A101659(n))`
-/

namespace A187691.P8304300835572051682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A016969 n - A101659 n).toNat

end

end A187691.P8304300835572051682

/-! ## A187691.P3614507325629009817

`A008624(xor(A016969(n), A101659(n)))`
-/

namespace A187691.P3614507325629009817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.xor (A016969 n) (A101659 n)).toNat

end

end A187691.P3614507325629009817

/-!
# A187692: Complement of A187691.

The programs for A187692, there is no canonical definition to state claims against.
-/

/-! ## A187692.P8116968003061717423

`A004773(A187691(n+1))+1+n`
-/

namespace A187692.P8116968003061717423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A187691 (n + 1)).toNat + 1 + (n : ℤ)

end

end A187692.P8116968003061717423

/-! ## A187692.P7940765150019064101

`A080513(n)+A032793(A187691(n+1))`
-/

namespace A187692.P7940765150019064101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A032793 (A187691 (n + 1)).toNat

end

end A187692.P7940765150019064101

/-! ## A187692.P11549694870790452312

`record[A001651(n+1)+Δ[A101659(n)]]`
-/

namespace A187692.P11549694870790452312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187692.P11549694870790452312

/-! ## A187692.P18157296671966767448

`3*n+1+A101659(2*n+1)-A101659(2*n)`
-/

namespace A187692.P18157296671966767448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) + (A101659 (2 * n + 1) - A101659 (2 * n))

end

end A187692.P18157296671966767448

/-! ## A187692.P8344671080714427612

`A130508(A101659(n)+A016777(n))`
-/

namespace A187692.P8344671080714427612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A101659 n + A016777 n).toNat

end

end A187692.P8344671080714427612

/-! ## A187692.P11801961158017956988

`A008619(xor(1, A016969(n)-A101659(n))-1)`
-/

namespace A187692.P11801961158017956988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A016969 n - A101659 n) - 1).toNat

end

end A187692.P11801961158017956988

/-! ## A187692.P3277155882011900466

`A028242(A016969(n)-A101659(n))`
-/

namespace A187692.P3277155882011900466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A016969 n - A101659 n).toNat

end

end A187692.P3277155882011900466

/-! ## A187692.P16456540229832018537

`A028242(xor(A016969(n), A101659(n)))`
-/

namespace A187692.P16456540229832018537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor (A016969 n) (A101659 n)).toNat

end

end A187692.P16456540229832018537

/-! ## A187692.P7287820224126399926

`A065033(xor(1, A016969(n)-A101659(n)))`
-/

namespace A187692.P7287820224126399926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor 1 (A016969 n - A101659 n)).toNat

end

end A187692.P7287820224126399926

/-!
# A187693: Expansion of g.f. x^2*(1+4*x-3*x^2)/((1-x)^2*(1-2*x)*(1-3*x)).

The programs for A187693, the canonical program `A187693.P11201218747352591305` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187693 has offset 0).

The definition of A187693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+4x^3-3x^4)/(1-7x+17x^2-17x^3+6x^4))` (program `A187693.P11201218747352591305`, by `A187693.P11201218747352591305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187693.P11201218747352591305

`ogf((x^2+4x^3-3x^4)/(1-7x+17x^2-17x^3+6x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A187693

/-- `ogf((x^2+4x^3-3x^4)/(1-7x+17x^2-17x^3+6x^4))` -/
def P11201218747352591305.Spec : Prop :=
  ∀ n, P11201218747352591305.a n = A187693 n

theorem P11201218747352591305.correct : P11201218747352591305.Spec := by
  intro n
  simp only [A187693]

end A187693

/-! ## A187693.P11239996506078916933

`7*a(n-1)-17*a(n-2)+17*a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=11, a(4)=57`
-/

namespace A187693.P11239996506078916933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 11, 57] fun n a =>
  7 * a (n - 1) - 17 * a (n - 2) + 17 * a (n - 3) - 6 * a (n - 4)

end

end A187693.P11239996506078916933

namespace A187693

/-- `7*a(n-1)-17*a(n-2)+17*a(n-3)-6*a(n-4)` -/
def P11239996506078916933.Spec : Prop :=
  ∀ n, P11239996506078916933.a n = A187693 n

end A187693

/-! ## A187693.P14945754745949377249

`∑[3^n-A052996(n)]`
-/

namespace A187693.P14945754745949377249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A052996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187693.P14945754745949377249

namespace A187693

/-- `∑[3^n-A052996(n)]` -/
def P14945754745949377249.Spec : Prop :=
  ∀ n, P14945754745949377249.a n = A187693 n

end A187693

/-! ## A187693.P16757172286869290724

`A036550(n)-A131051(n+1)`
-/

namespace A187693.P16757172286869290724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n - A131051 (n + 1)

end

end A187693.P16757172286869290724

namespace A187693

/-- `A036550(n)-A131051(n+1)` -/
def P16757172286869290724.Spec : Prop :=
  ∀ n, P16757172286869290724.a n = A187693 n

end A187693

/-! ## A187693.P1045058765860265673

`∑[A101052(n)]-A288133(n+1)`
-/

namespace A187693.P1045058765860265673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A288133 (n + 1)

end

end A187693.P1045058765860265673

namespace A187693

/-- `∑[A101052(n)]-A288133(n+1)` -/
def P1045058765860265673.Spec : Prop :=
  ∀ n, P1045058765860265673.a n = A187693 n

end A187693

/-! ## A187693.P10154128262703172282

`∑[A101052(n)]-(A011782(n)+n)`
-/

namespace A187693.P10154128262703172282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A011782 n + (n : ℤ))

end

end A187693.P10154128262703172282

namespace A187693

/-- `∑[A101052(n)]-(A011782(n)+n)` -/
def P10154128262703172282.Spec : Prop :=
  ∀ n, P10154128262703172282.a n = A187693 n

end A187693

/-! ## A187693.P10469192906051563759

`A007051(n+1)-A054127(n+1)`
-/

namespace A187693.P10469192906051563759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - A054127 (n + 1)

end

end A187693.P10469192906051563759

namespace A187693

/-- `A007051(n+1)-A054127(n+1)` -/
def P10469192906051563759.Spec : Prop :=
  ∀ n, P10469192906051563759.a n = A187693 n

end A187693

/-! ## A187693.P2321650963072449670

`∑[A028243(n+1)]+1-A011782(n)`
-/

namespace A187693.P2321650963072449670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A011782 n)

end

end A187693.P2321650963072449670

namespace A187693

/-- `∑[A028243(n+1)]+1-A011782(n)` -/
def P2321650963072449670.Spec : Prop :=
  ∀ n, P2321650963072449670.a n = A187693 n

end A187693

/-! ## A187693.P15967825945076206806

`A048328(2*n+1)-∑[A052996(n)]`
-/

namespace A187693.P15967825945076206806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187693.P15967825945076206806

namespace A187693

/-- `A048328(2*n+1)-∑[A052996(n)]` -/
def P15967825945076206806.Spec : Prop :=
  ∀ n, P15967825945076206806.a n = A187693 n

end A187693

/-!
# A187695: G.f.: x^4*(1+x)*(1+12*x-31*x^2+12*x^2)/((1-x)^2*(1-2*x)^2*(1-3*x)*(1-4*x)).

The programs for A187695, there is no canonical definition to state claims against.
-/

/-! ## A187695.P17759065766430463029

`(44*n)%∏{p}[A302394(n), #]`
-/

namespace A187695.P17759065766430463029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n % (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A187695.P17759065766430463029

/-! ## A187695.P4858430282838445828

`A008651(A041585(n)²)`
-/

namespace A187695.P4858430282838445828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A041585 n ^ 2).toNat

end

end A187695.P4858430282838445828

/-! ## A187695.P9569366815044553214

`A033182(A041585(n)²)`
-/

namespace A187695.P9569366815044553214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A041585 n ^ 2).toNat

end

end A187695.P9569366815044553214

/-!
# A187696: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under horizontal and vertical reflection.

The programs for A187696, there is no canonical definition to state claims against.
-/

/-! ## A187696.P15069874959554581955

`A187699(∑[n+1])`
-/

namespace A187696.P15069874959554581955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187696.P15069874959554581955

/-! ## A187696.P70026497134662738

`lcm(2, A187699(A025747(n)))`
-/

namespace A187696.P70026497134662738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187699 (A025747 n).toNat)

end

end A187696.P70026497134662738

/-! ## A187696.P8261014723822924168

`A187699(A025747(n))+A025468(n)`
-/

namespace A187696.P8261014723822924168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (A025747 n).toNat + A025468 n

end

end A187696.P8261014723822924168

/-!
# A187697: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under horizontal and vertical reflection.

The programs for A187697, there is no canonical definition to state claims against.
-/

/-! ## A187697.P9281387327246816378

`A187699(∑[n+2])`
-/

namespace A187697.P9281387327246816378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187697.P9281387327246816378

/-!
# A187698: Number of (n+1)X(n+1) 0..3 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under horizontal and vertical reflection.

The programs for A187698, there is no canonical definition to state claims against.
-/

/-! ## A187698.P8095918078093090926

`A187699(∑[n+3]+1)`
-/

namespace A187698.P8095918078093090926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187698.P8095918078093090926

