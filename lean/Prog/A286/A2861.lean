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
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A286100: Square array A(n,k): If n = k, then A(n,k) = n, otherwise 0, read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A286100, the canonical program `A286100.P6392366946507749071` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286100 has offset 1).

The definition of A286100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286100.P8017271894626701917

`Δ[A000217(round(sqrt(n/2)))]`
-/

namespace A286100.P8017271894626701917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286100.P8017271894626701917

namespace A286100

/-- `Δ[A000217(round(sqrt(n/2)))]` -/
def P8017271894626701917.Spec : Prop :=
  ∀ n, P8017271894626701917.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P4342782013055164751

`char[∑[4*n]]*A128227(n)`
-/

namespace A286100.P4342782013055164751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A128227 n

end

end A286100.P4342782013055164751

namespace A286100

/-- `char[∑[4*n]]*A128227(n)` -/
def P4342782013055164751.Spec : Prop :=
  ∀ n, P4342782013055164751.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P581219243293010218

`char[∑[4*n]]*A193592(n)`
-/

namespace A286100.P581219243293010218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A193592 n

end

end A286100.P581219243293010218

namespace A286100

/-- `char[∑[4*n]]*A193592(n)` -/
def P581219243293010218.Spec : Prop :=
  ∀ n, P581219243293010218.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P3191852788910807798

`char[∑[4*n]]*A002260(n+1)`
-/

namespace A286100.P3191852788910807798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A002260 (n + 1)

end

end A286100.P3191852788910807798

namespace A286100

/-- `char[∑[4*n]]*A002260(n+1)` -/
def P3191852788910807798.Spec : Prop :=
  ∀ n, P3191852788910807798.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P8928169936073327321

`(A002262(n)+1)*char[∑[4*n]]`
-/

namespace A286100.P8928169936073327321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286100.P8928169936073327321

namespace A286100

/-- `(A002262(n)+1)*char[∑[4*n]]` -/
def P8928169936073327321.Spec : Prop :=
  ∀ n, P8928169936073327321.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P13296976918564012944

`char[∑[4*n]]*A004736(n+1)`
-/

namespace A286100.P13296976918564012944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A004736 (n + 1)

end

end A286100.P13296976918564012944

namespace A286100

/-- `char[∑[4*n]]*A004736(n+1)` -/
def P13296976918564012944.Spec : Prop :=
  ∀ n, P13296976918564012944.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P14987702947975284265

`abs(A140756(n+1))*char[∑[4*n]]`
-/

namespace A286100.P14987702947975284265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286100.P14987702947975284265

namespace A286100

/-- `abs(A140756(n+1))*char[∑[4*n]]` -/
def P14987702947975284265.Spec : Prop :=
  ∀ n, P14987702947975284265.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P6392366946507749071

`A027656(A157458(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286100

/-- `A027656(A157458(n))` -/
def P6392366946507749071.Spec : Prop :=
  ∀ n, P6392366946507749071.a n = A286100 (n + 1)

theorem P6392366946507749071.correct : P6392366946507749071.Spec := by
  intro n
  simp only [A286100, Nat.add_sub_cancel]

end A286100

/-! ## A286100.P9578248233392502382

`A000720(A204118(n+1))`
-/

namespace A286100.P9578248233392502382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204118 (n + 1)).toNat

end

end A286100.P9578248233392502382

namespace A286100

/-- `A000720(A204118(n+1))` -/
def P9578248233392502382.Spec : Prop :=
  ∀ n, P9578248233392502382.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P8800711893520272137

`A003982(n)*A089688(n)`
-/

namespace A286100.P8800711893520272137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A089688 n

end

end A286100.P8800711893520272137

namespace A286100

/-- `A003982(n)*A089688(n)` -/
def P8800711893520272137.Spec : Prop :=
  ∀ n, P8800711893520272137.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P1344143323560967246

`A003982(n)*A131899(n)`
-/

namespace A286100.P1344143323560967246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A131899 n

end

end A286100.P1344143323560967246

namespace A286100

/-- `A003982(n)*A131899(n)` -/
def P1344143323560967246.Spec : Prop :=
  ∀ n, P1344143323560967246.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P12877678592335628529

`A003982(n)*A141539(n)`
-/

namespace A286100.P12877678592335628529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A141539 n

end

end A286100.P12877678592335628529

namespace A286100

/-- `A003982(n)*A141539(n)` -/
def P12877678592335628529.Spec : Prop :=
  ∀ n, P12877678592335628529.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P15669263504843029587

`A003982(n)*A169803(n)`
-/

namespace A286100.P15669263504843029587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A169803 n

end

end A286100.P15669263504843029587

namespace A286100

/-- `A003982(n)*A169803(n)` -/
def P15669263504843029587.Spec : Prop :=
  ∀ n, P15669263504843029587.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P12161194526215325394

`A003982(n)*A193738(n)`
-/

namespace A286100.P12161194526215325394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A193738 n

end

end A286100.P12161194526215325394

namespace A286100

/-- `A003982(n)*A193738(n)` -/
def P12161194526215325394.Spec : Prop :=
  ∀ n, P12161194526215325394.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P4127909790931036362

`A003982(n)*A193739(n)`
-/

namespace A286100.P4127909790931036362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A193739 n

end

end A286100.P4127909790931036362

namespace A286100

/-- `A003982(n)*A193739(n)` -/
def P4127909790931036362.Spec : Prop :=
  ∀ n, P4127909790931036362.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P17525764333200888949

`A003982(n)*A244840(n)`
-/

namespace A286100.P17525764333200888949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A244840 n

end

end A286100.P17525764333200888949

namespace A286100

/-- `A003982(n)*A244840(n)` -/
def P17525764333200888949.Spec : Prop :=
  ∀ n, P17525764333200888949.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P4712153446612684787

`A133622(A157458(n)+2)-1`
-/

namespace A286100.P4712153446612684787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A157458 n + 2).toNat - 1

end

end A286100.P4712153446612684787

namespace A286100

/-- `A133622(A157458(n)+2)-1` -/
def P4712153446612684787.Spec : Prop :=
  ∀ n, P4712153446612684787.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P10730482744612739326

`A158416(A157458(n)+2)-1`
-/

namespace A286100.P10730482744612739326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A157458 n + 2).toNat - 1

end

end A286100.P10730482744612739326

namespace A286100

/-- `A158416(A157458(n)+2)-1` -/
def P10730482744612739326.Spec : Prop :=
  ∀ n, P10730482744612739326.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P1064572216195799008

`A002260(n+1)*A003982(n)`
-/

namespace A286100.P1064572216195799008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A003982 n

end

end A286100.P1064572216195799008

namespace A286100

/-- `A002260(n+1)*A003982(n)` -/
def P1064572216195799008.Spec : Prop :=
  ∀ n, P1064572216195799008.a n = A286100 (n + 1)

end A286100

/-! ## A286100.P7041605003537545561

`A003982(n)*A003983(n+1)`
-/

namespace A286100.P7041605003537545561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A003983 (n + 1)

end

end A286100.P7041605003537545561

namespace A286100

/-- `A003982(n)*A003983(n+1)` -/
def P7041605003537545561.Spec : Prop :=
  ∀ n, P7041605003537545561.a n = A286100 (n + 1)

end A286100

/-!
# A286101: Square array A(n,k) read by antidiagonals: A(n,k) = T(gcd(n,k), lcm(n,k)), where T(n,k) is sequence A000027 considered as a two-dimensional table.

The programs for A286101, there is no canonical definition to state claims against.
-/

/-! ## A286101.P2067522155689203638

`A285724(A057944(n)+A003983(n+1))`
-/

namespace A286101.P2067522155689203638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A057944 n + A003983 (n + 1)).toNat

end

end A286101.P2067522155689203638

/-! ## A286101.P2954421790070257889

`A285724(A127739(n+1)-A003984(n))`
-/

namespace A286101.P2954421790070257889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A127739 (n + 1) - A003984 n).toNat

end

end A286101.P2954421790070257889

/-! ## A286101.P15419030403697711869

`A003989(n+1)+A286102(n+1)-A003990(n+1)`
-/

namespace A286101.P15419030403697711869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) + (A286102 (n + 1) - A003990 (n + 1))

end

end A286101.P15419030403697711869

/-! ## A286101.P3933834046547745366

`A285724(A038722(n+1))+A285724(n+1)-A286102(n+1)`
-/

namespace A286101.P3933834046547745366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A038722 (n + 1)).toNat + (A285724 (n + 1) - A286102 (n + 1))

end

end A286101.P3933834046547745366

/-! ## A286101.P12691534502123463954

`A038722(A286102(n+1))`
-/

namespace A286101.P12691534502123463954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A286102 (n + 1)).toNat

end

end A286101.P12691534502123463954

/-! ## A286101.P13249159817002352491

`A286102(A286102(n+1)-A003990(n+1)+1)-A003990(n+1)+1`
-/

namespace A286101.P13249159817002352491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286102 (A286102 (n + 1) - A003990 (n + 1) + 1).toNat - A003990 (n + 1) + 1

end

end A286101.P13249159817002352491

/-! ## A286101.P9539462812664022585

`A285724(A038722(A286102(A003989(A001844(n)))))`
-/

namespace A286101.P9539462812664022585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A038722 (A286102 (A003989 (A001844 n).toNat).toNat).toNat).toNat

end

end A286101.P9539462812664022585

/-!
# A286102: Square array A(n,k) read by antidiagonals: A(n,k) = T(lcm(n,k), gcd(n,k)), where T(n,k) is sequence A000027 considered as a two-dimensional table.

The programs for A286102, there is no canonical definition to state claims against.
-/

/-! ## A286102.P16495614856221251356

`A285724(A057944(n)+A051125(n+1))`
-/

namespace A286102.P16495614856221251356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A057944 n + A051125 (n + 1)).toNat

end

end A286102.P16495614856221251356

/-! ## A286102.P17618733491731997276

`A003990(n+1)+A286101(n+1)-A003989(n+1)`
-/

namespace A286102.P17618733491731997276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1) + (A286101 (n + 1) - A003989 (n + 1))

end

end A286102.P17618733491731997276

/-! ## A286102.P16573377042711895954

`A285724(A038722(n+1))+A285724(n+1)-A286101(n+1)`
-/

namespace A286102.P16573377042711895954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A038722 (n + 1)).toNat + (A285724 (n + 1) - A286101 (n + 1))

end

end A286102.P16573377042711895954

/-! ## A286102.P7657191039611037008

`A038722(A286101(n+1))`
-/

namespace A286102.P7657191039611037008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A286101 (n + 1)).toNat

end

end A286102.P7657191039611037008

/-! ## A286102.P4156396484100684886

`A278818(A286101(n+1)-1)`
-/

namespace A286102.P4156396484100684886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (A286101 (n + 1) - 1).toNat

end

end A286102.P4156396484100684886

/-! ## A286102.P14511632721012493048

`A061579(A286101(n+1)-1)+1`
-/

namespace A286102.P14511632721012493048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A286101 (n + 1) - 1).toNat + 1

end

end A286102.P14511632721012493048

/-! ## A286102.P7361018771001547440

`A285724(A038722(A286101(A003989(A001844(n)))))`
-/

namespace A286102.P7361018771001547440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A038722 (A286101 (A003989 (A001844 n).toNat).toNat).toNat).toNat

end

end A286102.P7361018771001547440

/-!
# A286103: a(1) = 0; for n > 1, a(n) = 1 + min(a(A285734(n)), a(A285735(n))).

The programs for A286103, there is no canonical definition to state claims against.
-/

/-! ## A286103.P9071835511859817658

`1+a(A286104(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A286103.P9071835511859817658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A286104 (n + 1) - 1).toNat

end

end A286103.P9071835511859817658

/-! ## A286103.P16872529275721908313

`a(A286104(n+1)-1)+1` with `a(0)=0`
-/

namespace A286103.P16872529275721908313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A286104 (n + 1) - 1).toNat + 1

end

end A286103.P16872529275721908313

/-! ## A286103.P2167237673565625543

`floor(log(∑[A339399(n+5)]))`
-/

namespace A286103.P2167237673565625543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A286103.P2167237673565625543

/-! ## A286103.P607768533735984140

`∑[A105348(n+2)^A374740(n)]`
-/

namespace A286103.P607768533735984140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105348 (n + 2) : ℚ) ^ (A374740 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286103.P607768533735984140

/-! ## A286103.P12232018962779481623

`∑[A105348(n+2)*A286520(n+2)]`
-/

namespace A286103.P12232018962779481623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n + 2) * A286520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286103.P12232018962779481623

/-! ## A286103.P5340360709349764225

`∑[A105348(n+2)^A329315(n+1)]`
-/

namespace A286103.P5340360709349764225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105348 (n + 2) : ℚ) ^ (A329315 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286103.P5340360709349764225

/-! ## A286103.P2950473161248187893

`A059939(A189326(A000124(n)))`
-/

namespace A286103.P2950473161248187893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A189326 (A000124 n).toNat).toNat

end

end A286103.P2950473161248187893

/-! ## A286103.P17812927391423161534

`∑[A105348(n+2)]%A303762(A001401(n))`
-/

namespace A286103.P17812927391423161534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A303762 (A001401 n).toNat)

end

end A286103.P17812927391423161534

/-! ## A286103.P11428911028247664577

`∑[A147612(A005897(n+1))+A147612(n+2)]`
-/

namespace A286103.P11428911028247664577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A005897 (n + 1)).toNat + A147612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286103.P11428911028247664577

/-!
# A286104: If A286103(A285734(n)) < A286103(A285735(n)), a(n) = A285734(n), otherwise a(n) = A285735(n), a(1) = 0.

The programs for A286104, there is no canonical definition to state claims against.
-/

/-! ## A286104.P13115462333369778025

`A289831(lt[A060586(n), 7])`
-/

namespace A286104.P13115462333369778025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A286104.P13115462333369778025

/-! ## A286104.P1854089289716503861

`A285734(n+1)+A010051(A026521(n+1))`
-/

namespace A286104.P1854089289716503861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285734 (n + 1) + A010051 (A026521 (n + 1)).toNat

end

end A286104.P1854089289716503861

/-!
# A286105: a(1) = 0; for n > 1, a(n) = 1 + max(a(A285734(n)), a(A285735(n))).

The programs for A286105, there is no canonical definition to state claims against.
-/

/-! ## A286105.P17396390977031518428

`1+a(A286107(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A286105.P17396390977031518428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A286107 (n + 1) - 1).toNat

end

end A286105.P17396390977031518428

/-! ## A286105.P7063716935545879518

`a(A286107(n+1)-1)+1` with `a(0)=0`
-/

namespace A286105.P7063716935545879518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A286107 (n + 1) - 1).toNat + 1

end

end A286105.P7063716935545879518

/-! ## A286105.P12299203353644325481

`A102572(A102827(n)*A251618(n+1))`
-/

namespace A286105.P12299203353644325481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A102827 n * A251618 (n + 1)).toNat

end

end A286105.P12299203353644325481

/-!
# A286106: a(1) = 0, and for n > 1, a(n) = A286105(A285735(n)) - A286105(A285734(n)).

The programs for A286106, there is no canonical definition to state claims against.
-/

/-! ## A286106.P481155804948504364

`A286998(A171864(n+2)-A002620(n))`
-/

namespace A286106.P481155804948504364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A171864 (n + 2) - A002620 n).toNat

end

end A286106.P481155804948504364

/-! ## A286106.P17509397432377762426

`A292251(A192804(n)+n)`
-/

namespace A286106.P17509397432377762426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A192804 n + (n : ℤ)).toNat

end

end A286106.P17509397432377762426

/-! ## A286106.P4096388803913854543

`A056170(A045665(n)-A251748(n))`
-/

namespace A286106.P4096388803913854543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A045665 n - A251748 n).toNat

end

end A286106.P4096388803913854543

/-! ## A286106.P5714264882593813918

`A131488(A122437(n+1))%A060501(n)`
-/

namespace A286106.P5714264882593813918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131488 (A122437 (n + 1)).toNat) (A060501 n)

end

end A286106.P5714264882593813918

/-! ## A286106.P8603924191962563466

`A363855(and(A134382(n+1), A293391(n+5)))`
-/

namespace A286106.P8603924191962563466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363855 (Int.land (A134382 (n + 1)) (A293391 (n + 5))).toNat

end

end A286106.P8603924191962563466

/-!
# A286107: a(1) = 0, for n > 1, if A286106(n) > 0, then a(n) = A285735(n), otherwise a(n) = A285734(n).

The programs for A286107, there is no canonical definition to state claims against.
-/

/-! ## A286107.P10505024685488450135

`A285735(n+1)-A000161(A022345(n))`
-/

namespace A286107.P10505024685488450135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1) - A000161 (A022345 n).toNat

end

end A286107.P10505024685488450135

/-! ## A286107.P16589834312664724337

`A285735(n+1)-A010052(A192960(n))`
-/

namespace A286107.P16589834312664724337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1) - A010052 (A192960 n).toNat

end

end A286107.P16589834312664724337

/-! ## A286107.P17065470340821177303

`A285735(n+1)-A062892(∑[A000213(n)])`
-/

namespace A286107.P17065470340821177303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1) - A062892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286107.P17065470340821177303

/-! ## A286107.P3267369394351902443

`A285735(n+1)+A010815(A062325(3*n+4))`
-/

namespace A286107.P3267369394351902443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1) + A010815 (A062325 (3 * n + 4)).toNat

end

end A286107.P3267369394351902443

/-! ## A286107.P9229608642462668438

`1-A285734(n+1)+n-A000161(A022345(n))`
-/

namespace A286107.P9229608642462668438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285734 (n + 1) + (n : ℤ) - A000161 (A022345 n).toNat

end

end A286107.P9229608642462668438

/-!
# A286108: Square array read by antidiagonals: A(n,k) = T(2*(n AND k), n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

The programs for A286108, the canonical program `A286108.P8792181165033674960` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286108 has offset 0).

The definition of A286108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286108.P8792181165033674960

`A221146(n)+A057944(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286108

/-- `A221146(n)+A057944(n)` -/
def P8792181165033674960.Spec : Prop :=
  ∀ n, P8792181165033674960.a n = A286108 n

theorem P8792181165033674960.correct : P8792181165033674960.Spec := by
  intro n
  simp only [A286108]

end A286108

/-! ## A286108.P6546893818224486322

`A286098(n)+A004198(n)`
-/

namespace A286108.P6546893818224486322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + A004198 n

end

end A286108.P6546893818224486322

namespace A286108

/-- `A286098(n)+A004198(n)` -/
def P6546893818224486322.Spec : Prop :=
  ∀ n, P6546893818224486322.a n = A286108 n

theorem P6546893818224486322.correct : P6546893818224486322.Spec := by
  intro n
  simp only [A286108, Nat.add_sub_cancel, A286108.P6546893818224486322.a, A286108.P8792181165033674960.a, A004198, A004198.P12357337643379645634.a, A057944, A057944.P16851463738746886639.a, A221146, A221146.P4369918167823876310.a, A286098, A286098.P12308120415836337446.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286108

/-! ## A286108.P17006671806674730100

`A057944(n)+2*A004198(n)`
-/

namespace A286108.P17006671806674730100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + 2 * A004198 n

end

end A286108.P17006671806674730100

namespace A286108

/-- `A057944(n)+2*A004198(n)` -/
def P17006671806674730100.Spec : Prop :=
  ∀ n, P17006671806674730100.a n = A286108 n

theorem P17006671806674730100.correct : P17006671806674730100.Spec := by
  intro n
  simp only [A286108, Nat.add_sub_cancel, A286108.P17006671806674730100.a, A286108.P8792181165033674960.a, A004198, A004198.P12357337643379645634.a, A057944, A057944.P16851463738746886639.a, A221146, A221146.P4369918167823876310.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286108

/-! ## A286108.P6382113090944035389

`2*A286098(n)-A057944(n)`
-/

namespace A286108.P6382113090944035389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286098 n - A057944 n

end

end A286108.P6382113090944035389

namespace A286108

/-- `2*A286098(n)-A057944(n)` -/
def P6382113090944035389.Spec : Prop :=
  ∀ n, P6382113090944035389.a n = A286108 n

theorem P6382113090944035389.correct : P6382113090944035389.Spec := by
  intro n
  simp only [A286108, Nat.add_sub_cancel, A286108.P6382113090944035389.a, A286108.P8792181165033674960.a, A057944, A057944.P16851463738746886639.a, A221146, A221146.P4369918167823876310.a, A286098, A286098.P12308120415836337446.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A004198, A004198.P12357337643379645634.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286108

/-! ## A286108.P14670631908937512024

`A025581(n)+n-A003987(n)`
-/

namespace A286108.P14670631908937512024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A003987 n)

end

end A286108.P14670631908937512024

namespace A286108

/-- `A025581(n)+n-A003987(n)` -/
def P14670631908937512024.Spec : Prop :=
  ∀ n, P14670631908937512024.a n = A286108 n

end A286108

/-! ## A286108.P3835423105212463304

`A061579(n)+n-A286109(n)`
-/

namespace A286108.P3835423105212463304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + ((n : ℤ) - A286109 n)

end

end A286108.P3835423105212463304

namespace A286108

/-- `A061579(n)+n-A286109(n)` -/
def P3835423105212463304.Spec : Prop :=
  ∀ n, P3835423105212463304.a n = A286108 n

end A286108

/-! ## A286108.P1766050410588664997

`A127739(n+1)-(A003987(n)+1)`
-/

namespace A286108.P1766050410588664997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (A003987 n + 1)

end

end A286108.P1766050410588664997

namespace A286108

/-- `A127739(n+1)-(A003987(n)+1)` -/
def P1766050410588664997.Spec : Prop :=
  ∀ n, P1766050410588664997.a n = A286108 n

end A286108

/-! ## A286108.P17967671471305645743

`A127739(n+1)-A280172(n+1)`
-/

namespace A286108.P17967671471305645743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A280172 (n + 1)

end

end A286108.P17967671471305645743

namespace A286108

/-- `A127739(n+1)-A280172(n+1)` -/
def P17967671471305645743.Spec : Prop :=
  ∀ n, P17967671471305645743.a n = A286108 n

end A286108

/-! ## A286108.P11023279276430323329

`A000096(A003056(n))-A003987(n)`
-/

namespace A286108.P11023279276430323329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - A003987 n

end

end A286108.P11023279276430323329

namespace A286108

/-- `A000096(A003056(n))-A003987(n)` -/
def P11023279276430323329.Spec : Prop :=
  ∀ n, P11023279276430323329.a n = A286108 n

end A286108

/-! ## A286108.P7524903708658565435

`A000217(A003056(n))+2*A004198(n)`
-/

namespace A286108.P7524903708658565435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat + 2 * A004198 n

end

end A286108.P7524903708658565435

namespace A286108

/-- `A000217(A003056(n))+2*A004198(n)` -/
def P7524903708658565435.Spec : Prop :=
  ∀ n, P7524903708658565435.a n = A286108 n

theorem P7524903708658565435.correct : P7524903708658565435.Spec := by
  intro n
  simp only [A286108, Nat.add_sub_cancel, A286108.P7524903708658565435.a, A286108.P8792181165033674960.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A004198, A004198.P12357337643379645634.a, A057944, A057944.P16851463738746886639.a, A221146, A221146.P4369918167823876310.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286108

/-! ## A286108.P11632122951149942580

`2*A286098(n)-A000217(A003056(n))`
-/

namespace A286108.P11632122951149942580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286098 n - A000217 (A003056 n).toNat

end

end A286108.P11632122951149942580

namespace A286108

/-- `2*A286098(n)-A000217(A003056(n))` -/
def P11632122951149942580.Spec : Prop :=
  ∀ n, P11632122951149942580.a n = A286108 n

theorem P11632122951149942580.correct : P11632122951149942580.Spec := by
  intro n
  simp only [A286108, Nat.add_sub_cancel, A286108.P11632122951149942580.a, A286108.P8792181165033674960.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A221146, A221146.P4369918167823876310.a, A286098, A286098.P12308120415836337446.a, A004198, A004198.P12357337643379645634.a, A003986, A003986.P12926496113833734776.a, A003987, A003987.P6522273903622706452.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286108

/-! ## A286108.P4199793959259470289

`A003056(n)+A286098(n)-A003986(n)`
-/

namespace A286108.P4199793959259470289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A286098 n - A003986 n)

end

end A286108.P4199793959259470289

namespace A286108

/-- `A003056(n)+A286098(n)-A003986(n)` -/
def P4199793959259470289.Spec : Prop :=
  ∀ n, P4199793959259470289.a n = A286108 n

end A286108

/-! ## A286108.P4492125924351645952

`A286098(n)+A286099(n)-A286109(n)`
-/

namespace A286108.P4492125924351645952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + (A286099 n - A286109 n)

end

end A286108.P4492125924351645952

namespace A286108

/-- `A286098(n)+A286099(n)-A286109(n)` -/
def P4492125924351645952.Spec : Prop :=
  ∀ n, P4492125924351645952.a n = A286108 n

end A286108

/-! ## A286108.P6770218232842184023

`A286147(n-A002262(n))-A003987(n)`
-/

namespace A286108.P6770218232842184023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 ((n : ℤ) - A002262 n).toNat - A003987 n

end

end A286108.P6770218232842184023

namespace A286108

/-- `A286147(n-A002262(n))-A003987(n)` -/
def P6770218232842184023.Spec : Prop :=
  ∀ n, P6770218232842184023.a n = A286108 n

end A286108

/-! ## A286108.P16307740642697181900

`A057944(n)+A003987(A057944(n))-A003987(n)`
-/

namespace A286108.P16307740642697181900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (A003987 (A057944 n).toNat - A003987 n)

end

end A286108.P16307740642697181900

namespace A286108

/-- `A057944(n)+A003987(A057944(n))-A003987(n)` -/
def P16307740642697181900.Spec : Prop :=
  ∀ n, P16307740642697181900.a n = A286108 n

end A286108

/-! ## A286108.P16450117752547817819

`A000096(A003056(n))-(A286099(n)-A286098(n))`
-/

namespace A286108.P16450117752547817819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - (A286099 n - A286098 n)

end

end A286108.P16450117752547817819

namespace A286108

/-- `A000096(A003056(n))-(A286099(n)-A286098(n))` -/
def P16450117752547817819.Spec : Prop :=
  ∀ n, P16450117752547817819.a n = A286108 n

end A286108

/-! ## A286108.P13913676340468446076

`A286109(A286109(n)-A003987(n))-A003987(n)`
-/

namespace A286108.P13913676340468446076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 (A286109 n - A003987 n).toNat - A003987 n

end

end A286108.P13913676340468446076

namespace A286108

/-- `A286109(A286109(n)-A003987(n))-A003987(n)` -/
def P13913676340468446076.Spec : Prop :=
  ∀ n, P13913676340468446076.a n = A286108 n

end A286108

/-! ## A286108.P5108676645903255026

`A061579(A286109(n))`
-/

namespace A286108.P5108676645903255026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A286109 n).toNat

end

end A286108.P5108676645903255026

namespace A286108

/-- `A061579(A286109(n))` -/
def P5108676645903255026.Spec : Prop :=
  ∀ n, P5108676645903255026.a n = A286108 n

end A286108

/-! ## A286108.P12082421376972585059

`A286098(n)+A025581(A286099(n))`
-/

namespace A286108.P12082421376972585059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + A025581 (A286099 n).toNat

end

end A286108.P12082421376972585059

namespace A286108

/-- `A286098(n)+A025581(A286099(n))` -/
def P12082421376972585059.Spec : Prop :=
  ∀ n, P12082421376972585059.a n = A286108 n

end A286108

/-! ## A286108.P5156467622711021002

`A025581(n)+n-A002262(A286109(n))`
-/

namespace A286108.P5156467622711021002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((n : ℤ) - A002262 (A286109 n).toNat)

end

end A286108.P5156467622711021002

namespace A286108

/-- `A025581(n)+n-A002262(A286109(n))` -/
def P5156467622711021002.Spec : Prop :=
  ∀ n, P5156467622711021002.a n = A286108 n

end A286108

/-!
# A286109: Square array read by antidiagonals: A(n,k) = T(n XOR k, 2*(n AND k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

The programs for A286109, the canonical program `A286109.P13280078457702034505` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286109 has offset 0).

The definition of A286109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286109.P13280078457702034505

`A057944(n)+A003987(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286109

/-- `A057944(n)+A003987(n)` -/
def P13280078457702034505.Spec : Prop :=
  ∀ n, P13280078457702034505.a n = A286109 n

theorem P13280078457702034505.correct : P13280078457702034505.Spec := by
  intro n
  simp only [A286109]

end A286109

/-! ## A286109.P2034352052157298573

`A286099(n)-A004198(n)`
-/

namespace A286109.P2034352052157298573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A004198 n

end

end A286109.P2034352052157298573

namespace A286109

/-- `A286099(n)-A004198(n)` -/
def P2034352052157298573.Spec : Prop :=
  ∀ n, P2034352052157298573.a n = A286109 n

end A286109

/-! ## A286109.P15999736501988517255

`A003987(n)+n-A002262(n)`
-/

namespace A286109.P15999736501988517255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + ((n : ℤ) - A002262 n)

end

end A286109.P15999736501988517255

namespace A286109

/-- `A003987(n)+n-A002262(n)` -/
def P15999736501988517255.Spec : Prop :=
  ∀ n, P15999736501988517255.a n = A286109 n

end A286109

/-! ## A286109.P5786311136032088154

`A099026(n)+n-A004198(n)`
-/

namespace A286109.P5786311136032088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + ((n : ℤ) - A004198 n)

end

end A286109.P5786311136032088154

namespace A286109

/-- `A099026(n)+n-A004198(n)` -/
def P5786311136032088154.Spec : Prop :=
  ∀ n, P5786311136032088154.a n = A286109 n

end A286109

/-! ## A286109.P7001642232142430804

`A061579(n)+n-A286108(n)`
-/

namespace A286109.P7001642232142430804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + ((n : ℤ) - A286108 n)

end

end A286109.P7001642232142430804

namespace A286109

/-- `A061579(n)+n-A286108(n)` -/
def P7001642232142430804.Spec : Prop :=
  ∀ n, P7001642232142430804.a n = A286109 n

end A286109

/-! ## A286109.P7097973034036327079

`A003987(n)+A000217(A003056(n))`
-/

namespace A286109.P7097973034036327079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A000217 (A003056 n).toNat

end

end A286109.P7097973034036327079

namespace A286109

/-- `A003987(n)+A000217(A003056(n))` -/
def P7097973034036327079.Spec : Prop :=
  ∀ n, P7097973034036327079.a n = A286109 n

theorem P7097973034036327079.correct : P7097973034036327079.Spec := by
  intro n
  simp only [A286109, Nat.add_sub_cancel, A286109.P7097973034036327079.a, A286109.P13280078457702034505.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003987, A003987.P6522273903622706452.a, A057944, A057944.P16851463738746886639.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A286109

/-! ## A286109.P16077728090527825961

`A114327(A286098(n))+A057944(n)`
-/

namespace A286109.P16077728090527825961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A286098 n).toNat + A057944 n

end

end A286109.P16077728090527825961

namespace A286109

/-- `A114327(A286098(n))+A057944(n)` -/
def P16077728090527825961.Spec : Prop :=
  ∀ n, P16077728090527825961.a n = A286109 n

end A286109

/-! ## A286109.P12658884141182653964

`A286099(n)-A002262(A286098(n))`
-/

namespace A286109.P12658884141182653964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A002262 (A286098 n).toNat

end

end A286109.P12658884141182653964

namespace A286109

/-- `A286099(n)-A002262(A286098(n))` -/
def P12658884141182653964.Spec : Prop :=
  ∀ n, P12658884141182653964.a n = A286109 n

end A286109

/-! ## A286109.P6587194100648894805

`A000096(A003056(n))-2*A004198(n)`
-/

namespace A286109.P6587194100648894805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - 2 * A004198 n

end

end A286109.P6587194100648894805

namespace A286109

/-- `A000096(A003056(n))-2*A004198(n)` -/
def P6587194100648894805.Spec : Prop :=
  ∀ n, P6587194100648894805.a n = A286109 n

end A286109

/-! ## A286109.P12468879741421962539

`2*A286099(n)-A000096(A003056(n))`
-/

namespace A286109.P12468879741421962539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286099 n - A000096 (A003056 n).toNat

end

end A286109.P12468879741421962539

namespace A286109

/-- `2*A286099(n)-A000096(A003056(n))` -/
def P12468879741421962539.Spec : Prop :=
  ∀ n, P12468879741421962539.a n = A286109 n

end A286109

/-! ## A286109.P10681948043340970506

`2*A286099(n)-A286099(A057944(n))`
-/

namespace A286109.P10681948043340970506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286099 n - A286099 (A057944 n).toNat

end

end A286109.P10681948043340970506

namespace A286109

/-- `2*A286099(n)-A286099(A057944(n))` -/
def P10681948043340970506.Spec : Prop :=
  ∀ n, P10681948043340970506.a n = A286109 n

end A286109

/-! ## A286109.P11291657424203014217

`A003986(n)+A286099(n)-A003056(n)`
-/

namespace A286109.P11291657424203014217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (A286099 n - A003056 n)

end

end A286109.P11291657424203014217

namespace A286109

/-- `A003986(n)+A286099(n)-A003056(n)` -/
def P11291657424203014217.Spec : Prop :=
  ∀ n, P11291657424203014217.a n = A286109 n

end A286109

/-! ## A286109.P10414114500300527095

`A286098(n)+A286099(n)-A286108(n)`
-/

namespace A286109.P10414114500300527095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + (A286099 n - A286108 n)

end

end A286109.P10414114500300527095

namespace A286109

/-- `A286098(n)+A286099(n)-A286108(n)` -/
def P10414114500300527095.Spec : Prop :=
  ∀ n, P10414114500300527095.a n = A286109 n

end A286109

/-! ## A286109.P16602827386285710201

`n-(A002262(n)-A003987(A286098(n)))`
-/

namespace A286109.P16602827386285710201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A002262 n - A003987 (A286098 n).toNat)

end

end A286109.P16602827386285710201

namespace A286109

/-- `n-(A002262(n)-A003987(A286098(n)))` -/
def P16602827386285710201.Spec : Prop :=
  ∀ n, P16602827386285710201.a n = A286109 n

end A286109

/-! ## A286109.P1147500636441772373

`A286108(A286108(n)+A003987(n))+A003987(n)`
-/

namespace A286109.P1147500636441772373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 (A286108 n + A003987 n).toNat + A003987 n

end

end A286109.P1147500636441772373

namespace A286109

/-- `A286108(A286108(n)+A003987(n))+A003987(n)` -/
def P1147500636441772373.Spec : Prop :=
  ∀ n, P1147500636441772373.a n = A286109 n

end A286109

/-! ## A286109.P18290037852532002547

`A061579(A286108(n))`
-/

namespace A286109.P18290037852532002547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A286108 n).toNat

end

end A286109.P18290037852532002547

namespace A286109

/-- `A061579(A286108(n))` -/
def P18290037852532002547.Spec : Prop :=
  ∀ n, P18290037852532002547.a n = A286109 n

end A286109

/-! ## A286109.P5772785001088126083

`A127739(n+1)+A003987(n)-A003987(A127739(n+1))`
-/

namespace A286109.P5772785001088126083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (A003987 n - A003987 (A127739 (n + 1)).toNat)

end

end A286109.P5772785001088126083

namespace A286109

/-- `A127739(n+1)+A003987(n)-A003987(A127739(n+1))` -/
def P5772785001088126083.Spec : Prop :=
  ∀ n, P5772785001088126083.a n = A286109 n

end A286109

/-! ## A286109.P4855242015641675801

`A286099(n)+A286150(n)-A286099(A286150(n))`
-/

namespace A286109.P4855242015641675801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n + (A286150 n - A286099 (A286150 n).toNat)

end

end A286109.P4855242015641675801

namespace A286109

/-- `A286099(n)+A286150(n)-A286099(A286150(n))` -/
def P4855242015641675801.Spec : Prop :=
  ∀ n, P4855242015641675801.a n = A286109 n

end A286109

/-! ## A286109.P17519714601904499834

`A002262(A286150(n))+n-A002262(n)`
-/

namespace A286109.P17519714601904499834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A286150 n).toNat + ((n : ℤ) - A002262 n)

end

end A286109.P17519714601904499834

namespace A286109

/-- `A002262(A286150(n))+n-A002262(n)` -/
def P17519714601904499834.Spec : Prop :=
  ∀ n, P17519714601904499834.a n = A286109 n

end A286109

/-! ## A286109.P14358483846674865163

`A099026(n)+n-A099026(A286150(n))`
-/

namespace A286109.P14358483846674865163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + ((n : ℤ) - A099026 (A286150 n).toNat)

end

end A286109.P14358483846674865163

namespace A286109

/-- `A099026(n)+n-A099026(A286150(n))` -/
def P14358483846674865163.Spec : Prop :=
  ∀ n, P14358483846674865163.a n = A286109 n

end A286109

/-!
# A286110: Number of distinct hexaflexagons of length n.

The programs for A286110, there is no canonical definition to state claims against.
-/

/-! ## A286110.P14660846695263927885

`A114438(n+3)-n%2`
-/

namespace A286110.P14660846695263927885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114438 (n + 3) - ((n % 2 : ℕ) : ℤ)

end

end A286110.P14660846695263927885

/-! ## A286110.P16119712120639149521

`A114438(n+3)-A000035(n)`
-/

namespace A286110.P16119712120639149521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114438 (n + 3) - A000035 n

end

end A286110.P16119712120639149521

/-! ## A286110.P8237065972429302460

`A114438(n+3)-log2(A000034(n))`
-/

namespace A286110.P8237065972429302460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114438 (n + 3) : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A286110.P8237065972429302460

/-! ## A286110.P14820410990985629797

`A114438(n+3)-∑[A062157(n)]`
-/

namespace A286110.P14820410990985629797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114438 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286110.P14820410990985629797

/-! ## A286110.P3710553873760296577

`A114438(n+3)-Δ[A004526(n)]`
-/

namespace A286110.P3710553873760296577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114438 (n + 3) - (f1 (n + 1) - f1 n)

end

end A286110.P3710553873760296577

/-!
# A286112: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A286112, there is no canonical definition to state claims against.
-/

/-! ## A286112.P8860603072097306567

`A286113(n)+A287630(n)-A287631(n)`
-/

namespace A286112.P8860603072097306567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 n + (A287630 n - A287631 n)

end

end A286112.P8860603072097306567

/-! ## A286112.P3692910677519425521

`A287630(n)+A000035(n)*A286113(n)`
-/

namespace A286112.P3692910677519425521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287630 n + A000035 n * A286113 n

end

end A286112.P3692910677519425521

/-! ## A286112.P15929109288803115822

`A007088(A286114(n))`
-/

namespace A286112.P15929109288803115822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286114 n).toNat

end

end A286112.P15929109288803115822

/-! ## A286112.P8726185353552488491

`A007088(gcd(A277936(n), A287632(n)))`
-/

namespace A286112.P8726185353552488491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (A277936 n) (A287632 n))

end

end A286112.P8726185353552488491

/-! ## A286112.P9473928260386204507

`gcd(A007088(A277936(n)), A287630(n))`
-/

namespace A286112.P9473928260386204507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A277936 n).toNat) (A287630 n)

end

end A286112.P9473928260386204507

/-!
# A286113: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A286113, there is no canonical definition to state claims against.
-/

/-! ## A286113.P15647240713138532578

`A286112(n)+A287631(n)-A287630(n)`
-/

namespace A286113.P15647240713138532578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286112 n + (A287631 n - A287630 n)

end

end A286113.P15647240713138532578

/-! ## A286113.P16131934628516996904

`A287631(n)+A000035(n)*A286112(n)`
-/

namespace A286113.P16131934628516996904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287631 n + A000035 n * A286112 n

end

end A286113.P16131934628516996904

/-! ## A286113.P12007454604199455807

`A287631(n)+A000035(n)*A000042(n+1)`
-/

namespace A286113.P12007454604199455807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287631 n + A000035 n * A000042 (n + 1)

end

end A286113.P12007454604199455807

/-! ## A286113.P13123389704508329153

`A007088(A286115(n))`
-/

namespace A286113.P13123389704508329153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286115 n).toNat

end

end A286113.P13123389704508329153

/-! ## A286113.P1041106872666643493

`A007088(gcd(A277936(n), A287633(n)))`
-/

namespace A286113.P1041106872666643493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (A277936 n) (A287633 n))

end

end A286113.P1041106872666643493

/-!
# A286114: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A286114, there is no canonical definition to state claims against.
-/

/-! ## A286114.P11920170482382504351

`gcd(A277936(n), A287632(n))`
-/

namespace A286114.P11920170482382504351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277936 n) (A287632 n)

end

end A286114.P11920170482382504351

/-! ## A286114.P5211355652957292079

`A287632(n)+A000035(n)*A277936(n)`
-/

namespace A286114.P5211355652957292079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287632 n + A000035 n * A277936 n

end

end A286114.P5211355652957292079

/-! ## A286114.P18045554608604126615

`A287632(n)+A000035(n)*A285475(n)`
-/

namespace A286114.P18045554608604126615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287632 n + A000035 n * A285475 n

end

end A286114.P18045554608604126615

/-! ## A286114.P3781798620730562387

`or(A277936(n)^A052552(n), A287632(n))`
-/

namespace A286114.P3781798620730562387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A277936 n : ℚ) ^ (A052552 n : ℤ))) (A287632 n)

end

end A286114.P3781798620730562387

/-! ## A286114.P13798698505662991156

`A286115(n)+A287632(n)-A287633(n)`
-/

namespace A286114.P13798698505662991156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286115 n + (A287632 n - A287633 n)

end

end A286114.P13798698505662991156

/-! ## A286114.P12098089522493219834

`A287632(n)+A000035(n)*A281500(n)`
-/

namespace A286114.P12098089522493219834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287632 n + A000035 n * A281500 n

end

end A286114.P12098089522493219834

/-! ## A286114.P1991792936390293444

`A287632(n)+A000035(n)*A286115(n)`
-/

namespace A286114.P1991792936390293444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287632 n + A000035 n * A286115 n

end

end A286114.P1991792936390293444

/-!
# A286115: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A286115, there is no canonical definition to state claims against.
-/

/-! ## A286115.P3296719276812452549

`gcd(A277936(n), A287633(n))`
-/

namespace A286115.P3296719276812452549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277936 n) (A287633 n)

end

end A286115.P3296719276812452549

/-! ## A286115.P738174801471979941

`A286114(n)+A287633(n)-A287632(n)`
-/

namespace A286115.P738174801471979941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286114 n + (A287633 n - A287632 n)

end

end A286115.P738174801471979941

/-! ## A286115.P12348024735445888121

`A287633(n)+A000035(n)*A277936(n)`
-/

namespace A286115.P12348024735445888121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287633 n + A000035 n * A277936 n

end

end A286115.P12348024735445888121

/-! ## A286115.P18359981220373147664

`A287633(n)+A000035(n)*A281500(n)`
-/

namespace A286115.P18359981220373147664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287633 n + A000035 n * A281500 n

end

end A286115.P18359981220373147664

/-! ## A286115.P13063202684634940586

`A287633(n)+A000035(n)*A285475(n)`
-/

namespace A286115.P13063202684634940586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287633 n + A000035 n * A285475 n

end

end A286115.P13063202684634940586

/-! ## A286115.P6022766228154427675

`A287633(n)+A000035(n)*A286114(n)`
-/

namespace A286115.P6022766228154427675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287633 n + A000035 n * A286114 n

end

end A286115.P6022766228154427675

/-! ## A286115.P11365550935008836085

`or(A277936(n)^A052552(n), A287633(n))`
-/

namespace A286115.P11365550935008836085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A277936 n : ℚ) ^ (A052552 n : ℤ))) (A287633 n)

end

end A286115.P11365550935008836085

/-!
# A286116: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A286116, there is no canonical definition to state claims against.
-/

/-! ## A286116.P12895810104632927856

`A007088(A286118(n))`
-/

namespace A286116.P12895810104632927856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286118 n).toNat

end

end A286116.P12895810104632927856

/-! ## A286116.P8818952165670732513

`A185544(2*A286118(n))`
-/

namespace A286116.P8818952165670732513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286118 n).toNat

end

end A286116.P8818952165670732513

/-!
# A286117: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A286117, there is no canonical definition to state claims against.
-/

/-! ## A286117.P10121243072886298572

`A007088(A286119(n))`
-/

namespace A286117.P10121243072886298572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286119 n).toNat

end

end A286117.P10121243072886298572

/-! ## A286117.P9758363771666479447

`A185544(2*A286119(n))`
-/

namespace A286117.P9758363771666479447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286119 n).toNat

end

end A286117.P9758363771666479447

/-!
# A286118: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A286118, there is no canonical definition to state claims against.
-/

/-! ## A286118.P17055583432790000640

`A093178(A285948(n))-A285972(n+1)`
-/

namespace A286118.P17055583432790000640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A285948 n).toNat - A285972 (n + 1)

end

end A286118.P17055583432790000640

/-! ## A286118.P1765120002329289089

`A286134(A327510(n))+A286084(n)`
-/

namespace A286118.P1765120002329289089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (A327510 n).toNat + A286084 n

end

end A286118.P1765120002329289089

/-! ## A286118.P11331222423154697614

`A286084(n)-A286134(xor(1, A327510(n)))`
-/

namespace A286118.P11331222423154697614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286084 n - A286134 (Int.xor 1 (A327510 n)).toNat

end

end A286118.P11331222423154697614

/-!
# A286120: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A286120, there is no canonical definition to state claims against.
-/

/-! ## A286120.P13063214115027588689

`A007088(A286122(n))`
-/

namespace A286120.P13063214115027588689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286122 n).toNat

end

end A286120.P13063214115027588689

/-! ## A286120.P7303356668967023656

`A185544(2*A286122(n))`
-/

namespace A286120.P7303356668967023656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286122 n).toNat

end

end A286120.P7303356668967023656

/-! ## A286120.P17271931221055311190

`A185544(A286122(n)+A286122(n))`
-/

namespace A286120.P17271931221055311190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286122 n + A286122 n).toNat

end

end A286120.P17271931221055311190

/-!
# A286121: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A286121, there is no canonical definition to state claims against.
-/

/-! ## A286121.P473251596788393493

`A007088(A286123(n))`
-/

namespace A286121.P473251596788393493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286123 n).toNat

end

end A286121.P473251596788393493

/-! ## A286121.P960942662547414370

`A185544(2*A286123(n))`
-/

namespace A286121.P960942662547414370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286123 n).toNat

end

end A286121.P960942662547414370

/-! ## A286121.P10009568532196658786

`A185544(A286123(n)+A286123(n))`
-/

namespace A286121.P10009568532196658786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286123 n + A286123 n).toNat

end

end A286121.P10009568532196658786

/-!
# A286122: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A286122, there is no canonical definition to state claims against.
-/

/-! ## A286122.P7096169383881622963

`A035327(A289044(n)%A000244(n))`
-/

namespace A286122.P7096169383881622963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A289044 n) (A000244 n)).toNat

end

end A286122.P7096169383881622963

/-! ## A286122.P8172773378935649084

`A035327(A289881(n)%A000244(n))`
-/

namespace A286122.P8172773378935649084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A289881 n) (A000244 n)).toNat

end

end A286122.P8172773378935649084

/-! ## A286122.P6293207875762713787

`A035327(∏{e}[3^n, A289881(#)]%A289886(n))`
-/

namespace A286122.P6293207875762713787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A289881 (Nat.factorization (f1 n) p)) (A289886 n)).toNat

end

end A286122.P6293207875762713787

/-!
# A286123: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A286123, there is no canonical definition to state claims against.
-/

/-! ## A286123.P14886214212336433203

`lcm(A286776(n), A323407(A323395(n)))`
-/

namespace A286123.P14886214212336433203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286776 n) (A323407 (A323395 n).toNat)

end

end A286123.P14886214212336433203

/-!
# A286125: Numbers n such that antisigma(n) divides Fibonacci(n).

The programs for A286125, there is no canonical definition to state claims against.
-/

/-! ## A286125.P2535315118173317779

`(24*(n+1)*∑{d}[n+1, #])%A270216(A097779(3*n))`
-/

namespace A286125.P2535315118173317779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((24 * ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) : ℕ) : ℤ) (A270216 (A097779 (3 * n)).toNat)

end

end A286125.P2535315118173317779

/-!
# A286126: Numbers k such that k = Sum_{i=1..j} Sd(k)^i, for some j>0, where Sd(k) is the sum of the digits of k.

The programs for A286126, there is no canonical definition to state claims against.
-/

/-! ## A286126.P12647616167478324753

`A347933(A261294(n+1))`
-/

namespace A286126.P12647616167478324753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347933 (A261294 (n + 1)).toNat

end

end A286126.P12647616167478324753

/-! ## A286126.P10946272552736796500

`A002473(n+1)*A330231(A208059(n))`
-/

namespace A286126.P10946272552736796500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) * A330231 (A208059 n).toNat

end

end A286126.P10946272552736796500

/-! ## A286126.P2484486716898774554

`∑[A136351(2^∑{digits}[n, #%C(n, #)])]`
-/

namespace A286126.P2484486716898774554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136351 (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286126.P2484486716898774554

/-! ## A286126.P14980830557573679966

`∑[A276086(A185293(n))]`
-/

namespace A286126.P14980830557573679966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A185293 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286126.P14980830557573679966

/-! ## A286126.P7565763012057805995

`A347933(A004186(n+1))`
-/

namespace A286126.P7565763012057805995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347933 (A004186 (n + 1)).toNat

end

end A286126.P7565763012057805995

/-!
# A286128: Expansion of eta(q) * eta(q^12) * eta(q^15) * eta(q^20) in powers of q.

The programs for A286128, there is no canonical definition to state claims against.
-/

/-! ## A286128.P263987725476055960

`-A286129(lcm(n, A257143(n)))`
-/

namespace A286128.P263987725476055960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286129 (Int.lcm (n : ℤ) (A257143 n))

end

end A286128.P263987725476055960

/-! ## A286128.P14007590042640452867

`A286129(5*n)`
-/

namespace A286128.P14007590042640452867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (5 * n)

end

end A286128.P14007590042640452867

/-! ## A286128.P10850750384927169432

`A286129(A008706(n))%68`
-/

namespace A286128.P10850750384927169432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286129 (A008706 n).toNat) 68

end

end A286128.P10850750384927169432

/-! ## A286128.P3086472685379639320

`A286129(A008587(n))/gcd(3, A142642(n+1))`
-/

namespace A286128.P3086472685379639320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286129 (A008587 n).toNat : ℚ) / (Int.gcd 3 (A142642 (n + 1)) : ℚ)

end

end A286128.P3086472685379639320

/-! ## A286128.P1982866916219003913

`A286129(A008458(n)-n)+C(n, A207954(n+1))`
-/

namespace A286128.P1982866916219003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (A008458 n - (n : ℤ)).toNat + (Nat.choose n (A207954 (n + 1)).toNat : ℤ)

end

end A286128.P1982866916219003913

/-! ## A286128.P2946783231644604076

`A286129(A008587(n))/A001222(A058501(n+1))`
-/

namespace A286128.P2946783231644604076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286129 (A008587 n).toNat : ℚ) / (A001222 (A058501 (n + 1)).toNat : ℚ)

end

end A286128.P2946783231644604076

/-! ## A286128.P5722765913092813783

`A286129(A008706(n))/A001222(A058501(n+1))`
-/

namespace A286128.P5722765913092813783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286129 (A008706 n).toNat : ℚ) / (A001222 (A058501 (n + 1)).toNat : ℚ)

end

end A286128.P5722765913092813783

/-! ## A286128.P13292543119361344915

`A286129(A008706(n))/A014722(A097876(n))`
-/

namespace A286128.P13292543119361344915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286129 (A008706 n).toNat : ℚ) / (A014722 (A097876 n).toNat : ℚ)

end

end A286128.P13292543119361344915

/-!
# A286129: Expansion of eta(q^3) * eta(q^4) * eta(q^5) * eta(q^60) in powers of q.

The programs for A286129, there is no canonical definition to state claims against.
-/

/-! ## A286129.P11154862852729445185

`-A286128(lcm(n, A257143(n)))`
-/

namespace A286129.P11154862852729445185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286128 (Int.lcm (n : ℤ) (A257143 n))

end

end A286129.P11154862852729445185

/-! ## A286129.P5812855560773065654

`A286128(5*n)`
-/

namespace A286129.P5812855560773065654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (5 * n)

end

end A286129.P5812855560773065654

/-! ## A286129.P5010782796053350949

`or(char[3], A286128(A008706(n)))`
-/

namespace A286129.P5010782796053350949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A286128 (A008706 n).toNat)

end

end A286129.P5010782796053350949

/-! ## A286129.P12898350522352922541

`A286128(A008587(n))%(n+1)`
-/

namespace A286129.P12898350522352922541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286128 (A008587 n).toNat) (n + 1 : ℤ)

end

end A286129.P12898350522352922541

/-! ## A286129.P6655779637163524244

`A286128(A008706(n))%A008458(n)`
-/

namespace A286129.P6655779637163524244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286128 (A008706 n).toNat) (A008458 n)

end

end A286129.P6655779637163524244

/-! ## A286129.P4003025833894712169

`A286128(A008587(n))+A000007(n+1)`
-/

namespace A286129.P4003025833894712169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008587 n).toNat + A000007 (n + 1)

end

end A286129.P4003025833894712169

/-! ## A286129.P14935360805485585624

`A286128(A008706(n))+val(A290561(n), 2)`
-/

namespace A286129.P14935360805485585624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008706 n).toNat + (SequenceMachineLib.valuation (A290561 n).toNat 2 : ℤ)

end

end A286129.P14935360805485585624

/-! ## A286129.P9337545718386933966

`A286128(A008587(n))+and(1, A007290(n))`
-/

namespace A286129.P9337545718386933966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008587 n).toNat + Int.land 1 (A007290 n)

end

end A286129.P9337545718386933966

/-! ## A286129.P57959970769851886

`A286128(A008706(n))+val(A000265(n+1), 2)`
-/

namespace A286129.P57959970769851886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008706 n).toNat + (SequenceMachineLib.valuation (A000265 (n + 1)).toNat 2 : ℤ)

end

end A286129.P57959970769851886

/-! ## A286129.P13841644980470749697

`A286128(A008587(n))+and(1, A064730(n+1))`
-/

namespace A286129.P13841644980470749697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008587 n).toNat + Int.land 1 (A064730 (n + 1))

end

end A286129.P13841644980470749697

/-! ## A286129.P15615617328332862366

`A286128(A008587(n))/gcd(3, A142642(n+1))`
-/

namespace A286129.P15615617328332862366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286128 (A008587 n).toNat : ℚ) / (Int.gcd 3 (A142642 (n + 1)) : ℚ)

end

end A286129.P15615617328332862366

/-! ## A286129.P14506957477932336358

`A286128(A008587(n))+and(2, A005171(n+1))`
-/

namespace A286129.P14506957477932336358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008587 n).toNat + Int.land 2 (A005171 (n + 1))

end

end A286129.P14506957477932336358

/-! ## A286129.P10797751591145163425

`A286128(A008706(n))+val(A108605(n+1)+1, 2)`
-/

namespace A286129.P10797751591145163425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008706 n).toNat + (SequenceMachineLib.valuation (A108605 (n + 1) + 1).toNat 2 : ℤ)

end

end A286129.P10797751591145163425

/-! ## A286129.P17638061636226978483

`A286128(A008706(n))+val(A119398(n+1), 2)`
-/

namespace A286129.P17638061636226978483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008706 n).toNat + (SequenceMachineLib.valuation (A119398 (n + 1)).toNat 2 : ℤ)

end

end A286129.P17638061636226978483

/-! ## A286129.P11606098130838091426

`A286128(A008587(n))/A001221(A300394(n+1))`
-/

namespace A286129.P11606098130838091426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286128 (A008587 n).toNat : ℚ) / (A001221 (A300394 (n + 1)).toNat : ℚ)

end

end A286129.P11606098130838091426

/-! ## A286129.P3076632199037649096

`A286128(A008706(n))+A053186(n²)`
-/

namespace A286129.P3076632199037649096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (A008706 n).toNat + A053186 (n ^ 2)

end

end A286129.P3076632199037649096

/-!
# A286130: Number x = concat(MSD(x),b) such that MSD(x)*b = phi(x), where MSD(x) is the Most Significant Digit of x and phi(x) is the Euler totient function of x.

The programs for A286130, there is no canonical definition to state claims against.
-/

/-! ## A286130.P16068333435144056285

`eq[A000010(A233583(n+1)), A330633(n)]`
-/

namespace A286130.P16068333435144056285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286130.P16068333435144056285

/-!
# A286131: Expansion of q^(-1/2) * eta(q) * eta(q^30) * eta(q^35) * eta(q^42) in powers of q.

The programs for A286131, there is no canonical definition to state claims against.
-/

/-! ## A286131.P13472297643091847013

`A286135(n)-A286132(n)`
-/

namespace A286131.P13472297643091847013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286132 n

end

end A286131.P13472297643091847013

/-! ## A286131.P4738577956389303328

`A286133(n)+A286134(n)-A286132(n)`
-/

namespace A286131.P4738577956389303328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286133 n + (A286134 n - A286132 n)

end

end A286131.P4738577956389303328

/-! ## A286131.P2981291838949864684

`A286134(5*n+2)`
-/

namespace A286131.P2981291838949864684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (5 * n + 2)

end

end A286131.P2981291838949864684

/-! ## A286131.P1999947324416299332

`A286135(n)-A286133(A016873(n))`
-/

namespace A286131.P1999947324416299332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286133 (A016873 n).toNat

end

end A286131.P1999947324416299332

/-! ## A286131.P15168327680847453618

`(1-A057427(n))!*A286134(A016873(n))`
-/

namespace A286131.P15168327680847453618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A057427 n).toNat : ℤ) * A286134 (A016873 n).toNat

end

end A286131.P15168327680847453618

/-! ## A286131.P1332999589899376446

`A007318(∑[n])*A286134(A016873(n))`
-/

namespace A286131.P1332999589899376446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A286134 (A016873 n).toNat

end

end A286131.P1332999589899376446

/-!
# A286132: Expansion of q^(-1/2) * eta(q^3) * eta(q^10) * eta(q^14) * eta(q^105) in powers of q.

The programs for A286132, there is no canonical definition to state claims against.
-/

/-! ## A286132.P13389468408990078285

`A286135(n)-A286131(n)`
-/

namespace A286132.P13389468408990078285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286131 n

end

end A286132.P13389468408990078285

/-! ## A286132.P13116512523312729364

`A286133(n)+A286134(n)-A286131(n)`
-/

namespace A286132.P13116512523312729364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286133 n + (A286134 n - A286131 n)

end

end A286132.P13116512523312729364

/-! ## A286132.P8897073167989324691

`A286133(5*n+2)`
-/

namespace A286132.P8897073167989324691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286133 (5 * n + 2)

end

end A286132.P8897073167989324691

/-! ## A286132.P2462043742340882812

`A286135(n)-A286134(A016873(n))`
-/

namespace A286132.P2462043742340882812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286134 (A016873 n).toNat

end

end A286132.P2462043742340882812

/-! ## A286132.P9201320525261122037

`A286135(n)-A286134(A017017(n))`
-/

namespace A286132.P9201320525261122037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286134 (A017017 n).toNat

end

end A286132.P9201320525261122037

/-!
# A286133: Expansion of q^(-1/2) * eta(q^2) * eta(q^15) * eta(q^21) * eta(q^70) in powers of q.

The programs for A286133, there is no canonical definition to state claims against.
-/

/-! ## A286133.P867796104792764808

`A286135(n)-A286134(n)`
-/

namespace A286133.P867796104792764808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286134 n

end

end A286133.P867796104792764808

/-! ## A286133.P8554032949224030686

`A286131(n)+A286132(n)-A286134(n)`
-/

namespace A286133.P8554032949224030686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286131 n + (A286132 n - A286134 n)

end

end A286133.P8554032949224030686

/-! ## A286133.P12359460401973785521

`A286132(A016873(n))`
-/

namespace A286133.P12359460401973785521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286132 (A016873 n).toNat

end

end A286133.P12359460401973785521

/-! ## A286133.P8021480249252444916

`A286135(n)-A286131(A016873(n))`
-/

namespace A286133.P8021480249252444916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286131 (A016873 n).toNat

end

end A286133.P8021480249252444916

/-! ## A286133.P16630637553137293380

`A286132(3*(n+1)+4*n)`
-/

namespace A286133.P16630637553137293380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286132 (3 * (n + 1) + 4 * n)

end

end A286133.P16630637553137293380

/-!
# A286134: Expansion of q^(-1/2) * eta(q^5) * eta(q^6) * eta(q^7) * eta(q^210) in powers of q.

The programs for A286134, there is no canonical definition to state claims against.
-/

/-! ## A286134.P17763522838742043596

`A286135(n)-A286133(n)`
-/

namespace A286134.P17763522838742043596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286133 n

end

end A286134.P17763522838742043596

/-! ## A286134.P1501086049884367546

`A286131(n)+A286132(n)-A286133(n)`
-/

namespace A286134.P1501086049884367546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286131 n + (A286132 n - A286133 n)

end

end A286134.P1501086049884367546

/-! ## A286134.P17091310866533257706

`A286131(5*n+2)`
-/

namespace A286134.P17091310866533257706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286131 (5 * n + 2)

end

end A286134.P17091310866533257706

/-! ## A286134.P4988301861445267706

`A057427(n)*A286131(A016873(n))`
-/

namespace A286134.P4988301861445267706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A286131 (A016873 n).toNat

end

end A286134.P4988301861445267706

/-! ## A286134.P14014900031447978303

`A286135(n)-A286132(3*(n+1)+4*n)`
-/

namespace A286134.P14014900031447978303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 n - A286132 (3 * (n + 1) + 4 * n)

end

end A286134.P14014900031447978303

/-!
# A286135: a(n) = A286131(n) + A286132(n).

The programs for A286135, there is no canonical definition to state claims against.
-/

/-! ## A286135.P17898181750222744815

`A286131(n)+A286132(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286135.P17898181750222744815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286131 n + A286132 n

end

end A286135.P17898181750222744815

/-! ## A286135.P16116034733603316468

`A286133(n)+A286134(n)`
-/

namespace A286135.P16116034733603316468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286133 n + A286134 n

end

end A286135.P16116034733603316468

/-! ## A286135.P1869152328642350570

`A286133(n)+A286131(5*n+2)`
-/

namespace A286135.P1869152328642350570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286133 n + A286131 (5 * n + 2)

end

end A286135.P1869152328642350570

/-! ## A286135.P183945926978642517

`A286134(A016873(n))+A286132(n)`
-/

namespace A286135.P183945926978642517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (A016873 n).toNat + A286132 n

end

end A286135.P183945926978642517

/-! ## A286135.P1849841690465653052

`A286134(n)+A286132(3*(n+1)+4*n)`
-/

namespace A286135.P1849841690465653052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 n + A286132 (3 * (n + 1) + 4 * n)

end

end A286135.P1849841690465653052

/-!
# A286136: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A286136, there is no canonical definition to state claims against.
-/

/-! ## A286136.P9348627092320386731

`A007088(A286165(n))`
-/

namespace A286136.P9348627092320386731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286165 n).toNat

end

end A286136.P9348627092320386731

/-! ## A286136.P6536058163740602341

`A185544(2*A286165(n))`
-/

namespace A286136.P6536058163740602341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286165 n).toNat

end

end A286136.P6536058163740602341

/-! ## A286136.P10392653632871634257

`A286171(A129601(∑[n]))`
-/

namespace A286136.P10392653632871634257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286171 (A129601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286136.P10392653632871634257

/-! ## A286136.P2889603634395061129

`A286171(A348687(∑[n]))`
-/

namespace A286136.P2889603634395061129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286171 (A348687 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286136.P2889603634395061129

/-! ## A286136.P2231447181938923648

`A286171(n)*A366126(A001333(n))`
-/

namespace A286136.P2231447181938923648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286171 n * A366126 (A001333 n).toNat

end

end A286136.P2231447181938923648

/-!
# A286137: Expansion of eta(q) * eta(q^2) * eta(q^15) * eta(q^30) in powers of q.

The programs for A286137, there is no canonical definition to state claims against.
-/

/-! ## A286137.P8087970194514325762

`-A030218(3*n)`
-/

namespace A286137.P8087970194514325762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030218 (3 * n)

end

end A286137.P8087970194514325762

/-! ## A286137.P10265019434382365247

`A286129(4*n)-2*A286129(4*n)`
-/

namespace A286137.P10265019434382365247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (4 * n) - 2 * A286129 (4 * n)

end

end A286137.P10265019434382365247

/-! ## A286137.P13285112692714097495

`A030218(5*n)`
-/

namespace A286137.P13285112692714097495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (5 * n)

end

end A286137.P13285112692714097495

/-! ## A286137.P15611466605325468530

`A030218(A008574(n)+n)%A008574(n)`
-/

namespace A286137.P15611466605325468530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030218 (A008574 n + (n : ℤ)).toNat) (A008574 n)

end

end A286137.P15611466605325468530

/-! ## A286137.P13325955118651143792

`A030218(A008458(n)-n)%A001599(n+1)`
-/

namespace A286137.P13325955118651143792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030218 (A008458 n - (n : ℤ)).toNat) (A001599 (n + 1))

end

end A286137.P13325955118651143792

/-! ## A286137.P14718460841070718257

`A286128(12*n)`
-/

namespace A286137.P14718460841070718257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (12 * n)

end

end A286137.P14718460841070718257

/-! ## A286137.P15124116099134371279

`A286129(A169823(n))`
-/

namespace A286137.P15124116099134371279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (A169823 n).toNat

end

end A286137.P15124116099134371279

/-!
# A286140: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A286140, there is no canonical definition to state claims against.
-/

/-! ## A286140.P8339228734697648568

`A007088(A286166(n))`
-/

namespace A286140.P8339228734697648568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286166 n).toNat

end

end A286140.P8339228734697648568

/-! ## A286140.P17122060472738681977

`∏{e}[Δ[3^n], A286172(#)]`
-/

namespace A286140.P17122060472738681977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286172 (Nat.factorization (f1 n).natAbs p)

end

end A286140.P17122060472738681977

/-! ## A286140.P11830340458289684787

`A286172(A129601(∑[n]))`
-/

namespace A286140.P11830340458289684787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286172 (A129601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286140.P11830340458289684787

/-! ## A286140.P14939657116296107635

`A286172(A004895(n+1))`
-/

namespace A286140.P14939657116296107635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286172 (A004895 (n + 1)).toNat

end

end A286140.P14939657116296107635

/-! ## A286140.P3550800266334413812

`A286172(n)+A065205(A176631(n))`
-/

namespace A286140.P3550800266334413812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286172 n + A065205 (A176631 n).toNat

end

end A286140.P3550800266334413812

/-!
# A286141: Number of partitions of n into a squarefree number of parts.

The programs for A286141, there is no canonical definition to state claims against.
-/

/-! ## A286141.P10981653348703379974

`A002024(A294535(n))-n`
-/

namespace A286141.P10981653348703379974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A294535 n).toNat - (n : ℤ)

end

end A286141.P10981653348703379974

/-! ## A286141.P3525063614096321168

`A002024(A055244(n)-A011371(n))`
-/

namespace A286141.P3525063614096321168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A055244 n - A011371 n).toNat

end

end A286141.P3525063614096321168

/-! ## A286141.P947856820172552647

`A002024(A055244(n)-A172275(n))`
-/

namespace A286141.P947856820172552647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A055244 n - A172275 n).toNat

end

end A286141.P947856820172552647

/-! ## A286141.P7868349188254291182

`A002024(A055244(n)-A219641(n))`
-/

namespace A286141.P7868349188254291182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A055244 n - A219641 n).toNat

end

end A286141.P7868349188254291182

/-! ## A286141.P11348648023823744574

`A067085(A073776(n+1))`
-/

namespace A286141.P11348648023823744574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A073776 (n + 1)).toNat

end

end A286141.P11348648023823744574

/-!
# A286142: Compound filter: a(n) = T(A257993(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286142, there is no canonical definition to state claims against.
-/

/-! ## A286142.P14730922497355915309

`1/2*(2+(A257993(n+1)+A046523(n+1))²-A257993(n+1)-3*A046523(n+1))`
-/

namespace A286142.P14730922497355915309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A257993 (n + 1) + A046523 (n + 1)) ^ 2 - A257993 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286142.P14730922497355915309

/-! ## A286142.P12220756398257238020

`A286143(∑[∑[A111332(n)]])`
-/

namespace A286142.P12220756398257238020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286143 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286142.P12220756398257238020

/-! ## A286142.P6018913721498440369

`A286143(∑[∑[A151620(n)]])`
-/

namespace A286142.P6018913721498440369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286143 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286142.P6018913721498440369

/-! ## A286142.P13955776256023516870

`A018851(A286143(n+1)²)`
-/

namespace A286142.P13955776256023516870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A286143 (n + 1) ^ 2).toNat

end

end A286142.P13955776256023516870

/-! ## A286142.P13944296859193752164

`A286143(n+1)%∑[A179162(n)]`
-/

namespace A286142.P13944296859193752164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286143 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286142.P13944296859193752164

/-!
# A286143: Compound filter: a(n) = T(A055881(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286143, the canonical program `A286143.P15931790355301300039` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286143 has offset 1).

The definition of A286143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A055881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286143.P15931790355301300039

`1/2*(2+(A055881(n+1)+A046523(n+1))²-A055881(n+1)-3*A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286143

/-- `1/2*(2+(A055881(n+1)+A046523(n+1))²-A055881(n+1)-3*A046523(n+1))` -/
def P15931790355301300039.Spec : Prop :=
  ∀ n, P15931790355301300039.a n = (A286143 (n + 1) : ℚ)

end A286143

/-!
# A286144: Compound filter: a(n) = T(A000010(n), A257993(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286144, there is no canonical definition to state claims against.
-/

/-! ## A286144.P9396488515389114388

`(2+(A000010(n+1)+A257993(n+1))²-A000010(n+1)-3*A257993(n+1))/2`
-/

namespace A286144.P9396488515389114388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A000010 (n + 1) + A257993 (n + 1)) ^ 2 - A000010 (n + 1) - 3 * A257993 (n + 1) : ℚ) / 2

end

end A286144.P9396488515389114388

/-!
# A286145: Square array read by antidiagonals: A(n,k) = T(n XOR k, k), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

The programs for A286145, the canonical program `A286145.P7193597459372370240` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286145 has offset 0).

The definition of A286145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286145.P960407224003866933

`A286147(A061579(n))`
-/

namespace A286145.P960407224003866933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A061579 n).toNat

end

end A286145.P960407224003866933

namespace A286145

/-- `A286147(A061579(n))` -/
def P960407224003866933.Spec : Prop :=
  ∀ n, P960407224003866933.a n = A286145 n

end A286145

/-! ## A286145.P1843494231854180105

`A286147(A057944(n)+A025581(n))`
-/

namespace A286145.P1843494231854180105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A057944 n + A025581 n).toNat

end

end A286145.P1843494231854180105

namespace A286145

/-- `A286147(A057944(n)+A025581(n))` -/
def P1843494231854180105.Spec : Prop :=
  ∀ n, P1843494231854180105.a n = A286145 n

end A286145

/-! ## A286145.P7193597459372370240

`A003987(n)+A000217(A025581(n)+A003987(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286145

/-- `A003987(n)+A000217(A025581(n)+A003987(n))` -/
def P7193597459372370240.Spec : Prop :=
  ∀ n, P7193597459372370240.a n = A286145 n

theorem P7193597459372370240.correct : P7193597459372370240.Spec := by
  intro n
  simp only [A286145]

end A286145

/-! ## A286145.P15124471604913600336

`A286147(A286147(n))+n-A286108(n)`
-/

namespace A286145.P15124471604913600336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A286147 n).toNat + ((n : ℤ) - A286108 n)

end

end A286145.P15124471604913600336

namespace A286145

/-- `A286147(A286147(n))+n-A286108(n)` -/
def P15124471604913600336.Spec : Prop :=
  ∀ n, P15124471604913600336.a n = A286145 n

end A286145

/-! ## A286145.P18036017278138401469

`A163240(A163235(n))`
-/

namespace A286145.P18036017278138401469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163235 n).toNat

end

end A286145.P18036017278138401469

namespace A286145

/-- `A163240(A163235(n))` -/
def P18036017278138401469.Spec : Prop :=
  ∀ n, P18036017278138401469.a n = A286145 n

end A286145

/-! ## A286145.P8662942590168615914

`A163236(A163239(n))`
-/

namespace A286145.P8662942590168615914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A163239 n).toNat

end

end A286145.P8662942590168615914

namespace A286145

/-- `A163236(A163239(n))` -/
def P8662942590168615914.Spec : Prop :=
  ∀ n, P8662942590168615914.a n = A286145 n

end A286145

/-! ## A286145.P5036993689632742974

`A163240(A057300(A163233(n)))`
-/

namespace A286145.P5036993689632742974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A057300 (A163233 n).toNat).toNat

end

end A286145.P5036993689632742974

namespace A286145

/-- `A163240(A057300(A163233(n)))` -/
def P5036993689632742974.Spec : Prop :=
  ∀ n, P5036993689632742974.a n = A286145 n

end A286145

/-! ## A286145.P15075816407172430788

`A163238(A057300(A163237(n)))`
-/

namespace A286145.P15075816407172430788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A057300 (A163237 n).toNat).toNat

end

end A286145.P15075816407172430788

namespace A286145

/-- `A163238(A057300(A163237(n)))` -/
def P15075816407172430788.Spec : Prop :=
  ∀ n, P15075816407172430788.a n = A286145 n

end A286145

/-! ## A286145.P896251750865503930

`A054239(A147995(A163546(A054238(n))))`
-/

namespace A286145.P896251750865503930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A147995 (A163546 (A054238 n).toNat).toNat).toNat

end

end A286145.P896251750865503930

namespace A286145

/-- `A054239(A147995(A163546(A054238(n))))` -/
def P896251750865503930.Spec : Prop :=
  ∀ n, P896251750865503930.a n = A286145 n

end A286145

/-! ## A286145.P10774218931309605966

`A054239(A147995(A163546(A163486(A163545(n)))))`
-/

namespace A286145.P10774218931309605966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A147995 (A163546 (A163486 (A163545 n).toNat).toNat).toNat).toNat

end

end A286145.P10774218931309605966

namespace A286145

/-- `A054239(A147995(A163546(A163486(A163545(n)))))` -/
def P10774218931309605966.Spec : Prop :=
  ∀ n, P10774218931309605966.a n = A286145 n

end A286145

/-! ## A286145.P5244163243738880144

`A163240(A163241(A163239(A163237(A163238(n)))))`
-/

namespace A286145.P5244163243738880144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163241 (A163239 (A163237 (A163238 n).toNat).toNat).toNat).toNat

end

end A286145.P5244163243738880144

namespace A286145

/-- `A163240(A163241(A163239(A163237(A163238(n)))))` -/
def P5244163243738880144.Spec : Prop :=
  ∀ n, P5244163243738880144.a n = A286145 n

end A286145

/-! ## A286145.P10722833895842419282

`A163240(A163241(A163239(A163239(A163240(n)))))`
-/

namespace A286145.P10722833895842419282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163241 (A163239 (A163239 (A163240 n).toNat).toNat).toNat).toNat

end

end A286145.P10722833895842419282

namespace A286145

/-- `A163240(A163241(A163239(A163239(A163240(n)))))` -/
def P10722833895842419282.Spec : Prop :=
  ∀ n, P10722833895842419282.a n = A286145 n

end A286145

/-! ## A286145.P17301893902990636047

`A163236(A163241(A163235(A163235(A163236(n)))))`
-/

namespace A286145.P17301893902990636047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A163241 (A163235 (A163235 (A163236 n).toNat).toNat).toNat).toNat

end

end A286145.P17301893902990636047

namespace A286145

/-- `A163236(A163241(A163235(A163235(A163236(n)))))` -/
def P17301893902990636047.Spec : Prop :=
  ∀ n, P17301893902990636047.a n = A286145 n

end A286145

/-!
# A286146: Lower triangular region of square array A286101.

The programs for A286146, there is no canonical definition to state claims against.
-/

/-! ## A286146.P18098351901317927577

`A286148(A038722(n+1))`
-/

namespace A286146.P18098351901317927577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286148 (A038722 (n + 1)).toNat

end

end A286146.P18098351901317927577

/-! ## A286146.P18246656541571628705

`A286148(A061579(n)+1)`
-/

namespace A286146.P18246656541571628705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286148 (A061579 n + 1).toNat

end

end A286146.P18246656541571628705

/-! ## A286146.P5337953065384238569

`A286148(A002024(n+1)²-n)`
-/

namespace A286146.P5337953065384238569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286148 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286146.P5337953065384238569

/-! ## A286146.P599205060548579472

`A286148(A000194(2*n+1)²-n)`
-/

namespace A286146.P599205060548579472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286148 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286146.P599205060548579472

/-! ## A286146.P2853120144061085400

`A285724(A245300(n)+1)`
-/

namespace A286146.P2853120144061085400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285724 (A245300 n + 1).toNat

end

end A286146.P2853120144061085400

/-!
# A286147: Square array read by antidiagonals: A(n,k) = T(n XOR k, n), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

The programs for A286147, the canonical program `A286147.P2874123018124836590` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286147 has offset 0).

The definition of A286147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286147.P2874123018124836590

`A286145(A061579(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286147

/-- `A286145(A061579(n))` -/
def P2874123018124836590.Spec : Prop :=
  ∀ n, P2874123018124836590.a n = A286147 n

theorem P2874123018124836590.correct : P2874123018124836590.Spec := by
  intro n
  simp only [A286147]

end A286147

/-! ## A286147.P5853407345286279832

`A286145(A038722(n+1)-1)`
-/

namespace A286147.P5853407345286279832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A038722 (n + 1) - 1).toNat

end

end A286147.P5853407345286279832

namespace A286147

/-- `A286145(A038722(n+1)-1)` -/
def P5853407345286279832.Spec : Prop :=
  ∀ n, P5853407345286279832.a n = A286147 n

end A286147

/-! ## A286147.P14224758580624995943

`A003987(n)+A000217(A003987(n)+A002262(n))`
-/

namespace A286147.P14224758580624995943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A000217 (A003987 n + A002262 n).toNat

end

end A286147.P14224758580624995943

namespace A286147

/-- `A003987(n)+A000217(A003987(n)+A002262(n))` -/
def P14224758580624995943.Spec : Prop :=
  ∀ n, P14224758580624995943.a n = A286147 n

end A286147

/-! ## A286147.P11328571190071019759

`A163240(A163233(n))`
-/

namespace A286147.P11328571190071019759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163233 n).toNat

end

end A286147.P11328571190071019759

namespace A286147

/-- `A163240(A163233(n))` -/
def P11328571190071019759.Spec : Prop :=
  ∀ n, P11328571190071019759.a n = A286147 n

end A286147

/-! ## A286147.P9297926237836831334

`A163236(A163237(n))`
-/

namespace A286147.P9297926237836831334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A163237 n).toNat

end

end A286147.P9297926237836831334

namespace A286147

/-- `A163236(A163237(n))` -/
def P9297926237836831334.Spec : Prop :=
  ∀ n, P9297926237836831334.a n = A286147 n

end A286147

/-! ## A286147.P1202491538184474593

`A163240(A057300(A163235(n)))`
-/

namespace A286147.P1202491538184474593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A057300 (A163235 n).toNat).toNat

end

end A286147.P1202491538184474593

namespace A286147

/-- `A163240(A057300(A163235(n)))` -/
def P1202491538184474593.Spec : Prop :=
  ∀ n, P1202491538184474593.a n = A286147 n

end A286147

/-! ## A286147.P3414901256807885898

`A163238(A057300(A163239(n)))`
-/

namespace A286147.P3414901256807885898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A057300 (A163239 n).toNat).toNat

end

end A286147.P3414901256807885898

namespace A286147

/-- `A163238(A057300(A163239(n)))` -/
def P3414901256807885898.Spec : Prop :=
  ∀ n, P3414901256807885898.a n = A286147 n

end A286147

/-! ## A286147.P4717101984903665459

`A054239(A147995(A163546(A163486(A147995(n)))))`
-/

namespace A286147.P4717101984903665459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A147995 (A163546 (A163486 (A147995 n).toNat).toNat).toNat).toNat

end

end A286147.P4717101984903665459

namespace A286147

/-- `A054239(A147995(A163546(A163486(A147995(n)))))` -/
def P4717101984903665459.Spec : Prop :=
  ∀ n, P4717101984903665459.a n = A286147 n

end A286147

/-! ## A286147.P7165063967799860824

`A163240(A163241(A163237(A163241(A163241(n)))))`
-/

namespace A286147.P7165063967799860824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163241 (A163237 (A163241 (A163241 n).toNat).toNat).toNat).toNat

end

end A286147.P7165063967799860824

namespace A286147

/-- `A163240(A163241(A163237(A163241(A163241(n)))))` -/
def P7165063967799860824.Spec : Prop :=
  ∀ n, P7165063967799860824.a n = A286147 n

end A286147

/-!
# A286148: Triangle A286146 reversed.

The programs for A286148, there is no canonical definition to state claims against.
-/

/-! ## A286148.P12599405553449366672

`A286146(A038722(n+1))`
-/

namespace A286148.P12599405553449366672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286146 (A038722 (n + 1)).toNat

end

end A286148.P12599405553449366672

/-! ## A286148.P15488082601595650451

`A286146(A061579(n)+1)`
-/

namespace A286148.P15488082601595650451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286146 (A061579 n + 1).toNat

end

end A286148.P15488082601595650451

/-! ## A286148.P1185371638330598548

`A286146(A093995(n+1)-n)`
-/

namespace A286148.P1185371638330598548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286146 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286148.P1185371638330598548

/-! ## A286148.P17999645214683846992

`A286146(A002024(n+1)²-n)`
-/

namespace A286148.P17999645214683846992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286146 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286148.P17999645214683846992

/-! ## A286148.P5649873258551173871

`A286146(A000194(2*n+1)²-n)`
-/

namespace A286148.P5649873258551173871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286146 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286148.P5649873258551173871

/-!
# A286149: Compound filter: a(n) = T(A046523(n), A109395(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286149, the canonical program `A286149.P9625386761437608133` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286149 has offset 1).

The definition of A286149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286149.P9625386761437608133

`1/2*(2+(A046523(n+1)+A109395(n+1))²-A046523(n+1)-3*A109395(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286149

/-- `1/2*(2+(A046523(n+1)+A109395(n+1))²-A046523(n+1)-3*A109395(n+1))` -/
def P9625386761437608133.Spec : Prop :=
  ∀ n, P9625386761437608133.a n = (A286149 (n + 1) : ℚ)

end A286149

/-!
# A286150: Square array read by antidiagonals: A(n,k) = T(n XOR k, min(n,k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

The programs for A286150, the canonical program `A286150.P18193726890069242487` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286150 has offset 0).

The definition of A286150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286150.P18193726890069242487

`A286147(A057944(n)+A004197(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286150

/-- `A286147(A057944(n)+A004197(n))` -/
def P18193726890069242487.Spec : Prop :=
  ∀ n, P18193726890069242487.a n = A286150 n

theorem P18193726890069242487.correct : P18193726890069242487.Spec := by
  intro n
  simp only [A286150]

end A286150

/-! ## A286150.P26281871070601848

`A286108(A286151(n))+A049581(n)`
-/

namespace A286150.P26281871070601848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 (A286151 n).toNat + A049581 n

end

end A286150.P26281871070601848

namespace A286150

/-- `A286108(A286151(n))+A049581(n)` -/
def P26281871070601848.Spec : Prop :=
  ∀ n, P26281871070601848.a n = A286150 n

end A286150

/-! ## A286150.P8448291692697338871

`A286099(A286151(n))-A004198(n)`
-/

namespace A286150.P8448291692697338871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 (A286151 n).toNat - A004198 n

end

end A286150.P8448291692697338871

namespace A286150

/-- `A286099(A286151(n))-A004198(n)` -/
def P8448291692697338871.Spec : Prop :=
  ∀ n, P8448291692697338871.a n = A286150 n

end A286150

/-! ## A286150.P14555752724917471685

`A286099(A286151(n))-A025581(A286099(n))`
-/

namespace A286150.P14555752724917471685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 (A286151 n).toNat - A025581 (A286099 n).toNat

end

end A286150.P14555752724917471685

namespace A286150

/-- `A286099(A286151(n))-A025581(A286099(n))` -/
def P14555752724917471685.Spec : Prop :=
  ∀ n, P14555752724917471685.a n = A286150 n

end A286150

/-! ## A286150.P16353441231355014409

`A057944(A286151(n))+A003987(n)`
-/

namespace A286150.P16353441231355014409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A286151 n).toNat + A003987 n

end

end A286150.P16353441231355014409

namespace A286150

/-- `A057944(A286151(n))+A003987(n)` -/
def P16353441231355014409.Spec : Prop :=
  ∀ n, P16353441231355014409.a n = A286150 n

end A286150

/-!
# A286152: Compound filter: a(n) = T(A051953(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286152, the canonical program `A286152.P7471709949904273220` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286152 has offset 1).

The definition of A286152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286152.P7471709949904273220

`(2+(A051953(n+1)+A046523(n+1))²-A051953(n+1)-3*A046523(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286152

/-- `(2+(A051953(n+1)+A046523(n+1))²-A051953(n+1)-3*A046523(n+1))/2` -/
def P7471709949904273220.Spec : Prop :=
  ∀ n, P7471709949904273220.a n = (A286152 (n + 1) : ℚ)

end A286152

/-!
# A286153: Square array read by descending antidiagonals A(1,1), A(1,2), A(2,1), ...: If n > k, A(n,k) = T(n XOR k, k), and otherwise A(n,k) = T(n, n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

The programs for A286153, there is no canonical definition to state claims against.
-/

/-! ## A286153.P15055328818785594618

`A286151(2*A014132(n+1)-n)`
-/

namespace A286153.P15055328818785594618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A286153.P15055328818785594618

/-! ## A286153.P6045093238466342376

`A286151(eq[A073424(n), A127648(n)])`
-/

namespace A286153.P6045093238466342376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286153.P6045093238466342376

/-! ## A286153.P1969407244832286396

`A286151(A140978(n+1)-A061579(n))`
-/

namespace A286153.P1969407244832286396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (A140978 (n + 1) - A061579 n).toNat

end

end A286153.P1969407244832286396

/-! ## A286153.P5373168889852503955

`A286151(eq[A073424(n+1), A073424(n)])`
-/

namespace A286153.P5373168889852503955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286153.P5373168889852503955

/-! ## A286153.P17280751478183393154

`A286151(A189151(n+1)-A127739(n+1))`
-/

namespace A286153.P17280751478183393154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (A189151 (n + 1) - A127739 (n + 1)).toNat

end

end A286153.P17280751478183393154

/-! ## A286153.P11287095048595940926

`A286151(A014132(∑[A035214(n)]))`
-/

namespace A286153.P11287095048595940926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A286153.P11287095048595940926

/-! ## A286153.P6892352242338805112

`A286151(A014132(A014132(n+1)))`
-/

namespace A286153.P6892352242338805112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A286153.P6892352242338805112

/-! ## A286153.P15049317386181865510

`A286151(eq[0, A103451(n)])`
-/

namespace A286153.P15049317386181865510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286153.P15049317386181865510

/-! ## A286153.P1796578121207826312

`A286151(eq[0, A103452(n)])`
-/

namespace A286153.P1796578121207826312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286153.P1796578121207826312

/-! ## A286153.P3408872275483646896

`A286151(eq[0, A103516(n)])`
-/

namespace A286153.P3408872275483646896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286153.P3408872275483646896

/-! ## A286153.P8726862458780933264

`A286151(eq[0, A158821(n)])`
-/

namespace A286153.P8726862458780933264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286153.P8726862458780933264

/-! ## A286153.P11017746030793302217

`A286151(eq[n, A316669(n+1)])`
-/

namespace A286153.P11017746030793302217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286153.P11017746030793302217

/-!
# A286154: Compound filter: a(n) = T(A055396(n), A000010(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286154, there is no canonical definition to state claims against.
-/

/-! ## A286154.P3670326330762035930

`(2+(A055396(n+1)+A000010(n+1))²-A055396(n+1)-3*A000010(n+1))/2`
-/

namespace A286154.P3670326330762035930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A055396 (n + 1) + A000010 (n + 1)) ^ 2 - A055396 (n + 1) - 3 * A000010 (n + 1) : ℚ) / 2

end

end A286154.P3670326330762035930

/-!
# A286156: A(n,k) = T(remainder(n,k), quotient(n,k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, square array read by descending antidiagonals.

The programs for A286156, there is no canonical definition to state claims against.
-/

/-! ## A286156.P6095615368418734075

`A286157(A038722(n+1))`
-/

namespace A286156.P6095615368418734075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A038722 (n + 1)).toNat

end

end A286156.P6095615368418734075

/-! ## A286156.P13984909789879645228

`A286157(A061579(n)+1)`
-/

namespace A286156.P13984909789879645228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A061579 n + 1).toNat

end

end A286156.P13984909789879645228

/-! ## A286156.P1009638237202233420

`A286157(A093995(n+1)-n)`
-/

namespace A286156.P1009638237202233420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286156.P1009638237202233420

/-! ## A286156.P8272839100195010203

`A286157(A002024(n+1)²-n)`
-/

namespace A286156.P8272839100195010203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286156.P8272839100195010203

/-! ## A286156.P1215481691283560004

`A286157(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286156.P1215481691283560004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286156.P1215481691283560004

/-!
# A286157: Transpose of square array A286156.

The programs for A286157, there is no canonical definition to state claims against.
-/

/-! ## A286157.P2767228440520391424

`A286156(A278818(n))`
-/

namespace A286157.P2767228440520391424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A278818 n).toNat

end

end A286157.P2767228440520391424

/-! ## A286157.P10267972892677192952

`A286156(A038722(n+1))`
-/

namespace A286157.P10267972892677192952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A038722 (n + 1)).toNat

end

end A286157.P10267972892677192952

/-! ## A286157.P8446522320824242800

`A286156(A002024(n+1)²-n)`
-/

namespace A286157.P8446522320824242800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286157.P8446522320824242800

/-! ## A286157.P5571582158119311105

`A286156(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A286157.P5571582158119311105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A286157.P5571582158119311105

/-! ## A286157.P245676224360694611

`A286156(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A286157.P245676224360694611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A286157.P245676224360694611

/-!
# A286158: Lower triangular region of array A286156.

The programs for A286158, the canonical program `A286158.P5292968706533474857` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286158 has offset 1).

The definition of A286158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286158.P14946732058869087667

`A286159(A278818(n))`
-/

namespace A286158.P14946732058869087667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A278818 n).toNat

end

end A286158.P14946732058869087667

namespace A286158

/-- `A286159(A278818(n))` -/
def P14946732058869087667.Spec : Prop :=
  ∀ n, P14946732058869087667.a n = A286158 (n + 1)

end A286158

/-! ## A286158.P3553385047479616506

`A286159(A038722(n+1))`
-/

namespace A286158.P3553385047479616506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A038722 (n + 1)).toNat

end

end A286158.P3553385047479616506

namespace A286158

/-- `A286159(A038722(n+1))` -/
def P3553385047479616506.Spec : Prop :=
  ∀ n, P3553385047479616506.a n = A286158 (n + 1)

end A286158

/-! ## A286158.P12533535273578400628

`A286159(A061579(n)+1)`
-/

namespace A286158.P12533535273578400628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A061579 n + 1).toNat

end

end A286158.P12533535273578400628

namespace A286158

/-- `A286159(A061579(n)+1)` -/
def P12533535273578400628.Spec : Prop :=
  ∀ n, P12533535273578400628.a n = A286158 (n + 1)

end A286158

/-! ## A286158.P5816056762695169011

`A286159(A002024(n+1)²-n)`
-/

namespace A286158.P5816056762695169011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286158.P5816056762695169011

namespace A286158

/-- `A286159(A002024(n+1)²-n)` -/
def P5816056762695169011.Spec : Prop :=
  ∀ n, P5816056762695169011.a n = A286158 (n + 1)

end A286158

/-! ## A286158.P5292968706533474857

`A048158(n+1)+A000217(A234575(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286158

/-- `A048158(n+1)+A000217(A234575(n+1))` -/
def P5292968706533474857.Spec : Prop :=
  ∀ n, P5292968706533474857.a n = A286158 (n + 1)

theorem P5292968706533474857.correct : P5292968706533474857.Spec := by
  intro n
  simp only [A286158, Nat.add_sub_cancel]

end A286158

/-! ## A286158.P9899462826666761366

`A286157(A245300(n)+1)`
-/

namespace A286158.P9899462826666761366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (A245300 n + 1).toNat

end

end A286158.P9899462826666761366

namespace A286158

/-- `A286157(A245300(n)+1)` -/
def P9899462826666761366.Spec : Prop :=
  ∀ n, P9899462826666761366.a n = A286158 (n + 1)

end A286158

/-!
# A286159: Lower triangular region of array A286156, transposed.

The programs for A286159, the canonical program `A286159.P12324638875471488672` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286159 has offset 1).

The definition of A286159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286159.P12324638875471488672

`A286158(A038722(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286159

/-- `A286158(A038722(n+1))` -/
def P12324638875471488672.Spec : Prop :=
  ∀ n, P12324638875471488672.a n = A286159 (n + 1)

theorem P12324638875471488672.correct : P12324638875471488672.Spec := by
  intro n
  simp only [A286159, Nat.add_sub_cancel]

end A286159

/-! ## A286159.P18084638175735866412

`A286158(A061579(n)+1)`
-/

namespace A286159.P18084638175735866412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A061579 n + 1).toNat

end

end A286159.P18084638175735866412

namespace A286159

/-- `A286158(A061579(n)+1)` -/
def P18084638175735866412.Spec : Prop :=
  ∀ n, P18084638175735866412.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P10953428441499024525

`A286158(∑[A198954(n)]-n)`
-/

namespace A286159.P10953428441499024525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A286159.P10953428441499024525

namespace A286159

/-- `A286158(∑[A198954(n)]-n)` -/
def P10953428441499024525.Spec : Prop :=
  ∀ n, P10953428441499024525.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P8792662966024060880

`A286158(A114327(n)+1+n)`
-/

namespace A286159.P8792662966024060880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A114327 n + 1 + (n : ℤ)).toNat

end

end A286159.P8792662966024060880

namespace A286159

/-- `A286158(A114327(n)+1+n)` -/
def P8792662966024060880.Spec : Prop :=
  ∀ n, P8792662966024060880.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P7887264773516705613

`A286158(A093995(n+1)-n)`
-/

namespace A286159.P7887264773516705613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286159.P7887264773516705613

namespace A286159

/-- `A286158(A093995(n+1)-n)` -/
def P7887264773516705613.Spec : Prop :=
  ∀ n, P7887264773516705613.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P15691553543865538228

`A286158(2-A127948(n)+n)`
-/

namespace A286159.P15691553543865538228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (2 - A127948 n + (n : ℤ)).toNat

end

end A286159.P15691553543865538228

namespace A286159

/-- `A286158(2-A127948(n)+n)` -/
def P15691553543865538228.Spec : Prop :=
  ∀ n, P15691553543865538228.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P12736730618482021476

`A286158(2-(A127948(n)-n))`
-/

namespace A286159.P12736730618482021476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (2 - (A127948 n - (n : ℤ))).toNat

end

end A286159.P12736730618482021476

namespace A286159

/-- `A286158(2-(A127948(n)-n))` -/
def P12736730618482021476.Spec : Prop :=
  ∀ n, P12736730618482021476.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P6666062060031710861

`A286158(A002024(n+1)²-n)`
-/

namespace A286159.P6666062060031710861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286159.P6666062060031710861

namespace A286159

/-- `A286158(A002024(n+1)²-n)` -/
def P6666062060031710861.Spec : Prop :=
  ∀ n, P6666062060031710861.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P9014284653195704613

`A286158(A265129(n+1)-(n+1))`
-/

namespace A286159.P9014284653195704613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286159.P9014284653195704613

namespace A286159

/-- `A286158(A265129(n+1)-(n+1))` -/
def P9014284653195704613.Spec : Prop :=
  ∀ n, P9014284653195704613.a n = A286159 (n + 1)

end A286159

/-! ## A286159.P9748981773919805514

`A286158(abs(A055087(2*n+1)-n)+1)`
-/

namespace A286159.P9748981773919805514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (|A055087 (2 * n + 1) - (n : ℤ)| + 1).toNat

end

end A286159.P9748981773919805514

namespace A286159

/-- `A286158(abs(A055087(2*n+1)-n)+1)` -/
def P9748981773919805514.Spec : Prop :=
  ∀ n, P9748981773919805514.a n = A286159 (n + 1)

end A286159

/-!
# A286160: Compound filter: a(n) = T(A000010(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286160, the canonical program `A286160.P11432904213077907586` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286160 has offset 1).

The definition of A286160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286160.P11432904213077907586

`(2+(A000010(n+1)+A046523(n+1))²-A000010(n+1)-3*A046523(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286160

/-- `(2+(A000010(n+1)+A046523(n+1))²-A000010(n+1)-3*A046523(n+1))/2` -/
def P11432904213077907586.Spec : Prop :=
  ∀ n, P11432904213077907586.a n = (A286160 (n + 1) : ℚ)

end A286160

/-!
# A286161: Compound filter: a(n) = T(A001511(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286161, the canonical program `A286161.P17564105684646445376` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286161 has offset 1).

The definition of A286161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286161.P17564105684646445376

`(2+(A001511(n+1)+A046523(n+1))²-A001511(n+1)-3*A046523(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286161

/-- `(2+(A001511(n+1)+A046523(n+1))²-A001511(n+1)-3*A046523(n+1))/2` -/
def P17564105684646445376.Spec : Prop :=
  ∀ n, P17564105684646445376.a n = (A286161 (n + 1) : ℚ)

end A286161

/-! ## A286161.P14961512620760301450

`A286463(A061898(n+1))`
-/

namespace A286161.P14961512620760301450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A061898 (n + 1)).toNat

end

end A286161.P14961512620760301450

namespace A286161

/-- `A286463(A061898(n+1))` -/
def P14961512620760301450.Spec : Prop :=
  ∀ n, P14961512620760301450.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P15166570629987848212

`A286463(A064614(n+1))`
-/

namespace A286161.P15166570629987848212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A064614 (n + 1)).toNat

end

end A286161.P15166570629987848212

namespace A286161

/-- `A286463(A064614(n+1))` -/
def P15166570629987848212.Spec : Prop :=
  ∀ n, P15166570629987848212.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P2774863817499440922

`A286463(A072027(n+1))`
-/

namespace A286161.P2774863817499440922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A072027 (n + 1)).toNat

end

end A286161.P2774863817499440922

namespace A286161

/-- `A286463(A072027(n+1))` -/
def P2774863817499440922.Spec : Prop :=
  ∀ n, P2774863817499440922.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P17166030767092011371

`A286463(A234747(n+1))`
-/

namespace A286161.P17166030767092011371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A234747 (n + 1)).toNat

end

end A286161.P17166030767092011371

namespace A286161

/-- `A286463(A234747(n+1))` -/
def P17166030767092011371.Spec : Prop :=
  ∀ n, P17166030767092011371.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P11030108914459630488

`A286463(A003961(n+1))`
-/

namespace A286161.P11030108914459630488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A003961 (n + 1)).toNat

end

end A286161.P11030108914459630488

namespace A286161

/-- `A286463(A003961(n+1))` -/
def P11030108914459630488.Spec : Prop :=
  ∀ n, P11030108914459630488.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P18311559328548568127

`A286463(A064988(n+1))`
-/

namespace A286161.P18311559328548568127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A064988 (n + 1)).toNat

end

end A286161.P18311559328548568127

namespace A286161

/-- `A286463(A064988(n+1))` -/
def P18311559328548568127.Spec : Prop :=
  ∀ n, P18311559328548568127.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P10454293906626652462

`A286463(A332818(n+1))`
-/

namespace A286161.P10454293906626652462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A332818 (n + 1)).toNat

end

end A286161.P10454293906626652462

namespace A286161

/-- `A286463(A332818(n+1))` -/
def P10454293906626652462.Spec : Prop :=
  ∀ n, P10454293906626652462.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P11130145056693906823

`A286463(A387377(n+1))`
-/

namespace A286161.P11130145056693906823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A387377 (n + 1)).toNat

end

end A286161.P11130145056693906823

namespace A286161

/-- `A286463(A387377(n+1))` -/
def P11130145056693906823.Spec : Prop :=
  ∀ n, P11130145056693906823.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P3083727864933921586

`A286463(A348746(n+1))`
-/

namespace A286161.P3083727864933921586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A348746 (n + 1)).toNat

end

end A286161.P3083727864933921586

namespace A286161

/-- `A286463(A348746(n+1))` -/
def P3083727864933921586.Spec : Prop :=
  ∀ n, P3083727864933921586.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P13735603394710564793

`A286463(A297002(n+1))`
-/

namespace A286161.P13735603394710564793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A297002 (n + 1)).toNat

end

end A286161.P13735603394710564793

namespace A286161

/-- `A286463(A297002(n+1))` -/
def P13735603394710564793.Spec : Prop :=
  ∀ n, P13735603394710564793.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P16225551525931021389

`A286463(A389092(n+1))`
-/

namespace A286161.P16225551525931021389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A389092 (n + 1)).toNat

end

end A286161.P16225551525931021389

namespace A286161

/-- `A286463(A389092(n+1))` -/
def P16225551525931021389.Spec : Prop :=
  ∀ n, P16225551525931021389.a n = A286161 (n + 1)

end A286161

/-! ## A286161.P12150916752647749500

`A286463(A234748(n+1))`
-/

namespace A286161.P12150916752647749500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286463 (A234748 (n + 1)).toNat

end

end A286161.P12150916752647749500

namespace A286161

/-- `A286463(A234748(n+1))` -/
def P12150916752647749500.Spec : Prop :=
  ∀ n, P12150916752647749500.a n = A286161 (n + 1)

end A286161

/-!
# A286162: Compound filter: a(n) = T(A001511(n), A278222(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286162, the canonical program `A286162.P11576474081323857653` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286162 has offset 1).

The definition of A286162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286162.P11576474081323857653

`(2+(A001511(n+1)+A278222(n+1))²-A001511(n+1)-3*A278222(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A286162

/-- `(2+(A001511(n+1)+A278222(n+1))²-A001511(n+1)-3*A278222(n+1))/2` -/
def P11576474081323857653.Spec : Prop :=
  ∀ n, P11576474081323857653.a n = (A286162 (n + 1) : ℚ)

end A286162

/-! ## A286162.P15319142013648697276

`A286164(A005940(n+2))`
-/

namespace A286162.P15319142013648697276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A005940 (n + 2)).toNat

end

end A286162.P15319142013648697276

namespace A286162

/-- `A286164(A005940(n+2))` -/
def P15319142013648697276.Spec : Prop :=
  ∀ n, P15319142013648697276.a n = A286162 (n + 1)

end A286162

/-!
# A286163: Compound filter: a(n) = T(A046523(n), A278222(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286163, the canonical program `A286163.P14725374147584481786` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286163 has offset 1).

The definition of A286163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286163.P14725374147584481786

`(2+(A046523(n+1)+A278222(n+1))²-A046523(n+1)-3*A278222(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A286163

/-- `(2+(A046523(n+1)+A278222(n+1))²-A046523(n+1)-3*A278222(n+1))/2` -/
def P14725374147584481786.Spec : Prop :=
  ∀ n, P14725374147584481786.a n = (A286163 (n + 1) : ℚ)

end A286163

/-!
# A286164: Compound filter: a(n) = T(A055396(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A286164, there is no canonical definition to state claims against.
-/

/-! ## A286164.P13100673182693163948

`(2+(A055396(n+1)+A046523(n+1))²-A055396(n+1)-3*A046523(n+1))/2`
-/

namespace A286164.P13100673182693163948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A055396 (n + 1) + A046523 (n + 1)) ^ 2 - A055396 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A286164.P13100673182693163948

/-!
# A286165: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A286165, there is no canonical definition to state claims against.
-/

/-! ## A286165.P8004432830517381603

`A028310(A299905(n)+A286173(n))`
-/

namespace A286165.P8004432830517381603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A299905 n + A286173 n).toNat

end

end A286165.P8004432830517381603

/-! ## A286165.P16485065044464599482

`A028310(A308924(n)+A286173(n))`
-/

namespace A286165.P16485065044464599482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A308924 n + A286173 n).toNat

end

end A286165.P16485065044464599482

/-! ## A286165.P13748968439547769903

`A051765(n+1)+A028310(A286173(n))`
-/

namespace A286165.P13748968439547769903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051765 (n + 1) + A028310 (A286173 n).toNat

end

end A286165.P13748968439547769903

/-! ## A286165.P14727012977362137863

`A286173(n)+A174875(A108767(n+1))`
-/

namespace A286165.P14727012977362137863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286173 n + A174875 (A108767 (n + 1)).toNat

end

end A286165.P14727012977362137863

/-! ## A286165.P6623146407979339071

`A286173(n)+A010894(A288667(n+1))`
-/

namespace A286165.P6623146407979339071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286173 n + A010894 ((A288667 (n + 1)).toNat + 21)

end

end A286165.P6623146407979339071

/-!
# A286166: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A286166, there is no canonical definition to state claims against.
-/

/-! ## A286166.P782350728429197296

`∏{e}[Δ[3^n], A286174(#)]`
-/

namespace A286166.P782350728429197296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286174 (Nat.factorization (f1 n).natAbs p)

end

end A286166.P782350728429197296

/-! ## A286166.P3043419011357006448

`A154470(A286174(n))`
-/

namespace A286166.P3043419011357006448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A286174 n).toNat

end

end A286166.P3043419011357006448

/-! ## A286166.P16166927238608998670

`A286174(A129601(∑[n]))`
-/

namespace A286166.P16166927238608998670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286174 (A129601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286166.P16166927238608998670

/-! ## A286166.P14940911603752194625

`A286174(A004895(n+1))`
-/

namespace A286166.P14940911603752194625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286174 (A004895 (n + 1)).toNat

end

end A286166.P14940911603752194625

/-! ## A286166.P12791387271874427681

`A286174(A004906(n+1))`
-/

namespace A286166.P12791387271874427681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286174 (A004906 (n + 1)).toNat

end

end A286166.P12791387271874427681

/-!
# A286167: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A286167, there is no canonical definition to state claims against.
-/

/-! ## A286167.P8792764529847687550

`A007088(A286169(n))`
-/

namespace A286167.P8792764529847687550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286169 n).toNat

end

end A286167.P8792764529847687550

/-! ## A286167.P3899787828447624303

`A185544(2*A286169(n))`
-/

namespace A286167.P3899787828447624303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286169 n).toNat

end

end A286167.P3899787828447624303

/-!
# A286168: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A286168, there is no canonical definition to state claims against.
-/

/-! ## A286168.P5098027507292670177

`A007088(A286170(n))`
-/

namespace A286168.P5098027507292670177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286170 n).toNat

end

end A286168.P5098027507292670177

/-! ## A286168.P4047009631357621082

`A185544(2*A286170(n))`
-/

namespace A286168.P4047009631357621082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286170 n).toNat

end

end A286168.P4047009631357621082

/-! ## A286168.P3014585011098667740

`A286964(A002998(n))`
-/

namespace A286168.P3014585011098667740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286964 (A002998 n).toNat

end

end A286168.P3014585011098667740

/-! ## A286168.P289556024717453478

`A286964(A039723(n))`
-/

namespace A286168.P289556024717453478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286964 (A039723 n).toNat

end

end A286168.P289556024717453478

/-!
# A286169: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A286169, there is no canonical definition to state claims against.
-/

/-! ## A286169.P14161985216386139719

`A286965(n^(2-∑{p}[n^3, val(#, 11)]^floor(n/10))²)`
-/

namespace A286169.P14161985216386139719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286965 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ)) ^ 2 : ℝ))).toNat

end

end A286169.P14161985216386139719

/-! ## A286169.P611622066518295073

`A286965(A046469(n))`
-/

namespace A286169.P611622066518295073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286965 (A046469 n).toNat

end

end A286169.P611622066518295073

/-! ## A286169.P13726609567169226804

`A286965(A087036(n))`
-/

namespace A286169.P13726609567169226804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286965 (A087036 n).toNat

end

end A286169.P13726609567169226804

/-! ## A286169.P2989394474611296721

`A286965(A087051(n))`
-/

namespace A286169.P2989394474611296721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286965 (A087051 n).toNat

end

end A286169.P2989394474611296721

/-! ## A286169.P7712937963997847678

`A286965(n)%A098438(n+1)`
-/

namespace A286169.P7712937963997847678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286965 n) (A098438 (n + 1))

end

end A286169.P7712937963997847678

/-!
# A286170: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A286170, there is no canonical definition to state claims against.
-/

/-! ## A286170.P16892712111090558714

`A286966(A046469(n))`
-/

namespace A286170.P16892712111090558714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286966 (A046469 n).toNat

end

end A286170.P16892712111090558714

/-! ## A286170.P5838893158243515088

`A286966(A087036(n))`
-/

namespace A286170.P5838893158243515088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286966 (A087036 n).toNat

end

end A286170.P5838893158243515088

/-! ## A286170.P1173875983713732228

`A286966(A087051(n))`
-/

namespace A286170.P1173875983713732228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286966 (A087051 n).toNat

end

end A286170.P1173875983713732228

/-! ## A286170.P15795093809804573512

`A286966(A336746(∑[n]))`
-/

namespace A286170.P15795093809804573512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286966 (A336746 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286170.P15795093809804573512

/-! ## A286170.P16850670891470521488

`∏{e}[A020522(n), A286966(#)]`
-/

namespace A286170.P16850670891470521488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286966 (Nat.factorization (f1 n).natAbs p)

end

end A286170.P16850670891470521488

/-!
# A286171: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A286171, there is no canonical definition to state claims against.
-/

/-! ## A286171.P4406251293712413150

`A007088(A286173(n))`
-/

namespace A286171.P4406251293712413150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286173 n).toNat

end

end A286171.P4406251293712413150

/-! ## A286171.P11076577094147918864

`A185544(2*A286173(n))`
-/

namespace A286171.P11076577094147918864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286173 n).toNat

end

end A286171.P11076577094147918864

/-!
# A286172: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A286172, there is no canonical definition to state claims against.
-/

/-! ## A286172.P10846278169169465655

`A007088(A286174(n))`
-/

namespace A286172.P10846278169169465655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286174 n).toNat

end

end A286172.P10846278169169465655

/-!
# A286173: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A286173, there is no canonical definition to state claims against.
-/

/-! ## A286173.P8766217374846589670

`A028310(A286165(n)-A299905(n))`
-/

namespace A286173.P8766217374846589670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A286165 n - A299905 n).toNat

end

end A286173.P8766217374846589670

/-! ## A286173.P2806863780414961932

`A028310(A286165(n)-A308924(n))`
-/

namespace A286173.P2806863780414961932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A286165 n - A308924 n).toNat

end

end A286173.P2806863780414961932

/-! ## A286173.P10226761908275346274

`A028310(A286165(n)-A051765(n+1))`
-/

namespace A286173.P10226761908275346274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A286165 n - A051765 (n + 1)).toNat

end

end A286173.P10226761908275346274

/-! ## A286173.P16382449060283429646

`A286165(n)-A174875(A108767(n+1))`
-/

namespace A286173.P16382449060283429646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286165 n - A174875 (A108767 (n + 1)).toNat

end

end A286173.P16382449060283429646

/-! ## A286173.P977904729435368965

`A286165(n)-A010894(A288667(n+1))`
-/

namespace A286173.P977904729435368965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286165 n - A010894 ((A288667 (n + 1)).toNat + 21)

end

end A286173.P977904729435368965

/-!
# A286175: Sum of the n-th entries in all cycles of all permutations of [n+1].

The programs for A286175, the canonical program `A286175.P5974533607544031769` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286175 has offset 1).

The definition of A286175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286175.P5974533607544031769

`n*(2*(n+1)²+7*(n+1)+4)*a(n-1)/(2*(n+1)²+3*(n+1)-1)` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286175

/-- `n*(2*(n+1)²+7*(n+1)+4)*a(n-1)/(2*(n+1)²+3*(n+1)-1)` -/
def P5974533607544031769.Spec : Prop :=
  ∀ n, P5974533607544031769.a n = (A286175 (n + 1) : ℚ)

end A286175

/-! ## A286175.P10369177863512952242

`A052572(n+1)+A052572(n)-A001710(n+1)`
-/

namespace A286175.P10369177863512952242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052572 (n + 1) + (A052572 n - A001710 (n + 1))

end

end A286175.P10369177863512952242

namespace A286175

/-- `A052572(n+1)+A052572(n)-A001710(n+1)` -/
def P10369177863512952242.Spec : Prop :=
  ∀ n, P10369177863512952242.a n = A286175 (n + 1)

end A286175

/-! ## A286175.P5585013221689956792

`A285793(∑[n+2])`
-/

namespace A286175.P5585013221689956792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286175.P5585013221689956792

namespace A286175

/-- `A285793(∑[n+2])` -/
def P5585013221689956792.Spec : Prop :=
  ∀ n, P5585013221689956792.a n = A286175 (n + 1)

end A286175

/-! ## A286175.P10167086893216887233

`record[A285793(record[A198453(n+1)])]`
-/

namespace A286175.P10167086893216887233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198453 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285793 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286175.P10167086893216887233

namespace A286175

/-- `record[A285793(record[A198453(n+1)])]` -/
def P10167086893216887233.Spec : Prop :=
  ∀ n, P10167086893216887233.a n = A286175 (n + 1)

end A286175

/-!
# A286180: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Product_{j>0} (1 + x^j) * (1 - x^(2*j)))^k in powers of x.

The programs for A286180, there is no canonical definition to state claims against.
-/

/-! ## A286180.P5032130084152730096

`lcm(A143434(A185037(n)), A291701(n))`
-/

namespace A286180.P5032130084152730096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143434 (A185037 n).toNat) (A291701 n)

end

end A286180.P5032130084152730096

/-! ## A286180.P11340378514919209101

`abs(A291701(n)%A117416(n))`
-/

namespace A286180.P11340378514919209101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A291701 n) (A117416 n)|

end

end A286180.P11340378514919209101

/-! ## A286180.P13760739834931216201

`gcd(A010893(2*n), A291701(n))`
-/

namespace A286180.P13760739834931216201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010893 (2 * n + 13)) (A291701 n)

end

end A286180.P13760739834931216201

/-! ## A286180.P14539004556382185161

`abs(A291701(n))%Δ[A215329(n)]`
-/

namespace A286180.P14539004556382185161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A291701 n| (f1 (n + 1) - f1 n)

end

end A286180.P14539004556382185161

/-! ## A286180.P16359484902204365454

`gcd(A000122(A052551(n)), A291701(n))`
-/

namespace A286180.P16359484902204365454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A052551 n).toNat) (A291701 n)

end

end A286180.P16359484902204365454

/-!
# A286182: Number of connected induced (non-null) subgraphs of the prism graph with 2n nodes.

The programs for A286182, the canonical program `A286182.P18040158897190895158` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286182 has offset 1).

The definition of A286182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286182.P6900629083408941826

`A286185(n+1)-2*n`
-/

namespace A286182.P6900629083408941826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286185 (n + 1) - (2 * n : ℤ)

end

end A286182.P6900629083408941826

namespace A286182

/-- `A286185(n+1)-2*n` -/
def P6900629083408941826.Spec : Prop :=
  ∀ n, P6900629083408941826.a n = A286182 (n + 1)

theorem P6900629083408941826.correct : P6900629083408941826.Spec := by
  intro n
  simp only [A286182, Nat.add_sub_cancel, A286182.P6900629083408941826.a, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, A286185, A286185.P1744816653617601400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286182

/-! ## A286182.P16270781939811607917

`abs(A286185(n+1)-A005843(n))`
-/

namespace A286182.P16270781939811607917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286185 (n + 1) - A005843 n|

end

end A286182.P16270781939811607917

namespace A286182

/-- `abs(A286185(n+1)-A005843(n))` -/
def P16270781939811607917.Spec : Prop :=
  ∀ n, P16270781939811607917.a n = A286182 (n + 1)

end A286182

/-! ## A286182.P3759960392252546961

`A286185(n+1)+A001489(n)-n`
-/

namespace A286182.P3759960392252546961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286185 (n + 1) + A001489 n - (n : ℤ)

end

end A286182.P3759960392252546961

namespace A286182

/-- `A286185(n+1)+A001489(n)-n` -/
def P3759960392252546961.Spec : Prop :=
  ∀ n, P3759960392252546961.a n = A286182 (n + 1)

theorem P3759960392252546961.correct : P3759960392252546961.Spec := by
  intro n
  simp only [A286182, Nat.add_sub_cancel, A286182.P3759960392252546961.a, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A001489, A001489.P15233530513763566776.a, A002203, A002203.P17775519618444720850.a, A286185, A286185.P1744816653617601400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286182

/-! ## A286182.P5560855012191839756

`A286185(n+1)+n+2-A016789(n)`
-/

namespace A286182.P5560855012191839756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286185 (n + 1) + (n + 2 : ℤ) - A016789 n

end

end A286182.P5560855012191839756

namespace A286182

/-- `A286185(n+1)+n+2-A016789(n)` -/
def P5560855012191839756.Spec : Prop :=
  ∀ n, P5560855012191839756.a n = A286182 (n + 1)

theorem P5560855012191839756.correct : P5560855012191839756.Spec := by
  intro n
  simp only [A286182, Nat.add_sub_cancel, A286182.P5560855012191839756.a, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, A016789, A016789.P8277564872725303677.a, A286185, A286185.P1744816653617601400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286182

/-! ## A286182.P18040158897190895158

`A002203(n+1)+3*(n+1)*A000129(n+1)-3*(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286182

/-- `A002203(n+1)+3*(n+1)*A000129(n+1)-3*(n+1)+1` -/
def P18040158897190895158.Spec : Prop :=
  ∀ n, P18040158897190895158.a n = A286182 (n + 1)

theorem P18040158897190895158.correct : P18040158897190895158.Spec := by
  intro n
  simp only [A286182, Nat.add_sub_cancel]

end A286182

/-! ## A286182.P9105307160374161452

`A004277(n+1)%2+A286185(n+1)-A005843(n)`
-/

namespace A286182.P9105307160374161452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (n + 1)) 2 + (A286185 (n + 1) - A005843 n)

end

end A286182.P9105307160374161452

namespace A286182

/-- `A004277(n+1)%2+A286185(n+1)-A005843(n)` -/
def P9105307160374161452.Spec : Prop :=
  ∀ n, P9105307160374161452.a n = A286182 (n + 1)

end A286182

/-! ## A286182.P996757433634071520

`(A286185(n+1)-A005843(n))/(A057427(n)+A000007(n))`
-/

namespace A286182.P996757433634071520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286185 (n + 1) - A005843 n : ℚ) / (A057427 n + A000007 n : ℚ)

end

end A286182.P996757433634071520

namespace A286182

/-- `(A286185(n+1)-A005843(n))/(A057427(n)+A000007(n))` -/
def P996757433634071520.Spec : Prop :=
  ∀ n, P996757433634071520.a n = (A286182 (n + 1) : ℚ)

theorem P996757433634071520.correct : P996757433634071520.Spec := by
  intro n
  simp only [A286182, Nat.add_sub_cancel, A286182.P996757433634071520.a, A286182.P18040158897190895158.a, A000007, A000007.P6599383543502402472.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, A005843, A005843.P3167286115683555970.a, A057427, A057427.P3058147525557661423.a, A286185, A286185.P1744816653617601400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286182

/-! ## A286182.P5042966763721272021

`(A286185(n+1)-A005843(n))/A007318(∑[n])`
-/

namespace A286182.P5042966763721272021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286185 (n + 1) - A005843 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A286182.P5042966763721272021

namespace A286182

/-- `(A286185(n+1)-A005843(n))/A007318(∑[n])` -/
def P5042966763721272021.Spec : Prop :=
  ∀ n, P5042966763721272021.a n = (A286182 (n + 1) : ℚ)

end A286182

/-!
# A286183: Number of connected induced (non-null) subgraphs of the antiprism graph with 2n nodes.

The programs for A286183, the canonical program `A286183.P16536639819314678559` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286183 has offset 1).

The definition of A286183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286183.P16536639819314678559

`A007574(2*(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286183

/-- `A007574(2*(n+1))` -/
def P16536639819314678559.Spec : Prop :=
  ∀ n, P16536639819314678559.a n = A286183 (n + 1)

theorem P16536639819314678559.correct : P16536639819314678559.Spec := by
  intro n
  simp only [A286183, Nat.add_sub_cancel]

end A286183

/-! ## A286183.P2708432957055121635

`A061705(2*(n+1))-2*(n+1)`
-/

namespace A286183.P2708432957055121635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A286183.P2708432957055121635

namespace A286183

/-- `A061705(2*(n+1))-2*(n+1)` -/
def P2708432957055121635.Spec : Prop :=
  ∀ n, P2708432957055121635.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P2167212073065224821

`Δ[(2*n+1)*∑[A000045(2*n)]]-2*n`
-/

namespace A286183.P2167212073065224821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * n : ℤ)

end

end A286183.P2167212073065224821

namespace A286183

/-- `Δ[(2*n+1)*∑[A000045(2*n)]]-2*n` -/
def P2167212073065224821.Spec : Prop :=
  ∀ n, P2167212073065224821.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P16202603437724329377

`Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1)`
-/

namespace A286183.P16202603437724329377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)

end

end A286183.P16202603437724329377

namespace A286183

/-- `Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1)` -/
def P16202603437724329377.Spec : Prop :=
  ∀ n, P16202603437724329377.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P5410886415171619121

`Δ[A045925(2*n+1)]-A005843(n+1)`
-/

namespace A286183.P5410886415171619121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005843 (n + 1)

end

end A286183.P5410886415171619121

namespace A286183

/-- `Δ[A045925(2*n+1)]-A005843(n+1)` -/
def P5410886415171619121.Spec : Prop :=
  ∀ n, P5410886415171619121.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P4464892584633060518

`A131269(2*n+1)+A023607(2*n+1)`
-/

namespace A286183.P4464892584633060518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 (2 * n + 1) + A023607 (2 * n + 1)

end

end A286183.P4464892584633060518

namespace A286183

/-- `A131269(2*n+1)+A023607(2*n+1)` -/
def P4464892584633060518.Spec : Prop :=
  ∀ n, P4464892584633060518.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P13438385965667138280

`A131412(2*(n+1))+1-A000045(2*n)`
-/

namespace A286183.P13438385965667138280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131412 (2 * (n + 1)) + (1 - A000045 (2 * n))

end

end A286183.P13438385965667138280

namespace A286183

/-- `A131412(2*(n+1))+1-A000045(2*n)` -/
def P13438385965667138280.Spec : Prop :=
  ∀ n, P13438385965667138280.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P14946515536954273907

`A005248(n+1)-2*(n+1)+2*(n+1)*A001906(n+1)`
-/

namespace A286183.P14946515536954273907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - (2 * (n + 1) : ℤ) + 2 * ((n + 1 : ℤ) * A001906 (n + 1))

end

end A286183.P14946515536954273907

namespace A286183

/-- `A005248(n+1)-2*(n+1)+2*(n+1)*A001906(n+1)` -/
def P14946515536954273907.Spec : Prop :=
  ∀ n, P14946515536954273907.a n = A286183 (n + 1)

end A286183

/-! ## A286183.P11092990779092764780

`A007502(2*n+1)+A104161(2*n)+A007502(2*(n+1))`
-/

namespace A286183.P11092990779092764780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (2 * n + 1) + (A104161 (2 * n) + A007502 (2 * (n + 1)))

end

end A286183.P11092990779092764780

namespace A286183

/-- `A007502(2*n+1)+A104161(2*n)+A007502(2*(n+1))` -/
def P11092990779092764780.Spec : Prop :=
  ∀ n, P11092990779092764780.a n = A286183 (n + 1)

end A286183

/-!
# A286184: Number of connected induced (non-null) subgraphs of the helm graph with 2n+1 nodes.

The programs for A286184, the canonical program `A286184.P17816476555876103025` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286184 has offset 1).

The definition of A286184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286184.P17816476555876103025

`3^(n+1)+(1+n+1)*2^(n+1)-(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286184

/-- `3^(n+1)+(1+n+1)*2^(n+1)-(n+1)` -/
def P17816476555876103025.Spec : Prop :=
  ∀ n, P17816476555876103025.a n = A286184 (n + 1)

theorem P17816476555876103025.correct : P17816476555876103025.Spec := by
  intro n
  simp only [A286184, Nat.add_sub_cancel]

end A286184

/-!
# A286185: Number of connected induced (non-null) subgraphs of the Möbius ladder graph with 2n nodes.

The programs for A286185, the canonical program `A286185.P1744816653617601400` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286185 has offset 1).

The definition of A286185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286185.P1744816653617601400

`A286182(n+1)+2*n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286185

/-- `A286182(n+1)+2*n` -/
def P1744816653617601400.Spec : Prop :=
  ∀ n, P1744816653617601400.a n = A286185 (n + 1)

theorem P1744816653617601400.correct : P1744816653617601400.Spec := by
  intro n
  simp only [A286185, Nat.add_sub_cancel]

end A286185

/-! ## A286185.P10497979091360817493

`A286182(n+1)+A005408(n)-1`
-/

namespace A286185.P10497979091360817493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286182 (n + 1) + A005408 n - 1

end

end A286185.P10497979091360817493

namespace A286185

/-- `A286182(n+1)+A005408(n)-1` -/
def P10497979091360817493.Spec : Prop :=
  ∀ n, P10497979091360817493.a n = A286185 (n + 1)

theorem P10497979091360817493.correct : P10497979091360817493.Spec := by
  intro n
  simp only [A286185, Nat.add_sub_cancel, A286185.P10497979091360817493.a, A286185.P1744816653617601400.a, A005408, A005408.P17437947328870227736.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286185

/-! ## A286185.P11226409747044577987

`A286182(n+1)+n-A001489(n)`
-/

namespace A286185.P11226409747044577987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286182 (n + 1) + (n : ℤ) - A001489 n

end

end A286185.P11226409747044577987

namespace A286185

/-- `A286182(n+1)+n-A001489(n)` -/
def P11226409747044577987.Spec : Prop :=
  ∀ n, P11226409747044577987.a n = A286185 (n + 1)

theorem P11226409747044577987.correct : P11226409747044577987.Spec := by
  intro n
  simp only [A286185, Nat.add_sub_cancel, A286185.P11226409747044577987.a, A286185.P1744816653617601400.a, A001489, A001489.P15233530513763566776.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286185

/-! ## A286185.P14715357946872945596

`A000027(Δ[n²])+A286182(n+1)-1`
-/

namespace A286185.P14715357946872945596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A286182 (n + 1) - 1)

end

end A286185.P14715357946872945596

namespace A286185

/-- `A000027(Δ[n²])+A286182(n+1)-1` -/
def P14715357946872945596.Spec : Prop :=
  ∀ n, P14715357946872945596.a n = A286185 (n + 1)

end A286185

/-! ## A286185.P12434523921947098952

`A028310(Δ[n²])+A286182(n+1)-1`
-/

namespace A286185.P12434523921947098952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A286182 (n + 1) - 1)

end

end A286185.P12434523921947098952

namespace A286185

/-- `A028310(Δ[n²])+A286182(n+1)-1` -/
def P12434523921947098952.Spec : Prop :=
  ∀ n, P12434523921947098952.a n = A286185 (n + 1)

end A286185

/-! ## A286185.P6056583448069398288

`A106617(Δ[n²])+A286182(n+1)-1`
-/

namespace A286185.P6056583448069398288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A286182 (n + 1) - 1)

end

end A286185.P6056583448069398288

namespace A286185

/-- `A106617(Δ[n²])+A286182(n+1)-1` -/
def P6056583448069398288.Spec : Prop :=
  ∀ n, P6056583448069398288.a n = A286185 (n + 1)

end A286185

/-! ## A286185.P7651700157955724710

`A004396(A007310(n+1))+A286182(n+1)-1`
-/

namespace A286185.P7651700157955724710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A007310 (n + 1)).toNat + (A286182 (n + 1) - 1)

end

end A286185.P7651700157955724710

namespace A286185

/-- `A004396(A007310(n+1))+A286182(n+1)-1` -/
def P7651700157955724710.Spec : Prop :=
  ∀ n, P7651700157955724710.a n = A286185 (n + 1)

end A286185

/-! ## A286185.P6793443597961726464

`(A286182(n+1)+A005843(n))%A274857(n+1)`
-/

namespace A286185.P6793443597961726464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286182 (n + 1) + A005843 n) (A274857 (n + 1))

end

end A286185.P6793443597961726464

namespace A286185

/-- `(A286182(n+1)+A005843(n))%A274857(n+1)` -/
def P6793443597961726464.Spec : Prop :=
  ∀ n, P6793443597961726464.a n = A286185 (n + 1)

end A286185

/-!
# A286186: Number of connected induced (non-null) subgraphs of the friendship graph with 2n+1 nodes.

The programs for A286186, the canonical program `A286186.P9273436571406594556` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286186 has offset 1).

The definition of A286186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286186.P9273436571406594556

`4^(n+1)+3*(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286186

/-- `4^(n+1)+3*(n+1)` -/
def P9273436571406594556.Spec : Prop :=
  ∀ n, (P9273436571406594556.a n : ℤ) = A286186 (n + 1)

theorem P9273436571406594556.correct : P9273436571406594556.Spec := by
  intro n
  simp only [A286186, Nat.add_sub_cancel]

end A286186

/-! ## A286186.P13233533639655032104

`∑[or(3, Δ[or(1, 4^n)])]`
-/

namespace A286186.P13233533639655032104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286186.P13233533639655032104

namespace A286186

/-- `∑[or(3, Δ[or(1, 4^n)])]` -/
def P13233533639655032104.Spec : Prop :=
  ∀ n, P13233533639655032104.a n = A286186 (n + 1)

end A286186

/-! ## A286186.P10011824121038789838

`∑[or(3, 3*4^n+1)]`
-/

namespace A286186.P10011824121038789838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * 4 ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286186.P10011824121038789838

namespace A286186

/-- `∑[or(3, 3*4^n+1)]` -/
def P10011824121038789838.Spec : Prop :=
  ∀ n, (P10011824121038789838.a n : ℤ) = A286186 (n + 1)

end A286186

/-! ## A286186.P1029937420222810763

`∑[A110594(n+1)+3]`
-/

namespace A286186.P1029937420222810763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110594 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286186.P1029937420222810763

namespace A286186

/-- `∑[A110594(n+1)+3]` -/
def P1029937420222810763.Spec : Prop :=
  ∀ n, P1029937420222810763.a n = A286186 (n + 1)

end A286186

/-! ## A286186.P4505564227643639065

`∑[A092898(n+2)+3]`
-/

namespace A286186.P4505564227643639065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092898 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286186.P4505564227643639065

namespace A286186

/-- `∑[A092898(n+2)+3]` -/
def P4505564227643639065.Spec : Prop :=
  ∀ n, P4505564227643639065.a n = A286186 (n + 1)

end A286186

/-! ## A286186.P10746584039342184044

`(A020707(n)²/2+A008588(n+1))/2`
-/

namespace A286186.P10746584039342184044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A020707 n ^ 2 : ℚ) / 2 + (A008588 (n + 1) : ℚ)) / 2

end

end A286186.P10746584039342184044

namespace A286186

/-- `(A020707(n)²/2+A008588(n+1))/2` -/
def P10746584039342184044.Spec : Prop :=
  ∀ n, P10746584039342184044.a n = (A286186 (n + 1) : ℚ)

end A286186

/-! ## A286186.P5253484280796647560

`(A020707(2*n+1)+A008588(n+1))/2`
-/

namespace A286186.P5253484280796647560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 (2 * n + 1) + A008588 (n + 1) : ℚ) / 2

end

end A286186.P5253484280796647560

namespace A286186

/-- `(A020707(2*n+1)+A008588(n+1))/2` -/
def P5253484280796647560.Spec : Prop :=
  ∀ n, P5253484280796647560.a n = (A286186 (n + 1) : ℚ)

end A286186

/-! ## A286186.P16157776743428192190

`(A145071(2*(n+1))+A016825(n+1))/2`
-/

namespace A286186.P16157776743428192190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145071 (2 * (n + 1)) + A016825 (n + 1) : ℚ) / 2

end

end A286186.P16157776743428192190

namespace A286186

/-- `(A145071(2*(n+1))+A016825(n+1))/2` -/
def P16157776743428192190.Spec : Prop :=
  ∀ n, P16157776743428192190.a n = (A286186 (n + 1) : ℚ)

end A286186

/-!
# A286187: Number of connected induced (non-null) subgraphs of the web graph with 3n nodes.

The programs for A286187, there is no canonical definition to state claims against.
-/

/-! ## A286187.P420814477475088460

`A000225(3*(n+1))-A362521(n+1)`
-/

namespace A286187.P420814477475088460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * (n + 1)) - A362521 (n + 1)

end

end A286187.P420814477475088460

/-!
# A286188: Number of connected induced (non-null) subgraphs of the gear graph with 2n+1 nodes.

The programs for A286188, the canonical program `A286188.P11269980393292216230` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286188 has offset 1).

The definition of A286188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286188.P11269980393292216230

`A206776(n+1)+4*(n+1)²-2*(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286188

/-- `A206776(n+1)+4*(n+1)²-2*(n+1)+1` -/
def P11269980393292216230.Spec : Prop :=
  ∀ n, P11269980393292216230.a n = A286188 (n + 1)

theorem P11269980393292216230.correct : P11269980393292216230.Spec := by
  intro n
  simp only [A286188, Nat.add_sub_cancel]

end A286188

/-! ## A286188.P11581538836010699762

`(2*(n+1))²+A206776(n+1)-(2*n+1)`
-/

namespace A286188.P11581538836010699762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) + (A206776 (n + 1) - (2 * n + 1 : ℤ))

end

end A286188.P11581538836010699762

namespace A286188

/-- `(2*(n+1))²+A206776(n+1)-(2*n+1)` -/
def P11581538836010699762.Spec : Prop :=
  ∀ n, P11581538836010699762.a n = A286188 (n + 1)

theorem P11581538836010699762.correct : P11581538836010699762.Spec := by
  intro n
  simp only [A286188, Nat.add_sub_cancel, A286188.P11581538836010699762.a, A286188.P11269980393292216230.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286188

/-! ## A286188.P8069489033113297641

`A206776(n+1)+A002061(2*(n+1))`
-/

namespace A286188.P8069489033113297641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) + A002061 (2 * (n + 1))

end

end A286188.P8069489033113297641

namespace A286188

/-- `A206776(n+1)+A002061(2*(n+1))` -/
def P8069489033113297641.Spec : Prop :=
  ∀ n, P8069489033113297641.a n = A286188 (n + 1)

theorem P8069489033113297641.correct : P8069489033113297641.Spec := by
  intro n
  simp only [A286188, Nat.add_sub_cancel, A286188.P8069489033113297641.a, A286188.P11269980393292216230.a, A002061, A002061.P13016590216674735232.a, A206776, A206776.P2228107440392899219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A286188

/-! ## A286188.P7871073063044753677

`A000225(2*n+3)-A362516(n+1)`
-/

namespace A286188.P7871073063044753677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 3) - A362516 (n + 1)

end

end A286188.P7871073063044753677

namespace A286188

/-- `A000225(2*n+3)-A362516(n+1)` -/
def P7871073063044753677.Spec : Prop :=
  ∀ n, P7871073063044753677.a n = A286188 (n + 1)

theorem P7871073063044753677.correct : P7871073063044753677.Spec := by
  intro n
  simp only [A286188, Nat.add_sub_cancel, A286188.P7871073063044753677.a, A286188.P11269980393292216230.a, A000225, A000225.P6535533121115206393.a, A206776, A206776.P2228107440392899219.a, A362516, A362516.P4966196509825039487.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A286188

/-! ## A286188.P14914461387214174507

`A206776(n+1)+A004273(A000124(2*n+1))`
-/

namespace A286188.P14914461387214174507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) + A004273 (A000124 (2 * n + 1)).toNat

end

end A286188.P14914461387214174507

namespace A286188

/-- `A206776(n+1)+A004273(A000124(2*n+1))` -/
def P14914461387214174507.Spec : Prop :=
  ∀ n, P14914461387214174507.a n = A286188 (n + 1)

end A286188

/-!
# A286189: Number of connected induced (non-null) subgraphs of the n X n rook graph.

The programs for A286189, there is no canonical definition to state claims against.
-/

/-! ## A286189.P9777985936006359349

`A360873((n+1)²+n²)`
-/

namespace A286189.P9777985936006359349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360873 ((n + 1) ^ 2 + n ^ 2)

end

end A286189.P9777985936006359349

/-! ## A286189.P16076637594555138081

`or(1, A360873(A001844(n)))`
-/

namespace A286189.P16076637594555138081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A360873 (A001844 n).toNat)

end

end A286189.P16076637594555138081

/-! ## A286189.P15003367924343806189

`record[A003982(n)*A360873(n+1)]`
-/

namespace A286189.P15003367924343806189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A360873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286189.P15003367924343806189

/-! ## A286189.P13323753899475473693

`A360873(A001844(n))+A137579(n)`
-/

namespace A286189.P13323753899475473693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360873 (A001844 n).toNat + A137579 n

end

end A286189.P13323753899475473693

/-! ## A286189.P10016988328167791471

`gcd(A112316(n), A360873(A001844(n)))`
-/

namespace A286189.P10016988328167791471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A360873 (A001844 n).toNat)

end

end A286189.P10016988328167791471

/-!
# A286191: a(n) = (2^n-1)^2 + 2*n.

The programs for A286191, the canonical program `A286191.P18315437098227199415` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286191 has offset 1).

The definition of A286191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)-1)²+2*(n+1)` (program `A286191.P18315437098227199415`, by `A286191.P18315437098227199415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286191.P18315437098227199415

`(2^(n+1)-1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286191

/-- `(2^(n+1)-1)²+2*(n+1)` -/
def P18315437098227199415.Spec : Prop :=
  ∀ n, P18315437098227199415.a n = A286191 (n + 1)

theorem P18315437098227199415.correct : P18315437098227199415.Spec := by
  intro n
  simp only [A286191, Nat.add_sub_cancel]

end A286191

/-! ## A286191.P18092948023449786719

`or(2*(n+1), ∑[2^n]²)`
-/

namespace A286191.P18092948023449786719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A286191.P18092948023449786719

namespace A286191

/-- `or(2*(n+1), ∑[2^n]²)` -/
def P18092948023449786719.Spec : Prop :=
  ∀ n, (P18092948023449786719.a n : ℤ) = A286191 (n + 1)

end A286191

/-! ## A286191.P3134794698447644867

`xor(2*(n+1), ∑[2^n]²)`
-/

namespace A286191.P3134794698447644867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A286191.P3134794698447644867

namespace A286191

/-- `xor(2*(n+1), ∑[2^n]²)` -/
def P3134794698447644867.Spec : Prop :=
  ∀ n, (P3134794698447644867.a n : ℤ) = A286191 (n + 1)

end A286191

/-! ## A286191.P12980685738233654244

`∑[A165665(n)+2]`
-/

namespace A286191.P12980685738233654244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165665 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286191.P12980685738233654244

namespace A286191

/-- `∑[A165665(n)+2]` -/
def P12980685738233654244.Spec : Prop :=
  ∀ n, P12980685738233654244.a n = A286191 (n + 1)

end A286191

/-! ## A286191.P2142527120531137830

`∑[A271740(2^n)]`
-/

namespace A286191.P2142527120531137830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271740 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286191.P2142527120531137830

namespace A286191

/-- `∑[A271740(2^n)]` -/
def P2142527120531137830.Spec : Prop :=
  ∀ n, P2142527120531137830.a n = A286191 (n + 1)

end A286191

/-!
# A286194: Number of (n,2)-polyominoes.

The programs for A286194, there is no canonical definition to state claims against.
-/

/-! ## A286194.P14207497846921756693

`A165125(A355295(n+1))`
-/

namespace A286194.P14207497846921756693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (A355295 (n + 1)).toNat

end

end A286194.P14207497846921756693

/-!
# A286195: Products of two numbers that are the average of a pair of twin primes.

The programs for A286195, there is no canonical definition to state claims against.
-/

/-! ## A286195.P2294373755217612732

`∪[A075369(n+1), A288639(n+1)]`
-/

namespace A286195.P2294373755217612732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286195.P2294373755217612732

/-! ## A286195.P12286497395766970026

`record[A141552(A345717(n+1))]`
-/

namespace A286195.P12286497395766970026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141552 (A345717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286195.P12286497395766970026

/-! ## A286195.P12429200562579647602

`record[A141552(xor(5, A141219(n+1)))]`
-/

namespace A286195.P12429200562579647602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141552 (Int.xor 5 (A141219 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286195.P12429200562579647602

/-! ## A286195.P2219183849244994056

`record[A124315(A036457(n+1)-n)]`
-/

namespace A286195.P2219183849244994056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (A036457 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286195.P2219183849244994056

/-!
# A286196: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A286196, there is no canonical definition to state claims against.
-/

/-! ## A286196.P10579997359953798869

`A007088(A286198(n))`
-/

namespace A286196.P10579997359953798869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286198 n).toNat

end

end A286196.P10579997359953798869

/-! ## A286196.P2074475165581856296

`A287077(n*gcd(13, n))`
-/

namespace A286196.P2074475165581856296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287077 (n * Nat.gcd 13 n)

end

end A286196.P2074475165581856296

/-! ## A286196.P7730489892644087445

`∏{e}[3^n, A287077(#)]`
-/

namespace A286196.P7730489892644087445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A287077 (Nat.factorization (f1 n) p)

end

end A286196.P7730489892644087445

/-! ## A286196.P1892127588571403182

`A221714(A287079(n))`
-/

namespace A286196.P1892127588571403182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A287079 n).toNat

end

end A286196.P1892127588571403182

/-! ## A286196.P15117587522394681705

`A287077(A163352(∑[n]))`
-/

namespace A286196.P15117587522394681705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287077 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286196.P15117587522394681705

/-!
# A286197: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A286197, there is no canonical definition to state claims against.
-/

/-! ## A286197.P917987154829308956

`A007088(A286199(n))`
-/

namespace A286197.P917987154829308956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286199 n).toNat

end

end A286197.P917987154829308956

/-! ## A286197.P7341783843120748638

`A185544(2*A286199(n))`
-/

namespace A286197.P7341783843120748638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286199 n).toNat

end

end A286197.P7341783843120748638

/-! ## A286197.P11746397237887070743

`A221714(A286199(n)*A287091(n))`
-/

namespace A286197.P11746397237887070743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A286199 n * A287091 n).toNat

end

end A286197.P11746397237887070743

/-! ## A286197.P18069420022097873580

`A221714(A286199(n)^A287091(n))`
-/

namespace A286197.P18069420022097873580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (SequenceMachineLib.roundAway ((A286199 n : ℚ) ^ (A287091 n : ℤ))).toNat

end

end A286197.P18069420022097873580

/-! ## A286197.P13837722648563966140

`A221714(A286199(n)%A086224(n))`
-/

namespace A286197.P13837722648563966140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (Int.tmod (A286199 n) (A086224 n)).toNat

end

end A286197.P13837722648563966140

/-!
# A286198: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A286198, there is no canonical definition to state claims against.
-/

/-! ## A286198.P7735287750207637000

`∏{e}[3^n, A287079(#)]`
-/

namespace A286198.P7735287750207637000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A287079 (Nat.factorization (f1 n) p)

end

end A286198.P7735287750207637000

/-! ## A286198.P11473972115599384874

`A004183(A287079(n))`
-/

namespace A286198.P11473972115599384874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A287079 n).toNat

end

end A286198.P11473972115599384874

/-! ## A286198.P18338815854384999982

`A287079(A163352(∑[n]))`
-/

namespace A286198.P18338815854384999982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287079 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286198.P18338815854384999982

/-! ## A286198.P7474740702027862577

`A287079(A004896(n+1))`
-/

namespace A286198.P7474740702027862577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287079 (A004896 (n + 1)).toNat

end

end A286198.P7474740702027862577

/-! ## A286198.P4217170473581847992

`A287079(A004907(n+1))`
-/

namespace A286198.P4217170473581847992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287079 (A004907 (n + 1)).toNat

end

end A286198.P4217170473581847992

/-!
# A286199: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A286199, there is no canonical definition to state claims against.
-/

/-! ## A286199.P18050932216564317095

`A342410(A287080(n))`
-/

namespace A286199.P18050932216564317095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 (A287080 n).toNat

end

end A286199.P18050932216564317095

/-! ## A286199.P16784457264550849251

`∏{e}[3^n, A287080(#)]`
-/

namespace A286199.P16784457264550849251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A287080 (Nat.factorization (f1 n) p)

end

end A286199.P16784457264550849251

/-! ## A286199.P14731431178589715062

`A287080(A163352(∑[n]))`
-/

namespace A286199.P14731431178589715062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287080 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A286199.P14731431178589715062

/-! ## A286199.P6771584312809373779

`A287080(A004896(n+1))`
-/

namespace A286199.P6771584312809373779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287080 (A004896 (n + 1)).toNat

end

end A286199.P6771584312809373779

/-! ## A286199.P14085276227917001245

`A287080(A004907(n+1))`
-/

namespace A286199.P14085276227917001245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287080 (A004907 (n + 1)).toNat

end

end A286199.P14085276227917001245

