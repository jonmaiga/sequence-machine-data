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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A366500: G.f. A(x) satisfies A(x) = 1 + x / ((1+x)^(7/2)*A(x)^(5/2)).

The programs for A366500, there is no canonical definition to state claims against.
-/

/-! ## A366500.P3714223874490025068

`A366455(n)-a(n-1)` with `a(0)=1`
-/

namespace A366500.P3714223874490025068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366455 n - a (n - 1)

end

end A366500.P3714223874490025068

/-!
# A366501: G.f. A(x) satisfies A(x) = 1 + x / ((1+x)^4*A(x)^3).

The programs for A366501, there is no canonical definition to state claims against.
-/

/-! ## A366501.P10858082912979257582

`A364407(n)-a(n-1)` with `a(0)=1`
-/

namespace A366501.P10858082912979257582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364407 n - a (n - 1)

end

end A366501.P10858082912979257582

/-!
# A366502: Let q = A246655(n) for n >= 2, then a(n) = (q - Kronecker(-4,q))/4 - 1.

The programs for A366502, the canonical program `A366502.P7678879035562133223` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366502 has offset 2).

The definition of A366502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366502.P7678879035562133223

`round(A246655(n+2)/4)-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366502

/-- `round(A246655(n+2)/4)-1` -/
def P7678879035562133223.Spec : Prop :=
  ∀ n, P7678879035562133223.a n = A366502 (n + 2)

theorem P7678879035562133223.correct : P7678879035562133223.Spec := by
  intro n
  simp only [A366502, Nat.add_sub_cancel]

end A366502

/-! ## A366502.P12778731135381064246

`round(A000961(n+3)/4)-1`
-/

namespace A366502.P12778731135381064246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000961 (n + 3) : ℚ) / 4) - 1

end

end A366502.P12778731135381064246

namespace A366502

/-- `round(A000961(n+3)/4)-1` -/
def P12778731135381064246.Spec : Prop :=
  ∀ n, P12778731135381064246.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P14042316994623330481

`A059169(A367013(n+2))`
-/

namespace A366502.P14042316994623330481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A367013 (n + 2)).toNat

end

end A366502.P14042316994623330481

namespace A366502

/-- `A059169(A367013(n+2))` -/
def P14042316994623330481.Spec : Prop :=
  ∀ n, P14042316994623330481.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P11465683230487519157

`A002265(eq[1, A143201(n+3)])`
-/

namespace A366502.P11465683230487519157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366502.P11465683230487519157

namespace A366502

/-- `A002265(eq[1, A143201(n+3)])` -/
def P11465683230487519157.Spec : Prop :=
  ∀ n, P11465683230487519157.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P16285521160073616849

`A002265(lt[A260737(n+3), 1])`
-/

namespace A366502.P16285521160073616849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A366502.P16285521160073616849

namespace A366502

/-- `A002265(lt[A260737(n+3), 1])` -/
def P16285521160073616849.Spec : Prop :=
  ∀ n, P16285521160073616849.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P5462111679214752722

`A002265(lt[A261079(n+3), 1])`
-/

namespace A366502.P5462111679214752722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A366502.P5462111679214752722

namespace A366502

/-- `A002265(lt[A261079(n+3), 1])` -/
def P5462111679214752722.Spec : Prop :=
  ∀ n, P5462111679214752722.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P18026204472599931237

`A002265(lt[n, A011772(n+3)])`
-/

namespace A366502.P18026204472599931237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A366502.P18026204472599931237

namespace A366502

/-- `A002265(lt[n, A011772(n+3)])` -/
def P18026204472599931237.Spec : Prop :=
  ∀ n, P18026204472599931237.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P2971906645841061228

`A002265(eq[A127773(n+2), A261079(n+2)])`
-/

namespace A366502.P2971906645841061228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127773 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A366502.P2971906645841061228

namespace A366502

/-- `A002265(eq[A127773(n+2), A261079(n+2)])` -/
def P2971906645841061228.Spec : Prop :=
  ∀ n, P2971906645841061228.a n = A366502 (n + 2)

end A366502

/-! ## A366502.P14128385010972698508

`A002265(eq[A127802(2*n), A261079(n+2)])`
-/

namespace A366502.P14128385010972698508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A366502.P14128385010972698508

namespace A366502

/-- `A002265(eq[A127802(2*n), A261079(n+2)])` -/
def P14128385010972698508.Spec : Prop :=
  ∀ n, P14128385010972698508.a n = A366502 (n + 2)

end A366502

/-!
# A366505: Number of independent vertex sets in the n-Lucas cube graph.

The programs for A366505, there is no canonical definition to state claims against.
-/

/-! ## A366505.P9296055810299212199

`A000224(A100740(n))+1`
-/

namespace A366505.P9296055810299212199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A100740 n).toNat + 1

end

end A366505.P9296055810299212199

/-!
# A366506: a(n) = Lucas(n) + 3.

The programs for A366506, the canonical program `A366506.P9984351948601413421` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366506 has offset 1).

The definition of A366506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366506.P9984351948601413421

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A366506

/-- `2*a(n-1)-a(n-3)` -/
def P9984351948601413421.Spec : Prop :=
  ∀ n, P9984351948601413421.a n = A366506 (n + 1)

theorem P9984351948601413421.correct : P9984351948601413421.Spec := by
  intro n
  simp only [A366506, Nat.add_sub_cancel]

end A366506

/-! ## A366506.P1712958148800648278

`A000032(n+1)+3`
-/

namespace A366506.P1712958148800648278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 3

end

end A366506.P1712958148800648278

namespace A366506

/-- `A000032(n+1)+3` -/
def P1712958148800648278.Spec : Prop :=
  ∀ n, P1712958148800648278.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P2570406508414294192

`∑[ogf((-4+2x+5x^2)/(-1+x+x^2))]`
-/

namespace A366506.P2570406508414294192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -5] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366506.P2570406508414294192

namespace A366506

/-- `∑[ogf((-4+2x+5x^2)/(-1+x+x^2))]` -/
def P2570406508414294192.Spec : Prop :=
  ∀ n, P2570406508414294192.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P12895367580985654247

`ogf((4-2x-5x^2)/(1-2x+x^3))`
-/

namespace A366506.P12895367580985654247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -5] [1, -2, 0, 1] n

end

end A366506.P12895367580985654247

namespace A366506

/-- `ogf((4-2x-5x^2)/(1-2x+x^3))` -/
def P12895367580985654247.Spec : Prop :=
  ∀ n, P12895367580985654247.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P14798928144621335194

`a(n-1)+a(n-2)-3` with `a(0)=4, a(1)=6`
-/

namespace A366506.P14798928144621335194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (a (n - 2) - 3)

end

end A366506.P14798928144621335194

namespace A366506

/-- `a(n-1)+a(n-2)-3` -/
def P14798928144621335194.Spec : Prop :=
  ∀ n, P14798928144621335194.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P16211640654692143782

`a(n-1)-(3-a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A366506.P16211640654692143782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) - (3 - a (n - 2))

end

end A366506.P16211640654692143782

namespace A366506

/-- `a(n-1)-(3-a(n-2))` -/
def P16211640654692143782.Spec : Prop :=
  ∀ n, P16211640654692143782.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P16918174797827791354

`A001610(n)+4`
-/

namespace A366506.P16918174797827791354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 4

end

end A366506.P16918174797827791354

namespace A366506

/-- `A001610(n)+4` -/
def P16918174797827791354.Spec : Prop :=
  ∀ n, P16918174797827791354.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P11791157773275512778

`A000211(n+1)+1`
-/

namespace A366506.P11791157773275512778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1) + 1

end

end A366506.P11791157773275512778

namespace A366506

/-- `A000211(n+1)+1` -/
def P11791157773275512778.Spec : Prop :=
  ∀ n, P11791157773275512778.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P8363992626611679256

`A001612(n+1)+2`
-/

namespace A366506.P8363992626611679256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + 2

end

end A366506.P8363992626611679256

namespace A366506

/-- `A001612(n+1)+2` -/
def P8363992626611679256.Spec : Prop :=
  ∀ n, P8363992626611679256.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P15569643087675472925

`A000204(n+1)+3`
-/

namespace A366506.P15569643087675472925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + 3

end

end A366506.P15569643087675472925

namespace A366506

/-- `A000204(n+1)+3` -/
def P15569643087675472925.Spec : Prop :=
  ∀ n, P15569643087675472925.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P8906885814939412224

`A386707(n+1)-3`
-/

namespace A366506.P8906885814939412224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386707 (n + 1) - 3

end

end A366506.P8906885814939412224

namespace A366506

/-- `A386707(n+1)-3` -/
def P8906885814939412224.Spec : Prop :=
  ∀ n, P8906885814939412224.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P5099278357068296756

`A329723(n+3)+3`
-/

namespace A366506.P5099278357068296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3) + 3

end

end A366506.P5099278357068296756

namespace A366506

/-- `A329723(n+3)+3` -/
def P5099278357068296756.Spec : Prop :=
  ∀ n, P5099278357068296756.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P9174162614394293292

`A090244(2*n)+3`
-/

namespace A366506.P9174162614394293292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) + 3

end

end A366506.P9174162614394293292

namespace A366506

/-- `A090244(2*n)+3` -/
def P9174162614394293292.Spec : Prop :=
  ∀ n, P9174162614394293292.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P13155571068295877712

`A115339(2*(n+1))+3`
-/

namespace A366506.P13155571068295877712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * (n + 1)) + 3

end

end A366506.P13155571068295877712

namespace A366506

/-- `A115339(2*(n+1))+3` -/
def P13155571068295877712.Spec : Prop :=
  ∀ n, P13155571068295877712.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P12436663346678191252

`A280699(2*(n+1))+3`
-/

namespace A366506.P12436663346678191252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (2 * (n + 1)) + 3

end

end A366506.P12436663346678191252

namespace A366506

/-- `A280699(2*(n+1))+3` -/
def P12436663346678191252.Spec : Prop :=
  ∀ n, P12436663346678191252.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P9957828144354265329

`A339572(2*n+1)+4`
-/

namespace A366506.P9957828144354265329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n + 1) + 4

end

end A366506.P9957828144354265329

namespace A366506

/-- `A339572(2*n+1)+4` -/
def P9957828144354265329.Spec : Prop :=
  ∀ n, P9957828144354265329.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P15657515552778471085

`A074392(n)+A010695(n)`
-/

namespace A366506.P15657515552778471085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 n + A010695 n

end

end A366506.P15657515552778471085

namespace A366506

/-- `A074392(n)+A010695(n)` -/
def P15657515552778471085.Spec : Prop :=
  ∀ n, P15657515552778471085.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P14366436570790564803

`A301653(n)+A010710(n)`
-/

namespace A366506.P14366436570790564803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n + A010710 n

end

end A366506.P14366436570790564803

namespace A366506

/-- `A301653(n)+A010710(n)` -/
def P14366436570790564803.Spec : Prop :=
  ∀ n, P14366436570790564803.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P14268285892470918833

`A157725(n+1)+A001588(n)`
-/

namespace A366506.P14268285892470918833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + A001588 n

end

end A366506.P14268285892470918833

namespace A366506

/-- `A157725(n+1)+A001588(n)` -/
def P14268285892470918833.Spec : Prop :=
  ∀ n, P14268285892470918833.a n = A366506 (n + 1)

end A366506

/-! ## A366506.P5744830227955837758

`A176040(n)+A068397(n+1)`
-/

namespace A366506.P5744830227955837758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A068397 (n + 1)

end

end A366506.P5744830227955837758

namespace A366506

/-- `A176040(n)+A068397(n+1)` -/
def P5744830227955837758.Spec : Prop :=
  ∀ n, P5744830227955837758.a n = A366506 (n + 1)

end A366506

/-!
# A366508: a(n) = Lucas(2*n) + 2*(-1)^n + 1.

The programs for A366508, the canonical program `A366508.P6696629938613597798` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366508 has offset 1).

The definition of A366508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366508.P6696629938613597798

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=2, a(1)=10, a(2)=17, a(3)=50`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A366508

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P6696629938613597798.Spec : Prop :=
  ∀ n, P6696629938613597798.a n = A366508 (n + 1)

theorem P6696629938613597798.correct : P6696629938613597798.Spec := by
  intro n
  simp only [A366508, Nat.add_sub_cancel]

end A366508

/-! ## A366508.P16372329617021037917

`ceil((-ϕ)^(n+1))²+1`
-/

namespace A366508.P16372329617021037917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-Real.goldenRatio) ^ (n + 1)⌉ ^ 2 + 1

end

end A366508.P16372329617021037917

namespace A366508

/-- `ceil((-ϕ)^(n+1))²+1` -/
def P16372329617021037917.Spec : Prop :=
  ∀ n, P16372329617021037917.a n = A366508 (n + 1)

end A366508

/-! ## A366508.P18107017690752154122

`Δ[A215602(n)+n]`
-/

namespace A366508.P18107017690752154122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366508.P18107017690752154122

namespace A366508

/-- `Δ[A215602(n)+n]` -/
def P18107017690752154122.Spec : Prop :=
  ∀ n, P18107017690752154122.a n = A366508 (n + 1)

end A366508

/-! ## A366508.P17662968510010058583

`(A383039(n+1)+3)/2`
-/

namespace A366508.P17662968510010058583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383039 (n + 1) + 3 : ℚ) / 2

end

end A366508.P17662968510010058583

namespace A366508

/-- `(A383039(n+1)+3)/2` -/
def P17662968510010058583.Spec : Prop :=
  ∀ n, P17662968510010058583.a n = (A366508 (n + 1) : ℚ)

end A366508

/-! ## A366508.P780355309974522795

`(A075155(n+1)+A000032(n+1))/A000032(n+1)`
-/

namespace A366508.P780355309974522795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075155 (n + 1) + A000032 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A366508.P780355309974522795

namespace A366508

/-- `(A075155(n+1)+A000032(n+1))/A000032(n+1)` -/
def P780355309974522795.Spec : Prop :=
  ∀ n, P780355309974522795.a n = (A366508 (n + 1) : ℚ)

end A366508

/-! ## A366508.P3946956636459652578

`record[A111956(n+1)²+1]`
-/

namespace A366508.P3946956636459652578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111956 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366508.P3946956636459652578

namespace A366508

/-- `record[A111956(n+1)²+1]` -/
def P3946956636459652578.Spec : Prop :=
  ∀ n, P3946956636459652578.a n = A366508 (n + 1)

end A366508

/-! ## A366508.P15269699984546693894

`record[A104765(n+1)²+1]`
-/

namespace A366508.P15269699984546693894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366508.P15269699984546693894

namespace A366508

/-- `record[A104765(n+1)²+1]` -/
def P15269699984546693894.Spec : Prop :=
  ∀ n, P15269699984546693894.a n = A366508 (n + 1)

end A366508

/-! ## A366508.P15958406408813690046

`(A049684(n+1)+A007598(n+1))/A007598(n+1)`
-/

namespace A366508.P15958406408813690046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049684 (n + 1) + A007598 (n + 1) : ℚ) / (A007598 (n + 1) : ℚ)

end

end A366508.P15958406408813690046

namespace A366508

/-- `(A049684(n+1)+A007598(n+1))/A007598(n+1)` -/
def P15958406408813690046.Spec : Prop :=
  ∀ n, P15958406408813690046.a n = (A366508 (n + 1) : ℚ)

end A366508

/-! ## A366508.P260989050403134031

`(A099923(n+1)+A001254(n+1))/A001254(n+1)`
-/

namespace A366508.P260989050403134031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099923 (n + 1) + A001254 (n + 1) : ℚ) / (A001254 (n + 1) : ℚ)

end

end A366508.P260989050403134031

namespace A366508

/-- `(A099923(n+1)+A001254(n+1))/A001254(n+1)` -/
def P260989050403134031.Spec : Prop :=
  ∀ n, P260989050403134031.a n = (A366508 (n + 1) : ℚ)

end A366508

/-! ## A366508.P12110612307216841790

`(A103325(n+1)+A075155(n+1))/A075155(n+1)`
-/

namespace A366508.P12110612307216841790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103325 (n + 1) + A075155 (n + 1) : ℚ) / (A075155 (n + 1) : ℚ)

end

end A366508.P12110612307216841790

namespace A366508

/-- `(A103325(n+1)+A075155(n+1))/A075155(n+1)` -/
def P12110612307216841790.Spec : Prop :=
  ∀ n, P12110612307216841790.a n = (A366508 (n + 1) : ℚ)

end A366508

/-!
# A366509: a(n) is the maximum number of dots on the slope of a Ferrers diagram of a partition of n into distinct parts.

The programs for A366509, the canonical program `A366509.P1275813043773061125` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366509 has offset 1).

The definition of A366509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366509.P15133242419711261720

`comp[C(n, 2)]-(n+1)-A123578(A025581(n))`
-/

namespace A366509.P15133242419711261720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) - A123578 (A025581 n).toNat

end

end A366509.P15133242419711261720

namespace A366509

/-- `comp[C(n, 2)]-(n+1)-A123578(A025581(n))` -/
def P15133242419711261720.Spec : Prop :=
  ∀ n, P15133242419711261720.a n = A366509 (n + 1)

end A366509

/-! ## A366509.P1275813043773061125

`A002024(n+1)-A123578(A025581(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366509

/-- `A002024(n+1)-A123578(A025581(n))` -/
def P1275813043773061125.Spec : Prop :=
  ∀ n, P1275813043773061125.a n = A366509 (n + 1)

theorem P1275813043773061125.correct : P1275813043773061125.Spec := by
  intro n
  simp only [A366509, Nat.add_sub_cancel]

end A366509

/-! ## A366509.P8399773373081279050

`A123578(n+1)-A123578(A025581(n))`
-/

namespace A366509.P8399773373081279050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) - A123578 (A025581 n).toNat

end

end A366509.P8399773373081279050

namespace A366509

/-- `A123578(n+1)-A123578(A025581(n))` -/
def P8399773373081279050.Spec : Prop :=
  ∀ n, P8399773373081279050.a n = A366509 (n + 1)

end A366509

/-! ## A366509.P5189050369173162654

`A002024(n+2)-A002024(A193592(n+1))`
-/

namespace A366509.P5189050369173162654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) - A002024 (A193592 (n + 1)).toNat

end

end A366509.P5189050369173162654

namespace A366509

/-- `A002024(n+2)-A002024(A193592(n+1))` -/
def P5189050369173162654.Spec : Prop :=
  ∀ n, P5189050369173162654.a n = A366509 (n + 1)

end A366509

/-! ## A366509.P4698808979002348674

`A000194(2*n+1)-A000194(A179753(2*(n+1)))`
-/

namespace A366509.P4698808979002348674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) - A000194 (A179753 (2 * (n + 1))).toNat

end

end A366509.P4698808979002348674

namespace A366509

/-- `A000194(2*n+1)-A000194(A179753(2*(n+1)))` -/
def P4698808979002348674.Spec : Prop :=
  ∀ n, P4698808979002348674.a n = A366509 (n + 1)

end A366509

/-! ## A366509.P14963918742900335599

`A307907(A036561(n+1))`
-/

namespace A366509.P14963918742900335599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307907 (A036561 (n + 1)).toNat

end

end A366509.P14963918742900335599

namespace A366509

/-- `A307907(A036561(n+1))` -/
def P14963918742900335599.Spec : Prop :=
  ∀ n, P14963918742900335599.a n = A366509 (n + 1)

end A366509

/-!
# A366510: Largest prime divisor of n which is < sqrt(n), 1 if n is prime, square of prime or 1.

The programs for A366510, the canonical program `A366510.P4604043811337782235` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366510 has offset 1).

The definition of A366510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366510.P4604043811337782235

`A217581(A048671(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A366510

/-- `A217581(A048671(n+1))` -/
def P4604043811337782235.Spec : Prop :=
  ∀ n, P4604043811337782235.a n = A366510 (n + 1)

theorem P4604043811337782235.correct : P4604043811337782235.Spec := by
  intro n
  simp only [A366510, Nat.add_sub_cancel]

end A366510

/-! ## A366510.P6679144076793701653

`A217581(A006530(n+1)*A060775(n+1))`
-/

namespace A366510.P6679144076793701653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A006530 (n + 1) * A060775 (n + 1)).toNat

end

end A366510.P6679144076793701653

namespace A366510

/-- `A217581(A006530(n+1)*A060775(n+1))` -/
def P6679144076793701653.Spec : Prop :=
  ∀ n, P6679144076793701653.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P9372274770598324458

`A217581(A060775(n+1)*A085392(n+1))`
-/

namespace A366510.P9372274770598324458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A060775 (n + 1) * A085392 (n + 1)).toNat

end

end A366510.P9372274770598324458

namespace A366510

/-- `A217581(A060775(n+1)*A085392(n+1))` -/
def P9372274770598324458.Spec : Prop :=
  ∀ n, P9372274770598324458.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P17059497919925629966

`A217581(A060775(n+1)*A217581(n+1))`
-/

namespace A366510.P17059497919925629966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A060775 (n + 1) * A217581 (n + 1)).toNat

end

end A366510.P17059497919925629966

namespace A366510

/-- `A217581(A060775(n+1)*A217581(n+1))` -/
def P17059497919925629966.Spec : Prop :=
  ∀ n, P17059497919925629966.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P15090901023617169871

`gcd(A010786(n), A217581(n+1))`
-/

namespace A366510.P15090901023617169871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010786 n) (A217581 (n + 1))

end

end A366510.P15090901023617169871

namespace A366510

/-- `gcd(A010786(n), A217581(n+1))` -/
def P15090901023617169871.Spec : Prop :=
  ∀ n, (P15090901023617169871.a n : ℤ) = A366510 (n + 1)

end A366510

/-! ## A366510.P6512247647787810856

`A217581(gcd(n+1, A003418(n)))`
-/

namespace A366510.P6512247647787810856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (Int.gcd (n + 1 : ℤ) (A003418 n))

end

end A366510.P6512247647787810856

namespace A366510

/-- `A217581(gcd(n+1, A003418(n)))` -/
def P6512247647787810856.Spec : Prop :=
  ∀ n, P6512247647787810856.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P370834005746543567

`A006530(A363520(n+1))`
-/

namespace A366510.P370834005746543567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A363520 (n + 1)).toNat

end

end A366510.P370834005746543567

namespace A366510

/-- `A006530(A363520(n+1))` -/
def P370834005746543567.Spec : Prop :=
  ∀ n, P370834005746543567.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P4701258270315855607

`A085392(A064446(n+1)/A085392(n+1))`
-/

namespace A366510.P4701258270315855607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A085392 (n + 1) : ℚ))).toNat

end

end A366510.P4701258270315855607

namespace A366510

/-- `A085392(A064446(n+1)/A085392(n+1))` -/
def P4701258270315855607.Spec : Prop :=
  ∀ n, P4701258270315855607.a n = A366510 (n + 1)

end A366510

/-! ## A366510.P5917799520322227525

`A006530(gcd(A195507(n+1), A362988(n)))`
-/

namespace A366510.P5917799520322227525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A195507 (n + 1)) (A362988 n))

end

end A366510.P5917799520322227525

namespace A366510

/-- `A006530(gcd(A195507(n+1), A362988(n)))` -/
def P5917799520322227525.Spec : Prop :=
  ∀ n, P5917799520322227525.a n = A366510 (n + 1)

end A366510

/-!
# A366511: a(n) = Lucas(2*n) + 2^(n + 1) + 1.

The programs for A366511, the canonical program `A366511.P4282970536419939377` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366511 has offset 1).

The definition of A366511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366511.P4282970536419939377

`6*a(n-1)-12*a(n-2)+9*a(n-3)-2*a(n-4)` with `a(0)=8, a(1)=16, a(2)=35, a(3)=80`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A366511

/-- `6*a(n-1)-12*a(n-2)+9*a(n-3)-2*a(n-4)` -/
def P4282970536419939377.Spec : Prop :=
  ∀ n, P4282970536419939377.a n = A366511 (n + 1)

theorem P4282970536419939377.correct : P4282970536419939377.Spec := by
  intro n
  simp only [A366511, Nat.add_sub_cancel]

end A366511

/-! ## A366511.P3346932033286086120

`A020737(n)+A005248(n+1)`
-/

namespace A366511.P3346932033286086120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n + A005248 (n + 1)

end

end A366511.P3346932033286086120

namespace A366511

/-- `A020737(n)+A005248(n+1)` -/
def P3346932033286086120.Spec : Prop :=
  ∀ n, P3346932033286086120.a n = A366511 (n + 1)

end A366511

/-! ## A366511.P8026653011821521167

`A287350(n+1)+A048578(n)`
-/

namespace A366511.P8026653011821521167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287350 (n + 1) + A048578 n

end

end A366511.P8026653011821521167

namespace A366511

/-- `A287350(n+1)+A048578(n)` -/
def P8026653011821521167.Spec : Prop :=
  ∀ n, P8026653011821521167.a n = A366511 (n + 1)

end A366511

/-! ## A366511.P14099945112094060063

`A287350(n+1)+A000051(n+1)`
-/

namespace A366511.P14099945112094060063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287350 (n + 1) + A000051 (n + 1)

end

end A366511.P14099945112094060063

namespace A366511

/-- `A287350(n+1)+A000051(n+1)` -/
def P14099945112094060063.Spec : Prop :=
  ∀ n, P14099945112094060063.a n = A366511 (n + 1)

end A366511

/-! ## A366511.P754046989524292264

`A005248(n+1)+A000051(n+2)`
-/

namespace A366511.P754046989524292264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + A000051 (n + 2)

end

end A366511.P754046989524292264

namespace A366511

/-- `A005248(n+1)+A000051(n+2)` -/
def P754046989524292264.Spec : Prop :=
  ∀ n, P754046989524292264.a n = A366511 (n + 1)

end A366511

/-! ## A366511.P7152521267711867319

`A000204(2*(n+1))+A000051(n+2)`
-/

namespace A366511.P7152521267711867319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) + A000051 (n + 2)

end

end A366511.P7152521267711867319

namespace A366511

/-- `A000204(2*(n+1))+A000051(n+2)` -/
def P7152521267711867319.Spec : Prop :=
  ∀ n, P7152521267711867319.a n = A366511 (n + 1)

end A366511

/-! ## A366511.P9327450477286285638

`A000051(n+1)+A005592(n+1)+A000051(n+1)`
-/

namespace A366511.P9327450477286285638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A005592 (n + 1) + A000051 (n + 1))

end

end A366511.P9327450477286285638

namespace A366511

/-- `A000051(n+1)+A005592(n+1)+A000051(n+1)` -/
def P9327450477286285638.Spec : Prop :=
  ∀ n, P9327450477286285638.a n = A366511 (n + 1)

end A366511

/-!
# A366512: Numbers k such that the square of the sum of the digits times the sum of the cubes of the digits equals k.

The programs for A366512, there is no canonical definition to state claims against.
-/

/-! ## A366512.P679054915612624253

`A257784(A165451(n+1))`
-/

namespace A366512.P679054915612624253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257784 (A165451 (n + 1)).toNat

end

end A366512.P679054915612624253

/-!
# A366519: Largest odd divisor of n which is <= sqrt(n).

The programs for A366519, there is no canonical definition to state claims against.
-/

/-! ## A366519.P17329879953836141668

`A000196(A000196(A347175(n+1)))`
-/

namespace A366519.P17329879953836141668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 (A347175 (n + 1)).toNat).toNat

end

end A366519.P17329879953836141668

/-! ## A366519.P10984152011612440793

`A366520(A140580(n+1))`
-/

namespace A366519.P10984152011612440793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366520 (A140580 (n + 1)).toNat

end

end A366519.P10984152011612440793

/-! ## A366519.P1706563926146402111

`A026741(A217581(n+1)%A183501(n+4))`
-/

namespace A366519.P1706563926146402111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A217581 (n + 1)) (A183501 (n + 4))).toNat

end

end A366519.P1706563926146402111

/-! ## A366519.P17679084952602347371

`A204455(A130321(n)*A217581(n+1))`
-/

namespace A366519.P17679084952602347371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A130321 n * A217581 (n + 1)).toNat

end

end A366519.P17679084952602347371

/-! ## A366519.P15031157069130514388

`A206913(A217581(n+1))%A250877(2*n+3)`
-/

namespace A366519.P15031157069130514388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206913 (A217581 (n + 1)).toNat) (A250877 (2 * n + 3))

end

end A366519.P15031157069130514388

/-! ## A366519.P481160393312750776

`A026741(A217581(n+1))%A185511(n+2)`
-/

namespace A366519.P481160393312750776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A217581 (n + 1)).toNat) (A185511 (n + 2))

end

end A366519.P481160393312750776

/-! ## A366519.P13004925514968059709

`A204455(A217581(n+1)^(A001221(n+1)+2))`
-/

namespace A366519.P13004925514968059709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (SequenceMachineLib.roundAway ((A217581 (n + 1) : ℚ) ^ (A001221 (n + 1) + 2 : ℤ))).toNat

end

end A366519.P13004925514968059709

/-! ## A366519.P7162501426166440265

`gcd(A140864(n+1), A217581(n+1))`
-/

namespace A366519.P7162501426166440265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140864 (n + 1)) (A217581 (n + 1))

end

end A366519.P7162501426166440265

/-! ## A366519.P10128646215738213024

`gcd(A078631(n), A217581(n+1))`
-/

namespace A366519.P10128646215738213024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078631 n) (A217581 (n + 1))

end

end A366519.P10128646215738213024

/-!
# A366520: Largest odd divisor of n which is < sqrt(n), for n >= 2; a(1) = 1.

The programs for A366520, there is no canonical definition to state claims against.
-/

/-! ## A366520.P11014562163426999941

`A366519(A275770(n+1)*A366510(n+1))`
-/

namespace A366520.P11014562163426999941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366519 (A275770 (n + 1) * A366510 (n + 1)).toNat

end

end A366520.P11014562163426999941

/-! ## A366520.P15561566128093492181

`A366519(A000040(3*n+5)*A366510(n+1))`
-/

namespace A366520.P15561566128093492181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366519 (A000040 (3 * n + 5) * A366510 (n + 1)).toNat

end

end A366520.P15561566128093492181

/-! ## A366520.P269934510065737228

`A144786(A366510(n+1)%A294952(n+1))`
-/

namespace A366520.P269934510065737228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144786 (Int.tmod (A366510 (n + 1)) (A294952 (n + 1))).toNat

end

end A366520.P269934510065737228

/-! ## A366520.P3224613433854476618

`A144786(A366510(n+1))%A345914(n+5)`
-/

namespace A366520.P3224613433854476618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144786 (A366510 (n + 1)).toNat) (A345914 (n + 5))

end

end A366520.P3224613433854476618

/-! ## A366520.P10205625810241001692

`A144786(A366510(n+1)%A120687(n))`
-/

namespace A366520.P10205625810241001692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144786 (Int.tmod (A366510 (n + 1)) (A120687 n)).toNat

end

end A366520.P10205625810241001692

/-! ## A366520.P3990493252191818119

`gcd(A003961((n+1)*∑{d}[n+1, #]), A366519(n+1))`
-/

namespace A366520.P3990493252191818119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d))) (A366519 (n + 1))

end

end A366520.P3990493252191818119

/-! ## A366520.P14496877804076007978

`gcd(A003961(A064987(n+1)), A366522(n+1))`
-/

namespace A366520.P14496877804076007978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (A064987 (n + 1)).toNat) (A366522 (n + 1))

end

end A366520.P14496877804076007978

/-! ## A366520.P6943129134739425128

`gcd(A140864(n+1), A366522(n+1))`
-/

namespace A366520.P6943129134739425128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140864 (n + 1)) (A366522 (n + 1))

end

end A366520.P6943129134739425128

/-! ## A366520.P1675003726886799227

`gcd(A188597(n+1), A366510(n+1))`
-/

namespace A366520.P1675003726886799227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188597 (n + 1)) (A366510 (n + 1))

end

end A366520.P1675003726886799227

/-! ## A366520.P15638957057431314539

`A366510(A217581(n+1)^A366510(n+1))`
-/

namespace A366520.P15638957057431314539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366510 (SequenceMachineLib.roundAway ((A217581 (n + 1) : ℚ) ^ (A366510 (n + 1) : ℤ))).toNat

end

end A366520.P15638957057431314539

/-!
# A366521: Largest squarefree divisor of n which is <= sqrt(n).

The programs for A366521, there is no canonical definition to state claims against.
-/

/-! ## A366521.P6345201329005786924

`A366522(A175068(n+1))`
-/

namespace A366521.P6345201329005786924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 (A175068 (n + 1)).toNat

end

end A366521.P6345201329005786924

/-! ## A366521.P1013532338808788876

`A002034(A396068(n+1))`
-/

namespace A366521.P1013532338808788876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A396068 (n + 1)).toNat

end

end A366521.P1013532338808788876

/-! ## A366521.P13634828192973503696

`A217581(n+1)*A272901(A251414(n+2))`
-/

namespace A366521.P13634828192973503696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1) * A272901 (A251414 (n + 2)).toNat

end

end A366521.P13634828192973503696

/-! ## A366521.P15620391771856389118

`A217581(n+1)*A304118(A098550(n+2))`
-/

namespace A366521.P15620391771856389118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1) * A304118 (A098550 (n + 2)).toNat

end

end A366521.P15620391771856389118

/-!
# A366522: Largest squarefree divisor of n which is < sqrt(n), for n >= 2; a(1) = 1.

The programs for A366522, there is no canonical definition to state claims against.
-/

/-! ## A366522.P7689608788164310800

`A366521(A060775(n+1)*A366521(n+1))`
-/

namespace A366522.P7689608788164310800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366521 (A060775 (n + 1) * A366521 (n + 1)).toNat

end

end A366522.P7689608788164310800

/-! ## A366522.P17915143149175018763

`and(A335574(n), A366510(n+1))`
-/

namespace A366522.P17915143149175018763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335574 n) (A366510 (n + 1))

end

end A366522.P17915143149175018763

/-! ## A366522.P7455815231897082535

`A366510(n+1)%A000978(n+1)`
-/

namespace A366522.P7455815231897082535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366510 (n + 1)) (A000978 (n + 1))

end

end A366522.P7455815231897082535

/-! ## A366522.P7336787478033116697

`and(A068975(n+1), A366510(n+1))`
-/

namespace A366522.P7336787478033116697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068975 (n + 1)) (A366510 (n + 1))

end

end A366522.P7336787478033116697

/-! ## A366522.P7917811769705936102

`A366510(n+1)%A178980(A155212(n))`
-/

namespace A366522.P7917811769705936102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366510 (n + 1)) (A178980 (A155212 n).toNat)

end

end A366522.P7917811769705936102

/-!
# A366523: Largest square divisor of n which is <= sqrt(n).

The programs for A366523, the canonical program `A366523.P1901985981721677086` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366523 has offset 1).

The definition of A366523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366523.P11164571941093639760

`A124748(A069293(n+1)²)²`
-/

namespace A366523.P11164571941093639760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (A069293 (n + 1) ^ 2).toNat ^ 2

end

end A366523.P11164571941093639760

namespace A366523

/-- `A124748(A069293(n+1)²)²` -/
def P11164571941093639760.Spec : Prop :=
  ∀ n, P11164571941093639760.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P3847465466920430744

`A067399(A069292(n+1)^A069292(n+1))`
-/

namespace A366523.P3847465466920430744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067399 (SequenceMachineLib.roundAway ((A069292 (n + 1) : ℚ) ^ (A069292 (n + 1) : ℤ))).toNat

end

end A366523.P3847465466920430744

namespace A366523

/-- `A067399(A069292(n+1)^A069292(n+1))` -/
def P3847465466920430744.Spec : Prop :=
  ∀ n, P3847465466920430744.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P1901985981721677086

`A053164(A072504(n+1)²)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366523

/-- `A053164(A072504(n+1)²)²` -/
def P1901985981721677086.Spec : Prop :=
  ∀ n, P1901985981721677086.a n = A366523 (n + 1)

theorem P1901985981721677086.correct : P1901985981721677086.Spec := by
  intro n
  simp only [A366523, Nat.add_sub_cancel]

end A366523

/-! ## A366523.P12214638900580381178

`A359971(A069293(n+1)²)`
-/

namespace A366523.P12214638900580381178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359971 (A069293 (n + 1) ^ 2).toNat

end

end A366523.P12214638900580381178

namespace A366523

/-- `A359971(A069293(n+1)²)` -/
def P12214638900580381178.Spec : Prop :=
  ∀ n, P12214638900580381178.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P1300740489921077663

`A001227(A069293(n+1)!)`
-/

namespace A366523.P1300740489921077663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.factorial (A069293 (n + 1)).toNat)

end

end A366523.P1300740489921077663

namespace A366523

/-- `A001227(A069293(n+1)!)` -/
def P1300740489921077663.Spec : Prop :=
  ∀ n, P1300740489921077663.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P11717081471305598624

`A043276(A069293(n+1)!)`
-/

namespace A366523.P11717081471305598624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (Nat.factorial (A069293 (n + 1)).toNat)

end

end A366523.P11717081471305598624

namespace A366523

/-- `A043276(A069293(n+1)!)` -/
def P11717081471305598624.Spec : Prop :=
  ∀ n, P11717081471305598624.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P91769391823121887

`A070940(A069293(n+1)!)`
-/

namespace A366523.P91769391823121887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (Nat.factorial (A069293 (n + 1)).toNat)

end

end A366523.P91769391823121887

namespace A366523

/-- `A070940(A069293(n+1)!)` -/
def P91769391823121887.Spec : Prop :=
  ∀ n, P91769391823121887.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P6693613596821273458

`A333752(3^A069293(n+1))`
-/

namespace A366523.P6693613596821273458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333752 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A069293 (n + 1) : ℤ))).toNat

end

end A366523.P6693613596821273458

namespace A366523

/-- `A333752(3^A069293(n+1))` -/
def P6693613596821273458.Spec : Prop :=
  ∀ n, P6693613596821273458.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P6893263974969756963

`A025581(A069293(n+1)²²)`
-/

namespace A366523.P6893263974969756963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((A069293 (n + 1) ^ 2) ^ 2).toNat

end

end A366523.P6893263974969756963

namespace A366523

/-- `A025581(A069293(n+1)²²)` -/
def P6893263974969756963.Spec : Prop :=
  ∀ n, P6893263974969756963.a n = A366523 (n + 1)

end A366523

/-! ## A366523.P12387900349369501287

`A363827(A363827(n+1)!)`
-/

namespace A366523.P12387900349369501287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (Nat.factorial (A363827 (n + 1)).toNat)

end

end A366523.P12387900349369501287

namespace A366523

/-- `A363827(A363827(n+1)!)` -/
def P12387900349369501287.Spec : Prop :=
  ∀ n, P12387900349369501287.a n = A366523 (n + 1)

end A366523

/-!
# A366524: Largest square divisor of n which is < sqrt(n), for n >= 2; a(1) = 1.

The programs for A366524, the canonical program `A366524.P3925531874289408800` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366524 has offset 1).

The definition of A366524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366524.P3925531874289408800

`A366523(A019554((n+1)*A019554(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366524

/-- `A366523(A019554((n+1)*A019554(n+1)))` -/
def P3925531874289408800.Spec : Prop :=
  ∀ n, P3925531874289408800.a n = A366524 (n + 1)

theorem P3925531874289408800.correct : P3925531874289408800.Spec := by
  intro n
  simp only [A366524, Nat.add_sub_cancel]

end A366524

/-! ## A366524.P5301323796005406312

`A366523(A216455(n+1))`
-/

namespace A366524.P5301323796005406312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366523 (A216455 (n + 1)).toNat

end

end A366524.P5301323796005406312

namespace A366524

/-- `A366523(A216455(n+1))` -/
def P5301323796005406312.Spec : Prop :=
  ∀ n, P5301323796005406312.a n = A366524 (n + 1)

end A366524

/-! ## A366524.P5326387556754900640

`A366523(A096894(n+1))`
-/

namespace A366524.P5326387556754900640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366523 (A096894 (n + 1)).toNat

end

end A366524.P5326387556754900640

namespace A366524

/-- `A366523(A096894(n+1))` -/
def P5326387556754900640.Spec : Prop :=
  ∀ n, P5326387556754900640.a n = A366524 (n + 1)

end A366524

/-! ## A366524.P9385348615396418116

`A085731(lcm(A046388(n+1), A372835(n+1)))`
-/

namespace A366524.P9385348615396418116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (Int.lcm (A046388 (n + 1)) (A372835 (n + 1)))

end

end A366524.P9385348615396418116

namespace A366524

/-- `A085731(lcm(A046388(n+1), A372835(n+1)))` -/
def P9385348615396418116.Spec : Prop :=
  ∀ n, P9385348615396418116.a n = A366524 (n + 1)

end A366524

/-! ## A366524.P18175464294969656171

`gcd(A008833(n+5), A078944(A026830(n)))`
-/

namespace A366524.P18175464294969656171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 5)) (A078944 (A026830 n).toNat)

end

end A366524.P18175464294969656171

namespace A366524

/-- `gcd(A008833(n+5), A078944(A026830(n)))` -/
def P18175464294969656171.Spec : Prop :=
  ∀ n, (P18175464294969656171.a n : ℤ) = A366524 (n + 1)

end A366524

/-! ## A366524.P4759841545176706523

`gcd(A332599(n+1), A365635(n+1))`
-/

namespace A366524.P4759841545176706523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A332599 (n + 1)) (A365635 (n + 1))

end

end A366524.P4759841545176706523

namespace A366524

/-- `gcd(A332599(n+1), A365635(n+1))` -/
def P4759841545176706523.Spec : Prop :=
  ∀ n, (P4759841545176706523.a n : ℤ) = A366524 (n + 1)

end A366524

/-! ## A366524.P15533962939158397996

`A363827(gcd(A171683(n), A363827(n+1)))²`
-/

namespace A366524.P15533962939158397996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (Int.gcd (A171683 n) (A363827 (n + 1))) ^ 2

end

end A366524.P15533962939158397996

namespace A366524

/-- `A363827(gcd(A171683(n), A363827(n+1)))²` -/
def P15533962939158397996.Spec : Prop :=
  ∀ n, P15533962939158397996.a n = A366524 (n + 1)

end A366524

/-!
# A366526: Prime powers (A246655) q such that 2 is a nonzero square in the finite field F_q.

The programs for A366526, the canonical program `A366526.P7303414302420691645` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366526 has offset 1).

The definition of A366526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366526.P7303414302420691645

`filter[A047522(n+1), A069513(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366526

/-- `filter[A047522(n+1), A069513(#)]` -/
def P7303414302420691645.Spec : Prop :=
  ∀ n, P7303414302420691645.a n = A366526 (n + 1)

theorem P7303414302420691645.correct : P7303414302420691645.Spec := by
  intro n
  simp only [A366526, Nat.add_sub_cancel]

end A366526

/-! ## A366526.P859774649210793039

`filter[A047522(n+1), A211487(#)]`
-/

namespace A366526.P859774649210793039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A366526.P859774649210793039

namespace A366526

/-- `filter[A047522(n+1), A211487(#)]` -/
def P859774649210793039.Spec : Prop :=
  ∀ n, P859774649210793039.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P2873179997023015490

`filter[A047522(n+1), A340373(#)]`
-/

namespace A366526.P2873179997023015490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A366526.P2873179997023015490

namespace A366526

/-- `filter[A047522(n+1), A340373(#)]` -/
def P2873179997023015490.Spec : Prop :=
  ∀ n, P2873179997023015490.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P6909462994565524954

`filter[A047522(n+2), A340363(#)]`
-/

namespace A366526.P6909462994565524954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A366526.P6909462994565524954

namespace A366526

/-- `filter[A047522(n+2), A340363(#)]` -/
def P6909462994565524954.Spec : Prop :=
  ∀ n, P6909462994565524954.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P1040438384456735328

`filter[A047522(n+2), A354923(#)]`
-/

namespace A366526.P1040438384456735328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A366526.P1040438384456735328

namespace A366526

/-- `filter[A047522(n+2), A354923(#)]` -/
def P1040438384456735328.Spec : Prop :=
  ∀ n, P1040438384456735328.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P2736023933063728171

`filter[A047522(n+2), A354924(#)]`
-/

namespace A366526.P2736023933063728171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A366526.P2736023933063728171

namespace A366526

/-- `filter[A047522(n+2), A354924(#)]` -/
def P2736023933063728171.Spec : Prop :=
  ∀ n, P2736023933063728171.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P415650854675980980

`∩[A047522(n+1), A070776(n+1)]`
-/

namespace A366526.P415650854675980980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P415650854675980980

namespace A366526

/-- `∩[A047522(n+1), A070776(n+1)]` -/
def P415650854675980980.Spec : Prop :=
  ∀ n, (P415650854675980980.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P6814166040240075863

`∩[A047522(n+1), A185189(n+1)]`
-/

namespace A366526.P6814166040240075863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P6814166040240075863

namespace A366526

/-- `∩[A047522(n+1), A185189(n+1)]` -/
def P6814166040240075863.Spec : Prop :=
  ∀ n, (P6814166040240075863.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P18356418417611823278

`∩[A047522(n+1), A246655(n+1)]`
-/

namespace A366526.P18356418417611823278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P18356418417611823278

namespace A366526

/-- `∩[A047522(n+1), A246655(n+1)]` -/
def P18356418417611823278.Spec : Prop :=
  ∀ n, (P18356418417611823278.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P2907980552155192200

`∩[A047471(n+1)-2, A070776(n+1)]`
-/

namespace A366526.P2907980552155192200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P2907980552155192200

namespace A366526

/-- `∩[A047471(n+1)-2, A070776(n+1)]` -/
def P2907980552155192200.Spec : Prop :=
  ∀ n, (P2907980552155192200.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P4486968198214324090

`∩[A047471(n+1)-2, A185189(n+1)]`
-/

namespace A366526.P4486968198214324090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P4486968198214324090

namespace A366526

/-- `∩[A047471(n+1)-2, A185189(n+1)]` -/
def P4486968198214324090.Spec : Prop :=
  ∀ n, (P4486968198214324090.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P8207822724246933355

`∩[A047471(n+1)-2, A246655(n+1)]`
-/

namespace A366526.P8207822724246933355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P8207822724246933355

namespace A366526

/-- `∩[A047471(n+1)-2, A246655(n+1)]` -/
def P8207822724246933355.Spec : Prop :=
  ∀ n, (P8207822724246933355.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P2690392090530782502

`∩[A047471(n+1)-2, A336101(n+1)]`
-/

namespace A366526.P2690392090530782502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P2690392090530782502

namespace A366526

/-- `∩[A047471(n+1)-2, A336101(n+1)]` -/
def P2690392090530782502.Spec : Prop :=
  ∀ n, (P2690392090530782502.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P17237906909422375889

`filter[A047591(n+1), A069513(#)]`
-/

namespace A366526.P17237906909422375889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A366526.P17237906909422375889

namespace A366526

/-- `filter[A047591(n+1), A069513(#)]` -/
def P17237906909422375889.Spec : Prop :=
  ∀ n, P17237906909422375889.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P6541778606734749612

`filter[A047523(n+2), A211487(#)]`
-/

namespace A366526.P6541778606734749612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A366526.P6541778606734749612

namespace A366526

/-- `filter[A047523(n+2), A211487(#)]` -/
def P6541778606734749612.Spec : Prop :=
  ∀ n, P6541778606734749612.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P8126644191420417947

`filter[A047526(n+3), A069513(#)]`
-/

namespace A366526.P8126644191420417947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A366526.P8126644191420417947

namespace A366526

/-- `filter[A047526(n+3), A069513(#)]` -/
def P8126644191420417947.Spec : Prop :=
  ∀ n, P8126644191420417947.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P2708768825846923100

`filter[A047537(n+3), A069513(#)]`
-/

namespace A366526.P2708768825846923100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A366526.P2708768825846923100

namespace A366526

/-- `filter[A047537(n+3), A069513(#)]` -/
def P2708768825846923100.Spec : Prop :=
  ∀ n, P2708768825846923100.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P9378971876407629123

`filter[A047537(n+3), A211487(#)]`
-/

namespace A366526.P9378971876407629123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A366526.P9378971876407629123

namespace A366526

/-- `filter[A047537(n+3), A211487(#)]` -/
def P9378971876407629123.Spec : Prop :=
  ∀ n, P9378971876407629123.a n = A366526 (n + 1)

end A366526

/-! ## A366526.P6963252662029270501

`∩[A047526(n+1), A185189(n+1)]`
-/

namespace A366526.P6963252662029270501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P6963252662029270501

namespace A366526

/-- `∩[A047526(n+1), A185189(n+1)]` -/
def P6963252662029270501.Spec : Prop :=
  ∀ n, (P6963252662029270501.a n : ℤ) = A366526 (n + 1)

end A366526

/-! ## A366526.P1840422952513644137

`∩[A047537(n+1), A185189(n+1)]`
-/

namespace A366526.P1840422952513644137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366526.P1840422952513644137

namespace A366526

/-- `∩[A047537(n+1), A185189(n+1)]` -/
def P1840422952513644137.Spec : Prop :=
  ∀ n, (P1840422952513644137.a n : ℤ) = A366526 (n + 1)

end A366526

/-!
# A366527: Number of integer partitions of 2n containing at least one even part.

The programs for A366527, there is no canonical definition to state claims against.
-/

/-! ## A366527.P2377236005551294019

`A000041(2*n)-A000009(2*n)`
-/

namespace A366527.P2377236005551294019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000009 (2 * n)

end

end A366527.P2377236005551294019

/-! ## A366527.P131431351568276536

`A047967(2*n)`
-/

namespace A366527.P131431351568276536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (2 * n)

end

end A366527.P131431351568276536

/-! ## A366527.P6478173365247516084

`record[A047967(n)/(-1)^n]`
-/

namespace A366527.P6478173365247516084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047967 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366527.P6478173365247516084

/-! ## A366527.P10867781388645462117

`A058696(n)-A035294(n)`
-/

namespace A366527.P10867781388645462117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A035294 n

end

end A366527.P10867781388645462117

/-! ## A366527.P3572007507376297244

`A182616(n)-A282893(n)`
-/

namespace A366527.P3572007507376297244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A282893 n

end

end A366527.P3572007507376297244

/-! ## A366527.P119637695912075110

`A000041(2*n)-A035294(n)`
-/

namespace A366527.P119637695912075110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A035294 n

end

end A366527.P119637695912075110

/-! ## A366527.P6900262174769460261

`A058696(n)-A000009(2*n)`
-/

namespace A366527.P6900262174769460261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000009 (2 * n)

end

end A366527.P6900262174769460261

/-! ## A366527.P7032690136700849443

`A167930(2*n)+A032741(2*n)`
-/

namespace A366527.P7032690136700849443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 (2 * n) + A032741 (2 * n)

end

end A366527.P7032690136700849443

/-! ## A366527.P1531136560533480164

`A394589(2*n)+A000009(2*n)`
-/

namespace A366527.P1531136560533480164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394589 (2 * n) + A000009 (2 * n)

end

end A366527.P1531136560533480164

/-! ## A366527.P4469507893148862861

`A000041(2*n)-A081360(2*n)`
-/

namespace A366527.P4469507893148862861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A081360 (2 * n)

end

end A366527.P4469507893148862861

/-! ## A366527.P17788492047216591559

`A052810(2*n)-A052839(2*n)`
-/

namespace A366527.P17788492047216591559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (2 * n) - A052839 (2 * n)

end

end A366527.P17788492047216591559

/-! ## A366527.P3056697482467104223

`A000065(2*n)-A111133(2*n)`
-/

namespace A366527.P3056697482467104223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) - A111133 (2 * n)

end

end A366527.P3056697482467104223

/-! ## A366527.P8726504342815909593

`A218004(2*n)-A333147(2*n)`
-/

namespace A366527.P8726504342815909593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218004 (2 * n) - A333147 (2 * n)

end

end A366527.P8726504342815909593

/-! ## A366527.P18333827436209619512

`A330644(2*n)-A331848(2*n)`
-/

namespace A366527.P18333827436209619512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 (2 * n) - A331848 (2 * n)

end

end A366527.P18333827436209619512

/-! ## A366527.P2760836205348181731

`A000041(n)+A182616(n)-A035294(n)`
-/

namespace A366527.P2760836205348181731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A182616 n - A035294 n)

end

end A366527.P2760836205348181731

/-! ## A366527.P16953410304732563354

`record[A047967(A115273(n))]`
-/

namespace A366527.P16953410304732563354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (A115273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366527.P16953410304732563354

/-! ## A366527.P8359330984628844706

`sqrt(A001255(2*n))-A000009(2*n)`
-/

namespace A366527.P8359330984628844706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (2 * n) : ℝ) - (A000009 (2 * n) : ℝ)

end

end A366527.P8359330984628844706

/-! ## A366527.P15836687957268219691

`A337698(2*n)-A056823(2*n)`
-/

namespace A366527.P15836687957268219691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 (2 * n) - A056823 (2 * n)

end

end A366527.P15836687957268219691

/-!
# A366528: Sum of odd prime indices of n.

The programs for A366528, there is no canonical definition to state claims against.
-/

/-! ## A366528.P9281331609082666595

`A056239(n+1)-A366531(n+1)`
-/

namespace A366528.P9281331609082666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A366531 (n + 1)

end

end A366528.P9281331609082666595

/-! ## A366528.P15927331418458995323

`A056239(A247503(n+1))`
-/

namespace A366528.P15927331418458995323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A247503 (n + 1)).toNat

end

end A366528.P15927331418458995323

/-! ## A366528.P4631718112499060553

`A346698(A247503((n+1)²))`
-/

namespace A366528.P4631718112499060553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A247503 ((n + 1) ^ 2)).toNat

end

end A366528.P4631718112499060553

/-! ## A366528.P626863549959628239

`∑{d}[A247503(n+1), A297109(#)]`
-/

namespace A366528.P626863549959628239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A366528.P626863549959628239

/-! ## A366528.P6287056357113835301

`A056239((n+1)/A248101(n+1))`
-/

namespace A366528.P6287056357113835301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248101 (n + 1) : ℚ))).toNat

end

end A366528.P6287056357113835301

/-! ## A366528.P1255629443966642482

`A056239(n+1)-2*A366533(n+1)`
-/

namespace A366528.P1255629443966642482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A366533 (n + 1)

end

end A366528.P1255629443966642482

/-! ## A366528.P11362691687968593352

`A366531(A064989(n+1))+A257991(n+1)`
-/

namespace A366528.P11362691687968593352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (A064989 (n + 1)).toNat + A257991 (n + 1)

end

end A366528.P11362691687968593352

/-! ## A366528.P12923046887362316773

`A056239(n+1)-A056239(A248101(n+1))`
-/

namespace A366528.P12923046887362316773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A248101 (n + 1)).toNat

end

end A366528.P12923046887362316773

/-! ## A366528.P6792145700075521107

`A346698(A247503(n+1)*A247503(n+1))`
-/

namespace A366528.P6792145700075521107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A247503 (n + 1) * A247503 (n + 1)).toNat

end

end A366528.P6792145700075521107

/-! ## A366528.P10783697245598713431

`A056239(n+1)-A056239(A319522((n+1)²))`
-/

namespace A366528.P10783697245598713431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A319522 ((n + 1) ^ 2)).toNat

end

end A366528.P10783697245598713431

/-!
# A366529: Heinz numbers of integer partitions of even numbers with at least one even part.

The programs for A366529, there is no canonical definition to state claims against.
-/

/-! ## A366529.P10558553760811544276

`∩[A300061(n+1), A324929(n+1)]`
-/

namespace A366529.P10558553760811544276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366529.P10558553760811544276

/-!
# A366530: Heinz numbers of integer partitions of even numbers with at least one odd part.

The programs for A366530, there is no canonical definition to state claims against.
-/

/-! ## A366530.P1062053850999211126

`lt[1, A137753(A257991(n+1)+1)]+1`
-/

namespace A366530.P1062053850999211126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (A257991 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366530.P1062053850999211126

/-! ## A366530.P15685735341524021270

`∩[A300061(n+1), A324694(n+1)]`
-/

namespace A366530.P15685735341524021270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366530.P15685735341524021270

/-! ## A366530.P6165840644588685658

`∩[A324694(n+1), lt[A344616(n+1)%2, 1]+1]`
-/

namespace A366530.P6165840644588685658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324694 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (n + 1)) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A366530.P6165840644588685658

/-! ## A366530.P4018634781174629915

`∩[A300061(n+1), A366322(n+1)]`
-/

namespace A366530.P4018634781174629915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366530.P4018634781174629915

/-!
# A366531: Sum of even prime indices of n.

The programs for A366531, there is no canonical definition to state claims against.
-/

/-! ## A366531.P9321228251311308067

`A056239(n+1)-A366528(n+1)`
-/

namespace A366531.P9321228251311308067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A366528 (n + 1)

end

end A366531.P9321228251311308067

/-! ## A366531.P16563547147581879602

`A366533((n+1)²)`
-/

namespace A366531.P16563547147581879602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 ((n + 1) ^ 2)

end

end A366531.P16563547147581879602

/-! ## A366531.P3341888034708080859

`2*A366533(n+1)`
-/

namespace A366531.P3341888034708080859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366533 (n + 1)

end

end A366531.P3341888034708080859

/-! ## A366531.P18046961781159630392

`A056239(A248101(n+1))`
-/

namespace A366531.P18046961781159630392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A248101 (n + 1)).toNat

end

end A366531.P18046961781159630392

/-! ## A366531.P12980145527628133391

`A005843(A366533(n+1))`
-/

namespace A366531.P12980145527628133391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A366533 (n + 1)).toNat

end

end A366531.P12980145527628133391

/-! ## A366531.P3560846950743641953

`A056239(A319522((n+1)²))`
-/

namespace A366531.P3560846950743641953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A319522 ((n + 1) ^ 2)).toNat

end

end A366531.P3560846950743641953

/-! ## A366531.P7482651726864147639

`A056239(n+1)-A056239(A247503(n+1))`
-/

namespace A366531.P7482651726864147639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A247503 (n + 1)).toNat

end

end A366531.P7482651726864147639

/-! ## A366531.P3759129792431219143

`A366749(n+1)+A366528(n+1)`
-/

namespace A366531.P3759129792431219143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366749 (n + 1) + A366528 (n + 1)

end

end A366531.P3759129792431219143

/-!
# A366532: Heinz numbers of integer partitions with at least one even and odd part.

The programs for A366532, there is no canonical definition to state claims against.
-/

/-! ## A366532.P11604844702734670801

`lt[1, A353372(n+1)]+1`
-/

namespace A366532.P11604844702734670801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366532.P11604844702734670801

/-! ## A366532.P11826117128500708056

`lt[1, A353372(A000038(n)+n)]`
-/

namespace A366532.P11826117128500708056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366532.P11826117128500708056

/-! ## A366532.P5223628724921898765

`∪[A104210(n+1), A390988(n+1)]`
-/

namespace A366532.P5223628724921898765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366532.P5223628724921898765

/-! ## A366532.P3519686641108320838

`∪[A378884(n+1), A390988(n+1)]`
-/

namespace A366532.P3519686641108320838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366532.P3519686641108320838

/-! ## A366532.P16904172364518960096

`∩[A324929(n+1), A366322(n+1)]`
-/

namespace A366532.P16904172364518960096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366532.P16904172364518960096

/-!
# A366533: Sum of even prime indices of n divided by 2.

The programs for A366533, there is no canonical definition to state claims against.
-/

/-! ## A366533.P17495937828674921398

`A366531(n+1)/2`
-/

namespace A366533.P17495937828674921398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366531 (n + 1) : ℚ) / 2

end

end A366533.P17495937828674921398

/-! ## A366533.P18231701657218339397

`A056239(A319522(n+1))`
-/

namespace A366533.P18231701657218339397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A319522 (n + 1)).toNat

end

end A366533.P18231701657218339397

/-! ## A366533.P3239476931479811030

`A056239(A248101(n+1))/2`
-/

namespace A366533.P3239476931479811030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A248101 (n + 1)).toNat : ℚ) / 2

end

end A366533.P3239476931479811030

/-! ## A366533.P4381665237530673117

`A001281(A366531(n+1))`
-/

namespace A366533.P4381665237530673117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A366531 (n + 1)).toNat

end

end A366533.P4381665237530673117

/-! ## A366533.P12227618191381128695

`A004526(A366531(n+1)+1)`
-/

namespace A366533.P12227618191381128695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A366531 (n + 1) + 1).toNat

end

end A366533.P12227618191381128695

/-! ## A366533.P11691080386631106726

`(A056239(n+1)-A366528(n+1))/2`
-/

namespace A366533.P11691080386631106726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) - A366528 (n + 1) : ℚ) / 2

end

end A366533.P11691080386631106726

/-! ## A366533.P8574969020146795590

`(A366749(n+1)+A366528(n+1))/2`
-/

namespace A366533.P8574969020146795590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366749 (n + 1) + A366528 (n + 1) : ℚ) / 2

end

end A366533.P8574969020146795590

/-!
# A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

The programs for A366534, the canonical program `A366534.P14908058348624275973` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366534 has offset 1).

The definition of A366534 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366534.P14908058348624275973

`A034444(A268335(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366534

/-- `A034444(A268335(n+1))` -/
def P14908058348624275973.Spec : Prop :=
  ∀ n, P14908058348624275973.a n = A366534 (n + 1)

theorem P14908058348624275973.correct : P14908058348624275973.Spec := by
  intro n
  simp only [A366534, Nat.add_sub_cancel]

end A366534

/-! ## A366534.P3717493562929455602

`A000005(A367417(n+1))`
-/

namespace A366534.P3717493562929455602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367417 (n + 1)).toNat

end

end A366534.P3717493562929455602

namespace A366534

/-- `A000005(A367417(n+1))` -/
def P3717493562929455602.Spec : Prop :=
  ∀ n, P3717493562929455602.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P9052513833496151474

`A366438(n+1)/A380323(n+1)`
-/

namespace A366534.P9052513833496151474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366438 (n + 1) : ℚ) / (A380323 (n + 1) : ℚ)

end

end A366534.P9052513833496151474

namespace A366534

/-- `A366438(n+1)/A380323(n+1)` -/
def P9052513833496151474.Spec : Prop :=
  ∀ n, P9052513833496151474.a n = (A366534 (n + 1) : ℚ)

end A366534

/-! ## A366534.P12679425288661186065

`A322327(A268335(n+1))/A368472(n+1)`
-/

namespace A366534.P12679425288661186065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (A268335 (n + 1)).toNat : ℚ) / (A368472 (n + 1) : ℚ)

end

end A366534.P12679425288661186065

namespace A366534

/-- `A322327(A268335(n+1))/A368472(n+1)` -/
def P12679425288661186065.Spec : Prop :=
  ∀ n, P12679425288661186065.a n = (A366534 (n + 1) : ℚ)

end A366534

/-! ## A366534.P4372303440570729079

`A034444(A367407(n+1))`
-/

namespace A366534.P4372303440570729079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367407 (n + 1)).toNat

end

end A366534.P4372303440570729079

namespace A366534

/-- `A034444(A367407(n+1))` -/
def P4372303440570729079.Spec : Prop :=
  ∀ n, P4372303440570729079.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P7513427709084143498

`filter[A366742(n+1), A209229(#)]`
-/

namespace A366534.P7513427709084143498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A366534.P7513427709084143498

namespace A366534

/-- `filter[A366742(n+1), A209229(#)]` -/
def P7513427709084143498.Spec : Prop :=
  ∀ n, P7513427709084143498.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P1213013458635289993

`A055076(A268335(2*n+1-n))`
-/

namespace A366534.P1213013458635289993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A268335 (2 * n + 1 - n)).toNat

end

end A366534.P1213013458635289993

namespace A366534

/-- `A055076(A268335(2*n+1-n))` -/
def P1213013458635289993.Spec : Prop :=
  ∀ n, P1213013458635289993.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P1368121862278316027

`A000005(A007947(A367406(n+1)))`
-/

namespace A366534.P1368121862278316027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (A367406 (n + 1)).toNat).toNat

end

end A366534.P1368121862278316027

namespace A366534

/-- `A000005(A007947(A367406(n+1)))` -/
def P1368121862278316027.Spec : Prop :=
  ∀ n, P1368121862278316027.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P9761454155877674971

`A006519(A005361(A268335(n+1)²))`
-/

namespace A366534.P9761454155877674971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A005361 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A366534.P9761454155877674971

namespace A366534

/-- `A006519(A005361(A268335(n+1)²))` -/
def P9761454155877674971.Spec : Prop :=
  ∀ n, P9761454155877674971.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P1308081045375564024

`A055076(A007947(A268335(n+1)²))`
-/

namespace A366534.P1308081045375564024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A007947 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A366534.P1308081045375564024

namespace A366534

/-- `A055076(A007947(A268335(n+1)²))` -/
def P1308081045375564024.Spec : Prop :=
  ∀ n, P1308081045375564024.a n = A366534 (n + 1)

end A366534

/-! ## A366534.P6138223449709045643

`A055076(A336643(A268335(n+1)²))`
-/

namespace A366534.P6138223449709045643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A336643 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A366534.P6138223449709045643

namespace A366534

/-- `A055076(A336643(A268335(n+1)²))` -/
def P6138223449709045643.Spec : Prop :=
  ∀ n, P6138223449709045643.a n = A366534 (n + 1)

end A366534

/-!
# A366535: The sum of unitary divisors of the exponentially odd numbers (A268335).

The programs for A366535, the canonical program `A366535.P17157640204726655223` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366535 has offset 1).

The definition of A366535 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366535.P17157640204726655223

`A034448(A268335(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366535

/-- `A034448(A268335(n+1))` -/
def P17157640204726655223.Spec : Prop :=
  ∀ n, P17157640204726655223.a n = A366535 (n + 1)

theorem P17157640204726655223.correct : P17157640204726655223.Spec := by
  intro n
  simp only [A366535, Nat.add_sub_cancel]

end A366535

/-! ## A366535.P16534008239810516562

`A382661(n+1)/A382660(n+1)`
-/

namespace A366535.P16534008239810516562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382661 (n + 1) : ℚ) / (A382660 (n + 1) : ℚ)

end

end A366535.P16534008239810516562

namespace A366535

/-- `A382661(n+1)/A382660(n+1)` -/
def P16534008239810516562.Spec : Prop :=
  ∀ n, P16534008239810516562.a n = (A366535 (n + 1) : ℚ)

end A366535

/-! ## A366535.P12368265757436131764

`A034448(record[A350389(n+1)])`
-/

namespace A366535.P12368265757436131764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366535.P12368265757436131764

namespace A366535

/-- `A034448(record[A350389(n+1)])` -/
def P12368265757436131764.Spec : Prop :=
  ∀ n, P12368265757436131764.a n = A366535 (n + 1)

end A366535

/-! ## A366535.P12531642055656310746

`A358346(record[A350389(n+1)])`
-/

namespace A366535.P12531642055656310746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358346 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366535.P12531642055656310746

namespace A366535

/-- `A358346(record[A350389(n+1)])` -/
def P12531642055656310746.Spec : Prop :=
  ∀ n, P12531642055656310746.a n = A366535 (n + 1)

end A366535

/-! ## A366535.P1253469905138448248

`A034448(eq[0, A162641(n+1)]+1)`
-/

namespace A366535.P1253469905138448248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A366535.P1253469905138448248

namespace A366535

/-- `A034448(eq[0, A162641(n+1)]+1)` -/
def P1253469905138448248.Spec : Prop :=
  ∀ n, P1253469905138448248.a n = A366535 (n + 1)

end A366535

/-! ## A366535.P665053871134585481

`A358346(A268335(2*n+1-n))`
-/

namespace A366535.P665053871134585481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358346 (A268335 (2 * n + 1 - n)).toNat

end

end A366535.P665053871134585481

namespace A366535

/-- `A358346(A268335(2*n+1-n))` -/
def P665053871134585481.Spec : Prop :=
  ∀ n, P665053871134585481.a n = A366535 (n + 1)

end A366535

/-! ## A366535.P1221818702744125248

`A117658(A367406(n+1))`
-/

namespace A366535.P1221818702744125248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A367406 (n + 1)).toNat

end

end A366535.P1221818702744125248

namespace A366535

/-- `A117658(A367406(n+1))` -/
def P1221818702744125248.Spec : Prop :=
  ∀ n, P1221818702744125248.a n = A366535 (n + 1)

end A366535

/-! ## A366535.P2309786878416196209

`A305461(A374458(n+1))`
-/

namespace A366535.P2309786878416196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A374458 (n + 1)).toNat

end

end A366535.P2309786878416196209

namespace A366535

/-- `A305461(A374458(n+1))` -/
def P2309786878416196209.Spec : Prop :=
  ∀ n, P2309786878416196209.a n = A366535 (n + 1)

end A366535

/-!
# A366536: The number of unitary divisors of the cubefree numbers (A004709).

The programs for A366536, the canonical program `A366536.P10748796053883009317` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366536 has offset 1).

The definition of A366536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366536.P10748796053883009317

`A034444(A004709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366536

/-- `A034444(A004709(n+1))` -/
def P10748796053883009317.Spec : Prop :=
  ∀ n, P10748796053883009317.a n = A366536 (n + 1)

theorem P10748796053883009317.correct : P10748796053883009317.Spec := by
  intro n
  simp only [A366536, Nat.add_sub_cancel]

end A366536

/-! ## A366536.P4024848325437955831

`2^A376365(n+1)`
-/

namespace A366536.P4024848325437955831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376365 (n + 1) : ℤ)

end

end A366536.P4024848325437955831

namespace A366536

/-- `2^A376365(n+1)` -/
def P4024848325437955831.Spec : Prop :=
  ∀ n, P4024848325437955831.a n = (A366536 (n + 1) : ℚ)

end A366536

/-! ## A366536.P8998435309527728611

`A000005(A382888(n+1))`
-/

namespace A366536.P8998435309527728611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A382888 (n + 1)).toNat

end

end A366536.P8998435309527728611

namespace A366536

/-- `A000005(A382888(n+1))` -/
def P8998435309527728611.Spec : Prop :=
  ∀ n, P8998435309527728611.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P2886204534296928539

`∏{e}[A004709(n+1), A331348(#)]`
-/

namespace A366536.P2886204534296928539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A331348 (Nat.factorization (f1 n).natAbs p)

end

end A366536.P2886204534296928539

namespace A366536

/-- `∏{e}[A004709(n+1), A331348(#)]` -/
def P2886204534296928539.Spec : Prop :=
  ∀ n, P2886204534296928539.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P248264910506394296

`A034444(A277803(n+1))`
-/

namespace A366536.P248264910506394296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A277803 (n + 1)).toNat

end

end A366536.P248264910506394296

namespace A366536

/-- `A034444(A277803(n+1))` -/
def P248264910506394296.Spec : Prop :=
  ∀ n, P248264910506394296.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P17649461251050637518

`A034444(record[A050985(n+1)])`
-/

namespace A366536.P17649461251050637518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366536.P17649461251050637518

namespace A366536

/-- `A034444(record[A050985(n+1)])` -/
def P17649461251050637518.Spec : Prop :=
  ∀ n, P17649461251050637518.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P9566378649685886129

`A286324(record[A050985(n+1)])`
-/

namespace A366536.P9566378649685886129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366536.P9566378649685886129

namespace A366536

/-- `A286324(record[A050985(n+1)])` -/
def P9566378649685886129.Spec : Prop :=
  ∀ n, P9566378649685886129.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P6421048624600740263

`filter[A061389(n+1), A076141(#)]`
-/

namespace A366536.P6421048624600740263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A366536.P6421048624600740263

namespace A366536

/-- `filter[A061389(n+1), A076141(#)]` -/
def P6421048624600740263.Spec : Prop :=
  ∀ n, P6421048624600740263.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P12610665917136070310

`filter[A061389(n+1), A209229(#)]`
-/

namespace A366536.P12610665917136070310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A366536.P12610665917136070310

namespace A366536

/-- `filter[A061389(n+1), A209229(#)]` -/
def P12610665917136070310.Spec : Prop :=
  ∀ n, P12610665917136070310.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P1618896691888114836

`A037445(A004709(2*n+1-n))`
-/

namespace A366536.P1618896691888114836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A004709 (2 * n + 1 - n)).toNat

end

end A366536.P1618896691888114836

namespace A366536

/-- `A037445(A004709(2*n+1-n))` -/
def P1618896691888114836.Spec : Prop :=
  ∀ n, P1618896691888114836.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P9961626490104617521

`A380922(A160813(n+1)-A005117(n+1))`
-/

namespace A366536.P9961626490104617521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380922 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A366536.P9961626490104617521

namespace A366536

/-- `A380922(A160813(n+1)-A005117(n+1))` -/
def P9961626490104617521.Spec : Prop :=
  ∀ n, P9961626490104617521.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P13558395149323811839

`A367515(A004709(A115384(2*n+1)))`
-/

namespace A366536.P13558395149323811839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A004709 (A115384 (2 * n + 1)).toNat).toNat

end

end A366536.P13558395149323811839

namespace A366536

/-- `A367515(A004709(A115384(2*n+1)))` -/
def P13558395149323811839.Spec : Prop :=
  ∀ n, P13558395149323811839.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P17810466964348523062

`A366763(A004709(n+1)%A304364(n+1))`
-/

namespace A366536.P17810466964348523062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (Int.tmod (A004709 (n + 1)) (A304364 (n + 1))).toNat

end

end A366536.P17810466964348523062

namespace A366536

/-- `A366763(A004709(n+1)%A304364(n+1))` -/
def P17810466964348523062.Spec : Prop :=
  ∀ n, P17810466964348523062.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P9822960323245850707

`A073180(A007947(A004709(n+1)²))`
-/

namespace A366536.P9822960323245850707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (A007947 (A004709 (n + 1) ^ 2).toNat).toNat

end

end A366536.P9822960323245850707

namespace A366536

/-- `A073180(A007947(A004709(n+1)²))` -/
def P9822960323245850707.Spec : Prop :=
  ∀ n, P9822960323245850707.a n = A366536 (n + 1)

end A366536

/-! ## A366536.P15147199442595520024

`A318472(A277802(n+1))`
-/

namespace A366536.P15147199442595520024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 (A277802 (n + 1)).toNat

end

end A366536.P15147199442595520024

namespace A366536

/-- `A318472(A277802(n+1))` -/
def P15147199442595520024.Spec : Prop :=
  ∀ n, P15147199442595520024.a n = A366536 (n + 1)

end A366536

/-!
# A366537: The sum of unitary divisors of the cubefree numbers (A004709).

The programs for A366537, the canonical program `A366537.P6054453668731544926` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366537 has offset 1).

The definition of A366537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366537.P6054453668731544926

`A034448(A004709(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366537

/-- `A034448(A004709(n+1))` -/
def P6054453668731544926.Spec : Prop :=
  ∀ n, P6054453668731544926.a n = A366537 (n + 1)

theorem P6054453668731544926.correct : P6054453668731544926.Spec := by
  intro n
  simp only [A366537, Nat.add_sub_cancel]

end A366537

/-! ## A366537.P10711304065141263090

`A382663(n+1)/A382662(n+1)`
-/

namespace A366537.P10711304065141263090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382663 (n + 1) : ℚ) / (A382662 (n + 1) : ℚ)

end

end A366537.P10711304065141263090

namespace A366537

/-- `A382663(n+1)/A382662(n+1)` -/
def P10711304065141263090.Spec : Prop :=
  ∀ n, P10711304065141263090.a n = (A366537 (n + 1) : ℚ)

end A366537

/-! ## A366537.P14601388224006837477

`A034448(record[A007948(n+1)])`
-/

namespace A366537.P14601388224006837477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366537.P14601388224006837477

namespace A366537

/-- `A034448(record[A007948(n+1)])` -/
def P14601388224006837477.Spec : Prop :=
  ∀ n, P14601388224006837477.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P4993014860296077649

`A331110(and(-1, A004709(n+1)))`
-/

namespace A366537.P4993014860296077649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331110 (Int.land (-1) (A004709 (n + 1))).toNat

end

end A366537.P4993014860296077649

namespace A366537

/-- `A331110(and(-1, A004709(n+1)))` -/
def P4993014860296077649.Spec : Prop :=
  ∀ n, P4993014860296077649.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P4060747534271405716

`A188999(A004709(2*n+1-n))`
-/

namespace A366537.P4060747534271405716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A004709 (2 * n + 1 - n)).toNat

end

end A366537.P4060747534271405716

namespace A366537

/-- `A188999(A004709(2*n+1-n))` -/
def P4060747534271405716.Spec : Prop :=
  ∀ n, P4060747534271405716.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P382007301500341047

`A049417(A004709(n+1)%A052221(n+1))`
-/

namespace A366537.P382007301500341047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (Int.tmod (A004709 (n + 1)) (A052221 (n + 1))).toNat

end

end A366537.P382007301500341047

namespace A366537

/-- `A049417(A004709(n+1)%A052221(n+1))` -/
def P382007301500341047.Spec : Prop :=
  ∀ n, P382007301500341047.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P4821265979694283372

`A188999(A160813(n+1)-record[A007947(n+1)])`
-/

namespace A366537.P4821265979694283372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A160813 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366537.P4821265979694283372

namespace A366537

/-- `A188999(A160813(n+1)-record[A007947(n+1)])` -/
def P4821265979694283372.Spec : Prop :=
  ∀ n, P4821265979694283372.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P16293097103764461660

`A305461(A392365(n+1))`
-/

namespace A366537.P16293097103764461660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A392365 (n + 1)).toNat

end

end A366537.P16293097103764461660

namespace A366537

/-- `A305461(A392365(n+1))` -/
def P16293097103764461660.Spec : Prop :=
  ∀ n, P16293097103764461660.a n = A366537 (n + 1)

end A366537

/-! ## A366537.P796508737228646636

`A360162(A004709(n+1)²)`
-/

namespace A366537.P796508737228646636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A004709 (n + 1) ^ 2).toNat

end

end A366537.P796508737228646636

namespace A366537

/-- `A360162(A004709(n+1)²)` -/
def P796508737228646636.Spec : Prop :=
  ∀ n, P796508737228646636.a n = A366537 (n + 1)

end A366537

/-!
# A366538: The number of unitary divisors of the exponentially 2^n-numbers (A138302).

The programs for A366538, the canonical program `A366538.P17888934153353945255` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366538 has offset 1).

The definition of A366538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366538.P17888934153353945255

`A034444(A138302(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366538

/-- `A034444(A138302(n+1))` -/
def P17888934153353945255.Spec : Prop :=
  ∀ n, P17888934153353945255.a n = A366538 (n + 1)

theorem P17888934153353945255.correct : P17888934153353945255.Spec := by
  intro n
  simp only [A366538, Nat.add_sub_cancel]

end A366538

/-! ## A366538.P150180152307310542

`A000005(∏{p}[A138302(n+1), #])`
-/

namespace A366538.P150180152307310542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A366538.P150180152307310542

namespace A366538

/-- `A000005(∏{p}[A138302(n+1), #])` -/
def P150180152307310542.Spec : Prop :=
  ∀ n, P150180152307310542.a n = A366538 (n + 1)

end A366538

/-! ## A366538.P3416634651160516815

`A322327(A138302(n+1))/A368473(n+1)`
-/

namespace A366538.P3416634651160516815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (A138302 (n + 1)).toNat : ℚ) / (A368473 (n + 1) : ℚ)

end

end A366538.P3416634651160516815

namespace A366538

/-- `A322327(A138302(n+1))/A368473(n+1)` -/
def P3416634651160516815.Spec : Prop :=
  ∀ n, P3416634651160516815.a n = (A366538 (n + 1) : ℚ)

end A366538

/-! ## A366538.P3807974515976587832

`A037445(record[A270418(n+1)])`
-/

namespace A366538.P3807974515976587832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366538.P3807974515976587832

namespace A366538

/-- `A037445(record[A270418(n+1)])` -/
def P3807974515976587832.Spec : Prop :=
  ∀ n, P3807974515976587832.a n = A366538 (n + 1)

end A366538

/-! ## A366538.P5166813941831802335

`A034444(record[A365296(n+1)])`
-/

namespace A366538.P5166813941831802335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366538.P5166813941831802335

namespace A366538

/-- `A034444(record[A365296(n+1)])` -/
def P5166813941831802335.Spec : Prop :=
  ∀ n, P5166813941831802335.a n = A366538 (n + 1)

end A366538

/-! ## A366538.P13012269690847888435

`A037445(A138302(2*n+1-n))`
-/

namespace A366538.P13012269690847888435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A138302 (2 * n + 1 - n)).toNat

end

end A366538.P13012269690847888435

namespace A366538

/-- `A037445(A138302(2*n+1-n))` -/
def P13012269690847888435.Spec : Prop :=
  ∀ n, P13012269690847888435.a n = A366538 (n + 1)

end A366538

/-! ## A366538.P16425300450596591730

`A089120(2*n+5)^A001221(A138302(n+1))`
-/

namespace A366538.P16425300450596591730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089120 (2 * n + 5) : ℚ) ^ (A001221 (A138302 (n + 1)).toNat : ℤ)

end

end A366538.P16425300450596591730

namespace A366538

/-- `A089120(2*n+5)^A001221(A138302(n+1))` -/
def P16425300450596591730.Spec : Prop :=
  ∀ n, P16425300450596591730.a n = (A366538 (n + 1) : ℚ)

end A366538

/-! ## A366538.P5713534171446497942

`A005361(A007947(A138302(n+1))²)`
-/

namespace A366538.P5713534171446497942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A007947 (A138302 (n + 1)).toNat ^ 2).toNat

end

end A366538.P5713534171446497942

namespace A366538

/-- `A005361(A007947(A138302(n+1))²)` -/
def P5713534171446497942.Spec : Prop :=
  ∀ n, P5713534171446497942.a n = A366538 (n + 1)

end A366538

/-! ## A366538.P9117653994487597589

`A034444(A354180(n+1))`
-/

namespace A366538.P9117653994487597589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A354180 (n + 1)).toNat

end

end A366538.P9117653994487597589

namespace A366538

/-- `A034444(A354180(n+1))` -/
def P9117653994487597589.Spec : Prop :=
  ∀ n, P9117653994487597589.a n = A366538 (n + 1)

end A366538

/-!
# A366539: The sum of unitary divisors of the exponentially 2^n-numbers (A138302).

The programs for A366539, the canonical program `A366539.P359693618397037836` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366539 has offset 1).

The definition of A366539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366539.P359693618397037836

`A034448(A138302(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366539

/-- `A034448(A138302(n+1))` -/
def P359693618397037836.Spec : Prop :=
  ∀ n, P359693618397037836.a n = A366539 (n + 1)

theorem P359693618397037836.correct : P359693618397037836.Spec := by
  intro n
  simp only [A366539, Nat.add_sub_cancel]

end A366539

/-! ## A366539.P3586484619156328766

`A034448(record[A365296(n+1)])`
-/

namespace A366539.P3586484619156328766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366539.P3586484619156328766

namespace A366539

/-- `A034448(record[A365296(n+1)])` -/
def P3586484619156328766.Spec : Prop :=
  ∀ n, P3586484619156328766.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P5911568950212457376

`A049417(record[A365296(n+1)])`
-/

namespace A366539.P5911568950212457376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366539.P5911568950212457376

namespace A366539

/-- `A049417(record[A365296(n+1)])` -/
def P5911568950212457376.Spec : Prop :=
  ∀ n, P5911568950212457376.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P5157678805119944115

`A366743(record[A365296(n+1)])`
-/

namespace A366539.P5157678805119944115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366743 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366539.P5157678805119944115

namespace A366539

/-- `A366743(record[A365296(n+1)])` -/
def P5157678805119944115.Spec : Prop :=
  ∀ n, P5157678805119944115.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P4685221994322065569

`A049417(A138302(2*n+1-n))`
-/

namespace A366539.P4685221994322065569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A138302 (2 * n + 1 - n)).toNat

end

end A366539.P4685221994322065569

namespace A366539

/-- `A049417(A138302(2*n+1-n))` -/
def P4685221994322065569.Spec : Prop :=
  ∀ n, P4685221994322065569.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P861703695079658815

`A369762(A138302(A000290(n+1)/(n+1)))`
-/

namespace A366539.P861703695079658815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369762 (A138302 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A366539.P861703695079658815

namespace A366539

/-- `A369762(A138302(A000290(n+1)/(n+1)))` -/
def P861703695079658815.Spec : Prop :=
  ∀ n, P861703695079658815.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P15624835365570861710

`A049417(A138302(n+1)/A006519(2*n+1))`
-/

namespace A366539.P15624835365570861710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway ((A138302 (n + 1) : ℚ) / (A006519 (2 * n + 1) : ℚ))).toNat

end

end A366539.P15624835365570861710

namespace A366539

/-- `A049417(A138302(n+1)/A006519(2*n+1))` -/
def P15624835365570861710.Spec : Prop :=
  ∀ n, P15624835365570861710.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P16372185920725136823

`A366743(A138302(n+1)/A006519(2*n+1))`
-/

namespace A366539.P16372185920725136823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366743 (SequenceMachineLib.roundAway ((A138302 (n + 1) : ℚ) / (A006519 (2 * n + 1) : ℚ))).toNat

end

end A366539.P16372185920725136823

namespace A366539

/-- `A366743(A138302(n+1)/A006519(2*n+1))` -/
def P16372185920725136823.Spec : Prop :=
  ∀ n, P16372185920725136823.a n = A366539 (n + 1)

end A366539

/-! ## A366539.P9434241169956865760

`A049417(A138302(n+1)^A006519(2*n+1))`
-/

namespace A366539.P9434241169956865760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway ((A138302 (n + 1) : ℚ) ^ (A006519 (2 * n + 1) : ℤ))).toNat

end

end A366539.P9434241169956865760

namespace A366539

/-- `A049417(A138302(n+1)^A006519(2*n+1))` -/
def P9434241169956865760.Spec : Prop :=
  ∀ n, P9434241169956865760.a n = A366539 (n + 1)

end A366539

/-!
# A366540: Number of commutative binary operators defined on the finite chain L_n={0,1,...n}, C:L_n^2-> L_n, which are increasing in each argument, and satisfy the boundary conditions C(0,n)=C(n,0)=0 and C(n,n)=n.

The programs for A366540, there is no canonical definition to state claims against.
-/

/-! ## A366540.P8267903732858609092

`(A005157(n+1)-A005157(n))*A005130(n+1)`
-/

namespace A366540.P8267903732858609092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005157 (n + 1) - A005157 n) * A005130 (n + 1)

end

end A366540.P8267903732858609092

/-!
# A366541: Regular triangle read by rows: T(n,k) is the number of k-facets of the bipyramid on an n-simplex base.

The programs for A366541, the canonical program `A366541.P1807102450219154106` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366541 has offset 0).

The definition of A366541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366541.P14122264285210478256

`A029637(n+1)+A029637(n+2)`
-/

namespace A366541.P14122264285210478256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) + A029637 (n + 2)

end

end A366541.P14122264285210478256

namespace A366541

/-- `A029637(n+1)+A029637(n+2)` -/
def P14122264285210478256.Spec : Prop :=
  ∀ n, P14122264285210478256.a n = A366541 n

end A366541

/-! ## A366541.P4664305847051690673

`A029655(A061579(n))+A029637(n+1)`
-/

namespace A366541.P4664305847051690673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A061579 n).toNat + A029637 (n + 1)

end

end A366541.P4664305847051690673

namespace A366541

/-- `A029655(A061579(n))+A029637(n+1)` -/
def P4664305847051690673.Spec : Prop :=
  ∀ n, P4664305847051690673.a n = A366541 n

end A366541

/-! ## A366541.P1807102450219154106

`A074909(n)+A325191(n+1)+A074909(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366541

/-- `A074909(n)+A325191(n+1)+A074909(n)` -/
def P1807102450219154106.Spec : Prop :=
  ∀ n, P1807102450219154106.a n = A366541 n

theorem P1807102450219154106.correct : P1807102450219154106.Spec := by
  intro n
  simp only [A366541]

end A366541

/-! ## A366541.P10261634535037630967

`A193815(A014132(n+1))+A135278((n-1)%(n+1))`
-/

namespace A366541.P10261634535037630967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193815 (A014132 (n + 1)).toNat + A135278 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A366541.P10261634535037630967

namespace A366541

/-- `A193815(A014132(n+1))+A135278((n-1)%(n+1))` -/
def P10261634535037630967.Spec : Prop :=
  ∀ n, P10261634535037630967.a n = A366541 n

end A366541

/-! ## A366541.P15031475467223865042

`A193815(A014132(n+1))+A325191(n)+A010054(n)`
-/

namespace A366541.P15031475467223865042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193815 (A014132 (n + 1)).toNat + (A325191 n + A010054 n)

end

end A366541.P15031475467223865042

namespace A366541

/-- `A193815(A014132(n+1))+A325191(n)+A010054(n)` -/
def P15031475467223865042.Spec : Prop :=
  ∀ n, P15031475467223865042.a n = A366541 n

end A366541

/-! ## A366541.P17922643206995319728

`A193815(A014132(n+1))+A028326(n)-A080233(n)`
-/

namespace A366541.P17922643206995319728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193815 (A014132 (n + 1)).toNat + (A028326 n - A080233 n)

end

end A366541.P17922643206995319728

namespace A366541

/-- `A193815(A014132(n+1))+A028326(n)-A080233(n)` -/
def P17922643206995319728.Spec : Prop :=
  ∀ n, P17922643206995319728.a n = A366541 n

end A366541

/-!
# A366542: Number of discrete uninorms defined on the finite chain L_n={0,1,...n}, U:L_n^2->L_n, whose underlying operators are smooth and idempotent, or smooth and idempotent-free.

The programs for A366542, the canonical program `A366542.P7434176657176198421` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366542 has offset 1).

The definition of A366542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366542.P7434176657176198421

`2*(A116713(n+1)+n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366542

/-- `2*(A116713(n+1)+n)` -/
def P7434176657176198421.Spec : Prop :=
  ∀ n, P7434176657176198421.a n = A366542 (n + 1)

theorem P7434176657176198421.correct : P7434176657176198421.Spec := by
  intro n
  simp only [A366542, Nat.add_sub_cancel]

end A366542

/-! ## A366542.P13498592295023526094

`∑[A006127(n)+gcd(n+2, C(8, n²))]`
-/

namespace A366542.P13498592295023526094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + (Nat.gcd (n + 2) (Nat.choose 8 (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366542.P13498592295023526094

namespace A366542

/-- `∑[A006127(n)+gcd(n+2, C(8, n²))]` -/
def P13498592295023526094.Spec : Prop :=
  ∀ n, P13498592295023526094.a n = A366542 (n + 1)

end A366542

/-! ## A366542.P3245622255696560219

`2*(∑[char[2]+or(n, A166444(n+1))]+n)`
-/

namespace A366542.P3245622255696560219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + Int.lor (n : ℤ) (A166444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A366542.P3245622255696560219

namespace A366542

/-- `2*(∑[char[2]+or(n, A166444(n+1))]+n)` -/
def P3245622255696560219.Spec : Prop :=
  ∀ n, P3245622255696560219.a n = A366542 (n + 1)

end A366542

/-! ## A366542.P8631430240556356718

`2*(A289207(n)+A132109(n))`
-/

namespace A366542.P8631430240556356718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289207 n + A132109 n)

end

end A366542.P8631430240556356718

namespace A366542

/-- `2*(A289207(n)+A132109(n))` -/
def P8631430240556356718.Spec : Prop :=
  ∀ n, P8631430240556356718.a n = A366542 (n + 1)

end A366542

/-! ## A366542.P14760520250046959883

`∑[A000079(n+1)-A052515(n)]`
-/

namespace A366542.P14760520250046959883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A052515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366542.P14760520250046959883

namespace A366542

/-- `∑[A000079(n+1)-A052515(n)]` -/
def P14760520250046959883.Spec : Prop :=
  ∀ n, P14760520250046959883.a n = A366542 (n + 1)

end A366542

/-!
# A366546: Expansion of e.g.f. -log(1 - x^3 * exp(x)).

The programs for A366546, there is no canonical definition to state claims against.
-/

/-! ## A366546.P13021762967589754510

`A292889(n^A115721(n))`
-/

namespace A366546.P13021762967589754510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292889 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115721 n : ℤ))).toNat

end

end A366546.P13021762967589754510

/-! ## A366546.P12948014005027532972

`A292889(n)%A145524(n)`
-/

namespace A366546.P12948014005027532972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292889 n) (A145524 n)

end

end A366546.P12948014005027532972

/-! ## A366546.P728212893543330464

`A292889(n^A060128(3*n))`
-/

namespace A366546.P728212893543330464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292889 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A060128 (3 * n) : ℤ))).toNat

end

end A366546.P728212893543330464

/-! ## A366546.P9237884515574293655

`A292889(n^(A046213(n+1)%(n+1)))`
-/

namespace A366546.P9237884515574293655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292889 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A046213 (n + 1)) (n + 1 : ℤ) : ℤ))).toNat

end

end A366546.P9237884515574293655

/-! ## A366546.P412098724712031473

`A292978(∑[n+3]+n+3)%A145524(n)`
-/

namespace A366546.P412098724712031473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292978 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))) (A145524 n)

end

end A366546.P412098724712031473

/-!
# A366548: a(0) = 0; for n > 0, a(n) is the number of terms prior to the term a(n-1-a(n-1)) that equal a(n-1-a(n-1)).

The programs for A366548, there is no canonical definition to state claims against.
-/

/-! ## A366548.P15219038784163657448

`A363193(n+1)-1`
-/

namespace A366548.P15219038784163657448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363193 (n + 1) - 1

end

end A366548.P15219038784163657448

/-! ## A366548.P1020428296090711954

`A003056(C(A363193(n+1), 2))`
-/

namespace A366548.P1020428296090711954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A363193 (n + 1)).toNat 2)

end

end A366548.P1020428296090711954

/-! ## A366548.P16559430899496809049

`A049581(C(A363193(n+1), 2))`
-/

namespace A366548.P16559430899496809049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (Nat.choose (A363193 (n + 1)).toNat 2)

end

end A366548.P16559430899496809049

/-! ## A366548.P16942059559966134411

`A363196(A163963(2*n+3))+A363193(n+1)`
-/

namespace A366548.P16942059559966134411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363196 (A163963 (2 * n + 3)).toNat + A363193 (n + 1)

end

end A366548.P16942059559966134411

/-! ## A366548.P9356150925500671863

`A083800(n+1)%A363193(n+1)`
-/

namespace A366548.P9356150925500671863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A363193 (n + 1))

end

end A366548.P9356150925500671863

/-! ## A366548.P18096008865406610358

`A070198(n)%A363193(n+1)`
-/

namespace A366548.P18096008865406610358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A363193 (n + 1))

end

end A366548.P18096008865406610358

/-! ## A366548.P17984186235570749936

`A079782(n+1)%A363193(n+1)`
-/

namespace A366548.P17984186235570749936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A363193 (n + 1))

end

end A366548.P17984186235570749936

/-! ## A366548.P5957456721691377278

`A083685(n+1)%A363193(n+1)`
-/

namespace A366548.P5957456721691377278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A363193 (n + 1))

end

end A366548.P5957456721691377278

/-! ## A366548.P9676877851606349467

`A121934(n+1)%A363193(n+1)`
-/

namespace A366548.P9676877851606349467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A363193 (n + 1))

end

end A366548.P9676877851606349467

/-! ## A366548.P10437104497275346543

`A030494(n+1)%A363193(n+1)`
-/

namespace A366548.P10437104497275346543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A363193 (n + 1))

end

end A366548.P10437104497275346543

/-! ## A366548.P4827790668105201829

`A072828(n+1)%A363193(n+1)`
-/

namespace A366548.P4827790668105201829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A363193 (n + 1))

end

end A366548.P4827790668105201829

/-! ## A366548.P10303971509987092725

`A198277(n)%A363193(n+1)`
-/

namespace A366548.P10303971509987092725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A363193 (n + 1))

end

end A366548.P10303971509987092725

/-!
# A366550: Numbers k such that bitwise AND of prime(k) and prime(k+1) = 1.

The programs for A366550, there is no canonical definition to state claims against.
-/

/-! ## A366550.P723874899315101047

`A007053(A214415(n))`
-/

namespace A366550.P723874899315101047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A214415 n).toNat

end

end A366550.P723874899315101047

/-! ## A366550.P1397618342575114752

`A060967(2*A214415(n))`
-/

namespace A366550.P1397618342575114752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * A214415 n).toNat

end

end A366550.P1397618342575114752

/-! ## A366550.P6029348235037556073

`A000720(A334150(n+1))`
-/

namespace A366550.P6029348235037556073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A334150 (n + 1)).toNat

end

end A366550.P6029348235037556073

/-!
# A366555: G.f. A(x) satisfies A(x) = 1 + x + x^3*A(x)^3.

The programs for A366555, there is no canonical definition to state claims against.
-/

/-! ## A366555.P7632894908567886822

`A366591(abs(1-n))+A366591(n)`
-/

namespace A366555.P7632894908567886822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366591 |1 - (n : ℤ)|.toNat + A366591 n

end

end A366555.P7632894908567886822

/-!
# A366557: G.f. A(x) satisfies A(x) = 1 + x + x^3*A(x)^4.

The programs for A366557, there is no canonical definition to state claims against.
-/

/-! ## A366557.P12477016145269736166

`A393880(n+1)+A184964(A264428(2*n))`
-/

namespace A366557.P12477016145269736166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393880 (n + 1) + A184964 (A264428 (2 * n)).toNat

end

end A366557.P12477016145269736166

/-!
# A366558: G.f. A(x) satisfies A(x) = 1 + x + x^4*A(x)^4.

The programs for A366558, there is no canonical definition to state claims against.
-/

/-! ## A366558.P10928264114568335864

`A366595(abs(1-n))+A366595(n)`
-/

namespace A366558.P10928264114568335864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366595 |1 - (n : ℤ)|.toNat + A366595 n

end

end A366558.P10928264114568335864

/-!
# A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

The programs for A366562, the canonical program `A366562.P1526609418940830950` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366562 has offset 1).

The definition of A366562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366562.P15722569188019279088

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{p}[n+1, -#]%2`
-/

namespace A366562.P15722569188019279088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (Int.tmod (∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ))) 2 : ℚ)

end

end A366562.P15722569188019279088

namespace A366562

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{p}[n+1, -#]%2` -/
def P15722569188019279088.Spec : Prop :=
  ∀ n, P15722569188019279088.a n = (A366562 (n + 1) : ℚ)

end A366562

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366562

/-- `∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])` -/
def P1526609418940830950.Spec : Prop :=
  ∀ n, P1526609418940830950.a n = A366562 (n + 1)

theorem P1526609418940830950.correct : P1526609418940830950.Spec := by
  intro n
  simp only [A366562, Nat.add_sub_cancel]

end A366562

/-! ## A366562.P17368238782817033754

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A087003(∏{p}[n+1, #])`
-/

namespace A366562.P17368238782817033754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A087003 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A366562.P17368238782817033754

namespace A366562

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A087003(∏{p}[n+1, #])` -/
def P17368238782817033754.Spec : Prop :=
  ∀ n, P17368238782817033754.a n = (A366562 (n + 1) : ℚ)

end A366562

/-! ## A366562.P16755117558876802950

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A361984(∏{p}[n+1, #])`
-/

namespace A366562.P16755117558876802950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A361984 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A366562.P16755117558876802950

namespace A366562

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A361984(∏{p}[n+1, #])` -/
def P16755117558876802950.Spec : Prop :=
  ∀ n, P16755117558876802950.a n = (A366562 (n + 1) : ℚ)

end A366562

/-! ## A366562.P6810685418426214602

`A000010(n+1)*A087003(∏{p}[n+1, #])`
-/

namespace A366562.P6810685418426214602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A087003 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A366562.P6810685418426214602

namespace A366562

/-- `A000010(n+1)*A087003(∏{p}[n+1, #])` -/
def P6810685418426214602.Spec : Prop :=
  ∀ n, P6810685418426214602.a n = A366562 (n + 1)

end A366562

/-! ## A366562.P4901967690249339952

`A000010(n+1)*A087003(A007947(n+1))`
-/

namespace A366562.P4901967690249339952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A087003 (A007947 (n + 1)).toNat

end

end A366562.P4901967690249339952

namespace A366562

/-- `A000010(n+1)*A087003(A007947(n+1))` -/
def P4901967690249339952.Spec : Prop :=
  ∀ n, P4901967690249339952.a n = A366562 (n + 1)

end A366562

/-!
# A366563: Number of nonzero terms in row n of A366561(n,k).

The programs for A366563, the canonical program `A366563.P7702288216470137659` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366563 has offset 1).

The definition of A366563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366563.P17779498411218044851

`A000005(gcd(n+1, lcm(2, ∑[n])))`
-/

namespace A366563.P17779498411218044851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A366563.P17779498411218044851

namespace A366563

/-- `A000005(gcd(n+1, lcm(2, ∑[n])))` -/
def P17779498411218044851.Spec : Prop :=
  ∀ n, P17779498411218044851.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P12647627142492934437

`A000005((n+1)/(char[or(3, n)]+1))`
-/

namespace A366563.P12647627142492934437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ))).toNat

end

end A366563.P12647627142492934437

namespace A366563

/-- `A000005((n+1)/(char[or(3, n)]+1))` -/
def P12647627142492934437.Spec : Prop :=
  ∀ n, P12647627142492934437.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P11932475613469463014

`A000005((n+1)/gcd(n-1, ∑[n]))`
-/

namespace A366563.P11932475613469463014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd ((n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ))).toNat

end

end A366563.P11932475613469463014

namespace A366563

/-- `A000005((n+1)/gcd(n-1, ∑[n]))` -/
def P11932475613469463014.Spec : Prop :=
  ∀ n, P11932475613469463014.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P13243708273913669872

`A000005(gcd(C(n², 2)/2, xor(n, -1)))`
-/

namespace A366563.P13243708273913669872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 2)) (Int.xor (n : ℤ) (-1)))

end

end A366563.P13243708273913669872

namespace A366563

/-- `A000005(gcd(C(n², 2)/2, xor(n, -1)))` -/
def P13243708273913669872.Spec : Prop :=
  ∀ n, P13243708273913669872.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P288353030112578248

`A000005((n+1)/gcd(4, 1-n)%3)`
-/

namespace A366563.P288353030112578248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Int.gcd 4 (1 - (n : ℤ)) % 3 : ℕ) : ℚ))).toNat

end

end A366563.P288353030112578248

namespace A366563

/-- `A000005((n+1)/gcd(4, 1-n)%3)` -/
def P288353030112578248.Spec : Prop :=
  ∀ n, P288353030112578248.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P7702288216470137659

`∑{d}[n+1, A059841(#*C(n, 3)%2)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366563

/-- `∑{d}[n+1, A059841(#*C(n, 3)%2)]` -/
def P7702288216470137659.Spec : Prop :=
  ∀ n, P7702288216470137659.a n = A366563 (n + 1)

theorem P7702288216470137659.correct : P7702288216470137659.Spec := by
  intro n
  simp only [A366563, Nat.add_sub_cancel]

end A366563

/-! ## A366563.P16212398387120474052

`Δ[A047207(n+1)]*∑{d}[n+1, (#+n)%2]`
-/

namespace A366563.P16212398387120474052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), (d + n) % 2 : ℕ) : ℤ)

end

end A366563.P16212398387120474052

namespace A366563

/-- `Δ[A047207(n+1)]*∑{d}[n+1, (#+n)%2]` -/
def P16212398387120474052.Spec : Prop :=
  ∀ n, P16212398387120474052.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P11581607711271668965

`A000005(lcm((n+1)/4^val(n+1, 4), (n+1)/∏{p}[n+1, #]))`
-/

namespace A366563.P11581607711271668965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A366563.P11581607711271668965

namespace A366563

/-- `A000005(lcm((n+1)/4^val(n+1, 4), (n+1)/∏{p}[n+1, #]))` -/
def P11581607711271668965.Spec : Prop :=
  ∀ n, P11581607711271668965.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P1609030825264736127

`A000005(A186646(n+1))`
-/

namespace A366563.P1609030825264736127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A186646 (n + 1)).toNat

end

end A366563.P1609030825264736127

namespace A366563

/-- `A000005(A186646(n+1))` -/
def P1609030825264736127.Spec : Prop :=
  ∀ n, P1609030825264736127.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P1529207692344723944

`A320111(A266491(n+1))`
-/

namespace A366563.P1529207692344723944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A266491 (n + 1)).toNat

end

end A366563.P1529207692344723944

namespace A366563

/-- `A320111(A266491(n+1))` -/
def P1529207692344723944.Spec : Prop :=
  ∀ n, P1529207692344723944.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P12927513938580488128

`A239614(n+1)/A177704(n)`
-/

namespace A366563.P12927513938580488128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239614 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A366563.P12927513938580488128

namespace A366563

/-- `A239614(n+1)/A177704(n)` -/
def P12927513938580488128.Spec : Prop :=
  ∀ n, P12927513938580488128.a n = (A366563 (n + 1) : ℚ)

end A366563

/-! ## A366563.P17460593915362497340

`A138191(n+1)*A320111(n+1)`
-/

namespace A366563.P17460593915362497340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A320111 (n + 1)

end

end A366563.P17460593915362497340

namespace A366563

/-- `A138191(n+1)*A320111(n+1)` -/
def P17460593915362497340.Spec : Prop :=
  ∀ n, P17460593915362497340.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P10547321921794811344

`A320111((n+1)*A001227(A304182(n+1)))`
-/

namespace A366563.P10547321921794811344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 ((n + 1 : ℤ) * A001227 (A304182 (n + 1)).toNat).toNat

end

end A366563.P10547321921794811344

namespace A366563

/-- `A320111((n+1)*A001227(A304182(n+1)))` -/
def P10547321921794811344.Spec : Prop :=
  ∀ n, P10547321921794811344.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P6393478693184772460

`A365171(A186646(n+1)²)`
-/

namespace A366563.P6393478693184772460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A186646 (n + 1) ^ 2).toNat

end

end A366563.P6393478693184772460

namespace A366563

/-- `A365171(A186646(n+1)²)` -/
def P6393478693184772460.Spec : Prop :=
  ∀ n, P6393478693184772460.a n = A366563 (n + 1)

end A366563

/-! ## A366563.P15764314378002401117

`∑{d}[A186646(n+1), A093148(#²)]`
-/

namespace A366563.P15764314378002401117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093148 (d ^ 2)

end

end A366563.P15764314378002401117

namespace A366563

/-- `∑{d}[A186646(n+1), A093148(#²)]` -/
def P15764314378002401117.Spec : Prop :=
  ∀ n, P15764314378002401117.a n = A366563 (n + 1)

end A366563

/-!
# A366564: Expansion of e.g.f. -log(1 - x^2 * (exp(x) - 1)).

The programs for A366564, there is no canonical definition to state claims against.
-/

/-! ## A366564.P5668564368409836241

`A005843(A355181(n))`
-/

namespace A366564.P5668564368409836241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A355181 n).toNat

end

end A366564.P5668564368409836241

/-! ## A366564.P18266411540790626144

`lcm(n, A005843(A353998(n)))`
-/

namespace A366564.P18266411540790626144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A005843 (A353998 n).toNat)

end

end A366564.P18266411540790626144

/-! ## A366564.P10182386159168027104

`∑{e}[A000351(n), A240989(#)]`
-/

namespace A366564.P10182386159168027104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A240989 (Nat.factorization (f1 n).natAbs p)

end

end A366564.P10182386159168027104

/-! ## A366564.P16251729210718845945

`A000265(A240989(n)+1)-1`
-/

namespace A366564.P16251729210718845945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A240989 n + 1).toNat - 1

end

end A366564.P16251729210718845945

/-! ## A366564.P17773484553567267040

`A240989(C(n, A323410(n+1)))`
-/

namespace A366564.P17773484553567267040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240989 (Nat.choose n (A323410 (n + 1)).toNat)

end

end A366564.P17773484553567267040

/-!
# A366566: a(n) is the expected end time of a game with three gamblers, one of which starts with capital n, the others with capital 1 each. The end time, rounded to the nearest integer, is given for games in which one of the two poor players wins.

The programs for A366566, there is no canonical definition to state claims against.
-/

/-! ## A366566.P13010721847435841866

`A353866(A353833(n+2)+A200975(n+1))`
-/

namespace A366566.P13010721847435841866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A353833 (n + 2) + A200975 (n + 1)).toNat

end

end A366566.P13010721847435841866

/-! ## A366566.P9752813040525669695

`A130249(A325535(3*n+4))+A022776(n+1)`
-/

namespace A366566.P9752813040525669695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A325535 (3 * n + 4)).toNat + A022776 (n + 1)

end

end A366566.P9752813040525669695

/-! ## A366566.P12580901523773067712

`∑[A385170(A320664(n))+1]`
-/

namespace A366566.P12580901523773067712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385170 (A320664 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366566.P12580901523773067712

/-! ## A366566.P125843472366128466

`∑[∑[A035263(A042933(n))]+1]+1`
-/

namespace A366566.P125843472366128466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A042933 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366566.P125843472366128466

/-! ## A366566.P6081892740157874272

`∑[A000193(A084814(n+1)+A065091(3*n+2))]+1`
-/

namespace A366566.P6081892740157874272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A084814 (n + 1) + A065091 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366566.P6081892740157874272

/-!
# A366567: a(n) is the mode of the probability distributions from which the expected game lengths in A366566 were determined.

The programs for A366567, there is no canonical definition to state claims against.
-/

/-! ## A366567.P12463154658389483360

`∑[A060118(A216205(n)+1)]`
-/

namespace A366567.P12463154658389483360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (A216205 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366567.P12463154658389483360

/-!
# A366568: P(n,n+2k-2) are the numerators of the probability that a gambler with initial capital n goes bankrupt exactly at round n+2k-2, randomly losing or winning 1 unit of money in each round, written as lower triangle T(n,k), n>=1, 1<=k<=n.

The programs for A366568, there is no canonical definition to state claims against.
-/

/-! ## A366568.P1343257320639680827

`A000265(A009766(n))`
-/

namespace A366568.P1343257320639680827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A009766 n).toNat

end

end A366568.P1343257320639680827

/-! ## A366568.P15944170662341420899

`A028234(2*A009766(n))`
-/

namespace A366568.P15944170662341420899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A009766 n).toNat

end

end A366568.P15944170662341420899

/-! ## A366568.P9847578482527735855

`A093803(2*A009766(n))`
-/

namespace A366568.P9847578482527735855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A009766 n).toNat

end

end A366568.P9847578482527735855

/-! ## A366568.P6865834194545163406

`A227140(2*A009766(n))`
-/

namespace A366568.P6865834194545163406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (2 * A009766 n).toNat

end

end A366568.P6865834194545163406

/-! ## A366568.P16242118748269107260

`A302034(2*A009766(n))`
-/

namespace A366568.P16242118748269107260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * A009766 n).toNat

end

end A366568.P16242118748269107260

/-! ## A366568.P2857405015753307971

`A363270(2*A009766(n))`
-/

namespace A366568.P2857405015753307971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363270 (2 * A009766 n).toNat

end

end A366568.P2857405015753307971

/-! ## A366568.P5458840061889246743

`A028234(lcm(2, A009766(n)))`
-/

namespace A366568.P5458840061889246743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lcm 2 (A009766 n))

end

end A366568.P5458840061889246743

/-! ## A366568.P7209477452668397889

`gcd(A009766(n), A055634(n))`
-/

namespace A366568.P7209477452668397889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 n) (A055634 n)

end

end A366568.P7209477452668397889

/-! ## A366568.P15578661963071912558

`gcd(2*A009766(n), A290344(n))`
-/

namespace A366568.P15578661963071912558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A009766 n) (A290344 n)

end

end A366568.P15578661963071912558

/-!
# A366569: Triangle T(n,k) of denominators corresponding to A366568.

The programs for A366569, there is no canonical definition to state claims against.
-/

/-! ## A366569.P775529512684668848

`∏[gcd(2, A219348(n+1))]`
-/

namespace A366569.P775529512684668848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A219348 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A366569.P775529512684668848

/-! ## A366569.P7851969052183014500

`2^∑[A136442((n+1)²)]`
-/

namespace A366569.P7851969052183014500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136442 ((n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A366569.P7851969052183014500

/-! ## A366569.P13448149881088690578

`∏[A096003(3*(n+1))%3]`
-/

namespace A366569.P13448149881088690578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096003 (3 * (n + 1))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A366569.P13448149881088690578

/-! ## A366569.P1065527262466033538

`a(n-1)*A275308(n²)` with `a(0)=2`
-/

namespace A366569.P1065527262466033538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A275308 (n ^ 2)

end

end A366569.P1065527262466033538

/-! ## A366569.P7026243343791849378

`2^∑[A066016(2*n+5)%2]`
-/

namespace A366569.P7026243343791849378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066016 (2 * n + 5)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A366569.P7026243343791849378

/-!
# A366570: a(n) = numerator(denominator(Bernoulli'(n, x)) / denominator(Bernoulli(n, 1))).

The programs for A366570, there is no canonical definition to state claims against.
-/

/-! ## A366570.P7999592294367393522

`A286515(n)/gcd(n, A286515(n))`
-/

namespace A366570.P7999592294367393522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286515 n : ℚ) / (Int.gcd (n : ℤ) (A286515 n) : ℚ)

end

end A366570.P7999592294367393522

/-! ## A366570.P3825712242485377707

`A286515(n)%A209236(A268472(n+1))`
-/

namespace A366570.P3825712242485377707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286515 n) (A209236 (A268472 (n + 1)).toNat)

end

end A366570.P3825712242485377707

/-! ## A366570.P1036905917952266595

`A050932(-1%A018396(n+1)+n)*A366426(n)`
-/

namespace A366570.P1036905917952266595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Int.tmod (-1) (A018396 (n + 1)) + (n : ℤ)).toNat * A366426 n

end

end A366570.P1036905917952266595

/-! ## A366570.P15506083799286552906

`A050932(abs(1-n))%(A293935(3*n+2)-27)*A366426(n)`
-/

namespace A366570.P15506083799286552906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050932 |1 - (n : ℤ)|.toNat) (A293935 (3 * n + 2) - 27) * A366426 n

end

end A366570.P15506083799286552906

/-!
# A366571: a(n) = denominator(Bernoulli(n, x)) / denominator(Bernoulli'(n, x)).

The programs for A366571, there is no canonical definition to state claims against.
-/

/-! ## A366571.P1949210660230945643

`A089026(n+1)*A366573(n+1)`
-/

namespace A366571.P1949210660230945643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A366573 (n + 1)

end

end A366571.P1949210660230945643

/-! ## A366571.P6797495329787187670

`A366572(n)/A366573(n)`
-/

namespace A366571.P6797495329787187670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366572 n : ℚ) / (A366573 n : ℚ)

end

end A366571.P6797495329787187670

/-! ## A366571.P6819676445895536452

`A007947(lcm(A089026(n+1), A366573(n+1)))`
-/

namespace A366571.P6819676445895536452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lcm (A089026 (n + 1)) (A366573 (n + 1)))

end

end A366571.P6819676445895536452

/-! ## A366571.P3188431680954104933

`or(A366152(n), A366193(A366168(3*(n+1))))`
-/

namespace A366571.P3188431680954104933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A366152 n) (A366193 (A366168 (3 * (n + 1))).toNat)

end

end A366571.P3188431680954104933

/-! ## A366571.P12437968174875848932

`A366427(n)*A380013(A160014(n))`
-/

namespace A366571.P12437968174875848932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366427 n * A380013 (A160014 n).toNat

end

end A366571.P12437968174875848932

/-!
# A366572: a(n) = denominator(Bernoulli(n, x)) / denominator(Bernoulli''(n, x)).

The programs for A366572, there is no canonical definition to state claims against.
-/

/-! ## A366572.P7451523872015072618

`A366571(n)*A366573(n)`
-/

namespace A366572.P7451523872015072618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366571 n * A366573 n

end

end A366572.P7451523872015072618

/-! ## A366572.P5138484311571830815

`A007947(lcm(A366571(n), A366573(n)))`
-/

namespace A366572.P5138484311571830815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lcm (A366571 n) (A366573 n))

end

end A366572.P5138484311571830815

/-! ## A366572.P13132336665533504964

`A050932(-1%A018396(n+1)+n)*A366571(n)`
-/

namespace A366572.P13132336665533504964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Int.tmod (-1) (A018396 (n + 1)) + (n : ℤ)).toNat * A366571 n

end

end A366572.P13132336665533504964

/-! ## A366572.P1357232692744880706

`A050932(abs(1-n))%(A293935(3*n+2)-27)*A366571(n)`
-/

namespace A366572.P1357232692744880706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050932 |1 - (n : ℤ)|.toNat) (A293935 (3 * n + 2) - 27) * A366571 n

end

end A366572.P1357232692744880706

/-! ## A366572.P6310240011960331842

`A144845(n)/A000188(A001045(n+1))`
-/

namespace A366572.P6310240011960331842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A000188 (A001045 (n + 1)).toNat : ℚ)

end

end A366572.P6310240011960331842

/-!
# A366573: a(n) = denominator(Bernoulli'(n, x)) / denominator(Bernoulli''(n, x)).

The programs for A366573, there is no canonical definition to state claims against.
-/

/-! ## A366573.P8255175132339821214

`A366572(n)/A366571(n)`
-/

namespace A366573.P8255175132339821214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366572 n : ℚ) / (A366571 n : ℚ)

end

end A366573.P8255175132339821214

/-! ## A366573.P8139831551078495002

`A050932((n-1)%A382206(n+1))`
-/

namespace A366573.P8139831551078495002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Int.tmod ((n : ℤ) - 1) (A382206 (n + 1))).toNat

end

end A366573.P8139831551078495002

/-! ## A366573.P8989515776652254388

`gcd(A295301(gcd(2, n)^n), A366570(n))`
-/

namespace A366573.P8989515776652254388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295301 (Nat.gcd 2 n ^ n)) (A366570 n)

end

end A366573.P8989515776652254388

/-! ## A366573.P8882004198395267444

`A050932(-1%A018396(n+1)+n)`
-/

namespace A366573.P8882004198395267444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Int.tmod (-1) (A018396 (n + 1)) + (n : ℤ)).toNat

end

end A366573.P8882004198395267444

/-! ## A366573.P12992398324179716033

`A050932(abs(gcd(3, A109756(n+1))-n))`
-/

namespace A366573.P12992398324179716033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 |(Int.gcd 3 (A109756 (n + 1)) : ℤ) - (n : ℤ)|.toNat

end

end A366573.P12992398324179716033

/-!
# A366574: a(1) = 1; for n > 1, a(n) is the maximum positive k such that all terms a(t), a(t-m), a(t-2*m), ..., a(t-(k-1)*m), for 0=1, are equal.

The programs for A366574, there is no canonical definition to state claims against.
-/

/-! ## A366574.P15137356653780695878

`A064547(A374900(n)+A017995(n))`
-/

namespace A366574.P15137356653780695878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A374900 n + A017995 n).toNat

end

end A366574.P15137356653780695878

/-! ## A366574.P4643777252448894438

`A001221(A147987(n+1)+A000051(n))`
-/

namespace A366574.P4643777252448894438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A147987 (n + 1) + A000051 n).toNat

end

end A366574.P4643777252448894438

/-! ## A366574.P15979174791341488376

`A115588(A257611(n)+A018609(n+1))`
-/

namespace A366574.P15979174791341488376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115588 (A257611 n + A018609 (n + 1)).toNat

end

end A366574.P15979174791341488376

/-! ## A366574.P17509621854309794425

`A001221(A291780(n+1)+A065075(n+1))`
-/

namespace A366574.P17509621854309794425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A291780 (n + 1) + A065075 (n + 1)).toNat

end

end A366574.P17509621854309794425

/-! ## A366574.P5029021624567586343

`A086435(A164415(n+1))`
-/

namespace A366574.P5029021624567586343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A164415 (n + 1)).toNat

end

end A366574.P5029021624567586343

/-!
# A366575: Number of divisors of 3^n - 1.

The programs for A366575, there is no canonical definition to state claims against.
-/

/-! ## A366575.P11352430559052579347

`∑{d}[n+1, A059885(#)]`
-/

namespace A366575.P11352430559052579347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059885 d

end

end A366575.P11352430559052579347

/-! ## A366575.P13481532156840103252

`∑{d}[∑[3^n], #%2+1]`
-/

namespace A366575.P13481532156840103252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1)

end

end A366575.P13481532156840103252

/-! ## A366575.P10288997243046525626

`∏{e}[2*∑[3^n], #+1]`
-/

namespace A366575.P10288997243046525626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A366575.P10288997243046525626

/-! ## A366575.P4035491398165385305

`∑{d}[∑[3*a(n-1)], ceil(1/#)]` with `a(0)=2`
-/

namespace A366575.P4035491398165385305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A366575.P4035491398165385305

/-! ## A366575.P17645426830197171721

`A000027(∏{e}[3*a(n-1)+2, #+1])` with `a(0)=2`
-/

namespace A366575.P17645426830197171721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A366575.P17645426830197171721

/-!
# A366576: Sum of the divisors of 3^n-1.

The programs for A366576, there is no canonical definition to state claims against.
-/

/-! ## A366576.P10400904314184461310

`∑{d}[∑[2*3^n], #]`
-/

namespace A366576.P10400904314184461310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366576.P10400904314184461310

/-! ## A366576.P8244865141468803073

`A371240(∑[2^(n+1)])`
-/

namespace A366576.P8244865141468803073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366576.P8244865141468803073

/-! ## A366576.P6550601496965642880

`A000027(∑{d}[∑[A008776(n)], #])`
-/

namespace A366576.P6550601496965642880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366576.P6550601496965642880

/-! ## A366576.P6109654995281084953

`A000027(∑{d}[A024023(n+1), #])`
-/

namespace A366576.P6109654995281084953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366576.P6109654995281084953

/-! ## A366576.P15922819740233169859

`A000203(∑[2*3^n])`
-/

namespace A366576.P15922819740233169859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366576.P15922819740233169859

/-!
# A366577: Number of divisors of 3^n+1.

The programs for A366577, there is no canonical definition to state claims against.
-/

/-! ## A366577.P11757335827420532215

`∏{e}[3^n+1, #+1]`
-/

namespace A366577.P11757335827420532215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A366577.P11757335827420532215

/-! ## A366577.P8598319513854845512

`∑{d}[3^n+1, ceil(1/#)]`
-/

namespace A366577.P8598319513854845512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A366577.P8598319513854845512

/-! ## A366577.P292941197493812818

`A195459(∑{d}[3^n+1, ceil(root(2, #))])`
-/

namespace A366577.P292941197493812818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉).toNat

end

end A366577.P292941197493812818

/-! ## A366577.P6358336311077875910

`A163380(∏{e}[A034472(n), #+1])`
-/

namespace A366577.P6358336311077875910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A366577.P6358336311077875910

/-! ## A366577.P12057917475997655186

`A000027(∏{e}[A000244(n)+1, #+1])`
-/

namespace A366577.P12057917475997655186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A366577.P12057917475997655186

/-!
# A366578: Sum of the divisors of 3^n+1.

The programs for A366578, the canonical program `A366578.P16617700061976378906` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366578 has offset 0).

The definition of A366578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366578.P16617700061976378906

`A000203(A034472(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366578

/-- `A000203(A034472(n))` -/
def P16617700061976378906.Spec : Prop :=
  ∀ n, P16617700061976378906.a n = A366578 n

theorem P16617700061976378906.correct : P16617700061976378906.Spec := by
  intro n
  simp only [A366578]

end A366578

/-! ## A366578.P11817670830757574444

`∑{d}[3^n+1, #]`
-/

namespace A366578.P11817670830757574444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366578.P11817670830757574444

namespace A366578

/-- `∑{d}[3^n+1, #]` -/
def P11817670830757574444.Spec : Prop :=
  ∀ n, (P11817670830757574444.a n : ℤ) = A366578 n

end A366578

/-! ## A366578.P17753635516644997900

`record[∑{d}[A090880(2*(n+2)), #]]`
-/

namespace A366578.P17753635516644997900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366578.P17753635516644997900

namespace A366578

/-- `record[∑{d}[A090880(2*(n+2)), #]]` -/
def P17753635516644997900.Spec : Prop :=
  ∀ n, (P17753635516644997900.a n : ℤ) = A366578 n

end A366578

/-! ## A366578.P2310009976387857067

`2*∑{d}[A000244(n)+1, #/2]`
-/

namespace A366578.P2310009976387857067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 2)

end

end A366578.P2310009976387857067

namespace A366578

/-- `2*∑{d}[A000244(n)+1, #/2]` -/
def P2310009976387857067.Spec : Prop :=
  ∀ n, P2310009976387857067.a n = (A366578 n : ℚ)

end A366578

/-! ## A366578.P2001245736611065616

`A326543(n)+∑{d}[A000244(n)+1, #]`
-/

namespace A366578.P2001245736611065616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A366578.P2001245736611065616

namespace A366578

/-- `A326543(n)+∑{d}[A000244(n)+1, #]` -/
def P2001245736611065616.Spec : Prop :=
  ∀ n, P2001245736611065616.a n = A366578 n

end A366578

/-!
# A366579: a(n) = phi(3^n+1), where phi is Euler's totient function (A000010).

The programs for A366579, the canonical program `A366579.P9157288590479731262` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366579 has offset 0).

The definition of A366579 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366579.P9157288590479731262

`A000010(A034472(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366579

/-- `A000010(A034472(n))` -/
def P9157288590479731262.Spec : Prop :=
  ∀ n, P9157288590479731262.a n = A366579 n

theorem P9157288590479731262.correct : P9157288590479731262.Spec := by
  intro n
  simp only [A366579]

end A366579

/-! ## A366579.P7028471982626231918

`A000034(n)*A371241(A000079(n))`
-/

namespace A366579.P7028471982626231918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A371241 (A000079 n).toNat

end

end A366579.P7028471982626231918

namespace A366579

/-- `A000034(n)*A371241(A000079(n))` -/
def P7028471982626231918.Spec : Prop :=
  ∀ n, P7028471982626231918.a n = A366579 n

end A366579

/-! ## A366579.P9459350319628651682

`A000010(∑[ceil(3^(n-1))])*A327936(2*(n+1))`
-/

namespace A366579.P9459350319628651682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A327936 (2 * (n + 1))

end

end A366579.P9459350319628651682

namespace A366579

/-- `A000010(∑[ceil(3^(n-1))])*A327936(2*(n+1))` -/
def P9459350319628651682.Spec : Prop :=
  ∀ n, P9459350319628651682.a n = A366579 n

end A366579

/-! ## A366579.P8556396815777770658

`A000010(A007051(n))*A000034(n)`
-/

namespace A366579.P8556396815777770658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007051 n).toNat * A000034 n

end

end A366579.P8556396815777770658

namespace A366579

/-- `A000010(A007051(n))*A000034(n)` -/
def P8556396815777770658.Spec : Prop :=
  ∀ n, P8556396815777770658.a n = A366579 n

end A366579

/-! ## A366579.P3006951356700346892

`A000010(A007051(n))*A185219(n+3)`
-/

namespace A366579.P3006951356700346892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007051 n).toNat * A185219 (n + 3)

end

end A366579.P3006951356700346892

namespace A366579

/-- `A000010(A007051(n))*A185219(n+3)` -/
def P3006951356700346892.Spec : Prop :=
  ∀ n, P3006951356700346892.a n = A366579 n

end A366579

/-!
# A366580: Number of distinct prime divisors of 3^n + 1.

The programs for A366580, there is no canonical definition to state claims against.
-/

/-! ## A366580.P338925592225822030

`A001222(A366577(n))%A000043(n+1)`
-/

namespace A366580.P338925592225822030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A366577 n).toNat) (A000043 (n + 1))

end

end A366580.P338925592225822030

/-! ## A366580.P9519428533005848187

`A001222(A366577(n)%A113945(n+1))`
-/

namespace A366580.P9519428533005848187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366577 n) (A113945 (n + 1))).toNat

end

end A366580.P9519428533005848187

/-! ## A366580.P14540924508293237410

`A001222(A366577(n)²)/2`
-/

namespace A366580.P14540924508293237410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A366577 n ^ 2).toNat : ℚ) / 2

end

end A366580.P14540924508293237410

/-! ## A366580.P6246413689648157680

`∑{e}[A002110(∑{e}[A366577(n), #]), #]`
-/

namespace A366580.P6246413689648157680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366580.P6246413689648157680

/-! ## A366580.P18172989526654460065

`A001222(A366577(n)+A322338(2*(n+1)))`
-/

namespace A366580.P18172989526654460065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366577 n + A322338 (2 * (n + 1))).toNat

end

end A366580.P18172989526654460065

/-!
# A366581: a(n) = phi(p(n)), where phi is Euler's totient function (A000010) and p(n) is the number of partitions of n (A000041).

The programs for A366581, there is no canonical definition to state claims against.
-/

/-! ## A366581.P5608325514327992201

`A000010(A000041(n))`
-/

namespace A366581.P5608325514327992201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000041 n).toNat

end

end A366581.P5608325514327992201

/-! ## A366581.P10079245466550641566

`A000010(A213598(n))`
-/

namespace A366581.P10079245466550641566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A213598 n).toNat

end

end A366581.P10079245466550641566

/-! ## A366581.P12463158481709493726

`A000010(sqrt(A001255(n)))`
-/

namespace A366581.P12463158481709493726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A366581.P12463158481709493726

/-! ## A366581.P9819976700832460689

`A000010(∑[A002865(n)])`
-/

namespace A366581.P9819976700832460689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366581.P9819976700832460689

/-! ## A366581.P2372613396356655371

`A000010(A054225(∑[n]))`
-/

namespace A366581.P2372613396356655371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A054225 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366581.P2372613396356655371

/-!
# A366582: Numbers k such that 6^k + 1 is a semiprime.

The programs for A366582, there is no canonical definition to state claims against.
-/

/-! ## A366582.P13151018213595998770

`eq[2, A366627(n)]`
-/

namespace A366582.P13151018213595998770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366582.P13151018213595998770

/-! ## A366582.P15447470147546431995

`eq[4, A366628(n)]`
-/

namespace A366582.P15447470147546431995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366628 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366582.P15447470147546431995

/-! ## A366582.P5825038593307750694

`eq[2, A057938(n+1)]+1`
-/

namespace A366582.P5825038593307750694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366582.P5825038593307750694

/-! ## A366582.P10687526743926831549

`eq[2, A057938(A028310(n))]`
-/

namespace A366582.P10687526743926831549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057938 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366582.P10687526743926831549

/-! ## A366582.P17053285891077234035

`lt[A165025(A366627(n)), A091247(2*(n+1))]`
-/

namespace A366582.P17053285891077234035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165025 (A366627 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366582.P17053285891077234035

/-!
# A366583: a(2) = a(3) = 1; for n >3, a(n) = smallest prime factor of n-th Tribonacci number.

The programs for A366583, there is no canonical definition to state claims against.
-/

/-! ## A366583.P2093094571163642486

`A020639(A000073(n+2))`
-/

namespace A366583.P2093094571163642486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000073 (n + 2)).toNat

end

end A366583.P2093094571163642486

/-! ## A366583.P12997252972824186596

`A020639(A104580(∑[n]))`
-/

namespace A366583.P12997252972824186596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104580 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366583.P12997252972824186596

/-! ## A366583.P11850811010546023442

`A020639(A189187(∑[n]))`
-/

namespace A366583.P11850811010546023442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A189187 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366583.P11850811010546023442

/-! ## A366583.P1512536598328573799

`A020639(Δ[A008937(n)])`
-/

namespace A366583.P1512536598328573799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A366583.P1512536598328573799

/-! ## A366583.P3922421182107415686

`A020639(A089068(n)+1)`
-/

namespace A366583.P3922421182107415686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089068 n + 1).toNat

end

end A366583.P3922421182107415686

/-!
# A366584: a(2) = a(3) = 1; for n >3, a(n) = largest prime factor of n-th Tribonacci number.

The programs for A366584, the canonical program `A366584.P7255468611177998519` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366584 has offset 2).

The definition of A366584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366584.P7255468611177998519

`A006530(A000073(n+2))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366584

/-- `A006530(A000073(n+2))` -/
def P7255468611177998519.Spec : Prop :=
  ∀ n, P7255468611177998519.a n = A366584 (n + 2)

theorem P7255468611177998519.correct : P7255468611177998519.Spec := by
  intro n
  simp only [A366584, Nat.add_sub_cancel]

end A366584

/-! ## A366584.P8765633499197972506

`A006530(A104580(∑[n]))`
-/

namespace A366584.P8765633499197972506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104580 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366584.P8765633499197972506

namespace A366584

/-- `A006530(A104580(∑[n]))` -/
def P8765633499197972506.Spec : Prop :=
  ∀ n, P8765633499197972506.a n = A366584 (n + 2)

end A366584

/-! ## A366584.P976777637536047696

`A006530(A106522(∑[n]))`
-/

namespace A366584.P976777637536047696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106522 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366584.P976777637536047696

namespace A366584

/-- `A006530(A106522(∑[n]))` -/
def P976777637536047696.Spec : Prop :=
  ∀ n, P976777637536047696.a n = A366584 (n + 2)

end A366584

/-! ## A366584.P10072026497370329798

`A006530(A187889(∑[n]))`
-/

namespace A366584.P10072026497370329798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187889 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366584.P10072026497370329798

namespace A366584

/-- `A006530(A187889(∑[n]))` -/
def P10072026497370329798.Spec : Prop :=
  ∀ n, P10072026497370329798.a n = A366584 (n + 2)

end A366584

/-! ## A366584.P17183963905551203179

`A006530(A189187(∑[n]))`
-/

namespace A366584.P17183963905551203179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A189187 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366584.P17183963905551203179

namespace A366584

/-- `A006530(A189187(∑[n]))` -/
def P17183963905551203179.Spec : Prop :=
  ∀ n, P17183963905551203179.a n = A366584 (n + 2)

end A366584

/-!
# A366588: G.f. A(x) satisfies A(x) = 1 + x^3*(1+x)*A(x)^2.

The programs for A366588, the canonical program `A366588.P16181712258366305326` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366588 has offset 0).

The definition of A366588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366588.P16181712258366305326

`A248100(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366588

/-- `A248100(n)-a(n-1)` -/
def P16181712258366305326.Spec : Prop :=
  ∀ n, P16181712258366305326.a n = A366588 n

theorem P16181712258366305326.correct : P16181712258366305326.Spec := by
  intro n
  simp only [A366588]

end A366588

/-!
# A366589: G.f. A(x) satisfies A(x) = 1 + x^4*(1+x)*A(x)^2.

The programs for A366589, there is no canonical definition to state claims against.
-/

/-! ## A366589.P7916386643064463906

`A366554(n)-a(n-1)` with `a(0)=1`
-/

namespace A366589.P7916386643064463906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366554 n - a (n - 1)

end

end A366589.P7916386643064463906

/-!
# A366590: G.f. A(x) satisfies A(x) = 1 + x^2*(1+x)^2*A(x)^3.

The programs for A366590, there is no canonical definition to state claims against.
-/

/-! ## A366590.P15843815669026993083

`A019497(n)-a(n-1)` with `a(0)=1`
-/

namespace A366590.P15843815669026993083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019497 n - a (n - 1)

end

end A366590.P15843815669026993083

/-!
# A366591: G.f. A(x) satisfies A(x) = 1 + x^3*(1+x)^2*A(x)^3.

The programs for A366591, there is no canonical definition to state claims against.
-/

/-! ## A366591.P17190798662083036926

`A366555(n)-a(n-1)` with `a(0)=1`
-/

namespace A366591.P17190798662083036926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366555 n - a (n - 1)

end

end A366591.P17190798662083036926

/-!
# A366592: G.f. A(x) satisfies A(x) = 1 + x^4*(1+x)^2*A(x)^3.

The programs for A366592, there is no canonical definition to state claims against.
-/

/-! ## A366592.P15504998032278347621

`A366556(n)-a(n-1)` with `a(0)=1`
-/

namespace A366592.P15504998032278347621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366556 n - a (n - 1)

end

end A366592.P15504998032278347621

/-!
# A366593: G.f. A(x) satisfies A(x) = 1 + x^2*(1+x)^3*A(x)^4.

The programs for A366593, there is no canonical definition to state claims against.
-/

/-! ## A366593.P12945319160237331465

`A137954(n)-a(n-1)` with `a(0)=1`
-/

namespace A366593.P12945319160237331465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137954 n - a (n - 1)

end

end A366593.P12945319160237331465

/-!
# A366594: G.f. A(x) satisfies A(x) = 1 + x^3*(1+x)^3*A(x)^4.

The programs for A366594, there is no canonical definition to state claims against.
-/

/-! ## A366594.P1369258116517642103

`A366557(n)-a(n-1)` with `a(0)=1`
-/

namespace A366594.P1369258116517642103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366557 n - a (n - 1)

end

end A366594.P1369258116517642103

/-! ## A366594.P17061048866665525239

`A389064(n)+A101606(A389158(n))`
-/

namespace A366594.P17061048866665525239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389064 n + A101606 (A389158 n).toNat

end

end A366594.P17061048866665525239

/-!
# A366595: G.f. A(x) satisfies A(x) = 1 + x^4*(1+x)^3*A(x)^4.

The programs for A366595, there is no canonical definition to state claims against.
-/

/-! ## A366595.P17242502791506340026

`A366558(n)-a(n-1)` with `a(0)=1`
-/

namespace A366595.P17242502791506340026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366558 n - a (n - 1)

end

end A366595.P17242502791506340026

/-!
# A366596: Repdigit numbers that are divisible by 7.

The programs for A366596, there is no canonical definition to state claims against.
-/

/-! ## A366596.P18050436647931063141

`∩[A045642(n+1), A064222(n)]`
-/

namespace A366596.P18050436647931063141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366596.P18050436647931063141

/-! ## A366596.P9728838526980796619

`∩[A045642(n+1), A010785(n)]`
-/

namespace A366596.P9728838526980796619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366596.P9728838526980796619

/-! ## A366596.P6348745164150100446

`lcm(7, A002275(A073788(n)))`
-/

namespace A366596.P6348745164150100446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A002275 (A073788 n).toNat)

end

end A366596.P6348745164150100446

/-!
# A366597: Irregular triangular array, read by rows: T(n,k) = number of vertices (partitions) that have degree k in the distance graph of the partitions of n, for k = 1..A366429(n).

The programs for A366597, there is no canonical definition to state claims against.
-/

/-! ## A366597.P4224264700800110718

`and(A167799(A195851(3*n+2)²), A256790(n+1))`
-/

namespace A366597.P4224264700800110718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167799 (A195851 (3 * n + 2) ^ 2).toNat) (A256790 (n + 1))

end

end A366597.P4224264700800110718

/-! ## A366597.P18128935696890066395

`A257392(A017113(n)-A372175(n))`
-/

namespace A366597.P18128935696890066395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257392 (A017113 n - A372175 n).toNat

end

end A366597.P18128935696890066395

