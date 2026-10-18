import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

/-!
# A092500: a(0)=0; for n>0, a(n) = a(n-1)^2 + 10.

The programs for A092500, the canonical program `A092500.P4785032511492026021` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092500 has offset 0).

The definition of A092500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+10` (program `A092500.P4785032511492026021`, by `A092500.P4785032511492026021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092500.P4785032511492026021

`a(n-1)²+10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092500

/-- `a(n-1)²+10` -/
def P4785032511492026021.Spec : Prop :=
  ∀ n, (P4785032511492026021.a n : ℤ) = A092500 n

theorem P4785032511492026021.correct : P4785032511492026021.Spec := by
  intro n
  simp only [A092500]

end A092500

/-! ## A092500.P6930482739724841640

`or(10, a(n-1)²)` with `a(0)=0`
-/

namespace A092500.P6930482739724841640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 10 (a (n - 1) ^ 2)

end

end A092500.P6930482739724841640

namespace A092500

/-- `or(10, a(n-1)²)` -/
def P6930482739724841640.Spec : Prop :=
  ∀ n, (P6930482739724841640.a n : ℤ) = A092500 n

end A092500

/-! ## A092500.P15437737235477899932

`xor(10, a(n-1)²)` with `a(0)=0`
-/

namespace A092500.P15437737235477899932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 10 (a (n - 1) ^ 2)

end

end A092500.P15437737235477899932

namespace A092500

/-- `xor(10, a(n-1)²)` -/
def P15437737235477899932.Spec : Prop :=
  ∀ n, (P15437737235477899932.a n : ℤ) = A092500 n

end A092500

/-! ## A092500.P5747078242500107330

`or(10, a(n-1)^2)` with `a(0)=0`
-/

namespace A092500.P5747078242500107330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 10 (a (n - 1) ^ 2)

end

end A092500.P5747078242500107330

namespace A092500

/-- `or(10, a(n-1)^2)` -/
def P5747078242500107330.Spec : Prop :=
  ∀ n, (P5747078242500107330.a n : ℤ) = A092500 n

end A092500

/-!
# A092501: a(0)=0, a(1)=1, a(2)=10; for n>2, a(n) = a(n-1)^2 + 10.

The programs for A092501, the canonical program `A092501.P601042632590711018` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092501 has offset 0).

The definition of A092501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+10` (program `A092501.P601042632590711018`, by `A092501.P601042632590711018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092501.P601042632590711018

`a(n-1)²+10` with `a(0)=0, a(1)=1, a(2)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092501

/-- `a(n-1)²+10` -/
def P601042632590711018.Spec : Prop :=
  ∀ n, (P601042632590711018.a n : ℤ) = A092501 n

theorem P601042632590711018.correct : P601042632590711018.Spec := by
  intro n
  simp only [A092501]

end A092501

/-! ## A092501.P1186135592462923240

`or(10, a(n-1)²)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A092501.P1186135592462923240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  Nat.lor 10 (a (n - 1) ^ 2)

end

end A092501.P1186135592462923240

namespace A092501

/-- `or(10, a(n-1)²)` -/
def P1186135592462923240.Spec : Prop :=
  ∀ n, (P1186135592462923240.a n : ℤ) = A092501 n

end A092501

/-! ## A092501.P1317219299253004047

`xor(10, a(n-1)²)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A092501.P1317219299253004047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  Nat.xor 10 (a (n - 1) ^ 2)

end

end A092501.P1317219299253004047

namespace A092501

/-- `xor(10, a(n-1)²)` -/
def P1317219299253004047.Spec : Prop :=
  ∀ n, (P1317219299253004047.a n : ℤ) = A092501 n

end A092501

/-!
# A092502: First derivative of cyclotomic(n,x) evaluated at x=1.

The programs for A092502, the canonical program `A092502.P4607441725892613552` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092502 has offset 1).

The definition of A092502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092502.P4607441725892613552

`A023896(n+1)/A048671(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092502

/-- `A023896(n+1)/A048671(n+1)` -/
def P4607441725892613552.Spec : Prop :=
  ∀ n, P4607441725892613552.a n = (A092502 (n + 1) : ℚ)

end A092502

/-! ## A092502.P5222752397147416487

`ceil(A000010(n+1)/2*A014963(n+1))`
-/

namespace A092502.P5222752397147416487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 2 * (A014963 (n + 1) : ℚ)⌉

end

end A092502.P5222752397147416487

namespace A092502

/-- `ceil(A000010(n+1)/2*A014963(n+1))` -/
def P5222752397147416487.Spec : Prop :=
  ∀ n, P5222752397147416487.a n = A092502 (n + 1)

end A092502

/-! ## A092502.P11711393112864431154

`A014963(n+1)/(n+1)*A023896(n+1)`
-/

namespace A092502.P11711393112864431154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) / (n + 1 : ℚ) * (A023896 (n + 1) : ℚ)

end

end A092502.P11711393112864431154

namespace A092502

/-- `A014963(n+1)/(n+1)*A023896(n+1)` -/
def P11711393112864431154.Spec : Prop :=
  ∀ n, P11711393112864431154.a n = (A092502 (n + 1) : ℚ)

end A092502

/-! ## A092502.P16719042612686438312

`A000010(n+1)*A014963(n+1)/A014963(A001316(n))`
-/

namespace A092502.P16719042612686438312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A014963 (n + 1) : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A092502.P16719042612686438312

namespace A092502

/-- `A000010(n+1)*A014963(n+1)/A014963(A001316(n))` -/
def P16719042612686438312.Spec : Prop :=
  ∀ n, P16719042612686438312.a n = (A092502 (n + 1) : ℚ)

end A092502

/-! ## A092502.P5951590929271676016

`lcm(2, A000010((n+1)*A014963(n+1)))/2`
-/

namespace A092502.P5951590929271676016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000010 ((n + 1 : ℤ) * A014963 (n + 1)).toNat) : ℚ) / 2

end

end A092502.P5951590929271676016

namespace A092502

/-- `lcm(2, A000010((n+1)*A014963(n+1)))/2` -/
def P5951590929271676016.Spec : Prop :=
  ∀ n, P5951590929271676016.a n = (A092502 (n + 1) : ℚ)

end A092502

/-! ## A092502.P4942303557197196727

`ceil(A014963(n+1)*A282634(∑[n]+1)/2)`
-/

namespace A092502.P4942303557197196727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014963 (n + 1) * A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2⌉

end

end A092502.P4942303557197196727

namespace A092502

/-- `ceil(A014963(n+1)*A282634(∑[n]+1)/2)` -/
def P4942303557197196727.Spec : Prop :=
  ∀ n, P4942303557197196727.a n = A092502 (n + 1)

end A092502

/-! ## A092502.P12063572809455235300

`A004526(A000010(n+1)*A014963(n+1)+1)`
-/

namespace A092502.P12063572809455235300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 1) * A014963 (n + 1) + 1).toNat

end

end A092502.P12063572809455235300

namespace A092502

/-- `A004526(A000010(n+1)*A014963(n+1)+1)` -/
def P12063572809455235300.Spec : Prop :=
  ∀ n, P12063572809455235300.a n = A092502 (n + 1)

end A092502

/-! ## A092502.P8537671841584069677

`A057979(A000010(n+1)*A014963(n+1)+1)`
-/

namespace A092502.P8537671841584069677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (n + 1) * A014963 (n + 1) + 1).toNat

end

end A092502.P8537671841584069677

namespace A092502

/-- `A057979(A000010(n+1)*A014963(n+1)+1)` -/
def P8537671841584069677.Spec : Prop :=
  ∀ n, P8537671841584069677.a n = A092502 (n + 1)

end A092502

/-! ## A092502.P2211542132704301215

`A008619(A000010(n+1)*A014963(n+1)-1)`
-/

namespace A092502.P2211542132704301215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 1) * A014963 (n + 1) - 1).toNat

end

end A092502.P2211542132704301215

namespace A092502

/-- `A008619(A000010(n+1)*A014963(n+1)-1)` -/
def P2211542132704301215.Spec : Prop :=
  ∀ n, P2211542132704301215.a n = A092502 (n + 1)

end A092502

/-! ## A092502.P49468648306408285

`A057979(A014963(n+1)*A282634(∑[n]+1)+1)`
-/

namespace A092502.P49468648306408285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A014963 (n + 1) * A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A092502.P49468648306408285

namespace A092502

/-- `A057979(A014963(n+1)*A282634(∑[n]+1)+1)` -/
def P49468648306408285.Spec : Prop :=
  ∀ n, P49468648306408285.a n = A092502 (n + 1)

end A092502

/-!
# A092503: a(n) = n^floor(n/2).

The programs for A092503, the canonical program `A092503.P2199725812449991995` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092503 has offset 0).

The definition of A092503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092503.P2199725812449991995

`n^floor(n/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092503

/-- `n^floor(n/2)` -/
def P2199725812449991995.Spec : Prop :=
  ∀ n, P2199725812449991995.a n = (A092503 n : ℚ)

end A092503

/-! ## A092503.P12118576451746411544

`ceil(n^(and(n, -2)/2))`
-/

namespace A092503.P12118576451746411544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)⌉

end

end A092503.P12118576451746411544

namespace A092503

/-- `ceil(n^(and(n, -2)/2))` -/
def P12118576451746411544.Spec : Prop :=
  ∀ n, P12118576451746411544.a n = A092503 n

end A092503

/-! ## A092503.P11967064341226744550

`round(n^(and(n, -2)/2))`
-/

namespace A092503.P11967064341226744550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ))

end

end A092503.P11967064341226744550

namespace A092503

/-- `round(n^(and(n, -2)/2))` -/
def P11967064341226744550.Spec : Prop :=
  ∀ n, P11967064341226744550.a n = A092503 n

end A092503

/-! ## A092503.P6783864426846710115

`floor(n^(n-∑[n%2]))`
-/

namespace A092503.P6783864426846710115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)⌋

end

end A092503.P6783864426846710115

namespace A092503

/-- `floor(n^(n-∑[n%2]))` -/
def P6783864426846710115.Spec : Prop :=
  ∀ n, P6783864426846710115.a n = A092503 n

end A092503

/-! ## A092503.P7300696653841960632

`floor(n^(n-∑[and(1, n)]))`
-/

namespace A092503.P7300696653841960632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)⌋

end

end A092503.P7300696653841960632

namespace A092503

/-- `floor(n^(n-∑[and(1, n)]))` -/
def P7300696653841960632.Spec : Prop :=
  ∀ n, P7300696653841960632.a n = A092503 n

end A092503

/-! ## A092503.P14939069550548623360

`ceil(n^(n-∑[and(1, n)]))`
-/

namespace A092503.P14939069550548623360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)⌉

end

end A092503.P14939069550548623360

namespace A092503

/-- `ceil(n^(n-∑[and(1, n)]))` -/
def P14939069550548623360.Spec : Prop :=
  ∀ n, P14939069550548623360.a n = A092503 n

end A092503

/-! ## A092503.P4420260233057217743

`round(n^(n-∑[and(1, n)]))`
-/

namespace A092503.P4420260233057217743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))

end

end A092503.P4420260233057217743

namespace A092503

/-- `round(n^(n-∑[and(1, n)]))` -/
def P4420260233057217743.Spec : Prop :=
  ∀ n, P4420260233057217743.a n = A092503 n

end A092503

/-! ## A092503.P10028306470801053434

`ceil(n^((or(1, n)-1)/2))`
-/

namespace A092503.P10028306470801053434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉

end

end A092503.P10028306470801053434

namespace A092503

/-- `ceil(n^((or(1, n)-1)/2))` -/
def P10028306470801053434.Spec : Prop :=
  ∀ n, P10028306470801053434.a n = A092503 n

end A092503

/-! ## A092503.P7634636768885700430

`ceil(n^(xor(1, or(1, n))/2))`
-/

namespace A092503.P7634636768885700430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((Nat.xor 1 (Nat.lor 1 n) : ℚ) / 2 : ℝ)⌉

end

end A092503.P7634636768885700430

namespace A092503

/-- `ceil(n^(xor(1, or(1, n))/2))` -/
def P7634636768885700430.Spec : Prop :=
  ∀ n, P7634636768885700430.a n = A092503 n

end A092503

/-! ## A092503.P14750203382468900882

`floor(n^∑[1-a(n-1)])` with `a(0)=0, a(1)=0`
-/

namespace A092503.P14750203382468900882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A092503.P14750203382468900882

namespace A092503

/-- `floor(n^∑[1-a(n-1)])` -/
def P14750203382468900882.Spec : Prop :=
  ∀ n, P14750203382468900882.a n = A092503 n

end A092503

/-! ## A092503.P8857345753603908619

`round(n^(A002265(2*(n+2))-1))`
-/

namespace A092503.P8857345753603908619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (A002265 (2 * (n + 2)) - 1 : ℤ))

end

end A092503.P8857345753603908619

namespace A092503

/-- `round(n^(A002265(2*(n+2))-1))` -/
def P8857345753603908619.Spec : Prop :=
  ∀ n, P8857345753603908619.a n = A092503 n

end A092503

/-! ## A092503.P5922603400525800051

`abs((n-2*n)^∑[char[2*A007318(n)]])`
-/

namespace A092503.P5922603400525800051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (2 * n : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A092503.P5922603400525800051

namespace A092503

/-- `abs((n-2*n)^∑[char[2*A007318(n)]])` -/
def P5922603400525800051.Spec : Prop :=
  ∀ n, P5922603400525800051.a n = A092503 n

end A092503

/-!
# A092504: a(n) = prime(n) + prime(n^2).

The programs for A092504, the canonical program `A092504.P7727598888164620901` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092504 has offset 1).

The definition of A092504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A011757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092504.P7727598888164620901

`A000040(n+1)+A011757(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092504

/-- `A000040(n+1)+A011757(n+1)` -/
def P7727598888164620901.Spec : Prop :=
  ∀ n, P7727598888164620901.a n = A092504 (n + 1)

theorem P7727598888164620901.correct : P7727598888164620901.Spec := by
  intro n
  simp only [A092504, Nat.add_sub_cancel]

end A092504

/-! ## A092504.P1846470799696784134

`A011757(n+1)+Δ[A007504(n)]`
-/

namespace A092504.P1846470799696784134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092504.P1846470799696784134

namespace A092504

/-- `A011757(n+1)+Δ[A007504(n)]` -/
def P1846470799696784134.Spec : Prop :=
  ∀ n, P1846470799696784134.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P5149938505299748960

`A141129(n+1)+A004232(n+1)`
-/

namespace A092504.P5149938505299748960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141129 (n + 1) + A004232 (n + 1)

end

end A092504.P5149938505299748960

namespace A092504

/-- `A141129(n+1)+A004232(n+1)` -/
def P5149938505299748960.Spec : Prop :=
  ∀ n, P5149938505299748960.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P15319794787597035845

`A213926(n+1)+A100484(n+1)`
-/

namespace A092504.P15319794787597035845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) + A100484 (n + 1)

end

end A092504.P15319794787597035845

namespace A092504

/-- `A213926(n+1)+A100484(n+1)` -/
def P15319794787597035845.Spec : Prop :=
  ∀ n, P15319794787597035845.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P8259861279908749079

`A011757(n+1)+A008578(n+2)`
-/

namespace A092504.P8259861279908749079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + A008578 (n + 2)

end

end A092504.P8259861279908749079

namespace A092504

/-- `A011757(n+1)+A008578(n+2)` -/
def P8259861279908749079.Spec : Prop :=
  ∀ n, P8259861279908749079.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P12429031786594422400

`A036690(n+1)-A123914(n+1)`
-/

namespace A092504.P12429031786594422400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A123914 (n + 1)

end

end A092504.P12429031786594422400

namespace A092504

/-- `A036690(n+1)-A123914(n+1)` -/
def P12429031786594422400.Spec : Prop :=
  ∀ n, P12429031786594422400.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P17534445058577472056

`A011757(n+1)+abs(Δ[A064365(n)])`
-/

namespace A092504.P17534445058577472056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + |f1 (n + 1) - f1 n|

end

end A092504.P17534445058577472056

namespace A092504

/-- `A011757(n+1)+abs(Δ[A064365(n)])` -/
def P17534445058577472056.Spec : Prop :=
  ∀ n, P17534445058577472056.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P5155638923310467277

`A011757(n+1)+sqrt(A001248(n+1))`
-/

namespace A092504.P5155638923310467277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A011757 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A092504.P5155638923310467277

namespace A092504

/-- `A011757(n+1)+sqrt(A001248(n+1))` -/
def P5155638923310467277.Spec : Prop :=
  ∀ n, P5155638923310467277.a n = (A092504 (n + 1) : ℝ)

end A092504

/-! ## A092504.P2971556908939145394

`A011757(n+1)+∑[A054541(n+1)]`
-/

namespace A092504.P2971556908939145394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092504.P2971556908939145394

namespace A092504

/-- `A011757(n+1)+∑[A054541(n+1)]` -/
def P2971556908939145394.Spec : Prop :=
  ∀ n, P2971556908939145394.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P2644612689643778927

`A011757(n+1)+record[A259153(n+2)]`
-/

namespace A092504.P2644612689643778927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092504.P2644612689643778927

namespace A092504

/-- `A011757(n+1)+record[A259153(n+2)]` -/
def P2644612689643778927.Spec : Prop :=
  ∀ n, P2644612689643778927.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P8051195362376892772

`A006093(n+1)+A011757(n+1)+1`
-/

namespace A092504.P8051195362376892772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A011757 (n + 1) + 1)

end

end A092504.P8051195362376892772

namespace A092504

/-- `A006093(n+1)+A011757(n+1)+1` -/
def P8051195362376892772.Spec : Prop :=
  ∀ n, P8051195362376892772.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P2636420753985059555

`A008864(n+1)+A011757(n+1)-1`
-/

namespace A092504.P2636420753985059555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A011757 (n + 1) - 1)

end

end A092504.P2636420753985059555

namespace A092504

/-- `A008864(n+1)+A011757(n+1)-1` -/
def P2636420753985059555.Spec : Prop :=
  ∀ n, P2636420753985059555.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P5278547884946200576

`A011757(n+1)+A040976(n+1)+2`
-/

namespace A092504.P5278547884946200576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (A040976 (n + 1) + 2)

end

end A092504.P5278547884946200576

namespace A092504

/-- `A011757(n+1)+A040976(n+1)+2` -/
def P5278547884946200576.Spec : Prop :=
  ∀ n, P5278547884946200576.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P5817538288627230053

`A011757(n+1)+A052147(n+1)-2`
-/

namespace A092504.P5817538288627230053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (A052147 (n + 1) - 2)

end

end A092504.P5817538288627230053

namespace A092504

/-- `A011757(n+1)+A052147(n+1)-2` -/
def P5817538288627230053.Spec : Prop :=
  ∀ n, P5817538288627230053.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P12019952013797817972

`A067747(2*n+1)+A011757(n+1)`
-/

namespace A092504.P12019952013797817972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A011757 (n + 1)

end

end A092504.P12019952013797817972

namespace A092504

/-- `A067747(2*n+1)+A011757(n+1)` -/
def P12019952013797817972.Spec : Prop :=
  ∀ n, P12019952013797817972.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P3316014975819820384

`A213926(n+1)+2*A000040(n+1)`
-/

namespace A092504.P3316014975819820384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) + 2 * A000040 (n + 1)

end

end A092504.P3316014975819820384

namespace A092504

/-- `A213926(n+1)+2*A000040(n+1)` -/
def P3316014975819820384.Spec : Prop :=
  ∀ n, P3316014975819820384.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P8528749283756487595

`2*A011757(n+1)-A213926(n+1)`
-/

namespace A092504.P8528749283756487595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011757 (n + 1) - A213926 (n + 1)

end

end A092504.P8528749283756487595

namespace A092504

/-- `2*A011757(n+1)-A213926(n+1)` -/
def P8528749283756487595.Spec : Prop :=
  ∀ n, P8528749283756487595.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P13968556828302848348

`A000040(n+1)+A001248(n+1)-A123914(n+1)`
-/

namespace A092504.P13968556828302848348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001248 (n + 1) - A123914 (n + 1))

end

end A092504.P13968556828302848348

namespace A092504

/-- `A000040(n+1)+A001248(n+1)-A123914(n+1)` -/
def P13968556828302848348.Spec : Prop :=
  ∀ n, P13968556828302848348.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P15336344484254217695

`A323526(n+2)+A000040(n+1)`
-/

namespace A092504.P15336344484254217695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2) + A000040 (n + 1)

end

end A092504.P15336344484254217695

namespace A092504

/-- `A323526(n+2)+A000040(n+1)` -/
def P15336344484254217695.Spec : Prop :=
  ∀ n, P15336344484254217695.a n = A092504 (n + 1)

end A092504

/-! ## A092504.P11426777003029903346

`A011757(n+1)+p?[A014681(n)]`
-/

namespace A092504.P11426777003029903346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092504.P11426777003029903346

namespace A092504

/-- `A011757(n+1)+p?[A014681(n)]` -/
def P11426777003029903346.Spec : Prop :=
  ∀ n, P11426777003029903346.a n = A092504 (n + 1)

end A092504

/-!
# A092505: a(n) = A002430(n) / A046990(n).

The programs for A092505, the canonical program `A092505.P14837175268537545743` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092505 has offset 1).

The definition of A092505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092505.P676642108018601541

`2^A130654(n+1)`
-/

namespace A092505.P676642108018601541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A130654 (n + 1) : ℤ)

end

end A092505.P676642108018601541

namespace A092505

/-- `2^A130654(n+1)` -/
def P676642108018601541.Spec : Prop :=
  ∀ n, P676642108018601541.a n = (A092505 (n + 1) : ℚ)

end A092505

/-! ## A092505.P14837175268537545743

`gcd(A048896(n), 2*(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092505

/-- `gcd(A048896(n), 2*(n+1))` -/
def P14837175268537545743.Spec : Prop :=
  ∀ n, (P14837175268537545743.a n : ℤ) = A092505 (n + 1)

theorem P14837175268537545743.correct : P14837175268537545743.Spec := by
  intro n
  simp only [A092505, Nat.add_sub_cancel]

end A092505

/-! ## A092505.P12001398035419800701

`gcd(6*(n+1), A001316(n+1)/2)`
-/

namespace A092505.P12001398035419800701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * (n + 1) : ℤ) (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2))

end

end A092505.P12001398035419800701

namespace A092505

/-- `gcd(6*(n+1), A001316(n+1)/2)` -/
def P12001398035419800701.Spec : Prop :=
  ∀ n, (P12001398035419800701.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P12394751334991475250

`gcd(comp[A006257(n)], A048896(n))`
-/

namespace A092505.P12394751334991475250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A048896 n)

end

end A092505.P12394751334991475250

namespace A092505

/-- `gcd(comp[A006257(n)], A048896(n))` -/
def P12394751334991475250.Spec : Prop :=
  ∀ n, (P12394751334991475250.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P3452686596371887236

`gcd(A064538(n), A243036(n+1))`
-/

namespace A092505.P3452686596371887236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064538 n) (A243036 (n + 1))

end

end A092505.P3452686596371887236

namespace A092505

/-- `gcd(A064538(n), A243036(n+1))` -/
def P3452686596371887236.Spec : Prop :=
  ∀ n, (P3452686596371887236.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P3095825395293704469

`A000010(gcd(4*(n+1), A000079(A000120(n+1))))`
-/

namespace A092505.P3095825395293704469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (4 * (n + 1) : ℤ) (A000079 (A000120 (n + 1)).toNat))

end

end A092505.P3095825395293704469

namespace A092505

/-- `A000010(gcd(4*(n+1), A000079(A000120(n+1))))` -/
def P3095825395293704469.Spec : Prop :=
  ∀ n, P3095825395293704469.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P13974945481559481309

`gcd(A001316(n+1), A008574(n+1))/2`
-/

namespace A092505.P13974945481559481309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001316 (n + 1)) (A008574 (n + 1)) : ℚ) / 2

end

end A092505.P13974945481559481309

namespace A092505

/-- `gcd(A001316(n+1), A008574(n+1))/2` -/
def P13974945481559481309.Spec : Prop :=
  ∀ n, P13974945481559481309.a n = (A092505 (n + 1) : ℚ)

end A092505

/-! ## A092505.P4186355698236093051

`gcd(2*A332815(n), A001316(A071055(n)))`
-/

namespace A092505.P4186355698236093051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A332815 n) (A001316 (A071055 n).toNat)

end

end A092505.P4186355698236093051

namespace A092505

/-- `gcd(2*A332815(n), A001316(A071055(n)))` -/
def P4186355698236093051.Spec : Prop :=
  ∀ n, (P4186355698236093051.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P12903360787635760810

`A048896(A048896(n)+2*A135481(n))`
-/

namespace A092505.P12903360787635760810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 n + 2 * A135481 n).toNat

end

end A092505.P12903360787635760810

namespace A092505

/-- `A048896(A048896(n)+2*A135481(n))` -/
def P12903360787635760810.Spec : Prop :=
  ∀ n, P12903360787635760810.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P3399913031329172959

`A048896(A038712(n+1)+A048896(n)-1)`
-/

namespace A092505.P3399913031329172959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A038712 (n + 1) + (A048896 n - 1)).toNat

end

end A092505.P3399913031329172959

namespace A092505

/-- `A048896(A038712(n+1)+A048896(n)-1)` -/
def P3399913031329172959.Spec : Prop :=
  ∀ n, P3399913031329172959.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P12658343792265343656

`A048896(A135481(n)+A135481(n)+A048896(n))`
-/

namespace A092505.P12658343792265343656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A135481 n + (A135481 n + A048896 n)).toNat

end

end A092505.P12658343792265343656

namespace A092505

/-- `A048896(A135481(n)+A135481(n)+A048896(n))` -/
def P12658343792265343656.Spec : Prop :=
  ∀ n, P12658343792265343656.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P11973434073392372014

`A048896(A048896(n)+2*A135534(n+1))`
-/

namespace A092505.P11973434073392372014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 n + 2 * A135534 (n + 1)).toNat

end

end A092505.P11973434073392372014

namespace A092505

/-- `A048896(A048896(n)+2*A135534(n+1))` -/
def P11973434073392372014.Spec : Prop :=
  ∀ n, P11973434073392372014.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P7808415864428268350

`A048896(A135534(n+1)+A135534(n+1)+A048896(n))`
-/

namespace A092505.P7808415864428268350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A135534 (n + 1) + (A135534 (n + 1) + A048896 n)).toNat

end

end A092505.P7808415864428268350

namespace A092505

/-- `A048896(A135534(n+1)+A135534(n+1)+A048896(n))` -/
def P7808415864428268350.Spec : Prop :=
  ∀ n, P7808415864428268350.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P18186215689223288655

`gcd(A090192(n), A171977(n+1))`
-/

namespace A092505.P18186215689223288655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090192 n) (A171977 (n + 1))

end

end A092505.P18186215689223288655

namespace A092505

/-- `gcd(A090192(n), A171977(n+1))` -/
def P18186215689223288655.Spec : Prop :=
  ∀ n, (P18186215689223288655.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P18187003380121511258

`gcd(A171977(n+1)+A089408(n), A089408(n))`
-/

namespace A092505.P18187003380121511258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171977 (n + 1) + A089408 n) (A089408 n)

end

end A092505.P18187003380121511258

namespace A092505

/-- `gcd(A171977(n+1)+A089408(n), A089408(n))` -/
def P18187003380121511258.Spec : Prop :=
  ∀ n, (P18187003380121511258.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P4248426334321858279

`gcd(A171977(A171977(n+1))/2, A001405(n))`
-/

namespace A092505.P4248426334321858279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A171977 (A171977 (n + 1)).toNat : ℚ) / 2)) (A001405 n)

end

end A092505.P4248426334321858279

namespace A092505

/-- `gcd(A171977(A171977(n+1))/2, A001405(n))` -/
def P4248426334321858279.Spec : Prop :=
  ∀ n, (P4248426334321858279.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P14895934174327613878

`gcd(A126930(n), A171977(A171977(n+1)/2))`
-/

namespace A092505.P14895934174327613878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 n) (A171977 (SequenceMachineLib.roundAway ((A171977 (n + 1) : ℚ) / 2)).toNat)

end

end A092505.P14895934174327613878

namespace A092505

/-- `gcd(A126930(n), A171977(A171977(n+1)/2))` -/
def P14895934174327613878.Spec : Prop :=
  ∀ n, (P14895934174327613878.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P16405760000057477335

`A048896(A048896(n)²-A151930(2*n+1))`
-/

namespace A092505.P16405760000057477335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 n ^ 2 - A151930 (2 * n + 1)).toNat

end

end A092505.P16405760000057477335

namespace A092505

/-- `A048896(A048896(n)²-A151930(2*n+1))` -/
def P16405760000057477335.Spec : Prop :=
  ∀ n, P16405760000057477335.a n = A092505 (n + 1)

end A092505

/-! ## A092505.P15247207517201878009

`gcd(A027286(n), A048896(n))`
-/

namespace A092505.P15247207517201878009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027286 n) (A048896 n)

end

end A092505.P15247207517201878009

namespace A092505

/-- `gcd(A027286(n), A048896(n))` -/
def P15247207517201878009.Spec : Prop :=
  ∀ n, (P15247207517201878009.a n : ℤ) = A092505 (n + 1)

end A092505

/-! ## A092505.P14075891928838185648

`gcd(A058621(n+1), A323130(2*(n+1)))`
-/

namespace A092505.P14075891928838185648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058621 (n + 1)) (A323130 (2 * (n + 1)))

end

end A092505.P14075891928838185648

namespace A092505

/-- `gcd(A058621(n+1), A323130(2*(n+1)))` -/
def P14075891928838185648.Spec : Prop :=
  ∀ n, (P14075891928838185648.a n : ℤ) = A092505 (n + 1)

end A092505

/-!
# A092506: Prime numbers of the form 2^n + 1.

The programs for A092506, there is no canonical definition to state claims against.
-/

/-! ## A092506.P7678772773134289696

`p?[2^n+1]`
-/

namespace A092506.P7678772773134289696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092506.P7678772773134289696

/-!
# A092507: (Smallest prime >= 2^n) + (largest prime <= 2^n).

The programs for A092507, there is no canonical definition to state claims against.
-/

/-! ## A092507.P2048870282704767959

`A119257(2^n)+2^n`
-/

namespace A092507.P2048870282704767959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (2 ^ n) + (2 ^ n : ℤ)

end

end A092507.P2048870282704767959

/-! ## A092507.P5609294731932105067

`A320487(n)+A119257(2^n)`
-/

namespace A092507.P5609294731932105067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 n + A119257 (2 ^ n)

end

end A092507.P5609294731932105067

/-! ## A092507.P7005087070791425559

`A000051(n)-(1-A119257(2^n))`
-/

namespace A092507.P7005087070791425559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (1 - A119257 (2 ^ n))

end

end A092507.P7005087070791425559

/-! ## A092507.P11190118170544918168

`A219676(n)+A119257(A219676(n))`
-/

namespace A092507.P11190118170544918168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219676 n + A119257 (A219676 n).toNat

end

end A092507.P11190118170544918168

/-! ## A092507.P2564292749853503943

`A000079(n)+A119257(record[A059268(n)])`
-/

namespace A092507.P2564292749853503943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A119257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092507.P2564292749853503943

/-!
# A092508: Expansion of g.f. (1+x^18)/((1-x)*(1-x^4)*(1-x^8)*(1-x^12)).

The programs for A092508, the canonical program `A092508.P16481814429195658915` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092508 has offset 0).

The definition of A092508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092508.P16481814429195658915

`∑[A008743(n-A029578(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092508

/-- `∑[A008743(n-A029578(n))]` -/
def P16481814429195658915.Spec : Prop :=
  ∀ n, P16481814429195658915.a n = A092508 n

theorem P16481814429195658915.correct : P16481814429195658915.Spec := by
  intro n
  simp only [A092508]

end A092508

/-! ## A092508.P179829697620717602

`∑[A008743(gcd(n, A001057(n)))]`
-/

namespace A092508.P179829697620717602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (Int.gcd (n : ℤ) (A001057 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P179829697620717602

namespace A092508

/-- `∑[A008743(gcd(n, A001057(n)))]` -/
def P179829697620717602.Spec : Prop :=
  ∀ n, P179829697620717602.a n = A092508 n

end A092508

/-! ## A092508.P6225402624241621347

`∑[A008743(A142150(n)+A000035(n))]`
-/

namespace A092508.P6225402624241621347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A142150 n + A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P6225402624241621347

namespace A092508

/-- `∑[A008743(A142150(n)+A000035(n))]` -/
def P6225402624241621347.Spec : Prop :=
  ∀ n, P6225402624241621347.a n = A092508 n

end A092508

/-! ## A092508.P8985396052071678675

`∑[A008743(A142150(n))]-A110654(n)`
-/

namespace A092508.P8985396052071678675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A092508.P8985396052071678675

namespace A092508

/-- `∑[A008743(A142150(n))]-A110654(n)` -/
def P8985396052071678675.Spec : Prop :=
  ∀ n, P8985396052071678675.a n = A092508 n

end A092508

/-! ## A092508.P3681409490646425065

`∑[A008743(A004526(n))*A059841(n)]`
-/

namespace A092508.P3681409490646425065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A004526 n).toNat * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P3681409490646425065

namespace A092508

/-- `∑[A008743(A004526(n))*A059841(n)]` -/
def P3681409490646425065.Spec : Prop :=
  ∀ n, P3681409490646425065.a n = A092508 n

end A092508

/-! ## A092508.P12947233783747406039

`∑[A008743(A000217(n)%A065190(n+1))]`
-/

namespace A092508.P12947233783747406039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (Int.tmod (A000217 n) (A065190 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P12947233783747406039

namespace A092508

/-- `∑[A008743(A000217(n)%A065190(n+1))]` -/
def P12947233783747406039.Spec : Prop :=
  ∀ n, P12947233783747406039.a n = A092508 n

end A092508

/-! ## A092508.P10048478756039050506

`∑[(n+1)%2*A008743(A130722(n+1))]`
-/

namespace A092508.P10048478756039050506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A008743 (A130722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P10048478756039050506

namespace A092508

/-- `∑[(n+1)%2*A008743(A130722(n+1))]` -/
def P10048478756039050506.Spec : Prop :=
  ∀ n, P10048478756039050506.a n = A092508 n

end A092508

/-!
# A092509: Möbius transform of sequence A008475.

The programs for A092509, the canonical program `A092509.P8072479887117834933` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092509 has offset 1).

The definition of A092509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092509.P11007970284489320484

`A053139(A100994(n+1))`
-/

namespace A092509.P11007970284489320484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A100994 (n + 1)).toNat

end

end A092509.P11007970284489320484

namespace A092509

/-- `A053139(A100994(n+1))` -/
def P11007970284489320484.Spec : Prop :=
  ∀ n, P11007970284489320484.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P8072479887117834933

`A014683(n+1)-A048671(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092509

/-- `A014683(n+1)-A048671(n+1)` -/
def P8072479887117834933.Spec : Prop :=
  ∀ n, P8072479887117834933.a n = A092509 (n + 1)

theorem P8072479887117834933.correct : P8072479887117834933.Spec := by
  intro n
  simp only [A092509, Nat.add_sub_cancel]

end A092509

/-! ## A092509.P17079180790295746908

`A010055(n+1)*A053139(n+1)`
-/

namespace A092509.P17079180790295746908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A053139 (n + 1)

end

end A092509.P17079180790295746908

namespace A092509

/-- `A010055(n+1)*A053139(n+1)` -/
def P17079180790295746908.Spec : Prop :=
  ∀ n, P17079180790295746908.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P18090381314410591894

`A053139(n+1)*A069513(n+1)`
-/

namespace A092509.P18090381314410591894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 1) * A069513 (n + 1)

end

end A092509.P18090381314410591894

namespace A092509

/-- `A053139(n+1)*A069513(n+1)` -/
def P18090381314410591894.Spec : Prop :=
  ∀ n, P18090381314410591894.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P9463141458686923698

`A069513(n+1)*A076685(n+1)`
-/

namespace A092509.P9463141458686923698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A076685 (n + 1)

end

end A092509.P9463141458686923698

namespace A092509

/-- `A069513(n+1)*A076685(n+1)` -/
def P9463141458686923698.Spec : Prop :=
  ∀ n, P9463141458686923698.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P10963337184868148166

`A054571(n+1)*A120007(n+1)`
-/

namespace A092509.P10963337184868148166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1) * A120007 (n + 1)

end

end A092509.P10963337184868148166

namespace A092509

/-- `A054571(n+1)*A120007(n+1)` -/
def P10963337184868148166.Spec : Prop :=
  ∀ n, P10963337184868148166.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P9926005361599732416

`A062790(n+1)*A120007(n+1)`
-/

namespace A092509.P9926005361599732416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (n + 1) * A120007 (n + 1)

end

end A092509.P9926005361599732416

namespace A092509

/-- `A062790(n+1)*A120007(n+1)` -/
def P9926005361599732416.Spec : Prop :=
  ∀ n, P9926005361599732416.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P16109660767119435572

`A069513(n+1)*A127705(n+1)`
-/

namespace A092509.P16109660767119435572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A127705 (n + 1)

end

end A092509.P16109660767119435572

namespace A092509

/-- `A069513(n+1)*A127705(n+1)` -/
def P16109660767119435572.Spec : Prop :=
  ∀ n, P16109660767119435572.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P6525260498920638693

`A117494(n+1)*A120007(n+1)`
-/

namespace A092509.P6525260498920638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) * A120007 (n + 1)

end

end A092509.P6525260498920638693

namespace A092509

/-- `A117494(n+1)*A120007(n+1)` -/
def P6525260498920638693.Spec : Prop :=
  ∀ n, P6525260498920638693.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P1743729242384567258

`A069513(n+1)*A254503(n+1)`
-/

namespace A092509.P1743729242384567258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A254503 (n + 1)

end

end A092509.P1743729242384567258

namespace A092509

/-- `A069513(n+1)*A254503(n+1)` -/
def P1743729242384567258.Spec : Prop :=
  ∀ n, P1743729242384567258.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P116199743486268650

`A010055(n+1)*A347104(n+1)`
-/

namespace A092509.P116199743486268650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A347104 (n + 1)

end

end A092509.P116199743486268650

namespace A092509

/-- `A010055(n+1)*A347104(n+1)` -/
def P116199743486268650.Spec : Prop :=
  ∀ n, P116199743486268650.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P3411216108838431187

`A069513(n+1)*A342694(n+1)`
-/

namespace A092509.P3411216108838431187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A342694 (n + 1)

end

end A092509.P3411216108838431187

namespace A092509

/-- `A069513(n+1)*A342694(n+1)` -/
def P3411216108838431187.Spec : Prop :=
  ∀ n, P3411216108838431187.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P12331329282863063255

`A069513(n+1)*A347104(n+1)`
-/

namespace A092509.P12331329282863063255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A347104 (n + 1)

end

end A092509.P12331329282863063255

namespace A092509

/-- `A069513(n+1)*A347104(n+1)` -/
def P12331329282863063255.Spec : Prop :=
  ∀ n, P12331329282863063255.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P10307254722105328556

`A250480(n+1)*A349394(n+1)`
-/

namespace A092509.P10307254722105328556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250480 (n + 1) * A349394 (n + 1)

end

end A092509.P10307254722105328556

namespace A092509

/-- `A250480(n+1)*A349394(n+1)` -/
def P10307254722105328556.Spec : Prop :=
  ∀ n, P10307254722105328556.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P13376885533887476418

`A053139(n+1)%A133790(n+1)`
-/

namespace A092509.P13376885533887476418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053139 (n + 1)) (A133790 (n + 1))

end

end A092509.P13376885533887476418

namespace A092509

/-- `A053139(n+1)%A133790(n+1)` -/
def P13376885533887476418.Spec : Prop :=
  ∀ n, P13376885533887476418.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P13854680616895077632

`A076685(n+1)%A133790(n+1)`
-/

namespace A092509.P13854680616895077632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076685 (n + 1)) (A133790 (n + 1))

end

end A092509.P13854680616895077632

namespace A092509

/-- `A076685(n+1)%A133790(n+1)` -/
def P13854680616895077632.Spec : Prop :=
  ∀ n, P13854680616895077632.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P11101635956696366702

`A127705(n+1)%A133790(n+1)`
-/

namespace A092509.P11101635956696366702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127705 (n + 1)) (A133790 (n + 1))

end

end A092509.P11101635956696366702

namespace A092509

/-- `A127705(n+1)%A133790(n+1)` -/
def P11101635956696366702.Spec : Prop :=
  ∀ n, P11101635956696366702.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P17874135247736571851

`A254503(n+1)%A133790(n+1)`
-/

namespace A092509.P17874135247736571851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254503 (n + 1)) (A133790 (n + 1))

end

end A092509.P17874135247736571851

namespace A092509

/-- `A254503(n+1)%A133790(n+1)` -/
def P17874135247736571851.Spec : Prop :=
  ∀ n, P17874135247736571851.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P15410500708333662767

`A342694(n+1)%A133790(n+1)`
-/

namespace A092509.P15410500708333662767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342694 (n + 1)) (A133790 (n + 1))

end

end A092509.P15410500708333662767

namespace A092509

/-- `A342694(n+1)%A133790(n+1)` -/
def P15410500708333662767.Spec : Prop :=
  ∀ n, P15410500708333662767.a n = A092509 (n + 1)

end A092509

/-! ## A092509.P13827854063223116842

`A347104(n+1)%A133790(n+1)`
-/

namespace A092509.P13827854063223116842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347104 (n + 1)) (A133790 (n + 1))

end

end A092509.P13827854063223116842

namespace A092509

/-- `A347104(n+1)%A133790(n+1)` -/
def P13827854063223116842.Spec : Prop :=
  ∀ n, P13827854063223116842.a n = A092509 (n + 1)

end A092509

/-!
# A092510: Difference between smallest semiperimeter (see A063655) and its integer log (see A001414).

The programs for A092510, there is no canonical definition to state claims against.
-/

/-! ## A092510.P17677568087662780157

`A063655(n+1)-A001414(n+1)`
-/

namespace A092510.P17677568087662780157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A001414 (n + 1)

end

end A092510.P17677568087662780157

/-! ## A092510.P17301931418463413735

`A063655(n+1)-Δ[A025281(n)]`
-/

namespace A092510.P17301931418463413735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - (f1 (n + 1) - f1 n)

end

end A092510.P17301931418463413735

/-! ## A092510.P3144011358504518588

`A075255(n+1)-A220114(n+1)`
-/

namespace A092510.P3144011358504518588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A220114 (n + 1)

end

end A092510.P3144011358504518588

/-! ## A092510.P65674948562534715

`A063655(n+1)-sqrt(A074373(n+1))`
-/

namespace A092510.P65674948562534715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) : ℝ) - Real.sqrt (A074373 (n + 1) : ℝ)

end

end A092510.P65674948562534715

/-! ## A092510.P9443566796045329251

`A063655(n+1)+1-A036288(n+1)`
-/

namespace A092510.P9443566796045329251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) + (1 - A036288 (n + 1))

end

end A092510.P9443566796045329251

/-! ## A092510.P3298744820144688137

`n+1-(A220114(n+1)+A001414(n+1))`
-/

namespace A092510.P3298744820144688137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A220114 (n + 1) + A001414 (n + 1))

end

end A092510.P3298744820144688137

/-! ## A092510.P3736100936839393475

`A033676(n+1)+A033677(n+1)-A001414(n+1)`
-/

namespace A092510.P3736100936839393475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) + (A033677 (n + 1) - A001414 (n + 1))

end

end A092510.P3736100936839393475

/-! ## A092510.P9356917397873081664

`A063655(n+1)-A056239(A064988(n+1))`
-/

namespace A092510.P9356917397873081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A056239 (A064988 (n + 1)).toNat

end

end A092510.P9356917397873081664

/-!
# A092517: Product of tau values for consecutive integers.

The programs for A092517, the canonical program `A092517.P9763657957312887963` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092517 has offset 1).

The definition of A092517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092517.P1860799135456238288

`2*A063123(n+1)`
-/

namespace A092517.P1860799135456238288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063123 (n + 1)

end

end A092517.P1860799135456238288

namespace A092517

/-- `2*A063123(n+1)` -/
def P1860799135456238288.Spec : Prop :=
  ∀ n, P1860799135456238288.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P9763657957312887963

`A000005(n+1)*A000005(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092517

/-- `A000005(n+1)*A000005(n+2)` -/
def P9763657957312887963.Spec : Prop :=
  ∀ n, P9763657957312887963.a n = A092517 (n + 1)

theorem P9763657957312887963.correct : P9763657957312887963.Spec := by
  intro n
  simp only [A092517, Nat.add_sub_cancel]

end A092517

/-! ## A092517.P9070741636698541799

`A000005((n+1)*(n+2))`
-/

namespace A092517.P9070741636698541799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 2))

end

end A092517.P9070741636698541799

namespace A092517

/-- `A000005((n+1)*(n+2))` -/
def P9070741636698541799.Spec : Prop :=
  ∀ n, P9070741636698541799.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P1676149243533155868

`∏{d}[-a(n-1), A000005(#+n)]` with `a(0)=2`
-/

namespace A092517.P1676149243533155868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 (d + n)

end

end A092517.P1676149243533155868

namespace A092517

/-- `∏{d}[-a(n-1), A000005(#+n)]` -/
def P1676149243533155868.Spec : Prop :=
  ∀ n, P1676149243533155868.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P6910402031504194768

`A004277(A063123(n+1))`
-/

namespace A092517.P6910402031504194768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A063123 (n + 1)).toNat

end

end A092517.P6910402031504194768

namespace A092517

/-- `A004277(A063123(n+1))` -/
def P6910402031504194768.Spec : Prop :=
  ∀ n, P6910402031504194768.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P8113443120888705975

`A133948(n+1)+A133947(n+1)`
-/

namespace A092517.P8113443120888705975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133948 (n + 1) + A133947 (n + 1)

end

end A092517.P8113443120888705975

namespace A092517

/-- `A133948(n+1)+A133947(n+1)` -/
def P8113443120888705975.Spec : Prop :=
  ∀ n, P8113443120888705975.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P11540971469403121825

`A060778(n+1)*A060779(n+1)`
-/

namespace A092517.P11540971469403121825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (n + 1) * A060779 (n + 1)

end

end A092517.P11540971469403121825

namespace A092517

/-- `A060778(n+1)*A060779(n+1)` -/
def P11540971469403121825.Spec : Prop :=
  ∀ n, P11540971469403121825.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P17466737416238730455

`Δ[A006218(n+1)]*Δ[A006218(n)]`
-/

namespace A092517.P17466737416238730455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A092517.P17466737416238730455

namespace A092517

/-- `Δ[A006218(n+1)]*Δ[A006218(n)]` -/
def P17466737416238730455.Spec : Prop :=
  ∀ n, P17466737416238730455.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P7763155250206852756

`A035116(n+1)/A062011(n+1)*A062011(n+2)`
-/

namespace A092517.P7763155250206852756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) : ℚ) / (A062011 (n + 1) : ℚ) * (A062011 (n + 2) : ℚ)

end

end A092517.P7763155250206852756

namespace A092517

/-- `A035116(n+1)/A062011(n+1)*A062011(n+2)` -/
def P7763155250206852756.Spec : Prop :=
  ∀ n, P7763155250206852756.a n = (A092517 (n + 1) : ℚ)

end A092517

/-! ## A092517.P3875514435708518475

`A229949(2*(n+1))`
-/

namespace A092517.P3875514435708518475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * (n + 1))

end

end A092517.P3875514435708518475

namespace A092517

/-- `A229949(2*(n+1))` -/
def P3875514435708518475.Spec : Prop :=
  ∀ n, P3875514435708518475.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P14856441371602388650

`filter[A229949(n+1), A059841(#)]`
-/

namespace A092517.P14856441371602388650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A092517.P14856441371602388650

namespace A092517

/-- `filter[A229949(n+1), A059841(#)]` -/
def P14856441371602388650.Spec : Prop :=
  ∀ n, P14856441371602388650.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P9900432833909413304

`filter[A229949(n+2), A135528(#)]`
-/

namespace A092517.P9900432833909413304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A092517.P9900432833909413304

namespace A092517

/-- `filter[A229949(n+2), A135528(#)]` -/
def P9900432833909413304.Spec : Prop :=
  ∀ n, P9900432833909413304.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P12990794734906974002

`filter[A229949(n+2), A266591(#)]`
-/

namespace A092517.P12990794734906974002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A092517.P12990794734906974002

namespace A092517

/-- `filter[A229949(n+2), A266591(#)]` -/
def P12990794734906974002.Spec : Prop :=
  ∀ n, P12990794734906974002.a n = A092517 (n + 1)

end A092517

/-! ## A092517.P804689738032595847

`A069157(2*(n+1))/2*A062011(n+2)`
-/

namespace A092517.P804689738032595847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069157 (2 * (n + 1)) : ℚ) / 2 * (A062011 (n + 2) : ℚ)

end

end A092517.P804689738032595847

namespace A092517

/-- `A069157(2*(n+1))/2*A062011(n+2)` -/
def P804689738032595847.Spec : Prop :=
  ∀ n, P804689738032595847.a n = (A092517 (n + 1) : ℚ)

end A092517

/-! ## A092517.P413883124868153953

`∑{d}[∑[n+1], #%2+1]`
-/

namespace A092517.P413883124868153953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1)

end

end A092517.P413883124868153953

namespace A092517

/-- `∑{d}[∑[n+1], #%2+1]` -/
def P413883124868153953.Spec : Prop :=
  ∀ n, (P413883124868153953.a n : ℤ) = A092517 (n + 1)

end A092517

/-! ## A092517.P7908956119037927867

`∑{d}[∑[n+1], gcd(2, #+1)]`
-/

namespace A092517.P7908956119037927867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 (d + 1)

end

end A092517.P7908956119037927867

namespace A092517

/-- `∑{d}[∑[n+1], gcd(2, #+1)]` -/
def P7908956119037927867.Spec : Prop :=
  ∀ n, (P7908956119037927867.a n : ℤ) = A092517 (n + 1)

end A092517

/-! ## A092517.P8233351362729521549

`∑{d}[∑[n+1], and(1, #)+1]`
-/

namespace A092517.P8233351362729521549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1)

end

end A092517.P8233351362729521549

namespace A092517

/-- `∑{d}[∑[n+1], and(1, #)+1]` -/
def P8233351362729521549.Spec : Prop :=
  ∀ n, (P8233351362729521549.a n : ℤ) = A092517 (n + 1)

end A092517

/-! ## A092517.P2552496556734391001

`∑{d}[∑[n+1], lcm(2, #)/#]`
-/

namespace A092517.P2552496556734391001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / (d : ℚ)

end

end A092517.P2552496556734391001

namespace A092517

/-- `∑{d}[∑[n+1], lcm(2, #)/#]` -/
def P2552496556734391001.Spec : Prop :=
  ∀ n, P2552496556734391001.a n = (A092517 (n + 1) : ℚ)

end A092517

/-! ## A092517.P17835650224366710593

`∏{e}[∑[2*(n+1)], #+1]`
-/

namespace A092517.P17835650224366710593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A092517.P17835650224366710593

namespace A092517

/-- `∏{e}[∑[2*(n+1)], #+1]` -/
def P17835650224366710593.Spec : Prop :=
  ∀ n, (P17835650224366710593.a n : ℤ) = A092517 (n + 1)

end A092517

/-!
# A092518: Primes p with no zero digits such that (the digit product of p) plus p is also prime.

The programs for A092518, the canonical program `A092518.P13683686072751074004` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092518 has offset 1).

The definition of A092518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092518.P13683686072751074004

`∩[A038618(n+1), A157677(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A092518

/-- `∩[A038618(n+1), A157677(n+1)]` -/
def P13683686072751074004.Spec : Prop :=
  ∀ n, (P13683686072751074004.a n : ℤ) = A092518 (n + 1)

theorem P13683686072751074004.correct : P13683686072751074004.Spec := by
  intro n
  simp only [A092518, Nat.add_sub_cancel]

end A092518

/-! ## A092518.P16588975628296608142

`∩[A157677(n+1), A195943(n+1)]`
-/

namespace A092518.P16588975628296608142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P16588975628296608142

namespace A092518

/-- `∩[A157677(n+1), A195943(n+1)]` -/
def P16588975628296608142.Spec : Prop :=
  ∀ n, (P16588975628296608142.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P9647617611080428721

`∩[A038618(n+1), A157676(n+1)]`
-/

namespace A092518.P9647617611080428721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P9647617611080428721

namespace A092518

/-- `∩[A038618(n+1), A157676(n+1)]` -/
def P9647617611080428721.Spec : Prop :=
  ∀ n, (P9647617611080428721.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P2288103969483997689

`∩[A157677(n+1), A392375(n+1)]`
-/

namespace A092518.P2288103969483997689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P2288103969483997689

namespace A092518

/-- `∩[A157677(n+1), A392375(n+1)]` -/
def P2288103969483997689.Spec : Prop :=
  ∀ n, (P2288103969483997689.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P1849840445907294558

`∩[A061116(n+1), A157677(n+1)]`
-/

namespace A092518.P1849840445907294558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P1849840445907294558

namespace A092518

/-- `∩[A061116(n+1), A157677(n+1)]` -/
def P1849840445907294558.Spec : Prop :=
  ∀ n, (P1849840445907294558.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P17885470975588654816

`filter[A157677(n+1), A209929(#)]`
-/

namespace A092518.P17885470975588654816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A092518.P17885470975588654816

namespace A092518

/-- `filter[A157677(n+1), A209929(#)]` -/
def P17885470975588654816.Spec : Prop :=
  ∀ n, P17885470975588654816.a n = A092518 (n + 1)

end A092518

/-! ## A092518.P12323869328559101973

`∩[A125290(n+1), A157677(n+1)]`
-/

namespace A092518.P12323869328559101973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P12323869328559101973

namespace A092518

/-- `∩[A125290(n+1), A157677(n+1)]` -/
def P12323869328559101973.Spec : Prop :=
  ∀ n, (P12323869328559101973.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P8771609640069925576

`∩[A052382(n+1), A157677(n+1)]`
-/

namespace A092518.P8771609640069925576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092518.P8771609640069925576

namespace A092518

/-- `∩[A052382(n+1), A157677(n+1)]` -/
def P8771609640069925576.Spec : Prop :=
  ∀ n, (P8771609640069925576.a n : ℤ) = A092518 (n + 1)

end A092518

/-! ## A092518.P14230153188896266849

`record[A004719(A157677(n+1))]`
-/

namespace A092518.P14230153188896266849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A157677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092518.P14230153188896266849

namespace A092518

/-- `record[A004719(A157677(n+1))]` -/
def P14230153188896266849.Spec : Prop :=
  ∀ n, P14230153188896266849.a n = A092518 (n + 1)

end A092518

/-! ## A092518.P12274882807845550647

`filter[A157677(n+1), A168046(#)]`
-/

namespace A092518.P12274882807845550647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A092518.P12274882807845550647

namespace A092518

/-- `filter[A157677(n+1), A168046(#)]` -/
def P12274882807845550647.Spec : Prop :=
  ∀ n, P12274882807845550647.a n = A092518 (n + 1)

end A092518

/-! ## A092518.P8120888259520664050

`record[A004719(p?[A157676(n+1)])]`
-/

namespace A092518.P8120888259520664050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092518.P8120888259520664050

namespace A092518

/-- `record[A004719(p?[A157676(n+1)])]` -/
def P8120888259520664050.Spec : Prop :=
  ∀ n, P8120888259520664050.a n = A092518 (n + 1)

end A092518

/-! ## A092518.P7342715223012030861

`p?[A157676(n+1)%p?[A230099(n)]]`
-/

namespace A092518.P7342715223012030861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157676 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092518.P7342715223012030861

namespace A092518

/-- `p?[A157676(n+1)%p?[A230099(n)]]` -/
def P7342715223012030861.Spec : Prop :=
  ∀ n, P7342715223012030861.a n = A092518 (n + 1)

end A092518

/-! ## A092518.P15131705854062845221

`lt[n, A047814(A047814(n)+A007954(n))]`
-/

namespace A092518.P15131705854062845221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A047814 n + A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092518.P15131705854062845221

namespace A092518

/-- `lt[n, A047814(A047814(n)+A007954(n))]` -/
def P15131705854062845221.Spec : Prop :=
  ∀ n, (P15131705854062845221.a n : ℤ) = A092518 (n + 1)

end A092518

/-!
# A092519: Smallest prime a(n) such that a(n)+6n, a(n)+12n and a(n)+18n are also primes.

The programs for A092519, there is no canonical definition to state claims against.
-/

/-! ## A092519.P8211614471123207642

`A342309(6*A043319(n+1))`
-/

namespace A092519.P8211614471123207642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (6 * A043319 (n + 1)).toNat

end

end A092519.P8211614471123207642

/-! ## A092519.P17107892967448904196

`A342309(6*A044964(n+1))`
-/

namespace A092519.P17107892967448904196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (6 * A044964 (n + 1)).toNat

end

end A092519.P17107892967448904196

/-! ## A092519.P10820994499097376011

`A342309(∩[6*n, A002202(n+1)])`
-/

namespace A092519.P10820994499097376011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A092519.P10820994499097376011

/-! ## A092519.P6993685745672556873

`A342309(6*A088599(n+1))`
-/

namespace A092519.P6993685745672556873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (6 * A088599 (n + 1)).toNat

end

end A092519.P6993685745672556873

/-! ## A092519.P5395954934665684933

`A342309(6*A225891(n+1))`
-/

namespace A092519.P5395954934665684933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342309 (6 * A225891 (n + 1)).toNat

end

end A092519.P5395954934665684933

/-!
# A092520: Number of square divisors of n-th cube: a(n) = A046951(n^3).

The programs for A092520, the canonical program `A092520.P5683000183497898863` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092520 has offset 1).

The definition of A092520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092520.P5683000183497898863

`A046951((n+1)^3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092520

/-- `A046951((n+1)^3)` -/
def P5683000183497898863.Spec : Prop :=
  ∀ n, P5683000183497898863.a n = A092520 (n + 1)

theorem P5683000183497898863.correct : P5683000183497898863.Spec := by
  intro n
  simp only [A092520, Nat.add_sub_cancel]

end A092520

/-! ## A092520.P2697626210931629899

`∑{d}[n+1, A056624(#)]`
-/

namespace A092520.P2697626210931629899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d

end

end A092520.P2697626210931629899

namespace A092520

/-- `∑{d}[n+1, A056624(#)]` -/
def P2697626210931629899.Spec : Prop :=
  ∀ n, P2697626210931629899.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P11844865706702647306

`∏{e}[n+1, A001651(#+1)]`
-/

namespace A092520.P11844865706702647306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001651 (Nat.factorization (f1 n) p + 1)

end

end A092520.P11844865706702647306

namespace A092520

/-- `∏{e}[n+1, A001651(#+1)]` -/
def P11844865706702647306.Spec : Prop :=
  ∀ n, P11844865706702647306.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P14022985977600680375

`∏{e}[n+1, A003253(#+1)]`
-/

namespace A092520.P14022985977600680375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003253 (Nat.factorization (f1 n) p + 1)

end

end A092520.P14022985977600680375

namespace A092520

/-- `∏{e}[n+1, A003253(#+1)]` -/
def P14022985977600680375.Spec : Prop :=
  ∀ n, P14022985977600680375.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P1784653180452999963

`∏{e}[n+1, A032766(#)+1]`
-/

namespace A092520.P1784653180452999963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A032766 (Nat.factorization (f1 n) p) + 1)

end

end A092520.P1784653180452999963

namespace A092520

/-- `∏{e}[n+1, A032766(#)+1]` -/
def P1784653180452999963.Spec : Prop :=
  ∀ n, P1784653180452999963.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P4976925093497554139

`∏{e}[n+1, A329925(#+1)]`
-/

namespace A092520.P4976925093497554139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A329925 (Nat.factorization (f1 n) p + 1)

end

end A092520.P4976925093497554139

namespace A092520

/-- `∏{e}[n+1, A329925(#+1)]` -/
def P4976925093497554139.Spec : Prop :=
  ∀ n, P4976925093497554139.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P16563765153395779351

`∏{e}[n+1, A006368(#+1+#)]`
-/

namespace A092520.P16563765153395779351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006368 (Nat.factorization (f1 n) p + 1 + Nat.factorization (f1 n) p)

end

end A092520.P16563765153395779351

namespace A092520

/-- `∏{e}[n+1, A006368(#+1+#)]` -/
def P16563765153395779351.Spec : Prop :=
  ∀ n, P16563765153395779351.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P8142755988793537775

`∑{d}[n+1, A010052(#)*A073184((n+1)/#)]`
-/

namespace A092520.P8142755988793537775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P8142755988793537775

namespace A092520

/-- `∑{d}[n+1, A010052(#)*A073184((n+1)/#)]` -/
def P8142755988793537775.Spec : Prop :=
  ∀ n, P8142755988793537775.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P17048607862687199795

`∑{d}[n+1, A008836(#)*A226602((n+1)/#)]`
-/

namespace A092520.P17048607862687199795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A226602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P17048607862687199795

namespace A092520

/-- `∑{d}[n+1, A008836(#)*A226602((n+1)/#)]` -/
def P17048607862687199795.Spec : Prop :=
  ∀ n, P17048607862687199795.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P144638537631945929

`∑{d}[n+1, A046951(#)*A212793((n+1)/#)]`
-/

namespace A092520.P144638537631945929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P144638537631945929

namespace A092520

/-- `∑{d}[n+1, A046951(#)*A212793((n+1)/#)]` -/
def P144638537631945929.Spec : Prop :=
  ∀ n, P144638537631945929.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P10225753667656947967

`∑{d}[n+1, A000005(#)*A307423((n+1)/#)]`
-/

namespace A092520.P10225753667656947967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A307423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P10225753667656947967

namespace A092520

/-- `∑{d}[n+1, A000005(#)*A307423((n+1)/#)]` -/
def P10225753667656947967.Spec : Prop :=
  ∀ n, P10225753667656947967.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P6550361092335322184

`∑{d}[n+1, A007425(#)*A307428((n+1)/#)]`
-/

namespace A092520.P6550361092335322184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P6550361092335322184

namespace A092520

/-- `∑{d}[n+1, A007425(#)*A307428((n+1)/#)]` -/
def P6550361092335322184.Spec : Prop :=
  ∀ n, P6550361092335322184.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P15047219869921314944

`∑{d}[n+1, A048691(#)*A303915((n+1)/#)]`
-/

namespace A092520.P15047219869921314944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P15047219869921314944

namespace A092520

/-- `∑{d}[n+1, A048691(#)*A303915((n+1)/#)]` -/
def P15047219869921314944.Spec : Prop :=
  ∀ n, P15047219869921314944.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P1106682790136916462

`∑{d}[n+1, A034444(#)*A389887((n+1)/#)]`
-/

namespace A092520.P1106682790136916462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P1106682790136916462

namespace A092520

/-- `∑{d}[n+1, A034444(#)*A389887((n+1)/#)]` -/
def P1106682790136916462.Spec : Prop :=
  ∀ n, P1106682790136916462.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P16464702415522707430

`∑{d}[n+1, A307420(#)*A341343((n+1)/#)]`
-/

namespace A092520.P16464702415522707430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d * A341343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092520.P16464702415522707430

namespace A092520

/-- `∑{d}[n+1, A307420(#)*A341343((n+1)/#)]` -/
def P16464702415522707430.Spec : Prop :=
  ∀ n, P16464702415522707430.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P7953740014216916251

`∏{e}[A355264(n+1), #+1]`
-/

namespace A092520.P7953740014216916251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A092520.P7953740014216916251

namespace A092520

/-- `∏{e}[A355264(n+1), #+1]` -/
def P7953740014216916251.Spec : Prop :=
  ∀ n, (P7953740014216916251.a n : ℤ) = A092520 (n + 1)

end A092520

/-! ## A092520.P15125141204562030851

`A000005(A355264(n+1))`
-/

namespace A092520.P15125141204562030851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A355264 (n + 1)).toNat

end

end A092520.P15125141204562030851

namespace A092520

/-- `A000005(A355264(n+1))` -/
def P15125141204562030851.Spec : Prop :=
  ∀ n, P15125141204562030851.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P14693576696893297927

`A000005(sqrt(A059479(n+1)))`
-/

namespace A092520.P14693576696893297927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A059479 (n + 1) : ℝ))).toNat

end

end A092520.P14693576696893297927

namespace A092520

/-- `A000005(sqrt(A059479(n+1)))` -/
def P14693576696893297927.Spec : Prop :=
  ∀ n, P14693576696893297927.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P15715771424539865832

`A000005((n+1)*A000188(n+1))`
-/

namespace A092520.P15715771424539865832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A092520.P15715771424539865832

namespace A092520

/-- `A000005((n+1)*A000188(n+1))` -/
def P15715771424539865832.Spec : Prop :=
  ∀ n, P15715771424539865832.a n = A092520 (n + 1)

end A092520

/-! ## A092520.P16048294147137349994

`A000005((n+1)²/A019554(n+1))`
-/

namespace A092520.P16048294147137349994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A092520.P16048294147137349994

namespace A092520

/-- `A000005((n+1)²/A019554(n+1))` -/
def P16048294147137349994.Spec : Prop :=
  ∀ n, P16048294147137349994.a n = A092520 (n + 1)

end A092520

/-!
# A092521: a(n) = 8*a(n-1) - 8*a(n-2) + a(n-3), with a(1) = 1, a(2) = 8, a(3) = 56.

The programs for A092521, the canonical program `A092521.P8133246834377696711` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092521 has offset 1).

The definition of A092521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-8*a(n-2)+a(n-3)` (program `A092521.P8133246834377696711`, by `A092521.P8133246834377696711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092521.P9025380376926537041

`7*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=8`
-/

namespace A092521.P9025380376926537041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * a (n - 1) - a (n - 2) + 1

end

end A092521.P9025380376926537041

namespace A092521

/-- `7*a(n-1)-a(n-2)+1` -/
def P9025380376926537041.Spec : Prop :=
  ∀ n, P9025380376926537041.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P8133246834377696711

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=56`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092521

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P8133246834377696711.Spec : Prop :=
  ∀ n, P8133246834377696711.a n = A092521 (n + 1)

theorem P8133246834377696711.correct : P8133246834377696711.Spec := by
  intro n
  simp only [A092521, Nat.add_sub_cancel]

end A092521

/-! ## A092521.P839578726744634261

`A058038(n+1)/3`
-/

namespace A092521.P839578726744634261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058038 (n + 1) : ℚ) / 3

end

end A092521.P839578726744634261

namespace A092521

/-- `A058038(n+1)/3` -/
def P839578726744634261.Spec : Prop :=
  ∀ n, P839578726744634261.a n = (A092521 (n + 1) : ℚ)

end A092521

/-! ## A092521.P8507069836094700530

`A081079(n+1)/15`
-/

namespace A092521.P8507069836094700530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081079 (n + 1) : ℚ) / 15

end

end A092521.P8507069836094700530

namespace A092521

/-- `A081079(n+1)/15` -/
def P8507069836094700530.Spec : Prop :=
  ∀ n, P8507069836094700530.a n = (A092521 (n + 1) : ℚ)

end A092521

/-! ## A092521.P1789043511626774052

`∑[ogf(1/(1-7x+x^2))]`
-/

namespace A092521.P1789043511626774052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P1789043511626774052

namespace A092521

/-- `∑[ogf(1/(1-7x+x^2))]` -/
def P1789043511626774052.Spec : Prop :=
  ∀ n, P1789043511626774052.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P7103185709207431838

`ogf(1/(1-8x+8x^2-x^3))`
-/

namespace A092521.P7103185709207431838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 8, -1] n

end

end A092521.P7103185709207431838

namespace A092521

/-- `ogf(1/(1-8x+8x^2-x^3))` -/
def P7103185709207431838.Spec : Prop :=
  ∀ n, P7103185709207431838.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P8613767147340301711

`∑[round(ϕ^4*a(n-1))]` with `a(0)=1`
-/

namespace A092521.P8613767147340301711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P8613767147340301711

namespace A092521

/-- `∑[round(ϕ^4*a(n-1))]` -/
def P8613767147340301711.Spec : Prop :=
  ∀ n, P8613767147340301711.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P2768277449110908444

`∑[ceil(ϕ²²*a(n-1))]` with `a(0)=1`
-/

namespace A092521.P2768277449110908444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P2768277449110908444

namespace A092521

/-- `∑[ceil(ϕ²²*a(n-1))]` -/
def P2768277449110908444.Spec : Prop :=
  ∀ n, P2768277449110908444.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P18311400057538099864

`round(ϕ^4*a(n-1))+1` with `a(0)=1`
-/

namespace A092521.P18311400057538099864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)) + 1

end

end A092521.P18311400057538099864

namespace A092521

/-- `round(ϕ^4*a(n-1))+1` -/
def P18311400057538099864.Spec : Prop :=
  ∀ n, P18311400057538099864.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P13151992965235847010

`floor(ϕ²²*a(n-1))+2` with `a(0)=1`
-/

namespace A092521.P13151992965235847010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 2

end

end A092521.P13151992965235847010

namespace A092521

/-- `floor(ϕ²²*a(n-1))+2` -/
def P13151992965235847010.Spec : Prop :=
  ∀ n, P13151992965235847010.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P13142650369786515326

`∑[7*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=7`
-/

namespace A092521.P13142650369786515326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P13142650369786515326

namespace A092521

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P13142650369786515326.Spec : Prop :=
  ∀ n, P13142650369786515326.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P9006893127897152165

`1-(a(n-2)-7*a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A092521.P9006893127897152165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  1 - (a (n - 2) - 7 * a (n - 1))

end

end A092521.P9006893127897152165

namespace A092521

/-- `1-(a(n-2)-7*a(n-1))` -/
def P9006893127897152165.Spec : Prop :=
  ∀ n, P9006893127897152165.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P14979668866908177458

`∑[∑[A049685(n)]]`
-/

namespace A092521.P14979668866908177458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P14979668866908177458

namespace A092521

/-- `∑[∑[A049685(n)]]` -/
def P14979668866908177458.Spec : Prop :=
  ∀ n, P14979668866908177458.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P2602465294916002077

`abs(A156088(n+1))`
-/

namespace A092521.P2602465294916002077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156088 (n + 1)|

end

end A092521.P2602465294916002077

namespace A092521

/-- `abs(A156088(n+1))` -/
def P2602465294916002077.Spec : Prop :=
  ∀ n, P2602465294916002077.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P3202840792962815380

`∑[A004187(n+1)]`
-/

namespace A092521.P3202840792962815380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P3202840792962815380

namespace A092521

/-- `∑[A004187(n+1)]` -/
def P3202840792962815380.Spec : Prop :=
  ∀ n, P3202840792962815380.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P13473227500947089563

`A349840(4*n+2)`
-/

namespace A092521.P13473227500947089563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349840 (4 * n + 2)

end

end A092521.P13473227500947089563

namespace A092521

/-- `A349840(4*n+2)` -/
def P13473227500947089563.Spec : Prop :=
  ∀ n, P13473227500947089563.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P3571320326917861909

`∑[A099483(2*n+1)]`
-/

namespace A092521.P3571320326917861909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P3571320326917861909

namespace A092521

/-- `∑[A099483(2*n+1)]` -/
def P3571320326917861909.Spec : Prop :=
  ∀ n, P3571320326917861909.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P910033791303496911

`∑[A099484(2*n+1)]`
-/

namespace A092521.P910033791303496911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P910033791303496911

namespace A092521

/-- `∑[A099484(2*n+1)]` -/
def P910033791303496911.Spec : Prop :=
  ∀ n, P910033791303496911.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P6585484374590697262

`∑[A152119(2*(n+1))]`
-/

namespace A092521.P6585484374590697262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P6585484374590697262

namespace A092521

/-- `∑[A152119(2*(n+1))]` -/
def P6585484374590697262.Spec : Prop :=
  ∀ n, P6585484374590697262.a n = A092521 (n + 1)

end A092521

/-! ## A092521.P355816683986662627

`∑[A387782(2*(n+1))]`
-/

namespace A092521.P355816683986662627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092521.P355816683986662627

namespace A092521

/-- `∑[A387782(2*(n+1))]` -/
def P355816683986662627.Spec : Prop :=
  ∀ n, P355816683986662627.a n = A092521 (n + 1)

end A092521

/-!
# A092523: Number of distinct prime factors of n-th odd number.

The programs for A092523, the canonical program `A092523.P10829292723473762999` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092523 has offset 1).

The definition of A092523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092523.P10829292723473762999

`A001221(2*n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092523

/-- `A001221(2*n+1)` -/
def P10829292723473762999.Spec : Prop :=
  ∀ n, P10829292723473762999.a n = A092523 (n + 1)

theorem P10829292723473762999.correct : P10829292723473762999.Spec := by
  intro n
  simp only [A092523, Nat.add_sub_cancel]

end A092523

/-! ## A092523.P880169949315069052

`∑{p}[comp[2*n], #%2]`
-/

namespace A092523.P880169949315069052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p % 2

end

end A092523.P880169949315069052

namespace A092523

/-- `∑{p}[comp[2*n], #%2]` -/
def P880169949315069052.Spec : Prop :=
  ∀ n, (P880169949315069052.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P13856642440224743926

`∑{p}[comp[2*n], gcd(2, #)]`
-/

namespace A092523.P13856642440224743926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 p

end

end A092523.P13856642440224743926

namespace A092523

/-- `∑{p}[comp[2*n], gcd(2, #)]` -/
def P13856642440224743926.Spec : Prop :=
  ∀ n, (P13856642440224743926.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P18443070345187017301

`∑{p}[comp[2*n], and(1, #)]`
-/

namespace A092523.P18443070345187017301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p

end

end A092523.P18443070345187017301

namespace A092523

/-- `∑{p}[comp[2*n], and(1, #)]` -/
def P18443070345187017301.Spec : Prop :=
  ∀ n, (P18443070345187017301.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P11930368534616982529

`∑{e}[∏{p}[comp[2*n], #], #]`
-/

namespace A092523.P11930368534616982529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A092523.P11930368534616982529

namespace A092523

/-- `∑{e}[∏{p}[comp[2*n], #], #]` -/
def P11930368534616982529.Spec : Prop :=
  ∀ n, (P11930368534616982529.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P17581270082338825614

`∑{p}[comp[2*n], floor(atan(#))]`
-/

namespace A092523.P17581270082338825614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋

end

end A092523.P17581270082338825614

namespace A092523

/-- `∑{p}[comp[2*n], floor(atan(#))]` -/
def P17581270082338825614.Spec : Prop :=
  ∀ n, P17581270082338825614.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P9730795717048864600

`∑{e}[comp[2*n], round(atan(#))]`
-/

namespace A092523.P9730795717048864600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ))

end

end A092523.P9730795717048864600

namespace A092523

/-- `∑{e}[comp[2*n], round(atan(#))]` -/
def P9730795717048864600.Spec : Prop :=
  ∀ n, P9730795717048864600.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P5533259150477187386

`∑{e}[comp[2*n], ceil(tanh(#))]`
-/

namespace A092523.P5533259150477187386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉

end

end A092523.P5533259150477187386

namespace A092523

/-- `∑{e}[comp[2*n], ceil(tanh(#))]` -/
def P5533259150477187386.Spec : Prop :=
  ∀ n, P5533259150477187386.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P15737240787491991238

`∑{p}[comp[2*n], ceil(acot(#))]`
-/

namespace A092523.P15737240787491991238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉

end

end A092523.P15737240787491991238

namespace A092523

/-- `∑{p}[comp[2*n], ceil(acot(#))]` -/
def P15737240787491991238.Spec : Prop :=
  ∀ n, P15737240787491991238.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P10602944159060851044

`∑{e}[comp[2*n], round(tanh(#))]`
-/

namespace A092523.P10602944159060851044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f1 n) p : ℝ))

end

end A092523.P10602944159060851044

namespace A092523

/-- `∑{e}[comp[2*n], round(tanh(#))]` -/
def P10602944159060851044.Spec : Prop :=
  ∀ n, P10602944159060851044.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P17359881496380946274

`∑{e}[comp[2*n], ceil(acot(#))]`
-/

namespace A092523.P17359881496380946274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉

end

end A092523.P17359881496380946274

namespace A092523

/-- `∑{e}[comp[2*n], ceil(acot(#))]` -/
def P17359881496380946274.Spec : Prop :=
  ∀ n, P17359881496380946274.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P2378884199669175849

`∑{p}[2*n+1, and(1, #)²]`
-/

namespace A092523.P2378884199669175849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p ^ 2

end

end A092523.P2378884199669175849

namespace A092523

/-- `∑{p}[2*n+1, and(1, #)²]` -/
def P2378884199669175849.Spec : Prop :=
  ∀ n, (P2378884199669175849.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P7759749079789434355

`∑{p}[2*n+1, sqrt(and(1, #))]`
-/

namespace A092523.P7759749079789434355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (Nat.land 1 p : ℝ)

end

end A092523.P7759749079789434355

namespace A092523

/-- `∑{p}[2*n+1, sqrt(and(1, #))]` -/
def P7759749079789434355.Spec : Prop :=
  ∀ n, P7759749079789434355.a n = (A092523 (n + 1) : ℝ)

end A092523

/-! ## A092523.P13672043686108736712

`∑{p}[2*n+1, log2(2%#)]`
-/

namespace A092523.P13672043686108736712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 ((2 % p : ℕ) : ℝ)

end

end A092523.P13672043686108736712

namespace A092523

/-- `∑{p}[2*n+1, log2(2%#)]` -/
def P13672043686108736712.Spec : Prop :=
  ∀ n, P13672043686108736712.a n = (A092523 (n + 1) : ℝ)

end A092523

/-! ## A092523.P10751727599141759351

`∑{p}[2*n+1, ceil(1/#)]`
-/

namespace A092523.P10751727599141759351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A092523.P10751727599141759351

namespace A092523

/-- `∑{p}[2*n+1, ceil(1/#)]` -/
def P10751727599141759351.Spec : Prop :=
  ∀ n, P10751727599141759351.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P59765666240938264

`∑{e}[2*n+1, ceil(1/#)]`
-/

namespace A092523.P59765666240938264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A092523.P59765666240938264

namespace A092523

/-- `∑{e}[2*n+1, ceil(1/#)]` -/
def P59765666240938264.Spec : Prop :=
  ∀ n, P59765666240938264.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P15599191766114671232

`log2(A100007(n+1))`
-/

namespace A092523.P15599191766114671232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100007 (n + 1) : ℝ)

end

end A092523.P15599191766114671232

namespace A092523

/-- `log2(A100007(n+1))` -/
def P15599191766114671232.Spec : Prop :=
  ∀ n, P15599191766114671232.a n = (A092523 (n + 1) : ℝ)

end A092523

/-! ## A092523.P11994020790547062453

`A360115(4*n+2)`
-/

namespace A092523.P11994020790547062453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (4 * n + 2)

end

end A092523.P11994020790547062453

namespace A092523

/-- `A360115(4*n+2)` -/
def P11994020790547062453.Spec : Prop :=
  ∀ n, P11994020790547062453.a n = A092523 (n + 1)

end A092523

/-! ## A092523.P5039598013271947497

`dr(A001221(comp[2*n]))`
-/

namespace A092523.P5039598013271947497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A092523.P5039598013271947497

namespace A092523

/-- `dr(A001221(comp[2*n]))` -/
def P5039598013271947497.Spec : Prop :=
  ∀ n, (P5039598013271947497.a n : ℤ) = A092523 (n + 1)

end A092523

/-! ## A092523.P1232105592130469050

`A001222(∏{p}[Δ[n²], #])`
-/

namespace A092523.P1232105592130469050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A092523.P1232105592130469050

namespace A092523

/-- `A001222(∏{p}[Δ[n²], #])` -/
def P1232105592130469050.Spec : Prop :=
  ∀ n, P1232105592130469050.a n = A092523 (n + 1)

end A092523

/-!
# A092525: To binary representation of n, append as many ones as there are trailing zeros.

The programs for A092525, the canonical program `A092525.P9028488455064025406` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092525 has offset 1).

The definition of A092525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092525.P5902116963850571424

`(n+2)*2^val(n+1, 2)-1`
-/

namespace A092525.P5902116963850571424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * 2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1

end

end A092525.P5902116963850571424

namespace A092525

/-- `(n+2)*2^val(n+1, 2)-1` -/
def P5902116963850571424.Spec : Prop :=
  ∀ n, P5902116963850571424.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P9028488455064025406

`(n+2)*and(n+1, -(n+1))-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092525

/-- `(n+2)*and(n+1, -(n+1))-1` -/
def P9028488455064025406.Spec : Prop :=
  ∀ n, P9028488455064025406.a n = A092525 (n + 1)

theorem P9028488455064025406.correct : P9028488455064025406.Spec := by
  intro n
  simp only [A092525, Nat.add_sub_cancel]

end A092525

/-! ## A092525.P2102290215732392364

`lcm(n+2, and(n+1, -(n+1)))-1`
-/

namespace A092525.P2102290215732392364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) : ℤ) - 1

end

end A092525.P2102290215732392364

namespace A092525

/-- `lcm(n+2, and(n+1, -(n+1)))-1` -/
def P2102290215732392364.Spec : Prop :=
  ∀ n, P2102290215732392364.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P384827657592898443

`(n+2)*or(n, n+1)-(n+1)²`
-/

namespace A092525.P384827657592898443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.lor n (n + 1) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A092525.P384827657592898443

namespace A092525

/-- `(n+2)*or(n, n+1)-(n+1)²` -/
def P384827657592898443.Spec : Prop :=
  ∀ n, P384827657592898443.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P1167719532768331036

`(n+2)*(n+1-and(n, n+1))-1`
-/

namespace A092525.P1167719532768331036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) - 1

end

end A092525.P1167719532768331036

namespace A092525

/-- `(n+2)*(n+1-and(n, n+1))-1` -/
def P1167719532768331036.Spec : Prop :=
  ∀ n, P1167719532768331036.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P6282924848515792488

`2*A220466(n+1)-1`
-/

namespace A092525.P6282924848515792488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220466 (n + 1) - 1

end

end A092525.P6282924848515792488

namespace A092525

/-- `2*A220466(n+1)-1` -/
def P6282924848515792488.Spec : Prop :=
  ∀ n, P6282924848515792488.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P1778274361418263742

`(n+2)*A006519(n+1)-1`
-/

namespace A092525.P1778274361418263742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006519 (n + 1) - 1

end

end A092525.P1778274361418263742

namespace A092525

/-- `(n+2)*A006519(n+1)-1` -/
def P1778274361418263742.Spec : Prop :=
  ∀ n, P1778274361418263742.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P10855620788481983527

`(n+2)*A135481(n)+n+1`
-/

namespace A092525.P10855620788481983527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A135481 n + (n + 1 : ℤ)

end

end A092525.P10855620788481983527

namespace A092525

/-- `(n+2)*A135481(n)+n+1` -/
def P10855620788481983527.Spec : Prop :=
  ∀ n, P10855620788481983527.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P17137674238613179282

`A002378(n+1)/A000265(n+1)-1`
-/

namespace A092525.P17137674238613179282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ) - 1

end

end A092525.P17137674238613179282

namespace A092525

/-- `A002378(n+1)/A000265(n+1)-1` -/
def P17137674238613179282.Spec : Prop :=
  ∀ n, P17137674238613179282.a n = (A092525 (n + 1) : ℚ)

end A092525

/-! ## A092525.P16625257335120397368

`(n+2)*A065331(A038502(n+1))-1`
-/

namespace A092525.P16625257335120397368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A065331 (A038502 (n + 1)).toNat - 1

end

end A092525.P16625257335120397368

namespace A092525

/-- `(n+2)*A065331(A038502(n+1))-1` -/
def P16625257335120397368.Spec : Prop :=
  ∀ n, P16625257335120397368.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P253892106677458206

`A038712(n+1)+n*A006519(n+1)`
-/

namespace A092525.P253892106677458206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + (n : ℤ) * A006519 (n + 1)

end

end A092525.P253892106677458206

namespace A092525

/-- `A038712(n+1)+n*A006519(n+1)` -/
def P253892106677458206.Spec : Prop :=
  ∀ n, P253892106677458206.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P5311206139162768163

`A002378(n+1)/A028234(2*(n+1))-1`
-/

namespace A092525.P5311206139162768163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A028234 (2 * (n + 1)) : ℚ) - 1

end

end A092525.P5311206139162768163

namespace A092525

/-- `A002378(n+1)/A028234(2*(n+1))-1` -/
def P5311206139162768163.Spec : Prop :=
  ∀ n, P5311206139162768163.a n = (A092525 (n + 1) : ℚ)

end A092525

/-! ## A092525.P3575040084521274394

`A002378(n+1)/A161151(2*n+1)-1`
-/

namespace A092525.P3575040084521274394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A161151 (2 * n + 1) : ℚ) - 1

end

end A092525.P3575040084521274394

namespace A092525

/-- `A002378(n+1)/A161151(2*n+1)-1` -/
def P3575040084521274394.Spec : Prop :=
  ∀ n, P3575040084521274394.a n = (A092525 (n + 1) : ℚ)

end A092525

/-! ## A092525.P9765295806041201443

`A140670(2*(n+1))+n*A160467(2*(n+1))`
-/

namespace A092525.P9765295806041201443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (2 * (n + 1)) + (n : ℤ) * A160467 (2 * (n + 1))

end

end A092525.P9765295806041201443

namespace A092525

/-- `A140670(2*(n+1))+n*A160467(2*(n+1))` -/
def P9765295806041201443.Spec : Prop :=
  ∀ n, P9765295806041201443.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P15769827596359112861

`A038712(n+1)+n*A000079(A007814(n+1))`
-/

namespace A092525.P15769827596359112861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + (n : ℤ) * A000079 (A007814 (n + 1)).toNat

end

end A092525.P15769827596359112861

namespace A092525

/-- `A038712(n+1)+n*A000079(A007814(n+1))` -/
def P15769827596359112861.Spec : Prop :=
  ∀ n, P15769827596359112861.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P16264092837052029355

`A220466(n+1)+A220466(n+1)-A038712(A038712(n+1))`
-/

namespace A092525.P16264092837052029355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (n + 1) + (A220466 (n + 1) - A038712 (A038712 (n + 1)).toNat)

end

end A092525.P16264092837052029355

namespace A092525

/-- `A220466(n+1)+A220466(n+1)-A038712(A038712(n+1))` -/
def P16264092837052029355.Spec : Prop :=
  ∀ n, P16264092837052029355.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P8497755198182515180

`A000265(A220466(n+1)+A220466(n+1)-1)`
-/

namespace A092525.P8497755198182515180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A220466 (n + 1) + (A220466 (n + 1) - 1)).toNat

end

end A092525.P8497755198182515180

namespace A092525

/-- `A000265(A220466(n+1)+A220466(n+1)-1)` -/
def P8497755198182515180.Spec : Prop :=
  ∀ n, P8497755198182515180.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P4244271960402366211

`(n+2)*gcd(n+1, A000079(n))-1`
-/

namespace A092525.P4244271960402366211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Int.gcd (n + 1 : ℤ) (A000079 n) : ℤ) - 1

end

end A092525.P4244271960402366211

namespace A092525

/-- `(n+2)*gcd(n+1, A000079(n))-1` -/
def P4244271960402366211.Spec : Prop :=
  ∀ n, P4244271960402366211.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P9504228375530544722

`A004273(A220466(n+1))`
-/

namespace A092525.P9504228375530544722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A220466 (n + 1)).toNat

end

end A092525.P9504228375530544722

namespace A092525

/-- `A004273(A220466(n+1))` -/
def P9504228375530544722.Spec : Prop :=
  ∀ n, P9504228375530544722.a n = A092525 (n + 1)

end A092525

/-! ## A092525.P4844631751167672150

`A346468((n+2)*A006519(n+1))`
-/

namespace A092525.P4844631751167672150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 ((n + 2 : ℤ) * A006519 (n + 1)).toNat

end

end A092525.P4844631751167672150

namespace A092525

/-- `A346468((n+2)*A006519(n+1))` -/
def P4844631751167672150.Spec : Prop :=
  ∀ n, P4844631751167672150.a n = A092525 (n + 1)

end A092525

/-!
# A092527: If M(n) is the n-th Mersenne prime, then a(n) is the smallest positive integer such that 2*a(n)*M(n)*M(n+1)-1 is prime.

The programs for A092527, there is no canonical definition to state claims against.
-/

/-! ## A092527.P9333913320966542996

`A098915(n+1)/2`
-/

namespace A092527.P9333913320966542996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098915 (n + 1) : ℚ) / 2

end

end A092527.P9333913320966542996

/-! ## A092527.P9883256915382971994

`A001281(A098915(n+1))`
-/

namespace A092527.P9883256915382971994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A098915 (n + 1)).toNat

end

end A092527.P9883256915382971994

/-! ## A092527.P16456872806736771945

`A004524(A098915(n+1)+1)`
-/

namespace A092527.P16456872806736771945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A098915 (n + 1) + 1).toNat

end

end A092527.P16456872806736771945

/-! ## A092527.P2203706551646453092

`A004526(A098915(n+1)+1)`
-/

namespace A092527.P2203706551646453092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098915 (n + 1) + 1).toNat

end

end A092527.P2203706551646453092

/-! ## A092527.P17094273107272924913

`A028242(A098915(n+1)+1)`
-/

namespace A092527.P17094273107272924913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A098915 (n + 1) + 1).toNat

end

end A092527.P17094273107272924913

/-!
# A092528: a(1) = 1; a(n) = smallest number such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A092528, there is no canonical definition to state claims against.
-/

/-! ## A092528.P12773871266498144611

`A110435(n-gcd(2, a(n-2))+1)` with `a(0)=1, a(1)=1`
-/

namespace A092528.P12773871266498144611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A110435 ((n : ℤ) - (Int.gcd 2 (a (n - 2)) : ℤ) + 1).toNat

end

end A092528.P12773871266498144611

/-! ## A092528.P10305755843769006919

`gcd(C(2, n²), A110435(A028310(n)))`
-/

namespace A092528.P10305755843769006919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A110435 (A028310 n).toNat)

end

end A092528.P10305755843769006919

/-! ## A092528.P8673106414702737718

`A110435(C(2, n+2)+n)%A007504(n+1)`
-/

namespace A092528.P8673106414702737718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110435 (Nat.choose 2 (n + 2) + n)) (A007504 (n + 1))

end

end A092528.P8673106414702737718

/-! ## A092528.P1100139111052313961

`gcd(A110435(A028310(n)), A130706(n))`
-/

namespace A092528.P1100139111052313961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110435 (A028310 n).toNat) (A130706 n)

end

end A092528.P1100139111052313961

/-! ## A092528.P14249998400543354496

`A110435(A028310(n))%∑[A000051(n)]`
-/

namespace A092528.P14249998400543354496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110435 (A028310 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092528.P14249998400543354496

/-! ## A092528.P6526308367036592629

`a(A008683(n)²)*A110435(A028310(n))` with `a(0)=1, a(1)=1`
-/

namespace A092528.P6526308367036592629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat * A110435 (A028310 n).toNat

end

end A092528.P6526308367036592629

/-! ## A092528.P9896951354172992231

`A110435(gcd(n, A008706(n)))%A007504(n+1)`
-/

namespace A092528.P9896951354172992231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110435 (Int.gcd (n : ℤ) (A008706 n))) (A007504 (n + 1))

end

end A092528.P9896951354172992231

/-! ## A092528.P8871045047284148834

`A000032(a(n%2))*A110435(A028310(n))` with `a(0)=1, a(1)=1`
-/

namespace A092528.P8871045047284148834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000032 (a (n % 2)).toNat * A110435 (A028310 n).toNat

end

end A092528.P8871045047284148834

/-! ## A092528.P18206997818445055891

`A110435(A000007(n)+n)%A000040(∑[n+1])`
-/

namespace A092528.P18206997818445055891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110435 (A000007 n + (n : ℤ)).toNat) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A092528.P18206997818445055891

/-!
# A092529: Primes p such that both the digit sum of p plus p and the digit product of p plus p are also primes.

The programs for A092529, the canonical program `A092529.P34159994536917996` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092529 has offset 1).

The definition of A092529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092529.P34159994536917996

`∩[A048519(n+1), A092518(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A092529

/-- `∩[A048519(n+1), A092518(n+1)]` -/
def P34159994536917996.Spec : Prop :=
  ∀ n, (P34159994536917996.a n : ℤ) = A092529 (n + 1)

theorem P34159994536917996.correct : P34159994536917996.Spec := by
  intro n
  simp only [A092529, Nat.add_sub_cancel]

end A092529

/-! ## A092529.P5982379214046514027

`∩[A092518(n+1), A128717(n+1)]`
-/

namespace A092529.P5982379214046514027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P5982379214046514027

namespace A092529

/-- `∩[A092518(n+1), A128717(n+1)]` -/
def P5982379214046514027.Spec : Prop :=
  ∀ n, (P5982379214046514027.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P1551215054568220160

`∩[A038618(n+1), A128717(n+1)]`
-/

namespace A092529.P1551215054568220160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P1551215054568220160

namespace A092529

/-- `∩[A038618(n+1), A128717(n+1)]` -/
def P1551215054568220160.Spec : Prop :=
  ∀ n, (P1551215054568220160.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P9098618628895371135

`∩[A128717(n+1), A195943(n+1)]`
-/

namespace A092529.P9098618628895371135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P9098618628895371135

namespace A092529

/-- `∩[A128717(n+1), A195943(n+1)]` -/
def P9098618628895371135.Spec : Prop :=
  ∀ n, (P9098618628895371135.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P12657048804298362267

`∩[A047791(n+1), A092518(n+1)]`
-/

namespace A092529.P12657048804298362267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P12657048804298362267

namespace A092529

/-- `∩[A047791(n+1), A092518(n+1)]` -/
def P12657048804298362267.Spec : Prop :=
  ∀ n, (P12657048804298362267.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P17543420201531927397

`∩[A128717(n+1), A392375(n+1)]`
-/

namespace A092529.P17543420201531927397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P17543420201531927397

namespace A092529

/-- `∩[A128717(n+1), A392375(n+1)]` -/
def P17543420201531927397.Spec : Prop :=
  ∀ n, (P17543420201531927397.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P239763535886411205

`∩[A061116(n+1), A128717(n+1)]`
-/

namespace A092529.P239763535886411205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092529.P239763535886411205

namespace A092529

/-- `∩[A061116(n+1), A128717(n+1)]` -/
def P239763535886411205.Spec : Prop :=
  ∀ n, (P239763535886411205.a n : ℤ) = A092529 (n + 1)

end A092529

/-! ## A092529.P4285982791025363333

`filter[A128717(n+1), A209929(#)]`
-/

namespace A092529.P4285982791025363333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A092529.P4285982791025363333

namespace A092529

/-- `filter[A128717(n+1), A209929(#)]` -/
def P4285982791025363333.Spec : Prop :=
  ∀ n, P4285982791025363333.a n = A092529 (n + 1)

end A092529

/-!
# A092530: a(0) = 0; for n > 0, a(n) = T(n) + k where T(n) is the n-th triangular number (A000217) and k (see A026741) is the smallest positive number such that a(n) is divisible by n.

The programs for A092530, the canonical program `A092530.P15633049924069002083` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092530 has offset 0).

The definition of A092530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092530.P15633049924069002083

`(1+ceil(n/2))*n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092530

/-- `(1+ceil(n/2))*n` -/
def P15633049924069002083.Spec : Prop :=
  ∀ n, P15633049924069002083.a n = A092530 n

theorem P15633049924069002083.correct : P15633049924069002083.Spec := by
  intro n
  simp only [A092530]

end A092530

/-! ## A092530.P6088913321681864293

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=9, a(4)=12`
-/

namespace A092530.P6088913321681864293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 9, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A092530.P6088913321681864293

namespace A092530

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6088913321681864293.Spec : Prop :=
  ∀ n, P6088913321681864293.a n = A092530 n

end A092530

/-! ## A092530.P7462313266047871805

`∑[n]+gcd(n, ∑[n])`
-/

namespace A092530.P7462313266047871805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A092530.P7462313266047871805

namespace A092530

/-- `∑[n]+gcd(n, ∑[n])` -/
def P7462313266047871805.Spec : Prop :=
  ∀ n, (P7462313266047871805.a n : ℤ) = A092530 n

end A092530

/-! ## A092530.P13181534804404717344

`∑[n]+lcm(2, n)/2`
-/

namespace A092530.P13181534804404717344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.lcm 2 n : ℚ) / 2

end

end A092530.P13181534804404717344

namespace A092530

/-- `∑[n]+lcm(2, n)/2` -/
def P13181534804404717344.Spec : Prop :=
  ∀ n, P13181534804404717344.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P3999469643363746320

`n*∑[n%2]+n`
-/

namespace A092530.P3999469643363746320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A092530.P3999469643363746320

namespace A092530

/-- `n*∑[n%2]+n` -/
def P3999469643363746320.Spec : Prop :=
  ∀ n, (P3999469643363746320.a n : ℤ) = A092530 n

end A092530

/-! ## A092530.P16227938654331273769

`n*∑[and(1, n)]+n`
-/

namespace A092530.P16227938654331273769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A092530.P16227938654331273769

namespace A092530

/-- `n*∑[and(1, n)]+n` -/
def P16227938654331273769.Spec : Prop :=
  ∀ n, (P16227938654331273769.a n : ℤ) = A092530 n

end A092530

/-! ## A092530.P2048228831929299673

`record[(n-2)*ceil(n/2)]`
-/

namespace A092530.P2048228831929299673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092530.P2048228831929299673

namespace A092530

/-- `record[(n-2)*ceil(n/2)]` -/
def P2048228831929299673.Spec : Prop :=
  ∀ n, P2048228831929299673.a n = A092530 n

end A092530

/-! ## A092530.P10691242759739255611

`n*round(cosh(log(acot(n))))+n`
-/

namespace A092530.P10691242759739255611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) + (n : ℤ)

end

end A092530.P10691242759739255611

namespace A092530

/-- `n*round(cosh(log(acot(n))))+n` -/
def P10691242759739255611.Spec : Prop :=
  ∀ n, P10691242759739255611.a n = A092530 n

end A092530

/-! ## A092530.P18383332338497512300

`n*and(n+3, -2)/2`
-/

namespace A092530.P18383332338497512300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * Int.land (n + 3 : ℤ) (-2) : ℚ) / 2

end

end A092530.P18383332338497512300

namespace A092530

/-- `n*and(n+3, -2)/2` -/
def P18383332338497512300.Spec : Prop :=
  ∀ n, P18383332338497512300.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P13880354525341441319

`n*(and(1, n)+n+2)/2`
-/

namespace A092530.P13880354525341441319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (Nat.land 1 n + (n + 2)) : ℚ) / 2

end

end A092530.P13880354525341441319

namespace A092530

/-- `n*(and(1, n)+n+2)/2` -/
def P13880354525341441319.Spec : Prop :=
  ∀ n, P13880354525341441319.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P13739821188090631755

`n*∑[gcd(2, n-1)]-n²`
-/

namespace A092530.P13739821188090631755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A092530.P13739821188090631755

namespace A092530

/-- `n*∑[gcd(2, n-1)]-n²` -/
def P13739821188090631755.Spec : Prop :=
  ∀ n, P13739821188090631755.a n = A092530 n

end A092530

/-! ## A092530.P4853810707910471212

`floor(n*∑[1-a(n-1)])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A092530.P4853810707910471212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092530.P4853810707910471212

namespace A092530

/-- `floor(n*∑[1-a(n-1)])` -/
def P4853810707910471212.Spec : Prop :=
  ∀ n, P4853810707910471212.a n = A092530 n

end A092530

/-! ## A092530.P13376390164167633269

`∑[n]+n/((n+1)%2+1)`
-/

namespace A092530.P13376390164167633269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ) / (((n + 1) % 2 + 1 : ℕ) : ℚ)

end

end A092530.P13376390164167633269

namespace A092530

/-- `∑[n]+n/((n+1)%2+1)` -/
def P13376390164167633269.Spec : Prop :=
  ∀ n, P13376390164167633269.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P16247262995630451634

`n*∑[1-a(n-1)]+n` with `a(0)=0`
-/

namespace A092530.P16247262995630451634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A092530.P16247262995630451634

namespace A092530

/-- `n*∑[1-a(n-1)]+n` -/
def P16247262995630451634.Spec : Prop :=
  ∀ n, P16247262995630451634.a n = A092530 n

end A092530

/-! ## A092530.P12740800182241370358

`n/∏[xor(1, n+2)/(n+3)]`
-/

namespace A092530.P12740800182241370358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A092530.P12740800182241370358

namespace A092530

/-- `n/∏[xor(1, n+2)/(n+3)]` -/
def P12740800182241370358.Spec : Prop :=
  ∀ n, P12740800182241370358.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P9959544418187935810

`n*∑[2-a(n-1)]/2` with `a(0)=2, a(1)=2`
-/

namespace A092530.P9959544418187935810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A092530.P9959544418187935810

namespace A092530

/-- `n*∑[2-a(n-1)]/2` -/
def P9959544418187935810.Spec : Prop :=
  ∀ n, P9959544418187935810.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P17914211966793173353

`n*∑[a(n-2)²]-n` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A092530.P17914211966793173353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A092530.P17914211966793173353

namespace A092530

/-- `n*∑[a(n-2)²]-n` -/
def P17914211966793173353.Spec : Prop :=
  ∀ n, P17914211966793173353.a n = A092530 n

end A092530

/-! ## A092530.P15339766434871440386

`n*(a(n-1)%n+1)+n` with `a(0)=0`
-/

namespace A092530.P15339766434871440386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) % n + 1) + n

end

end A092530.P15339766434871440386

namespace A092530

/-- `n*(a(n-1)%n+1)+n` -/
def P15339766434871440386.Spec : Prop :=
  ∀ n, (P15339766434871440386.a n : ℤ) = A092530 n

end A092530

/-! ## A092530.P14232358105835418905

`n/∑[1-a(n-1)]^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A092530.P14232358105835418905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A092530.P14232358105835418905

namespace A092530

/-- `n/∑[1-a(n-1)]^(-1)` -/
def P14232358105835418905.Spec : Prop :=
  ∀ n, P14232358105835418905.a n = (A092530 n : ℚ)

end A092530

/-! ## A092530.P7752553971521960959

`and(1, n)+a(n-2)+2*n` with `a(0)=0, a(1)=2`
-/

namespace A092530.P7752553971521960959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.land 1 n + (a (n - 2) + 2 * n)

end

end A092530.P7752553971521960959

namespace A092530

/-- `and(1, n)+a(n-2)+2*n` -/
def P7752553971521960959.Spec : Prop :=
  ∀ n, (P7752553971521960959.a n : ℤ) = A092530 n

end A092530

/-!
# A092531: Expansion of (1+x^10)/((1-x)*(1-x^4)^2*(1-x^8)).

The programs for A092531, the canonical program `A092531.P16902109311939074164` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092531 has offset 0).

The definition of A092531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-2x^4+2x^5+2x^12-2x^13-x^16+x^17))` (program `A092531.P16902109311939074164`, by `A092531.P16902109311939074164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092531.P16902109311939074164

`ogf((1+x^10)/(1-x-2x^4+2x^5+2x^12-2x^13-x^16+x^17))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092531

/-- `ogf((1+x^10)/(1-x-2x^4+2x^5+2x^12-2x^13-x^16+x^17))` -/
def P16902109311939074164.Spec : Prop :=
  ∀ n, P16902109311939074164.a n = A092531 n

theorem P16902109311939074164.correct : P16902109311939074164.Spec := by
  intro n
  simp only [A092531]

end A092531

/-! ## A092531.P6757688596704552636

`∑[A008797(n-A029578(n))]`
-/

namespace A092531.P6757688596704552636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 ((n : ℤ) - A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P6757688596704552636

namespace A092531

/-- `∑[A008797(n-A029578(n))]` -/
def P6757688596704552636.Spec : Prop :=
  ∀ n, P6757688596704552636.a n = A092531 n

end A092531

/-! ## A092531.P11727242560958338952

`∑[A008797(gcd(n, A001057(n)))]`
-/

namespace A092531.P11727242560958338952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (Int.gcd (n : ℤ) (A001057 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P11727242560958338952

namespace A092531

/-- `∑[A008797(gcd(n, A001057(n)))]` -/
def P11727242560958338952.Spec : Prop :=
  ∀ n, P11727242560958338952.a n = A092531 n

end A092531

/-! ## A092531.P6404398087390538939

`∑[A008797(A057979(A004442(n)))]`
-/

namespace A092531.P6404398087390538939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (A057979 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P6404398087390538939

namespace A092531

/-- `∑[A008797(A057979(A004442(n)))]` -/
def P6404398087390538939.Spec : Prop :=
  ∀ n, P6404398087390538939.a n = A092531 n

end A092531

/-! ## A092531.P15038599624763930658

`∑[A008797(A004526(A141310(n)))]`
-/

namespace A092531.P15038599624763930658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (A004526 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P15038599624763930658

namespace A092531

/-- `∑[A008797(A004526(A141310(n)))]` -/
def P15038599624763930658.Spec : Prop :=
  ∀ n, P15038599624763930658.a n = A092531 n

end A092531

/-! ## A092531.P1301383764644530726

`∑[A008797(A057979(n+1))]`
-/

namespace A092531.P1301383764644530726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P1301383764644530726

namespace A092531

/-- `∑[A008797(A057979(n+1))]` -/
def P1301383764644530726.Spec : Prop :=
  ∀ n, P1301383764644530726.a n = A092531 n

end A092531

/-!
# A092532: G.f.: 1/((1-x)*(1-x^4)*(1-x^8)).

The programs for A092532, the canonical program `A092532.P14934459963598786034` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092532 has offset 0).

The definition of A092532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092532.P14934459963598786034

`floor((floor(n/4)/2+1)²)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092532

/-- `floor((floor(n/4)/2+1)²)` -/
def P14934459963598786034.Spec : Prop :=
  ∀ n, P14934459963598786034.a n = A092532 n

theorem P14934459963598786034.correct : P14934459963598786034.Spec := by
  intro n
  simp only [A092532]

end A092532

/-! ## A092532.P17321180915645484359

`A008642(floor(n/2))`
-/

namespace A092532.P17321180915645484359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 ⌊(n : ℚ) / 2⌋.toNat

end

end A092532.P17321180915645484359

namespace A092532

/-- `A008642(floor(n/2))` -/
def P17321180915645484359.Spec : Prop :=
  ∀ n, P17321180915645484359.a n = A092532 n

end A092532

/-! ## A092532.P2291552524219232758

`A002620(floor(n/4)+2)`
-/

namespace A092532.P2291552524219232758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌊(n : ℚ) / 4⌋ + 2).toNat

end

end A092532.P2291552524219232758

namespace A092532

/-- `A002620(floor(n/4)+2)` -/
def P2291552524219232758.Spec : Prop :=
  ∀ n, P2291552524219232758.a n = A092532 n

end A092532

/-! ## A092532.P11972992542054536539

`sqrt(A030179(floor(n/4)+2))`
-/

namespace A092532.P11972992542054536539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030179 (⌊(n : ℚ) / 4⌋ + 2).toNat : ℝ)

end

end A092532.P11972992542054536539

namespace A092532

/-- `sqrt(A030179(floor(n/4)+2))` -/
def P11972992542054536539.Spec : Prop :=
  ∀ n, P11972992542054536539.a n = (A092532 n : ℝ)

end A092532

/-! ## A092532.P16658297661435658038

`A024206(∑[char[4*n]])+1`
-/

namespace A092532.P16658297661435658038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A092532.P16658297661435658038

namespace A092532

/-- `A024206(∑[char[4*n]])+1` -/
def P16658297661435658038.Spec : Prop :=
  ∀ n, P16658297661435658038.a n = A092532 n

end A092532

/-! ## A092532.P8778182404328703285

`A086159(A057353(n))`
-/

namespace A092532.P8778182404328703285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A057353 n).toNat

end

end A092532.P8778182404328703285

namespace A092532

/-- `A086159(A057353(n))` -/
def P8778182404328703285.Spec : Prop :=
  ∀ n, P8778182404328703285.a n = A092532 n

end A092532

/-! ## A092532.P3210739737665795198

`A086159(A130766(n))`
-/

namespace A092532.P3210739737665795198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A130766 n).toNat

end

end A092532.P3210739737665795198

namespace A092532

/-- `A086159(A130766(n))` -/
def P3210739737665795198.Spec : Prop :=
  ∀ n, P3210739737665795198.a n = A092532 n

end A092532

/-! ## A092532.P9136649384398688060

`A087811(A002265(n)+1)`
-/

namespace A092532.P9136649384398688060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A002265 n + 1).toNat

end

end A092532.P9136649384398688060

namespace A092532

/-- `A087811(A002265(n)+1)` -/
def P9136649384398688060.Spec : Prop :=
  ∀ n, P9136649384398688060.a n = A092532 n

end A092532

/-! ## A092532.P11107885793297188007

`A008797(2*A002265(n))`
-/

namespace A092532.P11107885793297188007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (2 * A002265 n).toNat

end

end A092532.P11107885793297188007

namespace A092532

/-- `A008797(2*A002265(n))` -/
def P11107885793297188007.Spec : Prop :=
  ∀ n, P11107885793297188007.a n = A092532 n

end A092532

/-! ## A092532.P8422890528882137828

`A087811(A106466(or(1, n)))`
-/

namespace A092532.P8422890528882137828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A106466 (Nat.lor 1 n)).toNat

end

end A092532.P8422890528882137828

namespace A092532

/-- `A087811(A106466(or(1, n)))` -/
def P8422890528882137828.Spec : Prop :=
  ∀ n, P8422890528882137828.a n = A092532 n

end A092532

/-! ## A092532.P7515360818303729530

`A033638(A008621(n)+1)-1`
-/

namespace A092532.P7515360818303729530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A008621 n + 1).toNat - 1

end

end A092532.P7515360818303729530

namespace A092532

/-- `A033638(A008621(n)+1)-1` -/
def P7515360818303729530.Spec : Prop :=
  ∀ n, P7515360818303729530.a n = A092532 n

end A092532

/-! ## A092532.P13288400005142764505

`A078126(A002265(n)+2)+1`
-/

namespace A092532.P13288400005142764505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (A002265 n + 2).toNat + 1

end

end A092532.P13288400005142764505

namespace A092532

/-- `A078126(A002265(n)+2)+1` -/
def P13288400005142764505.Spec : Prop :=
  ∀ n, P13288400005142764505.a n = A092532 n

end A092532

/-! ## A092532.P624070146912618596

`A033638(A002265(n)+2)-1`
-/

namespace A092532.P624070146912618596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A002265 n + 2).toNat - 1

end

end A092532.P624070146912618596

namespace A092532

/-- `A033638(A002265(n)+2)-1` -/
def P624070146912618596.Spec : Prop :=
  ∀ n, P624070146912618596.a n = A092532 n

end A092532

/-! ## A092532.P4358945570827889198

`A008238(2*(A008621(n)+1))`
-/

namespace A092532.P4358945570827889198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (2 * (A008621 n + 1)).toNat

end

end A092532.P4358945570827889198

namespace A092532

/-- `A008238(2*(A008621(n)+1))` -/
def P4358945570827889198.Spec : Prop :=
  ∀ n, P4358945570827889198.a n = A092532 n

end A092532

/-! ## A092532.P962170132426166084

`A008733(2*A008621(n)+1)`
-/

namespace A092532.P962170132426166084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (2 * A008621 n + 1).toNat

end

end A092532.P962170132426166084

namespace A092532

/-- `A008733(2*A008621(n)+1)` -/
def P962170132426166084.Spec : Prop :=
  ∀ n, P962170132426166084.a n = A092532 n

end A092532

/-! ## A092532.P16686337272674730750

`A260220(2*A002265(n)+1)`
-/

namespace A092532.P16686337272674730750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * A002265 n + 1).toNat

end

end A092532.P16686337272674730750

namespace A092532

/-- `A260220(2*A002265(n)+1)` -/
def P16686337272674730750.Spec : Prop :=
  ∀ n, P16686337272674730750.a n = A092532 n

end A092532

/-! ## A092532.P11682121878220151644

`A008238(2*(A002265(n)+2))`
-/

namespace A092532.P11682121878220151644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (2 * (A002265 n + 2)).toNat

end

end A092532.P11682121878220151644

namespace A092532

/-- `A008238(2*(A002265(n)+2))` -/
def P11682121878220151644.Spec : Prop :=
  ∀ n, P11682121878220151644.a n = A092532 n

end A092532

/-! ## A092532.P14764146849436878068

`A007590(A008621(n)+1)/2`
-/

namespace A092532.P14764146849436878068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A008621 n + 1).toNat : ℚ) / 2

end

end A092532.P14764146849436878068

namespace A092532

/-- `A007590(A008621(n)+1)/2` -/
def P14764146849436878068.Spec : Prop :=
  ∀ n, P14764146849436878068.a n = (A092532 n : ℚ)

end A092532

/-! ## A092532.P710666198112497393

`A008733(2*(A008621(n)-1))`
-/

namespace A092532.P710666198112497393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (2 * (A008621 n - 1)).toNat

end

end A092532.P710666198112497393

namespace A092532

/-- `A008733(2*(A008621(n)-1))` -/
def P710666198112497393.Spec : Prop :=
  ∀ n, P710666198112497393.a n = A092532 n

end A092532

/-! ## A092532.P17283055627813896758

`A007590(A002265(n)+2)/2`
-/

namespace A092532.P17283055627813896758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A002265 n + 2).toNat : ℚ) / 2

end

end A092532.P17283055627813896758

namespace A092532

/-- `A007590(A002265(n)+2)/2` -/
def P17283055627813896758.Spec : Prop :=
  ∀ n, P17283055627813896758.a n = (A092532 n : ℚ)

end A092532

/-!
# A092533: G.f.: (1+x^8)/((1-x)*(1-x^4)).

The programs for A092533, the canonical program `A092533.P6103365251428777522` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092533 has offset 0).

The definition of A092533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092533.P6103365251428777522

`floor(sqrt(n*floor(n/4)+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092533

/-- `floor(sqrt(n*floor(n/4)+1))` -/
def P6103365251428777522.Spec : Prop :=
  ∀ n, P6103365251428777522.a n = A092533 n

theorem P6103365251428777522.correct : P6103365251428777522.Spec := by
  intro n
  simp only [A092533]

end A092533

/-! ## A092533.P8464289272873571420

`∑[lcm(2, a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A092533.P8464289272873571420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092533.P8464289272873571420

namespace A092533

/-- `∑[lcm(2, a(n-4))]` -/
def P8464289272873571420.Spec : Prop :=
  ∀ n, (P8464289272873571420.a n : ℤ) = A092533 n

end A092533

/-! ## A092533.P6217569843152446063

`(abs(1-(n-n%4))+1)/2`
-/

namespace A092533.P6217569843152446063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - ((n : ℤ) - ((n % 4 : ℕ) : ℤ))| + 1 : ℚ) / 2

end

end A092533.P6217569843152446063

namespace A092533

/-- `(abs(1-(n-n%4))+1)/2` -/
def P6217569843152446063.Spec : Prop :=
  ∀ n, P6217569843152446063.a n = (A092533 n : ℚ)

end A092533

/-! ## A092533.P17087056004703707299

`a(n-4)+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=2, a(7)=2`
-/

namespace A092533.P17087056004703707299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 2, 2, 2] fun n a =>
  a (n - 4) + 2

end

end A092533.P17087056004703707299

namespace A092533

/-- `a(n-4)+2` -/
def P17087056004703707299.Spec : Prop :=
  ∀ n, (P17087056004703707299.a n : ℤ) = A092533 n

end A092533

/-! ## A092533.P12396099038884986337

`A065033(and(n, -4))`
-/

namespace A092533.P12396099038884986337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.land (n : ℤ) (-4)).toNat

end

end A092533.P12396099038884986337

namespace A092533

/-- `A065033(and(n, -4))` -/
def P12396099038884986337.Spec : Prop :=
  ∀ n, P12396099038884986337.a n = A092533 n

end A092533

/-! ## A092533.P9174014482724914311

`A028310(2*floor(n/4))`
-/

namespace A092533.P9174014482724914311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * ⌊(n : ℚ) / 4⌋).toNat

end

end A092533.P9174014482724914311

namespace A092533

/-- `A028310(2*floor(n/4))` -/
def P9174014482724914311.Spec : Prop :=
  ∀ n, P9174014482724914311.a n = A092533 n

end A092533

/-! ## A092533.P7142874414115205094

`A065033(4*floor(n/4))`
-/

namespace A092533.P7142874414115205094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * ⌊(n : ℚ) / 4⌋).toNat

end

end A092533.P7142874414115205094

namespace A092533

/-- `A065033(4*floor(n/4))` -/
def P7142874414115205094.Spec : Prop :=
  ∀ n, P7142874414115205094.a n = A092533 n

end A092533

/-! ## A092533.P2494478078686892330

`A065190(or(1, floor(n/2)))`
-/

namespace A092533.P2494478078686892330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Int.lor 1 ⌊(n : ℚ) / 2⌋).toNat

end

end A092533.P2494478078686892330

namespace A092533

/-- `A065190(or(1, floor(n/2)))` -/
def P2494478078686892330.Spec : Prop :=
  ∀ n, P2494478078686892330.a n = A092533 n

end A092533

/-! ## A092533.P4663416411573538112

`A065164(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A092533.P4663416411573538112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A065164 (a (n - 4)).toNat

end

end A092533.P4663416411573538112

namespace A092533

/-- `A065164(a(n-4))` -/
def P4663416411573538112.Spec : Prop :=
  ∀ n, P4663416411573538112.a n = A092533 n

end A092533

/-! ## A092533.P9914174542830203831

`A028310(floor(n/4))+floor(n/4)`
-/

namespace A092533.P9914174542830203831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(n : ℚ) / 4⌋.toNat + ⌊(n : ℚ) / 4⌋

end

end A092533.P9914174542830203831

namespace A092533

/-- `A028310(floor(n/4))+floor(n/4)` -/
def P9914174542830203831.Spec : Prop :=
  ∀ n, P9914174542830203831.a n = A092533 n

end A092533

/-! ## A092533.P9109520005384312614

`A032742(abs(n%4+1-n)+1)`
-/

namespace A092533.P9109520005384312614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (|((n % 4 + 1 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A092533.P9109520005384312614

namespace A092533

/-- `A032742(abs(n%4+1-n)+1)` -/
def P9109520005384312614.Spec : Prop :=
  ∀ n, P9109520005384312614.a n = A092533 n

end A092533

/-! ## A092533.P15385819767533830489

`floor((A004277(2*floor(n/4))-1)/2)+1`
-/

namespace A092533.P15385819767533830489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004277 (2 * ⌊(n : ℚ) / 4⌋).toNat - 1 : ℚ) / 2⌋ + 1

end

end A092533.P15385819767533830489

namespace A092533

/-- `floor((A004277(2*floor(n/4))-1)/2)+1` -/
def P15385819767533830489.Spec : Prop :=
  ∀ n, P15385819767533830489.a n = A092533 n

end A092533

/-! ## A092533.P11085297812454631522

`A004277(round(∑[n+1]/(2*n+1))-1)`
-/

namespace A092533.P11085297812454631522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 1 : ℚ)) - 1).toNat

end

end A092533.P11085297812454631522

namespace A092533

/-- `A004277(round(∑[n+1]/(2*n+1))-1)` -/
def P11085297812454631522.Spec : Prop :=
  ∀ n, P11085297812454631522.a n = A092533 n

end A092533

/-! ## A092533.P12814587078101727932

`A004275(A008621(n))`
-/

namespace A092533.P12814587078101727932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008621 n).toNat

end

end A092533.P12814587078101727932

namespace A092533

/-- `A004275(A008621(n))` -/
def P12814587078101727932.Spec : Prop :=
  ∀ n, P12814587078101727932.a n = A092533 n

end A092533

/-! ## A092533.P338183676463483073

`A055456(A129756(n))`
-/

namespace A092533.P338183676463483073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A129756 n).toNat

end

end A092533.P338183676463483073

namespace A092533

/-- `A055456(A129756(n))` -/
def P338183676463483073.Spec : Prop :=
  ∀ n, P338183676463483073.a n = A092533 n

end A092533

/-! ## A092533.P2837154712184224507

`A187180(A267458(n))`
-/

namespace A092533.P2837154712184224507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A267458 n).toNat

end

end A092533.P2837154712184224507

namespace A092533

/-- `A187180(A267458(n))` -/
def P2837154712184224507.Spec : Prop :=
  ∀ n, P2837154712184224507.a n = A092533 n

end A092533

/-! ## A092533.P11182886960922908717

`A004275(A002265(n)+1)`
-/

namespace A092533.P11182886960922908717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002265 n + 1).toNat

end

end A092533.P11182886960922908717

namespace A092533

/-- `A004275(A002265(n)+1)` -/
def P11182886960922908717.Spec : Prop :=
  ∀ n, P11182886960922908717.a n = A092533 n

end A092533

/-! ## A092533.P17098856224340337527

`A123108(4*A002265(n))`
-/

namespace A092533.P17098856224340337527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (4 * A002265 n).toNat

end

end A092533.P17098856224340337527

namespace A092533

/-- `A123108(4*A002265(n))` -/
def P17098856224340337527.Spec : Prop :=
  ∀ n, P17098856224340337527.a n = A092533 n

end A092533

/-! ## A092533.P9759551242454781224

`A329678(n)+A122461(n)`
-/

namespace A092533.P9759551242454781224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n + A122461 n

end

end A092533.P9759551242454781224

namespace A092533

/-- `A329678(n)+A122461(n)` -/
def P9759551242454781224.Spec : Prop :=
  ∀ n, P9759551242454781224.a n = A092533 n

end A092533

/-! ## A092533.P7545987657493238014

`A129756(n)-A130543(n)`
-/

namespace A092533.P7545987657493238014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n - A130543 n

end

end A092533.P7545987657493238014

namespace A092533

/-- `A129756(n)-A130543(n)` -/
def P7545987657493238014.Spec : Prop :=
  ∀ n, P7545987657493238014.a n = A092533 n

end A092533

/-!
# A092534: Expansion of (1-x+x^2)*(1+x^4)/((1-x)^2*(1-x^2)).

The programs for A092534, the canonical program `A092534.P3915764221731918386` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092534 has offset 0).

The definition of A092534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^4-x^5+x^6)/(1-2x+2x^3-x^4))` (program `A092534.P3915764221731918386`, by `A092534.P3915764221731918386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092534.P3915764221731918386

`ogf((1-x+x^2+x^4-x^5+x^6)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092534

/-- `ogf((1-x+x^2+x^4-x^5+x^6)/(1-2x+2x^3-x^4))` -/
def P3915764221731918386.Spec : Prop :=
  ∀ n, P3915764221731918386.a n = A092534 n

theorem P3915764221731918386.correct : P3915764221731918386.Spec := by
  intro n
  simp only [A092534]

end A092534

/-! ## A092534.P10443038903251011450

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=8, a(5)=10, a(6)=16, a(7)=20, a(8)=28`
-/

namespace A092534.P10443038903251011450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 8, 10, 16, 20, 28] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A092534.P10443038903251011450

namespace A092534

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P10443038903251011450.Spec : Prop :=
  ∀ n, P10443038903251011450.a n = A092534 n

end A092534

/-! ## A092534.P7128050901069235945

`∑[a(a(n-2))+2]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A092534.P7128050901069235945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P7128050901069235945

namespace A092534

/-- `∑[a(a(n-2))+2]` -/
def P7128050901069235945.Spec : Prop :=
  ∀ n, (P7128050901069235945.a n : ℤ) = A092534 n

end A092534

/-! ## A092534.P8660354320372173571

`∑[A004275(A028242(n))]`
-/

namespace A092534.P8660354320372173571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P8660354320372173571

namespace A092534

/-- `∑[A004275(A028242(n))]` -/
def P8660354320372173571.Spec : Prop :=
  ∀ n, P8660354320372173571.a n = A092534 n

end A092534

/-! ## A092534.P5607929273645355633

`∑[A004275(∑[A280193(n)])]`
-/

namespace A092534.P5607929273645355633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P5607929273645355633

namespace A092534

/-- `∑[A004275(∑[A280193(n)])]` -/
def P5607929273645355633.Spec : Prop :=
  ∀ n, P5607929273645355633.a n = A092534 n

end A092534

/-! ## A092534.P4005410594319737503

`∑[A004275(A052938(n+1)-2)]`
-/

namespace A092534.P4005410594319737503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A052938 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P4005410594319737503

namespace A092534

/-- `∑[A004275(A052938(n+1)-2)]` -/
def P4005410594319737503.Spec : Prop :=
  ∀ n, P4005410594319737503.a n = A092534 n

end A092534

/-! ## A092534.P6015714543043409975

`∑[floor(n+1-A064680(n)/A008619(n))]`
-/

namespace A092534.P6015714543043409975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - (A064680 n : ℚ) / (A008619 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P6015714543043409975

namespace A092534

/-- `∑[floor(n+1-A064680(n)/A008619(n))]` -/
def P6015714543043409975.Spec : Prop :=
  ∀ n, P6015714543043409975.a n = A092534 n

end A092534

/-! ## A092534.P16993333241195217000

`∑[A168232(n+1)-A107286(A168232(n+1))]`
-/

namespace A092534.P16993333241195217000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168232 (n + 1) - A107286 (A168232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P16993333241195217000

namespace A092534

/-- `∑[A168232(n+1)-A107286(A168232(n+1))]` -/
def P16993333241195217000.Spec : Prop :=
  ∀ n, P16993333241195217000.a n = A092534 n

end A092534

/-! ## A092534.P3177889816276731712

`∑[floor(n+1-A064680(n)/A064680(n+1))]`
-/

namespace A092534.P3177889816276731712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - (A064680 n : ℚ) / (A064680 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P3177889816276731712

namespace A092534

/-- `∑[floor(n+1-A064680(n)/A064680(n+1))]` -/
def P3177889816276731712.Spec : Prop :=
  ∀ n, P3177889816276731712.a n = A092534 n

end A092534

/-! ## A092534.P17487579968280681144

`∑[A004275(A110657(2*n+1))]`
-/

namespace A092534.P17487579968280681144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A110657 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092534.P17487579968280681144

namespace A092534

/-- `∑[A004275(A110657(2*n+1))]` -/
def P17487579968280681144.Spec : Prop :=
  ∀ n, P17487579968280681144.a n = A092534 n

end A092534

/-! ## A092534.P18241738355449915438

`A092535(A028309(n))`
-/

namespace A092534.P18241738355449915438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A028309 n).toNat

end

end A092534.P18241738355449915438

namespace A092534

/-- `A092535(A028309(n))` -/
def P18241738355449915438.Spec : Prop :=
  ∀ n, P18241738355449915438.a n = A092534 n

end A092534

/-! ## A092534.P6032171317667477855

`A058992(A028309(n)+1)`
-/

namespace A092534.P6032171317667477855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A028309 n + 1).toNat

end

end A092534.P6032171317667477855

namespace A092534

/-- `A058992(A028309(n)+1)` -/
def P6032171317667477855.Spec : Prop :=
  ∀ n, P6032171317667477855.a n = A092534 n

end A092534

/-! ## A092534.P17233454978581110554

`A058992(A184676(n+1)+1-A058992(n+1))`
-/

namespace A092534.P17233454978581110554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A184676 (n + 1) + (1 - A058992 (n + 1))).toNat

end

end A092534.P17233454978581110554

namespace A092534

/-- `A058992(A184676(n+1)+1-A058992(n+1))` -/
def P17233454978581110554.Spec : Prop :=
  ∀ n, P17233454978581110554.a n = A092534 n

end A092534

/-! ## A092534.P4294589396377174057

`∑[A047596(A223133(n+1))%(n+1)]+1`
-/

namespace A092534.P4294589396377174057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047596 (A223133 (n + 1)).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092534.P4294589396377174057

namespace A092534

/-- `∑[A047596(A223133(n+1))%(n+1)]+1` -/
def P4294589396377174057.Spec : Prop :=
  ∀ n, P4294589396377174057.a n = A092534 n

end A092534

/-!
# A092535: Expansion of g.f. (1+x^2)*(1+x^3)/((1-x)*(1-x^2)).

The programs for A092535, the canonical program `A092535.P3385300544611015843` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092535 has offset 0).

The definition of A092535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^3+x^5)/(1-x-x^2+x^3))` (program `A092535.P3385300544611015843`, by `A092535.P3385300544611015843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092535.P3385300544611015843

`ogf((1+x^2+x^3+x^5)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092535

/-- `ogf((1+x^2+x^3+x^5)/(1-x-x^2+x^3))` -/
def P3385300544611015843.Spec : Prop :=
  ∀ n, P3385300544611015843.a n = A092535 n

theorem P3385300544611015843.correct : P3385300544611015843.Spec := by
  intro n
  simp only [A092535]

end A092535

/-!
# A092537: Sorted numbers of faces in the Archimedean polyhedra.

The programs for A092537, there is no canonical definition to state claims against.
-/

/-! ## A092537.P16868799910252749243

`A162344(∑[A004016(n+3)^A351149(n+2)]+2)`
-/

namespace A092537.P16868799910252749243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (n + 3) : ℚ) ^ (A351149 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A092537.P16868799910252749243

/-!
# A092539: Binary representation of a(n) equals first n+1 terms of A051023.

The programs for A092539, there is no canonical definition to state claims against.
-/

/-! ## A092539.P6292878582952717059

`A051023(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A092539.P6292878582952717059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051023 n + 2 * a (n - 1)

end

end A092539.P6292878582952717059

/-! ## A092539.P12105718997099130282

`xor(2*a(n-1), A051023(A028310(n)))` with `a(0)=1`
-/

namespace A092539.P12105718997099130282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A051023 (A028310 n).toNat)

end

end A092539.P12105718997099130282

/-! ## A092539.P4347617298784057093

`xor(2*a(n-1), A051023(n*A226474(n)))` with `a(0)=1`
-/

namespace A092539.P4347617298784057093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A051023 ((n : ℤ) * A226474 n).toNat)

end

end A092539.P4347617298784057093

/-! ## A092539.P11461892164607533782

`A070950(n²+n)+2*a(n-1)` with `a(0)=1`
-/

namespace A092539.P11461892164607533782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070950 (n ^ 2 + n) + 2 * a (n - 1)

end

end A092539.P11461892164607533782

/-! ## A092539.P13834065055461545919

`xor(2*a(n-1), A071032(n²+n))` with `a(0)=1, a(1)=3`
-/

namespace A092539.P13834065055461545919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (2 * a (n - 1)) (A071032 (n ^ 2 + n))

end

end A092539.P13834065055461545919

/-!
# A092541: Minimal values of m=a^2+b^2=c^2+d^2 for each x=a+b+c+d (a,b,c,d positive integers).

The programs for A092541, there is no canonical definition to state claims against.
-/

/-! ## A092541.P13428150038725387212

`A025285(A331418(n)%A018261(n+2))`
-/

namespace A092541.P13428150038725387212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (Int.tmod (A331418 n) (A018261 (n + 2))).toNat

end

end A092541.P13428150038725387212

/-! ## A092541.P4764877140270223821

`A007692(lt[A000055(n), A101817(n+1)])`
-/

namespace A092541.P4764877140270223821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092541.P4764877140270223821

/-! ## A092541.P11914957718318220729

`A007692(lt[A332337(n), A320371(n+1)])`
-/

namespace A092541.P11914957718318220729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092541.P11914957718318220729

/-! ## A092541.P6385845493384501069

`record[A007692(n+1)/A295554(A188158(n+1))]`
-/

namespace A092541.P6385845493384501069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007692 (n + 1) : ℚ) / (A295554 (A188158 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092541.P6385845493384501069

/-!
# A092542: Table whose n-th row is constant and equal to n, read by antidiagonals alternately upwards and downwards.

The programs for A092542, the canonical program `A092542.P8192969525571053860` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092542 has offset 1).

The definition of A092542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092542.P11770416753408057991

`A319571(2*n)+1`
-/

namespace A092542.P11770416753408057991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n) + 1

end

end A092542.P11770416753408057991

namespace A092542

/-- `A319571(2*n)+1` -/
def P11770416753408057991.Spec : Prop :=
  ∀ n, P11770416753408057991.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P5836375686946643839

`A092543(∑[char[∑[n]]]²-n)`
-/

namespace A092542.P5836375686946643839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A092542.P5836375686946643839

namespace A092542

/-- `A092543(∑[char[∑[n]]]²-n)` -/
def P5836375686946643839.Spec : Prop :=
  ∀ n, P5836375686946643839.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P5875127434519710311

`A082233(n)+1-∑[char[∑[n]]]`
-/

namespace A092542.P5875127434519710311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092542.P5875127434519710311

namespace A092542

/-- `A082233(n)+1-∑[char[∑[n]]]` -/
def P5875127434519710311.Spec : Prop :=
  ∀ n, P5875127434519710311.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P13883938000797703623

`∑[char[C(2*n, 2)]]-A010751(n)`
-/

namespace A092542.P13883938000797703623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A010751 n

end

end A092542.P13883938000797703623

namespace A092542

/-- `∑[char[C(2*n, 2)]]-A010751(n)` -/
def P13883938000797703623.Spec : Prop :=
  ∀ n, P13883938000797703623.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P1376465101723397472

`comp[∑[n]]-n-A092543(n+1)`
-/

namespace A092542.P1376465101723397472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A092543 (n + 1)

end

end A092542.P1376465101723397472

namespace A092542

/-- `comp[∑[n]]-n-A092543(n+1)` -/
def P1376465101723397472.Spec : Prop :=
  ∀ n, P1376465101723397472.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P6779960652734925352

`C(comp[∑[n]]-n, 2)-A056011(n+1)+1`
-/

namespace A092542.P6779960652734925352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - A056011 (n + 1) + 1

end

end A092542.P6779960652734925352

namespace A092542

/-- `C(comp[∑[n]]-n, 2)-A056011(n+1)+1` -/
def P6779960652734925352.Spec : Prop :=
  ∀ n, P6779960652734925352.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P8192969525571053860

`A002260(A056023(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A092542

/-- `A002260(A056023(n+1))` -/
def P8192969525571053860.Spec : Prop :=
  ∀ n, P8192969525571053860.a n = A092542 (n + 1)

theorem P8192969525571053860.correct : P8192969525571053860.Spec := by
  intro n
  simp only [A092542, Nat.add_sub_cancel]

end A092542

/-! ## A092542.P11262937398308027134

`A004736(A056011(n+1))`
-/

namespace A092542.P11262937398308027134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056011 (n + 1)).toNat

end

end A092542.P11262937398308027134

namespace A092542

/-- `A004736(A056011(n+1))` -/
def P11262937398308027134.Spec : Prop :=
  ∀ n, P11262937398308027134.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P9872802790094830318

`A004736(A381663(n+1))`
-/

namespace A092542.P9872802790094830318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A381663 (n + 1)).toNat

end

end A092542.P9872802790094830318

namespace A092542

/-- `A004736(A381663(n+1))` -/
def P9872802790094830318.Spec : Prop :=
  ∀ n, P9872802790094830318.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P9990361127809444030

`A004737(A280682(n+2))`
-/

namespace A092542.P9990361127809444030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A280682 (n + 2)).toNat

end

end A092542.P9990361127809444030

namespace A092542

/-- `A004737(A280682(n+2))` -/
def P9990361127809444030.Spec : Prop :=
  ∀ n, P9990361127809444030.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P8316263991289508085

`A005496(A319571(2*n))`
-/

namespace A092542.P8316263991289508085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A319571 (2 * n)).toNat

end

end A092542.P8316263991289508085

namespace A092542

/-- `A005496(A319571(2*n))` -/
def P8316263991289508085.Spec : Prop :=
  ∀ n, P8316263991289508085.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P2484220049234544600

`A329116(lt[0, A329116(n)])`
-/

namespace A092542.P2484220049234544600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092542.P2484220049234544600

namespace A092542

/-- `A329116(lt[0, A329116(n)])` -/
def P2484220049234544600.Spec : Prop :=
  ∀ n, P2484220049234544600.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P8683171878799941724

`A082233(n)-A003056(n)`
-/

namespace A092542.P8683171878799941724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n - A003056 n

end

end A092542.P8683171878799941724

namespace A092542

/-- `A082233(n)-A003056(n)` -/
def P8683171878799941724.Spec : Prop :=
  ∀ n, P8683171878799941724.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P15553720881334053622

`A175213(A319571(2*n)²)`
-/

namespace A092542.P15553720881334053622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A319571 (2 * n) ^ 2).toNat

end

end A092542.P15553720881334053622

namespace A092542

/-- `A175213(A319571(2*n)²)` -/
def P15553720881334053622.Spec : Prop :=
  ∀ n, P15553720881334053622.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P1943801104126234312

`A260056(A319571(2*n)²)`
-/

namespace A092542.P1943801104126234312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A319571 (2 * n) ^ 2).toNat

end

end A092542.P1943801104126234312

namespace A092542

/-- `A260056(A319571(2*n)²)` -/
def P1943801104126234312.Spec : Prop :=
  ∀ n, P1943801104126234312.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P2986516921809804348

`A008619(2*A319571(2*n))`
-/

namespace A092542.P2986516921809804348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A319571 (2 * n)).toNat

end

end A092542.P2986516921809804348

namespace A092542

/-- `A008619(2*A319571(2*n))` -/
def P2986516921809804348.Spec : Prop :=
  ∀ n, P2986516921809804348.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P10572565090772221049

`A028242(2*A319571(2*n))`
-/

namespace A092542.P10572565090772221049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A319571 (2 * n)).toNat

end

end A092542.P10572565090772221049

namespace A092542

/-- `A028242(2*A319571(2*n))` -/
def P10572565090772221049.Spec : Prop :=
  ∀ n, P10572565090772221049.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P12942241293878259912

`A000005(2^A319571(2*n))`
-/

namespace A092542.P12942241293878259912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319571 (2 * n) : ℤ))).toNat

end

end A092542.P12942241293878259912

namespace A092542

/-- `A000005(2^A319571(2*n))` -/
def P12942241293878259912.Spec : Prop :=
  ∀ n, P12942241293878259912.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P7775456919871300718

`1-A180714(lt[A180714(n), 1])`
-/

namespace A092542.P7775456919871300718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A092542.P7775456919871300718

namespace A092542

/-- `1-A180714(lt[A180714(n), 1])` -/
def P7775456919871300718.Spec : Prop :=
  ∀ n, P7775456919871300718.a n = A092542 (n + 1)

end A092542

/-! ## A092542.P4955171338297504493

`A056023(n+1)-A057944(n)`
-/

namespace A092542.P4955171338297504493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) - A057944 n

end

end A092542.P4955171338297504493

namespace A092542

/-- `A056023(n+1)-A057944(n)` -/
def P4955171338297504493.Spec : Prop :=
  ∀ n, P4955171338297504493.a n = A092542 (n + 1)

end A092542

/-!
# A092543: Table below read by antidiagonals alternately upwards and downwards.

The programs for A092543, the canonical program `A092543.P4363946767756583020` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092543 has offset 1).

The definition of A092543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092543.P7054961448819865898

`A002260(A056011(n+1))`
-/

namespace A092543.P7054961448819865898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056011 (n + 1)).toNat

end

end A092543.P7054961448819865898

namespace A092543

/-- `A002260(A056011(n+1))` -/
def P7054961448819865898.Spec : Prop :=
  ∀ n, P7054961448819865898.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P17136557283289819655

`A204164(n+1)+A010751(n)`
-/

namespace A092543.P17136557283289819655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (n + 1) + A010751 n

end

end A092543.P17136557283289819655

namespace A092543

/-- `A204164(n+1)+A010751(n)` -/
def P17136557283289819655.Spec : Prop :=
  ∀ n, P17136557283289819655.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P14348126230317157793

`A056011(n+1)-A057944(n)`
-/

namespace A092543.P14348126230317157793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) - A057944 n

end

end A092543.P14348126230317157793

namespace A092543

/-- `A056011(n+1)-A057944(n)` -/
def P14348126230317157793.Spec : Prop :=
  ∀ n, P14348126230317157793.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P9991932281403576182

`A114751(n+1)-A003056(n)`
-/

namespace A092543.P9991932281403576182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114751 (n + 1) - A003056 n

end

end A092543.P9991932281403576182

namespace A092543

/-- `A114751(n+1)-A003056(n)` -/
def P9991932281403576182.Spec : Prop :=
  ∀ n, P9991932281403576182.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P443589645461398188

`A111650(n+1)-A082233(n)`
-/

namespace A092543.P443589645461398188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A082233 n

end

end A092543.P443589645461398188

namespace A092543

/-- `A111650(n+1)-A082233(n)` -/
def P443589645461398188.Spec : Prop :=
  ∀ n, P443589645461398188.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P3940690288592723405

`A127739(n+1)+1-A056023(n+1)`
-/

namespace A092543.P3940690288592723405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (1 - A056023 (n + 1))

end

end A092543.P3940690288592723405

namespace A092543

/-- `A127739(n+1)+1-A056023(n+1)` -/
def P3940690288592723405.Spec : Prop :=
  ∀ n, P3940690288592723405.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P4363946767756583020

`A110654(A002024(n+1))+A010751(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092543

/-- `A110654(A002024(n+1))+A010751(n)` -/
def P4363946767756583020.Spec : Prop :=
  ∀ n, P4363946767756583020.a n = A092543 (n + 1)

theorem P4363946767756583020.correct : P4363946767756583020.Spec := by
  intro n
  simp only [A092543, Nat.add_sub_cancel]

end A092543

/-! ## A092543.P6689843951700140241

`A000217(A002024(n+1))+1-A056023(n+1)`
-/

namespace A092543.P6689843951700140241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat + (1 - A056023 (n + 1))

end

end A092543.P6689843951700140241

namespace A092543

/-- `A000217(A002024(n+1))+1-A056023(n+1)` -/
def P6689843951700140241.Spec : Prop :=
  ∀ n, P6689843951700140241.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P7015528919873236893

`A056011(n+1)-A000217(A002024(n+1)-1)`
-/

namespace A092543.P7015528919873236893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) - A000217 (A002024 (n + 1) - 1).toNat

end

end A092543.P7015528919873236893

namespace A092543

/-- `A056011(n+1)-A000217(A002024(n+1)-1)` -/
def P7015528919873236893.Spec : Prop :=
  ∀ n, P7015528919873236893.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P6936793969644778653

`A004736(n+1)+A056011(n+1)-A038722(n+1)`
-/

namespace A092543.P6936793969644778653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A056011 (n + 1) - A038722 (n + 1))

end

end A092543.P6936793969644778653

namespace A092543

/-- `A004736(n+1)+A056011(n+1)-A038722(n+1)` -/
def P6936793969644778653.Spec : Prop :=
  ∀ n, P6936793969644778653.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P5276238511254900266

`A002260(n+1)+A221215(n+1)-A211394(n+1)`
-/

namespace A092543.P5276238511254900266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A221215 (n + 1) - A211394 (n + 1))

end

end A092543.P5276238511254900266

namespace A092543

/-- `A002260(n+1)+A221215(n+1)-A211394(n+1)` -/
def P5276238511254900266.Spec : Prop :=
  ∀ n, P5276238511254900266.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P13142110113247716231

`A004736(n+1)+A211394(n+1)-A221216(n+1)`
-/

namespace A092543.P13142110113247716231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A211394 (n + 1) - A221216 (n + 1))

end

end A092543.P13142110113247716231

namespace A092543

/-- `A004736(n+1)+A211394(n+1)-A221216(n+1)` -/
def P13142110113247716231.Spec : Prop :=
  ∀ n, P13142110113247716231.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P3656829319164101920

`A004736(A056023(n+1))`
-/

namespace A092543.P3656829319164101920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056023 (n + 1)).toNat

end

end A092543.P3656829319164101920

namespace A092543

/-- `A004736(A056023(n+1))` -/
def P3656829319164101920.Spec : Prop :=
  ∀ n, P3656829319164101920.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P14556365751009165462

`A220073(A199855(n+1))`
-/

namespace A092543.P14556365751009165462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A199855 (n + 1)).toNat

end

end A092543.P14556365751009165462

namespace A092543

/-- `A220073(A199855(n+1))` -/
def P14556365751009165462.Spec : Prop :=
  ∀ n, P14556365751009165462.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P7635697706264982842

`A389606(A188568(n+1))`
-/

namespace A092543.P7635697706264982842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389606 (A188568 (n + 1)).toNat

end

end A092543.P7635697706264982842

namespace A092543

/-- `A389606(A188568(n+1))` -/
def P7635697706264982842.Spec : Prop :=
  ∀ n, P7635697706264982842.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P9510470574460012095

`A188568(n+1)+A208234(n+1)-A056023(n+1)`
-/

namespace A092543.P9510470574460012095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 1) + (A208234 (n + 1) - A056023 (n + 1))

end

end A092543.P9510470574460012095

namespace A092543

/-- `A188568(n+1)+A208234(n+1)-A056023(n+1)` -/
def P9510470574460012095.Spec : Prop :=
  ∀ n, P9510470574460012095.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P6609816297815391848

`A002260(A221217(A221216(n+1)))`
-/

namespace A092543.P6609816297815391848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A221217 (A221216 (n + 1)).toNat).toNat

end

end A092543.P6609816297815391848

namespace A092543

/-- `A002260(A221217(A221216(n+1)))` -/
def P6609816297815391848.Spec : Prop :=
  ∀ n, P6609816297815391848.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P13041964262795638254

`A002260(A221217(A221215(A211394(n+1))))`
-/

namespace A092543.P13041964262795638254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A221217 (A221215 (A211394 (n + 1)).toNat).toNat).toNat

end

end A092543.P13041964262795638254

namespace A092543

/-- `A002260(A221217(A221215(A211394(n+1))))` -/
def P13041964262795638254.Spec : Prop :=
  ∀ n, P13041964262795638254.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P11766282339967735914

`A002260(A380245(n+1))`
-/

namespace A092543.P11766282339967735914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A380245 (n + 1)).toNat

end

end A092543.P11766282339967735914

namespace A092543

/-- `A002260(A380245(n+1))` -/
def P11766282339967735914.Spec : Prop :=
  ∀ n, P11766282339967735914.a n = A092543 (n + 1)

end A092543

/-! ## A092543.P3410870994697218355

`A004736(A221217(A221215(n+1)))`
-/

namespace A092543.P3410870994697218355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A221217 (A221215 (n + 1)).toNat).toNat

end

end A092543.P3410870994697218355

namespace A092543

/-- `A004736(A221217(A221215(n+1)))` -/
def P3410870994697218355.Spec : Prop :=
  ∀ n, P3410870994697218355.a n = A092543 (n + 1)

end A092543

/-!
# A092545: Molien series for complete weight enumerators of self-dual codes over Z/8Z containing the all-ones vector.

The programs for A092545, there is no canonical definition to state claims against.
-/

/-! ## A092545.P38465523088509132

`A296712(A369433(3*n+1))%A270302(n+1)`
-/

namespace A092545.P38465523088509132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296712 (A369433 (3 * n + 1)).toNat) (A270302 (n + 1))

end

end A092545.P38465523088509132

/-!
# A092548: Molien series for complete weight enumerators of self-dual codes over GF(4) + GF(4)u with u^2 = 0.

The programs for A092548, there is no canonical definition to state claims against.
-/

/-! ## A092548.P3872782042305727439

`A376772(A262860(n))`
-/

namespace A092548.P3872782042305727439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A262860 n).toNat

end

end A092548.P3872782042305727439

/-! ## A092548.P16125690146675279548

`A324383(A259678(2*n+3))-1`
-/

namespace A092548.P16125690146675279548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A259678 (2 * n + 3)).toNat - 1

end

end A092548.P16125690146675279548

/-!
# A092549: Molien series for symmetrized weight enumerators of self-dual codes over GF(4) + GF(4)u with u^2 = 0.

The programs for A092549, there is no canonical definition to state claims against.
-/

/-! ## A092549.P13299842081287620919

`A055184(A094969(n+1))`
-/

namespace A092549.P13299842081287620919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055184 (A094969 (n + 1)).toNat

end

end A092549.P13299842081287620919

/-! ## A092549.P4067650789580595744

`A295084(A206702(n+2))`
-/

namespace A092549.P4067650789580595744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295084 (A206702 (n + 2)).toNat

end

end A092549.P4067650789580595744

/-! ## A092549.P7621683165893554145

`A335602(n)+A191269(A335637(n))`
-/

namespace A092549.P7621683165893554145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335602 n + A191269 (A335637 n).toNat

end

end A092549.P7621683165893554145

/-! ## A092549.P8075611092572742997

`A363945(A295005(n+1))+A247375(n)`
-/

namespace A092549.P8075611092572742997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363945 (A295005 (n + 1)).toNat + A247375 n

end

end A092549.P8075611092572742997

/-! ## A092549.P9573079440826579540

`A005293(n+5)-A078703(A299169(n))`
-/

namespace A092549.P9573079440826579540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005293 (n + 5) - A078703 (A299169 n).toNat

end

end A092549.P9573079440826579540

/-!
# A092550: Expansion of -x*(1+x+x^2+x^4)/(-1+2*x^3+x^6).

The programs for A092550, the canonical program `A092550.P2442563428739224469` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092550 has offset 1).

The definition of A092550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^4)/(1-2x^3-x^6))` (program `A092550.P2442563428739224469`, by `A092550.P2442563428739224469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092550.P14275930625073006888

`2*a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=2`
-/

namespace A092550.P14275930625073006888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 2] fun n a =>
  2 * a (n - 3) + a (n - 6)

end

end A092550.P14275930625073006888

namespace A092550

/-- `2*a(n-3)+a(n-6)` -/
def P14275930625073006888.Spec : Prop :=
  ∀ n, (P14275930625073006888.a n : ℤ) = A092550 (n + 1)

end A092550

/-! ## A092550.P2442563428739224469

`ogf((1+x+x^2+x^4)/(1-2x^3-x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092550

/-- `ogf((1+x+x^2+x^4)/(1-2x^3-x^6))` -/
def P2442563428739224469.Spec : Prop :=
  ∀ n, P2442563428739224469.a n = A092550 (n + 1)

theorem P2442563428739224469.correct : P2442563428739224469.Spec := by
  intro n
  simp only [A092550, Nat.add_sub_cancel]

end A092550

/-! ## A092550.P6505353189092288993

`a(n-2)+a(n-1)%(a(n-1)+(n+1)%3)` with `a(0)=1, a(1)=1`
-/

namespace A092550.P6505353189092288993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) % (a (n - 1) + (n + 1) % 3)

end

end A092550.P6505353189092288993

namespace A092550

/-- `a(n-2)+a(n-1)%(a(n-1)+(n+1)%3)` -/
def P6505353189092288993.Spec : Prop :=
  ∀ n, (P6505353189092288993.a n : ℤ) = A092550 (n + 1)

end A092550

/-! ## A092550.P10243508256158346601

`A155046(A131380(n+1))`
-/

namespace A092550.P10243508256158346601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A131380 (n + 1)).toNat

end

end A092550.P10243508256158346601

namespace A092550

/-- `A155046(A131380(n+1))` -/
def P10243508256158346601.Spec : Prop :=
  ∀ n, P10243508256158346601.a n = A092550 (n + 1)

end A092550

/-! ## A092550.P16999915255388349210

`A249576(A061800(n+2))`
-/

namespace A092550.P16999915255388349210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A061800 (n + 2)).toNat

end

end A092550.P16999915255388349210

namespace A092550

/-- `A249576(A061800(n+2))` -/
def P16999915255388349210.Spec : Prop :=
  ∀ n, P16999915255388349210.a n = A092550 (n + 1)

end A092550

/-! ## A092550.P7820886133546958504

`A116560(2*n+5)`
-/

namespace A092550.P7820886133546958504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (2 * n + 5)

end

end A092550.P7820886133546958504

namespace A092550

/-- `A116560(2*n+5)` -/
def P7820886133546958504.Spec : Prop :=
  ∀ n, P7820886133546958504.a n = A092550 (n + 1)

end A092550

/-! ## A092550.P17216707385167738945

`Δ[record[abs(1-A249576(n))]]`
-/

namespace A092550.P17216707385167738945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A249576 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092550.P17216707385167738945

namespace A092550

/-- `Δ[record[abs(1-A249576(n))]]` -/
def P17216707385167738945.Spec : Prop :=
  ∀ n, P17216707385167738945.a n = A092550 (n + 1)

end A092550

/-! ## A092550.P11590888887931420222

`xor(1, a(n-1)*a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A092550.P11590888887931420222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) * a (n - 3))) : ℚ) / a (n - 4)

end

end A092550.P11590888887931420222

namespace A092550

/-- `xor(1, a(n-1)*a(n-3))/a(n-4)` -/
def P11590888887931420222.Spec : Prop :=
  ∀ n, P11590888887931420222.a n = (A092550 (n + 1) : ℚ)

end A092550

/-!
# A092552: Let X_{m,n}(q) be the chromatic polynomial of the complete bipartite graph K_{m,n}. Then a(n) is the negative of the coefficient of the linear term of X_{n,n}(q).

The programs for A092552, there is no canonical definition to state claims against.
-/

/-! ## A092552.P15233340975017522281

`record[A000035(n)*A306267(n)]`
-/

namespace A092552.P15233340975017522281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A306267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092552.P15233340975017522281

/-! ## A092552.P11039366669641608278

`record[A088705(n)*A306267(n)]`
-/

namespace A092552.P11039366669641608278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n * A306267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092552.P11039366669641608278

/-! ## A092552.P4610586340469278721

`A306267(A004273(n))-A000007(n)`
-/

namespace A092552.P4610586340469278721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306267 (A004273 n).toNat - A000007 n

end

end A092552.P4610586340469278721

/-! ## A092552.P15520042390030238455

`A057427(n)*A306267(A004273(n))`
-/

namespace A092552.P15520042390030238455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306267 (A004273 n).toNat

end

end A092552.P15520042390030238455

/-! ## A092552.P2590283873188558745

`A306267(A004273(n))%A068087(n+1)`
-/

namespace A092552.P2590283873188558745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306267 (A004273 n).toNat) (A068087 (n + 1))

end

end A092552.P2590283873188558745

/-!
# A092553: Decimal expansion of 1/e^2.

The programs for A092553, there is no canonical definition to state claims against.
-/

/-! ## A092553.P3632518304586255955

`9-A219863(n)`
-/

namespace A092553.P3632518304586255955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A219863 n

end

end A092553.P3632518304586255955

/-!
# A092557: Triangle read by rows: T(1,1) = 1; for n>=2, write the first n^2 integers in an n X n array beginning with 1 in the upper left proceeding left to right and top to bottom; then T(n,k) is the last prime in the k-th row.

The programs for A092557, there is no canonical definition to state claims against.
-/

/-! ## A092557.P12027573020799867467

`A136548(A075362(n+1)+1)`
-/

namespace A092557.P12027573020799867467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A075362 (n + 1) + 1).toNat

end

end A092557.P12027573020799867467

/-! ## A092557.P12332134615399051426

`A136548(A223544(n+1)+2)`
-/

namespace A092557.P12332134615399051426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A223544 (n + 1) + 2).toNat

end

end A092557.P12332134615399051426

/-! ## A092557.P9419471011892204926

`A020639(A030664(A075362(n+1)))`
-/

namespace A092557.P9419471011892204926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030664 (A075362 (n + 1)).toNat).toNat

end

end A092557.P9419471011892204926

/-! ## A092557.P15189742549357726256

`A064989(p?[A151800(A075362(n+1))])`
-/

namespace A092557.P15189742549357726256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A075362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092557.P15189742549357726256

/-! ## A092557.P8066428787624121071

`A008578(A230980(A075362(n+1))+1)`
-/

namespace A092557.P8066428787624121071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230980 (A075362 (n + 1)).toNat + 1).toNat

end

end A092557.P8066428787624121071

/-! ## A092557.P18333066290166902651

`A056813(A075362(n+1)²)`
-/

namespace A092557.P18333066290166902651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A075362 (n + 1) ^ 2).toNat

end

end A092557.P18333066290166902651

/-! ## A092557.P4999790535712333791

`A056813(A075362(n+1)^2)`
-/

namespace A092557.P4999790535712333791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A075362 (n + 1) ^ 2).toNat

end

end A092557.P4999790535712333791

/-! ## A092557.P3114146503066508262

`A056813((A075362(n+1)+1)*A075362(n+1))`
-/

namespace A092557.P3114146503066508262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((A075362 (n + 1) + 1) * A075362 (n + 1)).toNat

end

end A092557.P3114146503066508262

/-!
# A092558: Numbers k such that 2^k +- 1 are both semiprimes.

The programs for A092558, there is no canonical definition to state claims against.
-/

/-! ## A092558.P6826308631406850591

`A107036(lt[5, A244129(n+4)])`
-/

namespace A092558.P6826308631406850591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244129 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092558.P6826308631406850591

/-!
# A092559: Numbers k such that 2^k + 1 is a semiprime.

The programs for A092559, there is no canonical definition to state claims against.
-/

/-! ## A092559.P14443830637253002722

`A073936(n%a(n-1))` with `a(0)=3`
-/

namespace A092559.P14443830637253002722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A073936 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A092559.P14443830637253002722

/-! ## A092559.P6955403337661564768

`∪[A073936(n+1), A176586(n+1)]`
-/

namespace A092559.P6955403337661564768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092559.P6955403337661564768

/-! ## A092559.P11618125302985482574

`∪[A073936(n+1), A229092(n+1)]`
-/

namespace A092559.P11618125302985482574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092559.P11618125302985482574

/-! ## A092559.P12060405623912921630

`∪[A073936(n+1), A339776(n+1)]`
-/

namespace A092559.P12060405623912921630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092559.P12060405623912921630

/-! ## A092559.P8715405831755248765

`A073936(round(sqrt(n²+1)))-A000038(n)`
-/

namespace A092559.P8715405831755248765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000038 n

end

end A092559.P8715405831755248765

/-! ## A092559.P1095662017483790698

`A073936(ceil(sqrt((1-n)²+1)))/A054977(n)`
-/

namespace A092559.P1095662017483790698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073936 ⌈Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ)⌉.toNat : ℚ) / (A054977 n : ℚ)

end

end A092559.P1095662017483790698

/-! ## A092559.P17231807293171578141

`ceil(A073936(A028310(n))/A054977(n))`
-/

namespace A092559.P17231807293171578141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073936 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)⌉

end

end A092559.P17231807293171578141

/-! ## A092559.P15891298479879640275

`A073936(A028310(n))-2*A151934(n)`
-/

namespace A092559.P15891298479879640275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (A028310 n).toNat - 2 * A151934 n

end

end A092559.P15891298479879640275

/-! ## A092559.P8660848382823334746

`A073936(A028310(n))-A000122(n²+1)`
-/

namespace A092559.P8660848382823334746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (A028310 n).toNat - A000122 (n ^ 2 + 1)

end

end A092559.P8660848382823334746

/-! ## A092559.P8180552663260480226

`A073936(A028310(n))-(A153881(n+1)+1)`
-/

namespace A092559.P8180552663260480226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (A028310 n).toNat - (A153881 (n + 1) + 1)

end

end A092559.P8180552663260480226

/-!
# A092561: Mersenne semiprimes, semiprimes of the form 2^k-1.

The programs for A092561, there is no canonical definition to state claims against.
-/

/-! ## A092561.P15615942327838670933

`A000225(A085724(n+1))`
-/

namespace A092561.P15615942327838670933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A085724 (n + 1)).toNat

end

end A092561.P15615942327838670933

/-! ## A092561.P10730838873951894579

`A126646(eq[2, A046051(n+1)])`
-/

namespace A092561.P10730838873951894579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092561.P10730838873951894579

/-! ## A092561.P10187038881873338128

`∩[A102029(n+1), A000225(n)]`
-/

namespace A092561.P10187038881873338128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092561.P10187038881873338128

/-! ## A092561.P385289037914711001

`∩[A102029(n+1), A126646(n)]`
-/

namespace A092561.P385289037914711001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092561.P385289037914711001

/-! ## A092561.P13485978357707490642

`∩[A102029(n+1), A286521(n)]`
-/

namespace A092561.P13485978357707490642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092561.P13485978357707490642

/-!
# A092562: Semiprimes of the form 2^k + 1.

The programs for A092562, there is no canonical definition to state claims against.
-/

/-! ## A092562.P13896153273335939529

`A000051(A092559(n+1))`
-/

namespace A092562.P13896153273335939529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A092559 (n + 1)).toNat

end

end A092562.P13896153273335939529

/-! ## A092562.P16528724064233097692

`A094373(A092559(n+1)+1)`
-/

namespace A092562.P16528724064233097692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A092559 (n + 1) + 1).toNat

end

end A092562.P16528724064233097692

/-! ## A092562.P2546681562356790398

`A052552(2*A092559(n+1))`
-/

namespace A092562.P2546681562356790398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * A092559 (n + 1)).toNat

end

end A092562.P2546681562356790398

/-! ## A092562.P10885470231956803930

`A048578(eq[1, A085245(n+1)])`
-/

namespace A092562.P10885470231956803930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092562.P10885470231956803930

/-! ## A092562.P5728416535308220087

`∩[A064896(n+1), A113432(n+1)]`
-/

namespace A092562.P5728416535308220087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092562.P5728416535308220087

/-!
# A092563: Coefficients in asymptotic expansion of I_0(x)sqrt(2*Pi*x)/e^x in powers of 1/(16x).

The programs for A092563, the canonical program `A092563.P8345699432032095854` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092563 has offset 0).

The definition of A092563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092563.P8345699432032095854

`(2*n)!²/(n!^3*2^n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A092563

/-- `(2*n)!²/(n!^3*2^n)` -/
def P8345699432032095854.Spec : Prop :=
  ∀ n, P8345699432032095854.a n = (A092563 n : ℚ)

end A092563

/-! ## A092563.P12498480093005919417

`2*(1-2*n)²*a(n-1)/n` with `a(0)=1`
-/

namespace A092563.P12498480093005919417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (1 - (2 * n : ℤ)) ^ 2 : ℚ) * (a (n - 1) / (n : ℚ))

end

end A092563.P12498480093005919417

namespace A092563

/-- `2*(1-2*n)²*a(n-1)/n` -/
def P12498480093005919417.Spec : Prop :=
  ∀ n, P12498480093005919417.a n = (A092563 n : ℚ)

end A092563

/-! ## A092563.P2148286953042502250

`(2*n-1)*(4-2/n)*a(n-1)` with `a(0)=1`
-/

namespace A092563.P2148286953042502250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A092563.P2148286953042502250

namespace A092563

/-- `(2*n-1)*(4-2/n)*a(n-1)` -/
def P2148286953042502250.Spec : Prop :=
  ∀ n, P2148286953042502250.a n = (A092563 n : ℚ)

end A092563

/-! ## A092563.P3711117785884782123

`∏[2*n+1]/(2*n+1)*C(2*n, n)`
-/

namespace A092563.P3711117785884782123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A092563.P3711117785884782123

namespace A092563

/-- `∏[2*n+1]/(2*n+1)*C(2*n, n)` -/
def P3711117785884782123.Spec : Prop :=
  ∀ n, P3711117785884782123.a n = (A092563 n : ℚ)

end A092563

/-! ## A092563.P18228815604498704592

`∏[abs(1-2*n)]*A000984(n)`
-/

namespace A092563.P18228815604498704592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000984 n

end

end A092563.P18228815604498704592

namespace A092563

/-- `∏[abs(1-2*n)]*A000984(n)` -/
def P18228815604498704592.Spec : Prop :=
  ∀ n, P18228815604498704592.a n = A092563 n

end A092563

/-!
# A092566: Main diagonal of triangle A092565, in which the n-th row polynomial equals the numerator of the n-th convergent of the continued fraction [1 + x + x^2; 1 + x + x^2, 1 + x + x^2, ...].

The programs for A092566, there is no canonical definition to state claims against.
-/

/-! ## A092566.P15677192014841958976

`A092565(∑[2*n])`
-/

namespace A092566.P15677192014841958976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092566.P15677192014841958976

/-! ## A092566.P18237652963460429852

`A092565(n²+n)^ceil(sin(n)²)`
-/

namespace A092566.P18237652963460429852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092565 (n ^ 2 + n) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A092566.P18237652963460429852

/-! ## A092566.P14100176070120917182

`A007318(A000217(n))*A092565(n*(n+1))`
-/

namespace A092566.P14100176070120917182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A092565 (n * (n + 1))

end

end A092566.P14100176070120917182

/-! ## A092566.P10622851132649293929

`A051700(A051700(n))*A092565(n*(n+1))`
-/

namespace A092566.P10622851132649293929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A051700 n).toNat * A092565 (n * (n + 1))

end

end A092566.P10622851132649293929

/-! ## A092566.P4268256301073225855

`A059841(A008574(n+1))*A092565(n*(n+1))`
-/

namespace A092566.P4268256301073225855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A008574 (n + 1)).toNat * A092565 (n * (n + 1))

end

end A092566.P4268256301073225855

/-! ## A092566.P17217973253326937579

`A092565(n*(n+1))*A106597(A000217(n+1))`
-/

namespace A092566.P17217973253326937579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 (n * (n + 1)) * A106597 (A000217 (n + 1)).toNat

end

end A092566.P17217973253326937579

/-!
# A092569: Permutation of integers a(a(n)) = n. In binary representation of n, transformation of inner bits, 1 <-> 0, gives binary representation of a(n).

The programs for A092569, the canonical program `A092569.P9977416492423426890` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092569 has offset 0).

The definition of A092569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092569.P9977416492423426890

`xor(n, A053644(or(2, n))-2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092569

/-- `xor(n, A053644(or(2, n))-2)` -/
def P9977416492423426890.Spec : Prop :=
  ∀ n, P9977416492423426890.a n = A092569 n

theorem P9977416492423426890.correct : P9977416492423426890.Spec := by
  intro n
  simp only [A092569]

end A092569

/-! ## A092569.P4045312187116550257

`xor(n, 2*A003817(A002265(n)))`
-/

namespace A092569.P4045312187116550257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A003817 (A002265 n).toNat)

end

end A092569.P4045312187116550257

namespace A092569

/-- `xor(n, 2*A003817(A002265(n)))` -/
def P4045312187116550257.Spec : Prop :=
  ∀ n, P4045312187116550257.a n = A092569 n

end A092569

/-! ## A092569.P1443947881023595648

`xor(n, A175918(xor(1, A053644(n))))`
-/

namespace A092569.P1443947881023595648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175918 (Int.xor 1 (A053644 n)).toNat)

end

end A092569.P1443947881023595648

namespace A092569

/-- `xor(n, A175918(xor(1, A053644(n))))` -/
def P1443947881023595648.Spec : Prop :=
  ∀ n, P1443947881023595648.a n = A092569 n

end A092569

/-! ## A092569.P12086093009641630346

`A056539(A004442(n))+A056539(n)-A004442(n)`
-/

namespace A092569.P12086093009641630346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A004442 n).toNat + (A056539 n - A004442 n)

end

end A092569.P12086093009641630346

namespace A092569

/-- `A056539(A004442(n))+A056539(n)-A004442(n)` -/
def P12086093009641630346.Spec : Prop :=
  ∀ n, P12086093009641630346.a n = A092569 n

end A092569

/-! ## A092569.P9563048919661421754

`A056539(xor(1, A056539(xor(1, n))))`
-/

namespace A092569.P9563048919661421754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.xor 1 (A056539 (Nat.xor 1 n))).toNat

end

end A092569.P9563048919661421754

namespace A092569

/-- `A056539(xor(1, A056539(xor(1, n))))` -/
def P9563048919661421754.Spec : Prop :=
  ∀ n, P9563048919661421754.a n = A092569 n

end A092569

/-! ## A092569.P11771352938315814271

`A056539(A056539(n)+A033999(n))-A033999(n)`
-/

namespace A092569.P11771352938315814271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A056539 n + A033999 n).toNat - A033999 n

end

end A092569.P11771352938315814271

namespace A092569

/-- `A056539(A056539(n)+A033999(n))-A033999(n)` -/
def P11771352938315814271.Spec : Prop :=
  ∀ n, P11771352938315814271.a n = A092569 n

end A092569

/-! ## A092569.P3267929009843318566

`A154438(A153154(n))`
-/

namespace A092569.P3267929009843318566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A153154 n).toNat

end

end A092569.P3267929009843318566

namespace A092569

/-- `A154438(A153154(n))` -/
def P3267929009843318566.Spec : Prop :=
  ∀ n, P3267929009843318566.a n = A092569 n

end A092569

/-! ## A092569.P4627495649322045853

`A153153(A154437(n))`
-/

namespace A092569.P4627495649322045853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A154437 n).toNat

end

end A092569.P4627495649322045853

namespace A092569

/-- `A153153(A154437(n))` -/
def P4627495649322045853.Spec : Prop :=
  ∀ n, P4627495649322045853.a n = A092569 n

end A092569

/-! ## A092569.P13905390188970850960

`A231550(A153154(A231551(A153153(n))))`
-/

namespace A092569.P13905390188970850960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A153154 (A231551 (A153153 n).toNat).toNat).toNat

end

end A092569.P13905390188970850960

namespace A092569

/-- `A231550(A153154(A231551(A153153(n))))` -/
def P13905390188970850960.Spec : Prop :=
  ∀ n, P13905390188970850960.a n = A092569 n

end A092569

/-! ## A092569.P3830523461477292817

`A231550(A153154(A153154(A231550(n))))`
-/

namespace A092569.P3830523461477292817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A153154 (A153154 (A231550 n).toNat).toNat).toNat

end

end A092569.P3830523461477292817

namespace A092569

/-- `A231550(A153154(A153154(A231550(n))))` -/
def P3830523461477292817.Spec : Prop :=
  ∀ n, P3830523461477292817.a n = A092569 n

end A092569

/-! ## A092569.P17365499075265152280

`A231551(A153153(A153153(A231551(n))))`
-/

namespace A092569.P17365499075265152280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A153153 (A153153 (A231551 n).toNat).toNat).toNat

end

end A092569.P17365499075265152280

namespace A092569

/-- `A231551(A153153(A153153(A231551(n))))` -/
def P17365499075265152280.Spec : Prop :=
  ∀ n, P17365499075265152280.a n = A092569 n

end A092569

/-! ## A092569.P16993773320930646157

`A231550(A154438(n)+A231550(n)-A154437(n))`
-/

namespace A092569.P16993773320930646157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A154438 n + (A231550 n - A154437 n)).toNat

end

end A092569.P16993773320930646157

namespace A092569

/-- `A231550(A154438(n)+A231550(n)-A154437(n))` -/
def P16993773320930646157.Spec : Prop :=
  ∀ n, P16993773320930646157.a n = A092569 n

end A092569

/-! ## A092569.P9720564804010868212

`A231550(A154438(n)-(A154437(n)-A231550(n)))`
-/

namespace A092569.P9720564804010868212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A154438 n - (A154437 n - A231550 n)).toNat

end

end A092569.P9720564804010868212

namespace A092569

/-- `A231550(A154438(n)-(A154437(n)-A231550(n)))` -/
def P9720564804010868212.Spec : Prop :=
  ∀ n, P9720564804010868212.a n = A092569 n

end A092569

/-! ## A092569.P14242230879788054023

`A129594(xor(1, A129594(xor(1, n))))`
-/

namespace A092569.P14242230879788054023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (Int.xor 1 (A129594 (Nat.xor 1 n))).toNat

end

end A092569.P14242230879788054023

namespace A092569

/-- `A129594(xor(1, A129594(xor(1, n))))` -/
def P14242230879788054023.Spec : Prop :=
  ∀ n, P14242230879788054023.a n = A092569 n

end A092569

/-!
# A092570: Primes p which become a prime q under transformation of inner bits of binary representation in A092569. In binary representation of p, transformation of inner bits, 1 <-> 0, gives binary representation of q.

The programs for A092570, the canonical program `A092570.P1782335382594658961` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092570 has offset 1).

The definition of A092570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092570.P1782335382594658961

`p?[A092569(p?[A092569(n)])]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092570

/-- `p?[A092569(p?[A092569(n)])]` -/
def P1782335382594658961.Spec : Prop :=
  ∀ n, P1782335382594658961.a n = A092570 (n + 1)

theorem P1782335382594658961.correct : P1782335382594658961.Spec := by
  intro n
  simp only [A092570, Nat.add_sub_cancel]

end A092570

/-! ## A092570.P10051974450657496610

`A000040(eq[A037888(2*(n+1)), A126043(2*n+3)])`
-/

namespace A092570.P10051974450657496610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092570.P10051974450657496610

namespace A092570

/-- `A000040(eq[A037888(2*(n+1)), A126043(2*n+3)])` -/
def P10051974450657496610.Spec : Prop :=
  ∀ n, P10051974450657496610.a n = A092570 (n + 1)

end A092570

/-! ## A092570.P12606449971077195110

`record[A008472(A344845(n+1)+1)]`
-/

namespace A092570.P12606449971077195110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A344845 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092570.P12606449971077195110

namespace A092570

/-- `record[A008472(A344845(n+1)+1)]` -/
def P12606449971077195110.Spec : Prop :=
  ∀ n, P12606449971077195110.a n = A092570 (n + 1)

end A092570

/-! ## A092570.P2073634016168761864

`eq[A003415(n), A007318(A099386(n))]`
-/

namespace A092570.P2073634016168761864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A099386 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092570.P2073634016168761864

namespace A092570

/-- `eq[A003415(n), A007318(A099386(n))]` -/
def P2073634016168761864.Spec : Prop :=
  ∀ n, (P2073634016168761864.a n : ℤ) = A092570 (n + 1)

end A092570

/-! ## A092570.P1434805452789272128

`eq[A018783(n), A182665(A332221(n+4))]`
-/

namespace A092570.P1434805452789272128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (A332221 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092570.P1434805452789272128

namespace A092570

/-- `eq[A018783(n), A182665(A332221(n+4))]` -/
def P1434805452789272128.Spec : Prop :=
  ∀ n, (P1434805452789272128.a n : ℤ) = A092570 (n + 1)

end A092570

/-!
# A092572: Numbers of the form x^2 + 3y^2 where x and y are positive integers.

The programs for A092572, the canonical program `A092572.P8327665283738408758` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092572 has offset 1).

The definition of A092572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092572.P2118282960312769570

`lt[2, A033716(n)]`
-/

namespace A092572.P2118282960312769570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P2118282960312769570

namespace A092572

/-- `lt[2, A033716(n)]` -/
def P2118282960312769570.Spec : Prop :=
  ∀ n, (P2118282960312769570.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P14154441348843181314

`lt[4, A217220(n)]`
-/

namespace A092572.P14154441348843181314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P14154441348843181314

namespace A092572

/-- `lt[4, A217220(n)]` -/
def P14154441348843181314.Spec : Prop :=
  ∀ n, (P14154441348843181314.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P8327665283738408758

`lt[1, A096936(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092572

/-- `lt[1, A096936(n+1)]+1` -/
def P8327665283738408758.Spec : Prop :=
  ∀ n, (P8327665283738408758.a n : ℤ) = A092572 (n + 1)

theorem P8327665283738408758.correct : P8327665283738408758.Spec := by
  intro n
  simp only [A092572, Nat.add_sub_cancel]

end A092572

/-! ## A092572.P5667189565579305589

`eq[1, A033716(C(2, A033716(n)))]`
-/

namespace A092572.P5667189565579305589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (Nat.choose 2 (A033716 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092572.P5667189565579305589

namespace A092572

/-- `eq[1, A033716(C(2, A033716(n)))]` -/
def P5667189565579305589.Spec : Prop :=
  ∀ n, (P5667189565579305589.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P13668131681899572015

`lt[0, A092573(n)]`
-/

namespace A092572.P13668131681899572015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P13668131681899572015

namespace A092572

/-- `lt[0, A092573(n)]` -/
def P13668131681899572015.Spec : Prop :=
  ∀ n, (P13668131681899572015.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P15953682874451833036

`lt[1, A112298(n+1)]+1`
-/

namespace A092572.P15953682874451833036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A092572.P15953682874451833036

namespace A092572

/-- `lt[1, A112298(n+1)]+1` -/
def P15953682874451833036.Spec : Prop :=
  ∀ n, (P15953682874451833036.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P31754777221806115

`eq[1, A090105(a(A092573(n)))]` with `a(0)=3`
-/

namespace A092572.P31754777221806115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A090105 (f2 (A092573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092572.P31754777221806115

namespace A092572

/-- `eq[1, A090105(a(A092573(n)))]` -/
def P31754777221806115.Spec : Prop :=
  ∀ n, (P31754777221806115.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P1618113151635588387

`eq[5, A183228(a(A092573(n)))]` with `a(0)=1`
-/

namespace A092572.P1618113151635588387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A183228 (f2 (A092573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092572.P1618113151635588387

namespace A092572

/-- `eq[5, A183228(a(A092573(n)))]` -/
def P1618113151635588387.Spec : Prop :=
  ∀ n, (P1618113151635588387.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P7822668424456439816

`lt[C(4, A020639(n+1)), A004016(n)]`
-/

namespace A092572.P7822668424456439816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P7822668424456439816

namespace A092572

/-- `lt[C(4, A020639(n+1)), A004016(n)]` -/
def P7822668424456439816.Spec : Prop :=
  ∀ n, (P7822668424456439816.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P12171481113135975458

`lt[A002324(a(n-1)+1), A002324(n+1)]+1` with `a(0)=1`
-/

namespace A092572.P12171481113135975458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002324 (f1 (n - 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A092572.P12171481113135975458

namespace A092572

/-- `lt[A002324(a(n-1)+1), A002324(n+1)]+1` -/
def P12171481113135975458.Spec : Prop :=
  ∀ n, (P12171481113135975458.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P15745822629204635071

`lt[2, abs(A115978(n))]`
-/

namespace A092572.P15745822629204635071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115978 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P15745822629204635071

namespace A092572

/-- `lt[2, abs(A115978(n))]` -/
def P15745822629204635071.Spec : Prop :=
  ∀ n, (P15745822629204635071.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P13244557741529081945

`lt[2, A285244(A115978(n)²)]`
-/

namespace A092572.P13244557741529081945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 (A115978 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P13244557741529081945

namespace A092572

/-- `lt[2, A285244(A115978(n)²)]` -/
def P13244557741529081945.Spec : Prop :=
  ∀ n, (P13244557741529081945.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P2556419436063089127

`lt[1, A096936(A008574(n)-n)]`
-/

namespace A092572.P2556419436063089127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P2556419436063089127

namespace A092572

/-- `lt[1, A096936(A008574(n)-n)]` -/
def P2556419436063089127.Spec : Prop :=
  ∀ n, (P2556419436063089127.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P869749927458198852

`lt[4, A115978(3*n)²]`
-/

namespace A092572.P869749927458198852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092572.P869749927458198852

namespace A092572

/-- `lt[4, A115978(3*n)²]` -/
def P869749927458198852.Spec : Prop :=
  ∀ n, (P869749927458198852.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P5941104610319870889

`lt[A005882(A253623(n)), A005928(3*n)]`
-/

namespace A092572.P5941104610319870889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A253623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092572.P5941104610319870889

namespace A092572

/-- `lt[A005882(A253623(n)), A005928(3*n)]` -/
def P5941104610319870889.Spec : Prop :=
  ∀ n, (P5941104610319870889.a n : ℤ) = A092572 (n + 1)

end A092572

/-! ## A092572.P9420193798176415117

`lt[2, A317643(2*n)]/2`
-/

namespace A092572.P9420193798176415117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317643 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A092572.P9420193798176415117

namespace A092572

/-- `lt[2, A317643(2*n)]/2` -/
def P9420193798176415117.Spec : Prop :=
  ∀ n, P9420193798176415117.a n = (A092572 (n + 1) : ℚ)

end A092572

/-!
# A092573: Number of solutions to x^2 + 3y^2 = n in positive integers x and y.

The programs for A092573, there is no canonical definition to state claims against.
-/

/-! ## A092573.P3623017217629884202

`floor(A033716(n)/4)`
-/

namespace A092573.P3623017217629884202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033716 n : ℚ) / 4⌋

end

end A092573.P3623017217629884202

/-! ## A092573.P3573683320871494059

`A002265(A033716(n))`
-/

namespace A092573.P3573683320871494059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033716 n).toNat

end

end A092573.P3573683320871494059

/-! ## A092573.P7611496236206484383

`A002265(lcm(2, A115978(n)))`
-/

namespace A092573.P7611496236206484383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A115978 n))

end

end A092573.P7611496236206484383

/-! ## A092573.P13849069735786938158

`A119395(n)-A195198(n)`
-/

namespace A092573.P13849069735786938158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n - A195198 n

end

end A092573.P13849069735786938158

/-! ## A092573.P4364945940042987410

`A110655(A033716(n)+1)-1`
-/

namespace A092573.P4364945940042987410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A033716 n + 1).toNat - 1

end

end A092573.P4364945940042987410

/-! ## A092573.P6397369970619322938

`A132292(2*(A033716(n)+1))`
-/

namespace A092573.P6397369970619322938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (2 * (A033716 n + 1)).toNat

end

end A092573.P6397369970619322938

/-! ## A092573.P8721233827444436680

`A132292(or(1, 2*A033716(n)))`
-/

namespace A092573.P8721233827444436680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (Int.lor 1 (2 * A033716 n)).toNat

end

end A092573.P8721233827444436680

/-! ## A092573.P14189760380920348375

`A132292(A033716(n)+A033716(n)+1)`
-/

namespace A092573.P14189760380920348375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A033716 n + (A033716 n + 1)).toNat

end

end A092573.P14189760380920348375

/-! ## A092573.P15914940911911203902

`A001221(A000586(2*A115978(n)²))`
-/

namespace A092573.P15914940911911203902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000586 (2 * A115978 n ^ 2).toNat).toNat

end

end A092573.P15914940911911203902

/-! ## A092573.P11913126508998410994

`A001221(A000586(2*A115978(n)^2))`
-/

namespace A092573.P11913126508998410994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000586 (2 * A115978 n ^ 2).toNat).toNat

end

end A092573.P11913126508998410994

/-!
# A092574: Positive integers that can be represented in the form x^2 + 3y^2 with (x,y) = 1 and x and y positive.

The programs for A092574, there is no canonical definition to state claims against.
-/

/-! ## A092574.P8202478683667174218

`lt[0, A092575(n+1)]+1`
-/

namespace A092574.P8202478683667174218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A092574.P8202478683667174218

/-! ## A092574.P6236051963152786827

`lt[0, A092575(A028310(n))]`
-/

namespace A092574.P6236051963152786827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092575 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092574.P6236051963152786827

/-! ## A092574.P1864218115589458791

`A020725(lt[0, A092575(n+1)])`
-/

namespace A092574.P1864218115589458791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092574.P1864218115589458791

/-! ## A092574.P485297048136611106

`∩[A057128(n+1), A092572(n+1)]`
-/

namespace A092574.P485297048136611106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092574.P485297048136611106

/-! ## A092574.P2798948222946708278

`eq[1, gcd(9, A092575(A028310(n+1)))]+1`
-/

namespace A092574.P2798948222946708278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A092575 (A028310 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A092574.P2798948222946708278

/-! ## A092574.P3798827645230962273

`lt[A006955(A051724(n)), A033716(n)]`
-/

namespace A092574.P3798827645230962273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092574.P3798827645230962273

/-! ## A092574.P350148523344093980

`A244819(n+3)`
-/

namespace A092574.P350148523344093980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (n + 3)

end

end A092574.P350148523344093980

/-! ## A092574.P13021668222731433863

`record[A244819(A052938(A004277(n)))]`
-/

namespace A092574.P13021668222731433863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A052938 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092574.P13021668222731433863

/-! ## A092574.P6720634252339248381

`record[A244819(A052938(A008611(n)))]`
-/

namespace A092574.P6720634252339248381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A052938 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092574.P6720634252339248381

/-! ## A092574.P15605310883823840824

`record[A244819(A052938(A008619(n)))]`
-/

namespace A092574.P15605310883823840824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A052938 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092574.P15605310883823840824

/-!
# A092575: Number of representations of n of the form x^2 + 3y^2 with (x,y)=1.

The programs for A092575, there is no canonical definition to state claims against.
-/

/-! ## A092575.P13609311329252313284

`∑{d}[n+1, A092573(#)*A271102((n+1)/#)]`
-/

namespace A092575.P13609311329252313284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092573 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092575.P13609311329252313284

/-! ## A092575.P2101280973183576245

`and(A000201(A271051(n)), A092573(n+1))`
-/

namespace A092575.P2101280973183576245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000201 (A271051 n).toNat) (A092573 (n + 1))

end

end A092575.P2101280973183576245

/-! ## A092575.P8785374053869988724

`A000201(A271051(char[2]+n))%(A092573(n+1)+1)`
-/

namespace A092575.P8785374053869988724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (A271051 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat) (A092573 (n + 1) + 1)

end

end A092575.P8785374053869988724

/-! ## A092575.P14829765672582739527

`A021913(A064808(n)*A074941(n+1))`
-/

namespace A092575.P14829765672582739527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A064808 n * A074941 (n + 1)).toNat

end

end A092575.P14829765672582739527

/-! ## A092575.P12182438011676800281

`and(A092573(n+1), A130461(A000607(n+2)))`
-/

namespace A092575.P12182438011676800281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092573 (n + 1)) (A130461 (A000607 (n + 2)).toNat)

end

end A092575.P12182438011676800281

/-!
# A092576: a(n) = the least number which is the average of two consecutive primes and has exactly n prime factors (counted with multiplicity).

The programs for A092576, there is no canonical definition to state claims against.
-/

/-! ## A092576.P3746213556565028289

`A078444(A251600(n+3))+1`
-/

namespace A092576.P3746213556565028289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A251600 (n + 3)).toNat + 1

end

end A092576.P3746213556565028289

/-! ## A092576.P10491990579698278012

`A121021(A182172(n))+A001043(A251600(n+3))/2`
-/

namespace A092576.P10491990579698278012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121021 (A182172 n).toNat : ℚ) + (A001043 (A251600 (n + 3)).toNat : ℚ) / 2

end

end A092576.P10491990579698278012

/-! ## A092576.P4927100016012146868

`A008966(A076621(n+1))+A001043(A251600(n+3))/2`
-/

namespace A092576.P4927100016012146868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008966 (A076621 (n + 1)).toNat : ℚ) + (A001043 (A251600 (n + 3)).toNat : ℚ) / 2

end

end A092576.P4927100016012146868

/-! ## A092576.P2104465632323442315

`A121021(A001222(n+1))+A001043(A251600(n+3))/2`
-/

namespace A092576.P2104465632323442315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121021 (A001222 (n + 1)).toNat : ℚ) + (A001043 (A251600 (n + 3)).toNat : ℚ) / 2

end

end A092576.P2104465632323442315

/-! ## A092576.P5664234392869297483

`A083912(A065091(n+1))+A001043(A251600(n+3))/2`
-/

namespace A092576.P5664234392869297483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083912 (A065091 (n + 1)).toNat : ℚ) + (A001043 (A251600 (n + 3)).toNat : ℚ) / 2

end

end A092576.P5664234392869297483

/-!
# A092579: A sieve using the Fibonacci sequence over the integers >=2. Any multiple of a Fibonacci number, F(n)*m, such that F(n)>=2 and m>=2 is excluded and what is left is included.

The programs for A092579, the canonical program `A092579.P16567581240661558732` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092579 has offset 1).

The definition of A092579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092579.P17067925281342849908

`record[A280687(n+2)]`
-/

namespace A092579.P17067925281342849908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280687 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092579.P17067925281342849908

namespace A092579

/-- `record[A280687(n+2)]` -/
def P17067925281342849908.Spec : Prop :=
  ∀ n, P17067925281342849908.a n = A092579 (n + 1)

end A092579

/-! ## A092579.P16567581240661558732

`eq[1, A293435(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092579

/-- `eq[1, A293435(n+1)]+1` -/
def P16567581240661558732.Spec : Prop :=
  ∀ n, (P16567581240661558732.a n : ℤ) = A092579 (n + 1)

theorem P16567581240661558732.correct : P16567581240661558732.Spec := by
  intro n
  simp only [A092579, Nat.add_sub_cancel]

end A092579

/-! ## A092579.P340786681153138731

`eq[1, A293436(n+1)]+1`
-/

namespace A092579.P340786681153138731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092579.P340786681153138731

namespace A092579

/-- `eq[1, A293436(n+1)]+1` -/
def P340786681153138731.Spec : Prop :=
  ∀ n, (P340786681153138731.a n : ℤ) = A092579 (n + 1)

end A092579

/-! ## A092579.P17387972706262851323

`eq[1, A280686(n+2)]+2`
-/

namespace A092579.P17387972706262851323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A092579.P17387972706262851323

namespace A092579

/-- `eq[1, A280686(n+2)]+2` -/
def P17387972706262851323.Spec : Prop :=
  ∀ n, (P17387972706262851323.a n : ℤ) = A092579 (n + 1)

end A092579

/-! ## A092579.P9276161171954957316

`eq[1, A293436(A028310(n))]`
-/

namespace A092579.P9276161171954957316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092579.P9276161171954957316

namespace A092579

/-- `eq[1, A293436(A028310(n))]` -/
def P9276161171954957316.Spec : Prop :=
  ∀ n, (P9276161171954957316.a n : ℤ) = A092579 (n + 1)

end A092579

/-!
# A092581: a(n) is the least prime such that a(n-1) is a quadratic non-residue of a(n).

The programs for A092581, there is no canonical definition to state claims against.
-/

/-! ## A092581.P3062470577680797141

`eq[A107286(n), A358194(A293974(n+4))]`
-/

namespace A092581.P3062470577680797141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (A293974 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092581.P3062470577680797141

/-! ## A092581.P15095315895664537927

`p?[A003056(A167614(n+1)-A106487(n))]`
-/

namespace A092581.P15095315895664537927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A167614 (n + 1) - A106487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092581.P15095315895664537927

/-! ## A092581.P9900070610242591725

`A216883(record[A104120(n+2)+A056239(n+1)])`
-/

namespace A092581.P9900070610242591725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104120 (n + 2) + A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092581.P9900070610242591725

/-! ## A092581.P5159830337146573896

`p?[eq[A008424(n), A015161(n)]]`
-/

namespace A092581.P5159830337146573896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092581.P5159830337146573896

/-! ## A092581.P8019752264755747174

`p?[eq[A015161(n), A132151(n)]]`
-/

namespace A092581.P8019752264755747174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132151 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092581.P8019752264755747174

/-!
# A092582: Triangle read by rows: T(n,k) is the number of permutations p of [n] having length of first run equal to k.

The programs for A092582, the canonical program `A092582.P14071940716078607765` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092582 has offset 1).

The definition of A092582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092582.P8149358793525101920

`A130477(A061579(n))`
-/

namespace A092582.P8149358793525101920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A061579 n).toNat

end

end A092582.P8149358793525101920

namespace A092582

/-- `A130477(A061579(n))` -/
def P8149358793525101920.Spec : Prop :=
  ∀ n, P8149358793525101920.a n = A092582 (n + 1)

end A092582

/-! ## A092582.P16325353991412429490

`A130477(A114327(n)+n)`
-/

namespace A092582.P16325353991412429490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A114327 n + (n : ℤ)).toNat

end

end A092582.P16325353991412429490

namespace A092582

/-- `A130477(A114327(n)+n)` -/
def P16325353991412429490.Spec : Prop :=
  ∀ n, P16325353991412429490.a n = A092582 (n + 1)

end A092582

/-! ## A092582.P10556163505436719790

`A130477(A038722(n+1)-1)`
-/

namespace A092582.P10556163505436719790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A038722 (n + 1) - 1).toNat

end

end A092582.P10556163505436719790

namespace A092582

/-- `A130477(A038722(n+1)-1)` -/
def P10556163505436719790.Spec : Prop :=
  ∀ n, P10556163505436719790.a n = A092582 (n + 1)

end A092582

/-! ## A092582.P15087926909851256034

`A130477(A038722(n+2))`
-/

namespace A092582.P15087926909851256034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A038722 (n + 2)).toNat

end

end A092582.P15087926909851256034

namespace A092582

/-- `A130477(A038722(n+2))` -/
def P15087926909851256034.Spec : Prop :=
  ∀ n, P15087926909851256034.a n = A092582 (n + 1)

end A092582

/-! ## A092582.P1104452763233415882

`A128227(n)/A002260(n+2)*A173333(n+1)`
-/

namespace A092582.P1104452763233415882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128227 n : ℚ) / (A002260 (n + 2) : ℚ) * (A173333 (n + 1) : ℚ)

end

end A092582.P1104452763233415882

namespace A092582

/-- `A128227(n)/A002260(n+2)*A173333(n+1)` -/
def P1104452763233415882.Spec : Prop :=
  ∀ n, P1104452763233415882.a n = (A092582 (n + 1) : ℚ)

end A092582

/-! ## A092582.P2118279090488550773

`A094587(A007401(n+1))/A193738(A014132(n+1))`
-/

namespace A092582.P2118279090488550773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A007401 (n + 1)).toNat : ℚ) / (A193738 (A014132 (n + 1)).toNat : ℚ)

end

end A092582.P2118279090488550773

namespace A092582

/-- `A094587(A007401(n+1))/A193738(A014132(n+1))` -/
def P2118279090488550773.Spec : Prop :=
  ∀ n, P2118279090488550773.a n = (A092582 (n + 1) : ℚ)

end A092582

/-! ## A092582.P14071940716078607765

`gcd(Δ[A173333(n+1)], A134082(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A092582

/-- `gcd(Δ[A173333(n+1)], A134082(n))` -/
def P14071940716078607765.Spec : Prop :=
  ∀ n, (P14071940716078607765.a n : ℤ) = A092582 (n + 1)

theorem P14071940716078607765.correct : P14071940716078607765.Spec := by
  intro n
  simp only [A092582, Nat.add_sub_cancel]

end A092582

/-! ## A092582.P7643222655235927447

`A173333(n+1)-A173333(n+2)%A173333(n+1)`
-/

namespace A092582.P7643222655235927447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - Int.tmod (A173333 (n + 2)) (A173333 (n + 1))

end

end A092582.P7643222655235927447

namespace A092582

/-- `A173333(n+1)-A173333(n+2)%A173333(n+1)` -/
def P7643222655235927447.Spec : Prop :=
  ∀ n, P7643222655235927447.a n = A092582 (n + 1)

end A092582

/-! ## A092582.P6655233180875835562

`gcd(Δ[-A173333(n+1)], A156992(n+1))`
-/

namespace A092582.P6655233180875835562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A173333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A156992 (n + 1))

end

end A092582.P6655233180875835562

namespace A092582

/-- `gcd(Δ[-A173333(n+1)], A156992(n+1))` -/
def P6655233180875835562.Spec : Prop :=
  ∀ n, (P6655233180875835562.a n : ℤ) = A092582 (n + 1)

end A092582

/-! ## A092582.P6709514186108385118

`gcd(-Δ[A173333(n+1)], A169656(n+1))`
-/

namespace A092582.P6709514186108385118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-(f1 (n + 1) - f1 n)) (A169656 (n + 1))

end

end A092582.P6709514186108385118

namespace A092582

/-- `gcd(-Δ[A173333(n+1)], A169656(n+1))` -/
def P6709514186108385118.Spec : Prop :=
  ∀ n, (P6709514186108385118.a n : ℤ) = A092582 (n + 1)

end A092582

/-!
# A092584: Numbers k such that sigma(phi(k)) == phi(sigma(k)) (mod k), that is, A033632(k)/k is an integer.

The programs for A092584, there is no canonical definition to state claims against.
-/

/-! ## A092584.P4531797260488235507

`record[gcd(A105918(n), A273746(n))]`
-/

namespace A092584.P4531797260488235507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105918 n) (A273746 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092584.P4531797260488235507

/-!
# A092585: Numbers k such that sigma(phi(k))-phi(sigma(k)) is nonzero and is divisible by (k-1), that is A065395(k)/(k-1) = (phi(sigma(k))-sigma(phi(k)))/(k-1) is a nonzero integer.

The programs for A092585, there is no canonical definition to state claims against.
-/

/-! ## A092585.P4109995032539093780

`A190896(A006380(n))`
-/

namespace A092585.P4109995032539093780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190896 (A006380 n).toNat

end

end A092585.P4109995032539093780

/-!
# A092589: a(n) = -A065395(2^n).

The programs for A092589, the canonical program `A092589.P10477764574999040477` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092589 has offset 0).

The definition of A092589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092589.P10477764574999040477

`-A065395(2^n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092589

/-- `-A065395(2^n)` -/
def P10477764574999040477.Spec : Prop :=
  ∀ n, P10477764574999040477.a n = A092589 n

theorem P10477764574999040477.correct : P10477764574999040477.Spec := by
  intro n
  simp only [A092589]

end A092589

/-! ## A092589.P6721344993473646893

`A155559(n)-A053288(n+1)`
-/

namespace A092589.P6721344993473646893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A053288 (n + 1)

end

end A092589.P6721344993473646893

namespace A092589

/-- `A155559(n)-A053288(n+1)` -/
def P6721344993473646893.Spec : Prop :=
  ∀ n, P6721344993473646893.a n = A092589 n

end A092589

/-! ## A092589.P7439797584824844861

`A053287(n+1)-A255047(n)`
-/

namespace A092589.P7439797584824844861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1) - A255047 n

end

end A092589.P7439797584824844861

namespace A092589

/-- `A053287(n+1)-A255047(n)` -/
def P7439797584824844861.Spec : Prop :=
  ∀ n, P7439797584824844861.a n = A092589 n

end A092589

/-! ## A092589.P11941840507687565724

`A053287(n+1)-A372968(A238531(n))`
-/

namespace A092589.P11941840507687565724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1) - A372968 (A238531 n).toNat

end

end A092589.P11941840507687565724

namespace A092589

/-- `A053287(n+1)-A372968(A238531(n))` -/
def P11941840507687565724.Spec : Prop :=
  ∀ n, P11941840507687565724.a n = A092589 n

end A092589

/-! ## A092589.P3160011877290162622

`A053287(n+1)-A046802(A000124(n))`
-/

namespace A092589.P3160011877290162622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 1) - A046802 (A000124 n).toNat

end

end A092589.P3160011877290162622

namespace A092589

/-- `A053287(n+1)-A046802(A000124(n))` -/
def P3160011877290162622.Spec : Prop :=
  ∀ n, P3160011877290162622.a n = A092589 n

end A092589

/-!
# A092590: a(n) = A065395(A000040(n)); values of commutator of sigma and phi function at prime number arguments.

The programs for A092590, the canonical program `A092590.P6800779655927528509` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092590 has offset 1).

The definition of A092590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092590.P2036150213612992649

`A008332(n+1)-A008331(n+1)`
-/

namespace A092590.P2036150213612992649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) - A008331 (n + 1)

end

end A092590.P2036150213612992649

namespace A092590

/-- `A008332(n+1)-A008331(n+1)` -/
def P2036150213612992649.Spec : Prop :=
  ∀ n, P2036150213612992649.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P6800779655927528509

`A065395(A000040(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092590

/-- `A065395(A000040(n+1))` -/
def P6800779655927528509.Spec : Prop :=
  ∀ n, P6800779655927528509.a n = A092590 (n + 1)

theorem P6800779655927528509.correct : P6800779655927528509.Spec := by
  intro n
  simp only [A092590, Nat.add_sub_cancel]

end A092590

/-! ## A092590.P3759897794878602436

`A065395(p?[comp[n²]])`
-/

namespace A092590.P3759897794878602436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092590.P3759897794878602436

namespace A092590

/-- `A065395(p?[comp[n²]])` -/
def P3759897794878602436.Spec : Prop :=
  ∀ n, P3759897794878602436.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P9709153012199795449

`A065395(Δ[A007504(n)])`
-/

namespace A092590.P9709153012199795449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (f1 (n + 1) - f1 n).toNat

end

end A092590.P9709153012199795449

namespace A092590

/-- `A065395(Δ[A007504(n)])` -/
def P9709153012199795449.Spec : Prop :=
  ∀ n, P9709153012199795449.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P15475720856085618089

`A078119(A006093(n+1))`
-/

namespace A092590.P15475720856085618089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078119 (A006093 (n + 1)).toNat

end

end A092590.P15475720856085618089

namespace A092590

/-- `A078119(A006093(n+1))` -/
def P15475720856085618089.Spec : Prop :=
  ∀ n, P15475720856085618089.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P11914551659173407565

`A065395(A008578(n+2))`
-/

namespace A092590.P11914551659173407565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (A008578 (n + 2)).toNat

end

end A092590.P11914551659173407565

namespace A092590

/-- `A065395(A008578(n+2))` -/
def P11914551659173407565.Spec : Prop :=
  ∀ n, P11914551659173407565.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P1287744380432427390

`A065395(A182986(n+2))`
-/

namespace A092590.P1287744380432427390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (A182986 (n + 2)).toNat

end

end A092590.P1287744380432427390

namespace A092590

/-- `A065395(A182986(n+2))` -/
def P1287744380432427390.Spec : Prop :=
  ∀ n, P1287744380432427390.a n = A092590 (n + 1)

end A092590

/-! ## A092590.P7825749458486562241

`A078119(A000040(n+1)-1)`
-/

namespace A092590.P7825749458486562241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078119 (A000040 (n + 1) - 1).toNat

end

end A092590.P7825749458486562241

namespace A092590

/-- `A078119(A000040(n+1)-1)` -/
def P7825749458486562241.Spec : Prop :=
  ∀ n, P7825749458486562241.a n = A092590 (n + 1)

end A092590

/-!
# A092591: Exponents m such that 1-A065395(2^m) is a power of 2, where A065395(n) = sigma(phi(n)) - phi(sigma(n)).

The programs for A092591, there is no canonical definition to state claims against.
-/

/-! ## A092591.P12783744279347241799

`eq[A059499(n+1), A135517(n)]`
-/

namespace A092591.P12783744279347241799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092591.P12783744279347241799

/-! ## A092591.P11343424822102941318

`eq[A003557(n+1), A059499(n+1)]`
-/

namespace A092591.P11343424822102941318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092591.P11343424822102941318

/-! ## A092591.P2047416420480659324

`eq[A009195(n+1), A059499(n+1)]`
-/

namespace A092591.P2047416420480659324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092591.P2047416420480659324

/-! ## A092591.P9556328474213299178

`eq[A048671(n+1), A059499(n+1)]`
-/

namespace A092591.P9556328474213299178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092591.P9556328474213299178

/-! ## A092591.P15459122462057657916

`eq[A059499(n+1), A072994(n+1)]`
-/

namespace A092591.P15459122462057657916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092591.P15459122462057657916

/-!
# A092592: a(n) = A001142(n)/A002944(n), i.e., the product of C(n,j) binomial coefficients (for j=0..n) is divided by the least common multiple of them.

The programs for A092592, there is no canonical definition to state claims against.
-/

/-! ## A092592.P17382750073670885409

`A001142(n+1)/A002944(n+2)`
-/

namespace A092592.P17382750073670885409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001142 (n + 1) : ℚ) / (A002944 (n + 2) : ℚ)

end

end A092592.P17382750073670885409

/-! ## A092592.P9414888728223617150

`A208650(n+2)/Δ[A236856(n+1)]`
-/

namespace A092592.P9414888728223617150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208650 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A092592.P9414888728223617150

/-! ## A092592.P8109302810647884658

`A002109(n+1)/(A000178(n+1)*A002944(n+2))`
-/

namespace A092592.P8109302810647884658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 (n + 1) : ℚ) / (A000178 (n + 1) * A002944 (n + 2) : ℚ)

end

end A092592.P8109302810647884658

/-!
# A092594: Triangle read by rows: T(n,k) is the number of permutations p of [n] in which the length of the longest initial segment avoiding both the 132- and the 231-pattern is equal to k.

The programs for A092594, there is no canonical definition to state claims against.
-/

/-! ## A092594.P129050896740318352

`A034444(A001127(n))*A106566(n)`
-/

namespace A092594.P129050896740318352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A001127 n).toNat * A106566 n

end

end A092594.P129050896740318352

/-! ## A092594.P2463679336041859630

`A068068(A181809(n+1))*A258829(n)`
-/

namespace A092594.P2463679336041859630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A181809 (n + 1)).toNat * A258829 n

end

end A092594.P2463679336041859630

/-!
# A092595: Numbers k such that the sum of decimal digits of k and k+1 are both prime numbers, i.e., both k and k+1 are in A028834.

The programs for A092595, there is no canonical definition to state claims against.
-/

/-! ## A092595.P2586909089317398982

`∩[A028834(n+1), A129630(n+1)]`
-/

namespace A092595.P2586909089317398982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092595.P2586909089317398982

/-! ## A092595.P9957546699274909995

`∩[A129630(n+2), A129630(n+1)+1]`
-/

namespace A092595.P9957546699274909995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092595.P9957546699274909995

/-! ## A092595.P15803787870927795257

`eq[A074206(A118881(n)), A306509(n+1)]`
-/

namespace A092595.P15803787870927795257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A118881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P15803787870927795257

/-! ## A092595.P13252772581183577924

`eq[A105700(A169805(n)), A306509(n+1)]`
-/

namespace A092595.P13252772581183577924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P13252772581183577924

/-! ## A092595.P9975372347930833508

`eq[A074206(A007953(n)²), A306509(n+1)]`
-/

namespace A092595.P9975372347930833508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A007953 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P9975372347930833508

/-! ## A092595.P2829406817216265376

`eq[A078898(A007953(n)²), A306509(n+1)]`
-/

namespace A092595.P2829406817216265376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007953 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P2829406817216265376

/-! ## A092595.P9846266017097243499

`eq[A105700(A007953(n)²), A306509(n+1)]`
-/

namespace A092595.P9846266017097243499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P9846266017097243499

/-! ## A092595.P11207438039835196478

`eq[A105700(2*A007953(n)), A306509(n+1)]`
-/

namespace A092595.P11207438039835196478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092595.P11207438039835196478

/-!
# A092598: Natural numbers n for which sum of decimal digits is greater than n/4.

The programs for A092598, there is no canonical definition to state claims against.
-/

/-! ## A092598.P8002234826954240737

`lt[n, 4*∑{digits}[n, #]]`
-/

namespace A092598.P8002234826954240737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092598.P8002234826954240737

/-! ## A092598.P4715279885365555036

`lt[n/4, ∑{digits}[n, #]]`
-/

namespace A092598.P4715279885365555036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A092598.P4715279885365555036

/-! ## A092598.P6668821779162772100

`lt[∑[n], ∏{digits}[n, 6*#]]`
-/

namespace A092598.P6668821779162772100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => 6 * x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A092598.P6668821779162772100

/-! ## A092598.P7007211784736611233

`lt[xor(1, n), 6*n%10]`
-/

namespace A092598.P7007211784736611233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092598.P7007211784736611233

/-! ## A092598.P809072015008592285

`lt[2^n, 15^∑{digits}[n, #]]`
-/

namespace A092598.P809072015008592285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092598.P809072015008592285

