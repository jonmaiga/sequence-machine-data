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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A349400: Dirichlet inverse of EKG-permutation, A064413.

The programs for A349400, there is no canonical definition to state claims against.
-/

/-! ## A349400.P12200717368220305620

`∑{d}[n+1, A323411(#)*A349614((n+1)/#)]`
-/

namespace A349400.P12200717368220305620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323411 d * A349614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349400.P12200717368220305620

/-!
# A349401: Number of unlabeled disconnected posets with n elements.

The programs for A349401, there is no canonical definition to state claims against.
-/

/-! ## A349401.P3485087806679090753

`A000112(n)-A000608(n)`
-/

namespace A349401.P3485087806679090753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n - A000608 n

end

end A349401.P3485087806679090753

/-! ## A349401.P12932029316186453815

`∑[A381121(n)]-A000608(n)`
-/

namespace A349401.P12932029316186453815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000608 n

end

end A349401.P12932029316186453815

/-! ## A349401.P7814349979812340567

`A000112(n)-A263864(C(n, 2)+1)`
-/

namespace A349401.P7814349979812340567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n - A263864 (Nat.choose n 2 + 1)

end

end A349401.P7814349979812340567

/-! ## A349401.P3433633631067205773

`A000112(n)-A263864(∑[abs(1-n)])`
-/

namespace A349401.P3433633631067205773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n - A263864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349401.P3433633631067205773

/-! ## A349401.P11933810850869003620

`abs(A263864(A152947(n+1))-A000112(n))`
-/

namespace A349401.P11933810850869003620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263864 (A152947 (n + 1)).toNat - A000112 n|

end

end A349401.P11933810850869003620

/-!
# A349402: Number of distance-critical graphs on n vertices.

The programs for A349402, there is no canonical definition to state claims against.
-/

/-! ## A349402.P1693011730302944882

`A373070(A000205(n))`
-/

namespace A349402.P1693011730302944882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (A000205 n).toNat

end

end A349402.P1693011730302944882

/-! ## A349402.P16197978000827343328

`A373075(A130709(n))`
-/

namespace A349402.P16197978000827343328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (A130709 n).toNat

end

end A349402.P16197978000827343328

/-! ## A349402.P16800437652195563622

`A373068(A239556(n))`
-/

namespace A349402.P16800437652195563622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (A239556 n).toNat

end

end A349402.P16800437652195563622

/-! ## A349402.P5813696613782327978

`A373075(A317783(n))`
-/

namespace A349402.P5813696613782327978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (A317783 n).toNat

end

end A349402.P5813696613782327978

/-! ## A349402.P6105028158308581980

`A373068(A152718(n+1))`
-/

namespace A349402.P6105028158308581980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (A152718 (n + 1)).toNat

end

end A349402.P6105028158308581980

/-!
# A349403: Sum of the digits of Sum_{k=1..n} k!.

The programs for A349403, there is no canonical definition to state claims against.
-/

/-! ## A349403.P3641727530630516645

`∑{digits}[1-∑[n!], #]`
-/

namespace A349403.P3641727530630516645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A349403.P3641727530630516645

/-! ## A349403.P1029911056306124906

`∑{digits}[∑[lcm(n!, dr(n))], #]`
-/

namespace A349403.P1029911056306124906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A349403.P1029911056306124906

/-! ## A349403.P4797979613500502856

`∑{digits}[a(n-1)+n!, #]` with `a(0)=0`
-/

namespace A349403.P4797979613500502856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A349403.P4797979613500502856

/-! ## A349403.P9739084289932138685

`∑{digits}[and(∑[n!]+3, -5), #]`
-/

namespace A349403.P9739084289932138685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ) (-5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A349403.P9739084289932138685

/-! ## A349403.P12140585091910750070

`∑{digits}[∑[n*a(n-1)], #]` with `a(0)=0, a(1)=1`
-/

namespace A349403.P12140585091910750070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A349403.P12140585091910750070

/-! ## A349403.P18290199414495180317

`∑{digits}[A007489(n), #]`
-/

namespace A349403.P18290199414495180317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A349403.P18290199414495180317

/-! ## A349403.P14585982121278013919

`∑{digits}[∏[n+1]-∑[∏[n+1]], #]`
-/

namespace A349403.P14585982121278013919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A349403.P14585982121278013919

/-!
# A349404: The maximal coefficient in the expansion of x_1(x_1 + x_2)...(x_1 + x_2 + ... + x_n).

The programs for A349404, there is no canonical definition to state claims against.
-/

/-! ## A349404.P15815152140774113759

`A097755(A000799(n+1))/2`
-/

namespace A349404.P15815152140774113759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097755 (A000799 (n + 1)).toNat : ℚ) / 2

end

end A349404.P15815152140774113759

/-! ## A349404.P7443718393114542711

`A350636(n)+A132085(A000110(n))`
-/

namespace A349404.P7443718393114542711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350636 n + A132085 (A000110 n).toNat

end

end A349404.P7443718393114542711

/-! ## A349404.P13078529619503494626

`A356940(A255386(n)+A000009(n))`
-/

namespace A349404.P13078529619503494626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356940 (A255386 n + A000009 n).toNat

end

end A349404.P13078529619503494626

/-! ## A349404.P2029914014255839311

`A033909(A000079(n))+∏[A006949(n)]`
-/

namespace A349404.P2029914014255839311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033909 (A000079 n).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A349404.P2029914014255839311

/-! ## A349404.P11974555274437413661

`A008617(or(A038908(n+2), A122446(n)))`
-/

namespace A349404.P11974555274437413661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.lor (A038908 (n + 2)) (A122446 n)).toNat

end

end A349404.P11974555274437413661

/-!
# A349405: a(n) = A347113(A347313(n))+1.

The programs for A349405, there is no canonical definition to state claims against.
-/

/-! ## A349405.P7933616229559926378

`A348779(n+1)*A349406(n+1)`
-/

namespace A349405.P7933616229559926378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348779 (n + 1) * A349406 (n + 1)

end

end A349405.P7933616229559926378

/-! ## A349405.P16270064038679425976

`A347113(A348784(n+1)-1)+1`
-/

namespace A349405.P16270064038679425976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A348784 (n + 1) - 1).toNat + 1

end

end A349405.P16270064038679425976

/-! ## A349405.P1406477596210613433

`p?[A347113(n+1)]*A349406(n+1)`
-/

namespace A349405.P1406477596210613433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A349406 (n + 1)

end

end A349405.P1406477596210613433

/-! ## A349405.P18444519144948078541

`A347113(A348784(n+1))*A349406(n+1)`
-/

namespace A349405.P18444519144948078541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A348784 (n + 1)).toNat * A349406 (n + 1)

end

end A349405.P18444519144948078541

/-! ## A349405.P6077489012166798199

`A347309(A348784(2*n+1-n))*A349406(n+1)`
-/

namespace A349405.P6077489012166798199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347309 (A348784 (2 * n + 1 - n)).toNat * A349406 (n + 1)

end

end A349405.P6077489012166798199

/-!
# A349406: a(n) = A349405(n)/A348779(n).

The programs for A349406, there is no canonical definition to state claims against.
-/

/-! ## A349406.P98441126307271077

`A349405(n+1)/A348779(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349406.P98441126307271077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349405 (n + 1) : ℚ) / (A348779 (n + 1) : ℚ)

end

end A349406.P98441126307271077

/-! ## A349406.P8422965612824730626

`A348778(∏{d}[A348779(n+1), A026233(#)])`
-/

namespace A349406.P8422965612824730626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348778 (∏ d ∈ Nat.divisors (f1 n).natAbs, A026233 d).toNat

end

end A349406.P8422965612824730626

/-! ## A349406.P10627037466156087570

`A349405(n+1)/p?[A347113(n+1)]`
-/

namespace A349406.P10627037466156087570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349405 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A349406.P10627037466156087570

/-! ## A349406.P4121416143131553465

`A349405(n+1)/A347113(A348784(n+1))`
-/

namespace A349406.P4121416143131553465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349405 (n + 1) : ℚ) / (A347113 (A348784 (n + 1)).toNat : ℚ)

end

end A349406.P4121416143131553465

/-! ## A349406.P7243488058804671478

`A349405(A000027(n+1))/A347309(A348784(n+1))`
-/

namespace A349406.P7243488058804671478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349405 (A000027 (n + 1)).toNat : ℚ) / (A347309 (A348784 (n + 1)).toNat : ℚ)

end

end A349406.P7243488058804671478

/-!
# A349407: The Farkas map: a(n) = x/3 if x mod 3 = 0; a(n) = (3x+1)/2 if x mod 3 <> 0 and x mod 4 = 3; a(n) = (x+1)/2 if x mod 3 <> 0 and x mod 4 = 1, where x = 2*n-1.

The programs for A349407, the canonical program `A349407.P7998382282558528925` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349407 has offset 1).

The definition of A349407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349407.P12697762878373275288

`2*A350515(n)+1`
-/

namespace A349407.P12697762878373275288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350515 n + 1

end

end A349407.P12697762878373275288

namespace A349407

/-- `2*A350515(n)+1` -/
def P12697762878373275288.Spec : Prop :=
  ∀ n, P12697762878373275288.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P6666606475359202933

`A005408(A350515(n))`
-/

namespace A349407.P6666606475359202933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A350515 n).toNat

end

end A349407.P6666606475359202933

namespace A349407

/-- `A005408(A350515(n))` -/
def P6666606475359202933.Spec : Prop :=
  ∀ n, P6666606475359202933.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P1936166892971112085

`A004273(A350515(n)+1)`
-/

namespace A349407.P1936166892971112085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350515 n + 1).toNat

end

end A349407.P1936166892971112085

namespace A349407

/-- `A004273(A350515(n)+1)` -/
def P1936166892971112085.Spec : Prop :=
  ∀ n, P1936166892971112085.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P15279434948619609406

`A060747(A350515(n)+1)`
-/

namespace A349407.P15279434948619609406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A350515 n + 1).toNat

end

end A349407.P15279434948619609406

namespace A349407

/-- `A060747(A350515(n)+1)` -/
def P15279434948619609406.Spec : Prop :=
  ∀ n, P15279434948619609406.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P7998382282558528925

`A005408(A014682(∑[n²-n]%(n+2)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349407

/-- `A005408(A014682(∑[n²-n]%(n+2)))` -/
def P7998382282558528925.Spec : Prop :=
  ∀ n, P7998382282558528925.a n = A349407 (n + 1)

theorem P7998382282558528925.correct : P7998382282558528925.Spec := by
  intro n
  simp only [A349407, Nat.add_sub_cancel]

end A349407

/-! ## A349407.P14372264058848755258

`A004442(2*A350515(n))`
-/

namespace A349407.P14372264058848755258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A350515 n).toNat

end

end A349407.P14372264058848755258

namespace A349407

/-- `A004442(2*A350515(n))` -/
def P14372264058848755258.Spec : Prop :=
  ∀ n, P14372264058848755258.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P2460321207608930925

`A008619(4*A350515(n))`
-/

namespace A349407.P2460321207608930925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A350515 n).toNat

end

end A349407.P2460321207608930925

namespace A349407

/-- `A008619(4*A350515(n))` -/
def P2460321207608930925.Spec : Prop :=
  ∀ n, P2460321207608930925.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P11144398760886348363

`A145979(4*A350515(n))`
-/

namespace A349407.P11144398760886348363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (4 * A350515 n).toNat

end

end A349407.P11144398760886348363

namespace A349407

/-- `A145979(4*A350515(n))` -/
def P11144398760886348363.Spec : Prop :=
  ∀ n, P11144398760886348363.a n = A349407 (n + 1)

end A349407

/-! ## A349407.P236705730462059591

`A008611(6*A350515(n))`
-/

namespace A349407.P236705730462059591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A350515 n).toNat

end

end A349407.P236705730462059591

namespace A349407

/-- `A008611(6*A350515(n))` -/
def P236705730462059591.Spec : Prop :=
  ∀ n, P236705730462059591.a n = A349407 (n + 1)

end A349407

/-!
# A349408: Number of planar tanglegrams of size n.

The programs for A349408, there is no canonical definition to state claims against.
-/

/-! ## A349408.P11307984204389706619

`A285760(A000307(n)+1)`
-/

namespace A349408.P11307984204389706619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (A000307 n + 1).toNat

end

end A349408.P11307984204389706619

/-! ## A349408.P6270882029885371787

`A285760(or(1, A000307(n)))`
-/

namespace A349408.P6270882029885371787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (Int.lor 1 (A000307 n)).toNat

end

end A349408.P6270882029885371787

/-!
# A349409: Triangle read by rows: T(n,k) is the number of planar tanglegrams of size n with 0 <= k < n leaf-matched pairs. A leaf matched pair is a pair of non-leaf vertices (u,v) in the tanglegram such that the induced subtrees rooted and u and v also form a tanglegram (equivalently, the leaves in these two subtrees are matched by the matching that forms the original tanglegram).

The programs for A349409, there is no canonical definition to state claims against.
-/

/-! ## A349409.P4697917046971411770

`A281446(n)+A210714(A261719(n))`
-/

namespace A349409.P4697917046971411770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 n + A210714 (A261719 n).toNat

end

end A349409.P4697917046971411770

/-! ## A349409.P3474351918895203564

`A257564(A256311(n))*A281446(n)`
-/

namespace A349409.P3474351918895203564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A256311 n).toNat * A281446 n

end

end A349409.P3474351918895203564

/-!
# A349410: Length of cycle reached when iterating the mapping x-> n*A000005(x) on 1.

The programs for A349410, there is no canonical definition to state claims against.
-/

/-! ## A349410.P8300599599561967299

`gcd(A073855(A000930(n)), A225767(n))`
-/

namespace A349410.P8300599599561967299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073855 (A000930 n).toNat) (A225767 n)

end

end A349410.P8300599599561967299

/-! ## A349410.P5359539271451433852

`gcd(A007989(n), A056924(A167053(n+1)))`
-/

namespace A349410.P5359539271451433852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007989 n) (A056924 (A167053 (n + 1)).toNat)

end

end A349410.P5359539271451433852

/-! ## A349410.P13315221667823930366

`gcd(A087039(n+1), A322338(A008740(n)))`
-/

namespace A349410.P13315221667823930366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087039 (n + 1)) (A322338 (A008740 n).toNat)

end

end A349410.P13315221667823930366

/-! ## A349410.P9883416604270074201

`gcd(n+1, A345874(A047336(n+1)))`
-/

namespace A349410.P9883416604270074201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A345874 (A047336 (n + 1)).toNat)

end

end A349410.P9883416604270074201

/-! ## A349410.P6509758203145779861

`gcd(A260443(n), A322869(A084563(n+1)))`
-/

namespace A349410.P6509758203145779861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260443 n) (A322869 (A084563 (n + 1)).toNat)

end

end A349410.P6509758203145779861

/-!
# A349411: a(n) = prime j = A347113(i)-1 in order of appearance.

The programs for A349411, there is no canonical definition to state claims against.
-/

/-! ## A349411.P16584398408021452016

`p?[A347113(n+1)+1]`
-/

namespace A349411.P16584398408021452016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349411.P16584398408021452016

/-! ## A349411.P4424077501936301367

`A347113(A349412(n+1))+1`
-/

namespace A349411.P4424077501936301367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A349412 (n + 1)).toNat + 1

end

end A349411.P4424077501936301367

/-! ## A349411.P16025740106327512305

`A347309(A349412(n+1)+1)`
-/

namespace A349411.P16025740106327512305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347309 (A349412 (n + 1) + 1).toNat

end

end A349411.P16025740106327512305

/-! ## A349411.P6289765465466058221

`xor(A075712(n+1), A325273(A324088(n+1)))`
-/

namespace A349411.P6289765465466058221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A075712 (n + 1)) (A325273 (A324088 (n + 1)).toNat)

end

end A349411.P6289765465466058221

/-!
# A349412: Positions of prime j = A347113(i)+1.

The programs for A349412, there is no canonical definition to state claims against.
-/

/-! ## A349412.P16144686569074937079

`eq[1, A323077(A347113(n+1))]`
-/

namespace A349412.P16144686569074937079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A347113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349412.P16144686569074937079

/-! ## A349412.P16014000240863610900

`eq[1, A001222(A347113(n+1)+1)]+1`
-/

namespace A349412.P16014000240863610900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A347113 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P16014000240863610900

/-! ## A349412.P1785038366163260708

`eq[1, A033676(A347113(n+1)+1)]+1`
-/

namespace A349412.P1785038366163260708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A347113 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P1785038366163260708

/-! ## A349412.P15798419885400684674

`eq[1, A129510(A347113(n+1)+1)]+1`
-/

namespace A349412.P15798419885400684674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129510 (A347113 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P15798419885400684674

/-! ## A349412.P846939349988641589

`eq[1, A270096(A347113(n+1)+1)]+1`
-/

namespace A349412.P846939349988641589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (A347113 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P846939349988641589

/-! ## A349412.P5653172098812996315

`eq[2, A000005(A347113(n+1)+1)]+1`
-/

namespace A349412.P5653172098812996315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A347113 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P5653172098812996315

/-! ## A349412.P9110450748339257452

`eq[1, A066246(A347113(n+1)+1)+1]+1`
-/

namespace A349412.P9110450748339257452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A347113 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349412.P9110450748339257452

/-! ## A349412.P16412953834730683484

`record[A347306(A000010(A347309(n+2)))]`
-/

namespace A349412.P16412953834730683484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A000010 (A347309 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349412.P16412953834730683484

/-! ## A349412.P2933919340742536649

`eq[A000007(n), A317531(A347113(n+1))]`
-/

namespace A349412.P2933919340742536649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (A347113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349412.P2933919340742536649

/-!
# A349413: Number of smooth positroid varieties corresponding to derangements in S_n.

The programs for A349413, there is no canonical definition to state claims against.
-/

/-! ## A349413.P8787096477025480596

`A000166(n)-A349456(n)`
-/

namespace A349413.P8787096477025480596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A349456 n

end

end A349413.P8787096477025480596

/-! ## A349413.P2978201235228357278

`A389245(∑{digits}[n, #])`
-/

namespace A349413.P2978201235228357278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389245 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A349413.P2978201235228357278

/-! ## A349413.P9908184406986146289

`A389245(∏{digits}[n, #])`
-/

namespace A349413.P9908184406986146289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389245 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A349413.P9908184406986146289

/-! ## A349413.P14464710567024697966

`A389245(char[10]+n)`
-/

namespace A349413.P14464710567024697966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389245 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A349413.P14464710567024697966

/-! ## A349413.P9057827376864848504

`A389245(n)-char[10]`
-/

namespace A349413.P9057827376864848504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389245 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A349413.P9057827376864848504

/-!
# A349414: a(n) = A324245(n) - n.

The programs for A349414, the canonical program `A349414.P8978213222931106996` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349414 has offset 0).

The definition of A349414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324245, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349414.P8978213222931106996

`A324245(n)-n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349414

/-- `A324245(n)-n` -/
def P8978213222931106996.Spec : Prop :=
  ∀ n, P8978213222931106996.a n = A349414 n

theorem P8978213222931106996.correct : P8978213222931106996.Spec := by
  intro n
  simp only [A349414]

end A349414

/-! ## A349414.P16995040708072750484

`A001057(n)-A001057(A142150(n))`
-/

namespace A349414.P16995040708072750484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A001057 (A142150 n).toNat

end

end A349414.P16995040708072750484

namespace A349414

/-- `A001057(n)-A001057(A142150(n))` -/
def P16995040708072750484.Spec : Prop :=
  ∀ n, P16995040708072750484.a n = A349414 n

end A349414

/-! ## A349414.P3425174946794071624

`A001057(n)-A001057(n-A026741(n))`
-/

namespace A349414.P3425174946794071624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A001057 ((n : ℤ) - A026741 n).toNat

end

end A349414.P3425174946794071624

namespace A349414

/-- `A001057(n)-A001057(n-A026741(n))` -/
def P3425174946794071624.Spec : Prop :=
  ∀ n, P3425174946794071624.a n = A349414 n

end A349414

/-! ## A349414.P10478195209456914844

`A130472(n-A026741(n))-A130472(n)`
-/

namespace A349414.P10478195209456914844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 ((n : ℤ) - A026741 n).toNat - A130472 n

end

end A349414.P10478195209456914844

namespace A349414

/-- `A130472(n-A026741(n))-A130472(n)` -/
def P10478195209456914844.Spec : Prop :=
  ∀ n, P10478195209456914844.a n = A349414 n

end A349414

/-! ## A349414.P5366179460306000760

`2*A014682(n)-A014682(A006370(n))-n`
-/

namespace A349414.P5366179460306000760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014682 n - A014682 (A006370 n).toNat - (n : ℤ)

end

end A349414.P5366179460306000760

namespace A349414

/-- `2*A014682(n)-A014682(A006370(n))-n` -/
def P5366179460306000760.Spec : Prop :=
  ∀ n, P5366179460306000760.a n = A349414 n

end A349414

/-! ## A349414.P8317421866878348874

`A001057(n)-A001057(A008619(n)-A152271(n))`
-/

namespace A349414.P8317421866878348874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A001057 (A008619 n - A152271 n).toNat

end

end A349414.P8317421866878348874

namespace A349414

/-- `A001057(n)-A001057(A008619(n)-A152271(n))` -/
def P8317421866878348874.Spec : Prop :=
  ∀ n, P8317421866878348874.a n = A349414 n

end A349414

/-! ## A349414.P14969066068389693121

`Δ[A142150(n)-A142150(A065033(n))]`
-/

namespace A349414.P14969066068389693121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n - A142150 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349414.P14969066068389693121

namespace A349414

/-- `Δ[A142150(n)-A142150(A065033(n))]` -/
def P14969066068389693121.Spec : Prop :=
  ∀ n, P14969066068389693121.a n = A349414 n

end A349414

/-! ## A349414.P8348563702558360771

`Δ[A142150(n)-A142150(A110654(n))]`
-/

namespace A349414.P8348563702558360771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n - A142150 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349414.P8348563702558360771

namespace A349414

/-- `Δ[A142150(n)-A142150(A110654(n))]` -/
def P8348563702558360771.Spec : Prop :=
  ∀ n, P8348563702558360771.a n = A349414 n

end A349414

/-! ## A349414.P8676986839393789054

`A158416(n+1)-A064455(A158416(n))`
-/

namespace A349414.P8676986839393789054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 1) - A064455 (A158416 n).toNat

end

end A349414.P8676986839393789054

namespace A349414

/-- `A158416(n+1)-A064455(A158416(n))` -/
def P8676986839393789054.Spec : Prop :=
  ∀ n, P8676986839393789054.a n = A349414 n

end A349414

/-! ## A349414.P16015118657640573132

`Δ[A152271(n+1)-A152271(A008619(n+1))]`
-/

namespace A349414.P16015118657640573132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1) - A152271 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349414.P16015118657640573132

namespace A349414

/-- `Δ[A152271(n+1)-A152271(A008619(n+1))]` -/
def P16015118657640573132.Spec : Prop :=
  ∀ n, P16015118657640573132.a n = A349414 n

end A349414

/-! ## A349414.P8909812205825781887

`A062157(n)*A065033(A186813(n))`
-/

namespace A349414.P8909812205825781887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A065033 (A186813 n).toNat

end

end A349414.P8909812205825781887

namespace A349414

/-- `A062157(n)*A065033(A186813(n))` -/
def P8909812205825781887.Spec : Prop :=
  ∀ n, P8909812205825781887.a n = A349414 n

end A349414

/-! ## A349414.P3657354457666585543

`A130472(A064680(n))-A004526(n)`
-/

namespace A349414.P3657354457666585543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat - A004526 n

end

end A349414.P3657354457666585543

namespace A349414

/-- `A130472(A064680(n))-A004526(n)` -/
def P3657354457666585543.Spec : Prop :=
  ∀ n, P3657354457666585543.a n = A349414 n

end A349414

/-! ## A349414.P3250728877313977720

`A001057(n)-A001057(A316631(2*n))`
-/

namespace A349414.P3250728877313977720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A001057 (A316631 (2 * n)).toNat

end

end A349414.P3250728877313977720

namespace A349414

/-- `A001057(n)-A001057(A316631(2*n))` -/
def P3250728877313977720.Spec : Prop :=
  ∀ n, P3250728877313977720.a n = A349414 n

end A349414

/-! ## A349414.P13016626350607228678

`A130472(A064680(n))-∑[A266510(n+1)%2]`
-/

namespace A349414.P13016626350607228678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266510 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349414.P13016626350607228678

namespace A349414

/-- `A130472(A064680(n))-∑[A266510(n+1)%2]` -/
def P13016626350607228678.Spec : Prop :=
  ∀ n, P13016626350607228678.a n = A349414 n

end A349414

/-! ## A349414.P5264000630661319670

`A130472(A064680(n))-A002265(2*n)`
-/

namespace A349414.P5264000630661319670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat - A002265 (2 * n)

end

end A349414.P5264000630661319670

namespace A349414

/-- `A130472(A064680(n))-A002265(2*n)` -/
def P5264000630661319670.Spec : Prop :=
  ∀ n, P5264000630661319670.a n = A349414 n

end A349414

/-! ## A349414.P372926700794956967

`A130472(A064680(n))-(2*n+1-∑[A176895(2*n)])`
-/

namespace A349414.P372926700794956967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A064680 n).toNat - ((2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349414.P372926700794956967

namespace A349414

/-- `A130472(A064680(n))-(2*n+1-∑[A176895(2*n)])` -/
def P372926700794956967.Spec : Prop :=
  ∀ n, P372926700794956967.a n = A349414 n

end A349414

/-! ## A349414.P13223006424548306016

`A004524(A324036(n))-n`
-/

namespace A349414.P13223006424548306016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A324036 n).toNat - (n : ℤ)

end

end A349414.P13223006424548306016

namespace A349414

/-- `A004524(A324036(n))-n` -/
def P13223006424548306016.Spec : Prop :=
  ∀ n, P13223006424548306016.a n = A349414 n

end A349414

/-! ## A349414.P5606231895524138226

`A130472(A006370(n))-A026741(n)`
-/

namespace A349414.P5606231895524138226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A006370 n).toNat - A026741 n

end

end A349414.P5606231895524138226

namespace A349414

/-- `A130472(A006370(n))-A026741(n)` -/
def P5606231895524138226.Spec : Prop :=
  ∀ n, P5606231895524138226.a n = A349414 n

end A349414

/-!
# A349415: Number of ways an n-set can be written as the union of 2 sets each with 4 or more elements and whose intersection contains exactly 3 elements.

The programs for A349415, the canonical program `A349415.P16022753361618517444` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349415 has offset 5).

The definition of A349415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349415.P16022753361618517444

`C(n+5, 3)*∑[2^n]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349415

/-- `C(n+5, 3)*∑[2^n]` -/
def P16022753361618517444.Spec : Prop :=
  ∀ n, (P16022753361618517444.a n : ℤ) = A349415 (n + 5)

theorem P16022753361618517444.correct : P16022753361618517444.Spec := by
  intro n
  simp only [A349415, Nat.add_sub_cancel]

end A349415

/-! ## A349415.P7801241908355797015

`∑[2^n]*Δ[A063258(n)]`
-/

namespace A349415.P7801241908355797015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A349415.P7801241908355797015

namespace A349415

/-- `∑[2^n]*Δ[A063258(n)]` -/
def P7801241908355797015.Spec : Prop :=
  ∀ n, P7801241908355797015.a n = A349415 (n + 5)

theorem P7801241908355797015.correct : P7801241908355797015.Spec := by
  intro n
  simp only [A349415, Nat.add_sub_cancel, A349415.P7801241908355797015.f1, A349415.P7801241908355797015.f2, A349415.P7801241908355797015.a, A349415.P16022753361618517444.f1, A349415.P16022753361618517444.a, A063258, A063258.P15942271711916095043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349415

/-! ## A349415.P12748163113730018935

`∑[2^n]*A000292(n+3)`
-/

namespace A349415.P12748163113730018935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000292 (n + 3)

end

end A349415.P12748163113730018935

namespace A349415

/-- `∑[2^n]*A000292(n+3)` -/
def P12748163113730018935.Spec : Prop :=
  ∀ n, P12748163113730018935.a n = A349415 (n + 5)

theorem P12748163113730018935.correct : P12748163113730018935.Spec := by
  intro n
  simp only [A349415, Nat.add_sub_cancel, A349415.P12748163113730018935.f1, A349415.P12748163113730018935.a, A349415.P16022753361618517444.f1, A349415.P16022753361618517444.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349415

/-! ## A349415.P16490497245593216681

`Δ[C(n+5, 4)]*A126646(n)`
-/

namespace A349415.P16490497245593216681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A126646 n

end

end A349415.P16490497245593216681

namespace A349415

/-- `Δ[C(n+5, 4)]*A126646(n)` -/
def P16490497245593216681.Spec : Prop :=
  ∀ n, P16490497245593216681.a n = A349415 (n + 5)

end A349415

/-! ## A349415.P11250092298949915748

`A057963((n+3)²-∑[n+1])`
-/

namespace A349415.P11250092298949915748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057963 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349415.P11250092298949915748

namespace A349415

/-- `A057963((n+3)²-∑[n+1])` -/
def P11250092298949915748.Spec : Prop :=
  ∀ n, P11250092298949915748.a n = A349415 (n + 5)

end A349415

/-!
# A349416: a(n) is the Wiener index of a broom on 2n vertices of which n+2 are pendant.

The programs for A349416, the canonical program `A349416.P92869327495937534` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349416 has offset 3).

The definition of A349416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349416.P92869327495937534

`2*(n+3)^3/3+(n+3)²/2+5*(n+3)/6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349416

/-- `2*(n+3)^3/3+(n+3)²/2+5*(n+3)/6` -/
def P92869327495937534.Spec : Prop :=
  ∀ n, P92869327495937534.a n = (A349416 (n + 3) : ℚ)

end A349416

/-! ## A349416.P5468330077677528333

`Δ[(C(n+3, 3)+n)*(n+5)]`
-/

namespace A349416.P5468330077677528333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 + n) * (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A349416.P5468330077677528333

namespace A349416

/-- `Δ[(C(n+3, 3)+n)*(n+5)]` -/
def P5468330077677528333.Spec : Prop :=
  ∀ n, P5468330077677528333.a n = A349416 (n + 3)

end A349416

/-! ## A349416.P16956225535221140032

`Δ[A071244(n+3)]`
-/

namespace A349416.P16956225535221140032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349416.P16956225535221140032

namespace A349416

/-- `Δ[A071244(n+3)]` -/
def P16956225535221140032.Spec : Prop :=
  ∀ n, P16956225535221140032.a n = A349416 (n + 3)

end A349416

/-! ## A349416.P5116331807392705190

`A175287(2*(n+3))`
-/

namespace A349416.P5116331807392705190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 (2 * (n + 3))

end

end A349416.P5116331807392705190

namespace A349416

/-- `A175287(2*(n+3))` -/
def P5116331807392705190.Spec : Prop :=
  ∀ n, P5116331807392705190.a n = A349416 (n + 3)

end A349416

/-! ## A349416.P8035876466235159647

`A361271(2*n+7)`
-/

namespace A349416.P8035876466235159647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361271 (2 * n + 7)

end

end A349416.P8035876466235159647

namespace A349416

/-- `A361271(2*n+7)` -/
def P8035876466235159647.Spec : Prop :=
  ∀ n, P8035876466235159647.a n = A349416 (n + 3)

end A349416

/-! ## A349416.P9257860745439507133

`Δ[A227327(2*n+5)/2]`
-/

namespace A349416.P9257860745439507133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227327 (2 * n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349416.P9257860745439507133

namespace A349416

/-- `Δ[A227327(2*n+5)/2]` -/
def P9257860745439507133.Spec : Prop :=
  ∀ n, P9257860745439507133.a n = (A349416 (n + 3) : ℚ)

end A349416

/-! ## A349416.P326047717119079303

`A022554(2*C(n+4, 2))`
-/

namespace A349416.P326047717119079303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (2 * Nat.choose (n + 4) 2)

end

end A349416.P326047717119079303

namespace A349416

/-- `A022554(2*C(n+4, 2))` -/
def P326047717119079303.Spec : Prop :=
  ∀ n, P326047717119079303.a n = A349416 (n + 3)

end A349416

/-!
# A349417: a(n) is the Wiener index of a sling on n+1 vertices.

The programs for A349417, the canonical program `A349417.P3808905451403544615` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349417 has offset 0).

The definition of A349417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349417.P3808905451403544615

`n^3/6+n²/2-2*n/3+2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349417

/-- `n^3/6+n²/2-2*n/3+2` -/
def P3808905451403544615.Spec : Prop :=
  ∀ n, P3808905451403544615.a n = (A349417 n : ℚ)

end A349417

/-! ## A349417.P15096140734994447391

`∑[a(n-1)+n]` with `a(0)=2, a(1)=0`
-/

namespace A349417.P15096140734994447391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349417.P15096140734994447391

namespace A349417

/-- `∑[a(n-1)+n]` -/
def P15096140734994447391.Spec : Prop :=
  ∀ n, (P15096140734994447391.a n : ℤ) = A349417 n

end A349417

/-! ## A349417.P9550154007100083525

`abs(C(n+2, 3)+2-n)`
-/

namespace A349417.P9550154007100083525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 3 : ℤ) + (2 - (n : ℤ))|

end

end A349417.P9550154007100083525

namespace A349417

/-- `abs(C(n+2, 3)+2-n)` -/
def P9550154007100083525.Spec : Prop :=
  ∀ n, P9550154007100083525.a n = A349417 n

end A349417

/-! ## A349417.P16265252260106449567

`ceil(C(n+2, 3)+ϕ-n)`
-/

namespace A349417.P16265252260106449567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 3 : ℝ) + (Real.goldenRatio - (n : ℝ))⌉

end

end A349417.P16265252260106449567

namespace A349417

/-- `ceil(C(n+2, 3)+ϕ-n)` -/
def P16265252260106449567.Spec : Prop :=
  ∀ n, P16265252260106449567.a n = A349417 n

end A349417

/-! ## A349417.P17675927001758389948

`round(C(n+2, 3)+ϕ-n)`
-/

namespace A349417.P17675927001758389948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 3 : ℝ) + (Real.goldenRatio - (n : ℝ)))

end

end A349417.P17675927001758389948

namespace A349417

/-- `round(C(n+2, 3)+ϕ-n)` -/
def P17675927001758389948.Spec : Prop :=
  ∀ n, P17675927001758389948.a n = A349417 n

end A349417

/-! ## A349417.P18010556951691155517

`abs(1-a(n-1)-∑[n])` with `a(0)=2`
-/

namespace A349417.P18010556951691155517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |1 - a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A349417.P18010556951691155517

namespace A349417

/-- `abs(1-a(n-1)-∑[n])` -/
def P18010556951691155517.Spec : Prop :=
  ∀ n, P18010556951691155517.a n = A349417 n

end A349417

/-! ## A349417.P15194582600719564857

`floor(a(n-1)-(1-∑[n]))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P15194582600719564857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A349417.P15194582600719564857

namespace A349417

/-- `floor(a(n-1)-(1-∑[n]))` -/
def P15194582600719564857.Spec : Prop :=
  ∀ n, P15194582600719564857.a n = A349417 n

end A349417

/-! ## A349417.P12145101412427189228

`ceil(a(n-1)-(1-∑[n]))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A349417.P12145101412427189228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A349417.P12145101412427189228

namespace A349417

/-- `ceil(a(n-1)-(1-∑[n]))` -/
def P12145101412427189228.Spec : Prop :=
  ∀ n, P12145101412427189228.a n = A349417 n

end A349417

/-! ## A349417.P18300009174995246732

`round(a(n-1)-(1-∑[n]))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A349417.P18300009174995246732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A349417.P18300009174995246732

namespace A349417

/-- `round(a(n-1)-(1-∑[n]))` -/
def P18300009174995246732.Spec : Prop :=
  ∀ n, P18300009174995246732.a n = A349417 n

end A349417

/-! ## A349417.P14856521950935524483

`floor(n²+a(n-2)-2)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P14856521950935524483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n ^ 2 : ℤ) + (a (n - 2) - 2)

end

end A349417.P14856521950935524483

namespace A349417

/-- `floor(n²+a(n-2)-2)` -/
def P14856521950935524483.Spec : Prop :=
  ∀ n, P14856521950935524483.a n = A349417 n

end A349417

/-! ## A349417.P6045179622423133369

`floor(n²-(2-a(n-2)))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P6045179622423133369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 2))

end

end A349417.P6045179622423133369

namespace A349417

/-- `floor(n²-(2-a(n-2)))` -/
def P6045179622423133369.Spec : Prop :=
  ∀ n, P6045179622423133369.a n = A349417 n

end A349417

/-! ## A349417.P3274139643500045142

`∑[n²-2-a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A349417.P3274139643500045142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (n ^ 2 : ℤ) - 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349417.P3274139643500045142

namespace A349417

/-- `∑[n²-2-a(n-1)]` -/
def P3274139643500045142.Spec : Prop :=
  ∀ n, P3274139643500045142.a n = A349417 n

end A349417

/-! ## A349417.P7228278224901066316

`floor(C(n+2, 3)+ϕ-(n-1))`
-/

namespace A349417.P7228278224901066316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 3 : ℝ) + (Real.goldenRatio - ((n : ℤ) - 1 : ℝ))⌋

end

end A349417.P7228278224901066316

namespace A349417

/-- `floor(C(n+2, 3)+ϕ-(n-1))` -/
def P7228278224901066316.Spec : Prop :=
  ∀ n, P7228278224901066316.a n = A349417 n

end A349417

/-! ## A349417.P16439455066515188404

`∑[2*n-(n-a(n-1))]` with `a(0)=2, a(1)=0`
-/

namespace A349417.P16439455066515188404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349417.P16439455066515188404

namespace A349417

/-- `∑[2*n-(n-a(n-1))]` -/
def P16439455066515188404.Spec : Prop :=
  ∀ n, P16439455066515188404.a n = A349417 n

end A349417

/-! ## A349417.P2507796545200552443

`n*((a(n-2)-2)/n+n)` with `a(0)=2, a(1)=2`
-/

namespace A349417.P2507796545200552443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℚ) * ((a (n - 2) - 2) / (n : ℚ) + (n : ℚ))

end

end A349417.P2507796545200552443

namespace A349417

/-- `n*((a(n-2)-2)/n+n)` -/
def P2507796545200552443.Spec : Prop :=
  ∀ n, P2507796545200552443.a n = (A349417 n : ℚ)

end A349417

/-! ## A349417.P4707857040973835704

`n*(n-(2-a(n-2))/n)` with `a(0)=2, a(1)=2`
-/

namespace A349417.P4707857040973835704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℚ) * ((n : ℚ) - (2 - a (n - 2)) / (n : ℚ))

end

end A349417.P4707857040973835704

namespace A349417

/-- `n*(n-(2-a(n-2))/n)` -/
def P4707857040973835704.Spec : Prop :=
  ∀ n, P4707857040973835704.a n = (A349417 n : ℚ)

end A349417

/-! ## A349417.P16374721845569567732

`floor(2*a(n-1)-a(n-2)+n)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P16374721845569567732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * a (n - 1) - a (n - 2) + (n : ℤ)

end

end A349417.P16374721845569567732

namespace A349417

/-- `floor(2*a(n-1)-a(n-2)+n)` -/
def P16374721845569567732.Spec : Prop :=
  ∀ n, P16374721845569567732.a n = A349417 n

end A349417

/-! ## A349417.P15393573111992145808

`floor(2*a(n-1)-floor(a(n-2)-n))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P15393573111992145808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * a (n - 1) - (a (n - 2) - (n : ℤ))

end

end A349417.P15393573111992145808

namespace A349417

/-- `floor(2*a(n-1)-floor(a(n-2)-n))` -/
def P15393573111992145808.Spec : Prop :=
  ∀ n, P15393573111992145808.a n = A349417 n

end A349417

/-! ## A349417.P17444462830988271885

`floor(a(n-1)+a(n-1)-a(n-2)+n)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P17444462830988271885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2)) + (n : ℤ)

end

end A349417.P17444462830988271885

namespace A349417

/-- `floor(a(n-1)+a(n-1)-a(n-2)+n)` -/
def P17444462830988271885.Spec : Prop :=
  ∀ n, P17444462830988271885.a n = A349417 n

end A349417

/-! ## A349417.P18272819456798763077

`floor(floor(a(n-1))-(a(n-2)-a(n-1)-n))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A349417.P18272819456798763077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - (n : ℤ))

end

end A349417.P18272819456798763077

namespace A349417

/-- `floor(floor(a(n-1))-(a(n-2)-a(n-1)-n))` -/
def P18272819456798763077.Spec : Prop :=
  ∀ n, P18272819456798763077.a n = A349417 n

end A349417

/-!
# A349418: a(n) is the Wiener index of a tridon on n vertices.

The programs for A349418, the canonical program `A349418.P11770262963807952982` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349418 has offset 5).

The definition of A349418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349418.P11770262963807952982

`1/6*(n+5)^3-19/6*(n+5)+11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349418

/-- `1/6*(n+5)^3-19/6*(n+5)+11` -/
def P11770262963807952982.Spec : Prop :=
  ∀ n, P11770262963807952982.a n = (A349418 (n + 5) : ℚ)

end A349418

/-! ## A349418.P1082878884038199272

`abs(a(n-1)+C(n+5, 2)-3)` with `a(0)=16`
-/

namespace A349418.P1082878884038199272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  |a (n - 1) + ((Nat.choose (n + 5) 2 : ℤ) - 3)|

end

end A349418.P1082878884038199272

namespace A349418

/-- `abs(a(n-1)+C(n+5, 2)-3)` -/
def P1082878884038199272.Spec : Prop :=
  ∀ n, P1082878884038199272.a n = A349418 (n + 5)

end A349418

/-! ## A349418.P10374923245711385700

`round(a(n-1)+C(n+5, 2)-3)` with `a(0)=16`

`round` is left out, it is the identity on integers.
-/

namespace A349418.P10374923245711385700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) + ((Nat.choose (n + 5) 2 : ℤ) - 3)

end

end A349418.P10374923245711385700

namespace A349418

/-- `round(a(n-1)+C(n+5, 2)-3)` -/
def P10374923245711385700.Spec : Prop :=
  ∀ n, P10374923245711385700.a n = A349418 (n + 5)

end A349418

/-! ## A349418.P8759466123414186747

`abs(Δ[A095661(n)]+6)`
-/

namespace A349418.P8759466123414186747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 6|

end

end A349418.P8759466123414186747

namespace A349418

/-- `abs(Δ[A095661(n)]+6)` -/
def P8759466123414186747.Spec : Prop :=
  ∀ n, P8759466123414186747.a n = A349418 (n + 5)

end A349418

/-! ## A349418.P10001751227505038497

`abs(A034857(n+2)+10)`
-/

namespace A349418.P10001751227505038497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034857 (n + 2) + 10|

end

end A349418.P10001751227505038497

namespace A349418

/-- `abs(A034857(n+2)+10)` -/
def P10001751227505038497.Spec : Prop :=
  ∀ n, P10001751227505038497.a n = A349418 (n + 5)

end A349418

/-!
# A349419: Fundamental discriminants of real quadratic number fields with odd class number > 1 whose fundamental unit has norm 1.

The programs for A349419, there is no canonical definition to state claims against.
-/

/-! ## A349419.P1561613452195192064

`record[A072438(A342368(n+3))]`
-/

namespace A349419.P1561613452195192064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A342368 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349419.P1561613452195192064

/-! ## A349419.P6592620835229104077

`filter[A342368(n+1), A005171(#)]`
-/

namespace A349419.P6592620835229104077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A349419.P6592620835229104077

/-! ## A349419.P4638504414402380761

`filter[A342368(n+1), A066247(#)]`
-/

namespace A349419.P4638504414402380761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A349419.P4638504414402380761

/-! ## A349419.P8666962414353207027

`filter[A342368(n+1), A143731(#)]`
-/

namespace A349419.P8666962414353207027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A349419.P8666962414353207027

/-! ## A349419.P7315965116145006966

`filter[A342368(n+1), A174898(#)]`
-/

namespace A349419.P7315965116145006966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A349419.P7315965116145006966

/-!
# A349420: Primes that do not divide any term of A275027.

The programs for A349420, there is no canonical definition to state claims against.
-/

/-! ## A349420.P1508991620643711927

`p?[∑[A249072(A176591(n))]]`
-/

namespace A349420.P1508991620643711927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A176591 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349420.P1508991620643711927

/-! ## A349420.P16575058865980758333

`p?[∑[A347243(A327537(2*n+3))]]`
-/

namespace A349420.P16575058865980758333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (A327537 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349420.P16575058865980758333

/-! ## A349420.P13288857925424871990

`A187614(lt[A187614(n+1), A048595(3*(n+1))])`
-/

namespace A349420.P13288857925424871990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349420.P13288857925424871990

/-!
# A349423: Index of first occurrence of n in A348179, or -1 if n never appears.

The programs for A349423, there is no canonical definition to state claims against.
-/

/-! ## A349423.P11216280420303138909

`A080070(A055024(n))+n`
-/

namespace A349423.P11216280420303138909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080070 (A055024 n).toNat + (n : ℤ)

end

end A349423.P11216280420303138909

/-! ## A349423.P16861818709720482350

`n*A055745(A139337(n))`
-/

namespace A349423.P16861818709720482350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055745 (A139337 n).toNat

end

end A349423.P16861818709720482350

/-! ## A349423.P11050150321964727

`n*A224697(A057814(n))`
-/

namespace A349423.P11050150321964727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A224697 (A057814 n).toNat

end

end A349423.P11050150321964727

/-! ## A349423.P4604800083104150805

`n*A329739(A125591(n))`
-/

namespace A349423.P4604800083104150805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329739 (A125591 n).toNat

end

end A349423.P4604800083104150805

/-! ## A349423.P7875392230044951309

`n*A329739(A143573(n))`
-/

namespace A349423.P7875392230044951309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329739 (A143573 n).toNat

end

end A349423.P7875392230044951309

/-!
# A349424: Integers that are the product of two factorials A000142.

The programs for A349424, there is no canonical definition to state claims against.
-/

/-! ## A349424.P12919007111825767322

`lt[0, A108068(n)]`
-/

namespace A349424.P12919007111825767322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349424.P12919007111825767322

/-! ## A349424.P16353810386666224785

`lt[0, A108069(n)]`
-/

namespace A349424.P16353810386666224785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349424.P16353810386666224785

/-! ## A349424.P4337047939666634122

`eq[0, A000038(n)^A108069(n)]`
-/

namespace A349424.P4337047939666634122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A108069 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A349424.P4337047939666634122

/-! ## A349424.P11552180800041941017

`eq[A000038(n)^A108068(n), A000038(n)]`
-/

namespace A349424.P11552180800041941017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A108068 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A349424.P11552180800041941017

/-!
# A349426: Irregular triangle read by rows: T(n,k) is the number of arrangements of n labeled children with exactly k nontrivial rounds; n >= 3, 1 <= k <= floor(n/3).

The programs for A349426, there is no canonical definition to state claims against.
-/

/-! ## A349426.P11111764528230000766

`A129912(n+1)*A165044(A002189(n))`
-/

namespace A349426.P11111764528230000766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (n + 1) * A165044 (A002189 n).toNat

end

end A349426.P11111764528230000766

/-! ## A349426.P14209300272132247914

`A036039(eq[A036042(3*(n+1)), A111785(n)])`
-/

namespace A349426.P14209300272132247914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A349426.P14209300272132247914

/-!
# A349427: a(n) = ((n+1)^2 - 2) * binomial(2*n-2,n-1) / 2.

The programs for A349427, the canonical program `A349427.P417037996028307768` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349427 has offset 0).

The definition of A349427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349427.P417037996028307768

`Δ[∑[C(n, 2)]*A120588(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A349427

/-- `Δ[∑[C(n, 2)]*A120588(n)]` -/
def P417037996028307768.Spec : Prop :=
  ∀ n, P417037996028307768.a n = A349427 n

theorem P417037996028307768.correct : P417037996028307768.Spec := by
  intro n
  simp only [A349427]

end A349427

/-! ## A349427.P12241328413574005042

`Δ[C(n+1, 3)*A000108(abs(2-n)+1)]`
-/

namespace A349427.P12241328413574005042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) * A000108 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349427.P12241328413574005042

namespace A349427

/-- `Δ[C(n+1, 3)*A000108(abs(2-n)+1)]` -/
def P12241328413574005042.Spec : Prop :=
  ∀ n, P12241328413574005042.a n = A349427 n

end A349427

/-! ## A349427.P8484707943520238219

`(n-A006002(n))*A115140(n)`
-/

namespace A349427.P8484707943520238219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A006002 n) * A115140 n

end

end A349427.P8484707943520238219

namespace A349427

/-- `(n-A006002(n))*A115140(n)` -/
def P8484707943520238219.Spec : Prop :=
  ∀ n, P8484707943520238219.a n = A349427 n

end A349427

/-! ## A349427.P3493724057644649475

`(A006002(n)-n)*A120588(n)`
-/

namespace A349427.P3493724057644649475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006002 n - (n : ℤ)) * A120588 n

end

end A349427.P3493724057644649475

namespace A349427

/-- `(A006002(n)-n)*A120588(n)` -/
def P3493724057644649475.Spec : Prop :=
  ∀ n, P3493724057644649475.a n = A349427 n

end A349427

/-! ## A349427.P671418578154185591

`(C(n, 3)-A002412(n))*A115140(n)`
-/

namespace A349427.P671418578154185591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 3 : ℤ) - A002412 n) * A115140 n

end

end A349427.P671418578154185591

namespace A349427

/-- `(C(n, 3)-A002412(n))*A115140(n)` -/
def P671418578154185591.Spec : Prop :=
  ∀ n, P671418578154185591.a n = A349427 n

end A349427

/-!
# A349428: Smallest k such that A349410(k) = n or -1 if no such number exists.

The programs for A349428, there is no canonical definition to state claims against.
-/

/-! ## A349428.P6011759160494791960

`record[A025192(n)-record[A084938(3*n+1)]]`
-/

namespace A349428.P6011759160494791960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349428.P6011759160494791960

/-! ## A349428.P14099624748511463516

`(3%comp[∑[n]]+n)*A338745(A000088(n))`
-/

namespace A349428.P14099624748511463516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℕ) : ℤ) * A338745 (A000088 n).toNat

end

end A349428.P14099624748511463516

/-!
# A349430: Number of set partitions of [5n] into 5-element subsets {i, i+k, i+2k, i+3k, i+4k} with 1<=k<=n.

The programs for A349430, there is no canonical definition to state claims against.
-/

/-! ## A349430.P7248672237094767343

`∑[A329577(Δ[A000081(n)])]`
-/

namespace A349430.P7248672237094767343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349430.P7248672237094767343

/-! ## A349430.P9325424758956423469

`A003056(A263779(n)*A344607(n))`
-/

namespace A349430.P9325424758956423469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A263779 n * A344607 n).toNat

end

end A349430.P9325424758956423469

/-! ## A349430.P15392151879750004134

`or(A057142(A000142(n)), A355747(n))`
-/

namespace A349430.P15392151879750004134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057142 (A000142 n).toNat) (A355747 n)

end

end A349430.P15392151879750004134

/-! ## A349430.P3068453380456706341

`A355747(n)+A279228(A355777(3*n))`
-/

namespace A349430.P3068453380456706341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355747 n + A279228 (A355777 (3 * n)).toNat

end

end A349430.P3068453380456706341

/-!
# A349431: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A055615 (Dirichlet inverse of n).

The programs for A349431, the canonical program `A349431.P2521683173006061280` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349431 has offset 1).

The definition of A349431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297381, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349431.P2521683173006061280

`-A297381(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349431

/-- `-A297381(n+1)` -/
def P2521683173006061280.Spec : Prop :=
  ∀ n, P2521683173006061280.a n = A349431 (n + 1)

theorem P2521683173006061280.correct : P2521683173006061280.Spec := by
  intro n
  simp only [A349431, Nat.add_sub_cancel]

end A349431

/-! ## A349431.P16323481439085265131

`round(∏{p}[n+1, 1-#]/2)`
-/

namespace A349431.P16323481439085265131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) : ℤ) : ℚ) / 2)

end

end A349431.P16323481439085265131

namespace A349431

/-- `round(∏{p}[n+1, 1-#]/2)` -/
def P16323481439085265131.Spec : Prop :=
  ∀ n, P16323481439085265131.a n = A349431 (n + 1)

theorem P16323481439085265131.correct : P16323481439085265131.Spec := by
  intro n
  simp only [A349431, Nat.add_sub_cancel, A349431.P16323481439085265131.f1, A349431.P16323481439085265131.a, A349431.P2521683173006061280.a, A297381, A297381.P12976311845768696802.f1, A297381.P12976311845768696802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349431

/-! ## A349431.P7338894230748636524

`round(A023900(n+1)/2)`
-/

namespace A349431.P7338894230748636524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / 2)

end

end A349431.P7338894230748636524

namespace A349431

/-- `round(A023900(n+1)/2)` -/
def P7338894230748636524.Spec : Prop :=
  ∀ n, P7338894230748636524.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P10294106603898157941

`(-1)^n*A325887((n+1)/and(n+1, -(n+1)))`
-/

namespace A349431.P10294106603898157941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A325887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349431.P10294106603898157941

namespace A349431

/-- `(-1)^n*A325887((n+1)/and(n+1, -(n+1)))` -/
def P10294106603898157941.Spec : Prop :=
  ∀ n, P10294106603898157941.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P2997374149212904799

`A023900(n+1)/A043529(n)`
-/

namespace A349431.P2997374149212904799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A349431.P2997374149212904799

namespace A349431

/-- `A023900(n+1)/A043529(n)` -/
def P2997374149212904799.Spec : Prop :=
  ∀ n, P2997374149212904799.a n = (A349431 (n + 1) : ℚ)

end A349431

/-! ## A349431.P18130748610204319123

`A349433(n+1)-A349432(n+1)`
-/

namespace A349431.P18130748610204319123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (n + 1) - A349432 (n + 1)

end

end A349431.P18130748610204319123

namespace A349431

/-- `A349433(n+1)-A349432(n+1)` -/
def P18130748610204319123.Spec : Prop :=
  ∀ n, P18130748610204319123.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P11218154501905283402

`A209229(3*n)-A297381(n+1)`
-/

namespace A349431.P11218154501905283402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * n) - A297381 (n + 1)

end

end A349431.P11218154501905283402

namespace A349431

/-- `A209229(3*n)-A297381(n+1)` -/
def P11218154501905283402.Spec : Prop :=
  ∀ n, P11218154501905283402.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P3582135459937391347

`A349447(2*(n+1))-A297381(n+1)`
-/

namespace A349431.P3582135459937391347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (2 * (n + 1)) - A297381 (n + 1)

end

end A349431.P3582135459937391347

namespace A349431

/-- `A349447(2*(n+1))-A297381(n+1)` -/
def P3582135459937391347.Spec : Prop :=
  ∀ n, P3582135459937391347.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P15311242732004038107

`A023900(n+1)/2*A297382(n+1)`
-/

namespace A349431.P15311242732004038107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / 2 * (A297382 (n + 1) : ℚ)

end

end A349431.P15311242732004038107

namespace A349431

/-- `A023900(n+1)/2*A297382(n+1)` -/
def P15311242732004038107.Spec : Prop :=
  ∀ n, P15311242732004038107.a n = (A349431 (n + 1) : ℚ)

end A349431

/-! ## A349431.P7875486331285398769

`∑{d}[n+1, A003602(#)*A055615((n+1)/#)]`
-/

namespace A349431.P7875486331285398769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P7875486331285398769

namespace A349431

/-- `∑{d}[n+1, A003602(#)*A055615((n+1)/#)]` -/
def P7875486331285398769.Spec : Prop :=
  ∀ n, P7875486331285398769.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P2139993404069567310

`∑{d}[n+1, A008683(#)*A349373((n+1)/#)]`
-/

namespace A349431.P2139993404069567310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P2139993404069567310

namespace A349431

/-- `∑{d}[n+1, A008683(#)*A349373((n+1)/#)]` -/
def P2139993404069567310.Spec : Prop :=
  ∀ n, P2139993404069567310.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P3317797763154845177

`∑{d}[n+1, A023900(#)*A349136((n+1)/#)]`
-/

namespace A349431.P3317797763154845177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P3317797763154845177

namespace A349431

/-- `∑{d}[n+1, A023900(#)*A349136((n+1)/#)]` -/
def P3317797763154845177.Spec : Prop :=
  ∀ n, P3317797763154845177.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P3415498446554970041

`∑{d}[n+1, A046692(#)*A349371((n+1)/#)]`
-/

namespace A349431.P3415498446554970041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P3415498446554970041

namespace A349431

/-- `∑{d}[n+1, A046692(#)*A349371((n+1)/#)]` -/
def P3415498446554970041.Spec : Prop :=
  ∀ n, P3415498446554970041.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P11874966147193484393

`∑{d}[n+1, A113415(#)*A326938((n+1)/#)]`
-/

namespace A349431.P11874966147193484393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113415 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P11874966147193484393

namespace A349431

/-- `∑{d}[n+1, A113415(#)*A326938((n+1)/#)]` -/
def P11874966147193484393.Spec : Prop :=
  ∀ n, P11874966147193484393.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P8277501903238201352

`∑{d}[n+1, A181988(#)*A359484((n+1)/#)]`
-/

namespace A349431.P8277501903238201352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181988 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P8277501903238201352

namespace A349431

/-- `∑{d}[n+1, A181988(#)*A359484((n+1)/#)]` -/
def P8277501903238201352.Spec : Prop :=
  ∀ n, P8277501903238201352.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P7662852870206858864

`∑{d}[n+1, A328729(#)*A349375((n+1)/#)]`
-/

namespace A349431.P7662852870206858864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A349375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P7662852870206858864

namespace A349431

/-- `∑{d}[n+1, A328729(#)*A349375((n+1)/#)]` -/
def P7662852870206858864.Spec : Prop :=
  ∀ n, P7662852870206858864.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P15907952906037041224

`∑{d}[n+1, A027656(#-1)*A349341((n+1)/#)]`
-/

namespace A349431.P15907952906037041224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027656 (d - 1) * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349431.P15907952906037041224

namespace A349431

/-- `∑{d}[n+1, A027656(#-1)*A349341((n+1)/#)]` -/
def P15907952906037041224.Spec : Prop :=
  ∀ n, P15907952906037041224.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P14784251996250294261

`A007814(A000265(n+1))-A297381(n+1)`
-/

namespace A349431.P14784251996250294261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000265 (n + 1)).toNat - A297381 (n + 1)

end

end A349431.P14784251996250294261

namespace A349431

/-- `A007814(A000265(n+1))-A297381(n+1)` -/
def P14784251996250294261.Spec : Prop :=
  ∀ n, P14784251996250294261.a n = A349431 (n + 1)

end A349431

/-! ## A349431.P11343234628181614976

`A023900(n+1)/A020639(A003958(n+1))`
-/

namespace A349431.P11343234628181614976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A020639 (A003958 (n + 1)).toNat : ℚ)

end

end A349431.P11343234628181614976

namespace A349431

/-- `A023900(n+1)/A020639(A003958(n+1))` -/
def P11343234628181614976.Spec : Prop :=
  ∀ n, P11343234628181614976.a n = (A349431 (n + 1) : ℚ)

end A349431

/-! ## A349431.P6048447410202378821

`A023900(n+1)/A020639(A173557(n+1))`
-/

namespace A349431.P6048447410202378821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A020639 (A173557 (n + 1)).toNat : ℚ)

end

end A349431.P6048447410202378821

namespace A349431

/-- `A023900(n+1)/A020639(A173557(n+1))` -/
def P6048447410202378821.Spec : Prop :=
  ∀ n, P6048447410202378821.a n = (A349431 (n + 1) : ℚ)

end A349431

/-!
# A349432: Dirichlet convolution of A000027 (the identity function) with A349134.

The programs for A349432, there is no canonical definition to state claims against.
-/

/-! ## A349432.P10846151765047695498

`∑{d}[n+1, #*A349134((n+1)/#)]`
-/

namespace A349432.P10846151765047695498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349432.P10846151765047695498

/-! ## A349432.P8875593782416357988

`A349433(n+1)+A297381(n+1)`
-/

namespace A349432.P8875593782416357988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (n + 1) + A297381 (n + 1)

end

end A349432.P8875593782416357988

/-! ## A349432.P9065229094227722355

`A349433(n+1)-A349431(n+1)`
-/

namespace A349432.P9065229094227722355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (n + 1) - A349431 (n + 1)

end

end A349432.P9065229094227722355

/-! ## A349432.P200721812553783785

`∑{d}[n+1, A002131(#)*A349915((n+1)/#)]`
-/

namespace A349432.P200721812553783785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349432.P200721812553783785

/-! ## A349432.P81047111961154696

`∑{d}[n+1, A129527(#)*A349346((n+1)/#)]`
-/

namespace A349432.P81047111961154696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129527 d * A349346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349432.P81047111961154696

/-! ## A349432.P374996453776083473

`∑{d}[n+1, A267092(#)*A349344((n+1)/#)]`
-/

namespace A349432.P374996453776083473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267092 d * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349432.P374996453776083473

/-! ## A349432.P5564883103604344162

`∑{d}[n+1, A326305(#)*A349445((n+1)/#)]`
-/

namespace A349432.P5564883103604344162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A349445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349432.P5564883103604344162

/-!
# A349433: a(n) = A349431(n) + A349432(n).

The programs for A349433, there is no canonical definition to state claims against.
-/

/-! ## A349433.P5810768769113533196

`A349431(n+1)+A349432(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349433.P5810768769113533196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1) + A349432 (n + 1)

end

end A349433.P5810768769113533196

/-! ## A349433.P9623715635131244299

`A349432(n+1)-A297381(n+1)`
-/

namespace A349433.P9623715635131244299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (n + 1) - A297381 (n + 1)

end

end A349433.P9623715635131244299

/-! ## A349433.P16713091799731183438

`A349432(n+1)+round(A023900(n+1)/2)`
-/

namespace A349433.P16713091799731183438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (n + 1) + SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / 2)

end

end A349433.P16713091799731183438

/-! ## A349433.P10554553441715281766

`A349432(n+1)+∑{d}[n+1, A113415(#)*A326938((n+1)/#)]`
-/

namespace A349433.P10554553441715281766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A113415 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349433.P10554553441715281766

/-! ## A349433.P214647946205000332

`∑{d}[n+1, #*A349134((n+1)/#)]-A023900(n+1)/(A297382(n+1)-3)`
-/

namespace A349433.P214647946205000332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) - (A023900 (n + 1) : ℚ) / (A297382 (n + 1) - 3 : ℚ)

end

end A349433.P214647946205000332

/-! ## A349433.P3434811078011512680

`∑{d}[n+1, #*A349134((n+1)/#)]-(A007814(2*n+1)-A349431(n+1))`
-/

namespace A349433.P3434811078011512680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (A007814 (2 * n + 1) - A349431 (n + 1))

end

end A349433.P3434811078011512680

/-!
# A349434: Dirichlet convolution of A129283 (n + its arithmetic derivative) with A349337 (Dirichlet inverse of A230593).

The programs for A349434, the canonical program `A349434.P894516629542100593` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349434 has offset 1).

The definition of A349434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349434.P1025126311489575785

`A349436(n+1)-A349435(n+1)`
-/

namespace A349434.P1025126311489575785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349436 (n + 1) - A349435 (n + 1)

end

end A349434.P1025126311489575785

namespace A349434

/-- `A349436(n+1)-A349435(n+1)` -/
def P1025126311489575785.Spec : Prop :=
  ∀ n, P1025126311489575785.a n = A349434 (n + 1)

end A349434

/-! ## A349434.P894516629542100593

`∑{d}[n+1, A129283(#)*A349337((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349434

/-- `∑{d}[n+1, A129283(#)*A349337((n+1)/#)]` -/
def P894516629542100593.Spec : Prop :=
  ∀ n, P894516629542100593.a n = A349434 (n + 1)

theorem P894516629542100593.correct : P894516629542100593.Spec := by
  intro n
  simp only [A349434, Nat.add_sub_cancel]

end A349434

/-! ## A349434.P16900551307957889265

`A349436(n+1)-∑{d}[n+1, A230593(#)*A347084((n+1)/#)]`
-/

namespace A349434.P16900551307957889265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349436 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A230593 d * A347084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349434.P16900551307957889265

namespace A349434

/-- `A349436(n+1)-∑{d}[n+1, A230593(#)*A347084((n+1)/#)]` -/
def P16900551307957889265.Spec : Prop :=
  ∀ n, P16900551307957889265.a n = A349434 (n + 1)

end A349434

/-! ## A349434.P16939933605183666271

`A239363(n+1)%A311160(A347048(n+1))-A349435(n+1)`
-/

namespace A349434.P16939933605183666271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239363 (n + 1)) (A311160 (A347048 (n + 1)).toNat) - A349435 (n + 1)

end

end A349434.P16939933605183666271

namespace A349434

/-- `A239363(n+1)%A311160(A347048(n+1))-A349435(n+1)` -/
def P16939933605183666271.Spec : Prop :=
  ∀ n, P16939933605183666271.a n = A349434 (n + 1)

end A349434

/-! ## A349434.P14087059886170251220

`A058517(A341065(n+5))%6-A349435(n+1)`
-/

namespace A349434.P14087059886170251220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058517 (A341065 (n + 5)).toNat) 6 - A349435 (n + 1)

end

end A349434.P14087059886170251220

namespace A349434

/-- `A058517(A341065(n+5))%6-A349435(n+1)` -/
def P14087059886170251220.Spec : Prop :=
  ∀ n, P14087059886170251220.a n = A349434 (n + 1)

end A349434

/-!
# A349435: Dirichlet convolution of A230593 with A347084, which is Dirichlet inverse of {n + its arithmetic derivative}.

The programs for A349435, there is no canonical definition to state claims against.
-/

/-! ## A349435.P54866807453088597

`A349436(n+1)-A349434(n+1)`
-/

namespace A349435.P54866807453088597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349436 (n + 1) - A349434 (n + 1)

end

end A349435.P54866807453088597

/-! ## A349435.P11857523228075358071

`∑{d}[n+1, A230593(#)*A347084((n+1)/#)]`
-/

namespace A349435.P11857523228075358071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230593 d * A347084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349435.P11857523228075358071

/-! ## A349435.P348032336455771290

`A349436(n+1)-∑{d}[n+1, A129283(#)*A349337((n+1)/#)]`
-/

namespace A349435.P348032336455771290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349436 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A129283 d * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349435.P348032336455771290

/-! ## A349435.P8221231953000433876

`A239363(n+1)%A311160(A347048(n+1))-A349434(n+1)`
-/

namespace A349435.P8221231953000433876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239363 (n + 1)) (A311160 (A347048 (n + 1)).toNat) - A349434 (n + 1)

end

end A349435.P8221231953000433876

/-!
# A349436: a(n) = A349434(n) + A349435(n).

The programs for A349436, there is no canonical definition to state claims against.
-/

/-! ## A349436.P5751151407952949341

`A349434(n+1)+A349435(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349436.P5751151407952949341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349434 (n + 1) + A349435 (n + 1)

end

end A349436.P5751151407952949341

/-! ## A349436.P13578050893549134197

`A349435(n+1)+∑{d}[n+1, A129283(#)*A349337((n+1)/#)]`
-/

namespace A349436.P13578050893549134197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349435 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A129283 d * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349436.P13578050893549134197

/-! ## A349436.P5686958478212461299

`A349434(n+1)+∑{d}[n+1, A230593(#)*A347084((n+1)/#)]`
-/

namespace A349436.P5686958478212461299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349434 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A230593 d * A347084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349436.P5686958478212461299

/-! ## A349436.P8603444832485983866

`A239363(n+1)%A311160(A347048(n+1))`
-/

namespace A349436.P8603444832485983866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239363 (n + 1)) (A311160 (A347048 (n + 1)).toNat)

end

end A349436.P8603444832485983866

/-! ## A349436.P10562807471953899926

`A318984(A301035(2*n))`
-/

namespace A349436.P10562807471953899926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A301035 (2 * n)).toNat

end

end A349436.P10562807471953899926

/-!
# A349437: Dirichlet convolution of A252463 with A055615 (Dirichlet inverse of n), where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

The programs for A349437, the canonical program `A349437.P8922563044114934185` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349437 has offset 1).

The definition of A349437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349437.P10850157783359298950

`A349439(n+1)-A349438(n+1)`
-/

namespace A349437.P10850157783359298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (n + 1) - A349438 (n + 1)

end

end A349437.P10850157783359298950

namespace A349437

/-- `A349439(n+1)-A349438(n+1)` -/
def P10850157783359298950.Spec : Prop :=
  ∀ n, P10850157783359298950.a n = A349437 (n + 1)

end A349437

/-! ## A349437.P8922563044114934185

`∑{d}[n+1, A055615(#)*A252463((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A349437

/-- `∑{d}[n+1, A055615(#)*A252463((n+1)/#)]` -/
def P8922563044114934185.Spec : Prop :=
  ∀ n, P8922563044114934185.a n = A349437 (n + 1)

theorem P8922563044114934185.correct : P8922563044114934185.Spec := by
  intro n
  simp only [A349437, Nat.add_sub_cancel]

end A349437

/-! ## A349437.P8370770146352042451

`∑{d}[n+1, A023900(#)*A348045((n+1)/#)]`
-/

namespace A349437.P8370770146352042451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A348045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349437.P8370770146352042451

namespace A349437

/-- `∑{d}[n+1, A023900(#)*A348045((n+1)/#)]` -/
def P8370770146352042451.Spec : Prop :=
  ∀ n, P8370770146352042451.a n = A349437 (n + 1)

end A349437

/-! ## A349437.P13469039149278142796

`A349439(n+1)-∑{d}[n+1, #*A349348((n+1)/#)]`
-/

namespace A349437.P13469039149278142796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349437.P13469039149278142796

namespace A349437

/-- `A349439(n+1)-∑{d}[n+1, #*A349348((n+1)/#)]` -/
def P13469039149278142796.Spec : Prop :=
  ∀ n, P13469039149278142796.a n = A349437 (n + 1)

end A349437

/-! ## A349437.P14883920416142738592

`A076544(n+1)^A000034(A001924(n))-A349438(n+1)`
-/

namespace A349437.P14883920416142738592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076544 (n + 1) : ℚ) ^ (A000034 (A001924 n).toNat : ℤ) - (A349438 (n + 1) : ℚ)

end

end A349437.P14883920416142738592

namespace A349437

/-- `A076544(n+1)^A000034(A001924(n))-A349438(n+1)` -/
def P14883920416142738592.Spec : Prop :=
  ∀ n, P14883920416142738592.a n = (A349437 (n + 1) : ℚ)

end A349437

/-!
# A349438: Dirichlet convolution of A000027 with A349348 (Dirichlet inverse of A252463), where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

The programs for A349438, there is no canonical definition to state claims against.
-/

/-! ## A349438.P15838866552399452180

`∑{d}[n+1, #*A349348((n+1)/#)]`
-/

namespace A349438.P15838866552399452180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349438.P15838866552399452180

/-! ## A349438.P13531303009626430353

`A349439(n+1)-A349437(n+1)`
-/

namespace A349438.P13531303009626430353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (n + 1) - A349437 (n + 1)

end

end A349438.P13531303009626430353

/-! ## A349438.P12791361271482107133

`A349439(n+1)-∑{d}[n+1, A055615(#)*A252463((n+1)/#)]`
-/

namespace A349438.P12791361271482107133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A055615 d * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349438.P12791361271482107133

/-! ## A349438.P5322587743135078243

`A349439(n+1)-∑{d}[n+1, A023900(#)*A348045((n+1)/#)]`
-/

namespace A349438.P5322587743135078243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A023900 d * A348045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349438.P5322587743135078243

/-! ## A349438.P13081195807771750634

`A076544(n+1)^A000034(A001924(n))-A349437(n+1)`
-/

namespace A349438.P13081195807771750634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076544 (n + 1) : ℚ) ^ (A000034 (A001924 n).toNat : ℤ) - (A349437 (n + 1) : ℚ)

end

end A349438.P13081195807771750634

/-!
# A349439: a(n) = A349437(n) + A349438(n).

The programs for A349439, there is no canonical definition to state claims against.
-/

/-! ## A349439.P6694969851211567100

`A349437(n+1)+A349438(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349439.P6694969851211567100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349437 (n + 1) + A349438 (n + 1)

end

end A349439.P6694969851211567100

/-! ## A349439.P18311713753799939358

`A349437(n+1)+∑{d}[n+1, #*A349348((n+1)/#)]`
-/

namespace A349439.P18311713753799939358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349437 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349439.P18311713753799939358

/-! ## A349439.P14110321546388565150

`A349438(n+1)+∑{d}[n+1, A055615(#)*A252463((n+1)/#)]`
-/

namespace A349439.P14110321546388565150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349438 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055615 d * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349439.P14110321546388565150

/-! ## A349439.P4171039847005043146

`A349438(n+1)+∑{d}[n+1, A023900(#)*A348045((n+1)/#)]`
-/

namespace A349439.P4171039847005043146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349438 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A023900 d * A348045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349439.P4171039847005043146

/-! ## A349439.P14576324072160674204

`A076544(n+1)^A000034(A001924(n))`
-/

namespace A349439.P14576324072160674204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076544 (n + 1) : ℚ) ^ (A000034 (A001924 n).toNat : ℤ)

end

end A349439.P14576324072160674204

/-!
# A349440: a(n) = n / gcd(A001608(n), n), where A001608 = Perrin sequence.

The programs for A349440, the canonical program `A349440.P4425977258919944592` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349440 has offset 1).

The definition of A349440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349440.P4425977258919944592

`(n+1)/A086847(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349440

/-- `(n+1)/A086847(n+1)` -/
def P4425977258919944592.Spec : Prop :=
  ∀ n, P4425977258919944592.a n = (A349440 (n + 1) : ℚ)

end A349440

/-! ## A349440.P5568402914253881820

`(n+1)/gcd(n+1, A001608(n+1))`
-/

namespace A349440.P5568402914253881820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A001608 (n + 1)) : ℚ)

end

end A349440.P5568402914253881820

namespace A349440

/-- `(n+1)/gcd(n+1, A001608(n+1))` -/
def P5568402914253881820.Spec : Prop :=
  ∀ n, P5568402914253881820.a n = (A349440 (n + 1) : ℚ)

end A349440

/-! ## A349440.P13232881007961278813

`(n+1)/gcd(A001608(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349440.P13232881007961278813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A001608 (n + 1)) (n + 1 : ℤ) : ℚ)

end

end A349440.P13232881007961278813

namespace A349440

/-- `(n+1)/gcd(A001608(n+1), n+1)` -/
def P13232881007961278813.Spec : Prop :=
  ∀ n, P13232881007961278813.a n = (A349440 (n + 1) : ℚ)

end A349440

/-! ## A349440.P6196499938973199560

`(n+1)/gcd(Δ[A001057(n)], A215339(n+1))`
-/

namespace A349440.P6196499938973199560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (f1 (n + 1) - f1 n) (A215339 (n + 1)) : ℚ)

end

end A349440.P6196499938973199560

namespace A349440

/-- `(n+1)/gcd(Δ[A001057(n)], A215339(n+1))` -/
def P6196499938973199560.Spec : Prop :=
  ∀ n, P6196499938973199560.a n = (A349440 (n + 1) : ℚ)

end A349440

/-! ## A349440.P1609046870819261247

`(n+1)/gcd(n+1, Δ[A193744(n)])`
-/

namespace A349440.P1609046870819261247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A349440.P1609046870819261247

namespace A349440

/-- `(n+1)/gcd(n+1, Δ[A193744(n)])` -/
def P1609046870819261247.Spec : Prop :=
  ∀ n, P1609046870819261247.a n = (A349440 (n + 1) : ℚ)

end A349440

/-! ## A349440.P17744433692393028300

`A051537(A086847(n+1)+∑[n])`
-/

namespace A349440.P17744433692393028300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A086847 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A349440.P17744433692393028300

namespace A349440

/-- `A051537(A086847(n+1)+∑[n])` -/
def P17744433692393028300.Spec : Prop :=
  ∀ n, P17744433692393028300.a n = A349440 (n + 1)

end A349440

/-! ## A349440.P14257442369913123074

`A054531(A086847(n+1)+A000217(n))`
-/

namespace A349440.P14257442369913123074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A086847 (n + 1) + A000217 n).toNat

end

end A349440.P14257442369913123074

namespace A349440

/-- `A054531(A086847(n+1)+A000217(n))` -/
def P14257442369913123074.Spec : Prop :=
  ∀ n, P14257442369913123074.a n = A349440 (n + 1)

end A349440

/-! ## A349440.P11221294910184828254

`A126988(A086847(n+1)+A000217(n))`
-/

namespace A349440.P11221294910184828254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A086847 (n + 1) + A000217 n).toNat

end

end A349440.P11221294910184828254

namespace A349440

/-- `A126988(A086847(n+1)+A000217(n))` -/
def P11221294910184828254.Spec : Prop :=
  ∀ n, P11221294910184828254.a n = A349440 (n + 1)

end A349440

/-! ## A349440.P14921440489164113240

`A277227(A086847(n+1)+A000124(n))`
-/

namespace A349440.P14921440489164113240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A086847 (n + 1) + A000124 n).toNat

end

end A349440.P14921440489164113240

namespace A349440

/-- `A277227(A086847(n+1)+A000124(n))` -/
def P14921440489164113240.Spec : Prop :=
  ∀ n, P14921440489164113240.a n = A349440 (n + 1)

end A349440

/-! ## A349440.P9228455031461121943

`A277227(A215339(n+1)+A000124(n))`
-/

namespace A349440.P9228455031461121943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A215339 (n + 1) + A000124 n).toNat

end

end A349440.P9228455031461121943

namespace A349440

/-- `A277227(A215339(n+1)+A000124(n))` -/
def P9228455031461121943.Spec : Prop :=
  ∀ n, P9228455031461121943.a n = A349440 (n + 1)

end A349440

/-!
# A349441: Dirichlet convolution of A057521 (powerful part of n) with A055615 (Dirichlet inverse of n).

The programs for A349441, the canonical program `A349441.P5214992969954165573` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349441 has offset 1).

The definition of A349441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349441.P13038637494516905002

`A349443(n+1)-A349442(n+1)`
-/

namespace A349441.P13038637494516905002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349443 (n + 1) - A349442 (n + 1)

end

end A349441.P13038637494516905002

namespace A349441

/-- `A349443(n+1)-A349442(n+1)` -/
def P13038637494516905002.Spec : Prop :=
  ∀ n, P13038637494516905002.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P10277105834743651510

`A000010(n+1)*A363551(n+1)`
-/

namespace A349441.P10277105834743651510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A363551 (n + 1)

end

end A349441.P10277105834743651510

namespace A349441

/-- `A000010(n+1)*A363551(n+1)` -/
def P10277105834743651510.Spec : Prop :=
  ∀ n, P10277105834743651510.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P3061544924978653177

`A078429(n+1)*A363551(n+1)`
-/

namespace A349441.P3061544924978653177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (n + 1) * A363551 (n + 1)

end

end A349441.P3061544924978653177

namespace A349441

/-- `A078429(n+1)*A363551(n+1)` -/
def P3061544924978653177.Spec : Prop :=
  ∀ n, P3061544924978653177.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P3232275652805391563

`A363551(n+1)*A384040(n+1)`
-/

namespace A349441.P3232275652805391563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363551 (n + 1) * A384040 (n + 1)

end

end A349441.P3232275652805391563

namespace A349441

/-- `A363551(n+1)*A384040(n+1)` -/
def P3232275652805391563.Spec : Prop :=
  ∀ n, P3232275652805391563.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P5214992969954165573

`∑{d}[n+1, A055615(#)*A057521((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A349441

/-- `∑{d}[n+1, A055615(#)*A057521((n+1)/#)]` -/
def P5214992969954165573.Spec : Prop :=
  ∀ n, P5214992969954165573.a n = A349441 (n + 1)

theorem P5214992969954165573.correct : P5214992969954165573.Spec := by
  intro n
  simp only [A349441, Nat.add_sub_cancel]

end A349441

/-! ## A349441.P11118979648504004373

`∑{d}[n+1, A023900(#)*A349379((n+1)/#)]`
-/

namespace A349441.P11118979648504004373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349441.P11118979648504004373

namespace A349441

/-- `∑{d}[n+1, A023900(#)*A349379((n+1)/#)]` -/
def P11118979648504004373.Spec : Prop :=
  ∀ n, P11118979648504004373.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P782225036522460900

`A023900(n+1)*A055615(A003557(n+1))`
-/

namespace A349441.P782225036522460900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A055615 (A003557 (n + 1)).toNat

end

end A349441.P782225036522460900

namespace A349441

/-- `A023900(n+1)*A055615(A003557(n+1))` -/
def P782225036522460900.Spec : Prop :=
  ∀ n, P782225036522460900.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P6126611939977921752

`A125131(A003557(n+1))*A328729(n+1)`
-/

namespace A349441.P6126611939977921752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (A003557 (n + 1)).toNat * A328729 (n + 1)

end

end A349441.P6126611939977921752

namespace A349441

/-- `A125131(A003557(n+1))*A328729(n+1)` -/
def P6126611939977921752.Spec : Prop :=
  ∀ n, P6126611939977921752.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P2399690426064764988

`A328729(A000188(n+1))*A328729(n+1)`
-/

namespace A349441.P2399690426064764988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 (A000188 (n + 1)).toNat * A328729 (n + 1)

end

end A349441.P2399690426064764988

namespace A349441

/-- `A328729(A000188(n+1))*A328729(n+1)` -/
def P2399690426064764988.Spec : Prop :=
  ∀ n, P2399690426064764988.a n = A349441 (n + 1)

end A349441

/-! ## A349441.P2400157917550565923

`A000010(n+1)*A065359(abs(A007427(n+1)))`
-/

namespace A349441.P2400157917550565923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A065359 |A007427 (n + 1)|.toNat

end

end A349441.P2400157917550565923

namespace A349441

/-- `A000010(n+1)*A065359(abs(A007427(n+1)))` -/
def P2400157917550565923.Spec : Prop :=
  ∀ n, P2400157917550565923.a n = A349441 (n + 1)

end A349441

/-!
# A349442: Dirichlet convolution of A000027 (the identity function) with A349350 (Dirichlet inverse of the powerful part of n).

The programs for A349442, there is no canonical definition to state claims against.
-/

/-! ## A349442.P7588479909485093709

`∑{d}[n+1, #*A349350((n+1)/#)]`
-/

namespace A349442.P7588479909485093709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349442.P7588479909485093709

/-! ## A349442.P13423784798359945891

`A349443(n+1)-A349441(n+1)`
-/

namespace A349442.P13423784798359945891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349443 (n + 1) - A349441 (n + 1)

end

end A349442.P13423784798359945891

/-! ## A349442.P1570048840469056514

`A173557(n+1)*A349350(A003557(n+1))`
-/

namespace A349442.P1570048840469056514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A349350 (A003557 (n + 1)).toNat

end

end A349442.P1570048840469056514

/-! ## A349442.P1541388353128700313

`A000010(A007947(n+1))*A349350(A003557(n+1))`
-/

namespace A349442.P1541388353128700313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A349350 (A003557 (n + 1)).toNat

end

end A349442.P1541388353128700313

/-! ## A349442.P16762511561038418688

`A000010(n+1)/A003557(n+1)*A349350(A003557(n+1))`
-/

namespace A349442.P16762511561038418688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A349350 (A003557 (n + 1)).toNat : ℚ)

end

end A349442.P16762511561038418688

/-!
# A349443: a(n) = A349441(n) + A349442(n).

The programs for A349443, there is no canonical definition to state claims against.
-/

/-! ## A349443.P16995633532616363338

`A349441(n+1)+A349442(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349443.P16995633532616363338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349441 (n + 1) + A349442 (n + 1)

end

end A349443.P16995633532616363338

/-! ## A349443.P10189939522511445007

`A349441(n+1)+∑{d}[n+1, #*A349350((n+1)/#)]`
-/

namespace A349443.P10189939522511445007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349441 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349443.P10189939522511445007

/-! ## A349443.P8888323966803322298

`A349442(n+1)+∏{p}[n+1, 1-#]*A055615((n+1)/∏{p}[n+1, #])`
-/

namespace A349443.P8888323966803322298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (n + 1) + (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A349443.P8888323966803322298

/-! ## A349443.P4531457397852239423

`A349442(n+1)+∑{d}[n+1, A023900(#)*A349379((n+1)/#)]`
-/

namespace A349443.P4531457397852239423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349443.P4531457397852239423

/-! ## A349443.P3114499456362438070

`A349442(n+1)+A023900(n+1)*A055615(A003557(n+1))`
-/

namespace A349443.P3114499456362438070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (n + 1) + A023900 (n + 1) * A055615 (A003557 (n + 1)).toNat

end

end A349443.P3114499456362438070

/-! ## A349443.P13498223051853988892

`A349441(n+1)+A173557(n+1)*A349350(A003557(n+1))`
-/

namespace A349443.P13498223051853988892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349441 (n + 1) + A173557 (n + 1) * A349350 (A003557 (n + 1)).toNat

end

end A349443.P13498223051853988892

/-!
# A349444: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A092673 (Dirichlet inverse of A001511).

The programs for A349444, the canonical program `A349444.P9210141452199048946` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349444 has offset 1).

The definition of A349444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349444.P5517276669284397611

`round(A319997(n+1)/2)`
-/

namespace A349444.P5517276669284397611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319997 (n + 1) : ℚ) / 2)

end

end A349444.P5517276669284397611

namespace A349444

/-- `round(A319997(n+1)/2)` -/
def P5517276669284397611.Spec : Prop :=
  ∀ n, P5517276669284397611.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P14929009094941782765

`A319997(n+1)/A043529(n)`
-/

namespace A349444.P14929009094941782765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A349444.P14929009094941782765

namespace A349444

/-- `A319997(n+1)/A043529(n)` -/
def P14929009094941782765.Spec : Prop :=
  ∀ n, P14929009094941782765.a n = (A349444 (n + 1) : ℚ)

end A349444

/-! ## A349444.P15621420091061793775

`A319997(n+1)/A152765(n)`
-/

namespace A349444.P15621420091061793775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A152765 n : ℚ)

end

end A349444.P15621420091061793775

namespace A349444

/-- `A319997(n+1)/A152765(n)` -/
def P15621420091061793775.Spec : Prop :=
  ∀ n, P15621420091061793775.a n = (A349444 (n + 1) : ℚ)

end A349444

/-! ## A349444.P11863278481967612777

`A349446(n+1)-A349445(n+1)`
-/

namespace A349444.P11863278481967612777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349446 (n + 1) - A349445 (n + 1)

end

end A349444.P11863278481967612777

namespace A349444

/-- `A349446(n+1)-A349445(n+1)` -/
def P11863278481967612777.Spec : Prop :=
  ∀ n, P11863278481967612777.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P8815701349440209345

`A319997(n+1)/A185049(n+1)`
-/

namespace A349444.P8815701349440209345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A185049 (n + 1) : ℚ)

end

end A349444.P8815701349440209345

namespace A349444

/-- `A319997(n+1)/A185049(n+1)` -/
def P8815701349440209345.Spec : Prop :=
  ∀ n, P8815701349440209345.a n = (A349444 (n + 1) : ℚ)

end A349444

/-! ## A349444.P10314667273087580288

`∑{d}[n+1, A003602(#)*A092673((n+1)/#)]`
-/

namespace A349444.P10314667273087580288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P10314667273087580288

namespace A349444

/-- `∑{d}[n+1, A003602(#)*A092673((n+1)/#)]` -/
def P10314667273087580288.Spec : Prop :=
  ∀ n, P10314667273087580288.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P9210141452199048946

`∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349444

/-- `∑{d}[n+1, A007427(#)*A113415((n+1)/#)]` -/
def P9210141452199048946.Spec : Prop :=
  ∀ n, P9210141452199048946.a n = A349444 (n + 1)

theorem P9210141452199048946.correct : P9210141452199048946.Spec := by
  intro n
  simp only [A349444, Nat.add_sub_cancel]

end A349444

/-! ## A349444.P1237670240978979818

`∑{d}[n+1, A046692(#)*A328203((n+1)/#)]`
-/

namespace A349444.P1237670240978979818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A328203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P1237670240978979818

namespace A349444

/-- `∑{d}[n+1, A046692(#)*A328203((n+1)/#)]` -/
def P1237670240978979818.Spec : Prop :=
  ∀ n, P1237670240978979818.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P18034792890950690746

`∑{d}[n+1, A109168(#)*A361019((n+1)/#)]`
-/

namespace A349444.P18034792890950690746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109168 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P18034792890950690746

namespace A349444

/-- `∑{d}[n+1, A109168(#)*A361019((n+1)/#)]` -/
def P18034792890950690746.Spec : Prop :=
  ∀ n, P18034792890950690746.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P14771146156259900238

`∑{d}[n+1, A154955(#)*A349136((n+1)/#)]`
-/

namespace A349444.P14771146156259900238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P14771146156259900238

namespace A349444

/-- `∑{d}[n+1, A154955(#)*A349136((n+1)/#)]` -/
def P14771146156259900238.Spec : Prop :=
  ∀ n, P14771146156259900238.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P13691280376783843670

`∑{d}[n+1, A319997(#)*A349447((n+1)/#)]`
-/

namespace A349444.P13691280376783843670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A349447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P13691280376783843670

namespace A349444

/-- `∑{d}[n+1, A319997(#)*A349447((n+1)/#)]` -/
def P13691280376783843670.Spec : Prop :=
  ∀ n, P13691280376783843670.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P6208543553607168405

`∑{d}[n+1, A326305(#)*A349431((n+1)/#)]`
-/

namespace A349444.P6208543553607168405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P6208543553607168405

namespace A349444

/-- `∑{d}[n+1, A326305(#)*A349431((n+1)/#)]` -/
def P6208543553607168405.Spec : Prop :=
  ∀ n, P6208543553607168405.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P14288512026447874611

`∑{d}[n+1, A008683(#)*A027656((n+1)/#-1)]`
-/

namespace A349444.P14288512026447874611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A027656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A349444.P14288512026447874611

namespace A349444

/-- `∑{d}[n+1, A008683(#)*A027656((n+1)/#-1)]` -/
def P14288512026447874611.Spec : Prop :=
  ∀ n, P14288512026447874611.a n = A349444 (n + 1)

end A349444

/-! ## A349444.P1151823911170374389

`(A319997(A140434(n+1))+A319997(n+1))/2`
-/

namespace A349444.P1151823911170374389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (A140434 (n + 1)).toNat + A319997 (n + 1) : ℚ) / 2

end

end A349444.P1151823911170374389

namespace A349444

/-- `(A319997(A140434(n+1))+A319997(n+1))/2` -/
def P1151823911170374389.Spec : Prop :=
  ∀ n, P1151823911170374389.a n = (A349444 (n + 1) : ℚ)

end A349444

/-! ## A349444.P8137072927904322662

`A319997(n+1)/(2-A000035(A000010(n+1)))`
-/

namespace A349444.P8137072927904322662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (2 - A000035 (A000010 (n + 1)).toNat : ℚ)

end

end A349444.P8137072927904322662

namespace A349444

/-- `A319997(n+1)/(2-A000035(A000010(n+1)))` -/
def P8137072927904322662.Spec : Prop :=
  ∀ n, P8137072927904322662.a n = (A349444 (n + 1) : ℚ)

end A349444

/-!
# A349445: Dirichlet convolution of A001511 (the 2-adic valuation of 2n) with A349134.

The programs for A349445, there is no canonical definition to state claims against.
-/

/-! ## A349445.P14463462078067177501

`∑{d}[A000265(n+1), A349134(#)]`
-/

namespace A349445.P14463462078067177501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349134 d

end

end A349445.P14463462078067177501

/-! ## A349445.P10424738289435650025

`A349446(n+1)-A349444(n+1)`
-/

namespace A349445.P10424738289435650025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349446 (n + 1) - A349444 (n + 1)

end

end A349445.P10424738289435650025

/-! ## A349445.P15891300519984239017

`∑{d}[n+1, A000203(#)*A349353((n+1)/#)]`
-/

namespace A349445.P15891300519984239017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349445.P15891300519984239017

/-! ## A349445.P7365464530374721393

`∑{d}[n+1, A000005(#)*A349915((n+1)/#)]`
-/

namespace A349445.P7365464530374721393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349445.P7365464530374721393

/-! ## A349445.P1816352997858170229

`∑{d}[n+1, A001511(#)*A349134((n+1)/#)]`
-/

namespace A349445.P1816352997858170229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349445.P1816352997858170229

/-! ## A349445.P13196147015592874745

`∑{d}[n+1, A038712(#)*A349344((n+1)/#)]`
-/

namespace A349445.P13196147015592874745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349445.P13196147015592874745

/-! ## A349445.P14939420532664406764

`∑{d}[n+1, A115364(#)*A349346((n+1)/#)]`
-/

namespace A349445.P14939420532664406764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115364 d * A349346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349445.P14939420532664406764

/-! ## A349445.P10579874827063830526

`A349446(4*(n+1))`
-/

namespace A349445.P10579874827063830526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349446 (4 * (n + 1))

end

end A349445.P10579874827063830526

/-!
# A349446: a(n) = A349444(n) + A349445(n).

The programs for A349446, there is no canonical definition to state claims against.
-/

/-! ## A349446.P9498710356298619077

`A349444(n+1)+A349445(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349446.P9498710356298619077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (n + 1) + A349445 (n + 1)

end

end A349446.P9498710356298619077

/-! ## A349446.P8523539479465701460

`A349445(n+1)+A319997(n+1)/A152765(n)`
-/

namespace A349446.P8523539479465701460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349445 (n + 1) : ℚ) + (A319997 (n + 1) : ℚ) / (A152765 n : ℚ)

end

end A349446.P8523539479465701460

/-! ## A349446.P16390297092409170301

`A349445(n+1)+A319997(n+1)/A185049(n+1)`
-/

namespace A349446.P16390297092409170301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349445 (n + 1) : ℚ) + (A319997 (n + 1) : ℚ) / (A185049 (n + 1) : ℚ)

end

end A349446.P16390297092409170301

/-! ## A349446.P17183201070611523556

`A349445(n+1)+∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`
-/

namespace A349446.P17183201070611523556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349445 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349446.P17183201070611523556

/-! ## A349446.P8609776968316619395

`A349445(n+1)+∑{d}[n+1, A326305(#)*A349431((n+1)/#)]`
-/

namespace A349446.P8609776968316619395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349445 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A326305 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349446.P8609776968316619395

/-! ## A349446.P15076419393929596867

`A349445(n+1)+A319997(n+1)/(2-A000035(A000010(n+1)))`
-/

namespace A349446.P15076419393929596867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349445 (n + 1) : ℚ) + (A319997 (n + 1) : ℚ) / (2 - A000035 (A000010 (n + 1)).toNat : ℚ)

end

end A349446.P15076419393929596867

/-!
# A349447: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A326937 (Dirichlet inverse of A000265).

The programs for A349447, the canonical program `A349447.P12875644134240434181` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349447 has offset 1).

The definition of A349447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349447.P2683582864646645616

`log2(gcd(2, n))*A325887(n+1)`
-/

namespace A349447.P2683582864646645616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A325887 (n + 1) : ℝ)

end

end A349447.P2683582864646645616

namespace A349447

/-- `log2(gcd(2, n))*A325887(n+1)` -/
def P2683582864646645616.Spec : Prop :=
  ∀ n, P2683582864646645616.a n = (A349447 (n + 1) : ℝ)

end A349447

/-! ## A349447.P18143670415398537393

`char[2*n]*A349431(n+1)`
-/

namespace A349447.P18143670415398537393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A349431 (n + 1)

end

end A349447.P18143670415398537393

namespace A349447

/-- `char[2*n]*A349431(n+1)` -/
def P18143670415398537393.Spec : Prop :=
  ∀ n, P18143670415398537393.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P12875644134240434181

`(n+1)%2*A297381(2*(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349447

/-- `(n+1)%2*A297381(2*(n+1))` -/
def P12875644134240434181.Spec : Prop :=
  ∀ n, P12875644134240434181.a n = A349447 (n + 1)

theorem P12875644134240434181.correct : P12875644134240434181.Spec := by
  intro n
  simp only [A349447, Nat.add_sub_cancel]

end A349447

/-! ## A349447.P16026620065477280044

`A059841(n)*A325887(n+1)`
-/

namespace A349447.P16026620065477280044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A325887 (n + 1)

end

end A349447.P16026620065477280044

namespace A349447

/-- `A059841(n)*A325887(n+1)` -/
def P16026620065477280044.Spec : Prop :=
  ∀ n, P16026620065477280044.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P5256993442895273262

`and(A105812(n), A325887(n+1))`
-/

namespace A349447.P5256993442895273262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A325887 (n + 1))

end

end A349447.P5256993442895273262

namespace A349447

/-- `and(A105812(n), A325887(n+1))` -/
def P5256993442895273262.Spec : Prop :=
  ∀ n, P5256993442895273262.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P10311874033944179139

`∑{d}[n+1, A055615(#)*A109168((n+1)/#)]`
-/

namespace A349447.P10311874033944179139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A109168 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P10311874033944179139

namespace A349447

/-- `∑{d}[n+1, A055615(#)*A109168((n+1)/#)]` -/
def P10311874033944179139.Spec : Prop :=
  ∀ n, P10311874033944179139.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P17730163486158261430

`∑{d}[n+1, A055615(#)*A140472((n+1)/#)]`
-/

namespace A349447.P17730163486158261430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A140472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P17730163486158261430

namespace A349447

/-- `∑{d}[n+1, A055615(#)*A140472((n+1)/#)]` -/
def P17730163486158261430.Spec : Prop :=
  ∀ n, P17730163486158261430.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P7418192524961600307

`∑{d}[n+1, A003602(#)*A326937((n+1)/#)]`
-/

namespace A349447.P7418192524961600307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A326937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P7418192524961600307

namespace A349447

/-- `∑{d}[n+1, A003602(#)*A326937((n+1)/#)]` -/
def P7418192524961600307.Spec : Prop :=
  ∀ n, P7418192524961600307.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P8847616881535099837

`∑{d}[n+1, A113415(#)*A327278((n+1)/#)]`
-/

namespace A349447.P8847616881535099837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113415 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P8847616881535099837

namespace A349447

/-- `∑{d}[n+1, A113415(#)*A327278((n+1)/#)]` -/
def P8847616881535099837.Spec : Prop :=
  ∀ n, P8847616881535099837.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P14213727847760692833

`∑{d}[n+1, A349373(#)*A361984((n+1)/#)]`
-/

namespace A349447.P14213727847760692833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349373 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P14213727847760692833

namespace A349447

/-- `∑{d}[n+1, A349373(#)*A361984((n+1)/#)]` -/
def P14213727847760692833.Spec : Prop :=
  ∀ n, P14213727847760692833.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P6194164355562262131

`∑{d}[n+1, A027656(#-1)*A349343((n+1)/#)]`
-/

namespace A349447.P6194164355562262131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027656 (d - 1) * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P6194164355562262131

namespace A349447

/-- `∑{d}[n+1, A027656(#-1)*A349343((n+1)/#)]` -/
def P6194164355562262131.Spec : Prop :=
  ∀ n, P6194164355562262131.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P4167907283263551120

`A349431(n+1)*A349448(A006519(n+1))`
-/

namespace A349447.P4167907283263551120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1) * A349448 (A006519 (n + 1)).toNat

end

end A349447.P4167907283263551120

namespace A349447

/-- `A349431(n+1)*A349448(A006519(n+1))` -/
def P4167907283263551120.Spec : Prop :=
  ∀ n, P4167907283263551120.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P8420503245839985152

`A059841(n)*A349431(n+1)*A059841(n)`
-/

namespace A349447.P8420503245839985152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A349431 (n + 1) * A059841 n

end

end A349447.P8420503245839985152

namespace A349447

/-- `A059841(n)*A349431(n+1)*A059841(n)` -/
def P8420503245839985152.Spec : Prop :=
  ∀ n, P8420503245839985152.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P306679041592772840

`(A353675(n+1)+A353673(n+1))*A325887(n+1)`
-/

namespace A349447.P306679041592772840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353675 (n + 1) + A353673 (n + 1)) * A325887 (n + 1)

end

end A349447.P306679041592772840

namespace A349447

/-- `(A353675(n+1)+A353673(n+1))*A325887(n+1)` -/
def P306679041592772840.Spec : Prop :=
  ∀ n, P306679041592772840.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P16185158289604095688

`(A353674(n+2)+A353672(n+2))*A325887(n+1)`
-/

namespace A349447.P16185158289604095688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353674 (n + 2) + A353672 (n + 2)) * A325887 (n + 1)

end

end A349447.P16185158289604095688

namespace A349447

/-- `(A353674(n+2)+A353672(n+2))*A325887(n+1)` -/
def P16185158289604095688.Spec : Prop :=
  ∀ n, P16185158289604095688.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P15017143143203480838

`A000035(n+1)*A325887(n+1)`
-/

namespace A349447.P15017143143203480838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A325887 (n + 1)

end

end A349447.P15017143143203480838

namespace A349447

/-- `A000035(n+1)*A325887(n+1)` -/
def P15017143143203480838.Spec : Prop :=
  ∀ n, P15017143143203480838.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P18359875332965477294

`A066840(2*(n+1))-A340714(2*(n+1))/2`
-/

namespace A349447.P18359875332965477294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066840 (2 * (n + 1)) : ℚ) - (A340714 (2 * (n + 1)) : ℚ) / 2

end

end A349447.P18359875332965477294

namespace A349447

/-- `A066840(2*(n+1))-A340714(2*(n+1))/2` -/
def P18359875332965477294.Spec : Prop :=
  ∀ n, P18359875332965477294.a n = (A349447 (n + 1) : ℚ)

end A349447

/-! ## A349447.P4616167472867551596

`A325887(n+1)%A052552(n)`
-/

namespace A349447.P4616167472867551596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325887 (n + 1)) (A052552 n)

end

end A349447.P4616167472867551596

namespace A349447

/-- `A325887(n+1)%A052552(n)` -/
def P4616167472867551596.Spec : Prop :=
  ∀ n, P4616167472867551596.a n = A349447 (n + 1)

end A349447

/-! ## A349447.P6771141909686166196

`A349431(n+1)%A052552(n)`
-/

namespace A349447.P6771141909686166196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349431 (n + 1)) (A052552 n)

end

end A349447.P6771141909686166196

namespace A349447

/-- `A349431(n+1)%A052552(n)` -/
def P6771141909686166196.Spec : Prop :=
  ∀ n, P6771141909686166196.a n = A349447 (n + 1)

end A349447

/-!
# A349448: Dirichlet convolution of A000265 (odd part of n) with A349134.

The programs for A349448, there is no canonical definition to state claims against.
-/

/-! ## A349448.P2353038178658686893

`log2(gcd(2, n))*A349432(n+1)`
-/

namespace A349448.P2353038178658686893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A349432 (n + 1) : ℝ)

end

end A349448.P2353038178658686893

/-! ## A349448.P6104005975482786992

`∑{d}[n+1, #*A349344((n+1)/#)]`
-/

namespace A349448.P6104005975482786992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349448.P6104005975482786992

/-! ## A349448.P9165268132961587319

`A059841(n)*A349432(n+1)`
-/

namespace A349448.P9165268132961587319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A349432 (n + 1)

end

end A349448.P9165268132961587319

/-! ## A349448.P548338623677532279

`(1-A000035(n))*A349432(n+1)`
-/

namespace A349448.P548338623677532279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A349432 (n + 1)

end

end A349448.P548338623677532279

/-! ## A349448.P12360868681919457437

`(1-A134451(n))*A349445(n+1)`
-/

namespace A349448.P12360868681919457437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A134451 n) * A349445 (n + 1)

end

end A349448.P12360868681919457437

/-! ## A349448.P11168113413147087993

`∑{d}[n+1, A000265(#)*A349134((n+1)/#)]`
-/

namespace A349448.P11168113413147087993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349448.P11168113413147087993

/-! ## A349448.P16447109908409227848

`∑{d}[n+1, A000593(#)*A349915((n+1)/#)]`
-/

namespace A349448.P16447109908409227848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349448.P16447109908409227848

/-! ## A349448.P18207927752798531815

`∑{d}[n+1, A245579(#)*A349353((n+1)/#)]`
-/

namespace A349448.P18207927752798531815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d * A349353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349448.P18207927752798531815

/-! ## A349448.P7140613409494890324

`∑{d}[n+1, A319997(#)*A349445((n+1)/#)]`
-/

namespace A349448.P7140613409494890324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A349445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349448.P7140613409494890324

/-! ## A349448.P9832556713322633820

`A349432(n+1)/A349431(n+1)*A349447(n+1)`
-/

namespace A349448.P9832556713322633820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349432 (n + 1) : ℚ) / (A349431 (n + 1) : ℚ) * (A349447 (n + 1) : ℚ)

end

end A349448.P9832556713322633820

/-! ## A349448.P1476378163515636624

`A000035(n+1)*A349432(n+1)`
-/

namespace A349448.P1476378163515636624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A349432 (n + 1)

end

end A349448.P1476378163515636624

/-! ## A349448.P7258971646898989505

`A349432(n+1)%A052552(n)`
-/

namespace A349448.P7258971646898989505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349432 (n + 1)) (A052552 n)

end

end A349448.P7258971646898989505

/-! ## A349448.P3564815982335570777

`and(1, A080041(n))*A349432(n+1)`
-/

namespace A349448.P3564815982335570777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080041 n) * A349432 (n + 1)

end

end A349448.P3564815982335570777

/-!
# A349449: Dirichlet inverse of Catalan numbers, when started from A000108(1): 1, 2, 5, 14, 42, ...

The programs for A349449, there is no canonical definition to state claims against.
-/

/-! ## A349449.P8326439795975381352

`A349354(n+1)-A000108(A065666(n+1))`
-/

namespace A349449.P8326439795975381352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (n + 1) - A000108 (A065666 (n + 1)).toNat

end

end A349449.P8326439795975381352

/-! ## A349449.P11124434611410124326

`A353451(n+7)-A334267(A000051(n))`
-/

namespace A349449.P11124434611410124326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353451 (n + 7) - A334267 (A000051 n).toNat

end

end A349449.P11124434611410124326

/-!
# A349450: Dirichlet inverse of right-shifted Catalan numbers [as when started from A000108(0): 1, 1, 2, 5, 14, 42, etc.].

The programs for A349450, there is no canonical definition to state claims against.
-/

/-! ## A349450.P4660615074101301571

`∑{d}[n+1, A349452(#)*A349564((n+1)/#)]`
-/

namespace A349450.P4660615074101301571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349452 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349450.P4660615074101301571

/-! ## A349450.P16377403643851649844

`A347083(n+1)-A284731(A133263(n))`
-/

namespace A349450.P16377403643851649844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347083 (n + 1) - A284731 (A133263 n).toNat

end

end A349450.P16377403643851649844

/-! ## A349450.P1732843695529006570

`A024316(A057096(n+3))-A000108(n)`
-/

namespace A349450.P1732843695529006570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A057096 (n + 3)).toNat - A000108 n

end

end A349450.P1732843695529006570

/-!
# A349451: Dirichlet inverse of Fibonacci numbers, when started from A000045(1): 1, 1, 2, 3, 5, 8, 13, 21, ...

The programs for A349451, there is no canonical definition to state claims against.
-/

/-! ## A349451.P3217663258957511091

`∑{d}[n+1, A349452(#)*A349566((n+1)/#)]`
-/

namespace A349451.P3217663258957511091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349452 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349451.P3217663258957511091

/-!
# A349452: Dirichlet inverse of A011782, 2^(n-1).

The programs for A349452, there is no canonical definition to state claims against.
-/

/-! ## A349452.P8023366992040098429

`∑{d}[n+1, A055615(#)*A349569((n+1)/#)]`
-/

namespace A349452.P8023366992040098429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349452.P8023366992040098429

/-! ## A349452.P7593288342182049338

`∑{d}[n+1, A349451(#)*A349565((n+1)/#)]`
-/

namespace A349452.P7593288342182049338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349451 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349452.P7593288342182049338

/-! ## A349452.P2936663248702207032

`∑{d}[n+1, A349453(#)*A349567((n+1)/#)]`
-/

namespace A349452.P2936663248702207032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349453 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349452.P2936663248702207032

/-! ## A349452.P79427413717326690

`∑{d}[n+1, A349450(#)*A349563((n+1)/#)]`
-/

namespace A349452.P79427413717326690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349450 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349452.P79427413717326690

/-!
# A349453: Dirichlet inverse of A133494, 3^(n-1).

The programs for A349453, there is no canonical definition to state claims against.
-/

/-! ## A349453.P14551139856129746484

`∑{d}[n+1, A349452(#)*A349568((n+1)/#)]`
-/

namespace A349453.P14551139856129746484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349452 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349453.P14551139856129746484

/-!
# A349454: Number T(n,k) of endofunctions on [n] with exactly k fixed points, all of which are isolated; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A349454, the canonical program `A349454.P16959864230954960443` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349454 has offset 0).

The definition of A349454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349454.P16959864230954960443

`C(row(n), col(n))*(row(n)-col(n)-1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349454

/-- `C(row(n), col(n))*(row(n)-col(n)-1)^(row(n)-col(n))` -/
def P16959864230954960443.Spec : Prop :=
  ∀ n, P16959864230954960443.a n = (A349454 n : ℚ)

end A349454

/-! ## A349454.P13824410521446832784

`(1-A025581(n))*A215534(n)`
-/

namespace A349454.P13824410521446832784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A215534 n

end

end A349454.P13824410521446832784

namespace A349454

/-- `(1-A025581(n))*A215534(n)` -/
def P13824410521446832784.Spec : Prop :=
  ∀ n, P13824410521446832784.a n = A349454 n

end A349454

/-! ## A349454.P1551802797389861670

`A007318(n)*A065440(A025581(n))`
-/

namespace A349454.P1551802797389861670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A065440 (A025581 n).toNat

end

end A349454.P1551802797389861670

namespace A349454

/-- `A007318(n)*A065440(A025581(n))` -/
def P1551802797389861670.Spec : Prop :=
  ∀ n, P1551802797389861670.a n = A349454 n

end A349454

/-! ## A349454.P7539831300911629064

`A024000(A025581(n))*A215534(n)`
-/

namespace A349454.P7539831300911629064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A025581 n).toNat * A215534 n

end

end A349454.P7539831300911629064

namespace A349454

/-- `A024000(A025581(n))*A215534(n)` -/
def P7539831300911629064.Spec : Prop :=
  ∀ n, P7539831300911629064.a n = A349454 n

end A349454

/-! ## A349454.P11305346361733498702

`A065440(A025581(n))/2*A028326(n)`
-/

namespace A349454.P11305346361733498702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065440 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A349454.P11305346361733498702

namespace A349454

/-- `A065440(A025581(n))/2*A028326(n)` -/
def P11305346361733498702.Spec : Prop :=
  ∀ n, P11305346361733498702.a n = (A349454 n : ℚ)

end A349454

/-! ## A349454.P6736791029518076604

`A007318(n)*A065440(A003056(n)-A002262(n))`
-/

namespace A349454.P6736791029518076604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A065440 (A003056 n - A002262 n).toNat

end

end A349454.P6736791029518076604

namespace A349454

/-- `A007318(n)*A065440(A003056(n)-A002262(n))` -/
def P6736791029518076604.Spec : Prop :=
  ∀ n, P6736791029518076604.a n = A349454 n

end A349454

/-! ## A349454.P11320476774322124026

`A001281(A028326(n))*A065440(A025581(n))`
-/

namespace A349454.P11320476774322124026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 n).toNat * A065440 (A025581 n).toNat

end

end A349454.P11320476774322124026

namespace A349454

/-- `A001281(A028326(n))*A065440(A025581(n))` -/
def P11320476774322124026.Spec : Prop :=
  ∀ n, P11320476774322124026.a n = A349454 n

end A349454

/-!
# A349455: Members of A014574 with sum of prime factors (with multiplicity) also in A014574.

The programs for A349455, there is no canonical definition to state claims against.
-/

/-! ## A349455.P12978921401648084449

`A002322(A334086(n+1)+A116430(n))`
-/

namespace A349455.P12978921401648084449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A334086 (n + 1) + A116430 n).toNat

end

end A349455.P12978921401648084449

/-!
# A349456: Number of singular positroid varieties corresponding to derangements in S_n.

The programs for A349456, there is no canonical definition to state claims against.
-/

/-! ## A349456.P2409064167197848250

`A000166(n)-A349413(n)`
-/

namespace A349456.P2409064167197848250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A349413 n

end

end A349456.P2409064167197848250

/-! ## A349456.P3115456858250617511

`A260094(n)-A349413(n)`
-/

namespace A349456.P3115456858250617511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260094 n - A349413 n

end

end A349456.P3115456858250617511

/-! ## A349456.P6236277964944925385

`A260111(n)-A349413(n)`
-/

namespace A349456.P6236277964944925385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260111 n - A349413 n

end

end A349456.P6236277964944925385

/-! ## A349456.P2399528303034006814

`A260115(n)-A349413(n)`
-/

namespace A349456.P2399528303034006814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260115 n - A349413 n

end

end A349456.P2399528303034006814

/-! ## A349456.P15502295682772360831

`A260092(n)-A389245(n)`
-/

namespace A349456.P15502295682772360831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260092 n - A389245 n

end

end A349456.P15502295682772360831

/-!
# A349457: Number of singular positroids in the Grassmannian variety Gr(k,n) for a fixed n and any 0 <= k <= n.

The programs for A349457, there is no canonical definition to state claims against.
-/

/-! ## A349457.P12452190093436509173

`A000522(n)-A349458(n)`
-/

namespace A349457.P12452190093436509173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - A349458 n

end

end A349457.P12452190093436509173

/-! ## A349457.P9352498189701105752

`A073107(∑[n])-A349458(n)`
-/

namespace A349457.P9352498189701105752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (∑ j ∈ Finset.range (n + 1), f1 j) - A349458 n

end

end A349457.P9352498189701105752

/-! ## A349457.P11643612325239198836

`A143409(∑[n])-A349458(n)`
-/

namespace A349457.P11643612325239198836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) - A349458 n

end

end A349457.P11643612325239198836

/-! ## A349457.P8434133188961300236

`Δ[A002104(n)]-A349458(n)`
-/

namespace A349457.P8434133188961300236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349458 n

end

end A349457.P8434133188961300236

/-!
# A349458: Number of smooth positroids in the Grassmannian variety Gr(k,n) for a fixed n and any 0 <= k <= n.

The programs for A349458, there is no canonical definition to state claims against.
-/

/-! ## A349458.P13906834284924625435

`A000522(n)-A349457(n)`
-/

namespace A349458.P13906834284924625435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - A349457 n

end

end A349458.P13906834284924625435

/-! ## A349458.P3281012912752835922

`A073107(∑[n])-A349457(n)`
-/

namespace A349458.P3281012912752835922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (∑ j ∈ Finset.range (n + 1), f1 j) - A349457 n

end

end A349458.P3281012912752835922

/-! ## A349458.P16315190204708353531

`A143409(∑[n])-A349457(n)`
-/

namespace A349458.P16315190204708353531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) - A349457 n

end

end A349458.P16315190204708353531

/-! ## A349458.P10919141342339250766

`Δ[A002104(n)]-A349457(n)`
-/

namespace A349458.P10919141342339250766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349457 n

end

end A349458.P10919141342339250766

/-!
# A349460: Squares composed of digits {0,2,4}.

The programs for A349460, there is no canonical definition to state claims against.
-/

/-! ## A349460.P13153580047878764097

`∩[A030098(n+1), A158082(n+1)]`
-/

namespace A349460.P13153580047878764097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349460.P13153580047878764097

/-! ## A349460.P1126020567115135706

`∩[2*A007089(n), n²]`
-/

namespace A349460.P1126020567115135706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007089 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A349460.P1126020567115135706

/-!
# A349461: Primes of the form m^2 + 9*m + 81.

The programs for A349461, the canonical program `A349461.P15065852097856036346` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349461 has offset 1).

The definition of A349461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349461.P15065852097856036346

`p?[∑[2*n]+61]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349461

/-- `p?[∑[2*n]+61]` -/
def P15065852097856036346.Spec : Prop :=
  ∀ n, (P15065852097856036346.a n : ℤ) = A349461 (n + 1)

theorem P15065852097856036346.correct : P15065852097856036346.Spec := by
  intro n
  simp only [A349461, Nat.add_sub_cancel]

end A349461

/-! ## A349461.P7922801337177986030

`or(1, p?[n²+61+n])`
-/

namespace A349461.P7922801337177986030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 61 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A349461.P7922801337177986030

namespace A349461

/-- `or(1, p?[n²+61+n])` -/
def P7922801337177986030.Spec : Prop :=
  ∀ n, (P7922801337177986030.a n : ℤ) = A349461 (n + 1)

end A349461

/-! ## A349461.P12261343160551833695

`record[A006530(n²+61+n)]`
-/

namespace A349461.P12261343160551833695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 61 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349461.P12261343160551833695

namespace A349461

/-- `record[A006530(n²+61+n)]` -/
def P12261343160551833695.Spec : Prop :=
  ∀ n, P12261343160551833695.a n = A349461 (n + 1)

end A349461

/-! ## A349461.P5110365735927122586

`record[A020639(n²+61+n)]`
-/

namespace A349461.P5110365735927122586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 61 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349461.P5110365735927122586

namespace A349461

/-- `record[A020639(n²+61+n)]` -/
def P5110365735927122586.Spec : Prop :=
  ∀ n, P5110365735927122586.a n = A349461 (n + 1)

end A349461

/-!
# A349462: The a_i coefficients of the standard form decomposition of U(1,X), the Ulam sequence starting with 1, X in the ordered abelian group of linear integer polynomials in X, where the ordering is lexicographical.

The programs for A349462, there is no canonical definition to state claims against.
-/

/-! ## A349462.P6707530000422422649

`A349464(n)-A088917(A303346(n))`
-/

namespace A349462.P6707530000422422649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349464 n - A088917 (A303346 n).toNat

end

end A349462.P6707530000422422649

/-! ## A349462.P6111909780581072063

`A260088(A243009(n+1))`
-/

namespace A349462.P6111909780581072063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A243009 (n + 1)).toNat

end

end A349462.P6111909780581072063

/-! ## A349462.P1035435372994117202

`A002265(A243009(n+1)^A351241(n+1))`
-/

namespace A349462.P1035435372994117202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A243009 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat

end

end A349462.P1035435372994117202

/-! ## A349462.P5438659905543853031

`A002265(A243009(n+1)%A151831(n+3))`
-/

namespace A349462.P5438659905543853031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A243009 (n + 1)) (A151831 (n + 3))).toNat

end

end A349462.P5438659905543853031

/-! ## A349462.P7172229235425298630

`A002265(A243009(n+1))%A154130(n+4)`
-/

namespace A349462.P7172229235425298630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A243009 (n + 1)).toNat) (A154130 (n + 4))

end

end A349462.P7172229235425298630

/-!
# A349463: The b_i coefficients of the standard form decomposition of U(1,X), the Ulam sequence starting with 1, X in the ordered abelian group of linear integer polynomials in X, where the ordering is lexicographical.

The programs for A349463, there is no canonical definition to state claims against.
-/

/-! ## A349463.P12348280944639872559

`A055642(A010026(2*(n+1)))-A157687(n+1)`
-/

namespace A349463.P12348280944639872559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A010026 (2 * (n + 1))).toNat - A157687 (n + 1)

end

end A349463.P12348280944639872559

/-! ## A349463.P3468707425580999497

`A216176(A093041(n+1))`
-/

namespace A349463.P3468707425580999497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216176 (A093041 (n + 1)).toNat

end

end A349463.P3468707425580999497

/-! ## A349463.P14297788799095589781

`A139352(A337659(n+1)+A131352(n))`
-/

namespace A349463.P14297788799095589781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A337659 (n + 1) + A131352 n).toNat

end

end A349463.P14297788799095589781

/-! ## A349463.P15203414946657453708

`A341675(A358908(n+4)+A078898(n))`
-/

namespace A349463.P15203414946657453708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A358908 (n + 4) + A078898 n).toNat

end

end A349463.P15203414946657453708

/-! ## A349463.P11663034854570255466

`A102671(A299256(n)*A332880(n+5))`
-/

namespace A349463.P11663034854570255466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A299256 n * A332880 (n + 5)).toNat

end

end A349463.P11663034854570255466

/-!
# A349464: The c_i coefficients of the standard form decomposition of U(1,X), the Ulam sequence starting with 1, X in the ordered abelian group of linear integer polynomials in X, where the ordering is lexicographical.

The programs for A349464, there is no canonical definition to state claims against.
-/

/-! ## A349464.P8073923737882401912

`A349462(n)+A088917(A303346(n))`
-/

namespace A349464.P8073923737882401912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 n + A088917 (A303346 n).toNat

end

end A349464.P8073923737882401912

/-! ## A349464.P14509239049848933473

`A260088(A243009(n+1))+A088917(A303346(n))`
-/

namespace A349464.P14509239049848933473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A243009 (n + 1)).toNat + A088917 (A303346 n).toNat

end

end A349464.P14509239049848933473

/-! ## A349464.P17738673727939157424

`A260088(A243009(n+1))+A088917(A248061(n+1))`
-/

namespace A349464.P17738673727939157424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A243009 (n + 1)).toNat + A088917 (A248061 (n + 1)).toNat

end

end A349464.P17738673727939157424

/-! ## A349464.P2538489947528141537

`A260088(A243009(n+1))+A088917(A340791(n+1))`
-/

namespace A349464.P2538489947528141537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A243009 (n + 1)).toNat + A088917 (A340791 (n + 1)).toNat

end

end A349464.P2538489947528141537

/-!
# A349466: Expansion of 1/((1-12*x)*(1-16*x)*(1-18*x)*(1-24*x)).

The programs for A349466, the canonical program `A349466.P901409884523713457` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349466 has offset 0).

The definition of A349466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349466.P901409884523713457

`24*24^n+64*2^(4*n)-81*18^n-6*12^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349466

/-- `24*24^n+64*2^(4*n)-81*18^n-6*12^n` -/
def P901409884523713457.Spec : Prop :=
  ∀ n, P901409884523713457.a n = A349466 n

theorem P901409884523713457.correct : P901409884523713457.Spec := by
  intro n
  simp only [A349466]

end A349466

/-! ## A349466.P16531753963504578630

`2^n*A028212(n)`
-/

namespace A349466.P16531753963504578630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028212 n

end

end A349466.P16531753963504578630

namespace A349466

/-- `2^n*A028212(n)` -/
def P16531753963504578630.Spec : Prop :=
  ∀ n, P16531753963504578630.a n = A349466 n

end A349466

/-! ## A349466.P1235893191643380081

`lcm(A000079(n), A028212(n))`
-/

namespace A349466.P1235893191643380081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A028212 n)

end

end A349466.P1235893191643380081

namespace A349466

/-- `lcm(A000079(n), A028212(n))` -/
def P1235893191643380081.Spec : Prop :=
  ∀ n, (P1235893191643380081.a n : ℤ) = A349466 n

end A349466

/-! ## A349466.P4258151319506796512

`A028212(n)*A054582(∑[n])`
-/

namespace A349466.P4258151319506796512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028212 n * A054582 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349466.P4258151319506796512

namespace A349466

/-- `A028212(n)*A054582(∑[n])` -/
def P4258151319506796512.Spec : Prop :=
  ∀ n, P4258151319506796512.a n = A349466 n

end A349466

/-! ## A349466.P2075028480281017012

`A028212(n)*A059268(A034856(n+1))`
-/

namespace A349466.P2075028480281017012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028212 n * A059268 (A034856 (n + 1)).toNat

end

end A349466.P2075028480281017012

namespace A349466

/-- `A028212(n)*A059268(A034856(n+1))` -/
def P2075028480281017012.Spec : Prop :=
  ∀ n, P2075028480281017012.a n = A349466 n

end A349466

/-! ## A349466.P8544439371612884587

`A007318(∑[n])*A028212(n)*A000079(n)`
-/

namespace A349466.P8544439371612884587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A028212 n * A000079 n

end

end A349466.P8544439371612884587

namespace A349466

/-- `A007318(∑[n])*A028212(n)*A000079(n)` -/
def P8544439371612884587.Spec : Prop :=
  ∀ n, P8544439371612884587.a n = A349466 n

end A349466

/-!
# A349467: Numbers k such that A349410(k) = 1.

The programs for A349467, there is no canonical definition to state claims against.
-/

/-! ## A349467.P15240325773039681627

`eq[1, A349410(n+1)]+1`
-/

namespace A349467.P15240325773039681627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349467.P15240325773039681627

/-! ## A349467.P10771919023683600786

`record[A000027(n+1)/A349410(n+1)]`
-/

namespace A349467.P10771919023683600786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A349410 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P10771919023683600786

/-! ## A349467.P8616728672535664247

`record[root(A130446(n+1), A349410(n+1))]`
-/

namespace A349467.P8616728672535664247
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130446 (n + 1) : ℝ) ^ (1 / (A349410 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P8616728672535664247

/-! ## A349467.P10424944020658533149

`record[root(A008619(2*n), A349410(n+1))]`
-/

namespace A349467.P10424944020658533149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℝ) ^ (1 / (A349410 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P10424944020658533149

/-! ## A349467.P2807065828210061792

`eq[A054977(n), A349410(A028310(n))]`
-/

namespace A349467.P2807065828210061792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349467.P2807065828210061792

/-! ## A349467.P17676959560925076042

`eq[A057427(n), A349410(A028310(n))]`
-/

namespace A349467.P17676959560925076042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349467.P17676959560925076042

/-! ## A349467.P4912772761187609880

`record[A006949(n)/A349410(A006949(n))]`
-/

namespace A349467.P4912772761187609880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006949 n : ℚ) / (A349410 (A006949 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P4912772761187609880

/-! ## A349467.P8599432225130697855

`record[A008619(n)/A349410(A008619(n))]`
-/

namespace A349467.P8599432225130697855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A349410 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P8599432225130697855

/-! ## A349467.P17832069716447425459

`record[A065033(n)/A349410(A065033(n))]`
-/

namespace A349467.P17832069716447425459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A349410 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349467.P17832069716447425459

/-!
# A349468: a(n) = (4*n)! / (n! * (2*n)!).

The programs for A349468, the canonical program `A349468.P13649440491470996391` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349468 has offset 0).

The definition of A349468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349468.P14949337212695836062

`n!*A000897(n)`
-/

namespace A349468.P14949337212695836062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000897 n

end

end A349468.P14949337212695836062

namespace A349468

/-- `n!*A000897(n)` -/
def P14949337212695836062.Spec : Prop :=
  ∀ n, P14949337212695836062.a n = A349468 n

end A349468

/-! ## A349468.P13649440491470996391

`A001448(n)*A001813(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349468

/-- `A001448(n)*A001813(n)` -/
def P13649440491470996391.Spec : Prop :=
  ∀ n, P13649440491470996391.a n = A349468 n

theorem P13649440491470996391.correct : P13649440491470996391.Spec := by
  intro n
  simp only [A349468]

end A349468

/-! ## A349468.P15002768209078297482

`A009120(n)/n!`
-/

namespace A349468.P15002768209078297482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009120 n : ℚ) / (Nat.factorial n : ℚ)

end

end A349468.P15002768209078297482

namespace A349468

/-- `A009120(n)/n!` -/
def P15002768209078297482.Spec : Prop :=
  ∀ n, P15002768209078297482.a n = (A349468 n : ℚ)

end A349468

/-! ## A349468.P928763095620432651

`A166338(n)/(2*n)!`
-/

namespace A349468.P928763095620432651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166338 n : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A349468.P928763095620432651

namespace A349468

/-- `A166338(n)/(2*n)!` -/
def P928763095620432651.Spec : Prop :=
  ∀ n, P928763095620432651.a n = (A349468 n : ℚ)

end A349468

/-! ## A349468.P6722521204235903172

`(4*n)!/(n!*(2*n)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349468.P6722521204235903172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n * Nat.factorial (2 * n) : ℚ)

end

end A349468.P6722521204235903172

namespace A349468

/-- `(4*n)!/(n!*(2*n)!)` -/
def P6722521204235903172.Spec : Prop :=
  ∀ n, P6722521204235903172.a n = (A349468 n : ℚ)

end A349468

/-!
# A349469: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s-1)*zeta(s-3)/(zeta(s-2))^2.

The programs for A349469, the canonical program `A349469.P7810597205795784660` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349469 has offset 1).

The definition of A349469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340850, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349469.P7810597205795784660

`(n+1)*A340850(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349469

/-- `(n+1)*A340850(n+1)` -/
def P7810597205795784660.Spec : Prop :=
  ∀ n, P7810597205795784660.a n = A349469 (n + 1)

theorem P7810597205795784660.correct : P7810597205795784660.Spec := by
  intro n
  simp only [A349469, Nat.add_sub_cancel]

end A349469

/-! ## A349469.P7428415169380866433

`∑{d}[n+1, (n+1)*#*A007431(#)]`
-/

namespace A349469.P7428415169380866433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ((d : ℤ) * A007431 d)

end

end A349469.P7428415169380866433

namespace A349469

/-- `∑{d}[n+1, (n+1)*#*A007431(#)]` -/
def P7428415169380866433.Spec : Prop :=
  ∀ n, P7428415169380866433.a n = A349469 (n + 1)

end A349469

/-! ## A349469.P13196688806815514853

`∑{d}[n+1, A068963(#)*A328502((n+1)/#)]`
-/

namespace A349469.P13196688806815514853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349469.P13196688806815514853

namespace A349469

/-- `∑{d}[n+1, A068963(#)*A328502((n+1)/#)]` -/
def P13196688806815514853.Spec : Prop :=
  ∀ n, P13196688806815514853.a n = A349469 (n + 1)

end A349469

/-! ## A349469.P5700222924503785119

`(n+1)*∑{d}[A003557(n+1), A000010((n+1)/#)²]`
-/

namespace A349469.P5700222924503785119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2)

end

end A349469.P5700222924503785119

namespace A349469

/-- `(n+1)*∑{d}[A003557(n+1), A000010((n+1)/#)²]` -/
def P5700222924503785119.Spec : Prop :=
  ∀ n, P5700222924503785119.a n = A349469 (n + 1)

end A349469

/-! ## A349469.P4487800203994030040

`A002618(n+1)/A001615(n+1)*A191414(n+1)`
-/

namespace A349469.P4487800203994030040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A191414 (n + 1) : ℚ)

end

end A349469.P4487800203994030040

namespace A349469

/-- `A002618(n+1)/A001615(n+1)*A191414(n+1)` -/
def P4487800203994030040.Spec : Prop :=
  ∀ n, P4487800203994030040.a n = (A349469 (n + 1) : ℚ)

end A349469

/-! ## A349469.P4918298627561158240

`(∑{d}[n+1, A055615(#)*A057660((n+1)/#)]+A008683(12*n+8))*(n+1)`
-/

namespace A349469.P4918298627561158240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A055615 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + A008683 (12 * n + 8)) * (n + 1 : ℤ)

end

end A349469.P4918298627561158240

namespace A349469

/-- `(∑{d}[n+1, A055615(#)*A057660((n+1)/#)]+A008683(12*n+8))*(n+1)` -/
def P4918298627561158240.Spec : Prop :=
  ∀ n, P4918298627561158240.a n = A349469 (n + 1)

end A349469

/-! ## A349469.P1324081590258568798

`(n+1)*∏{p}[n+1, #-1]*A206369((n+1)²/∏{p}[n+1, #])`
-/

namespace A349469.P1324081590258568798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A206369 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A349469.P1324081590258568798

namespace A349469

/-- `(n+1)*∏{p}[n+1, #-1]*A206369((n+1)²/∏{p}[n+1, #])` -/
def P1324081590258568798.Spec : Prop :=
  ∀ n, P1324081590258568798.a n = A349469 (n + 1)

end A349469

/-!
# A349470: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(k*n,n).

The programs for A349470, there is no canonical definition to state claims against.
-/

/-! ## A349470.P17470588996935764367

`A349480(n)/n!`
-/

namespace A349470.P17470588996935764367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349480 n : ℚ) / (Nat.factorial n : ℚ)

end

end A349470.P17470588996935764367

/-! ## A349470.P14517736935106340067

`A349480(n)/A000142(n)`
-/

namespace A349470.P14517736935106340067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349480 n : ℚ) / (A000142 n : ℚ)

end

end A349470.P14517736935106340067

/-! ## A349470.P9193099600325770009

`A349480(n)/∏[A028310(n)]`
-/

namespace A349470.P9193099600325770009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349480 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A349470.P9193099600325770009

/-! ## A349470.P5749073075190399785

`A349480(n)/A174298(A000217(n))`
-/

namespace A349470.P5749073075190399785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349480 n : ℚ) / (A174298 (A000217 n).toNat : ℚ)

end

end A349470.P5749073075190399785

/-!
# A349471: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(k*n,k).

The programs for A349471, there is no canonical definition to state claims against.
-/

/-! ## A349471.P9992869230313851596

`A317792(∑[n])-round(sqrt(n))`
-/

namespace A349471.P9992869230313851596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317792 (∑ j ∈ Finset.range (n + 1), f1 j) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A349471.P9992869230313851596

/-!
# A349473: Irregular triangle read by rows: the n-th row contains the elements in the continued fraction of the harmonic mean of the divisors of n.

The programs for A349473, there is no canonical definition to state claims against.
-/

/-! ## A349473.P2293198758085405535

`gcd(∑[n], A000005(A102288(n+4)))`
-/

namespace A349473.P2293198758085405535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000005 (A102288 (n + 4)).toNat)

end

end A349473.P2293198758085405535

/-! ## A349473.P18112309269365370599

`gcd(∑[n+6], A000688(A258879(n+1)))`
-/

namespace A349473.P18112309269365370599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000688 (A258879 (n + 1)).toNat)

end

end A349473.P18112309269365370599

/-! ## A349473.P16990871281493139746

`A325518(A020701(n)+A008578(n+1))`
-/

namespace A349473.P16990871281493139746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (A020701 n + A008578 (n + 1)).toNat

end

end A349473.P16990871281493139746

/-! ## A349473.P13784333908729507334

`A212811(A028310(n)*A295416(n+1))`
-/

namespace A349473.P13784333908729507334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212811 (A028310 n * A295416 (n + 1)).toNat

end

end A349473.P13784333908729507334

/-! ## A349473.P11213643416138871012

`A269977(A048849(n+1)+A007376(n))`
-/

namespace A349473.P11213643416138871012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269977 (A048849 (n + 1) + A007376 n).toNat

end

end A349473.P11213643416138871012

/-!
# A349474: a(n) is the length of the continued fraction of the harmonic mean of the divisors of n.

The programs for A349474, there is no canonical definition to state claims against.
-/

/-! ## A349474.P4617223103998528531

`A002828(A091808(n+1)+A048793(n))`
-/

namespace A349474.P4617223103998528531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A091808 (n + 1) + A048793 n).toNat

end

end A349474.P4617223103998528531

/-! ## A349474.P14500266606711551609

`A087117(A182028(n+1)+A144081(3*n+1))`
-/

namespace A349474.P14500266606711551609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A182028 (n + 1) + A144081 (3 * n + 1)).toNat

end

end A349474.P14500266606711551609

/-! ## A349474.P17959111243085062119

`A193929(A015801(n+1)-A133732(2*(n+2)))`
-/

namespace A349474.P17959111243085062119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A015801 (n + 1) - A133732 (2 * (n + 2))).toNat

end

end A349474.P17959111243085062119

/-! ## A349474.P6399910866325975084

`A001221(A369177(n+1)+A129682(n+4)-A003002(n))`
-/

namespace A349474.P6399910866325975084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A369177 (n + 1) + (A129682 (n + 4) - A003002 n)).toNat

end

end A349474.P6399910866325975084

/-! ## A349474.P8875337506465011452

`A202085(A302081(n+1))%5`
-/

namespace A349474.P8875337506465011452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202085 (A302081 (n + 1)).toNat) 5

end

end A349474.P8875337506465011452

/-!
# A349476: Numbers k such that the continued fraction of the harmonic mean of the divisors of k contains a single distinct element.

The programs for A349476, there is no canonical definition to state claims against.
-/

/-! ## A349476.P7370413285950397749

`A333646(C(A183108(n+1), n))`
-/

namespace A349476.P7370413285950397749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (Nat.choose (A183108 (n + 1)).toNat n)

end

end A349476.P7370413285950397749

/-! ## A349476.P16402109159419681091

`∩[A349477(n+1), A367585(n+1)]`
-/

namespace A349476.P16402109159419681091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349476.P16402109159419681091

/-!
# A349479: Irregular triangle read by rows: T(n,k) = S1(n,k)*2^k, where S1(n,k) is the associated Stirling number of the first kind (cf. A008306) (n >= 0, 0 <= k <= floor(n/2)).

The programs for A349479, there is no canonical definition to state claims against.
-/

/-! ## A349479.P16977681394927217057

`A059268(A091018(n))*A106828(n)`
-/

namespace A349479.P16977681394927217057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A106828 n

end

end A349479.P16977681394927217057

/-! ## A349479.P7416380466554586866

`A059268(A091018(n))*A269940(A056536(n+1)-1)`
-/

namespace A349479.P7416380466554586866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A269940 (A056536 (n + 1) - 1).toNat

end

end A349479.P7416380466554586866

/-! ## A349479.P17653809321159163826

`lcm(A106828(n), A182861(A004148(n)))`
-/

namespace A349479.P17653809321159163826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106828 n) (A182861 (A004148 n).toNat)

end

end A349479.P17653809321159163826

/-! ## A349479.P641663479208315002

`A000005(A089472(n))*A106828(n)`
-/

namespace A349479.P641663479208315002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089472 n).toNat * A106828 n

end

end A349479.P641663479208315002

/-! ## A349479.P12247221572860065780

`A106828(n)*A357299(A033304(n))`
-/

namespace A349479.P12247221572860065780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 n * A357299 (A033304 n).toNat

end

end A349479.P12247221572860065780

/-!
# A349480: a(n) = Sum_{j=0..n} (-1)^(n-j) * Product_{k=(j-1)*n+1..j*n} k.

The programs for A349480, there is no canonical definition to state claims against.
-/

/-! ## A349480.P13916982155922894784

`n!*A349470(n)`
-/

namespace A349480.P13916982155922894784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A349470 n

end

end A349480.P13916982155922894784

/-! ## A349480.P1390688374438129831

`A000142(n)*A349470(n)`
-/

namespace A349480.P1390688374438129831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A349470 n

end

end A349480.P1390688374438129831

/-! ## A349480.P15980910494195347723

`∏[A028310(n)]*A349470(n)`
-/

namespace A349480.P15980910494195347723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A349470 n

end

end A349480.P15980910494195347723

/-! ## A349480.P14003600297741446784

`A081123(2*n)*A349470(n)`
-/

namespace A349480.P14003600297741446784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) * A349470 n

end

end A349480.P14003600297741446784

/-! ## A349480.P4421558854336251625

`A094587(A000217(n))*A349470(n)`
-/

namespace A349480.P4421558854336251625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A000217 n).toNat * A349470 n

end

end A349480.P4421558854336251625

/-!
# A349481: a(n) is the number of Boolean factors of the contranominal scale of size n by the GreConD algorithm for Boolean matrix factorization.

The programs for A349481, the canonical program `A349481.P610869776335851732` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349481 has offset 1).

The definition of A349481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349481.P610869776335851732

`floor(log2(n+1))+ceil(log2(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349481

/-- `floor(log2(n+1))+ceil(log2(n+1))` -/
def P610869776335851732.Spec : Prop :=
  ∀ n, P610869776335851732.a n = A349481 (n + 1)

theorem P610869776335851732.correct : P610869776335851732.Spec := by
  intro n
  simp only [A349481, Nat.add_sub_cancel]

end A349481

/-! ## A349481.P7559166298033511021

`floor(log2(A001196(n)+1))`
-/

namespace A349481.P7559166298033511021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001196 n + 1).toNat

end

end A349481.P7559166298033511021

namespace A349481

/-- `floor(log2(A001196(n)+1))` -/
def P7559166298033511021.Spec : Prop :=
  ∀ n, (P7559166298033511021.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P1466148878282798503

`ceil(log2(A067398(n+1)))`
-/

namespace A349481.P1466148878282798503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A067398 (n + 1) : ℝ)⌉

end

end A349481.P1466148878282798503

namespace A349481

/-- `ceil(log2(A067398(n+1)))` -/
def P1466148878282798503.Spec : Prop :=
  ∀ n, P1466148878282798503.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P11068234504189544989

`floor(log2(A062880(n+1)-1))`
-/

namespace A349481.P11068234504189544989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A062880 (n + 1) - 1).toNat

end

end A349481.P11068234504189544989

namespace A349481

/-- `floor(log2(A062880(n+1)-1))` -/
def P11068234504189544989.Spec : Prop :=
  ∀ n, (P11068234504189544989.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P15962565931806030689

`floor(log2((n+1)*A062383(n)))`
-/

namespace A349481.P15962565931806030689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) * A062383 n).toNat

end

end A349481.P15962565931806030689

namespace A349481

/-- `floor(log2((n+1)*A062383(n)))` -/
def P15962565931806030689.Spec : Prop :=
  ∀ n, (P15962565931806030689.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P15712109658845800822

`floor(log2((n+1)*(A003817(n)+1)))`
-/

namespace A349481.P15712109658845800822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) * (A003817 n + 1)).toNat

end

end A349481.P15712109658845800822

namespace A349481

/-- `floor(log2((n+1)*(A003817(n)+1)))` -/
def P15712109658845800822.Spec : Prop :=
  ∀ n, (P15712109658845800822.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P14235056325535399315

`floor(log2(2*(n+1)*A053644(n+1)-1))`
-/

namespace A349481.P14235056325535399315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((2 * (n + 1) : ℤ) * A053644 (n + 1) - 1).toNat

end

end A349481.P14235056325535399315

namespace A349481

/-- `floor(log2(2*(n+1)*A053644(n+1)-1))` -/
def P14235056325535399315.Spec : Prop :=
  ∀ n, (P14235056325535399315.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P8189295149620397965

`xor(A036987(n), A129972(n+1))`
-/

namespace A349481.P8189295149620397965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 n) (A129972 (n + 1))

end

end A349481.P8189295149620397965

namespace A349481

/-- `xor(A036987(n), A129972(n+1))` -/
def P8189295149620397965.Spec : Prop :=
  ∀ n, P8189295149620397965.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P15905228919630544351

`ceil(log2(A000695(n+1)))`
-/

namespace A349481.P15905228919630544351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000695 (n + 1) : ℝ)⌉

end

end A349481.P15905228919630544351

namespace A349481

/-- `ceil(log2(A000695(n+1)))` -/
def P15905228919630544351.Spec : Prop :=
  ∀ n, P15905228919630544351.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P12950269852075008420

`floor(log2(A277699(n+1)))`
-/

namespace A349481.P12950269852075008420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A277699 (n + 1)).toNat

end

end A349481.P12950269852075008420

namespace A349481

/-- `floor(log2(A277699(n+1)))` -/
def P12950269852075008420.Spec : Prop :=
  ∀ n, (P12950269852075008420.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P9594177392664789330

`floor(log2(A212591(2*(n+1))))`
-/

namespace A349481.P9594177392664789330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A212591 (2 * (n + 1))).toNat

end

end A349481.P9594177392664789330

namespace A349481

/-- `floor(log2(A212591(2*(n+1))))` -/
def P9594177392664789330.Spec : Prop :=
  ∀ n, (P9594177392664789330.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P10005475135507084247

`floor(log2(A332206(2*n+1)))`
-/

namespace A349481.P10005475135507084247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A332206 (2 * n + 1)).toNat

end

end A349481.P10005475135507084247

namespace A349481

/-- `floor(log2(A332206(2*n+1)))` -/
def P10005475135507084247.Spec : Prop :=
  ∀ n, (P10005475135507084247.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P15881464603589429918

`log2(A053644(2*n+1)*A053644(n+1))`
-/

namespace A349481.P15881464603589429918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053644 (2 * n + 1) * A053644 (n + 1) : ℝ)

end

end A349481.P15881464603589429918

namespace A349481

/-- `log2(A053644(2*n+1)*A053644(n+1))` -/
def P15881464603589429918.Spec : Prop :=
  ∀ n, P15881464603589429918.a n = (A349481 (n + 1) : ℝ)

end A349481

/-! ## A349481.P8336018592653184219

`floor(log2(A233312(n)+1))`
-/

namespace A349481.P8336018592653184219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A233312 n + 1).toNat

end

end A349481.P8336018592653184219

namespace A349481

/-- `floor(log2(A233312(n)+1))` -/
def P8336018592653184219.Spec : Prop :=
  ∀ n, (P8336018592653184219.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P12954734585231087004

`A130233(A062877(n))`
-/

namespace A349481.P12954734585231087004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A062877 n).toNat

end

end A349481.P12954734585231087004

namespace A349481

/-- `A130233(A062877(n))` -/
def P12954734585231087004.Spec : Prop :=
  ∀ n, P12954734585231087004.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P7299053661345471241

`A130242(A178482(n+1))`
-/

namespace A349481.P7299053661345471241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A178482 (n + 1)).toNat

end

end A349481.P7299053661345471241

namespace A349481

/-- `A130242(A178482(n+1))` -/
def P7299053661345471241.Spec : Prop :=
  ∀ n, P7299053661345471241.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P8746344725772560085

`A329194(A191106(n+1))`
-/

namespace A349481.P8746344725772560085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (A191106 (n + 1)).toNat

end

end A349481.P8746344725772560085

namespace A349481

/-- `A329194(A191106(n+1))` -/
def P8746344725772560085.Spec : Prop :=
  ∀ n, P8746344725772560085.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P13443329865985563416

`A001222(A053644(2*n+1)*A053644(n+1))`
-/

namespace A349481.P13443329865985563416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053644 (2 * n + 1) * A053644 (n + 1)).toNat

end

end A349481.P13443329865985563416

namespace A349481

/-- `A001222(A053644(2*n+1)*A053644(n+1))` -/
def P13443329865985563416.Spec : Prop :=
  ∀ n, P13443329865985563416.a n = A349481 (n + 1)

end A349481

/-! ## A349481.P13800695107455094277

`floor(log2(A270804(2*n+1)))`
-/

namespace A349481.P13800695107455094277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A270804 (2 * n + 1)).toNat

end

end A349481.P13800695107455094277

namespace A349481

/-- `floor(log2(A270804(2*n+1)))` -/
def P13800695107455094277.Spec : Prop :=
  ∀ n, (P13800695107455094277.a n : ℤ) = A349481 (n + 1)

end A349481

/-! ## A349481.P1375719697995936302

`A130249(A000695(n))`
-/

namespace A349481.P1375719697995936302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A000695 n).toNat

end

end A349481.P1375719697995936302

namespace A349481

/-- `A130249(A000695(n))` -/
def P1375719697995936302.Spec : Prop :=
  ∀ n, P1375719697995936302.a n = A349481 (n + 1)

end A349481

/-!
# A349482: Bases where the n-th Goodstein sequence starting in base 3 (instead of base 2) reaches 0.

The programs for A349482, there is no canonical definition to state claims against.
-/

/-! ## A349482.P14321529244468805311

`eq[A000034(A018117(n)), A101279(n+1)]`
-/

namespace A349482.P14321529244468805311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A018117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349482.P14321529244468805311

/-! ## A349482.P7281764705553422166

`lt[A365431(n+1), A000002(A035441(n+4))]`
-/

namespace A349482.P7281764705553422166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A035441 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349482.P7281764705553422166

/-! ## A349482.P6805276983970264011

`lt[A115720(A052222(n+5)), A228523(n+1)]`
-/

namespace A349482.P6805276983970264011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (A052222 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349482.P6805276983970264011

/-! ## A349482.P12764179208750423030

`lt[A115720(A052222(n+5)), A322530(n+1)]`
-/

namespace A349482.P12764179208750423030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (A052222 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349482.P12764179208750423030

/-! ## A349482.P4754089424784180815

`record[A000005(A020621(n+1)+1)-A057427(n)]`
-/

namespace A349482.P4754089424784180815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020621 (n + 1) + 1).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349482.P4754089424784180815

/-!
# A349484: Niven numbers whose arithmetic derivative is also a Niven number (A005349).

The programs for A349484, there is no canonical definition to state claims against.
-/

/-! ## A349484.P9240933363490464018

`A005349(lt[A001300(n), A056239(n+1)])`
-/

namespace A349484.P9240933363490464018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349484.P9240933363490464018

/-! ## A349484.P15422436061165990328

`A005349(lt[A006799(n+1), A375029(n+1)])`
-/

namespace A349484.P15422436061165990328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349484.P15422436061165990328

/-!
# A349486: a(1) = 2. a(n) is the smallest number in A349484, which is not an earlier term and for which a(n-1) + a(n) is in A349484.

The programs for A349486, there is no canonical definition to state claims against.
-/

/-! ## A349486.P1400202840747610810

`∑[n+1]^(a(n-1)-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A349486.P1400202840747610810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (a (n - 1) - 3)

end

end A349486.P1400202840747610810

/-!
# A349487: a(n) = A132739((n-5)*(n+5)).

The programs for A349487, the canonical program `A349487.P5971978517417751148` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349487 has offset 6).

The definition of A349487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349487.P5971978517417751148

`A132739((n+1)*(n+11))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349487

/-- `A132739((n+1)*(n+11))` -/
def P5971978517417751148.Spec : Prop :=
  ∀ n, P5971978517417751148.a n = A349487 (n + 6)

theorem P5971978517417751148.correct : P5971978517417751148.Spec := by
  intro n
  simp only [A349487, Nat.add_sub_cancel]

end A349487

/-! ## A349487.P2183756030377932544

`A061043(n+6)`
-/

namespace A349487.P2183756030377932544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061043 (n + 6)

end

end A349487.P2183756030377932544

namespace A349487

/-- `A061043(n+6)` -/
def P2183756030377932544.Spec : Prop :=
  ∀ n, P2183756030377932544.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P13378086313684283968

`A172370(2*(n+1)+∑[n+3]+7)`
-/

namespace A349487.P13378086313684283968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172370 (2 * (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A349487.P13378086313684283968

namespace A349487

/-- `A172370(2*(n+1)+∑[n+3]+7)` -/
def P13378086313684283968.Spec : Prop :=
  ∀ n, P13378086313684283968.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P907598421018573817

`A061035(A046691(n+4))`
-/

namespace A349487.P907598421018573817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A046691 (n + 4)).toNat

end

end A349487.P907598421018573817

namespace A349487

/-- `A061035(A046691(n+4))` -/
def P907598421018573817.Spec : Prop :=
  ∀ n, P907598421018573817.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P16541783761360696257

`A175779(A055999(n+4))`
-/

namespace A349487.P16541783761360696257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A055999 (n + 4)).toNat

end

end A349487.P16541783761360696257

namespace A349487

/-- `A175779(A055999(n+4))` -/
def P16541783761360696257.Spec : Prop :=
  ∀ n, P16541783761360696257.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P14768368152010811661

`A165507(A046691(n+8))`
-/

namespace A349487.P14768368152010811661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A046691 (n + 8)).toNat

end

end A349487.P14768368152010811661

namespace A349487

/-- `A165507(A046691(n+8))` -/
def P14768368152010811661.Spec : Prop :=
  ∀ n, P14768368152010811661.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P9347470924260519893

`A061035(A056119(n)+17)`
-/

namespace A349487.P9347470924260519893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A056119 n + 17).toNat

end

end A349487.P9347470924260519893

namespace A349487

/-- `A061035(A056119(n)+17)` -/
def P9347470924260519893.Spec : Prop :=
  ∀ n, P9347470924260519893.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P7677730596402680577

`A061035(Δ[A023545(n+2)])`
-/

namespace A349487.P7677730596402680577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (f1 (n + 1) - f1 n).toNat

end

end A349487.P7677730596402680577

namespace A349487

/-- `A061035(Δ[A023545(n+2)])` -/
def P7677730596402680577.Spec : Prop :=
  ∀ n, P7677730596402680577.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P2952490760869264852

`A061035(A052905(n+3)+1)`
-/

namespace A349487.P2952490760869264852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A052905 (n + 3) + 1).toNat

end

end A349487.P2952490760869264852

namespace A349487

/-- `A061035(A052905(n+3)+1)` -/
def P2952490760869264852.Spec : Prop :=
  ∀ n, P2952490760869264852.a n = A349487 (n + 6)

end A349487

/-! ## A349487.P5547593122880518338

`A061035(A000096(n+5)-3)`
-/

namespace A349487.P5547593122880518338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000096 (n + 5) - 3).toNat

end

end A349487.P5547593122880518338

namespace A349487

/-- `A061035(A000096(n+5)-3)` -/
def P5547593122880518338.Spec : Prop :=
  ∀ n, P5547593122880518338.a n = A349487 (n + 6)

end A349487

/-!
# A349488: Number of unlabeled disconnected P-series with n elements.

The programs for A349488, there is no canonical definition to state claims against.
-/

/-! ## A349488.P1148777707936731182

`A349276(n+1)-A255047(n)`
-/

namespace A349488.P1148777707936731182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - A255047 n

end

end A349488.P1148777707936731182

/-! ## A349488.P13157024087334866160

`A349276(n+1)-or(1, A000225(n))`
-/

namespace A349488.P13157024087334866160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - Int.lor 1 (A000225 n)

end

end A349488.P13157024087334866160

/-! ## A349488.P18186046846913689994

`A349276(n+1)-A000225(A028310(n))`
-/

namespace A349488.P18186046846913689994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - A000225 (A028310 n).toNat

end

end A349488.P18186046846913689994

/-! ## A349488.P885793055237727589

`A349276(n+1)-A000225(A000007(n)+n)`
-/

namespace A349488.P885793055237727589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - A000225 (A000007 n + (n : ℤ)).toNat

end

end A349488.P885793055237727589

/-! ## A349488.P1398036087979599466

`(A349276(n+1)-A000225(n))*char[A141256(n)]`
-/

namespace A349488.P1398036087979599466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349276 (n + 1) - A000225 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349488.P1398036087979599466

/-! ## A349488.P15299629498898391942

`(A349276(n+1)-A000225(n))*A249695(4*n)`
-/

namespace A349488.P15299629498898391942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349276 (n + 1) - A000225 n) * A249695 (4 * n)

end

end A349488.P15299629498898391942

/-! ## A349488.P4104911900592138678

`A349276(n+1)-A000225(n)-A010051(2*(n+1))`
-/

namespace A349488.P4104911900592138678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - A000225 n - A010051 (2 * (n + 1))

end

end A349488.P4104911900592138678

/-! ## A349488.P8279035710731775811

`A001065(A020639(n+1))*A349276(n+1)-A000225(n)`
-/

namespace A349488.P8279035710731775811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A020639 (n + 1)).toNat * A349276 (n + 1) - A000225 n

end

end A349488.P8279035710731775811

/-! ## A349488.P6108950234174582083

`(A349276(n+1)-A000225(n))%A005425(n)`
-/

namespace A349488.P6108950234174582083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349276 (n + 1) - A000225 n) (A005425 n)

end

end A349488.P6108950234174582083

/-! ## A349488.P10693308343471471078

`A349276(n+1)-A350635(A000124(n))`
-/

namespace A349488.P10693308343471471078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349276 (n + 1) - A350635 (A000124 n).toNat

end

end A349488.P10693308343471471078

/-!
# A349489: a(n) = Sum_{k=1..n} k * floor(sqrt(2*k-1)).

The programs for A349489, the canonical program `A349489.P15652357415841345474` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349489 has offset 1).

The definition of A349489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349489.P15652357415841345474

`∑[(n+1)*floor(sqrt(Δ[n²]))]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349489

/-- `∑[(n+1)*floor(sqrt(Δ[n²]))]` -/
def P15652357415841345474.Spec : Prop :=
  ∀ n, P15652357415841345474.a n = A349489 (n + 1)

theorem P15652357415841345474.correct : P15652357415841345474.Spec := by
  intro n
  simp only [A349489, Nat.add_sub_cancel]

end A349489

/-! ## A349489.P5679791218065239158

`a(n-1)+(n+1)*floor(sqrt(2*n+1))` with `a(0)=1`
-/

namespace A349489.P5679791218065239158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * Nat.sqrt (2 * n + 1)

end

end A349489.P5679791218065239158

namespace A349489

/-- `a(n-1)+(n+1)*floor(sqrt(2*n+1))` -/
def P5679791218065239158.Spec : Prop :=
  ∀ n, (P5679791218065239158.a n : ℤ) = A349489 (n + 1)

end A349489

/-! ## A349489.P9977566497789308834

`∑[2*(n+1)*A103128(n+1)]/2`
-/

namespace A349489.P9977566497789308834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A103128 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A349489.P9977566497789308834

namespace A349489

/-- `∑[2*(n+1)*A103128(n+1)]/2` -/
def P9977566497789308834.Spec : Prop :=
  ∀ n, P9977566497789308834.a n = (A349489 (n + 1) : ℚ)

end A349489

/-! ## A349489.P2318055697656749016

`∑[(A028310(n)+1)*A103128(n+1)]-1`
-/

namespace A349489.P2318055697656749016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n + 1) * A103128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A349489.P2318055697656749016

namespace A349489

/-- `∑[(A028310(n)+1)*A103128(n+1)]-1` -/
def P2318055697656749016.Spec : Prop :=
  ∀ n, P2318055697656749016.a n = A349489 (n + 1)

end A349489

/-! ## A349489.P3630075418521890306

`∑[(n+1)*A103128(n+1)]%A000040(n+1)²`
-/

namespace A349489.P3630075418521890306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1) ^ 2)

end

end A349489.P3630075418521890306

namespace A349489

/-- `∑[(n+1)*A103128(n+1)]%A000040(n+1)²` -/
def P3630075418521890306.Spec : Prop :=
  ∀ n, P3630075418521890306.a n = A349489 (n + 1)

end A349489

/-! ## A349489.P3510237790167603194

`A000027(∑[(n+1)*A103128(n+1)])`
-/

namespace A349489.P3510237790167603194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349489.P3510237790167603194

namespace A349489

/-- `A000027(∑[(n+1)*A103128(n+1)])` -/
def P3510237790167603194.Spec : Prop :=
  ∀ n, P3510237790167603194.a n = A349489 (n + 1)

end A349489

/-! ## A349489.P15869870537548378015

`A028310(∑[(n+1)*A103128(n+1)])`
-/

namespace A349489.P15869870537548378015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349489.P15869870537548378015

namespace A349489

/-- `A028310(∑[(n+1)*A103128(n+1)])` -/
def P15869870537548378015.Spec : Prop :=
  ∀ n, P15869870537548378015.a n = A349489 (n + 1)

end A349489

/-!
# A349490: Sum of the n-th powers of the first n odd numbers.

The programs for A349490, there is no canonical definition to state claims against.
-/

/-! ## A349490.P16091519955416335158

`∑{d}[A000079(n), A048691(#)^(n+1)]`
-/

namespace A349490.P16091519955416335158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048691 d ^ (n + 1)

end

end A349490.P16091519955416335158

/-!
# A349492: a(1)=1, a(2)=6; for n > 2, a(n) is the smallest unused positive number such that gcd(a(n-1)+n, a(n)) > 1, gcd(a(n-1), a(n)) > 1, and gcd(n, a(n)) > 1.

The programs for A349492, there is no canonical definition to state claims against.
-/

/-! ## A349492.P9166409413700052734

`A287794(A293128(n+1))`
-/

namespace A349492.P9166409413700052734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287794 (A293128 (n + 1)).toNat

end

end A349492.P9166409413700052734

/-!
# A349494: a(n) is the maximum of A000120(k)*A000120(n/k) for divisors k of n.

The programs for A349494, there is no canonical definition to state claims against.
-/

/-! ## A349494.P558787540893270935

`A072084(A007948(n+1)%A356709(2*n+5))`
-/

namespace A349494.P558787540893270935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (Int.tmod (A007948 (n + 1)) (A356709 (2 * n + 5))).toNat

end

end A349494.P558787540893270935

/-! ## A349494.P15467932481879933041

`gcd(A072084(n+1), A355228(n+1))`
-/

namespace A349494.P15467932481879933041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072084 (n + 1)) (A355228 (n + 1))

end

end A349494.P15467932481879933041

/-! ## A349494.P10583101527846633529

`gcd(A072084(n+1), A279509(n))`
-/

namespace A349494.P10583101527846633529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072084 (n + 1)) (A279509 n)

end

end A349494.P10583101527846633529

/-! ## A349494.P16315931173441775950

`A000120(∑{d}[n+1, (n+1)*#%2]*A133910(n+1))`
-/

namespace A349494.P16315931173441775950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d % 2) : ℕ) : ℤ) * A133910 (n + 1)).toNat

end

end A349494.P16315931173441775950

/-! ## A349494.P10997598830781653351

`A000120(A133910(n+1)*A336475(n+1))`
-/

namespace A349494.P10997598830781653351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A133910 (n + 1) * A336475 (n + 1)).toNat

end

end A349494.P10997598830781653351

/-!
# A349495: Numbers p^2*q, p<q primes such that p divides q-1 and p^2 does not divide q-1, with (p,q) <> (2,3).

The programs for A349495, there is no canonical definition to state claims against.
-/

/-! ## A349495.P8104677004528266288

`record[A327498(A054396(n+1))]`
-/

namespace A349495.P8104677004528266288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A054396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349495.P8104677004528266288

/-! ## A349495.P8735866885006340955

`filter[A054396(n+1), A091862(#)]`
-/

namespace A349495.P8735866885006340955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A349495.P8735866885006340955

/-! ## A349495.P16208940082954635887

`filter[A239699(n+1), A091862(#)]`
-/

namespace A349495.P16208940082954635887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A349495.P16208940082954635887

/-! ## A349495.P5201677681102956892

`filter[A054396(n+1), A351564(#)]`
-/

namespace A349495.P5201677681102956892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A349495.P5201677681102956892

/-! ## A349495.P602668486177503995

`filter[A054396(n+1), A353472(#)]`
-/

namespace A349495.P602668486177503995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A349495.P602668486177503995

/-! ## A349495.P17823756010291602980

`filter[A054396(n+1), A353474(#)]`
-/

namespace A349495.P17823756010291602980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A349495.P17823756010291602980

/-! ## A349495.P2611194320345995140

`filter[A054396(n+1), A353798(#)]`
-/

namespace A349495.P2611194320345995140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A349495.P2611194320345995140

/-! ## A349495.P9756977718862699632

`filter[A054396(n+1), A358769(#)]`
-/

namespace A349495.P9756977718862699632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A349495.P9756977718862699632

/-! ## A349495.P12550172054837084146

`filter[A054396(n+1), A358770(#)]`
-/

namespace A349495.P12550172054837084146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A349495.P12550172054837084146

/-! ## A349495.P11140964159710054776

`filter[A216594(n+1), A353472(#)]`
-/

namespace A349495.P11140964159710054776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A349495.P11140964159710054776

/-!
# A349496: Numbers of the form 4*t^2-2 (A060626) when t >= 1 is an integer that is not a term in A001542.

The programs for A349496, there is no canonical definition to state claims against.
-/

/-! ## A349496.P1252310102963171038

`(2*ceil(sqrt(sqrt(n)+1)+n))²-2`
-/

namespace A349496.P1252310102963171038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌈Real.sqrt (Real.sqrt (n : ℝ) + 1) + (n : ℝ)⌉) ^ 2 - 2

end

end A349496.P1252310102963171038

/-! ## A349496.P6137718498618626660

`A060626(comp[∑[A060580(n)]])`
-/

namespace A349496.P6137718498618626660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A349496.P6137718498618626660

/-! ## A349496.P2643092040879172880

`A060626(A004218(n+1)+n)`
-/

namespace A349496.P2643092040879172880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 (A004218 (n + 1) + (n : ℤ)).toNat

end

end A349496.P2643092040879172880

/-! ## A349496.P2649230395311963037

`2*eq[A267848(n+1), A322997(n+1)]`
-/

namespace A349496.P2649230395311963037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349496.P2649230395311963037

/-! ## A349496.P12753403082815577966

`2*eq[A001281(n+1), A162400(n+2)]`
-/

namespace A349496.P12753403082815577966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162400 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349496.P12753403082815577966

/-!
# A349497: a(n) is the smallest element in the continued fraction of the harmonic mean of the divisors of n.

The programs for A349497, there is no canonical definition to state claims against.
-/

/-! ## A349497.P18104416066297924626

`∏{e}[A350950(3*n+5)+A000005(n+1), #]`
-/

namespace A349497.P18104416066297924626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (3 * n + 5) + A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A349497.P18104416066297924626

/-! ## A349497.P12203171359951583705

`A007318(A379671(3*n+2)+∏{e}[n+1, #+1])`
-/

namespace A349497.P12203171359951583705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A379671 (3 * n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A349497.P12203171359951583705

/-! ## A349497.P9622323192346429705

`gcd(A297464(A318684(n)), A317545(n+1))`
-/

namespace A349497.P9622323192346429705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297464 (A318684 n).toNat) (A317545 (n + 1))

end

end A349497.P9622323192346429705

/-! ## A349497.P1609712693307720570

`A007318(A379671(3*n+2)+A000005(n+1))`
-/

namespace A349497.P1609712693307720570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A379671 (3 * n + 2) + A000005 (n + 1)).toNat

end

end A349497.P1609712693307720570

/-! ## A349497.P10851813937317130876

`A101321(A379671(3*n+2)+A000005(n+1))`
-/

namespace A349497.P10851813937317130876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 (A379671 (3 * n + 2) + A000005 (n + 1)).toNat

end

end A349497.P10851813937317130876

/-!
# A349498: a(n) is the least number k such that A349497(k) = n, or -1 if no such k exists.

The programs for A349498, there is no canonical definition to state claims against.
-/

/-! ## A349498.P8237124411718424165

`∏{p}[A168055(3*n+4), A122651(#)]`
-/

namespace A349498.P8237124411718424165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122651 p

end

end A349498.P8237124411718424165

/-!
# A349499: Numbers k such that A349474(k) = A349474(k+1).

The programs for A349499, there is no canonical definition to state claims against.
-/

/-! ## A349499.P3985711987457774067

`eq[A349474(n+1), A349474(n+2)]+1`
-/

namespace A349499.P3985711987457774067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349499.P3985711987457774067

/-! ## A349499.P4093384864264947241

`eq[A349474(n+1), A349474(A000038(n)+n)]`
-/

namespace A349499.P4093384864264947241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349499.P4093384864264947241

