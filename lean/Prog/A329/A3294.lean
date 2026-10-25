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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A329400: Length of the co-Lyndon factorization of the binary expansion of n with the most significant (first) digit removed.

The programs for A329400, there is no canonical definition to state claims against.
-/

/-! ## A329400.P17274672213341272112

`A211100(xor(n+1, 2^floor(log2(n+1))-1))-1`
-/

namespace A329400.P17274672213341272112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat - 1

end

end A329400.P17274672213341272112

/-! ## A329400.P14581915341537943943

`A211100(A054429(n+1))-1`
-/

namespace A329400.P14581915341537943943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A054429 (n + 1)).toNat - 1

end

end A329400.P14581915341537943943

/-! ## A329400.P4784801743609971668

`A211100(A059893(n+1))-1`
-/

namespace A329400.P4784801743609971668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059893 (n + 1)).toNat - 1

end

end A329400.P4784801743609971668

/-! ## A329400.P14999064124217595231

`A211100(A145342(n+2)-1)-1`
-/

namespace A329400.P14999064124217595231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A145342 (n + 2) - 1).toNat - 1

end

end A329400.P14999064124217595231

/-! ## A329400.P16770200061503942830

`A211100((A145341(n+2)-1)/2)-1`
-/

namespace A329400.P16770200061503942830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat - 1

end

end A329400.P16770200061503942830

/-! ## A329400.P13569552285042935502

`A211100(∑[Δ[A057889(2*n+1)]/2])-1`
-/

namespace A329400.P13569552285042935502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A329400.P13569552285042935502

/-! ## A329400.P1542047258833905978

`A004863(A211100(A054429(n+1)))`
-/

namespace A329400.P1542047258833905978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (A211100 (A054429 (n + 1)).toNat).toNat

end

end A329400.P1542047258833905978

/-! ## A329400.P16000249474150192681

`A002837(A211100(A059893(n+1)))`
-/

namespace A329400.P16000249474150192681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A211100 (A059893 (n + 1)).toNat).toNat

end

end A329400.P16000249474150192681

/-! ## A329400.P13453700518270833108

`A198277(n)%A211100(A059893(n+1))`
-/

namespace A329400.P13453700518270833108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A211100 (A059893 (n + 1)).toNat)

end

end A329400.P13453700518270833108

/-! ## A329400.P11114214380356844961

`∑{digits}[A211100(A054429(n+1)), A023443(#)]`
-/

namespace A329400.P11114214380356844961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023443 x).sum

end

end A329400.P11114214380356844961

/-!
# A329401: Numbers whose binary expansion without the most significant (first) digit is a co-Lyndon word.

The programs for A329401, there is no canonical definition to state claims against.
-/

/-! ## A329401.P3459751580993663804

`eq[2, A211100(A054429(n+1))]+1`
-/

namespace A329401.P3459751580993663804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A054429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329401.P3459751580993663804

/-! ## A329401.P7880145208834033959

`A275692(n+1)+A053644(A014580(n+1))`
-/

namespace A329401.P7880145208834033959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (n + 1) + A053644 (A014580 (n + 1)).toNat

end

end A329401.P7880145208834033959

/-! ## A329401.P18048031280708777215

`A275692(n+1)+A053644(A329327(n+1))`
-/

namespace A329401.P18048031280708777215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (n + 1) + A053644 (A329327 (n + 1)).toNat

end

end A329401.P18048031280708777215

/-! ## A329401.P15796840078852136712

`lt[A211100(A054429(n+1)), A122553(n)]+1`
-/

namespace A329401.P15796840078852136712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A054429 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A329401.P15796840078852136712

/-! ## A329401.P7236426586235114922

`eq[1, A329400(n+1)]+1`
-/

namespace A329401.P7236426586235114922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329401.P7236426586235114922

/-!
# A329402: Number of rectangles (w X h, w <= h) with integer side lengths w and h having area = n * perimeter.

The programs for A329402, the canonical program `A329402.P5940628190842439666` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329402 has offset 1).

The definition of A329402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329402.P5940628190842439666

`A038548(4*(n+1)²)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329402

/-- `A038548(4*(n+1)²)` -/
def P5940628190842439666.Spec : Prop :=
  ∀ n, P5940628190842439666.a n = A329402 (n + 1)

theorem P5940628190842439666.correct : P5940628190842439666.Spec := by
  intro n
  simp only [A329402, Nat.add_sub_cancel]

end A329402

/-! ## A329402.P8727720182881996422

`A046079(4*(n+1))+1`
-/

namespace A329402.P8727720182881996422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (4 * (n + 1)) + 1

end

end A329402.P8727720182881996422

namespace A329402

/-- `A046079(4*(n+1))+1` -/
def P8727720182881996422.Spec : Prop :=
  ∀ n, P8727720182881996422.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P8204773657143452366

`A275367(n+1)+A018892(n+1)`
-/

namespace A329402.P8204773657143452366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (n + 1) + A018892 (n + 1)

end

end A329402.P8204773657143452366

namespace A329402

/-- `A275367(n+1)+A018892(n+1)` -/
def P8204773657143452366.Spec : Prop :=
  ∀ n, P8204773657143452366.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P15103123193028333039

`A361689(n+1)-A063647(n+1)`
-/

namespace A329402.P15103123193028333039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - A063647 (n + 1)

end

end A329402.P15103123193028333039

namespace A329402

/-- `A361689(n+1)-A063647(n+1)` -/
def P15103123193028333039.Spec : Prop :=
  ∀ n, P15103123193028333039.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P9612548934679608627

`A078644(n+1)+A078644(n+1)-A063647(n+1)`
-/

namespace A329402.P9612548934679608627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) + (A078644 (n + 1) - A063647 (n + 1))

end

end A329402.P9612548934679608627

namespace A329402

/-- `A078644(n+1)+A078644(n+1)-A063647(n+1)` -/
def P9612548934679608627.Spec : Prop :=
  ∀ n, P9612548934679608627.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P13548510954270741043

`A176835(8*(n+1))`
-/

namespace A329402.P13548510954270741043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (8 * (n + 1))

end

end A329402.P13548510954270741043

namespace A329402

/-- `A176835(8*(n+1))` -/
def P13548510954270741043.Spec : Prop :=
  ∀ n, P13548510954270741043.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P15945852388247020953

`A018892(2*(n+1))`
-/

namespace A329402.P15945852388247020953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (2 * (n + 1))

end

end A329402.P15945852388247020953

namespace A329402

/-- `A018892(2*(n+1))` -/
def P15945852388247020953.Spec : Prop :=
  ∀ n, P15945852388247020953.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P1957562038139284335

`A063647(2*(n+1))+1`
-/

namespace A329402.P1957562038139284335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (2 * (n + 1)) + 1

end

end A329402.P1957562038139284335

namespace A329402

/-- `A063647(2*(n+1))+1` -/
def P1957562038139284335.Spec : Prop :=
  ∀ n, P1957562038139284335.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P11868357983618751516

`ceil(A048691(2*(n+1))/2)`
-/

namespace A329402.P11868357983618751516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048691 (2 * (n + 1)) : ℚ) / 2⌉

end

end A329402.P11868357983618751516

namespace A329402

/-- `ceil(A048691(2*(n+1))/2)` -/
def P11868357983618751516.Spec : Prop :=
  ∀ n, P11868357983618751516.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P7456671168576965048

`(A048691(2*n+2)+1)/2`
-/

namespace A329402.P7456671168576965048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (2 * n + 2) + 1 : ℚ) / 2

end

end A329402.P7456671168576965048

namespace A329402

/-- `(A048691(2*n+2)+1)/2` -/
def P7456671168576965048.Spec : Prop :=
  ∀ n, P7456671168576965048.a n = (A329402 (n + 1) : ℚ)

end A329402

/-! ## A329402.P1950800523928166206

`A000463(A048691(2*(n+1)))`
-/

namespace A329402.P1950800523928166206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A048691 (2 * (n + 1))).toNat

end

end A329402.P1950800523928166206

namespace A329402

/-- `A000463(A048691(2*(n+1)))` -/
def P1950800523928166206.Spec : Prop :=
  ∀ n, P1950800523928166206.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P10622526966707854930

`A008620(A146564(2*(n+1)))`
-/

namespace A329402.P10622526966707854930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A146564 (2 * (n + 1))).toNat

end

end A329402.P10622526966707854930

namespace A329402

/-- `A008620(A146564(2*(n+1)))` -/
def P10622526966707854930.Spec : Prop :=
  ∀ n, P10622526966707854930.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P3633992172884168359

`A001281(A048691(2*(n+1))+1)`
-/

namespace A329402.P3633992172884168359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P3633992172884168359

namespace A329402

/-- `A001281(A048691(2*(n+1))+1)` -/
def P3633992172884168359.Spec : Prop :=
  ∀ n, P3633992172884168359.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P12492237007864291769

`A004525(A048691(2*(n+1))+1)`
-/

namespace A329402.P12492237007864291769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P12492237007864291769

namespace A329402

/-- `A004525(A048691(2*(n+1))+1)` -/
def P12492237007864291769.Spec : Prop :=
  ∀ n, P12492237007864291769.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P5559983628144038874

`A004526(A048691(2*(n+1))+1)`
-/

namespace A329402.P5559983628144038874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P5559983628144038874

namespace A329402

/-- `A004526(A048691(2*(n+1))+1)` -/
def P5559983628144038874.Spec : Prop :=
  ∀ n, P5559983628144038874.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P14508859996600950111

`A029578(A048691(2*(n+1))+1)`
-/

namespace A329402.P14508859996600950111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P14508859996600950111

namespace A329402

/-- `A029578(A048691(2*(n+1))+1)` -/
def P14508859996600950111.Spec : Prop :=
  ∀ n, P14508859996600950111.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P18036086642729573121

`A065033(A048691(2*(n+1))+1)`
-/

namespace A329402.P18036086642729573121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P18036086642729573121

namespace A329402

/-- `A065033(A048691(2*(n+1))+1)` -/
def P18036086642729573121.Spec : Prop :=
  ∀ n, P18036086642729573121.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P4704675231845778497

`A097140(A048691(2*(n+1))+1)`
-/

namespace A329402.P4704675231845778497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A048691 (2 * (n + 1)) + 1).toNat

end

end A329402.P4704675231845778497

namespace A329402

/-- `A097140(A048691(2*(n+1))+1)` -/
def P4704675231845778497.Spec : Prop :=
  ∀ n, P4704675231845778497.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P9247115967529753471

`A004524(A048691(2*(n+1))+2)`
-/

namespace A329402.P9247115967529753471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A048691 (2 * (n + 1)) + 2).toNat

end

end A329402.P9247115967529753471

namespace A329402

/-- `A004524(A048691(2*(n+1))+2)` -/
def P9247115967529753471.Spec : Prop :=
  ∀ n, P9247115967529753471.a n = A329402 (n + 1)

end A329402

/-! ## A329402.P11290106334993725004

`A002264(A146564(2*(n+1))+2)`
-/

namespace A329402.P11290106334993725004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A146564 (2 * (n + 1)) + 2).toNat

end

end A329402.P11290106334993725004

namespace A329402

/-- `A002264(A146564(2*(n+1))+2)` -/
def P11290106334993725004.Spec : Prop :=
  ∀ n, P11290106334993725004.a n = A329402 (n + 1)

end A329402

/-!
# A329403: Prime numbers p such that the sum of the prime numbers up to its square root equals primepi(p).

The programs for A329403, there is no canonical definition to state claims against.
-/

/-! ## A329403.P2098015911248575428

`filter[A111680(2*n+1), A011717(#)]`
-/

namespace A329403.P2098015911248575428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111680 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011717 (f1 j).toNat = 1) n)

end

end A329403.P2098015911248575428

/-!
# A329404: Interleave 2*n*(3*n-1), (2*n+1)*(6*n+1) for n >= 0.

The programs for A329404, the canonical program `A329404.P18137037552431112265` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329404 has offset 0).

The definition of A329404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329404.P18137037552431112265

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=21, a(4)=20, a(5)=65`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329404

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P18137037552431112265.Spec : Prop :=
  ∀ n, P18137037552431112265.a n = A329404 n

theorem P18137037552431112265.correct : P18137037552431112265.Spec := by
  intro n
  simp only [A329404]

end A329404

/-! ## A329404.P5098330177473745871

`lcm(n, 2-3*n)`
-/

namespace A329404.P5098330177473745871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (2 - (3 * n : ℤ))

end

end A329404.P5098330177473745871

namespace A329404

/-- `lcm(n, 2-3*n)` -/
def P5098330177473745871.Spec : Prop :=
  ∀ n, (P5098330177473745871.a n : ℤ) = A329404 n

end A329404

/-! ## A329404.P5623397826489337073

`(3*n-2)*gcd(n, ∑[n])`
-/

namespace A329404.P5623397826489337073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 2) * (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A329404.P5623397826489337073

namespace A329404

/-- `(3*n-2)*gcd(n, ∑[n])` -/
def P5623397826489337073.Spec : Prop :=
  ∀ n, P5623397826489337073.a n = A329404 n

end A329404

/-! ## A329404.P9651704795514393892

`lcm(2, A000567(n))/2`
-/

namespace A329404.P9651704795514393892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000567 n) : ℚ) / 2

end

end A329404.P9651704795514393892

namespace A329404

/-- `lcm(2, A000567(n))/2` -/
def P9651704795514393892.Spec : Prop :=
  ∀ n, P9651704795514393892.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P7905832945759339285

`(3*n-2)*A026741(n)`
-/

namespace A329404.P7905832945759339285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 2) * A026741 n

end

end A329404.P7905832945759339285

namespace A329404

/-- `(3*n-2)*A026741(n)` -/
def P7905832945759339285.Spec : Prop :=
  ∀ n, P7905832945759339285.a n = A329404 n

end A329404

/-! ## A329404.P13285076776956759288

`A000567(n)/A040001(n)`
-/

namespace A329404.P13285076776956759288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000567 n : ℚ) / (A040001 n : ℚ)

end

end A329404.P13285076776956759288

namespace A329404

/-- `A000567(n)/A040001(n)` -/
def P13285076776956759288.Spec : Prop :=
  ∀ n, P13285076776956759288.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P6144839817512177806

`A064201(n)/A040073(n)`
-/

namespace A329404.P6144839817512177806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064201 n : ℚ) / (A040073 n : ℚ)

end

end A329404.P6144839817512177806

namespace A329404

/-- `A064201(n)/A040073(n)` -/
def P6144839817512177806.Spec : Prop :=
  ∀ n, P6144839817512177806.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P11850364999365050143

`A139267(n)/A040003(n)`
-/

namespace A329404.P11850364999365050143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139267 n : ℚ) / (A040003 n : ℚ)

end

end A329404.P11850364999365050143

namespace A329404

/-- `A139267(n)/A040003(n)` -/
def P11850364999365050143.Spec : Prop :=
  ∀ n, P11850364999365050143.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P4972752676858115371

`A152751(n)/A040007(n)`
-/

namespace A329404.P4972752676858115371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152751 n : ℚ) / (A040007 n : ℚ)

end

end A329404.P4972752676858115371

namespace A329404

/-- `A152751(n)/A040007(n)` -/
def P4972752676858115371.Spec : Prop :=
  ∀ n, P4972752676858115371.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P1328813044962129848

`A153794(n)/A040013(n)`
-/

namespace A329404.P1328813044962129848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153794 n : ℚ) / (A040013 n : ℚ)

end

end A329404.P1328813044962129848

namespace A329404

/-- `A153794(n)/A040013(n)` -/
def P1328813044962129848.Spec : Prop :=
  ∀ n, P1328813044962129848.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P2992984113520180955

`A153795(n)/A040021(n)`
-/

namespace A329404.P2992984113520180955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153795 n : ℚ) / (A040021 n : ℚ)

end

end A329404.P2992984113520180955

namespace A329404

/-- `A153795(n)/A040021(n)` -/
def P2992984113520180955.Spec : Prop :=
  ∀ n, P2992984113520180955.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P1193246755717463992

`A153796(n)/A040031(n)`
-/

namespace A329404.P1193246755717463992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153796 n : ℚ) / (A040031 n : ℚ)

end

end A329404.P1193246755717463992

namespace A329404

/-- `A153796(n)/A040031(n)` -/
def P1193246755717463992.Spec : Prop :=
  ∀ n, P1193246755717463992.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P6371897905369612448

`A153797(n)/A040043(n)`
-/

namespace A329404.P6371897905369612448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153797 n : ℚ) / (A040043 n : ℚ)

end

end A329404.P6371897905369612448

namespace A329404

/-- `A153797(n)/A040043(n)` -/
def P6371897905369612448.Spec : Prop :=
  ∀ n, P6371897905369612448.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P15990565867479521109

`A153808(n)/A040057(n)`
-/

namespace A329404.P15990565867479521109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n : ℚ) / (A040057 n : ℚ)

end

end A329404.P15990565867479521109

namespace A329404

/-- `A153808(n)/A040057(n)` -/
def P15990565867479521109.Spec : Prop :=
  ∀ n, P15990565867479521109.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P7612973784995862419

`A139267(n)/A105397(n)`
-/

namespace A329404.P7612973784995862419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139267 n : ℚ) / (A105397 n : ℚ)

end

end A329404.P7612973784995862419

namespace A329404

/-- `A139267(n)/A105397(n)` -/
def P7612973784995862419.Spec : Prop :=
  ∀ n, P7612973784995862419.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P14740162938012365

`gcd(A000567(n), A006566(n))`
-/

namespace A329404.P14740162938012365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000567 n) (A006566 n)

end

end A329404.P14740162938012365

namespace A329404

/-- `gcd(A000567(n), A006566(n))` -/
def P14740162938012365.Spec : Prop :=
  ∀ n, (P14740162938012365.a n : ℤ) = A329404 n

end A329404

/-! ## A329404.P870876171727141753

`A000034(n)/2*A000567(n)`
-/

namespace A329404.P870876171727141753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A000567 n : ℚ)

end

end A329404.P870876171727141753

namespace A329404

/-- `A000034(n)/2*A000567(n)` -/
def P870876171727141753.Spec : Prop :=
  ∀ n, P870876171727141753.a n = (A329404 n : ℚ)

end A329404

/-! ## A329404.P16091639559436551376

`n*(A165351(n)-A000034(n))`
-/

namespace A329404.P16091639559436551376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A165351 n - A000034 n)

end

end A329404.P16091639559436551376

namespace A329404

/-- `n*(A165351(n)-A000034(n))` -/
def P16091639559436551376.Spec : Prop :=
  ∀ n, P16091639559436551376.a n = A329404 n

end A329404

/-! ## A329404.P15892515120275659507

`n*A165355(A004273(n)-n)`
-/

namespace A329404.P15892515120275659507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165355 (A004273 n - (n : ℤ)).toNat

end

end A329404.P15892515120275659507

namespace A329404

/-- `n*A165355(A004273(n)-n)` -/
def P15892515120275659507.Spec : Prop :=
  ∀ n, P15892515120275659507.a n = A329404 n

end A329404

/-! ## A329404.P8738163654848125278

`A000567(n)/(A007494(n+1)-A007494(n))`
-/

namespace A329404.P8738163654848125278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000567 n : ℚ) / (A007494 (n + 1) - A007494 n : ℚ)

end

end A329404.P8738163654848125278

namespace A329404

/-- `A000567(n)/(A007494(n+1)-A007494(n))` -/
def P8738163654848125278.Spec : Prop :=
  ∀ n, P8738163654848125278.a n = (A329404 n : ℚ)

end A329404

/-!
# A329410: Among the pairwise sums of any ten consecutive terms there is exactly one prime sum: lexicographically earliest such sequence of distinct positive numbers.

The programs for A329410, there is no canonical definition to state claims against.
-/

/-! ## A329410.P7462763354086224253

`xor(1, 3*n)+(n+1)*A036632(∑[A036640(n)])`
-/

namespace A329410.P7462763354086224253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) + (n + 1 : ℤ) * A036632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329410.P7462763354086224253

/-! ## A329410.P5757167120744131704

`xor(A008585(n), A036626(A036633(n)))`
-/

namespace A329410.P5757167120744131704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008585 n) (A036626 (A036633 n).toNat)

end

end A329410.P5757167120744131704

/-! ## A329410.P8393721674501734527

`xor(A008585(n), A036626(A036640(n)))`
-/

namespace A329410.P8393721674501734527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008585 n) (A036626 (A036640 n).toNat)

end

end A329410.P8393721674501734527

/-! ## A329410.P16295673696917229591

`A228326(n+1)+A053830(A046717(n))`
-/

namespace A329410.P16295673696917229591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228326 (n + 1) + A053830 (A046717 n).toNat

end

end A329410.P16295673696917229591

/-!
# A329411: Among the pairwise sums of any three consecutive terms there are exactly two prime sums: lexicographically earliest such sequence of distinct positive numbers.

The programs for A329411, there is no canonical definition to state claims against.
-/

/-! ## A329411.P17148795083121002040

`A055265(n+1)-A082784(A152818(n))`
-/

namespace A329411.P17148795083121002040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) - A082784 (A152818 n).toNat

end

end A329411.P17148795083121002040

/-! ## A329411.P8014563520781553096

`A055265(n+1)-A185238(A185216(n))`
-/

namespace A329411.P8014563520781553096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) - A185238 (A185216 n).toNat

end

end A329411.P8014563520781553096

/-! ## A329411.P14770288938176954869

`A055265(n+1)-A185238(A185326(n))`
-/

namespace A329411.P14770288938176954869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) - A185238 (A185326 n).toNat

end

end A329411.P14770288938176954869

/-! ## A329411.P15482238831119837531

`A086526(n+1)/2-A185238(A185216(n))`
-/

namespace A329411.P15482238831119837531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (n + 1) : ℚ) / 2 - (A185238 (A185216 n).toNat : ℚ)

end

end A329411.P15482238831119837531

/-! ## A329411.P10553918179251009083

`A282695(n+1)+1+n-A185238(A185216(n))`
-/

namespace A329411.P10553918179251009083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (n + 1) + 1 + (n : ℤ) - A185238 (A185216 n).toNat

end

end A329411.P10553918179251009083

/-!
# A329416: Among the pairwise sums of any ten consecutive terms there are exactly two prime sums: lexicographically earliest such sequence of distinct positive numbers.

The programs for A329416, there is no canonical definition to state claims against.
-/

/-! ## A329416.P1773012823341261899

`lt[Δ[A086811(n+1)], A000118(n)]`
-/

namespace A329416.P1773012823341261899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329416.P1773012823341261899

/-! ## A329416.P13060595136885754521

`lt[Δ[A086811(n+1)], A086770(n+1)]`
-/

namespace A329416.P13060595136885754521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329416.P13060595136885754521

/-! ## A329416.P8804183412698154356

`lt[Δ[A086811(n+1)], A086781(3*n)]`
-/

namespace A329416.P8804183412698154356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329416.P8804183412698154356

/-! ## A329416.P10709388507410668891

`lt[Δ[A086811(n+1)], A086849(2*n+1)]`
-/

namespace A329416.P10709388507410668891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086849 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329416.P10709388507410668891

/-! ## A329416.P7854911834048938385

`lt[Δ[A086811(n+1)], A014688(3*n+1)]`
-/

namespace A329416.P7854911834048938385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329416.P7854911834048938385

/-!
# A329418: Lazy caterer's numbers (A000124) that are also cake numbers (A000125).

The programs for A329418, there is no canonical definition to state claims against.
-/

/-! ## A329418.P11833298043350074280

`∩[a(n-1)+n, C(n, 3)+n]` with `a(0)=1`
-/

namespace A329418.P11833298043350074280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A329418.P11833298043350074280

/-!
# A329419: Numbers all of whose divisors are binary palindromes.

The programs for A329419, there is no canonical definition to state claims against.
-/

/-! ## A329419.P17448978087339598160

`A163410(A045989(C(n, 64)²+1)+n)`
-/

namespace A329419.P17448978087339598160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (A045989 (Nat.choose n 64 ^ 2 + 1) + (n : ℤ)).toNat

end

end A329419.P17448978087339598160

/-! ## A329419.P16419103273694532326

`∩[A163410(n+1), A079945(n)]`
-/

namespace A329419.P16419103273694532326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P16419103273694532326

/-! ## A329419.P16006957726904760143

`∩[A163410(n+1), A080587(n)]`
-/

namespace A329419.P16006957726904760143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P16006957726904760143

/-! ## A329419.P2618811356675012765

`∩[A163410(n+1), A081692(n)]`
-/

namespace A329419.P2618811356675012765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P2618811356675012765

/-! ## A329419.P12685786535680992077

`∩[A163410(n+1), A107750(n)]`
-/

namespace A329419.P12685786535680992077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P12685786535680992077

/-! ## A329419.P14674711058046799860

`∩[A005100(n+1), A163410(n+1)]`
-/

namespace A329419.P14674711058046799860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P14674711058046799860

/-! ## A329419.P14204655360660389181

`∩[A042965(n+1), A163410(n+1)]`
-/

namespace A329419.P14204655360660389181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P14204655360660389181

/-! ## A329419.P7314117106564140903

`∩[A042968(n+1), A163410(n+1)]`
-/

namespace A329419.P7314117106564140903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P7314117106564140903

/-! ## A329419.P17554504572087186198

`∩[A047490(n+1), A163410(n+1)]`
-/

namespace A329419.P17554504572087186198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P17554504572087186198

/-! ## A329419.P17255477023401231469

`∩[A047504(n+1), A163410(n+1)]`
-/

namespace A329419.P17255477023401231469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329419.P17255477023401231469

/-!
# A329420: Numbers all of whose divisors are binary palindromes (A329419) with a record number of divisors.

The programs for A329420, there is no canonical definition to state claims against.
-/

/-! ## A329420.P1304777838169622136

`record[A324910(A280491(n+1)²)]`
-/

namespace A329420.P1304777838169622136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A280491 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329420.P1304777838169622136

/-! ## A329420.P11579748305628712013

`∩[A163410(n+1), A330815(n+1)]`
-/

namespace A329420.P11579748305628712013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329420.P11579748305628712013

/-! ## A329420.P3736269935309606800

`∩[A329419(n+1), A330815(n+1)]`
-/

namespace A329420.P3736269935309606800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329420.P3736269935309606800

/-!
# A329421: a(n) = gcd(A330050(n), A330051(n)).

The programs for A329421, the canonical program `A329421.P7628094420746158339` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329421 has offset 0).

The definition of A329421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329421.P10419458033629844294

`gcd(A330050(n), A330051(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329421.P10419458033629844294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330050 n) (A330051 n)

end

end A329421.P10419458033629844294

namespace A329421

/-- `gcd(A330050(n), A330051(n))` -/
def P10419458033629844294.Spec : Prop :=
  ∀ n, (P10419458033629844294.a n : ℤ) = A329421 n

end A329421

/-! ## A329421.P7628094420746158339

`A005013(A008619(A008619(6*n)))-A005013(A008619(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329421

/-- `A005013(A008619(A008619(6*n)))-A005013(A008619(n))` -/
def P7628094420746158339.Spec : Prop :=
  ∀ n, P7628094420746158339.a n = A329421 n

theorem P7628094420746158339.correct : P7628094420746158339.Spec := by
  intro n
  simp only [A329421]

end A329421

/-! ## A329421.P18176450814234286023

`A330050(n)/A203976(A008619(n))`
-/

namespace A329421.P18176450814234286023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330050 n : ℚ) / (A203976 (A008619 n).toNat : ℚ)

end

end A329421.P18176450814234286023

namespace A329421

/-- `A330050(n)/A203976(A008619(n))` -/
def P18176450814234286023.Spec : Prop :=
  ∀ n, P18176450814234286023.a n = (A329421 n : ℚ)

end A329421

/-! ## A329421.P16227100824729460638

`A330050(n)/A203976(A004526(n)+1)`
-/

namespace A329421.P16227100824729460638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330050 n : ℚ) / (A203976 (A004526 n + 1).toNat : ℚ)

end

end A329421.P16227100824729460638

namespace A329421

/-- `A330050(n)/A203976(A004526(n)+1)` -/
def P16227100824729460638.Spec : Prop :=
  ∀ n, P16227100824729460638.a n = (A329421 n : ℚ)

end A329421

/-! ## A329421.P7091453252708415760

`A330050(n)/A203976(A123108(n)+1)`
-/

namespace A329421.P7091453252708415760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330050 n : ℚ) / (A203976 (A123108 n + 1).toNat : ℚ)

end

end A329421.P7091453252708415760

namespace A329421

/-- `A330050(n)/A203976(A123108(n)+1)` -/
def P7091453252708415760.Spec : Prop :=
  ∀ n, P7091453252708415760.a n = (A329421 n : ℚ)

end A329421

/-!
# A329422: Maximum length of a binary n-similar word.

The programs for A329422, there is no canonical definition to state claims against.
-/

/-! ## A329422.P7527432424818605316

`2*A311132(n)+1`
-/

namespace A329422.P7527432424818605316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311132 n + 1

end

end A329422.P7527432424818605316

/-! ## A329422.P10028624326258374548

`2*A311133(n)+1`
-/

namespace A329422.P10028624326258374548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311133 n + 1

end

end A329422.P10028624326258374548

/-! ## A329422.P5312157737635983904

`2*A311134(n)+1`
-/

namespace A329422.P5312157737635983904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311134 n + 1

end

end A329422.P5312157737635983904

/-! ## A329422.P13365360003740120524

`2*A311135(n)+1`
-/

namespace A329422.P13365360003740120524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311135 n + 1

end

end A329422.P13365360003740120524

/-! ## A329422.P13934841594838457671

`2*A311136(n)+1`
-/

namespace A329422.P13934841594838457671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311136 n + 1

end

end A329422.P13934841594838457671

/-!
# A329424: Starting from n: as long as the decimal representation starts with a positive multiple of 3, divide the largest such prefix by 3; a(n) corresponds to the final value.

The programs for A329424, there is no canonical definition to state claims against.
-/

/-! ## A329424.P13194289737886938368

`gcd(n, A145909(∑[n²]))`
-/

namespace A329424.P13194289737886938368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A145909 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A329424.P13194289737886938368

/-!
# A329425: For all n >= 0, six among (a(n+i) + a(n+j), 0 <= i < j < 5) are prime: lexicographically first such sequence of distinct nonnegative integers.

The programs for A329425, there is no canonical definition to state claims against.
-/

/-! ## A329425.P13673715025923484564

`A049800(A029761(n))+n`
-/

namespace A329425.P13673715025923484564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049800 (A029761 n).toNat + (n : ℤ)

end

end A329425.P13673715025923484564

/-!
# A329426: Number of non-isomorphic directed graphs where every vertex has outdegree 1, and no self-loops.

The programs for A329426, there is no canonical definition to state claims against.
-/

/-! ## A329426.P1153279408667145662

`A261244(n+1)+Δ[A333233(n)]`
-/

namespace A329426.P1153279408667145662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261244 (n + 1) + (f1 (n + 1) - f1 n)

end

end A329426.P1153279408667145662

/-! ## A329426.P7360307681600167139

`A059227(n)+A000120(A052878(n))`
-/

namespace A329426.P7360307681600167139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059227 n + A000120 (A052878 n).toNat

end

end A329426.P7360307681600167139

/-!
# A329427: Number of directed graphs of n vertices with more than 1 component and outdegree 1.

The programs for A329427, there is no canonical definition to state claims against.
-/

/-! ## A329427.P2828338650516779299

`A057358(A081919(n)*A110443(n+2))`
-/

namespace A329427.P2828338650516779299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A081919 n * A110443 (n + 2)).toNat

end

end A329427.P2828338650516779299

/-! ## A329427.P8000962492348080404

`A320527(n+3)+A001223(A276687(2*n+1))`
-/

namespace A329427.P8000962492348080404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320527 (n + 3) + A001223 (A276687 (2 * n + 1)).toNat

end

end A329427.P8000962492348080404

/-!
# A329428: Starting from n: as long as the decimal representation starts with a prime number, replace the largest such prefix with the index of the corresponding prime number; a(n) corresponds to the final value.

The programs for A329428, there is no canonical definition to state claims against.
-/

/-! ## A329428.P132663964195232663

`∑{e}[2^n, A288469(#)]`
-/

namespace A329428.P132663964195232663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A288469 (Nat.factorization (f1 n) p)

end

end A329428.P132663964195232663

/-! ## A329428.P14344612752396013945

`A288469(A028310(n))%A096347(n)`
-/

namespace A329428.P14344612752396013945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288469 (A028310 n).toNat) (A096347 n)

end

end A329428.P14344612752396013945

/-! ## A329428.P11975488184486275794

`A288469(A008578(n+1))%A188224(n)`
-/

namespace A329428.P11975488184486275794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288469 (A008578 (n + 1)).toNat) (A188224 n)

end

end A329428.P11975488184486275794

/-! ## A329428.P8240670954066583722

`A288469(A015919(n+1))%A091295(n+1)`
-/

namespace A329428.P8240670954066583722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288469 (A015919 (n + 1)).toNat) (A091295 (n + 1))

end

end A329428.P8240670954066583722

/-!
# A329430: Irregular triangular array, read by rows: row n shows the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A329430, there is no canonical definition to state claims against.
-/

/-! ## A329430.P17897626767316938080

`gcd(36, A001057(A046981(n)))`
-/

namespace A329430.P17897626767316938080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A001057 (A046981 n).toNat)

end

end A329430.P17897626767316938080

/-! ## A329430.P3691932095646443132

`A114266(xor(1, A114246(n+3)))`
-/

namespace A329430.P3691932095646443132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114266 (Int.xor 1 (A114246 (n + 3))).toNat

end

end A329430.P3691932095646443132

/-! ## A329430.P17766764629510312055

`A097005(n)^A328601(n+1)!`
-/

namespace A329430.P17766764629510312055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097005 n ^ Nat.factorial (A328601 (n + 1)).toNat

end

end A329430.P17766764629510312055

/-! ## A329430.P16000853096620928256

`A279004(A032555(n+1))^floor(n/3)`
-/

namespace A329430.P16000853096620928256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279004 (A032555 (n + 1)).toNat : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A329430.P16000853096620928256

/-! ## A329430.P5755132537577173737

`A247371(A001844(n)*A049864(n))`
-/

namespace A329430.P5755132537577173737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247371 (A001844 n * A049864 n).toNat

end

end A329430.P5755132537577173737

/-!
# A329433: Irregular triangular array, read by rows: row n shows the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A329433, there is no canonical definition to state claims against.
-/

/-! ## A329433.P6152583925590686453

`A323384(A396559(n))`
-/

namespace A329433.P6152583925590686453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323384 (A396559 n).toNat

end

end A329433.P6152583925590686453

/-! ## A329433.P17434959719936399108

`A214322(A067410(n)^A107030(n))`
-/

namespace A329433.P17434959719936399108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214322 (SequenceMachineLib.roundAway ((A067410 n : ℚ) ^ (A107030 n : ℤ))).toNat

end

end A329433.P17434959719936399108

/-! ## A329433.P5004645557851698811

`A322511(A171814(lcm(n, A108558(n))))`
-/

namespace A329433.P5004645557851698811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322511 (A171814 (Int.lcm (n : ℤ) (A108558 n))).toNat

end

end A329433.P5004645557851698811

/-!
# A329434: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*(2*j - 1)))).

The programs for A329434, there is no canonical definition to state claims against.
-/

/-! ## A329434.P13958603295890422375

`∑{d}[n+1, A000700(#)]`
-/

namespace A329434.P13958603295890422375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000700 d

end

end A329434.P13958603295890422375

/-! ## A329434.P1232481051733309387

`∑{d}[n+1, abs(A081362(#))]`
-/

namespace A329434.P1232481051733309387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A081362 d|

end

end A329434.P1232481051733309387

/-! ## A329434.P3483386924403310801

`∑{d}[n+1, A027359(A000217(#))]`
-/

namespace A329434.P3483386924403310801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027359 (A000217 d).toNat

end

end A329434.P3483386924403310801

/-! ## A329434.P5370066182329168410

`∑{d}[A077342(n+1), A169995(#)]`
-/

namespace A329434.P5370066182329168410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A169995 d

end

end A329434.P5370066182329168410

/-! ## A329434.P4781868330448724505

`∑{d}[A151764(n+1), A169992(#)]`
-/

namespace A329434.P4781868330448724505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A169992 d

end

end A329434.P4781868330448724505

/-!
# A329435: Expansion of Sum_{k>=1} (-1 + Product_{j>=2} 1 / (1 - x^(k*j))).

The programs for A329435, there is no canonical definition to state claims against.
-/

/-! ## A329435.P9376124664947603681

`∑{d}[n+1, A002865(#)]`
-/

namespace A329435.P9376124664947603681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002865 d

end

end A329435.P9376124664947603681

/-! ## A329435.P9897793873371225707

`∑{d}[n+1, A187219(#)]-1`
-/

namespace A329435.P9897793873371225707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A187219 d - 1

end

end A329435.P9897793873371225707

/-! ## A329435.P3121266343642755071

`∑{d}[n+1, A232697(#)-1]`
-/

namespace A329435.P3121266343642755071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A232697 d - 1)

end

end A329435.P3121266343642755071

/-! ## A329435.P11945188095527316792

`∑{d}[n+1, A085811(#+3)]`
-/

namespace A329435.P11945188095527316792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085811 (d + 3)

end

end A329435.P11945188095527316792

/-! ## A329435.P5600775059634689451

`A338470(n+1)+A168111(n+1)`
-/

namespace A329435.P5600775059634689451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 (n + 1) + A168111 (n + 1)

end

end A329435.P5600775059634689451

/-! ## A329435.P16006392022181935060

`A047968(n+1)-A083710(n+1)`
-/

namespace A329435.P16006392022181935060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) - A083710 (n + 1)

end

end A329435.P16006392022181935060

/-! ## A329435.P12450503601643961002

`∑{d}[n+1, A000041(#)-A000041(#-1)]`
-/

namespace A329435.P12450503601643961002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000041 d - A000041 (d - 1))

end

end A329435.P12450503601643961002

/-! ## A329435.P15363696181660693708

`∑{d}[n+1, A027300(C(#, 2)+1)]`
-/

namespace A329435.P15363696181660693708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027300 (Nat.choose d 2 + 1)

end

end A329435.P15363696181660693708

/-!
# A329436: Expansion of Sum_{k>=1} (-1 + Product_{j>=2} (1 + x^(k*j))).

The programs for A329436, there is no canonical definition to state claims against.
-/

/-! ## A329436.P10327370531557734219

`∑{d}[n+1, A025147(#)]`
-/

namespace A329436.P10327370531557734219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025147 d

end

end A329436.P10327370531557734219

/-! ## A329436.P9367171193614725400

`A047966(n+1)-A097986(n+1)`
-/

namespace A329436.P9367171193614725400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - A097986 (n + 1)

end

end A329436.P9367171193614725400

/-! ## A329436.P1353888031919965384

`A047966(n+1)-(A098965(n+1)+A025147(n))`
-/

namespace A329436.P1353888031919965384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A098965 (n + 1) + A025147 n)

end

end A329436.P1353888031919965384

/-! ## A329436.P1387438024488704543

`∑{d}[n+1, A096765(#+1)]`
-/

namespace A329436.P1387438024488704543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096765 (d + 1)

end

end A329436.P1387438024488704543

/-! ## A329436.P4878438201007015565

`A334652(n+1)+ceil(abs(sin(n)))`
-/

namespace A329436.P4878438201007015565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334652 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A329436.P4878438201007015565

/-! ## A329436.P16679890913362929847

`A334652(n+1)+A057427(n)`
-/

namespace A329436.P16679890913362929847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334652 (n + 1) + A057427 n

end

end A329436.P16679890913362929847

/-! ## A329436.P15000617031410349631

`A334652(n+1)+A000040(n+1)%2`
-/

namespace A329436.P15000617031410349631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334652 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A329436.P15000617031410349631

/-! ## A329436.P15225658382508830066

`∑{d}[n+1, A015716(A000124(#))]`
-/

namespace A329436.P15225658382508830066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A015716 (A000124 d).toNat

end

end A329436.P15225658382508830066

/-! ## A329436.P9645737454842506739

`A341450(n+1)+A024994(n+1)`
-/

namespace A329436.P9645737454842506739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (n + 1) + A024994 (n + 1)

end

end A329436.P9645737454842506739

/-!
# A329437: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} 1 / (1 - x^(k*prime(j)))).

The programs for A329437, there is no canonical definition to state claims against.
-/

/-! ## A329437.P17524871218572344606

`∑{d}[n+1, A000607(#)]`
-/

namespace A329437.P17524871218572344606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000607 d

end

end A329437.P17524871218572344606

/-! ## A329437.P694397195417254609

`∑{d}[A328617(n+1), A114372(#)]`
-/

namespace A329437.P694397195417254609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A114372 d

end

end A329437.P694397195417254609

/-! ## A329437.P15926889239983048430

`∑{d}[A351374(n+1), A114372(#)]`
-/

namespace A329437.P15926889239983048430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A114372 d

end

end A329437.P15926889239983048430

/-!
# A329438: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*prime(j)))).

The programs for A329438, there is no canonical definition to state claims against.
-/

/-! ## A329438.P10976089483835561655

`∑{d}[n+1, A000586(#)]`
-/

namespace A329438.P10976089483835561655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000586 d

end

end A329438.P10976089483835561655

/-!
# A329439: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} 1 / (1 - x^(k*j^2))).

The programs for A329439, there is no canonical definition to state claims against.
-/

/-! ## A329439.P1500383395469340228

`∑{d}[n+1, A001156(#)]`
-/

namespace A329439.P1500383395469340228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001156 d

end

end A329439.P1500383395469340228

/-! ## A329439.P11495182792471175070

`∑{d}[4*(n+1), A265260(#)]`
-/

namespace A329439.P11495182792471175070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A265260 d

end

end A329439.P11495182792471175070

/-! ## A329439.P8797130238228902291

`∑{d}[A187829(n+1), A025774(#)]`
-/

namespace A329439.P8797130238228902291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A025774 d

end

end A329439.P8797130238228902291

/-! ## A329439.P14533115204867209565

`∑{d}[n+1, A280168(A187829(#))]`
-/

namespace A329439.P14533115204867209565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A280168 (A187829 d).toNat

end

end A329439.P14533115204867209565

/-! ## A329439.P9973227192103893567

`A335885(A304719(n))+A000005(n+1)`
-/

namespace A329439.P9973227192103893567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A304719 n).toNat + A000005 (n + 1)

end

end A329439.P9973227192103893567

/-!
# A329443: a(n) is the GCD of the binary representation of n interpreted in any numeric base.

The programs for A329443, there is no canonical definition to state claims against.
-/

/-! ## A329443.P13772052954696249805

`gcd(A000120(n), A174571(2*n²))`
-/

namespace A329443.P13772052954696249805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 n) (A174571 (2 * n ^ 2))

end

end A329443.P13772052954696249805

/-! ## A329443.P6595745538495321498

`gcd(A174571(A001105(n)), A207328(n))`
-/

namespace A329443.P6595745538495321498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174571 (A001105 n).toNat) (A207328 n)

end

end A329443.P6595745538495321498

/-! ## A329443.P11509983873805392801

`gcd(A000120(n), A342242(A129194(n)))`
-/

namespace A329443.P11509983873805392801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 n) (A342242 (A129194 n).toNat)

end

end A329443.P11509983873805392801

/-! ## A329443.P8347186717755415879

`gcd(A001222(A321320(n+1)), A195145(n))`
-/

namespace A329443.P8347186717755415879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A321320 (n + 1)).toNat) (A195145 n)

end

end A329443.P8347186717755415879

/-! ## A329443.P1561005749776867099

`gcd(ceil(n²/2), A374684(A333627(n)))`
-/

namespace A329443.P1561005749776867099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n ^ 2 : ℚ) / 2⌉ (A374684 (A333627 n).toNat)

end

end A329443.P1561005749776867099

/-! ## A329443.P9275891422505926596

`gcd(A055396(A330105(n+1)), A327492(n))`
-/

namespace A329443.P9275891422505926596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055396 (A330105 (n + 1)).toNat) (A327492 n)

end

end A329443.P9275891422505926596

/-!
# A329445: Dirichlet inverse of A328745.

The programs for A329445, the canonical program `A329445.P891337881195672988` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329445 has offset 1).

The definition of A329445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A182938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329445.P891337881195672988

`A182938(n+1)*A008836(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329445

/-- `A182938(n+1)*A008836(n+1)` -/
def P891337881195672988.Spec : Prop :=
  ∀ n, P891337881195672988.a n = A329445 (n + 1)

theorem P891337881195672988.correct : P891337881195672988.Spec := by
  intro n
  simp only [A329445, Nat.add_sub_cancel]

end A329445

/-! ## A329445.P2893528063641221234

`(-1)^∑{e}[n+1, #]*∏{p}[n+1, C(#, val(n+1, #))]`
-/

namespace A329445.P2893528063641221234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℤ)

end

end A329445.P2893528063641221234

namespace A329445

/-- `(-1)^∑{e}[n+1, #]*∏{p}[n+1, C(#, val(n+1, #))]` -/
def P2893528063641221234.Spec : Prop :=
  ∀ n, P2893528063641221234.a n = A329445 (n + 1)

end A329445

/-! ## A329445.P2030406393996442156

`∏{p}[n+1, C(#, val(n+1, #))]/(-1)^∑{e}[n+1, #]`
-/

namespace A329445.P2030406393996442156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

end

end A329445.P2030406393996442156

namespace A329445

/-- `∏{p}[n+1, C(#, val(n+1, #))]/(-1)^∑{e}[n+1, #]` -/
def P2030406393996442156.Spec : Prop :=
  ∀ n, P2030406393996442156.a n = (A329445 (n + 1) : ℚ)

end A329445

/-! ## A329445.P2476197784214510478

`∏{p}[n+1, C(#, val(n+1, #))]*∏{e}[n+1, (-1)^#]`
-/

namespace A329445.P2476197784214510478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-1) ^ Nat.factorization (f2 n) p)

end

end A329445.P2476197784214510478

namespace A329445

/-- `∏{p}[n+1, C(#, val(n+1, #))]*∏{e}[n+1, (-1)^#]` -/
def P2476197784214510478.Spec : Prop :=
  ∀ n, P2476197784214510478.a n = A329445 (n + 1)

end A329445

/-! ## A329445.P13496757296715653944

`∏{p}[n+1, C(#, val(n+1, #))]/∏{e}[n+1, (-1)^#]`
-/

namespace A329445.P13496757296715653944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (-1) ^ Nat.factorization (f2 n) p : ℤ) : ℚ)

end

end A329445.P13496757296715653944

namespace A329445

/-- `∏{p}[n+1, C(#, val(n+1, #))]/∏{e}[n+1, (-1)^#]` -/
def P13496757296715653944.Spec : Prop :=
  ∀ n, P13496757296715653944.a n = (A329445 (n + 1) : ℚ)

end A329445

/-! ## A329445.P660770490275801961

`A114006(n+1)%2*∏{p}[n+1, C(#, val(n+1, #))]`
-/

namespace A329445.P660770490275801961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114006 (n + 1)) 2 * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℤ)

end

end A329445.P660770490275801961

namespace A329445

/-- `A114006(n+1)%2*∏{p}[n+1, C(#, val(n+1, #))]` -/
def P660770490275801961.Spec : Prop :=
  ∀ n, P660770490275801961.a n = A329445 (n + 1)

end A329445

/-! ## A329445.P13756856337095047609

`(-1)^A001222(n+1)*∏{p}[n+1, C(#, val(n+1, #))]`
-/

namespace A329445.P13756856337095047609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (SequenceMachineLib.valuation (n + 1) p) : ℕ) : ℚ)

end

end A329445.P13756856337095047609

namespace A329445

/-- `(-1)^A001222(n+1)*∏{p}[n+1, C(#, val(n+1, #))]` -/
def P13756856337095047609.Spec : Prop :=
  ∀ n, P13756856337095047609.a n = (A329445 (n + 1) : ℚ)

end A329445

/-! ## A329445.P13780575617413400387

`Δ[A002819(n)]*A182938(n+1)`
-/

namespace A329445.P13780575617413400387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A182938 (n + 1)

end

end A329445.P13780575617413400387

namespace A329445

/-- `Δ[A002819(n)]*A182938(n+1)` -/
def P13780575617413400387.Spec : Prop :=
  ∀ n, P13780575617413400387.a n = A329445 (n + 1)

end A329445

/-! ## A329445.P16080914075123622154

`A008683(Δ[A069891(n)])*A182938(n+1)`
-/

namespace A329445.P16080914075123622154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat * A182938 (n + 1)

end

end A329445.P16080914075123622154

namespace A329445

/-- `A008683(Δ[A069891(n)])*A182938(n+1)` -/
def P16080914075123622154.Spec : Prop :=
  ∀ n, P16080914075123622154.a n = A329445 (n + 1)

end A329445

/-! ## A329445.P14563814634259928655

`A008683(or(46, A001222(n+1)))*A182938(n+1)`
-/

namespace A329445.P14563814634259928655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 46 (A001222 (n + 1))).toNat * A182938 (n + 1)

end

end A329445.P14563814634259928655

namespace A329445

/-- `A008683(or(46, A001222(n+1)))*A182938(n+1)` -/
def P14563814634259928655.Spec : Prop :=
  ∀ n, P14563814634259928655.a n = A329445 (n + 1)

end A329445

/-!
# A329446: Odd primes p such that p mod A001414((p+q)/2) and q mod A001414((p+q)/2) are prime, where q is the least prime > p.

The programs for A329446, there is no canonical definition to state claims against.
-/

/-! ## A329446.P13559873807562747421

`A000040(eq[A040005(n), A308118(n+1)])`
-/

namespace A329446.P13559873807562747421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A329446.P13559873807562747421

/-! ## A329446.P18148210436826237088

`A000040(eq[A040001(n)², A308118(n+1)])`
-/

namespace A329446.P18148210436826237088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A329446.P18148210436826237088

/-!
# A329447: Start with a(0)=0; thereafter, look left and identify the least frequent digit d so far (in case of a tie, choose the smallest d): after then a(n) = 10c + d, where c > 0 is the number of times d has appeared so far.

The programs for A329447, there is no canonical definition to state claims against.
-/

/-! ## A329447.P6453274411695204183

`A000196(A329818(n)²)`
-/

namespace A329447.P6453274411695204183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A329818 n ^ 2).toNat

end

end A329447.P6453274411695204183

/-! ## A329447.P4064800490639459778

`A037213(A329818(n)²)`
-/

namespace A329447.P4064800490639459778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A329818 n ^ 2).toNat

end

end A329447.P4064800490639459778

/-! ## A329447.P17949382179967190391

`A038690(A329818(n)²)`
-/

namespace A329447.P17949382179967190391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A329818 n ^ 2).toNat

end

end A329447.P17949382179967190391

/-! ## A329447.P14369508712402331599

`A261904(A329818(n)²)`
-/

namespace A329447.P14369508712402331599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (A329818 n ^ 2).toNat

end

end A329447.P14369508712402331599

/-! ## A329447.P7704815606207164398

`A331958(A329818(n)²)`
-/

namespace A329447.P7704815606207164398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (A329818 n ^ 2).toNat

end

end A329447.P7704815606207164398

/-! ## A329447.P13134734710542618865

`A000196(A329818(n)^2)`
-/

namespace A329447.P13134734710542618865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A329818 n ^ 2).toNat

end

end A329447.P13134734710542618865

/-! ## A329447.P3221795255361610367

`A010052(A329818(n)²)*A329818(n)`
-/

namespace A329447.P3221795255361610367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A329818 n ^ 2).toNat * A329818 n

end

end A329447.P3221795255361610367

/-! ## A329447.P1298156211676525203

`A000196((A329818(n)+1)*A329818(n))`
-/

namespace A329447.P1298156211676525203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A329818 n + 1) * A329818 n).toNat

end

end A329447.P1298156211676525203

/-!
# A329448: Numbers n which appear twice in the sequence starting with n and subsequent terms given by 10c + d where c is the number of times (> 0) the least frequent digit d has appeared so far, smallest d in case of tie.

The programs for A329448, there is no canonical definition to state claims against.
-/

/-! ## A329448.P3934047523910545132

`lt[A124695(n+1), A065650(n)]`
-/

namespace A329448.P3934047523910545132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329448.P3934047523910545132

/-! ## A329448.P9931145522324765472

`lt[A321451(n+2), A321481(A321474(n))]`
-/

namespace A329448.P9931145522324765472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321481 (A321474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329448.P9931145522324765472

/-! ## A329448.P12759595038206940133

`lt[lt[A065941(n+3), 5], A065650(n)]`
-/

namespace A329448.P12759595038206940133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A329448.P12759595038206940133

/-! ## A329448.P12866315479148010383

`lt[A257587(n), A357620(A007920(3*n+2))]`
-/

namespace A329448.P12866315479148010383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357620 (A007920 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329448.P12866315479148010383

/-!
# A329451: Maximum number of pieces that can be captured during one move on an n X n board according to the international draughts capture rules.

The programs for A329451, the canonical program `A329451.P14420224795869764284` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329451 has offset 0).

The definition of A329451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329451.P14420224795869764284

`A056847(A008811(n)-A107279(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A329451

/-- `A056847(A008811(n)-A107279(n))` -/
def P14420224795869764284.Spec : Prop :=
  ∀ n, P14420224795869764284.a n = A329451 n

theorem P14420224795869764284.correct : P14420224795869764284.Spec := by
  intro n
  simp only [A329451]

end A329451

/-!
# A329459: Numbers whose ternary and Zeckendorf representations are both palindromic.

The programs for A329459, there is no canonical definition to state claims against.
-/

/-! ## A329459.P2114670662653133131

`∩[A014190(n+1), A094202(n+1)]`
-/

namespace A329459.P2114670662653133131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329459.P2114670662653133131

/-! ## A329459.P831355326811431819

`eq[A349240(n)², A055947(n)]`
-/

namespace A329459.P831355326811431819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349240 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329459.P831355326811431819

/-! ## A329459.P16287667100268358923

`∩[A094202(n+1), record[A265511(n)]]`
-/

namespace A329459.P16287667100268358923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329459.P16287667100268358923

/-! ## A329459.P15712981307420449427

`∩[eq[0, A055947(n)], A094202(n+1)]`
-/

namespace A329459.P15712981307420449427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A329459.P15712981307420449427

/-! ## A329459.P3034847782874676000

`∩[eq[n, A030102(n)], A094202(n+1)]`
-/

namespace A329459.P3034847782874676000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A329459.P3034847782874676000

/-!
# A329462: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*j^2))).

The programs for A329462, there is no canonical definition to state claims against.
-/

/-! ## A329462.P7343653418783294951

`∑{d}[n+1, A033461(#)]`
-/

namespace A329462.P7343653418783294951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033461 d

end

end A329462.P7343653418783294951

/-! ## A329462.P2523140451245871289

`A332334(A378053(n+1))`
-/

namespace A329462.P2523140451245871289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332334 (A378053 (n + 1)).toNat

end

end A329462.P2523140451245871289

/-! ## A329462.P7590138970701304943

`A128428(A008619(n+1)^A239936(n))`
-/

namespace A329462.P7590138970701304943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (SequenceMachineLib.roundAway ((A008619 (n + 1) : ℚ) ^ (A239936 n : ℤ))).toNat

end

end A329462.P7590138970701304943

/-! ## A329462.P16149678327994673552

`∑{d}[A242474(n+1), A347534(A242474(#))]`
-/

namespace A329462.P16149678327994673552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347534 (A242474 d).toNat

end

end A329462.P16149678327994673552

/-!
# A329465: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} 1 / (1 - x^(k*j*(j + 1)/2))).

The programs for A329465, there is no canonical definition to state claims against.
-/

/-! ## A329465.P11515232028342983812

`∑{d}[n+1, A007294(#)]`
-/

namespace A329465.P11515232028342983812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007294 d

end

end A329465.P11515232028342983812

/-! ## A329465.P1614777678722576326

`∑{d}[A077168(n), A029047(#)]`
-/

namespace A329465.P1614777678722576326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029047 d

end

end A329465.P1614777678722576326

/-! ## A329465.P16981411938293339221

`∑{d}[A077168(n), A187829(A007294(#))]`
-/

namespace A329465.P16981411938293339221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A187829 (A007294 d).toNat

end

end A329465.P16981411938293339221

/-!
# A329466: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*j*(j + 1)/2))).

The programs for A329466, there is no canonical definition to state claims against.
-/

/-! ## A329466.P69478749404653397

`∑{d}[n+1, A024940(#)]`
-/

namespace A329466.P69478749404653397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024940 d

end

end A329466.P69478749404653397

/-! ## A329466.P739227807004399896

`∑{d}[n+1, A339376(#)+A339375(#)]`
-/

namespace A329466.P739227807004399896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A339376 d + A339375 d)

end

end A329466.P739227807004399896

/-! ## A329466.P17570568531884500000

`A038548(n+1)+A005136(A321457(2*(n+1)))`
-/

namespace A329466.P17570568531884500000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + A005136 (A321457 (2 * (n + 1))).toNat

end

end A329466.P17570568531884500000

/-! ## A329466.P5699695495645006394

`A274353(A274333(∑{d}[n+1, lcm(#, n+1)]+1))`
-/

namespace A329466.P5699695495645006394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274353 (A274333 (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) + 1)).toNat

end

end A329466.P5699695495645006394

/-! ## A329466.P15294392298724543077

`A209198(p?[A182270(n)])+A038548(n+1)`
-/

namespace A329466.P15294392298724543077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209198 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A038548 (n + 1)

end

end A329466.P15294392298724543077

/-!
# A329467: Expansion of Product_{i>=1, j>=1} (1 + x^(i*j)) * (1 + x^(2*i*j)).

The programs for A329467, there is no canonical definition to state claims against.
-/

/-! ## A329467.P16061212686415864021

`A319130(n)+A018843(A356065(n+1))`
-/

namespace A329467.P16061212686415864021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319130 n + A018843 (A356065 (n + 1)).toNat

end

end A329467.P16061212686415864021

/-! ## A329467.P16725878883834624089

`A362622(A070557(n))`
-/

namespace A329467.P16725878883834624089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362622 (A070557 n).toNat

end

end A329467.P16725878883834624089

/-! ## A329467.P15017080616852260979

`A118759(A319130(n))`
-/

namespace A329467.P15017080616852260979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A319130 n).toNat

end

end A329467.P15017080616852260979

/-! ## A329467.P2466248385455684034

`A362622(A225751(n))`
-/

namespace A329467.P2466248385455684034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362622 (A225751 n).toNat

end

end A329467.P2466248385455684034

/-! ## A329467.P14421705684661027462

`filter[A319130(n), A102609(#)]`
-/

namespace A329467.P14421705684661027462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A329467.P14421705684661027462

/-!
# A329469: Perfectly cyclic numbers: numbers k such that the iterations of the mapping x -> f(x) = x^2 + c (mod k), starting at x = f(c), is purely periodic for all 0 <= c <= k.

The programs for A329469, there is no canonical definition to state claims against.
-/

/-! ## A329469.P6482853749162349743

`record[A032742(A035303(n+1))]`
-/

namespace A329469.P6482853749162349743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A035303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329469.P6482853749162349743

/-! ## A329469.P17724367546279144728

`record[A025480(A035303(n+2))]`
-/

namespace A329469.P17724367546279144728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A035303 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329469.P17724367546279144728

/-! ## A329469.P3887153282865803765

`record[A246277(A035303(n+3))]`
-/

namespace A329469.P3887153282865803765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A035303 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329469.P3887153282865803765

/-! ## A329469.P13803792741898517192

`filter[A035303(n+1), A307430(#)]`
-/

namespace A329469.P13803792741898517192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A329469.P13803792741898517192

/-! ## A329469.P7354878533606042352

`filter[A035303(n+1), A370598(#)]`
-/

namespace A329469.P7354878533606042352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A329469.P7354878533606042352

/-!
# A329470: a(n) = 2 a(n-1)^2 + 1 for n >=2 , where a(0) = 1, a(1) = 1.

The programs for A329470, the canonical program `A329470.P3876758918038876469` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329470 has offset 0).

The definition of A329470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²+1` (program `A329470.P3876758918038876469`, by `A329470.P3876758918038876469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329470.P3876758918038876469

`2*a(n-1)²+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329470

/-- `2*a(n-1)²+1` -/
def P3876758918038876469.Spec : Prop :=
  ∀ n, (P3876758918038876469.a n : ℤ) = A329470 n

theorem P3876758918038876469.correct : P3876758918038876469.Spec := by
  intro n
  simp only [A329470]

end A329470

/-! ## A329470.P7020701445739306298

`lcm(2, a(n-1)²)+1` with `a(0)=1, a(1)=1`
-/

namespace A329470.P7020701445739306298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 2 (a (n - 1) ^ 2) + 1

end

end A329470.P7020701445739306298

namespace A329470

/-- `lcm(2, a(n-1)²)+1` -/
def P7020701445739306298.Spec : Prop :=
  ∀ n, (P7020701445739306298.a n : ℤ) = A329470 n

end A329470

/-! ## A329470.P5423636572306677368

`or(1, 2*a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A329470.P5423636572306677368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 1 (2 * a (n - 1) ^ 2)

end

end A329470.P5423636572306677368

namespace A329470

/-- `or(1, 2*a(n-1)²)` -/
def P5423636572306677368.Spec : Prop :=
  ∀ n, (P5423636572306677368.a n : ℤ) = A329470 n

end A329470

/-! ## A329470.P7707754250273098003

`xor(1, 2*a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A329470.P7707754250273098003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (2 * a (n - 1) ^ 2)

end

end A329470.P7707754250273098003

namespace A329470

/-- `xor(1, 2*a(n-1)²)` -/
def P7707754250273098003.Spec : Prop :=
  ∀ n, (P7707754250273098003.a n : ℤ) = A329470 n

end A329470

/-! ## A329470.P8036289395122556812

`3-2*(1-a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A329470.P8036289395122556812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - 2 * (1 - a (n - 1) ^ 2)

end

end A329470.P8036289395122556812

namespace A329470

/-- `3-2*(1-a(n-1)²)` -/
def P8036289395122556812.Spec : Prop :=
  ∀ n, P8036289395122556812.a n = A329470 n

end A329470

/-!
# A329471: a(n) = a(n-1)^2 + 3 for n >= 2 , where a(0) = 1, a(1) = 3.

The programs for A329471, the canonical program `A329471.P595501063296789310` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329471 has offset 0).

The definition of A329471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+3` (program `A329471.P595501063296789310`, by `A329471.P595501063296789310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329471.P595501063296789310

`a(n-1)²+3` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329471

/-- `a(n-1)²+3` -/
def P595501063296789310.Spec : Prop :=
  ∀ n, (P595501063296789310.a n : ℤ) = A329471 n

theorem P595501063296789310.correct : P595501063296789310.Spec := by
  intro n
  simp only [A329471]

end A329471

/-! ## A329471.P11887597735713410404

`or(4, a(n-1)²)-1` with `a(0)=1, a(1)=3`
-/

namespace A329471.P11887597735713410404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 4 (a (n - 1) ^ 2) - 1

end

end A329471.P11887597735713410404

namespace A329471

/-- `or(4, a(n-1)²)-1` -/
def P11887597735713410404.Spec : Prop :=
  ∀ n, P11887597735713410404.a n = A329471 n

end A329471

/-! ## A329471.P8327275316258174351

`xor(4, a(n-1)²)-1` with `a(0)=1, a(1)=3`
-/

namespace A329471.P8327275316258174351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 4 (a (n - 1) ^ 2) - 1

end

end A329471.P8327275316258174351

namespace A329471

/-- `xor(4, a(n-1)²)-1` -/
def P8327275316258174351.Spec : Prop :=
  ∀ n, P8327275316258174351.a n = A329471 n

end A329471

/-! ## A329471.P11102398500593385942

`a(n-A054977(n))*a(n-1)+3` with `a(0)=1, a(1)=3`
-/

namespace A329471.P11102398500593385942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a ((n : ℤ) - A054977 n).toNat * a (n - 1) + 3

end

end A329471.P11102398500593385942

namespace A329471

/-- `a(n-A054977(n))*a(n-1)+3` -/
def P11102398500593385942.Spec : Prop :=
  ∀ n, (P11102398500593385942.a n : ℤ) = A329471 n

end A329471

/-! ## A329471.P4246245364137942680

`a(n-1)*a(A000007(n)+n-1)+3` with `a(0)=1, a(1)=3`
-/

namespace A329471.P4246245364137942680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * a (A000007 n + (n : ℤ) - 1).toNat + 3

end

end A329471.P4246245364137942680

namespace A329471

/-- `a(n-1)*a(A000007(n)+n-1)+3` -/
def P4246245364137942680.Spec : Prop :=
  ∀ n, (P4246245364137942680.a n : ℤ) = A329471 n

end A329471

/-!
# A329472: Partial sums of numbers that are not squarefree.

The programs for A329472, the canonical program `A329472.P13152310064433774783` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329472 has offset 1).

The definition of A329472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329472.P13152310064433774783

`∑[A013929(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329472

/-- `∑[A013929(n+1)]` -/
def P13152310064433774783.Spec : Prop :=
  ∀ n, P13152310064433774783.a n = A329472 (n + 1)

theorem P13152310064433774783.correct : P13152310064433774783.Spec := by
  intro n
  simp only [A329472, Nat.add_sub_cancel]

end A329472

/-! ## A329472.P12993990276515586905

`∑[lt[0, A105570(n)]]`
-/

namespace A329472.P12993990276515586905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P12993990276515586905

namespace A329472

/-- `∑[lt[0, A105570(n)]]` -/
def P12993990276515586905.Spec : Prop :=
  ∀ n, (P12993990276515586905.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P236034512888485898

`∑[sqrt(A062320(n+1))]`
-/

namespace A329472.P236034512888485898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P236034512888485898

namespace A329472

/-- `∑[sqrt(A062320(n+1))]` -/
def P236034512888485898.Spec : Prop :=
  ∀ n, P236034512888485898.a n = (A329472 (n + 1) : ℝ)

end A329472

/-! ## A329472.P16191507609707597304

`∑[record[A105570(n+4)]]`
-/

namespace A329472.P16191507609707597304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P16191507609707597304

namespace A329472

/-- `∑[record[A105570(n+4)]]` -/
def P16191507609707597304.Spec : Prop :=
  ∀ n, P16191507609707597304.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P9231543476251522729

`∑[lt[1, n*A087049(n)]]`
-/

namespace A329472.P9231543476251522729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P9231543476251522729

namespace A329472

/-- `∑[lt[1, n*A087049(n)]]` -/
def P9231543476251522729.Spec : Prop :=
  ∀ n, (P9231543476251522729.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P730557601414041826

`A080756(n)+a(n-1)` with `a(0)=4`
-/

namespace A329472.P730557601414041826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A080756 n + a (n - 1)

end

end A329472.P730557601414041826

namespace A329472

/-- `A080756(n)+a(n-1)` -/
def P730557601414041826.Spec : Prop :=
  ∀ n, P730557601414041826.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P12078932591507621475

`∑[comp[C(A007913(n+1), n)]]`
-/

namespace A329472.P12078932591507621475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P12078932591507621475

namespace A329472

/-- `∑[comp[C(A007913(n+1), n)]]` -/
def P12078932591507621475.Spec : Prop :=
  ∀ n, (P12078932591507621475.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P399773679113173936

`∑[comp[C(A007947(n+1), n)]]`
-/

namespace A329472.P399773679113173936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P399773679113173936

namespace A329472

/-- `∑[comp[C(A007947(n+1), n)]]` -/
def P399773679113173936.Spec : Prop :=
  ∀ n, (P399773679113173936.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P4062822806228089864

`∑[eq[0, A008683(n+1)]+1]`
-/

namespace A329472.P4062822806228089864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P4062822806228089864

namespace A329472

/-- `∑[eq[0, A008683(n+1)]+1]` -/
def P4062822806228089864.Spec : Prop :=
  ∀ n, (P4062822806228089864.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P17314153405542003108

`∑[lt[1, A005361(n+1)]+1]`
-/

namespace A329472.P17314153405542003108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P17314153405542003108

namespace A329472

/-- `∑[lt[1, A005361(n+1)]+1]` -/
def P17314153405542003108.Spec : Prop :=
  ∀ n, (P17314153405542003108.a n : ℤ) = A329472 (n + 1)

theorem P17314153405542003108.correct : P17314153405542003108.Spec := by
  intro n
  simp only [A329472, Nat.add_sub_cancel, A329472.P17314153405542003108.f2, A329472.P17314153405542003108.f3, A329472.P17314153405542003108.f1, A329472.P17314153405542003108.a, A329472.P13152310064433774783.f1, A329472.P13152310064433774783.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329472

/-! ## A329472.P4303096264334661798

`∑[lt[1, A051903(n+1)]+1]`
-/

namespace A329472.P4303096264334661798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P4303096264334661798

namespace A329472

/-- `∑[lt[1, A051903(n+1)]+1]` -/
def P4303096264334661798.Spec : Prop :=
  ∀ n, (P4303096264334661798.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P4286441324874059308

`∑[A015049(n+1)*A087050(n+1)]`
-/

namespace A329472.P4286441324874059308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1) * A087050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P4286441324874059308

namespace A329472

/-- `∑[A015049(n+1)*A087050(n+1)]` -/
def P4286441324874059308.Spec : Prop :=
  ∀ n, P4286441324874059308.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P18339814740181601303

`∑[A162966(n+2)]`
-/

namespace A329472.P18339814740181601303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P18339814740181601303

namespace A329472

/-- `∑[A162966(n+2)]` -/
def P18339814740181601303.Spec : Prop :=
  ∀ n, P18339814740181601303.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P2913188008055087960

`∑[lt[0, A348029(n+1)]+1]`
-/

namespace A329472.P2913188008055087960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P2913188008055087960

namespace A329472

/-- `∑[lt[0, A348029(n+1)]+1]` -/
def P2913188008055087960.Spec : Prop :=
  ∀ n, (P2913188008055087960.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P10007502397984103344

`∑[lt[1, A183097(n+1)]+1]`
-/

namespace A329472.P10007502397984103344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P10007502397984103344

namespace A329472

/-- `∑[lt[1, A183097(n+1)]+1]` -/
def P10007502397984103344.Spec : Prop :=
  ∀ n, (P10007502397984103344.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P16430996355167267695

`∑[lt[1, A057521(n+1)]+1]`
-/

namespace A329472.P16430996355167267695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P16430996355167267695

namespace A329472

/-- `∑[lt[1, A057521(n+1)]+1]` -/
def P16430996355167267695.Spec : Prop :=
  ∀ n, (P16430996355167267695.a n : ℤ) = A329472 (n + 1)

end A329472

/-! ## A329472.P7908026170126688151

`∑[record[A088609(n+2)]]`
-/

namespace A329472.P7908026170126688151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P7908026170126688151

namespace A329472

/-- `∑[record[A088609(n+2)]]` -/
def P7908026170126688151.Spec : Prop :=
  ∀ n, P7908026170126688151.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P6888786693671749954

`∑[record[A088610(n+2)]]`
-/

namespace A329472.P6888786693671749954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P6888786693671749954

namespace A329472

/-- `∑[record[A088610(n+2)]]` -/
def P6888786693671749954.Spec : Prop :=
  ∀ n, P6888786693671749954.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P7283877594283631130

`∑[A088610(2*(n+1))]`
-/

namespace A329472.P7283877594283631130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P7283877594283631130

namespace A329472

/-- `∑[A088610(2*(n+1))]` -/
def P7283877594283631130.Spec : Prop :=
  ∀ n, P7283877594283631130.a n = A329472 (n + 1)

end A329472

/-! ## A329472.P14131691888636328998

`∑[record[A075378(n+3)]]`
-/

namespace A329472.P14131691888636328998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329472.P14131691888636328998

namespace A329472

/-- `∑[record[A075378(n+3)]]` -/
def P14131691888636328998.Spec : Prop :=
  ∀ n, P14131691888636328998.a n = A329472 (n + 1)

end A329472

/-!
# A329474: a(n) = log_2(A110428(n)). Also, a(n) = a(n-1) + a(m) for n >= 3, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 0 and a(2) = 1.

The programs for A329474, there is no canonical definition to state claims against.
-/

/-! ## A329474.P8598435119394426079

`log2(A110428(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329474.P8598435119394426079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A110428 (n + 1) : ℝ)

end

end A329474.P8598435119394426079

/-! ## A329474.P3625112731742374718

`A050045(n+1)-A050025(n+1)`
-/

namespace A329474.P3625112731742374718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) - A050025 (n + 1)

end

end A329474.P3625112731742374718

/-! ## A329474.P4261449817593668857

`A050049(n+1)-A050029(n+1)`
-/

namespace A329474.P4261449817593668857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) - A050029 (n + 1)

end

end A329474.P4261449817593668857

/-! ## A329474.P18075445032672859821

`A050053(n+1)-A050033(n+1)`
-/

namespace A329474.P18075445032672859821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) - A050033 (n + 1)

end

end A329474.P18075445032672859821

/-! ## A329474.P2977450025645394739

`A050061(n+1)-A050041(n+1)`
-/

namespace A329474.P2977450025645394739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050061 (n + 1) - A050041 (n + 1)

end

end A329474.P2977450025645394739

/-! ## A329474.P12862182266244449987

`A050065(n+1)-A050045(n+1)`
-/

namespace A329474.P12862182266244449987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050065 (n + 1) - A050045 (n + 1)

end

end A329474.P12862182266244449987

/-! ## A329474.P3395797144559272896

`A050069(n+1)-A050049(n+1)`
-/

namespace A329474.P3395797144559272896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050069 (n + 1) - A050049 (n + 1)

end

end A329474.P3395797144559272896

/-! ## A329474.P3822654302060703488

`(A050065(n+1)-A050025(n+1))/2`
-/

namespace A329474.P3822654302060703488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050065 (n + 1) - A050025 (n + 1) : ℚ) / 2

end

end A329474.P3822654302060703488

/-! ## A329474.P4090342296501962770

`(A050069(n+1)-A050029(n+1))/2`
-/

namespace A329474.P4090342296501962770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050069 (n + 1) - A050029 (n + 1) : ℚ) / 2

end

end A329474.P4090342296501962770

/-!
# A329475: a(n) = Sum_{k=0..n} C(n,k)^2*T(k)*T(n-k), where T(k) = A002426(k) is the coefficient of x^k in the expansion of (x^2+x+1)^k.

The programs for A329475, there is no canonical definition to state claims against.
-/

/-! ## A329475.P10305748166878051817

`A161822(∏[∑[ceil(3^(n-1))]])`
-/

namespace A329475.P10305748166878051817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329475.P10305748166878051817

/-!
# A329479: Number of degree n polynomials f with all nonzero coefficients equal to 1 such that f(k) is divisible by 3 for all integers k.

The programs for A329479, there is no canonical definition to state claims against.
-/

/-! ## A329479.P9103987271362452586

`A000196(A148958(n)-A148929(n))`
-/

namespace A329479.P9103987271362452586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A148958 n - A148929 n).toNat

end

end A329479.P9103987271362452586

/-! ## A329479.P3261483076120002428

`A046074(A076739(n))-A219987(n)`
-/

namespace A329479.P3261483076120002428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A076739 n).toNat - A219987 n

end

end A329479.P3261483076120002428

/-! ## A329479.P12657348729589006361

`A126683(n)-A261675(A000111(n))`
-/

namespace A329479.P12657348729589006361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126683 n - A261675 (A000111 n).toNat

end

end A329479.P12657348729589006361

/-! ## A329479.P9885148309703281519

`A000196(A148958(n)%A148929(n))`
-/

namespace A329479.P9885148309703281519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A148958 n) (A148929 n)).toNat

end

end A329479.P9885148309703281519

/-!
# A329480: a(n) = (1 - A075677(n))/6 if 6|(A075677(n)-1) or a(n) = (A075677(n) + 1)/6 if 6|(A075677(n)+1).

The programs for A329480, the canonical program `A329480.P795182894292695426` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329480 has offset 1).

The definition of A329480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329480.P10355906858243263468

`A246425(A350091(n))`
-/

namespace A329480.P10355906858243263468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A350091 n).toNat

end

end A329480.P10355906858243263468

namespace A329480

/-- `A246425(A350091(n))` -/
def P10355906858243263468.Spec : Prop :=
  ∀ n, P10355906858243263468.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P7002371747109136525

`A173732(n)-A350091(n)`
-/

namespace A329480.P7002371747109136525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173732 n - A350091 n

end

end A329480.P7002371747109136525

namespace A329480

/-- `A173732(n)-A350091(n)` -/
def P7002371747109136525.Spec : Prop :=
  ∀ n, P7002371747109136525.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P795182894292695426

`A246425(n%A075677(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329480

/-- `A246425(n%A075677(n+1))` -/
def P795182894292695426.Spec : Prop :=
  ∀ n, P795182894292695426.a n = A329480 (n + 1)

theorem P795182894292695426.correct : P795182894292695426.Spec := by
  intro n
  simp only [A329480, Nat.add_sub_cancel]

end A329480

/-! ## A329480.P1642217686883181155

`A001057(A254048(2*n+1)-1)`
-/

namespace A329480.P1642217686883181155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A254048 (2 * n + 1) - 1).toNat

end

end A329480.P1642217686883181155

namespace A329480

/-- `A001057(A254048(2*n+1)-1)` -/
def P1642217686883181155.Spec : Prop :=
  ∀ n, P1642217686883181155.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P10864134383502781552

`A001057(A126760(3*n+2)-1)`
-/

namespace A329480.P10864134383502781552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A126760 (3 * n + 2) - 1).toNat

end

end A329480.P10864134383502781552

namespace A329480

/-- `A001057(A126760(3*n+2)-1)` -/
def P10864134383502781552.Spec : Prop :=
  ∀ n, P10864134383502781552.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P9343550464170170506

`A242602(A075677(n+1))`
-/

namespace A329480.P9343550464170170506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A075677 (n + 1)).toNat

end

end A329480.P9343550464170170506

namespace A329480

/-- `A242602(A075677(n+1))` -/
def P9343550464170170506.Spec : Prop :=
  ∀ n, P9343550464170170506.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P11557388579537684177

`A242602(2*A173732(n))`
-/

namespace A329480.P11557388579537684177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (2 * A173732 n).toNat

end

end A329480.P11557388579537684177

namespace A329480

/-- `A242602(2*A173732(n))` -/
def P11557388579537684177.Spec : Prop :=
  ∀ n, P11557388579537684177.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P1429049147835481022

`A242602(A067745(2*(n+1)))`
-/

namespace A329480.P1429049147835481022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A067745 (2 * (n + 1))).toNat

end

end A329480.P1429049147835481022

namespace A329480

/-- `A242602(A067745(2*(n+1)))` -/
def P1429049147835481022.Spec : Prop :=
  ∀ n, P1429049147835481022.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P1369564520737568958

`A242602(A306546(6*n+4))`
-/

namespace A329480.P1369564520737568958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A306546 (6 * n + 4)).toNat

end

end A329480.P1369564520737568958

namespace A329480

/-- `A242602(A306546(6*n+4))` -/
def P1369564520737568958.Spec : Prop :=
  ∀ n, P1369564520737568958.a n = A329480 (n + 1)

end A329480

/-! ## A329480.P17944517327325355405

`A274923(A254048(2*n+1)²)`
-/

namespace A329480.P17944517327325355405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A254048 (2 * n + 1) ^ 2).toNat

end

end A329480.P17944517327325355405

namespace A329480

/-- `A274923(A254048(2*n+1)²)` -/
def P17944517327325355405.Spec : Prop :=
  ∀ n, P17944517327325355405.a n = A329480 (n + 1)

end A329480

/-!
# A329481: Numbers which are not the sum of two squarefree semiprimes.

The programs for A329481, there is no canonical definition to state claims against.
-/

/-! ## A329481.P16088801330834375961

`lt[A280683(abs(1-n)+1), 1]`
-/

namespace A329481.P16088801330834375961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280683 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329481.P16088801330834375961

/-! ## A329481.P16336397783251511994

`lt[A280829(A028310(n)), 1]`
-/

namespace A329481.P16336397783251511994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280829 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329481.P16336397783251511994

/-! ## A329481.P922302670242976631

`eq[0, A280829(A249038(2*n+1))]`
-/

namespace A329481.P922302670242976631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280829 (A249038 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329481.P922302670242976631

/-! ## A329481.P16181931497408857174

`lt[A029930(A351004(n)), A002383(n+1)]`
-/

namespace A329481.P16181931497408857174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 (A351004 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329481.P16181931497408857174

/-!
# A329482: Interleave 1 - n + 3*n^2, 1 + 3*n*(1+n) for n >= 0.

The programs for A329482, the canonical program `A329482.P13562118625824727262` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329482 has offset 0).

The definition of A329482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329482.P5317909275104185571

`(5+3*(-1)^n-2*(1+(-1)^n)*n+6*n²)/8`
-/

namespace A329482.P5317909275104185571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + 3 * (-1) ^ n - 2 * (1 + (-1) ^ n) * (n : ℤ) + (6 * n ^ 2 : ℤ) : ℚ) / 8

end

end A329482.P5317909275104185571

namespace A329482

/-- `(5+3*(-1)^n-2*(1+(-1)^n)*n+6*n²)/8` -/
def P5317909275104185571.Spec : Prop :=
  ∀ n, P5317909275104185571.a n = (A329482 n : ℚ)

theorem P5317909275104185571.correct : P5317909275104185571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A329482, Nat.add_sub_cancel, A329482.P5317909275104185571.a, A329482.P13562118625824727262.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A329482, Nat.add_sub_cancel, A329482.P5317909275104185571.a, A329482.P13562118625824727262.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A329482

/-! ## A329482.P13562118625824727262

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329482

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13562118625824727262.Spec : Prop :=
  ∀ n, P13562118625824727262.a n = A329482 n

theorem P13562118625824727262.correct : P13562118625824727262.Spec := by
  intro n
  simp only [A329482]

end A329482

/-! ## A329482.P1199621113523831405

`or(1, ∑[lcm(2, n)]-n)`
-/

namespace A329482.P1199621113523831405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A329482.P1199621113523831405

namespace A329482

/-- `or(1, ∑[lcm(2, n)]-n)` -/
def P1199621113523831405.Spec : Prop :=
  ∀ n, P1199621113523831405.a n = A329482 n

end A329482

/-! ## A329482.P4940681573446101576

`∑[gcd(n-1, a(n-1))+n-1]` with `a(0)=1, a(1)=0`
-/

namespace A329482.P4940681573446101576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (Int.gcd ((n : ℤ) - 1) (f1 (n - 1)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329482.P4940681573446101576

namespace A329482

/-- `∑[gcd(n-1, a(n-1))+n-1]` -/
def P4940681573446101576.Spec : Prop :=
  ∀ n, P4940681573446101576.a n = A329482 n

end A329482

/-! ## A329482.P17098353396659752285

`∑[and(n-1, n-3-a(n-1))+n-1]` with `a(0)=1`
-/

namespace A329482.P17098353396659752285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 3 - f1 (n - 1)) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329482.P17098353396659752285

namespace A329482

/-- `∑[and(n-1, n-3-a(n-1))+n-1]` -/
def P17098353396659752285.Spec : Prop :=
  ∀ n, P17098353396659752285.a n = A329482 n

end A329482

/-! ## A329482.P4375525887239056885

`or(1, A152749(n)-n)`
-/

namespace A329482.P4375525887239056885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152749 n - (n : ℤ))

end

end A329482.P4375525887239056885

namespace A329482

/-- `or(1, A152749(n)-n)` -/
def P4375525887239056885.Spec : Prop :=
  ∀ n, P4375525887239056885.a n = A329482 n

end A329482

/-! ## A329482.P15970834591245618399

`xor(1, ∑[2*A029578(n)])`
-/

namespace A329482.P15970834591245618399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329482.P15970834591245618399

namespace A329482

/-- `xor(1, ∑[2*A029578(n)])` -/
def P15970834591245618399.Spec : Prop :=
  ∀ n, P15970834591245618399.a n = A329482 n

end A329482

/-! ## A329482.P16597719357707212762

`or(1, Δ[2*A111384(n)])`
-/

namespace A329482.P16597719357707212762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A329482.P16597719357707212762

namespace A329482

/-- `or(1, Δ[2*A111384(n)])` -/
def P16597719357707212762.Spec : Prop :=
  ∀ n, P16597719357707212762.a n = A329482 n

end A329482

/-! ## A329482.P2628552609437538173

`Δ[(n-2)*A033638(n)]`
-/

namespace A329482.P2628552609437538173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329482.P2628552609437538173

namespace A329482

/-- `Δ[(n-2)*A033638(n)]` -/
def P2628552609437538173.Spec : Prop :=
  ∀ n, P2628552609437538173.a n = A329482 n

end A329482

/-! ## A329482.P6893763948885613637

`Δ[(A002620(n)+1)*(n-2)]`
-/

namespace A329482.P6893763948885613637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n + 1) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329482.P6893763948885613637

namespace A329482

/-- `Δ[(A002620(n)+1)*(n-2)]` -/
def P6893763948885613637.Spec : Prop :=
  ∀ n, P6893763948885613637.a n = A329482 n

end A329482

/-! ## A329482.P1261489983866065369

`∑[A028310(n)+(n-2)*n%2]`
-/

namespace A329482.P1261489983866065369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ((n : ℤ) - 2) * ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329482.P1261489983866065369

namespace A329482

/-- `∑[A028310(n)+(n-2)*n%2]` -/
def P1261489983866065369.Spec : Prop :=
  ∀ n, P1261489983866065369.a n = A329482 n

end A329482

/-! ## A329482.P10347429998996088073

`abs(A082742(n+1)-abs((n+1)²+2-n))`
-/

namespace A329482.P10347429998996088073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A082742 (n + 1) - |((n + 1) ^ 2 + 2 : ℤ) - (n : ℤ)|)|

end

end A329482.P10347429998996088073

namespace A329482

/-- `abs(A082742(n+1)-abs((n+1)²+2-n))` -/
def P10347429998996088073.Spec : Prop :=
  ∀ n, P10347429998996088073.a n = A329482 n

end A329482

/-! ## A329482.P662461566869399006

`or(1, A309805(A028310(n)))`
-/

namespace A329482.P662461566869399006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A309805 (A028310 n).toNat)

end

end A329482.P662461566869399006

namespace A329482

/-- `or(1, A309805(A028310(n)))` -/
def P662461566869399006.Spec : Prop :=
  ∀ n, P662461566869399006.a n = A329482 n

end A329482

/-! ## A329482.P11868023235335840101

`A128918(n)+A008794(n)`
-/

namespace A329482.P11868023235335840101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 n + A008794 n

end

end A329482.P11868023235335840101

namespace A329482

/-- `A128918(n)+A008794(n)` -/
def P11868023235335840101.Spec : Prop :=
  ∀ n, P11868023235335840101.a n = A329482 n

end A329482

/-! ## A329482.P10880335648133490587

`A338544(n)+A008805(n)`
-/

namespace A329482.P10880335648133490587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338544 n + A008805 n

end

end A329482.P10880335648133490587

namespace A329482

/-- `A338544(n)+A008805(n)` -/
def P10880335648133490587.Spec : Prop :=
  ∀ n, P10880335648133490587.a n = A329482 n

end A329482

/-! ## A329482.P6398098710736598515

`A267682(n)-A008794(n)`
-/

namespace A329482.P6398098710736598515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 n - A008794 n

end

end A329482.P6398098710736598515

namespace A329482

/-- `A267682(n)-A008794(n)` -/
def P6398098710736598515.Spec : Prop :=
  ∀ n, P6398098710736598515.a n = A329482 n

end A329482

/-! ## A329482.P3046627802696413552

`A014206(n)-A264754(n)`
-/

namespace A329482.P3046627802696413552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n - A264754 n

end

end A329482.P3046627802696413552

namespace A329482

/-- `A014206(n)-A264754(n)` -/
def P3046627802696413552.Spec : Prop :=
  ∀ n, P3046627802696413552.a n = A329482 n

end A329482

/-! ## A329482.P15935656542989174134

`A317186(n)-A135276(n)`
-/

namespace A329482.P15935656542989174134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n - A135276 n

end

end A329482.P15935656542989174134

namespace A329482

/-- `A317186(n)-A135276(n)` -/
def P15935656542989174134.Spec : Prop :=
  ∀ n, P15935656542989174134.a n = A329482 n

end A329482

/-! ## A329482.P4024757677801281041

`A247643(n)-A266074(n)`
-/

namespace A329482.P4024757677801281041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n - A266074 n

end

end A329482.P4024757677801281041

namespace A329482

/-- `A247643(n)-A266074(n)` -/
def P4024757677801281041.Spec : Prop :=
  ∀ n, P4024757677801281041.a n = A329482 n

end A329482

/-! ## A329482.P13247006553299492915

`A143689(n)-A397108(n)`
-/

namespace A329482.P13247006553299492915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n - A397108 n

end

end A329482.P13247006553299492915

namespace A329482

/-- `A143689(n)-A397108(n)` -/
def P13247006553299492915.Spec : Prop :=
  ∀ n, P13247006553299492915.a n = A329482 n

end A329482

/-!
# A329483: Number of quasi-magic (only short lines are magic) knight's tours on a 4 X 2n board.

The programs for A329483, there is no canonical definition to state claims against.
-/

/-! ## A329483.P12147510827797879403

`∑[A068527(floor((n-1)^n/2)+1)]`
-/

namespace A329483.P12147510827797879403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (⌊(((n : ℤ) - 1) ^ n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329483.P12147510827797879403

/-! ## A329483.P13310240001340907667

`∑[A141554(A221546(n))]`
-/

namespace A329483.P13310240001340907667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141554 (A221546 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329483.P13310240001340907667

/-! ## A329483.P6508599265779774305

`A002710(n)%A051162(A002710(n))`
-/

namespace A329483.P6508599265779774305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002710 n) (A051162 (A002710 n).toNat)

end

end A329483.P6508599265779774305

/-!
# A329484: Dirichlet convolution of the Liouville function with itself.

The programs for A329484, the canonical program `A329484.P836157745753398396` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329484 has offset 1).

The definition of A329484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329484.P836157745753398396

`A000005(n+1)*A008836(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329484

/-- `A000005(n+1)*A008836(n+1)` -/
def P836157745753398396.Spec : Prop :=
  ∀ n, P836157745753398396.a n = A329484 (n + 1)

theorem P836157745753398396.correct : P836157745753398396.Spec := by
  intro n
  simp only [A329484, Nat.add_sub_cancel]

end A329484

/-! ## A329484.P16452221266696286500

`∏{e}[n+1, xor(#, (-1)^#)]`
-/

namespace A329484.P16452221266696286500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.xor (Nat.factorization (f1 n) p : ℤ) ((-1) ^ Nat.factorization (f1 n) p)

end

end A329484.P16452221266696286500

namespace A329484

/-- `∏{e}[n+1, xor(#, (-1)^#)]` -/
def P16452221266696286500.Spec : Prop :=
  ∀ n, P16452221266696286500.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P15069098146746873327

`∏{e}[n+1, A131738(#)]`
-/

namespace A329484.P15069098146746873327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131738 (Nat.factorization (f1 n) p)

end

end A329484.P15069098146746873327

namespace A329484

/-- `∏{e}[n+1, A131738(#)]` -/
def P15069098146746873327.Spec : Prop :=
  ∀ n, P15069098146746873327.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P8613977273673834603

`∏{e}[n+1, #+1]*A015795(∑{e}[n+1, #])`
-/

namespace A329484.P8613977273673834603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A015795 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A329484.P8613977273673834603

namespace A329484

/-- `∏{e}[n+1, #+1]*A015795(∑{e}[n+1, #])` -/
def P8613977273673834603.Spec : Prop :=
  ∀ n, P8613977273673834603.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P12904299728434943145

`Δ[A002819(n)]*A000005(n+1)`
-/

namespace A329484.P12904299728434943145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000005 (n + 1)

end

end A329484.P12904299728434943145

namespace A329484

/-- `Δ[A002819(n)]*A000005(n+1)` -/
def P12904299728434943145.Spec : Prop :=
  ∀ n, P12904299728434943145.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P13185096284241670026

`Δ[A006218(n)]*A008836(n+1)`
-/

namespace A329484.P13185096284241670026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008836 (n + 1)

end

end A329484.P13185096284241670026

namespace A329484

/-- `Δ[A006218(n)]*A008836(n+1)` -/
def P13185096284241670026.Spec : Prop :=
  ∀ n, P13185096284241670026.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P11878965057127587262

`A038040(n+1)/A061019(n+1)`
-/

namespace A329484.P11878965057127587262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A329484.P11878965057127587262

namespace A329484

/-- `A038040(n+1)/A061019(n+1)` -/
def P11878965057127587262.Spec : Prop :=
  ∀ n, P11878965057127587262.a n = (A329484 (n + 1) : ℚ)

end A329484

/-! ## A329484.P3836954152028493146

`A328854(n+1)/A165872(n+1)`
-/

namespace A329484.P3836954152028493146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328854 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ)

end

end A329484.P3836954152028493146

namespace A329484

/-- `A328854(n+1)/A165872(n+1)` -/
def P3836954152028493146.Spec : Prop :=
  ∀ n, P3836954152028493146.a n = (A329484 (n + 1) : ℚ)

end A329484

/-! ## A329484.P12090052451957162106

`A304412(n+1)/A323363(n+1)`
-/

namespace A329484.P12090052451957162106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304412 (n + 1) : ℚ) / (A323363 (n + 1) : ℚ)

end

end A329484.P12090052451957162106

namespace A329484

/-- `A304412(n+1)/A323363(n+1)` -/
def P12090052451957162106.Spec : Prop :=
  ∀ n, P12090052451957162106.a n = (A329484 (n + 1) : ℚ)

end A329484

/-! ## A329484.P18340917245764652966

`(A032741(n+1)+1)*A008836(n+1)`
-/

namespace A329484.P18340917245764652966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A008836 (n + 1)

end

end A329484.P18340917245764652966

namespace A329484

/-- `(A032741(n+1)+1)*A008836(n+1)` -/
def P18340917245764652966.Spec : Prop :=
  ∀ n, P18340917245764652966.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P2670379527762072275

`(-1)^A001222(n+1)*A000005(n+1)`
-/

namespace A329484.P2670379527762072275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A000005 (n + 1) : ℚ)

end

end A329484.P2670379527762072275

namespace A329484

/-- `(-1)^A001222(n+1)*A000005(n+1)` -/
def P2670379527762072275.Spec : Prop :=
  ∀ n, P2670379527762072275.a n = (A329484 (n + 1) : ℚ)

end A329484

/-! ## A329484.P17222473321589301816

`∑{d}[n+1, A008836(#)*A008836((n+1)/#)]`
-/

namespace A329484.P17222473321589301816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P17222473321589301816

namespace A329484

/-- `∑{d}[n+1, A008836(#)*A008836((n+1)/#)]` -/
def P17222473321589301816.Spec : Prop :=
  ∀ n, P17222473321589301816.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P17153123221563245044

`∑{d}[n+1, A046951(#)*A326415((n+1)/#)]`
-/

namespace A329484.P17153123221563245044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P17153123221563245044

namespace A329484

/-- `∑{d}[n+1, A046951(#)*A326415((n+1)/#)]` -/
def P17153123221563245044.Spec : Prop :=
  ∀ n, P17153123221563245044.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P16188169270617223455

`∑{d}[n+1, A007427(#)*A369308((n+1)/#)]`
-/

namespace A329484.P16188169270617223455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P16188169270617223455

namespace A329484

/-- `∑{d}[n+1, A007427(#)*A369308((n+1)/#)]` -/
def P16188169270617223455.Spec : Prop :=
  ∀ n, P16188169270617223455.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P1913140108055696832

`∑{d}[n+1, A007428(#)*A388067((n+1)/#)]`
-/

namespace A329484.P1913140108055696832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A388067 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P1913140108055696832

namespace A329484

/-- `∑{d}[n+1, A007428(#)*A388067((n+1)/#)]` -/
def P1913140108055696832.Spec : Prop :=
  ∀ n, P1913140108055696832.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P5205747086651430926

`∑{d}[n+1, A210826(#)*A303915((n+1)/#)]`
-/

namespace A329484.P5205747086651430926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A210826 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P5205747086651430926

namespace A329484

/-- `∑{d}[n+1, A210826(#)*A303915((n+1)/#)]` -/
def P5205747086651430926.Spec : Prop :=
  ∀ n, P5205747086651430926.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P15271090076834717580

`∑{d}[n+1, A206369(#)*A323363((n+1)/#)]`
-/

namespace A329484.P15271090076834717580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P15271090076834717580

namespace A329484

/-- `∑{d}[n+1, A206369(#)*A323363((n+1)/#)]` -/
def P15271090076834717580.Spec : Prop :=
  ∀ n, P15271090076834717580.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P14330822264752816887

`∑{d}[n+1, A219009(#)*A390490((n+1)/#)]`
-/

namespace A329484.P14330822264752816887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P14330822264752816887

namespace A329484

/-- `∑{d}[n+1, A219009(#)*A390490((n+1)/#)]` -/
def P14330822264752816887.Spec : Prop :=
  ∀ n, P14330822264752816887.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P15443721369058682560

`∑{d}[n+1, A307420(#)*A307428((n+1)/#)]`
-/

namespace A329484.P15443721369058682560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329484.P15443721369058682560

namespace A329484

/-- `∑{d}[n+1, A307420(#)*A307428((n+1)/#)]` -/
def P15443721369058682560.Spec : Prop :=
  ∀ n, P15443721369058682560.a n = A329484 (n + 1)

end A329484

/-! ## A329484.P7143505296449823658

`A008683(A007913(n+1))*Δ[A006218(n)]`
-/

namespace A329484.P7143505296449823658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A329484.P7143505296449823658

namespace A329484

/-- `A008683(A007913(n+1))*Δ[A006218(n)]` -/
def P7143505296449823658.Spec : Prop :=
  ∀ n, P7143505296449823658.a n = A329484 (n + 1)

end A329484

/-!
# A329486: a(n) = 3*A006519(n)/2 + n/2 where A006519(n) is the highest power of 2 dividing n.

The programs for A329486, the canonical program `A329486.P6867070360760676836` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329486 has offset 1).

The definition of A329486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329486.P6867070360760676836

`(3*2^val(n+1, 2)+n+1)/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329486

/-- `(3*2^val(n+1, 2)+n+1)/2` -/
def P6867070360760676836.Spec : Prop :=
  ∀ n, P6867070360760676836.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P17847209607262613002

`3*A006519(n+1)/2+(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329486.P17847209607262613002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A006519 (n + 1) : ℚ) / 2 + (n + 1 : ℚ) / 2

end

end A329486.P17847209607262613002

namespace A329486

/-- `3*A006519(n+1)/2+(n+1)/2` -/
def P17847209607262613002.Spec : Prop :=
  ∀ n, P17847209607262613002.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P17353622092440018007

`(3*or(n, n+1)+1)/2-n`
-/

namespace A329486.P17353622092440018007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor n (n + 1) + 1 : ℚ) / 2 - (n : ℚ)

end

end A329486.P17353622092440018007

namespace A329486

/-- `(3*or(n, n+1)+1)/2-n` -/
def P17353622092440018007.Spec : Prop :=
  ∀ n, P17353622092440018007.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P18151688477611037329

`2*(n+1)-3*and(n, n+1)/2`
-/

namespace A329486.P18151688477611037329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) - 3 * ((Nat.land n (n + 1) : ℚ) / 2)

end

end A329486.P18151688477611037329

namespace A329486

/-- `2*(n+1)-3*and(n, n+1)/2` -/
def P18151688477611037329.Spec : Prop :=
  ∀ n, P18151688477611037329.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P6850383103583893707

`and(n, n+1)/2+xor(n, n+1)+1`
-/

namespace A329486.P6850383103583893707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / 2 + (Nat.xor n (n + 1) + 1 : ℚ)

end

end A329486.P6850383103583893707

namespace A329486

/-- `and(n, n+1)/2+xor(n, n+1)+1` -/
def P6850383103583893707.Spec : Prop :=
  ∀ n, P6850383103583893707.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P1946257321931146868

`ceil(or(n, n+1)/2)+2^val(n+1, 2)`
-/

namespace A329486.P1946257321931146868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉ + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A329486.P1946257321931146868

namespace A329486

/-- `ceil(or(n, n+1)/2)+2^val(n+1, 2)` -/
def P1946257321931146868.Spec : Prop :=
  ∀ n, P1946257321931146868.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P573439792382155939

`round(or(n, n+1)/2)+2^val(n+1, 2)`
-/

namespace A329486.P573439792382155939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / 2) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A329486.P573439792382155939

namespace A329486

/-- `round(or(n, n+1)/2)+2^val(n+1, 2)` -/
def P573439792382155939.Spec : Prop :=
  ∀ n, P573439792382155939.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P14432479735563219993

`round(or(n, n+1)/2+or(n, n+1)-n)`
-/

namespace A329486.P14432479735563219993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / 2 + ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))

end

end A329486.P14432479735563219993

namespace A329486

/-- `round(or(n, n+1)/2+or(n, n+1)-n)` -/
def P14432479735563219993.Spec : Prop :=
  ∀ n, P14432479735563219993.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P13952481022237860975

`2^val(n+1, 2)+(or(n, n+1)+1)/2`
-/

namespace A329486.P13952481022237860975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (Nat.lor n (n + 1) + 1 : ℚ) / 2

end

end A329486.P13952481022237860975

namespace A329486

/-- `2^val(n+1, 2)+(or(n, n+1)+1)/2` -/
def P13952481022237860975.Spec : Prop :=
  ∀ n, P13952481022237860975.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P11704095337365074414

`3*A109168(n+1)-(n+1)`
-/

namespace A329486.P11704095337365074414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109168 (n + 1) - (n + 1 : ℤ)

end

end A329486.P11704095337365074414

namespace A329486

/-- `3*A109168(n+1)-(n+1)` -/
def P11704095337365074414.Spec : Prop :=
  ∀ n, P11704095337365074414.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P8483539015566995268

`3*A140472(n+1)-(n+1)`
-/

namespace A329486.P8483539015566995268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140472 (n + 1) - (n + 1 : ℤ)

end

end A329486.P8483539015566995268

namespace A329486

/-- `3*A140472(n+1)-(n+1)` -/
def P8483539015566995268.Spec : Prop :=
  ∀ n, P8483539015566995268.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P10808214410537983567

`A109168(n+1)+A006519(n+1)`
-/

namespace A329486.P10808214410537983567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 1) + A006519 (n + 1)

end

end A329486.P10808214410537983567

namespace A329486

/-- `A109168(n+1)+A006519(n+1)` -/
def P10808214410537983567.Spec : Prop :=
  ∀ n, P10808214410537983567.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P9425746697565103353

`A140472(n+1)+A006519(n+1)`
-/

namespace A329486.P9425746697565103353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (n + 1) + A006519 (n + 1)

end

end A329486.P9425746697565103353

namespace A329486

/-- `A140472(n+1)+A006519(n+1)` -/
def P9425746697565103353.Spec : Prop :=
  ∀ n, P9425746697565103353.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P9714969916300495293

`A171977(n+1)+A104594(n+1)`
-/

namespace A329486.P9714969916300495293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) + A104594 (n + 1)

end

end A329486.P9714969916300495293

namespace A329486

/-- `A171977(n+1)+A104594(n+1)` -/
def P9714969916300495293.Spec : Prop :=
  ∀ n, P9714969916300495293.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P5717278554315306708

`A349102(n+1)-A109168(n+1)`
-/

namespace A329486.P5717278554315306708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349102 (n + 1) - A109168 (n + 1)

end

end A329486.P5717278554315306708

namespace A329486

/-- `A349102(n+1)-A109168(n+1)` -/
def P5717278554315306708.Spec : Prop :=
  ∀ n, P5717278554315306708.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P16657924637820731851

`(A025480(n)+2)*A006519(n+1)`
-/

namespace A329486.P16657924637820731851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 n + 2) * A006519 (n + 1)

end

end A329486.P16657924637820731851

namespace A329486

/-- `(A025480(n)+2)*A006519(n+1)` -/
def P16657924637820731851.Spec : Prop :=
  ∀ n, P16657924637820731851.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P5941760086291933077

`A006519(n+1)*A103391(n+2)`
-/

namespace A329486.P5941760086291933077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A103391 (n + 2)

end

end A329486.P5941760086291933077

namespace A329486

/-- `A006519(n+1)*A103391(n+2)` -/
def P5941760086291933077.Spec : Prop :=
  ∀ n, P5941760086291933077.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P1934314887033035546

`(A048297(A268361(n+1))+n)/2`
-/

namespace A329486.P1934314887033035546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048297 (A268361 (n + 1)).toNat + (n : ℤ) : ℚ) / 2

end

end A329486.P1934314887033035546

namespace A329486

/-- `(A048297(A268361(n+1))+n)/2` -/
def P1934314887033035546.Spec : Prop :=
  ∀ n, P1934314887033035546.a n = (A329486 (n + 1) : ℚ)

end A329486

/-! ## A329486.P16425675103333156884

`(A003602(n+1)+1)*A006519(n+1)`
-/

namespace A329486.P16425675103333156884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) + 1) * A006519 (n + 1)

end

end A329486.P16425675103333156884

namespace A329486

/-- `(A003602(n+1)+1)*A006519(n+1)` -/
def P16425675103333156884.Spec : Prop :=
  ∀ n, P16425675103333156884.a n = A329486 (n + 1)

end A329486

/-! ## A329486.P8422029603478129834

`(A025480(n)+2)*A000079(A007814(n+1))`
-/

namespace A329486.P8422029603478129834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 n + 2) * A000079 (A007814 (n + 1)).toNat

end

end A329486.P8422029603478129834

namespace A329486

/-- `(A025480(n)+2)*A000079(A007814(n+1))` -/
def P8422029603478129834.Spec : Prop :=
  ∀ n, P8422029603478129834.a n = A329486 (n + 1)

end A329486

/-!
# A329487: Primes p such that not all decimal digits of p occur in p^3.

The programs for A329487, there is no canonical definition to state claims against.
-/

/-! ## A329487.P7483974649878134780

`p?[comp[A029776(n+1)]]`
-/

namespace A329487.P7483974649878134780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A329487.P7483974649878134780

/-! ## A329487.P18411068633621301565

`record[A006530(comp[A029776(n+1)])]`
-/

namespace A329487.P18411068633621301565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329487.P18411068633621301565

/-! ## A329487.P7686021231203899187

`record[A020639(comp[A029776(n+1)])]`
-/

namespace A329487.P7686021231203899187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329487.P7686021231203899187

/-! ## A329487.P17847870252410328309

`∩[A000040(n+1), comp[A029776(n+1)]]`
-/

namespace A329487.P17847870252410328309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A329487.P17847870252410328309

/-! ## A329487.P14920659859591865589

`record[A014963(comp[A029776(n+1)])]`
-/

namespace A329487.P14920659859591865589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329487.P14920659859591865589

/-!
# A329488: a(n) = A001350(n)^4.

The programs for A329488, the canonical program `A329488.P10745082742471201483` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329488 has offset 1).

The definition of A329488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329488.P10745082742471201483

`A001350(n+1)^4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329488

/-- `A001350(n+1)^4` -/
def P10745082742471201483.Spec : Prop :=
  ∀ n, P10745082742471201483.a n = A329488 (n + 1)

theorem P10745082742471201483.correct : P10745082742471201483.Spec := by
  intro n
  simp only [A329488, Nat.add_sub_cancel]

end A329488

/-! ## A329488.P13593593723293850257

`A152152(n+1)²`
-/

namespace A329488.P13593593723293850257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152152 (n + 1) ^ 2

end

end A329488.P13593593723293850257

namespace A329488

/-- `A152152(n+1)²` -/
def P13593593723293850257.Spec : Prop :=
  ∀ n, P13593593723293850257.a n = A329488 (n + 1)

theorem P13593593723293850257.correct : P13593593723293850257.Spec := by
  intro n
  simp only [A329488, Nat.add_sub_cancel, A329488.P13593593723293850257.a, A329488.P10745082742471201483.a, A001350, A001350.P9806914175357381787.a, A152152, A152152.P6350815298251437724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329488

/-! ## A329488.P7313508382529006144

`∑{d}[n+1, A324484(#)]²`
-/

namespace A329488.P7313508382529006144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A324484 d) ^ 2

end

end A329488.P7313508382529006144

namespace A329488

/-- `∑{d}[n+1, A324484(#)]²` -/
def P7313508382529006144.Spec : Prop :=
  ∀ n, P7313508382529006144.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P17702777271502102044

`(1-A098600(n+1))²²`
-/

namespace A329488.P17702777271502102044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A098600 (n + 1)) ^ 2) ^ 2

end

end A329488.P17702777271502102044

namespace A329488

/-- `(1-A098600(n+1))²²` -/
def P17702777271502102044.Spec : Prop :=
  ∀ n, P17702777271502102044.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P16075965168896559387

`(2-A020878(n+1))²²`
-/

namespace A329488.P16075965168896559387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A020878 (n + 1)) ^ 2) ^ 2

end

end A329488.P16075965168896559387

namespace A329488

/-- `(2-A020878(n+1))²²` -/
def P16075965168896559387.Spec : Prop :=
  ∀ n, P16075965168896559387.a n = A329488 (n + 1)

theorem P16075965168896559387.correct : P16075965168896559387.Spec := by
  intro n
  simp only [A329488, Nat.add_sub_cancel, A329488.P16075965168896559387.a, A329488.P10745082742471201483.a, A001350, A001350.P9806914175357381787.a, A020878, A020878.P2717610554730428774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329488

/-! ## A329488.P3230476115478528452

`(1-A181716(n+2))²²`
-/

namespace A329488.P3230476115478528452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A181716 (n + 2)) ^ 2) ^ 2

end

end A329488.P3230476115478528452

namespace A329488

/-- `(1-A181716(n+2))²²` -/
def P3230476115478528452.Spec : Prop :=
  ∀ n, P3230476115478528452.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P6032246936056375959

`∑[A000032(n)-a(n-1)]^4` with `a(0)=1`
-/

namespace A329488.P6032246936056375959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000032 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A329488.P6032246936056375959

namespace A329488

/-- `∑[A000032(n)-a(n-1)]^4` -/
def P6032246936056375959.Spec : Prop :=
  ∀ n, P6032246936056375959.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P7266450633804887834

`(2*and(1, n)-A000032(n+1))^4`
-/

namespace A329488.P7266450633804887834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land 1 n : ℤ) - A000032 (n + 1)) ^ 4

end

end A329488.P7266450633804887834

namespace A329488

/-- `(2*and(1, n)-A000032(n+1))^4` -/
def P7266450633804887834.Spec : Prop :=
  ∀ n, P7266450633804887834.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P13402790465076297914

`(and(2, 2*n)-Δ[A000032(n+2)])²²`
-/

namespace A329488.P13402790465076297914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.land 2 (2 * n) : ℤ) - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A329488.P13402790465076297914

namespace A329488

/-- `(and(2, 2*n)-Δ[A000032(n+2)])²²` -/
def P13402790465076297914.Spec : Prop :=
  ∀ n, P13402790465076297914.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P15699482571403836419

`(A056594(n)²-A074392(n))²²`
-/

namespace A329488.P15699482571403836419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A056594 n ^ 2 - A074392 n) ^ 2) ^ 2

end

end A329488.P15699482571403836419

namespace A329488

/-- `(A056594(n)²-A074392(n))²²` -/
def P15699482571403836419.Spec : Prop :=
  ∀ n, P15699482571403836419.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P13337219911620355515

`(A008346(n)+∑[A000045(n)])²²`
-/

namespace A329488.P13337219911620355515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008346 n + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A329488.P13337219911620355515

namespace A329488

/-- `(A008346(n)+∑[A000045(n)])²²` -/
def P13337219911620355515.Spec : Prop :=
  ∀ n, P13337219911620355515.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P4498441860527361125

`A001350(n+1)*A324487(n+1)`
-/

namespace A329488.P4498441860527361125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (n + 1) * A324487 (n + 1)

end

end A329488.P4498441860527361125

namespace A329488

/-- `A001350(n+1)*A324487(n+1)` -/
def P4498441860527361125.Spec : Prop :=
  ∀ n, P4498441860527361125.a n = A329488 (n + 1)

theorem P4498441860527361125.correct : P4498441860527361125.Spec := by
  intro n
  simp only [A329488, Nat.add_sub_cancel, A329488.P4498441860527361125.a, A329488.P10745082742471201483.a, A001350, A001350.P9806914175357381787.a, A324487, A324487.P9094464048076715283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329488

/-! ## A329488.P3079800105524607155

`(A000204(n+1)-A010673(n))²²`
-/

namespace A329488.P3079800105524607155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000204 (n + 1) - A010673 n) ^ 2) ^ 2

end

end A329488.P3079800105524607155

namespace A329488

/-- `(A000204(n+1)-A010673(n))²²` -/
def P3079800105524607155.Spec : Prop :=
  ∀ n, P3079800105524607155.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P4604680210547626126

`(A001595(n+1)-A008346(n+1))²²`
-/

namespace A329488.P4604680210547626126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A001595 (n + 1) - A008346 (n + 1)) ^ 2) ^ 2

end

end A329488.P4604680210547626126

namespace A329488

/-- `(A001595(n+1)-A008346(n+1))²²` -/
def P4604680210547626126.Spec : Prop :=
  ∀ n, P4604680210547626126.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P886394414737975265

`A001350(n+1)*A152152(n+1)*A001350(n+1)`
-/

namespace A329488.P886394414737975265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (n + 1) * A152152 (n + 1) * A001350 (n + 1)

end

end A329488.P886394414737975265

namespace A329488

/-- `A001350(n+1)*A152152(n+1)*A001350(n+1)` -/
def P886394414737975265.Spec : Prop :=
  ∀ n, P886394414737975265.a n = A329488 (n + 1)

theorem P886394414737975265.correct : P886394414737975265.Spec := by
  intro n
  simp only [A329488, Nat.add_sub_cancel, A329488.P886394414737975265.a, A329488.P10745082742471201483.a, A001350, A001350.P9806914175357381787.a, A152152, A152152.P6350815298251437724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A329488

/-! ## A329488.P15260646004411909172

`∑{d}[n+1, A329489(#)]`
-/

namespace A329488.P15260646004411909172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329489 d

end

end A329488.P15260646004411909172

namespace A329488

/-- `∑{d}[n+1, A329489(#)]` -/
def P15260646004411909172.Spec : Prop :=
  ∀ n, P15260646004411909172.a n = A329488 (n + 1)

end A329488

/-! ## A329488.P1925158110748646745

`∑{d}[n+1, #*A329490(#)]`
-/

namespace A329488.P1925158110748646745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A329490 d

end

end A329488.P1925158110748646745

namespace A329488

/-- `∑{d}[n+1, #*A329490(#)]` -/
def P1925158110748646745.Spec : Prop :=
  ∀ n, P1925158110748646745.a n = A329488 (n + 1)

end A329488

/-!
# A329489: Inflation orbit counts b^(4)(n) for the Elser-Sloane tiling.

The programs for A329489, the canonical program `A329489.P4927898611169090547` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329489 has offset 1).

The definition of A329489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329489.P16584506377149684382

`(n+1)*A329490(n+1)`
-/

namespace A329489.P16584506377149684382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329490 (n + 1)

end

end A329489.P16584506377149684382

namespace A329489

/-- `(n+1)*A329490(n+1)` -/
def P16584506377149684382.Spec : Prop :=
  ∀ n, P16584506377149684382.a n = A329489 (n + 1)

end A329489

/-! ## A329489.P4927898611169090547

`∑{d}[n+1, A008683(#)*A329488((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A329489

/-- `∑{d}[n+1, A008683(#)*A329488((n+1)/#)]` -/
def P4927898611169090547.Spec : Prop :=
  ∀ n, P4927898611169090547.a n = A329489 (n + 1)

theorem P4927898611169090547.correct : P4927898611169090547.Spec := by
  intro n
  simp only [A329489, Nat.add_sub_cancel]

end A329489

/-!
# A329490: Inflation orbit counts c^(4)(n) for the Elser-Sloane tiling.

The programs for A329490, the canonical program `A329490.P12886057741005755630` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329490 has offset 1).

The definition of A329490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329490.P12886057741005755630

`A329489(n+1)/(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329490

/-- `A329489(n+1)/(n+1)` -/
def P12886057741005755630.Spec : Prop :=
  ∀ n, P12886057741005755630.a n = (A329490 (n + 1) : ℚ)

end A329490

/-!
# A329491: Dirichlet g.f.: Sum_{n>=0} a(n+1)/(1+10n)^s = Product ((1+p^(-s))/(1-p^(-s))) (p==1 mod 5).

The programs for A329491, there is no canonical definition to state claims against.
-/

/-! ## A329491.P14661243161623436704

`floor(sqrt(A031362(n+1)))`
-/

namespace A329491.P14661243161623436704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A031362 (n + 1))

end

end A329491.P14661243161623436704

/-! ## A329491.P4344559414167982840

`A000196(A031362(n+1))`
-/

namespace A329491.P4344559414167982840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A031362 (n + 1)).toNat

end

end A329491.P4344559414167982840

/-! ## A329491.P867593606131522056

`A045917(A031362(n+1)+1)`
-/

namespace A329491.P867593606131522056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A031362 (n + 1) + 1).toNat

end

end A329491.P867593606131522056

/-! ## A329491.P324359952533225362

`A086520(A031362(n+1)+1)`
-/

namespace A329491.P324359952533225362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A031362 (n + 1) + 1).toNat

end

end A329491.P324359952533225362

/-! ## A329491.P12497086243454249701

`A112779(A031362(n+1)+1)`
-/

namespace A329491.P12497086243454249701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112779 (A031362 (n + 1) + 1).toNat

end

end A329491.P12497086243454249701

/-! ## A329491.P2480231104315577462

`A214526(A031362(n+1)+1)`
-/

namespace A329491.P2480231104315577462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A031362 (n + 1) + 1).toNat

end

end A329491.P2480231104315577462

/-! ## A329491.P3083313871021871106

`A281543(A031362(n+1)+1)`
-/

namespace A329491.P3083313871021871106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A031362 (n + 1) + 1).toNat

end

end A329491.P3083313871021871106

/-! ## A329491.P2498771908891520733

`A008612(A031362(n+1)+2)`
-/

namespace A329491.P2498771908891520733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A031362 (n + 1) + 2).toNat

end

end A329491.P2498771908891520733

/-! ## A329491.P6017353574141206290

`A131572(ceil(sqrt(A031362(n+1))))`
-/

namespace A329491.P6017353574141206290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 ⌈Real.sqrt (A031362 (n + 1) : ℝ)⌉.toNat

end

end A329491.P6017353574141206290

/-! ## A329491.P15887600009955913194

`A239455(ceil(sqrt(A031362(n+1))))`
-/

namespace A329491.P15887600009955913194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 ⌈Real.sqrt (A031362 (n + 1) : ℝ)⌉.toNat

end

end A329491.P15887600009955913194

/-!
# A329493: (Sum of digits of (2^n - 11)) - n.

The programs for A329493, there is no canonical definition to state claims against.
-/

/-! ## A329493.P16827463496875294549

`A001370(n+4)-(A278044(A018921(n+2))+1)`
-/

namespace A329493.P16827463496875294549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + 4) - (A278044 (A018921 (n + 2)).toNat + 1)

end

end A329493.P16827463496875294549

/-! ## A329493.P3253953600412261414

`A001370(n+4)-A278044(A027084(n+6)-A222808(n+1))`
-/

namespace A329493.P3253953600412261414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + 4) - A278044 (A027084 (n + 6) - A222808 (n + 1)).toNat

end

end A329493.P3253953600412261414

/-!
# A329494: Numerator of 2*(2*n+1)/(n+2).

The programs for A329494, the canonical program `A329494.P1817818043607100432` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329494 has offset 0).

The definition of A329494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329494.P11683485927606807723

`(4*n+2)/gcd(6, n+2)`
-/

namespace A329494.P11683485927606807723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (Nat.gcd 6 (n + 2) : ℚ)

end

end A329494.P11683485927606807723

namespace A329494

/-- `(4*n+2)/gcd(6, n+2)` -/
def P11683485927606807723.Spec : Prop :=
  ∀ n, P11683485927606807723.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P1817818043607100432

`gcd(4*n+2, ∑[Δ[n²]²])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329494

/-- `gcd(4*n+2, ∑[Δ[n²]²])` -/
def P1817818043607100432.Spec : Prop :=
  ∀ n, (P1817818043607100432.a n : ℤ) = A329494 n

theorem P1817818043607100432.correct : P1817818043607100432.Spec := by
  intro n
  simp only [A329494]

end A329494

/-! ## A329494.P517469604347511453

`lcm(4*n+2, n+2)/(n+2)`
-/

namespace A329494.P517469604347511453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (4 * n + 2) (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A329494.P517469604347511453

namespace A329494

/-- `lcm(4*n+2, n+2)/(n+2)` -/
def P517469604347511453.Spec : Prop :=
  ∀ n, P517469604347511453.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P5201938742286639403

`gcd(2, n+1)*gcd(2*n+1, ∑[n²])`
-/

namespace A329494.P5201938742286639403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) * Nat.gcd (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329494.P5201938742286639403

namespace A329494

/-- `gcd(2, n+1)*gcd(2*n+1, ∑[n²])` -/
def P5201938742286639403.Spec : Prop :=
  ∀ n, (P5201938742286639403.a n : ℤ) = A329494 n

end A329494

/-! ## A329494.P17922104350252029100

`A000034(n)*A146535(n+1)`
-/

namespace A329494.P17922104350252029100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A146535 (n + 1)

end

end A329494.P17922104350252029100

namespace A329494

/-- `A000034(n)*A146535(n+1)` -/
def P17922104350252029100.Spec : Prop :=
  ∀ n, P17922104350252029100.a n = A329494 n

end A329494

/-! ## A329494.P7508388514984508891

`A129202(n+1)-A306367(n)`
-/

namespace A329494.P7508388514984508891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 (n + 1) - A306367 n

end

end A329494.P7508388514984508891

namespace A329494

/-- `A129202(n+1)-A306367(n)` -/
def P7508388514984508891.Spec : Prop :=
  ∀ n, P7508388514984508891.a n = A329494 n

end A329494

/-! ## A329494.P4973292367777866144

`A000217(2*n+1)/A000217(n+1)*A060789(n+2)`
-/

namespace A329494.P4973292367777866144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A060789 (n + 2) : ℚ)

end

end A329494.P4973292367777866144

namespace A329494

/-- `A000217(2*n+1)/A000217(n+1)*A060789(n+2)` -/
def P4973292367777866144.Spec : Prop :=
  ∀ n, P4973292367777866144.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P3636125227484830340

`(4*n+2)/A089128(n+2)`
-/

namespace A329494.P3636125227484830340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (A089128 (n + 2) : ℚ)

end

end A329494.P3636125227484830340

namespace A329494

/-- `(4*n+2)/A089128(n+2)` -/
def P3636125227484830340.Spec : Prop :=
  ∀ n, P3636125227484830340.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P2455214924182314320

`A000217(2*n+1)/(A026741(n+1)*A109007(n+2))`
-/

namespace A329494.P2455214924182314320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) : ℚ) / (A026741 (n + 1) * A109007 (n + 2) : ℚ)

end

end A329494.P2455214924182314320

namespace A329494

/-- `A000217(2*n+1)/(A026741(n+1)*A109007(n+2))` -/
def P2455214924182314320.Spec : Prop :=
  ∀ n, P2455214924182314320.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P10261821241414497895

`A000034(n)*A051724(Δ[n²])`
-/

namespace A329494.P10261821241414497895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A051724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A329494.P10261821241414497895

namespace A329494

/-- `A000034(n)*A051724(Δ[n²])` -/
def P10261821241414497895.Spec : Prop :=
  ∀ n, P10261821241414497895.a n = A329494 n

end A329494

/-! ## A329494.P4470676024584309285

`A000034(n)*A051176(2*n+1)`
-/

namespace A329494.P4470676024584309285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A051176 (2 * n + 1)

end

end A329494.P4470676024584309285

namespace A329494

/-- `A000034(n)*A051176(2*n+1)` -/
def P4470676024584309285.Spec : Prop :=
  ∀ n, P4470676024584309285.a n = A329494 n

end A329494

/-! ## A329494.P6519019540329278527

`A000034(n)*A051712(2*(n+1))`
-/

namespace A329494.P6519019540329278527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A051712 (2 * (n + 1))

end

end A329494.P6519019540329278527

namespace A329494

/-- `A000034(n)*A051712(2*(n+1))` -/
def P6519019540329278527.Spec : Prop :=
  ∀ n, P6519019540329278527.a n = A329494 n

end A329494

/-! ## A329494.P3450843993954164017

`A000034(n)*A060789(2*n+1)`
-/

namespace A329494.P3450843993954164017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A060789 (2 * n + 1)

end

end A329494.P3450843993954164017

namespace A329494

/-- `A000034(n)*A060789(2*n+1)` -/
def P3450843993954164017.Spec : Prop :=
  ∀ n, P3450843993954164017.a n = A329494 n

end A329494

/-! ## A329494.P9270759290888857603

`A146535(n+1)*A176895(2*n)`
-/

namespace A329494.P9270759290888857603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 1) * A176895 (2 * n)

end

end A329494.P9270759290888857603

namespace A329494

/-- `A146535(n+1)*A176895(2*n)` -/
def P9270759290888857603.Spec : Prop :=
  ∀ n, P9270759290888857603.a n = A329494 n

end A329494

/-! ## A329494.P1078481543688554699

`(A000035(n)+1)*A051176(2*n+1)`
-/

namespace A329494.P1078481543688554699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A051176 (2 * n + 1)

end

end A329494.P1078481543688554699

namespace A329494

/-- `(A000035(n)+1)*A051176(2*n+1)` -/
def P1078481543688554699.Spec : Prop :=
  ∀ n, P1078481543688554699.a n = A329494 n

end A329494

/-! ## A329494.P2863897933809153973

`A040001(n+1)*A051176(2*n+1)`
-/

namespace A329494.P2863897933809153973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A051176 (2 * n + 1)

end

end A329494.P2863897933809153973

namespace A329494

/-- `A040001(n+1)*A051176(2*n+1)` -/
def P2863897933809153973.Spec : Prop :=
  ∀ n, P2863897933809153973.a n = A329494 n

end A329494

/-! ## A329494.P10388520806278858148

`A014695(2*n)*A051724(2*n+1)`
-/

namespace A329494.P10388520806278858148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (2 * n) * A051724 (2 * n + 1)

end

end A329494.P10388520806278858148

namespace A329494

/-- `A014695(2*n)*A051724(2*n+1)` -/
def P10388520806278858148.Spec : Prop :=
  ∀ n, P10388520806278858148.a n = A329494 n

end A329494

/-! ## A329494.P7509688138043726567

`A051724(2*n+1)*A176895(2*n)`
-/

namespace A329494.P7509688138043726567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * n + 1) * A176895 (2 * n)

end

end A329494.P7509688138043726567

namespace A329494

/-- `A051724(2*n+1)*A176895(2*n)` -/
def P7509688138043726567.Spec : Prop :=
  ∀ n, P7509688138043726567.a n = A329494 n

end A329494

/-! ## A329494.P755452884358778981

`A068217(2*n+1)/(4-A010693(n))`
-/

namespace A329494.P755452884358778981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068217 (2 * n + 1) : ℚ) / (4 - A010693 n : ℚ)

end

end A329494.P755452884358778981

namespace A329494

/-- `A068217(2*n+1)/(4-A010693(n))` -/
def P755452884358778981.Spec : Prop :=
  ∀ n, P755452884358778981.a n = (A329494 n : ℚ)

end A329494

/-! ## A329494.P15218319538608296173

`lcm(A228826(n+1), A237109(2*n+1))`
-/

namespace A329494.P15218319538608296173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228826 (n + 1)) (A237109 (2 * n + 1))

end

end A329494.P15218319538608296173

namespace A329494

/-- `lcm(A228826(n+1), A237109(2*n+1))` -/
def P15218319538608296173.Spec : Prop :=
  ∀ n, (P15218319538608296173.a n : ℤ) = A329494 n

end A329494

/-!
# A329495: Numerator of second moment of the n-th term of Ulam's "history-dependent random sequence".

The programs for A329495, there is no canonical definition to state claims against.
-/

/-! ## A329495.P7949953432349912992

`A355014(∑[A028418(n+1)]+n)`
-/

namespace A329495.P7949953432349912992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355014 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A329495.P7949953432349912992

/-!
# A329496: Denominator of second moment of the n-th term of Ulam's "history-dependent random sequence".

The programs for A329496, there is no canonical definition to state claims against.
-/

/-! ## A329496.P16926189346392963442

`A000142(n)/A230643(A092489(n+1))`
-/

namespace A329496.P16926189346392963442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A230643 (A092489 (n + 1)).toNat : ℚ)

end

end A329496.P16926189346392963442

/-! ## A329496.P2045614405779997036

`A154657(n)/A325759(A231576(n+1))`
-/

namespace A329496.P2045614405779997036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154657 n : ℚ) / (A325759 (A231576 (n + 1)).toNat : ℚ)

end

end A329496.P2045614405779997036

/-! ## A329496.P16684326539927803531

`A000142(n)/A239140(A204190(n))`
-/

namespace A329496.P16684326539927803531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A239140 (A204190 n).toNat : ℚ)

end

end A329496.P16684326539927803531

/-! ## A329496.P12101484503718399255

`lcm(A006882(n), A028310(A053533(n)))`
-/

namespace A329496.P12101484503718399255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006882 n) (A028310 (A053533 n).toNat)

end

end A329496.P12101484503718399255

/-!
# A329497: Numerator of the rational number alpha_n involved in the calculation of the second moment of the n-th term of Ulam's "history-dependent random sequence".

The programs for A329497, there is no canonical definition to state claims against.
-/

/-! ## A329497.P107175853702780798

`A004526(A002275(n)+A002005(n))`
-/

namespace A329497.P107175853702780798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002275 n + A002005 n).toNat

end

end A329497.P107175853702780798

/-!
# A329498: Denominator of the rational number alpha_n involved in the calculation of the second moment of the n-th term of Ulam's "history-dependent random sequence".

The programs for A329498, there is no canonical definition to state claims against.
-/

/-! ## A329498.P3564846803087623324

`A000142(n)/A302247(A186253(n+1))`
-/

namespace A329498.P3564846803087623324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A302247 (A186253 (n + 1)).toNat : ℚ)

end

end A329498.P3564846803087623324

/-! ## A329498.P9789642229848321587

`A000142(A049872(n))/A189006(2*n+3)`
-/

namespace A329498.P9789642229848321587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A049872 n).toNat : ℚ) / (A189006 (2 * n + 3) : ℚ)

end

end A329498.P9789642229848321587

/-! ## A329498.P12889549422704631396

`n!/A269301(A000029(n))`
-/

namespace A329498.P12889549422704631396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A269301 (A000029 n).toNat : ℚ)

end

end A329498.P12889549422704631396

/-! ## A329498.P6954555988207754534

`gcd(A000142(n), A004009(∑[n*(25*n+5)+1]))`
-/

namespace A329498.P6954555988207754534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (25 * n + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A004009 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A329498.P6954555988207754534

/-! ## A329498.P6931504124377984162

`A000142(n)/A040732(A006966(n))`
-/

namespace A329498.P6931504124377984162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A040732 (A006966 n).toNat : ℚ)

end

end A329498.P6931504124377984162

