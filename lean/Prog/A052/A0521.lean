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
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052100: a(n) = lcm(n, phi(n), n - phi(n)).

The programs for A052100, the canonical program `A052100.P4818620463333782499` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052100 has offset 1).

The definition of A052100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052100.P4818620463333782499

`(n+1)*A000010(n+1)*A051953(n+1)/A009195(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A052100

/-- `(n+1)*A000010(n+1)*A051953(n+1)/A009195(n+1)²` -/
def P4818620463333782499.Spec : Prop :=
  ∀ n, P4818620463333782499.a n = (A052100 (n + 1) : ℚ)

end A052100

/-! ## A052100.P15308563827718789481

`lcm(n+1, A075857(n+1))`
-/

namespace A052100.P15308563827718789481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A075857 (n + 1))

end

end A052100.P15308563827718789481

namespace A052100

/-- `lcm(n+1, A075857(n+1))` -/
def P15308563827718789481.Spec : Prop :=
  ∀ n, (P15308563827718789481.a n : ℤ) = A052100 (n + 1)

end A052100

/-! ## A052100.P9309116813680134929

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A052106(n+1))`
-/

namespace A052100.P9309116813680134929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A052106 (n + 1))

end

end A052100.P9309116813680134929

namespace A052100

/-- `lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A052106(n+1))` -/
def P9309116813680134929.Spec : Prop :=
  ∀ n, (P9309116813680134929.a n : ℤ) = A052100 (n + 1)

end A052100

/-! ## A052100.P9338036324712920830

`lcm(A075857(n+1), A131738(n))`
-/

namespace A052100.P9338036324712920830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075857 (n + 1)) (A131738 n)

end

end A052100.P9338036324712920830

namespace A052100

/-- `lcm(A075857(n+1), A131738(n))` -/
def P9338036324712920830.Spec : Prop :=
  ∀ n, (P9338036324712920830.a n : ℤ) = A052100 (n + 1)

end A052100

/-! ## A052100.P1620723258519477140

`A009262(n+1)*A076511(n+1)`
-/

namespace A052100.P1620723258519477140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (n + 1) * A076511 (n + 1)

end

end A052100.P1620723258519477140

namespace A052100

/-- `A009262(n+1)*A076511(n+1)` -/
def P1620723258519477140.Spec : Prop :=
  ∀ n, P1620723258519477140.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P2782762962911924682

`A052106(n+1)*A076512(n+1)`
-/

namespace A052100.P2782762962911924682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052106 (n + 1) * A076512 (n + 1)

end

end A052100.P2782762962911924682

namespace A052100

/-- `A052106(n+1)*A076512(n+1)` -/
def P2782762962911924682.Spec : Prop :=
  ∀ n, P2782762962911924682.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P10193730382412996375

`A075857(n+1)*A109395(n+1)`
-/

namespace A052100.P10193730382412996375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075857 (n + 1) * A109395 (n + 1)

end

end A052100.P10193730382412996375

namespace A052100

/-- `A075857(n+1)*A109395(n+1)` -/
def P10193730382412996375.Spec : Prop :=
  ∀ n, P10193730382412996375.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P2889348781162524991

`lcm(A000010(n+1), A052106(n+1))`
-/

namespace A052100.P2889348781162524991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (A052106 (n + 1))

end

end A052100.P2889348781162524991

namespace A052100

/-- `lcm(A000010(n+1), A052106(n+1))` -/
def P2889348781162524991.Spec : Prop :=
  ∀ n, (P2889348781162524991.a n : ℤ) = A052100 (n + 1)

end A052100

/-! ## A052100.P5117809625386980308

`lcm(A009262(n+1), A051953(n+1))`
-/

namespace A052100.P5117809625386980308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009262 (n + 1)) (A051953 (n + 1))

end

end A052100.P5117809625386980308

namespace A052100

/-- `lcm(A009262(n+1), A051953(n+1))` -/
def P5117809625386980308.Spec : Prop :=
  ∀ n, (P5117809625386980308.a n : ℤ) = A052100 (n + 1)

end A052100

/-! ## A052100.P4361775196185427752

`(A109395(n+1)-A076512(n+1))*A009262(n+1)`
-/

namespace A052100.P4361775196185427752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) - A076512 (n + 1)) * A009262 (n + 1)

end

end A052100.P4361775196185427752

namespace A052100

/-- `(A109395(n+1)-A076512(n+1))*A009262(n+1)` -/
def P4361775196185427752.Spec : Prop :=
  ∀ n, P4361775196185427752.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P10682003036206428092

`A000010(n+1)*A076511(n+1)*A109395(n+1)`
-/

namespace A052100.P10682003036206428092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A076511 (n + 1) * A109395 (n + 1)

end

end A052100.P10682003036206428092

namespace A052100

/-- `A000010(n+1)*A076511(n+1)*A109395(n+1)` -/
def P10682003036206428092.Spec : Prop :=
  ∀ n, P10682003036206428092.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P13962827523895270572

`A051953(n+1)*A076512(n+1)*A109395(n+1)`
-/

namespace A052100.P13962827523895270572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A076512 (n + 1) * A109395 (n + 1)

end

end A052100.P13962827523895270572

namespace A052100

/-- `A051953(n+1)*A076512(n+1)*A109395(n+1)` -/
def P13962827523895270572.Spec : Prop :=
  ∀ n, P13962827523895270572.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P9458506916343864712

`A000010(n+1)/A009195(n+1)*A052106(n+1)`
-/

namespace A052100.P9458506916343864712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ) * (A052106 (n + 1) : ℚ)

end

end A052100.P9458506916343864712

namespace A052100

/-- `A000010(n+1)/A009195(n+1)*A052106(n+1)` -/
def P9458506916343864712.Spec : Prop :=
  ∀ n, P9458506916343864712.a n = (A052100 (n + 1) : ℚ)

end A052100

/-! ## A052100.P2657101898764298203

`A009262(n+1)/A009195(n+1)*A051953(n+1)`
-/

namespace A052100.P2657101898764298203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ) * (A051953 (n + 1) : ℚ)

end

end A052100.P2657101898764298203

namespace A052100

/-- `A009262(n+1)/A009195(n+1)*A051953(n+1)` -/
def P2657101898764298203.Spec : Prop :=
  ∀ n, P2657101898764298203.a n = (A052100 (n + 1) : ℚ)

end A052100

/-! ## A052100.P2560290105691717916

`A002618(n+1)/A009195(n+1)*A076511(n+1)`
-/

namespace A052100.P2560290105691717916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ) * (A076511 (n + 1) : ℚ)

end

end A052100.P2560290105691717916

namespace A052100

/-- `A002618(n+1)/A009195(n+1)*A076511(n+1)` -/
def P2560290105691717916.Spec : Prop :=
  ∀ n, P2560290105691717916.a n = (A052100 (n + 1) : ℚ)

end A052100

/-! ## A052100.P2343093395948487521

`A075857(A050399(n+1))`
-/

namespace A052100.P2343093395948487521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075857 (A050399 (n + 1)).toNat

end

end A052100.P2343093395948487521

namespace A052100

/-- `A075857(A050399(n+1))` -/
def P2343093395948487521.Spec : Prop :=
  ∀ n, P2343093395948487521.a n = A052100 (n + 1)

end A052100

/-! ## A052100.P3157284736009735747

`A051953(A050399(n+1))*A076512(n+1)`
-/

namespace A052100.P3157284736009735747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A050399 (n + 1)).toNat * A076512 (n + 1)

end

end A052100.P3157284736009735747

namespace A052100

/-- `A051953(A050399(n+1))*A076512(n+1)` -/
def P3157284736009735747.Spec : Prop :=
  ∀ n, P3157284736009735747.a n = A052100 (n + 1)

end A052100

/-!
# A052101: One of the three sequences associated with the polynomial x^3 - 2.

The programs for A052101, the canonical program `A052101.P9772168536753560830` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052101 has offset 0).

The definition of A052101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052101.P16448696659371990017

`ogf((1-2x+x^2)/(1-3x+3x^2-3x^3))`
-/

namespace A052101.P16448696659371990017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -3] n

end

end A052101.P16448696659371990017

namespace A052101

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-3x^3))` -/
def P16448696659371990017.Spec : Prop :=
  ∀ n, P16448696659371990017.a n = A052101 n

end A052101

/-! ## A052101.P9772168536753560830

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052101

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P9772168536753560830.Spec : Prop :=
  ∀ n, P9772168536753560830.a n = A052101 n

theorem P9772168536753560830.correct : P9772168536753560830.Spec := by
  intro n
  simp only [A052101]

end A052101

/-! ## A052101.P12897055802228704919

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A052101.P12897055802228704919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A052101.P12897055802228704919

namespace A052101

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P12897055802228704919.Spec : Prop :=
  ∀ n, P12897055802228704919.a n = A052101 n

end A052101

/-! ## A052101.P12917389432038782029

`Δ[A052102(n)]`
-/

namespace A052101.P12917389432038782029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052101.P12917389432038782029

namespace A052101

/-- `Δ[A052102(n)]` -/
def P12917389432038782029.Spec : Prop :=
  ∀ n, P12917389432038782029.a n = A052101 n

end A052101

/-! ## A052101.P11115440022199447018

`2*A137247(n)+1`
-/

namespace A052101.P11115440022199447018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137247 n + 1

end

end A052101.P11115440022199447018

namespace A052101

/-- `2*A137247(n)+1` -/
def P11115440022199447018.Spec : Prop :=
  ∀ n, P11115440022199447018.a n = A052101 n

end A052101

/-! ## A052101.P4863255718949364963

`2*∑[A052103(abs(1-n))]+1`
-/

namespace A052101.P4863255718949364963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A052101.P4863255718949364963

namespace A052101

/-- `2*∑[A052103(abs(1-n))]+1` -/
def P4863255718949364963.Spec : Prop :=
  ∀ n, P4863255718949364963.a n = A052101 n

end A052101

/-! ## A052101.P1305436394871763999

`A052102(n+1)-A052102(n)`
-/

namespace A052101.P1305436394871763999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 (n + 1) - A052102 n

end

end A052101.P1305436394871763999

namespace A052101

/-- `A052102(n+1)-A052102(n)` -/
def P1305436394871763999.Spec : Prop :=
  ∀ n, P1305436394871763999.a n = A052101 n

end A052101

/-! ## A052101.P6124463946387080973

`2*(∑[A052103(n)]-A052103(n))+1`
-/

namespace A052101.P6124463946387080973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A052103 n) + 1

end

end A052101.P6124463946387080973

namespace A052101

/-- `2*(∑[A052103(n)]-A052103(n))+1` -/
def P6124463946387080973.Spec : Prop :=
  ∀ n, P6124463946387080973.a n = A052101 n

end A052101

/-! ## A052101.P7573968472019701504

`Δ[Δ[A052103(n)]]`
-/

namespace A052101.P7573968472019701504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052101.P7573968472019701504

namespace A052101

/-- `Δ[Δ[A052103(n)]]` -/
def P7573968472019701504.Spec : Prop :=
  ∀ n, P7573968472019701504.a n = A052101 n

end A052101

/-! ## A052101.P10372791474451719030

`A137256(n)-∑[A052102(n)]`
-/

namespace A052101.P10372791474451719030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052101.P10372791474451719030

namespace A052101

/-- `A137256(n)-∑[A052102(n)]` -/
def P10372791474451719030.Spec : Prop :=
  ∀ n, P10372791474451719030.a n = A052101 n

end A052101

/-! ## A052101.P7862061697671449734

`A137256(n)-A052103(n+1)`
-/

namespace A052101.P7862061697671449734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052103 (n + 1)

end

end A052101.P7862061697671449734

namespace A052101

/-- `A137256(n)-A052103(n+1)` -/
def P7862061697671449734.Spec : Prop :=
  ∀ n, P7862061697671449734.a n = A052101 n

end A052101

/-! ## A052101.P15950591148025586207

`A140498(n)-∑[2*A052102(n)]`
-/

namespace A052101.P15950591148025586207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052101.P15950591148025586207

namespace A052101

/-- `A140498(n)-∑[2*A052102(n)]` -/
def P15950591148025586207.Spec : Prop :=
  ∀ n, P15950591148025586207.a n = A052101 n

end A052101

/-! ## A052101.P12425464726015445359

`A137256(n)+A137256(n)-A140498(n)`
-/

namespace A052101.P12425464726015445359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + (A137256 n - A140498 n)

end

end A052101.P12425464726015445359

namespace A052101

/-- `A137256(n)+A137256(n)-A140498(n)` -/
def P12425464726015445359.Spec : Prop :=
  ∀ n, P12425464726015445359.a n = A052101 n

end A052101

/-! ## A052101.P11545543807656893769

`A137256(n)-A052102(n)-A052103(n)`
-/

namespace A052101.P11545543807656893769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052102 n - A052103 n

end

end A052101.P11545543807656893769

namespace A052101

/-- `A137256(n)-A052102(n)-A052103(n)` -/
def P11545543807656893769.Spec : Prop :=
  ∀ n, P11545543807656893769.a n = A052101 n

end A052101

/-! ## A052101.P7676600685002359692

`A140498(n)-(A052103(n+1)+A052103(n+1))`
-/

namespace A052101.P7676600685002359692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - (A052103 (n + 1) + A052103 (n + 1))

end

end A052101.P7676600685002359692

namespace A052101

/-- `A140498(n)-(A052103(n+1)+A052103(n+1))` -/
def P7676600685002359692.Spec : Prop :=
  ∀ n, P7676600685002359692.a n = A052101 n

end A052101

/-! ## A052101.P5968382797496978912

`Δ[Δ[Δ[A137247(n)]]]`
-/

namespace A052101.P5968382797496978912
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052101.P5968382797496978912

namespace A052101

/-- `Δ[Δ[Δ[A137247(n)]]]` -/
def P5968382797496978912.Spec : Prop :=
  ∀ n, P5968382797496978912.a n = A052101 n

end A052101

/-! ## A052101.P7435750452461675589

`Δ[A140498(n)]-A140498(n)`
-/

namespace A052101.P7435750452461675589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A140498 n

end

end A052101.P7435750452461675589

namespace A052101

/-- `Δ[A140498(n)]-A140498(n)` -/
def P7435750452461675589.Spec : Prop :=
  ∀ n, P7435750452461675589.a n = A052101 n

end A052101

/-! ## A052101.P10092220262924185004

`2*A137256(n)-A140498(n)`
-/

namespace A052101.P10092220262924185004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137256 n - A140498 n

end

end A052101.P10092220262924185004

namespace A052101

/-- `2*A137256(n)-A140498(n)` -/
def P10092220262924185004.Spec : Prop :=
  ∀ n, P10092220262924185004.a n = A052101 n

end A052101

/-! ## A052101.P9277900921979948369

`A140498(n+1)-2*A140498(n)`
-/

namespace A052101.P9277900921979948369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 (n + 1) - 2 * A140498 n

end

end A052101.P9277900921979948369

namespace A052101

/-- `A140498(n+1)-2*A140498(n)` -/
def P9277900921979948369.Spec : Prop :=
  ∀ n, P9277900921979948369.a n = A052101 n

end A052101

/-! ## A052101.P7623749688754411442

`∑{#}[floor(n/3), 2^#*C(n, 3*#)]`
-/

namespace A052101.P7623749688754411442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, 2 ^ k * Nat.choose n (3 * k)

end

end A052101.P7623749688754411442

namespace A052101

/-- `∑{#}[floor(n/3), 2^#*C(n, 3*#)]` -/
def P7623749688754411442.Spec : Prop :=
  ∀ n, (P7623749688754411442.a n : ℤ) = A052101 n

end A052101

/-!
# A052102: The second of the three sequences associated with the polynomial x^3 - 2.

The programs for A052102, the canonical program `A052102.P8974302052694830250` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052102 has offset 0).

The definition of A052102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052102.P7941417353198861224

`ogf((x-x^2)/(1-3x+3x^2-3x^3))`
-/

namespace A052102.P7941417353198861224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, 3, -3] n

end

end A052102.P7941417353198861224

namespace A052102

/-- `ogf((x-x^2)/(1-3x+3x^2-3x^3))` -/
def P7941417353198861224.Spec : Prop :=
  ∀ n, P7941417353198861224.a n = A052102 n

end A052102

/-! ## A052102.P8974302052694830250

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052102

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P8974302052694830250.Spec : Prop :=
  ∀ n, P8974302052694830250.a n = A052102 n

theorem P8974302052694830250.correct : P8974302052694830250.Spec := by
  intro n
  simp only [A052102]

end A052102

/-! ## A052102.P15828635156128532558

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A052102.P15828635156128532558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A052102.P15828635156128532558

namespace A052102

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P15828635156128532558.Spec : Prop :=
  ∀ n, P15828635156128532558.a n = A052102 n

end A052102

/-! ## A052102.P2087789905229941830

`Δ[A052103(n)]`
-/

namespace A052102.P2087789905229941830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052102.P2087789905229941830

namespace A052102

/-- `Δ[A052103(n)]` -/
def P2087789905229941830.Spec : Prop :=
  ∀ n, P2087789905229941830.a n = A052102 n

end A052102

/-! ## A052102.P4682630463700512830

`∑[A052101(n)]-A052101(n)`
-/

namespace A052102.P4682630463700512830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052101 n

end

end A052102.P4682630463700512830

namespace A052102

/-- `∑[A052101(n)]-A052101(n)` -/
def P4682630463700512830.Spec : Prop :=
  ∀ n, P4682630463700512830.a n = A052102 n

end A052102

/-! ## A052102.P6348234505610876386

`A052103(n+1)-A052103(n)`
-/

namespace A052102.P6348234505610876386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 (n + 1) - A052103 n

end

end A052102.P6348234505610876386

namespace A052102

/-- `A052103(n+1)-A052103(n)` -/
def P6348234505610876386.Spec : Prop :=
  ∀ n, P6348234505610876386.a n = A052102 n

end A052102

/-! ## A052102.P2891104539851883816

`Δ[Δ[A137247(n)]]`
-/

namespace A052102.P2891104539851883816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052102.P2891104539851883816

namespace A052102

/-- `Δ[Δ[A137247(n)]]` -/
def P2891104539851883816.Spec : Prop :=
  ∀ n, P2891104539851883816.a n = A052102 n

end A052102

/-! ## A052102.P9248546040479304489

`A137256(n)-A052101(n)-A052103(n)`
-/

namespace A052102.P9248546040479304489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052101 n - A052103 n

end

end A052102.P9248546040479304489

namespace A052102

/-- `A137256(n)-A052101(n)-A052103(n)` -/
def P9248546040479304489.Spec : Prop :=
  ∀ n, P9248546040479304489.a n = A052102 n

end A052102

/-! ## A052102.P8652258992201849183

`A140498(n)-A052103(n)-A137256(n)`
-/

namespace A052102.P8652258992201849183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - A052103 n - A137256 n

end

end A052102.P8652258992201849183

namespace A052102

/-- `A140498(n)-A052103(n)-A137256(n)` -/
def P8652258992201849183.Spec : Prop :=
  ∀ n, P8652258992201849183.a n = A052102 n

end A052102

/-! ## A052102.P13989155323260120526

`A140498(n)-Δ[A137256(n)]`
-/

namespace A052102.P13989155323260120526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - (f1 (n + 1) - f1 n)

end

end A052102.P13989155323260120526

namespace A052102

/-- `A140498(n)-Δ[A137256(n)]` -/
def P13989155323260120526.Spec : Prop :=
  ∀ n, P13989155323260120526.a n = A052102 n

end A052102

/-! ## A052102.P111992473852237279

`A137256(n)+A140498(n)-A137256(n+1)`
-/

namespace A052102.P111992473852237279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + (A140498 n - A137256 (n + 1))

end

end A052102.P111992473852237279

namespace A052102

/-- `A137256(n)+A140498(n)-A137256(n+1)` -/
def P111992473852237279.Spec : Prop :=
  ∀ n, P111992473852237279.a n = A052102 n

end A052102

/-! ## A052102.P12894728447318424139

`A137256(n+1)-(A137256(n)+A052101(n+1))`
-/

namespace A052102.P12894728447318424139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 (n + 1) - (A137256 n + A052101 (n + 1))

end

end A052102.P12894728447318424139

namespace A052102

/-- `A137256(n+1)-(A137256(n)+A052101(n+1))` -/
def P12894728447318424139.Spec : Prop :=
  ∀ n, P12894728447318424139.a n = A052102 n

end A052102

/-! ## A052102.P17547870416733467818

`Δ[A137256(n+1)%A137256(n)]`
-/

namespace A052102.P17547870416733467818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137256 (n + 1)) (A137256 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052102.P17547870416733467818

namespace A052102

/-- `Δ[A137256(n+1)%A137256(n)]` -/
def P17547870416733467818.Spec : Prop :=
  ∀ n, P17547870416733467818.a n = A052102 n

end A052102

/-!
# A052103: The third of the three sequences associated with the polynomial x^3 - 2.

The programs for A052103, the canonical program `A052103.P5621406826376020817` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052103 has offset 0).

The definition of A052103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052103.P14810696086667774111

`ogf(x^2/(1-3x+3x^2-3x^3))`
-/

namespace A052103.P14810696086667774111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 3, -3] n

end

end A052103.P14810696086667774111

namespace A052103

/-- `ogf(x^2/(1-3x+3x^2-3x^3))` -/
def P14810696086667774111.Spec : Prop :=
  ∀ n, P14810696086667774111.a n = A052103 n

end A052103

/-! ## A052103.P5621406826376020817

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052103

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P5621406826376020817.Spec : Prop :=
  ∀ n, P5621406826376020817.a n = A052103 n

theorem P5621406826376020817.correct : P5621406826376020817.Spec := by
  intro n
  simp only [A052103]

end A052103

/-! ## A052103.P2953991198710928124

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A052103.P2953991198710928124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A052103.P2953991198710928124

namespace A052103

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P2953991198710928124.Spec : Prop :=
  ∀ n, P2953991198710928124.a n = A052103 n

end A052103

/-! ## A052103.P7676531010946733540

`A052102(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A052103.P7676531010946733540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052102 (n - 1) + a (n - 1)

end

end A052103.P7676531010946733540

namespace A052103

/-- `A052102(n-1)+a(n-1)` -/
def P7676531010946733540.Spec : Prop :=
  ∀ n, P7676531010946733540.a n = A052103 n

end A052103

/-! ## A052103.P8775650187633974237

`∑[A052102(val(A011782(n), 2))]`
-/

namespace A052103.P8775650187633974237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052103.P8775650187633974237

namespace A052103

/-- `∑[A052102(val(A011782(n), 2))]` -/
def P8775650187633974237.Spec : Prop :=
  ∀ n, P8775650187633974237.a n = A052103 n

end A052103

/-! ## A052103.P1169386603211078934

`Δ[A137247(n)]`
-/

namespace A052103.P1169386603211078934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052103.P1169386603211078934

namespace A052103

/-- `Δ[A137247(n)]` -/
def P1169386603211078934.Spec : Prop :=
  ∀ n, P1169386603211078934.a n = A052103 n

end A052103

/-! ## A052103.P13231220379945090757

`∑[A052102(n)]-A052102(n)`
-/

namespace A052103.P13231220379945090757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052102 n

end

end A052103.P13231220379945090757

namespace A052103

/-- `∑[A052102(n)]-A052102(n)` -/
def P13231220379945090757.Spec : Prop :=
  ∀ n, P13231220379945090757.a n = A052103 n

end A052103

/-! ## A052103.P4769575687339284980

`A137247(n+1)-A137247(n)`
-/

namespace A052103.P4769575687339284980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 (n + 1) - A137247 n

end

end A052103.P4769575687339284980

namespace A052103

/-- `A137247(n+1)-A137247(n)` -/
def P4769575687339284980.Spec : Prop :=
  ∀ n, P4769575687339284980.a n = A052103 n

end A052103

/-! ## A052103.P10467335171579148338

`Δ[A052101(n)/2]`
-/

namespace A052103.P10467335171579148338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052101 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052103.P10467335171579148338

namespace A052103

/-- `Δ[A052101(n)/2]` -/
def P10467335171579148338.Spec : Prop :=
  ∀ n, P10467335171579148338.a n = (A052103 n : ℚ)

end A052103

/-! ## A052103.P5984983963632050557

`A137256(n)-∑[A052101(n)]`
-/

namespace A052103.P5984983963632050557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052103.P5984983963632050557

namespace A052103

/-- `A137256(n)-∑[A052101(n)]` -/
def P5984983963632050557.Spec : Prop :=
  ∀ n, P5984983963632050557.a n = A052103 n

end A052103

/-! ## A052103.P9780715502845809863

`A137256(n)-A052102(n+1)`
-/

namespace A052103.P9780715502845809863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052102 (n + 1)

end

end A052103.P9780715502845809863

namespace A052103

/-- `A137256(n)-A052102(n+1)` -/
def P9780715502845809863.Spec : Prop :=
  ∀ n, P9780715502845809863.a n = A052103 n

end A052103

/-! ## A052103.P11894883791326769768

`A137256(n)-A052101(n)-A052102(n)`
-/

namespace A052103.P11894883791326769768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052101 n - A052102 n

end

end A052103.P11894883791326769768

namespace A052103

/-- `A137256(n)-A052101(n)-A052102(n)` -/
def P11894883791326769768.Spec : Prop :=
  ∀ n, P11894883791326769768.a n = A052103 n

end A052103

/-! ## A052103.P4006194363065790654

`A137256(n+1)%A137256(n)`
-/

namespace A052103.P4006194363065790654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137256 (n + 1)) (A137256 n)

end

end A052103.P4006194363065790654

namespace A052103

/-- `A137256(n+1)%A137256(n)` -/
def P4006194363065790654.Spec : Prop :=
  ∀ n, P4006194363065790654.a n = A052103 n

end A052103

/-! ## A052103.P14177393455638625213

`A137256(n+1)-Δ[A140498(n)]`
-/

namespace A052103.P14177393455638625213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 (n + 1) - (f1 (n + 1) - f1 n)

end

end A052103.P14177393455638625213

namespace A052103

/-- `A137256(n+1)-Δ[A140498(n)]` -/
def P14177393455638625213.Spec : Prop :=
  ∀ n, P14177393455638625213.a n = A052103 n

end A052103

/-! ## A052103.P15673743069563476149

`Δ[A137256(n)-A140498(n)/2]`
-/

namespace A052103.P15673743069563476149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137256 n : ℚ) - (A140498 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052103.P15673743069563476149

namespace A052103

/-- `Δ[A137256(n)-A140498(n)/2]` -/
def P15673743069563476149.Spec : Prop :=
  ∀ n, P15673743069563476149.a n = (A052103 n : ℚ)

end A052103

/-! ## A052103.P15789597222281438463

`A137256(n+1)-(A140498(n)+A052101(n))`
-/

namespace A052103.P15789597222281438463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 (n + 1) - (A140498 n + A052101 n)

end

end A052103.P15789597222281438463

namespace A052103

/-- `A137256(n+1)-(A140498(n)+A052101(n))` -/
def P15789597222281438463.Spec : Prop :=
  ∀ n, P15789597222281438463.a n = A052103 n

end A052103

/-! ## A052103.P12941412603832839341

`A137256(n+1)+A140498(n)-A140498(n+1)`
-/

namespace A052103.P12941412603832839341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 (n + 1) + (A140498 n - A140498 (n + 1))

end

end A052103.P12941412603832839341

namespace A052103

/-- `A137256(n+1)+A140498(n)-A140498(n+1)` -/
def P12941412603832839341.Spec : Prop :=
  ∀ n, P12941412603832839341.a n = A052103 n

end A052103

/-!
# A052104: Numerators of coefficients of the formal power series a(x) such that a(a(x)) = exp(x) - 1.

The programs for A052104, there is no canonical definition to state claims against.
-/

/-! ## A052104.P12277807699616779081

`A052122(n)/gcd(A000165(n), A052122(n))`
-/

namespace A052104.P12277807699616779081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052122 n : ℚ) / (Int.gcd (A000165 n) (A052122 n) : ℚ)

end

end A052104.P12277807699616779081

/-! ## A052104.P8936038186708406388

`A052122(n)%record[A264598(n+3)]`
-/

namespace A052104.P8936038186708406388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264598 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052122 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A052104.P8936038186708406388

/-! ## A052104.P9672492388797073900

`A052122(n)/A339876(A320921(n))`
-/

namespace A052104.P9672492388797073900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052122 n : ℚ) / (A339876 (A320921 n).toNat : ℚ)

end

end A052104.P9672492388797073900

/-! ## A052104.P18042215802862053160

`A052122(n)/A147754(A341515(n+1))`
-/

namespace A052104.P18042215802862053160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052122 n : ℚ) / (A147754 (A341515 (n + 1)).toNat : ℚ)

end

end A052104.P18042215802862053160

/-! ## A052104.P18089109105022839580

`A052122(n)/A160338(A039658(2*(n+1)))`
-/

namespace A052104.P18089109105022839580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052122 n : ℚ) / (A160338 (A039658 (2 * (n + 1))).toNat : ℚ)

end

end A052104.P18089109105022839580

/-!
# A052105: Denominators of coefficients in the formal power series a(x) such that a(a(x)) = exp(x) - 1.

The programs for A052105, there is no canonical definition to state claims against.
-/

/-! ## A052105.P7389744207120159530

`A119005(A167546(n+2))`
-/

namespace A052105.P7389744207120159530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119005 (A167546 (n + 2)).toNat

end

end A052105.P7389744207120159530

/-! ## A052105.P10276548781971764980

`A065033(A000165(n)*A003987(n))`
-/

namespace A052105.P10276548781971764980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000165 n * A003987 n).toNat

end

end A052105.P10276548781971764980

/-!
# A052106: a(n) = lcm(n, n - phi(n)).

The programs for A052106, the canonical program `A052106.P2973224665383898621` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052106 has offset 1).

The definition of A052106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, n+1-A000010(n+1))` (program `A052106.P2973224665383898621`, by `A052106.P2973224665383898621.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052106.P7071652729131611480

`lcm(n+1, A051953(n+1))`
-/

namespace A052106.P7071652729131611480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A051953 (n + 1))

end

end A052106.P7071652729131611480

namespace A052106

/-- `lcm(n+1, A051953(n+1))` -/
def P7071652729131611480.Spec : Prop :=
  ∀ n, (P7071652729131611480.a n : ℤ) = A052106 (n + 1)

end A052106

/-! ## A052106.P2973224665383898621

`lcm(n+1, n+1-A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A052106

/-- `lcm(n+1, n+1-A000010(n+1))` -/
def P2973224665383898621.Spec : Prop :=
  ∀ n, (P2973224665383898621.a n : ℤ) = A052106 (n + 1)

theorem P2973224665383898621.correct : P2973224665383898621.Spec := by
  intro n
  simp only [A052106, Nat.add_sub_cancel]

end A052106

/-! ## A052106.P710324413548280341

`(n+1)*A076511(n+1)`
-/

namespace A052106.P710324413548280341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076511 (n + 1)

end

end A052106.P710324413548280341

namespace A052106

/-- `(n+1)*A076511(n+1)` -/
def P710324413548280341.Spec : Prop :=
  ∀ n, P710324413548280341.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P16051141189186168479

`lcm(A051953(n+1), A131738(n))`
-/

namespace A052106.P16051141189186168479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051953 (n + 1)) (A131738 n)

end

end A052106.P16051141189186168479

namespace A052106

/-- `lcm(A051953(n+1), A131738(n))` -/
def P16051141189186168479.Spec : Prop :=
  ∀ n, (P16051141189186168479.a n : ℤ) = A052106 (n + 1)

end A052106

/-! ## A052106.P17603320650707895715

`A050399(n+1)-A009262(n+1)`
-/

namespace A052106.P17603320650707895715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (n + 1) - A009262 (n + 1)

end

end A052106.P17603320650707895715

namespace A052106

/-- `A050399(n+1)-A009262(n+1)` -/
def P17603320650707895715.Spec : Prop :=
  ∀ n, P17603320650707895715.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P3159771357838122464

`A051953(n+1)*A109395(n+1)`
-/

namespace A052106.P3159771357838122464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A109395 (n + 1)

end

end A052106.P3159771357838122464

namespace A052106

/-- `A051953(n+1)*A109395(n+1)` -/
def P3159771357838122464.Spec : Prop :=
  ∀ n, P3159771357838122464.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P5693673707600366903

`A053650(n+1)/A009195(n+1)`
-/

namespace A052106.P5693673707600366903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A052106.P5693673707600366903

namespace A052106

/-- `A053650(n+1)/A009195(n+1)` -/
def P5693673707600366903.Spec : Prop :=
  ∀ n, P5693673707600366903.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P3550603581666338371

`A052100(n+1)/A076512(n+1)`
-/

namespace A052106.P3550603581666338371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052100 (n + 1) : ℚ) / (A076512 (n + 1) : ℚ)

end

end A052106.P3550603581666338371

namespace A052106

/-- `A052100(n+1)/A076512(n+1)` -/
def P3550603581666338371.Spec : Prop :=
  ∀ n, P3550603581666338371.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P5537514985990028810

`lcm(A219428(n+1)+1, A000027(n+1))`
-/

namespace A052106.P5537514985990028810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219428 (n + 1) + 1) (A000027 (n + 1))

end

end A052106.P5537514985990028810

namespace A052106

/-- `lcm(A219428(n+1)+1, A000027(n+1))` -/
def P5537514985990028810.Spec : Prop :=
  ∀ n, (P5537514985990028810.a n : ℤ) = A052106 (n + 1)

end A052106

/-! ## A052106.P11501208896149923728

`(n+1)*A051953(n+1)/A009195(n+1)`
-/

namespace A052106.P11501208896149923728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A052106.P11501208896149923728

namespace A052106

/-- `(n+1)*A051953(n+1)/A009195(n+1)` -/
def P11501208896149923728.Spec : Prop :=
  ∀ n, P11501208896149923728.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P4753606679028364965

`(A000010(n+1)-A083254(n+1))*A109395(n+1)`
-/

namespace A052106.P4753606679028364965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A083254 (n + 1)) * A109395 (n + 1)

end

end A052106.P4753606679028364965

namespace A052106

/-- `(A000010(n+1)-A083254(n+1))*A109395(n+1)` -/
def P4753606679028364965.Spec : Prop :=
  ∀ n, P4753606679028364965.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P13773787269620423787

`(A107473(n+1)-A076512(n+1))*A051953(n+1)`
-/

namespace A052106.P13773787269620423787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107473 (n + 1) - A076512 (n + 1)) * A051953 (n + 1)

end

end A052106.P13773787269620423787

namespace A052106

/-- `(A107473(n+1)-A076512(n+1))*A051953(n+1)` -/
def P13773787269620423787.Spec : Prop :=
  ∀ n, P13773787269620423787.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P11046969066621688039

`(A345892(n+1)-A000010(n+1))/A009195(n+1)`
-/

namespace A052106.P11046969066621688039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345892 (n + 1) - A000010 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A052106.P11046969066621688039

namespace A052106

/-- `(A345892(n+1)-A000010(n+1))/A009195(n+1)` -/
def P11046969066621688039.Spec : Prop :=
  ∀ n, P11046969066621688039.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P9142213005600689775

`A003557(n+1)*A109395(n+1)*A318305(n+1)`
-/

namespace A052106.P9142213005600689775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A109395 (n + 1) * A318305 (n + 1)

end

end A052106.P9142213005600689775

namespace A052106

/-- `A003557(n+1)*A109395(n+1)*A318305(n+1)` -/
def P9142213005600689775.Spec : Prop :=
  ∀ n, P9142213005600689775.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P123668599069263967

`A009262(n+1)/A000010(n+1)*A051953(n+1)`
-/

namespace A052106.P123668599069263967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A051953 (n + 1) : ℚ)

end

end A052106.P123668599069263967

namespace A052106

/-- `A009262(n+1)/A000010(n+1)*A051953(n+1)` -/
def P123668599069263967.Spec : Prop :=
  ∀ n, P123668599069263967.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P9501659784312313458

`A009195(n+1)/A000010(n+1)*A052100(n+1)`
-/

namespace A052106.P9501659784312313458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009195 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A052100 (n + 1) : ℚ)

end

end A052106.P9501659784312313458

namespace A052106

/-- `A009195(n+1)/A000010(n+1)*A052100(n+1)` -/
def P9501659784312313458.Spec : Prop :=
  ∀ n, P9501659784312313458.a n = (A052106 (n + 1) : ℚ)

end A052106

/-! ## A052106.P12154303265946149009

`A109395(n+1)²*A009195(n+1)-A009262(n+1)`
-/

namespace A052106.P12154303265946149009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) ^ 2 * A009195 (n + 1) - A009262 (n + 1)

end

end A052106.P12154303265946149009

namespace A052106

/-- `A109395(n+1)²*A009195(n+1)-A009262(n+1)` -/
def P12154303265946149009.Spec : Prop :=
  ∀ n, P12154303265946149009.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P10330556450804384828

`lcm(n+1, ∑{#}[n, 1-floor(1/gcd(n+1, #))])`
-/

namespace A052106.P10330556450804384828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋))

end

end A052106.P10330556450804384828

namespace A052106

/-- `lcm(n+1, ∑{#}[n, 1-floor(1/gcd(n+1, #))])` -/
def P10330556450804384828.Spec : Prop :=
  ∀ n, (P10330556450804384828.a n : ℤ) = A052106 (n + 1)

end A052106

/-! ## A052106.P10623582385152833220

`(n+1)*A308121(A005728(n))`
-/

namespace A052106.P10623582385152833220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308121 (A005728 n).toNat

end

end A052106.P10623582385152833220

namespace A052106

/-- `(n+1)*A308121(A005728(n))` -/
def P10623582385152833220.Spec : Prop :=
  ∀ n, P10623582385152833220.a n = A052106 (n + 1)

end A052106

/-! ## A052106.P1538289115461264830

`A051953(A050399(n+1))`
-/

namespace A052106.P1538289115461264830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A050399 (n + 1)).toNat

end

end A052106.P1538289115461264830

namespace A052106

/-- `A051953(A050399(n+1))` -/
def P1538289115461264830.Spec : Prop :=
  ∀ n, P1538289115461264830.a n = A052106 (n + 1)

end A052106

/-!
# A052107: Number of self-complementary 3-multigraphs on n nodes.

The programs for A052107, there is no canonical definition to state claims against.
-/

/-! ## A052107.P6403023363919591680

`A142150(A128721(n)+comp[∑[n]]-n)`
-/

namespace A052107.P6403023363919591680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A128721 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A052107.P6403023363919591680

/-! ## A052107.P18383458190533689483

`A027656(A128721(n)+A003056(n))`
-/

namespace A052107.P18383458190533689483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A128721 n + A003056 n).toNat

end

end A052107.P18383458190533689483

/-! ## A052107.P5614918637397801897

`and(A008619(A006669(n)), A055764(n))`
-/

namespace A052107.P5614918637397801897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008619 (A006669 n).toNat) (A055764 n)

end

end A052107.P5614918637397801897

/-! ## A052107.P2846269798262513818

`and(A001651(A029651(n)), A113247(n))`
-/

namespace A052107.P2846269798262513818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001651 (A029651 n).toNat) (A113247 n)

end

end A052107.P2846269798262513818

/-!
# A052109: a(1)=1, a(n)=a(n-a(1))+a(n-a(2))+a(n-a(3))+....a(n-a(n-1)) for n>1, with convention that a(i)=0 for i<=0.

The programs for A052109, there is no canonical definition to state claims against.
-/

/-! ## A052109.P9962802280685803551

`A331904(12*a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052109.P9962802280685803551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A331904 (12 * a (n - 1) + 1).toNat

end

end A052109.P9962802280685803551

/-! ## A052109.P17460924276762362091

`A265370(A150166(n)+2)`
-/

namespace A052109.P17460924276762362091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A150166 n + 2).toNat

end

end A052109.P17460924276762362091

/-! ## A052109.P6362903947322440962

`A303590(a(n-1))+A001221(2*n)` with `a(0)=1, a(1)=1`
-/

namespace A052109.P6362903947322440962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A303590 (a (n - 1)).toNat + A001221 (2 * n)

end

end A052109.P6362903947322440962

/-! ## A052109.P5733049566760995573

`A006958(n+1)-ceil(2^(n-1))%A191148(n+1)`
-/

namespace A052109.P5733049566760995573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006958 (n + 1) - Int.tmod ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A191148 (n + 1))

end

end A052109.P5733049566760995573

/-!
# A052111: Number of self-complementary 2-multigraphs with loops on n nodes.

The programs for A052111, there is no canonical definition to state claims against.
-/

/-! ## A052111.P14749946413078363905

`A262869(A161630(n))+A007727(n)`
-/

namespace A052111.P14749946413078363905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A161630 n).toNat + A007727 n

end

end A052111.P14749946413078363905

/-! ## A052111.P11618464209592000107

`A323821(A001147(n))+A257276(n)`
-/

namespace A052111.P11618464209592000107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323821 (A001147 n).toNat + A257276 n

end

end A052111.P11618464209592000107

/-!
# A052112: Number of self-complementary directed 2-multigraphs on n nodes.

The programs for A052112, there is no canonical definition to state claims against.
-/

/-! ## A052112.P13425584725216688320

`A026670(n)*A133256(A354241(n))`
-/

namespace A052112.P13425584725216688320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 n * A133256 (A354241 n).toNat

end

end A052112.P13425584725216688320

/-!
# A052115: Number of nonnegative integer pairs (i,j) with binomial(i+r,r) + binomial(j+r,r) <= binomial(n+r,r), r=2.

The programs for A052115, there is no canonical definition to state claims against.
-/

/-! ## A052115.P9788248635409150154

`∑[Δ[A109413(n)]-2]`
-/

namespace A052115.P9788248635409150154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052115.P9788248635409150154

/-! ## A052115.P1055599531339951314

`A109413(n+1)-(2*n+3)`
-/

namespace A052115.P1055599531339951314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109413 (n + 1) - (2 * n + 3 : ℤ)

end

end A052115.P1055599531339951314

/-! ## A052115.P12444025786000502985

`∑[A023444(Δ[A109413(n)])]`
-/

namespace A052115.P12444025786000502985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052115.P12444025786000502985

/-! ## A052115.P9356391838798389274

`record[A109413(n)-A223134(n)]`
-/

namespace A052115.P9356391838798389274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109413 n - A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052115.P9356391838798389274

/-! ## A052115.P13029854122517971438

`∑[A109413(n+1)-(A109413(n)+2)]`
-/

namespace A052115.P13029854122517971438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109413 (n + 1) - (A109413 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052115.P13029854122517971438

/-!
# A052116: Number of nonnegative integer pairs (i,j) with binomial(i+r,r) + binomial(j+r,r) <= binomial(n+r,r), r=3.

The programs for A052116, there is no canonical definition to state claims against.
-/

/-! ## A052116.P4174692139509883038

`∑{e}[A001710(n), 1-#]+n²`
-/

namespace A052116.P4174692139509883038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ)) + (n ^ 2 : ℤ)

end

end A052116.P4174692139509883038

/-! ## A052116.P13020455992567417233

`A397972(n)+A341027(A047336(3*n+1))`
-/

namespace A052116.P13020455992567417233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A341027 ((A047336 (3 * n + 1)).toNat + 220)

end

end A052116.P13020455992567417233

/-! ## A052116.P14769494601298367865

`A319413(A098167(n+2))`
-/

namespace A052116.P14769494601298367865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A098167 (n + 2)).toNat

end

end A052116.P14769494601298367865

/-! ## A052116.P3789513245403393784

`A002262(n²*A139592(n))`
-/

namespace A052116.P3789513245403393784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n ^ 2 : ℤ) * A139592 n).toNat

end

end A052116.P3789513245403393784

/-! ## A052116.P10415835953041896957

`A078435(n+1)-A010060(A034012(n+1))`
-/

namespace A052116.P10415835953041896957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - A010060 (A034012 (n + 1)).toNat

end

end A052116.P10415835953041896957

/-!
# A052117: Number of nonnegative integer pairs (i,j) with binomial(i+r,r) + binomial(j+r,r) <= binomial(n+r,r), r=4.

The programs for A052117, there is no canonical definition to state claims against.
-/

/-! ## A052117.P1760941922200649998

`n²-A131576(A179215(n))`
-/

namespace A052117.P1760941922200649998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A131576 (A179215 n).toNat

end

end A052117.P1760941922200649998

/-! ## A052117.P2731197813064245118

`n²+1-A000005(A020094(n))`
-/

namespace A052117.P2731197813064245118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - A000005 (A020094 n).toNat

end

end A052117.P2731197813064245118

/-! ## A052117.P5563364401816707294

`A002522(n)-A035218(A049606(n))`
-/

namespace A052117.P5563364401816707294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A035218 (A049606 n).toNat

end

end A052117.P5563364401816707294

/-! ## A052117.P1282325200583593838

`∑[2*n]-record[A359677(3*(n+1))]`
-/

namespace A052117.P1282325200583593838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A052117.P1282325200583593838

/-! ## A052117.P8886110291291488927

`n²-A102669(A146673(n+1))`
-/

namespace A052117.P8886110291291488927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A102669 (A146673 (n + 1)).toNat

end

end A052117.P8886110291291488927

/-!
# A052118: Number of nonnegative integer pairs (i,j) with binomial(i+r,r) + binomial(j+r,r) <= binomial(n+r,r), r=5.

The programs for A052118, there is no canonical definition to state claims against.
-/

/-! ## A052118.P6872574864542699697

`n²-A260728(A145455(n))`
-/

namespace A052118.P6872574864542699697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A260728 (A145455 n).toNat

end

end A052118.P6872574864542699697

/-! ## A052118.P11543320800275045706

`n²+1-A049099(A076868(n))`
-/

namespace A052118.P11543320800275045706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - A049099 (A076868 n).toNat

end

end A052118.P11543320800275045706

/-! ## A052118.P11767172921886890167

`n²-A037803(A373671(n+1))`
-/

namespace A052118.P11767172921886890167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A037803 (A373671 (n + 1)).toNat

end

end A052118.P11767172921886890167

/-! ## A052118.P7665399837104763667

`A049581(A037270(n))-A211534(n)`
-/

namespace A052118.P7665399837104763667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A037270 n).toNat - A211534 n

end

end A052118.P7665399837104763667

/-! ## A052118.P11610450554806391566

`A002522(n)-A333939(A001678(n+1))`
-/

namespace A052118.P11610450554806391566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A333939 (A001678 (n + 1)).toNat

end

end A052118.P11610450554806391566

/-!
# A052119: Decimal expansion of number with continued fraction expansion 0, 1, 2, 3, 4, 5, 6, ...

The programs for A052119, there is no canonical definition to state claims against.
-/

/-! ## A052119.P10896356744695053236

`A247844(n+1)`
-/

namespace A052119.P10896356744695053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247844 (n + 1 + 1)

end

end A052119.P10896356744695053236

/-! ## A052119.P11842206710887647501

`Δ[∑[A247844(n)]%A017413(n)]`
-/

namespace A052119.P11842206710887647501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A017413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052119.P11842206710887647501

/-! ## A052119.P3327803259601036157

`Δ[A028310(∑[A247844(n)])]`
-/

namespace A052119.P3327803259601036157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052119.P3327803259601036157

/-!
# A052120: Number of 3-valent trees (= boron trees or binary trees) with n nodes.

The programs for A052120, there is no canonical definition to state claims against.
-/

/-! ## A052120.P8180816549915527478

`A000672(A057979(n))-Δ[A065033(n)]`
-/

namespace A052120.P8180816549915527478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 (A057979 n).toNat - (f1 (n + 1) - f1 n)

end

end A052120.P8180816549915527478

/-! ## A052120.P8484641404182254941

`char[A004273(n)]*A000672(A057979(n))`
-/

namespace A052120.P8484641404182254941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000672 (A057979 n).toNat

end

end A052120.P8484641404182254941

/-! ## A052120.P14610627345286340610

`A000672(A057979(n))-char[2-A000035(n)+n]`
-/

namespace A052120.P14610627345286340610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000035 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 (A057979 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A052120.P14610627345286340610

/-! ## A052120.P2540527825077933577

`lcm(A000672(A028242(n)), A073097(n))`
-/

namespace A052120.P2540527825077933577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000672 (A028242 n).toNat) (A073097 n)

end

end A052120.P2540527825077933577

/-! ## A052120.P6759252627378409108

`and(A000672(A057979(n)), A282123(n))`
-/

namespace A052120.P6759252627378409108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000672 (A057979 n).toNat) (A282123 n)

end

end A052120.P6759252627378409108

/-!
# A052121: Triangle of coefficients of polynomials enumerating trees with n labeled nodes by inversions.

The programs for A052121, there is no canonical definition to state claims against.
-/

/-! ## A052121.P16717430971811604547

`A235145(A015441(n))+A232433(n)`
-/

namespace A052121.P16717430971811604547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A015441 n).toNat + A232433 n

end

end A052121.P16717430971811604547

/-! ## A052121.P5074629536091658562

`A349520(A232433(n)^A105102(n))`
-/

namespace A052121.P5074629536091658562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (SequenceMachineLib.roundAway ((A232433 n : ℚ) ^ (A105102 n : ℤ))).toNat

end

end A052121.P5074629536091658562

/-! ## A052121.P11556827897762143339

`or(A232433(n), A347715(A004771(n)))`
-/

namespace A052121.P11556827897762143339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A232433 n) (A347715 (A004771 n).toNat)

end

end A052121.P11556827897762143339

/-! ## A052121.P10702467106311475754

`A232433(n)+A055641(A140158(n+1))`
-/

namespace A052121.P10702467106311475754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232433 n + A055641 (A140158 (n + 1)).toNat

end

end A052121.P10702467106311475754

/-!
# A052122: Numerators of coefficients in the e.g.f. a(x) such that a(a(x)) = exp(x) - 1.

The programs for A052122, there is no canonical definition to state claims against.
-/

/-! ## A052122.P12517160843569424761

`A184011(n)/gcd(A000079(n), A184011(n))`
-/

namespace A052122.P12517160843569424761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184011 n : ℚ) / (Int.gcd (A000079 n) (A184011 n) : ℚ)

end

end A052122.P12517160843569424761

/-! ## A052122.P16539987340464859956

`A052104(n)*A339876(A320921(n))`
-/

namespace A052122.P16539987340464859956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052104 n * A339876 (A320921 n).toNat

end

end A052122.P16539987340464859956

/-! ## A052122.P1363644695374191063

`A052104(n)*A147754(A341515(n+1))`
-/

namespace A052122.P1363644695374191063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052104 n * A147754 (A341515 (n + 1)).toNat

end

end A052122.P1363644695374191063

/-! ## A052122.P926285128708611519

`A001710(A018843(3*(n+1)))*A052104(n)`
-/

namespace A052122.P926285128708611519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A018843 (3 * (n + 1))).toNat * A052104 n

end

end A052122.P926285128708611519

/-!
# A052124: Expansion of e.g.f. exp(-2*x)/(1-x)^3.

The programs for A052124, the canonical program `A052124.P12489117384611703631` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052124 has offset 0).

The definition of A052124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052124.P12489117384611703631

`n*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052124

/-- `n*a(n-1)+2*(n-1)*a(n-2)` -/
def P12489117384611703631.Spec : Prop :=
  ∀ n, P12489117384611703631.a n = A052124 n

theorem P12489117384611703631.correct : P12489117384611703631.Spec := by
  intro n
  simp only [A052124]

end A052124

/-! ## A052124.P8804475217980951258

`A087981(n+2)/(2*(n+1))`
-/

namespace A052124.P8804475217980951258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087981 (n + 2) : ℚ) / (2 * (n + 1) : ℚ)

end

end A052124.P8804475217980951258

namespace A052124

/-- `A087981(n+2)/(2*(n+1))` -/
def P8804475217980951258.Spec : Prop :=
  ∀ n, P8804475217980951258.a n = (A052124 n : ℚ)

end A052124

/-! ## A052124.P17758810617087500175

`A087981(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052124.P17758810617087500175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087981 n + (n : ℤ) * a (n - 1)

end

end A052124.P17758810617087500175

namespace A052124

/-- `A087981(n)+n*a(n-1)` -/
def P17758810617087500175.Spec : Prop :=
  ∀ n, P17758810617087500175.a n = A052124 n

end A052124

/-! ## A052124.P5915330285658469775

`A052127(n)/n!`
-/

namespace A052124.P5915330285658469775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052127 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052124.P5915330285658469775

namespace A052124

/-- `A052127(n)/n!` -/
def P5915330285658469775.Spec : Prop :=
  ∀ n, P5915330285658469775.a n = (A052124 n : ℚ)

end A052124

/-! ## A052124.P12313697034454738556

`A052127(n)/A000142(n)`
-/

namespace A052124.P12313697034454738556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052127 n : ℚ) / (A000142 n : ℚ)

end

end A052124.P12313697034454738556

namespace A052124

/-- `A052127(n)/A000142(n)` -/
def P12313697034454738556.Spec : Prop :=
  ∀ n, P12313697034454738556.a n = (A052124 n : ℚ)

end A052124

/-!
# A052125: a(n) = n/A034684(n).

The programs for A052125, there is no canonical definition to state claims against.
-/

/-! ## A052125.P7407815060517203080

`(n+1)/A034684(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052125.P7407815060517203080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034684 (n + 1) : ℚ)

end

end A052125.P7407815060517203080

/-! ## A052125.P4953498468744165817

`A324388(gcd(n+1, A120112(n)))`
-/

namespace A052125.P4953498468744165817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (Int.gcd (n + 1 : ℤ) (A120112 n))

end

end A052125.P4953498468744165817

/-! ## A052125.P6827990128743566921

`A324388(n+1)-n*A010055(n+1)`
-/

namespace A052125.P6827990128743566921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1) - (n : ℤ) * A010055 (n + 1)

end

end A052125.P6827990128743566921

/-! ## A052125.P17850019328866879050

`gcd(n*A324388(n+1), A290480(n+1))`
-/

namespace A052125.P17850019328866879050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A324388 (n + 1)) (A290480 (n + 1))

end

end A052125.P17850019328866879050

/-! ## A052125.P17053785036873265646

`(n+1)/gcd(A027620(n), A139084(n+1))`
-/

namespace A052125.P17053785036873265646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A027620 n) (A139084 (n + 1)) : ℚ)

end

end A052125.P17053785036873265646

/-! ## A052125.P4762695442563057260

`A077610(∑[A034444(n+1)%(n+1)]+2)`
-/

namespace A052125.P4762695442563057260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034444 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A052125.P4762695442563057260

/-! ## A052125.P5488786409907323624

`A077610(record[abs(A077610(n+1)-n)])`
-/

namespace A052125.P5488786409907323624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077610 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052125.P5488786409907323624

/-! ## A052125.P12252264493632481716

`A324388(n+1)/A308819(n+1)*A308819(n)`
-/

namespace A052125.P12252264493632481716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324388 (n + 1) : ℚ) / (A308819 (n + 1) : ℚ) * (A308819 n : ℚ)

end

end A052125.P12252264493632481716

/-! ## A052125.P14826282531673976496

`A324388((n+1)*A000040(n+1))/A000040(n+1)`
-/

namespace A052125.P14826282531673976496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324388 ((n + 1 : ℤ) * A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A052125.P14826282531673976496

/-!
# A052126: a(1) = 1; for n>1, a(n)=n/(greatest prime dividing n).

The programs for A052126, the canonical program `A052126.P1944428405920482243` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052126 has offset 1).

The definition of A052126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052126.P11840957904995036554

`n+1-A171462(n+1)`
-/

namespace A052126.P11840957904995036554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A171462 (n + 1)

end

end A052126.P11840957904995036554

namespace A052126

/-- `n+1-A171462(n+1)` -/
def P11840957904995036554.Spec : Prop :=
  ∀ n, P11840957904995036554.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P1944428405920482243

`(n+1)/A006530(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A052126

/-- `(n+1)/A006530(n+1)` -/
def P1944428405920482243.Spec : Prop :=
  ∀ n, P1944428405920482243.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P2550541895781356593

`A130065(n+1)/A020639(n+1)`
-/

namespace A052126.P2550541895781356593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130065 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A052126.P2550541895781356593

namespace A052126

/-- `A130065(n+1)/A020639(n+1)` -/
def P2550541895781356593.Spec : Prop :=
  ∀ n, P2550541895781356593.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P9224680077789137542

`1-A171462(1+n)+n`
-/

namespace A052126.P9224680077789137542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171462 (1 + n) + (n : ℤ)

end

end A052126.P9224680077789137542

namespace A052126

/-- `1-A171462(1+n)+n` -/
def P9224680077789137542.Spec : Prop :=
  ∀ n, P9224680077789137542.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P1823769861589568710

`A335876(n+1)-(n+1)`
-/

namespace A052126.P1823769861589568710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (n + 1) - (n + 1 : ℤ)

end

end A052126.P1823769861589568710

namespace A052126

/-- `A335876(n+1)-(n+1)` -/
def P1823769861589568710.Spec : Prop :=
  ∀ n, P1823769861589568710.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P10300617569956643171

`A269304(n+1)-(n+2)`
-/

namespace A052126.P10300617569956643171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269304 (n + 1) - (n + 2 : ℤ)

end

end A052126.P10300617569956643171

namespace A052126

/-- `A269304(n+1)-(n+2)` -/
def P10300617569956643171.Spec : Prop :=
  ∀ n, P10300617569956643171.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P10484964240058494460

`A342768(n+1)/(n+1)`
-/

namespace A052126.P10484964240058494460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052126.P10484964240058494460

namespace A052126

/-- `A342768(n+1)/(n+1)` -/
def P10484964240058494460.Spec : Prop :=
  ∀ n, P10484964240058494460.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P297743749268831629

`gcd(n+1, A126288(n+1))`
-/

namespace A052126.P297743749268831629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126288 (n + 1))

end

end A052126.P297743749268831629

namespace A052126

/-- `gcd(n+1, A126288(n+1))` -/
def P297743749268831629.Spec : Prop :=
  ∀ n, (P297743749268831629.a n : ℤ) = A052126 (n + 1)

end A052126

/-! ## A052126.P7337059453771399443

`(n+1)²/A253560(n+1)`
-/

namespace A052126.P7337059453771399443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A253560 (n + 1) : ℚ)

end

end A052126.P7337059453771399443

namespace A052126

/-- `(n+1)²/A253560(n+1)` -/
def P7337059453771399443.Spec : Prop :=
  ∀ n, P7337059453771399443.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P13779743461525290722

`gcd((n+1)², A126289(n+1))`
-/

namespace A052126.P13779743461525290722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A126289 (n + 1))

end

end A052126.P13779743461525290722

namespace A052126

/-- `gcd((n+1)², A126289(n+1))` -/
def P13779743461525290722.Spec : Prop :=
  ∀ n, (P13779743461525290722.a n : ℤ) = A052126 (n + 1)

end A052126

/-! ## A052126.P1768801601714201572

`floor(n/A111089(n+1))+1`
-/

namespace A052126.P1768801601714201572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A111089 (n + 1) : ℚ)⌋ + 1

end

end A052126.P1768801601714201572

namespace A052126

/-- `floor(n/A111089(n+1))+1` -/
def P1768801601714201572.Spec : Prop :=
  ∀ n, P1768801601714201572.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P11463770499806053045

`floor(A129597(n+1)/(2*n+1))`
-/

namespace A052126.P11463770499806053045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129597 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A052126.P11463770499806053045

namespace A052126

/-- `floor(A129597(n+1)/(2*n+1))` -/
def P11463770499806053045.Spec : Prop :=
  ∀ n, P11463770499806053045.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P5295555506512289608

`(n+1)/(A070229(n+1)-(n+1))`
-/

namespace A052126.P5295555506512289608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A070229 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A052126.P5295555506512289608

namespace A052126

/-- `(n+1)/(A070229(n+1)-(n+1))` -/
def P5295555506512289608.Spec : Prop :=
  ∀ n, P5295555506512289608.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P4258925806049360817

`floor((2*n-(n-1))/A006530(2*n-(n-1)))`
-/

namespace A052126.P4258925806049360817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ) / (A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A052126.P4258925806049360817

namespace A052126

/-- `floor((2*n-(n-1))/A006530(2*n-(n-1)))` -/
def P4258925806049360817.Spec : Prop :=
  ∀ n, P4258925806049360817.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P13680831292464836421

`A032742(A130065(n+1))`
-/

namespace A052126.P13680831292464836421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A130065 (n + 1)).toNat

end

end A052126.P13680831292464836421

namespace A052126

/-- `A032742(A130065(n+1))` -/
def P13680831292464836421.Spec : Prop :=
  ∀ n, P13680831292464836421.a n = A052126 (n + 1)

end A052126

/-! ## A052126.P11731676402698280903

`A129597(n+1)/A103517(n)`
-/

namespace A052126.P11731676402698280903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129597 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A052126.P11731676402698280903

namespace A052126

/-- `A129597(n+1)/A103517(n)` -/
def P11731676402698280903.Spec : Prop :=
  ∀ n, P11731676402698280903.a n = (A052126 (n + 1) : ℚ)

end A052126

/-! ## A052126.P16673465895832899386

`gcd(A126289(n+1), A218503(n))`
-/

namespace A052126.P16673465895832899386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126289 (n + 1)) (A218503 n)

end

end A052126.P16673465895832899386

namespace A052126

/-- `gcd(A126289(n+1), A218503(n))` -/
def P16673465895832899386.Spec : Prop :=
  ∀ n, (P16673465895832899386.a n : ℤ) = A052126 (n + 1)

end A052126

/-! ## A052126.P13131622789767373586

`gcd(A103517(n), A253550(n+1))`
-/

namespace A052126.P13131622789767373586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A253550 (n + 1))

end

end A052126.P13131622789767373586

namespace A052126

/-- `gcd(A103517(n), A253550(n+1))` -/
def P13131622789767373586.Spec : Prop :=
  ∀ n, (P13131622789767373586.a n : ℤ) = A052126 (n + 1)

end A052126

/-! ## A052126.P12368655145088288581

`gcd(A131738(n), A252462(n+1))`
-/

namespace A052126.P12368655145088288581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A252462 (n + 1))

end

end A052126.P12368655145088288581

namespace A052126

/-- `gcd(A131738(n), A252462(n+1))` -/
def P12368655145088288581.Spec : Prop :=
  ∀ n, (P12368655145088288581.a n : ℤ) = A052126 (n + 1)

end A052126

/-! ## A052126.P8160861927639816147

`gcd(A153152(n), A233511(n+1))`
-/

namespace A052126.P8160861927639816147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153152 n) (A233511 (n + 1))

end

end A052126.P8160861927639816147

namespace A052126

/-- `gcd(A153152(n), A233511(n+1))` -/
def P8160861927639816147.Spec : Prop :=
  ∀ n, (P8160861927639816147.a n : ℤ) = A052126 (n + 1)

end A052126

/-!
# A052127: Sum_{n >= 0} a(n) * x^n / n!^2 = exp(-2*x)/(1-x)^3.

The programs for A052127, the canonical program `A052127.P60015521498032768` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052127 has offset 0).

The definition of A052127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052127.P60015521498032768

`n!*A052124(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052127

/-- `n!*A052124(n)` -/
def P60015521498032768.Spec : Prop :=
  ∀ n, P60015521498032768.a n = A052127 n

theorem P60015521498032768.correct : P60015521498032768.Spec := by
  intro n
  simp only [A052127]

end A052127

/-! ## A052127.P12506651494240327153

`A000142(n)*A052124(n)`
-/

namespace A052127.P12506651494240327153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052124 n

end

end A052127.P12506651494240327153

namespace A052127

/-- `A000142(n)*A052124(n)` -/
def P12506651494240327153.Spec : Prop :=
  ∀ n, P12506651494240327153.a n = A052127 n

end A052127

/-! ## A052127.P11772312079868733241

`A087981(n+2)/Δ[A002378(n)]*n!`
-/

namespace A052127.P11772312079868733241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087981 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (Nat.factorial n : ℚ)

end

end A052127.P11772312079868733241

namespace A052127

/-- `A087981(n+2)/Δ[A002378(n)]*n!` -/
def P11772312079868733241.Spec : Prop :=
  ∀ n, P11772312079868733241.a n = (A052127 n : ℚ)

end A052127

/-! ## A052127.P8292411241440366968

`∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]*A052124(n)`
-/

namespace A052127.P8292411241440366968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000522 k : ℚ) * (Nat.choose n k : ℚ)) * (A052124 n : ℚ)

end

end A052127.P8292411241440366968

namespace A052127

/-- `∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]*A052124(n)` -/
def P8292411241440366968.Spec : Prop :=
  ∀ n, P8292411241440366968.a n = (A052127 n : ℚ)

end A052127

/-! ## A052127.P7389342913907549044

`A052124(n)*A119502(A000217(n))`
-/

namespace A052127.P7389342913907549044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052124 n * A119502 (A000217 n).toNat

end

end A052127.P7389342913907549044

namespace A052127

/-- `A052124(n)*A119502(A000217(n))` -/
def P7389342913907549044.Spec : Prop :=
  ∀ n, P7389342913907549044.a n = A052127 n

end A052127

/-!
# A052128: a(1) = 1; for n > 1, a(n) is the largest divisor of n that is coprime to a larger divisor of n.

The programs for A052128, there is no canonical definition to state claims against.
-/

/-! ## A052128.P5241999044095394668

`(n+1)/A354933(n+1)`
-/

namespace A052128.P5241999044095394668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354933 (n + 1) : ℚ)

end

end A052128.P5241999044095394668

/-! ## A052128.P12157875446647877591

`A354933(n+1)-A076388(n+1)`
-/

namespace A052128.P12157875446647877591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A076388 (n + 1)

end

end A052128.P12157875446647877591

/-! ## A052128.P5052163128956085314

`(n+1)/(A354995(n+1)+A034699(n+1))`
-/

namespace A052128.P5052163128956085314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354995 (n + 1) + A034699 (n + 1) : ℚ)

end

end A052128.P5052163128956085314

/-! ## A052128.P13507622978995614018

`(n+1)/(A354995(n+1)+1-A081805(n+1)+n)`
-/

namespace A052128.P13507622978995614018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354995 (n + 1) + (1 - A081805 (n + 1) + (n : ℤ)) : ℚ)

end

end A052128.P13507622978995614018

/-! ## A052128.P13232783614103364331

`(n+1)/(A354995(n+1)+(n+1)/A284600(n+1))`
-/

namespace A052128.P13232783614103364331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((A354995 (n + 1) : ℚ) + (n + 1 : ℚ) / (A284600 (n + 1) : ℚ))

end

end A052128.P13232783614103364331

/-! ## A052128.P9940910984210196641

`(n+1)/(A354995(n+1)+A304233(n+1)/A034684(n+1))`
-/

namespace A052128.P9940910984210196641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((A354995 (n + 1) : ℚ) + (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ))

end

end A052128.P9940910984210196641

/-! ## A052128.P11516035079841310581

`(n+1)/(A354995(n+1)+A210208(A210241(n+1)))`
-/

namespace A052128.P11516035079841310581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354995 (n + 1) + A210208 (A210241 (n + 1)).toNat : ℚ)

end

end A052128.P11516035079841310581

/-! ## A052128.P16171655552669513655

`(n+1)/(A354995(n+1)+A210208(A022559(n+1)+n+1))`
-/

namespace A052128.P16171655552669513655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354995 (n + 1) + A210208 (A022559 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

end

end A052128.P16171655552669513655

/-! ## A052128.P7824404161641438312

`(n+1)/(A354995(n+1)+gcd(n+1, A081472(n+1)))`
-/

namespace A052128.P7824404161641438312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A354995 (n + 1) + (Int.gcd (n + 1 : ℤ) (A081472 (n + 1)) : ℤ) : ℚ)

end

end A052128.P7824404161641438312

/-! ## A052128.P14502507501468161962

`A010766(A354933(n+1)+A000217(n))`
-/

namespace A052128.P14502507501468161962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A354933 (n + 1) + A000217 n).toNat

end

end A052128.P14502507501468161962

/-! ## A052128.P11634906107603630669

`A049834(A354933(n+1)+A000217(n))`
-/

namespace A052128.P11634906107603630669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A354933 (n + 1) + A000217 n).toNat

end

end A052128.P11634906107603630669

/-! ## A052128.P9287418237327653762

`A010766(A034699(n+1)+A354995(n+1)+A000217(n))`
-/

namespace A052128.P9287418237327653762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A034699 (n + 1) + (A354995 (n + 1) + A000217 n)).toNat

end

end A052128.P9287418237327653762

/-!
# A052129: a(0) = 1; thereafter a(n) = n*a(n-1)^2.

The programs for A052129, the canonical program `A052129.P1812792631327916075` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052129 has offset 0).

The definition of A052129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)²` (program `A052129.P1812792631327916075`, by `A052129.P1812792631327916075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052129.P1812792631327916075

`n*a(n-1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052129

/-- `n*a(n-1)²` -/
def P1812792631327916075.Spec : Prop :=
  ∀ n, (P1812792631327916075.a n : ℤ) = A052129 n

theorem P1812792631327916075.correct : P1812792631327916075.Spec := by
  intro n
  simp only [A052129]

end A052129

/-! ## A052129.P3736282902840522283

`a(n-1)²*n` with `a(0)=1`
-/

namespace A052129.P3736282902840522283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 * n

end

end A052129.P3736282902840522283

namespace A052129

/-- `a(n-1)²*n` -/
def P3736282902840522283.Spec : Prop :=
  ∀ n, (P3736282902840522283.a n : ℤ) = A052129 n

end A052129

/-! ## A052129.P11814942699147012118

`a(n-1)^2*n` with `a(0)=1`
-/

namespace A052129.P11814942699147012118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 * n

end

end A052129.P11814942699147012118

namespace A052129

/-- `a(n-1)^2*n` -/
def P11814942699147012118.Spec : Prop :=
  ∀ n, (P11814942699147012118.a n : ℤ) = A052129 n

end A052129

/-! ## A052129.P17646226825495943090

`floor(n/acot(a(n-1)²))` with `a(0)=1`
-/

namespace A052129.P17646226825495943090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (a (n - 1) ^ 2 : ℝ)⌋

end

end A052129.P17646226825495943090

namespace A052129

/-- `floor(n/acot(a(n-1)²))` -/
def P17646226825495943090.Spec : Prop :=
  ∀ n, P17646226825495943090.a n = A052129 n

end A052129

/-! ## A052129.P12684742157848920375

`a(n-1)²/tan(acot(n))` with `a(0)=1`
-/

namespace A052129.P12684742157848920375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A052129.P12684742157848920375

namespace A052129

/-- `a(n-1)²/tan(acot(n))` -/
def P12684742157848920375.Spec : Prop :=
  ∀ n, P12684742157848920375.a n = (A052129 n : ℝ)

end A052129

/-!
# A052130: a(n) is the number of numbers between 1 and 2^m with m-n prime factors (counted with multiplicity), for m sufficiently large.

The programs for A052130, there is no canonical definition to state claims against.
-/

/-! ## A052130.P10998895907025155507

`A092097(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052130.P10998895907025155507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A092097 (n - 1) + a (n - 1)

end

end A052130.P10998895907025155507

/-! ## A052130.P14996747758668171061

`∑[∏{e}[A011782(n), A092097(#)]]`
-/

namespace A052130.P14996747758668171061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A092097 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052130.P14996747758668171061

/-! ## A052130.P16929234601563971614

`∑[∏{e}[A131577(n), A092097(#)]]`
-/

namespace A052130.P16929234601563971614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A092097 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052130.P16929234601563971614

/-! ## A052130.P11305512320178189699

`A126279(A000217(comp[2*(n+1)]+14)-n)`
-/

namespace A052130.P11305512320178189699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 14) - (n : ℤ)).toNat

end

end A052130.P11305512320178189699

/-! ## A052130.P11761766751831338141

`A126279(A161680(A001950(n+1))-n)`
-/

namespace A052130.P11761766751831338141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A161680 (A001950 (n + 1)).toNat - (n : ℤ)).toNat

end

end A052130.P11761766751831338141

/-!
# A052132: Numerators of coefficients in function a(x) such that a(a(a(x))) = sin x.

The programs for A052132, there is no canonical definition to state claims against.
-/

/-! ## A052132.P11615923825531113917

`A033999(n)*A052134(n)`
-/

namespace A052132.P11615923825531113917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A052134 n

end

end A052132.P11615923825531113917

/-! ## A052132.P16378690584007776714

`A052134(n)*A094267(n²)`
-/

namespace A052132.P16378690584007776714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052134 n * A094267 (n ^ 2)

end

end A052132.P16378690584007776714

/-! ## A052132.P7536908278731836385

`A052134(n)*A062157(n+1)`
-/

namespace A052132.P7536908278731836385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052134 n * A062157 (n + 1)

end

end A052132.P7536908278731836385

/-! ## A052132.P8703265219864924363

`A052134(n)*A106510(A000079(n))`
-/

namespace A052132.P8703265219864924363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052134 n * A106510 (A000079 n).toNat

end

end A052132.P8703265219864924363

/-! ## A052132.P18039909516071481755

`A052134(n)/A062157(A132738(n))`
-/

namespace A052132.P18039909516071481755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052134 n : ℚ) / (A062157 (A132738 n).toNat : ℚ)

end

end A052132.P18039909516071481755

/-!
# A052133: CONTINUANT transform of 0, 1, 1, 2, 1, 3, 2, 3, ... (A002487).

The programs for A052133, there is no canonical definition to state claims against.
-/

/-! ## A052133.P8375058611125067625

`A188022(eq[A037958(n), A089313(n)])`
-/

namespace A052133.P8375058611125067625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052133.P8375058611125067625

/-! ## A052133.P1110941952770778924

`A188022(eq[A037958(n), A251748(n)])`
-/

namespace A052133.P1110941952770778924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A052133.P1110941952770778924

/-! ## A052133.P17370522926191078920

`A002266(A276284(n)+A119034(n+1))`
-/

namespace A052133.P17370522926191078920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A276284 n + A119034 (n + 1)).toNat

end

end A052133.P17370522926191078920

/-!
# A052134: Numerators of coefficients in function a(x) such that a(a(a(x))) = sinh x.

The programs for A052134, there is no canonical definition to state claims against.
-/

/-! ## A052134.P13306804539936531351

`(-1)^n*A052132(n)`
-/

namespace A052134.P13306804539936531351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052132 n

end

end A052134.P13306804539936531351

/-! ## A052134.P2984090924234312784

`A052132(n)*A057077(2*n)`
-/

namespace A052134.P2984090924234312784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052132 n * A057077 (2 * n)

end

end A052134.P2984090924234312784

/-! ## A052134.P17048952087643959322

`-(A052132(n)/A033999(n+1))`
-/

namespace A052134.P17048952087643959322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A052132 n : ℚ) / (A033999 (n + 1) : ℚ))

end

end A052134.P17048952087643959322

/-! ## A052134.P17725119388290849067

`A052132(n)*A128834(3*n+1)`
-/

namespace A052134.P17725119388290849067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052132 n * A128834 (3 * n + 1)

end

end A052134.P17725119388290849067

/-!
# A052137: Denominators of power series coefficients of a(x) satisfying a(a(a(x)))= arctan(x).

The programs for A052137, there is no canonical definition to state claims against.
-/

/-! ## A052137.P15678195684975773382

`A048883(∑[floor(10^n/5)])*A259853(n+1)`
-/

namespace A052137.P15678195684975773382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A259853 (n + 1)

end

end A052137.P15678195684975773382

/-!
# A052138: Numerators of coefficients in function a(x) such that a(a(a(x))) = log (1+x).

The programs for A052138, there is no canonical definition to state claims against.
-/

/-! ## A052138.P6452606495560991808

`A055645(a(n-1)²)-6` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A052138.P6452606495560991808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  A055645 (a (n - 1) ^ 2).toNat - 6

end

end A052138.P6452606495560991808

/-!
# A052139: Denominators of coefficients in function a(x) such that a(a(a(x))) = log (1+x).

The programs for A052139, there is no canonical definition to state claims against.
-/

/-! ## A052139.P16246502628074001549

`A034001(n+1)/A235791(A364473(n))`
-/

namespace A052139.P16246502628074001549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034001 (n + 1) : ℚ) / (A235791 (A364473 n).toNat : ℚ)

end

end A052139.P16246502628074001549

/-!
# A052140: a(n) = 4^n * n!^2 * Sum_{k=0..n} 1/k!.

The programs for A052140, the canonical program `A052140.P7073942417895792255` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052140 has offset 0).

The definition of A052140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052140.P7073942417895792255

`4*n²*a(n-1)+4^n*n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052140

/-- `4*n²*a(n-1)+4^n*n!` -/
def P7073942417895792255.Spec : Prop :=
  ∀ n, (P7073942417895792255.a n : ℤ) = A052140 n

theorem P7073942417895792255.correct : P7073942417895792255.Spec := by
  intro n
  simp only [A052140]

end A052140

/-! ## A052140.P5124432607818551975

`n!*∑[1/n!]*2^n*n!/2^-n`
-/

namespace A052140.P5124432607818551975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (2 ^ n : ℚ) * ((Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A052140.P5124432607818551975

namespace A052140

/-- `n!*∑[1/n!]*2^n*n!/2^-n` -/
def P5124432607818551975.Spec : Prop :=
  ∀ n, P5124432607818551975.a n = (A052140 n : ℚ)

end A052140

/-! ## A052140.P10861912851875183632

`n!*∑[1/n!]*2^n*∑{#}[n, #!*(n-#)!*C(n, #)²]`
-/

namespace A052140.P10861912851875183632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (2 ^ n : ℚ) * ((∑ k ∈ Finset.range (f2 n + 1), Nat.factorial k * Nat.factorial ((n : ℤ) - (k : ℤ)).toNat * Nat.choose n k ^ 2 : ℕ) : ℚ)

end

end A052140.P10861912851875183632

namespace A052140

/-- `n!*∑[1/n!]*2^n*∑{#}[n, #!*(n-#)!*C(n, #)²]` -/
def P10861912851875183632.Spec : Prop :=
  ∀ n, P10861912851875183632.a n = (A052140 n : ℚ)

end A052140

/-! ## A052140.P2519104378966120175

`n!*A097815(n)`
-/

namespace A052140.P2519104378966120175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A097815 n

end

end A052140.P2519104378966120175

namespace A052140

/-- `n!*A097815(n)` -/
def P2519104378966120175.Spec : Prop :=
  ∀ n, P2519104378966120175.a n = A052140 n

end A052140

/-! ## A052140.P7853742681840089029

`4^n*n!*A000522(n)`
-/

namespace A052140.P7853742681840089029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial n : ℤ) * A000522 n

end

end A052140.P7853742681840089029

namespace A052140

/-- `4^n*n!*A000522(n)` -/
def P7853742681840089029.Spec : Prop :=
  ∀ n, P7853742681840089029.a n = A052140 n

end A052140

/-!
# A052141: Number of paths from (0,0) to (n,n) that always move closer to (n,n) (and do not pass (n,n) and backtrack).

The programs for A052141, there is no canonical definition to state claims against.
-/

/-! ## A052141.P4570145819703147918

`ceil(2^(n-1))*A001850(n)`
-/

namespace A052141.P4570145819703147918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A001850 n

end

end A052141.P4570145819703147918

/-! ## A052141.P49016819054000604

`ceil(2^(n-1))*∑[A110170(n)]`
-/

namespace A052141.P49016819054000604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052141.P49016819054000604

/-! ## A052141.P2328662303888375564

`ceil(2^(n-1))*A026003(2*n)`
-/

namespace A052141.P2328662303888375564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A026003 (2 * n)

end

end A052141.P2328662303888375564

/-! ## A052141.P5863480340551950416

`∑{#}[n, 2^#*C(n, #)²]*A011782(n)`
-/

namespace A052141.P5863480340551950416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose n k ^ 2 : ℕ) : ℤ) * A011782 n

end

end A052141.P5863480340551950416

/-! ## A052141.P15651217174767445219

`A001850(n)*A011782(n)`
-/

namespace A052141.P15651217174767445219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A011782 n

end

end A052141.P15651217174767445219

/-! ## A052141.P17032980353690070745

`∑[A110170(n)]*A011782(n)`
-/

namespace A052141.P17032980353690070745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A052141.P17032980353690070745

/-! ## A052141.P10251483105854008998

`2*A331397(n)-A011782(n)`
-/

namespace A052141.P10251483105854008998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331397 n - A011782 n

end

end A052141.P10251483105854008998

/-! ## A052141.P14257780320275807239

`(2*A047665(n)+1)*A011782(n)`
-/

namespace A052141.P14257780320275807239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A047665 n + 1) * A011782 n

end

end A052141.P14257780320275807239

/-! ## A052141.P13639210799787715918

`(2*A226994(n)-1)*A011782(n)`
-/

namespace A052141.P13639210799787715918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A226994 n - 1) * A011782 n

end

end A052141.P13639210799787715918

/-! ## A052141.P479246332088454288

`(∑[2*A002002(n)]+1)*A011782(n)`
-/

namespace A052141.P479246332088454288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A011782 n

end

end A052141.P479246332088454288

/-!
# A052142: Expansion of e.g.f. exp(x/(1-4*x)^(1/2)).

The programs for A052142, there is no canonical definition to state claims against.
-/

/-! ## A052142.P11030200295030406055

`A313095((n-1)*a(n-1))+n-1` with `a(0)=1`
-/

namespace A052142.P11030200295030406055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A313095 (((n : ℤ) - 1) * a (n - 1)).toNat + (n : ℤ) - 1

end

end A052142.P11030200295030406055

/-!
# A052143: E.g.f.: exp(x)/sqrt(1-4*x).

The programs for A052143, the canonical program `A052143.P3714014084955550507` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052143 has offset 0).

The definition of A052143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052143.P3714014084955550507

`n!*∑{#}[n, A000984(#)/(n-#)!]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052143

/-- `n!*∑{#}[n, A000984(#)/(n-#)!]` -/
def P3714014084955550507.Spec : Prop :=
  ∀ n, P3714014084955550507.a n = (A052143 n : ℚ)

end A052143

/-! ## A052143.P5556008508317127406

`∑{#}[n, C(n, #)*(2*#)!/#!]`
-/

namespace A052143.P5556008508317127406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * Nat.factorial (2 * k) : ℚ) / (Nat.factorial k : ℚ)

end

end A052143.P5556008508317127406

namespace A052143

/-- `∑{#}[n, C(n, #)*(2*#)!/#!]` -/
def P5556008508317127406.Spec : Prop :=
  ∀ n, P5556008508317127406.a n = (A052143 n : ℚ)

end A052143

/-! ## A052143.P58372155439000607

`∑{#}[n, C(n, #)*C(2*#, #)*#!]`
-/

namespace A052143.P58372155439000607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (2 * k) k * Nat.factorial k

end

end A052143.P58372155439000607

namespace A052143

/-- `∑{#}[n, C(n, #)*C(2*#, #)*#!]` -/
def P58372155439000607.Spec : Prop :=
  ∀ n, (P58372155439000607.a n : ℤ) = A052143 n

end A052143

/-! ## A052143.P1710440414977685858

`∑{#}[n, C(n, #)*A001813(#)]`
-/

namespace A052143.P1710440414977685858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001813 k

end

end A052143.P1710440414977685858

namespace A052143

/-- `∑{#}[n, C(n, #)*A001813(#)]` -/
def P1710440414977685858.Spec : Prop :=
  ∀ n, P1710440414977685858.a n = A052143 n

end A052143

/-! ## A052143.P2617515423344478697

`Δ[lcm(n, A185946(A000124(n)))]`
-/

namespace A052143.P2617515423344478697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A185946 (A000124 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052143.P2617515423344478697

namespace A052143

/-- `Δ[lcm(n, A185946(A000124(n)))]` -/
def P2617515423344478697.Spec : Prop :=
  ∀ n, P2617515423344478697.a n = A052143 n

end A052143

/-!
# A052144: a(n) = A000172(n)^2.

The programs for A052144, the canonical program `A052144.P2741050325573032971` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052144 has offset 0).

The definition of A052144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000172(n)²` (program `A052144.P2741050325573032971`, by `A052144.P2741050325573032971.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052144.P2741050325573032971

`A000172(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052144

/-- `A000172(n)²` -/
def P2741050325573032971.Spec : Prop :=
  ∀ n, P2741050325573032971.a n = A052144 n

theorem P2741050325573032971.correct : P2741050325573032971.Spec := by
  intro n
  simp only [A052144]

end A052144

/-! ## A052144.P2791469817203451372

`∑{#}[n, C(n, #)^3]²`
-/

namespace A052144.P2791469817203451372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 3) ^ 2

end

end A052144.P2791469817203451372

namespace A052144

/-- `∑{#}[n, C(n, #)^3]²` -/
def P2791469817203451372.Spec : Prop :=
  ∀ n, (P2791469817203451372.a n : ℤ) = A052144 n

theorem P2791469817203451372.correct : P2791469817203451372.Spec := by
  intro n
  simp only [A052144, Nat.add_sub_cancel, A052144.P2791469817203451372.f1, A052144.P2791469817203451372.a, A052144.P2741050325573032971.a, A000172, A000172.P16883533126429972814.f1, A000172.P16883533126429972814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052144

/-! ## A052144.P5171350698370706588

`∑{#}[n, C(n, #)^3]^2`
-/

namespace A052144.P5171350698370706588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 3) ^ 2

end

end A052144.P5171350698370706588

namespace A052144

/-- `∑{#}[n, C(n, #)^3]^2` -/
def P5171350698370706588.Spec : Prop :=
  ∀ n, (P5171350698370706588.a n : ℤ) = A052144 n

theorem P5171350698370706588.correct : P5171350698370706588.Spec := by
  intro n
  simp only [A052144, Nat.add_sub_cancel, A052144.P5171350698370706588.f1, A052144.P5171350698370706588.a, A052144.P2741050325573032971.a, A000172, A000172.P16883533126429972814.f1, A000172.P16883533126429972814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052144

/-! ## A052144.P7277480200708712219

`∑{#}[n, C(n, #)²*C(n, #)]²`
-/

namespace A052144.P7277480200708712219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 * Nat.choose n k) ^ 2

end

end A052144.P7277480200708712219

namespace A052144

/-- `∑{#}[n, C(n, #)²*C(n, #)]²` -/
def P7277480200708712219.Spec : Prop :=
  ∀ n, (P7277480200708712219.a n : ℤ) = A052144 n

theorem P7277480200708712219.correct : P7277480200708712219.Spec := by
  intro n
  simp only [A052144, Nat.add_sub_cancel, A052144.P7277480200708712219.f1, A052144.P7277480200708712219.a, A052144.P2741050325573032971.a, A000172, A000172.P16883533126429972814.f1, A000172.P16883533126429972814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052144

/-! ## A052144.P8990982495357756705

`Δ[A207318(n)]²`
-/

namespace A052144.P8990982495357756705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A052144.P8990982495357756705

namespace A052144

/-- `Δ[A207318(n)]²` -/
def P8990982495357756705.Spec : Prop :=
  ∀ n, P8990982495357756705.a n = A052144 n

end A052144

/-! ## A052144.P3383182106341383626

`A336163(∑[n+1]+n)²`
-/

namespace A052144.P3383182106341383626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A052144.P3383182106341383626

namespace A052144

/-- `A336163(∑[n+1]+n)²` -/
def P3383182106341383626.Spec : Prop :=
  ∀ n, P3383182106341383626.a n = A052144 n

end A052144

/-! ## A052144.P2124336843376682488

`(A181418(n)/A000984(n))²`
-/

namespace A052144.P2124336843376682488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A181418 n : ℚ) / (A000984 n : ℚ)) ^ 2

end

end A052144.P2124336843376682488

namespace A052144

/-- `(A181418(n)/A000984(n))²` -/
def P2124336843376682488.Spec : Prop :=
  ∀ n, P2124336843376682488.a n = (A052144 n : ℚ)

end A052144

/-! ## A052144.P6321019432378875732

`A000172(n)^(2%A002895(n))`
-/

namespace A052144.P6321019432378875732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000172 n : ℚ) ^ (Int.tmod 2 (A002895 n) : ℤ)

end

end A052144.P6321019432378875732

namespace A052144

/-- `A000172(n)^(2%A002895(n))` -/
def P6321019432378875732.Spec : Prop :=
  ∀ n, P6321019432378875732.a n = (A052144 n : ℚ)

end A052144

/-! ## A052144.P15757782172997636580

`(A181418(n)/record[A126930(n)])²`
-/

namespace A052144.P15757782172997636580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A181418 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)) ^ 2

end

end A052144.P15757782172997636580

namespace A052144

/-- `(A181418(n)/record[A126930(n)])²` -/
def P15757782172997636580.Spec : Prop :=
  ∀ n, P15757782172997636580.a n = (A052144 n : ℚ)

end A052144

/-! ## A052144.P14510766471395559818

`(A181418(n)/A126930(2*n))²`
-/

namespace A052144.P14510766471395559818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A181418 n : ℚ) / (A126930 (2 * n) : ℚ)) ^ 2

end

end A052144.P14510766471395559818

namespace A052144

/-- `(A181418(n)/A126930(2*n))²` -/
def P14510766471395559818.Spec : Prop :=
  ∀ n, P14510766471395559818.a n = (A052144 n : ℚ)

end A052144

/-!
# A052145: a(n) = (2n-1)*(2n-1)!/n.

The programs for A052145, the canonical program `A052145.P1685232139635111150` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052145 has offset 1).

The definition of A052145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052145.P941669279041706406

`A126074(C(2*(n+1), 2)+n+1)`
-/

namespace A052145.P941669279041706406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (Nat.choose (2 * (n + 1)) 2 + (n + 1))

end

end A052145.P941669279041706406

namespace A052145

/-- `A126074(C(2*(n+1), 2)+n+1)` -/
def P941669279041706406.Spec : Prop :=
  ∀ n, P941669279041706406.a n = A052145 (n + 1)

end A052145

/-! ## A052145.P3468954093322049487

`A293211(C(2*(n+1), 2)+n+1)`
-/

namespace A052145.P3468954093322049487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293211 (Nat.choose (2 * (n + 1)) 2 + (n + 1))

end

end A052145.P3468954093322049487

namespace A052145

/-- `A293211(C(2*(n+1), 2)+n+1)` -/
def P3468954093322049487.Spec : Prop :=
  ∀ n, P3468954093322049487.a n = A052145 (n + 1)

end A052145

/-! ## A052145.P1685232139635111150

`(2*(n+1)-1)*(2*(n+1)-1)!/(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052145

/-- `(2*(n+1)-1)*(2*(n+1)-1)!/(n+1)` -/
def P1685232139635111150.Spec : Prop :=
  ∀ n, P1685232139635111150.a n = (A052145 (n + 1) : ℚ)

end A052145

/-! ## A052145.P15724445135318452718

`(2-1/(n+1))*(2*n+1)!`
-/

namespace A052145.P15724445135318452718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - 1 / (n + 1 : ℚ)) * (Nat.factorial (2 * n + 1) : ℚ)

end

end A052145.P15724445135318452718

namespace A052145

/-- `(2-1/(n+1))*(2*n+1)!` -/
def P15724445135318452718.Spec : Prop :=
  ∀ n, P15724445135318452718.a n = (A052145 (n + 1) : ℚ)

end A052145

/-! ## A052145.P7613047493019925604

`(2*n+1)*Δ[n²]!/(n+1)`
-/

namespace A052145.P7613047493019925604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ))

end

end A052145.P7613047493019925604

namespace A052145

/-- `(2*n+1)*Δ[n²]!/(n+1)` -/
def P7613047493019925604.Spec : Prop :=
  ∀ n, P7613047493019925604.a n = (A052145 (n + 1) : ℚ)

end A052145

/-!
# A052146: a(n) = floor((sqrt(1+8*n)-3)/2).

The programs for A052146, the canonical program `A052146.P2888985692444498422` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052146 has offset 1).

The definition of A052146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052146.P1269872294070691600

`floor((sqrt(1+8*(n+1))-3)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052146.P1269872294070691600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (1 + 8 * (n + 1) : ℝ) - 3) / 2⌋

end

end A052146.P1269872294070691600

namespace A052146

/-- `floor((sqrt(1+8*(n+1))-3)/2)` -/
def P1269872294070691600.Spec : Prop :=
  ∀ n, P1269872294070691600.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P2888985692444498422

`A003056(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052146

/-- `A003056(n+1)-1` -/
def P2888985692444498422.Spec : Prop :=
  ∀ n, P2888985692444498422.a n = A052146 (n + 1)

theorem P2888985692444498422.correct : P2888985692444498422.Spec := by
  intro n
  simp only [A052146, Nat.add_sub_cancel]

end A052146

/-! ## A052146.P11361693494554844522

`row(n-row(n))`
-/

namespace A052146.P11361693494554844522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ((n : ℤ) - (SequenceMachineLib.triRow n : ℤ)).toNat

end

end A052146.P11361693494554844522

namespace A052146

/-- `row(n-row(n))` -/
def P11361693494554844522.Spec : Prop :=
  ∀ n, (P11361693494554844522.a n : ℤ) = A052146 (n + 1)

end A052146

/-! ## A052146.P14020419887803962244

`∑[abs(T(n-1,k-1))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A052146.P14020419887803962244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052146.P14020419887803962244

namespace A052146

/-- `∑[abs(T(n-1,k-1))]` -/
def P14020419887803962244.Spec : Prop :=
  ∀ n, (P14020419887803962244.a n : ℤ) = A052146 (n + 1)

end A052146

/-! ## A052146.P7475674011761628552

`comp[C(n, 2)-4]-n`
-/

namespace A052146.P7475674011761628552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A052146.P7475674011761628552

namespace A052146

/-- `comp[C(n, 2)-4]-n` -/
def P7475674011761628552.Spec : Prop :=
  ∀ n, P7475674011761628552.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P5911187761882796412

`∑[char[C(n, 2)-1]]-1`
-/

namespace A052146.P5911187761882796412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A052146.P5911187761882796412

namespace A052146

/-- `∑[char[C(n, 2)-1]]-1` -/
def P5911187761882796412.Spec : Prop :=
  ∀ n, P5911187761882796412.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P5533029642056655756

`comp[∑[n-2]]%(n+1)`
-/

namespace A052146.P5533029642056655756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A052146.P5533029642056655756

namespace A052146

/-- `comp[∑[n-2]]%(n+1)` -/
def P5533029642056655756.Spec : Prop :=
  ∀ n, (P5533029642056655756.a n : ℤ) = A052146 (n + 1)

end A052146

/-! ## A052146.P7721422567343319652

`comp[record[∑[n-2]]]-(n+1)`
-/

namespace A052146.P7721422567343319652
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A052146.P7721422567343319652

namespace A052146

/-- `comp[record[∑[n-2]]]-(n+1)` -/
def P7721422567343319652.Spec : Prop :=
  ∀ n, P7721422567343319652.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P13207479135036375995

`comp[a(n-1)+n+3]-n` with `a(0)=2`
-/

namespace A052146.P13207479135036375995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A052146.P13207479135036375995

namespace A052146

/-- `comp[a(n-1)+n+3]-n` -/
def P13207479135036375995.Spec : Prop :=
  ∀ n, P13207479135036375995.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P12825052506085656444

`a(n-(a(n-1)+2))+1` with `a(0)=0, a(1)=0`
-/

namespace A052146.P12825052506085656444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (a (n - 1) + 2)) + 1

end

end A052146.P12825052506085656444

namespace A052146

/-- `a(n-(a(n-1)+2))+1` -/
def P12825052506085656444.Spec : Prop :=
  ∀ n, (P12825052506085656444.a n : ℤ) = A052146 (n + 1)

end A052146

/-! ## A052146.P1088325176404160538

`log2(∑[A134309(n)])`
-/

namespace A052146.P1088325176404160538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A052146.P1088325176404160538

namespace A052146

/-- `log2(∑[A134309(n)])` -/
def P1088325176404160538.Spec : Prop :=
  ∀ n, P1088325176404160538.a n = (A052146 (n + 1) : ℝ)

end A052146

/-! ## A052146.P15448890323125138436

`∑[A023531(n)]-1`
-/

namespace A052146.P15448890323125138436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052146.P15448890323125138436

namespace A052146

/-- `∑[A023531(n)]-1` -/
def P15448890323125138436.Spec : Prop :=
  ∀ n, P15448890323125138436.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P12706055828201269124

`n-∑[A023532(n)]`
-/

namespace A052146.P12706055828201269124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052146.P12706055828201269124

namespace A052146

/-- `n-∑[A023532(n)]` -/
def P12706055828201269124.Spec : Prop :=
  ∀ n, P12706055828201269124.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P5581093778923932125

`comp[A046691(n)]-n`
-/

namespace A052146.P5581093778923932125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A052146.P5581093778923932125

namespace A052146

/-- `comp[A046691(n)]-n` -/
def P5581093778923932125.Spec : Prop :=
  ∀ n, P5581093778923932125.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P10030066190636654757

`n-A083920(n+1)`
-/

namespace A052146.P10030066190636654757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A083920 (n + 1)

end

end A052146.P10030066190636654757

namespace A052146

/-- `n-A083920(n+1)` -/
def P10030066190636654757.Spec : Prop :=
  ∀ n, P10030066190636654757.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P5189569305191208377

`∑[∑[A103452(n)]]-1`
-/

namespace A052146.P5189569305191208377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052146.P5189569305191208377

namespace A052146

/-- `∑[∑[A103452(n)]]-1` -/
def P5189569305191208377.Spec : Prop :=
  ∀ n, P5189569305191208377.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P4144127522884259798

`∑[A010054(n+1)]-1`
-/

namespace A052146.P4144127522884259798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052146.P4144127522884259798

namespace A052146

/-- `∑[A010054(n+1)]-1` -/
def P4144127522884259798.Spec : Prop :=
  ∀ n, P4144127522884259798.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P3342399541501425255

`A002024(n+2)-2`
-/

namespace A052146.P3342399541501425255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) - 2

end

end A052146.P3342399541501425255

namespace A052146

/-- `A002024(n+2)-2` -/
def P3342399541501425255.Spec : Prop :=
  ∀ n, P3342399541501425255.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P4827674843933493758

`A003057(n+3)-3`
-/

namespace A052146.P4827674843933493758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 3) - 3

end

end A052146.P4827674843933493758

namespace A052146

/-- `A003057(n+3)-3` -/
def P4827674843933493758.Spec : Prop :=
  ∀ n, P4827674843933493758.a n = A052146 (n + 1)

end A052146

/-! ## A052146.P9080072714826383281

`A133196(n+2)-4`
-/

namespace A052146.P9080072714826383281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 2) - 4

end

end A052146.P9080072714826383281

namespace A052146

/-- `A133196(n+2)-4` -/
def P9080072714826383281.Spec : Prop :=
  ∀ n, P9080072714826383281.a n = A052146 (n + 1)

theorem P9080072714826383281.correct : P9080072714826383281.Spec := by
  intro n
  simp only [A052146, Nat.add_sub_cancel, A052146.P9080072714826383281.a, A052146.P2888985692444498422.a, A003056, A003056.P5318256527314048597.a, A133196, A133196.P16440954679324344778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A052146

/-!
# A052147: a(n) = prime(n) + 2.

The programs for A052147, the canonical program `A052147.P15217781913070555828` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052147 has offset 1).

The definition of A052147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+2` (program `A052147.P15217781913070555828`, by `A052147.P15217781913070555828.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052147.P15217781913070555828

`A000040(n+1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052147

/-- `A000040(n+1)+2` -/
def P15217781913070555828.Spec : Prop :=
  ∀ n, P15217781913070555828.a n = A052147 (n + 1)

theorem P15217781913070555828.correct : P15217781913070555828.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel]

end A052147

/-! ## A052147.P6151996953021184291

`p?[a(n-1)+2]+2` with `a(0)=2, a(1)=1`
-/

namespace A052147.P6151996953021184291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2

end

end A052147.P6151996953021184291

namespace A052147

/-- `p?[a(n-1)+2]+2` -/
def P6151996953021184291.Spec : Prop :=
  ∀ n, (P6151996953021184291.a n : ℤ) = A052147 (n + 1)

theorem P6151996953021184291.correct : P6151996953021184291.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P12095570216467268202

`2+Δ[A007504(n)]`
-/

namespace A052147.P12095570216467268202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + (f1 (n + 1) - f1 n)

end

end A052147.P12095570216467268202

namespace A052147

/-- `2+Δ[A007504(n)]` -/
def P12095570216467268202.Spec : Prop :=
  ∀ n, P12095570216467268202.a n = A052147 (n + 1)

end A052147

/-! ## A052147.P4436198666339270620

`∑[A075526(n)]+3`
-/

namespace A052147.P4436198666339270620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A052147.P4436198666339270620

namespace A052147

/-- `∑[A075526(n)]+3` -/
def P4436198666339270620.Spec : Prop :=
  ∀ n, P4436198666339270620.a n = A052147 (n + 1)

end A052147

/-! ## A052147.P16052530686688273330

`1+A008864(n+1)`
-/

namespace A052147.P16052530686688273330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008864 (n + 1)

end

end A052147.P16052530686688273330

namespace A052147

/-- `1+A008864(n+1)` -/
def P16052530686688273330.Spec : Prop :=
  ∀ n, P16052530686688273330.a n = A052147 (n + 1)

theorem P16052530686688273330.correct : P16052530686688273330.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P16052530686688273330.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P549423530389004274

`A028815(n+1)+1`
-/

namespace A052147.P549423530389004274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 1

end

end A052147.P549423530389004274

namespace A052147

/-- `A028815(n+1)+1` -/
def P549423530389004274.Spec : Prop :=
  ∀ n, P549423530389004274.a n = A052147 (n + 1)

end A052147

/-! ## A052147.P5740664755442717435

`2+A000040(n+1)`
-/

namespace A052147.P5740664755442717435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000040 (n + 1)

end

end A052147.P5740664755442717435

namespace A052147

/-- `2+A000040(n+1)` -/
def P5740664755442717435.Spec : Prop :=
  ∀ n, P5740664755442717435.a n = A052147 (n + 1)

theorem P5740664755442717435.correct : P5740664755442717435.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P5740664755442717435.a, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052147

/-! ## A052147.P16493754491330493450

`A113935(n+1)-1`
-/

namespace A052147.P16493754491330493450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 1

end

end A052147.P16493754491330493450

namespace A052147

/-- `A113935(n+1)-1` -/
def P16493754491330493450.Spec : Prop :=
  ∀ n, P16493754491330493450.a n = A052147 (n + 1)

theorem P16493754491330493450.correct : P16493754491330493450.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P16493754491330493450.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P9728309443518156719

`A006093(n+1)+3`
-/

namespace A052147.P9728309443518156719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 3

end

end A052147.P9728309443518156719

namespace A052147

/-- `A006093(n+1)+3` -/
def P9728309443518156719.Spec : Prop :=
  ∀ n, P9728309443518156719.a n = A052147 (n + 1)

theorem P9728309443518156719.correct : P9728309443518156719.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P9728309443518156719.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P5204147210924997689

`A175221(n+1)-2`
-/

namespace A052147.P5204147210924997689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) - 2

end

end A052147.P5204147210924997689

namespace A052147

/-- `A175221(n+1)-2` -/
def P5204147210924997689.Spec : Prop :=
  ∀ n, P5204147210924997689.a n = A052147 (n + 1)

theorem P5204147210924997689.correct : P5204147210924997689.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P5204147210924997689.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P16888047917397727720

`A040976(n+1)+4`
-/

namespace A052147.P16888047917397727720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 4

end

end A052147.P16888047917397727720

namespace A052147

/-- `A040976(n+1)+4` -/
def P16888047917397727720.Spec : Prop :=
  ∀ n, P16888047917397727720.a n = A052147 (n + 1)

theorem P16888047917397727720.correct : P16888047917397727720.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P16888047917397727720.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P1295864906159245604

`A086801(n+1)+5`
-/

namespace A052147.P1295864906159245604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 5

end

end A052147.P1295864906159245604

namespace A052147

/-- `A086801(n+1)+5` -/
def P1295864906159245604.Spec : Prop :=
  ∀ n, P1295864906159245604.a n = A052147 (n + 1)

theorem P1295864906159245604.correct : P1295864906159245604.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P1295864906159245604.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P7604885554094071484

`sqrt(A001248(n+1))+2`
-/

namespace A052147.P7604885554094071484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + 2

end

end A052147.P7604885554094071484

namespace A052147

/-- `sqrt(A001248(n+1))+2` -/
def P7604885554094071484.Spec : Prop :=
  ∀ n, P7604885554094071484.a n = (A052147 (n + 1) : ℝ)

end A052147

/-! ## A052147.P13048294856441927487

`sqrt(A005722(n+1))+3`
-/

namespace A052147.P13048294856441927487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) + 3

end

end A052147.P13048294856441927487

namespace A052147

/-- `sqrt(A005722(n+1))+3` -/
def P13048294856441927487.Spec : Prop :=
  ∀ n, P13048294856441927487.a n = (A052147 (n + 1) : ℝ)

end A052147

/-! ## A052147.P13723072269997635255

`∑[A054541(n+1)]+2`
-/

namespace A052147.P13723072269997635255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A052147.P13723072269997635255

namespace A052147

/-- `∑[A054541(n+1)]+2` -/
def P13723072269997635255.Spec : Prop :=
  ∀ n, P13723072269997635255.a n = A052147 (n + 1)

end A052147

/-! ## A052147.P1519456720122684491

`A001748(n+1)/3+2`
-/

namespace A052147.P1519456720122684491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 + 2

end

end A052147.P1519456720122684491

namespace A052147

/-- `A001748(n+1)/3+2` -/
def P1519456720122684491.Spec : Prop :=
  ∀ n, P1519456720122684491.a n = (A052147 (n + 1) : ℚ)

theorem P1519456720122684491.correct : P1519456720122684491.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P1519456720122684491.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P564298561598813193

`A037168(n+1)/2+3`
-/

namespace A052147.P564298561598813193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2 + 3

end

end A052147.P564298561598813193

namespace A052147

/-- `A037168(n+1)/2+3` -/
def P564298561598813193.Spec : Prop :=
  ∀ n, P564298561598813193.a n = (A052147 (n + 1) : ℚ)

theorem P564298561598813193.correct : P564298561598813193.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P564298561598813193.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P386637343138038097

`(A072055(n+1)+3)/2`
-/

namespace A052147.P386637343138038097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072055 (n + 1) + 3 : ℚ) / 2

end

end A052147.P386637343138038097

namespace A052147

/-- `(A072055(n+1)+3)/2` -/
def P386637343138038097.Spec : Prop :=
  ∀ n, P386637343138038097.a n = (A052147 (n + 1) : ℚ)

theorem P386637343138038097.correct : P386637343138038097.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P386637343138038097.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P12401841291836366033

`A001749(n+1)/4+2`
-/

namespace A052147.P12401841291836366033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 + 2

end

end A052147.P12401841291836366033

namespace A052147

/-- `A001749(n+1)/4+2` -/
def P12401841291836366033.Spec : Prop :=
  ∀ n, P12401841291836366033.a n = (A052147 (n + 1) : ℚ)

theorem P12401841291836366033.correct : P12401841291836366033.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P12401841291836366033.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-! ## A052147.P5392102165108981124

`A001750(n+1)/5+2`
-/

namespace A052147.P5392102165108981124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001750 (n + 1) : ℚ) / 5 + 2

end

end A052147.P5392102165108981124

namespace A052147

/-- `A001750(n+1)/5+2` -/
def P5392102165108981124.Spec : Prop :=
  ∀ n, P5392102165108981124.a n = (A052147 (n + 1) : ℚ)

theorem P5392102165108981124.correct : P5392102165108981124.Spec := by
  intro n
  simp only [A052147, Nat.add_sub_cancel, A052147.P5392102165108981124.a, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052147

/-!
# A052148: Integers k < (reversal of k) such that (reversal of k) + 1 is divisible by k-1.

The programs for A052148, there is no canonical definition to state claims against.
-/

/-! ## A052148.P6377060904217699691

`A063114(A136863(n+3))+1`
-/

namespace A052148.P6377060904217699691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (A136863 (n + 3)).toNat + 1

end

end A052148.P6377060904217699691

/-!
# A052149: Number of nonsquare rectangles on an n X n board.

The programs for A052149, the canonical program `A052149.P2587543419330662188` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052149 has offset 1).

The definition of A052149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052149.P16471845485837761046

`ogf((4x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A052149.P16471845485837761046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2] [1, -5, 10, -10, 5, -1] n

end

end A052149.P16471845485837761046

namespace A052149

/-- `ogf((4x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16471845485837761046.Spec : Prop :=
  ∀ n, P16471845485837761046.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P10172461975518985596

`(n+1)*n*(n+2)*(3*(n+1)+2)/12`
-/

namespace A052149.P10172461975518985596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n * (n + 2) * (3 * (n + 1) + 2) : ℚ) / 12

end

end A052149.P10172461975518985596

namespace A052149

/-- `(n+1)*n*(n+2)*(3*(n+1)+2)/12` -/
def P10172461975518985596.Spec : Prop :=
  ∀ n, P10172461975518985596.a n = (A052149 (n + 1) : ℚ)

theorem P10172461975518985596.correct : P10172461975518985596.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A052149, Nat.add_sub_cancel, A052149.P10172461975518985596.a, A052149.P2587543419330662188.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A052149, Nat.add_sub_cancel, A052149.P10172461975518985596.a, A052149.P2587543419330662188.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A052149

/-! ## A052149.P2587543419330662188

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=22, a(3)=70, a(4)=170`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052149

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2587543419330662188.Spec : Prop :=
  ∀ n, P2587543419330662188.a n = A052149 (n + 1)

theorem P2587543419330662188.correct : P2587543419330662188.Spec := by
  intro n
  simp only [A052149, Nat.add_sub_cancel]

end A052149

/-! ## A052149.P3288083181206631850

`A000537(n+1)-A000330(n+1)`
-/

namespace A052149.P3288083181206631850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) - A000330 (n + 1)

end

end A052149.P3288083181206631850

namespace A052149

/-- `A000537(n+1)-A000330(n+1)` -/
def P3288083181206631850.Spec : Prop :=
  ∀ n, P3288083181206631850.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P2977470079012429805

`A033487(n)-A007290(n+2)`
-/

namespace A052149.P2977470079012429805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n - A007290 (n + 2)

end

end A052149.P2977470079012429805

namespace A052149

/-- `A033487(n)-A007290(n+2)` -/
def P2977470079012429805.Spec : Prop :=
  ∀ n, P2977470079012429805.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P5398750980327472247

`2*A000914(n)`
-/

namespace A052149.P5398750980327472247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000914 n

end

end A052149.P5398750980327472247

namespace A052149

/-- `2*A000914(n)` -/
def P5398750980327472247.Spec : Prop :=
  ∀ n, P5398750980327472247.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P6774349289344349268

`lcm(2, ∑[lcm(n, (n+1)²)])`
-/

namespace A052149.P6774349289344349268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052149.P6774349289344349268

namespace A052149

/-- `lcm(2, ∑[lcm(n, (n+1)²)])` -/
def P6774349289344349268.Spec : Prop :=
  ∀ n, (P6774349289344349268.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P18238491464646566082

`∑[C(Δ[n²], 2)]+∑[n]²`
-/

namespace A052149.P18238491464646566082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A052149.P18238491464646566082

namespace A052149

/-- `∑[C(Δ[n²], 2)]+∑[n]²` -/
def P18238491464646566082.Spec : Prop :=
  ∀ n, (P18238491464646566082.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P6662762732776890116

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=4`
-/

namespace A052149.P6662762732776890116
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052149.P6662762732776890116

namespace A052149

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P6662762732776890116.Spec : Prop :=
  ∀ n, (P6662762732776890116.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P11920150496527476500

`2*∑[C(n+1, n)*∑[n]]`
-/

namespace A052149.P11920150496527476500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052149.P11920150496527476500

namespace A052149

/-- `2*∑[C(n+1, n)*∑[n]]` -/
def P11920150496527476500.Spec : Prop :=
  ∀ n, (P11920150496527476500.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P14268409241953886865

`a(n-1)+n*(n+1)²` with `a(0)=0`
-/

namespace A052149.P14268409241953886865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n + 1) ^ 2

end

end A052149.P14268409241953886865

namespace A052149

/-- `a(n-1)+n*(n+1)²` -/
def P14268409241953886865.Spec : Prop :=
  ∀ n, (P14268409241953886865.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P4951121753757935931

`C(n+2, 2)²-∑[(n+1)²]`
-/

namespace A052149.P4951121753757935931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052149.P4951121753757935931

namespace A052149

/-- `C(n+2, 2)²-∑[(n+1)²]` -/
def P4951121753757935931.Spec : Prop :=
  ∀ n, P4951121753757935931.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P16281640667948372076

`∑[2*n*record[(n-1)²]]/2`
-/

namespace A052149.P16281640667948372076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A052149.P16281640667948372076

namespace A052149

/-- `∑[2*n*record[(n-1)²]]/2` -/
def P16281640667948372076.Spec : Prop :=
  ∀ n, P16281640667948372076.a n = (A052149 (n + 1) : ℚ)

end A052149

/-! ## A052149.P6066033307127504081

`∑[n+1]²-∑[record[(n-1)²]]`
-/

namespace A052149.P6066033307127504081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A052149.P6066033307127504081

namespace A052149

/-- `∑[n+1]²-∑[record[(n-1)²]]` -/
def P6066033307127504081.Spec : Prop :=
  ∀ n, P6066033307127504081.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P3693713507495921012

`2*∑[lcm(n+1, (n+1)*∑[n])]`
-/

namespace A052149.P3693713507495921012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052149.P3693713507495921012

namespace A052149

/-- `2*∑[lcm(n+1, (n+1)*∑[n])]` -/
def P3693713507495921012.Spec : Prop :=
  ∀ n, (P3693713507495921012.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P17897433825257465703

`gcd(2, 2*n)*∑[(n+1)*∑[n]]`
-/

namespace A052149.P17897433825257465703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052149.P17897433825257465703

namespace A052149

/-- `gcd(2, 2*n)*∑[(n+1)*∑[n]]` -/
def P17897433825257465703.Spec : Prop :=
  ∀ n, (P17897433825257465703.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P17993836394332095520

`floor(a(n-1)+n/(n+1)^(-2))` with `a(0)=0`
-/

namespace A052149.P17993836394332095520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)⌋

end

end A052149.P17993836394332095520

namespace A052149

/-- `floor(a(n-1)+n/(n+1)^(-2))` -/
def P17993836394332095520.Spec : Prop :=
  ∀ n, P17993836394332095520.a n = A052149 (n + 1)

end A052149

/-! ## A052149.P5744782694623061403

`floor(a(n-1))+n/(1/(n+1))²` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052149.P5744782694623061403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (⌊a (n - 1)⌋ : ℚ) + (n : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A052149.P5744782694623061403

namespace A052149

/-- `floor(a(n-1))+n/(1/(n+1))²` -/
def P5744782694623061403.Spec : Prop :=
  ∀ n, P5744782694623061403.a n = (A052149 (n + 1) : ℚ)

end A052149

/-! ## A052149.P6377650088206355969

`∑[(n+1)*∑[2*n]]+and(1, 2*n)`
-/

namespace A052149.P6377650088206355969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A052149.P6377650088206355969

namespace A052149

/-- `∑[(n+1)*∑[2*n]]+and(1, 2*n)` -/
def P6377650088206355969.Spec : Prop :=
  ∀ n, (P6377650088206355969.a n : ℤ) = A052149 (n + 1)

end A052149

/-! ## A052149.P3934382657061966071

`a(n-1)+n*n*(n+2)+n` with `a(0)=0`
-/

namespace A052149.P3934382657061966071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * n * (n + 2) + n

end

end A052149.P3934382657061966071

namespace A052149

/-- `a(n-1)+n*n*(n+2)+n` -/
def P3934382657061966071.Spec : Prop :=
  ∀ n, (P3934382657061966071.a n : ℤ) = A052149 (n + 1)

end A052149

/-!
# A052150: Partial sums of A000340, second partial sums of A003462.

The programs for A052150, the canonical program `A052150.P2564806244058261931` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052150 has offset 0).

The definition of A052150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052150.P2098892272866628047

`ogf(1/(1-6x+12x^2-10x^3+3x^4))`
-/

namespace A052150.P2098892272866628047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 12, -10, 3] n

end

end A052150.P2098892272866628047

namespace A052150

/-- `ogf(1/(1-6x+12x^2-10x^3+3x^4))` -/
def P2098892272866628047.Spec : Prop :=
  ∀ n, P2098892272866628047.a n = A052150 n

end A052150

/-! ## A052150.P15895944047314850666

`3*a(n-1)+C(n+2, 2)` with `a(0)=1`
-/

namespace A052150.P15895944047314850666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + Nat.choose (n + 2) 2

end

end A052150.P15895944047314850666

namespace A052150

/-- `3*a(n-1)+C(n+2, 2)` -/
def P15895944047314850666.Spec : Prop :=
  ∀ n, (P15895944047314850666.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P16059783255863049909

`∑{#}[n, C(n+3, #+3)*2^#]`
-/

namespace A052150.P16059783255863049909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3) (k + 3) * 2 ^ k

end

end A052150.P16059783255863049909

namespace A052150

/-- `∑{#}[n, C(n+3, #+3)*2^#]` -/
def P16059783255863049909.Spec : Prop :=
  ∀ n, (P16059783255863049909.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P2564806244058261931

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=82`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052150

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P2564806244058261931.Spec : Prop :=
  ∀ n, P2564806244058261931.a n = A052150 n

theorem P2564806244058261931.correct : P2564806244058261931.Spec := by
  intro n
  simp only [A052150]

end A052150

/-! ## A052150.P3509115502107309609

`(3^(n+3)-(2*n²+12*n+19))/8`
-/

namespace A052150.P3509115502107309609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 3) : ℤ) - (2 * n ^ 2 + 12 * n + 19 : ℤ) : ℚ) / 8

end

end A052150.P3509115502107309609

namespace A052150

/-- `(3^(n+3)-(2*n²+12*n+19))/8` -/
def P3509115502107309609.Spec : Prop :=
  ∀ n, P3509115502107309609.a n = (A052150 n : ℚ)

theorem P3509115502107309609.correct : P3509115502107309609.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A052150, Nat.add_sub_cancel, A052150.P3509115502107309609.a, A052150.P2564806244058261931.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A052150, Nat.add_sub_cancel, A052150.P3509115502107309609.a, A052150.P2564806244058261931.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A052150

/-! ## A052150.P6179339379934099361

`∑[∑[ogf(1/(1-4x+3x^2))]]`
-/

namespace A052150.P6179339379934099361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P6179339379934099361

namespace A052150

/-- `∑[∑[ogf(1/(1-4x+3x^2))]]` -/
def P6179339379934099361.Spec : Prop :=
  ∀ n, P6179339379934099361.a n = A052150 n

end A052150

/-! ## A052150.P9199836006660334691

`∑[∑[∑[3*a(n-1)]]]` with `a(0)=1`
-/

namespace A052150.P9199836006660334691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  3 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P9199836006660334691

namespace A052150

/-- `∑[∑[∑[3*a(n-1)]]]` -/
def P9199836006660334691.Spec : Prop :=
  ∀ n, (P9199836006660334691.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P2185803431392430527

`∑{#}[n, 2^#*C(n+3, #+3)]`
-/

namespace A052150.P2185803431392430527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (n + 3) (k + 3)

end

end A052150.P2185803431392430527

namespace A052150

/-- `∑{#}[n, 2^#*C(n+3, #+3)]` -/
def P2185803431392430527.Spec : Prop :=
  ∀ n, (P2185803431392430527.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P5168127012944167570

`∑[lcm(3, a(n-1))+1]+a(n-1)` with `a(0)=1`
-/

namespace A052150.P5168127012944167570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A052150.P5168127012944167570

namespace A052150

/-- `∑[lcm(3, a(n-1))+1]+a(n-1)` -/
def P5168127012944167570.Spec : Prop :=
  ∀ n, (P5168127012944167570.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P9959803513025332131

`a(n-1)+a(n-1)+∑[n+1]+a(n-1)` with `a(0)=1`
-/

namespace A052150.P9959803513025332131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)))

end

end A052150.P9959803513025332131

namespace A052150

/-- `a(n-1)+a(n-1)+∑[n+1]+a(n-1)` -/
def P9959803513025332131.Spec : Prop :=
  ∀ n, (P9959803513025332131.a n : ℤ) = A052150 n

end A052150

/-! ## A052150.P6524371634866960524

`∑[A000340(n)]`
-/

namespace A052150.P6524371634866960524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P6524371634866960524

namespace A052150

/-- `∑[A000340(n)]` -/
def P6524371634866960524.Spec : Prop :=
  ∀ n, P6524371634866960524.a n = A052150 n

end A052150

/-! ## A052150.P15056422426532468173

`∑[∑[A003462(n+1)]]`
-/

namespace A052150.P15056422426532468173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P15056422426532468173

namespace A052150

/-- `∑[∑[A003462(n+1)]]` -/
def P15056422426532468173.Spec : Prop :=
  ∀ n, P15056422426532468173.a n = A052150 n

end A052150

/-! ## A052150.P11026834487274849348

`∑[∑[A261547(n+1)]]`
-/

namespace A052150.P11026834487274849348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P11026834487274849348

namespace A052150

/-- `∑[∑[A261547(n+1)]]` -/
def P11026834487274849348.Spec : Prop :=
  ∀ n, P11026834487274849348.a n = A052150 n

end A052150

/-! ## A052150.P12706986633777170214

`∑[∑[A052993(2*n)]]`
-/

namespace A052150.P12706986633777170214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P12706986633777170214

namespace A052150

/-- `∑[∑[A052993(2*n)]]` -/
def P12706986633777170214.Spec : Prop :=
  ∀ n, P12706986633777170214.a n = A052150 n

end A052150

/-! ## A052150.P2244677693105488599

`∑[∑[A094025(2*n)]]`
-/

namespace A052150.P2244677693105488599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094025 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P2244677693105488599

namespace A052150

/-- `∑[∑[A094025(2*n)]]` -/
def P2244677693105488599.Spec : Prop :=
  ∀ n, P2244677693105488599.a n = A052150 n

end A052150

/-! ## A052150.P15545933649649699564

`A262592(n+2)-(n+3)`
-/

namespace A052150.P15545933649649699564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262592 (n + 2) - (n + 3 : ℤ)

end

end A052150.P15545933649649699564

namespace A052150

/-- `A262592(n+2)-(n+3)` -/
def P15545933649649699564.Spec : Prop :=
  ∀ n, P15545933649649699564.a n = A052150 n

end A052150

/-! ## A052150.P1888816310886407695

`∑[∑[A048328(2*n+1)]]`
-/

namespace A052150.P1888816310886407695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P1888816310886407695

namespace A052150

/-- `∑[∑[A048328(2*n+1)]]` -/
def P1888816310886407695.Spec : Prop :=
  ∀ n, P1888816310886407695.a n = A052150 n

end A052150

/-! ## A052150.P1902441016159666905

`∑[∑[A120463(2*n+1)]]`
-/

namespace A052150.P1902441016159666905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P1902441016159666905

namespace A052150

/-- `∑[∑[A120463(2*n+1)]]` -/
def P1902441016159666905.Spec : Prop :=
  ∀ n, P1902441016159666905.a n = A052150 n

end A052150

/-! ## A052150.P11462404992304330203

`∑[A353094(n+1)-(n+1)]`
-/

namespace A052150.P11462404992304330203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353094 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052150.P11462404992304330203

namespace A052150

/-- `∑[A353094(n+1)-(n+1)]` -/
def P11462404992304330203.Spec : Prop :=
  ∀ n, P11462404992304330203.a n = A052150 n

end A052150

/-! ## A052150.P9045062961619620175

`A368528(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052150.P9045062961619620175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368528 (n + 1) - a (n - 1)

end

end A052150.P9045062961619620175

namespace A052150

/-- `A368528(n+1)-a(n-1)` -/
def P9045062961619620175.Spec : Prop :=
  ∀ n, P9045062961619620175.a n = A052150 n

end A052150

/-!
# A052151: Number of self-complementary directed 3-multigraphs on n nodes.

The programs for A052151, there is no canonical definition to state claims against.
-/

/-! ## A052151.P552878149049142711

`A000165(n)*A202624(A000079(n+1))`
-/

namespace A052151.P552878149049142711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A202624 (A000079 (n + 1)).toNat

end

end A052151.P552878149049142711

/-!
# A052153: Rhombi (in 3 different orientations) in a rhombus with 60-degree acute angles.

The programs for A052153, the canonical program `A052153.P8349212779175451338` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052153 has offset 1).

The definition of A052153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052153.P4244276426107259635

`ogf((1+5x-4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A052153.P4244276426107259635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4] [1, -4, 6, -4, 1] n

end

end A052153.P4244276426107259635

namespace A052153

/-- `ogf((1+5x-4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P4244276426107259635.Spec : Prop :=
  ∀ n, P4244276426107259635.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P8349212779175451338

`(n+1)*(n+2)*(2*(n+1)+1)/6+2*(n+1)*n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052153

/-- `(n+1)*(n+2)*(2*(n+1)+1)/6+2*(n+1)*n` -/
def P8349212779175451338.Spec : Prop :=
  ∀ n, P8349212779175451338.a n = (A052153 (n + 1) : ℚ)

end A052153

/-! ## A052153.P14506648977948440483

`∑[record[(n-6)*n+1]]`
-/

namespace A052153.P14506648977948440483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6) * (n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P14506648977948440483

namespace A052153

/-- `∑[record[(n-6)*n+1]]` -/
def P14506648977948440483.Spec : Prop :=
  ∀ n, P14506648977948440483.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P1430744064727155692

`and(∑[(n+3)²-8], -1)`
-/

namespace A052153.P1430744064727155692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A052153.P1430744064727155692

namespace A052153

/-- `and(∑[(n+3)²-8], -1)` -/
def P1430744064727155692.Spec : Prop :=
  ∀ n, P1430744064727155692.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P13781614064008291938

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=7`
-/

namespace A052153.P13781614064008291938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P13781614064008291938

namespace A052153

/-- `∑[∑[a(n-1)+2]]` -/
def P13781614064008291938.Spec : Prop :=
  ∀ n, (P13781614064008291938.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P13982501933032509160

`∑[record[(3-n)²-6]-2]`
-/

namespace A052153.P13982501933032509160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P13982501933032509160

namespace A052153

/-- `∑[record[(3-n)²-6]-2]` -/
def P13982501933032509160.Spec : Prop :=
  ∀ n, P13982501933032509160.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P7172242188572048795

`∑[∑[ogf((1+5x-4x^2)/(1-2x+x^2))]]`
-/

namespace A052153.P7172242188572048795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P7172242188572048795

namespace A052153

/-- `∑[∑[ogf((1+5x-4x^2)/(1-2x+x^2))]]` -/
def P7172242188572048795.Spec : Prop :=
  ∀ n, P7172242188572048795.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P3308925074037739382

`a(n-1)+(n+3)²-8` with `a(0)=1`
-/

namespace A052153.P3308925074037739382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 3) ^ 2 : ℤ) - 8

end

end A052153.P3308925074037739382

namespace A052153

/-- `a(n-1)+(n+3)²-8` -/
def P3308925074037739382.Spec : Prop :=
  ∀ n, P3308925074037739382.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P16195906997661892645

`∑[(n+1)²]+2*lcm(n, n+1)`
-/

namespace A052153.P16195906997661892645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.lcm n (n + 1)

end

end A052153.P16195906997661892645

namespace A052153

/-- `∑[(n+1)²]+2*lcm(n, n+1)` -/
def P16195906997661892645.Spec : Prop :=
  ∀ n, (P16195906997661892645.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P15556830509612738920

`(2*n+1)²+C(2*n, 3)/4`
-/

namespace A052153.P15556830509612738920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) + (Nat.choose (2 * n) 3 : ℚ) / 4

end

end A052153.P15556830509612738920

namespace A052153

/-- `(2*n+1)²+C(2*n, 3)/4` -/
def P15556830509612738920.Spec : Prop :=
  ∀ n, P15556830509612738920.a n = (A052153 (n + 1) : ℚ)

end A052153

/-! ## A052153.P15157579876255087756

`∑[(n+1)²]+C(2*n+1, 2)+n`
-/

namespace A052153.P15157579876255087756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 1) 2 + n

end

end A052153.P15157579876255087756

namespace A052153

/-- `∑[(n+1)²]+C(2*n+1, 2)+n` -/
def P15157579876255087756.Spec : Prop :=
  ∀ n, (P15157579876255087756.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P12747092335492737790

`∑[∑[2*n+1]]+lcm(2, (n+1)*2*n)`
-/

namespace A052153.P12747092335492737790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 ((n + 1) * (2 * n))

end

end A052153.P12747092335492737790

namespace A052153

/-- `∑[∑[2*n+1]]+lcm(2, (n+1)*2*n)` -/
def P12747092335492737790.Spec : Prop :=
  ∀ n, (P12747092335492737790.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P11566370784589976465

`∑[∑[2*n+1]]+2*n*C(n+1, n)`
-/

namespace A052153.P11566370784589976465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * Nat.choose (n + 1) n

end

end A052153.P11566370784589976465

namespace A052153

/-- `∑[∑[2*n+1]]+2*n*C(n+1, n)` -/
def P11566370784589976465.Spec : Prop :=
  ∀ n, (P11566370784589976465.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P12643764661024583349

`∑[(n+1)²]+(n+1)*and(2*n+1, 2*n)`
-/

namespace A052153.P12643764661024583349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * Nat.land (2 * n + 1) (2 * n)

end

end A052153.P12643764661024583349

namespace A052153

/-- `∑[(n+1)²]+(n+1)*and(2*n+1, 2*n)` -/
def P12643764661024583349.Spec : Prop :=
  ∀ n, (P12643764661024583349.a n : ℤ) = A052153 (n + 1)

end A052153

/-! ## A052153.P8692642779794811250

`∑[A028884(n)]`
-/

namespace A052153.P8692642779794811250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P8692642779794811250

namespace A052153

/-- `∑[A028884(n)]` -/
def P8692642779794811250.Spec : Prop :=
  ∀ n, P8692642779794811250.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P5594656240051730380

`∑[A028560(n)+1]`
-/

namespace A052153.P5594656240051730380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P5594656240051730380

namespace A052153

/-- `∑[A028560(n)+1]` -/
def P5594656240051730380.Spec : Prop :=
  ∀ n, P5594656240051730380.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P10349143736568380601

`∑[A028878(n)-2]`
-/

namespace A052153.P10349143736568380601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P10349143736568380601

namespace A052153

/-- `∑[A028878(n)-2]` -/
def P10349143736568380601.Spec : Prop :=
  ∀ n, P10349143736568380601.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P12598877573759073965

`∑[A082111(n)+n]`
-/

namespace A052153.P12598877573759073965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P12598877573759073965

namespace A052153

/-- `∑[A082111(n)+n]` -/
def P12598877573759073965.Spec : Prop :=
  ∀ n, P12598877573759073965.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P14175566244574714976

`∑[A016921(n)+n²]`
-/

namespace A052153.P14175566244574714976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P14175566244574714976

namespace A052153

/-- `∑[A016921(n)+n²]` -/
def P14175566244574714976.Spec : Prop :=
  ∀ n, P14175566244574714976.a n = A052153 (n + 1)

end A052153

/-! ## A052153.P14019996863199663876

`∑[A059993(n)-n²]`
-/

namespace A052153.P14019996863199663876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052153.P14019996863199663876

namespace A052153

/-- `∑[A059993(n)-n²]` -/
def P14019996863199663876.Spec : Prop :=
  ∀ n, P14019996863199663876.a n = A052153 (n + 1)

end A052153

/-!
# A052154: Array read by antidiagonals: a(n,k)= coefficient of z^n of p_k(z), where p_k+1(z)=(p_k(z))^2+z, p_1(z)=z.

The programs for A052154, there is no canonical definition to state claims against.
-/

/-! ## A052154.P3834539724539192073

`A287847(n)%A115142(A209349(n))`
-/

namespace A052154.P3834539724539192073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287847 n) (A115142 (A209349 n).toNat)

end

end A052154.P3834539724539192073

/-! ## A052154.P17282900443945264666

`A080934(n)%A005408(A188449(n+1))`
-/

namespace A052154.P17282900443945264666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080934 n) (A005408 (A188449 (n + 1)).toNat)

end

end A052154.P17282900443945264666

/-! ## A052154.P16450284634211527391

`A240608(n)%A005408(A188449(n+1))`
-/

namespace A052154.P16450284634211527391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240608 n) (A005408 (A188449 (n + 1)).toNat)

end

end A052154.P16450284634211527391

/-! ## A052154.P16332371492253367929

`A242784(n)%A005408(A188449(n+1))`
-/

namespace A052154.P16332371492253367929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242784 n) (A005408 (A188449 (n + 1)).toNat)

end

end A052154.P16332371492253367929

/-! ## A052154.P1234182030184029227

`A287214(n)%A000124(A188449(n+1))`
-/

namespace A052154.P1234182030184029227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287214 n) (A000124 (A188449 (n + 1)).toNat)

end

end A052154.P1234182030184029227

/-!
# A052155: Pseudoprimes to both base 2 and base 3, i.e., intersection of A001567 and A005935.

The programs for A052155, there is no canonical definition to state claims against.
-/

/-! ## A052155.P1184144431479574044

`∩[A001567(n+1), A005935(n+1)]`
-/

namespace A052155.P1184144431479574044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P1184144431479574044

/-! ## A052155.P2931360574928206382

`∩[A005935(n+1), A127073(n+1)]`
-/

namespace A052155.P2931360574928206382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P2931360574928206382

/-! ## A052155.P17590187562247135956

`∩[A001567(n+1), A073631(n+1)]`
-/

namespace A052155.P17590187562247135956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P17590187562247135956

/-! ## A052155.P1041068175470950024

`∩[A005935(n+1), A073631(n+1)]`
-/

namespace A052155.P1041068175470950024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P1041068175470950024

/-! ## A052155.P2126136277413892831

`∩[A073631(n+1), A127073(n+1)]`
-/

namespace A052155.P2126136277413892831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P2126136277413892831

/-! ## A052155.P3931966043135471637

`∩[A005935(n+1), A066488(n+1)]`
-/

namespace A052155.P3931966043135471637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P3931966043135471637

/-! ## A052155.P16121249827158225456

`∩[A066488(n+1), A073631(n+1)]`
-/

namespace A052155.P16121249827158225456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P16121249827158225456

/-! ## A052155.P5184645874638998926

`∩[A066488(n+1), A127073(n+1)]`
-/

namespace A052155.P5184645874638998926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P5184645874638998926

/-! ## A052155.P12917751604105019456

`∩[A066488(n+1), A318761(n+1)]`
-/

namespace A052155.P12917751604105019456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P12917751604105019456

/-! ## A052155.P11286327626256306276

`∩[A066488(n+1), A122780(n+1)]`
-/

namespace A052155.P11286327626256306276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P11286327626256306276

/-! ## A052155.P8319705690926480016

`∩[A001567(n+1), A263239(n+1)]`
-/

namespace A052155.P8319705690926480016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P8319705690926480016

/-! ## A052155.P5160286703670152840

`∩[A066488(n+1), A263239(n+1)]`
-/

namespace A052155.P5160286703670152840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P5160286703670152840

/-! ## A052155.P9956743940822982197

`∩[A073631(n+1), A263239(n+1)]`
-/

namespace A052155.P9956743940822982197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P9956743940822982197

/-! ## A052155.P3213399920699158378

`∩[A001567(n+1), A005937(n+1)]`
-/

namespace A052155.P3213399920699158378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P3213399920699158378

/-! ## A052155.P11085674242870836527

`∩[A005935(n+1), A005937(n+1)]`
-/

namespace A052155.P11085674242870836527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P11085674242870836527

/-! ## A052155.P2715936950534990598

`∩[A005937(n+1), A066488(n+1)]`
-/

namespace A052155.P2715936950534990598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P2715936950534990598

/-! ## A052155.P8682699796155700912

`∩[A005937(n+1), A122780(n+1)]`
-/

namespace A052155.P8682699796155700912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P8682699796155700912

/-! ## A052155.P612992750510246824

`∩[A005937(n+1), A263239(n+1)]`
-/

namespace A052155.P612992750510246824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P612992750510246824

/-! ## A052155.P5164278862109649139

`∩[A066488(n+1), A351336(n+1)]`
-/

namespace A052155.P5164278862109649139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P5164278862109649139

/-! ## A052155.P11616125356608256992

`∩[A073631(n+1), A351336(n+1)]`
-/

namespace A052155.P11616125356608256992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052155.P11616125356608256992

/-!
# A052156: Number of compositions of n into 2*j-1 kinds of j's for all j>=1.

The programs for A052156, the canonical program `A052156.P6548149786995819042` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052156 has offset 0).

The definition of A052156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052156.P7234020388816395813

`ogf((1-2x+x^2)/(1-3x))`
-/

namespace A052156.P7234020388816395813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3] n

end

end A052156.P7234020388816395813

namespace A052156

/-- `ogf((1-2x+x^2)/(1-3x))` -/
def P7234020388816395813.Spec : Prop :=
  ∀ n, P7234020388816395813.a n = A052156 n

end A052156

/-! ## A052156.P6548149786995819042

`3*a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052156

/-- `3*a(n-1)` -/
def P6548149786995819042.Spec : Prop :=
  ∀ n, (P6548149786995819042.a n : ℤ) = A052156 n

theorem P6548149786995819042.correct : P6548149786995819042.Spec := by
  intro n
  simp only [A052156]

end A052156

/-! ## A052156.P18419147484773507263

`∑{#}[n, A201780(C(n+1, 2)+#)]`
-/

namespace A052156.P18419147484773507263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A201780 (Nat.choose (n + 1) 2 + k)

end

end A052156.P18419147484773507263

namespace A052156

/-- `∑{#}[n, A201780(C(n+1, 2)+#)]` -/
def P18419147484773507263.Spec : Prop :=
  ∀ n, P18419147484773507263.a n = A052156 n

end A052156

/-! ## A052156.P5703019615212830358

`abs(ceil(4*(-3)^(n-2)))`
-/

namespace A052156.P5703019615212830358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈4 * (-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|

end

end A052156.P5703019615212830358

namespace A052156

/-- `abs(ceil(4*(-3)^(n-2)))` -/
def P5703019615212830358.Spec : Prop :=
  ∀ n, P5703019615212830358.a n = A052156 n

end A052156

/-! ## A052156.P17054887976641982380

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P17054887976641982380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A052156.P17054887976641982380

namespace A052156

/-- `a(n-1)/cot(atan(3))` -/
def P17054887976641982380.Spec : Prop :=
  ∀ n, P17054887976641982380.a n = (A052156 n : ℝ)

end A052156

/-! ## A052156.P14416718432363768521

`a(n-1)/sqrt(1/9)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P14416718432363768521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A052156.P14416718432363768521

namespace A052156

/-- `a(n-1)/sqrt(1/9)` -/
def P14416718432363768521.Spec : Prop :=
  ∀ n, P14416718432363768521.a n = (A052156 n : ℝ)

end A052156

/-! ## A052156.P17431405744911474644

`lcm(3^(n-2), a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P17431405744911474644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A052156.P17431405744911474644

namespace A052156

/-- `lcm(3^(n-2), a(n-1))` -/
def P17431405744911474644.Spec : Prop :=
  ∀ n, (P17431405744911474644.a n : ℤ) = A052156 n

end A052156

/-! ## A052156.P2252265868211724203

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P2252265868211724203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A052156.P2252265868211724203

namespace A052156

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P2252265868211724203.Spec : Prop :=
  ∀ n, (P2252265868211724203.a n : ℤ) = A052156 n

theorem P2252265868211724203.correct : P2252265868211724203.Spec := by
  intro n
  simp only [A052156, Nat.add_sub_cancel, A052156.P2252265868211724203.a, A052156.P6548149786995819042.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052156

/-! ## A052156.P2015891027900245386

`∑[A118264(n)]`
-/

namespace A052156.P2015891027900245386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052156.P2015891027900245386

namespace A052156

/-- `∑[A118264(n)]` -/
def P2015891027900245386.Spec : Prop :=
  ∀ n, P2015891027900245386.a n = A052156 n

end A052156

/-! ## A052156.P10763495922596297185

`A025579(n+1)-char[1]`
-/

namespace A052156.P10763495922596297185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052156.P10763495922596297185

namespace A052156

/-- `A025579(n+1)-char[1]` -/
def P10763495922596297185.Spec : Prop :=
  ∀ n, P10763495922596297185.a n = A052156 n

end A052156

/-! ## A052156.P168095619896647547

`A003946((n-1)%(n+1))`
-/

namespace A052156.P168095619896647547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A052156.P168095619896647547

namespace A052156

/-- `A003946((n-1)%(n+1))` -/
def P168095619896647547.Spec : Prop :=
  ∀ n, P168095619896647547.a n = A052156 n

end A052156

/-! ## A052156.P1769506717850052636

`∑{#}[n, C(n, #)*A053088(#)]`
-/

namespace A052156.P1769506717850052636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A053088 k

end

end A052156.P1769506717850052636

namespace A052156

/-- `∑{#}[n, C(n, #)*A053088(#)]` -/
def P1769506717850052636.Spec : Prop :=
  ∀ n, P1769506717850052636.a n = A052156 n

end A052156

/-! ## A052156.P7195507789914054794

`A026097(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A052156.P7195507789914054794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A026097 n + a (n - 1)

end

end A052156.P7195507789914054794

namespace A052156

/-- `A026097(n)+a(n-1)` -/
def P7195507789914054794.Spec : Prop :=
  ∀ n, P7195507789914054794.a n = A052156 n

end A052156

/-! ## A052156.P17928998331552971728

`A326339((n+1)%(2*n+1))`
-/

namespace A052156.P17928998331552971728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 ((n + 1) % (2 * n + 1))

end

end A052156.P17928998331552971728

namespace A052156

/-- `A326339((n+1)%(2*n+1))` -/
def P17928998331552971728.Spec : Prop :=
  ∀ n, P17928998331552971728.a n = A052156 n

end A052156

/-! ## A052156.P15293184158025118957

`A257970(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052156.P15293184158025118957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257970 (n + 1) - a (n - 1)

end

end A052156.P15293184158025118957

namespace A052156

/-- `A257970(n+1)-a(n-1)` -/
def P15293184158025118957.Spec : Prop :=
  ∀ n, P15293184158025118957.a n = A052156 n

end A052156

/-! ## A052156.P500654836647963590

`A080923(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A052156.P500654836647963590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A080923 (n - 1) + a (n - 1)

end

end A052156.P500654836647963590

namespace A052156

/-- `A080923(n-1)+a(n-1)` -/
def P500654836647963590.Spec : Prop :=
  ∀ n, P500654836647963590.a n = A052156 n

end A052156

/-! ## A052156.P14520672486582377094

`A074324(A004275(n))`
-/

namespace A052156.P14520672486582377094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004275 n).toNat

end

end A052156.P14520672486582377094

namespace A052156

/-- `A074324(A004275(n))` -/
def P14520672486582377094.Spec : Prop :=
  ∀ n, P14520672486582377094.a n = A052156 n

end A052156

/-! ## A052156.P3343838181260742630

`A074324(record[A029578(n)])`
-/

namespace A052156.P3343838181260742630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052156.P3343838181260742630

namespace A052156

/-- `A074324(record[A029578(n)])` -/
def P3343838181260742630.Spec : Prop :=
  ∀ n, P3343838181260742630.a n = A052156 n

end A052156

/-! ## A052156.P8803612510392716188

`A003946(A289207(n+1))`
-/

namespace A052156.P8803612510392716188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (A289207 (n + 1)).toNat

end

end A052156.P8803612510392716188

namespace A052156

/-- `A003946(A289207(n+1))` -/
def P8803612510392716188.Spec : Prop :=
  ∀ n, P8803612510392716188.a n = A052156 n

end A052156

/-! ## A052156.P12533313235312601816

`A326339(A028310(n)+1)`
-/

namespace A052156.P12533313235312601816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (A028310 n + 1).toNat

end

end A052156.P12533313235312601816

namespace A052156

/-- `A326339(A028310(n)+1)` -/
def P12533313235312601816.Spec : Prop :=
  ∀ n, P12533313235312601816.a n = A052156 n

end A052156

/-!
# A052158: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+1 form.

The programs for A052158, the canonical program `A052158.P11227404252294711369` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052158 has offset 1).

The definition of A052158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052158.P11227404252294711369

`p?[A031924(n+1)%3*A031924(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052158

/-- `p?[A031924(n+1)%3*A031924(n+1)]` -/
def P11227404252294711369.Spec : Prop :=
  ∀ n, P11227404252294711369.a n = A052158 (n + 1)

theorem P11227404252294711369.correct : P11227404252294711369.Spec := by
  intro n
  simp only [A052158, Nat.add_sub_cancel]

end A052158

/-! ## A052158.P2853323257104959396

`∩[A031924(n+1), A275697(n+1)]`
-/

namespace A052158.P2853323257104959396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P2853323257104959396

namespace A052158

/-- `∩[A031924(n+1), A275697(n+1)]` -/
def P2853323257104959396.Spec : Prop :=
  ∀ n, (P2853323257104959396.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P379333724918565492

`p?[A121764(n+1)-6]`
-/

namespace A052158.P379333724918565492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052158.P379333724918565492

namespace A052158

/-- `p?[A121764(n+1)-6]` -/
def P379333724918565492.Spec : Prop :=
  ∀ n, P379333724918565492.a n = A052158 (n + 1)

end A052158

/-! ## A052158.P4890480808324903360

`∩[A002476(n+1), A031924(n+1)]`
-/

namespace A052158.P4890480808324903360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P4890480808324903360

namespace A052158

/-- `∩[A002476(n+1), A031924(n+1)]` -/
def P4890480808324903360.Spec : Prop :=
  ∀ n, (P4890480808324903360.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P11574451702339083231

`∩[A007645(n+1), A031924(n+1)]`
-/

namespace A052158.P11574451702339083231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P11574451702339083231

namespace A052158

/-- `∩[A007645(n+1), A031924(n+1)]` -/
def P11574451702339083231.Spec : Prop :=
  ∀ n, (P11574451702339083231.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P8772616817285710002

`∩[A031924(n+1), A045331(n+1)]`
-/

namespace A052158.P8772616817285710002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P8772616817285710002

namespace A052158

/-- `∩[A031924(n+1), A045331(n+1)]` -/
def P8772616817285710002.Spec : Prop :=
  ∀ n, (P8772616817285710002.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P10366816031172319

`∩[A031924(n+1), A045375(n+1)]`
-/

namespace A052158.P10366816031172319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P10366816031172319

namespace A052158

/-- `∩[A031924(n+1), A045375(n+1)]` -/
def P10366816031172319.Spec : Prop :=
  ∀ n, (P10366816031172319.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P13890190073054700465

`∩[A031924(n+1), A123365(n+1)]`
-/

namespace A052158.P13890190073054700465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P13890190073054700465

namespace A052158

/-- `∩[A031924(n+1), A123365(n+1)]` -/
def P13890190073054700465.Spec : Prop :=
  ∀ n, (P13890190073054700465.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P14899089286840617127

`∩[A031924(n+1), A279815(n+1)]`
-/

namespace A052158.P14899089286840617127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P14899089286840617127

namespace A052158

/-- `∩[A031924(n+1), A279815(n+1)]` -/
def P14899089286840617127.Spec : Prop :=
  ∀ n, (P14899089286840617127.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P15457272515558146707

`∩[A031924(n+1), A055664(n+1)]`
-/

namespace A052158.P15457272515558146707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P15457272515558146707

namespace A052158

/-- `∩[A031924(n+1), A055664(n+1)]` -/
def P15457272515558146707.Spec : Prop :=
  ∀ n, (P15457272515558146707.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P10114213663486150692

`∩[A031924(n+1), A133290(n+1)]`
-/

namespace A052158.P10114213663486150692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P10114213663486150692

namespace A052158

/-- `∩[A031924(n+1), A133290(n+1)]` -/
def P10114213663486150692.Spec : Prop :=
  ∀ n, (P10114213663486150692.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P16270523027173236723

`∩[A031924(n+1), A354936(n+1)]`
-/

namespace A052158.P16270523027173236723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P16270523027173236723

namespace A052158

/-- `∩[A031924(n+1), A354936(n+1)]` -/
def P16270523027173236723.Spec : Prop :=
  ∀ n, (P16270523027173236723.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P16513682997191421395

`∩[A031924(n+1), A137827(n+1)]`
-/

namespace A052158.P16513682997191421395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P16513682997191421395

namespace A052158

/-- `∩[A031924(n+1), A137827(n+1)]` -/
def P16513682997191421395.Spec : Prop :=
  ∀ n, (P16513682997191421395.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P11259972025671553786

`∩[A031924(n+1), A374135(n+1)]`
-/

namespace A052158.P11259972025671553786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P11259972025671553786

namespace A052158

/-- `∩[A031924(n+1), A374135(n+1)]` -/
def P11259972025671553786.Spec : Prop :=
  ∀ n, (P11259972025671553786.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P6774537225034288022

`p?[A107472(n+1)-4]`
-/

namespace A052158.P6774537225034288022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052158.P6774537225034288022

namespace A052158

/-- `p?[A107472(n+1)-4]` -/
def P6774537225034288022.Spec : Prop :=
  ∀ n, P6774537225034288022.a n = A052158 (n + 1)

end A052158

/-! ## A052158.P4306624828729390166

`filter[A031924(n+1), A070563(#)]`
-/

namespace A052158.P4306624828729390166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A052158.P4306624828729390166

namespace A052158

/-- `filter[A031924(n+1), A070563(#)]` -/
def P4306624828729390166.Spec : Prop :=
  ∀ n, P4306624828729390166.a n = A052158 (n + 1)

end A052158

/-! ## A052158.P7935690482957023802

`∩[A031924(n+1), A107925(n+1)]`
-/

namespace A052158.P7935690482957023802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P7935690482957023802

namespace A052158

/-- `∩[A031924(n+1), A107925(n+1)]` -/
def P7935690482957023802.Spec : Prop :=
  ∀ n, (P7935690482957023802.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P6139275957564149137

`∩[A004611(n+1), A031924(n+1)]`
-/

namespace A052158.P6139275957564149137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P6139275957564149137

namespace A052158

/-- `∩[A004611(n+1), A031924(n+1)]` -/
def P6139275957564149137.Spec : Prop :=
  ∀ n, (P6139275957564149137.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P8354206339106229190

`∩[A031924(n+1), A129904(n+1)]`
-/

namespace A052158.P8354206339106229190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P8354206339106229190

namespace A052158

/-- `∩[A031924(n+1), A129904(n+1)]` -/
def P8354206339106229190.Spec : Prop :=
  ∀ n, (P8354206339106229190.a n : ℤ) = A052158 (n + 1)

end A052158

/-! ## A052158.P9923229773122311174

`∩[A031924(n+1), A348932(n+1)]`
-/

namespace A052158.P9923229773122311174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052158.P9923229773122311174

namespace A052158

/-- `∩[A031924(n+1), A348932(n+1)]` -/
def P9923229773122311174.Spec : Prop :=
  ∀ n, (P9923229773122311174.a n : ℤ) = A052158 (n + 1)

end A052158

/-!
# A052159: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+5 form.

The programs for A052159, the canonical program `A052159.P16139146045707292468` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052159 has offset 1).

The definition of A052159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052159.P16139146045707292468

`∩[A015914(n+1), A121762(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052159

/-- `∩[A015914(n+1), A121762(n+1)]` -/
def P16139146045707292468.Spec : Prop :=
  ∀ n, (P16139146045707292468.a n : ℤ) = A052159 (n + 1)

theorem P16139146045707292468.correct : P16139146045707292468.Spec := by
  intro n
  simp only [A052159, Nat.add_sub_cancel]

end A052159

/-! ## A052159.P17812920113273234883

`∩[A023201(n+1), A121762(n+1)]`
-/

namespace A052159.P17812920113273234883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P17812920113273234883

namespace A052159

/-- `∩[A023201(n+1), A121762(n+1)]` -/
def P17812920113273234883.Spec : Prop :=
  ∀ n, (P17812920113273234883.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P13954370245857168029

`∩[A031924(n+1), A121762(n+1)]`
-/

namespace A052159.P13954370245857168029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P13954370245857168029

namespace A052159

/-- `∩[A031924(n+1), A121762(n+1)]` -/
def P13954370245857168029.Spec : Prop :=
  ∀ n, (P13954370245857168029.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P2840613648664666241

`∩[A121762(n+1), A164574(n+1)]`
-/

namespace A052159.P2840613648664666241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P2840613648664666241

namespace A052159

/-- `∩[A121762(n+1), A164574(n+1)]` -/
def P2840613648664666241.Spec : Prop :=
  ∀ n, (P2840613648664666241.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P550363587672721969

`∩[A121762(n+1), A262084(n+1)]`
-/

namespace A052159.P550363587672721969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P550363587672721969

namespace A052159

/-- `∩[A121762(n+1), A262084(n+1)]` -/
def P550363587672721969.Spec : Prop :=
  ∀ n, (P550363587672721969.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P9198750158165022108

`∩[A121762(n+1), A124590(n+1)]`
-/

namespace A052159.P9198750158165022108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P9198750158165022108

namespace A052159

/-- `∩[A121762(n+1), A124590(n+1)]` -/
def P9198750158165022108.Spec : Prop :=
  ∀ n, (P9198750158165022108.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P10662329483191432682

`∩[A003627(n+1), A031924(n+1)]`
-/

namespace A052159.P10662329483191432682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P10662329483191432682

namespace A052159

/-- `∩[A003627(n+1), A031924(n+1)]` -/
def P10662329483191432682.Spec : Prop :=
  ∀ n, (P10662329483191432682.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P2728077237041850866

`∩[A007528(n+1), A031924(n+1)]`
-/

namespace A052159.P2728077237041850866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P2728077237041850866

namespace A052159

/-- `∩[A007528(n+1), A031924(n+1)]` -/
def P2728077237041850866.Spec : Prop :=
  ∀ n, (P2728077237041850866.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P17697972405897636827

`∩[A031924(n+1), A045410(n+1)]`
-/

namespace A052159.P17697972405897636827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P17697972405897636827

namespace A052159

/-- `∩[A031924(n+1), A045410(n+1)]` -/
def P17697972405897636827.Spec : Prop :=
  ∀ n, (P17697972405897636827.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P8823954439584890945

`∩[A031924(n+1), A056955(n+1)]`
-/

namespace A052159.P8823954439584890945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P8823954439584890945

namespace A052159

/-- `∩[A031924(n+1), A056955(n+1)]` -/
def P8823954439584890945.Spec : Prop :=
  ∀ n, (P8823954439584890945.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P14631417978694063854

`∩[A031924(n+1), A045309(n+1)]`
-/

namespace A052159.P14631417978694063854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P14631417978694063854

namespace A052159

/-- `∩[A031924(n+1), A045309(n+1)]` -/
def P14631417978694063854.Spec : Prop :=
  ∀ n, (P14631417978694063854.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P15735516891105612588

`∩[A031924(n+1), A066501(n+1)]`
-/

namespace A052159.P15735516891105612588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P15735516891105612588

namespace A052159

/-- `∩[A031924(n+1), A066501(n+1)]` -/
def P15735516891105612588.Spec : Prop :=
  ∀ n, (P15735516891105612588.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P17393890655882462283

`∩[A031924(n+1), A259548(n+1)]`
-/

namespace A052159.P17393890655882462283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P17393890655882462283

namespace A052159

/-- `∩[A031924(n+1), A259548(n+1)]` -/
def P17393890655882462283.Spec : Prop :=
  ∀ n, (P17393890655882462283.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P10717839315314663878

`p?[A065091(A066942(n+1))-6]`
-/

namespace A052159.P10717839315314663878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A066942 (n + 1)).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052159.P10717839315314663878

namespace A052159

/-- `p?[A065091(A066942(n+1))-6]` -/
def P10717839315314663878.Spec : Prop :=
  ∀ n, P10717839315314663878.a n = A052159 (n + 1)

end A052159

/-! ## A052159.P6963392291068207913

`∩[A086304(n+1), A121762(n+1)]`
-/

namespace A052159.P6963392291068207913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P6963392291068207913

namespace A052159

/-- `∩[A086304(n+1), A121762(n+1)]` -/
def P6963392291068207913.Spec : Prop :=
  ∀ n, (P6963392291068207913.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P10330047972451953951

`∩[A118538(n+1), A121762(n+1)]`
-/

namespace A052159.P10330047972451953951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P10330047972451953951

namespace A052159

/-- `∩[A118538(n+1), A121762(n+1)]` -/
def P10330047972451953951.Spec : Prop :=
  ∀ n, (P10330047972451953951.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P8913664986732426499

`∩[A031924(n+1), A082406(n+1)]`
-/

namespace A052159.P8913664986732426499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P8913664986732426499

namespace A052159

/-- `∩[A031924(n+1), A082406(n+1)]` -/
def P8913664986732426499.Spec : Prop :=
  ∀ n, (P8913664986732426499.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P464625453939829513

`∩[A031924(n+1), A167409(n+1)]`
-/

namespace A052159.P464625453939829513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P464625453939829513

namespace A052159

/-- `∩[A031924(n+1), A167409(n+1)]` -/
def P464625453939829513.Spec : Prop :=
  ∀ n, (P464625453939829513.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P9064411349160455619

`∩[A031924(n+1), A016969(n)]`
-/

namespace A052159.P9064411349160455619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P9064411349160455619

namespace A052159

/-- `∩[A031924(n+1), A016969(n)]` -/
def P9064411349160455619.Spec : Prop :=
  ∀ n, (P9064411349160455619.a n : ℤ) = A052159 (n + 1)

end A052159

/-! ## A052159.P843516735470663272

`∩[A031924(n+1), A101328(n+2)]`
-/

namespace A052159.P843516735470663272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052159.P843516735470663272

namespace A052159

/-- `∩[A031924(n+1), A101328(n+2)]` -/
def P843516735470663272.Spec : Prop :=
  ∀ n, (P843516735470663272.a n : ℤ) = A052159 (n + 1)

end A052159

/-!
# A052160: Isolated prime difference equals 6: primes prime(k) such that d(k) = prime(k+1) - prime(k) = 6 but neither d(k+1) nor d(k-1) is 6.

The programs for A052160, there is no canonical definition to state claims against.
-/

/-! ## A052160.P15704694608979841331

`∩[A031924(n+1), A045319(A333491(n+1))]`
-/

namespace A052160.P15704694608979841331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A333491 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052160.P15704694608979841331

/-! ## A052160.P5395598390175098765

`∩[A031924(n+1), A065091(A333491(n+2))]`
-/

namespace A052160.P5395598390175098765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A333491 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052160.P5395598390175098765

/-! ## A052160.P13029535901974093391

`∩[A031925(n+1)-6, A045319(A333491(n+1))]`
-/

namespace A052160.P13029535901974093391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A333491 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052160.P13029535901974093391

/-! ## A052160.P6952810374121613323

`∩[A031925(n+1)-6, A065091(A333491(n+2))]`
-/

namespace A052160.P6952810374121613323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A333491 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052160.P6952810374121613323

/-!
# A052161: Partial sums of A014825, second partial sums of A002450.

The programs for A052161, the canonical program `A052161.P17942717720509901001` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052161 has offset 0).

The definition of A052161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052161.P3659001862800692620

`ogf(1/(1-7x+15x^2-13x^3+4x^4))`
-/

namespace A052161.P3659001862800692620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 15, -13, 4] n

end

end A052161.P3659001862800692620

namespace A052161

/-- `ogf(1/(1-7x+15x^2-13x^3+4x^4))` -/
def P3659001862800692620.Spec : Prop :=
  ∀ n, P3659001862800692620.a n = A052161 n

end A052161

/-! ## A052161.P8118499821527613934

`4*a(n-1)+C(n+2, 2)` with `a(0)=1`
-/

namespace A052161.P8118499821527613934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + Nat.choose (n + 2) 2

end

end A052161.P8118499821527613934

namespace A052161

/-- `4*a(n-1)+C(n+2, 2)` -/
def P8118499821527613934.Spec : Prop :=
  ∀ n, (P8118499821527613934.a n : ℤ) = A052161 n

end A052161

/-! ## A052161.P4022493114281742121

`∑{#}[n, C(n+3, #+3)*3^#]`
-/

namespace A052161.P4022493114281742121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3) (k + 3) * 3 ^ k

end

end A052161.P4022493114281742121

namespace A052161

/-- `∑{#}[n, C(n+3, #+3)*3^#]` -/
def P4022493114281742121.Spec : Prop :=
  ∀ n, (P4022493114281742121.a n : ℤ) = A052161 n

end A052161

/-! ## A052161.P17942717720509901001

`7*a(n-1)-15*a(n-2)+13*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=34, a(3)=146`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052161

/-- `7*a(n-1)-15*a(n-2)+13*a(n-3)-4*a(n-4)` -/
def P17942717720509901001.Spec : Prop :=
  ∀ n, P17942717720509901001.a n = A052161 n

theorem P17942717720509901001.correct : P17942717720509901001.Spec := by
  intro n
  simp only [A052161]

end A052161

/-! ## A052161.P12233897990299828605

`(2^(2*n+7)-(9*n²+51*n+74))/54`
-/

namespace A052161.P12233897990299828605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (2 * n + 7) : ℤ) - (9 * n ^ 2 + 51 * n + 74 : ℤ) : ℚ) / 54

end

end A052161.P12233897990299828605

namespace A052161

/-- `(2^(2*n+7)-(9*n²+51*n+74))/54` -/
def P12233897990299828605.Spec : Prop :=
  ∀ n, P12233897990299828605.a n = (A052161 n : ℚ)

theorem P12233897990299828605.correct : P12233897990299828605.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A052161, Nat.add_sub_cancel, A052161.P12233897990299828605.a, A052161.P17942717720509901001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A052161, Nat.add_sub_cancel, A052161.P12233897990299828605.a, A052161.P17942717720509901001.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A052161

/-! ## A052161.P2259886398430442168

`∑[∑[ogf(1/(1-5x+4x^2))]]`
-/

namespace A052161.P2259886398430442168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P2259886398430442168

namespace A052161

/-- `∑[∑[ogf(1/(1-5x+4x^2))]]` -/
def P2259886398430442168.Spec : Prop :=
  ∀ n, P2259886398430442168.a n = A052161 n

end A052161

/-! ## A052161.P12032606683133410567

`∑[∑[∑[4*a(n-1)]]]` with `a(0)=1`
-/

namespace A052161.P12032606683133410567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  4 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P12032606683133410567

namespace A052161

/-- `∑[∑[∑[4*a(n-1)]]]` -/
def P12032606683133410567.Spec : Prop :=
  ∀ n, (P12032606683133410567.a n : ℤ) = A052161 n

end A052161

/-! ## A052161.P2371749561056510162

`∑{#}[n, 3^#*C(n+3, #+3)]`
-/

namespace A052161.P2371749561056510162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 3) (k + 3)

end

end A052161.P2371749561056510162

namespace A052161

/-- `∑{#}[n, 3^#*C(n+3, #+3)]` -/
def P2371749561056510162.Spec : Prop :=
  ∀ n, (P2371749561056510162.a n : ℤ) = A052161 n

end A052161

/-! ## A052161.P13354511115596682200

`∑[n+1]+a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A052161.P13354511115596682200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A052161.P13354511115596682200

namespace A052161

/-- `∑[n+1]+a(n-1)/(1/2)²` -/
def P13354511115596682200.Spec : Prop :=
  ∀ n, P13354511115596682200.a n = (A052161 n : ℚ)

end A052161

/-! ## A052161.P13347248718342585590

`A389373(Δ[n²])`
-/

namespace A052161.P13347248718342585590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052161.P13347248718342585590

namespace A052161

/-- `A389373(Δ[n²])` -/
def P13347248718342585590.Spec : Prop :=
  ∀ n, P13347248718342585590.a n = A052161 n

end A052161

/-! ## A052161.P15555126960993941366

`∑[A014825(n+1)]`
-/

namespace A052161.P15555126960993941366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P15555126960993941366

namespace A052161

/-- `∑[A014825(n+1)]` -/
def P15555126960993941366.Spec : Prop :=
  ∀ n, P15555126960993941366.a n = A052161 n

end A052161

/-! ## A052161.P669687305002655721

`∑[A091919(2*n)]`
-/

namespace A052161.P669687305002655721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P669687305002655721

namespace A052161

/-- `∑[A091919(2*n)]` -/
def P669687305002655721.Spec : Prop :=
  ∀ n, P669687305002655721.a n = A052161 n

end A052161

/-! ## A052161.P2421176134471702556

`∑[∑[A002450(n+1)]]`
-/

namespace A052161.P2421176134471702556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P2421176134471702556

namespace A052161

/-- `∑[∑[A002450(n+1)]]` -/
def P2421176134471702556.Spec : Prop :=
  ∀ n, P2421176134471702556.a n = A052161 n

end A052161

/-! ## A052161.P6201458900312380504

`∑[∑[A052992(2*n)]]`
-/

namespace A052161.P6201458900312380504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P6201458900312380504

namespace A052161

/-- `∑[∑[A052992(2*n)]]` -/
def P6201458900312380504.Spec : Prop :=
  ∀ n, P6201458900312380504.a n = A052161 n

end A052161

/-! ## A052161.P3384987513177811647

`∑[∑[A097074(2*n)]]`
-/

namespace A052161.P3384987513177811647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P3384987513177811647

namespace A052161

/-- `∑[∑[A097074(2*n)]]` -/
def P3384987513177811647.Spec : Prop :=
  ∀ n, P3384987513177811647.a n = A052161 n

end A052161

/-! ## A052161.P11505213449761559075

`∑[∑[A097163(2*n)]]`
-/

namespace A052161.P11505213449761559075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P11505213449761559075

namespace A052161

/-- `∑[∑[A097163(2*n)]]` -/
def P11505213449761559075.Spec : Prop :=
  ∀ n, P11505213449761559075.a n = A052161 n

end A052161

/-! ## A052161.P5274885113008938809

`∑[∑[A279030(2*n)]]`
-/

namespace A052161.P5274885113008938809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P5274885113008938809

namespace A052161

/-- `∑[∑[A279030(2*n)]]` -/
def P5274885113008938809.Spec : Prop :=
  ∀ n, P5274885113008938809.a n = A052161 n

end A052161

/-! ## A052161.P16220523016363204825

`∑[∑[A283642(2*n)]]`
-/

namespace A052161.P16220523016363204825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P16220523016363204825

namespace A052161

/-- `∑[∑[A283642(2*n)]]` -/
def P16220523016363204825.Spec : Prop :=
  ∀ n, P16220523016363204825.a n = A052161 n

end A052161

/-! ## A052161.P12664717499434013232

`∑[A034299(2*n+1)]`
-/

namespace A052161.P12664717499434013232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P12664717499434013232

namespace A052161

/-- `∑[A034299(2*n+1)]` -/
def P12664717499434013232.Spec : Prop :=
  ∀ n, P12664717499434013232.a n = A052161 n

end A052161

/-! ## A052161.P16172407824663059011

`∑[A145766(n+1)/2]`
-/

namespace A052161.P16172407824663059011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145766 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052161.P16172407824663059011

namespace A052161

/-- `∑[A145766(n+1)/2]` -/
def P16172407824663059011.Spec : Prop :=
  ∀ n, P16172407824663059011.a n = (A052161 n : ℚ)

end A052161

/-!
# A052162: Primes at which difference pattern X4Y (X and Y >= 6) occurs in A001223.

The programs for A052162, there is no canonical definition to state claims against.
-/

/-! ## A052162.P4743727371634631303

`A275021(Δ[n²])`
-/

namespace A052162.P4743727371634631303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052162.P4743727371634631303

/-! ## A052162.P2899419833625429390

`p?[A275021(n+1)-4]`
-/

namespace A052162.P2899419833625429390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052162.P2899419833625429390

/-! ## A052162.P5307750212315771251

`or(1, A275021(record[xor(1, n)]))`
-/

namespace A052162.P5307750212315771251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A275021 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A052162.P5307750212315771251

/-! ## A052162.P13366006145043880610

`record[A275021(n^(n%2))]`
-/

namespace A052162.P13366006145043880610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052162.P13366006145043880610

/-! ## A052162.P10633493520282215376

`A275021(2*(n+1))-4`
-/

namespace A052162.P10633493520282215376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (2 * (n + 1)) - 4

end

end A052162.P10633493520282215376

/-! ## A052162.P225618975874735016

`record[A275021(n+1)/A000034(n)]`
-/

namespace A052162.P225618975874735016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275021 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052162.P225618975874735016

/-! ## A052162.P2170041361190639423

`∩[A015913(n+1), A275021(n+1)]`
-/

namespace A052162.P2170041361190639423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P2170041361190639423

/-! ## A052162.P939085811135169329

`∩[A029710(n+1), A275021(n+1)]`
-/

namespace A052162.P939085811135169329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P939085811135169329

/-! ## A052162.P5805601677425286454

`∩[A056772(n+1), A275021(n+1)]`
-/

namespace A052162.P5805601677425286454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P5805601677425286454

/-! ## A052162.P16466805042845830965

`∩[A164572(n+1), A275021(n+1)]`
-/

namespace A052162.P16466805042845830965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P16466805042845830965

/-! ## A052162.P13138828395347735112

`∩[A172238(n+1), A275021(n+1)]`
-/

namespace A052162.P13138828395347735112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P13138828395347735112

/-! ## A052162.P14924298127667478399

`∩[A121764(n+1), A275021(n+1)]`
-/

namespace A052162.P14924298127667478399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P14924298127667478399

/-! ## A052162.P11643066839409119843

`∩[A051634(n+1), A275021(n+1)]`
-/

namespace A052162.P11643066839409119843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P11643066839409119843

/-! ## A052162.P10702233464575758821

`∩[A002476(n+1), A275021(n+1)]`
-/

namespace A052162.P10702233464575758821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P10702233464575758821

/-! ## A052162.P12718363275137716009

`∩[A007645(n+1), A275021(n+1)]`
-/

namespace A052162.P12718363275137716009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P12718363275137716009

/-! ## A052162.P15572018182392268556

`∩[A045331(n+1), A275021(n+1)]`
-/

namespace A052162.P15572018182392268556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P15572018182392268556

/-! ## A052162.P4446970757784611379

`∩[A045375(n+1), A275021(n+1)]`
-/

namespace A052162.P4446970757784611379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P4446970757784611379

/-! ## A052162.P4470693842670090463

`∩[A123365(n+1), A275021(n+1)]`
-/

namespace A052162.P4470693842670090463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P4470693842670090463

/-! ## A052162.P10252255606239099863

`∩[A275021(n+1), A279815(n+1)]`
-/

namespace A052162.P10252255606239099863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P10252255606239099863

/-! ## A052162.P16741478578881378622

`∩[A055664(n+1), A275021(n+1)]`
-/

namespace A052162.P16741478578881378622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052162.P16741478578881378622

/-!
# A052164: Primes at which the difference pattern X42Y (X and Y >= 6) occurs in A001223.

The programs for A052164, the canonical program `A052164.P18395530735648300715` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052164 has offset 1).

The definition of A052164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052164.P4203489766037661226

`∩[A210360(n+1)-4, A134100(n+1)]`
-/

namespace A052164.P4203489766037661226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052164.P4203489766037661226

namespace A052164

/-- `∩[A210360(n+1)-4, A134100(n+1)]` -/
def P4203489766037661226.Spec : Prop :=
  ∀ n, (P4203489766037661226.a n : ℤ) = A052164 (n + 1)

end A052164

/-! ## A052164.P18395530735648300715

`∩[A025584(n+1), A210360(n+1)-4]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A052164

/-- `∩[A025584(n+1), A210360(n+1)-4]` -/
def P18395530735648300715.Spec : Prop :=
  ∀ n, (P18395530735648300715.a n : ℤ) = A052164 (n + 1)

theorem P18395530735648300715.correct : P18395530735648300715.Spec := by
  intro n
  simp only [A052164, Nat.add_sub_cancel]

end A052164

/-!
# A052165: Primes at which the difference pattern X,2,4,2,Y (X and Y >= 6) occurs in A001223.

The programs for A052165, there is no canonical definition to state claims against.
-/

/-! ## A052165.P9654115156839346313

`A007530(lt[A202068(3*n+5), A104601(n+1)])`
-/

namespace A052165.P9654115156839346313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202068 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052165.P9654115156839346313

/-!
# A052166: Primes at which the difference pattern X424Y (X and Y >= 6) occurs in A001223.

The programs for A052166, there is no canonical definition to state claims against.
-/

/-! ## A052166.P3474476931360620484

`p?[A280007(n+3)-5]`
-/

namespace A052166.P3474476931360620484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280007 (n + 3) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052166.P3474476931360620484

/-! ## A052166.P385526142413248159

`∩[A213631(n+1)-6, A213631(n+1)]`
-/

namespace A052166.P385526142413248159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213631 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052166.P385526142413248159

/-!
# A052167: Primes at which difference pattern X2424Y (X and Y >= 6) occurs in A001223.

The programs for A052167, there is no canonical definition to state claims against.
-/

/-! ## A052167.P11876324287023592490

`A022006(eq[2, A115766(∑[2-n]²+1)])`
-/

namespace A052167.P11876324287023592490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115766 ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052167.P11876324287023592490

/-! ## A052167.P7725940881701806461

`A022006(lt[A121370(2*n+1), A121399(n)])`
-/

namespace A052167.P7725940881701806461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121370 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052167.P7725940881701806461

/-!
# A052168: Primes at which difference pattern X4242Y (X and Y >= 6) occurs in A001223.

The programs for A052168, there is no canonical definition to state claims against.
-/

/-! ## A052168.P3844314039497212794

`A022007(∑[gcd(n, A333548(n+1))])`
-/

namespace A052168.P3844314039497212794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A333548 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052168.P3844314039497212794

/-! ## A052168.P10344394296855178831

`p?[A022007(n+1)*A094189(n+1)]`
-/

namespace A052168.P10344394296855178831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1) * A094189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052168.P10344394296855178831

/-!
# A052169: Equivalent of the Kurepa hypothesis for left factorial.

The programs for A052169, the canonical program `A052169.P16229980031192013463` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052169 has offset 2).

The definition of A052169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052169.P16229980031192013463

`n*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052169

/-- `n*a(n-1)+(n-1)*a(n-2)` -/
def P16229980031192013463.Spec : Prop :=
  ∀ n, P16229980031192013463.a n = A052169 (n + 2)

theorem P16229980031192013463.correct : P16229980031192013463.Spec := by
  intro n
  simp only [A052169, Nat.add_sub_cancel]

end A052169

/-! ## A052169.P13163942859899382359

`A002467(n+2)/(n+1)`
-/

namespace A052169.P13163942859899382359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002467 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A052169.P13163942859899382359

namespace A052169

/-- `A002467(n+2)/(n+1)` -/
def P13163942859899382359.Spec : Prop :=
  ∀ n, P13163942859899382359.a n = (A052169 (n + 2) : ℚ)

end A052169

/-! ## A052169.P11742382532997773712

`1/(n+1)*((n+2)!-floor(((n+2)!+1)/e))`
-/

namespace A052169.P11742382532997773712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((Nat.factorial (n + 2) : ℤ) - ⌊(Nat.factorial (n + 2) + 1 : ℝ) / Real.exp 1⌋ : ℚ)

end

end A052169.P11742382532997773712

namespace A052169

/-- `1/(n+1)*((n+2)!-floor(((n+2)!+1)/e))` -/
def P11742382532997773712.Spec : Prop :=
  ∀ n, P11742382532997773712.a n = (A052169 (n + 2) : ℚ)

end A052169

/-! ## A052169.P16978804645204602239

`((n+2)!-A000166(n+2))/(n+1)`
-/

namespace A052169.P16978804645204602239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℤ) - A000166 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A052169.P16978804645204602239

namespace A052169

/-- `((n+2)!-A000166(n+2))/(n+1)` -/
def P16978804645204602239.Spec : Prop :=
  ∀ n, P16978804645204602239.a n = (A052169 (n + 2) : ℚ)

end A052169

/-! ## A052169.P5969019863708356665

`abs(Δ[n*(1-a(n-1))])` with `a(0)=1`
-/

namespace A052169.P5969019863708356665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052169.P5969019863708356665

namespace A052169

/-- `abs(Δ[n*(1-a(n-1))])` -/
def P5969019863708356665.Spec : Prop :=
  ∀ n, P5969019863708356665.a n = A052169 (n + 2)

end A052169

/-! ## A052169.P16892571162736234619

`∏[(n-1)/a(n-1)+n]` with `a(0)=1, a(1)=2`
-/

namespace A052169.P16892571162736234619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052169.P16892571162736234619

namespace A052169

/-- `∏[(n-1)/a(n-1)+n]` -/
def P16892571162736234619.Spec : Prop :=
  ∀ n, P16892571162736234619.a n = (A052169 (n + 2) : ℚ)

end A052169

/-! ## A052169.P11708231141190314192

`∏[n-(1-n)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A052169.P11708231141190314192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) - (1 - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052169.P11708231141190314192

namespace A052169

/-- `∏[n-(1-n)/a(n-1)]` -/
def P11708231141190314192.Spec : Prop :=
  ∀ n, P11708231141190314192.a n = (A052169 (n + 2) : ℚ)

end A052169

/-! ## A052169.P10316947978210152331

`n*a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052169.P10316947978210152331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A052169.P10316947978210152331

namespace A052169

/-- `n*a(n-1)-(a(n-2)-n*a(n-2))` -/
def P10316947978210152331.Spec : Prop :=
  ∀ n, P10316947978210152331.a n = A052169 (n + 2)

theorem P10316947978210152331.correct : P10316947978210152331.Spec := by
  intro n
  simp only [A052169, Nat.add_sub_cancel, A052169.P10316947978210152331.a, A052169.P16229980031192013463.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052169

/-! ## A052169.P9740873477256777089

`A180191(n+1)+n!`
-/

namespace A052169.P9740873477256777089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 1) + (Nat.factorial n : ℤ)

end

end A052169.P9740873477256777089

namespace A052169

/-- `A180191(n+1)+n!` -/
def P9740873477256777089.Spec : Prop :=
  ∀ n, P9740873477256777089.a n = A052169 (n + 2)

end A052169

/-! ## A052169.P11361875171426698986

`A002467(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052169.P11361875171426698986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002467 n + (n : ℤ) * a (n - 1)

end

end A052169.P11361875171426698986

namespace A052169

/-- `A002467(n)+n*a(n-1)` -/
def P11361875171426698986.Spec : Prop :=
  ∀ n, P11361875171426698986.a n = A052169 (n + 2)

end A052169

/-!
# A052170: Number of directed loopless multigraphs with n arcs.

The programs for A052170, there is no canonical definition to state claims against.
-/

/-! ## A052170.P15073163894641888787

`A333361(C(n+2*n+1, 2)+n)`
-/

namespace A052170.P15073163894641888787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (Nat.choose (n + 2 * n + 1) 2 + n)

end

end A052170.P15073163894641888787

/-! ## A052170.P11077973846492473194

`A333361(A022266(n))+A057427(n)`
-/

namespace A052170.P11077973846492473194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A022266 n).toNat + A057427 n

end

end A052170.P11077973846492473194

/-! ## A052170.P4771073261169038286

`A333361(A022266(n))-A057428(n)`
-/

namespace A052170.P4771073261169038286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A022266 n).toNat - A057428 n

end

end A052170.P4771073261169038286

/-! ## A052170.P10701736631819407380

`A333361(∑[9*n+1])`
-/

namespace A052170.P10701736631819407380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052170.P10701736631819407380

/-! ## A052170.P198081720239869075

`A057427(3*n+2)*A333361(A062725(n))`
-/

namespace A052170.P198081720239869075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2) * A333361 (A062725 n).toNat

end

end A052170.P198081720239869075

/-!
# A052171: Number of directed multigraphs with loops on an infinite set of nodes containing a total of n arcs.

The programs for A052171, there is no canonical definition to state claims against.
-/

/-! ## A052171.P12481529773884616500

`A138107(C(2*n+n+1, 2)+n)`
-/

namespace A052171.P12481529773884616500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (Nat.choose (2 * n + n + 1) 2 + n)

end

end A052171.P12481529773884616500

/-! ## A052171.P6713666646999018176

`A138107(A022266(n))+A057427(n)`
-/

namespace A052171.P6713666646999018176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A022266 n).toNat + A057427 n

end

end A052171.P6713666646999018176

/-! ## A052171.P10515408216082786544

`A138107(A022266(n))-A057428(n)`
-/

namespace A052171.P10515408216082786544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A022266 n).toNat - A057428 n

end

end A052171.P10515408216082786544

/-! ## A052171.P5021293248471835862

`A138107(A062725(n))`
-/

namespace A052171.P5021293248471835862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A062725 n).toNat

end

end A052171.P5021293248471835862

/-! ## A052171.P17030227494133387241

`A138107(A081270(n))`
-/

namespace A052171.P17030227494133387241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A081270 n).toNat

end

end A052171.P17030227494133387241

/-!
# A052172: Pure 3-multicomplexes on infinite set of nodes with n 3-simplexes.

The programs for A052172, there is no canonical definition to state claims against.
-/

/-! ## A052172.P10374048952888319052

`A058783(∑{digits}[n, #])`
-/

namespace A052172.P10374048952888319052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058783 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A052172.P10374048952888319052

/-! ## A052172.P8544925738511394149

`A058783(∏{digits}[n, #])`
-/

namespace A052172.P8544925738511394149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058783 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A052172.P8544925738511394149

/-! ## A052172.P18197913287365450493

`A058783(n)+char[9]`
-/

namespace A052172.P18197913287365450493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058783 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052172.P18197913287365450493

/-! ## A052172.P7577662097760722376

`A058783(lt[col(n), 3])`
-/

namespace A052172.P7577662097760722376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052172.P7577662097760722376

/-!
# A052173: Another version of the Catalan triangle A008315.

The programs for A052173, the canonical program `A052173.P8337950554572488212` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052173 has offset 0).

The definition of A052173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052173.P8337950554572488212

`T(row(n)-1, col(n)-2)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052173

/-- `T(row(n)-1, col(n)-2)+T(n-1,k)` -/
def P8337950554572488212.Spec : Prop :=
  ∀ n, (P8337950554572488212.a n : ℤ) = A052173 n

theorem P8337950554572488212.correct : P8337950554572488212.Spec := by
  intro n
  simp only [A052173]

end A052173

/-! ## A052173.P7846853373921588842

`T(row(n)-1, col(n)-2)-(T(n-1,k-1)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A052173.P7846853373921588842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - 2) - (SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triUp a n

end

end A052173.P7846853373921588842

namespace A052173

/-- `T(row(n)-1, col(n)-2)-(T(n-1,k-1)-1)*T(n-1,k)` -/
def P7846853373921588842.Spec : Prop :=
  ∀ n, P7846853373921588842.a n = A052173 n

end A052173

/-! ## A052173.P2092026311436387687

`T(row(n)-1, col(n)-2)-(T(n-2,k-1)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A052173.P2092026311436387687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - 2) - (SequenceMachineLib.triUp2Left a n - 1) * SequenceMachineLib.triUp a n

end

end A052173.P2092026311436387687

namespace A052173

/-- `T(row(n)-1, col(n)-2)-(T(n-2,k-1)-1)*T(n-1,k)` -/
def P2092026311436387687.Spec : Prop :=
  ∀ n, P2092026311436387687.a n = A052173 n

end A052173

/-! ## A052173.P15344338173245370273

`T(row(n)-1, col(n)-2)-(T(row(n)-3, col(n)-1)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A052173.P15344338173245370273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - 2) - (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 1) - 1) * SequenceMachineLib.triUp a n

end

end A052173.P15344338173245370273

namespace A052173

/-- `T(row(n)-1, col(n)-2)-(T(row(n)-3, col(n)-1)-1)*T(n-1,k)` -/
def P15344338173245370273.Spec : Prop :=
  ∀ n, P15344338173245370273.a n = A052173 n

end A052173

/-! ## A052173.P12311162899692743581

`A053121(∑[char[∑[n]]]²-(n+1))`
-/

namespace A052173.P12311162899692743581
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A052173.P12311162899692743581

namespace A052173

/-- `A053121(∑[char[∑[n]]]²-(n+1))` -/
def P12311162899692743581.Spec : Prop :=
  ∀ n, P12311162899692743581.a n = A052173 n

end A052173

/-! ## A052173.P15209557199766435170

`or(char[1], A053121(A061579(n)))`
-/

namespace A052173.P15209557199766435170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053121 (A061579 n).toNat)

end

end A052173.P15209557199766435170

namespace A052173

/-- `or(char[1], A053121(A061579(n)))` -/
def P15209557199766435170.Spec : Prop :=
  ∀ n, P15209557199766435170.a n = A052173 n

end A052173

/-! ## A052173.P14538356030837327204

`A208101(n)*A376583(n+1)`
-/

namespace A052173.P14538356030837327204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208101 n * A376583 (n + 1)

end

end A052173.P14538356030837327204

namespace A052173

/-- `A208101(n)*A376583(n+1)` -/
def P14538356030837327204.Spec : Prop :=
  ∀ n, P14538356030837327204.a n = A052173 n

end A052173

/-! ## A052173.P16853051953898641486

`A059841(A002262(n))*A208101(n)`
-/

namespace A052173.P16853051953898641486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A002262 n).toNat * A208101 n

end

end A052173.P16853051953898641486

namespace A052173

/-- `A059841(A002262(n))*A208101(n)` -/
def P16853051953898641486.Spec : Prop :=
  ∀ n, P16853051953898641486.a n = A052173 n

end A052173

/-! ## A052173.P12402089057864539642

`gcd(3, A005897(n))*A053121(A061579(n))`
-/

namespace A052173.P12402089057864539642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005897 n) : ℤ) * A053121 (A061579 n).toNat

end

end A052173.P12402089057864539642

namespace A052173

/-- `gcd(3, A005897(n))*A053121(A061579(n))` -/
def P12402089057864539642.Spec : Prop :=
  ∀ n, P12402089057864539642.a n = A052173 n

end A052173

/-! ## A052173.P9973206359514257329

`gcd(n, A000217(2*n+1))*A053121(A061579(n))`
-/

namespace A052173.P9973206359514257329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000217 (2 * n + 1)) : ℤ) * A053121 (A061579 n).toNat

end

end A052173.P9973206359514257329

namespace A052173

/-- `gcd(n, A000217(2*n+1))*A053121(A061579(n))` -/
def P9973206359514257329.Spec : Prop :=
  ∀ n, P9973206359514257329.a n = A052173 n

end A052173

/-! ## A052173.P2746701947324900216

`A208101(n)%A014972(A276424(n))`
-/

namespace A052173.P2746701947324900216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208101 n) (A014972 (A276424 n).toNat)

end

end A052173.P2746701947324900216

namespace A052173

/-- `A208101(n)%A014972(A276424(n))` -/
def P2746701947324900216.Spec : Prop :=
  ∀ n, P2746701947324900216.a n = A052173 n

end A052173

/-! ## A052173.P9052592881588477926

`A053121(A061579(n))%A070218(A028310(n))`
-/

namespace A052173.P9052592881588477926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053121 (A061579 n).toNat) (A070218 (A028310 n).toNat)

end

end A052173.P9052592881588477926

namespace A052173

/-- `A053121(A061579(n))%A070218(A028310(n))` -/
def P9052592881588477926.Spec : Prop :=
  ∀ n, P9052592881588477926.a n = A052173 n

end A052173

/-!
# A052174: Triangle of numbers arising in enumeration of walks on square lattice.

The programs for A052174, there is no canonical definition to state claims against.
-/

/-! ## A052174.P15090872951659204747

`A093768(A061579(n))`
-/

namespace A052174.P15090872951659204747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A061579 n).toNat

end

end A052174.P15090872951659204747

/-! ## A052174.P9130964897927438039

`A093768(A114327(n)+n)`
-/

namespace A052174.P9130964897927438039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A114327 n + (n : ℤ)).toNat

end

end A052174.P9130964897927438039

/-! ## A052174.P11243794399985621463

`A093768(∑[A198954(n)-1])`
-/

namespace A052174.P11243794399985621463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052174.P11243794399985621463

/-! ## A052174.P4262795712939506027

`A093768(A038722(n+1)-1)`
-/

namespace A052174.P4262795712939506027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A038722 (n + 1) - 1).toNat

end

end A052174.P4262795712939506027

/-! ## A052174.P7229381336785252389

`A093768(A093995(n+1)-(n+1))`
-/

namespace A052174.P7229381336785252389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A052174.P7229381336785252389

/-! ## A052174.P10140325738376279336

`A093768(A002024(n+1)²-(n+1))`
-/

namespace A052174.P10140325738376279336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A052174.P10140325738376279336

/-! ## A052174.P17099940032829460747

`A093768(∑[A023443(A198954(n))])`
-/

namespace A052174.P17099940032829460747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052174.P17099940032829460747

/-! ## A052174.P15416402513135493156

`A093768(A185869(n+1)-A016789(n))`
-/

namespace A052174.P15416402513135493156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A185869 (n + 1) - A016789 n).toNat

end

end A052174.P15416402513135493156

/-! ## A052174.P8836865385961292052

`A093768(A185869(n+1)%A016789(n))`
-/

namespace A052174.P8836865385961292052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A052174.P8836865385961292052

/-! ## A052174.P12604651023565303906

`A093768(A038722(n+2))`
-/

namespace A052174.P12604651023565303906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A038722 (n + 2)).toNat

end

end A052174.P12604651023565303906

/-!
# A052175: Triangle of numbers arising in enumeration of walks on square lattice.

The programs for A052175, there is no canonical definition to state claims against.
-/

/-! ## A052175.P2055579943341138701

`A052176(3*n+2-comp[n²])`
-/

namespace A052175.P2055579943341138701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (3 * n + 2 - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A052175.P2055579943341138701

/-! ## A052175.P17706394153106684413

`filter[A052176(n), A276398(#)]`
-/

namespace A052175.P17706394153106684413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A052175.P17706394153106684413

/-! ## A052175.P5021906475990077935

`filter[A052176(n), A275606(#)]`
-/

namespace A052175.P5021906475990077935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275606 (f1 j).toNat = 1) n)

end

end A052175.P5021906475990077935

/-!
# A052176: Triangle of numbers arising in enumeration of walks on square lattice.

The programs for A052176, there is no canonical definition to state claims against.
-/

/-! ## A052176.P16032215099895601123

`A233971(lcm(1-n, A060821(n)))`
-/

namespace A052176.P16032215099895601123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (Int.lcm (1 - (n : ℤ)) (A060821 n))

end

end A052176.P16032215099895601123

/-! ## A052176.P16886047684643945640

`A005811(A093637(n))*A053121(n)`
-/

namespace A052176.P16886047684643945640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A093637 n).toNat * A053121 n

end

end A052176.P16886047684643945640

/-! ## A052176.P11062015342699505681

`lcm(A023416(A112472(3*n+1)), A053121(n))`
-/

namespace A052176.P11062015342699505681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023416 (A112472 (3 * n + 1)).toNat) (A053121 n)

end

end A052176.P11062015342699505681

/-! ## A052176.P9209595488478550327

`A048766(lcm(A295261(3*n+2), A363041(n+1)))`
-/

namespace A052176.P9209595488478550327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A295261 (3 * n + 2)) (A363041 (n + 1)))

end

end A052176.P9209595488478550327

/-!
# A052177: Number of walks on simple cubic lattice (starting on the xy plane, never going below it and finishing a height 1 above it).

The programs for A052177, the canonical program `A052177.P6834098607205460223` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052177 has offset 0).

The definition of A052177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052178, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052177.P6834098607205460223

`4*a(n-1)+A005572(n-1)+A052178(n-1)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052177

/-- `4*a(n-1)+A005572(n-1)+A052178(n-1)` -/
def P6834098607205460223.Spec : Prop :=
  ∀ n, P6834098607205460223.a n = A052177 n

theorem P6834098607205460223.correct : P6834098607205460223.Spec := by
  intro n
  simp only [A052177]

end A052177

/-! ## A052177.P12873545330937673631

`∑{#}[n, C(n, #)*A045445(#+1)]`
-/

namespace A052177.P12873545330937673631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A045445 (k + 1)

end

end A052177.P12873545330937673631

namespace A052177

/-- `∑{#}[n, C(n, #)*A045445(#+1)]` -/
def P12873545330937673631.Spec : Prop :=
  ∀ n, P12873545330937673631.a n = A052177 n

end A052177

/-! ## A052177.P7804207533257481530

`A052179(A000124(n))*A057427(n)`
-/

namespace A052177.P7804207533257481530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (A000124 n).toNat * A057427 n

end

end A052177.P7804207533257481530

namespace A052177

/-- `A052179(A000124(n))*A057427(n)` -/
def P7804207533257481530.Spec : Prop :=
  ∀ n, P7804207533257481530.a n = A052177 n

end A052177

/-! ## A052177.P7663972463010102725

`and(A052179(A000124(n)), A057428(n))`
-/

namespace A052177.P7663972463010102725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052179 (A000124 n).toNat) (A057428 n)

end

end A052177.P7663972463010102725

namespace A052177

/-- `and(A052179(A000124(n)), A057428(n))` -/
def P7663972463010102725.Spec : Prop :=
  ∀ n, P7663972463010102725.a n = A052177 n

end A052177

/-! ## A052177.P3528487425383572366

`char[A029579(n)]*A052179(A000124(n))`
-/

namespace A052177.P3528487425383572366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052179 (A000124 n).toNat

end

end A052177.P3528487425383572366

namespace A052177

/-- `char[A029579(n)]*A052179(A000124(n))` -/
def P3528487425383572366.Spec : Prop :=
  ∀ n, P3528487425383572366.a n = A052177 n

end A052177

/-! ## A052177.P1201771670850804573

`and(A052179(A000124(n)), A153881(n+1))`
-/

namespace A052177.P1201771670850804573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052179 (A000124 n).toNat) (A153881 (n + 1))

end

end A052177.P1201771670850804573

namespace A052177

/-- `and(A052179(A000124(n)), A153881(n+1))` -/
def P1201771670850804573.Spec : Prop :=
  ∀ n, P1201771670850804573.a n = A052177 n

end A052177

/-! ## A052177.P7488079072612869283

`A005572(n+1)%(2*A005572(n))`
-/

namespace A052177.P7488079072612869283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005572 (n + 1)) (2 * A005572 n)

end

end A052177.P7488079072612869283

namespace A052177

/-- `A005572(n+1)%(2*A005572(n))` -/
def P7488079072612869283.Spec : Prop :=
  ∀ n, P7488079072612869283.a n = A052177 n

end A052177

/-! ## A052177.P15948215953515983941

`A052179(A000124(n))%A000457(n)`
-/

namespace A052177.P15948215953515983941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052179 (A000124 n).toNat) (A000457 n)

end

end A052177.P15948215953515983941

namespace A052177

/-- `A052179(A000124(n))%A000457(n)` -/
def P15948215953515983941.Spec : Prop :=
  ∀ n, P15948215953515983941.a n = A052177 n

end A052177

/-!
# A052178: Number of walks of length n on the simple cubic lattice terminating at height 2 above the (x,y)-plane.

The programs for A052178, the canonical program `A052178.P5251959078177021944` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052178 has offset 2).

The definition of A052178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052178.P5251959078177021944

`A052179(∑[n+2]+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052178

/-- `A052179(∑[n+2]+3)` -/
def P5251959078177021944.Spec : Prop :=
  ∀ n, P5251959078177021944.a n = A052178 (n + 2)

theorem P5251959078177021944.correct : P5251959078177021944.Spec := by
  intro n
  simp only [A052178, Nat.add_sub_cancel]

end A052178

/-! ## A052178.P16827946199335039428

`record[gcd(A048993(n+2), A052179(n+4))]`
-/

namespace A052178.P16827946199335039428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 2)) (A052179 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052178.P16827946199335039428

namespace A052178

/-- `record[gcd(A048993(n+2), A052179(n+4))]` -/
def P16827946199335039428.Spec : Prop :=
  ∀ n, (P16827946199335039428.a n : ℤ) = A052178 (n + 2)

end A052178

/-! ## A052178.P5713112026087519783

`record[gcd(A052179(n), A303913(n))]`
-/

namespace A052178.P5713112026087519783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052179 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052178.P5713112026087519783

namespace A052178

/-- `record[gcd(A052179(n), A303913(n))]` -/
def P5713112026087519783.Spec : Prop :=
  ∀ n, (P5713112026087519783.a n : ℤ) = A052178 (n + 2)

end A052178

/-! ## A052178.P795401266550189035

`record[gcd(A052179(n+3), A055290(n+2))]`
-/

namespace A052178.P795401266550189035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052179 (n + 3)) (A055290 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052178.P795401266550189035

namespace A052178

/-- `record[gcd(A052179(n+3), A055290(n+2))]` -/
def P795401266550189035.Spec : Prop :=
  ∀ n, (P795401266550189035.a n : ℤ) = A052178 (n + 2)

end A052178

/-!
# A052179: Triangle of numbers arising in enumeration of walks on cubic lattice.

The programs for A052179, the canonical program `A052179.P13340592018414658874` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052179 has offset 0).

The definition of A052179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052179.P13340592018414658874

`T(n-1,k-1)+T(n-1,k+1)+2*2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052179

/-- `T(n-1,k-1)+T(n-1,k+1)+2*2*T(n-1,k)` -/
def P13340592018414658874.Spec : Prop :=
  ∀ n, (P13340592018414658874.a n : ℤ) = A052179 n

theorem P13340592018414658874.correct : P13340592018414658874.Spec := by
  intro n
  simp only [A052179]

end A052179

/-!
# A052180: Last filtering prime for n-th prime p: find smallest prime factor of each of the composite numbers between p and next prime; take maximal value.

The programs for A052180, there is no canonical definition to state claims against.
-/

/-! ## A052180.P4752297760485419045

`A000040(A083269(2+n))`
-/

namespace A052180.P4752297760485419045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083269 (2 + n)).toNat

end

end A052180.P4752297760485419045

/-! ## A052180.P7887932599593288575

`A008578(1+A083269(2+n))`
-/

namespace A052180.P7887932599593288575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A083269 (2 + n)).toNat

end

end A052180.P7887932599593288575

/-! ## A052180.P9455983096869300398

`A038179(A083269(n+2))%A103955(n+1)`
-/

namespace A052180.P9455983096869300398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038179 (A083269 (n + 2)).toNat) (A103955 (n + 1))

end

end A052180.P9455983096869300398

/-! ## A052180.P6604077212612327101

`A005728(A083269(n+2))%A029999(3*(n+1))`
-/

namespace A052180.P6604077212612327101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005728 (A083269 (n + 2)).toNat) (A029999 (3 * (n + 1)))

end

end A052180.P6604077212612327101

/-! ## A052180.P2010603243306940032

`A006530(A076976(n+2))`
-/

namespace A052180.P2010603243306940032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076976 (n + 2)).toNat

end

end A052180.P2010603243306940032

/-!
# A052181: Partial sums of A050483.

The programs for A052181, the canonical program `A052181.P3293629019242765493` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052181 has offset 0).

The definition of A052181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052181.P6189114653906311244

`(n+2)*C(n+7, 7)/2`
-/

namespace A052181.P6189114653906311244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose (n + 7) 7 : ℚ) / 2

end

end A052181.P6189114653906311244

namespace A052181

/-- `(n+2)*C(n+7, 7)/2` -/
def P6189114653906311244.Spec : Prop :=
  ∀ n, P6189114653906311244.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P3293629019242765493

`A027819(n+1)/7`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052181

/-- `A027819(n+1)/7` -/
def P3293629019242765493.Spec : Prop :=
  ∀ n, P3293629019242765493.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P3141052289830762899

`(n/2+1)*C(n+7, 7)`
-/

namespace A052181.P3141052289830762899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.choose (n + 7) 7 : ℚ)

end

end A052181.P3141052289830762899

namespace A052181

/-- `(n/2+1)*C(n+7, 7)` -/
def P3141052289830762899.Spec : Prop :=
  ∀ n, P3141052289830762899.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P14729458208968428994

`∑[∑[∑[∑[∑[∑[∑[4*n+1]]]]]]]`
-/

namespace A052181.P14729458208968428994
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052181.P14729458208968428994

namespace A052181

/-- `∑[∑[∑[∑[∑[∑[∑[4*n+1]]]]]]]` -/
def P14729458208968428994.Spec : Prop :=
  ∀ n, (P14729458208968428994.a n : ℤ) = A052181 n

end A052181

/-! ## A052181.P16137732677298473908

`A104670(n)/(n+1)`
-/

namespace A052181.P16137732677298473908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n : ℚ) / (n + 1 : ℚ)

end

end A052181.P16137732677298473908

namespace A052181

/-- `A104670(n)/(n+1)` -/
def P16137732677298473908.Spec : Prop :=
  ∀ n, P16137732677298473908.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P4259698385151736156

`A050483(n)+a(n-1)` with `a(0)=1`
-/

namespace A052181.P4259698385151736156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050483 n + a (n - 1)

end

end A052181.P4259698385151736156

namespace A052181

/-- `A050483(n)+a(n-1)` -/
def P4259698385151736156.Spec : Prop :=
  ∀ n, P4259698385151736156.a n = A052181 n

end A052181

/-! ## A052181.P201024379680856288

`(n+2)*A000580(n+7)/2`
-/

namespace A052181.P201024379680856288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A000580 (n + 7) : ℚ) / 2

end

end A052181.P201024379680856288

namespace A052181

/-- `(n+2)*A000580(n+7)/2` -/
def P201024379680856288.Spec : Prop :=
  ∀ n, P201024379680856288.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P16381872458653517916

`(n+1)/2*A027818(n+1)/7`
-/

namespace A052181.P16381872458653517916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A027818 (n + 1) : ℚ) / 7

end

end A052181.P16381872458653517916

namespace A052181

/-- `(n+1)/2*A027818(n+1)/7` -/
def P16381872458653517916.Spec : Prop :=
  ∀ n, P16381872458653517916.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P13012901664033452504

`2*A053367(n)-A053347(n)`
-/

namespace A052181.P13012901664033452504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053367 n - A053347 n

end

end A052181.P13012901664033452504

namespace A052181

/-- `2*A053367(n)-A053347(n)` -/
def P13012901664033452504.Spec : Prop :=
  ∀ n, P13012901664033452504.a n = A052181 n

end A052181

/-! ## A052181.P6799661190201822529

`A053347(n)+A053367(n)-A000581(n+8)`
-/

namespace A052181.P6799661190201822529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n + (A053367 n - A000581 (n + 8))

end

end A052181.P6799661190201822529

namespace A052181

/-- `A053347(n)+A053367(n)-A000581(n+8)` -/
def P6799661190201822529.Spec : Prop :=
  ∀ n, P6799661190201822529.a n = A052181 n

end A052181

/-! ## A052181.P17967837890088417464

`A053347(n+1)+A053347(n)-A050494(n+1)`
-/

namespace A052181.P17967837890088417464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (n + 1) + (A053347 n - A050494 (n + 1))

end

end A052181.P17967837890088417464

namespace A052181

/-- `A053347(n+1)+A053347(n)-A050494(n+1)` -/
def P17967837890088417464.Spec : Prop :=
  ∀ n, P17967837890088417464.a n = A052181 n

end A052181

/-! ## A052181.P8558163582240585553

`A055843(n+1)-(A055843(n)+A050483(n+1))`
-/

namespace A052181.P8558163582240585553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055843 (n + 1) - (A055843 n + A050483 (n + 1))

end

end A052181.P8558163582240585553

namespace A052181

/-- `A055843(n+1)-(A055843(n)+A050483(n+1))` -/
def P8558163582240585553.Spec : Prop :=
  ∀ n, P8558163582240585553.a n = A052181 n

end A052181

/-! ## A052181.P2543393004860025008

`a(n-1)*A027379(n+2)/A000217(n)` with `a(0)=1`
-/

namespace A052181.P2543393004860025008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A027379 (n + 2) : ℚ) / (A000217 n : ℚ)

end

end A052181.P2543393004860025008

namespace A052181

/-- `a(n-1)*A027379(n+2)/A000217(n)` -/
def P2543393004860025008.Spec : Prop :=
  ∀ n, P2543393004860025008.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P10334090471435810596

`A062190(A055998(n+1))/(n+1)`
-/

namespace A052181.P10334090471435810596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062190 (A055998 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A052181.P10334090471435810596

namespace A052181

/-- `A062190(A055998(n+1))/(n+1)` -/
def P10334090471435810596.Spec : Prop :=
  ∀ n, P10334090471435810596.a n = (A052181 n : ℚ)

end A052181

/-! ## A052181.P9505994285769877736

`A391046(∑[n+3])`
-/

namespace A052181.P9505994285769877736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052181.P9505994285769877736

namespace A052181

/-- `A391046(∑[n+3])` -/
def P9505994285769877736.Spec : Prop :=
  ∀ n, P9505994285769877736.a n = A052181 n

end A052181

/-!
# A052182: Determinant of n X n matrix whose rows are cyclic permutations of 1..n.

The programs for A052182, there is no canonical definition to state claims against.
-/

/-! ## A052182.P10029557907563215046

`A212599(n)*A276438(C(A003159(2*n+1), n)+n)`
-/

namespace A052182.P10029557907563215046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212599 n * A276438 (Nat.choose (A003159 (2 * n + 1)).toNat n + n)

end

end A052182.P10029557907563215046

/-!
# A052183: a(n) = (n + 2) * binomial(3*n, n) / (2*n + 1).

The programs for A052183, the canonical program `A052183.P11581236257844654630` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052183 has offset 0).

The definition of A052183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052183.P11581236257844654630

`C(n+2, 2)*A000139(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052183

/-- `C(n+2, 2)*A000139(n)` -/
def P11581236257844654630.Spec : Prop :=
  ∀ n, P11581236257844654630.a n = A052183 n

theorem P11581236257844654630.correct : P11581236257844654630.Spec := by
  intro n
  simp only [A052183]

end A052183

/-! ## A052183.P13049684915090073080

`(n+2)*C(3*n, n)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052183.P13049684915090073080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

end

end A052183.P13049684915090073080

namespace A052183

/-- `(n+2)*C(3*n, n)/(2*n+1)` -/
def P13049684915090073080.Spec : Prop :=
  ∀ n, P13049684915090073080.a n = (A052183 n : ℚ)

end A052183

/-! ## A052183.P12730571815258138257

`(2+n)*A001764(n)`
-/

namespace A052183.P12730571815258138257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + n : ℤ) * A001764 n

end

end A052183.P12730571815258138257

namespace A052183

/-- `(2+n)*A001764(n)` -/
def P12730571815258138257.Spec : Prop :=
  ∀ n, P12730571815258138257.a n = A052183 n

end A052183

/-! ## A052183.P5908579098056982894

`∑[n+1]*A000139(n)`
-/

namespace A052183.P5908579098056982894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000139 n

end

end A052183.P5908579098056982894

namespace A052183

/-- `∑[n+1]*A000139(n)` -/
def P5908579098056982894.Spec : Prop :=
  ∀ n, P5908579098056982894.a n = A052183 n

end A052183

/-! ## A052183.P4482555722097462290

`ratio[n+1]*A174687(n)`
-/

namespace A052183.P4482555722097462290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A174687 n : ℚ)

end

end A052183.P4482555722097462290

namespace A052183

/-- `ratio[n+1]*A174687(n)` -/
def P4482555722097462290.Spec : Prop :=
  ∀ n, P4482555722097462290.a n = (A052183 n : ℚ)

end A052183

/-! ## A052183.P10689630350974359888

`(n+2)*A047749(2*n)`
-/

namespace A052183.P10689630350974359888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A047749 (2 * n)

end

end A052183.P10689630350974359888

namespace A052183

/-- `(n+2)*A047749(2*n)` -/
def P10689630350974359888.Spec : Prop :=
  ∀ n, P10689630350974359888.a n = A052183 n

end A052183

/-! ## A052183.P4364085214616616828

`(n+2)*∑{d}[n+1, A251662(#)]`
-/

namespace A052183.P4364085214616616828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A251662 d)

end

end A052183.P4364085214616616828

namespace A052183

/-- `(n+2)*∑{d}[n+1, A251662(#)]` -/
def P4364085214616616828.Spec : Prop :=
  ∀ n, P4364085214616616828.a n = A052183 n

end A052183

/-! ## A052183.P17895323310850571120

`(n+2)*A005809(n)/(2*n+1)`
-/

namespace A052183.P17895323310850571120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((A005809 n : ℚ) / (2 * n + 1 : ℚ))

end

end A052183.P17895323310850571120

namespace A052183

/-- `(n+2)*A005809(n)/(2*n+1)` -/
def P17895323310850571120.Spec : Prop :=
  ∀ n, P17895323310850571120.a n = (A052183 n : ℚ)

end A052183

/-! ## A052183.P14486798194038494102

`(n+2)*A045721(n)/(3*n+1)`
-/

namespace A052183.P14486798194038494102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((A045721 n : ℚ) / (3 * n + 1 : ℚ))

end

end A052183.P14486798194038494102

namespace A052183

/-- `(n+2)*A045721(n)/(3*n+1)` -/
def P14486798194038494102.Spec : Prop :=
  ∀ n, P14486798194038494102.a n = (A052183 n : ℚ)

end A052183

/-! ## A052183.P8407339012960916229

`A007226(n)/(2*n+1)*∑[n+1]`
-/

namespace A052183.P8407339012960916229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007226 n : ℚ) / (2 * n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A052183.P8407339012960916229

namespace A052183

/-- `A007226(n)/(2*n+1)*∑[n+1]` -/
def P8407339012960916229.Spec : Prop :=
  ∀ n, P8407339012960916229.a n = (A052183 n : ℚ)

end A052183

/-! ## A052183.P18198659230358271449

`A174687(n)+A001764(n)`
-/

namespace A052183.P18198659230358271449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n + A001764 n

end

end A052183.P18198659230358271449

namespace A052183

/-- `A174687(n)+A001764(n)` -/
def P18198659230358271449.Spec : Prop :=
  ∀ n, P18198659230358271449.a n = A052183 n

end A052183

/-! ## A052183.P2029032817148273154

`A000139(n)*A000217(n+1)`
-/

namespace A052183.P2029032817148273154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A000217 (n + 1)

end

end A052183.P2029032817148273154

namespace A052183

/-- `A000139(n)*A000217(n+1)` -/
def P2029032817148273154.Spec : Prop :=
  ∀ n, P2029032817148273154.a n = A052183 n

theorem P2029032817148273154.correct : P2029032817148273154.Spec := by
  intro n
  simp only [A052183, Nat.add_sub_cancel, A052183.P2029032817148273154.a, A052183.P11581236257844654630.a, A000139, A000139.P8318245190687706795.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052183

/-! ## A052183.P16996458513146621104

`(n+2)*A047764(A017545(n))`
-/

namespace A052183.P16996458513146621104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A047764 (A017545 n).toNat

end

end A052183.P16996458513146621104

namespace A052183

/-- `(n+2)*A047764(A017545(n))` -/
def P16996458513146621104.Spec : Prop :=
  ∀ n, P16996458513146621104.a n = A052183 n

end A052183

/-! ## A052183.P8113678425015346938

`(n+2)*A069269(A055998(n))`
-/

namespace A052183.P8113678425015346938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A069269 (A055998 n).toNat

end

end A052183.P8113678425015346938

namespace A052183

/-- `(n+2)*A069269(A055998(n))` -/
def P8113678425015346938.Spec : Prop :=
  ∀ n, P8113678425015346938.a n = A052183 n

end A052183

/-! ## A052183.P9087391644719099548

`A000139(n)*A161680(n+2)`
-/

namespace A052183.P9087391644719099548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A161680 (n + 2)

end

end A052183.P9087391644719099548

namespace A052183

/-- `A000139(n)*A161680(n+2)` -/
def P9087391644719099548.Spec : Prop :=
  ∀ n, P9087391644719099548.a n = A052183 n

theorem P9087391644719099548.correct : P9087391644719099548.Spec := by
  intro n
  simp only [A052183, Nat.add_sub_cancel, A052183.P9087391644719099548.a, A052183.P11581236257844654630.a, A000139, A000139.P8318245190687706795.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052183

/-! ## A052183.P883081130305016427

`(n+2)*A127898(A161680(n))`
-/

namespace A052183.P883081130305016427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A127898 (A161680 n).toNat

end

end A052183.P883081130305016427

namespace A052183

/-- `(n+2)*A127898(A161680(n))` -/
def P883081130305016427.Spec : Prop :=
  ∀ n, P883081130305016427.a n = A052183 n

end A052183

/-! ## A052183.P17740350961540353807

`A047761(A004274(n+1))*(n+2)`
-/

namespace A052183.P17740350961540353807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (A004274 (n + 1)).toNat * (n + 2 : ℤ)

end

end A052183.P17740350961540353807

namespace A052183

/-- `A047761(A004274(n+1))*(n+2)` -/
def P17740350961540353807.Spec : Prop :=
  ∀ n, P17740350961540353807.a n = A052183 n

end A052183

/-! ## A052183.P13935330111069294705

`(n+2)*A047761(A004280(n+1))`
-/

namespace A052183.P13935330111069294705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A047761 (A004280 (n + 1)).toNat

end

end A052183.P13935330111069294705

namespace A052183

/-- `(n+2)*A047761(A004280(n+1))` -/
def P13935330111069294705.Spec : Prop :=
  ∀ n, P13935330111069294705.a n = A052183 n

end A052183

/-! ## A052183.P9525859704839736077

`A000139(n)+n*A103938(n+1)`
-/

namespace A052183.P9525859704839736077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + (n : ℤ) * A103938 (n + 1)

end

end A052183.P9525859704839736077

namespace A052183

/-- `A000139(n)+n*A103938(n+1)` -/
def P9525859704839736077.Spec : Prop :=
  ∀ n, P9525859704839736077.a n = A052183 n

end A052183

/-! ## A052183.P16650557175221714904

`(n+2)*gcd(A005809(n), A045721(n))`
-/

namespace A052183.P16650557175221714904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Int.gcd (A005809 n) (A045721 n)

end

end A052183.P16650557175221714904

namespace A052183

/-- `(n+2)*gcd(A005809(n), A045721(n))` -/
def P16650557175221714904.Spec : Prop :=
  ∀ n, (P16650557175221714904.a n : ℤ) = A052183 n

end A052183

/-!
# A052186: Number of permutations of [n] with no strong fixed points.

The programs for A052186, there is no canonical definition to state claims against.
-/

/-! ## A052186.P1230226875926012999

`A145878(∑[n])`
-/

namespace A052186.P1230226875926012999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052186.P1230226875926012999

/-! ## A052186.P10436978618059014947

`or(char[2], A145878(A000217(n)))`
-/

namespace A052186.P10436978618059014947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145878 (A000217 n).toNat)

end

end A052186.P10436978618059014947

/-! ## A052186.P3491976412559159688

`A145878(A000217(n))*A262681(n)`
-/

namespace A052186.P3491976412559159688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145878 (A000217 n).toNat * A262681 n

end

end A052186.P3491976412559159688

/-! ## A052186.P2752832725699851683

`gcd(A000038(n), A145878(A000217(n)))`
-/

namespace A052186.P2752832725699851683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145878 (A000217 n).toNat)

end

end A052186.P2752832725699851683

/-! ## A052186.P2561554972325952356

`lcm(A020985(n), A145878(A000217(n)))`
-/

namespace A052186.P2561554972325952356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145878 (A000217 n).toNat)

end

end A052186.P2561554972325952356

/-!
# A052187: a(n) is the smallest prime p such that p, p+d, and p+2d are consecutive primes where d = 2 for n = 1 and d = 6*(n-1) for n > 1.

The programs for A052187, there is no canonical definition to state claims against.
-/

/-! ## A052187.P1018115423394112914

`A054342(n+1)-2*A008486(n)`
-/

namespace A052187.P1018115423394112914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (n + 1) - 2 * A008486 n

end

end A052187.P1018115423394112914

/-! ## A052187.P16412845683850979239

`A054342(n+1)-(A101328(n+2)+1)`
-/

namespace A052187.P16412845683850979239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (n + 1) - (A101328 (n + 2) + 1)

end

end A052187.P16412845683850979239

/-! ## A052187.P3131773984180280599

`A054342(n+1)-(A038179(2*(n+1))-1)`
-/

namespace A052187.P3131773984180280599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (n + 1) - (A038179 (2 * (n + 1)) - 1)

end

end A052187.P3131773984180280599

/-! ## A052187.P14440996657356850106

`A054342(n+1)-A004277(A008486(n))`
-/

namespace A052187.P14440996657356850106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (n + 1) - A004277 (A008486 n).toNat

end

end A052187.P14440996657356850106

/-! ## A052187.P12119731561467264765

`A054342(n+1)-A004277(A004277(n)+n)`
-/

namespace A052187.P12119731561467264765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054342 (n + 1) - A004277 (A004277 n + (n : ℤ)).toNat

end

end A052187.P12119731561467264765

/-!
# A052188: Primes p such that p, p+12, p+24 are consecutive primes.

The programs for A052188, there is no canonical definition to state claims against.
-/

/-! ## A052188.P10900958987246990632

`A053072(n+1)-12`
-/

namespace A052188.P10900958987246990632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053072 (n + 1) - 12

end

end A052188.P10900958987246990632

/-! ## A052188.P12055373583906727244

`abs(A053072(Δ[n²]-n)-12)`
-/

namespace A052188.P12055373583906727244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053072 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 12|

end

end A052188.P12055373583906727244

/-! ## A052188.P16859805848647394783

`or(1, A053072(Δ[A000290(n)]-n)-12)`
-/

namespace A052188.P16859805848647394783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053072 (f1 (n + 1) - f1 n - (n : ℤ)).toNat - 12)

end

end A052188.P16859805848647394783

/-! ## A052188.P10350391309353322468

`∩[A031930(n+1), A122535(n+1)]`
-/

namespace A052188.P10350391309353322468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052188.P10350391309353322468

/-! ## A052188.P15164924255801263696

`p?[A024675(A064113(n+1))-18]`
-/

namespace A052188.P15164924255801263696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A064113 (n + 1)).toNat - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052188.P15164924255801263696

/-! ## A052188.P9046356106837770591

`p?[A078444(A066875(n+1))-5]-12`
-/

namespace A052188.P9046356106837770591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A066875 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 12

end

end A052188.P9046356106837770591

/-! ## A052188.P9961257791538154615

`A151799(A053072(n+1))`
-/

namespace A052188.P9961257791538154615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A053072 (n + 1)).toNat

end

end A052188.P9961257791538154615

/-! ## A052188.P5395159799134814257

`A006530(A053072(Δ[n²]-n)-12)`
-/

namespace A052188.P5395159799134814257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053072 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 12).toNat

end

end A052188.P5395159799134814257

/-! ## A052188.P17825722346474407297

`A000040(A000720(xor(1, A053072(n+1))))`
-/

namespace A052188.P17825722346474407297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (Int.xor 1 (A053072 (n + 1))).toNat).toNat

end

end A052188.P17825722346474407297

/-! ## A052188.P5213633055051873450

`A078587(A053072(n+1))`
-/

namespace A052188.P5213633055051873450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A053072 (n + 1)).toNat

end

end A052188.P5213633055051873450

/-!
# A052189: Primes p such that p, p+18, p+36 are consecutive primes.

The programs for A052189, there is no canonical definition to state claims against.
-/

/-! ## A052189.P6494500517716076070

`A053073(1+n)-18`
-/

namespace A052189.P6494500517716076070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053073 (1 + n) - 18

end

end A052189.P6494500517716076070

/-! ## A052189.P15570843454641831466

`A031937(eq[18, A053327(n+1)])-18`
-/

namespace A052189.P15570843454641831466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 18

end

end A052189.P15570843454641831466

/-! ## A052189.P15564912059292763188

`∩[A031936(n+1), A122535(n+1)]`
-/

namespace A052189.P15564912059292763188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052189.P15564912059292763188

/-! ## A052189.P3378336510844185096

`p?[gcd(A031936(n+2), A031937(n))]-18`
-/

namespace A052189.P3378336510844185096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031936 (n + 2)) (A031937 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 18

end

end A052189.P3378336510844185096

/-! ## A052189.P14048470584363515648

`p?[A291766(A117217(n+1))+A122535(n+1)]-18`
-/

namespace A052189.P14048470584363515648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A117217 (n + 1)).toNat + A122535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 18

end

end A052189.P14048470584363515648

/-!
# A052190: Primes p such that p, p+24, p+48 are consecutive primes.

The programs for A052190, there is no canonical definition to state claims against.
-/

/-! ## A052190.P7853635978225862137

`A053074(n+1)-24`
-/

namespace A052190.P7853635978225862137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053074 (n + 1) - 24

end

end A052190.P7853635978225862137

/-! ## A052190.P3201323830172767179

`∩[A098974(n+1), A126720(n+1)]-24`
-/

namespace A052190.P3201323830172767179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126720 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 24

end

end A052190.P3201323830172767179

/-! ## A052190.P6478981354381329905

`p?[gcd(A098974(n+2), A126720(n+1))]-24`
-/

namespace A052190.P6478981354381329905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098974 (n + 2)) (A126720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 24

end

end A052190.P6478981354381329905

/-! ## A052190.P17625007290229929786

`A128383(3*n+1)`
-/

namespace A052190.P17625007290229929786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128383 (3 * n + 1)

end

end A052190.P17625007290229929786

/-! ## A052190.P7740891059812043903

`record[A128383(A087507(n))]`
-/

namespace A052190.P7740891059812043903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128383 (A087507 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052190.P7740891059812043903

/-!
# A052191: Smallest multiple of n with no isolated digits.

The programs for A052191, there is no canonical definition to state claims against.
-/

/-! ## A052191.P10243137805900144106

`(n+1)*A052192(n+1)`
-/

namespace A052191.P10243137805900144106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052192 (n + 1)

end

end A052191.P10243137805900144106

/-! ## A052191.P13709867362537310545

`A052192(A077168(n))*A077168(n)`
-/

namespace A052191.P13709867362537310545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052192 (A077168 n).toNat * A077168 n

end

end A052191.P13709867362537310545

/-!
# A052192: Smallest a(n) for which n*a(n) has no isolated digits.

The programs for A052192, there is no canonical definition to state claims against.
-/

/-! ## A052192.P7283666925647750423

`A052191(n+1)/(n+1)`
-/

namespace A052192.P7283666925647750423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052191 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052192.P7283666925647750423

/-!
# A052195: Primes p such that p, p+30, p+60 are consecutive primes.

The programs for A052195, there is no canonical definition to state claims against.
-/

/-! ## A052195.P9066477144307041931

`A053075(n+1)-30`
-/

namespace A052195.P9066477144307041931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053075 (n + 1) - 30

end

end A052195.P9066477144307041931

/-!
# A052197: Primes p such that p, p+36, p+72 are consecutive primes.

The programs for A052197, there is no canonical definition to state claims against.
-/

/-! ## A052197.P15841261403657717355

`A053076(1+n)-36`
-/

namespace A052197.P15841261403657717355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053076 (1 + n) - 36

end

end A052197.P15841261403657717355

/-!
# A052198: Primes p such that p, p+42, p+84 are consecutive primes.

The programs for A052198, there is no canonical definition to state claims against.
-/

/-! ## A052198.P11159664270321205524

`A053077(n+1)-42`
-/

namespace A052198.P11159664270321205524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053077 (n + 1) - 42

end

end A052198.P11159664270321205524

/-!
# A052199: Numbers that are expressible as the sum of 2 distinct positive squares in more ways than any smaller number.

The programs for A052199, there is no canonical definition to state claims against.
-/

/-! ## A052199.P1249182159463126203

`A071383(comp[A067436(n+1)^n])`
-/

namespace A052199.P1249182159463126203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067436 (n + 1) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A052199.P1249182159463126203

/-! ## A052199.P238982727631542200

`A071383(lt[A133872(n), A307739(n)])`
-/

namespace A052199.P238982727631542200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052199.P238982727631542200

/-! ## A052199.P4543224852758611235

`A071383(lt[A025586(3*(n+1)), A183174(n+2)])`
-/

namespace A052199.P4543224852758611235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052199.P4543224852758611235

/-! ## A052199.P16017747528796993675

`A071383(lt[A085450(2*n+1), A068652(3*(n+1))])`
-/

namespace A052199.P16017747528796993675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085450 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052199.P16017747528796993675

/-! ## A052199.P15898416791986946673

`A071383(lt[A297146(3*n+5), A333630(3*n+4)])`
-/

namespace A052199.P15898416791986946673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333630 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052199.P15898416791986946673

